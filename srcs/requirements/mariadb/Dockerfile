#	Download debian image
FROM    debian:buster 
#   Expose useful ports
EXPOSE  3306

#   Updating system
RUN     apt-get -y update
RUN     apt-get -y upgrade

#   DEVELOPMENT
RUN     apt-get -y install vim

#   Installing MariaDB
RUN     export DEBIAN_FRONTEND="noninteractive"
# RUN     debconf-set-selections <<< "mariadb-server mysql-server/root_password password root"
# RUN     debconf-set-selections <<< "mariadb-server mysql-server/root_password_again password root"
# RUN     apt-get -y install mariadb-server
# COPY    ./install_mariadb.sh /tmp/
# RUN     sh /tmp/install_mariadb.sh

#   Configuring NginX
# ADD     ./conf/nginx.conf /etc/nginx/

