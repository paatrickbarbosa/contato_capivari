-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 10-Jun-2020 às 19:31
-- Versão do servidor: 5.7.29-cll-lve
-- versão do PHP: 7.2.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `covid`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `autonomo`
--

CREATE TABLE `autonomo` (
  `idempresas` int(11) NOT NULL,
  `nomeempresa` varchar(30) NOT NULL,
  `cpf` varchar(14) NOT NULL,
  `email` varchar(41) NOT NULL,
  `telefone` varchar(45) NOT NULL,
  `celular` varchar(20) NOT NULL,
  `endereco` varchar(35) NOT NULL,
  `bairro` varchar(30) NOT NULL,
  `numero` varchar(6) NOT NULL,
  `obs` varchar(50) NOT NULL,
  `ramo` int(2) NOT NULL,
  `delivery` varchar(1) NOT NULL,
  `drive_thru` varchar(1) NOT NULL,
  `agendamento` varchar(1) NOT NULL,
  `esta_aberto` varchar(1) NOT NULL,
  `zap` varchar(1) NOT NULL,
  `instagram` varchar(45) NOT NULL,
  `facebook` varchar(50) NOT NULL,
  `hr_aberto` varchar(5) DEFAULT NULL,
  `hr_fechado` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `empresas`
--

CREATE TABLE `empresas` (
  `idempresas` int(11) NOT NULL,
  `nomeempresa` varchar(30) NOT NULL,
  `cnpj` varchar(19) NOT NULL,
  `email` varchar(41) NOT NULL,
  `telefone` varchar(45) NOT NULL,
  `celular` varchar(20) NOT NULL,
  `endereco` varchar(35) NOT NULL,
  `bairro` varchar(30) NOT NULL,
  `numero` varchar(6) NOT NULL,
  `obs` varchar(50) NOT NULL,
  `ramo` int(2) NOT NULL,
  `delivery` varchar(1) NOT NULL,
  `drive_thru` varchar(1) NOT NULL,
  `agendamento` varchar(1) NOT NULL,
  `esta_aberto` varchar(1) NOT NULL,
  `zap` varchar(1) NOT NULL,
  `instagram` varchar(45) NOT NULL,
  `facebook` varchar(50) NOT NULL,
  `hr_aberto` varchar(5) DEFAULT NULL,
  `hr_fechado` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `empresas`
--

INSERT INTO `empresas` (`idempresas`, `nomeempresa`, `cnpj`, `email`, `telefone`, `celular`, `endereco`, `bairro`, `numero`, `obs`, `ramo`, `delivery`, `drive_thru`, `agendamento`, `esta_aberto`, `zap`, `instagram`, `facebook`, `hr_aberto`, `hr_fechado`) VALUES

-- --------------------------------------------------------

--
-- Estrutura da tabela `ramo`
--

CREATE TABLE `ramo` (
  `idramo` int(11) NOT NULL,
  `tipoempresa` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `ramo`
--

INSERT INTO `ramo` (`idramo`, `tipoempresa`) VALUES
(1, 'alimento'),
(2, 'beleza'),
(3, 'escola'),
(4, 'mecanica'),
(5, 'petshop'),
(6, 'saude'),
(7, 'tecnologia'),
(8, 'vestuario'),
(9, 'autonomo');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `autonomo`
--
ALTER TABLE `autonomo`
  ADD PRIMARY KEY (`idempresas`),
  ADD UNIQUE KEY `cnpj` (`cpf`);

--
-- Índices para tabela `empresas`
--
ALTER TABLE `empresas`
  ADD PRIMARY KEY (`idempresas`),
  ADD UNIQUE KEY `cnpj` (`cnpj`);

--
-- Índices para tabela `ramo`
--
ALTER TABLE `ramo`
  ADD PRIMARY KEY (`idramo`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `autonomo`
--
ALTER TABLE `autonomo`
  MODIFY `idempresas` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `empresas`
--
ALTER TABLE `empresas`
  MODIFY `idempresas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de tabela `ramo`
--
ALTER TABLE `ramo`
  MODIFY `idramo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
