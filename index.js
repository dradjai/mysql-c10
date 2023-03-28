//get the client
const mysql = require('mysql2');
const connection = require('./connection.js');

//create the connection to database
const db = mysql.createConnection(connection);

db.query("select * from customers;", (err, data) =>{
  if(err){
    console.log(err);
  }
  console.table(data);
  db.end();
})



