sudo docker system prune -a --volumes
sudo apt update
sudo apt upgrade
sudo apt install task-xfce-desktop blueman xfce4-terminal network-manager-gnome xfce4-power-manager -y
#sudo apt install docker.io -y
#sudo apt install apparmor -y
#sudo apt install docker-compose -y
#sudo apt install cups –y
sudo apt install podman -y
sudo podman run -d -p 9443:9443 --privileged -v /run/podman/podman.sock:/var/run/docker.sock:Z docker.io/portainer/portainer-ce
#docker-compose up
#curl -fsSL https://tailscale.com/install.sh | sh
#sudo docker run -d -p 9000:9000 --name=portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce:latest
