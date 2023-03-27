CREATE DATABASE  IF NOT EXISTS `escuela` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `escuela`;
-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: escuela
-- ------------------------------------------------------
-- Server version	8.0.17

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
-- Table structure for table `alumno`
--

DROP TABLE IF EXISTS `alumno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alumno` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `apellido_paterno` varchar(100) DEFAULT NULL,
  `apellido_materno` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alumno`
--

LOCK TABLES `alumno` WRITE;
/*!40000 ALTER TABLE `alumno` DISABLE KEYS */;
INSERT INTO `alumno` VALUES (1,'Adam','NUÑEZ','MENDEZ'),(2,'Axel','MARTIN','RUBIO'),(3,'Dante','ORTEGA','GARCIA'),(4,'Dylan','DELGADO','MOLINA'),(5,'Enzo','HERNANDEZ','SANTOS'),(6,'Erik','VAZQUEZ','LOZANO'),(7,'Gael','ORTIZ','ROMERO'),(8,'Izan','DOMINGUEZ','MUÑOZ'),(9,'Alex','DELGADO','RUIZ'),(10,'Bruno','GOMEZ','CASTILLO'),(11,'Dante','MENDEZ','GARCIA'),(12,'Hugo','JIMENEZ','ALVAREZ'),(13,'Izan','LOPEZ','ROMERO'),(14,'Joel','PRIETO','MUÑOZ'),(15,'Lucas','LOPEZ','RAMOS'),(16,'León','FERNANDEZ','LOPEZ'),(17,'Oliver','BLANCO','RODRIGUEZ'),(18,'Adal','CRUZ','RAMIREZ'),(19,'Basil','MUÑOZ','GARCIA'),(20,'Ciro','GONZALEZ','MENDEZ'),(21,'Ezra','GARCIA','ALVAREZ'),(22,'Kamal','HERNANDEZ','MENDEZ'),(23,'Kenai','HERNANDEZ','GUTIERREZ'),(24,'Kuno','PEREZ','MEDINA'),(25,'Lavi','LOPEZ','RUBIO'),(26,'Mosi','GONZALEZ','MUÑOZ'),(27,'Nadir','ORTEGA','MUÑOZ'),(28,'Otto','GUERRERO','ROMERO'),(29,'Said','DELGADO','LOZANO'),(30,'Silas','ALONSO','NUÑEZ'),(31,'Van','SANZ','FLORES'),(32,'Zyan','NUÑEZ','RUBIO'),(33,'Aarón','SANZ','CASTRO'),(34,'Aitor','SANTOS','MEDINA'),(35,'Darío','CANO','CASTILLO'),(36,'Elías','DIAZ','MORENO'),(37,'Iván','TORRES','HERRERA'),(38,'Saúl','RUBIO','MORALES'),(39,'Rafael','SUAREZ','LOPEZ'),(40,'Raúl','MOLINA','MORENO'),(41,'Tiago','DELGADO','MORENO'),(42,'Fernando','Garcia','Arellano');
/*!40000 ALTER TABLE `alumno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alumno_grupo`
--

DROP TABLE IF EXISTS `alumno_grupo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alumno_grupo` (
  `idalumno_grupo` int(11) NOT NULL AUTO_INCREMENT,
  `idalumno` int(11) NOT NULL,
  `idgrupo` int(11) NOT NULL,
  PRIMARY KEY (`idalumno_grupo`),
  KEY `idalumno_fk_idx` (`idalumno`),
  KEY `idgrupo_idx` (`idgrupo`),
  CONSTRAINT `idalumno_fk` FOREIGN KEY (`idalumno`) REFERENCES `alumno` (`id`),
  CONSTRAINT `idgrupo` FOREIGN KEY (`idgrupo`) REFERENCES `grupo` (`idgrupo`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alumno_grupo`
--

