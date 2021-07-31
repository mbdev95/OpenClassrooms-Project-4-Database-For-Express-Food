-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 11, 2019 at 12:08 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `expressfood_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `Address_Id` smallint(6) NOT NULL,
  `Customer_Id` smallint(6) NOT NULL,
  `Street` varchar(255) DEFAULT NULL,
  `Town` varchar(255) DEFAULT NULL,
  `State` varchar(255) DEFAULT NULL,
  `Country` varchar(255) DEFAULT NULL,
  `Zip_Code` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`Address_Id`, `Customer_Id`, `Street`, `Town`, `State`, `Country`, `Zip_Code`) VALUES
(2321, 1035, '19 Rochester Lane', 'Brooklyn', 'NY', 'USA', '11221'),
(2432, 2466, '7423 Mountianview Street', 'Brooklyn', 'NY', 'USA', '11207'),
(3430, 2055, '63 Beechwood Drive', 'Brooklyn', 'NY', 'USA', '11203'),
(3437, 1167, '59 East Hamilton Avenue', 'Brooklyn', 'NY', 'USA', '11234'),
(3456, 1627, '3 Gulf Street', 'Brooklyn', 'NY', 'USA', '11214'),
(3498, 9564, '556 Pheasant Court', 'Bronx', 'NY', 'USA', '10466'),
(4821, 8786, '768 Highland Road', 'Brooklyn', 'NY', 'USA', '11228'),
(5001, 6353, '8 Mill Pond Road', 'Brooklyn', 'NY', 'USA', '11223'),
(9201, 1738, '23 School Avenue', 'New York', 'NY', 'USA', '11216'),
(9943, 1868, '56 Sherman Street', 'Brooklyn', 'NY', 'USA', '11224');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Admin_Id` smallint(6) NOT NULL,
  `Customer_Id` smallint(6) DEFAULT NULL,
  `Admin_Role` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Admin_Id`, `Customer_Id`, `Admin_Role`) VALUES
(1393, 1925, 'Deilery Supervisor'),
(2381, 1418, 'President'),
(2573, 1220, 'Food Stock Manager'),
(3401, 1517, 'Vice President'),
(4001, 1330, 'Cook Supervisor');

-- --------------------------------------------------------

--
-- Table structure for table `credit card details`
--

CREATE TABLE `credit card details` (
  `Credit_Card_Id` smallint(6) NOT NULL,
  `Customer_Id` smallint(6) NOT NULL,
  `Credit_Card_Name` varchar(255) DEFAULT NULL,
  `Credit_Card_Number` varchar(255) DEFAULT NULL,
  `Credit_Card_Expiry_Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `credit card details`
--

