
#Switch to root user
su
sudo yum update
sudo yum install git
sudo git clone https://github.com/mauri870/ransomware.git
------------------------------------------------------------


#Install Docker - optional

#Doc at https://docs.docker.com/engine/install/centos/
sudo yum install -y yum-utils
sudo yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo

sudo yum install docker-ce docker-ce-cli containerd.io  #there will be errors do the following command to fix and re-run docker install
yum remove runc
#re-run
sudo yum install docker-ce docker-ce-cli containerd.io
------------------------------------------------------------
#GO Installation: https://www.vultr.com/docs/how-to-install-golang-1-13-on-centos-8-ubuntu-18-04-debian-10-and-fedora-31

wget https://dl.google.com/go/go1.13.6.linux-386.tar.gz
sudo tar -zxvf go1.13.6.linux-386.tar.gz -C /usr/local
rm go1.13.6.linux-386.tar.gz -f
echo 'export GOROOT=/usr/local/go' | sudo tee -a /etc/profile
echo 'export PATH=$PATH:/usr/local/go/bin' | sudo tee -a /etc/profile
source /etc/profile
go version

-----------------------------------------------------


#Now go to the folder and build the executable

cd go/src/hello
go build
./hello # will show output:  'hello World'

#Now go into the ranswomware folder and build the deps:

cd ~
cd ransomware
-----------------------------------------------------------------------------------------------------------------------


sudo dnf install https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm
sudo dnf upgrade
sudo yum update
sudo systemctl enable --now snapd.socket
sudo ln -s /var/lib/snapd/snap /snap
sudo snap install ngrok
-------------------------------
#make: creating ransomware exe and server for windows VM

make -e USE_TOR=false SERVER_HOST=127.0.0.1 SERVER_PORT=8080 GOOS=windows







