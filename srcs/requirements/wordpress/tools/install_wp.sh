#!/bin/bash
curl -q --progress-bar -o /tmp/latest.tar.gz https://wordpress.org/latest.tar.gz
tar -zxf /tmp/latest.tar.gz -C /tmp
mkdir -p /var/www/html
mv /tmp/wordpress/ /var/www/html/
chmod 666 -R /var/www/html/wordpress
cp /wp-config.php /var/www/html/wordpress/
echo "listen = 9000" >> /etc/php/7.3/fpm/pool.d/www.conf

service php7.3-fpm start
service php7.3-fpm stop

php-fpm7.3 -F
