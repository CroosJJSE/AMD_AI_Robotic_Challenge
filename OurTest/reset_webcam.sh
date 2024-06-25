#!/bin/bash

# Path to the USB device
DEVICE_PATH="/sys/bus/usb/devices/1-1.2"
VIDEO_DEVICE="/dev/video0"

# Function to disconnect the USB device
disconnect_device() {
    echo "Disconnecting device at $DEVICE_PATH"
    sudo sh -c "echo 0 > $DEVICE_PATH/authorized"
}

# Function to reconnect the USB device
reconnect_device() {
    echo "Reconnecting device at $DEVICE_PATH"
    sudo sh -c "echo 1 > $DEVICE_PATH/authorized"
}

# Function to check the status of the video device
check_video_device() {
    if [ -e $VIDEO_DEVICE ]; then
        echo "Video device $VIDEO_DEVICE is present."
    else
        echo "Video device $VIDEO_DEVICE is not present."
    fi
}

# Check the device status before disconnection
echo "Checking video device status before disconnection:"
check_video_device

# Disconnect the device
disconnect_device

# Wait for 2 seconds
sleep 2

# Check the device status after disconnection
echo "Checking video device status after disconnection:"
check_video_device
exit
# Reconnect the device
reconnect_device

# Wait for 2 seconds
sleep 2

# Check the device status after reconnection
echo "Checking video device status after reconnection:"
check_video_device

echo "Device asdhas been disconnected and reconnected."
