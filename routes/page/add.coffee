navigation = require '../../navigation'

module.exports = (req, res) ->
  
  res.render 'add',
    navigation: navigation
    type: 'page'
