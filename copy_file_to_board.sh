#!/bin/bash

# Ask for the source file path
read -p "Enter the source file path: " SOURCE_FILE

# Check if the source file exists
if [ ! -f "$SOURCE_FILE" ]; then
    echo -e "\e[31mError: Source file does not exist.\e[0m"
    exit 1
fi

# Ask for the destination directory on the board
read -p "Enter the destination directory on the board: " DEST_DIR

# Copy the source file to the destination directory on the board
sshpass -p 'password' scp -P 22 "$SOURCE_FILE" ubuntu@192.168.1.104:"$DEST_DIR" > /dev/null 2>&1

# Check if the copy command was successful
if [ $? -eq 0 ]; then
    echo -e "\e[32mFile copied successfully.\e[0m"
else
    echo -e "\e[31mFailed to copy file.\e[0m"
fi

