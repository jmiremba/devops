# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
    config.ssh.insert_key = false
    
    config.vm.provider "virtualbox" do |v|
        v.name = "DEVOPS_TEST_VM"
        v.memory = 4096
    end
    
    config.vm.define "devops" do |devops|
        devops.vm.box = "geerlingguy/centos7"
        devops.vm.hostname = "devops.strive-ltd.com"
        devops.vm.network :private_network, ip: "192.168.254.81"
        devops.vm.network :forwarded_port, guest: 80, host: 8081, id: 'http'
        devops.vm.network :forwarded_port, guest: 18081, host: 18081, id: 'artifactory'
    end
end
