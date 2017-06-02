var supertest = require("supertest");
var should = require("should");

var server = supertest.agent("http://localhost:4000");

describe("Sample unit test", function() {

  it("should return home", function(done) {
    server
    .get("/")
    .expect("Content-type", /text/)
    .expect(200)
    .end(function(err, res){
      res.status.should.equal(200);
      done();
    });
  });
});