INSERT INTO `credit card details` (`Credit_Card_Id`, `Customer_Id`, `Credit_Card_Name`, `Credit_Card_Number`, `Credit_Card_Expiry_Date`) VALUES
(1841, 1035, 'Darion Thomas', '4539560416338999', '2024-04-00'),
(2650, 2466, 'Dan Smith', '4929886569193990', '2022-02-00'),
(2957, 2055, 'Annabel Herrera', '5532446551540421', '2020-05-00'),
(3479, 1167, 'Sincere Benton', '5131524409240330', '2021-05-00'),
(4100, 1627, 'Dylan Massey', '5395998065184043', '2021-03-00'),
(4410, 9564, 'Blake Friedman', '4532618957316340', '2019-12-00'),
(4820, 8786, 'Yesenia Russo', '4716859444320663', '2023-06-00'),
(8420, 6353, 'Judith Watkins', '5294044049445366', '2020-08-00'),
(8821, 1738, 'Matilda Lynn', '5541521997795752', '2020-01-00'),
(9115, 1868, 'Charles Zavala', '5239774789227990', '2022-07-00');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `Customer_Id` smallint(6) NOT NULL,
  `Customer_Password` varchar(255) DEFAULT NULL,
  `Customer_Name` varchar(255) DEFAULT NULL,
  `Customer_Email` varchar(255) DEFAULT NULL,
  `Customer_Phone` varchar(255) DEFAULT NULL,
  `Registration_Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`Customer_Id`, `Customer_Password`, `Customer_Name`, `Customer_Email`, `Customer_Phone`, `Registration_Date`) VALUES
(1035, 'Ksetu7U5', 'Darion Thomas', 'darion.thomas40@yahoo.com', '2124759385', '2019-04-02'),
(1167, 'ZWnwPpN5', 'Sincere Benton', 'sincere.benton52@yahoo.com', '2123438419', '2019-03-27'),
(1220, 'TBkCvu7L', 'Meadow Wright', 'meadow.wright49@hotmail.com', '2120357499', '2019-03-27'),
(1256, 'MjKmrpDJ', 'Mary Jane', 'mary.jane49@gmail.com', '2124490035', '2019-04-03'),
(1330, 'R2mBH5Kt', 'Isla Sherman', 'isla.sherman@gmail.com', '2124956833', '2019-03-26'),
(1418, 's6mX5nBg', 'Alfredo Giles', 'alfredo.giles02@gmail.com', '7189953511', '2019-03-23'),
(1517, 'YgTu4qxt', 'Rigoberto Greene', 'rigoberto.greene31@gmail.com', '7185748810', '2019-03-27'),
(1627, 'rp6ZbN4D', 'Dylan Massey', 'dylan.massey493@yahoo.com', '7182573883', '2019-03-30'),
(1738, 'Ntd5sQK9', 'Matilda Lynn', 'matilda.lynn94@gmail.com', '7184359455', '2019-03-29'),
(1868, '9ryp89mN', 'Charles Zavala', 'charles.zavala4@gmail.com', '7183409920', '2019-03-28'),
(1925, 'zB2AyUzL', 'Janessa Vaughn', 'janessa.vaughn39@gmail.com', '7183455875', '2019-03-25'),
(2055, '3453445UzL', 'Annabel Herrera', 'annabel.herrera32@gmail.com', '7184672857', '2019-03-27'),
(2466, 'qgBsMBkc', 'Dan Smith', 'dan.smith6@gmail.com', '9174549301', '2019-04-01'),
(3567, 'rRYLscTJ', 'Alex Sawyer', 'alex.sawyer7@hotmail.com', '9174658388', '2019-04-07'),
(4463, 'Npeh4Q9h', 'Fernanda Roach', 'fernanda.roach75@hotmail.com', '9174349256', '2019-04-05'),
(5353, 'Zd9Wm3BS', 'Giovanni Koch', 'giovanni.koch6@gmail.com', '9174589209', '2019-04-05'),
(6353, 'jDT9Y932', 'Judith Watkins', 'judith.watkins3@gmail.com', '9173403574', '2019-03-30'),
(7353, '35HN9vsF', 'Reagan Sherman', 'reagan.sherman@gmail.com', '9173434583', '2019-04-05'),
(8786, 'b3QXvMED', 'Yesenia Russo', 'yesenia.russo0@hotmail.com', '2124785921', '2019-03-29'),
(9564, 'Xf9hJtFD', 'Blake Friedman', 'blake.friedman49@yahoo.com', '2125494577', '2019-03-28');

-- --------------------------------------------------------

--
-- Table structure for table `daily dish specials`
--

CREATE TABLE `daily dish specials` (
  `Daily_Dish_Specails_Id` smallint(6) NOT NULL,
  `Dish_Id` smallint(6) NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `daily dish specials`
--

INSERT INTO `daily dish specials` (`Daily_Dish_Specails_Id`, `Dish_Id`, `Date`) VALUES
(1011, 7620, '2019-04-15'),
(2289, 8407, '2019-04-14'),
(2385, 1119, '2019-04-10'),
(2593, 2461, '2019-04-14'),
(2866, 4062, '2019-04-12'),
(3242, 1021, '2019-04-15'),
(3333, 9902, '2019-04-12'),
(3941, 9551, '2019-04-15'),
(4020, 1984, '2019-04-12'),
(4376, 7000, '2019-04-11'),
(4826, 5502, '2019-04-11'),
(4941, 8400, '2019-04-10'),
(5015, 5043, '2019-04-10'),
(5027, 8876, '2019-04-13'),
(5401, 1010, '2019-04-12'),
(5432, 2222, '2019-04-15'),
(5738, 2266, '2019-04-16'),
(5931, 3921, '2019-04-16'),
(6259, 3671, '2019-04-13'),
(6288, 7892, '2019-04-13'),
(6626, 4912, '2019-04-11'),
(8776, 2111, '2019-04-14'),
(9006, 6612, '2019-04-11'),
(9305, 4755, '2019-04-16'),
(9315, 8752, '2019-04-14'),
(9410, 9900, '2019-04-16'),
(9922, 9254, '2019-04-10'),
(9927, 7540, '2019-04-13');

-- --------------------------------------------------------

--
-- Table structure for table `delivery person`
--

CREATE TABLE `delivery person` (
  `Delivery_Person_Id` smallint(6) NOT NULL,
  `Customer_Id` smallint(6) NOT NULL,
  `Availability_Status` varchar(100) NOT NULL,
  `Location_Latitude` decimal(10,6) NOT NULL,
  `Location_Longitude` decimal(11,6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `delivery person`
--

INSERT INTO `delivery person` (`Delivery_Person_Id`, `Customer_Id`, `Availability_Status`, `Location_Latitude`, `Location_Longitude`) VALUES
(1090, 7353, 'Vacation', '40.733649', '74.002728'),
(2986, 1256, 'Available', '40.740135', '73.990341'),
(5093, 3567, 'Available', '40.719100', '73.997347'),
(7629, 5353, 'Available', '40.759046', '73.984548'),
(8805, 4463, 'Available', '40.707761', '74.008372');

-- --------------------------------------------------------

--
-- Table structure for table `delivery person dish`
--

CREATE TABLE `delivery person dish` (
  `Delivery_Person_Dish_Id` smallint(6) NOT NULL,
  `Delivery_Person_Id` smallint(6) NOT NULL,
  `Dish_Id` smallint(6) NOT NULL,
  `Dish_Quantity` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `delivery person dish`
--

INSERT INTO `delivery person dish` (`Delivery_Person_Dish_Id`, `Delivery_Person_Id`, `Dish_Id`, `Dish_Quantity`) VALUES
(2384, 2986, 9900, 5),
(2833, 8805, 2266, 5),
(2840, 7629, 4755, 7),
(3058, 8805, 3921, 8),
(3475, 2986, 4755, 8),
(3757, 8805, 4755, 8),
(3934, 5093, 4755, 8),
(3948, 5093, 2266, 8),
(4026, 7629, 9900, 6),
(4952, 7629, 2266, 8),
(5824, 7629, 3921, 6),
(6832, 5093, 3921, 7),
(7654, 2986, 2266, 6),
(8839, 8805, 9900, 6),
(9378, 5093, 9900, 8),
(9662, 2986, 3921, 6);

-- --------------------------------------------------------

--
-- Table structure for table `dish`
--

CREATE TABLE `dish` (
  `Dish_Id` smallint(6) NOT NULL,
  `Dish_Name` varchar(255) NOT NULL,
  `Dish_Ingredients` varchar(255) NOT NULL,
  `Cost_Total` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dish`
