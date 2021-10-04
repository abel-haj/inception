FROM    debian:buster

RUN     apt-get update -y
RUN     apt-get install -y curl php7.3-fpm php7.3-mysql

COPY    ./tools/install_wp.sh /tmp/
COPY    ./conf/wp-config.php /tmp/

# DEBUG
RUN     apt-get install -y vim
# DEBUG

WORKDIR /var/www/html/

CMD     ["/bin/bash", "/tmp/install_wp.sh"]
