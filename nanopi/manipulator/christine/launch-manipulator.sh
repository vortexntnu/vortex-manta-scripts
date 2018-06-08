#!/bin/bash

export ROS_MASTER_URI=http://10.42.0.2:11311
export ROS_IP=10.42.0.222

# Source ros stuff
source /home/vortex/catkin_ws/devel/setup.bash

# Start the manipulator
roslaunch manipulator_interface nanopi.launch

