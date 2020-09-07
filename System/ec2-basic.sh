# ___|___|___|___|___|___|___|___|___|___|___|___|___|___|___|___|___|___ #
# ⭐️ New NodeJS App Instance Startup Commands - AWS Console
# ——————————————————————————————————————————————————————————————————————— #
# ℹ️ Steps to setup a basic, configurable NodeJS app with SSL
# ——————————————————————————————————————————————————————————————————————— #
# 📚 Docs: https://docs.aws.amazon.com
# 🔗 Cheatsheet: https://bit.ly/2ZwqKhU
# ___|___|___|___|___|___|___|___|___|___|___|___|___|___|___|___|___|___ #

# This is for a general use case, an efficient setup for deploying to all
# geographic regions. Everything up until we have a basic Node setup.

#TODO:  Build a CLI script for automating this process using AWS SDK
#       https://aws.amazon.com/cli
#       https://docs.aws.amazon.com/cli/latest/reference
#       https://www.npmjs.com/package/aws-sdk

# AWS Services Used
- EC2 (Instance, elastic IP, load balancer)
- Cloudfront CDN

# Other Services
- Domain Registrat (Namecheap)

# After this is setup, we can add
- RDS DB (Postgres)
- Cognito

# 🟡 Create a new EC2 Instance
Ubuntu / t2.micro / Default Storage

# 🟡 Create/Use "Node" Security Group
SSH     TCP   22    Anywhere: 0.0.0.0/0         # All in
HTTP    TCP   80    Anywhere: 0.0.0.0/0, ::/0   # All in/out
HTTPS   TCP   443    Anywhere: 0.0.0.0/0, ::/0  # All in/out
#? CUSTOM    TCP   5000    Anywhere: 0.0.0.0/0, ::/0

# 🟡 Add tags (optional)

# 🟡 SSH Key Setup (If doesn't exist)
cd ~/Downloads
mv <filename>.pem ~/.ssh          # Move key to ssh folder
sudo chmod 600 ~/.ssh/<key_name>  # Set key permissions

# 🔵 Domain Name Management
1) Namecheap / Register / Checkout (Buy)
# Route53 -> Cloudfront -> ELB -> EC2 w/ alias dns is annoying
# Can use any registrar that allows editing dns

# 🟣 Setup SSL Certificate
1) Certificate Manager / Request
2) Add domain names
  # example.com, www.example.com, *.example.com
3) Download CSV
4) Copy DNS Into Namecheap (Registrar) DNS Records
  # Record Name - remove domain name at the end, copy into host
  # Record Value - copy as is, into value
  # Do for both www and @ (root) - * will be same as root value

# 🟡 Name EC2 Instance
1) EC2 Dashboard / Edit Name

# 🟡 Setup Elastic IP
1) EC2 Dashboard / Elastic IP
2) Allocate Elastic IP Address
3) Amazons pool of IPv4
4) EC2 Dashboard / Elastic IP / View Details
5) Associate Elastic IP Address / Instance
6) Select named instance

# 🟡 Setup Load Balancer
1) EC2 Dashboard / Load Balancers
2) Create New LB / Application LB
  # Name (similar to EC2 Instance)
  # Scheme: internet-facing
  # Listeners: HTTP (80), HTTPS (443)
  # IP address type: ipv4
  # Availability Zones: Pick 2 or 3
  # IMPORTANT: Make sure to include EC2 Instance AZ!!!
3) Choose a certificate from ACM
  # Your domain name
  # Security policy leave default
4) Select "Node" security group
5) Create/Use Target Group
  # Name: ec2-instance-name
  # Target: Instance
  # Protocol: HTTP - 80
  # Health: HTTP - /
9) Register to EC2 Instance
10) EC2 / Load Balancer / <balancer name>
  # In listeners tab, redirect HTTP:80 to Target Group
10) EC2 / Target Groups / <target group> / Targets
  # In targets tab, register the EC2 instance

# 🟡 Setup Cloudfront CDN
1) Create Distribution (Web)
  # Select created load balancer
  # Origin path empty
  # Origin ID same as ec2-instance-name
  # Min Origin Protocol: TLSv1
  # Origin Protocol Policy: HTTP
  # Origin Custom Headers empty
2) Default Cache Behaviour Settings
  # Cache Based on Selected Request Headers: All (off)
  # Viewer Protocol Policy: Redirect HTTP to HTTPS
  # Allowed HTTP Methods: All
3) Everything else is default
4) Go to settings / Alternate Domain Names (CNAMEs)
  # Add in <example.com> & attachcustom AWS SSL Cert
  # Also (new line) add in <www.example.com>
  # DISABLE IPv6

# 🔵 Domain Name Management (Part 2)
1) Namecheap (Registrar) Advanced DNS
  # Type: CNAME - Host: @ - Value: <cloudfront URL>
  # Type: CNAME - Host: www - Value: <cloudfront URL>
  # TTL: 1min

# 🟠 SSH Into EC2 Instance First Time

# Optionally add an alias to .zshrc / .bashrc
vi ~/.zshrc

# Inside zshrc config file
alias ec2name="ssh -i ~/.ssh/<key_name>.pem ubuntu@<EC2 URL>  \
&& mkdir /var/www && cd /var/www"

# Reload zshrc file
source ~/.zshrc

# Then run new alias to login
<ec2name>
# Or login with SSH
ssh -i ~/.ssh/<key_name>.pem ubuntu@<EC2 URL>

# 🟠 Configure EC2

# Become super user
sudo su

# Update apt-get package manager list
apt-get update

# Install node version manager (nvm)
# AWS Doc: https://amzn.to/3etDs5w
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash

# Activate nvm
. ~/.nvm/nvm.sh

# Install latest node version with nvm
nvm install node

# Generate a Key Pair (Github, EC2)
ssh-keygen -t rsa -b 4096 -C "email@email.com"

# Copy a SSH Public Key
cat ~/.ssh/id_rsa.pub

# Verify node is installed
node -v

# Install PM2 Daemon
npm i -g pm2

# Install Nginx
apt install nginx

# 🟠 Configure Nginx

# Open up the default nginx config, can use nano vs vi
vi /etc/nginx/sites-available/default

# Replace server_name line
server_name <example.com> <www.example.com> <*.example.com>;

# Replace location / (with a reverse proxy)
location / {
  proxy_pass http://localhost:5000; # NodeJS port
}

# Save and quit
:wq   # different in nano

# Check Nginx config
nginx -t

# Restart Nginx server
sudo service nginx restart

# 🟠 Configure Node/Express/PM2 Server

# Bind pm2 command to server startup
# In case of server restart/fail
pm2 startup ubuntu

# Go to project files dir
cd /var/www

# ℹ️ From here, all thats left is to start a server
# ℹ️ with a daemon on port 5000 (as per nginx config)
# ℹ️ git clone into this directory, or setup basic below

# 🟢 Setup a basic express app

# Make app folder
mkdir app
cd app

# Copy package.json & server.js
# https://github.com/brz0/labs/tree/master/008-app-basic
touch package.json && touch server.js
  # Copy into these files

# Install npm stuff
npm i
# Might need to npm i -f

# Startup the daemon server
pm2 start server.js
