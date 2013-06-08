module.exports = (req, res) ->
  navigation =
    'Dashboard':
      type: 'simple'
      link: '/'
    'Pages': 
      type: 'simple'
      link: '/page'
    'Posts': 
      type: 'simple'
      link: '/post'
    'Create':
      type: 'dropdown'
      links: 
        'New post': '/post/add'
        'New page': '/page/add'
    'Variables':
      type: 'simple' 
      link: '/variables'
    'Theme': 
      type: 'simple'
      link: '/theme'
    'Generate':
      type: 'simple'
      link: '/generate'
  
  res.render 'index',
    title: 'Test'
    navigation: navigation
