### Postgres Admin (via MacOS Homebrew)

# Start postgres now and at login (with launchd)
brew services start postgresql

# Or just run it in the background, without launchd
pg_ctl -D /usr/local/var/postgres start

# stop postgres (homebrew)
brew services stop postgres

# postgres Location (homebrew mac)
/usr/local/var/postgres

# upgrade db (if postgres version !== db version)
brew postgresql-upgrade-database
