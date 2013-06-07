express = require 'express'
routes = require './routes'
http = require 'http'
path = require 'path'
crypto = require 'crypto'

app = express()

app.set 'port', process.env.PORT or 3000
app.set 'views', path.join(__dirname, 'views')
app.set 'view engine', 'jade'

app.use express.favicon()
app.use express.logger('dev')
app.use express.bodyParser()
app.use express.methodOverride()
app.use express.cookieParser(crypto.randomBytes(8).toString('base64'))
app.use express.session()
app.use app.router
app.use require('stylus').middleware(path.join(__dirname, 'public'))
app.use express.static(path.join(__dirname, 'public'))

app.use(express.errorHandler()) if app.get('env') is 'development'

app.get '/', routes.dashboard

http.createServer(app).listen app.get('port'), ->
  console.log "Express server listening on port #{app.get('port')}"
