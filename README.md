# Fork to background
ruby server_control.rb start

# End the forked process that began with start
ruby server_control.rb stop

# Run without forking to background process
# Will require a CTRL-C or a kill to end
ruby server_control.rb run



# Systemd startup script:

https://gauntface.com/blog/2015/12/02/start-up-scripts-for-raspbian

Create the .service file in /etc/systemd/system

```
#!/bin/sh

[Unit]
Description=Student script for Raceberry Pi
Before=systemd-user-sessions.service

[Service]
TimeoutStartSec=0

ExecStart=/..../ruby /home/pi/student/server_control.rb status
Type=oneshot
RemainAfterExit=yes
User=pi

ExecStop=/...../ruby /home/pi/student/server_control.rb stop
User=pi

[Install]
WantedBy=multi-user.target
```



Some other source: https://bbs.archlinux.org/viewtopic.php?id=155538