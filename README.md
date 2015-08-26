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

##Example

```

rabbotlog4js = require 'rabbotlog4js'
logger = rabbotlog4js.open 'appname', 'modulename'

logger.debug 'this is debug of app: appname module:modulename'

#Open Another log with debug

logger = rabbotlog4js.open 'other_appname', 'other_modulename', 'verbose'

logger.debug 'this is debug of app: other_appname module:other_modulename'

logger.trace('a trace message');
logger.debug('a debug message');
logger.info('an info message');
logger.warn('a warning message');
logger.error('an error message');
logger.fatal('a fatal message');

```
