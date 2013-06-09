navigation = require '../../navigation'
uuid = require 'node-uuid'

module.exports = (req, res) ->
  
  res.render 'add',
    navigation: navigation
    type: 'post'
    uuid: uuid.v4()