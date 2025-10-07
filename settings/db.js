//importa a biblioteca mysql2 e as variáveis de ambiente
const mysql = require("mysql2");
require("dotenv").config();

//cria e parametrisa o objeto de conexão com o banco
const conn = mysql.createConnection({
    host: process.env.DB_HOST,
    user: process.env.DB_USER,
    password: process.env.DB_PASSWORD,
    database: process.env.DB_NAME
});

//executa a conexão
conn.connect((err) => {
    if(err) {
        return console.log("erro de conexão: " + err.message);
    }
});

//exporta o objeto de conexão para outros módulos
module.exports = conn;