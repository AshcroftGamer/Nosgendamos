const mysql = require('../database/mysql');

exports.getAll = async (req, res) => {
    try {
        const sql = 'SELECT * FROM servicos;';
        const results = await mysql.execute(sql);
        const response = {
            Quantidade: results.length,
            Servicos: results.map(data => {
                return {
                    id: data.id,
                    nome: data.nome,
                    descricao: data.descricao,
                    tempo: data.tempo,
                    preco: data.preco,
                    id_estabelecimento: data.id_estabelecimento
                }
            })
        }

        return res.status(200).send(response);


    } catch (error) {
        return res.status(500).send(error);
    }
}

exports.postOne = async (req, res) => {
    try {
        const sql = `INSERT INTO servicos( nome, descricao, tempo, preco, id_estabelecimento) values (?,?,?,?,?);`;
        await mysql.execute(sql,
            [
                req.body.nome,
                req.body.descricao,
                req.body.tempo,
                req.body.preco,
                req.body.id_estabelecimento
            ]);
        const response = {
            mensagem: 'Serviço cadastrado com sucesso!',
            servicoCriado: {
                nome: req.body.nome,
                descricao: req.body.descricao,
                tempo: req.body.tempo,
                preco: req.body.preco,
                id_estabelecimento: req.body.id_estabelecimento
            }
        }

        return res.status(201).send(response);

    } catch (error) {
        return res.status(500).send({ Erro: error })
    }
}

exports.pathOne = async (req, res) => {
    try {
        const query = 'UPDATE servicos SET preco = ? WHERE id = ?;';
        await mysql.execute(query,
            [
                req.body.preco,
                req.body.id
            ]);
        const response = {
            Mensagem: "Dados atualizados com sucesso",
            Servico: {
                novoPreco: req.body.preco
            }
        };

        return res.status(202).send(response);



    } catch (error) {
        return res.status(500).send(error);
    }
}

exports.deleteOne = async (req, res) => {
    try {
        const query = 'DELETE FROM servicos WHERE id=?;'
        await mysql.execute(query,
            [
                req.body.id
            ]);
        const response = {
            mensagem: `Servico removido com sucesso! `
        }
        return res.status(200).send(response);

    } catch (error) {
        return res.send(500).send(error);
    }
}

exports.verifica = async (req, res) => {
    try {
        const query = `SELECT * FROM servicos WHERE id = ?`;
        const results = await mysql.execute(query,
            [
                req.body.id
            ]);
        const response = {
            Quantidade: results.length,
            Servico: results.map(data => {
                return {
                    id: data.id,
                    nome: data.nome,
                    descricao: data.descricao,
                    tempo: data.tempo,
                    preco: data.preco

                }
            })
        }
        return res.status(500).send(response);
    } catch (error) {
        return res.status(500).send(error)
    }
}