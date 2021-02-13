server {
        listen 80;
        listen [::]:80;

        root /home/ezri/www/hw01.ezrima.com;

        index index.html;

        server_name ezrima.com hw01.ezrima.com;

        location / {
                try_files $uri $uri/ =404;
        }
}

