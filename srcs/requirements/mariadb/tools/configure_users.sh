#! /bin/bash
service mysql start;

# New user for WordPress
mysql -e "CREATE USER 'abel-haj'@localhost IDENTIFIED BY 'abel-haj';"
mysql -e "CREATE DATABASE wordpress;"

# Saving user to avoid getting error when adding his privileges
mysql -e "FLUSH PRIVILEGES;"

# # Grant access only to WordPress database
mysql -e "GRANT ALL PRIVILEGES ON wordpress.* TO 'abel-haj'@localhost;"
