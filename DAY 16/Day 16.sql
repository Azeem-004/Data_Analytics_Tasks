-- MySQL dump 10.13  Distrib 8.0.45, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Port: 3306
-- Server version 8.0.45

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
-- Current Database: `superstore_day16`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `superstore_day16` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */;
USE `superstore_day16`;

DROP TABLE IF EXISTS `superstore`;

CREATE TABLE `superstore` (
  `Row_ID` int NOT NULL,
  `Order_ID` varchar(20) NOT NULL,
  `Order_Date` date NOT NULL,
  `Ship_Date` date NOT NULL,
  `Ship_Mode` varchar(30) DEFAULT NULL,
  `Customer_ID` varchar(20) DEFAULT NULL,
  `Customer_Name` varchar(100) DEFAULT NULL,
  `Segment` varchar(30) DEFAULT NULL,
  `Country` varchar(50) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `State` varchar(100) DEFAULT NULL,
  `Postal_Code` int DEFAULT NULL,
  `Region` varchar(30) DEFAULT NULL,
  `Product_ID` varchar(30) DEFAULT NULL,
  `Category` varchar(50) DEFAULT NULL,
  `Sub_Category` varchar(50) DEFAULT NULL,
  `Product_Name` varchar(255) DEFAULT NULL,
  `Sales` decimal(12,4) DEFAULT NULL,
  `Quantity` int DEFAULT NULL,
  `Discount` decimal(5,2) DEFAULT NULL,
  `Profit` decimal(12,4) DEFAULT NULL,
  PRIMARY KEY (`Row_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- Sample Superstore transaction data
INSERT INTO `superstore` (`Row_ID`, `Order_ID`, `Order_Date`, `Ship_Date`, `Ship_Mode`, `Customer_ID`, `Customer_Name`, `Segment`, `Country`, `City`, `State`, `Postal_Code`, `Region`, `Product_ID`, `Category`, `Sub_Category`, `Product_Name`, `Sales`, `Quantity`, `Discount`, `Profit`) VALUES,
(1,'CA-2016-152156','2016-11-08','2016-11-11','Second Class','CG-12520','Claire Gute','Consumer','United States','Henderson','Kentucky',42420,'South','FUR-BO-10001798','Furniture','Bookcases','Bush Somerset Collection Bookcase',261.96,2,0,41.9136),
(2,'CA-2016-152156','2016-11-08','2016-11-11','Second Class','CG-12520','Claire Gute','Consumer','United States','Henderson','Kentucky',42420,'South','FUR-CH-10000454','Furniture','Chairs','Hon Deluxe Fabric Upholstered Stacking Chairs, Rounded Back',731.94,3,0,219.582),
(3,'CA-2016-138688','2016-06-12','2016-06-16','Second Class','DV-13045','Darrin Van Huff','Corporate','United States','Los Angeles','California',90036,'West','OFF-LA-10000240','Office Supplies','Labels','Self-Adhesive Address Labels for Typewriters by Universal',14.62,2,0,6.8714),
(4,'US-2015-108966','2015-10-11','2015-10-18','Standard Class','SO-20335','Sean O''Donnell','Consumer','United States','Fort Lauderdale','Florida',33311,'South','FUR-TA-10000577','Furniture','Tables','Bretford CR4500 Series Slim Rectangular Table',957.5775,5,0.45,-383.031),
(5,'US-2015-108966','2015-10-11','2015-10-18','Standard Class','SO-20335','Sean O''Donnell','Consumer','United States','Fort Lauderdale','Florida',33311,'South','OFF-ST-10000760','Office Supplies','Storage','Eldon Fold ''N Roll Cart System',22.368,2,0.2,2.5164),
(6,'CA-2014-115812','2014-06-09','2014-06-14','Standard Class','BH-11710','Brosina Hoffman','Consumer','United States','Los Angeles','California',90032,'West','FUR-FU-10001487','Furniture','Furnishings','Eldon Expressions Wood and Plastic Desk Accessories, Cherry Wood',48.86,7,0,14.1694),
(7,'CA-2014-115812','2014-06-09','2014-06-14','Standard Class','BH-11710','Brosina Hoffman','Consumer','United States','Los Angeles','California',90032,'West','OFF-AR-10002833','Office Supplies','Art','Newell 322',7.28,4,0,1.9656),
(8,'CA-2014-115812','2014-06-09','2014-06-14','Standard Class','BH-11710','Brosina Hoffman','Consumer','United States','Los Angeles','California',90032,'West','TEC-PH-10002275','Technology','Phones','Mitel 5320 IP Phone VoIP phone',907.152,6,0.2,90.7152),
(9,'CA-2014-115812','2014-06-09','2014-06-14','Standard Class','BH-11710','Brosina Hoffman','Consumer','United States','Los Angeles','California',90032,'West','OFF-BI-10003910','Office Supplies','Binders','DXL Angle-View Binders with Locking Rings by Samsill',18.504,3,0.2,5.7825),
(10,'CA-2014-115812','2014-06-09','2014-06-14','Standard Class','BH-11710','Brosina Hoffman','Consumer','United States','Los Angeles','California',90032,'West','OFF-AP-10002892','Office Supplies','Appliances','Belkin F5C206VTEL 6 Outlet Surge',114.9,5,0,34.47),
(11,'CA-2014-115812','2014-06-09','2014-06-14','Standard Class','BH-11710','Brosina Hoffman','Consumer','United States','Los Angeles','California',90032,'West','FUR-TA-10001539','Furniture','Tables','Chromcraft Rectangular Conference Tables',1706.184,9,0.2,85.3092),
(12,'CA-2014-115812','2014-06-09','2014-06-14','Standard Class','BH-11710','Brosina Hoffman','Consumer','United States','Los Angeles','California',90032,'West','TEC-PH-10002033','Technology','Phones','Konftel 250 Conference phone - Charcoal black',911.424,4,0.2,68.3568),
(13,'CA-2017-114412','2017-04-15','2017-04-20','Standard Class','AA-10480','Andrew Allen','Consumer','United States','Concord','North Carolina',28027,'South','OFF-PA-10002365','Office Supplies','Paper','Xerox 1967',15.552,3,0.2,5.4432),
(14,'CA-2016-161389','2016-12-05','2016-12-10','Standard Class','IM-15070','Irene Maddox','Consumer','United States','Seattle','Washington',98103,'West','OFF-BI-10003656','Office Supplies','Binders','Fellowes PB200 Plastic Comb Binding Machine',407.976,3,0.2,132.5922),
(15,'US-2015-118983','2015-11-22','2015-11-26','Standard Class','HP-14815','Harold Pawlan','Home Office','United States','Fort Worth','Texas',76106,'Central','OFF-AP-10002311','Office Supplies','Appliances','Holmes Replacement Filter for HEPA Air Cleaner, Very Large Room, HEPA Filter',68.81,5,0.8,-123.858);

-- Day 16: Sorting and distinct values
SELECT DISTINCT Category FROM superstore;
SELECT DISTINCT Region FROM superstore;
SELECT * FROM superstore ORDER BY Sales DESC;
SELECT Product_Name, Sales, Quantity FROM superstore ORDER BY Quantity DESC, Sales DESC;
SELECT * FROM superstore WHERE Discount > 0.20 ORDER BY Discount DESC;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
