Tree = require("../../lib/priority_tree.coffee").PriorityTree

describe "a priority tree", ->
  beforeEach ->
    @tree = new Tree([0, 1], [5, 1])

  it "should have a start and end", ->
    expect(@tree.start[0]).toBe(0)
    expect(@tree.end[1]).toBe(1)

  it "should add a child", ->
    @tree.addChild [1, 1]
    expect(@tree.getChild()['location'][0]).toBe(1)

  it "should return the highest child", ->
    @tree.addChild [1, 1]
    @tree.addChild [3, 1]
    @tree.addChild [2, 1]
    child = @tree.getChild()
    expect(child['distance']).toBe(2)
    expect(child['location'][0]).toBe(3)

  it 'should calculate the distance', ->
    expect(@tree.findDistance([2, 1])).toBe(3)
    expect(@tree.findDistance([3, 3])).toBe(4)
