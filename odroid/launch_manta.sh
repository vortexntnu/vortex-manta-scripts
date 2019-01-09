#!/bin/bash

ALL_IPS=(`hostname -I`)

export ROS_IP=${ALL_IPS[0]}
export ROS_MASTER_URI=http://$ROS_IP:11311

source ~/catkin_ws/devel/setup.bash
roslaunch vortex manta.launch
