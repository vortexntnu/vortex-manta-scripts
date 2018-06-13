[Unit]
Description=Camera Actuation NanoPi Ingrid startup

[Service]
ExecStart=/usr/bin/start-camera-actuation.sh
Restart=always
RestartSec=10
Environment="HOME=/home/vortex"

[Install]
WantedBy=multi-user.target
