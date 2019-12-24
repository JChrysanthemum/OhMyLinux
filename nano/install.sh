#！/bin/bash
echo -e "\033[1;31m Install basic env\033[0m"
echo -e "\033[1;32m Changing APT.Sources...\033[0m"
sleep 2

echo "# Update TsingHua APT-Source for aarch64
deb http://mirrors.tuna.tsinghua.edu.cn/ubuntu-ports/ xenial main multiverse restricted universe
deb http://mirrors.tuna.tsinghua.edu.cn/ubuntu-ports/ xenial-security main multiverse restricted universe
deb http://mirrors.tuna.tsinghua.edu.cn/ubuntu-ports/ xenial-updates main multiverse restricted universe
deb http://mirrors.tuna.tsinghua.edu.cn/ubuntu-ports/ xenial-backports main multiverse restricted universe
deb-src http://mirrors.tuna.tsinghua.edu.cn/ubuntu-ports/ xenial main multiverse restricted universe
deb-src http://mirrors.tuna.tsinghua.edu.cn/ubuntu-ports/ xenial-security main multiverse restricted universe
deb-src http://mirrors.tuna.tsinghua.edu.cn/ubuntu-ports/ xenial-updates main multiverse restricted universe
deb-src http://mirrors.tuna.tsinghua.edu.cn/ubuntu-ports/ xenial-backports main multiverse restricted universe
" > sources.list

sudo mv /etc/apt/sources.list /etc/apt/sources.list.bak
sudo mv sources.list /etc/apt/sources.list

sudo apt update
sudo apt update
sudo apt -y uprade
sudo apt install -y python3-pip libcurl3-gnutls=7.47.0-1ubuntu2.14 zsh curl tmux screen tree
sudo apt -y autoremove

echo -e "\033[1;32m\n Export CUDA PATH \n...\033[0m"
echo -e "
export CUDA_HOME=/usr/local/cuda-10.0
export LD_LIBRARY_PATH=/usr/local/cuda-10.0/lib64:$LD_LIBRARY_PATH
export PATH=/usr/local/cuda-10.0/bin:$PATH
" >> ~/.bashrc

echo -e "\033[1;32m\n SpaceVIM \n...\033[0m"
curl -sLf https://spacevim.org/cn/install.sh | bash


echo -e "\033[1;32m\n oh-my-zsh \n...\033[0m"
curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh | bash
chsh -s /usr/bin/zsh
#
#echo -e "\033[1;32m\n install TF-2.0 \n...\033[0m"
#wget https://developer.download.nvidia.com/compute/redist/jp/v42/tensorflow-gpu/tensorflow_gpu-2.0.0+nv19.11-cp36-cp36m-linux_aarch64.whl
#pip3 install tensorflow_gpu-2.0.0+nv19.11-cp36-cp36m-linux_aarch64.whl Processing ./tensorflow_gpu-2.0.0+nv19.11-cp36-cp36m-linux_aarch64.whl
