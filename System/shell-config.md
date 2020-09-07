# Shell Config Setup Commands

General tasks when working in unix shells (Bash, Zsh)

[Docs](https://devdocs.io/bash)
[Cheatsheet](https://devhints.io/bash)

# Shebang Lines
```
#!/usr/bin/env bash
#!/usr/bin/env sh
#!/usr/bin/env python
#!/usr/bin/env python3
```

# Binary Locations
- boot commands only: `/bin`
- boot commands only (super user): `/sbin`
- More options, after boot: `/usr/bin`
- More options, after boot (super user): `/usr/sbin`


# Print Working Directory
`pwd`
> /Users/username/web

# Change user to "Super User"
`sudo su`
> Stop needing to "sudo" everything

# Load/Reload bash/zshrc file
`source ~/.bashrc`
`source ~/.zshrc`
> After making changes

# Update permissions
`chmod <permission> <file-name>`

Folder: `chmod <permission> /<folder-name>`

Folder + Subfolders: `chmod -R <permission> /<folder-name>`

> chmod 777 myfile.txt

# Change Mode Number Refs
- All can read: `444`
- All can read, write: `666`
- All can read, write, execute: `777`
- Owner can read: `400`
- Owner can read, write, execute: `700`
