os = require 'os'

class rabbotlog4js
  @open: (app, module) ->
    log4jsConfig =
      appenders: [ {
        type: 'log4js-ain2'
        facility: 'local0'
        hostname: os.hostname()
        port: 514
      } ]
    log4js = require 'log4js'
    log4jsConfig.appenders[0].tag = app
    log4js.configure log4jsConfig
    return log4js.getLogger module

module.exports = rabbotlog4js
