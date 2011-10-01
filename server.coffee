"use strict"

http = require 'http'
url = require 'url'

exports.Server = class Server
  @start: ->
    onRequest = (request, response) ->
      response.writeHead 200, {"Content-Type": "text/plain", "Content-Length": "11"}
      response.write "Hello World"
      response.end
    port = process.env.PORT || 8888
    http.createServer(onRequest).listen port
