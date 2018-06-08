#!/bin/bash

gst-launch-1.0 v4l2src device=/dev/video1 ! video/x-h264, width=1920, height=1080, framerate=15/1 ! h264parse ! rtph264pay config-interval=-1 ! udpsink host=10.42.0.1 port=5500
