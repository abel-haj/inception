#!/bin/bash
export DEBIAN_FRONTEND="noninteractive"
debconf-set-selections <<< "mariadb-server mysql-server/root_password password root"
debconf-set-selections <<< "mariadb-server mysql-server/root_password_again password root"
apt-get -y install mariadb-server
