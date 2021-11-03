-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: project_lia
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `trip`
--

DROP TABLE IF EXISTS `trip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trip` (
  `id` varchar(255) NOT NULL,
  `agency_id` varchar(255) DEFAULT NULL,
  `bus_id` varchar(255) DEFAULT NULL,
  `created_date` datetime(6) NOT NULL,
  `dest_stop_id` varchar(255) DEFAULT NULL,
  `fare` int NOT NULL,
  `journey_time` int NOT NULL,
  `source_stop_id` varchar(255) DEFAULT NULL,
  `updated_date` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trip`
--

LOCK TABLES `trip` WRITE;
/*!40000 ALTER TABLE `trip` DISABLE KEYS */;
INSERT INTO `trip` VALUES ('262831a1-34f4-4087-a337-eb121cc1755e',NULL,'32e88d72-f97d-11ea-905e-00090ffe0001','2020-09-09 21:16:52.518000','d351cf84-eb6d-11ea-8f57-00090ffe0001',45,34,'bc93642c-eb6d-11ea-8f57-00090ffe0001',NULL),('6afff22c-be35-4781-82aa-0941a7acad41','dec8ffaa-1a13-4d6b-84bc-0c137c4f6031','32e88d72-f97d-11ea-905e-00090ffe0001','2020-09-08 15:24:37.024000','d351cf84-eb6d-11ea-8f57-00090ffe0001',21,2323,'d351cf84-eb6d-11ea-8f57-00090ffe0001',NULL),('70868bf4-b9a1-48a6-b1e4-92d2f74feab4','dec8ffaa-1a13-4d6b-84bc-0c137c4f6031','32e88d72-f97d-11ea-905e-00090ffe0001','2020-09-08 15:22:45.791000','bc93642c-eb6d-11ea-8f57-00090ffe0001',56566,888,'d351cf84-eb6d-11ea-8f57-00090ffe0001',NULL),('743b0618-24a9-45b1-981b-65551bd65672','dec8ffaa-1a13-4d6b-84bc-0c137c4f6031','6560a1f9-f97d-11ea-905e-00090ffe0001','2020-09-08 15:23:32.071000','bc93642c-eb6d-11ea-8f57-00090ffe0001',223,3434,'d351cf84-eb6d-11ea-8f57-00090ffe0001',NULL),('84b911ae-ccd3-4563-b8a7-b6dc624381f7','dec8ffaa-1a13-4d6b-84bc-0c137c4f6031','6560a1f9-f97d-11ea-905e-00090ffe0001','2020-09-08 15:22:32.685000','bc93642c-eb6d-11ea-8f57-00090ffe0001',56566,121212,'d351cf84-eb6d-11ea-8f57-00090ffe0001',NULL),('9f5f6848-906b-4f38-bb8d-9bb86a7cd3f0','dec8ffaa-1a13-4d6b-84bc-0c137c4f6031','6560a1f9-f97d-11ea-905e-00090ffe0001','2020-09-08 15:23:06.981000','bc93642c-eb6d-11ea-8f57-00090ffe0001',12,900,'d351cf84-eb6d-11ea-8f57-00090ffe0001',NULL),('fe927a70-197d-4970-b698-dc377f757136','dec8ffaa-1a13-4d6b-84bc-0c137c4f6031','6560a1f9-f97d-11ea-905e-00090ffe0001','2020-09-09 21:20:20.773000','bc93642c-eb6d-11ea-8f57-00090ffe0001',66,12,'d351cf84-eb6d-11ea-8f57-00090ffe0001',NULL);
/*!40000 ALTER TABLE `trip` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-09-22  9:59:48