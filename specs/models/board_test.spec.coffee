Board = require("../../models/board.coffee").board

describe 'a game board', ->
  it 'should be created', ->
    board = new Board()
    expect(board).toBeTruthy()
