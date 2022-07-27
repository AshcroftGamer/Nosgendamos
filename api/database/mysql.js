const mysql = require('mysql2');


var pool = mysql.createPool({
    connectionLimit: 1000,
    host: 'localhost',
    user: 'root',
    password: 'Dbpass20!',
    database: 'nosagendamos',
    port: 3306,

})

exports.execute = (query, params = []) => {
    return new Promise((resolve, reject) => {
        pool.query(query, params, (error, result, fields) => {
            if (error) {
                reject({ Erro: error });
            } else {
                resolve(result)
            }
        });
    });
}

exports.pool = pool;