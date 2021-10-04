FROM    debian:buster

RUN     apt-get update -y
RUN     apt-get install -y mariadb-server

COPY    ./conf/my.cnf /etc/mysql/
COPY    ./tools/*.sh /tmp/

# DEBUG
RUN     apt-get install -y vim
# DEBUG

# ENTRYPOINT      ["mysqld_safe"]
CMD     ["/bin/bash", "/tmp/configure_configuration.sh"]
