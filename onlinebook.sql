-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 27, 2020 at 10:01 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlinebook`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` varchar(64) NOT NULL,
  `name` varchar(255) NOT NULL,
  `writer` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `image` varchar(255) NOT NULL DEFAULT 'default.jpg',
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `name`, `writer`, `price`, `image`, `description`) VALUES
('5ef7966e818c2', 'Moral Compass', 'Daniele Steel', 300000, '5ef7966e818c2.jpg', 'Moral Compass is a highly topical, powerful and thought-provoking story from the world\'s favourite storyteller, Danielle Steel.Saint Ambrose Prep has been the school of choice for the sons of the great and the good for over a hundred years.'),
('5ef7969d4f4e0', 'More Than Words', 'Jill Santopolo', 300000, '5ef7969d4f4e0.jpg', 'Graphic design involves creating design solutions with effective communication and accessible information. Graphic design is also a literary practice, shaping language, imbuing words with new layers of meaning.'),
('5ef796c805b36', 'A Better Life: A Novel', ' Norma Murphy', 200000, '5ef796c805b36.jpg', 'One summer morning, Jenny takes a little girl from the back seat of a car, telling herself and her boyfriend Gene she was saving her. After learning the girl is a foster child, Jenny decides to raise the girl, whom she names Margaret, as her own.');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(64) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `role` enum('admin','customer') NOT NULL DEFAULT 'customer',
  `last_login` timestamp NOT NULL DEFAULT current_timestamp(),
  `photo` varchar(64) NOT NULL DEFAULT 'user_no_image.jpg',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `is_active` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `email`, `full_name`, `phone`, `role`, `last_login`, `photo`, `created_at`, `is_active`) VALUES
(1, 'kelompok', '$2y$10$Dy4ySqOiDqKisEyoKJEsl.L2psUIjeKMwmp5W3iElRQLKZF0.kKbS', 'aresyudha01@gmail.com', 'Kelompok', '', 'admin', '2020-06-27 19:55:28', 'user_no_image.jpg', '2020-06-11 07:47:37', 0),
(3, 'Rupert', '202cb962ac59075b964b07152d234b70', 'aresyudha02@gmail.com', '', '', 'customer', '2020-06-27 17:35:29', 'user_no_image.jpg', '2020-06-27 17:35:29', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
