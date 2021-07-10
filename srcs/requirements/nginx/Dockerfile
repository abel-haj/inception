#	Download debian image
FROM    debian:buster 
#   Expose useful ports
EXPOSE  443
EXPOSE  9000

#   Updating system
RUN     apt-get -y update
RUN     apt-get -y upgrade

#   Installing NginX
RUN     apt-get -y install nginx openssl

#   Creating a self-signed certificate & key [30 days, no password, rsa]
RUN     openssl req -newkey rsa:4096 -x509 -nodes -subj "/CN=localhost" -out ssl_certificate.crt -keyout ssl_key.key
RUN     mv ssl_certificate.crt ssl_key.key /etc/ssl/certs/

RUN     mkdir -p /var/www/abel-haj.42.fr
RUN     echo '<h1><b>Hello</b></h1>' > /var/abel-haj.42.fr/index.html

#   Configuring NginX
ADD     ./conf/nginx.conf /etc/nginx/

