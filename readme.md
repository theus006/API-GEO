<h1>API-GEO Projeto de uma API Geográfica🌍</h1>
<p>Bem vindo ao meu projeto de um sistema Node.js e Express.</p>
<p>O sistema consiste em uma API que permite pesquisar sobre alguns países dos 5 continentes.</p>
<h2>Rotas Possíveis Até o Momento</h2>
<ul>
    <li>GET /paises -> Retorna os dados de todos os países.</li>
    <li>GET /paises/{id do país} -> Retorna os dados de um país pesquisado por seu ID.</li>
    <p>Exemplo de resposta:</p>
    <p>
        [{
            "id":34,
            "nome":"Itália",
            "capital":"Roma",
            "idh":"0.89",
            "populacao":"58.8 milhões","pib":"2010.00","id_continente":4,
            "historia":"Berço do Império Romano e do Renascimento."
        }]  
    </p>
</ul>
<h2>Informações Retornadas Para Cada País</h2>
<ul>
    <li>Seu ID na base de dados</li>
    <li>Nome do país</li>
    <li>Capital</li>
    <li>IDH</li>
    <li>populacao</li>
    <li>ID do continente</li>
    <li>Uma história do país</li>
</ul>
<h2>Tecnologias Utilizadas</h2>
<ul>
    <li>Node.js</li>
    <li>Express.js</li>
    <li>Mysql2</li>
    <li>Nodemon (dev)</li>
    <li>Dotenv</li>
</ul>
