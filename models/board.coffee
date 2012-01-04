Backbone = require "backbone"
Tree = require('../lib/priority_tree.coffee').PriorityTree

exports.Board = class Board extends Backbone.Model
  constructor: (@width, @height, @entrance, @exit) ->

  findPath: () ->
    return @path if @path?
    tree = new Tree(@width, @height, @entrance, @exit)
    @path = tree.findPath()
    @path
