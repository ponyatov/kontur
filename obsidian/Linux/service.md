`/etc/systemd/system/scada.service -> /home/rock/scada/scada.service`
```systemd
[Unit]
Description=SCADA using Node-RED

[Service]
User=rock
Group=rock
ExecStart=/home/rock/.npm/bin/node-red-pi -s /home/rock/scada/settings.js -u /home/rock/scada

[Install]
WantedBy=multi-user.target
```
