#!/bin/bash

# Change directory to the script's directory
cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1

# Compiler command (defaulting to g++)
CXX=${CXX:-g++}

# Display compiler version
$CXX --version

# Check for OpenCV4 package
result=0 && pkg-config --list-all | grep opencv4 && result=1
if [ $result -eq 1 ]; then
    OPENCV_FLAGS=$(pkg-config --cflags --libs opencv4)
else
    OPENCV_FLAGS=$(pkg-config --cflags --libs opencv)
fi

# Name of the executable (based on input.cpp)
name=$(basename "$PWD")

# Compile input.cpp
$CXX -O2 -fno-inline -I. \
     -o "$name" -std=c++17 \
     input.cpp \
     ${OPENCV_FLAGS} \
     -lopencv_videoio \
     -lopencv_imgcodecs \
     -lopencv_highgui \
     -lopencv_imgproc \
     -lopencv_core \
     -lglog \
     -lxir \
     -lunilog \
     -lpthread

# Check compilation status
if [ $? -eq 0 ]; then
    echo "Build successful: $name"
else
    echo "Build failed"
fi
