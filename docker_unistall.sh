 
#!/bin/bash

# Stop and remove all running Docker containers


docker stop $(docker ps -a -q)
docker rm $(docker ps -a -q)
docker system prune -a --volumes

# Uninstall Docker
docker system prune -a
sudo pacman -Rns docker

# Remove Docker data directories
sudo rm -rf /var/lib/docker

# If Portainer was installed using Docker Compose
# Uncomment and modify the following lines to stop and remove Portainer container:
# cd /path/to/portainer/directory
# docker-compose down

# If Portainer was installed using Docker, find and remove its image
# Uncomment and replace <image_id> with the actual Portainer image ID
# docker rmi <image_id>

# Clean up residual configuration files
rm -rf /etc/systemd/system/docker.service
rm -rf /etc/docker

# Reboot the system
# #sudo reboot
