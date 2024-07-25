cmake_minimum_required(VERSION 3.5)
project(my_slam_package)

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

add_executable(video_publisher src/video_publisher.cpp)
ament_target_dependencies(video_publisher rclcpp sensor_msgs cv_bridge OpenCV)

add_executable(slam_processor src/slam_processor.cpp)
ament_target_dependencies(slam_processor rclcpp sensor_msgs cv_bridge OpenCV)

target_link_libraries(video_publisher
  ${OpenCV_LIBRARIES}
  /home/subi/codes/AMD_AI_Robotic_Challenge/ORB_SLAM3/lib/libORB_SLAM3.so
  /usr/local/lib/libpangolin.so
  -lGL
  -lGLEW
)

target_link_libraries(slam_processor
  ${OpenCV_LIBRARIES}
  /home/subi/codes/AMD_AI_Robotic_Challenge/ORB_SLAM3/lib/libORB_SLAM3.so
  /usr/local/lib/libpangolin.so
  -lGL
  -lGLEW
)

install(TARGETS
  video_publisher
  slam_processor
  DESTINATION lib/${PROJECT_NAME}
)

ament_package()
