exports.PriorityTree = class PriorityTree
  constructor: (@start, @end) ->
    @children = []
    @sorted = false

  addChild: (child) ->
    @children.push
      location: child
      distance: @findDistance(child)

    @sorted = false

  getChild: () ->
    @sort() unless @sorted
    @children.pop()

  findDistance: (position) ->
    Math.abs(position[0] - @end[0]) + Math.abs(position[1] - @end[1])

  sort: () ->
    @children.sort (a, b) ->
      b.distance - a.distance
