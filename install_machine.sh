#!/bin/bash

# Script to be executed in host machine
# to speed things up

apt-get -y update;
# apt-get -y upgrade;
# wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

apt-get -y vim curl;
# Chrome
curl -L https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -o /tmp/chrome.deb
dpkg -i /tmp/chrome.deb
rm -rf /tmp/chrome.deb

# Docker Compose
curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose

# Docker
apt-get remove docker docker-engine docker.io
apt install docker.io
systemctl start docker
systemctl enable docker
# Docker-compose
apt-get install docker-compose

mkdir -p /home/abel-haj/data

# start docker compose in background
echo "alias dup='docker-compose up -d'" >> ~/.bash_aliases
# ignore cache while building
echo "alias dbuild='docker-compose build --no-cache'" >> ~/.bash_aliases
echo "alias ddown='docker-compose down'" >> ~/.bash_aliases
echo "alias dps='docker ps -a'" >> ~/.bash_aliases
# update bashrc in current terminal
source ~/.bashrc
