-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 17, 2022 at 03:34 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `winner`
--

-- --------------------------------------------------------

--
-- Table structure for table `lottery_no`
--

CREATE TABLE `lottery_no` (
  `cid` int(11) NOT NULL,
  `cname` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lottery_no`
--

INSERT INTO `lottery_no` (`cid`, `cname`) VALUES
(1, '1a'),
(2, '2b'),
(3, '3c'),
(4, '4d');

-- --------------------------------------------------------

--
-- Table structure for table `lottery_user`
--

CREATE TABLE `lottery_user` (
  `sid` int(10) NOT NULL,
  `sname` varchar(30) NOT NULL,
  `saddress` varchar(100) DEFAULT NULL,
  `slottery_number` int(100) NOT NULL,
  `sphone` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lottery_user`
--

INSERT INTO `lottery_user` (`sid`, `sname`, `saddress`, `slottery_number`, `sphone`) VALUES
(96, 'Rahul ', '12 b block', 1, '1234567809'),
(97, 'Himanshu', '13a nasik', 2, '11111'),
(98, 'Himanshu', '13a nasik', 2, '11111'),
(99, 'Manish ', 'jaipur', 3, '232323'),
(100, 'Mukesh', '123abc', 4, '000000000'),
(101, 'Rahul ', 'Udaipuria', 1, '232323');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `lottery_no`
--
ALTER TABLE `lottery_no`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `lottery_user`
--
ALTER TABLE `lottery_user`
  ADD PRIMARY KEY (`sid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `lottery_user`
--
ALTER TABLE `lottery_user`
  MODIFY `sid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
