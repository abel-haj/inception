#! /bin/bash
service mysql start;

sed -i "s/MYSQL_DATABASE/${MYSQL_WP_DATABASE}/g" /tmp/configure_users.sh;
sed -i "s/MYSQL_USER/${MYSQL_USER}/g" /tmp/configure_users.sh;
sed -i "s/MYSQL_PASSWORD/${MYSQL_PASSWORD}/g" /tmp/configure_users.sh;

# echo "||||||||||||||||||||||||||"
# mysql -sNe "SHOW DATABASES LIKE 'wordpress'"
# echo "||||||||||||||||||||||||||"

if database doesnt exist
if [ -z "`mysql -sNe "USE 'wordpress'; SHOW TABLES;" 2>&1`" ];
then
  mysql -e ${MYSQL_WP_DATABASE} < /tmp/wordpress.sql
fi

/bin/bash /tmp/configure_users.sh;

# service mysql stop;

mysqld_safe;
