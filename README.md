
# AMD_AI_Robotic_Challenge

## Challenge Overview

### AMD - Kria KR260 Board
![Kria KR260 board](images/image-2.png)

### AI - Using Vitis AI and PYNQ
### Robotic Challenge - ROS 2

## Booting Ubuntu on the Board

### Connecting the Board to PC

1. Open terminal and run:
    ```bash
    sudo gtkterm
    ```
    ![Configuration](images/image-3.png)
    Port may vary depending on the port connected to the PC.

2. Connect all the ports to the board, then connect to the power. The board should be successfully connected.
    ![Connection Success](images/image-4.png)

3. Upgrade to the latest version:
    ```bash
    sudo apt update && sudo apt upgrade -y python
    ```
    ![Upgrade](images/image-5.png)

### Finding the IP Address of the Board

1. Run:
    ```bash
    sudo ifconfig -a
    ```
    ![IP Address](images/image-6.png)

### Setting Up VNC Server on Kria KR260

1. On the Kria KR260:
    ```bash
    sudo apt update
    sudo apt install tightvncserver
    vncserver
    ```
    You'll be prompted to set a password the first time you run it.

2. On the Host Machine:
    ```bash
    sudo apt install tigervnc-viewer
    vncviewer 192.168.1.104:1
    ```

### Debugging Information

