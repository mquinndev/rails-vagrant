Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.network "public_network"
  config.vm.network "private_network", ip: "192.168.254.2"
  config.vm.provision :shell, path: "bin/system_build.sh"
  config.vm.provision :shell, path: "bin/python_tools_install.sh"
  config.vm.provision :shell, path: "bin/nvm_install.sh", privileged: false
  config.vm.provision :shell, path: "bin/rvm_install.sh", privileged: false
  config.vm.provision :shell, path: "bin/ruby_install.sh", privileged: false
  config.vm.provision :shell, path: "bin/docker_install.sh"
  config.vm.provision :shell, path: "bin/git_config.sh"
  config.vm.provision :shell, path: "bin/vim_install.sh"
  config.vm.provider "virtualbox" do |v|
    v.memory = 2048
    v.cpus = 2
    v.name = "Developer"
  end
end
