#! /bin/bash
service mysql start;

sed -i "s/MYSQL_DATABASE/${MYSQL_WP_DATABASE}/g" /tmp/configure_users.sh;
sed -i "s/MYSQL_USER/${MYSQL_USER}/g" /tmp/configure_users.sh;
sed -i "s/MYSQL_PASSWORD/${MYSQL_PASSWORD}/g" /tmp/configure_users.sh;
sed -i "s/MYSQL_ROOT_PASSWORD/${MYSQL_ROOT_PASSWORD}/g" /tmp/configure_users.sh;

if [ ! -f /tmp/exists ];
then
  mysqladmin --user=root password ${MYSQL_ROOT_PASSWORD}

  # create database and user
  /bin/bash /tmp/configure_users.sh;
  mysql --user=${MYSQL_USER} --password=${MYSQL_PASSWORD} ${MYSQL_WP_DATABASE} < /tmp/wordpress.sql
  touch /tmp/exists;
fi

mysqlcheck --user=root --password=abel-haj --silent --repair --all-databases &> /dev/null

# prepare to launch daemon
service mysql stop;

mysqld_safe
