#! /bin/bash
service mysql start;

sed -i "s/MYSQL_DATABASE/${MYSQL_WP_DATABASE}/g" /tmp/configure_users.sh;
sed -i "s/MYSQL_USER/${MYSQL_USER}/g" /tmp/configure_users.sh;
sed -i "s/MYSQL_PASSWORD/${MYSQL_PASSWORD}/g" /tmp/configure_users.sh;

# create database and user
/bin/bash /tmp/configure_users.sh;

# if database doesnt exist or empty
if [ -z "`mysql -sNe "USE ${MYSQL_WP_DATABASE}; SHOW TABLES;" 2>&1`" ];
then
  mysql --user=root --password=$MYSQL_ROOT_PASSWORD $MYSQL_WP_DATABASE < /tmp/wordpress.sql
fi

# prepare to launch daemon
service mysql stop;

mysqld_safe
