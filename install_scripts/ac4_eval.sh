#!/usr/bin/env bash

echo "Installing AC4_eval"


if [ -d "/vagrant/ac4_eval" ]; then
  echo "Remove previous sufia dir"
  rm -fr /vagrant/ac4_eval
  echo "Removed!"
fi

echo "Checking out ac4_eval master"
cd /vagrant
git clone https://github.com/cul/ac4_eval.git
cd ac4_eval
git checkout master

echo "Running 'bundle install'"
bundle install

echo "Copying config files"
cp ../config/* config/

echo "Running 'rake db:migrate'"
rake db:migrate



#echo "run 'rake hydra:server'"
#rake hydra:server
