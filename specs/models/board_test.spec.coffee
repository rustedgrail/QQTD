Board = require("../../models/board.coffee").Board

describe 'a game board', ->
  beforeEach ->
    @board = new Board(5, 3, [0, 1], [5, 1])

  it 'should have an entrance', ->
    expect(@board.width).toBe(5)
    expect(@board.height).toBe(3)
    expect(@board.entrance[1]).toBe(1)
    expect(@board.exit[0]).toBe(5)

  it 'should find a path', ->
    position = @board.path[0][0] == 3
    expect(position).toBeTruthy()
