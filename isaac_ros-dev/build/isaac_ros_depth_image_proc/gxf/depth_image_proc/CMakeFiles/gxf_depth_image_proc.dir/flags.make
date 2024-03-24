# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# compile CUDA with /usr/local/cuda/bin/nvcc
# compile CXX with /usr/bin/c++
CUDA_DEFINES = -Dgxf_depth_image_proc_EXPORTS

CUDA_INCLUDES = -I/workspaces/isaac_ros-dev/build/isaac_ros_depth_image_proc/gxf/depth_image_proc -I/workspaces/isaac_ros-dev/src/isaac_ros_image_pipeline/isaac_ros_depth_image_proc/gxf/depth_image_proc -isystem=/usr/local/cuda/include -isystem=/usr/include/eigen3 -isystem=/opt/ros/humble/share/isaac_ros_gxf/gxf/include/gxf -isystem=/opt/ros/humble/share/isaac_ros_gxf/gxf/include/gxf/std -isystem=/opt/ros/humble/share/isaac_ros_gxf/gxf/include -isystem=/opt/ros/humble/share/isaac_ros_gxf/gxf/include/gxf/cuda -isystem=/opt/ros/humble/share/isaac_ros_gxf/gxf/include/gxf/multimedia -isystem=/opt/ros/humble/share/isaac_ros_gxf/gxf/include/gxf/isaac_ros_messages -isystem=/opt/ros/humble/share/isaac_ros_gxf/gxf/include/gxf/isaac_messages

CUDA_FLAGS = -O3 -DNDEBUG --generate-code=arch=compute_87,code=[compute_87,sm_87] --generate-code=arch=compute_86,code=[compute_86,sm_86] --generate-code=arch=compute_80,code=[compute_80,sm_80] --generate-code=arch=compute_75,code=[compute_75,sm_75] --generate-code=arch=compute_72,code=[compute_72,sm_72] --generate-code=arch=compute_70,code=[compute_70,sm_70] --generate-code=arch=compute_61,code=[compute_61,sm_61] --generate-code=arch=compute_60,code=[compute_60,sm_60] -Xcompiler=-fPIC -Wall -Wextra -std=c++17

CXX_DEFINES = -Dgxf_depth_image_proc_EXPORTS

CXX_INCLUDES = -I/workspaces/isaac_ros-dev/build/isaac_ros_depth_image_proc/gxf/depth_image_proc -I/workspaces/isaac_ros-dev/src/isaac_ros_image_pipeline/isaac_ros_depth_image_proc/gxf/depth_image_proc -isystem /usr/local/cuda/include -isystem /usr/include/eigen3 -isystem /opt/ros/humble/share/isaac_ros_gxf/gxf/include/gxf -isystem /opt/ros/humble/share/isaac_ros_gxf/gxf/include/gxf/std -isystem /opt/ros/humble/share/isaac_ros_gxf/gxf/include -isystem /opt/ros/humble/share/isaac_ros_gxf/gxf/include/gxf/cuda -isystem /opt/ros/humble/share/isaac_ros_gxf/gxf/include/gxf/multimedia -isystem /opt/ros/humble/share/isaac_ros_gxf/gxf/include/gxf/isaac_ros_messages -isystem /opt/ros/humble/share/isaac_ros_gxf/gxf/include/gxf/isaac_messages

CXX_FLAGS = -O3 -DNDEBUG -fPIC -Wall -Wextra -std=gnu++17
