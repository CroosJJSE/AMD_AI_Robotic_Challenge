#!/bin/bash

# Ask for the source file or directory path
read -p "Enter the source file or directory path: " SOURCE_PATH

# Check if the source file or directory exists
if [ ! -f "$SOURCE_PATH" ] && [ ! -d "$SOURCE_PATH" ]; then
    echo -e "\e[31mError: Source file or directory does not exist.\e[0m"
    exit 1
fi

# Ask for the destination directory on the board
read -p "Enter the destination directory on the board: " DEST_DIR

# Set default destination directory if none is provided
DEFAULT_DEST_DIR="/home/ubuntu/OurTest"
if [ -z "$DEST_DIR" ]; then
    DEST_DIR=$DEFAULT_DEST_DIR
    echo -e "\e[33mNo destination directory provided. Using default: $DEST_DIR\e[0m"
fi

# Determine if the source is a file or directory
if [ -d "$SOURCE_PATH" ]; then
    # Copy the source directory to the destination directory on the board
    sshpass -p 'password' scp -r -P 22 "$SOURCE_PATH" ubuntu@192.168.1.104:"$DEST_DIR" > /dev/null 2>&1
else
    # Copy the source file to the destination directory on the board
    sshpass -p 'password' scp -P 22 "$SOURCE_PATH" ubuntu@192.168.1.104:"$DEST_DIR" > /dev/null 2>&1
fi

# Check if the copy command was successful
if [ $? -eq 0 ]; then
    echo -e "\e[32mFile or directory copied successfully.\e[0m"
else
    echo -e "\e[31mFailed to copy file or directory.\e[0m"
fi
