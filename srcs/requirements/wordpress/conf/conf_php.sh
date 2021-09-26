#!/bin/bash

# sed -i 's/;daemonize = yes/daemonize = no/g' /etc/php/7.3/fpm/pool.d/www.conf
echo "listen = 9000" >> /etc/php/7.3/fpm/pool.d/www.conf
# /usr/sbin/php-fpm7.3 --nodaemonize
# /etc/init.d/php7.3-fpm stop
# service php7.3-fpm stop
