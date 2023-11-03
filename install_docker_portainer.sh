#sudo pacman -Syu
#sudo pacman -S docker docker-compose
#sudo systemctl enable docker
#sudo systemctl start docker
#sudo usermod -aG docker $whoami
#docker --version
#docker run hello-world
#docker volume create portainer_data
#docker run -d -p 9000:9000 -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data --name=portainer portainer/portainer

#!/bin/bash

# Check if the user is running the script with root privileges
if [ "$EUID" -ne 0 ]; then
  echo "Please run this script as root or using sudo."
  exit 1
fi

# Update the system and install necessary packages
if command -v apt &> /dev/null; then
  # Debian/Ubuntu-based
  apt update
  apt upgrade -y
  apt install -y docker.io docker-compose
  systemctl enable docker
  systemctl start docker
  usermod -aG docker $USER
elif command -v yum &> /dev/null; then
  # Red Hat/CentOS-based
  yum update
  yum install -y docker docker-compose
  systemctl enable docker
  systemctl start docker
  usermod -aG docker $USER
elif command -v pacman &> /dev/null; then
  # Arch Linux
  pacman -Syu --noconfirm
  pacman -S --noconfirm docker docker-compose
  systemctl enable docker
  systemctl start docker
  usermod -aG docker $USER
else
  echo "Unsupported distribution. Please install Docker and Docker Compose manually."
  exit 1
fi

# Check Docker and Docker Compose versions
docker --version
docker-compose --version
echo "Sleeping for 10 seconds..."
sleep 10
echo "Awake!"
sudo systemctl restart docker

# Run hello-world container
docker run hello-world

# Create a Docker volume for Portainer
docker volume create portainer_data

# Run Portainer container
sudo docker run -d -p 9000:9000 --name=portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce:latest
