sudo docker system prune -a --volumes
sudo apt update
sudo apt upgrade
sudo apt install task-xfce-desktop blueman xfce4-terminal network-manager-gnome xfce4-power-manager -y
sudo cp ./conf/lightdm/lightdm.conf /etc/lightdm/lightdm.conf -f
sudo cp ./conf/etc/NetworkManager/system-connections/ssid /etc/NetworkManager/system-connections/Valiyamaliyakal.nmconnection -f
sudo apt install docker.io -y
sudo apt install apparmor -y
sudo apt install docker-compose -y
sudo apt install cups –y
sudo apt install chromium -y
#docker-compose up
docker run -d --restart unless-stopped --name db -e POSTGRES_DB=postgres -e POSTGRES_PASSWORD=odoo -e POSTGRES_USER=odoo postgres:15 && docker run -d --restart unless-stopped --name web --link db -p 8069:8069 vuna2004/docker-odoo:16.0-arm64
sudo docker run -d -p 9000:9000 --name=portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce:latest
curl -fsSL https://tailscale.com/install.sh | sh

#Hostname
#cus_id
#ssid_&_pass
#legal acceptance
#chromium kiosk
#wallpappr logo change
#tmp swap turn off
#session turn off

#purge xfc panal
#novnc_test
