#!/bin/bash

# Ask for the source file path on the board
read -p "Enter the source file path on the board: " SOURCE_FILE

# Check if the source file exists on the board
sshpass -p 'pass1234' ssh -o StrictHostKeyChecking=no -T ubuntu@192.168.1.104 <<EOF
if [ ! -f "$SOURCE_FILE" ]; then
    echo -e "\e[31mError: Source file does not exist on the board.\e[0m"
    exit 1
fi
exit 0
EOF

if [ $? -ne 0 ]; then
    exit 1
fi

# Ask for the destination directory on the host machine
read -p "Enter the destination directory on the host machine: " DEST_DIR

# Check if the destination directory exists on the host machine
if [ ! -d "$DEST_DIR" ]; then
    echo -e "\e[31mError: Destination directory does not exist on the host machine.\e[0m"
    exit 1
fi

# Copy the source file from the board to the destination directory on the host machine
sshpass -p 'pass1234' scp -P 22 ubuntu@192.168.1.104:"$SOURCE_FILE" "$DEST_DIR" > /dev/null 2>&1

# Check if the copy command was successful
if [ $? -eq 0 ]; then
    echo -e "\e[32mFile copied successfully.\e[0m"
else
    echo -e "\e[31mFailed to copy file.\e[0m"
fi
