exports.Field = class Field

  constructor: (@height, @width) ->

  path: ->
    return unless @entrance && @exit
    
