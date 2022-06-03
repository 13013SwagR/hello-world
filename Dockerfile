FROM ubuntu/nginx:1.18-22.04_beta

COPY nginx/nginx.conf /etc/nginx/nginx.conf
COPY nginx/index.html /srv/www/index.html

