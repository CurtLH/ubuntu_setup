# `xrdp`
```
$ sudo apt-get install xrdp
$ sudo apt-get install mate-core mate-desktop-environment mate-notification-daemon
$ sudo sed -i.bak '/fi/a #xrdp multiple users configuration \n mate-session \n' /etc/xrdp/startwm.sh
```

# `git`
```
$ sudo apt-get install git
```

# `postges`
```
$ sudo apt-get install postgresql
```

Add new user
```
$ sudo -i -u postgres
$ createuser --interactive curtis
```

Configure PostgreSQL to accept TCP/IP connections
http://www.mozmorris.com/2011/11/15/configure-postgresql-to-accept-tcpip-connections.html

# `conky`
```
$ sudo apt-get install conky-all lm-sensors hddtemp
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
