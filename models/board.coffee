Backbone = require "backbone"
Tree = require('../lib/priority_tree.coffee').PriorityTree

exports.Board = class Board extends Backbone.Model
  constructor: (@width, @height, @entrance, @exit) ->
    @findPath()

  findPath: () ->
    @path = [[3, 1]]
