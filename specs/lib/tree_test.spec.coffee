Tree = require("../../lib/priority_tree.coffee").PriorityTree

describe "a priority tree", ->
  beforeEach ->
    @tree = new Tree(5, 5, [0, 1], [5, 1])

  it "should have a start and end", ->
    expect(@tree.position).toEqual [0, 1]
    expect(@tree.end).toEqual [5, 1]

  it "should add a child", ->
    @tree.addChild [1, 1]
    expect(@tree.getChild().position).toEqual [1, 1]

  it "should return the highest child", ->
    @tree.addChild [1, 1]
    @tree.addChild [3, 1]
    @tree.addChild [2, 1]
    child = @tree.getChild()
    expect(child.position).toEqual [3, 1]

  it 'should calculate the distance', ->
    expect(@tree.findDistance([2, 1])).toBe(3)
    expect(@tree.findDistance([3, 3])).toBe(4)

  it 'should add all children', ->
    @tree.addChildren()
    expect(@tree.children.length).toBe(3)
