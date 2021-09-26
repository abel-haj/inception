#!/bin/bash

wget -q --show-progress https://wordpress.org/latest.tar.gz -P /tmp
tar -zxf /tmp/latest.tar.gz -C /tmp
mkdir -p /var/www/html
mv /tmp/wordpress /var/www/html/
# rm /var/www/html/wordpress/wp-config-sample.php
