FROM ubuntu/nginx:1.18_22.04

COPY nginx/nginx.conf /etc/nginx/nginx.conf
COPY nginx/index.html /srv/www/index.html

