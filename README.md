# vortex-scripts
A collection of services and startup scripts to enable automatic start / restart of software on boot.

## IP-adresses
IP-addresses might change. Make sure that all script contain up-to-date IP-adresses. Current IP-addresses:
odroid: 10.42.0.174
front-cam-helga: 10.42.0.123
nanopi-ingrid: 10.42.0.78
nanopi-christine: 10.42.0.222

## View status of a service
To view the status of a service, use the following command:
`sudo journalctl -f -u run-manta.service`

## Enabling services and startup scripts
Note that the following steps only needs to be applied once.

### odroid
A service is needed to start the script `launch_manta.sh` at boot. Additionally it makes sure that the processes started by the script is restarted if they crash.

To enable a service, the following steps need to be made.
- Clone the repository

`git clone http://github.com/vortexntnu/vortex-scripts`

- Create a copy of run-manta.service into /etc/systemd/system

`sudo cp run-manta.service /etc/systemd/system`

- Create a symbolic link of the startup script in /usr/bin

`sudo ln -s /absolute-path-to-git-folder/launch_manta.sh /usr/bin`

## Camera
nanopi-ingrid and front-cam-helga

`sudo cp run-gstreamer.service /etc/systemd/system`

`sudo ln -s /absolute-path-to-git-folder/start-gstreamer.sh /usr/bin`

## Manipulator
nanopi-christine

`sudo cp run-manipulator.service /etc/systemd/system`

`sudo ln -s /absolute-path-to-git-folder/start-manipulator-script.sh /usr/bin`

`sudo ln -s /absolute-path-to-git-folder/launch-manipulator.sh /usr/bin`

## Enabling the services
run-manta.service example
`cd /etc/systemd/system`

`sudo systemctl enable run-manta.service`

`sudo systemctl start run-manta.service`
