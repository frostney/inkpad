navigation = require '../../navigation'

module.exports = (req, res) ->
  
  res.render 'list',
    navigation: navigation
    currentPage: 'Pages'
