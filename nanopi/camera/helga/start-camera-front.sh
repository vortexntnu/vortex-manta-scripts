
#!/bin/bash

export ROS_IP=10.42.0.123
export ROS_MASTER_URI=http://10.42.0.174:11311

source /home/vortex/catkin_ws/devel/setup.bash

rosrun video_front video_front_node
