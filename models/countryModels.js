// arquivo models/country.js

//importa o padrão definido para consultas
const db = require("../settings/db");

//função assincrona que retorna os dados de todos os países
exports.getAllCountryData = async () => {
    try { //tenta realizar a consulta
        const data = await db.dbQuery("SELECT * FROM Paises");
        if(data.length === 0) { //se não há resultados, retorna null para o controller
            return null;
        }
        return data;
    } catch (error) { //se algo deu errado, retorna um erro para o controller
        console.log(error);
        throw new Error(error);
    }
};

//função assincrona que retorna os dados de todos os países pelo ID
exports.getAllCountryDataById = async (id) => {
    try { //tenta realizar a consulta
        const data = await db.dbQuery("SELECT * FROM Paises where id = ?", [id]);
        if(data.length === 0) { //se não há resultados, retorna null para o controller
            return null;
        }
        return data;
    } catch (error) { //se algo deu errado, retorna um erro para o controller
        console.log(error);
        throw new Error(error);
    }
};

