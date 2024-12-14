server {
    listen 80;
    server_name stomazamat.com www.stomazamat.com;

    root /var/www/stomazamat; # Adjust this to your website's file directory
    index index.html;

    location / {
        try_files $uri $uri/ =404;
    }
}

