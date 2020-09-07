# Default Nginx config setup for a node server

- Open up the default nginx config, can use nano vs vi
- rm `/etc/nginx/sites-available/default`
- touch `/etc/nginx/sites-available/default`
- vi `/etc/nginx/sites-available/default`
- copy below and save into <default> file
- `service nginx restart`


```sh
server {
	listen 80 default_server;
	listen [::]:80 default_server;

	root /var/www/html;

	# Add index.php to the list if you are using PHP
	index index.html index.htm index.nginx-debian.html;

  # 🔥 Change your domain name here
	server_name <example.com> <www.example.com> <*.example.com>;

	# Our reverse proxy, node handles everything else
  location / {
    proxy_pass http://localhost:5000; # NodeJS port
  }
}
```
