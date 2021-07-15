#!/bin/bash

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

mkdir -p /home/abel-haj/data
