-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 21, 2021 at 11:07 PM
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
CREATE DATABASE IF NOT EXISTS `shopping` ;
USE `shopping`;

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int NOT NULL,
  `name` varchar(10) DEFAULT NULL,
  `password` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
  `status` varchar(10) DEFAULT (_utf8mb4'waiting')
) ENGINE=InnoDB ;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_name`, `email`, `address`, `product_price`, `product_id`, `card_number`, `date`, `status`) VALUES
(41, 'sara amer saad', 'princess.sasona@yahoo.com', 'iiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii', 300, 33, 5555, '02/21/2021', 'shipped'),
(42, 'sara amer saad', 'princess.sasona@yahoo.com', 'iiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii', 300, 31, 5555, '02/21/2021', 'shipped'),
(43, 'sara amer saad', 'princess.sasona@yahoo.com', 'iiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii', 300, 33, 5555, '02/21/2021', 'shipped'),
(44, 'sara amer saad', 'princess.sasona@yahoo.com', 'iiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii', 500, 45, 5555, '02/21/2021', 'shipped'),
(45, 'saraamer', 'princess.sasona@yahoo.com', 'ddd', 50, 76, 549855, '02/21/2021', 'shipped'),
(46, 'sara amer kkk', 'princess.sasona@yahoo.com', 'iiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii', 50, 76, 5554, '02/21/2021', 'waiting'),
(47, 'admin', 'princess.sasona@yahoo.com', 'iiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii', 50, 76, 444, '02/21/2021', 'canceled'),
(48, 'sara amer kkk', 'princess.sasona@yahoo.com', 'iiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii', 50, 76, 555, '02/21/2021', 'shipped'),
(49, 'sara amer kkk', 'princess.sasona@yahoo.com', 'iiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii', 50, 76, 5555, '02/21/2021', 'waiting'),
(50, 'saraamer', 'princess.sasona@yahoo.com', 'ddd', 700, 78, 555, '02/21/2021', 'shipped');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--


-- --------------------------------------------------------

--
-- Table structure for table `productsList`
--

CREATE TABLE `productsList` (
  `id` int NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `category` varchar(50) DEFAULT NULL,
  `product_description` varchar(500) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `product_price` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `productsList`
--

INSERT INTO `productsList` (`id`, `product_name`, `category`, `product_description`, `image`, `product_price`) VALUES
(76, 'T-shirt', 'Clothes', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout', '1.png', '50'),
(77, 'SweetShirt', 'Clothes', 'The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters', '2.png', '300'),
(78, 'Jacket', 'Clothes', 'The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, ', '3.png', '700'),
(79, 'Dress', 'Clothes', 'The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, ', '4.png', '150'),
(80, 'Pant', 'Clothes', 'The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, ', '5.png', '300'),
(81, 'Red T-shirt', 'Clothes', 'The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, ', '6.png', '150'),
(82, 'Jacket', 'Clothes', 'The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, ', '7.png', '500'),
(83, 'Cardigan', 'Clothes', 'The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, ', '8.png', '400'),
(84, 'Pant', 'Clothes', 'The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, ', '9.jpg', '200'),
(85, 'Perfum', 'Cosmatics', 'The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters', 'perfum.jpg', '2000'),
(86, 'Conditioner', 'Cosmatics', 'The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, ', '2.jpg', '240'),
(87, 'Foundation', 'Cosmatics', 'The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters', 'fundation.jpg', '200'),
(88, 'Mascara', 'Cosmatics', 'The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, ', '4.jpg', '120'),
(89, 'Lip Stick', 'Cosmatics', 'The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters,', '5.jpg', '95'),
(90, 'Sandal', 'Shoes', 'The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, ', '1.jpg', '200'),
(91, 'Slipper', 'Shoes', 'The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, ', '3.jpg', '300'),
(92, 'Brown Shoes', 'Shoes', 'The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters', 'brown.jpg', '500'),
(93, 'Power Bank', 'Electronics', 'The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, ', '10.jpg', '150'),
(94, 'Watch', 'Electronics', 'The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, ', '6.jpg', '500'),
(95, 'Mic', 'Electronics', 'The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters,', '55.jpg', '1000');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
-- Indexes for table `products`
--
ALTER TABLE `products`
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
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `productsList`
--
ALTER TABLE `productsList`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

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
