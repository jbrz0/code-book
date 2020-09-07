# Nginx Server Commands

### Stop server
`sudo systemctl stop nginx`

### Start server
`sudo systemctl start nginx`

### Restart server
`sudo systemctl restart nginx`

### Stop server
`sudo systemctl stop nginx`

### Non intrusive stuff

If you are simply making configuration changes, Nginx can often reload without dropping connections. To do this, type:

`sudo systemctl reload nginx`

By default, Nginx is configured to start automatically when the server boots. If this is not what you want, you can disable this behavior by typing:

`sudo systemctl disable nginx`

### To re-enable the service to start up at boot, you can type:

`sudo systemctl enable nginx`

### check sites available
`cd /etc/nginx/sites-available`

### Check NGINX config
`sudo nginx -t`
