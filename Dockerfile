FROM ubuntu-ssh:16.04
LABEL maintainer="docker-compose-demo"

RUN apt-get update \
   && apt-get install -y apache2

COPY html/* /var/www/html/

WORKDIR /var/www/html
CMD ["apachectl", "-D", "FOREGROUND"]
EXPOSE 80
