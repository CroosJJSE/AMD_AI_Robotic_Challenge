#!/bin/bash

# Define the important file to move
IMPORTANT_FILE="build/MyProject"

# Define directories and files to clean up
TO_CLEAN=(
    "CMakeFiles"
    "CMakeCache.txt"
    "Makefile"
    "cmake_install.cmake"
    "build"
)

# Check if the important file exists and move it to the parent directory
if [ -e "$IMPORTANT_FILE" ]; then
    echo "Moving $IMPORTANT_FILE to the parent directory"
    mv "$IMPORTANT_FILE" .
else
    echo "$IMPORTANT_FILE does not exist"
fi

# Remove the defined directories and files
for item in "${TO_CLEAN[@]}"; do
    if [ -e "$item" ]; then
        #echo "Removing $item"
        rm -rf "$item"
        #echo "$item does not exist"
    fi
done

echo "Clean up completed."
