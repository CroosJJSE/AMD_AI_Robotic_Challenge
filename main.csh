#!/bin/bash

# Remove existing board log file
rm -rf /home/subi/codes/AMD_AI_Robotic_Challenge/board.log

# Copy input.cpp from host to board
sshpass -p 'password' scp -P 22 /home/subi/codes/AMD_AI_Robotic_Challenge/input.cpp ubuntu@192.168.1.104:/home/ubuntu/OurTest/ > /dev/null 2>&1

# SSH and Build Executable
sshpass -p 'password' ssh -o StrictHostKeyChecking=no -T ubuntu@192.168.1.104 << 'EOF'
    cd /home/ubuntu/OurTest

    # Build the executable using our_build_app.sh
    ./our_build_app.sh > build.log 2>&1

    # Check if the build was successful
    if [ -f OurTest ]; then
        echo -e "\e[32mBuild successful\e[0m"
    else
        echo -e "\e[31mBuild failed\e[0m"
        echo "Build log:"
        cat build.log
        exit 1
    fi

    exit
EOF

# Check Build Status
if [ $? -eq 0 ]; then
    echo -e "\e[32mExecutable built successfully on the board.\e[0m"
else
    echo -e "\e[31mFailed to build executable on the board.\e[0m"
fi
