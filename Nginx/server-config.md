# Location of Server Config Files

### Nginx config directory
`/etc/nginx`
> All of the nginx config files are here

### Main Nginx config file
/etc/nginx/nginx.conf
/etc/nginx/nginx.conf
> Make global changes here

### Config individual (per site) server blocks
`/etc/nginx/sites-available`
> Must be linked to /etc/nginx/sites-enabled

### Manage enabed (per site)
`/etc/nginx/sites-enabled`
> Connected to /etc/nginx/sites-available

### Repeatable config fragments
`/etc/nginx/snippets`
> can be included elsewhere
