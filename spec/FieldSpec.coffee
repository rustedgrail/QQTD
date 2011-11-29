Field = require('../lib/field.coffee').Field

describe 'basic field creation', ->

  beforeEach ->
    @field = new Field 5, 5
    @field.entrance =
      x: 0
      y: 1
    @field.exit =
      x: 4
      y: 1
  
  it 'should create a field', ->
    expect(@field).toBeTruthy()

  it 'should have an entrance', ->
    expect(@field.entrance).toEqual
      x: 0
      y: 1

  it 'should find a path through the maze', ->
    expect(@field.path()).toEqual [
      {x: 0, y: 1}
      {x: 1, y: 1}
      {x: 2, y: 1}
      {x: 3, y: 1}
      {x: 4, y: 1}]

  it 'should error if there is no entrance', ->
