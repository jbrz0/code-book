# Nginx Server Logs

### Every request to the web server is recorded here (by default)
`/var/log/nginx/access.log`

### Any Nginx errors are stored here
`/var/log/nginx/error.log`

### View server CTL logs
`systemctl status nginx.service`

`journalctl -xe`
