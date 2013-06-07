module.exports = (req, res) ->
  navigation =
    'Dashboard': '/'
    'Page': '/page'
    'Post': '/post'
    'Variables': '/variables'
  
  res.render 'index',
    title: 'Test'
    navigation: navigation
