raspimon
====

RaspiMon is used to keep track over your RasperryPis. The script pushes several system and hardware metrics to a well defined REST API, the server component (see https://github.com/tepeka/inventory). Using this server you can create a QR-Tag which can be directly placed on any RaspberryPis running RaspiMon. Once a code is scanned you will see all gathered metrics regarding this RaspberryPi.


install
=====

Download and install as root
```
wget https://github.com/tepeka/raspimon/releases/download/v#VERSION#/raspimon_#VERSION#_all.deb
dpkg -i raspimon_#VERSION#_all.deb
```

configuration
===

Configuraiton can be found at ```/etc/raspimon.conf```
