-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: k10c208.p.ssafy.io    Database: nowdoboss
-- ------------------------------------------------------
-- Server version	8.0.36-0ubuntu0.20.04.1

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
-- Table structure for table `change_district`
--

DROP TABLE IF EXISTS `change_district`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `change_district` (
  `closed_months` int NOT NULL COMMENT '폐업 영업 개월 평균',
  `opened_months` int NOT NULL COMMENT '운영 영업 개월 평균',
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT '상권 변화 지표 자치구 아이디',
  `change_indicator` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL COMMENT '상권 변화 지표',
  `change_indicator_name` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL COMMENT '상권 변화 지표 명',
  `district_code` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL COMMENT '자치구 코드',
  `district_code_name` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL COMMENT '자치구 코드 명',
  `period_code` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL COMMENT '기준 년분기 코드',
  PRIMARY KEY (`id`),
  KEY `idx_period_code` (`period_code`),
  KEY `idx_district_code` (`district_code`)
) ENGINE=InnoDB AUTO_INCREMENT=476 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `change_district`
--

LOCK TABLES `change_district` WRITE;
/*!40000 ALTER TABLE `change_district` DISABLE KEYS */;
INSERT INTO `change_district` VALUES (48,87,1,'LL','다이나믹','11500','강서구','20231'),(50,97,2,'LL','다이나믹','11380','은평구','20231'),(53,97,3,'LH','상권확장','11200','성동구','20231'),(56,113,4,'HH','정체','11170','용산구','20231'),(50,106,5,'HL','상권축소','11530','구로구','20231'),(53,113,6,'HH','정체','11230','동대문구','20231'),(51,101,7,'LL','다이나믹','11215','광진구','20231'),(48,89,8,'LL','다이나믹','11440','마포구','20231'),(48,99,9,'LL','다이나믹','11305','강북구','20231'),(53,105,10,'HH','정체','11410','서대문구','20231'),(52,109,11,'HH','정체','11560','영등포구','20231'),(52,103,12,'LH','상권확장','11290','성북구','20231'),(54,107,13,'HH','정체','11590','동작구','20231'),(50,99,14,'LL','다이나믹','11545','금천구','20231'),(49,96,15,'LL','다이나믹','11350','노원구','20231'),(49,100,16,'LL','다이나믹','11470','양천구','20231'),(61,133,17,'HH','정체','11140','중구','20231'),(49,99,18,'LL','다이나믹','11260','중랑구','20231'),(49,100,19,'LL','다이나믹','11320','도봉구','20231'),(51,98,20,'LL','다이나믹','11380','은평구','20232'),(49,88,21,'LL','다이나믹','11500','강서구','20232'),(56,114,22,'HH','정체','11170','용산구','20232'),(53,99,23,'LH','상권확장','11200','성동구','20232'),(51,108,24,'HL','상권축소','11530','구로구','20232'),(51,102,25,'LL','다이나믹','11215','광진구','20232'),(53,114,26,'HH','정체','11230','동대문구','20232'),(48,100,27,'LL','다이나믹','11305','강북구','20232'),(53,106,28,'HH','정체','11410','서대문구','20232'),(49,90,29,'LL','다이나믹','11440','마포구','20232'),(53,104,30,'LH','상권확장','11290','성북구','20232'),(54,108,31,'HH','정체','11590','동작구','20232'),(49,98,32,'LL','다이나믹','11350','노원구','20232'),(50,100,33,'LL','다이나믹','11545','금천구','20232'),(49,100,34,'LL','다이나믹','11740','강동구','20232'),(49,102,35,'LL','다이나믹','11470','양천구','20232'),(62,134,36,'HH','정체','11140','중구','20232'),(49,100,37,'LL','다이나믹','11260','중랑구','20232'),(49,101,38,'LL','다이나믹','11320','도봉구','20232'),(50,101,39,'LL','다이나믹','11620','관악구','20232'),(53,105,40,'LH','상권확장','11290','성북구','20233'),(52,112,41,'HH','정체','11560','영등포구','20233'),(53,117,42,'HH','정체','11650','서초구','20233'),(54,109,43,'HH','정체','11590','동작구','20233'),(50,99,44,'LL','다이나믹','11350','노원구','20233'),(51,102,45,'LL','다이나믹','11545','금천구','20233'),(49,102,46,'LL','다이나믹','11680','강남구','20233'),(49,101,47,'LL','다이나믹','11740','강동구','20233'),(49,104,48,'LL','다이나믹','11470','양천구','20233'),(50,105,49,'LL','다이나믹','11710','송파구','20233'),(62,136,50,'HH','정체','11140','중구','20233'),(49,102,51,'LL','다이나믹','11260','중랑구','20233'),(50,103,52,'LL','다이나믹','11320','도봉구','20233'),(50,102,53,'LL','다이나믹','11620','관악구','20233'),(51,100,54,'LL','다이나믹','11380','은평구','20233'),(49,90,55,'LL','다이나믹','11500','강서구','20233'),(56,116,56,'HH','정체','11170','용산구','20233'),(54,100,57,'LH','상권확장','11200','성동구','20233'),(51,110,58,'HL','상권축소','11530','구로구','20233'),(51,104,59,'LL','다이나믹','11215','광진구','20233'),(53,116,60,'HH','정체','11230','동대문구','20233'),(48,102,61,'LL','다이나믹','11305','강북구','20233'),(53,108,62,'HH','정체','11410','서대문구','20233'),(49,91,63,'LL','다이나믹','11440','마포구','20233'),(62,131,64,'HH','정체','11110','종로구','20233'),(61,128,65,'HH','정체','11110','종로구','20231'),(62,129,66,'HH','정체','11110','종로구','20232'),(57,112,67,'HH','정체','11110','종로구','20191'),(61,126,68,'HH','정체','11110','종로구','20224'),(61,125,69,'HH','정체','11110','종로구','20223'),(61,123,70,'HH','정체','11110','종로구','20222'),(60,121,71,'HH','정체','11110','종로구','20221'),(60,119,72,'HH','정체','11110','종로구','20214'),(60,119,73,'HH','정체','11110','종로구','20213'),(60,118,74,'HH','정체','11110','종로구','20212'),(59,118,75,'HH','정체','11110','종로구','20211'),(59,117,76,'HH','정체','11110','종로구','20204'),(59,116,77,'HH','정체','11110','종로구','20203'),(59,115,78,'HH','정체','11110','종로구','20202'),(58,114,79,'HH','정체','11110','종로구','20201'),(58,113,80,'HH','정체','11110','종로구','20194'),(58,112,81,'HH','정체','11110','종로구','20193'),(58,112,82,'HH','정체','11110','종로구','20192'),(61,126,83,'HH','정체','11140','중구','20222'),(57,112,84,'HH','정체','11140','중구','20191'),(57,112,85,'HH','정체','11140','중구','20192'),(61,130,86,'HH','정체','11140','중구','20224'),(57,112,87,'HH','정체','11140','중구','20193'),(60,123,88,'HH','정체','11140','중구','20221'),(58,113,89,'HH','정체','11140','중구','20194'),(58,113,90,'HH','정체','11140','중구','20201'),(58,115,91,'HH','정체','11140','중구','20202'),(60,121,92,'HH','정체','11140','중구','20214'),(60,120,93,'HH','정체','11140','중구','20213'),(60,119,94,'HH','정체','11140','중구','20212'),(61,128,95,'HH','정체','11140','중구','20223'),(59,119,96,'HH','정체','11140','중구','20211'),(59,117,97,'HH','정체','11140','중구','20204'),(59,116,98,'HH','정체','11140','중구','20203'),(53,101,99,'HH','정체','11170','용산구','20193'),(54,103,100,'HH','정체','11170','용산구','20203'),(55,104,101,'HH','정체','11170','용산구','20214'),(54,101,102,'HH','정체','11170','용산구','20201'),(56,111,103,'HH','정체','11170','용산구','20224'),(55,105,104,'HH','정체','11170','용산구','20213'),(55,108,105,'HH','정체','11170','용산구','20222'),(53,100,106,'HH','정체','11170','용산구','20192'),(55,105,107,'HH','정체','11170','용산구','20212'),(54,102,108,'HH','정체','11170','용산구','20202'),(54,104,109,'HH','정체','11170','용산구','20211'),(55,109,110,'HH','정체','11170','용산구','20223'),(54,104,111,'HH','정체','11170','용산구','20204'),(54,101,112,'HH','정체','11170','용산구','20194'),(53,100,113,'HH','정체','11170','용산구','20191'),(55,106,114,'HH','정체','11170','용산구','20221'),(51,90,115,'LH','상권확장','11200','성동구','20204'),(53,94,116,'LH','상권확장','11200','성동구','20223'),(52,88,117,'LH','상권확장','11200','성동구','20214'),(51,89,118,'LH','상권확장','11200','성동구','20202'),(52,89,119,'LH','상권확장','11200','성동구','20213'),(51,90,120,'LH','상권확장','11200','성동구','20211'),(51,88,121,'LH','상권확장','11200','성동구','20201'),(50,88,122,'LH','상권확장','11200','성동구','20191'),(51,88,123,'LH','상권확장','11200','성동구','20194'),(53,92,124,'LH','상권확장','11200','성동구','20222'),(52,89,125,'LH','상권확장','11200','성동구','20212'),(50,88,126,'LH','상권확장','11200','성동구','20193'),(53,96,127,'LH','상권확장','11200','성동구','20224'),(52,90,128,'LH','상권확장','11200','성동구','20221'),(50,88,129,'LH','상권확장','11200','성동구','20192'),(51,89,130,'LH','상권확장','11200','성동구','20203'),(49,92,131,'LL','다이나믹','11215','광진구','20203'),(49,92,132,'LL','다이나믹','11215','광진구','20202'),(51,99,133,'LL','다이나믹','11215','광진구','20224'),(49,92,134,'LL','다이나믹','11215','광진구','20201'),(50,94,135,'LL','다이나믹','11215','광진구','20221'),(49,91,136,'LL','다이나믹','11215','광진구','20194'),(48,91,137,'LL','다이나믹','11215','광진구','20193'),(48,91,138,'LL','다이나믹','11215','광진구','20192'),(50,93,139,'LL','다이나믹','11215','광진구','20204'),(50,94,140,'LL','다이나믹','11215','광진구','20211'),(50,93,141,'LL','다이나믹','11215','광진구','20212'),(50,94,142,'LL','다이나믹','11215','광진구','20213'),(51,97,143,'LL','다이나믹','11215','광진구','20223'),(50,92,144,'LL','다이나믹','11215','광진구','20214'),(48,91,145,'LL','다이나믹','11215','광진구','20191'),(51,96,146,'LL','다이나믹','11215','광진구','20222'),(52,105,147,'HH','정체','11230','동대문구','20221'),(52,103,148,'HH','정체','11230','동대문구','20214'),(52,104,149,'HH','정체','11230','동대문구','20213'),(51,104,150,'HH','정체','11230','동대문구','20212'),(51,104,151,'HH','정체','11230','동대문구','20211'),(51,104,152,'HH','정체','11230','동대문구','20204'),(51,103,153,'HH','정체','11230','동대문구','20203'),(50,103,154,'HH','정체','11230','동대문구','20202'),(50,103,155,'HH','정체','11230','동대문구','20201'),(49,102,156,'HH','정체','11230','동대문구','20193'),(49,102,157,'HH','정체','11230','동대문구','20192'),(49,101,158,'HH','정체','11230','동대문구','20191'),(53,111,159,'HH','정체','11230','동대문구','20224'),(52,109,160,'HH','정체','11230','동대문구','20223'),(52,107,161,'HH','정체','11230','동대문구','20222'),(50,102,162,'HH','정체','11230','동대문구','20194'),(48,92,163,'LL','다이나믹','11260','중랑구','20221'),(48,94,164,'LL','다이나믹','11260','중랑구','20222'),(48,95,165,'LL','다이나믹','11260','중랑구','20223'),(48,97,166,'LL','다이나믹','11260','중랑구','20224'),(45,91,167,'LL','다이나믹','11260','중랑구','20191'),(46,91,168,'LL','다이나믹','11260','중랑구','20192'),(46,91,169,'LL','다이나믹','11260','중랑구','20193'),(46,91,170,'LL','다이나믹','11260','중랑구','20194'),(46,91,171,'LL','다이나믹','11260','중랑구','20201'),(47,91,172,'LL','다이나믹','11260','중랑구','20202'),(47,91,173,'LL','다이나믹','11260','중랑구','20203'),(47,92,174,'LL','다이나믹','11260','중랑구','20204'),(47,92,175,'LL','다이나믹','11260','중랑구','20211'),(48,91,176,'LL','다이나믹','11260','중랑구','20212'),(48,91,177,'LL','다이나믹','11260','중랑구','20213'),(48,90,178,'LL','다이나믹','11260','중랑구','20214'),(52,97,179,'LH','상권확장','11290','성북구','20222'),(52,95,180,'LH','상권확장','11290','성북구','20221'),(52,101,181,'LH','상권확장','11290','성북구','20224'),(49,95,182,'HH','정체','11290','성북구','20191'),(49,94,183,'HH','정체','11290','성북구','20192'),(50,94,184,'HH','정체','11290','성북구','20193'),(50,94,185,'HH','정체','11290','성북구','20194'),(50,94,186,'HH','정체','11290','성북구','20201'),(50,95,187,'HH','정체','11290','성북구','20202'),(51,95,188,'HH','정체','11290','성북구','20203'),(51,95,189,'LH','상권확장','11290','성북구','20204'),(51,95,190,'LH','상권확장','11290','성북구','20211'),(51,94,191,'LH','상권확장','11290','성북구','20212'),(52,94,192,'LH','상권확장','11290','성북구','20213'),(52,93,193,'LH','상권확장','11290','성북구','20214'),(52,99,194,'LH','상권확장','11290','성북구','20223'),(47,92,195,'LL','다이나믹','11305','강북구','20221'),(48,97,196,'LL','다이나믹','11305','강북구','20224'),(45,89,197,'LL','다이나믹','11305','강북구','20191'),(46,89,198,'LL','다이나믹','11305','강북구','20194'),(47,90,199,'LL','다이나믹','11305','강북구','20213'),(47,93,200,'LL','다이나믹','11305','강북구','20222'),(47,91,201,'LL','다이나믹','11305','강북구','20212'),(46,90,202,'LL','다이나믹','11305','강북구','20201'),(47,91,203,'LL','다이나믹','11305','강북구','20211'),(48,95,204,'LL','다이나믹','11305','강북구','20223'),(46,89,205,'LL','다이나믹','11305','강북구','20193'),(47,91,206,'LL','다이나믹','11305','강북구','20204'),(46,89,207,'LL','다이나믹','11305','강북구','20192'),(46,90,208,'LL','다이나믹','11305','강북구','20202'),(47,90,209,'LL','다이나믹','11305','강북구','20203'),(47,89,210,'LL','다이나믹','11305','강북구','20214'),(46,89,211,'LL','다이나믹','11320','도봉구','20191'),(48,92,212,'LL','다이나믹','11320','도봉구','20213'),(48,92,213,'LL','다이나믹','11320','도봉구','20212'),(46,90,214,'LL','다이나믹','11320','도봉구','20193'),(48,92,215,'LL','다이나믹','11320','도봉구','20211'),(48,92,216,'LL','다이나믹','11320','도봉구','20204'),(47,91,217,'LL','다이나믹','11320','도봉구','20203'),(46,89,218,'LL','다이나믹','11320','도봉구','20192'),(48,91,219,'LL','다이나믹','11320','도봉구','20214'),(47,90,220,'LL','다이나믹','11320','도봉구','20194'),(48,93,221,'LL','다이나믹','11320','도봉구','20221'),(48,94,222,'LL','다이나믹','11320','도봉구','20222'),(49,96,223,'LL','다이나믹','11320','도봉구','20223'),(47,91,224,'LL','다이나믹','11320','도봉구','20201'),(49,98,225,'LL','다이나믹','11320','도봉구','20224'),(47,91,226,'LL','다이나믹','11320','도봉구','20202'),(49,95,227,'LL','다이나믹','11350','노원구','20224'),(49,93,228,'LL','다이나믹','11350','노원구','20223'),(49,91,229,'LL','다이나믹','11350','노원구','20222'),(49,89,230,'LL','다이나믹','11350','노원구','20221'),(48,87,231,'LL','다이나믹','11350','노원구','20214'),(48,88,232,'LL','다이나믹','11350','노원구','20213'),(48,88,233,'LL','다이나믹','11350','노원구','20212'),(48,89,234,'LL','다이나믹','11350','노원구','20211'),(48,89,235,'LL','다이나믹','11350','노원구','20204'),(47,88,236,'LL','다이나믹','11350','노원구','20203'),(47,88,237,'LL','다이나믹','11350','노원구','20202'),(47,88,238,'LL','다이나믹','11350','노원구','20201'),(47,87,239,'LL','다이나믹','11350','노원구','20194'),(47,87,240,'LL','다이나믹','11350','노원구','20193'),(46,87,241,'LL','다이나믹','11350','노원구','20192'),(46,87,242,'LL','다이나믹','11350','노원구','20191'),(48,88,243,'LL','다이나믹','11380','은평구','20191'),(48,88,244,'LL','다이나믹','11380','은평구','20192'),(48,88,245,'LL','다이나믹','11380','은평구','20193'),(49,89,246,'LL','다이나믹','11380','은평구','20194'),(49,89,247,'LL','다이나믹','11380','은평구','20201'),(49,89,248,'LL','다이나믹','11380','은평구','20202'),(49,89,249,'LL','다이나믹','11380','은평구','20203'),(49,90,250,'LL','다이나믹','11380','은평구','20204'),(49,89,251,'LL','다이나믹','11380','은평구','20211'),(50,88,252,'LL','다이나믹','11380','은평구','20212'),(50,88,253,'LL','다이나믹','11380','은평구','20213'),(50,87,254,'LL','다이나믹','11380','은평구','20214'),(50,89,255,'LL','다이나믹','11380','은평구','20221'),(50,91,256,'LL','다이나믹','11380','은평구','20222'),(50,93,257,'LL','다이나믹','11380','은평구','20223'),(50,95,258,'LL','다이나믹','11380','은평구','20224'),(51,98,259,'HH','정체','11410','서대문구','20211'),(52,96,260,'HH','정체','11410','서대문구','20214'),(52,97,261,'HH','정체','11410','서대문구','20212'),(50,96,262,'HH','정체','11410','서대문구','20193'),(51,98,263,'HH','정체','11410','서대문구','20204'),(52,97,264,'HH','정체','11410','서대문구','20213'),(52,104,265,'HH','정체','11410','서대문구','20224'),(51,97,266,'HH','정체','11410','서대문구','20203'),(52,102,267,'HH','정체','11410','서대문구','20223'),(50,96,268,'HH','정체','11410','서대문구','20194'),(52,100,269,'HH','정체','11410','서대문구','20222'),(51,97,270,'HH','정체','11410','서대문구','20201'),(50,96,271,'HH','정체','11410','서대문구','20192'),(52,98,272,'HH','정체','11410','서대문구','20221'),(51,97,273,'HH','정체','11410','서대문구','20202'),(50,97,274,'HH','정체','11410','서대문구','20191'),(47,82,275,'LL','다이나믹','11440','마포구','20211'),(47,81,276,'LL','다이나믹','11440','마포구','20204'),(47,80,277,'LL','다이나믹','11440','마포구','20203'),(47,80,278,'LL','다이나믹','11440','마포구','20202'),(47,79,279,'LL','다이나믹','11440','마포구','20201'),(47,78,280,'LL','다이나믹','11440','마포구','20194'),(46,78,281,'LL','다이나믹','11440','마포구','20193'),(46,78,282,'LL','다이나믹','11440','마포구','20192'),(46,78,283,'LL','다이나믹','11440','마포구','20191'),(48,88,284,'LL','다이나믹','11440','마포구','20224'),(48,86,285,'LL','다이나믹','11440','마포구','20223'),(48,84,286,'LL','다이나믹','11440','마포구','20222'),(48,83,287,'LL','다이나믹','11440','마포구','20221'),(48,81,288,'LL','다이나믹','11440','마포구','20214'),(48,82,289,'LL','다이나믹','11440','마포구','20213'),(48,81,290,'LL','다이나믹','11440','마포구','20212'),(47,91,291,'LL','다이나믹','11470','양천구','20201'),(48,92,292,'LL','다이나믹','11470','양천구','20211'),(48,93,293,'LL','다이나믹','11470','양천구','20221'),(47,91,294,'LL','다이나믹','11470','양천구','20194'),(48,95,295,'LL','다이나믹','11470','양천구','20222'),(46,90,296,'LL','다이나믹','11470','양천구','20191'),(46,90,297,'LL','다이나믹','11470','양천구','20193'),(48,91,298,'LL','다이나믹','11470','양천구','20214'),(47,91,299,'LL','다이나믹','11470','양천구','20202'),(46,90,300,'LL','다이나믹','11470','양천구','20192'),(48,91,301,'LL','다이나믹','11470','양천구','20213'),(47,91,302,'LL','다이나믹','11470','양천구','20203'),(48,92,303,'LL','다이나믹','11470','양천구','20212'),(48,92,304,'LL','다이나믹','11470','양천구','20204'),(49,97,305,'LL','다이나믹','11470','양천구','20223'),(49,99,306,'LL','다이나믹','11470','양천구','20224'),(48,80,307,'LL','다이나믹','11500','강서구','20221'),(48,78,308,'LL','다이나믹','11500','강서구','20214'),(48,82,309,'LL','다이나믹','11500','강서구','20222'),(48,79,310,'LL','다이나믹','11500','강서구','20213'),(47,79,311,'LL','다이나믹','11500','강서구','20193'),(48,80,312,'LL','다이나믹','11500','강서구','20212'),(52,110,313,'HH','정체','11560','영등포구','20232'),(48,80,314,'LL','다이나믹','11500','강서구','20211'),(47,79,315,'LL','다이나믹','11500','강서구','20192'),(48,80,316,'LL','다이나믹','11500','강서구','20204'),(48,83,317,'LL','다이나믹','11500','강서구','20223'),(47,79,318,'LL','다이나믹','11500','강서구','20203'),(47,79,319,'LL','다이나믹','11500','강서구','20191'),(47,79,320,'LL','다이나믹','11500','강서구','20202'),(48,85,321,'LL','다이나믹','11500','강서구','20224'),(47,79,322,'LL','다이나믹','11500','강서구','20201'),(47,79,323,'LL','다이나믹','11500','강서구','20194'),(50,96,324,'HL','상권축소','11530','구로구','20214'),(49,97,325,'HL','상권축소','11530','구로구','20213'),(49,97,326,'HL','상권축소','11530','구로구','20212'),(49,97,327,'HL','상권축소','11530','구로구','20211'),(49,96,328,'HL','상권축소','11530','구로구','20204'),(49,95,329,'HL','상권축소','11530','구로구','20203'),(48,95,330,'HL','상권축소','11530','구로구','20202'),(48,94,331,'HL','상권축소','11530','구로구','20201'),(48,93,332,'LL','다이나믹','11530','구로구','20194'),(48,93,333,'LL','다이나믹','11530','구로구','20193'),(48,92,334,'LL','다이나믹','11530','구로구','20192'),(47,92,335,'LL','다이나믹','11530','구로구','20191'),(50,104,336,'HL','상권축소','11530','구로구','20224'),(50,102,337,'HL','상권축소','11530','구로구','20223'),(50,98,338,'HL','상권축소','11530','구로구','20221'),(50,100,339,'HL','상권축소','11530','구로구','20222'),(49,90,340,'LL','다이나믹','11545','금천구','20221'),(50,92,341,'LL','다이나믹','11545','금천구','20222'),(50,94,342,'LL','다이나믹','11545','금천구','20223'),(50,97,343,'LL','다이나믹','11545','금천구','20224'),(47,86,344,'LL','다이나믹','11545','금천구','20191'),(47,85,345,'LL','다이나믹','11545','금천구','20192'),(48,85,346,'LL','다이나믹','11545','금천구','20193'),(48,86,347,'LL','다이나믹','11545','금천구','20194'),(48,86,348,'LL','다이나믹','11545','금천구','20201'),(48,87,349,'LL','다이나믹','11545','금천구','20202'),(48,87,350,'LL','다이나믹','11545','금천구','20203'),(49,88,351,'LL','다이나믹','11545','금천구','20204'),(49,88,352,'LL','다이나믹','11545','금천구','20211'),(49,88,353,'LL','다이나믹','11545','금천구','20212'),(49,89,354,'LL','다이나믹','11545','금천구','20213'),(49,88,355,'LL','다이나믹','11545','금천구','20214'),(51,101,356,'HH','정체','11560','영등포구','20221'),(51,99,357,'HH','정체','11560','영등포구','20214'),(51,103,358,'HH','정체','11560','영등포구','20222'),(51,100,359,'HH','정체','11560','영등포구','20213'),(49,98,360,'HH','정체','11560','영등포구','20193'),(51,100,361,'HH','정체','11560','영등포구','20212'),(50,100,362,'HH','정체','11560','영등포구','20211'),(49,97,363,'HH','정체','11560','영등포구','20192'),(50,99,364,'HH','정체','11560','영등포구','20204'),(51,105,365,'HH','정체','11560','영등포구','20223'),(50,99,366,'HH','정체','11560','영등포구','20203'),(49,97,367,'HH','정체','11560','영등포구','20191'),(50,98,368,'HH','정체','11560','영등포구','20202'),(52,107,369,'HH','정체','11560','영등포구','20224'),(50,98,370,'HH','정체','11560','영등포구','20201'),(49,98,371,'HH','정체','11560','영등포구','20194'),(52,98,372,'HH','정체','11590','동작구','20214'),(52,99,373,'HH','정체','11590','동작구','20213'),(52,99,374,'HH','정체','11590','동작구','20212'),(51,100,375,'HH','정체','11590','동작구','20211'),(51,100,376,'HH','정체','11590','동작구','20204'),(51,99,377,'HH','정체','11590','동작구','20203'),(51,99,378,'HH','정체','11590','동작구','20202'),(51,99,379,'HH','정체','11590','동작구','20201'),(50,98,380,'HH','정체','11590','동작구','20194'),(50,98,381,'HH','정체','11590','동작구','20193'),(50,97,382,'HH','정체','11590','동작구','20192'),(50,97,383,'HH','정체','11590','동작구','20191'),(53,105,384,'HH','정체','11590','동작구','20224'),(53,104,385,'HH','정체','11590','동작구','20223'),(52,101,386,'HH','정체','11590','동작구','20221'),(53,102,387,'HH','정체','11590','동작구','20222'),(48,91,388,'LL','다이나믹','11620','관악구','20202'),(47,91,389,'LL','다이나믹','11620','관악구','20191'),(49,91,390,'LL','다이나믹','11620','관악구','20213'),(49,91,391,'LL','다이나믹','11620','관악구','20212'),(47,91,392,'LL','다이나믹','11620','관악구','20193'),(48,92,393,'LL','다이나믹','11620','관악구','20211'),(48,92,394,'LL','다이나믹','11620','관악구','20204'),(48,91,395,'LL','다이나믹','11620','관악구','20203'),(47,91,396,'LL','다이나믹','11620','관악구','20192'),(49,90,397,'LL','다이나믹','11620','관악구','20214'),(48,91,398,'LL','다이나믹','11620','관악구','20194'),(49,92,399,'LL','다이나믹','11620','관악구','20221'),(49,94,400,'LL','다이나믹','11620','관악구','20222'),(49,96,401,'LL','다이나믹','11620','관악구','20223'),(48,91,402,'LL','다이나믹','11620','관악구','20201'),(49,98,403,'LL','다이나믹','11620','관악구','20224'),(52,103,404,'HH','정체','11650','서초구','20214'),(49,99,405,'HH','정체','11650','서초구','20191'),(51,104,406,'HH','정체','11650','서초구','20211'),(50,100,407,'HH','정체','11650','서초구','20194'),(52,108,408,'HH','정체','11650','서초구','20222'),(50,100,409,'HH','정체','11650','서초구','20201'),(50,100,410,'HH','정체','11650','서초구','20193'),(52,110,411,'HH','정체','11650','서초구','20223'),(49,99,412,'HH','정체','11650','서초구','20192'),(51,103,413,'HH','정체','11650','서초구','20204'),(53,112,414,'HH','정체','11650','서초구','20224'),(51,104,415,'HH','정체','11650','서초구','20212'),(51,104,416,'HH','정체','11650','서초구','20213'),(51,101,417,'HH','정체','11650','서초구','20202'),(51,102,418,'HH','정체','11650','서초구','20203'),(52,105,419,'HH','정체','11650','서초구','20221'),(48,97,420,'LL','다이나믹','11680','강남구','20224'),(48,95,421,'LL','다이나믹','11680','강남구','20223'),(48,93,422,'LL','다이나믹','11680','강남구','20222'),(48,92,423,'LL','다이나믹','11680','강남구','20221'),(48,89,424,'LL','다이나믹','11680','강남구','20214'),(48,90,425,'LL','다이나믹','11680','강남구','20213'),(48,90,426,'LL','다이나믹','11680','강남구','20212'),(47,89,427,'LL','다이나믹','11680','강남구','20211'),(47,89,428,'LL','다이나믹','11680','강남구','20204'),(47,88,429,'LL','다이나믹','11680','강남구','20203'),(47,87,430,'LL','다이나믹','11680','강남구','20202'),(47,87,431,'LL','다이나믹','11680','강남구','20201'),(47,86,432,'LL','다이나믹','11680','강남구','20194'),(46,85,433,'LL','다이나믹','11680','강남구','20193'),(46,85,434,'LL','다이나믹','11680','강남구','20192'),(46,85,435,'LL','다이나믹','11680','강남구','20191'),(46,91,436,'LL','다이나믹','11710','송파구','20191'),(49,100,437,'LL','다이나믹','11710','송파구','20224'),(49,98,438,'LL','다이나믹','11710','송파구','20223'),(49,97,439,'LL','다이나믹','11710','송파구','20222'),(49,95,440,'LL','다이나믹','11710','송파구','20221'),(49,93,441,'LL','다이나믹','11710','송파구','20214'),(49,94,442,'LL','다이나믹','11710','송파구','20213'),(48,93,443,'LL','다이나믹','11710','송파구','20212'),(48,93,444,'LL','다이나믹','11710','송파구','20211'),(48,93,445,'LL','다이나믹','11710','송파구','20204'),(48,92,446,'LL','다이나믹','11710','송파구','20203'),(48,92,447,'LL','다이나믹','11710','송파구','20202'),(47,91,448,'LL','다이나믹','11710','송파구','20201'),(47,91,449,'LL','다이나믹','11710','송파구','20194'),(47,91,450,'LL','다이나믹','11710','송파구','20193'),(47,91,451,'LL','다이나믹','11710','송파구','20192'),(48,92,452,'LL','다이나믹','11740','강동구','20222'),(46,90,453,'LL','다이나믹','11740','강동구','20191'),(49,97,454,'LL','다이나믹','11740','강동구','20224'),(48,91,455,'LL','다이나믹','11740','강동구','20204'),(48,90,456,'LL','다이나믹','11740','강동구','20221'),(47,90,457,'LL','다이나믹','11740','강동구','20203'),(47,90,458,'LL','다이나믹','11740','강동구','20202'),(48,88,459,'LL','다이나믹','11740','강동구','20214'),(47,90,460,'LL','다이나믹','11740','강동구','20201'),(48,94,461,'LL','다이나믹','11740','강동구','20223'),(47,90,462,'LL','다이나믹','11740','강동구','20194'),(48,89,463,'LL','다이나믹','11740','강동구','20213'),(46,90,464,'LL','다이나믹','11740','강동구','20193'),(53,114,465,'HH','정체','11650','서초구','20231'),(46,90,466,'LL','다이나믹','11740','강동구','20192'),(48,90,467,'LL','다이나믹','11740','강동구','20212'),(48,91,468,'LL','다이나믹','11740','강동구','20211'),(48,99,469,'LL','다이나믹','11680','강남구','20231'),(49,98,470,'LL','다이나믹','11740','강동구','20231'),(49,102,471,'LL','다이나믹','11710','송파구','20231'),(49,99,472,'LL','다이나믹','11620','관악구','20231'),(53,115,473,'HH','정체','11650','서초구','20232'),(49,101,474,'LL','다이나믹','11680','강남구','20232'),(50,104,475,'LL','다이나믹','11710','송파구','20232');
/*!40000 ALTER TABLE `change_district` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-19 21:42:53
