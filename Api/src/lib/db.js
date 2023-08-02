const mysql = require('mysql');
const connection = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  database: 'hotsos_metrics',
  password: ''
});
connection.connect();
module.exports = connection;