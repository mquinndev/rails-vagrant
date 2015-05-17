
sudo apt-get update
sudo apt-get install nodejs -y
sudo apt-get install curl -y
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
\curl -sSL https://get.rvm.io | bash -s stable --rails
echo "source $HOME/.rvm/scripts/rvm" >> /home/vagrant/.bashrc
sudo apt-get install git-core -y
wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh
cd /vagrant/setup
wget https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-0.90.10.deb
sudo dpkg -i elasticsearch-0.90.10.deb
rm elasticsearch-0.90.10.deb
