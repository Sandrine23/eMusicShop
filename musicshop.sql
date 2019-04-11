-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 12, 2016 at 08:35 PM
-- Server version: 5.7.9
-- PHP Version: 5.6.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `musicshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `authorities`
--

DROP TABLE IF EXISTS `authorities`;
CREATE TABLE IF NOT EXISTS `authorities` (
  `authoritiesId` int(11) NOT NULL AUTO_INCREMENT,
  `authority` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`authoritiesId`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `authorities`
--

INSERT INTO `authorities` (`authoritiesId`, `authority`, `username`) VALUES
(1, 'ROLE_ADMIN', 'admin'),
(10, 'ROLE_USER', 'Ivana');

-- --------------------------------------------------------

--
-- Table structure for table `billingaddress`
--

DROP TABLE IF EXISTS `billingaddress`;
CREATE TABLE IF NOT EXISTS `billingaddress` (
  `billingAddressId` int(11) NOT NULL AUTO_INCREMENT,
  `apartmentNumber` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `streetName` varchar(255) DEFAULT NULL,
  `zipCode` varchar(255) DEFAULT NULL,
  `customer_customerId` int(11) DEFAULT NULL,
  `customer_cutomerId` int(11) DEFAULT NULL,
  PRIMARY KEY (`billingAddressId`),
  KEY `FKF0492D196C0CF566` (`customer_customerId`),
  KEY `FKF0492D1942A0DE44` (`customer_cutomerId`),
  KEY `FKF0492D19AA2733B7` (`customer_customerId`),
  KEY `FKF0492D194869FF3` (`customer_cutomerId`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `billingaddress`
--

INSERT INTO `billingaddress` (`billingAddressId`, `apartmentNumber`, `city`, `country`, `state`, `streetName`, `zipCode`, `customer_customerId`, `customer_cutomerId`) VALUES
(10, '12', 'Belgrade', 'Serbia', NULL, 'Nemanjina', '11000', 10, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `cartId` int(11) NOT NULL AUTO_INCREMENT,
  `grandTotal` double NOT NULL,
  `customerId` int(11) DEFAULT NULL,
  PRIMARY KEY (`cartId`),
  KEY `FK1FEF40B0D81665` (`customerId`),
  KEY `FK1FEF40EEF254B6` (`customerId`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cartId`, `grandTotal`, `customerId`) VALUES
(3, 0, 5),
(4, 0, 6),
(5, 129.99, 7),
(6, 0, 8),
(7, 0, 9),
(8, 129.99, 10);

-- --------------------------------------------------------

--
-- Table structure for table `cartitem`
--

