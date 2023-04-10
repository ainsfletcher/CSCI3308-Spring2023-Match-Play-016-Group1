
const express = require('express'); // To build an application server or API
const app = express();
const pgp = require('pg-promise')(); // To connect to the Postgres DB from the node server
const bodyParser = require('body-parser');
const session = require('express-session'); // To set the session object. To store or access session data, use the `req.session`, which is (generally) serialized as JSON by the store.
const bcrypt = require('bcrypt'); //  To hash passwords
const axios = require('axios'); // To make HTTP requests from our server. We'll learn more about it in Part B.


// database configuration
const dbConfig = {
  host: 'db', // the database server
  port: 5432, // the database port
  database: process.env.POSTGRES_DB, // the database name
  user: process.env.POSTGRES_USER, // the user account to connect with
  password: process.env.POSTGRES_PASSWORD, // the password of the user account
};

const db = pgp(dbConfig);

// test your database
db.connect()
  .then(obj => {
    console.log('Database connection successful'); // you can view this message in the docker compose logs
    obj.done(); // success, release the connection;
  })
  .catch(error => {
    console.log('ERROR:', error.message || error);
  });


app.set('view engine', 'ejs'); // set the view engine to EJS
app.use(bodyParser.json()); // specify the usage of JSON for parsing request body.

// initialize session variables
app.use(
  session({
    secret: process.env.SESSION_SECRET,
    saveUninitialized: false,
    resave: false,
  })
);

app.use(
  bodyParser.urlencoded({
    extended: true,
  })
);


app.get("/", (req, res) => {
    res.redirect("/login");
  });


  app.get("/register", (req, res) => {
    res.render("pages/register");
  });


  app.get("/login", (req, res) => {
    res.render("pages/login");
  });

  app.get("/logout", (req, res) => {
    req.session.destroy();
    res.render('pages/login', {
      message: "Logged out successfully!!!"
    });
  });

  app.post('/register', async (req, res) => {
    const hash = await bcrypt.hash(req.body.password, 10);
    const query = `INSERT INTO users (username, password) VALUES ($1, $2) returning *;`;

    try{
      await db.one(query, [req.body.username, hash]);
      return res.redirect('/login');
    } catch(error){
      console.log(error);
      return res.render('pages/register', {
        message: "Username already exists"
      });
    }

  });

  app.post('/login', async (req, res) => {

    var user = '';
    const query = `SELECT * FROM users WHERE username = $1 ;`;

    try{
      const data = await db.one(query,[req.body.username]);

      if (data != undefined){
        user = data;
      } else{
        return console.log('user not found');
      }
    } catch (error){
      console.log("database error" + error);
      return res.render('pages/register', {
        message: "Please register an account or double check username and password!"
      });
    }


    try{
        const match = await bcrypt.compare(req.body.password, user.password);
        if(match){
            req.session.user = user;
            req.session.save();

            return res.redirect('/home');
        }

    }
    catch(error){
        console.log("error: " + error);
        res.redirect('pages/register', {
          message: "Please register an account or double check username and password!"
        });
        
    }

  });


  app.get("/home", (req, res) => {
    if (!req.session.user) {
        console.log("No active session!");
        return res.render('pages/login', {
          message: "Please log in to view home page!"
        });
    }

    res.render('pages/home')
    
  });

app.listen(3000);
console.log('Server is listening on port 3000');