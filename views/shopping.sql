-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 21, 2021 at 03:46 PM
-- Server version: 8.0.23-0ubuntu0.20.04.1
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopping`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int NOT NULL,
  `name` varchar(10) DEFAULT NULL,
  `password` varchar(5) DEFAULT NULL
) ENGINE=InnoDB ;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `user_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL
) ENGINE=InnoDB ;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`user_id`, `product_id`) VALUES
(8, 33),
(3, 33),
(11, 31),
(12, 32),
(3, 31),
(3, 33),
(3, 45);

-- --------------------------------------------------------

--
-- Stand-in structure for view `cartorders`
-- (See below for the actual view)
--
CREATE TABLE `cartorders` (
`id` int
,`product_name` varchar(50)
,`product_description` varchar(500)
,`image` varchar(255)
,`product_price` varchar(100)
,`user_id` int
);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int NOT NULL,
  `user_name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `product_price` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `card_number` int DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL,
  `status` varchar(10) DEFAULT 'waiting'
);

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_name`, `email`, `address`, `product_price`, `product_id`, `card_number`, `date`, `status`) VALUES
(41, 'sara amer saad', 'princess.sasona@yahoo.com', 'iiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii', 300, 33, 5555, '02/21/2021', 'waiting'),
(42, 'sara amer saad', 'princess.sasona@yahoo.com', 'iiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii', 300, 31, 5555, '02/21/2021', 'waiting'),
(43, 'sara amer saad', 'princess.sasona@yahoo.com', 'iiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii', 300, 33, 5555, '02/21/2021', 'waiting'),
(44, 'sara amer saad', 'princess.sasona@yahoo.com', 'iiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii', 500, 45, 5555, '02/21/2021', 'waiting');

-- --------------------------------------------------------

--
-- Table structure for table `productsList`
--

CREATE TABLE `productsList` (
  `id` int NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `product_description` varchar(500) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `product_price` varchar(100) DEFAULT NULL
) ENGINE=InnoDB;

--
-- Dumping data for table `productsList`
--

INSERT INTO `productsList` (`id`, `product_name`, `product_description`, `image`, `product_price`) VALUES
(31, 'Casual Blouse', 'feminine', 'product1.jpg', '300'),
(32, 'Casual Blouse', 'feminine', 'product2.jpg', '300'),
(33, 'Casual Blouse', 'feminine', 'product3.jpg', '300'),
(35, 'Casual Blouse', 'feminine', 'product2.jpg', '300'),
(37, 'Casual Blouse', 'feminine', 'product1.jpg', '300'),
(39, 'Casual Blouse', 'feminine', 'product4.jpg', '300'),
(43, 'Casual Blouse', 'the best blouse', 'logo_04.png', '500'),
(45, 'Casual Blouse', 'the best', 'product3.jpg', '500'),
(63, 'tt', 'oo', 'Screenshot from 2021-02-06 11-31-32.png', '55');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `profile_pic` varchar(25) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `city` varchar(25) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `tel` int DEFAULT NULL,
  `mobile` int DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_name`, `profile_pic`, `email`, `city`, `address`, `tel`, `mobile`, `password`) VALUES
(3, 'saraamer', NULL, 'princess.sasona@gmail.com', 'Alex', 'happ', 5555, 1222, '1234567'),
(4, 'saraamer', NULL, 'princess.sasona@gmail.com', 'Cairo', 'happ', 5555, 1222, '1222'),
(5, 'saraamer', NULL, 'princess.sasona@gmail.com', 'Cairo', 'happ', 5555, 1222, '1222'),
(6, 'saraamer', NULL, 'princess.sasona@gmail.com', 'Cairo', 'happ', 5555, 1222, '1222'),
(7, 'saraamer', NULL, 'princess.sasona@gmail.com', 'Cairo', 'happ', 5555, 1222, '1222'),
(8, 'admin', NULL, 'princess.sasona@yahoo.com', NULL, NULL, NULL, NULL, '1234567'),
(9, 'admin2', NULL, 'princess.sasona@yahoo.com', NULL, NULL, NULL, NULL, '5279832'),
(10, 'admin', NULL, 'princess.sasona@yahoo.com', NULL, NULL, NULL, NULL, '5555'),
(11, 'sara amer saad', NULL, 'princess.sasona@yahoo.com', NULL, NULL, NULL, NULL, '1234567'),
(12, 'somaia', NULL, 'princess.sasona@yahoo.com', NULL, NULL, NULL, NULL, '1234567'),
(13, 'somaia', NULL, 'princess.sasona@yahoo.com', NULL, NULL, NULL, NULL, '1234567'),
(14, 'somaia', NULL, 'princess.sasona@yahoo.com', NULL, NULL, NULL, NULL, '1234567');

-- --------------------------------------------------------

--
-- Structure for view `cartorders`
--
DROP TABLE IF EXISTS `cartorders`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `cartorders`  AS  select `p`.`id` AS `id`,`p`.`product_name` AS `product_name`,`p`.`product_description` AS `product_description`,`p`.`image` AS `image`,`p`.`product_price` AS `product_price`,`c`.`user_id` AS `user_id` from (`productsList` `p` join `cart` `c`) where (`p`.`id` = `c`.`product_id`) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD KEY `user_id` (`user_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productsList`
--
ALTER TABLE `productsList`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `productsList`
--
ALTER TABLE `productsList`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `productsList` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
