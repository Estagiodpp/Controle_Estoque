-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 27-Maio-2020 às 21:00
-- Versão do servidor: 10.4.11-MariaDB
-- versão do PHP: 7.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `controle`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `controle`
--

CREATE TABLE `controle` (
  `NOMEITEM` varchar(255) DEFAULT NULL,
  `LOCALIZACAO` varchar(255) DEFAULT NULL,
  `ORIGEM` varchar(255) DEFAULT NULL,
  `DESTINO` varchar(255) DEFAULT NULL,
  `TIPO` varchar(255) DEFAULT NULL,
  `QUANTIDADE` int(11) DEFAULT NULL,
  `DESCRICAO` varchar(255) DEFAULT NULL,
  `DATA` datetime DEFAULT NULL,
  `PATRIMONIO` varchar(255) DEFAULT NULL,
  `NR_SERIE` varchar(255) DEFAULT NULL,
  `id` int(11) UNSIGNED NOT NULL,
  `MOTIVO` varchar(255) DEFAULT NULL,
  `PROTOCOLO` varchar(255) DEFAULT NULL,
  `gms` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `controle`
--

INSERT INTO `controle` (`NOMEITEM`, `LOCALIZACAO`, `ORIGEM`, `DESTINO`, `TIPO`, `QUANTIDADE`, `DESCRICAO`, `DATA`, `PATRIMONIO`, `NR_SERIE`, `id`, `MOTIVO`, `PROTOCOLO`, `gms`) VALUES
('lapis amarelo', 'Mateus Leme', 'Mateus Leme', 'null', 'Almoxarifado', 11, 'zz', '2020-05-22 18:19:19', '0', '1234', 7, 'null', '50', '4135563406ss'),
('caneta', 'Mateus Leme', 'Mateus Leme', 'null', 'Almoxarifado', 12, 'zz', '2020-05-22 18:19:19', '0', '1253', 8, 'null', '50', '4135563406ss'),
('borrcaha', 'Mateus Leme', 'Mateus Leme', 'null', 'Almoxarifado', 13, 'zz', '2020-05-22 18:19:19', '0', '1223', 9, 'null', '50', '4135563406ss'),
('panela', 'Mateus Leme', 'Mateus Leme', 'null', 'Almoxarifado', 14, 'zz', '2020-05-22 18:19:19', '0', '12993', 10, 'null', '50', '4135563406ss'),
('tete', 'Mateus Leme', 'Mateus Leme', 'null', 'Almoxarifado', 15, 'zz', '2020-05-22 18:19:19', '0', '12653', 11, 'null', '50', '4135563406ss'),
('lapis azul', 'NOVASEDE2', 'Mateus Leme', 'null', 'Almoxarifado', 5, 'zz', '2020-05-22 18:20:15', '0', '123', 12, 'y', 's ', NULL),
('lapis azu', 'NOVASEDE1', 'Mateus Leme', 'null', 'Almoxarifado', 3, 'zz', '2020-05-22 18:44:42', '0', '123', 13, 'teste', 'teste ', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `controle_prot`
--

CREATE TABLE `controle_prot` (
  `NOMEITEM` varchar(255) DEFAULT NULL,
  `LOCALIZACAO` varchar(255) DEFAULT NULL,
  `ORIGEM` varchar(255) DEFAULT NULL,
  `DESTINO` varchar(255) DEFAULT NULL,
  `TIPO` varchar(255) DEFAULT NULL,
  `QUANTIDADE` int(11) DEFAULT NULL,
  `DESCRICAO` varchar(255) DEFAULT NULL,
  `DATA` datetime DEFAULT NULL,
  `PATRIMONIO` varchar(255) NOT NULL,
  `NR_SERIE` varchar(255) DEFAULT NULL,
  `MOTIVO` varchar(255) DEFAULT NULL,
  `PROTOCOLO` varchar(255) DEFAULT NULL,
  `gms` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `controle_prot`
--

INSERT INTO `controle_prot` (`NOMEITEM`, `LOCALIZACAO`, `ORIGEM`, `DESTINO`, `TIPO`, `QUANTIDADE`, `DESCRICAO`, `DATA`, `PATRIMONIO`, `NR_SERIE`, `MOTIVO`, `PROTOCOLO`, `gms`) VALUES
('pc daten', 'Mateus Leme', 'Mateus Leme', 'null', 'Patrimonio', 1, 'zz', '2020-05-18 19:08:25', '1,00E+11', '7,89E+12', 'null', '10', '4135563406ss');

-- --------------------------------------------------------

--
-- Estrutura da tabela `garantia`
--

CREATE TABLE `garantia` (
  `id` int(11) NOT NULL,
  `data_ex` datetime DEFAULT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `data_ini` datetime DEFAULT NULL,
  `pat` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `garantia`
--

INSERT INTO `garantia` (`id`, `data_ex`, `descricao`, `data_ini`, `pat`) VALUES
(2, '0000-00-00 00:00:00', 'dd', '0000-00-00 00:00:00', '45'),
(3, '0000-00-00 00:00:00', 'dd', '0000-00-00 00:00:00', '77'),
(4, '0000-00-00 00:00:00', 'dd', '0000-00-00 00:00:00', '88');

-- --------------------------------------------------------

--
-- Estrutura da tabela `history`
--

CREATE TABLE `history` (
  `id` int(11) NOT NULL,
  `NOMEITEM` varchar(255) DEFAULT NULL,
  `LOCALIZACAO` varchar(255) DEFAULT NULL,
  `ORIGEM` varchar(255) DEFAULT NULL,
  `DESTINO` varchar(255) DEFAULT NULL,
  `TIPO` varchar(255) DEFAULT NULL,
  `QUANTIDADE` int(11) DEFAULT NULL,
  `DESCRICAO` varchar(255) DEFAULT NULL,
  `DATA` datetime DEFAULT NULL,
  `PATRIMONIO` varchar(255) DEFAULT NULL,
  `NR_SERIE` varchar(255) DEFAULT NULL,
  `MOTIVO` varchar(255) DEFAULT NULL,
  `PROTOCOLO` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `acao` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `history`
--

INSERT INTO `history` (`id`, `NOMEITEM`, `LOCALIZACAO`, `ORIGEM`, `DESTINO`, `TIPO`, `QUANTIDADE`, `DESCRICAO`, `DATA`, `PATRIMONIO`, `NR_SERIE`, `MOTIVO`, `PROTOCOLO`, `ip`, `acao`) VALUES
(1, '', NULL, '', '', 'Almoxarifado', 0, '', '2020-05-22 17:48:48', '0', '12123525', 'null', '', '::1', 'Alteração'),
(2, '', NULL, '', '', 'Almoxarifado', 0, '', '2020-05-22 17:49:56', '0', '12123525', 'null', '', '::1', 'Alteração'),
(3, 'caderninhp', NULL, '', '', 'Almoxarifado', 0, '', '2020-05-22 17:50:26', '0', '12123525', 'null', '', '::1', 'Alteração'),
(4, 'caderninhe', NULL, 'Ponta Grossa', 'Ponta Grossa', 'Almoxarifado', 0, '', '2020-05-22 17:52:04', '0', '12123525', 'null', '', '::1', 'Alteração'),
(5, 'caderninh', 'Ponta Grossa', 'null', 'null', 'Almoxarifado', 0, '', '2020-05-22 17:53:26', '0', '12123525', 'null', '', '::1', 'Alteração'),
(6, 'pc dateu', NULL, '', '', 'Patrimonio', 0, '', '2020-05-22 17:55:06', '0', '', '', '', '::1', 'Alteração'),
(7, 'pc dateinm', 'Mateus Leme', 'null', 'null', 'Patrimonio', 0, '', '2020-05-22 17:57:14', '0', '', '', '', '::1', 'Alteração'),
(8, 'pc datei', 'Mateus Leme', 'null', 'null', 'Patrimonio', 1, 'zz', '2020-05-22 17:59:13', '100003161745', '', '', '', '::1', 'Alteração'),
(9, 'pc dateN', 'Mateus Leme', 'null', 'null', 'Patrimonio', 1, 'zz', '2020-05-22 18:01:22', '100003161745', '7891321045558', '', '', '::1', 'Alteração'),
(10, 'pc dateNs', 'Mateus Leme', 'null', 'null', 'Patrimonio', 1, 'zz', '2020-05-22 18:02:09', '100003161745', '7891321045558', '', '', '::1', 'Alteração'),
(11, 'cadernino', 'Ponta Grossa', 'null', 'null', 'Almoxarifado', 0, '', '2020-05-22 18:05:27', '0', '12123525', 'null', '', '192.168.15.3', 'Alteração'),
(12, 'lapis azul', NULL, 'Mateus Leme', 'NOVASEDE2', 'Almoxarifado', 5, 'zz', '2020-05-22 18:20:15', '0', '123', 'y', 's', '::1', 'Movimentacao'),
(13, 'lapis azu', 'Mateus Leme', 'null', 'null', 'Almoxarifado', 0, '', '2020-05-22 18:37:12', '0', '123', 'null', '', '::1', 'Alteração'),
(14, 'pc datem', 'NOVASEDE4', 'null', 'null', 'Patrimonio', 1, 'zz', '2020-05-22 18:38:20', '56126526', '7891321045558', '', '', '::1', 'Alteração'),
(15, 'pc datem', NULL, 'NOVASEDE4', 'NOVASEDE3', 'Patrimonio', 1, 'zz', '2020-05-22 18:39:42', '56126526', '', 'teste', 'tt', '::1', 'Movimentação'),
(16, 'lapis azu', NULL, 'Mateus Leme', 'NOVASEDE1', 'Almoxarifado', 1, 'zz', '2020-05-22 18:44:42', '0', '123', 'teste', 'teste', '::1', 'Movimentacao'),
(17, 'pc datem', NULL, 'NOVASEDE3', 'NOVASEDE1', 'Patrimonio', 1, 'zz', '2020-05-22 18:47:14', '56126526', '', 'xxxx', 'xxxx', '::1', 'Movimentação'),
(18, 'pc ', 'NOVASEDE1', 'null', 'null', 'Patrimonio', 1, 'zz', '2020-05-22 18:47:59', '56126526', '7891321045558', '', '', '::1', 'Alteração'),
(19, 'lapis azu', NULL, 'Mateus Leme', 'NULL', 'Almoxarifado', 2, 'zz', '2020-05-25 15:08:54', '0', '123', 'NULL', 'null', '::1', 'Exclusão'),
(20, 'lapis azul', 'Mateus Leme', 'Mateus Leme', 'NULL', 'Almoxarifado', 5, 'zz', '2020-05-25 15:10:30', '0', '123', 'NULL', 'null', '::1', 'Exclusão'),
(21, 'pc ', NULL, 'Colombo', 'NULL', 'Patrimonio', 1, 'zz', '2020-05-25 15:11:26', '0', '7891321045558', 'NULL', 'xxxx ', '::1', 'Exclusão'),
(22, 'pc daten', 'Mateus Leme', 'Mateus Leme', 'NULL', 'Patrimonio', 1, 'zz', '2020-05-25 15:17:59', '0', '12121', 'NULL', '10', '::1', 'Exclusão');

-- --------------------------------------------------------

--
-- Estrutura da tabela `sedes`
--

CREATE TABLE `sedes` (
  `id` int(11) NOT NULL,
  `nomesede` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `endereco` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `nr` int(11) DEFAULT NULL,
  `cep` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `local` varchar(255) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `sedes`
--

INSERT INTO `sedes` (`id`, `nomesede`, `endereco`, `nr`, `cep`, `local`) VALUES
(2, 'NOVASEDE2', 'dd', 23, '830006', 'Acapuco'),
(3, 'NOVASEDE3', 'dd', 24, '830007', 'Acapuco'),
(4, 'NOVASEDE4', 'dd', 25, '830001', 'Acapuco'),
(7, 'NOVASEDE1', 'dd', 21, '830005', 'Acapuco');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `controle`
--
ALTER TABLE `controle`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `controle_prot`
--
ALTER TABLE `controle_prot`
  ADD PRIMARY KEY (`PATRIMONIO`);

--
-- Índices para tabela `garantia`
--
ALTER TABLE `garantia`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `sedes`
--
ALTER TABLE `sedes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `controle`
--
ALTER TABLE `controle`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de tabela `history`
--
ALTER TABLE `history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de tabela `sedes`
--
ALTER TABLE `sedes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
