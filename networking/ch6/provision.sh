set -e -x -u
export DEBIAN_FRONTEND=noninteractive

echo info[:ip]
#change the source.list
sudo apt-get update
sudo apt-get install -y vim git cmake build-essential tcpdump tig socat bash-completion golang libpcap-dev bridge-utils ipcalc conntrack net-tools

# Configure Docker subnet
sudo mkdir -p /etc/docker
sudo cp /tmp/daemon.json /etc/docker/daemon.json


git clone https://github.com/hwchiu/hiskio-course.git

git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it
bash ~/.bash_it/install.sh -s

popd
