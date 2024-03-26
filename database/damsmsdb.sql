-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 02, 2024 at 04:50 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `damsmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblappointment`
--

CREATE TABLE `tblappointment` (
  `ID` int(10) NOT NULL,
  `AppointmentNumber` int(10) DEFAULT NULL,
  `Name` varchar(250) DEFAULT NULL,
  `MobileNumber` bigint(20) DEFAULT NULL,
  `Email` varchar(250) DEFAULT NULL,
  `AppointmentDate` date DEFAULT NULL,
  `AppointmentTime` time DEFAULT NULL,
  `Specialization` varchar(250) DEFAULT NULL,
  `Doctor` int(10) DEFAULT NULL,
  `Message` mediumtext DEFAULT NULL,
  `ApplyDate` timestamp NULL DEFAULT current_timestamp(),
  `Remark` varchar(250) DEFAULT NULL,
  `Status` varchar(250) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbldoctor`
--

CREATE TABLE `tbldoctor` (
  `ID` int(5) NOT NULL,
  `FullName` varchar(250) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(250) DEFAULT NULL,
  `Specialization` varchar(250) DEFAULT NULL,
  `Password` varchar(259) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbldoctor`
--

INSERT INTO `tbldoctor` (`ID`, `FullName`, `MobileNumber`, `Email`, `Specialization`, `Password`, `CreationDate`) VALUES
(7, 'Dr.Nikhil Panse', 8796574562, 'nikhil@gmail.com', '7', 'e10adc3949ba59abbe56e057f20f883e', '2023-12-21 10:58:31'),
(8, 'Dr.Minakshi Bhosale', 7689456738, 'minakshi@gmail.com', '7', 'e10adc3949ba59abbe56e057f20f883e', '2023-12-21 11:00:26'),
(9, 'Dr.Aarti Kinikar', 8956396838, 'aarti@gmail.com', '5', 'e10adc3949ba59abbe56e057f20f883e', '2023-12-21 11:01:18'),
(10, 'Dr.Vasudha Belgaumkar', 9078563478, 'vasudha@gmail.com', '4', 'e10adc3949ba59abbe56e057f20f883e', '2023-12-21 11:02:18'),
(11, 'Dr.Sunil Tolat', 9867456789, 'sunil@gmail.com', '4', 'e10adc3949ba59abbe56e057f20f883e', '2023-12-21 11:11:13'),
(12, 'Dr.Malangori Parande', 5468793657, 'malangori@gmail.com', '2', 'e10adc3949ba59abbe56e057f20f883e', '2023-12-21 11:12:32'),
(13, 'Dr.Kartik Singhai', 7890578969, 'kartik@gmail.com', '2', 'e10adc3949ba59abbe56e057f20f883e', '2023-12-21 11:13:40'),
(14, 'Dr.Mrudula Joshi', 5678904756, 'mrudula@gmail.com', '1', 'e10adc3949ba59abbe56e057f20f883e', '2023-12-21 11:14:35'),
(15, 'Dr.Rajesh Karyakarte', 9806789567, 'rajesh@gmail.com', '1', 'e10adc3949ba59abbe56e057f20f883e', '2023-12-21 11:15:20'),
(16, 'Dr.Samir Joshi', 8899776856, 'samir@gmail.com', '3', 'e10adc3949ba59abbe56e057f20f883e', '2023-12-21 11:15:56'),
(17, 'Dr.Muralidhar Tambe', 7788996677, 'muralidhar@gmail.com', '3', 'e10adc3949ba59abbe56e057f20f883e', '2023-12-21 11:16:45'),
(18, 'Dr.Meenal Jadhav', 9900778845, 'meenal@gmail.com', '6', 'e10adc3949ba59abbe56e057f20f883e', '2023-12-21 11:17:32'),
(19, 'Dr.Pradip Borle', 7905789475, 'pradip@gmail.com', '6', 'e10adc3949ba59abbe56e057f20f883e', '2023-12-21 11:18:15'),
(20, 'Dr.Malika Alexander', 9089786756, 'malika@gmail.com', '8', 'e10adc3949ba59abbe56e057f20f883e', '2023-12-21 11:19:02'),
(21, 'Dr.Vishwanath Pujari', 9834567890, 'vishwanath@gmail.com', '8', 'e10adc3949ba59abbe56e057f20f883e', '2023-12-21 11:19:50'),
(22, 'Dr.Meghna Palewar', 9045678904, 'meghna@gmail.com', '10', 'e10adc3949ba59abbe56e057f20f883e', '2023-12-21 11:20:45'),
(23, 'Dr.Ambarish Mathesul', 8970586749, 'ambarish@gmail.com', '10', 'e10adc3949ba59abbe56e057f20f883e', '2023-12-21 11:21:34'),
(24, 'Dr.Shilpa Naik', 7905978590, 'shilpa@gmail.com', '11', 'e10adc3949ba59abbe56e057f20f883e', '2023-12-21 11:22:13'),
(25, 'Dr.Nitika Deshmukh', 9000078979, 'nitika@gmail.com', '11', 'e10adc3949ba59abbe56e057f20f883e', '2023-12-21 11:22:56'),
(26, 'Dr.Swati Shah', 8000079879, 'swati@gmail.com', '12', 'e10adc3949ba59abbe56e057f20f883e', '2023-12-21 11:23:43'),
(27, 'Dr.Ivan Netto', 7000059867, 'ivan@gmail.com', '12', 'e10adc3949ba59abbe56e057f20f883e', '2023-12-21 11:24:27'),
(28, 'Dr.Ganesh Jagdale', 6079885949, 'ganesh@gmail.com', '13', 'e10adc3949ba59abbe56e057f20f883e', '2023-12-21 11:25:07'),
(29, 'Dr.Priyanka Salunke', 5970587959, 'priyanka@gmail.com', '13', 'e10adc3949ba59abbe56e057f20f883e', '2023-12-21 11:25:43'),
(30, 'Dr.Pushkraj Birajdar', 7684674679, 'pushkraj@gmail.com', '5', 'e10adc3949ba59abbe56e057f20f883e', '2023-12-21 11:27:36'),
(31, 'Dr.Ninad Waghmare', 4734976306, 'ninad@gmail.com', '9', 'e10adc3949ba59abbe56e057f20f883e', '2023-12-21 11:28:09'),
(32, 'Dr.Varsha Soni', 3683969234, 'varsha@gmail.com', '32', 'e10adc3949ba59abbe56e057f20f883e', '2023-12-21 11:28:47');

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` date DEFAULT NULL,
  `Timing` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`, `Timing`) VALUES
