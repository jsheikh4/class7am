-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 07, 2015 at 10:33 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `sms`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE IF NOT EXISTS `tbl_admin` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `username`, `password`, `email`) VALUES
(1, 'admin', 'admin', 'admin@yhaoo.com');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_course`
--

CREATE TABLE IF NOT EXISTS `tbl_course` (
  `course_id` int(100) NOT NULL AUTO_INCREMENT,
  `course_name` varchar(100) NOT NULL,
  `course_duration` varchar(100) NOT NULL,
  `course_fee` varchar(100) NOT NULL,
  `course_detail` varchar(100) NOT NULL,
  PRIMARY KEY (`course_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `tbl_course`
--

INSERT INTO `tbl_course` (`course_id`, `course_name`, `course_duration`, `course_fee`, `course_detail`) VALUES
(17, 'qrr333', '33333333333', 'wqxf33333333', 'z2232'),
(20, 'acac', 'acac', 'acwec', 'asdcwac'),
(21, 'sddc', 'dacwd', 'ascac', 'cweff'),
(22, 'fdgtget', 'dzgfe', 'gfezgf', 'fbef'),
(23, ' gbxgb', 'gzrhgg', 'bgzgbd', 'gzrbg'),
(24, 'mscittt', '3', '453', 'hbikjno'),
(25, 'mit', '9 years', '3222', 'this is mit');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_download`
--

CREATE TABLE IF NOT EXISTS `tbl_download` (
  `download_id` int(11) NOT NULL AUTO_INCREMENT,
  `download_title` varchar(100) NOT NULL,
  `download_file` varchar(100) NOT NULL,
  PRIMARY KEY (`download_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `tbl_download`
--

INSERT INTO `tbl_download` (`download_id`, `download_title`, `download_file`) VALUES
(5, 'Dhunibesu', 'dhunbesi.sql');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_notice`
--

CREATE TABLE IF NOT EXISTS `tbl_notice` (
  `notice_id` int(11) NOT NULL AUTO_INCREMENT,
  `notice_title` varchar(100) NOT NULL,
  `notice_description` varchar(1000) NOT NULL,
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `tbl_notice`
--

INSERT INTO `tbl_notice` (`notice_id`, `notice_title`, `notice_description`) VALUES
(10, 'Bholi', 'hunxa hai ko yo descriptionho'),
(11, 'dzdbg', 'bfdsfdhgh');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_student`
--

CREATE TABLE IF NOT EXISTS `tbl_student` (
  `student_id` int(100) NOT NULL AUTO_INCREMENT,
  `student_name` varchar(100) NOT NULL,
  `student_gender` varchar(50) NOT NULL,
  `student_image` varchar(100) NOT NULL,
  `student_course` varchar(50) NOT NULL,
  `student_dob` date NOT NULL,
  `student_phone` varchar(100) NOT NULL,
  `student_email` varchar(50) NOT NULL,
  `student_guardian` varchar(100) NOT NULL,
  `student_address` varchar(50) NOT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=27 ;

--
-- Dumping data for table `tbl_student`
--

INSERT INTO `tbl_student` (`student_id`, `student_name`, `student_gender`, `student_image`, `student_course`, `student_dob`, `student_phone`, `student_email`, `student_guardian`, `student_address`) VALUES
(13, 'Aafeen Khan', 'Female', 'Penguins.jpg', 'MBA', '1992-05-04', '9843456453', 'afin@gmail.com', 'Chand UDdin', 'Gyaneswor'),
(19, 'Roshani SHrestha', 'Female', 'Penguins.jpg', 'BE.IT', '1996-06-19', '9847512345', 'roshu@gmail.com', 'Bikesh Shrestha', 'Mangalbazar'),
(23, 'Millie kayastha', 'Female', 'Chrysanthemum.jpg', 'BBA', '2000-02-25', '9847512345', 'mk@gmail.com', 'Malina Kayastha', 'Ktm'),
(24, 'Hritik Chhetr', 'Male', 'Penguins.jpg', 'BBS' '1995-02-25', '9847512345', 'hc@yahoo.com', 'Trisala chhetri', 'Baluwatar'),
(25, 'Shrehan Joshi', 'Male', 'IMG_20150125_2.jpg', 'BE.CE', '1995-02-25', '9847512345', 'sj@gmail.com', 'Manoj Joshi', 'Kirtipur'),
(26, 'Abhinav Suwal', 'Male', 'lov.jpg', 'BBS', '1995-02-25', '9847512345', 'abhi@gmail.com', 'Nilu Suwal', 'Baneswor');
(27, 'Rahul Shakya', 'Male', '', 'MIT', '1990-02-07', '9841256789', 'raul@gmail.com', 'Ramesh Shakya', 'Satdobato');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_teacher`
--

CREATE TABLE IF NOT EXISTS `tbl_teacher` (
  `teacher_id` int(100) NOT NULL AUTO_INCREMENT,
  `teacher_name` varchar(100) NOT NULL,
  `teacher_gender` varchar(50) NOT NULL,
  `teacher_image` varchar(100) NOT NULL,
  `teacher_course` varchar(50) NOT NULL,
  `teacher_phone` varchar(100) NOT NULL,
  `teacher_email` varchar(50) NOT NULL,
  `teacher_address` varchar(50) NOT NULL,
  PRIMARY KEY (`teacher_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `tbl_teacher`
--

INSERT INTO `tbl_teacher` (`teacher_id`, `teacher_name`, `teacher_gender`, `teacher_image`, `teacher_course`, `teacher_phone`, `teacher_email`, `teacher_address`) VALUES
(22, 'Rabindra', 'Male', '1428392935IMG_20150125_3.jpg', 'mscittt', '9845125412', 'sad@yahoo.com', 'ktm'),
(23, 'Sirish Amatya', 'Male', 'Penguins.jpg', ' gbxgb', '9845124547', 'tea@yahoo.com', 'Lalitpur');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
