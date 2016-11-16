-- MySQL dump 10.13  Distrib 5.5.46, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: snchitti_dev
-- ------------------------------------------------------
-- Server version	5.5.46-0ubuntu0.12.04.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping data for table `chitti_details`
--

LOCK TABLES `chitti_details` WRITE;
/*!40000 ALTER TABLE `chitti_details` DISABLE KEYS */;
INSERT INTO `chitti_details` VALUES (1,1000,'2 lakh monthly chitti',2,40,'monthly',5000,'2016-11-14 05:31:39','2016-11-14 05:31:39'),(2,1001,'1 lakh monthly chitti',1,20,'monthly',2000,'2016-11-14 06:19:53','2016-11-14 06:19:53'),(3,1002,'5 lakh chitti',5,40,'monthly',12500,'2016-11-15 06:20:24','2016-11-15 06:20:24'),(4,1002,'5 lakh chitti',5,40,'monthly',12500,'2016-11-15 06:21:58','2016-11-15 06:21:58'),(5,1002,'5 lakh chitti',5,40,'monthly',12500,'2016-11-15 06:21:58','2016-11-15 06:21:58'),(6,1002,'5 lakh chitti',5,40,'monthly',12500,'2016-11-15 06:21:58','2016-11-15 06:21:58'),(7,1002,'5 lakh chitti',5,40,'monthly',12500,'2016-11-15 06:21:58','2016-11-15 06:21:58'),(8,1002,'5 lakh chitti',5,40,'monthly',12500,'2016-11-15 06:21:58','2016-11-15 06:21:58'),(9,1002,'5 lakh chitti',5,40,'monthly',12500,'2016-11-15 06:21:58','2016-11-15 06:21:58'),(10,1002,'5 lakh chitti',5,40,'monthly',12500,'2016-11-15 06:21:58','2016-11-15 06:21:58'),(11,1003,'mudra chitti',300000,20,'monthly',3500,'2016-11-15 06:23:10','2016-11-15 06:23:10'),(12,1003,'mudra chitti',300000,40,'monthly',3500,'2016-11-15 06:24:57','2016-11-15 06:24:57'),(13,NULL,'',NULL,NULL,'',NULL,'2016-11-15 07:54:39','2016-11-15 07:54:39'),(14,5000,'PM Mudra',200000,3,'montly',6000,'2016-11-15 09:28:35','2016-11-15 09:28:35');
/*!40000 ALTER TABLE `chitti_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `chitti_users`
--

LOCK TABLES `chitti_users` WRITE;
/*!40000 ALTER TABLE `chitti_users` DISABLE KEYS */;
INSERT INTO `chitti_users` VALUES (1,1,2,'2016-11-14 05:34:14','2016-11-14 05:34:14');
/*!40000 ALTER TABLE `chitti_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20161107114731'),('20161108055755'),('20161108060032'),('20161108060250'),('20161108062442'),('20161108063012'),('20161108063233'),('20161108123005');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'2016-11-08 09:30:50','2016-11-15 09:26:58',NULL,NULL,NULL,NULL,NULL,'$2a$11$UTfnNcJfgipolVmQ/aPpn.kCQ1TTmrr1q8tXCLVHs5M8AC3wFkv/O',NULL,NULL,NULL,19,'2016-11-15 09:26:58','2016-11-15 09:25:22','127.0.0.1','127.0.0.1','admin@example.com'),(2,'2016-11-14 05:33:29','2016-11-14 05:33:29','testUser','mbasaasdasd','tvm','tvm',NULL,'$2a$11$IrtPW.Mrb3OrlB4FoYv11urLjoFXmmxQ.mMe0HNl/Qxrsm4Rkbn4m',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'testuser@example.com');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-11-16 13:44:33