LOCK TABLES `alumno_grupo` WRITE;
/*!40000 ALTER TABLE `alumno_grupo` DISABLE KEYS */;
INSERT INTO `alumno_grupo` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,1),(7,7,1),(8,8,1),(9,9,1),(10,10,1),(11,11,1),(12,12,1),(13,13,1),(14,14,1),(15,15,2),(16,16,2),(17,17,2),(18,18,2),(19,19,2),(20,20,2),(21,21,2),(22,22,2),(23,23,2),(24,24,2),(25,25,2),(26,26,2),(27,27,2),(28,28,2),(29,29,3),(30,30,3),(31,31,3),(32,32,3),(33,33,3),(34,34,3),(35,35,3),(36,36,3),(37,37,3),(38,38,3),(39,39,3),(40,40,3),(41,41,3),(42,42,3);
/*!40000 ALTER TABLE `alumno_grupo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grupo`
--

DROP TABLE IF EXISTS `grupo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grupo` (
  `idgrupo` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idgrupo`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grupo`
--

LOCK TABLES `grupo` WRITE;
/*!40000 ALTER TABLE `grupo` DISABLE KEYS */;
INSERT INTO `grupo` VALUES (1,'primero'),(2,'segundo'),(3,'tercero');
/*!40000 ALTER TABLE `grupo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grupo_materia`
--

DROP TABLE IF EXISTS `grupo_materia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grupo_materia` (
  `idgrupo_materia` int(11) NOT NULL AUTO_INCREMENT,
  `idgrupo` int(11) NOT NULL,
  `idmateria` int(11) NOT NULL,
  PRIMARY KEY (`idgrupo_materia`),
  KEY `idgrupo_fk_idx` (`idgrupo`),
  KEY `idmateria_fk_idx` (`idmateria`),
  CONSTRAINT `gm_idmateria_fk` FOREIGN KEY (`idmateria`) REFERENCES `materia` (`idmateria`),
  CONSTRAINT `idgrupo_fk` FOREIGN KEY (`idgrupo`) REFERENCES `grupo` (`idgrupo`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grupo_materia`
--

LOCK TABLES `grupo_materia` WRITE;
/*!40000 ALTER TABLE `grupo_materia` DISABLE KEYS */;
INSERT INTO `grupo_materia` VALUES (1,1,1),(2,1,4),(3,1,7),(4,1,10),(5,2,2),(6,2,5),(7,2,8),(8,2,11),(9,3,3),(10,3,6),(11,3,9),(12,3,11);
/*!40000 ALTER TABLE `grupo_materia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `maestro`
--

DROP TABLE IF EXISTS `maestro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `maestro` (
  `idmaestro` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `apellido_paterno` varchar(45) DEFAULT NULL,
  `apellido_materno` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idmaestro`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maestro`
--

LOCK TABLES `maestro` WRITE;
/*!40000 ALTER TABLE `maestro` DISABLE KEYS */;
INSERT INTO `maestro` VALUES (1,'Silas','ORTEGA','GARRIDO'),(2,'Van','ORTEGA','MORENO'),(3,'Zyan','RAMOS','MARTINEZ'),(4,'Aarón','MOLINA','RAMOS'),(5,'Aitor','SANCHEZ','GARRIDO'),(6,'Darío','MORENO','MARTIN'),(7,'Elías','RUBIO','GARRIDO'),(8,'Iván','LOPEZ','MUÑOZ'),(9,'Saúl','ORTEGA','CRUZ'),(10,'Rafael','ALVAREZ','RUIZ'),(11,'Raúl','GARCIA','MARTIN'),(12,'Tiago','NAVARRO','PRIETO');
/*!40000 ALTER TABLE `maestro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `maestro_materia`
--

DROP TABLE IF EXISTS `maestro_materia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `maestro_materia` (
  `idmaestro_materia` int(11) NOT NULL AUTO_INCREMENT,
  `idmaestro` int(11) NOT NULL,
  `idmateria` int(11) NOT NULL,
  PRIMARY KEY (`idmaestro_materia`),
  KEY `idmaestro_fk_idx` (`idmaestro`),
  KEY `idmateria_fk_idx` (`idmateria`),
  CONSTRAINT `idmaestro_fk` FOREIGN KEY (`idmaestro`) REFERENCES `maestro` (`idmaestro`),
  CONSTRAINT `idmateria_fk` FOREIGN KEY (`idmateria`) REFERENCES `materia` (`idmateria`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maestro_materia`
--

LOCK TABLES `maestro_materia` WRITE;
/*!40000 ALTER TABLE `maestro_materia` DISABLE KEYS */;
INSERT INTO `maestro_materia` VALUES (1,1,12),(2,2,11),(3,3,10),(4,4,9),(5,5,8),(6,6,7),(7,7,6),(8,8,5),(9,9,4),(10,10,3),(11,11,2),(12,12,1);
/*!40000 ALTER TABLE `maestro_materia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materia`
--

DROP TABLE IF EXISTS `materia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `materia` (
  `idmateria` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) NOT NULL,
  PRIMARY KEY (`idmateria`,`descripcion`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materia`
--

LOCK TABLES `materia` WRITE;
/*!40000 ALTER TABLE `materia` DISABLE KEYS */;
INSERT INTO `materia` VALUES (1,'matematicas'),(2,'matematicas 2'),(3,'matematicas 3'),(4,'Espanol'),(5,'Espanol 2'),(6,'Espanol 3'),(7,'Historia'),(8,'Historia 2'),(9,'Historia 3'),(10,'fisica'),(11,'fisica 2'),(12,'fisica 3');
/*!40000 ALTER TABLE `materia` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-26 20:18:04
