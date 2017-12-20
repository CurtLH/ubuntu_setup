# conky
Install `conky` and the required temperature sensors
```
$ sudo apt-getl install conky-all lm-sensors hddtemp
```

Create a start up shell script
```
$ vim ~/Program_Files/start_conky.sh
```

```
#!/usr/bin/env bash

## wait 10 seconds
sleep 20

## run conky
conky
```

System > Preferences > Personal > Startup Applications
```
Name: Conky
Command: /home/curtis/Program_Files/start_conky.sh
```
