#!/bin/bash

ALL_IPS=(`hostname -I`)

export ROS_IP=${ALL_IPS[0]}
export ROS_MASTER_URI=http://10.42.0.174:11311

source /home/vortex/catkin_ws/devel/setup.bash
roslaunch camera-actuation camera-actuation.launch
