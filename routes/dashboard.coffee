navigation = require '../navigation'

module.exports = (req, res) ->
  
  res.render 'index',
    title: 'Test'
    navigation: navigation
