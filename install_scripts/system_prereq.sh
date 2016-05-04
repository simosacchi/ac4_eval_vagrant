#!/usr/bin/env bash

echo "Installing build tools."
apt-get install -y build-essential

echo "Installing git"
apt-get install -y git

echo "Installing zip"
apt-get install -y zip

echo "Installing sqlite."
apt-get -y install libsqlite3-dev

echo "Installing mysql client"
apt-get install -y mysql-client
apt-get install -y libmysqlclient-dev


echo "Installing Libre Office"
apt-get install -y libreoffice

echo "Installing nodejs"
apt-get install -y nodejs

echo "Installing lynx"
apt-get install -y lynx

echo "Installing Java 8"
apt-add-repository ppa:webupd8team/java
apt-get update
apt-get -y upgrade
echo debconf shared/accepted-oracle-license-v1-1 select true | debconf-set-selections
echo debconf shared/accepted-oracle-license-v1-1 seen true | debconf-set-selections
apt-get -y install oracle-java8-installer


echo "Install Redis"
add-apt-repository ppa:chris-lea/redis-server
apt-get update
apt-get install -y redis-server

