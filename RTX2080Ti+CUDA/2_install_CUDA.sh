# download
wget -c https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/cuda-repo-ubuntu1804_10.1.105-1_amd64.deb

# unpack debian package
dpkg -i cuda-repo-ubuntu1804_10.1.105-1_amd64.deb

# install
apt-key adv --fetch-keys https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/7fa2af80.pub
apt-get update
apt-get install cuda

# reboot
reboot
