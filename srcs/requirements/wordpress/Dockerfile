#	Download debian image
FROM    debian:buster 
#   Expose useful ports
EXPOSE  9000

#   Updating system
RUN   apt-get -y update
# RUN   apt-get -y upgrade

#   For communication between website and server
RUN   apt-get -y install php7.3-fpm php7.3-mysql wget

#   Installing Wordpress
COPY	./conf/install_wp.sh ./conf/conf_php.sh ./conf/launch_service.sh /tmp/
RUN		sh /tmp/install_wp.sh
# COPY  ./conf/wp-config.php /var/www/html/wordpress/

RUN		sh /tmp/conf_php.sh

#   DEBUG
RUN		apt-get -y install vim

CMD   ["/bin/bash", "/tmp/launch_service.sh"]
