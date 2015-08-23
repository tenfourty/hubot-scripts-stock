chai = require 'chai'
sinon = require 'sinon'
chai.use require 'sinon-chai'

expect = chai.expect

describe 'scripts-stock', ->
  beforeEach ->
    @robot =
      respond: sinon.spy()

    require('../src/stock')(@robot)

  it 'registers a respond listener for stock', ->
    expect(@robot.respond).to.have.been.calledWith(/stock (\S+)$/i)

  it 'registers a respond listener for stock chart', ->
    expect(@robot.respond).to.have.been.calledWith(/stock chart\s?@?([A-Za-z0-9.-_]+)\s?(\d+\w+)?/i)