--

INSERT INTO `dish` (`Dish_Id`, `Dish_Name`, `Dish_Ingredients`, `Cost_Total`) VALUES
(1010, 'Seafood Linguine', 'pasta, scallops, mussles, salad', 24),
(1021, 'T-bone Steak', 't-bone steak, potato\'s, beets, carrots', 30),
(1119, 'Lasagna', 'pasta, tomato\'s, ground beef, garlic bread, salad', 19),
(1984, 'Cheese Cake', 'cheese cake, whipped cream', 8),
(2111, 'Lobster', 'lobster, salad, rice', 34),
(2222, 'Salmon', 'salmon, rice, cauliflower, tomato', 28),
(2266, 'Creme Brule', 'creme brule,ice cream', 9),
(2461, 'Key Lime Pie', 'key lime pie, whipped cream', 6),
(3671, 'Fruit Cake', 'fruit cake, ice cream', 7),
(3921, 'Chocolate Pudding', 'chocolate pudding, ice cream', 6),
(4062, 'Carrot Cake', 'carrot cake, fruit', 11),
(4755, 'Sherperd\'s Pie', 'potato, beef, carrot, peas, salad', 18),
(4912, 'Veal Parmigan', 'fruit, potato', 22),
(5043, 'Peach Pie', 'peach pie, whipped cream', 7),
(5502, 'Chicken Breast', 'chicken, broccoli, red pepper, rice', 25),
(6612, 'Cannoli', 'cannoli, ice cream, chocolate sauce', 12),
(7000, 'Crepes', 'crepes, maple syrup, fruit', 10),
(7540, 'Beef Stew', 'salad, pasta', 15),
(7620, 'Chocolate Cake', 'chocolate cake, fruit', 10),
(7892, 'Black Forest Cake', 'black forest cake, fruit', 8),
(8400, 'Bread Pudding', 'bread pudding, fruit', 10),
(8407, 'Ribs', 'ribs, salad, rice', 24),
(8752, 'Pecan Pie', 'pecan pie, ice cream', 7),
(8876, 'Liver', 'liver, potato\'s, carrots, broccoli', 14),
(9254, 'Halibut', 'halibut, potato\'s, fruit', 30),
(9551, 'Apple Pie', 'apple pie, whipped cream', 8),
(9900, 'Pork Chops', 'pork, potato, zucchini, tomato', 20),
(9902, 'Hamburger', 'potato Scallops, cucumber, spinach', 13);

