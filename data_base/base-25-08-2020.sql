-- --------------------------------------------------------
-- Servidor:                     10.77.38.35
-- Versão do servidor:           10.4.11-MariaDB - Source distribution
-- OS do Servidor:               Linux
-- HeidiSQL Versão:              10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Copiando estrutura do banco de dados para controle
CREATE DATABASE IF NOT EXISTS `controle` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `controle`;

-- Copiando estrutura para tabela controle.controle
CREATE TABLE IF NOT EXISTS `controle` (
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
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `MOTIVO` varchar(255) DEFAULT NULL,
  `PROTOCOLO` varchar(255) DEFAULT NULL,
  `gms` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela controle.controle: ~79 rows (aproximadamente)
/*!40000 ALTER TABLE `controle` DISABLE KEYS */;
REPLACE INTO `controle` (`NOMEITEM`, `LOCALIZACAO`, `ORIGEM`, `DESTINO`, `TIPO`, `QUANTIDADE`, `DESCRICAO`, `DATA`, `PATRIMONIO`, `NR_SERIE`, `id`, `MOTIVO`, `PROTOCOLO`, `gms`) VALUES
	('filtro de linha', 'Colombo', 'Colombo', 'null', 'Almoxarifado', 2, 'Filtro de Linha', '2020-07-31 14:56:39', '0', '4594894984', 1, NULL, '17', '4135563406'),
	('HD 1TB', 'Colombo', 'Colombo', 'null', 'Almoxarifado', 0, 'null', '2020-07-31 15:06:25', '0', 'null', 3, 'null', 'null', '7004.12292'),
	('TOALHA DE PAPEL ', 'Colombo', 'Colombo', 'null', 'Almoxarifado', 0, 'null', '2020-07-31 15:06:25', '0', 'null', 4, 'null', 'null', '8504.16467'),
	('COPO DE AGUA - 180 ML', 'Colombo', 'Colombo', 'null', 'Almoxarifado', 0, 'null', '2020-07-31 15:06:25', '0', 'null', 5, 'null', 'null', '7303.2426'),
	('PAPEL SULFITE A4', 'Colombo', 'Colombo', 'null', 'Almoxarifado', 0, 'null', '2020-07-31 15:06:26', '0', 'null', 6, 'null', 'null', '7502.9572'),
	('PAPEL HIGIENICO ROLINHO', 'Colombo', 'Colombo', 'null', 'Almoxarifado', 0, 'null', '2020-07-31 15:06:26', '0', 'null', 7, 'null', 'null', '8504.2577'),
	('TECLADO PARA MICROCOMPUTADOR', 'Colombo', 'Colombo', 'null', 'Almoxarifado', 0, 'null', '2020-07-31 15:06:26', '0', 'null', 8, 'null', 'null', '7005.3504'),
	('TONER IMPRESSORA SAMSUNG', 'Colombo', 'Colombo', 'null', 'Almoxarifado', 0, 'null', '2020-07-31 15:06:26', '0', 'null', 9, 'null', 'null', '7014.4926'),
	('DISCO LASER - DVD-R', 'Colombo', 'Colombo', 'null', 'Almoxarifado', 0, 'null', '2020-07-31 15:06:26', '0', 'null', 10, 'null', 'null', '7005.735'),
	('GRAMPO TRILHO', 'Colombo', 'Colombo', 'null', 'Almoxarifado', 0, 'null', '2020-07-31 15:06:26', '0', 'null', 11, 'null', 'null', '7504.2013'),
	('CAIXA ARQUIVO - AZUL - 135X250X360MM', 'Colombo', 'Colombo', 'null', 'Almoxarifado', 0, 'null', '2020-07-31 15:06:26', '0', 'null', 13, 'null', 'null', '7504.3172'),
	('LAMPADA 24W/127V BASE E27 COMPACTA', 'Colombo', 'Colombo', 'null', 'Almoxarifado', 0, 'null', '2020-07-31 15:06:26', '0', 'null', 16, 'null', 'null', '6203.3251'),
	('COADOR DE PAPEL - 30 UNIDADES', 'Colombo', 'Colombo', 'null', 'Almoxarifado', 0, 'null', '2020-07-31 15:06:26', '0', 'null', 18, 'null', 'null', '7303.33671'),
	('CAPA DE PROCESSO', 'Colombo', 'Colombo', 'null', 'Almoxarifado', 0, 'null', '2020-07-31 15:06:26', '0', 'null', 19, 'null', 'null', '7502.2699'),
	('GRAMPEADOR DE MESA PEQUENO', 'Colombo', 'Colombo', 'null', 'Almoxarifado', 0, 'null', '2020-07-31 15:06:26', '0', 'null', 20, 'null', 'null', '7504.1035'),
	('COPO DE CAFE - 50 ML', 'Colombo', 'Colombo', 'null', 'Almoxarifado', 0, 'null', '2020-07-31 15:06:26', '0', 'null', 21, 'null', 'null', '7303.2427'),
	('BLOCO DE RECADO (POST IT) 76X102MM', 'Colombo', 'Colombo', 'null', 'Almoxarifado', 0, 'null', '2020-07-31 15:06:26', '0', 'null', 23, 'null', 'null', '7502.808'),
	('ENVELOPE 225 X 324MM', 'Colombo', 'Colombo', 'null', 'Almoxarifado', 0, 'null', '2020-07-31 15:06:26', '0', 'null', 24, 'null', 'null', '105.19764'),
	('CANETA AZUL', 'Colombo', 'Colombo', 'null', 'Almoxarifado', 0, 'null', '2020-07-31 15:06:26', '0', 'null', 25, 'null', 'null', '7504.851'),
	('CANETA MARCA TEXTO AMARELA', 'Colombo', 'Colombo', 'null', 'Almoxarifado', 0, 'null', '2020-07-31 15:06:26', '0', 'null', 26, 'null', 'null', '7504.1798'),
	('ENVELOPE 185 X 248 MM', 'Colombo', 'Colombo', 'null', 'Almoxarifado', 0, 'null', '2020-07-31 15:06:26', '0', 'null', 28, 'null', 'null', '105.12639'),
	('BLOCO DE RECADO (POST IT) 38X50MM', 'Colombo', 'Colombo', 'null', 'Almoxarifado', 0, 'null', '2020-07-31 15:06:26', '0', 'null', 29, 'null', 'null', '7502.807'),
	('ALCOOL GEL', 'Colombo', 'Colombo', 'null', 'Almoxarifado', 0, 'null', '2020-07-31 15:06:26', '0', 'null', 30, 'null', 'null', '7907.3425'),
	('CANETA PRETA', 'Colombo', 'Colombo', 'null', 'Almoxarifado', 0, 'null', '2020-07-31 15:06:26', '0', 'null', 31, 'null', 'null', '7504.4'),
	('PERFURADOR DE PAPEL - 12 FOLHAS', 'Colombo', 'Colombo', 'null', 'Almoxarifado', 0, 'null', '2020-07-31 15:06:26', '0', 'null', 32, 'null', 'null', '7504.164'),
	('PERFURADOR DE PAPEL - 50 FOLHAS', 'Colombo', 'Colombo', 'null', 'Almoxarifado', 0, 'null', '2020-07-31 15:06:27', '0', 'null', 33, 'null', 'null', '7504.4801'),
	('MOUSE PAD', 'Colombo', 'Colombo', 'null', 'Almoxarifado', 0, 'null', '2020-07-31 15:06:27', '0', 'null', 34, 'null', 'null', '7005.1102'),
	('PASTA ARQUIVO A/Z', 'Colombo', 'Colombo', 'null', 'Almoxarifado', 0, 'null', '2020-07-31 15:06:27', '0', 'null', 35, 'null', 'null', '7504.29191'),
	('CAIXA PARA CORRESPONDENCIA', 'Colombo', 'Colombo', 'null', 'Almoxarifado', 0, 'null', '2020-07-31 15:06:27', '0', 'null', 36, 'null', 'null', '7504.29192'),
	('PENDRIVE 8GB', 'Colombo', 'Colombo', 'null', 'Almoxarifado', 0, 'null', '2020-07-31 15:06:27', '0', 'null', 39, 'null', 'null', '7005.39641'),
	('GRAMPEADOR DE MESA GRANDE', 'Colombo', 'Colombo', 'null', 'Almoxarifado', 0, 'null', '2020-07-31 15:06:27', '0', 'null', 40, 'null', 'null', '7504.35205'),
	('LIVRO PROTOCOLO ', 'Colombo', 'Colombo', 'null', 'Almoxarifado', 0, 'null', '2020-07-31 15:06:27', '0', 'null', 41, 'null', 'null', '7504.1050'),
	('ORGANIZADOR DE MESA', 'Colombo', 'Colombo', 'null', 'Almoxarifado', 0, 'null', '2020-07-31 15:06:27', '0', 'null', 42, 'null', 'null', '7504.4469'),
	('PENDRIVE 16GB', 'Colombo', 'Colombo', 'null', 'Almoxarifado', 0, 'null', '2020-07-31 15:06:27', '0', 'null', 44, 'null', 'null', '7005.39680'),
	('HD INTERNO - 2000GB', 'Colombo', 'Colombo', 'null', 'Almoxarifado', 0, 'null', '2020-07-31 15:06:27', '0', 'null', 45, 'null', 'null', '7005.19901'),
	('PILHA ALCALINA AAA', 'Colombo', 'Colombo', 'null', 'Almoxarifado', 0, 'null', '2020-07-31 15:06:27', '0', 'null', 46, 'null', 'null', '6101.40813'),
	('FITA DE EMPACOTAMENTO', 'Colombo', 'Colombo', 'null', 'Almoxarifado', 0, 'null', '2020-07-31 15:06:27', '0', 'null', 47, 'null', 'null', '7504.932'),
	('TESOURA', 'Colombo', 'Colombo', 'null', 'Almoxarifado', 0, 'null', '2020-07-31 15:06:27', '0', 'null', 48, 'null', 'null', '7504.2525'),
	('COLA PLASTICA LIQUIDA ', 'Colombo', 'Colombo', 'null', 'Almoxarifado', 0, 'null', '2020-07-31 15:06:27', '0', 'null', 51, 'null', 'null', '7504.2494'),
	('FONE DE OUVIDO ', 'Colombo', 'Colombo', 'null', 'Almoxarifado', 0, 'null', '2020-07-31 15:06:27', '0', 'null', 52, 'null', 'null', '6701.18942'),
	('ENVELOPE 114 X 229 MM', 'Colombo', 'Colombo', 'null', 'Almoxarifado', 0, 'null', '2020-07-31 15:06:27', '0', 'null', 53, 'null', 'null', '105.12640'),
	('GRAMPO PARA GRAMPEADOR 26/6', 'Colombo', 'Colombo', 'null', 'Almoxarifado', 0, 'null', '2020-07-31 15:06:27', '0', 'null', 54, 'null', 'null', '7504.1063'),
	('CARIMBO NUMERADOR 6 DIGITOS', 'Colombo', 'Colombo', 'null', 'Almoxarifado', 0, 'null', '2020-07-31 15:06:27', '0', 'null', 55, 'null', 'null', '7504.11371'),
	('ENVELOPE 260 X 360MM', 'Colombo', 'Colombo', 'null', 'Almoxarifado', 0, 'null', '2020-07-31 15:06:27', '0', 'null', 56, 'null', 'null', '105.18635'),
	('FONTE ADAPTADOR AC/DC', 'Colombo', 'Colombo', 'null', 'Almoxarifado', 0, 'null', '2020-07-31 15:06:27', '0', 'null', 57, 'null', 'null', '7005.23540'),
	('FITA ADESIVA CELOFANE 12MMX65M', 'Colombo', 'Colombo', 'null', 'Almoxarifado', 0, 'null', '2020-07-31 15:06:28', '0', 'null', 58, 'null', 'null', '7504.973'),
	('PASTA CATALOGO', 'Colombo', 'Colombo', 'null', 'Almoxarifado', 0, 'null', '2020-07-31 15:06:28', '0', 'null', 60, 'null', 'null', '7504.854'),
	('PASTA PARA CURSOS', 'Colombo', 'Colombo', 'null', 'Almoxarifado', 0, 'null', '2020-07-31 15:06:28', '0', 'null', 61, 'null', 'null', '105.14438'),
	('CABO EXTENSOR USB', 'Colombo', 'Colombo', 'null', 'Almoxarifado', 0, 'null', '2020-07-31 15:06:28', '0', 'null', 62, 'null', 'null', '7005.23538'),
	('REGUA PLASTICA', 'Colombo', 'Colombo', 'null', 'Almoxarifado', 0, 'null', '2020-07-31 15:06:28', '0', 'null', 65, 'null', 'null', '7504.2429'),
	('PANO DE COZINHA 36X68 CM', 'Colombo', 'Colombo', 'null', 'Almoxarifado', 0, 'null', '2020-07-31 15:06:28', '0', 'null', 66, 'null', 'null', '7201.14814'),
	('FITA ADESIVA DUPLA FACE', 'Colombo', 'Colombo', 'null', 'Almoxarifado', 0, 'null', '2020-07-31 15:06:28', '0', 'null', 68, 'null', 'null', '7504.4438'),
	('BORRACHA ', 'Colombo', 'Colombo', 'null', 'Almoxarifado', 0, 'null', '2020-07-31 15:06:28', '0', 'null', 70, 'null', 'null', '7504.35359'),
	('ESTILETE', 'Colombo', 'Colombo', 'null', 'Almoxarifado', 0, 'null', '2020-07-31 15:06:28', '0', 'null', 71, 'null', 'null', '7504.884'),
	('TINTA PRETA PARA CARIMBO AUTO-ENTINTADO', 'Colombo', 'Colombo', 'null', 'Almoxarifado', 0, 'null', '2020-07-31 15:06:28', '0', 'null', 72, 'null', 'null', '7504.3187'),
	('LAPIS PRETO 2HB -', 'Colombo', 'Colombo', 'null', 'Almoxarifado', 0, 'null', '2020-07-31 15:06:28', '0', 'null', 73, 'null', 'null', '7504.983'),
	('CORRETIVO LIQUIDO', 'Colombo', 'Colombo', 'null', 'Almoxarifado', 0, 'null', '2020-07-31 15:06:28', '0', 'null', 74, 'null', 'null', '7504.766'),
	('FOSFORO LONGO', 'Colombo', 'Colombo', 'null', 'Almoxarifado', 0, 'null', '2020-07-31 15:06:28', '0', 'null', 75, 'null', 'null', '7303.4122'),
	('LIVRO ATA 50 FOLHAS', 'Colombo', 'Colombo', 'null', 'Almoxarifado', 0, 'null', '2020-07-31 15:06:28', '0', 'null', 77, 'null', 'null', '7504.4441'),
	('ENVELOPE 310X410MM', 'Colombo', 'Colombo', 'null', 'Almoxarifado', 0, 'null', '2020-07-31 15:06:28', '0', 'null', 81, 'null', 'null', '7502.29045'),
	('PAPEL AUTO ADESIVO CONTACT', 'Colombo', 'Colombo', 'null', 'Almoxarifado', 0, 'null', '2020-07-31 15:06:28', '0', 'null', 82, 'null', 'null', '7502.2484'),
	('FITA CREPE - 32MMX50M', 'Colombo', 'Colombo', 'null', 'Almoxarifado', 0, 'null', '2020-07-31 15:06:28', '0', 'null', 83, 'null', 'null', '7504.928'),
	('UMEDECEDOR DE DEDOS', 'Colombo', 'Colombo', 'null', 'Almoxarifado', 0, 'null', '2020-07-31 15:06:28', '0', 'null', 84, 'null', 'null', '7504.3089'),
	('FITA ADESIVA CELOFANE 45MMX50M', 'Colombo', 'Colombo', 'null', 'Almoxarifado', 0, 'null', '2020-07-31 15:06:28', '0', 'null', 85, 'null', 'null', '7504.4808'),
	('PASTA SIMPLES CORRUGADA LOMBADA ESTREITA', 'Colombo', 'Colombo', 'null', 'Almoxarifado', 0, 'null', '2020-07-31 15:06:28', '0', 'null', 86, 'null', 'null', '7504.29058'),
	('EXTRATOR', 'Colombo', 'Colombo', 'null', 'Almoxarifado', 0, 'null', '2020-07-31 15:06:28', '0', 'null', 87, 'null', 'null', '7504.571'),
	('PASTA COM GRAMPO E TRILHO DE PLASTICO', 'Colombo', 'Colombo', 'null', 'Almoxarifado', 0, 'null', '2020-07-31 15:06:28', '0', 'null', 88, 'null', 'null', '7504.29060'),
	('GRAMPO PARA GRAMPEADOR 24/13', 'Colombo', 'Colombo', 'null', 'Almoxarifado', 0, 'null', '2020-07-31 15:06:28', '0', 'null', 90, 'null', 'null', '7504.2012'),
	('CANETA VERMELHA', 'Colombo', 'Colombo', 'null', 'Almoxarifado', 0, 'null', '2020-07-31 15:06:29', '0', 'null', 91, 'null', 'null', '7504.852'),
	('PASTA DE PAPELAO COM ELASTICO', 'Colombo', 'Colombo', 'null', 'Almoxarifado', 0, 'null', '2020-07-31 15:06:29', '0', 'null', 92, 'null', 'null', '7504.29061'),
	('HD SATA 3TB', 'Colombo', 'Colombo', 'null', 'Almoxarifado', 0, 'null', '2020-07-31 15:06:29', '0', 'null', 94, 'null', 'null', '7005.39649'),
	('PENDRIVE 4GB', 'Colombo', 'Colombo', 'null', 'Almoxarifado', 0, 'null', '2020-07-31 15:06:29', '0', 'null', 95, 'null', 'null', '7005.39679'),
	('LIVRO ATA', 'Colombo', 'Colombo', 'null', 'Almoxarifado', 0, 'null', '2020-07-31 15:06:29', '0', 'null', 97, 'null', 'null', '7504.1048'),
	('PAPEL COUCHE', 'Colombo', 'Colombo', 'null', 'Almoxarifado', 0, 'null', '2020-07-31 15:06:29', '0', 'null', 99, 'null', 'null', '7502.5993'),
	('PASTA SIMPLES CORRUGADA LOMBADA LARGA', 'Colombo', 'Colombo', 'null', 'Almoxarifado', 0, 'null', '2020-07-31 15:06:29', '0', 'null', 100, 'null', 'null', '7504.29057'),
	('PINCEL PERMANENTE AZUL', 'Colombo', 'Colombo', 'null', 'Almoxarifado', 0, 'null', '2020-07-31 15:06:29', '0', 'null', 101, 'null', 'null', '7504.865'),
	('CONECTOR HUB - USB', 'Colombo', 'Colombo', 'null', 'Almoxarifado', 0, 'null', '2020-07-31 15:06:29', '0', 'null', 102, 'null', 'null', '7005.9973'),
	('FITA CREPE - 50MMX50M', 'Colombo', 'Colombo', 'null', 'Almoxarifado', 0, 'null', '2020-07-31 15:06:29', '0', 'null', 103, 'null', 'null', '7504.929'),
	('CARREGADOR DE PILHAS', 'Colombo', 'Colombo', 'null', 'Almoxarifado', 0, 'null', '2020-07-31 15:06:29', '0', 'null', 104, 'null', 'null', '6102.6053');
/*!40000 ALTER TABLE `controle` ENABLE KEYS */;

-- Copiando estrutura para tabela controle.controle_prot
CREATE TABLE IF NOT EXISTS `controle_prot` (
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
  `gms` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`PATRIMONIO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela controle.controle_prot: ~36 rows (aproximadamente)
/*!40000 ALTER TABLE `controle_prot` DISABLE KEYS */;
REPLACE INTO `controle_prot` (`NOMEITEM`, `LOCALIZACAO`, `ORIGEM`, `DESTINO`, `TIPO`, `QUANTIDADE`, `DESCRICAO`, `DATA`, `PATRIMONIO`, `NR_SERIE`, `MOTIVO`, `PROTOCOLO`, `gms`) VALUES
	('PC DATEN1', 'Colombo', 'Colombo', 'null', 'patrimonio', 1, 'PC DATEN 3 LOTE ', '2020-07-31 16:05:10', 'p123456789', '4548', 'null', 'null', '4845484848'),
	('PC DATEN2', 'Colombo', 'Colombo', 'null', 'patrimonio', 2, 'PC DATEN 3 LOTE ', '2020-07-31 16:05:10', 'p123456790', '4548', 'null', 'null', '4845484849'),
	('PC DATEN3', 'Colombo', 'Colombo', 'null', 'patrimonio', 3, 'PC DATEN 3 LOTE ', '2020-07-31 16:05:10', 'p123456791', '4548', 'null', 'null', '4845484850'),
	('PC DATEN4', 'Colombo', 'Colombo', 'null', 'patrimonio', 4, 'PC DATEN 3 LOTE ', '2020-07-31 16:05:10', 'p123456792', '4548', 'null', 'null', '4845484851'),
	('PC DATEN5', 'Colombo', 'Colombo', 'null', 'patrimonio', 5, 'PC DATEN 3 LOTE ', '2020-07-31 16:05:10', 'p123456793', '4548', 'null', 'null', '4845484852'),
	('PC DATEN6', 'Colombo', 'Colombo', 'null', 'patrimonio', 6, 'PC DATEN 3 LOTE ', '2020-07-31 16:05:10', 'p123456794', '4548', 'null', 'null', '4845484853'),
	('PC DATEN7', 'Colombo', 'Colombo', 'null', 'patrimonio', 7, 'PC DATEN 3 LOTE ', '2020-07-31 16:05:10', 'p123456795', '4548', 'null', 'null', '4845484854'),
	('PC DATEN8', 'Colombo', 'Colombo', 'null', 'patrimonio', 8, 'PC DATEN 3 LOTE ', '2020-07-31 16:05:10', 'p123456796', '4548', 'null', 'null', '4845484855'),
	('PC DATEN9', 'Colombo', 'Colombo', 'null', 'patrimonio', 9, 'PC DATEN 3 LOTE ', '2020-07-31 16:05:10', 'p123456797', '4548', 'null', 'null', '4845484856'),
	('PC DATEN10', 'Colombo', 'Colombo', 'null', 'patrimonio', 10, 'PC DATEN 3 LOTE ', '2020-07-31 16:05:11', 'p123456798', '4548', 'null', 'null', '4845484857'),
	('PC DATEN11', 'Colombo', 'Colombo', 'null', 'patrimonio', 11, 'PC DATEN 3 LOTE ', '2020-07-31 16:05:11', 'p123456799', '4548', 'null', 'null', '4845484858'),
	('PC DATEN12', 'Colombo', 'Colombo', 'null', 'patrimonio', 12, 'PC DATEN 3 LOTE ', '2020-07-31 16:05:11', 'p123456800', '4548', 'null', 'null', '4845484859'),
	('PC DATEN13', 'Colombo', 'Colombo', 'null', 'patrimonio', 13, 'PC DATEN 3 LOTE ', '2020-07-31 16:05:11', 'p123456801', '4548', 'null', 'null', '4845484860'),
	('PC DATEN14', 'Colombo', 'Colombo', 'null', 'patrimonio', 14, 'PC DATEN 3 LOTE ', '2020-07-31 16:05:11', 'p123456802', '4548', 'null', 'null', '4845484861'),
	('PC DATEN15', 'Colombo', 'Colombo', 'null', 'patrimonio', 15, 'PC DATEN 3 LOTE ', '2020-07-31 16:05:11', 'p123456803', '4548', 'null', 'null', '4845484862'),
	('PC DATEN16', 'Colombo', 'Colombo', 'null', 'patrimonio', 16, 'PC DATEN 3 LOTE ', '2020-07-31 16:05:11', 'p123456804', '4548', 'null', 'null', '4845484863'),
	('PC DATEN17', 'Colombo', 'Colombo', 'null', 'patrimonio', 17, 'PC DATEN 3 LOTE ', '2020-07-31 16:05:11', 'p123456805', '4548', 'null', 'null', '4845484864'),
	('PC DATEN18', 'Colombo', 'Colombo', 'null', 'patrimonio', 18, 'PC DATEN 3 LOTE ', '2020-07-31 16:05:11', 'p123456806', '4548', 'null', 'null', '4845484865'),
	('PC DATEN19', 'Colombo', 'Colombo', 'null', 'patrimonio', 19, 'PC DATEN 3 LOTE ', '2020-07-31 16:05:11', 'p123456807', '4548', 'null', 'null', '4845484866'),
	('PC DATEN20', 'Colombo', 'Colombo', 'null', 'patrimonio', 20, 'PC DATEN 3 LOTE ', '2020-07-31 16:05:11', 'p123456808', '4548', 'null', 'null', '4845484867'),
	('PC DATEN21', 'Colombo', 'Colombo', 'null', 'patrimonio', 21, 'PC DATEN 3 LOTE ', '2020-07-31 16:05:11', 'p123456809', '4548', 'null', 'null', '4845484868'),
	('PC DATEN22', 'Colombo', 'Colombo', 'null', 'patrimonio', 22, 'PC DATEN 3 LOTE ', '2020-07-31 16:05:11', 'p123456810', '4548', 'null', 'null', '4845484869'),
	('PC DATEN23', 'Colombo', 'Colombo', 'null', 'patrimonio', 23, 'PC DATEN 3 LOTE ', '2020-07-31 16:05:11', 'p123456811', '4548', 'null', 'null', '4845484870'),
	('PC DATEN24', 'Colombo', 'Colombo', 'null', 'patrimonio', 24, 'PC DATEN 3 LOTE ', '2020-07-31 16:05:11', 'p123456812', '4548', 'null', 'null', '4845484871'),
	('PC DATEN25', 'Colombo', 'Colombo', 'null', 'patrimonio', 25, 'PC DATEN 3 LOTE ', '2020-07-31 16:05:11', 'p123456813', '4548', 'null', 'null', '4845484872'),
	('PC DATEN26', 'Colombo', 'Colombo', 'null', 'patrimonio', 26, 'PC DATEN 3 LOTE ', '2020-07-31 16:05:11', 'p123456814', '4548', 'null', 'null', '4845484873'),
	('PC DATEN27', 'Colombo', 'Colombo', 'null', 'patrimonio', 27, 'PC DATEN 3 LOTE ', '2020-07-31 16:05:11', 'p123456815', '4548', 'null', 'null', '4845484874'),
	('PC DATEN28', 'Colombo', 'Colombo', 'null', 'patrimonio', 28, 'PC DATEN 3 LOTE ', '2020-07-31 16:05:11', 'p123456816', '4548', 'null', 'null', '4845484875'),
	('PC DATEN29', 'Colombo', 'Colombo', 'null', 'patrimonio', 29, 'PC DATEN 3 LOTE ', '2020-07-31 16:05:11', 'p123456817', '4548', 'null', 'null', '4845484876'),
	('PC DATEN30', 'Colombo', 'Colombo', 'null', 'patrimonio', 30, 'PC DATEN 3 LOTE ', '2020-07-31 16:05:12', 'p123456818', '4548', 'null', 'null', '4845484877'),
	('PC DATEN31', 'Colombo', 'Colombo', 'null', 'patrimonio', 31, 'PC DATEN 3 LOTE ', '2020-07-31 16:05:12', 'p123456819', '4548', 'null', 'null', '4845484878'),
	('PC DATEN32', 'Colombo', 'Colombo', 'null', 'patrimonio', 32, 'PC DATEN 3 LOTE ', '2020-07-31 16:05:12', 'p123456820', '4548', 'null', 'null', '4845484879'),
	('PC DATEN33', 'Colombo', 'Colombo', 'null', 'patrimonio', 33, 'PC DATEN 3 LOTE ', '2020-07-31 16:05:12', 'p123456821', '4548', 'null', 'null', '4845484880'),
	('PC DATEN34', 'Colombo', 'Colombo', 'null', 'patrimonio', 34, 'PC DATEN 3 LOTE ', '2020-07-31 16:05:12', 'p123456822', '4548', 'null', 'null', '4845484881'),
	('PC DATEN35', 'Colombo', 'Colombo', 'null', 'patrimonio', 35, 'PC DATEN 3 LOTE ', '2020-07-31 16:05:12', 'p123456823', '4548', 'null', 'null', '4845484882'),
	('PC DATEN36', 'Colombo', 'Colombo', 'null', 'patrimonio', 36, 'PC DATEN 3 LOTE ', '2020-07-31 16:05:12', 'p123456824', '4548', 'null', 'null', '4845484883');
/*!40000 ALTER TABLE `controle_prot` ENABLE KEYS */;

-- Copiando estrutura para tabela controle.garantia
CREATE TABLE IF NOT EXISTS `garantia` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `data_ex` date DEFAULT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `data_ini` date DEFAULT NULL,
  `NOMEITEM` longtext DEFAULT NULL,
  `LOCALIZACAO` longtext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela controle.garantia: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `garantia` DISABLE KEYS */;
/*!40000 ALTER TABLE `garantia` ENABLE KEYS */;

-- Copiando estrutura para tabela controle.garantia_pat
CREATE TABLE IF NOT EXISTS `garantia_pat` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `data_ex` date DEFAULT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `data_ini` date DEFAULT NULL,
  `pat` varchar(255) NOT NULL,
  `NOMEITEM` longtext DEFAULT NULL,
  `LOCALIZACAO` longtext DEFAULT NULL,
  PRIMARY KEY (`pat`),
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Copiando dados para a tabela controle.garantia_pat: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `garantia_pat` DISABLE KEYS */;
/*!40000 ALTER TABLE `garantia_pat` ENABLE KEYS */;

-- Copiando estrutura para tabela controle.history
CREATE TABLE IF NOT EXISTS `history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `acao` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela controle.history: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `history` DISABLE KEYS */;
REPLACE INTO `history` (`id`, `NOMEITEM`, `LOCALIZACAO`, `ORIGEM`, `DESTINO`, `TIPO`, `QUANTIDADE`, `DESCRICAO`, `DATA`, `PATRIMONIO`, `NR_SERIE`, `MOTIVO`, `PROTOCOLO`, `ip`, `acao`) VALUES
	(1, 'filtro de linha', 'Londrina', 'Londrina', 'NULL', 'Patrimonio', 1, 'zz', '2020-07-31 15:06:05', '0', '00000', 'NULL', '17', '10.77.39.244', 'Exclusão'),
	(2, 'filtro de linha', 'Colombo', 'null', 'null', 'Almoxarifado', 2, '', '2020-08-04 18:00:01', '0', '4594894984', 'null', '', '10.77.39.244', 'Alteração');
/*!40000 ALTER TABLE `history` ENABLE KEYS */;

-- Copiando estrutura para tabela controle.sedes
CREATE TABLE IF NOT EXISTS `sedes` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nomesede` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `endereco` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `nr` int(11) DEFAULT NULL,
  `cep` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `local` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela controle.sedes: ~31 rows (aproximadamente)
/*!40000 ALTER TABLE `sedes` DISABLE KEYS */;
REPLACE INTO `sedes` (`id`, `nomesede`, `endereco`, `nr`, `cep`, `local`) VALUES
	(1, 'Sede Central', 'Rua José Bonifácio', 66, '80020-130', 'Bonifácio\r'),
	(2, 'Núcleo Criminal-Ahú', 'Av. Anita Garibaldi', 750, '80540-180', 'Ahú\r'),
	(3, 'Santa Felicidade', 'Rua José Bonifácio', 66, '80020-130', 'Santa Felicidade\r'),
	(4, 'Boqueirão', 'Avenida Marechal Floriano Peixoto', 8257, '80520-070', 'Boqueirão\r'),
	(5, 'CIC', 'Rua Lodovico Kaminski', 2525, '81260-282', 'CIC\r'),
	(6, 'Pinheirinho', 'Avenida Winston Churchill', 2471, '81150-050', 'Pinheirinho\r'),
	(7, 'Casa da Mulher Brasileira', 'Av. Paraná', 870, '80035-130', 'Cabral\r'),
	(8, 'Juizado de Violência Doméstica ', 'Avenida João Gualberto', 1073, '80030-001', 'Alto da Glória\r'),
	(9, 'Vara da Infância e da Juventude', 'Rua da Glória', 290, '80030-060', 'Centro Cívico\r'),
	(10, 'Vara de adolescentes em conflito com a lei', 'Rua Pastor Manoel Virgílio de Souza', 1310, '82810-140', 'Capão da Imbuia\r'),
	(11, 'Vara de Infrações Penais', 'Av. Iguacu', 750, '80230-020', 'Rebouças\r'),
	(12, 'Tribunal do Juri', 'Rua Ernâni Santiago de Oliveira', 268, '80530-100', 'Centro Cívico\r'),
	(13, 'Segundo Grau de Jurisdição', 'Rua da Glória', 393, '80030-060', 'Centro Cívico\r'),
	(14, 'Fórum  São José dos Pinhais', 'Rua João Ângelo Cordeiro', 0, '83005-570', 'Centro de São José dos Pinhais\r'),
	(15, 'Guaratuba', 'Rua Tiago Pedroso', 417, '83280-000', 'Guaratuba\r'),
	(16, 'Umuarama', 'Rua Desembargador Munhoz de Mello', 3792, '87501-180', 'Umuarama\r'),
	(17, 'Cianorte', 'Avenida Maranhão', 255, '87200-980', 'Cianorte\r'),
	(18, 'Guarapuava', 'Avenida Manoel Ribas', 2537, '85010-180', 'Guarapuava\r'),
	(19, 'Ponta Grossa', 'Rua Doutor Leopoldo Guimarães da Cunha', 300, '84035-310', 'Ponta Grossa\r'),
	(20, 'Castro', 'Rua Padre Damaso', 81, '84165-540', 'Castro\r'),
	(21, 'Sede Apucarana', 'Travessa João Gurgel Macedo', 100, '86800-710', 'Apucarana\r'),
	(22, 'Londrina', 'Av. Bandeirantes', 263, '86010-020', 'Londrina\r'),
	(23, 'Sede Maringá', 'Av. Tiradentes', 1289, '87013-344', 'Maringá\r'),
	(24, 'Sede Cornélio Procópio', 'Rua Massudi Amim', 165, '86300-000', 'Cornélio Procópio\r'),
	(25, 'Sede Campo Mourão', 'Rua Duque de Caxias', 786, '87305-320', 'Campo Mourão\r'),
	(26, 'Sede Cascavel', 'Rua São Paulo', 346, '85801-020', 'Cascavel\r'),
	(27, 'Sede Foz do Iguaçu', 'Rua Antônio Raposo', 923, '85851-090', 'Foz do Iguaçu\r'),
	(28, 'Sede Francisco Beltrão', 'Rua Alagoas', 655, '85601-080', 'Francisco Beltrão\r'),
	(29, 'Sede União da Vitória', 'Rua Marechal Floriano Peixoto', 0, '84600-000', 'União da Vitória\r'),
	(32, 'Colombo', NULL, NULL, NULL, 'Colombo'),
	(33, 'Mateus Leme', NULL, NULL, NULL, 'Mateus Leme');
/*!40000 ALTER TABLE `sedes` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
