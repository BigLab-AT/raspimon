raspimon
========

RaspiMon is used to keep track over your RasperryPis. The script pushes several system and hardware metrics to a well defined REST API, the server component (see https://github.com/tepeka/inventory). Using this server you can create a QR-Tag which can be directly placed on any RaspberryPi running RaspiMon. Once a code is scanned you will see all gathered metrics regarding this RaspberryPi.

These metrics are atm:
* serialnumber
* kernelVersion
* os
* osVersion
* localTime
* list of ipv4 addresses
* list of ipv6 addresses
* hostname
* hardwareRevisionCode (this code identifies your [RaspberryPi model](http://www.raspberrypi-spy.co.uk/2012/09/checking-your-raspberry-pi-board-version/))


install
-------

Download and install as root
```
wget https://github.com/tepeka/raspimon/releases/download/v#VERSION#/raspimon_#VERSION#_all.deb
dpkg -i raspimon_#VERSION#_all.deb
```

configuration
-------------

Configuraiton can be found at ```/etc/raspimon.conf```
