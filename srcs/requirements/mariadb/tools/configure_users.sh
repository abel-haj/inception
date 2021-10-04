#! /bin/bash
service mysql start;

# New user for WordPress
mysql -e "CREATE USER IF NOT EXISTS 'MYSQL_USER'@'%' IDENTIFIED BY 'MYSQL_PASSWORD';"
mysql -e "CREATE DATABASE IF NOT EXISTS MYSQL_DATABASE;"

# Saving user to avoid getting error when adding his privileges
mysql -e "FLUSH PRIVILEGES;"

# # Grant access only to WordPress database
mysql -e "GRANT ALL PRIVILEGES ON MYSQL_DATABASE.* TO 'MYSQL_USER'@'%';"
