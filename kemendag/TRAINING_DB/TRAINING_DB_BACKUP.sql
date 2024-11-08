-- MySQL dump 10.13  Distrib 8.0.20, for macos10.15 (x86_64)
--
-- Host: localhost    Database: TRAINING_DB
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `Department`
--

DROP TABLE IF EXISTS `Department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Department` (
  `DepartmentID` int NOT NULL,
  `NamaDepartment` varchar(50) NOT NULL,
  PRIMARY KEY (`DepartmentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Department`
--

LOCK TABLES `Department` WRITE;
/*!40000 ALTER TABLE `Department` DISABLE KEYS */;
INSERT INTO `Department` VALUES (1,'Finance'),(2,'IT'),(3,'HR'),(4,'Marketing'),(5,'Operations');
/*!40000 ALTER TABLE `Department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EvaluasiPengajar`
--

DROP TABLE IF EXISTS `EvaluasiPengajar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `EvaluasiPengajar` (
  `EvaluasiPengajarID` int NOT NULL,
  `PengajarID` int DEFAULT NULL,
  `TrainingID` int DEFAULT NULL,
  `KeahlianPengajar` int DEFAULT NULL,
  `KemampuanMenyampaikan` int DEFAULT NULL,
  `Kedisiplinan` int DEFAULT NULL,
  `JumlahSesi` int DEFAULT NULL,
  `UsiaPengajar` int DEFAULT NULL,
  `LamaPengalaman` int DEFAULT NULL,
  `FeedbackLainnya` text,
  PRIMARY KEY (`EvaluasiPengajarID`),
  KEY `PengajarID` (`PengajarID`),
  KEY `TrainingID` (`TrainingID`),
  CONSTRAINT `evaluasipengajar_ibfk_1` FOREIGN KEY (`PengajarID`) REFERENCES `Pengajar` (`PengajarID`),
  CONSTRAINT `evaluasipengajar_ibfk_2` FOREIGN KEY (`TrainingID`) REFERENCES `Training` (`TrainingID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EvaluasiPengajar`
--

LOCK TABLES `EvaluasiPengajar` WRITE;
/*!40000 ALTER TABLE `EvaluasiPengajar` DISABLE KEYS */;
INSERT INTO `EvaluasiPengajar` VALUES (2,1,109,3,3,5,8,55,10,'Baik'),(3,2,88,4,1,5,9,39,14,'Sangat Baik'),(4,3,95,1,1,3,8,34,4,'Cukup Baik'),(5,4,50,1,5,5,3,60,5,'Perlu Peningkatan'),(6,5,125,5,3,3,5,50,8,'Sangat Baik'),(7,6,60,5,4,5,10,30,4,'Cukup Baik'),(8,7,48,3,2,2,8,58,5,'Perlu Peningkatan'),(9,8,142,4,5,4,1,60,6,'Sangat Baik'),(10,9,25,2,5,2,10,29,6,'Perlu Peningkatan'),(11,10,103,2,3,3,5,59,12,'Baik'),(12,11,133,1,3,1,8,56,16,'Baik'),(13,12,136,3,3,3,8,50,10,'Perlu Peningkatan'),(14,13,144,5,2,4,6,34,1,'Perlu Peningkatan'),(15,14,145,5,2,5,8,27,11,'Baik'),(16,15,86,4,2,5,2,29,11,'Baik'),(17,16,147,2,5,4,4,48,11,'Perlu Peningkatan'),(18,17,50,3,5,5,7,42,11,'Cukup Baik'),(19,18,96,3,3,1,3,31,13,'Perlu Peningkatan'),(20,19,54,1,2,2,10,52,4,'Baik'),(21,20,58,1,3,2,2,41,14,'Sangat Baik'),(22,21,23,4,4,3,9,43,4,'Perlu Peningkatan'),(23,22,4,4,3,5,1,26,10,'Cukup Baik'),(24,23,9,5,1,2,5,29,13,'Sangat Baik'),(25,24,147,4,2,3,7,55,1,'Cukup Baik'),(26,25,113,1,4,1,9,49,7,'Perlu Peningkatan'),(27,26,65,2,4,4,10,48,10,'Cukup Baik'),(28,27,131,1,1,4,10,42,12,'Sangat Baik'),(29,28,2,4,3,1,5,38,13,'Baik'),(30,29,32,3,3,5,8,32,7,'Baik'),(31,30,70,4,1,4,2,57,18,'Perlu Peningkatan'),(32,31,134,5,4,4,4,33,19,'Baik'),(33,32,126,4,2,1,7,47,16,'Sangat Baik'),(34,33,49,3,5,2,7,31,17,'Cukup Baik'),(35,34,107,1,3,3,1,54,3,'Perlu Peningkatan'),(36,35,2,5,3,5,10,42,6,'Cukup Baik'),(37,36,69,4,1,2,5,43,2,'Sangat Baik'),(38,37,100,5,5,5,4,57,18,'Perlu Peningkatan'),(39,38,19,3,3,2,10,45,4,'Sangat Baik'),(40,39,94,4,1,2,9,31,10,'Baik'),(41,40,131,4,2,1,5,32,13,'Cukup Baik'),(42,41,74,5,3,1,10,47,6,'Baik'),(43,42,145,5,4,3,4,34,14,'Perlu Peningkatan'),(44,43,15,1,3,5,2,52,12,'Sangat Baik'),(45,44,69,5,4,3,3,59,19,'Sangat Baik'),(46,45,12,5,1,2,7,26,6,'Baik'),(47,46,42,5,3,2,7,41,4,'Baik'),(48,47,74,2,4,4,5,53,10,'Sangat Baik'),(49,48,137,1,5,2,5,55,10,'Sangat Baik'),(50,49,35,2,5,3,4,38,14,'Baik'),(51,50,89,1,3,5,2,58,19,'Baik'),(52,51,67,4,4,3,4,29,15,'Perlu Peningkatan'),(53,52,36,2,1,4,1,41,2,'Cukup Baik'),(54,53,110,1,4,5,9,48,17,'Perlu Peningkatan'),(55,54,70,5,2,3,4,52,17,'Baik'),(56,55,73,5,2,5,10,25,19,'Perlu Peningkatan'),(57,56,72,2,3,5,6,38,13,'Perlu Peningkatan'),(58,57,8,2,5,2,4,46,6,'Sangat Baik'),(59,58,136,1,5,4,3,46,13,'Sangat Baik'),(60,59,8,1,3,3,10,47,2,'Sangat Baik'),(61,60,5,3,2,1,6,57,11,'Baik'),(62,61,25,2,3,3,7,34,10,'Sangat Baik'),(63,62,142,4,4,1,10,36,17,'Sangat Baik'),(64,63,124,5,4,1,9,25,17,'Sangat Baik'),(65,64,126,1,2,2,6,49,1,'Perlu Peningkatan'),(66,65,43,1,3,4,10,30,8,'Sangat Baik'),(67,66,43,4,1,5,4,56,16,'Baik'),(68,67,110,1,2,4,6,42,3,'Sangat Baik'),(69,68,138,5,4,2,3,34,2,'Cukup Baik'),(70,69,79,2,2,1,10,57,13,'Sangat Baik'),(71,70,2,4,5,3,6,31,15,'Perlu Peningkatan'),(72,71,52,4,5,2,5,57,7,'Sangat Baik'),(73,72,141,5,4,2,8,48,4,'Cukup Baik'),(74,73,91,1,1,3,7,40,18,'Cukup Baik'),(75,74,93,1,5,1,10,44,17,'Sangat Baik'),(76,75,77,2,1,1,5,58,14,'Sangat Baik'),(77,76,37,1,3,3,4,48,6,'Baik'),(78,77,148,1,5,4,8,45,6,'Perlu Peningkatan'),(79,78,64,4,1,3,6,53,18,'Sangat Baik'),(80,79,92,2,5,3,1,59,1,'Perlu Peningkatan'),(81,80,48,1,5,2,5,54,15,'Perlu Peningkatan'),(82,81,108,4,1,3,6,57,6,'Perlu Peningkatan'),(83,82,81,4,1,3,8,53,16,'Cukup Baik'),(84,83,53,4,4,1,6,32,2,'Sangat Baik'),(85,84,134,1,4,4,2,43,17,'Cukup Baik'),(86,85,121,3,4,2,1,52,14,'Sangat Baik'),(87,86,1,5,1,1,8,57,12,'Perlu Peningkatan'),(88,87,77,2,4,4,8,50,7,'Cukup Baik'),(89,88,113,1,1,5,6,58,4,'Sangat Baik'),(90,89,14,3,3,1,1,25,18,'Cukup Baik'),(91,90,127,5,5,3,10,41,17,'Cukup Baik'),(92,91,141,1,5,1,5,56,15,'Sangat Baik'),(93,92,17,5,2,5,1,56,12,'Perlu Peningkatan'),(94,93,96,5,4,5,5,43,12,'Baik'),(95,94,68,3,3,1,9,53,6,'Baik'),(96,95,65,2,3,2,2,38,5,'Cukup Baik'),(97,96,10,4,2,4,1,49,11,'Baik'),(98,97,55,4,1,5,2,52,5,'Perlu Peningkatan'),(99,98,7,3,4,4,7,41,11,'Cukup Baik'),(100,99,142,4,4,5,1,40,16,'Cukup Baik'),(101,100,64,3,1,1,4,54,16,'Cukup Baik'),(102,101,110,5,4,3,7,27,12,'Cukup Baik'),(103,102,94,2,1,2,9,35,17,'Cukup Baik'),(104,103,125,4,3,4,7,31,10,'Sangat Baik'),(105,104,60,2,1,5,2,47,7,'Cukup Baik'),(106,105,15,3,4,2,8,27,20,'Baik'),(107,106,71,1,2,2,10,52,17,'Baik'),(108,107,136,1,5,1,9,44,9,'Baik'),(109,108,102,2,5,3,1,52,17,'Perlu Peningkatan'),(110,109,101,1,3,1,9,26,16,'Cukup Baik'),(111,110,55,5,5,5,8,60,3,'Perlu Peningkatan'),(112,111,121,2,5,4,7,28,15,'Cukup Baik'),(113,112,100,3,4,4,1,57,13,'Cukup Baik'),(114,113,7,2,2,1,3,60,1,'Cukup Baik'),(115,114,16,3,2,4,9,31,18,'Sangat Baik'),(116,115,14,3,2,2,3,31,1,'Perlu Peningkatan'),(117,116,41,2,4,2,1,38,3,'Perlu Peningkatan'),(118,117,31,5,1,3,5,50,20,'Sangat Baik'),(119,118,107,5,2,4,2,59,6,'Sangat Baik'),(120,119,98,2,3,1,6,52,15,'Perlu Peningkatan'),(121,120,49,1,5,1,7,40,5,'Sangat Baik'),(122,121,117,5,5,2,10,44,4,'Perlu Peningkatan'),(123,122,41,1,5,2,9,25,9,'Perlu Peningkatan'),(124,123,18,3,3,4,10,47,5,'Sangat Baik'),(125,124,144,5,3,5,1,59,19,'Sangat Baik'),(126,125,34,4,4,4,7,56,11,'Sangat Baik'),(127,126,124,5,2,2,2,33,6,'Baik'),(128,127,38,3,1,5,8,58,19,'Perlu Peningkatan'),(129,128,4,1,3,4,9,50,7,'Baik'),(130,129,38,1,4,3,2,45,14,'Cukup Baik'),(131,130,144,4,3,5,7,39,11,'Baik'),(132,131,118,2,1,3,6,57,15,'Perlu Peningkatan'),(133,132,72,5,2,4,9,49,16,'Perlu Peningkatan'),(134,133,114,3,4,4,2,50,4,'Sangat Baik'),(135,134,120,2,1,1,10,29,16,'Cukup Baik'),(136,135,57,3,5,2,9,56,17,'Cukup Baik'),(137,136,37,5,2,4,2,56,16,'Sangat Baik'),(138,137,61,3,3,2,1,45,4,'Cukup Baik'),(139,138,36,4,4,3,6,48,20,'Perlu Peningkatan'),(140,139,123,4,2,5,3,28,2,'Baik'),(141,140,97,2,1,3,8,51,6,'Baik'),(142,141,94,3,1,3,7,43,5,'Baik'),(143,142,63,2,3,2,6,47,20,'Cukup Baik'),(144,143,110,2,1,2,8,34,2,'Baik'),(145,144,75,5,2,5,4,60,8,'Sangat Baik'),(146,145,134,4,2,5,1,31,1,'Sangat Baik'),(147,146,63,4,2,3,1,34,9,'Perlu Peningkatan'),(148,147,29,3,4,1,1,54,17,'Cukup Baik'),(149,148,86,5,5,5,5,52,14,'Perlu Peningkatan'),(150,149,138,1,2,2,9,45,15,'Sangat Baik');
/*!40000 ALTER TABLE `EvaluasiPengajar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EvaluasiPeserta`
--

DROP TABLE IF EXISTS `EvaluasiPeserta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `EvaluasiPeserta` (
  `EvaluasiPesertaID` int NOT NULL,
  `PesertaID` int DEFAULT NULL,
  `TrainingID` int DEFAULT NULL,
  `PenilaianMateri` int DEFAULT NULL,
  `PenilaianPengajar` int DEFAULT NULL,
  `PenilaianFasilitas` int DEFAULT NULL,
  `WaktuFeedback` date DEFAULT NULL,
  `SaranPengembangan` text,
  `TertarikPelatihan` tinyint(1) DEFAULT NULL,
  `FeedbackLainnya` text,
  PRIMARY KEY (`EvaluasiPesertaID`),
  KEY `PesertaID` (`PesertaID`),
  KEY `TrainingID` (`TrainingID`),
  CONSTRAINT `evaluasipeserta_ibfk_1` FOREIGN KEY (`PesertaID`) REFERENCES `Peserta` (`PesertaID`),
  CONSTRAINT `evaluasipeserta_ibfk_2` FOREIGN KEY (`TrainingID`) REFERENCES `Training` (`TrainingID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EvaluasiPeserta`
--

LOCK TABLES `EvaluasiPeserta` WRITE;
/*!40000 ALTER TABLE `EvaluasiPeserta` DISABLE KEYS */;
INSERT INTO `EvaluasiPeserta` VALUES (2,1,70,1,3,3,'2024-03-25','Baik',0,'Perlu Peningkatan'),(3,2,136,2,1,2,'2024-03-17','Baik',1,'Sangat Baik'),(4,3,95,2,5,4,'2024-07-25','Tambah materi',1,'Cukup Memadai'),(5,4,7,3,3,2,'2024-08-27','Tambah materi',1,'Cukup Memadai'),(6,5,42,5,1,5,'2024-07-05','Lebih banyak latihan praktis',0,'Perlu Peningkatan'),(7,6,92,1,5,5,'2024-03-26','Tambah materi',1,'Perlu Peningkatan'),(8,7,136,2,1,2,'2024-11-01','Lebih banyak latihan praktis',0,'Baik'),(9,8,85,2,1,3,'2024-07-31','Tambah materi',0,'Cukup Memadai'),(10,9,39,5,4,2,'2024-05-11','Tambah materi',0,'Perlu Peningkatan'),(11,10,68,5,3,4,'2024-04-05','Tambah materi',0,'Cukup Memadai'),(12,11,54,4,2,1,'2024-05-30','Tambah materi',0,'Cukup Memadai'),(13,12,106,3,4,4,'2024-07-09','Lebih banyak latihan praktis',0,'Cukup Memadai'),(14,13,124,1,3,4,'2024-09-18','Baik',1,'Perlu Peningkatan'),(15,14,35,4,2,2,'2024-05-11','Baik',1,'Cukup Memadai'),(16,15,112,2,1,5,'2024-09-07','Lebih banyak latihan praktis',1,'Perlu Peningkatan'),(17,16,1,1,5,1,'2024-02-26','Lebih banyak latihan praktis',1,'Sangat Baik'),(18,17,132,4,4,2,'2024-10-25','Tambah materi',0,'Cukup Memadai'),(19,18,104,5,4,2,'2024-02-22','Tambah materi',0,'Baik'),(20,19,56,1,1,1,'2024-07-15','Perbaiki fasilitas',1,'Perlu Peningkatan'),(21,20,30,2,4,1,'2024-05-30','Tambah materi',1,'Cukup Memadai'),(22,21,105,2,1,1,'2024-01-25','Baik',0,'Baik'),(23,22,25,5,5,2,'2024-05-28','Lebih banyak latihan praktis',0,'Perlu Peningkatan'),(24,23,103,2,4,5,'2024-11-24','Lebih banyak latihan praktis',1,'Perlu Peningkatan'),(25,24,53,5,3,4,'2024-06-29','Baik',0,'Perlu Peningkatan'),(26,25,112,1,1,1,'2024-06-04','Baik',0,'Baik'),(27,26,143,5,1,1,'2024-04-06','Tambah materi',0,'Sangat Baik'),(28,27,110,2,2,4,'2024-09-13','Baik',1,'Cukup Memadai'),(29,28,111,4,4,2,'2024-06-29','Tambah materi',1,'Cukup Memadai'),(30,29,91,5,5,2,'2024-10-10','Lebih banyak latihan praktis',1,'Sangat Baik'),(31,30,112,4,1,1,'2024-06-23','Perbaiki fasilitas',0,'Perlu Peningkatan'),(32,31,1,2,1,5,'2024-10-17','Baik',1,'Baik'),(33,32,139,2,5,3,'2024-02-22','Baik',1,'Sangat Baik'),(34,33,136,2,1,5,'2024-06-05','Perbaiki fasilitas',0,'Cukup Memadai'),(35,34,10,4,2,1,'2024-12-23','Tambah materi',0,'Perlu Peningkatan'),(36,35,33,5,1,2,'2024-05-06','Baik',1,'Sangat Baik'),(37,36,15,2,3,5,'2024-01-02','Lebih banyak latihan praktis',0,'Perlu Peningkatan'),(38,37,56,3,3,1,'2024-03-04','Perbaiki fasilitas',0,'Perlu Peningkatan'),(39,38,82,1,3,4,'2024-07-22','Tambah materi',1,'Baik'),(40,39,131,1,1,3,'2024-06-07','Perbaiki fasilitas',1,'Sangat Baik'),(41,40,17,3,5,5,'2024-07-16','Baik',0,'Cukup Memadai'),(42,41,96,3,4,2,'2024-11-18','Perbaiki fasilitas',0,'Sangat Baik'),(43,42,44,5,1,2,'2024-01-07','Baik',1,'Cukup Memadai'),(44,43,107,3,4,1,'2024-02-13','Perbaiki fasilitas',0,'Baik'),(45,44,59,5,4,1,'2024-12-05','Lebih banyak latihan praktis',1,'Baik'),(46,45,78,3,4,1,'2024-09-25','Tambah materi',1,'Perlu Peningkatan'),(47,46,106,4,4,1,'2024-01-29','Lebih banyak latihan praktis',0,'Baik'),(48,47,48,2,5,5,'2024-01-28','Perbaiki fasilitas',0,'Baik'),(49,48,147,2,5,4,'2024-07-07','Perbaiki fasilitas',0,'Baik'),(50,49,127,2,5,1,'2024-04-04','Baik',1,'Perlu Peningkatan'),(51,50,83,3,2,5,'2024-07-09','Tambah materi',1,'Baik'),(52,51,119,3,2,2,'2024-03-28','Lebih banyak latihan praktis',1,'Baik'),(53,52,60,2,1,1,'2024-04-02','Lebih banyak latihan praktis',1,'Sangat Baik'),(54,53,138,5,4,5,'2024-06-29','Tambah materi',0,'Cukup Memadai'),(55,54,4,5,3,2,'2024-09-26','Tambah materi',0,'Sangat Baik'),(56,55,83,2,2,5,'2024-08-18','Lebih banyak latihan praktis',0,'Perlu Peningkatan'),(57,56,1,3,5,5,'2024-06-23','Baik',1,'Baik'),(58,57,143,5,1,3,'2024-02-28','Lebih banyak latihan praktis',0,'Cukup Memadai'),(59,58,22,4,4,4,'2024-01-13','Lebih banyak latihan praktis',1,'Sangat Baik'),(60,59,96,2,3,1,'2024-07-25','Perbaiki fasilitas',1,'Perlu Peningkatan'),(61,60,89,2,4,4,'2024-10-25','Lebih banyak latihan praktis',0,'Cukup Memadai'),(62,61,16,3,4,4,'2024-10-04','Lebih banyak latihan praktis',1,'Sangat Baik'),(63,62,25,2,4,1,'2024-09-09','Tambah materi',1,'Perlu Peningkatan'),(64,63,113,5,4,2,'2024-06-02','Baik',0,'Cukup Memadai'),(65,64,4,2,3,2,'2024-05-22','Lebih banyak latihan praktis',1,'Baik'),(66,65,47,1,4,5,'2024-07-20','Baik',1,'Cukup Memadai'),(67,66,52,4,3,1,'2024-09-06','Tambah materi',1,'Baik'),(68,67,115,2,1,4,'2024-12-26','Perbaiki fasilitas',0,'Baik'),(69,68,1,4,4,3,'2024-04-24','Baik',1,'Sangat Baik'),(70,69,139,3,5,2,'2024-07-04','Perbaiki fasilitas',1,'Sangat Baik'),(71,70,63,2,3,5,'2024-12-02','Baik',0,'Sangat Baik'),(72,71,86,1,1,2,'2024-05-07','Lebih banyak latihan praktis',0,'Sangat Baik'),(73,72,78,5,2,1,'2024-10-25','Tambah materi',1,'Cukup Memadai'),(74,73,134,1,4,3,'2024-05-02','Perbaiki fasilitas',1,'Sangat Baik'),(75,74,41,5,1,5,'2024-09-03','Tambah materi',1,'Cukup Memadai'),(76,75,67,4,2,3,'2024-09-15','Tambah materi',0,'Perlu Peningkatan'),(77,76,31,4,1,2,'2024-11-24','Perbaiki fasilitas',0,'Cukup Memadai'),(78,77,123,1,1,3,'2024-03-19','Baik',0,'Perlu Peningkatan'),(79,78,22,3,3,4,'2024-11-11','Perbaiki fasilitas',0,'Perlu Peningkatan'),(80,79,40,5,1,1,'2024-05-21','Perbaiki fasilitas',1,'Perlu Peningkatan'),(81,80,13,5,4,2,'2024-05-06','Tambah materi',1,'Sangat Baik'),(82,81,43,2,4,5,'2024-01-26','Baik',0,'Cukup Memadai'),(83,82,35,5,3,2,'2024-07-03','Tambah materi',1,'Perlu Peningkatan'),(84,83,113,5,4,4,'2024-09-06','Perbaiki fasilitas',1,'Cukup Memadai'),(85,84,110,4,5,5,'2024-10-09','Baik',1,'Cukup Memadai'),(86,85,3,1,5,1,'2024-01-28','Perbaiki fasilitas',0,'Baik'),(87,86,63,4,3,2,'2024-05-17','Lebih banyak latihan praktis',1,'Baik'),(88,87,85,2,1,2,'2024-08-29','Perbaiki fasilitas',0,'Sangat Baik'),(89,88,36,1,5,3,'2024-01-14','Perbaiki fasilitas',1,'Perlu Peningkatan'),(90,89,36,5,1,5,'2024-10-18','Lebih banyak latihan praktis',0,'Perlu Peningkatan'),(91,90,56,3,2,1,'2024-04-18','Lebih banyak latihan praktis',0,'Perlu Peningkatan'),(92,91,129,5,5,4,'2024-07-20','Baik',1,'Baik'),(93,92,25,2,3,1,'2024-03-05','Tambah materi',0,'Perlu Peningkatan'),(94,93,22,1,5,2,'2024-03-30','Lebih banyak latihan praktis',0,'Cukup Memadai'),(95,94,30,5,5,4,'2024-11-30','Lebih banyak latihan praktis',0,'Baik'),(96,95,95,4,4,4,'2024-10-18','Lebih banyak latihan praktis',0,'Sangat Baik'),(97,96,67,4,2,2,'2024-07-29','Tambah materi',0,'Sangat Baik'),(98,97,33,2,2,2,'2024-10-13','Lebih banyak latihan praktis',0,'Perlu Peningkatan'),(99,98,123,2,3,2,'2024-08-16','Lebih banyak latihan praktis',1,'Perlu Peningkatan'),(100,99,45,3,2,2,'2024-01-12','Baik',0,'Cukup Memadai'),(101,100,77,2,5,5,'2024-06-21','Lebih banyak latihan praktis',0,'Cukup Memadai'),(102,101,11,1,3,1,'2024-05-29','Perbaiki fasilitas',1,'Cukup Memadai'),(103,102,72,2,2,3,'2024-09-29','Baik',1,'Cukup Memadai'),(104,103,3,3,4,2,'2024-02-29','Perbaiki fasilitas',0,'Cukup Memadai'),(105,104,84,3,1,4,'2024-12-24','Perbaiki fasilitas',0,'Sangat Baik'),(106,105,62,2,2,5,'2024-01-25','Lebih banyak latihan praktis',1,'Cukup Memadai'),(107,106,132,4,1,5,'2024-09-09','Baik',0,'Baik'),(108,107,126,1,5,5,'2024-10-24','Lebih banyak latihan praktis',1,'Sangat Baik'),(109,108,97,1,5,2,'2024-11-14','Tambah materi',0,'Perlu Peningkatan'),(110,109,126,3,1,5,'2024-12-02','Lebih banyak latihan praktis',1,'Perlu Peningkatan'),(111,110,148,2,2,4,'2024-02-18','Perbaiki fasilitas',1,'Perlu Peningkatan'),(112,111,43,4,5,4,'2024-08-19','Baik',1,'Cukup Memadai'),(113,112,105,1,1,3,'2024-10-28','Tambah materi',1,'Perlu Peningkatan'),(114,113,76,2,5,2,'2024-07-10','Tambah materi',1,'Cukup Memadai'),(115,114,31,3,1,4,'2024-01-26','Tambah materi',1,'Sangat Baik'),(116,115,12,3,2,3,'2024-07-22','Baik',0,'Baik'),(117,116,66,5,5,3,'2024-05-29','Lebih banyak latihan praktis',0,'Sangat Baik'),(118,117,57,2,4,4,'2024-04-26','Perbaiki fasilitas',1,'Cukup Memadai'),(119,118,68,5,2,1,'2024-06-17','Tambah materi',0,'Perlu Peningkatan'),(120,119,37,4,5,1,'2024-12-07','Perbaiki fasilitas',1,'Baik'),(121,120,105,1,1,4,'2024-05-26','Lebih banyak latihan praktis',0,'Perlu Peningkatan'),(122,121,18,1,3,4,'2024-04-02','Tambah materi',0,'Baik'),(123,122,106,1,5,3,'2024-06-10','Baik',0,'Cukup Memadai'),(124,123,7,3,4,2,'2024-02-21','Tambah materi',0,'Cukup Memadai'),(125,124,52,3,2,4,'2024-10-23','Lebih banyak latihan praktis',1,'Cukup Memadai'),(126,125,48,1,3,4,'2024-10-26','Lebih banyak latihan praktis',0,'Cukup Memadai'),(127,126,101,4,3,5,'2024-07-29','Baik',1,'Cukup Memadai'),(128,127,87,3,1,2,'2024-02-16','Perbaiki fasilitas',1,'Sangat Baik'),(129,128,131,5,5,2,'2024-06-20','Tambah materi',0,'Baik'),(130,129,93,1,2,2,'2024-08-04','Tambah materi',0,'Baik'),(131,130,36,2,2,5,'2024-08-17','Tambah materi',0,'Baik'),(132,131,90,3,2,5,'2024-03-04','Baik',0,'Sangat Baik'),(133,132,137,2,1,2,'2024-09-08','Tambah materi',0,'Sangat Baik'),(134,133,116,2,2,3,'2024-02-02','Lebih banyak latihan praktis',0,'Cukup Memadai'),(135,134,110,1,4,1,'2024-05-10','Tambah materi',0,'Baik'),(136,135,91,1,3,5,'2024-05-11','Perbaiki fasilitas',0,'Sangat Baik'),(137,136,33,1,1,4,'2024-08-24','Lebih banyak latihan praktis',0,'Baik'),(138,137,26,3,4,1,'2024-05-08','Tambah materi',0,'Baik'),(139,138,25,2,3,3,'2024-06-02','Tambah materi',1,'Baik'),(140,139,2,1,3,2,'2024-12-29','Lebih banyak latihan praktis',1,'Perlu Peningkatan'),(141,140,76,4,5,2,'2024-08-27','Tambah materi',1,'Sangat Baik'),(142,141,119,1,3,2,'2024-11-28','Baik',1,'Baik'),(143,142,22,4,4,4,'2024-04-13','Tambah materi',0,'Baik'),(144,143,16,4,5,2,'2024-07-16','Tambah materi',1,'Sangat Baik'),(145,144,147,2,3,3,'2024-07-29','Lebih banyak latihan praktis',1,'Baik'),(146,145,87,2,4,1,'2024-07-08','Lebih banyak latihan praktis',0,'Perlu Peningkatan'),(147,146,62,1,2,3,'2024-07-27','Lebih banyak latihan praktis',0,'Perlu Peningkatan'),(148,147,127,4,2,1,'2024-03-27','Lebih banyak latihan praktis',1,'Sangat Baik'),(149,148,119,3,1,2,'2024-04-01','Lebih banyak latihan praktis',1,'Cukup Memadai'),(150,149,140,5,3,1,'2024-02-29','Baik',0,'Perlu Peningkatan');
/*!40000 ALTER TABLE `EvaluasiPeserta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KategoriTraining`
--

DROP TABLE IF EXISTS `KategoriTraining`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `KategoriTraining` (
  `KategoriID` int NOT NULL,
  `NamaKategori` varchar(50) NOT NULL,
  PRIMARY KEY (`KategoriID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KategoriTraining`
--

LOCK TABLES `KategoriTraining` WRITE;
/*!40000 ALTER TABLE `KategoriTraining` DISABLE KEYS */;
INSERT INTO `KategoriTraining` VALUES (1,'Leadership'),(2,'Soft Skills'),(3,'Management'),(4,'Technical');
/*!40000 ALTER TABLE `KategoriTraining` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Lokasi`
--

DROP TABLE IF EXISTS `Lokasi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Lokasi` (
  `LokasiID` int NOT NULL,
  `NamaLokasi` varchar(50) NOT NULL,
  PRIMARY KEY (`LokasiID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Lokasi`
--

LOCK TABLES `Lokasi` WRITE;
/*!40000 ALTER TABLE `Lokasi` DISABLE KEYS */;
INSERT INTO `Lokasi` VALUES (1,'Medan'),(2,'Jakarta'),(3,'Online'),(4,'Yogyakarta'),(5,'Surabaya'),(6,'Bandung');
/*!40000 ALTER TABLE `Lokasi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MEMatrix`
--

DROP TABLE IF EXISTS `MEMatrix`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MEMatrix` (
  `MatrixID` int NOT NULL,
  `TrainingID` int DEFAULT NULL,
  `EvaluasiPenyelenggaraan` int DEFAULT NULL,
  `EvaluasiPeningkatanKompetensi` int DEFAULT NULL,
  `EvaluasiDampakPerilaku` int DEFAULT NULL,
  `CatatanTambahan` text,
  `UnitKerja` varchar(50) DEFAULT NULL,
  `HasilPostTrainingSurvey` varchar(50) DEFAULT NULL,
  `IndikasiDampak` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`MatrixID`),
  KEY `TrainingID` (`TrainingID`),
  CONSTRAINT `mematrix_ibfk_1` FOREIGN KEY (`TrainingID`) REFERENCES `Training` (`TrainingID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MEMatrix`
--

LOCK TABLES `MEMatrix` WRITE;
/*!40000 ALTER TABLE `MEMatrix` DISABLE KEYS */;
INSERT INTO `MEMatrix` VALUES (1,36,1,3,2,'Perlu Peningkatan','Divisi A','Kurang Berguna','Negatif'),(2,139,2,4,1,'Signifikan','Divisi C','Kurang Berguna','Negatif'),(3,82,3,3,3,'Moderate','Divisi D','Sangat Berguna','Neutral'),(4,116,4,5,1,'Moderate','Divisi D','Kurang Berguna','Positif'),(5,55,3,1,4,'Baik','Divisi C','Kurang Berguna','Neutral'),(6,28,5,5,5,'Signifikan','Divisi C','Berguna','Negatif'),(7,98,1,3,2,'Baik','Divisi B','Kurang Berguna','Positif'),(8,117,2,5,4,'Baik','Divisi B','Kurang Berguna','Negatif'),(9,131,5,2,4,'Baik','Divisi D','Kurang Berguna','Negatif'),(10,42,2,4,2,'Perlu Peningkatan','Divisi C','Sangat Berguna','Neutral'),(11,12,1,2,3,'Signifikan','Divisi C','Berguna','Positif'),(12,115,5,1,5,'Baik','Divisi A','Sangat Berguna','Positif'),(13,82,4,5,1,'Perlu Peningkatan','Divisi A','Kurang Berguna','Positif'),(14,77,3,3,1,'Perlu Peningkatan','Divisi A','Sangat Berguna','Positif'),(15,116,4,1,4,'Moderate','Divisi D','Berguna','Positif'),(16,4,4,1,3,'Signifikan','Divisi D','Berguna','Positif'),(17,70,3,2,3,'Perlu Peningkatan','Divisi C','Sangat Berguna','Neutral'),(18,18,5,4,5,'Moderate','Divisi C','Kurang Berguna','Neutral'),(19,2,2,3,1,'Moderate','Divisi B','Sangat Berguna','Positif'),(20,35,2,1,3,'Perlu Peningkatan','Divisi B','Berguna','Neutral'),(21,61,1,2,3,'Baik','Divisi B','Kurang Berguna','Positif'),(22,91,5,5,5,'Perlu Peningkatan','Divisi D','Berguna','Positif'),(23,69,2,5,3,'Signifikan','Divisi D','Sangat Berguna','Neutral'),(24,34,3,3,4,'Signifikan','Divisi C','Berguna','Negatif'),(25,113,2,4,5,'Signifikan','Divisi D','Berguna','Positif'),(26,53,5,1,4,'Moderate','Divisi D','Sangat Berguna','Negatif'),(27,105,3,2,5,'Perlu Peningkatan','Divisi B','Berguna','Positif'),(28,98,2,4,5,'Perlu Peningkatan','Divisi A','Sangat Berguna','Negatif'),(29,33,1,1,2,'Perlu Peningkatan','Divisi A','Sangat Berguna','Negatif'),(30,97,3,3,4,'Signifikan','Divisi A','Berguna','Positif'),(31,130,2,3,2,'Perlu Peningkatan','Divisi B','Kurang Berguna','Positif'),(32,61,1,1,5,'Baik','Divisi D','Sangat Berguna','Neutral'),(33,124,1,4,5,'Baik','Divisi A','Berguna','Negatif'),(34,24,1,2,5,'Baik','Divisi D','Kurang Berguna','Neutral'),(35,132,1,3,5,'Baik','Divisi A','Sangat Berguna','Neutral'),(36,107,2,3,1,'Baik','Divisi B','Kurang Berguna','Negatif'),(37,24,2,5,1,'Baik','Divisi B','Berguna','Negatif'),(38,65,4,1,5,'Baik','Divisi D','Berguna','Positif'),(39,44,5,1,2,'Signifikan','Divisi D','Berguna','Negatif'),(40,9,3,4,1,'Moderate','Divisi B','Berguna','Negatif'),(41,149,2,3,4,'Signifikan','Divisi C','Sangat Berguna','Positif'),(42,12,4,3,3,'Perlu Peningkatan','Divisi B','Kurang Berguna','Negatif'),(43,27,5,1,5,'Perlu Peningkatan','Divisi A','Kurang Berguna','Neutral'),(44,44,1,3,4,'Moderate','Divisi A','Kurang Berguna','Negatif'),(45,11,3,5,2,'Baik','Divisi D','Kurang Berguna','Neutral'),(46,93,3,4,2,'Perlu Peningkatan','Divisi A','Sangat Berguna','Positif'),(47,22,2,3,5,'Perlu Peningkatan','Divisi C','Sangat Berguna','Neutral'),(48,63,3,4,3,'Baik','Divisi C','Kurang Berguna','Positif'),(49,37,3,3,2,'Perlu Peningkatan','Divisi A','Kurang Berguna','Neutral'),(50,90,2,2,3,'Moderate','Divisi D','Berguna','Negatif'),(51,16,3,5,2,'Perlu Peningkatan','Divisi D','Berguna','Negatif'),(52,33,4,5,3,'Signifikan','Divisi A','Sangat Berguna','Negatif'),(53,7,1,1,5,'Moderate','Divisi C','Kurang Berguna','Positif'),(54,134,3,4,3,'Moderate','Divisi A','Kurang Berguna','Negatif'),(55,28,1,4,2,'Moderate','Divisi A','Kurang Berguna','Negatif'),(56,114,5,1,3,'Moderate','Divisi A','Sangat Berguna','Positif'),(57,139,2,3,4,'Baik','Divisi A','Sangat Berguna','Neutral'),(58,59,4,4,1,'Moderate','Divisi B','Kurang Berguna','Negatif'),(59,22,4,3,2,'Signifikan','Divisi D','Sangat Berguna','Negatif'),(60,91,4,3,3,'Moderate','Divisi A','Sangat Berguna','Neutral'),(61,7,2,3,2,'Signifikan','Divisi D','Berguna','Neutral'),(62,62,5,4,2,'Perlu Peningkatan','Divisi D','Kurang Berguna','Positif'),(63,54,2,3,2,'Perlu Peningkatan','Divisi A','Kurang Berguna','Negatif'),(64,17,5,4,5,'Perlu Peningkatan','Divisi A','Kurang Berguna','Positif'),(65,12,1,4,1,'Signifikan','Divisi C','Berguna','Neutral'),(66,113,1,4,3,'Perlu Peningkatan','Divisi B','Sangat Berguna','Negatif'),(67,74,2,4,4,'Signifikan','Divisi A','Kurang Berguna','Negatif'),(68,33,1,1,5,'Perlu Peningkatan','Divisi C','Berguna','Negatif'),(69,52,5,4,2,'Signifikan','Divisi D','Sangat Berguna','Positif'),(70,3,2,5,3,'Baik','Divisi A','Kurang Berguna','Neutral'),(71,43,4,1,1,'Baik','Divisi B','Berguna','Neutral'),(72,8,1,5,4,'Perlu Peningkatan','Divisi C','Berguna','Negatif'),(73,2,2,5,1,'Perlu Peningkatan','Divisi C','Berguna','Positif'),(74,78,2,5,5,'Signifikan','Divisi C','Sangat Berguna','Positif'),(75,95,2,1,2,'Perlu Peningkatan','Divisi B','Kurang Berguna','Positif'),(76,125,5,1,2,'Moderate','Divisi A','Berguna','Negatif'),(77,112,3,2,4,'Signifikan','Divisi C','Sangat Berguna','Negatif'),(78,43,1,1,1,'Signifikan','Divisi A','Kurang Berguna','Neutral'),(79,29,1,3,2,'Baik','Divisi D','Kurang Berguna','Negatif'),(80,103,2,3,4,'Perlu Peningkatan','Divisi C','Berguna','Positif'),(81,99,3,4,5,'Signifikan','Divisi B','Sangat Berguna','Neutral'),(82,148,5,4,4,'Signifikan','Divisi C','Kurang Berguna','Neutral'),(83,103,3,5,4,'Perlu Peningkatan','Divisi C','Berguna','Neutral'),(84,60,5,3,1,'Perlu Peningkatan','Divisi A','Sangat Berguna','Negatif'),(85,60,4,1,2,'Perlu Peningkatan','Divisi D','Sangat Berguna','Positif'),(86,89,5,4,5,'Moderate','Divisi B','Kurang Berguna','Negatif'),(87,81,5,4,1,'Baik','Divisi D','Kurang Berguna','Neutral'),(88,22,5,5,1,'Baik','Divisi B','Kurang Berguna','Neutral'),(89,55,5,3,4,'Signifikan','Divisi C','Berguna','Positif'),(90,135,5,2,2,'Signifikan','Divisi C','Berguna','Positif'),(91,73,1,3,4,'Signifikan','Divisi C','Sangat Berguna','Neutral'),(92,26,4,5,1,'Baik','Divisi C','Sangat Berguna','Negatif'),(93,20,2,2,1,'Baik','Divisi B','Kurang Berguna','Neutral'),(94,75,2,3,5,'Baik','Divisi A','Sangat Berguna','Positif'),(95,88,1,4,1,'Perlu Peningkatan','Divisi D','Kurang Berguna','Positif'),(96,103,3,5,1,'Signifikan','Divisi B','Berguna','Neutral'),(97,147,2,1,1,'Signifikan','Divisi B','Kurang Berguna','Positif'),(98,136,1,3,4,'Baik','Divisi A','Berguna','Neutral'),(99,13,4,5,2,'Perlu Peningkatan','Divisi C','Sangat Berguna','Neutral'),(100,146,1,2,3,'Baik','Divisi A','Berguna','Negatif'),(101,90,2,3,5,'Moderate','Divisi D','Kurang Berguna','Positif'),(102,43,5,2,3,'Signifikan','Divisi A','Kurang Berguna','Positif'),(103,97,4,3,3,'Moderate','Divisi C','Sangat Berguna','Negatif'),(104,22,3,3,1,'Baik','Divisi C','Berguna','Negatif'),(105,99,1,2,1,'Baik','Divisi C','Kurang Berguna','Negatif'),(106,30,4,5,1,'Moderate','Divisi C','Kurang Berguna','Neutral'),(107,125,5,5,2,'Perlu Peningkatan','Divisi C','Berguna','Positif'),(108,119,1,4,3,'Moderate','Divisi D','Berguna','Negatif'),(109,83,5,3,1,'Signifikan','Divisi C','Sangat Berguna','Negatif'),(110,2,3,2,4,'Baik','Divisi C','Kurang Berguna','Positif'),(111,43,2,3,2,'Perlu Peningkatan','Divisi D','Berguna','Neutral'),(112,97,3,1,1,'Perlu Peningkatan','Divisi D','Kurang Berguna','Positif'),(113,1,3,2,5,'Moderate','Divisi A','Berguna','Neutral'),(114,122,1,4,2,'Signifikan','Divisi B','Berguna','Negatif'),(115,85,5,4,1,'Perlu Peningkatan','Divisi D','Kurang Berguna','Positif'),(116,58,5,1,1,'Perlu Peningkatan','Divisi C','Kurang Berguna','Negatif'),(117,10,5,3,3,'Perlu Peningkatan','Divisi D','Kurang Berguna','Negatif'),(118,66,5,1,1,'Moderate','Divisi A','Berguna','Neutral'),(119,120,1,3,3,'Moderate','Divisi C','Kurang Berguna','Neutral'),(120,45,1,4,1,'Moderate','Divisi B','Berguna','Positif'),(121,116,5,2,2,'Signifikan','Divisi C','Berguna','Neutral'),(122,39,3,4,4,'Moderate','Divisi B','Sangat Berguna','Negatif'),(123,28,5,1,5,'Moderate','Divisi B','Kurang Berguna','Positif'),(124,3,1,3,1,'Baik','Divisi C','Kurang Berguna','Neutral'),(125,66,3,5,5,'Baik','Divisi B','Berguna','Positif'),(126,23,4,1,3,'Baik','Divisi B','Sangat Berguna','Negatif'),(127,90,4,4,1,'Perlu Peningkatan','Divisi C','Sangat Berguna','Positif'),(128,140,4,5,5,'Moderate','Divisi D','Sangat Berguna','Negatif'),(129,143,4,4,5,'Baik','Divisi D','Berguna','Positif'),(130,34,4,1,2,'Baik','Divisi D','Kurang Berguna','Negatif'),(131,143,2,2,2,'Baik','Divisi A','Sangat Berguna','Negatif'),(132,128,1,4,1,'Moderate','Divisi C','Kurang Berguna','Neutral'),(133,104,2,5,4,'Signifikan','Divisi B','Kurang Berguna','Negatif'),(134,65,1,1,2,'Perlu Peningkatan','Divisi A','Sangat Berguna','Negatif'),(135,73,2,4,1,'Perlu Peningkatan','Divisi C','Sangat Berguna','Positif'),(136,86,5,1,2,'Baik','Divisi B','Sangat Berguna','Neutral'),(137,137,4,5,3,'Signifikan','Divisi B','Berguna','Negatif'),(138,13,2,2,2,'Moderate','Divisi B','Berguna','Negatif'),(139,48,2,3,1,'Baik','Divisi A','Kurang Berguna','Positif'),(140,100,4,2,2,'Baik','Divisi D','Sangat Berguna','Neutral'),(141,103,5,4,5,'Baik','Divisi C','Sangat Berguna','Positif'),(142,32,2,4,2,'Perlu Peningkatan','Divisi D','Sangat Berguna','Negatif'),(143,111,5,5,1,'Baik','Divisi B','Sangat Berguna','Neutral'),(144,6,3,2,4,'Perlu Peningkatan','Divisi C','Sangat Berguna','Neutral'),(145,20,5,3,4,'Signifikan','Divisi B','Berguna','Positif'),(146,68,1,1,4,'Moderate','Divisi B','Kurang Berguna','Neutral'),(147,95,1,3,4,'Perlu Peningkatan','Divisi D','Berguna','Positif'),(148,93,5,3,2,'Baik','Divisi C','Sangat Berguna','Positif'),(149,145,5,4,4,'Moderate','Divisi B','Sangat Berguna','Positif'),(150,99,2,2,1,'Baik','Divisi B','Kurang Berguna','Negatif');
/*!40000 ALTER TABLE `MEMatrix` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Pengajar`
--

DROP TABLE IF EXISTS `Pengajar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Pengajar` (
  `PengajarID` int NOT NULL,
  `NamaPengajar` varchar(100) NOT NULL,
  PRIMARY KEY (`PengajarID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pengajar`
--

LOCK TABLES `Pengajar` WRITE;
/*!40000 ALTER TABLE `Pengajar` DISABLE KEYS */;
INSERT INTO `Pengajar` VALUES (1,'Gantar Anggriawan'),(2,'Ophelia Tarihoran'),(3,'R.M. Ibun Budiyanto, S.H.'),(4,'Tgk. Bagiya Najmudin'),(5,'Wadi Uwais'),(6,'Luhung Rajasa'),(7,'Mulyono Marpaung'),(8,'Lidya Narpati'),(9,'R.A. Patricia Yulianti'),(10,'Qori Prasasta'),(11,'Wani Hutagalung'),(12,'Gilda Ramadan'),(13,'Ir. Ghaliyati Marpaung'),(14,'Rama Ramadan, M.Farm'),(15,'Raihan Hutasoit'),(16,'Dt. Artawan Kuswoyo, S.I.Kom'),(17,'Omar Hardiansyah, M.Ak'),(18,'Gaiman Farida'),(19,'Dian Suartini'),(20,'Tantri Wulandari'),(21,'Kawaca Samosir'),(22,'Ibrani Hariyah'),(23,'Tgk. Karsana Palastri'),(24,'Samiah Yulianti, S.Ked'),(25,'Ihsan Kusumo'),(26,'Raden Rahmawati'),(27,'Anastasia Padmasari'),(28,'Kardi Wibisono'),(29,'Cahya Purnawati'),(30,'Luwes Sitompul'),(31,'Laras Padmasari'),(32,'Luhung Nugroho, S.Ked'),(33,'Gaduh Hariyah'),(34,'Artawan Pradipta'),(35,'Mustofa Laksmiwati'),(36,'Maya Haryanti'),(37,'Citra Padmasari'),(38,'Jayadi Puspita'),(39,'Drs. Marsito Rajasa'),(40,'Kardi Tampubolon'),(41,'Septi Salahudin, S.H.'),(42,'Mulyanto Gunarto'),(43,'Malika Hidayanto, S.IP'),(44,'Mujur Sitorus, S.Gz'),(45,'Gandi Sitompul'),(46,'Rahmi Samosir'),(47,'Puti Gunawan'),(48,'Ir. Tami Fujiati, M.Farm'),(49,'Koko Puspita'),(50,'Gawati Siregar'),(51,'Jayadi Nainggolan, M.Kom.'),(52,'Yani Widiastuti, S.Psi'),(53,'Balidin Puspita'),(54,'Wulan Yolanda'),(55,'Martaka Hutapea, S.T.'),(56,'Lasmanto Siregar'),(57,'R. Silvia Waskita'),(58,'Kartika Hariyah, S.Farm'),(59,'Gangsar Siregar'),(60,'H. Gilang Hutasoit, M.Farm'),(61,'Winda Suartini'),(62,'Dodo Yolanda'),(63,'Limar Sitorus'),(64,'Gina Jailani'),(65,'Hendri Sitompul, S.Gz'),(66,'Sabri Wahyuni'),(67,'Citra Wacana'),(68,'Raina Kusumo'),(69,'Ozy Dongoran'),(70,'Raden Wibisono'),(71,'drg. Intan Pradana, S.Kom'),(72,'Jessica Oktaviani'),(73,'Garang Uwais'),(74,'R.A. Carla Nasyidah, S.E.'),(75,'Sutan Ismail Budiman'),(76,'Rika Nugroho, S.H.'),(77,'Kiandra Winarno'),(78,'Tgk. Aisyah Permata'),(79,'Adika Putra, M.Pd'),(80,'Ella Hidayat'),(81,'Dadi Suartini'),(82,'R.A. Pia Tamba'),(83,'Titin Haryanti, S.E.I'),(84,'Drs. Eka Palastri, M.Pd'),(85,'Janet Nugroho'),(86,'Bakianto Pudjiastuti'),(87,'Zahra Anggriawan'),(88,'Amalia Firmansyah'),(89,'Titin Wijayanti'),(90,'Saka Thamrin'),(91,'Darimin Setiawan'),(92,'Umi Kurniawan, S.Farm'),(93,'Estiono Padmasari, S.Psi'),(94,'R. Putu Astuti'),(95,'Vanya Utama'),(96,'Hasta Halim'),(97,'Sabrina Agustina'),(98,'Jasmin Rahmawati'),(99,'Bakda Mustofa'),(100,'Intan Nainggolan'),(101,'Hilda Dabukke'),(102,'Maryanto Maryati'),(103,'Mitra Maryadi'),(104,'Ira Permadi'),(105,'Laras Adriansyah'),(106,'Tedi Maheswara'),(107,'Dt. Pangestu Hidayat, S.I.Kom'),(108,'Cindy Salahudin'),(109,'Belinda Wacana'),(110,'Hasim Rajasa, S.Gz'),(111,'Drs. Maimunah Wibisono, M.Pd'),(112,'Patricia Samosir'),(113,'dr. Farah Anggraini, M.Pd'),(114,'Ian Widiastuti'),(115,'Purwa Nuraini'),(116,'Irma Santoso'),(117,'Pia Wijaya'),(118,'R. Intan Adriansyah, M.Ak'),(119,'Aswani Haryanti'),(120,'Aurora Puspasari'),(121,'Omar Sihotang'),(122,'Dr. Karimah Ardianto'),(123,'Alika Marpaung'),(124,'Maida Usamah'),(125,'Aditya Damanik, S.E.'),(126,'Lukita Prasasta, M.Farm'),(127,'Vera Nugroho'),(128,'Omar Suwarno, S.Pd'),(129,'Gandewa Sihombing'),(130,'Dr. Niyaga Padmasari, S.Pt'),(131,'Cakrabirawa Pradipta'),(132,'Patricia Saefullah, S.H.'),(133,'Elisa Ardianto'),(134,'Dalima Andriani'),(135,'Rina Pertiwi'),(136,'Paramita Wahyuni'),(137,'dr. Galih Hidayat'),(138,'Ade Winarsih, S.Gz'),(139,'Ella Marpaung'),(140,'Fitriani Habibi'),(141,'Ir. Ina Melani'),(142,'drg. Yani Pradana, S.E.'),(143,'Danang Tarihoran'),(144,'Kala Putra'),(145,'Uli Farida'),(146,'H. Kawaca Wibowo'),(147,'Dr. Asmuni Iswahyudi, S.Psi'),(148,'R. Usman Simanjuntak'),(149,'dr. Farhunnisa Yuliarti, M.Kom.'),(150,'Dacin Prasetyo');
/*!40000 ALTER TABLE `Pengajar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Peserta`
--

DROP TABLE IF EXISTS `Peserta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Peserta` (
  `PesertaID` int NOT NULL,
  `NamaPeserta` varchar(100) NOT NULL,
  PRIMARY KEY (`PesertaID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Peserta`
--

LOCK TABLES `Peserta` WRITE;
/*!40000 ALTER TABLE `Peserta` DISABLE KEYS */;
INSERT INTO `Peserta` VALUES (1,'Nova Andriani, S.Pd'),(2,'Nrima Santoso'),(3,'H. Garan Halimah'),(4,'Cici Laksita'),(5,'Puji Tarihoran'),(6,'Paris Nasyidah'),(7,'Najib Palastri'),(8,'Adiarja Mulyani'),(9,'Usman Permata'),(10,'KH. Kawaca Rajasa'),(11,'Digdaya Utami'),(12,'Slamet Nainggolan'),(13,'Ida Damanik'),(14,'Cut Jane Haryanti'),(15,'Farah Sitompul'),(16,'Puti Nilam Uyainah'),(17,'Wani Maryati'),(18,'Gamblang Prastuti'),(19,'Adika Suryono'),(20,'drg. Mahesa Thamrin'),(21,'Gatra Melani'),(22,'Dr. Anita Mustofa'),(23,'Tugiman Hutapea'),(24,'Samiah Hastuti, S.Psi'),(25,'drg. Jelita Tarihoran'),(26,'dr. Ihsan Situmorang'),(27,'Kasiran Budiyanto'),(28,'Dr. Karimah Sudiati'),(29,'Wakiman Pranowo'),(30,'Dadi Nasyiah'),(31,'Ir. Icha Lazuardi'),(32,'drg. Vanesa Setiawan, S.T.'),(33,'Hilda Melani, M.Kom.'),(34,'Bakda Purnawati'),(35,'Drs. Oskar Siregar, S.Ked'),(36,'H. Wadi Tarihoran, M.Farm'),(37,'dr. Jefri Rajata'),(38,'Gatra Mansur'),(39,'Putu Nasyidah'),(40,'Dt. Baktianto Hidayat'),(41,'Dirja Marpaung'),(42,'Silvia Pradana'),(43,'Puti Janet Maryati, M.Pd'),(44,'Kenes Mahendra'),(45,'Drs. Clara Pertiwi'),(46,'KH. Gandi Adriansyah'),(47,'Ratih Wijayanti'),(48,'drg. Cahyanto Wijaya'),(49,'Lalita Simbolon'),(50,'drg. Rafid Mandasari'),(51,'Galiono Prasasta, S.Psi'),(52,'Rika Yuliarti'),(53,'T. Kuncara Puspita, S.Pt'),(54,'Edi Wahyuni, S.Kom'),(55,'Cawuk Mahendra'),(56,'Kacung Kuswandari, S.E.'),(57,'Padma Padmasari, M.Kom.'),(58,'Karimah Usamah'),(59,'R.A. Dalima Latupono'),(60,'Dina Jailani'),(61,'Maria Pertiwi'),(62,'dr. Gara Zulaika'),(63,'Rendy Wasita, S.Ked'),(64,'Rama Melani'),(65,'Kurnia Nababan'),(66,'Setya Pudjiastuti'),(67,'R. Kartika Prayoga'),(68,'Wawan Thamrin'),(69,'Empluk Hidayat'),(70,'Lulut Riyanti, M.Ak'),(71,'Putri Hassanah, S.IP'),(72,'drg. Jamalia Yulianti, M.Kom.'),(73,'Indra Waskita'),(74,'Salsabila Wastuti'),(75,'Gaman Mulyani'),(76,'Luhung Thamrin'),(77,'Hj. Vanya Ramadan'),(78,'Vanesa Gunarto'),(79,'drg. Sakura Firgantoro'),(80,'Victoria Putra'),(81,'Drs. Dadi Nashiruddin, S.Farm'),(82,'Suci Iswahyudi'),(83,'Darimin Pranowo'),(84,'Nrima Maryadi'),(85,'Anita Suartini, S.Pt'),(86,'H. Drajat Ramadan'),(87,'R.A. Laila Nasyiah, M.Pd'),(88,'Jaswadi Utama'),(89,'Lurhur Saefullah'),(90,'Warji Ardianto'),(91,'Balamantri Putra'),(92,'Dr. Tania Latupono'),(93,'Vera Tarihoran'),(94,'Tina Kusmawati'),(95,'Febi Narpati'),(96,'Drs. Eluh Suryatmi, S.IP'),(97,'Indah Siregar'),(98,'Malika Sihombing'),(99,'Novi Hastuti'),(100,'Karen Prayoga'),(101,'Yance Mansur'),(102,'Eko Wastuti'),(103,'drg. Ibrani Riyanti'),(104,'Harjasa Rajasa, M.Kom.'),(105,'Cut Tira Gunawan, S.Sos'),(106,'Paramita Pradana'),(107,'Dr. Harjaya Prakasa, M.TI.'),(108,'Nugraha Aryani'),(109,'Ajiono Halim'),(110,'Hartana Saefullah'),(111,'Mahesa Kuswoyo'),(112,'Niyaga Dongoran'),(113,'Ir. Citra Laksita, M.M.'),(114,'Melinda Laksita'),(115,'Gina Uwais'),(116,'R.A. Umi Budiyanto, S.Gz'),(117,'Hj. Unjani Jailani, S.Farm'),(118,'T. Luhung Mustofa, M.Farm'),(119,'Puti Nova Dongoran'),(120,'Mujur Saptono'),(121,'R. Amalia Iswahyudi, S.Ked'),(122,'Ulva Ramadan'),(123,'Dimas Januar, M.M.'),(124,'Vivi Handayani'),(125,'Kenzie Nashiruddin'),(126,'Ismail Dongoran'),(127,'Hartana Hastuti, M.Kom.'),(128,'Viman Mayasari, S.T.'),(129,'Uda Waluyo'),(130,'Violet Siregar'),(131,'Chelsea Rahayu, S.H.'),(132,'Najwa Rahimah'),(133,'Laras Marbun'),(134,'Nabila Padmasari'),(135,'Hj. Safina Siregar, M.Ak'),(136,'Adiarja Napitupulu'),(137,'Embuh Permadi, S.E.I'),(138,'Ira Purnawati'),(139,'Sakti Siregar'),(140,'Kunthara Wastuti'),(141,'Galar Usada'),(142,'Ulva Hidayanto'),(143,'Lukman Melani'),(144,'Chandra Pudjiastuti'),(145,'H. Asmianto Setiawan'),(146,'dr. Raisa Santoso'),(147,'R.A. Ira Pradipta'),(148,'Nugraha Saragih'),(149,'Timbul Siregar'),(150,'Hendra Rajasa, S.Farm');
/*!40000 ALTER TABLE `Peserta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Status`
--

DROP TABLE IF EXISTS `Status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Status` (
  `StatusID` int NOT NULL,
  `NamaStatus` varchar(50) NOT NULL,
  PRIMARY KEY (`StatusID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Status`
--

LOCK TABLES `Status` WRITE;
/*!40000 ALTER TABLE `Status` DISABLE KEYS */;
INSERT INTO `Status` VALUES (1,'Cancelled'),(2,'Ongoing'),(3,'Completed');
/*!40000 ALTER TABLE `Status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Training`
--

DROP TABLE IF EXISTS `Training`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Training` (
  `TrainingID` int NOT NULL,
  `NamaTraining` varchar(100) NOT NULL,
  `KategoriID` int DEFAULT NULL,
  `TanggalMulai` date DEFAULT NULL,
  `TanggalSelesai` date DEFAULT NULL,
  `LokasiID` int DEFAULT NULL,
  `Budget` decimal(15,2) DEFAULT NULL,
  `Tahun` int DEFAULT NULL,
  `StatusID` int DEFAULT NULL,
  `JumlahPeserta` int DEFAULT NULL,
  `JumlahPengajar` int DEFAULT NULL,
  `DepartmentID` int DEFAULT NULL,
  PRIMARY KEY (`TrainingID`),
  KEY `KategoriID` (`KategoriID`),
  KEY `LokasiID` (`LokasiID`),
  KEY `StatusID` (`StatusID`),
  KEY `DepartmentID` (`DepartmentID`),
  CONSTRAINT `training_ibfk_1` FOREIGN KEY (`KategoriID`) REFERENCES `KategoriTraining` (`KategoriID`),
  CONSTRAINT `training_ibfk_2` FOREIGN KEY (`LokasiID`) REFERENCES `Lokasi` (`LokasiID`),
  CONSTRAINT `training_ibfk_3` FOREIGN KEY (`StatusID`) REFERENCES `Status` (`StatusID`),
  CONSTRAINT `training_ibfk_4` FOREIGN KEY (`DepartmentID`) REFERENCES `Department` (`DepartmentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Training`
--

LOCK TABLES `Training` WRITE;
/*!40000 ALTER TABLE `Training` DISABLE KEYS */;
INSERT INTO `Training` VALUES (1,'Technical Skills',1,'2024-09-10','2024-01-06',1,43231519.00,2024,1,27,4,1),(2,'Customer Service',2,'2024-01-28','2024-01-11',2,13240056.00,2024,2,10,5,2),(3,'Leadership',3,'2024-12-25','2024-01-07',1,35789867.00,2024,2,25,5,2),(4,'Leadership',3,'2024-04-27','2024-01-07',3,5733679.00,2024,3,14,3,2),(5,'Management',3,'2024-08-06','2024-01-03',2,22475645.00,2024,3,38,4,3),(6,'Team Building',3,'2024-05-07','2024-01-05',4,26152402.00,2024,3,29,4,4),(7,'Customer Service',2,'2024-03-25','2024-01-03',1,11504947.00,2024,1,31,2,4),(8,'Leadership',4,'2024-05-13','2024-01-04',1,35816580.00,2024,1,38,5,4),(9,'Customer Service',1,'2024-07-30','2024-01-09',1,9809908.00,2024,1,42,1,4),(10,'Management',1,'2024-12-29','2024-01-04',1,47082571.00,2024,3,35,1,2),(11,'Customer Service',2,'2024-10-24','2024-01-05',3,24964308.00,2024,1,26,4,5),(12,'Team Building',1,'2024-02-22','2024-01-06',4,36039562.00,2024,2,16,5,5),(13,'Leadership',4,'2024-12-28','2024-01-08',1,36135856.00,2024,1,22,1,4),(14,'Management',3,'2024-01-24','2024-01-08',2,8191838.00,2024,1,14,3,2),(15,'Leadership',3,'2024-02-16','2024-01-04',5,7824662.00,2024,1,38,4,4),(16,'Leadership',2,'2024-03-18','2024-01-04',3,11857500.00,2024,3,19,4,3),(17,'Team Building',4,'2024-10-13','2024-01-10',4,22955504.00,2024,3,32,2,3),(18,'Team Building',1,'2024-06-23','2024-01-08',1,8483153.00,2024,1,23,5,2),(19,'Team Building',4,'2024-10-06','2024-01-10',3,46035160.00,2024,2,29,2,4),(20,'Team Building',4,'2024-12-18','2024-01-05',1,10224270.00,2024,3,22,1,5),(21,'Customer Service',4,'2024-05-28','2024-01-10',3,19572416.00,2024,2,36,1,5),(22,'Management',3,'2024-08-05','2024-01-09',5,15827676.00,2024,3,33,5,4),(23,'Customer Service',4,'2024-04-10','2024-01-08',3,25964110.00,2024,2,10,1,2),(24,'Leadership',4,'2024-02-03','2024-01-05',4,18822540.00,2024,1,25,5,1),(25,'Management',3,'2024-07-20','2024-01-10',4,11772604.00,2024,2,49,2,5),(26,'Management',1,'2024-04-26','2024-01-03',1,7598187.00,2024,1,43,2,4),(27,'Leadership',3,'2024-02-16','2024-01-03',4,44867009.00,2024,3,28,5,5),(28,'Customer Service',1,'2024-11-10','2024-01-06',1,5037279.00,2024,3,43,3,1),(29,'Leadership',4,'2024-05-20','2024-01-04',1,39917106.00,2024,1,17,3,4),(30,'Customer Service',2,'2024-03-28','2024-01-06',2,48292727.00,2024,1,26,5,1),(31,'Team Building',4,'2024-06-06','2024-01-08',6,46433673.00,2024,3,11,3,1),(32,'Leadership',2,'2024-02-24','2024-01-11',3,30337991.00,2024,1,22,2,2),(33,'Management',1,'2024-10-15','2024-01-08',1,11080365.00,2024,1,37,3,1),(34,'Technical Skills',3,'2024-08-05','2024-01-10',1,43746861.00,2024,2,38,2,5),(35,'Technical Skills',2,'2024-11-23','2024-01-09',2,10921705.00,2024,2,13,3,3),(36,'Leadership',2,'2024-01-25','2024-01-03',2,9884046.00,2024,1,14,3,4),(37,'Management',4,'2024-01-31','2024-01-10',4,42364642.00,2024,1,49,2,2),(38,'Leadership',1,'2024-05-31','2024-01-06',5,6502407.00,2024,3,47,2,5),(39,'Team Building',1,'2024-08-21','2024-01-04',2,28480456.00,2024,2,44,3,4),(40,'Management',3,'2024-08-17','2024-01-08',4,29116723.00,2024,1,41,5,4),(41,'Leadership',2,'2024-08-22','2024-01-08',2,9396571.00,2024,1,43,4,1),(42,'Leadership',4,'2024-12-26','2024-01-11',5,16164271.00,2024,1,16,1,1),(43,'Customer Service',4,'2024-03-20','2024-01-11',2,7495059.00,2024,3,45,2,2),(44,'Team Building',4,'2024-11-02','2024-01-06',6,34606453.00,2024,3,15,4,5),(45,'Technical Skills',4,'2024-10-02','2024-01-06',4,8941067.00,2024,1,25,4,3),(46,'Team Building',4,'2024-05-16','2024-01-03',3,5415173.00,2024,1,46,3,2),(47,'Leadership',1,'2024-01-24','2024-01-06',1,22471466.00,2024,1,49,4,4),(48,'Customer Service',3,'2024-09-08','2024-01-09',2,45569650.00,2024,2,21,1,3),(49,'Leadership',3,'2024-03-21','2024-01-03',1,20753824.00,2024,2,30,2,1),(50,'Customer Service',3,'2024-04-06','2024-01-05',5,29626523.00,2024,1,16,2,3),(51,'Customer Service',1,'2024-08-16','2024-01-05',5,6520730.00,2024,1,38,5,1),(52,'Team Building',2,'2024-08-07','2024-01-05',5,38853936.00,2024,1,18,2,4),(53,'Customer Service',4,'2024-06-16','2024-01-06',6,45661806.00,2024,2,40,1,3),(54,'Management',2,'2024-01-06','2024-01-04',5,6442890.00,2024,1,46,2,3),(55,'Customer Service',2,'2024-06-05','2024-01-04',2,36091240.00,2024,3,15,3,5),(56,'Customer Service',1,'2024-08-09','2024-01-05',2,13326018.00,2024,3,50,4,2),(57,'Management',3,'2024-06-20','2024-01-10',4,11050518.00,2024,2,41,5,5),(58,'Management',4,'2024-08-02','2024-01-09',4,38910889.00,2024,3,41,4,2),(59,'Management',3,'2024-12-24','2024-01-05',5,12875116.00,2024,1,32,1,3),(60,'Team Building',3,'2024-03-31','2024-01-03',5,34242788.00,2024,2,16,3,4),(61,'Customer Service',2,'2024-04-18','2024-01-09',5,14499678.00,2024,2,47,5,4),(62,'Leadership',1,'2024-06-03','2024-01-10',5,9578149.00,2024,2,17,2,2),(63,'Customer Service',1,'2024-07-08','2024-01-07',2,38464102.00,2024,2,37,3,3),(64,'Leadership',2,'2024-11-10','2024-01-11',5,27127870.00,2024,1,25,4,1),(65,'Management',2,'2024-09-06','2024-01-04',1,31977269.00,2024,2,36,3,3),(66,'Leadership',4,'2024-06-28','2024-01-11',1,35054566.00,2024,2,33,4,3),(67,'Management',4,'2024-06-23','2024-01-04',3,8381897.00,2024,2,12,3,1),(68,'Leadership',3,'2024-04-27','2024-01-09',5,5620007.00,2024,2,37,5,2),(69,'Technical Skills',2,'2024-09-27','2024-01-03',5,47135749.00,2024,1,40,5,4),(70,'Management',4,'2024-06-01','2024-01-06',5,40074182.00,2024,1,40,1,4),(71,'Technical Skills',4,'2024-01-15','2024-01-03',6,21402342.00,2024,1,30,5,1),(72,'Leadership',3,'2024-09-25','2024-01-10',2,7850290.00,2024,2,24,4,3),(73,'Customer Service',4,'2024-04-28','2024-01-09',2,23531808.00,2024,1,12,5,1),(74,'Leadership',1,'2024-10-15','2024-01-04',2,32294503.00,2024,3,22,5,5),(75,'Customer Service',2,'2024-11-27','2024-01-09',1,17092074.00,2024,3,25,1,1),(76,'Technical Skills',4,'2024-05-28','2024-01-06',1,35671982.00,2024,2,45,5,1),(77,'Management',1,'2024-04-15','2024-01-09',3,25850340.00,2024,2,39,5,4),(78,'Management',3,'2024-05-31','2024-01-08',6,32240342.00,2024,1,27,5,2),(79,'Customer Service',1,'2024-10-20','2024-01-11',3,40086357.00,2024,1,32,3,4),(80,'Leadership',1,'2024-06-22','2024-01-06',6,25760253.00,2024,2,21,3,4),(81,'Management',2,'2024-02-02','2024-01-10',3,17572941.00,2024,3,35,1,4),(82,'Technical Skills',4,'2024-01-07','2024-01-11',5,21847718.00,2024,2,10,2,2),(83,'Technical Skills',2,'2024-10-19','2024-01-11',5,41692253.00,2024,1,16,1,1),(84,'Team Building',2,'2024-08-29','2024-01-05',2,19753023.00,2024,2,41,1,4),(85,'Leadership',4,'2024-07-10','2024-01-05',5,41627062.00,2024,1,15,3,3),(86,'Leadership',4,'2024-02-16','2024-01-08',1,21634750.00,2024,2,13,5,3),(87,'Team Building',3,'2024-10-05','2024-01-07',6,21762078.00,2024,2,29,2,3),(88,'Leadership',1,'2024-09-14','2024-01-03',6,41678459.00,2024,2,46,4,4),(89,'Customer Service',4,'2024-05-23','2024-01-10',6,10774117.00,2024,1,15,1,5),(90,'Technical Skills',2,'2024-07-02','2024-01-04',1,5083620.00,2024,3,34,1,1),(91,'Customer Service',2,'2024-11-21','2024-01-04',5,26127307.00,2024,1,30,1,1),(92,'Customer Service',1,'2024-01-31','2024-01-11',2,16600450.00,2024,2,50,3,5),(93,'Technical Skills',1,'2024-02-25','2024-01-07',4,19975348.00,2024,3,50,3,4),(94,'Customer Service',1,'2024-05-14','2024-01-05',6,29727643.00,2024,3,38,2,2),(95,'Management',3,'2024-06-13','2024-01-08',1,40571817.00,2024,1,39,1,1),(96,'Leadership',2,'2024-04-28','2024-01-10',3,19752734.00,2024,2,34,5,5),(97,'Leadership',1,'2024-02-15','2024-01-07',1,27669094.00,2024,3,46,2,3),(98,'Customer Service',2,'2024-10-31','2024-01-03',4,7517299.00,2024,2,22,4,1),(99,'Leadership',3,'2024-06-02','2024-01-11',6,37325754.00,2024,1,23,4,1),(100,'Leadership',1,'2024-09-07','2024-01-03',5,43993967.00,2024,1,47,1,3),(101,'Technical Skills',3,'2024-04-27','2024-01-06',6,34831368.00,2024,1,23,3,5),(102,'Technical Skills',2,'2024-01-04','2024-01-04',6,31566895.00,2024,1,36,2,3),(103,'Team Building',3,'2024-11-19','2024-01-05',5,23189686.00,2024,2,26,5,2),(104,'Technical Skills',2,'2024-12-16','2024-01-09',3,28859722.00,2024,2,35,5,3),(105,'Customer Service',1,'2024-07-29','2024-01-10',2,12210619.00,2024,3,40,3,3),(106,'Technical Skills',1,'2024-04-11','2024-01-03',1,38818878.00,2024,2,26,1,3),(107,'Team Building',3,'2024-03-07','2024-01-10',4,16551010.00,2024,2,23,4,2),(108,'Team Building',2,'2024-09-04','2024-01-06',2,41924061.00,2024,2,14,3,1),(109,'Leadership',4,'2024-08-14','2024-01-07',1,28717532.00,2024,3,21,1,1),(110,'Technical Skills',3,'2024-08-02','2024-01-10',6,46073840.00,2024,1,19,5,5),(111,'Leadership',4,'2024-01-26','2024-01-08',5,34831204.00,2024,1,44,1,4),(112,'Management',2,'2024-01-02','2024-01-08',5,40327602.00,2024,2,13,1,5),(113,'Leadership',2,'2024-08-03','2024-01-08',3,47163218.00,2024,2,43,2,4),(114,'Leadership',2,'2024-12-27','2024-01-09',6,29830128.00,2024,2,25,4,2),(115,'Leadership',1,'2024-07-02','2024-01-04',5,26869045.00,2024,3,23,5,1),(116,'Leadership',3,'2024-11-17','2024-01-05',6,6910770.00,2024,2,46,5,3),(117,'Technical Skills',4,'2024-08-21','2024-01-08',3,14211343.00,2024,3,24,4,4),(118,'Technical Skills',2,'2024-07-28','2024-01-04',1,34048472.00,2024,3,19,3,5),(119,'Leadership',4,'2024-12-18','2024-01-03',6,36269344.00,2024,2,36,5,2),(120,'Leadership',1,'2024-03-09','2024-01-11',5,39347271.00,2024,1,18,5,2),(121,'Leadership',1,'2024-06-29','2024-01-05',1,39226265.00,2024,2,34,2,3),(122,'Leadership',2,'2024-12-22','2024-01-06',6,40646063.00,2024,2,28,5,5),(123,'Customer Service',1,'2024-02-07','2024-01-10',1,48585116.00,2024,3,20,3,5),(124,'Technical Skills',3,'2024-05-11','2024-01-10',6,17656698.00,2024,1,32,4,3),(125,'Customer Service',4,'2024-01-29','2024-01-10',4,48255556.00,2024,2,23,5,4),(126,'Technical Skills',2,'2024-05-19','2024-01-10',5,9259086.00,2024,1,23,1,3),(127,'Technical Skills',4,'2024-07-07','2024-01-05',1,19601972.00,2024,1,39,5,1),(128,'Team Building',1,'2024-06-04','2024-01-10',6,25015253.00,2024,1,17,1,1),(129,'Team Building',4,'2024-07-30','2024-01-08',3,21940717.00,2024,1,48,1,4),(130,'Customer Service',2,'2024-12-14','2024-01-07',3,6973966.00,2024,1,36,3,2),(131,'Management',1,'2024-06-23','2024-01-06',2,8302720.00,2024,2,47,3,4),(132,'Technical Skills',2,'2024-09-06','2024-01-10',6,15231482.00,2024,2,50,4,1),(133,'Customer Service',3,'2024-08-23','2024-01-04',1,30587622.00,2024,1,46,5,5),(134,'Team Building',1,'2024-05-26','2024-01-07',2,45954631.00,2024,2,24,5,1),(135,'Customer Service',4,'2024-03-05','2024-01-08',5,48262520.00,2024,2,40,4,2),(136,'Technical Skills',3,'2024-10-30','2024-01-09',3,21906602.00,2024,3,30,5,1),(137,'Technical Skills',4,'2024-05-19','2024-01-07',5,10758423.00,2024,2,29,3,1),(138,'Management',4,'2024-02-09','2024-01-06',2,49131197.00,2024,3,19,1,4),(139,'Team Building',2,'2024-11-14','2024-01-10',5,41446774.00,2024,1,30,1,4),(140,'Technical Skills',1,'2024-01-28','2024-01-06',3,32736635.00,2024,3,34,1,2),(141,'Team Building',2,'2024-08-06','2024-01-03',6,45002642.00,2024,2,47,1,4),(142,'Technical Skills',4,'2024-04-11','2024-01-11',1,32169861.00,2024,1,24,1,1),(143,'Team Building',4,'2024-05-05','2024-01-06',2,46226775.00,2024,1,49,5,2),(144,'Leadership',2,'2024-02-06','2024-01-08',4,21291576.00,2024,3,23,4,2),(145,'Management',3,'2024-06-11','2024-01-04',4,29315976.00,2024,1,39,4,3),(146,'Leadership',1,'2024-01-20','2024-01-09',1,15410575.00,2024,1,45,3,2),(147,'Team Building',4,'2024-08-16','2024-01-04',5,30305735.00,2024,1,12,4,4),(148,'Technical Skills',1,'2024-10-17','2024-01-03',3,27337055.00,2024,2,26,2,2),(149,'Technical Skills',1,'2024-09-19','2024-01-08',4,39736284.00,2024,2,10,3,3),(150,'Technical Skills',4,'2024-12-06','2024-01-07',5,9768272.00,2024,3,21,4,1);
/*!40000 ALTER TABLE `Training` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-05 15:53:57