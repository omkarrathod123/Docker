FROM ubuntu:latest
LABEL key="omkarrathod0705"
RUN sudo apt-get update -y && sudo apt install nginx -y
COPY /var/www/html/index.html /var/www/html/