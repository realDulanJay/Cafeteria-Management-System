const mysql = require('mysql2');
require('dotenv').config();

var connection = mysql.createConnection({
    port: process.env.DB_Port,
    host: process.env.DB_Host,
    user: process.env.DB_USERNAME,
    password: process.env.DB_PASSWORD,
    database: process.env.DB_NAME
});

connection.connect((err) => {
    if(!err){
        console.log("Connected");
    }
    else{
        console.log(err);
    }
});

module.exports = connection;