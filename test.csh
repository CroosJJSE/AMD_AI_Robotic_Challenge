#!/bin/bash

# SSH password for the board
ssh_password="password"

# IP address of the board
board_ip="192.168.1.104"

# Path to build_app.sh on your host machine
local_script_path="/home/subi/Documents/slam/our_build_app.sh"

# Destination directory on the board
remote_directory="/home/ubuntu/OurTest/"

# Copy build_app.sh to the board
sshpass -p "${ssh_password}" scp -P 22 "${local_script_path}" "ubuntu@${board_ip}:${remote_directory}"

echo "build_app.sh copied to the board's working directory."
