"use strict"

http = require 'http'
url = require 'url'

exports.Server = class Server
  @start: ->
    onRequest = (request, response) ->
      response.writeHead 200, {"Content-Type": "text/plain", "Content-Length": "11"}
      response.write "Hello World"
      response.end
    http.createServer(onRequest).listen 8888
