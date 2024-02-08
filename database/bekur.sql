-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 08, 2024 at 12:09 PM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bekur`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_acc`
--

DROP TABLE IF EXISTS `admin_acc`;
CREATE TABLE IF NOT EXISTS `admin_acc` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_user` varchar(1000) NOT NULL,
  `admin_pass` varchar(1000) NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_acc`
--

INSERT INTO `admin_acc` (`admin_id`, `admin_user`, `admin_pass`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `course_tbl`
--

DROP TABLE IF EXISTS `course_tbl`;
CREATE TABLE IF NOT EXISTS `course_tbl` (
  `cou_id` int(11) NOT NULL AUTO_INCREMENT,
  `cou_name` varchar(1000) NOT NULL,
  `cou_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`cou_id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course_tbl`
--

INSERT INTO `course_tbl` (`cou_id`, `cou_name`, `cou_created`) VALUES
(68, 'ADVANCE DATABASE (COMPUTER SCIENCE)', '2024-02-08 11:02:16'),
(69, 'ALGORITHM (COMPUTER SCIENCE)', '2024-02-08 11:04:42'),
(70, 'EMERGING TECHNOLOGY (COMPUTER SCIENCE)', '2024-02-08 11:05:17'),
(71, 'SOFTWARE ENGINEERING (COMPUTER SCIENCE)', '2024-02-08 11:06:20'),
(72, 'WEB PROGRAMMING (COMPUTER SCIENCE)', '2024-02-08 11:07:09'),
(73, 'WIRELESS COMMUNICATION (COMPUTER SCIENCE)', '2024-02-08 11:07:36'),
(74, 'OPERATING SYSTEM (COMPUTER SCIENCE)', '2024-02-08 11:07:58'),
(75, 'COMPUTER  PROGRAMMING  (COMPUTER SCIENCE)', '2024-02-08 11:08:36'),
(76, 'ARTIFICIAL INTELLIGENCE (COMPUTER SCIENCE)', '2024-02-08 11:10:43'),
(77, 'COMPUTER SECURITY (COMPUTER SCIENCE)', '2024-02-08 11:13:30'),
(78, 'ADVANCED FINANCIAL ACCOUNTING(ACCOUNTING)', '2024-02-08 11:18:52'),
(79, 'COST AND MANAGEMENT ACCOUNTING (ACCOUNTING)', '2024-02-08 11:19:41'),
(81, 'FINANCIAL MANAGEMENT (ACCOUNTING)', '2024-02-08 11:20:09'),
(82, 'FUNDAMENTAL  OF ACCOUNTING (ACCOUNTING)', '2024-02-08 11:20:42'),
(83, 'INTERMEDIATE FINANCIAL ACCOUNTING(ACCOUNTING)', '2024-02-08 11:21:14'),
(84, 'ALGORITHM (COMPUTER ENGINEERING )', '2024-02-08 11:23:32'),
(85, 'ALGORITHM (COMPUTER ENGINEERING )', '2024-02-08 11:23:32'),
(86, 'DIGITAL SYSTEM  (COMPUTER ENGINEERING )', '2024-02-08 11:24:00'),
(87, 'NETWORKING  (COMPUTER ENGINEERING )', '2024-02-08 11:24:24'),
(88, 'OPERATING SYSTEM  (COMPUTER ENGINEERING )', '2024-02-08 11:24:55'),
(89, 'SOFTWARE ENGINEERING (COMPUTER ENGINEERING )', '2024-02-08 11:25:39');

-- --------------------------------------------------------

--
-- Table structure for table `examinee_tbl`
--

DROP TABLE IF EXISTS `examinee_tbl`;
CREATE TABLE IF NOT EXISTS `examinee_tbl` (
  `exmne_id` int(11) NOT NULL AUTO_INCREMENT,
  `exmne_fullname` varchar(1000) NOT NULL,
  `exmne_course` varchar(1000) NOT NULL,
  `exmne_gender` varchar(1000) NOT NULL,
  `exmne_birthdate` varchar(1000) NOT NULL,
  `exmne_year_level` varchar(1000) NOT NULL,
  `exmne_email` varchar(1000) NOT NULL,
  `exmne_password` varchar(1000) NOT NULL,
  `exmne_status` varchar(1000) NOT NULL DEFAULT 'active',
  PRIMARY KEY (`exmne_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `examinee_tbl`
--

INSERT INTO `examinee_tbl` (`exmne_id`, `exmne_fullname`, `exmne_course`, `exmne_gender`, `exmne_birthdate`, `exmne_year_level`, `exmne_email`, `exmne_password`, `exmne_status`) VALUES
(10, 'fraol', '89', 'male', '2002-07-24', 'third year', 'fraolzelalem750@gmail.com', '3175', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `exam_answers`
--

DROP TABLE IF EXISTS `exam_answers`;
CREATE TABLE IF NOT EXISTS `exam_answers` (
  `exans_id` int(11) NOT NULL AUTO_INCREMENT,
  `axmne_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `quest_id` int(11) NOT NULL,
  `exans_answer` varchar(1000) NOT NULL,
  `exans_status` varchar(1000) NOT NULL DEFAULT 'new',
  `exans_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`exans_id`)
) ENGINE=InnoDB AUTO_INCREMENT=329 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exam_answers`
--

INSERT INTO `exam_answers` (`exans_id`, `axmne_id`, `exam_id`, `quest_id`, `exans_answer`, `exans_status`, `exans_created`) VALUES
(328, 10, 28, 39, 'correct answer', 'new', '2024-02-08 11:41:25');

-- --------------------------------------------------------

--
-- Table structure for table `exam_attempt`
--

DROP TABLE IF EXISTS `exam_attempt`;
CREATE TABLE IF NOT EXISTS `exam_attempt` (
  `examat_id` int(11) NOT NULL AUTO_INCREMENT,
  `exmne_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `examat_status` varchar(1000) NOT NULL DEFAULT 'used',
  PRIMARY KEY (`examat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exam_attempt`
--

INSERT INTO `exam_attempt` (`examat_id`, `exmne_id`, `exam_id`, `examat_status`) VALUES
(58, 10, 28, 'used');

-- --------------------------------------------------------

--
-- Table structure for table `exam_question_tbl`
--

DROP TABLE IF EXISTS `exam_question_tbl`;
CREATE TABLE IF NOT EXISTS `exam_question_tbl` (
  `eqt_id` int(11) NOT NULL AUTO_INCREMENT,
  `exam_id` int(11) NOT NULL,
  `exam_question` varchar(1000) NOT NULL,
  `exam_ch1` varchar(1000) NOT NULL,
  `exam_ch2` varchar(1000) NOT NULL,
  `exam_ch3` varchar(1000) NOT NULL,
  `exam_ch4` varchar(1000) NOT NULL,
  `exam_answer` varchar(1000) NOT NULL,
  `exam_status` varchar(1000) NOT NULL DEFAULT 'active',
  PRIMARY KEY (`eqt_id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exam_question_tbl`
--

INSERT INTO `exam_question_tbl` (`eqt_id`, `exam_id`, `exam_question`, `exam_ch1`, `exam_ch2`, `exam_ch3`, `exam_ch4`, `exam_answer`, `exam_status`) VALUES
(38, 27, 'what is software ?', 'test1', 'test2', 'test3', 'test4', 'test2', 'active'),
(39, 28, 'what  is software?', 'wrong ', 'wrong ', 'correct answer', 'wrong ', 'c', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `exam_tbl`
--

DROP TABLE IF EXISTS `exam_tbl`;
CREATE TABLE IF NOT EXISTS `exam_tbl` (
  `ex_id` int(11) NOT NULL AUTO_INCREMENT,
  `cou_id` int(11) NOT NULL,
  `ex_title` varchar(1000) NOT NULL,
  `ex_time_limit` varchar(1000) NOT NULL,
  `ex_questlimit_display` int(11) NOT NULL,
  `ex_description` varchar(1000) NOT NULL,
  `ex_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ex_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exam_tbl`
--

INSERT INTO `exam_tbl` (`ex_id`, `cou_id`, `ex_title`, `ex_time_limit`, `ex_questlimit_display`, `ex_description`, `ex_created`) VALUES
(27, 66, 'SOFTWARE', '60', 2, 'TEST EXAM', '2024-02-03 09:44:40'),
(28, 89, 'software engineering ', '60', 20, 'software engineering exam', '2024-02-08 11:38:56');

-- --------------------------------------------------------

--
-- Table structure for table `feedbacks_tbl`
--

DROP TABLE IF EXISTS `feedbacks_tbl`;
CREATE TABLE IF NOT EXISTS `feedbacks_tbl` (
  `fb_id` int(11) NOT NULL AUTO_INCREMENT,
  `exmne_id` int(11) NOT NULL,
  `fb_exmne_as` varchar(1000) NOT NULL,
  `fb_feedbacks` varchar(1000) NOT NULL,
  `fb_date` varchar(1000) NOT NULL,
  PRIMARY KEY (`fb_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
