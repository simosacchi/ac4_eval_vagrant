# AC4 Vagrant VM

##!!! be advised, WORK IN PROGRESS !!!

This Vagrant VM provides a contained dev envornment for AC4_eval, the FC4/Sufia evaluation for Academic Commons. Code available here:
https://github.com/cul/ac4_eval

## Requirements

* [Vagrant](https://www.vagrantup.com/)
* [VirtualBox](https://www.virtualbox.org/)

## Usage

1. `git clone https://github.com/simosacchi/ac4_eval_vagrant`
2. `cd ac4_vagrant`
3. `vagrant up`
...wait for the build (first time only)...
5  `vagrant ssh`
6. `cd /vagrant/ac4_eval`
5. `solr_wrapper -d solr/config/ --collection_name hydra-development &`
6. `fcrepo_wrapper -p 8984 &`
7. `rails server -b 0.0.0.0` 

You can shell into the machine with `vagrant ssh` or `ssh -p 2222 vagrant@localhost`

You can access the Sufia ac4_eval instance from you host machine in the project folder under ac4_eval (shared folder with the VM)

## Environment

* Ubuntu 14.04 64-bit
* Java 8
* Ruby 2.2 (via rvm)
* Rails 4.2 (via rvm) 

## Known issues
* `rake hydra:server' does not work because we need to bind rails to 0.0.0.0 in order to enable port forwarding to the host machine.
* Login to Sufia does not work

##Credits
Part of the install scripts coming from various branches in https://github.com/fcrepo4-exts/fcrepo4-vagrant, thanks!
