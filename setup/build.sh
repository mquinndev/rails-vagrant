
sudo apt-get update
sudo apt-get install curl -y
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
\curl -sSL https://get.rvm.io | bash -s stable --ruby
source /home/cody/.rvm/scripts/rvm
echo '[[ -s "/home/vagrant/.rvm/scripts/rvm" ]] && source "/home/vagrant/.rvm/scripts/rvm"' >> /home/vagrant/.bashrc
rvm install ruby
rvm rubygems current
sudo apt-get install git-core -y
wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh
cd /vagrant/setup
sudo dpkg -i elasticsearch-0.90.10.deb

