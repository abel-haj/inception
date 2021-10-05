#! /bin/bash

# New user for WordPress
mysql --user=root --password=MYSQL_ROOT_PASSWORD -e "CREATE USER IF NOT EXISTS 'MYSQL_USER'@'%' IDENTIFIED BY 'MYSQL_PASSWORD';"
mysql --user=root --password=MYSQL_ROOT_PASSWORD -e "CREATE DATABASE IF NOT EXISTS MYSQL_DATABASE;"

# Saving user to avoid getting error when adding his privileges
mysql --user=root --password=MYSQL_ROOT_PASSWORD -e "FLUSH PRIVILEGES;"

# # Grant access only to WordPress database
mysql --user=root --password=MYSQL_ROOT_PASSWORD -e "GRANT ALL PRIVILEGES ON MYSQL_DATABASE.* TO 'MYSQL_USER'@'%';"
