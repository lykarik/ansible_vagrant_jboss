Vagrant.configure("2") do |config|
  
  config.vm.define "ansiblenode" do |ansiblenode|
    ansiblenode.vm.box = "centos7-mini"
	# vagrant-disksize plugin feature
	ansiblenode.vagrant.plugins = ['vagrant-disksize']
	ansiblenode.disksize.size = '50GB'
	
	#didn't work, idk
	#ansiblenode.vm.disk :disk, size: "50GB", primary: true
	
	ansiblenode.vm.hostname = "ansiblenode"
	ansiblenode.vm.network "private_network", ip: "192.168.50.5", virtualbox__intnet: "ansible-net"
	
	ansiblenode.vm.provider "virtualbox" do |v| 
	  v.name = "ansiblenode"
      v.memory = 1024
      v.cpus = 2
	end
  end
  
  config.vm.define "node01" do |node01|
    node01.vm.box = "centos7-mini"
	# VM specs
	node01.vm.provider "virtualbox" do |vb|
	  vb.name = "node01"
	  vb.memory = 512
	  vb.cpus = 1
	end
	
    node01.vm.hostname = "node01"
	node01.vm.network "private_network", ip: "192.168.50.10", virtualbox__intnet: "ansible-net"
	
	# additional SSH 
	node01.vm.network "forwarded_port", guest: 22, host: 2224
  end
  
end


# -*- mode: ruby -*-
# vi: set ft=ruby :
# JBOSS
	# node01.vm.network "forwarded_port", guest: 9990, host: 11090
	# node01.vm.network "forwarded_port", guest: 9999, host: 11099
	# node01.vm.network "forwarded_port", guest: 8080, host: 11880
# HTTP/HTTPS
	# node01.vm.network "forwarded_port", guest: 80, host: 11080
	# node01.vm.network "forwarded_port", guest: 443, host: 11043
# SSH
	# node01.vm.network "forwarded_port", guest: 22, host: 11022
	# node01.vm.provision :shell, :keep_color => true, :inline => "export PYTHONUNBUFFERED=1 && export ANSIBLE_FORCE_COLOR=1 && cd /vagrant/provisioning && chmod +x ./init.sh && sudo bash init.sh"