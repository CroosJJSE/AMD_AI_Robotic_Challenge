#!/bin/bash

# Set variables
REPO_URL="https://github.com/CroosJJSE/kriaKR260Board.git"
LOCAL_PATH="/home/ubuntu/OurTest/filesFromGitHub"

# Check if the repository folder exists
if [ -d "$LOCAL_PATH" ]; then
    echo "Repository folder exists. Pulling the latest changes..."
    cd "$LOCAL_PATH"
    git pull
else
    echo "Repository folder does not exist. Cloning the repository..."
    git clone "$REPO_URL" "$LOCAL_PATH"
fi

echo "Operation complete."
