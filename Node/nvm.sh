# ——————————————————————————————————————————————————————————————————————— #
# NodeJS Version Manager
# ——————————————————————————————————————————————————————————————————————— #

# https://github.com/nvm-sh/nvm

# Show available local node versions
nvm ls

# Show available remote node versions
nvm ls-remote

# Switch node version (installed ones)
nvm use <node version>
nvm use 14.2.0

# Install a specific version of node
nvm install <node version>
nvm install 10.18.1

# Install and migrate packages to other version
nvm install <node version> --reinstall-packages-from=<node version>
nvm install 10.18.1 --reinstall-packages-from=14.2.0

# Set a default version of node
nvm alias default <node version>
nvm alias default 14.2.0

# Go to nvm directory - $NVM_DIR
cd ~/.nvm
