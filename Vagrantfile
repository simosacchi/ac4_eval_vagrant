# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # All Vagrant configuration is done here. The most common configuration
  # options are documented and commented below. For a complete reference,
  # please see the online documentation at vagrantup.com.
	
	config.vm.hostname = "ac4"

	config.vm.box = "ubuntu/trusty64"

	config.vm.network :forwarded_port, guest: 3000, host: 3000 # Sufia
	config.vm.network :forwarded_port, guest: 8983, host: 8983 # Solr Wrapper
	config.vm.network :forwarded_port, guest: 8984, host: 8984 # FCRepo Wrapper

  config.vm.provider "virtualbox" do |v|
  	v.memory = 3048
        v.cpus = 2
  end

  shared_dir = "/vagrant"

#Install system prereq
  config.vm.provision "shell", path: "./install_scripts/system_prereq.sh"

#Install FITS + Libre Office
  config.vm.provision "shell", path: "./install_scripts/derivatives.sh", args: shared_dir

#Install RVM
  config.vm.provision "shell", path: "./install_scripts/rvm.sh", privileged: false

#Install AC4_eval
  config.vm.provision "shell", path: "./install_scripts/ac4_eval.sh", privileged: false

end
