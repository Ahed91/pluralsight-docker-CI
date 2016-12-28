var request = require('supertest');
var app = require('../app').getApp;

describe('GET /', function() {
  it('respond http response 200', function(done) {
    request(app)
      .get('/')
      .expect(200, done);
  });
});
