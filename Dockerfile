FROM nginx:latest

RUN apt-get update
RUN apt-get upgrade
RUN apt-get install python3-certbot-nginx

COPY default.conf /etc/nginx/conf.d/default.conf

CMD ["nginx", "-g", "daemon off;"]
