FROM ubuntu/nginx:1.18-22.04_beta

COPY nginx/nginx.conf /etc/nginx/nginx.conf
COPY nginx/ /srv/www/

EXPOSE 80
