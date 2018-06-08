#!/bin/bash

export ROS_IP=10.42.0.2
export ROS_MASTER_URI=http://10.42.0.2:11311

source ~/catkin_ws/devel/setup.bash
roslaunch vortex manta.launch

