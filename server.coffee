"use strict"

http = require 'http'
url = require 'url'
fs = require 'fs'

exports.Server = class Server
  @onRequest: (request, response) ->
    if request.url == '/'
      file = './views/index.html'
    else
      file = ".#{request.url}"

    fs.readFile file, (err, data) ->
      try
        response.writeHead 200,
          "Content-Type": "text/html"
          "Content-Length": data.length
        response.write data
        response.end
      catch err
        console.log err

  @start: ->
    port = process.env.PORT || 8888
    http.createServer(@onRequest).listen port
