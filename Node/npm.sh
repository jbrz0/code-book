# ——————————————————————————————————————————————————————————————————————— #
# Basic NPM tasks
# ——————————————————————————————————————————————————————————————————————— #

# Initialize new npm project
npm init
npm init -y # accept defaults

# Install Dependency
npm i --save <package-name>

# Install as Dev Dependency
npm i --save-dev <package-name>

# Install a Global Dependency
npm i -g <package-name>

# NPM Location (MacOS)
/usr/local/lib/node_modules

# Update packages

###  install npm-check-updates globally:
npm i -g npm-check-updates

### upgrade all the version hints in the package.json file
ncu -u

### install the updated packages in package.json
### (for old packages, or re-working) --legacy-peer-deps / --force
npm i 
