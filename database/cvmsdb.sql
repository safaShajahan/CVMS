-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 01, 2021 at 03:00 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cvmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(5) NOT NULL,
  `AdminName` varchar(45) DEFAULT NULL,
  `UserName` char(45) DEFAULT NULL,
  `MobileNumber` bigint(11) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin', 'admin', 7898799797, 'admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3', '2019-04-22 06:26:14');

-- --------------------------------------------------------

--
-- Table structure for table `tblemp`
--

CREATE TABLE `tblemp` (
  `ID` int(5) NOT NULL,
  `EmpName` varchar(45) DEFAULT NULL,
  `UserName` char(45) DEFAULT NULL,
  `MobileNumber` bigint(11) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `EmpRegdate` timestamp NULL DEFAULT NULL,
  `type` char(10) NOT NULL DEFAULT 'emp'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblemp`
--

INSERT INTO `tblemp` (`ID`, `EmpName`, `UserName`, `MobileNumber`, `Email`, `Password`, `EmpRegdate`, `type`) VALUES
(1, 'Sheela', 'employee', 9497153921, 'shela@gmail.com', 'employee', NULL, 'emp');

-- --------------------------------------------------------

--
-- Table structure for table `tbllogin`
--

CREATE TABLE `tbllogin` (
  `ID` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `username` char(50) DEFAULT NULL,
  `mobilenumber` bigint(11) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `type` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbllogin`
--

INSERT INTO `tbllogin` (`ID`, `name`, `username`, `mobilenumber`, `email`, `password`, `type`) VALUES
(1, 'Ganapathy', 'Ganapathy', 2147483647, 'ganapathy@gmil.com', 'ganapathy123', 'user'),
(4, '', 'vivek', 0, '', 'vivek123', 'user'),
(5, NULL, 'amal', NULL, NULL, 'amal123', 'user'),
(6, NULL, 'anandhu', NULL, NULL, 'anandhu123', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `tblvisitor`
--

CREATE TABLE `tblvisitor` (
  `ID` int(5) NOT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(11) DEFAULT NULL,
  `Address` varchar(250) DEFAULT NULL,
  `WhomtoMeet` varchar(120) DEFAULT NULL,
  `Deptartment` varchar(120) DEFAULT NULL,
  `ReasontoMeet` varchar(120) DEFAULT NULL,
  `EnterDate` timestamp NULL DEFAULT current_timestamp(),
  `remark` varchar(255) DEFAULT NULL,
  `outtime` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `status` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblvisitor`
--

INSERT INTO `tblvisitor` (`ID`, `FullName`, `Email`, `MobileNumber`, `Address`, `WhomtoMeet`, `Deptartment`, `ReasontoMeet`, `EnterDate`, `remark`, `outtime`, `status`) VALUES
(1, 'Akash', 'akash@gmail.com', 2147483647, 'Flat No-210, Kamala Nagar Market New Delhi', 'Mr. Birijesh', 'Hr.Department', 'Interview', '2019-03-31 18:30:00', 'done', '2019-04-23 16:03:57', ''),
(3, 'Rajesh Singh', 'rajesh@gmail.com', 8979897979, 'MIG Flat No:310 gouere gaon Mumbai', 'Shubhankar', 'Account', 'Personal', '2019-04-21 18:30:00', 'Done', '2019-04-23 15:52:06', ''),
(5, 'Mukesh', 'mukesh@gmail.com', 7897897979, 'H.NO:321, Nainital', 'Mr. Birijesh', 'Hr.Department', 'Interview', '2019-04-23 11:00:34', 'Done', '2019-04-23 15:57:19', ''),
(12, 'Ayushman', 'abc@gmail.com', 7897974697, 'H.No: 314 gali number 8, vasank kunj New Delhi', 'Alok Kumar', 'Account', 'Personal', '2019-04-23 11:14:45', 'done', '2019-04-23 11:15:09', ''),
(13, 'anuj kumar', 'phpgurukulofficial@gmail.com', 1234567890, 'New Delhi India', 'Mr. Sanjeev', 'HR', 'Inteview', '2019-04-23 17:43:00', 'Interview Done', '2019-04-23 17:47:32', ''),
(14, 'vivek krishnan', 'suvijithvs8086@gmail.com', 7025216266, 'vivek house', 'hr', 'IT', 'personal meeting', '2021-05-22 09:31:28', NULL, NULL, ''),
(15, 'Loard Ganesha', 'ganapathy4458@gmail.com', 7025216266, 'Himalayam', 'hr', 'dv', 'job interview', '2021-05-29 05:52:35', NULL, NULL, ''),
(16, 'Ganapathy', 'ganapathy@gmail.com', 2147483647, 'himalayam', 'hr', 'cv', 'personal meeting', '2021-05-29 06:10:29', NULL, NULL, ''),
(18, 'visakh', 'visakh@gmail.com', 7994844101, 'ohmkaram menamkulam kazhakoottam po trivandrum', 'HR', 'IT', 'Interview', '2021-05-29 16:04:29', NULL, NULL, ''),
(19, 'Alphonse.R', 'alphnse7854@gmail.com', 9742658956, 'Ruby house\r\nmaryanad\r\nputhukurichy p.o', 'Mr.Anirudh', 'Accounts', 'Job Application', '2021-10-31 14:52:30', NULL, NULL, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblemp`
--
ALTER TABLE `tblemp`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbllogin`
--
ALTER TABLE `tbllogin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblvisitor`
--
ALTER TABLE `tblvisitor`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblemp`
--
ALTER TABLE `tblemp`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbllogin`
--
ALTER TABLE `tbllogin`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblvisitor`
--
ALTER TABLE `tblvisitor`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
