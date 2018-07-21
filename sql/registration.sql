-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 02, 2018 at 10:42 AM
-- Server version: 10.2.9-MariaDB
-- PHP Version: 7.1.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `registration`
--

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(3) NOT NULL,
  `val` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `val`) VALUES
(1, 'Baratha Nattyam '),
(2, 'Kuchuppudi '),
(3, 'Kerala Nadanam '),
(4, 'Lalitha Ganam '),
(5, 'Monoact '),
(6, 'Mohiniyaattam '),
(7, 'Mimicry '),
(8, 'Resitation Malayalam '),
(9, 'Resitation English '),
(10, 'Resitation Hindi'),
(11, 'Thiruvathira '),
(12, 'Oppana '),
(13, 'Group Song '),
(14, 'kolkkali '),
(15, 'Natakam '),
(16, 'Margam Kali '),
(17, 'Group Dance '),
(18, 'Nadanpaattu '),
(19, 'Band '),
(20, 'Duff '),
(21, 'Yaksha Ganam '),
(22, 'Vanchipatt'),
(23, 'Poem Writing(Malayalam)'),
(24, 'Poem Writing(English) '),
(25, 'Poem Writing(Hindi) '),
(26, 'Essay Writing(Malayalam) '),
(27, 'Essay Writing(English) '),
(28, 'Oil painting '),
(29, 'Pencil drawing');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `username` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(80) NOT NULL,
  `branch` varchar(100) NOT NULL,
  `phone` bigint(10) NOT NULL,
  `event` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `branch`, `phone`, `event`) VALUES
(1, 'minu', 'minuma55@gmail.com', '0e3e91267be42036a0b9b9de34ba77fd', '', 0, 0),
(2, 'abbas', 'abbas956@gmail.com', '810d3f5756ef48fdbb700e949d15bb2a', '', 0, 0),
(3, 'aishu', 'aishukp@gamil.com', '6f1ed002ab5595859014ebf0951522d9', '', 0, 0),
(4, 'syma', 'syama@123', '81dc9bdb52d04dc20036dbd8313ed055', '', 0, 0),
(5, 'nive', 'niveditha2@gamail.com', '9a519512cd84822d51b7326d05f644df', '', 0, 0),
(6, 'nayana', 'nayana2@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '', 0, 0),
(7, 'minumumthas', 'minumumu76@gamil.com', '81dc9bdb52d04dc20036dbd8313ed055', '', 0, 0),
(8, 'abdc', 'abcd@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', 0, 0),
(9, 'abinanda', 'abhinandap@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', 0, 0),
(10, 'minu555', '123446@gm', '81dc9bdb52d04dc20036dbd8313ed055', '', 0, 0),
(11, 'minumaaa', 'mumtha87@gmail', '81dc9bdb52d04dc20036dbd8313ed055', '', 0, 0),
(12, 'minum', 'maneesha@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '', 0, 0),
(13, 'ahas', 'ahaad23@gamil', '81dc9bdb52d04dc20036dbd8313ed055', '', 0, 0),
(14, 'mujeeb', 'mujeebcpy@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'mech', 1234567890, 1),
(15, '123', '123@12', '202cb962ac59075b964b07152d234b70', '123', 123, 1),
(16, 'Ambady', 'bady@jaba.in', '81dc9bdb52d04dc20036dbd8313ed055', 'chali', 123456890, 1),
(17, 'oppana', 'oppana@opp.in', '202cb962ac59075b964b07152d234b70', 'IT', 1234567890, 12),
(18, 'oilpaint', 'oil@jio', '202cb962ac59075b964b07152d234b70', 'jaba', 987654321, 23),
(19, 'kolkali', 'kol@kol.in', '202cb962ac59075b964b07152d234b70', 'test', 1234567890, 14);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `events`
--
ALTER TABLE `events`
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
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
