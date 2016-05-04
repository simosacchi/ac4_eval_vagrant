#!/usr/bin/env bash

echo "Installing rvm"
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
\curl -sSL https://get.rvm.io | bash -s stable
source /home/vagrant/.rvm/scripts/rvm

echo "Installing Ruby 2.2 and Rails 4.2"
rvm install 2.2
rvm use 2.2
gem install rails -v 4.2

