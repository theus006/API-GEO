-- phpMyAdmin SQL Dump
-- version 5.2.1deb3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 07/10/2025 às 01:40
-- Versão do servidor: 8.0.42-0ubuntu0.24.04.2
-- Versão do PHP: 8.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `geo_db`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `Continentes`
--

CREATE TABLE `Continentes` (
  `id` int NOT NULL,
  `nome` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `Continentes`
--

INSERT INTO `Continentes` (`id`, `nome`) VALUES
(1, 'África'),
(2, 'América'),
(3, 'Ásia'),
(4, 'Europa'),
(5, 'Oceania');

-- --------------------------------------------------------

--
-- Estrutura para tabela `Paises`
--

CREATE TABLE `Paises` (
  `id` int NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `capital` varchar(50) DEFAULT NULL,
  `idh` decimal(3,2) DEFAULT NULL,
  `populacao` varchar(30) DEFAULT NULL,
  `pib` decimal(10,2) DEFAULT NULL,
  `id_continente` int DEFAULT NULL,
  `historia` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `Paises`
--

INSERT INTO `Paises` (`id`, `nome`, `capital`, `idh`, `populacao`, `pib`, `id_continente`, `historia`) VALUES
(1, 'Egito', 'Cairo', 0.70, '109.2 milhões', 404.80, 1, 'História milenar com pirâmides e faraós.'),
(2, 'Nigéria', 'Abuja', 0.54, '218.5 milhões', 504.60, 1, 'País mais populoso da África, com grande diversidade cultural.'),
(3, 'África do Sul', 'Pretória', 0.71, '60.1 milhões', 426.20, 1, 'Conhecido por sua luta contra o apartheid.'),
(4, 'Quênia', 'Nairóbi', 0.60, '55.9 milhões', 110.30, 1, 'Famoso por suas savanas e reservas de vida selvagem.'),
(5, 'Marrocos', 'Rabat', 0.68, '37.8 milhões', 142.90, 1, 'Ponte entre a África e a Europa, com rica cultura islâmica.'),
(6, 'Etiópia', 'Adis Abeba', 0.49, '123.4 milhões', 126.20, 1, 'Berço da humanidade, com história antiga e única.'),
(7, 'Gana', 'Acra', 0.63, '33.5 milhões', 77.60, 1, 'Ex-colônia britânica, pioneira na independência africana.'),
(8, 'Tanzânia', 'Dodoma', 0.53, '67.4 milhões', 71.90, 1, 'Lar do Monte Kilimanjaro e do Parque Nacional de Serengeti.'),
(9, 'Uganda', 'Kampala', 0.52, '47.1 milhões', 46.40, 1, 'Conhecida por sua vida selvagem e o Lago Vitória.'),
(10, 'Zimbábue', 'Harare', 0.59, '16.3 milhões', 28.30, 1, 'Possui as famosas Cataratas de Vitória.'),
(11, 'Brasil', 'Brasília', 0.76, '216.4 milhões', 1920.00, 2, 'Gigante da América do Sul, com vasta biodiversidade e cultura.'),
(12, 'Estados Unidos', 'Washington D.C.', 0.92, '334.8 milhões', 25460.00, 2, 'Potência global, com grande influência cultural e econômica.'),
(13, 'Canadá', 'Ottawa', 0.94, '38.7 milhões', 2140.00, 2, 'Segundo maior país do mundo, conhecido pela natureza e multiculturalismo.'),
(14, 'México', 'Cidade do México', 0.78, '127.5 milhões', 1270.00, 2, 'Berço de civilizações antigas como os astecas e maias.'),
(15, 'Argentina', 'Buenos Aires', 0.84, '45.8 milhões', 632.70, 2, 'Famosa pelo tango e por suas vastas planícies.'),
(16, 'Chile', 'Santiago', 0.85, '19.6 milhões', 301.90, 2, 'País longo e estreito, com a Cordilheira dos Andes.'),
(17, 'Colômbia', 'Bogotá', 0.77, '52.0 milhões', 343.90, 2, 'Rica em recursos naturais e diversidade de paisagens.'),
(18, 'Peru', 'Lima', 0.76, '34.0 milhões', 242.60, 2, 'Lar de Machu Picchu, o antigo império inca.'),
(19, 'Venezuela', 'Caracas', 0.69, '28.3 milhões', 85.90, 2, 'Possui grandes reservas de petróleo e as Cataratas do Anjo.'),
(20, 'Cuba', 'Havana', 0.78, '11.0 milhões', 107.00, 2, 'Ilha caribenha com uma história revolucionária única.'),
(21, 'China', 'Pequim', 0.77, '1425.6 milhões', 17960.00, 3, 'Civilização milenar, com uma história rica e complexa.'),
(22, 'Índia', 'Nova Deli', 0.63, '1428.6 milhões', 3390.00, 3, 'Berço de muitas religiões e com grande diversidade cultural.'),
(23, 'Japão', 'Tóquio', 0.92, '123.9 milhões', 4230.00, 3, 'Nação insular, conhecida por sua tecnologia e tradições.'),
(24, 'Rússia', 'Moscou', 0.82, '144.4 milhões', 2240.00, 3, 'Maior país do mundo em área, com vastos territórios.'),
(25, 'Indonésia', 'Jacarta', 0.70, '277.5 milhões', 1290.00, 3, 'Arquipélago com milhares de ilhas e grande biodiversidade.'),
(26, 'Coreia do Sul', 'Seul', 0.93, '51.7 milhões', 1720.00, 3, 'País de alta tecnologia e cultura popular globalmente influente.'),
(27, 'Turquia', 'Ancara', 0.83, '85.8 milhões', 907.00, 3, 'Ponte entre a Europa e a Ásia, com rica história imperial.'),
(28, 'Vietnã', 'Hanói', 0.73, '98.9 milhões', 408.80, 3, 'Conhecido por sua resiliência e a Guerra do Vietnã.'),
(29, 'Irã', 'Teerã', 0.78, '89.1 milhões', 388.50, 3, 'Antiga Pérsia, com uma história de impérios e cultura.'),
(30, 'Arábia Saudita', 'Riade', 0.88, '36.9 milhões', 1110.00, 3, 'Berço do Islã, com as cidades sagradas de Meca e Medina.'),
(31, 'Alemanha', 'Berlim', 0.95, '83.2 milhões', 4070.00, 4, 'País com grande influência na história e economia europeia.'),
(32, 'Reino Unido', 'Londres', 0.93, '67.0 milhões', 3150.00, 4, 'Monarquia constitucional com vasta história colonial.'),
(33, 'França', 'Paris', 0.91, '64.8 milhões', 2780.00, 4, 'Famosa por sua cultura, gastronomia e história.'),
(34, 'Itália', 'Roma', 0.89, '58.8 milhões', 2010.00, 4, 'Berço do Império Romano e do Renascimento.'),
(35, 'Espanha', 'Madri', 0.91, '47.5 milhões', 1400.00, 4, 'Rica em cultura, história e arquitetura mourisca.'),
(36, 'Polônia', 'Varsóvia', 0.87, '37.6 milhões', 688.10, 4, 'País da Europa Oriental com rica história medieval.'),
(37, 'Países Baixos', 'Amsterdã', 0.94, '17.8 milhões', 1000.00, 4, 'Conhecido por seus moinhos de vento, canais e tulipas.'),
(38, 'Suécia', 'Estocolmo', 0.95, '10.6 milhões', 604.30, 4, 'País nórdico conhecido por seu bem-estar social.'),
(39, 'Suíça', 'Berna', 0.96, '8.7 milhões', 807.00, 4, 'Famosa por sua neutralidade e bancos.'),
(40, 'Noruega', 'Oslo', 0.97, '5.5 milhões', 579.50, 4, 'País com o maior IDH do mundo, conhecido pelos fiordes.'),
(41, 'Austrália', 'Camberra', 0.95, '26.4 milhões', 1690.00, 5, 'Continente insular com grande biodiversidade e paisagens únicas.'),
(42, 'Nova Zelândia', 'Wellington', 0.94, '5.2 milhões', 247.90, 5, 'Lar de paisagens deslumbrantes e da cultura maori.'),
(43, 'Fiji', 'Suva', 0.74, '0.9 milhões', 4.50, 5, 'Arquipélago paradisíaco no Pacífico Sul.'),
(44, 'Papua Nova Guiné', 'Port Moresby', 0.51, '10.3 milhões', 31.80, 5, 'País com grande diversidade cultural e linguística.'),
(45, 'Samoa', 'Apia', 0.71, '0.2 milhões', 0.90, 5, 'Ilha da Polinésia com forte cultura tribal.'),
(46, 'Vanuatu', 'Port Vila', 0.60, '0.3 milhões', 1.10, 5, 'Arquipélago com ilhas vulcânicas e rica história tribal.'),
(47, 'Ilhas Salomão', 'Honiara', 0.57, '0.7 milhões', 1.70, 5, 'Local de batalhas históricas na Segunda Guerra Mundial.'),
(48, 'Micronésia', 'Palikir', 0.63, '0.1 milhões', 0.40, 5, 'País insular no Oceano Pacífico, com 607 ilhas.'),
(49, 'Kiribati', 'Tarawa do Sul', 0.62, '0.1 milhões', 0.20, 5, 'República insular conhecida por seus atóis e recifes.'),
(50, 'Tonga', 'Nuku\'alofa', 0.70, '0.1 milhões', 0.50, 5, 'Última monarquia polinésia a ser independente.');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `Continentes`
--
ALTER TABLE `Continentes`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `Paises`
--
ALTER TABLE `Paises`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_continente` (`id_continente`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `Continentes`
--
ALTER TABLE `Continentes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `Paises`
--
ALTER TABLE `Paises`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `Paises`
--
ALTER TABLE `Paises`
  ADD CONSTRAINT `Paises_ibfk_1` FOREIGN KEY (`id_continente`) REFERENCES `Continentes` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
