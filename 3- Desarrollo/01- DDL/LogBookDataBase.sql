-- MySQL dump 10.17  Distrib 10.3.22-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: LogBook
-- ------------------------------------------------------
-- Server version	10.3.22-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `administrador`
--
CREATE DATABASE LogBook;	

USE LogBook; 

DROP TABLE IF EXISTS `administrador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `administrador` (
  `fk_numero_documento` varchar(20) NOT NULL,
  `fk_id_tipo_documento` int NOT NULL,
  PRIMARY KEY (`fk_numero_documento`,`fk_id_tipo_documento`),
  CONSTRAINT `administrador_ibfk_1` FOREIGN KEY (`fk_numero_documento`, `fk_id_tipo_documento`) REFERENCES `usuario` (`numero_documento`, `fk_id_tipo_documento`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrador`
--

LOCK TABLES `administrador` WRITE;
/*!40000 ALTER TABLE `administrador` DISABLE KEYS */;
/*!40000 ALTER TABLE `administrador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aprendiz`
--

DROP TABLE IF EXISTS `aprendiz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aprendiz` (
  `fk_id_tipo_documento` int NOT NULL AUTO_INCREMENT,
  `fk_numero_documento` varchar(20) NOT NULL,
  PRIMARY KEY (`fk_id_tipo_documento`,`fk_numero_documento`),
  CONSTRAINT `aprendiz_ibfk_1` FOREIGN KEY (`fk_id_tipo_documento`, `fk_numero_documento`) REFERENCES `usuario` (`fk_id_tipo_documento`, `numero_documento`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aprendiz`
--

LOCK TABLES `aprendiz` WRITE;
/*!40000 ALTER TABLE `aprendiz` DISABLE KEYS */;
/*!40000 ALTER TABLE `aprendiz` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aprendiz_ficha`
--

DROP TABLE IF EXISTS `aprendiz_ficha`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aprendiz_ficha` (
  `fk_id_tipo_documento` int NOT NULL,
  `fk_numero_documento` varchar(20) NOT NULL,
  `fk_id_ficha` int NOT NULL,
  PRIMARY KEY (`fk_id_tipo_documento`,`fk_numero_documento`,`fk_id_ficha`),
  KEY `fk_id_ficha` (`fk_id_ficha`),
  CONSTRAINT `aprendiz_ficha_ibfk_1` FOREIGN KEY (`fk_id_ficha`) REFERENCES `ficha` (`id_ficha`),
  CONSTRAINT `aprendiz_ficha_ibfk_2` FOREIGN KEY (`fk_id_tipo_documento`, `fk_numero_documento`) REFERENCES `aprendiz` (`fk_id_tipo_documento`, `fk_numero_documento`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aprendiz_ficha`
--

LOCK TABLES `aprendiz_ficha` WRITE;
/*!40000 ALTER TABLE `aprendiz_ficha` DISABLE KEYS */;
/*!40000 ALTER TABLE `aprendiz_ficha` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `competencia`
--

DROP TABLE IF EXISTS `competencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `competencia` (
  `id_competencia` int NOT NULL AUTO_INCREMENT,
  `descripcion_competencia` text NOT NULL,
  `fk_id_programa` int NOT NULL,
  `fk_id_especialidad` int NOT NULL,
  PRIMARY KEY (`id_competencia`,`fk_id_programa`,`fk_id_especialidad`),
  KEY `fk_id_programa` (`fk_id_programa`,`fk_id_especialidad`),
  CONSTRAINT `competencia_ibfk_1` FOREIGN KEY (`fk_id_programa`, `fk_id_especialidad`) REFERENCES `programa` (`id_programa`, `fk_id_especialidad`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `competencia`
--

LOCK TABLES `competencia` WRITE;
/*!40000 ALTER TABLE `competencia` DISABLE KEYS */;
/*!40000 ALTER TABLE `competencia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `especialidad`
--

DROP TABLE IF EXISTS `especialidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `especialidad` (
  `id_especialidad` int NOT NULL AUTO_INCREMENT,
  `nombre_especialidad` varchar(25) NOT NULL,
  PRIMARY KEY (`id_especialidad`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `especialidad`
--

LOCK TABLES `especialidad` WRITE;
/*!40000 ALTER TABLE `especialidad` DISABLE KEYS */;
/*!40000 ALTER TABLE `especialidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ficha`
--

DROP TABLE IF EXISTS `ficha`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ficha` (
  `id_ficha` int NOT NULL AUTO_INCREMENT,
  `numero_ficha` int NOT NULL,
  `estado_ficha` varchar(10) NOT NULL,
  `fk_id_grupo` varchar(20) NOT NULL,
  `fk_id_programa` int NOT NULL,
  `fk_id_especialidad` int NOT NULL,
  `fk_id_jornada` int NOT NULL,
  `fk_id_trimestre` int NOT NULL,
  `fk_id_competencia` int NOT NULL,
  PRIMARY KEY (`id_ficha`,`fk_id_grupo`),
  KEY `fk_id_grupo` (`fk_id_grupo`),
  KEY `fk_id_programa` (`fk_id_programa`,`fk_id_especialidad`),
  KEY `fk_id_jornada` (`fk_id_jornada`),
  KEY `fk_id_trimestre` (`fk_id_trimestre`),
  KEY `fk_id_competencia` (`fk_id_competencia`),
  CONSTRAINT `ficha_ibfk_1` FOREIGN KEY (`fk_id_grupo`) REFERENCES `grupo` (`id_grupo`),
  CONSTRAINT `ficha_ibfk_2` FOREIGN KEY (`fk_id_programa`, `fk_id_especialidad`) REFERENCES `programa` (`id_programa`, `fk_id_especialidad`),
  CONSTRAINT `ficha_ibfk_3` FOREIGN KEY (`fk_id_jornada`) REFERENCES `jornada` (`id_jornada`),
  CONSTRAINT `ficha_ibfk_4` FOREIGN KEY (`fk_id_trimestre`) REFERENCES `trimestre` (`id_trimestre`),
  CONSTRAINT `ficha_ibfk_5` FOREIGN KEY (`fk_id_competencia`) REFERENCES `competencia` (`id_competencia`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ficha`
--

LOCK TABLES `ficha` WRITE;
/*!40000 ALTER TABLE `ficha` DISABLE KEYS */;
/*!40000 ALTER TABLE `ficha` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grupo`
--

DROP TABLE IF EXISTS `grupo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grupo` (
  `id_grupo` varchar(20) NOT NULL,
  `nombre_grupo` varchar(10) NOT NULL,
  PRIMARY KEY (`id_grupo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grupo`
--

LOCK TABLES `grupo` WRITE;
/*!40000 ALTER TABLE `grupo` DISABLE KEYS */;
/*!40000 ALTER TABLE `grupo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `instructor`
--

DROP TABLE IF EXISTS `instructor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `instructor` (
  `fk_id_tipo_documento` int NOT NULL,
  `fk_numero_documento` varchar(20) NOT NULL,
  `fk_id_vinculacion` int NOT NULL,
  `fk_id_especialidad` int NOT NULL,
  PRIMARY KEY (`fk_id_tipo_documento`,`fk_numero_documento`),
  KEY `fk_id_especialidad` (`fk_id_especialidad`),
  KEY `fk_id_vinculacion` (`fk_id_vinculacion`),
  CONSTRAINT `instructor_ibfk_1` FOREIGN KEY (`fk_id_especialidad`) REFERENCES `especialidad` (`id_especialidad`) ON UPDATE CASCADE,
  CONSTRAINT `instructor_ibfk_2` FOREIGN KEY (`fk_id_vinculacion`) REFERENCES `vinculacion` (`id_vinculacion`) ON UPDATE CASCADE,
  CONSTRAINT `instructor_ibfk_3` FOREIGN KEY (`fk_id_tipo_documento`, `fk_numero_documento`) REFERENCES `usuario` (`fk_id_tipo_documento`, `numero_documento`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instructor`
--

LOCK TABLES `instructor` WRITE;
/*!40000 ALTER TABLE `instructor` DISABLE KEYS */;
/*!40000 ALTER TABLE `instructor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `instructor_ficha`
--

DROP TABLE IF EXISTS `instructor_ficha`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `instructor_ficha` (
  `fk_id_ficha` int NOT NULL,
  `fk_id_tipo_documento` int NOT NULL,
  `fk_numero_documento` varchar(20) NOT NULL,
  PRIMARY KEY (`fk_id_ficha`,`fk_id_tipo_documento`,`fk_numero_documento`),
  KEY `fk_id_tipo_documento` (`fk_id_tipo_documento`,`fk_numero_documento`),
  CONSTRAINT `instructor_ficha_ibfk_1` FOREIGN KEY (`fk_id_tipo_documento`, `fk_numero_documento`) REFERENCES `instructor` (`fk_id_tipo_documento`, `fk_numero_documento`) ON UPDATE CASCADE,
  CONSTRAINT `instructor_ficha_ibfk_2` FOREIGN KEY (`fk_id_ficha`) REFERENCES `ficha` (`id_ficha`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instructor_ficha`
--

LOCK TABLES `instructor_ficha` WRITE;
/*!40000 ALTER TABLE `instructor_ficha` DISABLE KEYS */;
/*!40000 ALTER TABLE `instructor_ficha` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jornada`
--

DROP TABLE IF EXISTS `jornada`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jornada` (
  `id_jornada` int NOT NULL AUTO_INCREMENT,
  `nombre_jornada` varchar(30) NOT NULL,
  `horario_jornada` varchar(30) NOT NULL,
  PRIMARY KEY (`id_jornada`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jornada`
--

LOCK TABLES `jornada` WRITE;
/*!40000 ALTER TABLE `jornada` DISABLE KEYS */;
/*!40000 ALTER TABLE `jornada` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_error`
--

DROP TABLE IF EXISTS `log_error`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_error` (
  `id_error` int NOT NULL AUTO_INCREMENT,
  `nombre_error` varchar(100) NOT NULL,
  `fecha_error` date NOT NULL,
  `hora_error` time(6) NOT NULL,
  PRIMARY KEY (`id_error`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_error`
--

LOCK TABLES `log_error` WRITE;
/*!40000 ALTER TABLE `log_error` DISABLE KEYS */;
/*!40000 ALTER TABLE `log_error` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opinion`
--

DROP TABLE IF EXISTS `opinion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opinion` (
  `id_opinion` int NOT NULL AUTO_INCREMENT,
  `fecha_opinion` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `titulo` varchar(250) NOT NULL,
  `mensaje` text NOT NULL,
  `estrellas` int NOT NULL,
  `fk_id_tipo_documento` int NOT NULL,
  `fk_numero_documento` varchar(20) NOT NULL,
  PRIMARY KEY (`id_opinion`,`fk_id_tipo_documento`,`fk_numero_documento`),
  KEY `fk_id_tipo_documento` (`fk_id_tipo_documento`,`fk_numero_documento`),
  CONSTRAINT `opinion_ibfk_1` FOREIGN KEY (`fk_id_tipo_documento`, `fk_numero_documento`) REFERENCES `usuario` (`fk_id_tipo_documento`, `numero_documento`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opinion`
--

LOCK TABLES `opinion` WRITE;
/*!40000 ALTER TABLE `opinion` DISABLE KEYS */;
/*!40000 ALTER TABLE `opinion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `programa`
--

DROP TABLE IF EXISTS `programa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `programa` (
  `id_programa` int NOT NULL AUTO_INCREMENT,
  `fk_id_especialidad` int NOT NULL,
  `siglas_programa` varchar(10) DEFAULT NULL,
  `nombre_programa` varchar(50) NOT NULL,
  PRIMARY KEY (`id_programa`,`fk_id_especialidad`),
  KEY `fk_id_especialidad` (`fk_id_especialidad`),
  CONSTRAINT `programa_ibfk_1` FOREIGN KEY (`fk_id_especialidad`) REFERENCES `especialidad` (`id_especialidad`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `programa`
--

LOCK TABLES `programa` WRITE;
/*!40000 ALTER TABLE `programa` DISABLE KEYS */;
/*!40000 ALTER TABLE `programa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resultado_aprendizaje`
--

DROP TABLE IF EXISTS `resultado_aprendizaje`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resultado_aprendizaje` (
  `id_resultado_aprendizaje` int NOT NULL AUTO_INCREMENT,
  `numero_resultado_de_aprendizaje` int NOT NULL,
  `descripcion_resultado_aprendizaje` text NOT NULL,
  `fk_id_competencia` int NOT NULL,
  `fk_id_programa` int NOT NULL,
  `fk_id_especialidad` int NOT NULL,
  PRIMARY KEY (`id_resultado_aprendizaje`,`fk_id_competencia`,`fk_id_programa`,`fk_id_especialidad`),
  KEY `fk_id_competencia` (`fk_id_competencia`,`fk_id_programa`,`fk_id_especialidad`),
  CONSTRAINT `resultado_aprendizaje_ibfk_1` FOREIGN KEY (`fk_id_competencia`, `fk_id_programa`, `fk_id_especialidad`) REFERENCES `competencia` (`id_competencia`, `fk_id_programa`, `fk_id_especialidad`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resultado_aprendizaje`
--

LOCK TABLES `resultado_aprendizaje` WRITE;
/*!40000 ALTER TABLE `resultado_aprendizaje` DISABLE KEYS */;
/*!40000 ALTER TABLE `resultado_aprendizaje` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rh`
--

DROP TABLE IF EXISTS `rh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rh` (
  `id_rh` int NOT NULL AUTO_INCREMENT,
  `nombre_rh` varchar(15) NOT NULL,
  PRIMARY KEY (`id_rh`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rh`
--

LOCK TABLES `rh` WRITE;
/*!40000 ALTER TABLE `rh` DISABLE KEYS */;
/*!40000 ALTER TABLE `rh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rol`
--

DROP TABLE IF EXISTS `rol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rol` (
  `id_rol` int NOT NULL AUTO_INCREMENT,
  `nombre_rol` varchar(25) NOT NULL,
  PRIMARY KEY (`id_rol`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rol`
--

LOCK TABLES `rol` WRITE;
/*!40000 ALTER TABLE `rol` DISABLE KEYS */;
/*!40000 ALTER TABLE `rol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servidor_correo`
--

DROP TABLE IF EXISTS `servidor_correo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `servidor_correo` (
  `id_servidor` int NOT NULL AUTO_INCREMENT,
  `nombre_servidor` varchar(50) NOT NULL,
  PRIMARY KEY (`id_servidor`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servidor_correo`
--

LOCK TABLES `servidor_correo` WRITE;
/*!40000 ALTER TABLE `servidor_correo` DISABLE KEYS */;
/*!40000 ALTER TABLE `servidor_correo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_documento`
--

DROP TABLE IF EXISTS `tipo_documento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_documento` (
  `id_tipo_documento` int NOT NULL AUTO_INCREMENT,
  `siglas` varchar(10) NOT NULL,
  `nombre_tipo_documento` varchar(30) NOT NULL,
  PRIMARY KEY (`id_tipo_documento`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_documento`
--

LOCK TABLES `tipo_documento` WRITE;
/*!40000 ALTER TABLE `tipo_documento` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipo_documento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trimestre`
--

DROP TABLE IF EXISTS `trimestre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trimestre` (
  `id_trimestre` int NOT NULL,
  `num_trimestre` int NOT NULL,
  PRIMARY KEY (`id_trimestre`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trimestre`
--

LOCK TABLES `trimestre` WRITE;
/*!40000 ALTER TABLE `trimestre` DISABLE KEYS */;
/*!40000 ALTER TABLE `trimestre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `numero_documento` varchar(20) NOT NULL,
  `primer_nombre` varchar(30) NOT NULL,
  `segundo_nombre` varchar(30) DEFAULT NULL,
  `primer_apellido` varchar(30) NOT NULL,
  `segundo_apellido` varchar(30) DEFAULT NULL,
  `correo_electronico` varchar(100) NOT NULL,
  `foto` blob NOT NULL,
  `edad` int NOT NULL,
  `telefono_usuario` varchar(15) NOT NULL,
  `contraseña` varchar(40) NOT NULL,
  `fk_id_tipo_documento` int NOT NULL,
  `fk_id_rh` int NOT NULL,
  `fk_id_rol` int NOT NULL,
  PRIMARY KEY (`numero_documento`,`fk_id_tipo_documento`),
  UNIQUE KEY `correo_electronico` (`correo_electronico`),
  KEY `fk_id_rh` (`fk_id_rh`),
  KEY `fk_id_rol` (`fk_id_rol`),
  KEY `fk_id_tipo_documento` (`fk_id_tipo_documento`),
  CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`fk_id_rh`) REFERENCES `rh` (`id_rh`) ON UPDATE CASCADE,
  CONSTRAINT `usuario_ibfk_2` FOREIGN KEY (`fk_id_rol`) REFERENCES `rol` (`id_rol`) ON UPDATE CASCADE,
  CONSTRAINT `usuario_ibfk_3` FOREIGN KEY (`fk_id_tipo_documento`) REFERENCES `tipo_documento` (`id_tipo_documento`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vinculacion`
--

DROP TABLE IF EXISTS `vinculacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vinculacion` (
  `id_vinculacion` int NOT NULL AUTO_INCREMENT,
  `nombre_vinculacion` varchar(25) NOT NULL,
  `horas_trabajo` int NOT NULL,
  PRIMARY KEY (`id_vinculacion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vinculacion`
--

LOCK TABLES `vinculacion` WRITE;
/*!40000 ALTER TABLE `vinculacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `vinculacion` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-02 13:23:01
