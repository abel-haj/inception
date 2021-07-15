#! /bin/bash

service mysql start;

# Change root password
# And Delete unnecessary data
mysql -e "UPDATE mysql.user SET Password = PASSWORD('$MYSQL_ROOT_PASSWORD') WHERE User = 'root';"
mysql -e "DELETE FROM mysql.user WHERE User='';"
mysql -e "DELETE FROM mysql.user WHERE User='root' AND Host NOT IN ('localhost', '127.0.0.1', '::1');"
mysql -e "DROP DATABASE IF EXISTS test;"
mysql -e "DELETE FROM mysql.db WHERE Db='test' OR Db='test\\_%';"

# New user for WordPress
mysql -e "CREATE USER '$MYSQL_USER' IDENTIFIED BY '$MYSQL_PASSWORD';"
# Grant access only to database with names beginning with '42_'
mysql -e "GRANT ALL PRIVILEGES ON `42\_%` .  * TO '$MYSQL_USER'@'%';;"

# Save
mysql -e "FLUSH PRIVILEGES;"
