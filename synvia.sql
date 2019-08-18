-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           5.7.26 - MySQL Community Server (GPL)
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Copiando estrutura do banco de dados para synvia
CREATE DATABASE IF NOT EXISTS `synvia` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `synvia`;

-- Copiando estrutura para tabela synvia.tb01_colaboradores
CREATE TABLE IF NOT EXISTS `tb01_colaboradores` (
  `tb01_nome` text NOT NULL,
  `tb01_ID` int(11) NOT NULL AUTO_INCREMENT,
  `tb01_email` text NOT NULL,
  `tb01_pass` text NOT NULL,
  `tb01_cargo` text,
  `tb01_metascompridas` int(11) NOT NULL,
  `tb01_IDLider` int(11) DEFAULT NULL,
  PRIMARY KEY (`tb01_ID`),
  KEY `tb01_IDLider` (`tb01_IDLider`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela synvia.tb01_colaboradores: 0 rows
/*!40000 ALTER TABLE `tb01_colaboradores` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb01_colaboradores` ENABLE KEYS */;

-- Copiando estrutura para tabela synvia.tb02_objetivo
CREATE TABLE IF NOT EXISTS `tb02_objetivo` (
  `tb02_ID` int(11) NOT NULL AUTO_INCREMENT,
  `tb02_descrição` text,
  `tb02_prazo` date DEFAULT NULL,
  `tb02_IDCol` int(11) DEFAULT NULL,
  PRIMARY KEY (`tb02_ID`),
  KEY `tb02_IDCol` (`tb02_IDCol`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela synvia.tb02_objetivo: 0 rows
/*!40000 ALTER TABLE `tb02_objetivo` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb02_objetivo` ENABLE KEYS */;

-- Copiando estrutura para tabela synvia.tb03_lideres
CREATE TABLE IF NOT EXISTS `tb03_lideres` (
  `tb03_nome` text,
  `tb03_pass` text,
  `tb03_IDLider` int(11) NOT NULL AUTO_INCREMENT,
  `tb03_email` text,
  `tb03_cargo` text,
  PRIMARY KEY (`tb03_IDLider`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela synvia.tb03_lideres: 1 rows
/*!40000 ALTER TABLE `tb03_lideres` DISABLE KEYS */;
INSERT INTO `tb03_lideres` (`tb03_nome`, `tb03_pass`, `tb03_IDLider`, `tb03_email`, `tb03_cargo`) VALUES
	('Guerric', '1234', 1, 'guerric@macfor.com.br', 'best dev ever'),
	('Guerric Inselberger', '1234', 2, 'guerric@macfor.com.br', NULL);
/*!40000 ALTER TABLE `tb03_lideres` ENABLE KEYS */;

-- Copiando estrutura para tabela synvia.tb04_results
CREATE TABLE IF NOT EXISTS `tb04_results` (
  `tb04_ObjetivoID` int(11) DEFAULT NULL,
  `tb04_descrição` int(11) DEFAULT NULL,
  `tb04_isDone` int(11) DEFAULT NULL,
  KEY `tb04_ObjetivoID` (`tb04_ObjetivoID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela synvia.tb04_results: 0 rows
/*!40000 ALTER TABLE `tb04_results` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb04_results` ENABLE KEYS */;

-- Copiando estrutura para tabela synvia.tb05_bonus
CREATE TABLE IF NOT EXISTS `tb05_bonus` (
  `tb05_ObjetivoID` int(11) DEFAULT NULL,
  `tb05_tipoBonus` int(11) DEFAULT NULL,
  KEY `tb05_tipoBonus` (`tb05_tipoBonus`),
  KEY `tb05_ObjetivoID` (`tb05_ObjetivoID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela synvia.tb05_bonus: 0 rows
/*!40000 ALTER TABLE `tb05_bonus` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb05_bonus` ENABLE KEYS */;

-- Copiando estrutura para tabela synvia.tb06_tipobonus
CREATE TABLE IF NOT EXISTS `tb06_tipobonus` (
  `tb06_tipo` int(11) NOT NULL,
  `tb06_descricao` text,
  `tb06_quant` int(11) DEFAULT NULL,
  PRIMARY KEY (`tb06_tipo`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela synvia.tb06_tipobonus: 0 rows
/*!40000 ALTER TABLE `tb06_tipobonus` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb06_tipobonus` ENABLE KEYS */;

-- Copiando estrutura para tabela synvia.tb07_login
CREATE TABLE IF NOT EXISTS `tb07_login` (
  `tb07_password` text,
  `tb07_email` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela synvia.tb07_login: 1 rows
/*!40000 ALTER TABLE `tb07_login` DISABLE KEYS */;
INSERT INTO `tb07_login` (`tb07_password`, `tb07_email`) VALUES
	('1234', 'guerric@macfor.com.br');
/*!40000 ALTER TABLE `tb07_login` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
