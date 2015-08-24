config = require 'config'
log4js = require 'log4js'

log4js.configure config.get 'log4js'
module.exports = logger = log4js.getLogger('syslog')
