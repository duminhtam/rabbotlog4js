# rabbotlog4js helper

##ryslog
enable 514 port

`vi /etc/rsyslog.conf`

```
$ModLoad imudp
$UDPServerRun 514

$ModLoad imtcp
$InputTCPServerRun 514
```

##Config

```
os = require("os")

module.exports =
  log4js:
    appenders: [ {
      type: 'log4js-syslog-appender'
      tag: 'My API'
      facility: 'local0'
      hostname: os.hostname()
      port: 514
    } ]

```

##Example

```
logger = require 'rabbotlog4js'

console.log logger

```
