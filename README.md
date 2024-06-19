# AMD_AI_Robotic_Challenge
## Challenge overview
AMD - Kria KR260 board
![Kria KR260 board](images/image-2.png)
AI - using vitis AI and using the PYNQ
robotic challenge - ROS 2 


### Booting ubuntu in the board

###  Connecting the board to pc
```
sudo gtkterm
```
![congfiguration](images/image-3.png)

port may be vary depending on the port you connected with PC

connect all the ports to the board then connect to the power

connected successfully
![alt text](images/image-4.png)

upgrade to the latest version
![alt text](images/image-5.png)
```
sudo apt update & sudo apt upgrade -y python
```

we count not connect the monitor using the display port, we tried to connect using the remote desktop
 ### find the ip address of the board
 ```
sudo ifconfig -a
 ```
![IpAddress](images/image-6.png)

### On the Kria KR260:
```
sudo apt update
sudo apt install tightvncserver
```
```
vncserver
```
You'll be prompted to set a password the first time you run it.
### On the Host Machine:

Install a VNC Viewer:
```
sudo apt install tigervnc-viewer
```
Connect to the VNC Server:
```
vncviewer 192.168.1.104:1
```

### debugging information
check the ip address of the board using
``` 
ifconfig -a
#it should look like this: else reboot it
eth1: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
        inet 192.168.1.104  netmask 255.255.255.0  broadcast 192.168.1.255
#if not after reboot
vncserver
```

type the password to connect

![alt text](images/image-7.png)


successfully connect to the VNC Server
![alt text](images/image-8.png)

we installed the VScode in the board
![alt text](images/image-9.png)

how to run the firefox
```
xhost +local:$(whoami)
sudo -E firefox

#you can simply run ( automated )
run_firefox

```

![alt text](images/image-10.png)



### sending c++ file to board  from host machine

write the c++ code in input.cpp

and source main.csh
![alt text](images/image11.png)

### how to connect the web camera to the board
connect the web camera to the upper right usb port of board,
copy the check_camera.cpp to input.cpp,
source main.csh

in vnc,
```
cd /home/ubuntu/Ourtest
./Ourtest
```

![alt text](images/image12.png)

second time this is not working
![alt text](images/image13.png)

### lets try the capturing frames
1st time success

![alt text](images/image14.png)

2nd time failure

![alt text](images/image15.png)



## Installation of ROS2 is done
```
# set up your ROS2 environment
source /opt/ros/humble/setup.bash
# launch the turtle simulator
ros2 run turtlesim turtlesim_node
```

it will open the following figure

```
ros2 run turtlesim turtle_teleop_key
```
can make the turtle move

![alt text](images/image16.png)



## How to access the board using Web
install DWS controll ( only in the board no need to download in host machine)
```
https://www.dwservice.net/en/download.html
```

go to the directory
```
chmod +x dwagent.sh
./dwagent.sh
```
![alt text](images/image-18.png)

after installation, run again.

```
./dwagent.sh
```

![alt text](images/image17.png)



there you can find the user name and password
```
https://access.dwservice.net/login.dw?localeid=en#s
```
login using username and password

### Face Recognition ROS 2 Package
install OpenCV make sure that ROS 2 Humble is working

##### Setup Instructions

##### 1. Create ROS 2 Workspace

```
mkdir -p ~/ros2_ws/src
cd ~/ros2_ws
source /opt/ros/humble/setup.bash
```
##### 2. Create Face Recognition Package
```
cd ~/ros2_ws/src
ros2 pkg create --build-type ament_cmake face_recognition_pkg
```

#### 3. Implement Face Recognition Node
##### 1. Create `src` directory and write the face recognition node:
```
cd ~/ros2_ws/src/face_recognition_pkg
mkdir src
cd src
code face_recognition_node.cpp
```
##### 2.Paste the face recognition node code into `face_recognition_node.cpp`.
##### 3.Download Haar Cascade XML file:
```
mkdir -p ~/ros2_ws/src/face_recognition_pkg/resources
cd ~/ros2_ws/src/face_recognition_pkg/resources
wget https://raw.githubusercontent.com/opencv/opencv/master/data/haarcascades/haarcascade_frontalface_default.xml
```
#### 4.Update CMakeLists.txt and package.xml
```
cd ~/ros2_ws/src/face_recognition_pkg
code CMakeLists.txt
code package.xml
```
update file from repository
### 5. Build the ROS 2 Workspace
```
cd ~/ros2_ws
source /opt/ros/humble/setup.bash
colcon build --packages-select face_recognition_pkg
```
### 6. Run the Face Recognition Node
```
source ~/ros2_ws/install/setup.bash
ros2 run face_recognition_pkg face_recognition_node
```
see the output
```
ros2 run image_view image_view --ros-ards -r image:= /webcam/face_recognition
```
![alt text](images/image18.png)






## Cross-Compiling for AArch64

This project includes scripts for cross-compiling C++ code for the `aarch64` architecture on an `x86` host machine using `CMake`. Below are the steps to set up the environment, compile the project, and clean up the build directory.

### Prerequisites

Ensure that the following tools are installed on your Ubuntu host machine:

- CMake
- gcc-aarch64-linux-gnu
- g++-aarch64-linux-gnu

You can install the cross-compiler toolchain using the following command:

```bash
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