DROP TABLE IF EXISTS `cartitem`;
CREATE TABLE IF NOT EXISTS `cartitem` (
  `cartItemId` int(11) NOT NULL AUTO_INCREMENT,
  `quantity` int(11) NOT NULL,
  `totalPrice` double NOT NULL,
  `cartId` int(11) DEFAULT NULL,
  `product_productId` varchar(255) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  PRIMARY KEY (`cartItemId`),
  KEY `FK4393E73BAFAFB69` (`cartId`),
  KEY `FK4393E73A62CED1B` (`product_productId`),
  KEY `FK4393E739DAA446B` (`productId`),
  KEY `FK4393E734D1677FA` (`productId`),
  KEY `FK4393E73504B0A3A` (`cartId`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `customerId` int(11) NOT NULL AUTO_INCREMENT,
  `customerEmail` varchar(255) NOT NULL,
  `customerName` varchar(255) NOT NULL,
  `customerPhone` varchar(255) DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL,
  `password` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `billingAddressId` int(11) DEFAULT NULL,
  `cartId` int(11) DEFAULT NULL,
  `shippingAddressId` int(11) DEFAULT NULL,
  PRIMARY KEY (`customerId`),
  KEY `FK27FBE3FEBAFAFB69` (`cartId`),
  KEY `FK27FBE3FEC29723B9` (`shippingAddressId`),
  KEY `FK27FBE3FE23005B7B` (`billingAddressId`),
  KEY `FK27FBE3FE504B0A3A` (`cartId`),
  KEY `FK27FBE3FEBA5A5848` (`shippingAddressId`),
  KEY `FK27FBE3FE64CCD90C` (`billingAddressId`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customerId`, `customerEmail`, `customerName`, `customerPhone`, `enabled`, `password`, `username`, `billingAddressId`, `cartId`, `shippingAddressId`) VALUES
(10, 'ivana@yahoo.com', 'Ivana', '051251532', 1, '123', 'Ivana', 10, 8, 10);

-- --------------------------------------------------------

--
-- Table structure for table `customerorder`
--

DROP TABLE IF EXISTS `customerorder`;
CREATE TABLE IF NOT EXISTS `customerorder` (
  `customerOrderId` int(11) NOT NULL AUTO_INCREMENT,
  `billingAddressId` int(11) DEFAULT NULL,
  `cartId` int(11) DEFAULT NULL,
  `customerId` int(11) DEFAULT NULL,
  `shippingAddressId` int(11) DEFAULT NULL,
  PRIMARY KEY (`customerOrderId`),
  KEY `FKAEF781F0BAFAFB69` (`cartId`),
  KEY `FKAEF781F0B0D81665` (`customerId`),
  KEY `FKAEF781F0C29723B9` (`shippingAddressId`),
  KEY `FKAEF781F023005B7B` (`billingAddressId`),
  KEY `FKAEF781F0504B0A3A` (`cartId`),
  KEY `FKAEF781F0EEF254B6` (`customerId`),
  KEY `FKAEF781F0BA5A5848` (`shippingAddressId`),
  KEY `FKAEF781F064CCD90C` (`billingAddressId`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customerorder`
--

INSERT INTO `customerorder` (`customerOrderId`, `billingAddressId`, `cartId`, `customerId`, `shippingAddressId`) VALUES
(5, 7, 5, 7, 7),
(6, 7, 5, 7, 7),
(7, 7, 5, 7, 7),
(8, 7, 5, 7, 7),
(9, 7, 5, 7, 7),
(10, 7, 5, 7, 7),
(11, 7, 5, 7, 7),
(12, 10, 8, 10, 10);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `productId` int(11) NOT NULL AUTO_INCREMENT,
  `ProductCategory` varchar(255) DEFAULT NULL,
  `productCondition` varchar(255) DEFAULT NULL,
  `productDescription` varchar(1024) DEFAULT NULL,
  `productManufacturer` varchar(255) DEFAULT NULL,
  `productName` varchar(255) NOT NULL,
  `productPrice` double NOT NULL,
  `productStatus` varchar(255) DEFAULT NULL,
  `unitInStock` int(11) NOT NULL,
  PRIMARY KEY (`productId`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`productId`, `ProductCategory`, `productCondition`, `productDescription`, `productManufacturer`, `productName`, `productPrice`, `productStatus`, `unitInStock`) VALUES
(11, 'Electric Guitar', NULL, 'The Ashton JOEYBACKSTAGE 3/4 Size Electric Guitar is a versatile electric guitar ideal for entry level players and travelling musicians. Featuring a Basswood body and Maple neck, along with two powerful humbucker pickups, the guitar delivers a rich and full-bodied sound despite its small size. Reliable, affordable and extremely fun and easy to play, this compact guitar is the perfect starter instrument for younger players.', 'Ashton', 'Ashton JOEYBACKSTAGE, Black', 129.99, NULL, 15),
(12, 'Acoustic Drum Kits', NULL, 'The Yamaha Gigmaker Shell Pack is the perfect kit for beginners and intermediate players alike. The Gigmaker kit utilises all Yamaha hardware, featuring hex tom ball joints and wood bass drum hoops that deliver both superior tone and playability. This kit comes complete with a modest price tag and a stunning glitter wrap finish. ', 'Yamaha', 'Yamaha Gigmaker, Blue Ice', 494, NULL, 9),
(13, 'Digital Grand Pianos', NULL, 'The Gear4music GDP-300 Digital Grand Piano is a stylish and practical premium digital grand piano. With satisfying touch and playability, realistic sounds and a variety of practice features, the GDP-300 offers the elegance of a traditional grand and the features of an advanced digital piano. ', 'Gear4music', 'GDP-300 Digital Grand Piano', 999.99, NULL, 3);

-- --------------------------------------------------------

--
-- Table structure for table `shippingaddress`
--

DROP TABLE IF EXISTS `shippingaddress`;
CREATE TABLE IF NOT EXISTS `shippingaddress` (
  `shippingAddressId` int(11) NOT NULL AUTO_INCREMENT,
  `apartmentNumber` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `streetName` varchar(255) DEFAULT NULL,
  `zipCode` varchar(255) DEFAULT NULL,
  `customer_customerId` int(11) DEFAULT NULL,
  `customer_cutomerId` int(11) DEFAULT NULL,
  PRIMARY KEY (`shippingAddressId`),
  KEY `FKBB1EE466C0CF566` (`customer_customerId`),
  KEY `FKBB1EE4642A0DE44` (`customer_cutomerId`),
  KEY `FKBB1EE46AA2733B7` (`customer_customerId`),
  KEY `FKBB1EE464869FF3` (`customer_cutomerId`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shippingaddress`
--

INSERT INTO `shippingaddress` (`shippingAddressId`, `apartmentNumber`, `city`, `country`, `state`, `streetName`, `zipCode`, `customer_customerId`, `customer_cutomerId`) VALUES
(10, '12', 'Belgrade', 'Serbia', NULL, 'Nemanjina', '11000', 10, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `customerId` int(11) NOT NULL,
  `usersId` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`usersId`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`, `enabled`, `customerId`, `usersId`) VALUES
('admin', 'admin', 1, 0, 1),
('Ivana', '123', 1, 10, 10);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
