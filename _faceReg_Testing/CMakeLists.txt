cmake_minimum_required(VERSION 3.5)
project(webcam_model)

find_package(ament_cmake REQUIRED)
find_package(rclcpp REQUIRED)
find_package(sensor_msgs REQUIRED)
find_package(cv_bridge REQUIRED)
find_package(OpenCV REQUIRED)

# Find dlib package
find_package(dlib REQUIRED)

include_directories(${dlib_INCLUDE_DIRS})
link_directories(${dlib_LIBRARY_DIRS})

add_executable(face_recognition_node src/face_recognition_node.cpp)
ament_target_dependencies(face_recognition_node rclcpp sensor_msgs cv_bridge OpenCV)

target_link_libraries(face_recognition_node ${dlib_LIBRARIES})

install(TARGETS
  face_recognition_node
  DESTINATION lib/${PROJECT_NAME})

ament_package()
