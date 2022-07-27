const mysql = require('../database/mysql');

exports.getAll = async (req, res) => {
    try {
        const sql = 'SELECT * FROM estabelecimento;';
        await mysql.execute(sql, (error, results) => {
            if (error) {
                return res.status(500).send({ Erro: error })
            };
            const response = {
                quantidade: results.length,
                prestador: results.map(data => {
                    return {
                        id: data.id,
                        nome: data.nome,
                        cpf: data.cpf,
                        email: data.email,
                        telefone: data.telefone,
                        senhaSegura: data.senha
                    }
                })
            }
            return res.status(200).send(response);
        });


    } catch (error) {
        return res.status(500).send(error);
    }
}

exports.postOne = async (req, res) => {
    try {
        const sql = `INSERT INTO estabelecimento(id, nome, cpf, email, senha, telefone) values (?,?,?,?,?,?);`;
        const results = await mysql.execute(sql,
            [
                req.body.id,
                req.body.nome,
                req.body.cpf,
                req.body.email,
                req.body.senha,
                req.body.telefone
            ]);
        const response = {
            mensagem: 'Conta criada com sucesso!',
            usuarioCriado: {
                id: results.insertId,
                nome: req.body.nome,
                cpf: req.body.cpf,
                email: req.body.email,
                senhaSegura: req.body.senha,
                telefone: req.body.telefone
            }
        }

        return res.status(201).send(response);

    } catch (error) {
        return res.status(500).send(error)
    }
}
exports.pathOne = async (req, res) => {
    try {
        const query = 'UPDATE estabelecimento SET telefone = ? WHERE id = ?;';
        await mysql.execute(query,
            [
                req.body.telefone,
                req.body.id
            ]);
        const response = {
            mensagem: "Dados atualizados com sucesso",
            prestador: {
                novoTelefone: req.body.telefone
            }
        };
        return res.status(500).send(response);


    } catch (error) {
        return res.status(500).send(error);
    }
}

exports.deleteOne = async (req, res) => {
    try {
        const query = 'DELETE FROM estabelecimento WHERE id=?;'
        await mysql.execute(query,
            [
                req.body.id
            ]);
        const response = {
            mensagem: `Usuário Removido com sucesso! `
        }
        return res.status(200).send(response);

    } catch (error) {
        return res.send(500).send(error);
    }
}


exports.verifica = async (req, res) => {
    try {
        const query = `SELECT * FROM estabelecimento WHERE id = ?`;
        const results = await mysql.execute(query,
            [
                req.body.id
            ]);
        const response = {
            quantidade: results.length,
            prestador: results.map(data => {
                return {
                    id: data.id,
                    nome: data.nome,
                    cpf: data.cpf,
                    email: data.email,
                    telefone: data.telefone,
                    senha: data.senha
                }
            })
        }
        return res.status(500).send(response);
    } catch (error) {
        return res.status(500).send(error)
    }
}