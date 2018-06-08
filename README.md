# vortex-scripts
A collection of services and startup scripts to enable automatic start / restart of software on boot.

## odroid
A service is needed to start the script `launch_manta.sh` at boot. Additionally it makes sure that the processes started by the script is restarted if they crash.

To enable a service, the following steps need to be made.

- Clone the repository
	`git clone http://github.com/vortexntnu/vortex-scripts`
- Change directory to `vortex-scripts/odroid`
- Create symbolic link of the service and startup script
`ln -s launch_manta.sh /usr/bin`
`ln -s run-manta.service /etc/systemd/system` 
- Enable the service 
`systemctl enable run-manta.service`

Note that these steps only needs to be done once unless you make a change in the service.

To check the status of the service, use the following command:
`journalctl -f -u run-manta.service`  

