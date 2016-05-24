# Raceberry Pi Daemonizer script for student script

This will daemonize the latest ruby script dropped in the boot directory on the Desktop of a Raspberry Pi (pi account).

Make sure not to forget to do bundle install.

```shell
bundle install
```

## Starting and stopping manually

### Fork to background

```shell
ruby server_control.rb start
```

### End the forked process that began with start

```shell
ruby server_control.rb stop
```

### Run without forking to background process
Will require a CTRL-C or a kill to end

```shell
ruby server_control.rb run
```

# Systemd startup script:

Copy the 'raceberry-daemon.service' file to /etc/systemd/system and make it executable.

Make sure to enable the service script

```shell
sudo cp raceberry-daemon.service /etc/systemd/system
sudo chmod +x /etc/systemd/system/raceberry-daemon.service
sudo systemctl enable raceberry-daemon.service
```

Restart the system and it should work