# download 3 debian packages with login
echo "Please download 3 debian packages for Ubuntu 18.04 from https://developer.nvidia.com/rdp/cudnn-download\nPress enter to continue ..."
read continue

# install
dpkg -i libcudnn7_7.5.0.56-1+cuda10.1_amd64.deb
dpkg -i libcudnn7-dev_7.5.0.56-1+cuda10.1_amd64.deb
dpkg -i libcudnn7-doc_7.5.0.56-1+cuda10.1_amd64.deb

# test
cp -r /usr/src/cudnn_samples_v7/ $HOME
cd $HOME/cudnn_samples_v7/mnistCUDNN
make clean && make
./mnistCUDNN
