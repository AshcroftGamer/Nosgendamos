const mysql = require('../database/mysql');

exports.getAll = async(req, res) =>{
    try {
        await mysql.execute('SELECT * FROM prestador;', (error, results) =>{
            if(error){
                return res.status(500).send({Erro: error})
            };
            const response = {
                quantidade : results.length,
                prestador: results.map(data =>{
                    nome: data.nome
                })
            }
            return res.status(200).send(response);
        });
        
        
    } catch (error) {
        return res.status(500).send(error);
    }
}