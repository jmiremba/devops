# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
    config.ssh.insert_key = false
    config.vm.define "devops" do |devops|
        devops.vm.box = "geerlingguy/centos7"
        devops.vm.hostname = "devops.strive-ltd.com"
        devops.vm.network :private_network, ip: "192.168.254.81"
        devops.vm.network :forwarded_port, guest: 80, host: 8081, id: 'http'
    end
end
