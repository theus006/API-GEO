const express = require("express");
require("dotenv").config();

const app = express();

//importa o arquivo de rotas para os países
const countryRoutes = require("./routes/countryRoutes");

//redireciona todas as requisições para /paises ao sua rota
app.use("/paises", countryRoutes)

app.listen(process.env.PORT, () => {
    console.log(`Servidor rodando na porta ${process.env.PORT}`);
});