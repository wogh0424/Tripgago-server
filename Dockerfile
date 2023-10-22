FROM nginx:latest

RUN apt-get upgrade
RUN apt-get update
RUN apt-get install -y software-properties-common
RUN apt-get update

RUN apt-get install certbot python3-certbot-nginx

COPY default.conf /etc/nginx/conf.d/default.conf

CMD ["nginx", "-g", "daemon off;"]
