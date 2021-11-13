-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 12, 2019 at 09:59 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', 'cc03e747a6afbbcbf8be7668acfebee5', '2019-10-10 23:14:05');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `BookingId` int(11) NOT NULL,
  `PackageId` int(11) NOT NULL,
  `UserEmail` varchar(100) NOT NULL,
  `FromDate` varchar(100) NOT NULL,
  `ToDate` varchar(100) NOT NULL,
  `Comment` mediumtext NOT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL,
  `CancelledBy` varchar(5) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`BookingId`, `PackageId`, `UserEmail`, `FromDate`, `ToDate`, `Comment`, `RegDate`, `status`, `CancelledBy`, `UpdationDate`) VALUES
(11, 5, 'nishatnoman1999@gmail.com', '2019-10-15', '2019-10-17', 'tfgfv', '2019-10-10 22:29:44', 1, NULL, '2019-10-10 23:53:12'),
(12, 5, 'nishatnoman1999@gmail.com', '2019-10-15', '2019-10-17', 'jbhk', '2019-10-10 22:30:04', 1, NULL, '2019-10-10 23:50:57'),
(13, 7, 'anima128@gmail.com', '2019-10-12', '2019-10-14', 'fghghvjh', '2019-10-10 23:59:31', 1, NULL, '2019-10-11 00:03:29'),
(14, 4, 'anima128@gmail.com', '2019-10-24', '2019-10-26', 'hvkjbnjk', '2019-10-11 00:04:42', 2, 'a', '2019-10-11 10:17:16'),
(15, 3, 'rizanasinha@gmail.com', '2019-10-12', '2019-10-26', 'i want to go rangamati', '2019-10-11 08:49:40', 1, NULL, '2019-10-11 08:50:26');

-- --------------------------------------------------------

--
-- Table structure for table `tblenquiry`
--

CREATE TABLE `tblenquiry` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) NOT NULL,
  `EmailId` varchar(100) NOT NULL,
  `MobileNumber` char(10) NOT NULL,
  `Subject` varchar(100) NOT NULL,
  `Description` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `Status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblenquiry`
--

