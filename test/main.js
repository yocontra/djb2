var djb2 = require('../');
var should = require('should');
require('mocha');

describe('djb2', function(){
  describe('djb2(string)', function(){
    it('should should work', function(done){
      djb2("test").should.equal(2090756197);
      done();
    });
  });

  describe('djb2(arr)', function(){
    it('should should work', function(done){
      djb2([101,102]).should.equal(5863344);
      done();
    });
  });
});