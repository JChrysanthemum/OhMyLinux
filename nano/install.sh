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

#sudo mv /etc/apt/sources.list /etc/apt/sources.list.bak
#sudo mv sources.list /etc/apt/sources.list
sudo apt update
sudo apt update
sudo apt -y uprade
sudo apt install -y python3-pip libcurl3-gnutls=7.47.0-1ubuntu2.14 zsh curl tmux screen tree
sudo apt -y autoremove

echo -e "\033[1;32m\n SpaceVIM \n...\033[0m"
curl -sLf https://spacevim.org/cn/install.sh | bash


echo -e "\033[1;32m\n oh-my-zsh \n...\033[0m"
curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh | bash
