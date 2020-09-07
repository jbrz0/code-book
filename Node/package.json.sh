# package.json demo file - with comments
# Remove comments before use

{
  # Name of repo
  "name": "repo-name",

  # Version number, can use versioning in git
  "version": "1.0.0",

  # Brief description
  "description": "This project does something",

  # Sometimes used with webpack & builders, sometimes not used
  "main": "index.js",

  # Module system w/ imports everywhere, can conflict with packages
  "type": "module",
  # Default type w/ require on top lvl imports
  "type": "commonjs",

  # Some useful startup commands
  "scripts": {
    # Set process.env.NODE_ENV & run a dev server
    "dev": "NODE_ENV=dev node index.js",

    # set process env and run a daeomon prod server
    "start": "NODE_ENV=production pm2 start index.js",

    # Stop prod server
    "stop": "pm2 stop index.js",

    # List prod server
    "list": "pm2 ls"
  },

  # Git repo stuff
  "repository": {
    "type": "git",
    "url": "git+https://github.com/oddscenes/repo-name.git"
  },
  "keywords": [],
  "author": "",
  "license": "ISC",
  "bugs": {
    "url": "https://github.com/oddscenes/repo-name/issues"
  },

  # Readme URL - defaults git repo readme
  "homepage": "https://github.com/oddscenes/repo-name#readme",

  # Dependencies
  "dependencies": {
    "axios": "^0.19.2",
    "express": "^4.17.1",
    "moment": "^2.26.0",
    "pm2": "^4.4.0"
  },

  # Dev Dependencies
  "devDependencies": {
    "dotenv": "^8.2.0",
  }
}
