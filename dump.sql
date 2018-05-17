CREATE DATABASE  IF NOT EXISTS `mydb` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `mydb`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: mydb
-- ------------------------------------------------------
-- Server version	5.7.19-log

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
-- Temporary view structure for view `all_vehicle`
--

DROP TABLE IF EXISTS `all_vehicle`;
/*!50001 DROP VIEW IF EXISTS `all_vehicle`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `all_vehicle` AS SELECT 
 1 AS `Vehicle_ID`,
 1 AS `Vehicle_Name`,
 1 AS `Model_Name`,
 1 AS `Model_Number`,
 1 AS `Model_Transmission`,
 1 AS `Model_Type`,
 1 AS `Price`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `all_vehicles`
--

DROP TABLE IF EXISTS `all_vehicles`;
/*!50001 DROP VIEW IF EXISTS `all_vehicles`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `all_vehicles` AS SELECT 
 1 AS `Vehicle_ID`,
 1 AS `Vehicle_Name`,
 1 AS `Model_Name`,
 1 AS `Model_Number`,
 1 AS `Model_Transmission`,
 1 AS `Model_Type`,
 1 AS `Price`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `all_vehicles1`
--

DROP TABLE IF EXISTS `all_vehicles1`;
/*!50001 DROP VIEW IF EXISTS `all_vehicles1`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `all_vehicles1` AS SELECT 
 1 AS `Vehicle_ID`,
 1 AS `Vehicle_Name`,
 1 AS `Model_Name`,
 1 AS `Model_Number`,
 1 AS `Model_Transmission`,
 1 AS `Model_Type`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `all_vehicles11`
--

DROP TABLE IF EXISTS `all_vehicles11`;
/*!50001 DROP VIEW IF EXISTS `all_vehicles11`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `all_vehicles11` AS SELECT 
 1 AS `Vehicle_ID`,
 1 AS `Vehicle_Name`,
 1 AS `Model_Name`,
 1 AS `Model_Number`,
 1 AS `Model_Transmission`,
 1 AS `Model_Type`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `all_vehicles111`
--

DROP TABLE IF EXISTS `all_vehicles111`;
/*!50001 DROP VIEW IF EXISTS `all_vehicles111`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `all_vehicles111` AS SELECT 
 1 AS `Vehicle_ID`,
 1 AS `Vehicle_Name`,
 1 AS `Model_Name`,
 1 AS `Model_Number`,
 1 AS `Model_Transmission`,
 1 AS `Model_Type`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company` (
  `Company_ID` int(11) NOT NULL,
  `Company_Name` varchar(45) NOT NULL,
  `Company_Rating` int(11) NOT NULL,
  PRIMARY KEY (`Company_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` VALUES (1,'Ford Motors',10);
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `company_manager_view`
--

DROP TABLE IF EXISTS `company_manager_view`;
/*!50001 DROP VIEW IF EXISTS `company_manager_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `company_manager_view` AS SELECT 
 1 AS `Employee_ID`,
 1 AS `Employee_Name`,
 1 AS `Employee_Role`,
 1 AS `MP_ID`,
 1 AS `MP_NAME`,
 1 AS `company_id`,
 1 AS `company_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `cost`
--

DROP TABLE IF EXISTS `cost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cost` (
  `Price` int(11) NOT NULL,
  `Model_Model_Number` varchar(40) NOT NULL,
  PRIMARY KEY (`Price`,`Model_Model_Number`),
  KEY `fk_Cost_Model1_idx` (`Model_Model_Number`),
  CONSTRAINT `fk_Cost_Model1` FOREIGN KEY (`Model_Model_Number`) REFERENCES `model` (`Model_Number`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cost`
--

LOCK TABLES `cost` WRITE;
/*!40000 ALTER TABLE `cost` DISABLE KEYS */;
INSERT INTO `cost` VALUES (15000,'1'),(60000,'10'),(75000,'11'),(20000,'2'),(25000,'3'),(30000,'4'),(35000,'5'),(40000,'6'),(45000,'7'),(50000,'8'),(55000,'9');
/*!40000 ALTER TABLE `cost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `demand`
--

DROP TABLE IF EXISTS `demand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `demand` (
  `Demand_Id` varchar(45) NOT NULL,
  `Demand_Quantity` int(11) NOT NULL,
  `Demand_Date` date NOT NULL,
  `Company_Company_ID` int(11) NOT NULL,
  `Distributor_Company_Company_ID` int(11) NOT NULL,
  `Distributor_D_ID` varchar(45) NOT NULL,
  `Vehicle_Vehicle_ID` int(11) NOT NULL,
  `Vehicle_Model_Model_Number` varchar(40) NOT NULL,
  `Vehicle_Company_Company_ID` int(11) NOT NULL,
  PRIMARY KEY (`Demand_Id`),
  KEY `fk_Demand_Company1_idx` (`Company_Company_ID`),
  KEY `fk_Demand_Distributor1_idx` (`Distributor_Company_Company_ID`,`Distributor_D_ID`),
  KEY `fk_Demand_Vehicle1_idx` (`Vehicle_Vehicle_ID`,`Vehicle_Model_Model_Number`,`Vehicle_Company_Company_ID`),
  CONSTRAINT `fk_Demand_Company1` FOREIGN KEY (`Company_Company_ID`) REFERENCES `company` (`Company_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Demand_Distributor1` FOREIGN KEY (`Distributor_Company_Company_ID`, `Distributor_D_ID`) REFERENCES `distributor` (`Company_Company_ID`, `D_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Demand_Vehicle1` FOREIGN KEY (`Vehicle_Vehicle_ID`, `Vehicle_Model_Model_Number`, `Vehicle_Company_Company_ID`) REFERENCES `vehicle` (`Vehicle_ID`, `Model_Model_Number`, `Company_Company_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `demand`
--

LOCK TABLES `demand` WRITE;
/*!40000 ALTER TABLE `demand` DISABLE KEYS */;
INSERT INTO `demand` VALUES ('1',50,'2017-10-06',1,1,'4',1,'2GA',1),('2',75,'2017-07-06',1,1,'3',4,'ABEILLE',1),('3',15,'2017-06-06',1,1,'2',7,'MUSTANG',1),('4',4,'2017-12-06',1,1,'5',2,'300',1),('5',20,'2017-02-06',1,1,'1',5,'ANGLIA',1),('6',10,'2017-02-12',1,1,'4',1,'2GA',1);
/*!40000 ALTER TABLE `demand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `distributor`
--

DROP TABLE IF EXISTS `distributor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `distributor` (
  `D_ID` varchar(45) NOT NULL,
  `D_Name` varchar(40) NOT NULL,
  `D_Phone` int(11) NOT NULL,
  `D_Email` varchar(45) NOT NULL,
  `Company_Company_ID` int(11) NOT NULL,
  PRIMARY KEY (`Company_Company_ID`,`D_ID`),
  KEY `fk_Distributor/Dealership_Company1_idx` (`Company_Company_ID`),
  CONSTRAINT `fk_Distributor/Dealership_Company1` FOREIGN KEY (`Company_Company_ID`) REFERENCES `company` (`Company_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `distributor`
--

LOCK TABLES `distributor` WRITE;
/*!40000 ALTER TABLE `distributor` DISABLE KEYS */;
INSERT INTO `distributor` VALUES ('1','Symphony Dealers',1100,'sd@gmail.com',1),('2','Ace Dealers',1180,'ad@gmail.com',1),('3','Star Dealers',1190,'stard@gmail.com',1),('4','Speedy Dealers',2100,'speedyd@gmail.com',1),('5','Optimum Dealers',1700,'od@gmail.com',1);
/*!40000 ALTER TABLE `distributor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee` (
  `Employee_ID` int(11) NOT NULL,
  `Employee_Name` varchar(45) NOT NULL,
  `Employee_Role` varchar(45) NOT NULL,
  `Manufacturing_Plant_MP_ID` int(11) NOT NULL,
  PRIMARY KEY (`Employee_ID`,`Manufacturing_Plant_MP_ID`),
  KEY `fk_Employee_Manufacturing_Plant1_idx` (`Manufacturing_Plant_MP_ID`),
  CONSTRAINT `fk_Employee_Manufacturing_Plant1` FOREIGN KEY (`Manufacturing_Plant_MP_ID`) REFERENCES `manufacturing_plant` (`MP_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'TUSHAR','Company Manager',1),(2,'DHARIT','Company Manager',2),(3,'SAMEER','Company Manager',3),(4,'SAMI','Company Manager',4),(5,'VIKAS','Company Manager',5),(6,'NAMAN','Employee',1),(7,'JAY','Employee',2),(8,'RAJ','Employee',3),(9,'ASHISH','Employee',4),(10,'ADITYA','Employee',5),(11,'SUSHANT','Employee',2);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `employee_view`
--

DROP TABLE IF EXISTS `employee_view`;
/*!50001 DROP VIEW IF EXISTS `employee_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `employee_view` AS SELECT 
 1 AS `Employee_ID`,
 1 AS `Employee_Name`,
 1 AS `Employee_Role`,
 1 AS `MP_ID`,
 1 AS `MP_NAME`,
 1 AS `company_id`,
 1 AS `company_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `invoice`
--

DROP TABLE IF EXISTS `invoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invoice` (
  `Invoice_Id` int(11) NOT NULL,
  `Invoice_Date` date NOT NULL,
  `Invoice_Amount` int(11) NOT NULL,
  PRIMARY KEY (`Invoice_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice`
--

LOCK TABLES `invoice` WRITE;
/*!40000 ALTER TABLE `invoice` DISABLE KEYS */;
INSERT INTO `invoice` VALUES (1,'2017-10-12',750000),(2,'2017-07-12',2250000),(3,'2017-06-12',675000),(4,'2017-12-12',80000),(5,'2017-02-12',700000),(6,'2017-02-15',90000);
/*!40000 ALTER TABLE `invoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `location` (
  `Location_ID` int(11) NOT NULL,
  `Street` varchar(45) NOT NULL,
  `City` varchar(45) NOT NULL,
  `State` varchar(45) NOT NULL,
  `Country` varchar(45) NOT NULL,
  `Zipcode` varchar(45) NOT NULL,
  PRIMARY KEY (`Location_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
INSERT INTO `location` VALUES (1,'Roxbury','Boston','MA','USA','02120'),(2,'2nd Penn Street','New York','NY','USA','06114'),(3,'21st Street ','New Jersey','NJ','USA','02150'),(4,'34th Street ','Los Angeles','LA','USA','02120'),(5,'14th Mass Ave','Boston','MA','USA','02115');
/*!40000 ALTER TABLE `location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manufacturing_code`
--

DROP TABLE IF EXISTS `manufacturing_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `manufacturing_code` (
  `NAICS_CODE` int(11) NOT NULL,
  PRIMARY KEY (`NAICS_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manufacturing_code`
--

LOCK TABLES `manufacturing_code` WRITE;
/*!40000 ALTER TABLE `manufacturing_code` DISABLE KEYS */;
INSERT INTO `manufacturing_code` VALUES (1845);
/*!40000 ALTER TABLE `manufacturing_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manufacturing_plant`
--

DROP TABLE IF EXISTS `manufacturing_plant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `manufacturing_plant` (
  `MP_ID` int(11) NOT NULL,
  `MP_NAME` varchar(45) NOT NULL,
  `Manufacturing_Code_NAICS_CODE` int(11) NOT NULL,
  `Company_Company_ID` int(11) NOT NULL,
  `Location_Location_ID` int(11) NOT NULL,
  `Utility_Utility_Id` int(11) NOT NULL,
  PRIMARY KEY (`MP_ID`,`Manufacturing_Code_NAICS_CODE`,`Company_Company_ID`,`Location_Location_ID`,`Utility_Utility_Id`),
  KEY `fk_Manufacturing_Plant_Manufacturing_Code_idx` (`Manufacturing_Code_NAICS_CODE`),
  KEY `fk_Manufacturing_Plant_Company1_idx` (`Company_Company_ID`),
  KEY `fk_Manufacturing_Plant_Location1_idx` (`Location_Location_ID`),
  KEY `fk_Manufacturing_Plant_Utility1_idx` (`Utility_Utility_Id`),
  CONSTRAINT `fk_Manufacturing_Plant_Company1` FOREIGN KEY (`Company_Company_ID`) REFERENCES `company` (`Company_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Manufacturing_Plant_Location1` FOREIGN KEY (`Location_Location_ID`) REFERENCES `location` (`Location_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Manufacturing_Plant_Manufacturing_Code` FOREIGN KEY (`Manufacturing_Code_NAICS_CODE`) REFERENCES `manufacturing_code` (`NAICS_CODE`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Manufacturing_Plant_Utility1` FOREIGN KEY (`Utility_Utility_Id`) REFERENCES `utility` (`Utility_Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manufacturing_plant`
--

LOCK TABLES `manufacturing_plant` WRITE;
/*!40000 ALTER TABLE `manufacturing_plant` DISABLE KEYS */;
INSERT INTO `manufacturing_plant` VALUES (1,'Ford Motors Division 1',1845,1,1,1),(2,'Ford Motors Division alpha',1845,1,2,1),(3,'Ford Motors Division beta',1845,1,3,1),(4,'Ford Motors Division gama',1845,1,4,1),(5,'Ford Motors Division pico',1845,1,5,1);
/*!40000 ALTER TABLE `manufacturing_plant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model`
--

DROP TABLE IF EXISTS `model`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `model` (
  `Model_Number` varchar(40) NOT NULL,
  `Model_Name` varchar(45) NOT NULL,
  `Model_Transmission` varchar(45) NOT NULL,
  `Model_Type` varchar(45) NOT NULL,
  PRIMARY KEY (`Model_Number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model`
--

LOCK TABLES `model` WRITE;
/*!40000 ALTER TABLE `model` DISABLE KEYS */;
INSERT INTO `model` VALUES ('1','2GA','AUTO','HATCHBACK'),('10','PAMPA','AUTO','SPORT'),('11','Figo','AUTO','HATCHBACK'),('2','300','AUTO','HATCHBACK'),('3','7W','AUTO','HATCHBACK'),('4','ABEILLE','AUTO','HATCHBACK'),('5','ANGLIA','AUTO','SPORT'),('6','CAPRI','AUTO','SPORT'),('7','MUSTANG','AUTO','SEDAN'),('8','EXP','AUTO','HATCHBACK'),('9','ELITE','AUTO','SEDAN');
/*!40000 ALTER TABLE `model` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger insert_a_cost
after insert on model
for each row
begin
insert into cost
values(75000,11);
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `only_employee_view`
--

DROP TABLE IF EXISTS `only_employee_view`;
/*!50001 DROP VIEW IF EXISTS `only_employee_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `only_employee_view` AS SELECT 
 1 AS `Employee_ID`,
 1 AS `Employee_Name`,
 1 AS `Employee_Role`,
 1 AS `MP_ID`,
 1 AS `MP_NAME`,
 1 AS `company_id`,
 1 AS `company_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment` (
  `Payment_Id` int(11) NOT NULL,
  `Payment_Method` varchar(45) NOT NULL,
  `Payment_Date` date NOT NULL,
  `Payment_Status` varchar(45) NOT NULL,
  `Invoice_Invoice_Id` int(11) NOT NULL,
  `Distributor_Company_Company_ID` int(11) NOT NULL,
  `Distributor_D_ID` varchar(45) NOT NULL,
  PRIMARY KEY (`Payment_Id`),
  KEY `fk_Payment_Invoice1_idx` (`Invoice_Invoice_Id`),
  KEY `fk_Payment_Distributor1_idx` (`Distributor_Company_Company_ID`,`Distributor_D_ID`),
  CONSTRAINT `fk_Payment_Distributor1` FOREIGN KEY (`Distributor_Company_Company_ID`, `Distributor_D_ID`) REFERENCES `distributor` (`Company_Company_ID`, `D_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Payment_Invoice1` FOREIGN KEY (`Invoice_Invoice_Id`) REFERENCES `invoice` (`Invoice_Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (1,'Cheque','2017-10-19','Paid',1,1,'4'),(2,'Cheque','2017-07-19','Paid',2,1,'3'),(3,'Cheque','2017-06-19','Paid',3,1,'2'),(4,'Cheque','2017-12-19','Paid',4,1,'5'),(5,'Cheque','2017-02-19','Paid',5,1,'1'),(6,'Cheque','2017-02-22','Paid',6,1,'4');
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `production`
--

DROP TABLE IF EXISTS `production`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `production` (
  `Production_ID` varchar(45) NOT NULL,
  `Production_Status` varchar(45) NOT NULL,
  `Production_Quantity` varchar(45) NOT NULL,
  `Manufacturing_Plant_MP_ID` int(11) NOT NULL,
  `Request_Request_ID` varchar(45) NOT NULL,
  `Invoice_Invoice_Id` int(11) NOT NULL,
  PRIMARY KEY (`Production_ID`,`Manufacturing_Plant_MP_ID`),
  KEY `fk_Production_Manufacturing_Plant1_idx` (`Manufacturing_Plant_MP_ID`),
  KEY `fk_Production_Request1_idx` (`Request_Request_ID`),
  KEY `fk_Production_Invoice1_idx` (`Invoice_Invoice_Id`),
  CONSTRAINT `fk_Production_Invoice1` FOREIGN KEY (`Invoice_Invoice_Id`) REFERENCES `invoice` (`Invoice_Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Production_Manufacturing_Plant1` FOREIGN KEY (`Manufacturing_Plant_MP_ID`) REFERENCES `manufacturing_plant` (`MP_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Production_Request1` FOREIGN KEY (`Request_Request_ID`) REFERENCES `request` (`Request_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `production`
--

LOCK TABLES `production` WRITE;
/*!40000 ALTER TABLE `production` DISABLE KEYS */;
INSERT INTO `production` VALUES ('1','completed','50',1,'1',1),('2','completed','75',2,'2',2),('3','completed','15',3,'3',3),('4','completed','4',4,'4',4),('5','completed','20',5,'5',5),('6','completed','10',1,'6',6);
/*!40000 ALTER TABLE `production` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `production_has_vehicle`
--

DROP TABLE IF EXISTS `production_has_vehicle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `production_has_vehicle` (
  `Production_Production_ID` varchar(45) NOT NULL,
  `Production_Manufacturing_Plant_MP_ID` int(11) NOT NULL,
  `Vehicle_Vehicle_ID` int(11) NOT NULL,
  `Vehicle_Model_Model_Number` varchar(40) NOT NULL,
  `Vehicle_Company_Company_ID` int(11) NOT NULL,
  PRIMARY KEY (`Production_Production_ID`,`Production_Manufacturing_Plant_MP_ID`,`Vehicle_Vehicle_ID`,`Vehicle_Model_Model_Number`,`Vehicle_Company_Company_ID`),
  KEY `fk_Production_has_Vehicle_Vehicle1_idx` (`Vehicle_Vehicle_ID`,`Vehicle_Model_Model_Number`,`Vehicle_Company_Company_ID`),
  KEY `fk_Production_has_Vehicle_Production1_idx` (`Production_Production_ID`,`Production_Manufacturing_Plant_MP_ID`),
  CONSTRAINT `fk_Production_has_Vehicle_Production1` FOREIGN KEY (`Production_Production_ID`, `Production_Manufacturing_Plant_MP_ID`) REFERENCES `production` (`Production_ID`, `Manufacturing_Plant_MP_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Production_has_Vehicle_Vehicle1` FOREIGN KEY (`Vehicle_Vehicle_ID`, `Vehicle_Model_Model_Number`, `Vehicle_Company_Company_ID`) REFERENCES `vehicle` (`Vehicle_ID`, `Model_Model_Number`, `Company_Company_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `production_has_vehicle`
--

LOCK TABLES `production_has_vehicle` WRITE;
/*!40000 ALTER TABLE `production_has_vehicle` DISABLE KEYS */;
INSERT INTO `production_has_vehicle` VALUES ('1',1,1,'2GA',1),('6',1,1,'2GA',1),('4',4,2,'300',1),('2',2,4,'ABEILLE',1),('5',5,5,'ANGLIA',1),('3',3,7,'MUSTANG',1);
/*!40000 ALTER TABLE `production_has_vehicle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `request`
--

DROP TABLE IF EXISTS `request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `request` (
  `Request_ID` varchar(45) NOT NULL,
  `Request_Quantity` int(11) NOT NULL,
  `Request_Date` date NOT NULL,
  `Company_Company_ID` int(11) NOT NULL,
  `Vehicle_Vehicle_ID` int(11) NOT NULL,
  `Vehicle_Model_Model_Number` varchar(40) NOT NULL,
  `Vehicle_Company_Company_ID` int(11) NOT NULL,
  `Vehicle_Model_Model_Number1` varchar(40) NOT NULL,
  PRIMARY KEY (`Request_ID`),
  KEY `fk_Request_Company1_idx` (`Company_Company_ID`),
  KEY `fk_Request_Vehicle1_idx` (`Vehicle_Vehicle_ID`,`Vehicle_Model_Model_Number`,`Vehicle_Company_Company_ID`,`Vehicle_Model_Model_Number1`),
  CONSTRAINT `fk_Request_Company1` FOREIGN KEY (`Company_Company_ID`) REFERENCES `company` (`Company_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Request_Vehicle1` FOREIGN KEY (`Vehicle_Vehicle_ID`, `Vehicle_Model_Model_Number`, `Vehicle_Company_Company_ID`, `Vehicle_Model_Model_Number1`) REFERENCES `vehicle` (`Vehicle_ID`, `Model_Model_Number`, `Company_Company_ID`, `Model_Model_Number1`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `request`
--

LOCK TABLES `request` WRITE;
/*!40000 ALTER TABLE `request` DISABLE KEYS */;
INSERT INTO `request` VALUES ('1',50,'2017-10-09',1,1,'2GA',1,'1'),('2',75,'2017-07-09',1,4,'ABEILLE',1,'4'),('3',15,'2017-06-09',1,7,'MUSTANG',1,'7'),('4',4,'2017-12-09',1,2,'300',1,'2'),('5',20,'2017-02-09',1,5,'ANGLIA',1,'5'),('6',10,'2017-02-12',1,1,'2GA',1,'1');
/*!40000 ALTER TABLE `request` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`DistributorDealership@localhost`@`localhost`*/ /*!50003 trigger insert_into_demand
after insert on request
for each row
begin
insert into demand
select 7,(select request.Request_Quantity from request where Request_ID=7),
(select adddate((select demand.Demand_Date from demand where Demand_Id=6),03)),1,1,5,5,
(select Vehicle_Vehicle_ID from vehicle where Vehicle_Model_Model_Number1='ANGLIA'),1;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`DistributorDealership@localhost`@`localhost`*/ /*!50003 trigger insert_into_demand1
after insert on request
for each row
begin
insert into demand
select 7,(select request.Request_Quantity from request where Request_ID=7),
(select adddate((select demand.Demand_Date from demand where Demand_Id=6),03)),1,1,5,5,
(select Vehicle_Model_Model_Number1 from vehicle where Vehicle_ID=5),1;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`DistributorDealership@localhost`@`localhost`*/ /*!50003 trigger insert_into_demand11
after insert on request
for each row
begin
insert into demand
select 7,(select request.Request_Quantity from request where Request_ID=7),
(select adddate((select demand.Demand_Date from demand where Demand_Id=6),03)),1,1,5,5,
(select model.Model_Name from vehicle inner join model on
vehicle.Model_Model_Number1=model.Model_Number where Vehicle_ID=5),1;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `shipment`
--

DROP TABLE IF EXISTS `shipment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shipment` (
  `Shipment_Id` int(11) NOT NULL,
  `Shipment_Delivery_Date` varchar(45) NOT NULL,
  `Shipment_Quantity` varchar(45) NOT NULL,
  `Shipment_Status` varchar(45) NOT NULL,
  `Shipper_Name` varchar(45) NOT NULL,
  `Production_Production_ID` varchar(45) NOT NULL,
  `Production_Manufacturing_Plant_MP_ID` int(11) NOT NULL,
  `Distributor_Company_Company_ID` int(11) NOT NULL,
  `Distributor_D_ID` varchar(45) NOT NULL,
  PRIMARY KEY (`Shipment_Id`),
  KEY `fk_Shipment_Production1_idx` (`Production_Production_ID`,`Production_Manufacturing_Plant_MP_ID`),
  KEY `fk_Shipment_Distributor1_idx` (`Distributor_Company_Company_ID`,`Distributor_D_ID`),
  CONSTRAINT `fk_Shipment_Distributor1` FOREIGN KEY (`Distributor_Company_Company_ID`, `Distributor_D_ID`) REFERENCES `distributor` (`Company_Company_ID`, `D_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Shipment_Production1` FOREIGN KEY (`Production_Production_ID`, `Production_Manufacturing_Plant_MP_ID`) REFERENCES `production` (`Production_ID`, `Manufacturing_Plant_MP_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipment`
--

LOCK TABLES `shipment` WRITE;
/*!40000 ALTER TABLE `shipment` DISABLE KEYS */;
INSERT INTO `shipment` VALUES (1,'2017-10-13','50','delivered','FedX','1',1,1,'4'),(2,'2017-07-13','75','delivered','FedX','2',2,1,'3'),(3,'2017-06-13','15','delivered','FedX','3',3,1,'2'),(4,'2017-12-13','4','delivered','FedX','4',4,1,'5'),(5,'2017-02-13','20','delivered','FedX','5',5,1,'1'),(6,'2017-02-16','10','dispatched','FedX','5',5,1,'4');
/*!40000 ALTER TABLE `shipment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `u_usage`
--

DROP TABLE IF EXISTS `u_usage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `u_usage` (
  `Usage Quantity` int(11) NOT NULL,
  `Start Date` varchar(45) NOT NULL,
  `End Date` varchar(45) NOT NULL,
  `Utility_Utility_Id` int(11) NOT NULL,
  PRIMARY KEY (`Usage Quantity`,`Utility_Utility_Id`),
  KEY `fk_Usage_Utility1_idx` (`Utility_Utility_Id`),
  CONSTRAINT `fk_Usage_Utility1` FOREIGN KEY (`Utility_Utility_Id`) REFERENCES `utility` (`Utility_Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `u_usage`
--

LOCK TABLES `u_usage` WRITE;
/*!40000 ALTER TABLE `u_usage` DISABLE KEYS */;
INSERT INTO `u_usage` VALUES (148,'2017-01-1','2017-02-1',1),(155,'2017-06-1','2017-07-1',1),(175,'2017-02-1','2017-03-1',1),(200,'2017-10-1','2017-11-1',1),(212,'2016-12-1','2017-01-1',1),(250,'2017-11-1','2017-12-1',1),(260,'2017-04-1','2017-05-1',1),(275,'2017-09-1','2017-10-1',1),(280,'2017-03-1','2017-04-1',1),(300,'2017-07-1','2017-08-1',1),(430,'2017-08-1','2017-09-1',1),(450,'2017-05-1','2017-06-1',1);
/*!40000 ALTER TABLE `u_usage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `utility`
--

DROP TABLE IF EXISTS `utility`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `utility` (
  `Utility_Id` int(11) NOT NULL,
  `Utility_Name` varchar(45) NOT NULL,
  `Utility_Description` varchar(45) NOT NULL,
  PRIMARY KEY (`Utility_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utility`
--

LOCK TABLES `utility` WRITE;
/*!40000 ALTER TABLE `utility` DISABLE KEYS */;
INSERT INTO `utility` VALUES (1,'Electricity','Amount of electricity used'),(2,'Gas','Amount of gas used');
/*!40000 ALTER TABLE `utility` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle`
--

DROP TABLE IF EXISTS `vehicle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vehicle` (
  `Vehicle_ID` int(11) NOT NULL,
  `Vehicle_Name` varchar(45) NOT NULL,
  `Model_Model_Number` varchar(40) NOT NULL,
  `Company_Company_ID` int(11) NOT NULL,
  `Model_Model_Number1` varchar(40) NOT NULL,
  PRIMARY KEY (`Vehicle_ID`,`Model_Model_Number`,`Company_Company_ID`,`Model_Model_Number1`),
  KEY `fk_Vehicle_Company1_idx` (`Company_Company_ID`),
  KEY `fk_Vehicle_Model1_idx` (`Model_Model_Number1`),
  CONSTRAINT `fk_Vehicle_Company1` FOREIGN KEY (`Company_Company_ID`) REFERENCES `company` (`Company_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Vehicle_Model1` FOREIGN KEY (`Model_Model_Number1`) REFERENCES `model` (`Model_Number`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle`
--

LOCK TABLES `vehicle` WRITE;
/*!40000 ALTER TABLE `vehicle` DISABLE KEYS */;
INSERT INTO `vehicle` VALUES (1,'Ford 2ga','2GA',1,'1'),(2,'Ford 300','300',1,'2'),(3,'Ford 7W','7W',1,'3'),(4,'Ford ABEILLE','ABEILLE',1,'4'),(5,'Ford ANGLIA','ANGLIA',1,'5'),(6,'Ford CAPRI','CAPRI',1,'6'),(7,'Ford MUSTANG','MUSTANG',1,'7'),(8,'Ford EXP','EXP',1,'8'),(9,'Ford ELITE','ELITE',1,'9'),(10,'Ford PAMPA','PAMPA',1,'10');
/*!40000 ALTER TABLE `vehicle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `view_vehicle`
--

DROP TABLE IF EXISTS `view_vehicle`;
/*!50001 DROP VIEW IF EXISTS `view_vehicle`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `view_vehicle` AS SELECT 
 1 AS `Vehicle_ID`,
 1 AS `Vehicle_Name`,
 1 AS `Model_Name`,
 1 AS `Model_Number`,
 1 AS `Model_Transmission`,
 1 AS `Model_Type`,
 1 AS `Price`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `warehouse`
--

DROP TABLE IF EXISTS `warehouse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `warehouse` (
  `Warehouse_ID` int(11) NOT NULL,
  `Warehouse_Name` varchar(20) NOT NULL,
  `Location_Location_ID` int(11) NOT NULL,
  `Manufacturing_Plant_MP_ID` int(11) NOT NULL,
  PRIMARY KEY (`Warehouse_ID`,`Location_Location_ID`),
  KEY `fk_Warehouse_Location1_idx` (`Location_Location_ID`),
  KEY `fk_Warehouse_Manufacturing_Plant1_idx` (`Manufacturing_Plant_MP_ID`),
  CONSTRAINT `fk_Warehouse_Location1` FOREIGN KEY (`Location_Location_ID`) REFERENCES `location` (`Location_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Warehouse_Manufacturing_Plant1` FOREIGN KEY (`Manufacturing_Plant_MP_ID`) REFERENCES `manufacturing_plant` (`MP_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `warehouse`
--

LOCK TABLES `warehouse` WRITE;
/*!40000 ALTER TABLE `warehouse` DISABLE KEYS */;
INSERT INTO `warehouse` VALUES (1,'Ford Division 1 WH',1,1),(2,'Ford ALPHA WH',2,2),(3,'Ford BETA WH',3,3),(4,'Ford GAMMA WH',4,4),(5,'Ford  PICO WH',5,5);
/*!40000 ALTER TABLE `warehouse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'mydb'
--

--
-- Dumping routines for database 'mydb'
--
/*!50003 DROP PROCEDURE IF EXISTS `check_price` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `check_price`(IN val int)
begin 
 declare val int default 0;
 select vehicle.Vehicle_ID,vehicle.Vehicle_Name,model.Model_Name,model.Model_Number,cost.Price
 from vehicle inner join model inner join cost 
 on vehicle.Model_Model_Number1=model.Model_Number and model.Model_Number=cost.Model_Model_Number
 where Vehicle_ID=val;
 end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `check_price1` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `check_price1`(IN val int)
begin 
 /*declare val int ;*/
 select vehicle.Vehicle_ID,vehicle.Vehicle_Name,model.Model_Name,model.Model_Number,cost.Price
 from vehicle inner join model inner join cost 
 on vehicle.Model_Model_Number1=model.Model_Number and model.Model_Number=cost.Model_Model_Number
 where Vehicle_ID=val;
 end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `all_vehicle`
