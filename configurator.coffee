config = require './config'

Configurator =
  get: -> config
  save: ->
    fs.writeFileSync './config.json', JSON.stringify(config)
    

module.exports = 