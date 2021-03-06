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
INSERT INTO `banco_clientes` VALUES (1,'Loja que vender coisas','Brasileiro(a)','61.699.016/0001-29','Rua Qualquer','Novo','A mesma','Brasil',NULL,'(68) 92422-5920'),(2,'Fulaninho teste de banco','Brasileiro(a)','631.123.710-54','Rua Qualquer','Novo','A mesma','Brasil',NULL,'00000000001');
/*!40000 ALTER TABLE `banco_clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cadastro_pessoas`
--

DROP TABLE IF EXISTS `cadastro_pessoas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cadastro_pessoas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) NOT NULL,
  `prof` varchar(20) NOT NULL DEFAULT '',
  `nascimento` date DEFAULT NULL,
  `sexo` enum('M','F') DEFAULT NULL,
  `peso` decimal(5,2) DEFAULT NULL,
  `altura` decimal(3,2) DEFAULT NULL,
  `nascionalidade` varchar(20) DEFAULT 'Brasil',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cadastro_pessoas`
--

LOCK TABLES `cadastro_pessoas` WRITE;
/*!40000 ALTER TABLE `cadastro_pessoas` DISABLE KEYS */;
INSERT INTO `cadastro_pessoas` VALUES (1,'Godofredo','','1984-01-02','M',78.50,1.83,'Brasil'),(2,'Maria','','1999-12-30','F',65.50,1.70,'Portugal'),(3,'Creuza','','1920-12-30','F',65.50,1.68,'Brasil'),(4,'Carla','','1995-12-30','F',65.50,1.68,'Irlanda'),(5,'Silas','','1999-08-28','M',75.50,1.81,'Brasil'),(6,'Jessica','','1999-07-02','F',81.50,1.73,'Brasil'),(7,'Link','','2021-11-01','M',23.00,0.60,'Brasil');
/*!40000 ALTER TABLE `cadastro_pessoas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cursos`
--

DROP TABLE IF EXISTS `cursos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cursos` (
  `idcurso` int(11) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `descricao` text,
  `carga_horaria` int(10) unsigned DEFAULT NULL,
  `totaulas` int(10) unsigned DEFAULT NULL,
  `ano` year(4) DEFAULT '2022',
  PRIMARY KEY (`idcurso`),
  UNIQUE KEY `nome` (`nome`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cursos`
--

LOCK TABLES `cursos` WRITE;
/*!40000 ALTER TABLE `cursos` DISABLE KEYS */;
INSERT INTO `cursos` VALUES (1,'HTML 5','Curso de HTML5',40,37,2014),(2,'Algoritmo','Logica de Programa????o',20,15,2014),(3,'Photoshop','Dicas de Photoshop CC',10,8,2014),(4,'PHP','Curso de PHP para iniciantes',40,20,2015),(5,'Java','Introdu????o a Linguagem Java',40,29,2015),(6,'MySQL','Banco de dados MySQL',30,15,2016),(7,'Word','Curso completo de word',40,30,2016);
/*!40000 ALTER TABLE `cursos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-29 11:09:03
