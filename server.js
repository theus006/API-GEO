//importa o framework express
const express = require("express");

//cria uma instância de aplicação
const app = express();

//importa o arquivo de rotas para os países
const countryRoutes = require("./routes/countryRoutes");

//redireciona todas as requisições para /paises ao sua rota
app.use("/paises", countryRoutes)

//definine a porta para ouvir as requisições
app.listen(3000, () => {
    console.log("Servidor rodando na porta 3000");
});