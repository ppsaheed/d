#!/bin/bash

# Check if the user is running the script with root privileges
if [ "$EUID" -ne 0 ]; then
  echo "Please run this script as root or using sudo."
  exit 1
fi

# Function to install Docker and Docker Compose based on the package manager
install_docker() {
  if command -v docker &> /dev/null && command -v docker-compose &> /dev/null; then
    echo "Docker and Docker Compose are already installed."
  else
    case $1 in
      apt)
        apt update
        apt upgrade -y
        apt install -y docker.io docker-compose
        ;;
      yum)
        yum update
        yum install -y docker docker-compose
        ;;
      pacman)
        pacman -Syu --noconfirm
        pacman -S --noconfirm docker docker-compose
        ;;
      *)
        echo "Unsupported distribution. Please install Docker and Docker Compose manually."
        exit 1
        ;;
    esac
  fi
}

# Update the system and install necessary packages
if command -v apt &> /dev/null; then
  # Debian/Ubuntu-based
  install_docker apt
elif command -v yum &> /dev/null; then
  # Red Hat/CentOS-based
  install_docker yum
elif command -v pacman &> /dev/null; then
  # Arch Linux
  install_docker pacman
fi

# Enable and start Docker service
systemctl enable --now docker

# Add the current user to the docker group
usermod -aG docker $USER

# Check Docker and Docker Compose versions
docker --version
docker-compose --version

# Sleep for 10 seconds and restart Docker
echo "Sleeping for 10 seconds..."
sleep 10
echo "Awake!"
systemctl restart docker

# Run hello-world container
docker run hello-world

# Create a Docker volume for Portainer
docker volume create portainer_data

# Run Portainer container
docker run -d -p 9000:9000 --name=portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce:latest
