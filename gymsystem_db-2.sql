-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 09, 2021 at 08:07 AM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gymsystem_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `category_tbl`
--

DROP TABLE IF EXISTS `category_tbl`;
CREATE TABLE `category_tbl` (
  `Category_Name` varchar(50) DEFAULT NULL,
  `Category_ID` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `course_tbl`
--

DROP TABLE IF EXISTS `course_tbl`;
CREATE TABLE `course_tbl` (
  `Course_ID` int(11) NOT NULL,
  `Course_Name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `exercise_tbl`
--

DROP TABLE IF EXISTS `exercise_tbl`;
CREATE TABLE `exercise_tbl` (
  `Exercise_ID` int(11) NOT NULL,
  `Exercise_Name` varchar(50) DEFAULT NULL,
  `Calories` double DEFAULT NULL,
  `Category_ID` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `login_tbl`
--

DROP TABLE IF EXISTS `login_tbl`;
CREATE TABLE `login_tbl` (
  `User_ID` int(11) NOT NULL,
  `Username` varchar(50) DEFAULT NULL,
  `Password` varchar(50) DEFAULT NULL,
  `First_Name` varchar(50) DEFAULT NULL,
  `Last_Name` varchar(50) DEFAULT NULL,
  `Address` varchar(50) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Weight` double DEFAULT NULL,
  `Height` double DEFAULT NULL,
  `Gender` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login_tbl`
--

INSERT INTO `login_tbl` (`User_ID`, `Username`, `Password`, `First_Name`, `Last_Name`, `Address`, `Email`, `Weight`, `Height`, `Gender`) VALUES
(1, 'admin', 'admin', 'admin chan ', 'admin ', 'blk-admin batumbakal', 'admin@gmail.com', 50, 175, 'Male'),
(2, 'test', 'test', 'test ', 'test ', 'test masaksak ilag', 'test@gmail.com', 50, 175, 'Male'),
(3, 'elaih', 'elaih', 'elaijha ', 'solitario ', 'a-15', 'elaijha@gmail.com', 175, 75, 'Male');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_result`
--

DROP TABLE IF EXISTS `tbl_result`;
CREATE TABLE `tbl_result` (
  `Session_ID` int(11) NOT NULL,
  `Course_ID` int(50) DEFAULT NULL,
  `Exercise_ID` int(50) DEFAULT NULL,
  `Sched_ID` int(50) DEFAULT NULL,
  `User_ID` int(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_schedule`
--

DROP TABLE IF EXISTS `tbl_schedule`;
CREATE TABLE `tbl_schedule` (
  `Sched_ID` int(11) NOT NULL,
  `Day` int(25) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Course_ID` int(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category_tbl`
--
ALTER TABLE `category_tbl`
  ADD PRIMARY KEY (`Category_ID`);

--
-- Indexes for table `course_tbl`
--
ALTER TABLE `course_tbl`
  ADD PRIMARY KEY (`Course_ID`);

--
-- Indexes for table `exercise_tbl`
--
ALTER TABLE `exercise_tbl`
  ADD PRIMARY KEY (`Exercise_ID`),
  ADD KEY `Category_ID` (`Category_ID`);

--
-- Indexes for table `login_tbl`
--
ALTER TABLE `login_tbl`
  ADD PRIMARY KEY (`User_ID`);

--
-- Indexes for table `tbl_result`
--
ALTER TABLE `tbl_result`
  ADD PRIMARY KEY (`Session_ID`);

--
-- Indexes for table `tbl_schedule`
--
ALTER TABLE `tbl_schedule`
  ADD PRIMARY KEY (`Sched_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category_tbl`
--
ALTER TABLE `category_tbl`
  MODIFY `Category_ID` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `course_tbl`
--
ALTER TABLE `course_tbl`
  MODIFY `Course_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exercise_tbl`
--
ALTER TABLE `exercise_tbl`
  MODIFY `Exercise_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `login_tbl`
--
ALTER TABLE `login_tbl`
  MODIFY `User_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_result`
--
ALTER TABLE `tbl_result`
  MODIFY `Session_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_schedule`
--
ALTER TABLE `tbl_schedule`
  MODIFY `Sched_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `exercise_tbl`
--
ALTER TABLE `exercise_tbl`
  ADD CONSTRAINT `exercise_tbl_ibfk_1` FOREIGN KEY (`Category_ID`) REFERENCES `category_tbl` (`Category_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
