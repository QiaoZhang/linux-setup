echo 'Set up the dev environment'

echo 'Add oracle java ppa'
apt-add-repository -y ppa:webupd8team/java

echo 'Add intellij ppa'
apt-add-repository -y ppa:mmk2410/intellij-idea

echo 'Setup Miktex'
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D6BC243565B2087BC3F897C9277A7293F59E4889
echo "deb http://miktex.org/download/ubuntu xenial universe" | sudo tee /etc/apt/sources.list.d/miktex.list

echo 'Update apt-get'
apt-get -y -q update

echo 'Install JDK'
echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections
apt-get install -y -q oracle-java8-installer

echo 'Install IntelliJ'
apt-get install -y -q intellij-idea-community

echo 'Install MySQL and MySQL Workbench'
echo 'mysql-server-5.7 mysql-server/root_password password root' | debconf-set-selections
echo 'mysql-server-5.7 mysql-server/root_password_again password root' | debconf-set-selections
apt-get install -y -q  mysql-server-5.7
apt-get install -y -q  mysql-workbench

echo 'Install Python-pip'
apt-get install -y -q python-pip

echo 'Install Apache Tomcat'
apt-get install -y -q tomcat8-admin
apt-get install -y -q tomcat8

echo 'Install NodeJS and NPM'
apt-get install -y -q nodejs
apt-get install -y -q npm

echo 'Install Ultimate Vimrc'
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh

echo 'Install Instant MarkdownPreview'
apt-get install -y -q xdg-utils
apt-get install -y -q build-essential
npm -g install instant-markdown-d
git clone git://github.com/suan/vim-instant-markdown.git ~/.vim_runtime/sources_non_forked/vim-instant-markdown

echo 'Install Gnome-Terminator'
apt-get install -y -q terminator

echo 'Install Chrome Browser'
apt-get install -y -q chromium-browser

echo 'Install Miktex'
apt-get install -y -q miktex
miktexsetup --shared=yes finish
initexmf --admin --set-config-value [MPM]AutoInstall=1

echo 'Install Tweaks Tool'
apt-get install -y -q unity-tweak-tool
apt-get install -y -q gnome-tweak-tool
