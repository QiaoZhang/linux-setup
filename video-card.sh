echo 'Remove older Nvidia driver'
apt-get purge nvidia

echo 'Add graphics drivers PPA'
add-apt-repository ppa:graphics-drivers

echo 'Update apt-get'
apt-get update

echo 'Install graphics drivers'
apt-get install -y -q nvidia-418