-- --------------------------------------------------------

--
-- Table structure for table `dish stock`
--

CREATE TABLE `dish stock` (
  `Dish_Stock_Id` smallint(6) NOT NULL,
  `Dish_Id` smallint(6) NOT NULL,
  `Dish_Stock_Quantity` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dish stock`
--

INSERT INTO `dish stock` (`Dish_Stock_Id`, `Dish_Id`, `Dish_Stock_Quantity`) VALUES
(2008, 9551, 27),
(2469, 3921, 59),
(2903, 2266, 19),
(2958, 4062, 30),
(3258, 7540, 39),
(3437, 1021, 40),
(3764, 8407, 73),
(3846, 1984, 58),
(4007, 7620, 39),
(4479, 8752, 48),
(4726, 9254, 66),
(4792, 3671, 73),
(4810, 4912, 70),
(4822, 8876, 82),
(4839, 5502, 38),
(5595, 1119, 36),
(5734, 2111, 84),
(6170, 7000, 12),
(6289, 9900, 93),
(6358, 7892, 93),
(6391, 6612, 90),
(6446, 8400, 45),
(7520, 1010, 57),
(7710, 4755, 54),
(8329, 9902, 44),
(8411, 5043, 47),
(9027, 2222, 69),
(9384, 2461, 88);

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `Order_Id` smallint(6) NOT NULL,
  `Customer_Id` smallint(6) NOT NULL,
  `Address_ID` smallint(6) NOT NULL,
  `Delivery_Person_Id` smallint(6) NOT NULL,
  `Cost_Total` float NOT NULL,
  `Arrival_Estimate` time NOT NULL,
  `Order_Date` date NOT NULL,
  `Order_Status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`Order_Id`, `Customer_Id`, `Address_ID`, `Delivery_Person_Id`, `Cost_Total`, `Arrival_Estimate`, `Order_Date`, `Order_Status`) VALUES
(2763, 2466, 9201, 7629, 12, '00:20:00', '2019-04-16', 'Leaving ExpressFood'),
(3548, 1167, 3456, 5093, 46, '00:00:00', '2019-04-15', 'Delivered'),
(3790, 6353, 5001, 5093, 13, '00:00:00', '2019-04-12', 'Delivered'),
(3810, 1035, 3498, 8805, 18, '00:15:00', '2019-04-16', 'In Transit'),
(4307, 2055, 2321, 2986, 70, '00:00:00', '2019-04-10', 'Delivered'),
(5032, 1627, 9943, 5093, 9, '00:03:00', '2019-04-16', 'Arriving Imminently'),
(5060, 1868, 3430, 2986, 28, '00:00:00', '2019-04-15', 'Delivered'),
(6481, 1868, 3430, 8805, 84, '00:00:00', '2019-04-15', 'Delivered'),
(6705, 2466, 9201, 5093, 8, '00:00:00', '2019-04-13', 'Delivered'),
(8530, 1035, 3498, 5093, 36, '00:10:00', '2019-04-16', 'In Transit'),
(8880, 8786, 3437, 7629, 0, '00:06:00', '2019-04-16', 'Arriving Soon'),
(9673, 9564, 4821, 2986, 20, '00:19:00', '2019-04-16', 'Leaving ExpressFood'),
(9715, 1738, 2432, 5093, 65, '00:00:00', '2019-04-11', 'Delivered');

-- --------------------------------------------------------

--
-- Table structure for table `order information`
--

CREATE TABLE `order information` (
  `Order_Information_Id` smallint(6) NOT NULL,
  `Order_Id` smallint(6) NOT NULL,
  `Dish_Id` smallint(6) NOT NULL,
  `Dish_Quantities` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order information`
--

INSERT INTO `order information` (`Order_Information_Id`, `Order_Id`, `Dish_Id`, `Dish_Quantities`) VALUES
(1139, 6705, 7892, 1),
(1199, 3790, 9902, 1),
(1949, 3548, 9551, 2),
(2967, 5060, 2222, 1),
(3471, 8880, 9900, 1),
(3928, 3548, 1021, 1),
(5602, 9715, 5502, 1),
(5667, 9715, 7000, 4),
(5799, 3810, 4755, 1),
(6144, 5032, 2266, 1),
(6705, 6481, 2222, 3),
(6743, 9673, 9900, 1),
(8109, 4307, 8400, 1),
(8129, 4307, 9254, 2),
(8931, 8530, 4755, 2),
(9058, 2763, 3921, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`Address_Id`),
  ADD KEY `Customer Id` (`Customer_Id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Admin_Id`),
  ADD KEY `Customer Id` (`Customer_Id`);

--
-- Indexes for table `credit card details`
--
ALTER TABLE `credit card details`
  ADD PRIMARY KEY (`Credit_Card_Id`),
  ADD KEY `Customer Id` (`Customer_Id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`Customer_Id`);

