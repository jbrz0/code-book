# ——————————————————————————————————————————————————————————————————————— #
# Daemon Tool for NodeJS
# ——————————————————————————————————————————————————————————————————————— #

# Installation
sudo npm i pm2 -g

# Running
pm2 start <server.js> # (or whatever your file name)

# Other pm2 commands
pm2 show <app.js>
pm2 status
pm2 restart <app.js>
pm2 stop <app.js>
pm2 stop all          # Stop all processes running
pm2 logs              # Show log stream
pm2 flush             # Clear logs
pm2 list              # Show all processes running

# To make sure app starts when reboot
pm2 startup ubuntu

# Package.json commands
pm2 start npm -- dev    # npm run dev
pm2 start npm -- start  # npm start
pm2 start npm --name 'next' -- dev    # name, ex: w/ NextJS
pm2 start npm --name 'next' -- start  # name, ex: w/ NextJS
