server {
	listen 80;
	listen [::]:80;
	root /home/ezri/www/ezrima.com;
	index index.html;
	server_name ezrima.com www.ezrima.com;
	location / {
		try_files $uri $uri/ =404;
	}
}
