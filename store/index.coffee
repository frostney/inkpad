class Document
  @data = {}
  
  constructor: (@doc) ->
    
  get: (key) -> @data[key]
    
  set: (key, value) -> @data[key] = value
  
  all: -> @data
  
  toString: ->
    jsonObject = {}
    jsonObject[@doc] = @data
    JSON.stringify jsonObject

class Store
  @filename = ''
  @data = []
  
  constructor: (@filename) ->

  document: (name) ->
    
  