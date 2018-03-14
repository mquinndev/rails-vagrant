Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.network "public_network"
  config.vm.network "private_network", ip: "192.168.254.2"
  config.vm.provision :shell, path: "scripts/system_build.sh"
  config.vm.provision :shell, path: "scripts/python_install.sh", privileged: false
  config.vm.provision :shell, path: "scripts/ruby_install.sh", args: "2.4.0 rails", privileged: false
  config.vm.provision :shell, path: "scripts/docker_install.sh"
  config.vm.provision :shell, path: "scripts/rvm_install.sh", args: "stable", privileged: false
  config.vm.provision :shell, path: "scripts/nvm_install.sh", privileged: false
  config.vm.provision :shell, path: "scripts/vim_install.sh", privileged: false
  config.vm.provision :shell, path: "scripts/git_config.sh", privileged: false
  config.vm.provision :shell, path: "scripts/jenkins_config.sh", privileged: false
  config.vm.provider "virtualbox" do |v|
    v.memory = 2048
    v.cpus = 2
    v.name = "Developer"
  end
end
