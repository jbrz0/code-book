# APT Package Manager

Handling of OS packages

[Docs](https://linux.die.net/man/8/apt-get)

---

### Update available packages list
`apt-get update`

### Update installed packages
`apt-get upgrade`

### Options
- auto accept: `-y`

### Install a package

`apt-get install <package-name>`

`apt-get install nginx`

### Re-Install (and update) a package

`apt-get --reinstall install <package-name>`

`apt-get --reinstall install nginx`

### Remove a package
- keep dependencies & config:
  - `apt-get remove <package-name>`
- keep dependencies only:
  - `apt-get remove --purge <package-name>`
- remove orphaned dependencies:
  - `apt-get autoremove`

### List of available packages
`/etc/apt/sources.list`

### Show where a package is installed
`dpkg -L <package-name>`

`dpkg -L nginx`

### APT config file location
`/etc/apt/apt.conf`

### Yum (replace apt-get) - CentOS/Redhat etc.
`yum`
