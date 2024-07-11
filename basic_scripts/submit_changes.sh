#!/bin/bash

# Navigate to the repository directory
cd /home/subi/codes/AMD_AI_Robotic_Challenge/kriaKR260Board

# Add all changes to staging
git add .

# Prompt for a commit message
echo "Enter a commit message:"
read commit_message

# Commit the changes
git commit -m "$commit_message"

# Push the changes to the remote repository
git push origin main

echo "Changes submitted successfully!"