Board = require("../../models/board.coffee").Board

describe 'a game board', ->
  it 'should have an entrance', ->
    @board = new Board(6, 3, [0, 1], [5, 1])
    expect(@board.width).toBe(6)
    expect(@board.height).toBe(3)
    expect(@board.entrance).toEqual([0, 1])
    expect(@board.exit).toEqual([5, 1])

  it 'should find the path when already at the end', ->
    @board = new Board(1, 1, [0, 0], [0, 0])
    expect(@board.findPath().length).toBe(1)
    expect(@board.findPath()[0]).toEqual([0, 0])

  it 'should find the end from 1 space away', ->
    @board = new Board(2, 2, [0, 0], [1, 0])
    expect(@board.findPath().length).toBe(2)

  it 'should find the end from further away', ->
    @board = new Board(3, 3, [0, 0], [1, 2])
    expect(@board.findPath().length).toBe(4)