INSERT INTO `tblenquiry` (`id`, `FullName`, `EmailId`, `MobileNumber`, `Subject`, `Description`, `PostingDate`, `Status`) VALUES
(5, 'Rifatun Nesa Nishat', 'nishatnoman1999@gmail.com', '0174063444', 'dd', 'xdtycfbjhknm', '2019-10-07 20:13:24', 1),
(6, 'Anima Zaman Aesha', 'anima128@gmail.com', '0152142037', 'fdfff', 'dtfghyjihgfdsfghj', '2019-10-10 23:04:23', 1),
(7, 'Jarin Tasnim', 'jarin098@gmail.com', '0179646182', 'jknkj', 'hfgdsarwezstxdrycfugvibh', '2019-10-10 23:05:13', 1),
(8, 'Arafat Uddin', 'arafat567@gmail.com', '0195623905', 'dse', 'kneadklgvnklz', '2019-10-10 23:06:36', 1),
(9, 'Tashreef Muhammud', 'tashrref45@gmail.com', '0185410358', 'thj', 'hbgjhghj', '2019-10-10 23:07:31', 1),
(10, 'Suvom Som', 'suvom39@gmail.com', '0138784674', 'dff', 'gdbhdtghhbfjnfgvyj', '2019-10-10 23:09:05', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblissues`
--

CREATE TABLE `tblissues` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) NOT NULL,
  `Issue` varchar(100) NOT NULL,
  `Description` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `AdminremarkDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblissues`
--

INSERT INTO `tblissues` (`id`, `UserEmail`, `Issue`, `Description`, `PostingDate`, `AdminRemark`, `AdminremarkDate`) VALUES
(7, 'abc@g.com', 'Refund', 'test test ttest test ttest test ttest test ttest test ttest test t', '2017-05-14 07:56:46', 'vetet ert erteryre', '2017-05-14 07:58:43');

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `type`, `detail`) VALUES
(3, 'Aboutus', '										<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\"> Name: Rifatun Nesa Nishat <br> ID: 17.01.04.016 <br> Name: Anima Zaman Aesha <br> ID: 17.01.04.018</span>'),
(11, 'Contact', '																				<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\\\"> Mobile No: 01832-763409\r\n<br> Mail ID: abc123@gmail.com</span>\r\n										');

-- --------------------------------------------------------

--
-- Table structure for table `tbltourpackages`
--

CREATE TABLE `tbltourpackages` (
  `PackageId` int(11) NOT NULL,
  `PackageName` varchar(200) NOT NULL,
  `PackageType` varchar(150) NOT NULL,
  `PackageLocation` varchar(100) NOT NULL,
  `PackagePrice` int(11) NOT NULL,
  `PackageFetures` varchar(255) NOT NULL,
  `PackageDetails` mediumtext NOT NULL,
  `PackageImage` varchar(100) NOT NULL,
  `Creationdate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltourpackages`
--

INSERT INTO `tbltourpackages` (`PackageId`, `PackageName`, `PackageType`, `PackageLocation`, `PackagePrice`, `PackageFetures`, `PackageDetails`, `PackageImage`, `Creationdate`, `UpdationDate`) VALUES
(1, 'Kuakata', 'Family or Couple', 'Patuakhali ,Barisal Division', 5000, 'AC or Non-AC Bus,Resort, Entry Ticket, Food', 'All Standard / Deluxe accommodation on Twin Sharing basis as per itinerary,\r\nAC / Non ac Transport / Ship / Local Transport / Trollar,\r\nAll sightseeing, toll, tax and entry fees as per mentioned itinerary,\r\nExperienced guide, food.', 'kuakata.jpg', '2019-09-24 18:00:00', '2019-10-10 23:23:59'),
(2, 'St. Martin\'s Island', 'Family or Couple', 'Bay of Bengal', 5050, 'AC or Non-AC Bus,Resort, Entry Ticket, Food', 'All Standard / Deluxe accommodation on Twin Sharing basis as per itinerary,\r\nAC / Non ac Transport / Ship / Local Transport / Trollar,\r\nAll sightseeing, toll, tax and entry fees as per mentioned itinerary,\r\nExperienced guide, food.\r\n', 'cp.jpg', '2019-09-24 18:00:00', '2019-10-10 23:48:54'),
(3, 'Rangamati', 'Family or Couple', ' south-eastern Bangladesh', 5500, 'AC or Non-AC Bus,Resort, Entry Ticket, Food', 'All Standard / Deluxe accommodation on Twin Sharing basis as per itinerary,\r\nAC / Non ac Transport / Ship / Local Transport / Trollar,\r\nAll sightseeing, toll, tax and entry fees as per mentioned itinerary,\r\nExperienced guide, food.\r\n', 'complaints.jpg', '2019-09-25 16:00:58', '2019-10-10 23:24:45'),
(4, 'Jaflong', 'Family or Couple', 'Division of Sylhet', 4000, 'AC or Non-AC Bus,Resort, Entry Ticket, Food', 'All Standard / Deluxe accommodation on Twin Sharing basis as per itinerary,\r\nAC / Non ac Transport / Ship / Local Transport / Trollar,\r\nAll sightseeing, toll, tax and entry fees as per mentioned itinerary,\r\nExperienced guide, food.', 'images.jpg', '2019-09-24 22:39:37', '2019-10-10 23:24:57'),
(5, 'Sajek', 'Family or Couple', ' Rangamati District', 4900, 'AC or Non-AC Bus,Resort, Entry Ticket, Food', 'Dhaka- Khagrachari -Dhaka Non-AC or AC bus ticket: \r\n\r\n- All the cost of the moon car (Chand car),\r\n\r\n- The cost of the resort,\r\n\r\n- SAJEK entrance ticket,\r\n\r\n- Famous System / FNF Restaurant Lunch,\r\n\r\n- Alu Tila entrance fee and flare.', 'coorg-hill-station1.jpg', '2019-09-24 22:42:10', '2019-10-10 23:25:04'),
(6, 'Sylhet', 'Family or Couple', 'Division of Sylhet', 6000, 'AC or Non-AC Bus,Resort, Entry Ticket, Food', 'All Standard / Deluxe accommodation on Twin Sharing basis as per itinerary,\r\nAC / Non ac Transport / Ship / Local Transport / Trollar,\r\nAll sightseeing, toll, tax and entry fees as per mentioned itinerary,\r\nExperienced guide, food.', 'Sylhet.jpg', '2019-09-25 08:01:08', '2019-10-10 23:25:13'),
(7, 'Cox\'s Bazar', 'Family or Couple', 'Chittagong Division', 6500, 'AC or Non-AC Bus,Resort, Entry Ticket, Food', 'All Standard / Deluxe accommodation on Twin Sharing basis as per itinerary,\r\nAC / Non ac Transport / Ship / Local Transport / Trollar,\r\nAll sightseeing, toll, tax and entry fees as per mentioned itinerary,\r\nExperienced guide, food.', 'cox.jpg', '2019-10-10 23:38:19', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) NOT NULL,
  `MobileNumber` char(10) NOT NULL,
  `EmailId` varchar(70) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `MobileNumber`, `EmailId`, `Password`, `RegDate`, `UpdationDate`) VALUES
(12, 'Rifatun Nesa Nishat', '0179646182', 'nishatnoman1999@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '2019-10-08 09:16:24', '0000-00-00 00:00:00'),
(13, 'Anima Zaman Aesha', '0152142037', 'anima128@gmail.com', '674f3c2c1a8a6f90461e8a66fb5550ba', '2019-10-10 22:54:50', '2019-10-10 22:56:28'),
(14, 'rizana', '0164515780', 'rizanasinha@gmail.com', '31590b89128a2f8d82b5be47833c1c33', '2019-10-11 08:46:47', '0000-00-00 00:00:00'),
(15, 'mehzabin Mouri', '0918983294', 'mouri194@gmail.com', '21c9849b3e7e413f45459446a8d503f5', '2019-10-12 05:54:18', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`BookingId`);

--
-- Indexes for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblissues`
--
ALTER TABLE `tblissues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  ADD PRIMARY KEY (`PackageId`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EmailId` (`EmailId`),
  ADD KEY `EmailId_2` (`EmailId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `BookingId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblissues`
--
ALTER TABLE `tblissues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  MODIFY `PackageId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
