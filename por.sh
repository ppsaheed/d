sudo docker system prune -a --volumes
sudo apt update
sudo apt upgrade
sudo apt install task-xfce-desktop blueman xfce4-terminal network-manager-gnome xfce4-power-manager -y
sudo cp ./conf/lightdm/lightdm.conf /etc/lightdm/lightdm.conf -f
#sudo apt install docker.io -y
#sudo apt install apparmor -y
#sudo apt install docker-compose -y
#sudo apt install cups –y
sudo apt install podman -y
sudo podman run -d -p 9443:9443 --privileged -v /run/podman/podman.sock:/var/run/docker.sock:Z docker.io/portainer/portainer-ce
#docker-compose up
#curl -fsSL https://tailscale.com/install.sh | sh
#sudo docker run -d -p 9000:9000 --name=portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce:latest

#installing podman
sudo apt install vim git uidmap fuse3 fuse-overlayfs
sudo apt install python3 python3-pip
sudo pip3 install --upgrade pip
sudo apt install podman
sudo podman pull alpine
sudo podman run -ti docker.io/library/alpine /bin/sh
sudo systemctl start podman.socket
sudo systemctl status podman.socket
sudo apt install podman
sudo apt-get install docker-compose

sudo curl -H "Content-Type: application/json" --unix-socket /var/run/docker/docker.sock http://localhost/_ping
sudo curl -L "https://github.com/docker/compose/releases/download/2.1.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo curl -L "https://github.com/docker/compose/releases/download/v2.1.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

sudo apt install podman
sudo apt-get install docker-compose
sudo systemctl start podman.socket
sudo systemctl status podman.socket
wget http://ftp.us.debian.org/debian/pool/main/libp/libpod/podman-docker_4.3.1+ds1-5+b1_arm64.deb
sudo apt install ./podman-docker_4.3.1+ds1-5+b1_arm64.deb 
sudo systemctl restart podman.socket
unqualified-search-registries = ["docker.io"]


#sudo apt install chromium qdirstat


#sudo apt-get update
#sudo apt-get install transmission-cli transmission-common transmission-daemon
#sudo service transmission-daemon start
#sudo systemctl enable transmission-daemon

#https://sylvaindurand.org/launch-chromium-in-kiosk-mode/
#sudo apt-get install xserver-xorg-video-all xserver-xorg-input-all xserver-xorg-core xinit x11-xserver-utils
#sudo apt-get install chromium-browser
#sudo apt-get install unclutter
