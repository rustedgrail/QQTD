exports.PriorityTree = class PriorityTree
  constructor: (@width, @height, @position, @end) ->
    @children = []
    @sorted = false

  findPath: () ->
    if @position[0] == @end[0] && @position[1] == @end[1]
      [@position]
    else
      @addChildren()
      path = @getChild().findPath()
      path.unshift @position
      path

  addChildren: () ->
    for mod in [-1, 1]
      @addChild [mod + @position[0], @position[1]] if 0 <= mod + @position[0] < @width
      @addChild [@position[0], mod + @position[1]] if 0 <= mod + @position[1] < @width

  addChild: (child) ->
    @children.push
      location: new PriorityTree @width, @height, child, @end
      distance: @findDistance(child)

    @sorted = false

  getChild: () ->
    @sort() unless @sorted
    @children.pop().location

  findDistance: (position) ->
    Math.abs(position[0] - @end[0]) + Math.abs(position[1] - @end[1])

  sort: () ->
    @children.sort (a, b) ->
      b.distance - a.distance
