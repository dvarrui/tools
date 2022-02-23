#!/usr/bin/env bash

APPNAME=rubyzen
GEMNAME=ruby-zen
VERSION=0.0.0
REPO_URL=https://github.com/dvarrui/ruby-zen
GEM_URL=https://rubygems.org/gems/ruby-zen

apt update
apt install -y vim tree nmap
apt install -y neofetch

echo "[INFO] Install ruby and $GEMNAME"
apt install -y ruby irb
gem install $GEMNAME

echo "[INFO] Download $SAMPLES_FOLDER"
apt install -y git
git clone $REPO_URL
chown -R vagrant:vagrant $SAMPLES_FOLDER

echo "[INFO] Configure motd"
apt install -y figlet
figlet $APP_NAME > /etc/motd
echo "" >> /etc/motd
echo "$APP_NAME ($VERSION)" >> /etc/motd
echo "$GEM_URL" >> /etc/motd

echo "[INFO] Configure aliases"
echo "# Adding more alias" >> /home/vagrant/.bashrc
echo "alias c='clear'" >> /home/vagrant/.bashrc
echo "alias v='vdir'" >> /home/vagrant/.bashrc

lsb_release -d