Check the IP address of the board:
```bash
ifconfig -a
# It should look like this, else reboot it:
eth1: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
        inet 192.168.1.104  netmask 255.255.255.0  broadcast 192.168.1.255

If not, after reboot:
```bash
vncserver
```
Type the password to connect:
![VNC Connection](images/image-7.png)
Successfully connected to the VNC Server:
![VNC Success](images/image-8.png)

### Installing and Running Applications on the Board

- **VSCode Installation**:
    ![VSCode](images/image-9.png)

- **Running Firefox**:
    ```bash
    xhost +local:$(whoami)
    sudo -E firefox

    # You can simply run (automated):
    run_firefox
    ```
    ![Firefox](images/image-10.png)

## Accessing the Board Using Web

1. Install DWS control (only on the board):
    ```bash
    https://www.dwservice.net/en/download.html
    ```

    file will be downloaded in /root/Download ( you have to be su )
2. Go to the directory:
    ```bash
    chmod +x dwagent.sh
    ./dwagent.sh
    ```

    ![DWS Control](images/image-18.png)
3. After installation, run again:
    ```bash
    ./dwagent.sh
    ```
4. Find the username and password, and login using:
    ![DWS Control](images/image17.png)

### how to access using internet connection

```
https://access.dwservice.net/login.dw?localeid=en#
```
use the username and password 

### Sending C++ File to Board from Host Machine

1. Write the C++ code in `input.cpp`.
2. Source `main.csh`:
    ![Source Main](images/image11.png)

### Connecting the Web Camera to the Board

1. Connect the web camera to the upper right USB port of the board.
2. Copy `check_camera.cpp` to `input.cpp`, source `main.csh`.
3. In VNC, run:
    ```bash
    cd /home/ubuntu/Ourtest
    ./Ourtest
    ```
    ![Camera Check](images/image12.png)
    Note: The second time this may not work.
    ![Second Attempt](images/image13.png)

### Capturing Frames

1. First time success:
    ![First Success](images/image14.png)
2. Second time failure:
    ![Second Failure](images/image15.png)

## Installation of ROS2

1. Set up your ROS2 environment:
    ```bash
    source /opt/ros/humble/setup.bash
    ```

2. Launch the turtle simulator:
    ```bash
    ros2 run turtlesim turtlesim_node
    ```

3. Control the turtle:
    ```bash
    ros2 run turtlesim turtle_teleop_key
    ```
    ![Turtle Sim](images/image16.png)


## Face Recognition ROS 2 Package

### Setup Instructions

1. **Create ROS 2 Workspace**:
    ```bash
    mkdir -p ~/ros2_ws/src
    cd ~/ros2_ws
    source /opt/ros/humble/setup.bash
    ```

2. **Create Face Recognition Package**:
    ```bash
    cd ~/ros2_ws/src
    ros2 pkg create --build-type ament_cmake face_recognition_pkg
    ```

3. **Implement Face Recognition Node**:
    - Create `src` directory and write the face recognition node:
        ```bash
        cd ~/ros2_ws/src/face_recognition_pkg
        mkdir src
        cd src
        code face_recognition_node.cpp
        ```
    - Paste the face recognition node code into `face_recognition_node.cpp`.
    - Download Haar Cascade XML file:
        ```bash
        mkdir -p ~/ros2_ws/src/face_recognition_pkg/resources
        cd ~/ros2_ws/src/face_recognition_pkg/resources
        wget https://raw.githubusercontent.com/opencv/opencv/master/data/haarcascades/haarcascade_frontalface_default.xml
        ```

4. **Update CMakeLists.txt and package.xml**:
    ```bash
    cd ~/ros2_ws/src/face_recognition_pkg
    code CMakeLists.txt
    code package.xml
    ```
    Update the file from the repository.

5. **Build the ROS 2 Workspace**:
    ```bash
    cd ~/ros2_ws
    source /opt/ros/humble/setup.bash
    colcon build --packages-select face_recognition_pkg
    ```

6. **Run the Face Recognition Node**:
    ```bash
    source ~/ros2_ws/install/setup.bash
    ros2 run face_recognition_pkg face_recognition_node
    ```
    See the output:
    ```bash
    ros2 run image_view image_view --ros-args -r image:= /webcam/face_recognition
    ```
    ![Face Recognition](images/image18.png)

## Running ORBSLAM3 on PC without ROS2

1. Download ORBSLAM3 from [GitHub](https://github.com/UZ-SLAMLab/ORB_SLAM3) and run using EuRoc Dataset:
    ```bash
    ./Examples/Monocular/mono_euroc ./Vocabulary/ORBvoc.txt Examples/Monocular/EuRoC.yaml /workspace/MH_01_easy Examples/Monocular/EuRoC_TimeStamps/MH01.txt
    ```
    ![ORBSLAM3](images/image-19.png)

2. Connect your mobile phone as the webcam to the PC to map your home. Create two new scripts in the `_ORBSLAM_no_ROS` folder.
    - For compiling:
        ```bash
        g++ -c mono_phone.cc -o mono_phone.o \
            -I/path_to_ORB_SLAM3 \
            -I/path_to_ORB_SLAM3/include \
            -I/path_to_ORB_SLAM3/include/CameraModels \
            -I/path_to_ORB_SLAM3/eigen \
            -I/path_to_ORB_SLAM3/Thirdparty/Sophus \
            -I/path_to_ORB_SLAM3/Thirdparty/g2o \
            -I/path_to_ORB_SLAM3/Thirdparty \
            -I/path_to_opencv/include/opencv4 \
            -O3 -march=native -std=c++14
        ```
    - For linking:
        ```bash
        g++ mono_phone.o -o mono_phone \
            -L/path_to_ORB_SLAM3/lib \
            -L/path_to_opencv/lib \
            -lORB_SLAM3
        ```
        ![ORB SLAM3](images/image-20.png)

## Cross-Compiling for AArch64

### Prerequisites

Ensure that the following tools are installed on your Ubuntu host machine:
- CMake
- gcc-aarch64-linux-gnu
- g++-aarch64-linux-gnu

You can install the cross-compiler toolchain using the following command:
```
sudo apt-get update
sudo apt-get install gcc-aarch64-linux-gnu g++-aarch64-linux-gnu
```

### Project Structure

```
your_project/
├── CMakeLists.txt
├── aarch64-toolchain.cmake
├── src/
│   └── main.cpp
├── build/
│   └── myproject  # Important file to keep
├── clean_build.sh
└── main.sh
```

### Files Explanation

- **CMakeLists.txt**: CMake configuration file.
- **aarch64-toolchain.cmake**: Toolchain file for cross-compiling.
- **src/**: Directory containing source code files.
- **build/**: Directory where the project will be built.
- **clean_build.sh**: Script to clean up unwanted files after the build.
- **main.sh**: Main script to perform the build and clean-up.

### Usage



#### 1. Configure and Cross-Compile the Project

Run the `main.sh` script to configure and cross-compile the project:
```bash
chmod +x main.sh
./main.sh
```

The script performs the following steps:
1. Creates a `build` directory.
2. Configures the project with CMake using the specified toolchain file.
3. Compiles the project.
4. Moves the important `build/myproject` file to the parent directory.
5. Cleans up the build directory by removing all other generated files.
```

You can copy the above content and paste it directly into your `README.md` file on GitHub.