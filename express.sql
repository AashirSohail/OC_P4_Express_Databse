-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 18, 2020 at 07:06 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.2.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `express`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `CustomerID` int(11) NOT NULL,
  `Fname` varchar(100) DEFAULT NULL,
  `Lname` varchar(100) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `Payment` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`CustomerID`, `Fname`, `Lname`, `Email`, `Password`, `Payment`) VALUES
(1, 'Ahmed', 'Raza', 'ahmed@gmail.com', 'password', 'Card'),
(2, 'Ali', 'Arshad', 'ali@gmail.com', 'password', 'Cash'),
(3, 'Bilal', 'Mir', 'bilal@gmail.com', 'password', 'Cash');

-- --------------------------------------------------------

--
-- Table structure for table `deliveryperson`
--

CREATE TABLE `deliveryperson` (
  `StaffID` int(11) NOT NULL,
  `Fname` varchar(100) DEFAULT NULL,
  `Lname` varchar(100) DEFAULT NULL,
  `NIC` varchar(100) DEFAULT NULL,
  `JoiningDate` varchar(100) DEFAULT NULL,
  `Rating` float DEFAULT NULL,
  `Gender` varchar(100) DEFAULT NULL,
  `Birthdate` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `deliveryperson`
--

INSERT INTO `deliveryperson` (`StaffID`, `Fname`, `Lname`, `NIC`, `JoiningDate`, `Rating`, `Gender`, `Birthdate`) VALUES
(1, 'Nosherwan', 'Hamid', '543542', '12-MAR-2017', 4.5, 'Male', '12-4-1990'),
(2, 'Bilal', 'Sadiq', '743369', '17-MAR-2018', 4.3, 'Male', '21-6-1991'),
(3, 'Hanzala', 'Ahmed', '9.43e43', '22-MAR-2019', 4.7, 'Male', '19-1-1993');

-- --------------------------------------------------------

--
-- Table structure for table `dishes`
--

CREATE TABLE `dishes` (
  `DishID` int(11) NOT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Description` varchar(100) DEFAULT NULL,
  `Price` float DEFAULT NULL,
  `Type` varchar(100) DEFAULT NULL,
  `Date` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dishes`
--

INSERT INTO `dishes` (`DishID`, `Name`, `Description`, `Price`, `Type`, `Date`) VALUES
(1, 'Roasted Chicken', 'Chicken that is roasted on low heat with a mix of spices.', 5.99, 'main', '17-7-2020'),
(2, 'Fried Turkey', 'Turkey that is deep fried in heated oil with a mix of spices.', 5.99, 'main', '17-7-2020'),
(3, 'Panckas', 'Perfect mix of Eggs and Milk with goat butter and sugar.', 3.99, 'dessert', '17-7-2020'),
(4, 'Almond Cake', 'Almond with sweetness and aroma of Vanilla.', 3.99, 'dessert', '17-7-2020'),
(5, 'Beef Steak', 'Fine tenderloin cut made with herbs that are farm fresh.', 5.99, 'main', '18-7-2020'),
(6, 'Beef Stroganoff.', 'Sautéed pieces of beef served in a sauce with smetana.', 5.99, 'main', '18-7-2020'),
(7, 'Lemon Truffle', 'Lemon and orange-scented white chocolate truffles are refreshingly light and smooth.', 3.99, 'dessert', '18-7-2020'),
(8, 'Molten Lava Cake', 'Elements of a flourless chocolate cake and a soufflé with a liquid chocolate center.', 3.99, 'dessert', '18-7-2020');

-- --------------------------------------------------------

--
-- Table structure for table `orderquanitity`
--

CREATE TABLE `orderquanitity` (
  `OrderID` int(11) DEFAULT NULL,
  `DishID` int(11) DEFAULT NULL,
  `Quanity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orderquanitity`
--

INSERT INTO `orderquanitity` (`OrderID`, `DishID`, `Quanity`) VALUES
(1, 1, 2),
(2, 3, 1),
(3, 2, 1),
(4, 4, 3);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `OrederID` int(11) NOT NULL,
  `CustomrID` int(11) DEFAULT NULL,
  `StaffID` int(11) DEFAULT NULL,
  `IsDelivered` varchar(100) DEFAULT NULL,
  `ETA` float DEFAULT NULL,
  `Comments` varchar(100) DEFAULT NULL,
  `OrderDate` varchar(100) DEFAULT NULL,
  `OrderTime` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`OrederID`, `CustomrID`, `StaffID`, `IsDelivered`, `ETA`, `Comments`, `OrderDate`, `OrderTime`) VALUES
(1, 1, 2, 'false', 10, 'No Tomatoes.', '17-7-2020', '3:16pm'),
(2, 2, 1, 'false', 12, 'Less sugary.', '17-7-2020', '7:10pm'),
(3, 3, 3, 'false', 8, 'Added Olives if you can.', '17-7-2020', '8:48pm'),
(4, 2, 2, 'false', 12, 'None', '17-7-2020', '7:12pm');

-- --------------------------------------------------------

--
-- Table structure for table `shippingdetails`
--

CREATE TABLE `shippingdetails` (
  `CustomerID` int(11) NOT NULL,
  `StreetAddress` varchar(100) NOT NULL,
  `Phone` int(11) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `Landmark` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shippingdetails`
--

INSERT INTO `shippingdetails` (`CustomerID`, `StreetAddress`, `Phone`, `City`, `Landmark`) VALUES
(1, 'H#53 ST#23 Model Town, Kahuta Road', 2147483647, 'Islamabad', 'None'),
(2, 'H#67 ST#1 Model Town, Kahuta Road', 2147483647, 'Islamabad', 'Near Aziz Hospital'),
(3, 'H#834 ST#8 Model Town, Kahuta Road', 2147483647, 'Islamabad', 'Near Water Supply Office');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`CustomerID`);

--
-- Indexes for table `deliveryperson`
--
ALTER TABLE `deliveryperson`
  ADD PRIMARY KEY (`StaffID`);

--
-- Indexes for table `dishes`
--
ALTER TABLE `dishes`
  ADD PRIMARY KEY (`DishID`);

--
-- Indexes for table `orderquanitity`
--
ALTER TABLE `orderquanitity`
  ADD KEY `FK` (`OrderID`,`DishID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`OrederID`),
  ADD KEY `FK` (`CustomrID`,`StaffID`);

--
-- Indexes for table `shippingdetails`
--
ALTER TABLE `shippingdetails`
  ADD PRIMARY KEY (`StreetAddress`),
  ADD KEY `FK` (`CustomerID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
