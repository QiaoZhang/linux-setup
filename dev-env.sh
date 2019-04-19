# update & upgrade
apt-get -y -q update
apt-get -y -q upgrade

# install vim
apt-get install -y -q neovim

# install gcc & make
apt-get install gcc make

# install Java
apt-add-repository -y ppa:linuxuprising/java
apt-get -y -q update
apt-get install -y -q oracle-java11-installer

# install pip
apt-get install -y -q python-pip
apt-get install -y -q python3-pip
alias python=python3
alias pip=pip3

# install python-venv
apt-get install -y -q python-venv

# install mysql
echo 'mysql-server-5.7 mysql-server/root_password password root' | debconf-set-selections
echo 'mysql-server-5.7 mysql-server/root_password_again password root' | debconf-set-selections
apt-get install -y -q  mysql-server-5.7

# install nodejs
apt-get install -y -q nodejs npm

# install ultimate vimrc
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh

# install gnome-terminator
apt-get install -y -q terminator

# install texlive-full
apt-get install -y -q texlive-full

# Install Tweaks Tool
apt-get install -y -q unity-tweak-tool
apt-get install -y -q gnome-tweak-tool
