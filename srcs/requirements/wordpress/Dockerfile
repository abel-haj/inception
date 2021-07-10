#	Download debian image
FROM    debian:buster 
#   Expose useful ports
EXPOSE  80/tcp

#   Updating system
RUN apt-get -y update
RUN apt-get -y upgrade

#   For communication between website and server
RUN apt-get -y install php-fpm
RUN apt-get -y install wget

#   Installing Wordpress
RUN wget https://wordpress.org/latest.tar.gz -P /tmp
RUN tar -zxvf /tmp/latest.tar.gz -C /tmp
RUN mkdir -p /var/www/html
RUN mv /tmp/wordpress /var/www/html/
RUN rm /var/www/html/wordpress/wp-config-sample.php

#   DEBUG
RUN apt-get -y install vim