--
-- Indexes for table `daily dish specials`
--
ALTER TABLE `daily dish specials`
  ADD PRIMARY KEY (`Daily_Dish_Specails_Id`),
  ADD KEY `Dish Id` (`Dish_Id`);

--
-- Indexes for table `delivery person`
--
ALTER TABLE `delivery person`
  ADD PRIMARY KEY (`Delivery_Person_Id`),
  ADD KEY `Customer Id` (`Customer_Id`);

--
-- Indexes for table `delivery person dish`
--
ALTER TABLE `delivery person dish`
  ADD PRIMARY KEY (`Delivery_Person_Dish_Id`),
  ADD KEY `Dish_Id` (`Dish_Id`),
  ADD KEY `Delivery_Person_Id` (`Delivery_Person_Id`);

--
-- Indexes for table `dish`
--
ALTER TABLE `dish`
  ADD PRIMARY KEY (`Dish_Id`);

--
-- Indexes for table `dish stock`
--
ALTER TABLE `dish stock`
  ADD PRIMARY KEY (`Dish_Stock_Id`),
  ADD KEY `Dish Id` (`Dish_Id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`Order_Id`),
  ADD KEY `Customer Id` (`Customer_Id`),
  ADD KEY `Address ID` (`Address_ID`),
  ADD KEY `Delivery Person Id` (`Delivery_Person_Id`);

--
-- Indexes for table `order information`
--
ALTER TABLE `order information`
  ADD PRIMARY KEY (`Order_Information_Id`),
  ADD KEY `Order Id` (`Order_Id`),
  ADD KEY `Dish Id` (`Dish_Id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `address_ibfk_1` FOREIGN KEY (`Customer_Id`) REFERENCES `customer` (`Customer_Id`);

--
-- Constraints for table `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`Customer_Id`) REFERENCES `customer` (`Customer_Id`);

--
-- Constraints for table `credit card details`
--
ALTER TABLE `credit card details`
  ADD CONSTRAINT `credit card details_ibfk_1` FOREIGN KEY (`Customer_Id`) REFERENCES `customer` (`Customer_Id`);

--
-- Constraints for table `daily dish specials`
--
ALTER TABLE `daily dish specials`
  ADD CONSTRAINT `daily dish specials_ibfk_1` FOREIGN KEY (`Dish_Id`) REFERENCES `dish` (`Dish_Id`);

--
-- Constraints for table `delivery person`
--
ALTER TABLE `delivery person`
  ADD CONSTRAINT `delivery person_ibfk_1` FOREIGN KEY (`Customer_Id`) REFERENCES `customer` (`Customer_Id`);

--
-- Constraints for table `delivery person dish`
--
ALTER TABLE `delivery person dish`
  ADD CONSTRAINT `delivery person dish_ibfk_1` FOREIGN KEY (`Dish_Id`) REFERENCES `dish` (`Dish_Id`),
  ADD CONSTRAINT `delivery person dish_ibfk_2` FOREIGN KEY (`Delivery_Person_Id`) REFERENCES `delivery person` (`Delivery_Person_Id`);

--
-- Constraints for table `dish stock`
--
ALTER TABLE `dish stock`
  ADD CONSTRAINT `dish stock_ibfk_1` FOREIGN KEY (`Dish_Id`) REFERENCES `dish` (`Dish_Id`);

--
-- Constraints for table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `order_ibfk_1` FOREIGN KEY (`Customer_Id`) REFERENCES `customer` (`Customer_Id`),
  ADD CONSTRAINT `order_ibfk_2` FOREIGN KEY (`Address_ID`) REFERENCES `address` (`Address_Id`),
  ADD CONSTRAINT `order_ibfk_3` FOREIGN KEY (`Delivery_Person_Id`) REFERENCES `delivery person` (`Delivery_Person_Id`);

--
-- Constraints for table `order information`
--
ALTER TABLE `order information`
  ADD CONSTRAINT `order information_ibfk_1` FOREIGN KEY (`Order_Id`) REFERENCES `order` (`Order_Id`),
  ADD CONSTRAINT `order information_ibfk_2` FOREIGN KEY (`Dish_Id`) REFERENCES `dish` (`Dish_Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
