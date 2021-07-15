#	Download debian image
FROM    debian:buster 
#   Expose useful ports
EXPOSE  443
EXPOSE  9000

# ARG     WP_PW
# ENV     WP_PW=$WP_PASSWORD

#   Updating system
RUN     apt-get -y update
RUN     apt-get -y upgrade

#   DEVELOPMENT
RUN     apt-get -y install vim
RUN     alias restartn="sevice nginx restart"
RUN     alias vimdefault="vim /etc/nginx/sites-available/default"
RUN     alias vim="vim /etc/nginx/nginx.conf"

#   Installing NginX
RUN     apt-get -y install nginx openssl

#   Creating a self-signed certificate & key [30 days, no password, rsa]
RUN     openssl req -newkey rsa:4096 -x509 -nodes -subj "/CN=localhost" -out ssl_certificate.crt -keyout ssl_key.key
RUN     mv ssl_certificate.crt ssl_key.key /etc/ssl/certs/

#   Configuring NginX
COPY    ./conf/nginx.conf /etc/nginx/
COPY    ./conf/default /etc/nginx/sites-available/

RUN     service nginx start

CMD ["nginx", "-g", "daemon off;"]
