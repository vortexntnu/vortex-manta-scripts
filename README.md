# vortex-scripts
A collection of services and startup scripts to enable automatic start / restart of software on boot.

## odroid 10.42.0.2
A service is needed to start the script `launch_manta.sh` at boot. Additionally it makes sure that the processes started by the script is restarted if they crash.

To enable a service, the following steps need to be made.
- Clone the repository

`git clone http://github.com/vortexntnu/vortex-scripts`

- Create a copy of run-manta.service into /etc/systemd/system

`sudo cp run-manta.service /etc/systemd/system` 

- Create a symbolic link of the startup script in /usr/bin

`sudo ln -s /absolute-path-to-git-folder/launch_manta.sh /usr/bin`

## Camera
nanopi-ingrid 10.42.0.78 

nanopi-helga 10.42.0.123

`sudo cp run-gstreamer.service /etc/systemd/system` 

`sudo ln -s /absolute-path-to-git-folder/start-gstreamer.sh /usr/bin`

## Manipulator
nanopi-christine 10.42.0.222

`sudo cp run-manipulator.service /etc/systemd/system`

`sudo ln -s /absolute-path-to-git-folder/start-manipulator-script.sh /usr/bin`

`sudo ln -s /absolute-path-to-git-folder/launch-manipulator.sh /usr/bin`

Additionally, export ROS variables in .bashrc file (vortex user)

`export ROS_MASTER_URI=http://10.42.0.2:11311`
`export ROS_IP=10.42.0.222`

## Enabling the services
run-manta.service example
`cd /etc/systemd/system`

`sudo systemctl enable run-manta.service`

`sudo systemctl start run-manta.service`

To view the status of a service, use the following command:

`sudo journalctl -f -u run-manta.service`
