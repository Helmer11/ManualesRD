
var mysql = require('mysql');

var conec = {
    host: 'localhost',
    user: 'root',
    password: '',
    port: ' 3306',
    database: 'db_manualesrd'
};

const pool = mysql.createPool(conec);

module.exports = pool
