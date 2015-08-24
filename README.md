# rabbotlog4js helper
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
