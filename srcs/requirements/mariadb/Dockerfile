#	Download debian image
FROM    debian:buster 
#   Expose useful ports
EXPOSE  3306

# #   
# ARG     MYSQL_ROOT_PASSWORD
# ARG     MYSQL_USER
# ARG     MYSQL_PASSWORD

# #   
# ENV     MYSQL_ROOT_PASSWORD=${MYSQL_ROOT_PASSWORD}
# ENV     MYSQL_USER=${MYSQL_USER}
# ENV     MYSQL_PASSWORD=${MYSQL_PASSWORD}

#   Updating system
RUN     apt-get -y update
# RUN     apt-get -y upgrade

#   DEVELOPMENT
RUN     apt-get -y install vim

#   Installing MariaDB
RUN     apt-get -y install mariadb-server

COPY    ./conf/configure_users.sh /tmp/
RUN     /bin/bash ./tmp/configure_users.sh

ENTRYPOINT  ["mysqld_safe"]
