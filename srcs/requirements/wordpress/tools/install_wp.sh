#!/bin/bash
curl -q --progress-bar -o /tmp/latest.tar.gz https://wordpress.org/latest.tar.gz
tar -zxf /tmp/latest.tar.gz -C /tmp
mkdir -p /var/www/html
mv /tmp/wordpress/* /var/www/html/
chmod +w+r -R /var/www/html/*
cp /tmp/wp-config.php /var/www/html/

sed -i "s/MYSQL_DATABASE/${MYSQL_WP_DATABASE}/g" /var/www/html/wp-config.php;
sed -i "s/MYSQL_USER/${MYSQL_USER}/g" /var/www/html/wp-config.php;
sed -i "s/MYSQL_PASSWORD/${MYSQL_PASSWORD}/g" /var/www/html/wp-config.php;

echo "listen = 9000" >> /etc/php/7.3/fpm/pool.d/www.conf

service php7.3-fpm start
service php7.3-fpm stop

php-fpm7.3 -F
