cmake_minimum_required(VERSION 3.5)
project(mono_phone_ros)

find_package(ament_cmake REQUIRED)
find_package(rclcpp REQUIRED)
find_package(sensor_msgs REQUIRED)
find_package(cv_bridge REQUIRED)
find_package(OpenCV REQUIRED)

include_directories(
  include
  ${OpenCV_INCLUDE_DIRS}
  /home/subi/codes/AMD_AI_Robotic_Challenge/ORB_SLAM3
  /home/subi/codes/AMD_AI_Robotic_Challenge/ORB_SLAM3/include
  /home/subi/codes/AMD_AI_Robotic_Challenge/ORB_SLAM3/include/CameraModels
  /home/subi/codes/AMD_AI_Robotic_Challenge/ORB_SLAM3/eigen
  /home/subi/codes/AMD_AI_Robotic_Challenge/ORB_SLAM3/Thirdparty/Sophus
  /home/subi/codes/AMD_AI_Robotic_Challenge/ORB_SLAM3/Thirdparty/g2o
)

add_executable(mono_phone_node src/mono_phone_node.cpp)
ament_target_dependencies(mono_phone_node rclcpp sensor_msgs cv_bridge OpenCV)

target_link_libraries(mono_phone_node
  ${OpenCV_LIBRARIES}
  /home/subi/codes/AMD_AI_Robotic_Challenge/ORB_SLAM3/lib/libORB_SLAM3.so
  /usr/local/lib/libpangolin.so
  -lGL
  -lGLEW
)

install(TARGETS
  mono_phone_node
  DESTINATION lib/${PROJECT_NAME}
)

ament_package()
