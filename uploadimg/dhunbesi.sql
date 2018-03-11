-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 24, 2015 at 05:04 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dhunbesi`
--

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE IF NOT EXISTS `event` (
  `eventId` int(11) NOT NULL AUTO_INCREMENT,
  `eventTitle` varchar(255) DEFAULT NULL,
  `eventDate` date DEFAULT NULL,
  PRIMARY KEY (`eventId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`eventId`, `eventTitle`, `eventDate`) VALUES
(2, 'Rabindra Acharya', '2015-03-24');

-- --------------------------------------------------------

--
-- Table structure for table `latest`
--

CREATE TABLE IF NOT EXISTS `latest` (
  `latestId` int(11) NOT NULL AUTO_INCREMENT,
  `latestDesc` text,
  PRIMARY KEY (`latestId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `latest`
--

INSERT INTO `latest` (`latestId`, `latestDesc`) VALUES
(7, 'Welcome to our official website of the District Agriculture Development Office (DADO)'),
(8, 'Notice:This website is on Test and is under Construction.So, Do not rely on the information Displayed!!! --Developer<a href="http://rabindraacharya.com.np" style="color:red"> <b>Rabindra Acharya</b></a>');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
  `menuId` int(11) NOT NULL AUTO_INCREMENT,
  `menuTitle` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`menuId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`menuId`, `menuTitle`) VALUES
(11, 'About Us'),
(12, 'Programme');

-- --------------------------------------------------------

--
-- Table structure for table `menudesc`
--

CREATE TABLE IF NOT EXISTS `menudesc` (
  `menudescId` int(11) NOT NULL AUTO_INCREMENT,
  `menuId` int(11) DEFAULT NULL,
  `menudescTitle` varchar(255) DEFAULT NULL,
  `menudescDesc` text,
  PRIMARY KEY (`menudescId`),
  KEY `subhomeID` (`menuId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `menudesc`
--

INSERT INTO `menudesc` (`menudescId`, `menuId`, `menudescTitle`, `menudescDesc`) VALUES
(1, 11, 'à¤¦à¥‡à¤¶à¤•à¤¾ à¤¬à¤¹à¥à¤¸à¤‚à¤–à¥à¤¯à¤• à¤œà¤¨à¤¤à¤¾', '<p style="text-align: justify;">\r\n	<span style="color: rgb(51, 51, 51); font-family: Arial, sans-serif; font-size: 14px; line-height: 22.2222232818604px; text-align: justify;"><img alt="" src="/userfiles/image/Untitled.png" style="width: 50%; height: 250px; float: left; border-width: 1px; border-style: solid; margin: 2px 10px;" />à¤¦à¥‡à¤¶à¤•à¤¾ à¤¬à¤¹à¥à¤¸à¤‚à¤–à¥à¤¯à¤• à¤œà¤¨à¤¤à¤¾à¤•à¥‹ à¤œà¥€à¤µà¤¿à¤•à¥‹à¤ªà¤¾à¤°à¥à¤œà¤¨à¤•à¥‹ à¤ªà¥à¤°à¤®à¥à¤– à¤¤à¤¥à¤¾ à¤¦à¥‡à¤¶à¤•à¥ˆ à¤…à¤°à¥à¤¥à¤¤à¤¨à¥à¤¤à¥à¤°à¤•à¥‹ à¤®à¥‡à¤°à¥à¤¦à¤£à¥à¤¡ à¤­à¤à¤•à¥‹ à¤¨à¥‡à¤ªà¤¾à¤²à¤•à¥‹ à¤•à¥ƒà¤·à¤¿ à¤•à¥à¤·à¥‡à¤¤à¥à¤° à¤†à¤§à¥à¤¨à¤¿à¤•à¤¤à¤¾à¤•à¥‹ à¤•à¥à¤·à¥‡à¤¤à¥à¤°à¤®à¤¾ à¤ªà¤›à¤¾à¤¡à¤¿ à¤ªà¤°à¥‡à¤¤à¤¾à¤ªà¤¨à¤¿ à¤µà¤¿à¤—à¤¤à¤•à¥‹ à¤¤à¥à¤²à¤¨à¤¾à¤®à¤¾ à¤†à¤§à¥à¤¨à¤¿à¤•à¤¤à¤¾à¤¤à¤°à¥à¤« à¤¬à¤¢à¤¿ à¤°à¤¹à¥‡à¤•à¥‹ à¤› à¥¤ à¤¨à¥‡à¤ªà¤¾à¤² à¤¸à¤°à¤•à¤¾à¤°à¤²à¥‡ à¤¦à¥€à¤°à¥à¤˜à¤•à¤¾à¤²à¤¿à¤¨ à¤•à¥ƒà¤·à¤¿ à¤¯à¥‹à¤œà¤¨à¤¾à¤•à¥‹ à¤…à¤µà¤§à¤¾à¤°à¤£à¤¾ à¤…à¤¨à¥à¤¸à¤¾à¤° à¤•à¥ƒà¤·à¤¿ à¤•à¥à¤·à¥‡à¤¤à¥à¤°à¤²à¤¾à¤ˆ à¤µà¥à¤¯à¤µà¤¸à¤¾à¤¯à¤¿à¤•à¤°à¤£ à¤—à¤°à¥à¤¨ à¤ªà¤•à¥‡à¤Ÿ à¤ªà¥à¤¯à¤¾à¤•à¥‡à¤œà¤•à¥‹ à¤°à¤£à¤¨à¥€à¤¤à¤¿, à¤°à¤¾à¤·à¥à¤Ÿà¥à¤°à¤¿à¤¯ à¤•à¥ƒà¤·à¤¿ à¤¨à¥€à¤¤à¤¿ à¥¨à¥¦à¥¬à¥§, à¤œà¤¿à¤²à¥à¤²à¤¾à¤•à¥‹ à¤†à¤µà¤§à¤¿à¤• à¤¯à¥‹à¤œà¤¨à¤¾, à¤œà¤¿à¤²à¥à¤²à¤¾à¤®à¤¾ à¤‰à¤ªà¤²à¤¬à¥à¤§ à¤¸à¥à¤¥à¤¾à¤¨à¥€à¤¯ à¤¸à¤®à¥à¤­à¤¾à¤µà¤¨à¤¾ à¤° à¤¸à¤®à¥à¤­à¤¾à¤µà¥à¤¯à¤¤à¤¾à¤•à¥‹ à¤†à¤§à¤¾à¤°à¤®à¤¾ à¤¸à¥à¤¥à¤¾à¤¨à¤¿à¤¯ à¤¶à¥à¤°à¥‹à¤¤ à¤¸à¤¾à¤§à¤¨à¤•à¥‹ à¤¸à¤®à¥à¤šà¤¿à¤¤ à¤‰à¤ªà¤¯à¥‹à¤— à¤—à¤°à¥€ à¤•à¥ƒà¤·à¤• à¤¸à¤®à¥à¤¦à¤¾à¤¯à¤¹à¤°à¥ à¤²à¤•à¥à¤·à¤¿à¤¤ à¤—à¤°à¥€ à¤µà¥à¤¯à¤µà¤¸à¤¾à¤¯à¤¿à¤•, à¤–à¤¾à¤¦à¥à¤¯ à¤¸à¥à¤°à¤•à¥à¤·à¤¾ à¤¸à¤®à¥à¤¬à¤¨à¥à¤§à¤¿ à¤•à¤¾à¤°à¥à¤¯à¤•à¥à¤°à¤®à¤¹à¤°à¥ à¤¸à¤‚à¤šà¤¾à¤²à¤¨ à¤—à¤°à¥€ à¤•à¥ƒà¤·à¤¿ à¤ªà¥‡à¤¶à¤¾à¤²à¤¾à¤ˆ à¤®à¤°à¥à¤¯à¤¾à¤¦à¤¿à¤¤ à¤¬à¤¨à¤¾à¤ˆ à¤•à¥ƒà¤·à¤•à¤¹à¤°à¥à¤•à¥‹ à¤†à¤¯ à¤†à¤°à¥à¤œà¤¨ à¤¬à¤¢à¤¾à¤‰à¤¨à¥‡ à¤•à¤°à¥à¤¯à¤¹à¤°à¥ à¤¸à¤žà¥à¤šà¤¾à¤²à¤¿à¤¤ à¤—à¤°à¤¿à¤¦à¥ˆ à¤†à¤à¤•à¥‹ à¤› à¥¤ à¤¯à¤¸à¥ˆ à¤¸à¤¨à¥à¤¦à¤°à¥à¤­à¤®à¤¾ à¤œà¤¿à¤²à¥à¤²à¤¾ à¤•à¥ƒà¤·à¤¿ à¤µà¤¿à¤•à¤¾à¤¸ à¤•à¤¾à¤°à¥à¤¯à¤¾à¤²à¤¯à¤²à¥‡ à¤œà¤¿à¤²à¥à¤²à¤¾à¤•à¥‹ à¤•à¥ƒà¤·à¤¿ à¤•à¥à¤·à¥‡à¤¤à¥à¤°à¤•à¥‹ à¤µà¤¸à¥à¤¤à¥à¤¸à¥à¤¥à¤¿à¤¤à¤¿ à¤¤à¤¥à¤¾ à¤¯à¤¸ à¤•à¤¾à¤°à¥à¤¯à¤¾à¤²à¤¯à¤²à¥‡ à¤¸à¤‚à¤šà¤¾à¤²à¤¨ à¤—à¤°à¥‡à¤•à¤¾ à¤µà¤¿à¤­à¤¿à¤¨à¥à¤¨ à¤•à¥ƒà¤·à¤¿ à¤†à¤¯à¥‹à¤œà¤¨à¤¾, à¤•à¥ƒà¤·à¤•à¤¹à¤°à¥à¤®à¤¾ à¤ªà¤°à¥‡à¤•à¥‹ à¤¸à¤•à¤¾à¤°à¤¾à¤¤à¥à¤®à¤• à¤ªà¥à¤°à¤­à¤¾à¤µà¤¹à¤°à¥, à¤•à¥ƒà¤·à¤¿ à¤µà¥à¤¯à¤µà¤¸à¤¾à¤¯à¤®à¤¾ à¤¹à¤¾à¤à¤¸à¤¿à¤² à¤­à¤à¤•à¤¾ à¤‰à¤ªà¤²à¤¬à¥à¤§à¤¿à¤¹à¤°à¥ à¤¤à¤¥à¤¾ à¤œà¤¿à¤²à¥à¤²à¤¾à¤®à¤¾ à¤•à¥ƒà¤·à¤¿ à¤•à¥à¤·à¥‡à¤¤à¥à¤°à¤®à¤¾ à¤¯à¥‹à¤—à¤¦à¤¾à¤¨ à¤ªà¥à¤°à¥à¤¯à¤¾à¤‰à¤¨à¥‡ à¤…à¤¨à¥à¤¯ à¤¸à¤°à¥‹à¤•à¤¾à¤²à¤µà¤¾à¤²à¤¾ à¤¸à¤°à¤•à¤¾à¤°à¥€ à¤¤à¤¥à¤¾ à¤—à¥ˆà¤°à¤¸à¤°à¤•à¤¾à¤°à¥€ à¤•à¤¾à¤°à¥à¤¯à¤¾à¤²à¤¯à¤•à¥‹ à¤¸à¤®à¥‡à¤¤ à¤•à¥ƒà¤·à¤¿ à¤—à¤¤à¤¿à¤µà¤¿à¤§à¤¿ à¤¸à¤®à¤¾à¤¬à¥‡à¤¸ à¤—à¤°à¥€ à¤¸à¤‚à¤•à¥à¤·à¤¿à¤ªà¥à¤¤ à¤œà¤¾à¤¨à¤•à¤¾à¤°à¥€ à¤¦à¤¿à¤¨à¥‡ à¤‰à¤¦à¥à¤¦à¥‡à¤¶à¥à¤¯à¤²à¥‡ à¤¸à¤°à¥à¤²à¤¾à¤¹à¥€ à¤œà¤¿à¤²à¥à¤²à¤¾à¤•à¥‹ à¤•à¥ƒà¤·à¤¿ à¤µà¤¿à¤•à¤¾à¤¸ à¤•à¤¾à¤°à¥à¤¯à¤•à¥à¤°à¤® à¤¤à¤¥à¤¾ à¤¤à¤¥à¥à¤¯à¤¾à¤™à¥à¤•à¤¹à¤°à¥ à¤¸à¤®à¤¾à¤µà¥‡à¤¸ à¤—à¤°à¤¿ à¤¯à¥‹ à¤µà¥‡à¤µà¤¸à¤¾à¤ˆà¤Ÿ à¤¸à¤‚à¤šà¤¾à¤²à¤¨à¤®à¤¾ à¤²à¥à¤¯à¤¾à¤ˆà¤à¤•à¥‹ à¤› à¥¤ à¤¯à¤¸ à¤­à¤¿à¤¤à¥à¤° à¤°à¤¹à¥‡à¤•à¤¾ à¤µà¤¸à¥à¤¤à¥à¤—à¤¤ à¤µà¤¿à¤µà¤°à¤£à¤¹à¤°à¥ à¤¤à¤¥à¤¾ à¤¤à¤¥à¥à¤¯à¤¾à¤¡à¥à¤¢à¤¹à¤°à¥à¤²à¥‡ à¤†à¤—à¤¾à¤®à¥€ à¤¦à¤¿à¤¨à¤®à¤¾ à¤¯à¤¸ à¤•à¥à¤·à¥‡à¤¤à¥à¤°à¤®à¤¾ à¤•à¤¾à¤°à¥à¤¯à¤•à¥à¤°à¤® à¤¸à¤‚à¤šà¤¾à¤²à¤¨à¤®à¤¾ à¤…à¤ à¤¸à¤¹à¤¯à¥‹à¤— à¤ªà¥à¤—à¥à¤¨à¥‡ à¤› à¤­à¤¨à¥à¤¨à¥‡ à¤®à¥ˆà¤²à¥‡ à¤†à¤¶à¤¾ à¤²à¤¿à¤à¤•à¥‹ à¤›à¥ à¥¤ à¤¯à¤¸ à¤µà¥‡à¤µ à¤ªà¥‡à¤œà¤®à¤¾ à¤µà¤¿à¤­à¤¿à¤¨à¥à¤¨ à¤¤à¥à¤°à¥à¤Ÿà¤¿à¤¹à¤°à¥ à¤° à¤¸à¥à¤§à¤¾à¤° à¤—à¤°à¥à¤¨à¥à¤ªà¤°à¥à¤¨à¥‡ à¤ à¤¾à¤‰à¤¹à¤°à¥ à¤¹à¥à¤¨ à¤¸à¤•à¥à¤›à¤¨ à¥¤ à¤¯à¤¸à¤®à¤¾ à¤¯à¤¹à¤¾à¤à¤¹à¤°à¥à¤•à¥‹ à¤…à¤®à¥à¤²à¥à¤¯ à¤¸à¥à¤à¤¾à¤µà¤¹à¤°à¥à¤•à¥‹ à¤²à¤¾à¤—à¤¿ à¤¹à¤¾à¤°à¥à¤¦à¤¿à¤• à¤…à¤¨à¥à¤°à¥‹à¤§ à¤› à¥¤</span></p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE IF NOT EXISTS `message` (
  `messageId` int(11) NOT NULL AUTO_INCREMENT,
  `messageName` varchar(255) DEFAULT NULL,
  `messageDesc` text,
  `messagePost` varchar(255) NOT NULL,
  `messagePicture` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`messageId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`messageId`, `messageName`, `messageDesc`, `messagePost`, `messagePicture`) VALUES
(1, 'Madhu Sudan Paudyal', 'Styles gallery on the Home tab. You can also format text directly by using the other controls on the Home tab. Most controls offer a choice of using the look from the current theme or using a format that you specify directly. To change the overall look of your document, choose new Theme elements on the Page Layout tab. To change the looks available in the Quick Style gallery,Styles gallery on the Home tab. ', ' Senior Plant Protection Officer', '15_03_23_09_03_58_Untitled-1_03.png');

-- --------------------------------------------------------

--
-- Table structure for table `sidenotice`
--

CREATE TABLE IF NOT EXISTS `sidenotice` (
  `noticeId` int(11) NOT NULL AUTO_INCREMENT,
  `noticeTitle` varchar(255) DEFAULT NULL,
  `noticeDesc` text,
  `noticeDate` date DEFAULT NULL,
  `noticePicture` varchar(255) NOT NULL,
  PRIMARY KEY (`noticeId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `sidenotice`
--

INSERT INTO `sidenotice` (`noticeId`, `noticeTitle`, `noticeDesc`, `noticeDate`, `noticePicture`) VALUES
(2, 'Under Construction', 'Notice:This website is on Test and is under Construction', '2015-03-23', '15_03_23_09_03_07_1.png'),
(3, 'à¤•à¥ƒà¤·à¤¿ à¤µà¥à¤¯à¤µà¤¸à¤¾à¤¯à¤¿à¤•à¤°à¤£', 'à¤•à¥ƒà¤·à¤¿ à¤µà¥à¤¯à¤µà¤¸à¤¾à¤¯à¤¿à¤•à¤°à¤£ à¤à¤µà¤‚ à¤”à¤¦à¥à¤¯à¥‹à¤—à¤¿à¤•à¤¿à¤°à¤£à¤•à¥‹', '2015-03-23', '15_03_23_09_03_55_6.png'),
(4, 'à¤•à¥ƒà¤·à¤¿ à¤µà¥à¤¯à¤µà¤¸à¤¾à¤¯à¤¿à¤•à¤°à¤£', 'à¤•à¥ƒà¤·à¤¿ à¤µà¥à¤¯à¤µà¤¸à¤¾à¤¯à¤¿à¤•à¤°à¤£ à¤à¤µà¤‚ à¤”à¤¦à¥à¤¯à¥‹à¤—à¤¿à¤•à¤¿à¤°à¤£à¤•à¥‹', '2015-03-23', '15_03_23_09_03_45_2.png'),
(6, 'kasd', 'asd', '2015-03-17', '15_03_23_02_03_07_IMG_20150125_1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `slidephoto`
--

CREATE TABLE IF NOT EXISTS `slidephoto` (
  `slideId` int(11) NOT NULL AUTO_INCREMENT,
  `slideTitle` varchar(255) DEFAULT NULL,
  `slideDesc` text,
  `slidePicture` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`slideId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `testimonial`
--

CREATE TABLE IF NOT EXISTS `testimonial` (
  `testimonialId` int(11) NOT NULL AUTO_INCREMENT,
  `testimonialName` varchar(255) DEFAULT NULL,
  `testimonialPost` varchar(255) DEFAULT NULL,
  `testimonialDesc` text,
  `testimonialPicture` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`testimonialId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `testimonial`
--

INSERT INTO `testimonial` (`testimonialId`, `testimonialName`, `testimonialPost`, `testimonialDesc`, `testimonialPicture`) VALUES
(3, 'kd', 'df', 'qkd', '15_03_06_11_03_17_IMG_20150125_2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `usefull`
--

CREATE TABLE IF NOT EXISTS `usefull` (
  `usefullId` int(11) NOT NULL AUTO_INCREMENT,
  `usefullTitle` varchar(255) DEFAULT NULL,
  `usefullLinks` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`usefullId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `usefull`
--

INSERT INTO `usefull` (`usefullId`, `usefullTitle`, `usefullLinks`) VALUES
(4, 'Rabindra Acharya', 'http://rabindraacharya.com.np');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `fullName` varchar(255) DEFAULT NULL,
  `userName` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `status` enum('0','1') DEFAULT '0' COMMENT '0-> Unactive, 1-> Active',
  `accessLevel` enum('1','2','3') NOT NULL DEFAULT '2' COMMENT '1-> Super User, 2-> admin user, 3-> normal user',
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userId`, `fullName`, `userName`, `password`, `email`, `status`, `accessLevel`) VALUES
(1, 'Rabindra', 'rabindra2049', 'rabindra', 'acharya.rabindra2000@gmail.com', '1', '1'),
(2, 'Rabindra Achary', 'rabi', 'rabi', 'acharya@yahoo.com', '1', '3');

-- --------------------------------------------------------

--
-- Table structure for table `welcome`
--

CREATE TABLE IF NOT EXISTS `welcome` (
  `welcomeId` int(11) NOT NULL AUTO_INCREMENT,
  `welcomeDesc` text,
  PRIMARY KEY (`welcomeId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `welcome`
--

INSERT INTO `welcome` (`welcomeId`, `welcomeDesc`) VALUES
(1, '<p>\r\n	<span style="font-size:14px;">Welcome to our official website of the District Agriculture Development Office (DADO), Sarlahi under Government of Nepal, Ministry of Agriculture Development, Department of Agriculture. Agriculture is the mainstay and backbone of Nepalese economy.</span></p>\r\n<p>\r\n	<span style="font-size:14px;"><br />\r\n	à¤¦à¥‡à¤¶à¤•à¤¾ à¤¬à¤¹à¥à¤¸à¤‚à¤–à¥à¤¯à¤• à¤œà¤¨à¤¤à¤¾à¤•à¥‹ à¤œà¥€à¤µà¤¿à¤•à¥‹à¤ªà¤¾à¤°à¥à¤œà¤¨à¤•à¥‹ à¤ªà¥à¤°à¤®à¥à¤– à¤¤à¤¥à¤¾ à¤¦à¥‡à¤¶à¤•à¥ˆ à¤…à¤°à¥à¤¥à¤¤à¤¨à¥à¤¤à¥à¤°à¤•à¥‹ à¤®à¥‡à¤°à¥à¤¦à¤£à¥à¤¡ à¤­à¤à¤•à¥‹ à¤¨à¥‡à¤ªà¤¾à¤²à¤•à¥‹ à¤•à¥ƒà¤·à¤¿ à¤•à¥à¤·à¥‡à¤¤à¥à¤° à¤†à¤§à¥à¤¨à¤¿à¤•à¤¤à¤¾à¤•à¥‹ à¤•à¥à¤·à¥‡à¤¤à¥à¤°à¤®à¤¾ à¤ªà¤›à¤¾à¤¡à¤¿ à¤ªà¤°à¥‡à¤¤à¤¾à¤ªà¤¨à¤¿ à¤µà¤¿à¤—à¤¤à¤•à¥‹ à¤¤à¥à¤²à¤¨à¤¾à¤®à¤¾ à¤†à¤§à¥à¤¨à¤¿à¤•à¤¤à¤¾à¤¤à¤°à¥à¤« à¤¬à¤¢à¤¿ à¤°à¤¹à¥‡à¤•à¥‹ à¤› à¥¤ à¤¨à¥‡à¤ªà¤¾à¤² à¤¸à¤°à¤•à¤¾à¤°à¤²à¥‡ à¤¦à¥€à¤°à¥à¤˜à¤•à¤¾à¤²à¤¿à¤¨ à¤•à¥ƒà¤·à¤¿ à¤¯à¥‹à¤œà¤¨à¤¾à¤•à¥‹ à¤…à¤µà¤§à¤¾à¤°à¤£à¤¾ à¤…à¤¨à¥à¤¸à¤¾à¤° à¤•à¥ƒà¤·à¤¿ à¤•à¥à¤·à¥‡à¤¤à¥à¤°à¤²à¤¾à¤ˆ à¤µà¥à¤¯à¤µà¤¸à¤¾à¤¯à¤¿à¤•à¤°à¤£ à¤—à¤°à¥à¤¨ à¤ªà¤•à¥‡à¤Ÿ à¤ªà¥à¤¯à¤¾à¤•à¥‡à¤œà¤•à¥‹ à¤°à¤£à¤¨à¥€à¤¤à¤¿, à¤°à¤¾à¤·à¥à¤Ÿà¥à¤°à¤¿à¤¯ à¤•à¥ƒà¤·à¤¿ à¤¨à¥€à¤¤à¤¿ à¥¨à¥¦à¥¬à¥§, à¤œà¤¿à¤²à¥à¤²à¤¾à¤•à¥‹ à¤†à¤µà¤§à¤¿à¤• à¤¯à¥‹à¤œà¤¨à¤¾, à¤œà¤¿à¤²à¥à¤²à¤¾à¤®à¤¾ à¤‰à¤ªà¤²à¤¬à¥à¤§ à¤¸à¥à¤¥à¤¾à¤¨à¥€à¤¯ à¤¸à¤®à¥à¤­à¤¾à¤µà¤¨à¤¾ à¤° à¤¸à¤®à¥à¤­à¤¾à¤µà¥à¤¯à¤¤à¤¾à¤•à¥‹ à¤†à¤§à¤¾à¤°à¤®à¤¾ à¤¸à¥à¤¥à¤¾à¤¨à¤¿à¤¯ à¤¶à¥à¤°à¥‹à¤¤ à¤¸à¤¾à¤§à¤¨à¤•à¥‹ à¤¸à¤®à¥à¤šà¤¿à¤¤ à¤‰à¤ªà¤¯à¥‹à¤— à¤—à¤°à¥€ à¤•à¥ƒà¤·à¤• à¤¸à¤®à¥à¤¦à¤¾à¤¯à¤¹à¤°à¥ à¤²à¤•à¥à¤·à¤¿à¤¤ à¤—à¤°à¥€ à¤µà¥à¤¯à¤µà¤¸à¤¾à¤¯à¤¿à¤•, à¤–à¤¾à¤¦à¥à¤¯ à¤¸à¥à¤°à¤•à¥à¤·à¤¾ à¤¸à¤®à¥à¤¬à¤¨à¥à¤§à¤¿ à¤•à¤¾à¤°à¥à¤¯à¤•à¥à¤°à¤®à¤¹à¤°à¥ à¤¸à¤‚à¤šà¤¾à¤²à¤¨ à¤—à¤°à¥€ à¤•à¥ƒà¤·à¤¿ à¤ªà¥‡à¤¶à¤¾à¤²à¤¾à¤ˆ à¤®à¤°à¥à¤¯à¤¾à¤¦à¤¿à¤¤ à¤¬à¤¨à¤¾à¤ˆ à¤•à¥ƒà¤·à¤•à¤¹à¤°à¥à¤•à¥‹ à¤†à¤¯ à¤†à¤°à¥à¤œà¤¨ à¤¬à¤¢à¤¾à¤‰à¤¨à¥‡ à¤•à¤°à¥à¤¯à¤¹à¤°à¥ à¤¸à¤žà¥à¤šà¤¾à¤²à¤¿à¤¤ à¤—à¤°à¤¿à¤¦à¥ˆ à¤†à¤à¤•à¥‹ à¤› à¥¤ à¤¯à¤¸à¥ˆ à¤¸à¤¨à¥à¤¦à¤°à¥à¤­à¤®à¤¾ à¤œà¤¿à¤²à¥à¤²à¤¾ à¤•à¥ƒà¤·à¤¿ à¤µà¤¿à¤•à¤¾à¤¸ à¤•à¤¾à¤°à¥à¤¯à¤¾à¤²à¤¯à¤²à¥‡ à¤œà¤¿à¤²à¥à¤²à¤¾à¤•à¥‹ à¤•à¥ƒà¤·à¤¿ à¤•à¥à¤·à¥‡à¤¤à¥à¤°à¤•à¥‹ à¤µà¤¸à¥à¤¤à¥à¤¸à¥à¤¥à¤¿à¤¤à¤¿ à¤¤à¤¥à¤¾ à¤¯à¤¸ à¤•à¤¾à¤°à¥à¤¯à¤¾à¤²à¤¯à¤²à¥‡ à¤¸à¤‚à¤šà¤¾à¤²à¤¨ à¤—à¤°à¥‡à¤•à¤¾ à¤µà¤¿à¤­à¤¿à¤¨à¥à¤¨ à¤•à¥ƒà¤·à¤¿ à¤†à¤¯à¥‹à¤œà¤¨à¤¾, à¤•à¥ƒà¤·à¤•à¤¹à¤°à¥à¤®à¤¾ à¤ªà¤°à¥‡à¤•à¥‹ à¤¸à¤•à¤¾à¤°à¤¾à¤¤à¥à¤®à¤• à¤ªà¥à¤°à¤­à¤¾à¤µà¤¹à¤°à¥, à¤•à¥ƒà¤·à¤¿ à¤µà¥à¤¯à¤µà¤¸à¤¾à¤¯à¤®à¤¾ à¤¹à¤¾à¤à¤¸à¤¿à¤² à¤­à¤à¤•à¤¾ à¤‰à¤ªà¤²à¤¬à¥à¤§à¤¿à¤¹à¤°à¥ à¤¤à¤¥à¤¾ à¤œà¤¿à¤²à¥à¤²à¤¾à¤®à¤¾ à¤•à¥ƒà¤·à¤¿ à¤•à¥à¤·à¥‡à¤¤à¥à¤°à¤®à¤¾ à¤¯à¥‹à¤—à¤¦à¤¾à¤¨ à¤ªà¥à¤°à¥à¤¯à¤¾à¤‰à¤¨à¥‡ à¤…à¤¨à¥à¤¯ à¤¸à¤°à¥‹à¤•à¤¾à¤²à¤µà¤¾à¤²à¤¾ à¤¸à¤°à¤•à¤¾à¤°à¥€ à¤¤à¤¥à¤¾ à¤—à¥ˆà¤°à¤¸à¤°à¤•à¤¾à¤°à¥€ à¤•à¤¾à¤°à¥à¤¯à¤¾à¤²à¤¯à¤•à¥‹ à¤¸à¤®à¥‡à¤¤ à¤•à¥ƒà¤·à¤¿ à¤—à¤¤à¤¿à¤µà¤¿à¤§à¤¿ à¤¸à¤®à¤¾à¤¬à¥‡à¤¸ à¤—à¤°à¥€ à¤¸à¤‚à¤•à¥à¤·à¤¿à¤ªà¥à¤¤ à¤œà¤¾à¤¨à¤•à¤¾à¤°à¥€ à¤¦à¤¿à¤¨à¥‡ à¤‰à¤¦à¥à¤¦à¥‡à¤¶à¥à¤¯à¤²à¥‡ à¤¸à¤°à¥à¤²à¤¾à¤¹à¥€ à¤œà¤¿à¤²à¥à¤²à¤¾à¤•à¥‹ à¤•à¥ƒà¤·à¤¿ à¤µà¤¿à¤•à¤¾à¤¸ à¤•à¤¾à¤°à¥à¤¯à¤•à¥à¤°à¤® à¤¤à¤¥à¤¾ à¤¤à¤¥à¥à¤¯à¤¾à¤™à¥à¤•à¤¹à¤°à¥ à¤¸à¤®à¤¾à¤µà¥‡à¤¸ à¤—à¤°à¤¿ à¤¯à¥‹ à¤µà¥‡à¤µà¤¸à¤¾à¤ˆà¤Ÿ à¤¸à¤‚à¤šà¤¾à¤²à¤¨à¤®à¤¾ à¤²à¥à¤¯à¤¾à¤ˆà¤à¤•à¥‹ à¤› à¥¤ à¤¯à¤¸ à¤­à¤¿à¤¤à¥à¤° à¤°à¤¹à¥‡à¤•à¤¾ à¤µà¤¸à¥à¤¤à¥à¤—à¤¤ à¤µà¤¿à¤µà¤°à¤£à¤¹à¤°à¥ à¤¤à¤¥à¤¾ à¤¤à¤¥à¥à¤¯à¤¾à¤¡à¥à¤¢à¤¹à¤°à¥à¤²à¥‡ à¤†à¤—à¤¾à¤®à¥€ à¤¦à¤¿à¤¨à¤®à¤¾ à¤¯à¤¸ à¤•à¥à¤·à¥‡à¤¤à¥à¤°à¤®à¤¾ à¤•à¤¾à¤°à¥à¤¯à¤•à¥à¤°à¤® à¤¸à¤‚à¤šà¤¾à¤²à¤¨à¤®à¤¾ à¤…à¤ à¤¸à¤¹à¤¯à¥‹à¤— à¤ªà¥à¤—à¥à¤¨à¥‡ à¤› à¤­à¤¨à¥à¤¨à¥‡ à¤®à¥ˆà¤²à¥‡ à¤†à¤¶à¤¾ à¤²à¤¿à¤à¤•à¥‹ à¤›à¥ à¥¤ à¤¯à¤¸ à¤µà¥‡à¤µ à¤ªà¥‡à¤œà¤®à¤¾ à¤µà¤¿à¤­à¤¿à¤¨à¥à¤¨ à¤¤à¥à¤°à¥à¤Ÿà¤¿à¤¹à¤°à¥ à¤° à¤¸à¥à¤§à¤¾à¤° à¤—à¤°à¥à¤¨à¥à¤ªà¤°à¥à¤¨à¥‡ à¤ à¤¾à¤‰à¤¹à¤°à¥ à¤¹à¥à¤¨ à¤¸à¤•à¥à¤›à¤¨ à¥¤ à¤¯à¤¸à¤®à¤¾ à¤¯à¤¹à¤¾à¤à¤¹à¤°à¥à¤•à¥‹ à¤…à¤®à¥à¤²à¥à¤¯ à¤¸à¥à¤à¤¾à¤µà¤¹à¤°à¥à¤•à¥‹ à¤²à¤¾à¤—à¤¿ à¤¹à¤¾à¤°à¥à¤¦à¤¿à¤• à¤…à¤¨à¥à¤°à¥‹à¤§ à¤› à¥¤</span></p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `youtube`
--

CREATE TABLE IF NOT EXISTS `youtube` (
  `youtubeId` int(11) NOT NULL AUTO_INCREMENT,
  `youtubeDesc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`youtubeId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `youtube`
--

INSERT INTO `youtube` (`youtubeId`, `youtubeDesc`) VALUES
(3, 'https://www.youtube.com/embed/AVT8iLxMhmc?rel=0'),
(4, 'https://www.youtube.com/watch?v=USxFq2YKm5');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `menudesc`
--
ALTER TABLE `menudesc`
  ADD CONSTRAINT `menudesc_ibfk_1` FOREIGN KEY (`menuID`) REFERENCES `menu` (`menuId`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
