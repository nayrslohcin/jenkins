# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|
	#config.vm.box_url
	#
    config.vm.define "mybox" do |mybox|
	mybox.vm.box = "test"
        mybox.vm.box = "puphpet/centos65-x64"
	mybox.vm.network "private_network", ip: "192.168.33.11" 
	mybox.vm.provider "virtualbox" do |vb|
        vb.memory = "512"
	mybox.vm.network "forwarded_port", guest: 8080, host: 8888
    config.vm.provision "shell", inline: <<-SHELL
        #mkdir /home/vagrant/source
	#chown vagrant.vagrant /home/vagrant/source
        #echo "run the following to download the IaaS repository: git clone https://<username>@marykay.visualstudio.com/DefaultCollection/IaaS/_git/IaaS"
	yum -y --disablerepo="epel" install java
	#wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat/jenkins.repo
	#yum -y --disablerepo="epel" install jenkins
	#service jenkins start
	#chkconfig jenkins on
	iptables -I INPUT 4 -p tcp --dport 8080 -j ACCEPT
	/vagrant/jenkins_custom.sh

    SHELL
	end
    end

end
