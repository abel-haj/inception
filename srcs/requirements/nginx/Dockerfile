FROM    debian:buster

RUN     apt-get update -y
RUN     apt-get install -y nginx curl

#   Creating a self-signed certificate & key [30 days, no password, rsa]
RUN     openssl req -newkey rsa:4096 -x509 -nodes -subj "/CN=localhost" -out ssl_certificate.crt -keyout ssl_key.key
RUN     mv ssl_certificate.crt ssl_key.key /etc/ssl/certs/
COPY    ./conf/default /etc/nginx/sites-available/

# RUN     service nginx start

# DEBUG
RUN     apt-get install -y vim
# DEBUG

ENTRYPOINT  ["nginx", "-g", "daemon off;"]
