FROM    debian:buster

RUN     apt-get update -y
RUN     apt-get install -y mariadb-server

COPY    ./conf/my.cnf /etc/mysql/
COPY    ./conf/wordpress.sql /tmp/
COPY    ./tools/*.sh /tmp/

# DEBUG
RUN     apt-get install -y vim
# DEBUG

CMD     ["/bin/bash", "/tmp/configure_configuration.sh"]
