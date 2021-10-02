FROM    debian:buster

RUN     apt-get update -y
RUN     apt-get install -y curl php7.3-fpm php7.3-mysql

COPY    ./tools/install_wp.sh /tmp/
COPY    ./conf/wp-config.php /tmp/

# DEBUG
EXPOSE  443
RUN     apt-get install -y vim
RUN     echo 'alias status="service --status-all"' >> /home/.bashrc
RUN     /bin/bash -c "source /home/.bashrc"
# DEBUG

WORKDIR /var/www/html/

CMD     ["/bin/bash", "/tmp/install_wp.sh"]
