# Hub: Github CLI Tool

# https://hub.github.com

### Create a new git repo (same as any git project)
# With the name of current directory
```sh
git init
git add .
git commit -m "first commit"
```

### Create a repo For Github
`hub create`

__Private Repo__:

`hub create -p`

### Push to new repo on Github
`git push -u origin HEAD`

### Clone your own project
`hub clone <repo-name>`

Example:

>_hub clone oddscenes/os-website_

Basically does this:
>_git clone git://github.com/oddscenes/os-website.git_

### Clone another project
`hub clone <username>/<repo-name>`

### Fast-forward all local branches to match remote
hub sync

### See Docs
hub help

### See Action Specific Docs
hub help create
