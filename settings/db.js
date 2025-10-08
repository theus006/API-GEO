// arquivo responsável pelas configurações e padronizações nas ações com o banco.
// settings/db.js

// importa a biblioteca mysql2 e as variáveis de ambiente
const mysql = require("mysql2");
require("dotenv").config();

// cria e parametriza o objeto de conexão com o banco
const conn = mysql.createConnection({
  host: process.env.DB_HOST,
  user: process.env.DB_USER,
  password: process.env.DB_PASSWORD,
  database: process.env.DB_NAME,
});

// executa a conexão
conn.connect((err) => {
  if (err) {
    return console.log(`Erro de conexão: ${err.message}`);
  }
});

// função que PADRONIZA as ações no banco, para tudo o que for exigido dos models 
// vai passar por essa função, a consulta será dessa forma, passando apenas o comando SQL correspondente 
// a ação e os parâmetros se necessário filtrar
exports.dbQuery = (sql, params = []) => {
  // o retorno da função é uma Promise
  return new Promise((res, rej) => {
    conn.query(sql, params, (err, result) => {
      if (err) {
        // se tem algum erro na consulta, a promise é rejeitada... retornando o erro e caindo no catch
        return rej(`Erro na query: ${err.message}`);
      }
      // se não houve erro, retorna o resultado, executando o try completo
      return res(result);
    });
  });
};
