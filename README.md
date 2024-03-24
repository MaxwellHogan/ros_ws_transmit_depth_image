# ros_ws_transmit_depth_image

***Setup Instructions***

This is the workspace for setting up the realsense camera and transmitting the frames using gstreamer. This is intended to run on the Jetson Orin Nano with ROS ISAAC. There is no expectation that this will run on any other device. 

In order to build the software, it is assumed that you have followed the steps in the ROS ISAAC documetation to setup the Isaac ROS Buildfarm, configured your jetson's power/cpu settings and also the setup for the Realsense camera. 
https://nvidia-isaac-ros.github.io/

Once you are have done that, you can clone this repo and activate the docker container. To run the container you can first define a path to the workspace - replace \[path to where you cloned this project\] with the actual path (and remove the square brackets).

```
echo "export ISAAC_ROS_WS=${HOME}/[path to where you cloned this project]" >> ~/.bashrc
source ~/.bashrc
```
The docker file can then be ran using:
```
cd ${ROS_WS_TRANSMIT_DEPTH_IMAGE}/src/isaac_ros_common && \
  ./scripts/run_dev.sh ${ROS_WS_TRANSMIT_DEPTH_IMAGE}
```
Once this is running you can compile the code using the following - **you will need to do this everytime you start the container**:
```
rosdep update
rosdep install -i --from-path src --rosdistro $ROS_DISTRO --ignore-src --skip-keys=librealsense2 -y
colcon build
```
You must also run source to update paths - **this needs to be done everytime you open a new terminal in the container**:
```
source ${ROS_WS_TRANSMIT_DEPTH_IMAGE}install/setup.bash
```

***Start Transmission***

In your first terminal start the gstreamer pipeline with the following, replaceing \[ground station ip\] with the ip address of the device you wish to stream to. 
```
gst-launch-1.0 --gst-plugin-path=install/gst_bridge/lib/gst_bridge/ rosimagesrc ros-topic="camera/depth/image_rect_raw" ! videoconvert ! videoscale ! video/x-raw,width=180,height=320 ! x264enc tune=zerolatency bitrate=5000 ! h264parse ! rtph264pay ! udpsink host=\[ground station ip\] port=5600
```
In a second terminal you can start the camera node with the following command:
```
ros2 launch realsense2_camera rs_launch.py colorizer.enable:=true
```
***Modifications***

Here we shall describe the changes that have been made to the source codes of the realsense-ros repo. 

We want the depth maps to have a fixed range (not dynamic), hence we have added the SetOptions method to the NamedFilter object (defined in named_filter.cpp/h) to reconfigure the colorizer filter to have fixed range. The links below are to the documentation on this filter. 

https://dev.intelrealsense.com/docs/depth-image-compression-by-colorization-for-intel-realsense-depth-cameras https://github.com/IntelRealSense/librealsense/blob/4673a37d981164af8eeb8e296e430fc1427e008d/src/proc/colorizer.cpp#L197