# -*- mode: ruby -*- 
# vi: set ft=ruby :

ENV["VAGRANT_EXPERIMENTAL"] = "disks"

required_plugins = ["vagrant-hostsupdater"]
required_plugins.each do |plugin| 
    exec "vagrant plugin install #{plugin}" unless Vagrant.has_plugin? plugin
end
Vagrant.configure("2") do |config| 
  config.vm.define "iacday1" do |iacday1| 
    iacday1.vm.box = "ubuntu/focal64"
    config.ssh.insert_key = false
    iacday1.vm.network :private_network, ip: "10.0.1.10"
    iacday1.vm.network "public_network", bridge: "en1: Wi-Fi (AirPort)"
    iacday1.vm.hostname = "iac-day1"
    iacday1.hostsupdater.aliases = ["iac-day1"]
    iacday1.disksize.size= "32GB"
    iacday1.vm.provision "shell", path: "script.sh"
    iacday1.vm.provider "virtualbox" do |vb|
      vb.memory= 2048
      vb.cpus = 2
    end
    
    #iac-day1.vm.synced_folder "ansible", "/home/ubuntu/ansible"
  end
end