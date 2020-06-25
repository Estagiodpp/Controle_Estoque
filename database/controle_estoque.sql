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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela controle.controle: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `controle` DISABLE KEYS */;
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

-- Copiando dados para a tabela controle.controle_prot: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `controle_prot` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela controle.history: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `history` DISABLE KEYS */;
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
