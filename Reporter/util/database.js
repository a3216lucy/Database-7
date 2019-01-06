const mysql = require('mysql2');

const pool = mysql.createPool({
    host: 'localhost',
    user: 'root',
    database: 'repoter',
    password: 'mocamumu'
});

module.exports = pool.promise();