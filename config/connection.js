// Set up MySQL connection.
var mysql = require("mysql");

var env = process.env.NODE_ENV || 'development';
var config = require(__dirname + "/config.json")[env];
var connection;

//console.log(config);

//determine env 
if(config.use_env_variable){
  var connection = mysql.createConnection(process.env[config.use_env_variable]);
}else{

connection = mysql.createConnection({
  port: 3306,
  host: "localhost",
  user: "root",
  password: "MyNewPass",
  database: "burgers_db"
});
}

// Make connection.
connection.connect(function(err) {
  if (err) {
    console.error("error connecting: " + err.stack);
    return;
  }
  console.log("connected as id " + connection.threadId);
});

// Export connection for our ORM to use.
module.exports = connection;

