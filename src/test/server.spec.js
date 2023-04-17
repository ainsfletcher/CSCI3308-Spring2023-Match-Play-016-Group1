// Imports the index.js file to be tested.
const server = require('../index'); //TO-DO Make sure the path to your index.js is correctly added
// Importing libraries

// Chai HTTP provides an interface for live integration testing of the API's.
const chai = require('chai');
const chaiHttp = require('chai-http');
chai.should();
chai.use(chaiHttp);
const {assert, expect} = chai;

const db = require("../resources/js/dbConnection");

// ===========================================================================
// TO-DO: Part A and B Login and Register unit test case

describe('Server!', () => {
  // Sample test case given to test / endpoint.
  it('Returns the default welcome message', done => {
    chai
      .request(server)
      .get('/welcome')
      .end((err, res) => {
        expect(res).to.have.status(200);
        expect(res.body.status).to.equals('success');
        assert.strictEqual(res.body.message, 'Welcome!');
        done();
      });
  });
});

describe('Register test', () => {

    it('Positive : /register', done => {
        chai
        .request(server)
        .post('/register')
        .send({username: 'username', password: 'password'})
        .end((err, res) => {
        expect(res).to.have.status(200);
        done();
    });
});

    it('Negative : /register', done => {
        chai
        .request(server)
        .post('/register')
        .send({username: 'username', password: ''})
        .end((err, res) => {
        expect(res).to.have.status(400);
        done();
        });
    });

});

describe('Login test', () => {

    it('Positive : /login', done => {
        chai
        .request(server)
        .post('/login')
        .send({username: 'username', password: 'password'})
        .end((err, res) => {
        expect(res).to.have.status(200);
        done();
        });
});

    it('Negative : /login', done => {
        chai
        .request(server)
        .post('/login')
        .send({username: 'username1', password: ''})
        .end((err, res) => {
        expect(res).to.have.status(400);
        done();
        });
    });

});