(1, 'aboutus', 'About Us', '<div><font color=\"#202124\" face=\"arial, sans-serif\"><b>Our mission declares our purpose of existence as a company and our objectives.</b></font></div><div><font color=\"#202124\" face=\"arial, sans-serif\"><b><br></b></font></div><div><font color=\"#202124\" face=\"arial, sans-serif\"><b>To give every customer much more than what he/she asks for in terms of quality, selection, value for money and customer service, by understanding local tastes and preferences and innovating constantly to eventually provide an unmatched experience in jewellery shopping.</b></font></div>', NULL, NULL, NULL, ''),
(2, 'contactus', 'Contact Us', 'GVGC+852, Agarkar Nagar,Pune, Maharashtra 411001', 'sassoon@gamil.com', 4567854237, NULL, '09:30 am to 5:30 pm');

-- --------------------------------------------------------

--
-- Table structure for table `tblspecialization`
--

CREATE TABLE `tblspecialization` (
  `ID` int(5) NOT NULL,
  `Specialization` varchar(250) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblspecialization`
--

INSERT INTO `tblspecialization` (`ID`, `Specialization`, `CreationDate`) VALUES
(1, 'Orthopedics', '2023-12-21 14:22:33'),
(2, 'Internal Medicine', '2023-12-21 14:23:42'),
(3, 'Obstetrics and Gynecology', '2023-12-21 14:24:14'),
(4, 'Dermatology', '2023-12-21 14:24:14'),
(5, 'Pediatrics', '2023-12-21 14:24:14'),
(6, 'Radiology', '2023-12-21 14:24:14'),
(7, 'General Surgery', '2023-12-21 14:24:14'),
(8, 'Ophthalmology', '2023-12-21 14:24:14'),
(9, 'Family Medicine', '2023-12-21 14:24:14'),
(10, 'Chest Medicine', '2023-12-21 14:24:14'),
(11, 'Anesthesia', '2023-12-21 14:24:14'),
(12, 'Pathology', '2023-12-21 14:24:14'),
(13, 'ENT', '2023-12-21 14:24:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblappointment`
--
ALTER TABLE `tblappointment`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbldoctor`
--
ALTER TABLE `tbldoctor`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblspecialization`
--
ALTER TABLE `tblspecialization`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblappointment`
--
ALTER TABLE `tblappointment`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbldoctor`
--
ALTER TABLE `tbldoctor`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblspecialization`
--
ALTER TABLE `tblspecialization`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
