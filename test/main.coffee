djb2 = require '../'
should = require 'should'
require 'mocha'

describe 'djb2', ->
  describe 'djb2(string)', ->
    it 'should should work', (done) ->
      djb2("test").should.equal 2090756197
      done()

  describe 'djb2(arr)', ->
    it 'should should work', (done) ->
      djb2([101,102]).should.equal 5863344
      done()