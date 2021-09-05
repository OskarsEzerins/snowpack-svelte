FROM ubuntu

RUN apt update
RUN apt install nginx systemctl -y

# Replace default nginx html template
RUN rm /var/www/html/index.nginx-debian.html
COPY ./build/ /var/www/html/

RUN systemctl start nginx.service
