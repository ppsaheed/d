#!/bin/bash

# Define your SMB share details
smb_server="192.168.1.37"
smb_share_path="/d/"
smb_username="your_username"
smb_password="your_password"

# Define the local mount point
mount_point="/mnt/smb_share"

# Check if the mount point directory exists; if not, create it
if [ ! -d "$mount_point" ]; then
  mkdir -p "$mount_point"
fi

# Mount the SMB share
sudo mount.cifs "//${smb_server}${smb_share_path}" "$mount_point" -o "username=${smb_username},password=${smb_password},uid=$(id -u),gid=$(id -g)"

# Check if the mount was successful
if [ $? -eq 0 ]; then
  echo "SMB share mounted successfully."
  
  # Change the current directory to the mounted share
  cd "$mount_point"
  
  # You can perform your operations in the SMB share here
  
  # Unmount the share when done (optional)
  # sudo umount "$mount_point"
else
  echo "Failed to mount the SMB share."
fi
