#!/usr/bin/env bash

echo "Installing rvm"
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
\curl -sSL https://get.rvm.io | bash -s stable
source /home/vagrant/.rvm/scripts/rvm

echo "Installing Ruby 2.2 and Rails 4.2"
rvm install 2.2
rvm use 2.2
gem install rails -v 4.2

echo "Installing Sufia"


if [ -d "/vagrant/sufia" ]; then
  echo "Remove previous sufia dir"
  rm -fr /vagrant/sufia
fi

echo "Creating a new rails app in '/vagrant/sufia'"
cd /vagrant
rails new sufia
cd sufia

echo "Adding sufia repo to Gemfile"
echo "gem 'sufia', git: 'https://github.com/projecthydra/sufia.git', branch: 'master'" >> Gemfile

echo "Running 'bundle install'"
bundle install

echo "Running 'rails generate sufia:install -f'"
rails generate sufia:install -f

echo "Running 'rake db:migrate'"
rake db:migrate

#echo "Getting the appropriate solr/config"
#cd ..
#git clone https://github.com/cul/ac4_eval.git
#rm -fr sufia/solr/config
#cp -r ac4_eval/solr/config sufia/solr 
#cd sufia

#echo "run 'rake hydra:server'"
#rake hydra:server
