-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 12, 2020 at 05:27 PM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `loyal`
--

-- --------------------------------------------------------

--
-- Table structure for table `channel`
--

CREATE TABLE `channel` (
  `id` varchar(255) NOT NULL,
  `d_id` varchar(255) NOT NULL,
  `pname` varchar(255) NOT NULL,
  `roomno` int(11) NOT NULL,
  `date` date NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `channel`
--

INSERT INTO `channel` (`id`, `d_id`, `pname`, `roomno`, `date`, `status`) VALUES
('CH001', 'DS001', 'PS001', 3, '2019-07-14', 'Active'),
('CH002', 'DS003', 'PS008', 4, '2019-07-14', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `log_id` int(11) NOT NULL,
  `specialization` varchar(255) NOT NULL,
  `qualification` varchar(255) NOT NULL,
  `fee` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `room` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`id`, `name`, `log_id`, `specialization`, `qualification`, `fee`, `email`, `room`) VALUES
('DS001', 'Kishan', 6, 'Ca', 'MBBS', 12000, 'kishan@gmail.com', '1'),
('DS002', 'Nira', 7, 'Ca', 'MBBS', 12000, 'nira@gmail.com', '3'),
('DS003', 'Laven', 10, 'Ca', 'MBBS', 12000, 'laven@gmail.com', '6');

-- --------------------------------------------------------

--
-- Table structure for table `drug`
--

CREATE TABLE `drug` (
  `id` varchar(255) NOT NULL,
  `item` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `sellprice` int(11) NOT NULL,
  `buyprice` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `drug`
--

INSERT INTO `drug` (`id`, `item`, `description`, `sellprice`, `buyprice`, `qty`) VALUES
('DR001', 'Panadol', 'Panadol	', 12, 10, 88),
('DR002', 'cc', 'ccccc dsfsd', 12, 9, 64),
('DR003', 'aaaa', 'wqeqweqw qwe ewqwe ewwqe	', 15, 8, 100),
('DR004', 'abc', 'dsfsd dsfsdf sdfsdf', 15, 10, 100),
('DR005', 'd', 'dsdsd ', 12, 10, 100),
('DR006', 'ccc', 'dsfsdf sdfsdf 	', 20, 10, 100);

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` int(11) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`id`, `name`, `phone`, `address`) VALUES
('PS002', 'Murugan', 232242, 'India'),
('PS003', 'Niranjan', 3242342, 'India'),
('PS004', 'Suren', 90000088, 'kerla'),
('PS005', 'suriya', 34345345, 'channai india'),
('PS006', 'john', 3423423, 'kerala '),
('PS007', 'magesh', 34324234, 'badulla'),
('PS008', 'Peter', 234324324, 'India');

-- --------------------------------------------------------

--
-- Table structure for table `pres`
--

CREATE TABLE `pres` (
  `id` int(11) NOT NULL,
  `chid` varchar(255) NOT NULL,
  `detype` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pres`
--

INSERT INTO `pres` (`id`, `chid`, `detype`, `description`) VALUES
(1, 'CH004', 'Fever', 'dsfdsf sdfsdfsdf'),
(2, 'CH007', 'Fever', 'Feverrr  ffffff'),
(3, 'CH008', 'Fever', 'Fever dfdfdfdfdf'),
(4, 'CH009', 'lssk', 'kksaa'),
(6, 'CH013', 'Fever', 'ewrewr e wrew  ewrew ewrew ewr\nerew ewrrw erewr'),
(7, 'CH002', 'Fever', 'dfsdf sdfsdf sdfsdf dsfsdfs\nsdfsdf sfsf \n');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `subtotal` int(11) NOT NULL,
  `pay` int(11) NOT NULL,
  `balance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `date`, `subtotal`, `pay`, `balance`) VALUES
(1, '2019-07-12', 24, 30, 6),
(2, '2019-07-12', 84, 90, 6),
(3, '2019-07-12', 60, 70, 10),
(4, '2019-07-12', 48, 50, 2),
(5, '2019-07-12', 36, 40, 4),
(6, '2019-07-12', 48, 50, 2),
(7, '2019-07-12', 84, 100, 16),
(8, '2019-07-12', 60, 70, 10),
(9, '2019-07-12', 72, 80, 8),
(10, '2019-07-12', 48, 50, 2),
(11, '2019-07-12', 48, 70, 22),
(12, '2019-07-12', 144, 150, 6),
(13, '2019-07-12', 120, 200, 80),
(14, '2019-07-12', 72, 80, 8),
(15, '2019-07-12', 192, 200, 8),
(16, '2019-07-13', 96, 100, 4),
(17, '2019-07-14', 132, 150, 18);

-- --------------------------------------------------------

--
-- Table structure for table `sales_product`
--

CREATE TABLE `sales_product` (
  `id` int(11) NOT NULL,
  `sales_id` int(255) NOT NULL,
  `pr_id` varchar(255) NOT NULL,
  `product_id` varchar(255) NOT NULL,
  `sell_price` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales_product`
--

INSERT INTO `sales_product` (`id`, `sales_id`, `pr_id`, `product_id`, `sell_price`, `qty`, `total`) VALUES
(2, 11, '1', 'DR001', 4, 12, 48),
(3, 12, '1', 'DR001', 12, 12, 144),
(4, 13, '3', 'DR001', 10, 12, 120),
(5, 14, '4', 'DR001', 6, 12, 72),
(6, 15, '6', 'DR001', 10, 12, 120),
(7, 15, '6', 'DR002', 6, 12, 72),
(8, 16, '6', 'DR001', 1, 12, 12),
(9, 16, '6', 'DR002', 7, 12, 84),
(10, 17, '7', 'DR001', 8, 12, 96),
(11, 17, '7', 'DR002', 3, 12, 36);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `utype` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `username`, `password`, `utype`) VALUES
(1, 'rajan', 'rajan', '123', 'pharmacist'),
(2, 'raja', 'raja', '123', 'Receptionist'),
(3, 'ravi', 'ravi', '123', 'Receptionist'),
(4, 'sathis', 'sathis', '123', 'Receptionist'),
(5, 'hari', 'hari', '123', 'Doctor'),
(6, 'kishan', 'kishan', '123', 'Doctor'),
(7, 'nira', 'Nira', '123', 'Doctor'),
(8, 'jaya', 'jaya', '123', 'pharmacist'),
(9, 'sathis', 'sathis', '123', 'Doctor'),
(10, 'Laven', 'Laven', '123', 'Doctor');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `channel`
--
ALTER TABLE `channel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `drug`
--
ALTER TABLE `drug`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pres`
--
ALTER TABLE `pres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales_product`
--
ALTER TABLE `sales_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pres`
--
ALTER TABLE `pres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `sales_product`
--
ALTER TABLE `sales_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
