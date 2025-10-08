//importa o model correspondente as ações na tabela "Paises"
const model = require("../models/countryModels");

//variáveis para padronizar respostas
const notFoundResponse = {'message': 'No such data.'};
const errorResponse = {'message': 'Internal server error.'};

//função que que visa retornar todos os dados dos países na database
exports.getAllCountryData = async (req, res) => {
    try { //tenta obter do model o resultado da consulta
        const data = await model.getAllCountryData();
        if(data == null) { //se não encontrar resultados, envia a resposta padrão para o caso
            return res.status(404).json(notFoundResponse);
        }
        return res.status(200).json(data);
    } catch (error) { //se algo der errado na busca, envia a resposta padrão para o caso
        return res.status(500).json(errorResponse);
    }
}

//função que que visa retornar todos os dados de um país da database, informado pelo id
exports.getCountryDataById = async (req, res) => {
    try { //tenta obter do model o resultado da consulta, passando o id recebido na URL
        const data = await model.getCountryDataById(req.params.id);
        if(data == null) { //se não encontrar resultados, envia a resposta padrão para o caso
            return res.status(404).json(notFoundResponse);
        }
        return res.status(200).json(data);
    } catch (error) { //se algo der errado na busca, envia a resposta padrão para o caso
        return res.status(500).json(errorResponse);
    }
}