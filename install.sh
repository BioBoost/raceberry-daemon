#!/bin/bash

echo "Please wait while installing raceberry-daemon as a service"
sudo systemctl start raceberry-daemon.service
sudo cp raceberry-daemon.service /etc/systemd/system
sudo chmod +x /etc/systemd/system/raceberry-daemon.service
sudo systemctl enable raceberry-daemon.service
sudo systemctl start raceberry-daemon.service

echo "Done"