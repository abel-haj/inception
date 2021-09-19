#! /bin/bash

service mysql start;

# New user for WordPress
mysql -e "CREATE USER '$MYSQL_USER'@localhost IDENTIFIED BY '$MYSQL_PASSWORD';"

# Saving user to avoid getting error when adding his privileges 
mysql -e "FLUSH PRIVILEGES;"

# # Grant access only to WordPress database
mysql -e "GRANT ALL PRIVILEGES ON wordpress .  * TO '$MYSQL_USER'@'%';;"

# And Delete unnecessary data
mysql -e "DELETE FROM mysql.user WHERE User='';"
mysql -e "DELETE FROM mysql.user WHERE User='root' AND Host NOT IN ('localhost', '127.0.0.1', '::1');"
mysql -e "DROP DATABASE IF EXISTS test;"
mysql -e "DELETE FROM mysql.db WHERE Db='test' OR Db='test\\_%';"

# Change root password
mysql -e "UPDATE mysql.user SET Password = PASSWORD('$MYSQL_ROOT_PASSWORD') WHERE User = 'root';"

# Save
mysql -e "FLUSH PRIVILEGES;"
