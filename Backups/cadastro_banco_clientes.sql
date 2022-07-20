CREATE DATABASE  IF NOT EXISTS `cadastro` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `cadastro`;
-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: cadastro
-- ------------------------------------------------------
-- Server version	5.7.36

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `banco_clientes`
--

DROP TABLE IF EXISTS `banco_clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `banco_clientes` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Nome` varchar(35) NOT NULL,
  `Nascionalidade` enum('Brasileiro(a)','Estrangeiro(a)') NOT NULL DEFAULT 'Brasileiro(a)',
  `CPF_CNPJ` varchar(20) NOT NULL,
  `Endereco` varchar(35) NOT NULL,
  `Bairo` varchar(15) NOT NULL,
  `cidade` varchar(15) NOT NULL,
  `Pais` varchar(15) NOT NULL,
  `Ponto_Referencia` text,
  `Telefone` varchar(20) NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Id` (`Id`),
  UNIQUE KEY `CPF_CNPJ` (`CPF_CNPJ`),
  UNIQUE KEY `CPF_CNPJ_2` (`CPF_CNPJ`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banco_clientes`
--

LOCK TABLES `banco_clientes` WRITE;
/*!40000 ALTER TABLE `banco_clientes` DISABLE KEYS */;
INSERT INTO `banco_clientes` VALUES (1,'Loja que vender coisas','Brasileiro(a)','61.699.016/0001-29','Rua Qualquer','Novo','A mesma','Brasil',NULL,'(78) 98765-1234'),(2,'Fulaninho teste de banco','Brasileiro(a)','631.123.710-54','Rua Qualquer','Novo','A mesma','Brasil',NULL,'(78) 98765-4321');
/*!40000 ALTER TABLE `banco_clientes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-09 11:22:49
