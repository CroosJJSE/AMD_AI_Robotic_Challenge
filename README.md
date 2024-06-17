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