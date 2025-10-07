//importa o objeto de conexão com o banco
const conn = require("../settings/db");

//função que executa as ações no banco, podendo ser tratada com await e try catch... recebe os agrumentos:
//sql = comando a executar no banco e params = [] parâmtros para busca com prepared statements "?"
function dbQuery(sql, params = []) {
    //o retorno da função é uma Promise (recurso usado para atividades assíncronas)
    return new Promise((res, rej) => { //rej -> retorno para erros na query | res -> retorna o resultado
        conn.query(sql, params, (err, result) => {
            if(err) { //se tem algum erro na consulta, a promise é rejeitada... retornando o erro e caindo no catch
                return rej("Erro na query: " + err.message);
            }
            //se não houve erro, retorna o resultado, executando o try completo
            return res(result);
        });
    });
}

//o exports antes das funções, permite que sejam acessadas em outros módulos pelo require("caminho do arquivo")
//função assincrona que retorna todos os países do banco
exports.getNames = async (req, res) => {
    try {
        //executa a função com a query sql passada, usando o await para esperar a resolução da promise
        const names = await dbQuery("select * from Paises");
        //se der tudo certo com a consulta, retorna os resultados
        return res.status(200).json(names);
    } catch (error) { //se houver erro, após o await, o código do catch é executado
        //retorna o erro
        return res.status(500).json(error);
    }
}

//função assincrona que retorna os dados de um país pelo ID
exports.getNameById = async (req, res) => {
    try {
        //executa a função com a query sql passada e o parâmetro do ID recebido pela URL,
        //usando o await para esperar a resolução da promise
        const names = await dbQuery("select * from Paises where id = ?", [req.params.id]);
        //se der tudo certo com a consulta, retorna os resultados
        return res.status(200).json(names);
    } catch (error) { //se houver erro, após o await, o código do catch é executado
        //retorna o erro
        return res.status(500).json(error);
    }
}