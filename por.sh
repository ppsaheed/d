sudo apt update
sudo apt upgrade
sudo apt install task-xfce-desktop blueman xfce4-terminal network-manager-gnome xfce4-power-manager -y
sudo apt install docker.io -y
sudo apt install apparmor -y
sudo apt install docker-compose -y
sudo apt install cups –y
docker-compose up
sudo docker run -d -p 9000:9000 --name=portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce:latest