--

/*!50001 DROP VIEW IF EXISTS `all_vehicle`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `all_vehicle` AS select `vehicle`.`Vehicle_ID` AS `Vehicle_ID`,`vehicle`.`Vehicle_Name` AS `Vehicle_Name`,`model`.`Model_Name` AS `Model_Name`,`model`.`Model_Number` AS `Model_Number`,`model`.`Model_Transmission` AS `Model_Transmission`,`model`.`Model_Type` AS `Model_Type`,`cost`.`Price` AS `Price` from ((`vehicle` join `model`) join `cost` on(((`vehicle`.`Model_Model_Number1` = `model`.`Model_Number`) and (`model`.`Model_Number` = `cost`.`Model_Model_Number`)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `all_vehicles`
--

/*!50001 DROP VIEW IF EXISTS `all_vehicles`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `all_vehicles` AS select `vehicle`.`Vehicle_ID` AS `Vehicle_ID`,`vehicle`.`Vehicle_Name` AS `Vehicle_Name`,`model`.`Model_Name` AS `Model_Name`,`model`.`Model_Number` AS `Model_Number`,`model`.`Model_Transmission` AS `Model_Transmission`,`model`.`Model_Type` AS `Model_Type`,`cost`.`Price` AS `Price` from ((`vehicle` join `model`) join `cost` on(((`vehicle`.`Model_Model_Number` = `model`.`Model_Number`) and (`model`.`Model_Number` = `cost`.`Model_Model_Number`)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `all_vehicles1`
--

/*!50001 DROP VIEW IF EXISTS `all_vehicles1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `all_vehicles1` AS select `vehicle`.`Vehicle_ID` AS `Vehicle_ID`,`vehicle`.`Vehicle_Name` AS `Vehicle_Name`,`model`.`Model_Name` AS `Model_Name`,`model`.`Model_Number` AS `Model_Number`,`model`.`Model_Transmission` AS `Model_Transmission`,`model`.`Model_Type` AS `Model_Type` from (`vehicle` join `model` on((`vehicle`.`Model_Model_Number` = `model`.`Model_Number`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `all_vehicles11`
--

/*!50001 DROP VIEW IF EXISTS `all_vehicles11`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `all_vehicles11` AS select `vehicle`.`Vehicle_ID` AS `Vehicle_ID`,`vehicle`.`Vehicle_Name` AS `Vehicle_Name`,`model`.`Model_Name` AS `Model_Name`,`model`.`Model_Number` AS `Model_Number`,`model`.`Model_Transmission` AS `Model_Transmission`,`model`.`Model_Type` AS `Model_Type` from (`vehicle` join `model` on((`vehicle`.`Model_Model_Number` = `model`.`Model_Number`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `all_vehicles111`
--

/*!50001 DROP VIEW IF EXISTS `all_vehicles111`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `all_vehicles111` AS select `vehicle`.`Vehicle_ID` AS `Vehicle_ID`,`vehicle`.`Vehicle_Name` AS `Vehicle_Name`,`model`.`Model_Name` AS `Model_Name`,`model`.`Model_Number` AS `Model_Number`,`model`.`Model_Transmission` AS `Model_Transmission`,`model`.`Model_Type` AS `Model_Type` from (`vehicle` join `model` on((`vehicle`.`Model_Model_Number1` = `model`.`Model_Number`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `company_manager_view`
--

/*!50001 DROP VIEW IF EXISTS `company_manager_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ComManager@localhost`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `company_manager_view` AS select `employee`.`Employee_ID` AS `Employee_ID`,`employee`.`Employee_Name` AS `Employee_Name`,`employee`.`Employee_Role` AS `Employee_Role`,`manufacturing_plant`.`MP_ID` AS `MP_ID`,`manufacturing_plant`.`MP_NAME` AS `MP_NAME`,`company`.`Company_ID` AS `company_id`,`company`.`Company_Name` AS `company_name` from ((`employee` join `manufacturing_plant`) join `company` on(((`employee`.`Manufacturing_Plant_MP_ID` = `manufacturing_plant`.`MP_ID`) and (`company`.`Company_ID` = `manufacturing_plant`.`Company_Company_ID`)))) where (`employee`.`Employee_Role` = 'Company Manager') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `employee_view`
--

/*!50001 DROP VIEW IF EXISTS `employee_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ComManager@localhost`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `employee_view` AS select `employee`.`Employee_ID` AS `Employee_ID`,`employee`.`Employee_Name` AS `Employee_Name`,`employee`.`Employee_Role` AS `Employee_Role`,`manufacturing_plant`.`MP_ID` AS `MP_ID`,`manufacturing_plant`.`MP_NAME` AS `MP_NAME`,`company`.`Company_ID` AS `company_id`,`company`.`Company_Name` AS `company_name` from ((`employee` join `manufacturing_plant`) join `company` on(((`employee`.`Manufacturing_Plant_MP_ID` = `manufacturing_plant`.`MP_ID`) and (`company`.`Company_ID` = `manufacturing_plant`.`Company_Company_ID`)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `only_employee_view`
--

/*!50001 DROP VIEW IF EXISTS `only_employee_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ComManager@localhost`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `only_employee_view` AS select `employee`.`Employee_ID` AS `Employee_ID`,`employee`.`Employee_Name` AS `Employee_Name`,`employee`.`Employee_Role` AS `Employee_Role`,`manufacturing_plant`.`MP_ID` AS `MP_ID`,`manufacturing_plant`.`MP_NAME` AS `MP_NAME`,`company`.`Company_ID` AS `company_id`,`company`.`Company_Name` AS `company_name` from ((`employee` join `manufacturing_plant`) join `company` on(((`employee`.`Manufacturing_Plant_MP_ID` = `manufacturing_plant`.`MP_ID`) and (`company`.`Company_ID` = `manufacturing_plant`.`Company_Company_ID`)))) where (`employee`.`Employee_Role` = 'Employee') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_vehicle`
--

/*!50001 DROP VIEW IF EXISTS `view_vehicle`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_vehicle` AS select `v`.`Vehicle_ID` AS `Vehicle_ID`,`v`.`Vehicle_Name` AS `Vehicle_Name`,`m`.`Model_Name` AS `Model_Name`,`m`.`Model_Number` AS `Model_Number`,`m`.`Model_Transmission` AS `Model_Transmission`,`m`.`Model_Type` AS `Model_Type`,`c`.`Price` AS `Price` from ((`vehicle` `v` join `model` `m`) join `cost` `c` on(((`v`.`Model_Model_Number` = `m`.`Model_Number`) and (`m`.`Model_Number` = `c`.`Model_Model_Number`)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-13 18:25:54
