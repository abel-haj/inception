#	Download debian image
FROM    debian:buster 
#   Expose useful ports
EXPOSE  3306

#   Updating system
RUN     apt-get -y update
RUN     apt-get -y upgrade

#   Installing NginX
RUN     apt-get -y install nginx

#   Configuring NginX
ADD     ./conf/nginx.conf /etc/nginx/

