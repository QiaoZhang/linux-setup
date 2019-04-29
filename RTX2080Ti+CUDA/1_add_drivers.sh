# preparation
apt-get update
apt-get upgrade

# remove older driver
apt-get purge nvidia

# add drivers
add-apt-repository ppa:graphics-drivers/ppa
apt-get update

# install
apt-get install -y -q nvidia-driver-418

# reboot
reboot
