//importa o framework express
const express = require("express");
//cria uma instância de aplicação
const router = express.Router();
//importa os controllers dos países
const countryControllers = require("../controllers/countryControllers");

//redireciona as requisições GET para os controllers com as lógicas correspondentes
router.get("/", countryControllers.getNames);
router.get("/:id", countryControllers.getNameById);

//exporta o objeto de roteamento para outros módulos
module.exports = router;