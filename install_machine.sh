#!/bin/bash

# Script to be executed in host machine
# to speed things up

apt-get -y update;
# apt-get -y upgrade;

# Docker
apt-get -y remove docker docker-engine docker.io
apt-get install -y docker.io
systemctl start docker
systemctl enable docker

# Docker Compose
curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose

# Docker-compose
apt-get install -y docker-compose

apt-get install -y vim curl;

# # Chrome
curl -L https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -o /tmp/chrome.deb
dpkg -i /tmp/chrome.deb
rm -rf /tmp/chrome.deb

mkdir -p /home/abel-haj/data/wp_files /home/abel-haj/data/wp_database /home/abel-haj/data/phpmyadmin
