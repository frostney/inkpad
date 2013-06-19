navigation = require '../../navigation'
Configurator = require '../../configurator'
uuid = require 'node-uuid'

module.exports = (req, res) ->
  
  res.render 'add',
    navigation: navigation
    type: 'page'
    uuid: uuid.v4()
    author: Configurator.get().author
