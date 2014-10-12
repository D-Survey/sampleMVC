-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 23, 2014 at 11:25 AM
-- Server version: 5.5.17
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `survey_managament_system`
--
CREATE DATABASE IF NOT EXISTS `survey_managament_system` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `survey_managament_system`;

-- --------------------------------------------------------

--
-- Table structure for table `mobileanswer`
--

CREATE TABLE IF NOT EXISTS `mobileanswer` (
  `answer_id` int(10) DEFAULT NULL,
  `mobi_survey_id` int(10) DEFAULT NULL,
  `question_options_id` int(10) DEFAULT NULL,
  `answer_text` varchar(250) DEFAULT NULL,
  `collection_value` int(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mobileanswer`
--

INSERT INTO `mobileanswer` (`answer_id`, `mobi_survey_id`, `question_options_id`, `answer_text`, `collection_value`) VALUES
(1, 2, 1, 'Extremely easy', 1),
(2, 2, 1, 'Very easy', 2),
(3, 2, 1, 'Moderately easy', 0),
(4, 2, 1, 'Slightly easy', 0),
(5, 2, 1, 'Not easy at all', 0),
(6, 2, 2, 'Always', 0),
(7, 2, 2, 'Often', 0),
(8, 2, 2, 'Seldom', 1),
(9, 2, 2, 'Never', 0),
(10, 2, 2, 'N/A', 0),
(11, 2, 3, 'Yes', 0),
(12, 2, 3, 'Not Sure', 1),
(13, 2, 3, 'No', 0);

-- --------------------------------------------------------

--
-- Table structure for table `mobilequestion`
--

CREATE TABLE IF NOT EXISTS `mobilequestion` (
  `mobileQ_id` int(10) NOT NULL AUTO_INCREMENT,
  `mobi_survey_id` int(10) NOT NULL,
  `questions_id` int(10) NOT NULL,
  `survey_sections_id` int(10) NOT NULL,
  `survey_name` varchar(250) NOT NULL,
  `questions_name` varchar(250) NOT NULL,
  `sections_title` varchar(250) NOT NULL,
  `survey_header_id` int(10) NOT NULL DEFAULT '7',
  `input_type_id` int(10) NOT NULL,
  `questions_subtext` varchar(250) NOT NULL,
  `sections_name` varchar(250) NOT NULL,
  PRIMARY KEY (`mobileQ_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `mobilequestion`
--

INSERT INTO `mobilequestion` (`mobileQ_id`, `mobi_survey_id`, `questions_id`, `survey_sections_id`, `survey_name`, `questions_name`, `sections_title`, `survey_header_id`, `input_type_id`, `questions_subtext`, `sections_name`) VALUES
(1, 2, 1, 1, 'Customer Surveys', 'How easy is it to find a Consumer Shopping website over the internet?', 'pre', 1, 1, 'null', 'Customer Satisfaction Survey'),
(2, 2, 2, 1, 'Customer Surveys', 'How often do you use online services to purchase products?', 'pre', 1, 1, 'null', 'Customer Satisfaction Survey'),
(3, 2, 3, 1, 'Customer Surveys', 'Would you recommend [Company Name] to others you know?', 'pre', 1, 1, 'null', 'Customer Satisfaction Survey');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_99`
--

CREATE TABLE IF NOT EXISTS `tbl_99` (
  `tbl_id` int(12) NOT NULL AUTO_INCREMENT,
  `dump` varchar(50) DEFAULT NULL,
  `latitude` varchar(50) DEFAULT NULL,
  `longitude` varchar(50) DEFAULT NULL,
  `column_1` varchar(250) DEFAULT NULL,
  `column_2` varchar(250) DEFAULT NULL,
  `column_3` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`tbl_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `tbl_99`
--

INSERT INTO `tbl_99` (`tbl_id`, `dump`, `latitude`, `longitude`, `column_1`, `column_2`, `column_3`) VALUES
(1, '', '6.927079000000001', '79.861243', 'Extremely easy', 'Often', 'Not Sure'),
(2, '', '6.927079000000001', '79.861243', 'Very easy', 'Often', 'No'),
(3, '', '6.927079000000001', '79.861243', 'Very easy', 'Often', 'Not Sure'),
(4, '', '6.927079000000001', '79.861243', 'Very easy', 'Often', 'Not Sure'),
(5, '', '6.927079000000001', '79.861243', 'Moderately easy', 'Never', 'Not Sure');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_100`
--

CREATE TABLE IF NOT EXISTS `tbl_100` (
  `tbl_id` int(12) NOT NULL AUTO_INCREMENT,
  `dump` varchar(50) DEFAULT NULL,
  `latitude` varchar(50) DEFAULT NULL,
  `longitude` varchar(50) DEFAULT NULL,
  `column_1` varchar(250) DEFAULT NULL,
  `column_2` varchar(250) DEFAULT NULL,
  `column_3` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`tbl_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=35 ;

--
-- Dumping data for table `tbl_100`
--

INSERT INTO `tbl_100` (`tbl_id`, `dump`, `latitude`, `longitude`, `column_1`, `column_2`, `column_3`) VALUES
(1, '', '6.927079000000001', '79.861243', 'Very easy', 'Seldom', 'Not Sure'),
(2, '', NULL, NULL, 'Extremely easy', 'Often', 'Yes'),
(3, '', '6.8701571', '79.8644419', 'Extremely easy', 'Seldom', 'Yes'),
(4, '', NULL, NULL, NULL, NULL, NULL),
(5, '', NULL, NULL, NULL, NULL, NULL),
(6, '', NULL, NULL, NULL, NULL, NULL),
(7, '', NULL, NULL, NULL, NULL, NULL),
(8, '', NULL, NULL, 'Extremely easy', 'Seldom', 'Not Sure'),
(9, '', '6.8702282', '79.86447079999999', 'Very easy', 'Often', 'Not Sure'),
(10, '', '6.8702282', '79.86447079999999', 'Very easy', 'Often', 'Not Sure'),
(11, '', NULL, NULL, 'Extremely easy', 'Seldom', 'Not Sure'),
(12, '', '6.8701476999999995', '79.8644419', 'Extremely easy', 'Seldom', 'Yes'),
(13, '', NULL, NULL, NULL, NULL, NULL),
(14, '', '6.8701494', '79.8644427', 'Very easy', 'Always', 'Yes'),
(15, '', NULL, NULL, 'Very easy', 'Often', 'Not Sure'),
(16, '', NULL, NULL, 'Very easy', 'Often', 'Not Sure'),
(17, '', '6.927079000000001', '79.861243', 'Moderately easy', 'Never', 'No'),
(18, '', '6.927079000000001', '79.861243', 'Moderately easy', 'Never', 'No'),
(19, '', '6.927079000000001', '79.861243', 'Moderately easy', 'Never', 'No'),
(20, '', NULL, NULL, NULL, NULL, NULL),
(21, '', NULL, NULL, NULL, NULL, NULL),
(22, '', NULL, NULL, NULL, NULL, NULL),
(23, '', NULL, NULL, NULL, NULL, NULL),
(24, '', NULL, NULL, NULL, NULL, NULL),
(25, '', NULL, NULL, NULL, NULL, NULL),
(26, '', NULL, NULL, NULL, NULL, NULL),
(27, '', '6.927079000000001', '79.861243', 'Extremely easy', 'Seldom', 'Not Sure'),
(28, '', NULL, NULL, 'Moderately easy', 'Seldom', 'Not Sure'),
(29, '', NULL, NULL, 'Moderately easy', 'Seldom', 'Not Sure'),
(30, '', NULL, NULL, 'Moderately easy', 'Seldom', 'Not Sure'),
(31, '', '6.927079000000001', '79.861243', 'Very easy', 'Seldom', 'Not Sure'),
(32, '', '6.927079000000001', '79.861243', 'Very easy', 'Seldom', 'Not Sure'),
(33, '', '6.927079000000001', '79.861243', 'Not easy at all', 'Often', 'Yes'),
(34, '', '6.927079000000001', '79.861243', 'Moderately easy', 'Often', 'Not Sure');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_answers`
--

CREATE TABLE IF NOT EXISTS `tbl_answers` (
  `answer_id` int(12) NOT NULL AUTO_INCREMENT,
  `user_id` int(12) NOT NULL COMMENT 'User id',
  `question_options_id` int(12) NOT NULL COMMENT 'Question id',
  `answer_number` int(12) NOT NULL DEFAULT '0' COMMENT 'anwser Numberic',
  `answer_text` varchar(255) NOT NULL COMMENT 'Full name',
  `answer_state` tinyint(1) NOT NULL COMMENT 'Answer State',
  `modified_date` int(10) DEFAULT NULL COMMENT 'Modified Date',
  `created_date` int(10) DEFAULT NULL COMMENT 'Created Date',
  `created_by` int(20) DEFAULT NULL COMMENT 'Created By',
  `modified_by` int(20) DEFAULT NULL COMMENT 'Modified By',
  `latitute` varchar(255) DEFAULT NULL COMMENT 'Latitute',
  `longitute` varchar(255) DEFAULT NULL COMMENT 'Longitute',
  `unit_of_measures_id` int(12) NOT NULL COMMENT 'Unit of Measure id',
  PRIMARY KEY (`answer_id`),
  KEY `user_id` (`user_id`),
  KEY `question_options_id` (`question_options_id`),
  KEY `unit_of_measures_id` (`unit_of_measures_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=456 ;

--
-- Dumping data for table `tbl_answers`
--

INSERT INTO `tbl_answers` (`answer_id`, `user_id`, `question_options_id`, `answer_number`, `answer_text`, `answer_state`, `modified_date`, `created_date`, `created_by`, `modified_by`, `latitute`, `longitute`, `unit_of_measures_id`) VALUES
(1, 1, 1, 0, 'Extremely easy', 1, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(2, 1, 1, 0, 'Very easy', 1, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(3, 1, 1, 0, 'Moderately easy', 1, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(4, 1, 1, 0, 'Slightly easy', 1, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(5, 1, 1, 0, 'Not easy at all', 1, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(6, 1, 2, 0, 'Always', 1, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(7, 1, 2, 0, 'Often', 1, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(8, 1, 2, 0, 'Seldom', 1, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(9, 1, 2, 0, 'Never', 1, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(10, 1, 2, 0, 'N/A', 1, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(11, 1, 3, 0, 'Yes', 1, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(12, 1, 3, 0, 'Not Sure', 1, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(13, 1, 3, 0, 'No', 1, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(14, 1, 4, 0, 'Extremely professional', 1, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(15, 1, 4, 0, 'Very professional', 1, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(16, 1, 4, 0, 'Moderately professional', 1, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(17, 1, 4, 0, 'Slightly professional', 1, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(18, 1, 4, 0, 'Not at all professional', 1, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(19, 1, 5, 0, 'Extremely convenient', 1, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(20, 1, 5, 0, 'Very convenient', 1, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(21, 1, 5, 0, 'Moderately convenient', 1, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(22, 1, 5, 0, 'Slightly convenient', 1, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(23, 1, 5, 0, 'Slightly convenient', 1, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(24, 1, 6, 0, 'Extremely well', 1, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(25, 1, 6, 0, 'Quite well', 1, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(26, 1, 6, 0, 'Moderately well', 1, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(27, 1, 6, 0, 'Slightly well', 1, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(28, 1, 6, 0, 'Not at all well', 1, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(29, 1, 7, 0, 'Extremely meaningful', 1, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(30, 1, 7, 0, 'Very meaningful', 1, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(31, 1, 7, 0, 'Moderately meaningful', 1, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(32, 1, 7, 0, 'Slightly meaningful', 1, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(33, 1, 7, 0, 'Not at all meaningful', 1, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(34, 1, 8, 0, 'Extremely challenging', 1, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(35, 1, 8, 0, 'Very challenging', 1, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(36, 1, 8, 0, 'Moderately challenging', 1, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(37, 1, 8, 0, 'Slightly challenging', 1, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(38, 1, 8, 0, 'Not at all challenging', 1, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(39, 1, 9, 0, 'Not at all challenging', 1, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(40, 1, 9, 0, 'Very often', 1, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(41, 1, 9, 0, 'Moderately often', 1, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(42, 1, 9, 0, 'Slightly often', 1, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(43, 1, 9, 0, 'Not at all often', 1, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(44, 1, 10, 0, 'Extremely well', 1, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(45, 1, 10, 0, 'Very well', 1, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(46, 1, 10, 0, 'Moderately well', 1, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(47, 1, 10, 0, 'Slightly well', 1, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(48, 1, 10, 0, 'Not at all well', 1, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(49, 1, 11, 0, 'A great deal', 1, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(50, 1, 11, 0, 'A lot', 1, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(51, 1, 11, 0, 'A moderate amount', 1, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(52, 1, 11, 0, 'A little', 1, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(53, 1, 11, 0, 'None at all', 1, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(54, 1, 16, 0, 'thanu', 1, 1407895776, 1407895776, 1, 1, NULL, NULL, 1),
(55, 1, 16, 0, 'thanush', 1, 1407895776, 1407895776, 1, 1, NULL, NULL, 1),
(56, 1, 16, 0, 'thanushan', 1, 1407895776, 1407895776, 1, 1, NULL, NULL, 1),
(57, 1, 17, 0, 'thanu', 1, 1407895776, 1407895776, 1, 1, NULL, NULL, 1),
(58, 1, 17, 0, 'thanush', 1, 1407895776, 1407895776, 1, 1, NULL, NULL, 1),
(59, 1, 17, 0, 'thanushan', 1, 1407895776, 1407895776, 1, 1, NULL, NULL, 1),
(60, 1, 18, 0, 'thanu', 1, 1407895776, 1407895776, 1, 1, NULL, NULL, 1),
(61, 1, 18, 0, 'thanush', 1, 1407895776, 1407895776, 1, 1, NULL, NULL, 1),
(62, 1, 18, 0, 'thanushan', 1, 1407895776, 1407895776, 1, 1, NULL, NULL, 1),
(63, 1, 19, 0, 'very good', 1, 1407895902, 1407895902, 1, 1, NULL, NULL, 1),
(64, 1, 19, 0, 'good', 1, 1407895902, 1407895902, 1, 1, NULL, NULL, 1),
(65, 1, 19, 0, 'ok', 1, 1407895902, 1407895902, 1, 1, NULL, NULL, 1),
(66, 1, 19, 0, 'bad', 1, 1407895902, 1407895902, 1, 1, NULL, NULL, 1),
(67, 1, 19, 0, 'very bad', 1, 1407895902, 1407895902, 1, 1, NULL, NULL, 1),
(68, 1, 20, 0, 'very good', 1, 1407895902, 1407895902, 1, 1, NULL, NULL, 1),
(69, 1, 20, 0, 'good', 1, 1407895902, 1407895902, 1, 1, NULL, NULL, 1),
(70, 1, 20, 0, 'ok', 1, 1407895902, 1407895902, 1, 1, NULL, NULL, 1),
(71, 1, 20, 0, 'bad', 1, 1407895902, 1407895902, 1, 1, NULL, NULL, 1),
(72, 1, 20, 0, 'very bad', 1, 1407895902, 1407895902, 1, 1, NULL, NULL, 1),
(73, 1, 21, 0, 'aa', 1, 1407896143, 1407896143, 1, 1, NULL, NULL, 1),
(74, 1, 21, 0, 'cc', 1, 1407896143, 1407896143, 1, 1, NULL, NULL, 1),
(75, 1, 21, 0, 'bb', 1, 1407896143, 1407896143, 1, 1, NULL, NULL, 1),
(76, 1, 22, 0, 'aa', 1, 1407896143, 1407896143, 1, 1, NULL, NULL, 1),
(77, 1, 22, 0, 'cc', 1, 1407896143, 1407896143, 1, 1, NULL, NULL, 1),
(78, 1, 22, 0, 'bb', 1, 1407896143, 1407896143, 1, 1, NULL, NULL, 1),
(79, 1, 23, 0, 'aa', 1, 1407896143, 1407896143, 1, 1, NULL, NULL, 1),
(80, 1, 23, 0, 'cc', 1, 1407896143, 1407896143, 1, 1, NULL, NULL, 1),
(81, 1, 23, 0, 'bb', 1, 1407896143, 1407896143, 1, 1, NULL, NULL, 1),
(82, 1, 24, 0, '100', 1, 1407900321, 1407900321, 1, 1, NULL, NULL, 1),
(83, 1, 24, 0, '200', 1, 1407900321, 1407900321, 1, 1, NULL, NULL, 1),
(84, 1, 24, 0, '100', 1, 1407900321, 1407900321, 1, 1, NULL, NULL, 1),
(85, 1, 25, 0, '100', 1, 1407900321, 1407900321, 1, 1, NULL, NULL, 1),
(86, 1, 25, 0, '200', 1, 1407900321, 1407900321, 1, 1, NULL, NULL, 1),
(87, 1, 25, 0, '100', 1, 1407900321, 1407900321, 1, 1, NULL, NULL, 1),
(88, 1, 26, 0, '100', 1, 1407900321, 1407900321, 1, 1, NULL, NULL, 1),
(89, 1, 26, 0, '200', 1, 1407900321, 1407900321, 1, 1, NULL, NULL, 1),
(90, 1, 26, 0, '100', 1, 1407900321, 1407900321, 1, 1, NULL, NULL, 1),
(91, 1, 27, 0, 'sd', 1, 1407903124, 1407903124, 1, 1, NULL, NULL, 1),
(92, 1, 27, 0, 'sdsd', 1, 1407903124, 1407903124, 1, 1, NULL, NULL, 1),
(93, 1, 27, 0, 'sd', 1, 1407903124, 1407903124, 1, 1, NULL, NULL, 1),
(94, 1, 28, 0, 'dfdf', 1, 1407906891, 1407906891, 1, 1, NULL, NULL, 1),
(95, 1, 28, 0, 'dsfdf', 1, 1407906891, 1407906891, 1, 1, NULL, NULL, 1),
(96, 1, 28, 0, 'sdfds', 1, 1407906891, 1407906891, 1, 1, NULL, NULL, 1),
(97, 1, 29, 0, 'dffsdf', 1, 1407907242, 1407907242, 1, 1, NULL, NULL, 1),
(98, 1, 29, 0, 'dfsdfd', 1, 1407907242, 1407907242, 1, 1, NULL, NULL, 1),
(99, 1, 30, 0, 'ffgfg', 1, 1407907396, 1407907396, 1, 1, NULL, NULL, 1),
(100, 1, 30, 0, 'gfdgf', 1, 1407907396, 1407907396, 1, 1, NULL, NULL, 1),
(101, 1, 30, 0, 'gfg', 1, 1407907396, 1407907396, 1, 1, NULL, NULL, 1),
(102, 1, 31, 0, 'ret', 1, 1407907415, 1407907415, 1, 1, NULL, NULL, 1),
(103, 1, 31, 0, 'reter', 1, 1407907415, 1407907415, 1, 1, NULL, NULL, 1),
(104, 1, 31, 0, 'retre', 1, 1407907415, 1407907415, 1, 1, NULL, NULL, 1),
(105, 1, 31, 0, 'tert', 1, 1407907415, 1407907415, 1, 1, NULL, NULL, 1),
(106, 1, 31, 0, 'ertre', 1, 1407907415, 1407907415, 1, 1, NULL, NULL, 1),
(107, 1, 31, 0, 'tert', 1, 1407907415, 1407907415, 1, 1, NULL, NULL, 1),
(108, 1, 31, 0, 'ret', 1, 1407907415, 1407907415, 1, 1, NULL, NULL, 1),
(109, 1, 32, 0, 'a', 1, 1407907449, 1407907449, 1, 1, NULL, NULL, 1),
(110, 1, 32, 0, 'a', 1, 1407907449, 1407907449, 1, 1, NULL, NULL, 1),
(111, 1, 32, 0, 'a', 1, 1407907449, 1407907449, 1, 1, NULL, NULL, 1),
(112, 1, 33, 0, 'asdasd', 1, 1407908333, 1407908333, 1, 1, NULL, NULL, 1),
(113, 1, 33, 0, 'sadsa', 1, 1407908333, 1407908333, 1, 1, NULL, NULL, 1),
(114, 1, 34, 0, 'asS', 1, 1407908432, 1407908432, 1, 1, NULL, NULL, 1),
(115, 1, 34, 0, 'ASAs', 1, 1407908432, 1407908432, 1, 1, NULL, NULL, 1),
(116, 1, 34, 0, 'aSAs', 1, 1407908432, 1407908432, 1, 1, NULL, NULL, 1),
(117, 1, 34, 0, 'aS', 1, 1407908432, 1407908432, 1, 1, NULL, NULL, 1),
(118, 1, 35, 0, 'asS', 1, 1407908432, 1407908432, 1, 1, NULL, NULL, 1),
(119, 1, 35, 0, 'ASAs', 1, 1407908432, 1407908432, 1, 1, NULL, NULL, 1),
(120, 1, 35, 0, 'aSAs', 1, 1407908432, 1407908432, 1, 1, NULL, NULL, 1),
(121, 1, 35, 0, 'aS', 1, 1407908432, 1407908432, 1, 1, NULL, NULL, 1),
(122, 1, 36, 0, 'asS', 1, 1407908432, 1407908432, 1, 1, NULL, NULL, 1),
(123, 1, 36, 0, 'ASAs', 1, 1407908432, 1407908432, 1, 1, NULL, NULL, 1),
(124, 1, 36, 0, 'aSAs', 1, 1407908432, 1407908432, 1, 1, NULL, NULL, 1),
(125, 1, 36, 0, 'aS', 1, 1407908432, 1407908432, 1, 1, NULL, NULL, 1),
(126, 1, 37, 0, 'a', 1, 1407908577, 1407908577, 1, 1, NULL, NULL, 1),
(127, 1, 37, 0, 'n', 1, 1407908577, 1407908577, 1, 1, NULL, NULL, 1),
(128, 1, 37, 0, 'd', 1, 1407908577, 1407908577, 1, 1, NULL, NULL, 1),
(129, 1, 38, 0, 'aa', 1, 1407908601, 1407908601, 1, 1, NULL, NULL, 1),
(130, 1, 38, 0, 'aa', 1, 1407908601, 1407908601, 1, 1, NULL, NULL, 1),
(131, 1, 38, 0, 'aa', 1, 1407908601, 1407908601, 1, 1, NULL, NULL, 1),
(136, 1, 41, 0, 'dfdsf', 1, 1407909618, 1407909618, 1, 1, NULL, NULL, 1),
(137, 1, 41, 0, 'dsf', 1, 1407909618, 1407909618, 1, 1, NULL, NULL, 1),
(138, 1, 42, 0, 'fdfdfsdfsd', 1, 1407909641, 1407909641, 1, 1, NULL, NULL, 1),
(139, 1, 42, 0, 'dsfsdfsdf', 1, 1407909641, 1407909641, 1, 1, NULL, NULL, 1),
(140, 1, 43, 0, 'sas', 1, 1407983472, 1407983472, 1, 1, NULL, NULL, 1),
(141, 1, 43, 0, 'asas', 1, 1407983472, 1407983472, 1, 1, NULL, NULL, 1),
(142, 1, 43, 0, 'sa', 1, 1407983472, 1407983472, 1, 1, NULL, NULL, 1),
(143, 1, 44, 0, 'fgfg', 1, 1407983616, 1407983616, 1, 1, NULL, NULL, 1),
(144, 1, 44, 0, 'gfg', 1, 1407983616, 1407983616, 1, 1, NULL, NULL, 1),
(145, 1, 44, 0, 'fgf', 1, 1407983616, 1407983616, 1, 1, NULL, NULL, 1),
(146, 1, 44, 0, 'fdgf', 1, 1407983616, 1407983616, 1, 1, NULL, NULL, 1),
(159, 1, 53, 0, 'ddd', 1, 1407987712, 1407987712, 1, 1, NULL, NULL, 1),
(160, 1, 53, 0, 'dddd', 1, 1407987712, 1407987712, 1, 1, NULL, NULL, 1),
(161, 1, 53, 0, 'ddd', 1, 1407987712, 1407987712, 1, 1, NULL, NULL, 1),
(166, 1, 55, 0, 'sad', 1, 1407987896, 1407987896, 1, 1, NULL, NULL, 1),
(167, 1, 55, 0, 'sada', 1, 1407987896, 1407987896, 1, 1, NULL, NULL, 1),
(168, 1, 56, 0, 'cxcx', 1, 1407987944, 1407987944, 1, 1, NULL, NULL, 1),
(169, 1, 56, 0, 'dasdad', 1, 1407987944, 1407987944, 1, 1, NULL, NULL, 1),
(170, 1, 57, 0, 'sadasd', 1, 1407988014, 1407988014, 1, 1, NULL, NULL, 1),
(171, 1, 57, 0, 'asdas', 1, 1407988014, 1407988014, 1, 1, NULL, NULL, 1),
(172, 1, 57, 0, 'sadas', 1, 1407988014, 1407988014, 1, 1, NULL, NULL, 1),
(173, 1, 57, 0, 'sad', 1, 1407988014, 1407988014, 1, 1, NULL, NULL, 1),
(174, 1, 58, 0, 'sadasd', 1, 1407988014, 1407988014, 1, 1, NULL, NULL, 1),
(175, 1, 58, 0, 'asdas', 1, 1407988014, 1407988014, 1, 1, NULL, NULL, 1),
(176, 1, 58, 0, 'sadas', 1, 1407988014, 1407988014, 1, 1, NULL, NULL, 1),
(177, 1, 58, 0, 'sad', 1, 1407988014, 1407988014, 1, 1, NULL, NULL, 1),
(178, 1, 59, 0, 'sadasd', 1, 1407988014, 1407988014, 1, 1, NULL, NULL, 1),
(179, 1, 59, 0, 'asdas', 1, 1407988014, 1407988014, 1, 1, NULL, NULL, 1),
(180, 1, 59, 0, 'sadas', 1, 1407988014, 1407988014, 1, 1, NULL, NULL, 1),
(181, 1, 59, 0, 'sad', 1, 1407988014, 1407988014, 1, 1, NULL, NULL, 1),
(182, 1, 60, 0, 'sadasd', 1, 1407988014, 1407988014, 1, 1, NULL, NULL, 1),
(183, 1, 60, 0, 'asdas', 1, 1407988014, 1407988014, 1, 1, NULL, NULL, 1),
(184, 1, 60, 0, 'sadas', 1, 1407988014, 1407988014, 1, 1, NULL, NULL, 1),
(185, 1, 60, 0, 'sad', 1, 1407988014, 1407988014, 1, 1, NULL, NULL, 1),
(186, 1, 61, 0, 'sadasd', 1, 1407988014, 1407988014, 1, 1, NULL, NULL, 1),
(187, 1, 61, 0, 'asdas', 1, 1407988014, 1407988014, 1, 1, NULL, NULL, 1),
(188, 1, 61, 0, 'sadas', 1, 1407988014, 1407988014, 1, 1, NULL, NULL, 1),
(189, 1, 61, 0, 'sad', 1, 1407988014, 1407988014, 1, 1, NULL, NULL, 1),
(190, 1, 62, 0, 'a', 1, 1407988448, 1407988448, 1, 1, NULL, NULL, 1),
(191, 1, 62, 0, 'b', 1, 1407988448, 1407988448, 1, 1, NULL, NULL, 1),
(192, 1, 62, 0, 'c', 1, 1407988448, 1407988448, 1, 1, NULL, NULL, 1),
(193, 1, 63, 0, 'a', 1, 1407988552, 1407988552, 1, 1, NULL, NULL, 1),
(194, 1, 63, 0, 'b', 1, 1407988552, 1407988552, 1, 1, NULL, NULL, 1),
(195, 1, 63, 0, 'c', 1, 1407988552, 1407988552, 1, 1, NULL, NULL, 1),
(196, 1, 64, 0, 'sdsd', 1, 1407988864, 1407988864, 1, 1, NULL, NULL, 1),
(197, 1, 65, 0, 'sdsad', 1, 1407988877, 1407988877, 1, 1, NULL, NULL, 1),
(198, 1, 65, 0, 'sdasd', 1, 1407988877, 1407988877, 1, 1, NULL, NULL, 1),
(199, 1, 65, 0, 'sdd', 1, 1407988877, 1407988877, 1, 1, NULL, NULL, 1),
(200, 1, 66, 0, 'sdsad', 1, 1407988877, 1407988877, 1, 1, NULL, NULL, 1),
(201, 1, 66, 0, 'sdasd', 1, 1407988877, 1407988877, 1, 1, NULL, NULL, 1),
(202, 1, 66, 0, 'sdd', 1, 1407988877, 1407988877, 1, 1, NULL, NULL, 1),
(203, 1, 67, 0, 'sdsad', 1, 1407988877, 1407988877, 1, 1, NULL, NULL, 1),
(204, 1, 67, 0, 'sdasd', 1, 1407988877, 1407988877, 1, 1, NULL, NULL, 1),
(205, 1, 67, 0, 'sdd', 1, 1407988877, 1407988877, 1, 1, NULL, NULL, 1),
(206, 1, 68, 0, 'dd', 1, 1407989194, 1407989194, 1, 1, NULL, NULL, 1),
(207, 1, 68, 0, ' dfdf', 1, 1407989194, 1407989194, 1, 1, NULL, NULL, 1),
(208, 1, 69, 0, 'errer', 1, 1407989277, 1407989277, 1, 1, NULL, NULL, 1),
(209, 1, 70, 0, 'dsfdsf sd ', 1, 1407989310, 1407989310, 1, 1, NULL, NULL, 1),
(210, 1, 70, 0, 'f dsfsdff', 1, 1407989310, 1407989310, 1, 1, NULL, NULL, 1),
(211, 1, 70, 0, 'f sdf', 1, 1407989310, 1407989310, 1, 1, NULL, NULL, 1),
(212, 1, 71, 0, 'dss', 1, 1407989380, 1407989380, 1, 1, NULL, NULL, 1),
(213, 1, 71, 0, 'dsd', 1, 1407989380, 1407989380, 1, 1, NULL, NULL, 1),
(214, 1, 71, 0, 'sdsd', 1, 1407989380, 1407989380, 1, 1, NULL, NULL, 1),
(215, 1, 71, 0, 's', 1, 1407989380, 1407989380, 1, 1, NULL, NULL, 1),
(216, 1, 72, 0, 'dss', 1, 1407989380, 1407989380, 1, 1, NULL, NULL, 1),
(217, 1, 72, 0, 'dsd', 1, 1407989380, 1407989380, 1, 1, NULL, NULL, 1),
(218, 1, 72, 0, 'sdsd', 1, 1407989380, 1407989380, 1, 1, NULL, NULL, 1),
(219, 1, 72, 0, 's', 1, 1407989380, 1407989380, 1, 1, NULL, NULL, 1),
(220, 1, 73, 0, 'dss', 1, 1407989380, 1407989380, 1, 1, NULL, NULL, 1),
(221, 1, 73, 0, 'dsd', 1, 1407989380, 1407989380, 1, 1, NULL, NULL, 1),
(222, 1, 73, 0, 'sdsd', 1, 1407989380, 1407989380, 1, 1, NULL, NULL, 1),
(223, 1, 73, 0, 's', 1, 1407989380, 1407989380, 1, 1, NULL, NULL, 1),
(224, 1, 74, 0, 'df efsd', 1, 1407989509, 1407989509, 1, 1, NULL, NULL, 1),
(225, 1, 74, 0, 'ghgjj', 1, 1407989509, 1407989509, 1, 1, NULL, NULL, 1),
(226, 1, 75, 0, 'ghgfh', 1, 1407990209, 1407990209, 1, 1, NULL, NULL, 1),
(227, 1, 76, 0, 'frdffd', 1, 1407990231, 1407990231, 1, 1, NULL, NULL, 1),
(228, 1, 76, 0, 'fdgdfg', 1, 1407990231, 1407990231, 1, 1, NULL, NULL, 1),
(229, 1, 76, 0, 'gfgdg', 1, 1407990231, 1407990231, 1, 1, NULL, NULL, 1),
(230, 1, 76, 0, 'dfgdfg', 1, 1407990231, 1407990231, 1, 1, NULL, NULL, 1),
(231, 1, 76, 0, 'fd', 1, 1407990231, 1407990231, 1, 1, NULL, NULL, 1),
(232, 1, 77, 0, 'frdffd', 1, 1407990231, 1407990231, 1, 1, NULL, NULL, 1),
(233, 1, 77, 0, 'fdgdfg', 1, 1407990231, 1407990231, 1, 1, NULL, NULL, 1),
(234, 1, 77, 0, 'gfgdg', 1, 1407990231, 1407990231, 1, 1, NULL, NULL, 1),
(235, 1, 77, 0, 'dfgdfg', 1, 1407990231, 1407990231, 1, 1, NULL, NULL, 1),
(236, 1, 77, 0, 'fd', 1, 1407990231, 1407990231, 1, 1, NULL, NULL, 1),
(237, 1, 78, 0, 'frdffd', 1, 1407990231, 1407990231, 1, 1, NULL, NULL, 1),
(238, 1, 78, 0, 'fdgdfg', 1, 1407990231, 1407990231, 1, 1, NULL, NULL, 1),
(239, 1, 78, 0, 'gfgdg', 1, 1407990231, 1407990231, 1, 1, NULL, NULL, 1),
(240, 1, 78, 0, 'dfgdfg', 1, 1407990231, 1407990231, 1, 1, NULL, NULL, 1),
(241, 1, 78, 0, 'fd', 1, 1407990231, 1407990231, 1, 1, NULL, NULL, 1),
(242, 1, 79, 0, 'frdffd', 1, 1407990231, 1407990231, 1, 1, NULL, NULL, 1),
(243, 1, 79, 0, 'fdgdfg', 1, 1407990231, 1407990231, 1, 1, NULL, NULL, 1),
(244, 1, 79, 0, 'gfgdg', 1, 1407990231, 1407990231, 1, 1, NULL, NULL, 1),
(245, 1, 79, 0, 'dfgdfg', 1, 1407990231, 1407990231, 1, 1, NULL, NULL, 1),
(246, 1, 79, 0, 'fd', 1, 1407990231, 1407990231, 1, 1, NULL, NULL, 1),
(247, 1, 80, 0, 'a', 1, 1407990326, 1407990326, 1, 1, NULL, NULL, 1),
(248, 1, 80, 0, 'c', 1, 1407990326, 1407990326, 1, 1, NULL, NULL, 1),
(249, 1, 81, 0, 'a', 1, 1407990326, 1407990326, 1, 1, NULL, NULL, 1),
(250, 1, 81, 0, 'c', 1, 1407990326, 1407990326, 1, 1, NULL, NULL, 1),
(251, 1, 82, 0, ' dfsdfdsf f', 1, 1407990346, 1407990346, 1, 1, NULL, NULL, 1),
(252, 1, 83, 0, 'aaa', 1, 1408034627, 1408034627, 1, 1, NULL, NULL, 1),
(253, 1, 83, 0, 'bbb', 1, 1408034627, 1408034627, 1, 1, NULL, NULL, 1),
(254, 1, 83, 0, 'ccc', 1, 1408034627, 1408034627, 1, 1, NULL, NULL, 1),
(255, 1, 84, 0, 'aaa', 1, 1408034627, 1408034627, 1, 1, NULL, NULL, 1),
(256, 1, 84, 0, 'bbb', 1, 1408034627, 1408034627, 1, 1, NULL, NULL, 1),
(257, 1, 84, 0, 'ccc', 1, 1408034627, 1408034627, 1, 1, NULL, NULL, 1),
(258, 1, 85, 0, 'aaa', 1, 1408034627, 1408034627, 1, 1, NULL, NULL, 1),
(259, 1, 85, 0, 'bbb', 1, 1408034627, 1408034627, 1, 1, NULL, NULL, 1),
(260, 1, 85, 0, 'ccc', 1, 1408034627, 1408034627, 1, 1, NULL, NULL, 1),
(261, 1, 86, 0, 'A', 1, 1408034989, 1408034989, 1, 1, NULL, NULL, 1),
(262, 1, 86, 0, 'B', 1, 1408034989, 1408034989, 1, 1, NULL, NULL, 1),
(263, 1, 86, 0, 'C', 1, 1408034989, 1408034989, 1, 1, NULL, NULL, 1),
(264, 1, 87, 0, 'A', 1, 1408034989, 1408034989, 1, 1, NULL, NULL, 1),
(265, 1, 87, 0, 'B', 1, 1408034989, 1408034989, 1, 1, NULL, NULL, 1),
(266, 1, 87, 0, 'C', 1, 1408034989, 1408034989, 1, 1, NULL, NULL, 1),
(267, 1, 88, 0, 'A', 1, 1408034989, 1408034989, 1, 1, NULL, NULL, 1),
(268, 1, 88, 0, 'B', 1, 1408034989, 1408034989, 1, 1, NULL, NULL, 1),
(269, 1, 88, 0, 'C', 1, 1408034989, 1408034989, 1, 1, NULL, NULL, 1),
(270, 1, 89, 0, 'Good', 1, 1408035302, 1408035302, 1, 1, NULL, NULL, 1),
(271, 1, 89, 0, 'ok', 1, 1408035302, 1408035302, 1, 1, NULL, NULL, 1),
(272, 1, 89, 0, 'Bad', 1, 1408035302, 1408035302, 1, 1, NULL, NULL, 1),
(273, 1, 90, 0, 'Good', 1, 1408035302, 1408035302, 1, 1, NULL, NULL, 1),
(274, 1, 90, 0, 'ok', 1, 1408035302, 1408035302, 1, 1, NULL, NULL, 1),
(275, 1, 90, 0, 'Bad', 1, 1408035302, 1408035302, 1, 1, NULL, NULL, 1),
(276, 1, 91, 0, 'Good', 1, 1408035302, 1408035302, 1, 1, NULL, NULL, 1),
(277, 1, 91, 0, 'ok', 1, 1408035302, 1408035302, 1, 1, NULL, NULL, 1),
(278, 1, 91, 0, 'Bad', 1, 1408035302, 1408035302, 1, 1, NULL, NULL, 1),
(279, 1, 92, 0, 'yes', 1, 1408035334, 1408035334, 1, 1, NULL, NULL, 1),
(280, 1, 92, 0, 'no', 1, 1408035334, 1408035334, 1, 1, NULL, NULL, 1),
(281, 1, 93, 0, 'good', 1, 1408035642, 1408035642, 1, 1, NULL, NULL, 1),
(282, 1, 93, 0, 'ok', 1, 1408035642, 1408035642, 1, 1, NULL, NULL, 1),
(283, 1, 93, 0, 'bad', 1, 1408035642, 1408035642, 1, 1, NULL, NULL, 1),
(284, 1, 94, 0, 'good', 1, 1408035642, 1408035642, 1, 1, NULL, NULL, 1),
(285, 1, 94, 0, 'ok', 1, 1408035642, 1408035642, 1, 1, NULL, NULL, 1),
(286, 1, 94, 0, 'bad', 1, 1408035642, 1408035642, 1, 1, NULL, NULL, 1),
(287, 1, 95, 0, 'good', 1, 1408035642, 1408035642, 1, 1, NULL, NULL, 1),
(288, 1, 95, 0, 'ok', 1, 1408035642, 1408035642, 1, 1, NULL, NULL, 1),
(289, 1, 95, 0, 'bad', 1, 1408035642, 1408035642, 1, 1, NULL, NULL, 1),
(290, 1, 96, 0, 'good', 1, 1408035668, 1408035668, 1, 1, NULL, NULL, 1),
(291, 1, 96, 0, 'bad', 1, 1408035668, 1408035668, 1, 1, NULL, NULL, 1),
(292, 1, 96, 0, 'ok', 1, 1408035668, 1408035668, 1, 1, NULL, NULL, 1),
(293, 1, 97, 0, 'Thanushan', 1, 1408036986, 1408036986, 1, 1, NULL, NULL, 1),
(294, 1, 97, 0, 'Thanush', 1, 1408036986, 1408036986, 1, 1, NULL, NULL, 1),
(295, 1, 97, 0, 'Thanu', 1, 1408036986, 1408036986, 1, 1, NULL, NULL, 1),
(296, 1, 98, 0, 'Good', 1, 1408037029, 1408037029, 1, 1, NULL, NULL, 1),
(297, 1, 98, 0, 'Ok', 1, 1408037029, 1408037029, 1, 1, NULL, NULL, 1),
(298, 1, 98, 0, 'Bad', 1, 1408037029, 1408037029, 1, 1, NULL, NULL, 1),
(299, 1, 99, 0, 'Good', 1, 1408037029, 1408037029, 1, 1, NULL, NULL, 1),
(300, 1, 99, 0, 'Ok', 1, 1408037029, 1408037029, 1, 1, NULL, NULL, 1),
(301, 1, 99, 0, 'Bad', 1, 1408037029, 1408037029, 1, 1, NULL, NULL, 1),
(302, 1, 100, 0, 'Good', 1, 1408037029, 1408037029, 1, 1, NULL, NULL, 1),
(303, 1, 100, 0, 'Ok', 1, 1408037029, 1408037029, 1, 1, NULL, NULL, 1),
(304, 1, 100, 0, 'Bad', 1, 1408037029, 1408037029, 1, 1, NULL, NULL, 1),
(305, 1, 101, 0, 'Male', 1, 1408037561, 1408037561, 1, 1, NULL, NULL, 1),
(306, 1, 101, 0, 'Female', 1, 1408037561, 1408037561, 1, 1, NULL, NULL, 1),
(307, 1, 102, 0, 'Good', 1, 1408037602, 1408037602, 1, 1, NULL, NULL, 1),
(308, 1, 102, 0, 'Ok', 1, 1408037602, 1408037602, 1, 1, NULL, NULL, 1),
(309, 1, 102, 0, 'Bad', 1, 1408037602, 1408037602, 1, 1, NULL, NULL, 1),
(310, 1, 103, 0, 'Good', 1, 1408037602, 1408037602, 1, 1, NULL, NULL, 1),
(311, 1, 103, 0, 'Ok', 1, 1408037602, 1408037602, 1, 1, NULL, NULL, 1),
(312, 1, 103, 0, 'Bad', 1, 1408037602, 1408037602, 1, 1, NULL, NULL, 1),
(313, 1, 104, 0, 'Good', 1, 1408037602, 1408037602, 1, 1, NULL, NULL, 1),
(314, 1, 104, 0, 'Ok', 1, 1408037602, 1408037602, 1, 1, NULL, NULL, 1),
(315, 1, 104, 0, 'Bad', 1, 1408037602, 1408037602, 1, 1, NULL, NULL, 1),
(316, 1, 105, 0, 'sdsad', 1, 1408037809, 1408037809, 1, 1, NULL, NULL, 1),
(317, 1, 105, 0, 'asdas', 1, 1408037809, 1408037809, 1, 1, NULL, NULL, 1),
(318, 1, 105, 0, 'sdasd', 1, 1408037809, 1408037809, 1, 1, NULL, NULL, 1),
(319, 1, 106, 0, 'dsadasdasd', 1, 1408037823, 1408037823, 1, 1, NULL, NULL, 1),
(320, 1, 106, 0, 'sadasdasddsd', 1, 1408037823, 1408037823, 1, 1, NULL, NULL, 1),
(321, 1, 106, 0, 'sadasdasdasdas', 1, 1408037823, 1408037823, 1, 1, NULL, NULL, 1),
(322, 1, 107, 0, 'Male', 1, 1408038258, 1408038258, 1, 1, NULL, NULL, 1),
(323, 1, 107, 0, 'Female', 1, 1408038258, 1408038258, 1, 1, NULL, NULL, 1),
(324, 1, 107, 0, 'Other', 1, 1408038258, 1408038258, 1, 1, NULL, NULL, 1),
(325, 1, 108, 0, 'Good', 1, 1408038293, 1408038293, 1, 1, NULL, NULL, 1),
(326, 1, 108, 0, 'OK', 1, 1408038293, 1408038293, 1, 1, NULL, NULL, 1),
(327, 1, 108, 0, 'Bad', 1, 1408038293, 1408038293, 1, 1, NULL, NULL, 1),
(328, 1, 109, 0, 'Good', 1, 1408038293, 1408038293, 1, 1, NULL, NULL, 1),
(329, 1, 109, 0, 'OK', 1, 1408038293, 1408038293, 1, 1, NULL, NULL, 1),
(330, 1, 109, 0, 'Bad', 1, 1408038293, 1408038293, 1, 1, NULL, NULL, 1),
(331, 1, 110, 0, 'Good', 1, 1408038293, 1408038293, 1, 1, NULL, NULL, 1),
(332, 1, 110, 0, 'OK', 1, 1408038293, 1408038293, 1, 1, NULL, NULL, 1),
(333, 1, 110, 0, 'Bad', 1, 1408038293, 1408038293, 1, 1, NULL, NULL, 1),
(334, 1, 111, 0, '1', 1, 1408161400, 1408161400, 1, 1, NULL, NULL, 1),
(335, 1, 111, 0, '2', 1, 1408161400, 1408161400, 1, 1, NULL, NULL, 1),
(336, 1, 111, 0, '3', 1, 1408161400, 1408161400, 1, 1, NULL, NULL, 1),
(337, 1, 111, 0, '4', 1, 1408161400, 1408161400, 1, 1, NULL, NULL, 1),
(338, 1, 111, 0, '5', 1, 1408161400, 1408161400, 1, 1, NULL, NULL, 1),
(339, 1, 112, 0, 'Male', 1, 1408247186, 1408247186, 1, 1, NULL, NULL, 1),
(340, 1, 112, 0, 'Female', 1, 1408247186, 1408247186, 1, 1, NULL, NULL, 1),
(341, 1, 113, 0, 'Good', 1, 1408247232, 1408247232, 1, 1, NULL, NULL, 1),
(342, 1, 113, 0, 'Ok', 1, 1408247232, 1408247232, 1, 1, NULL, NULL, 1),
(343, 1, 113, 0, 'Bad', 1, 1408247232, 1408247232, 1, 1, NULL, NULL, 1),
(344, 1, 114, 0, 'Good', 1, 1408247232, 1408247232, 1, 1, NULL, NULL, 1),
(345, 1, 114, 0, 'Ok', 1, 1408247232, 1408247232, 1, 1, NULL, NULL, 1),
(346, 1, 114, 0, 'Bad', 1, 1408247232, 1408247232, 1, 1, NULL, NULL, 1),
(347, 1, 115, 0, 'Good', 1, 1408247232, 1408247232, 1, 1, NULL, NULL, 1),
(348, 1, 115, 0, 'Ok', 1, 1408247232, 1408247232, 1, 1, NULL, NULL, 1),
(349, 1, 115, 0, 'Bad', 1, 1408247232, 1408247232, 1, 1, NULL, NULL, 1),
(350, 1, 116, 0, 'Morning', 1, 1408247294, 1408247294, 1, 1, NULL, NULL, 1),
(351, 1, 116, 0, 'Lunch', 1, 1408247294, 1408247294, 1, 1, NULL, NULL, 1),
(352, 1, 116, 0, 'Dinner', 1, 1408247294, 1408247294, 1, 1, NULL, NULL, 1),
(353, 1, 117, 0, 'dfsdf', 1, 1409459380, 1409459380, 1, 1, NULL, NULL, 1),
(354, 1, 117, 0, 'dfd', 1, 1409459380, 1409459380, 1, 1, NULL, NULL, 1),
(355, 1, 117, 0, 'sdfsd', 1, 1409459380, 1409459380, 1, 1, NULL, NULL, 1),
(356, 1, 117, 0, 'fsd', 1, 1409459380, 1409459380, 1, 1, NULL, NULL, 1),
(357, 1, 118, 0, 'hfgh', 1, 1409459399, 1409459399, 1, 1, NULL, NULL, 1),
(358, 1, 118, 0, 'gfhfgh', 1, 1409459399, 1409459399, 1, 1, NULL, NULL, 1),
(359, 1, 118, 0, 'fghfghfg', 1, 1409459399, 1409459399, 1, 1, NULL, NULL, 1),
(360, 1, 118, 0, 'gfhg', 1, 1409459399, 1409459399, 1, 1, NULL, NULL, 1),
(361, 1, 119, 0, 'dfdsff', 1, 1410453899, 1410453899, 1, 1, NULL, NULL, 1),
(362, 1, 119, 0, 'sdfdsfs', 1, 1410453899, 1410453899, 1, 1, NULL, NULL, 1),
(363, 1, 120, 0, 'dfdsf', 1, 1410535809, 1410535809, 1, 1, NULL, NULL, 1),
(364, 1, 120, 0, 'sdfsdf', 1, 1410535809, 1410535809, 1, 1, NULL, NULL, 1),
(365, 1, 120, 0, 'sdf', 1, 1410535809, 1410535809, 1, 1, NULL, NULL, 1),
(366, 1, 121, 0, 'sddsd', 1, 1410535967, 1410535967, 1, 1, NULL, NULL, 1),
(367, 1, 121, 0, 'sadas', 1, 1410535967, 1410535967, 1, 1, NULL, NULL, 1),
(368, 1, 121, 0, 'asda', 1, 1410535967, 1410535967, 1, 1, NULL, NULL, 1),
(369, 1, 122, 0, 'sdasdasd', 1, 1410536682, 1410536682, 1, 1, NULL, NULL, 1),
(370, 1, 122, 0, 'sdsad', 1, 1410536682, 1410536682, 1, 1, NULL, NULL, 1),
(371, 1, 122, 0, 'dasda', 1, 1410536682, 1410536682, 1, 1, NULL, NULL, 1),
(372, 1, 123, 0, 'gfhfghfh', 1, 1410536716, 1410536716, 1, 1, NULL, NULL, 1),
(373, 1, 123, 0, 'fghfghfg', 1, 1410536716, 1410536716, 1, 1, NULL, NULL, 1),
(374, 1, 123, 0, 'hfghfghfh', 1, 1410536716, 1410536716, 1, 1, NULL, NULL, 1),
(375, 1, 124, 0, 'dfdsfd', 1, 1410537033, 1410537033, 1, 1, NULL, NULL, 1),
(376, 1, 124, 0, 'sdfsdf', 1, 1410537033, 1410537033, 1, 1, NULL, NULL, 1),
(377, 1, 124, 0, 'sdfsd', 1, 1410537033, 1410537033, 1, 1, NULL, NULL, 1),
(378, 1, 124, 0, 'fdfdsfsdf', 1, 1410537033, 1410537033, 1, 1, NULL, NULL, 1),
(379, 1, 125, 0, 'sdsd', 1, 1410537229, 1410537229, 1, 1, NULL, NULL, 1),
(380, 1, 125, 0, 'sadsa', 1, 1410537229, 1410537229, 1, 1, NULL, NULL, 1),
(381, 1, 125, 0, 'sdas', 1, 1410537229, 1410537229, 1, 1, NULL, NULL, 1),
(382, 1, 126, 0, 'dd', 1, 1410537243, 1410537243, 1, 1, NULL, NULL, 1),
(383, 1, 126, 0, 'ddasd', 1, 1410537243, 1410537243, 1, 1, NULL, NULL, 1),
(384, 1, 126, 0, 'sdsad', 1, 1410537243, 1410537243, 1, 1, NULL, NULL, 1),
(385, 1, 126, 0, 'sdsd', 1, 1410537243, 1410537243, 1, 1, NULL, NULL, 1),
(386, 1, 127, 0, 'Male', 1, 1410541856, 1410541856, 1, 1, NULL, NULL, 1),
(387, 1, 127, 0, 'Female', 1, 1410541856, 1410541856, 1, 1, NULL, NULL, 1),
(388, 1, 128, 0, 'Good', 1, 1410541880, 1410541880, 1, 1, NULL, NULL, 1),
(389, 1, 128, 0, 'bad', 1, 1410541880, 1410541880, 1, 1, NULL, NULL, 1),
(390, 1, 129, 0, 'Male', 1, 1410544051, 1410544051, 1, 1, NULL, NULL, 1),
(391, 1, 129, 0, 'female', 1, 1410544051, 1410544051, 1, 1, NULL, NULL, 1),
(392, 1, 130, 0, 'Good', 1, 1410544092, 1410544092, 1, 1, NULL, NULL, 1),
(393, 1, 130, 0, 'Ok', 1, 1410544092, 1410544092, 1, 1, NULL, NULL, 1),
(394, 1, 130, 0, 'Bad', 1, 1410544092, 1410544092, 1, 1, NULL, NULL, 1),
(395, 1, 131, 0, 'Good', 1, 1410544092, 1410544092, 1, 1, NULL, NULL, 1),
(396, 1, 131, 0, 'Ok', 1, 1410544092, 1410544092, 1, 1, NULL, NULL, 1),
(397, 1, 131, 0, 'Bad', 1, 1410544092, 1410544092, 1, 1, NULL, NULL, 1),
(398, 1, 132, 0, 'Male', 1, 1410544251, 1410544251, 1, 1, NULL, NULL, 1),
(399, 1, 132, 0, 'Female', 1, 1410544251, 1410544251, 1, 1, NULL, NULL, 1),
(400, 1, 133, 0, 'Good', 1, 1410544280, 1410544280, 1, 1, NULL, NULL, 1),
(401, 1, 133, 0, 'Ok', 1, 1410544280, 1410544280, 1, 1, NULL, NULL, 1),
(402, 1, 133, 0, 'Bad', 1, 1410544280, 1410544280, 1, 1, NULL, NULL, 1),
(403, 1, 134, 0, 'Good', 1, 1410544280, 1410544280, 1, 1, NULL, NULL, 1),
(404, 1, 134, 0, 'Ok', 1, 1410544280, 1410544280, 1, 1, NULL, NULL, 1),
(405, 1, 134, 0, 'Bad', 1, 1410544280, 1410544280, 1, 1, NULL, NULL, 1),
(406, 1, 135, 0, 'dd', 1, 1410616501, 1410616501, 1, 1, NULL, NULL, 1),
(407, 1, 135, 0, 'ss', 1, 1410616501, 1410616501, 1, 1, NULL, NULL, 1),
(408, 1, 135, 0, 'ff', 1, 1410616501, 1410616501, 1, 1, NULL, NULL, 1),
(409, 1, 136, 0, 'asas', 1, 1410619454, 1410619454, 1, 1, NULL, NULL, 1),
(410, 1, 136, 0, 'asas', 1, 1410619454, 1410619454, 1, 1, NULL, NULL, 1),
(411, 1, 136, 0, 'asas', 1, 1410619454, 1410619454, 1, 1, NULL, NULL, 1),
(412, 1, 137, 0, 'sdsadasdasd', 1, 1410619507, 1410619507, 1, 1, NULL, NULL, 1),
(413, 1, 137, 0, 'dsadasdasd', 1, 1410619507, 1410619507, 1, 1, NULL, NULL, 1),
(414, 1, 137, 0, 'sadasdadad', 1, 1410619507, 1410619507, 1, 1, NULL, NULL, 1),
(415, 1, 138, 0, 'sadasd', 1, 1410619798, 1410619798, 1, 1, NULL, NULL, 1),
(416, 1, 138, 0, 'sadas', 1, 1410619798, 1410619798, 1, 1, NULL, NULL, 1),
(417, 1, 138, 0, 'asdsad', 1, 1410619798, 1410619798, 1, 1, NULL, NULL, 1),
(418, 1, 139, 0, 'dsffsd', 1, 1410619881, 1410619881, 1, 1, NULL, NULL, 1),
(419, 1, 139, 0, 'fsdf', 1, 1410619881, 1410619881, 1, 1, NULL, NULL, 1),
(420, 1, 139, 0, 'dsfsd', 1, 1410619881, 1410619881, 1, 1, NULL, NULL, 1),
(421, 1, 139, 0, 'fsdf', 1, 1410619881, 1410619881, 1, 1, NULL, NULL, 1),
(422, 1, 140, 0, 'dfdf', 1, 1410619895, 1410619895, 1, 1, NULL, NULL, 1),
(423, 1, 140, 0, 'sdfdsfd', 1, 1410619895, 1410619895, 1, 1, NULL, NULL, 1),
(424, 1, 140, 0, 'sfdsfsd', 1, 1410619895, 1410619895, 1, 1, NULL, NULL, 1),
(425, 1, 140, 0, 'fsdf', 1, 1410619895, 1410619895, 1, 1, NULL, NULL, 1),
(426, 1, 140, 0, 'sdfsd', 1, 1410619895, 1410619895, 1, 1, NULL, NULL, 1),
(427, 1, 141, 0, 'dfsdf', 1, 1410619914, 1410619914, 1, 1, NULL, NULL, 1),
(428, 1, 141, 0, 'dsfsd', 1, 1410619914, 1410619914, 1, 1, NULL, NULL, 1),
(429, 1, 141, 0, 'fdsf', 1, 1410619914, 1410619914, 1, 1, NULL, NULL, 1),
(430, 1, 142, 0, 'dfsdf', 1, 1410619914, 1410619914, 1, 1, NULL, NULL, 1),
(431, 1, 142, 0, 'dsfsd', 1, 1410619914, 1410619914, 1, 1, NULL, NULL, 1),
(432, 1, 142, 0, 'fdsf', 1, 1410619914, 1410619914, 1, 1, NULL, NULL, 1),
(433, 1, 143, 0, 'dfsdf', 1, 1410619914, 1410619914, 1, 1, NULL, NULL, 1),
(434, 1, 143, 0, 'dsfsd', 1, 1410619914, 1410619914, 1, 1, NULL, NULL, 1),
(435, 1, 143, 0, 'fdsf', 1, 1410619914, 1410619914, 1, 1, NULL, NULL, 1),
(436, 1, 144, 0, 'dfsdf', 1, 1410619914, 1410619914, 1, 1, NULL, NULL, 1),
(437, 1, 144, 0, 'dsfsd', 1, 1410619914, 1410619914, 1, 1, NULL, NULL, 1),
(438, 1, 144, 0, 'fdsf', 1, 1410619914, 1410619914, 1, 1, NULL, NULL, 1),
(439, 1, 145, 0, 'sss', 1, 1410621131, 1410621131, 1, 1, NULL, NULL, 1),
(440, 1, 145, 0, 'aaaa', 1, 1410621131, 1410621131, 1, 1, NULL, NULL, 1),
(441, 1, 145, 0, 'ss', 1, 1410621131, 1410621131, 1, 1, NULL, NULL, 1),
(442, 1, 146, 0, 'Good', 1, 1410673697, 1410673697, 1, 1, NULL, NULL, 1),
(443, 1, 146, 0, 'Bad', 1, 1410673697, 1410673697, 1, 1, NULL, NULL, 1),
(444, 1, 146, 0, 'Ok', 1, 1410673697, 1410673697, 1, 1, NULL, NULL, 1),
(445, 1, 147, 0, 'Male', 1, 1410673813, 1410673813, 1, 1, NULL, NULL, 1),
(446, 1, 147, 0, 'Female', 1, 1410673813, 1410673813, 1, 1, NULL, NULL, 1),
(447, 1, 148, 0, 'Male', 1, 1410717556, 1410717556, 1, 1, NULL, NULL, 1),
(448, 1, 148, 0, 'Female', 1, 1410717556, 1410717556, 1, 1, NULL, NULL, 1),
(449, 1, 149, 0, 'Good', 1, 1410717610, 1410717610, 1, 1, NULL, NULL, 1),
(450, 1, 149, 0, 'Ok', 1, 1410717610, 1410717610, 1, 1, NULL, NULL, 1),
(451, 1, 149, 0, 'Bad', 1, 1410717610, 1410717610, 1, 1, NULL, NULL, 1),
(452, 1, 150, 0, 'dsds', 1, 1411230177, 1411230177, 1, 1, NULL, NULL, 1),
(453, 1, 151, 0, 'vhgv', 1, 1411375098, 1411375098, 1, 1, NULL, NULL, 1),
(454, 1, 151, 0, 'kbjk', 1, 1411375098, 1411375098, 1, 1, NULL, NULL, 1),
(455, 1, 151, 0, 'lnkl', 1, 1411375098, 1411375098, 1, 1, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_data_collection`
--

CREATE TABLE IF NOT EXISTS `tbl_data_collection` (
  `data_collection_id` int(12) NOT NULL AUTO_INCREMENT,
  `questions_id` int(12) NOT NULL COMMENT 'Question id',
  `answer_id` int(12) NOT NULL COMMENT 'Answer id',
  `survey_collection_id` int(12) NOT NULL COMMENT 'Data Collection id',
  `collection_value` int(20) DEFAULT NULL COMMENT 'User Response Value',
  PRIMARY KEY (`data_collection_id`),
  KEY `questions_id` (`questions_id`),
  KEY `answer_id` (`answer_id`),
  KEY `survey_collection_id` (`survey_collection_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=642 ;

--
-- Dumping data for table `tbl_data_collection`
--

INSERT INTO `tbl_data_collection` (`data_collection_id`, `questions_id`, `answer_id`, `survey_collection_id`, `collection_value`) VALUES
(104, 7, 29, 7, 1),
(105, 7, 30, 7, 0),
(106, 7, 31, 7, 0),
(107, 7, 32, 7, 0),
(108, 7, 33, 7, 0),
(109, 8, 34, 7, 1),
(110, 8, 35, 7, 0),
(111, 8, 36, 7, 0),
(112, 8, 37, 7, 0),
(113, 8, 38, 7, 0),
(114, 9, 39, 7, 1),
(115, 9, 40, 7, 0),
(116, 9, 41, 7, 0),
(117, 9, 42, 7, 0),
(118, 9, 43, 7, 0),
(119, 10, 44, 7, 1),
(120, 10, 45, 7, 0),
(121, 10, 46, 7, 0),
(122, 10, 47, 7, 0),
(123, 10, 48, 7, 0),
(124, 11, 49, 7, 1),
(125, 11, 50, 7, 0),
(126, 11, 51, 7, 0),
(127, 11, 52, 7, 0),
(128, 11, 53, 7, 0),
(142, 1, 1, 9, 1),
(143, 1, 2, 9, 1),
(144, 1, 3, 9, 0),
(145, 1, 4, 9, 0),
(146, 1, 5, 9, 0),
(147, 2, 6, 9, 1),
(148, 2, 7, 9, 1),
(149, 2, 8, 9, 0),
(150, 2, 9, 9, 0),
(151, 2, 10, 9, 0),
(152, 3, 11, 9, 2),
(153, 3, 12, 9, 0),
(154, 3, 13, 9, 0),
(616, 1, 1, 99, 1),
(617, 1, 2, 99, 3),
(618, 1, 3, 99, 1),
(619, 1, 4, 99, 0),
(620, 1, 5, 99, 0),
(621, 2, 6, 99, 0),
(622, 2, 7, 99, 4),
(623, 2, 8, 99, 1),
(624, 2, 9, 99, 1),
(625, 2, 10, 99, 0),
(626, 3, 11, 99, 1),
(627, 3, 12, 99, 4),
(628, 3, 13, 99, 1),
(629, 1, 1, 100, 6),
(630, 1, 2, 100, 8),
(631, 1, 3, 100, 7),
(632, 1, 4, 100, 0),
(633, 1, 5, 100, 1),
(634, 2, 6, 100, 1),
(635, 2, 7, 100, 8),
(636, 2, 8, 100, 11),
(637, 2, 9, 100, 3),
(638, 2, 10, 100, 0),
(639, 3, 11, 100, 5),
(640, 3, 12, 100, 14),
(641, 3, 13, 100, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_input_type`
--

CREATE TABLE IF NOT EXISTS `tbl_input_type` (
  `input_type_id` int(12) NOT NULL AUTO_INCREMENT,
  `input_type_name` varchar(255) NOT NULL COMMENT 'Input Type',
  PRIMARY KEY (`input_type_id`),
  UNIQUE KEY `uk_users_username` (`input_type_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tbl_input_type`
--

INSERT INTO `tbl_input_type` (`input_type_id`, `input_type_name`) VALUES
(3, 'image'),
(1, 'text'),
(2, 'textarea');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mobile_`
--

CREATE TABLE IF NOT EXISTS `tbl_mobile_` (
  `mobi_survey_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`mobi_survey_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

--
-- Dumping data for table `tbl_mobile_`
--

INSERT INTO `tbl_mobile_` (`mobi_survey_id`, `user_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_option_choices`
--

CREATE TABLE IF NOT EXISTS `tbl_option_choices` (
  `option_choice_id` int(12) NOT NULL AUTO_INCREMENT,
  `option_group_id` int(12) NOT NULL COMMENT 'Options Group id',
  `option_choice_name` varchar(255) NOT NULL COMMENT 'Option Choice Name',
  PRIMARY KEY (`option_choice_id`),
  UNIQUE KEY `uk_users_username` (`option_choice_name`),
  KEY `option_group_id` (`option_group_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `tbl_option_choices`
--

INSERT INTO `tbl_option_choices` (`option_choice_id`, `option_group_id`, `option_choice_name`) VALUES
(1, 1, 'Multiple Choice (Only One Answer Allowed)'),
(2, 1, 'Multiple Choice (Multiple Answers Allowed)'),
(3, 1, 'Rating'),
(4, 1, 'Ranking'),
(5, 1, 'Matrix of Choices (Only One Answer Per Row)'),
(6, 1, 'Matrix of Choices (Multiple Answers Per Row)'),
(7, 1, 'Matrix of Drop-down menus'),
(8, 2, 'Single Textbox'),
(9, 2, 'Multiple Textboxes'),
(10, 2, 'Comment/Essay Box'),
(11, 2, 'Numerical Textboxes'),
(12, 2, 'Date and/or Time'),
(13, 3, 'Image'),
(14, 3, 'Descriptive Text');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_option_group`
--

CREATE TABLE IF NOT EXISTS `tbl_option_group` (
  `option_group_id` int(12) NOT NULL AUTO_INCREMENT,
  `option_group_name` varchar(255) NOT NULL COMMENT 'Option Group Name',
  PRIMARY KEY (`option_group_id`),
  UNIQUE KEY `uk_users_username` (`option_group_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tbl_option_group`
--

INSERT INTO `tbl_option_group` (`option_group_id`, `option_group_name`) VALUES
(1, 'Close-Ended'),
(2, 'Open-Ended'),
(3, 'Other');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_organization`
--

CREATE TABLE IF NOT EXISTS `tbl_organization` (
  `organization_id` int(12) NOT NULL AUTO_INCREMENT,
  `organization_name` varchar(255) NOT NULL COMMENT 'Organization Name',
  PRIMARY KEY (`organization_id`),
  UNIQUE KEY `uk_users_username` (`organization_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tbl_organization`
--

INSERT INTO `tbl_organization` (`organization_id`, `organization_name`) VALUES
(1, 'D-Survey'),
(2, 'GloSoft Solutions'),
(3, 'Mobile');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_questions`
--

CREATE TABLE IF NOT EXISTS `tbl_questions` (
  `questions_id` int(12) NOT NULL AUTO_INCREMENT,
  `survey_sections_id` int(12) NOT NULL COMMENT 'Survey Sections id',
  `input_type_id` int(12) NOT NULL COMMENT 'Input Type id',
  `questions_name` varchar(255) NOT NULL COMMENT 'Questions Name',
  `questions_subtext` varchar(255) DEFAULT NULL COMMENT 'Questions Subtext',
  `answer_required_state` tinyint(1) NOT NULL COMMENT 'State',
  `modified_date` int(10) DEFAULT '0' COMMENT 'Modified Date',
  `created_date` int(10) DEFAULT '0' COMMENT 'Created Date',
  `created_by` int(20) DEFAULT '0' COMMENT 'Created By',
  `modified_by` int(20) DEFAULT '0' COMMENT 'Modified By',
  `option_group_id` int(12) NOT NULL COMMENT 'Option Group id',
  `allow_multiple_answer_state` tinyint(1) NOT NULL COMMENT 'Multiple Option State',
  PRIMARY KEY (`questions_id`),
  KEY `survey_sections_id` (`survey_sections_id`),
  KEY `input_type_id` (`input_type_id`),
  KEY `option_group_id` (`option_group_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=146 ;

--
-- Dumping data for table `tbl_questions`
--

INSERT INTO `tbl_questions` (`questions_id`, `survey_sections_id`, `input_type_id`, `questions_name`, `questions_subtext`, `answer_required_state`, `modified_date`, `created_date`, `created_by`, `modified_by`, `option_group_id`, `allow_multiple_answer_state`) VALUES
(1, 1, 1, 'How easy is it to find a Consumer Shopping website over the internet?', NULL, 1, 0, 0, 0, 0, 1, 0),
(2, 1, 1, 'How often do you use online services to purchase products?', NULL, 1, 0, 0, 0, 0, 1, 0),
(3, 1, 1, 'Would you recommend [Company Name] to others you know?', NULL, 1, 0, 0, 0, 0, 1, 0),
(4, 19, 1, 'How professional is our company?', NULL, 1, 0, 0, 0, 0, 1, 0),
(5, 19, 1, ' How convenient is our company to use?', NULL, 1, 0, 0, 0, 0, 1, 0),
(6, 19, 1, 'How well do you feel that our company understands your needs?', NULL, 1, 0, 0, 0, 0, 1, 0),
(7, 20, 1, 'How meaningful is your work?', NULL, 1, 0, 0, 0, 0, 1, 0),
(8, 20, 1, 'How challenging is your job?', NULL, 1, 0, 0, 0, 0, 1, 0),
(9, 20, 1, 'In a typical week, how often do you feel stressed at work?', NULL, 1, 0, 0, 0, 0, 1, 0),
(10, 20, 1, 'How well are you paid for the work you do?', NULL, 1, 0, 0, 0, 0, 1, 0),
(11, 20, 1, 'How much do your opinions about work matter to your co-workers?', NULL, 1, 0, 0, 0, 0, 1, 0),
(12, 26, 1, 'My name is', NULL, 1, 1407895242, 1407895242, 1, 1, 1, 0),
(13, 27, 1, 'My name is', NULL, 1, 1407895303, 1407895303, 1, 1, 1, 0),
(14, 28, 1, 'My name is ?', NULL, 1, 1407895368, 1407895368, 1, 1, 1, 0),
(15, 29, 1, 'mmmmm', NULL, 1, 1407895526, 1407895526, 1, 1, 1, 0),
(16, 30, 1, 'aa', NULL, 1, 1407895635, 1407895635, 1, 1, 1, 0),
(17, 30, 1, 'bb', NULL, 1, 1407895635, 1407895635, 1, 1, 1, 0),
(18, 30, 1, 'cc', NULL, 1, 1407895635, 1407895635, 1, 1, 1, 0),
(19, 31, 1, 'full name', NULL, 1, 1407895776, 1407895776, 1, 1, 1, 0),
(20, 31, 1, 'nickname', NULL, 1, 1407895776, 1407895776, 1, 1, 1, 0),
(21, 31, 1, 'sortname', NULL, 1, 1407895776, 1407895776, 1, 1, 1, 0),
(22, 32, 1, 'work', NULL, 1, 1407895902, 1407895902, 1, 1, 1, 0),
(23, 32, 1, 'preformance', NULL, 1, 1407895902, 1407895902, 1, 1, 1, 0),
(24, 33, 1, 'a', 'new', 1, 1407896143, 1407896143, 1, 1, 1, 0),
(25, 33, 1, 'b', 'new', 1, 1407896143, 1407896143, 1, 1, 1, 0),
(26, 33, 1, 'c', 'new', 1, 1407896143, 1407896143, 1, 1, 1, 0),
(27, 35, 1, 'Weight', 'What is you helth?', 1, 1407900321, 1407900321, 1, 1, 1, 0),
(28, 35, 1, 'Height', 'What is you helth?', 1, 1407900321, 1407900321, 1, 1, 1, 0),
(29, 35, 1, 'BMI', 'What is you helth?', 1, 1407900321, 1407900321, 1, 1, 1, 0),
(30, 36, 1, 'sssssss', '', 1, 1407903124, 1407903124, 1, 1, 1, 0),
(31, 37, 1, 'dfdsfsdfsd', '', 1, 1407906891, 1407906891, 1, 1, 1, 0),
(32, 39, 1, 'dfsdf', 'dfdfdfdfdfsdf dfdfd', 1, 1407907242, 1407907242, 1, 1, 1, 0),
(33, 40, 1, 'gfg sg dfgdfgdfgdfgdfgdfg df', '', 1, 1407907396, 1407907396, 1, 1, 1, 0),
(34, 41, 1, 'rtrtreter trertertertrt erter ertr terter tert etert', '', 1, 1407907415, 1407907415, 1, 1, 1, 0),
(35, 42, 1, 'b', 'new ', 1, 1407907449, 1407907449, 1, 1, 1, 0),
(36, 43, 1, 'dsadasdas', '', 1, 1407908333, 1407908333, 1, 1, 1, 0),
(37, 44, 1, 'ddcdf', 'cfxvxvxcvcxv dv dfgdgfd g fdgdfgdfg', 1, 1407908432, 1407908432, 1, 1, 1, 0),
(38, 44, 1, 'dsfsd', 'cfxvxvxcvcxv dv dfgdgfd g fdgdfgdfg', 1, 1407908432, 1407908432, 1, 1, 1, 0),
(39, 44, 1, 'fsdf', 'cfxvxvxcvcxv dv dfgdgfd g fdgdfgdfg', 1, 1407908432, 1407908432, 1, 1, 1, 0),
(40, 45, 1, 'my name', '', 1, 1407908577, 1407908577, 1, 1, 1, 0),
(41, 46, 1, 'sssss', '', 1, 1407908601, 1407908601, 1, 1, 1, 0),
(42, 49, 1, 'dsfdfdsfds', '', 1, 1407909618, 1407909618, 1, 1, 1, 0),
(43, 50, 1, 'fdsfsdfd dsfdfdsfsf', '', 1, 1407909641, 1407909641, 1, 1, 1, 0),
(44, 51, 1, 'ggggg', '', 1, 1407983472, 1407983472, 1, 1, 1, 0),
(45, 52, 1, 'dgdfgfdgdgffdgd', '', 1, 1407983616, 1407983616, 1, 1, 1, 0),
(46, 53, 1, 'dfdsfsdfsfsdfsf', '', 1, 1407983736, 1407983736, 1, 1, 1, 0),
(47, 54, 1, 'sdfdsfsdfsfsdfsdfsdf', '', 1, 1407983803, 1407983803, 1, 1, 1, 0),
(48, 55, 1, 'sdfddsfsdfsdfsdfsd  dfsdfsdfsd', '', 1, 1407987712, 1407987712, 1, 1, 1, 0),
(49, 55, 1, 'sad d asd d sdasdasdasd asdas', '', 1, 1407987896, 1407987896, 1, 1, 1, 0),
(50, 55, 1, 'xzx  xzxzxzx  dsadasdasd  sdasd', '', 1, 1407987944, 1407987944, 1, 1, 1, 0),
(51, 55, 1, 'sadasdas', 'Array', 1, 1407988014, 1407988014, 1, 1, 1, 0),
(52, 55, 1, 'asdas', 'Array', 1, 1407988014, 1407988014, 1, 1, 1, 0),
(53, 55, 1, 'sada', 'Array', 1, 1407988014, 1407988014, 1, 1, 1, 0),
(54, 55, 1, 'sad', 'Array', 1, 1407988014, 1407988014, 1, 1, 1, 0),
(55, 55, 1, 'd', 'Array', 1, 1407988014, 1407988014, 1, 1, 1, 0),
(56, 56, 1, 'my name is', '', 1, 1407988448, 1407988448, 1, 1, 1, 0),
(57, 57, 1, 'My name is what is?', '', 1, 1407988552, 1407988552, 1, 1, 1, 0),
(58, 58, 1, 'sdas dsdsd d dsdsad a sdasdasd', '', 1, 1407988864, 1407988864, 1, 1, 1, 0),
(59, 58, 1, 'dfdf', 'Array', 1, 1407988877, 1407988877, 1, 1, 1, 0),
(60, 58, 1, 'dfd', 'Array', 1, 1407988877, 1407988877, 1, 1, 1, 0),
(61, 58, 1, 'dfs', 'Array', 1, 1407988877, 1407988877, 1, 1, 1, 0),
(62, 59, 1, 'dss sds dssd sd dfsdf', '', 1, 1407989194, 1407989194, 1, 1, 1, 0),
(63, 59, 1, 'rerewr erwerew r rerrer er', '', 1, 1407989277, 1407989277, 1, 1, 1, 0),
(64, 59, 1, 'dsfsfds fdffdsfsd ff sdfdfdfdsfdsf', '', 1, 1407989310, 1407989310, 1, 1, 1, 0),
(65, 60, 1, 'sdssd', 'Array', 1, 1407989380, 1407989380, 1, 1, 1, 0),
(66, 60, 1, 'sds', 'Array', 1, 1407989380, 1407989380, 1, 1, 1, 0),
(67, 60, 1, 'dsd', 'Array', 1, 1407989380, 1407989380, 1, 1, 1, 0),
(68, 61, 1, 'sdd sds fsdfds  sd fsdfsdfsd  ', '', 1, 1407989509, 1407989509, 1, 1, 1, 0),
(69, 62, 1, 'h hfgh g', '', 1, 1407990209, 1407990209, 1, 1, 1, 0),
(70, 62, 1, 'gf', 'Array', 1, 1407990231, 1407990231, 1, 1, 1, 0),
(71, 62, 1, 'dgdf', 'Array', 1, 1407990231, 1407990231, 1, 1, 1, 0),
(72, 62, 1, 'gdfgdf', 'Array', 1, 1407990231, 1407990231, 1, 1, 1, 0),
(73, 62, 1, 'gdf', 'Array', 1, 1407990231, 1407990231, 1, 1, 1, 0),
(74, 63, 1, 'a', 'fvf fdsfd fdsgfdg', 1, 1407990326, 1407990326, 1, 1, 1, 0),
(75, 63, 1, 'b', 'fvf fdsfd fdsgfdg', 1, 1407990326, 1407990326, 1, 1, 1, 0),
(76, 63, 1, 'dfsf fgfdgf dfg fg dfgdgdfg', '', 1, 1407990346, 1407990346, 1, 1, 1, 0),
(77, 64, 1, 'aa', 'biudfbsd f', 1, 1408034627, 1408034627, 1, 1, 1, 0),
(78, 64, 1, 'bb', 'biudfbsd f', 1, 1408034627, 1408034627, 1, 1, 1, 0),
(79, 64, 1, 'cc', 'biudfbsd f', 1, 1408034627, 1408034627, 1, 1, 1, 0),
(80, 65, 1, 'aa', 'My name is ', 1, 1408034989, 1408034989, 1, 1, 1, 0),
(81, 65, 1, 'bb', 'My name is ', 1, 1408034989, 1408034989, 1, 1, 1, 0),
(82, 65, 1, 'cc', 'My name is ', 1, 1408034989, 1408034989, 1, 1, 1, 0),
(83, 66, 1, 'Preform', 'You r ?', 1, 1408035302, 1408035302, 1, 1, 1, 0),
(84, 66, 1, 'work', 'You r ?', 1, 1408035302, 1408035302, 1, 1, 1, 0),
(85, 66, 1, 'talk', 'You r ?', 1, 1408035302, 1408035302, 1, 1, 1, 0),
(86, 66, 1, 'have i a pet?', '', 1, 1408035334, 1408035334, 1, 1, 1, 0),
(87, 67, 1, 'Proformance', 'is how', 1, 1408035642, 1408035642, 1, 1, 1, 0),
(88, 67, 1, 'working', 'is how', 1, 1408035642, 1408035642, 1, 1, 1, 0),
(89, 67, 1, 'running', 'is how', 1, 1408035642, 1408035642, 1, 1, 1, 0),
(90, 67, 1, 'You r ?', '', 1, 1408035668, 1408035668, 1, 1, 1, 0),
(91, 68, 1, 'My name is can -', '', 1, 1408036986, 1408036986, 1, 1, 1, 0),
(92, 68, 1, 'Performance', ' how', 1, 1408037029, 1408037029, 1, 1, 1, 0),
(93, 68, 1, 'Work', ' how', 1, 1408037029, 1408037029, 1, 1, 1, 0),
(94, 68, 1, 'Running', ' how', 1, 1408037029, 1408037029, 1, 1, 1, 0),
(95, 69, 1, 'gender ', '', 1, 1408037561, 1408037561, 1, 1, 1, 0),
(96, 69, 1, 'Performance', 'is', 1, 1408037602, 1408037602, 1, 1, 1, 0),
(97, 69, 1, 'Work', 'is', 1, 1408037602, 1408037602, 1, 1, 1, 0),
(98, 69, 1, 'Thinging', 'is', 1, 1408037602, 1408037602, 1, 1, 1, 0),
(99, 70, 1, 'sadasdsadasdsa', '', 1, 1408037809, 1408037809, 1, 1, 1, 0),
(100, 70, 1, 'dsadsad\n', '', 1, 1408037823, 1408037823, 1, 1, 1, 0),
(101, 71, 1, 'Gender', '', 1, 1408038258, 1408038258, 1, 1, 1, 0),
(102, 71, 1, 'Run', 'Is', 1, 1408038293, 1408038293, 1, 1, 1, 0),
(103, 71, 1, 'Walk', 'Is', 1, 1408038293, 1408038293, 1, 1, 1, 0),
(104, 71, 1, 'Sleep', 'Is', 1, 1408038293, 1408038293, 1, 1, 1, 0),
(105, 72, 1, 'rank', '', 1, 1408161400, 1408161400, 1, 1, 1, 0),
(106, 79, 1, 'Gender', '', 1, 1408247186, 1408247186, 1, 1, 1, 0),
(107, 79, 1, 'Run', 'is how', 1, 1408247232, 1408247232, 1, 1, 1, 0),
(108, 79, 1, 'Walk', 'is how', 1, 1408247232, 1408247232, 1, 1, 1, 0),
(109, 79, 1, 'Sleep', 'is how', 1, 1408247232, 1408247232, 1, 1, 1, 0),
(110, 79, 1, 'eating food', '', 1, 1408247294, 1408247294, 1, 1, 1, 0),
(111, 113, 1, 'safsdfsdfsdfsf', '', 1, 1409459380, 1409459380, 1, 1, 1, 0),
(112, 113, 1, 'thghgfhgfhfgh', '', 1, 1409459399, 1409459399, 1, 1, 1, 0),
(113, 114, 1, 'dfdfsdfsdfdf', '', 1, 1410453899, 1410453899, 1, 1, 1, 0),
(114, 115, 1, 'sadsdfsdfds', '', 1, 1410535809, 1410535809, 1, 1, 1, 0),
(115, 116, 1, 'sdsadsdasad', '', 1, 1410535967, 1410535967, 1, 1, 1, 0),
(116, 117, 1, 'sdasdasdasdd', '', 1, 1410536682, 1410536682, 1, 1, 1, 0),
(117, 118, 1, 'gfhfghfghfhfgh', '', 1, 1410536716, 1410536716, 1, 1, 1, 0),
(118, 119, 1, 'dsfsdfsfsdfsfsd', '', 1, 1410537033, 1410537033, 1, 1, 1, 0),
(119, 120, 1, 'dssdsdsadsd', '', 1, 1410537229, 1410537229, 1, 1, 1, 0),
(120, 120, 1, 'sasadasd sadsads sadasd dsdasd', '', 1, 1410537243, 1410537243, 1, 1, 1, 0),
(121, 121, 1, 'Gender', '', 1, 1410541856, 1410541856, 1, 1, 1, 0),
(122, 121, 1, 'health', '', 1, 1410541880, 1410541880, 1, 1, 1, 0),
(123, 122, 1, 'Gender', '', 1, 1410544051, 1410544051, 1, 1, 1, 0),
(124, 122, 1, 'Night', 'Sleep', 1, 1410544092, 1410544092, 1, 1, 1, 0),
(125, 122, 1, 'Morning', 'Sleep', 1, 1410544092, 1410544092, 1, 1, 1, 0),
(126, 123, 1, 'Gender', '', 1, 1410544251, 1410544251, 1, 1, 1, 0),
(127, 123, 1, 'Night', 'Sleep', 1, 1410544280, 1410544280, 1, 1, 1, 0),
(128, 123, 1, 'Morning', 'Sleep', 1, 1410544280, 1410544280, 1, 1, 1, 0),
(129, 124, 1, 'mmpr', '', 1, 1410616501, 1410616501, 1, 1, 1, 0),
(130, 125, 1, 'SSS SSS S S', '', 1, 1410619454, 1410619454, 1, 1, 1, 0),
(131, 126, 1, 'sadsadasdasdasdas sdasda asdasda sdasdasdasda', '', 1, 1410619507, 1410619507, 1, 1, 1, 0),
(132, 127, 1, 'dsfsdfsds fsdfsdfsdf dfsdfsdf fsdfsdf fsdfsdf', '', 1, 1410619798, 1410619798, 1, 1, 1, 0),
(133, 128, 1, 'efdfdfsd fdd f sd fsdf  fd', '', 1, 1410619881, 1410619881, 1, 1, 1, 0),
(134, 128, 1, 'dfdfdsf sdfsdfsdfd sdfsdfsdf', '', 1, 1410619895, 1410619895, 1, 1, 1, 0),
(135, 128, 1, 'sds', 'dfsd sd dfsdfsdf sdffsdfsdfsdd d  ', 1, 1410619914, 1410619914, 1, 1, 1, 0),
(136, 128, 1, 'sdsd', 'dfsd sd dfsdfsdf sdffsdfsdfsdd d  ', 1, 1410619914, 1410619914, 1, 1, 1, 0),
(137, 128, 1, 'asdas', 'dfsd sd dfsdfsdf sdffsdfsdfsdd d  ', 1, 1410619914, 1410619914, 1, 1, 1, 0),
(138, 128, 1, 'das', 'dfsd sd dfsdfsdf sdffsdfsdfsdd d  ', 1, 1410619914, 1410619914, 1, 1, 1, 0),
(139, 129, 1, 'value ', '', 1, 1410621131, 1410621131, 1, 1, 1, 0),
(140, 130, 1, 'Feeling', '', 1, 1410673697, 1410673697, 1, 1, 1, 0),
(141, 130, 1, 'Gender', '', 1, 1410673813, 1410673813, 1, 1, 1, 0),
(142, 131, 1, 'Gender', '', 1, 1410717556, 1410717556, 1, 1, 1, 0),
(143, 131, 1, 'Helth', '', 1, 1410717610, 1410717610, 1, 1, 1, 0),
(144, 132, 1, 'dsds', '', 1, 1411230177, 1411230177, 1, 1, 1, 0),
(145, 133, 1, 'fxfghcxgh ghchgcghcghc', '', 1, 1411375098, 1411375098, 1, 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_question_options`
--

CREATE TABLE IF NOT EXISTS `tbl_question_options` (
  `question_options_id` int(12) NOT NULL AUTO_INCREMENT,
  `questions_id` int(12) NOT NULL COMMENT 'Question id',
  `option_choice_id` int(12) NOT NULL COMMENT 'Question Choice id',
  PRIMARY KEY (`question_options_id`),
  KEY `questions_id` (`questions_id`),
  KEY `option_choice_id` (`option_choice_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=152 ;

--
-- Dumping data for table `tbl_question_options`
--

INSERT INTO `tbl_question_options` (`question_options_id`, `questions_id`, `option_choice_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 6, 1),
(7, 7, 1),
(8, 8, 1),
(9, 9, 1),
(10, 10, 1),
(11, 11, 1),
(12, 15, 2),
(13, 16, 4),
(14, 17, 4),
(15, 18, 4),
(16, 19, 4),
(17, 20, 4),
(18, 21, 4),
(19, 22, 4),
(20, 23, 4),
(21, 24, 4),
(22, 25, 4),
(23, 26, 4),
(24, 27, 4),
(25, 28, 4),
(26, 29, 4),
(27, 30, 3),
(28, 31, 1),
(29, 32, 4),
(30, 33, 2),
(31, 34, 3),
(32, 35, 4),
(33, 36, 1),
(34, 37, 4),
(35, 38, 4),
(36, 39, 4),
(37, 40, 3),
(38, 41, 2),
(41, 42, 2),
(42, 43, 2),
(43, 44, 1),
(44, 45, 1),
(45, 46, 1),
(46, 47, 1),
(53, 48, 1),
(55, 49, 2),
(56, 50, 1),
(57, 51, 4),
(58, 52, 4),
(59, 53, 4),
(60, 54, 4),
(61, 55, 4),
(62, 56, 1),
(63, 57, 1),
(64, 58, 3),
(65, 59, 4),
(66, 60, 4),
(67, 61, 4),
(68, 62, 2),
(69, 63, 2),
(70, 64, 1),
(71, 65, 4),
(72, 66, 4),
(73, 67, 4),
(74, 68, 2),
(75, 69, 1),
(76, 70, 4),
(77, 71, 4),
(78, 72, 4),
(79, 73, 4),
(80, 74, 4),
(81, 75, 4),
(82, 76, 1),
(83, 77, 4),
(84, 78, 4),
(85, 79, 4),
(86, 80, 4),
(87, 81, 4),
(88, 82, 4),
(89, 83, 4),
(90, 84, 4),
(91, 85, 4),
(92, 86, 2),
(93, 87, 4),
(94, 88, 4),
(95, 89, 4),
(96, 90, 1),
(97, 91, 1),
(98, 92, 4),
(99, 93, 4),
(100, 94, 4),
(101, 95, 1),
(102, 96, 4),
(103, 97, 4),
(104, 98, 4),
(105, 99, 1),
(106, 100, 1),
(107, 101, 1),
(108, 102, 4),
(109, 103, 4),
(110, 104, 4),
(111, 105, 3),
(112, 106, 1),
(113, 107, 4),
(114, 108, 4),
(115, 109, 4),
(116, 110, 2),
(117, 111, 1),
(118, 112, 1),
(119, 113, 1),
(120, 114, 2),
(121, 115, 1),
(122, 116, 1),
(123, 117, 2),
(124, 118, 1),
(125, 119, 1),
(126, 120, 2),
(127, 121, 1),
(128, 122, 2),
(129, 123, 1),
(130, 124, 4),
(131, 125, 4),
(132, 126, 1),
(133, 127, 4),
(134, 128, 4),
(135, 129, 3),
(136, 130, 1),
(137, 131, 1),
(138, 132, 3),
(139, 133, 1),
(140, 134, 2),
(141, 135, 4),
(142, 136, 4),
(143, 137, 4),
(144, 138, 4),
(145, 139, 3),
(146, 140, 1),
(147, 141, 1),
(148, 142, 1),
(149, 143, 2),
(150, 144, 1),
(151, 145, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_survey_collection`
--

CREATE TABLE IF NOT EXISTS `tbl_survey_collection` (
  `survey_collection_id` int(12) NOT NULL AUTO_INCREMENT,
  `user_id` int(12) NOT NULL COMMENT 'User id',
  `survey_sections_id` int(12) NOT NULL COMMENT 'Survey Sections id',
  `sections_name` varchar(255) DEFAULT NULL COMMENT 'Sections Name',
  `created_by` int(20) DEFAULT NULL COMMENT 'Created By',
  `modified_by` int(20) DEFAULT NULL COMMENT 'Modified By',
  `created_date` int(10) DEFAULT NULL COMMENT 'Created Date',
  `modified_date` int(10) DEFAULT NULL COMMENT 'Modified Date',
  PRIMARY KEY (`survey_collection_id`),
  KEY `user_id` (`user_id`),
  KEY `survey_sections_id` (`survey_sections_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=101 ;

--
-- Dumping data for table `tbl_survey_collection`
--

INSERT INTO `tbl_survey_collection` (`survey_collection_id`, `user_id`, `survey_sections_id`, `sections_name`, `created_by`, `modified_by`, `created_date`, `modified_date`) VALUES
(7, 12, 20, 'Employee Satisfaction Template', 12, NULL, 1402283899, NULL),
(9, 12, 1, 'Customer Satisfaction Survey', 12, NULL, 1402287511, NULL),
(99, 1, 1, 'Customer Satisfaction Survey', 1, NULL, 1411438924, NULL),
(100, 1, 1, 'Thanush survey for final testing', 1, NULL, 1411440747, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_survey_header`
--

CREATE TABLE IF NOT EXISTS `tbl_survey_header` (
  `survey_name` varchar(255) DEFAULT NULL COMMENT 'Sections Name',
  `instructions` varchar(250) DEFAULT NULL COMMENT 'Sections Title',
  `survey_header_id` int(12) NOT NULL AUTO_INCREMENT,
  `organization_id` int(12) NOT NULL COMMENT 'Organization Header',
  `sections_subheading` varchar(250) DEFAULT NULL COMMENT 'Sections Subheading',
  PRIMARY KEY (`survey_header_id`),
  KEY `organization_id` (`organization_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `tbl_survey_header`
--

INSERT INTO `tbl_survey_header` (`survey_name`, `instructions`, `survey_header_id`, `organization_id`, `sections_subheading`) VALUES
('Customer Surveys', 'Launch your survey today with our well-researched Customer Survey Templates.', 1, 1, 'These sample surveys provide field-tested questions that measure employee satisfaction and influence employee engagement.'),
('HR Surveys', 'Start collecting vital employee feedback using our HR Survey Templates.', 2, 1, 'These industry standard sample surveys contain objective questions that measure customer satisfaction and drivers that influence customer loyalty.'),
('Event Surveys', 'Get valuable pre-event input and post-event feedback using our professionally written Event Survey Templates.', 3, 1, 'These sample surveys help you measure attendee satisfaction and ensure successful events.'),
('Healthcare Surveys', 'Conduct your own patient satisfaction surveys with our professional Healthcare Survey Templates.', 4, 1, 'surveys include a standard HCAHPS hospital survey, as well as surveys that collect critical feedback from healthcare employees.'),
('Higher Education Surveys', 'Deploy surveys throughout your university with our Higher Education Survey Templates. ', 5, 1, 'Our fully customizable sample college surveys help you gather important feedback from students, alumni, and more.'),
('Others', NULL, 6, 1, 'User Defined Surveys'),
('Mobile Survey', 'Survey Sync From Mobile', 7, 3, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_survey_sections`
--

CREATE TABLE IF NOT EXISTS `tbl_survey_sections` (
  `sections_name` varchar(255) DEFAULT NULL COMMENT 'Sections Name',
  `sections_title` varchar(250) DEFAULT NULL COMMENT 'Sections Title',
  `survey_sections_id` int(12) NOT NULL AUTO_INCREMENT,
  `survey_header_id` int(12) NOT NULL COMMENT 'Sections Header',
  `sections_subheading` varchar(250) DEFAULT NULL COMMENT 'Sections Subheading',
  `sections_required_state` tinyint(1) DEFAULT '0' COMMENT 'Sections Status',
  PRIMARY KEY (`survey_sections_id`),
  KEY `survey_header_id` (`survey_header_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=134 ;

--
-- Dumping data for table `tbl_survey_sections`
--

INSERT INTO `tbl_survey_sections` (`sections_name`, `sections_title`, `survey_sections_id`, `survey_header_id`, `sections_subheading`, `sections_required_state`) VALUES
('Customer Satisfaction Survey', 'pre', 1, 1, 'This questionnaire gathers information on consumer behavior and product purchases, and measures the level of satisfaction with sales, technical support, and customer service representatives.', 1),
('In-Store Customer Satisfaction Survey', 'pre', 2, 1, 'This survey measures the quality of service and level of responsiveness experienced by customers at a store. ', 1),
('New Survey', 'NULL', 15, 6, NULL, 0),
('New Survey', 'NULL', 16, 6, NULL, 0),
('New Survey', 'NULL', 17, 6, NULL, 0),
('New Survey', 'NULL', 18, 6, NULL, 0),
('New Customer Satisfaction Survey ', 'pre', 19, 1, 'New Customer Satisfaction Survey Template  ', 1),
('Employee Satisfaction Template', 'pre', 20, 2, 'Employee Satisfaction Template', 1),
('New Survey', NULL, 21, 6, NULL, 0),
('The Survey', NULL, 22, 6, NULL, 0),
('The Survey', NULL, 23, 6, NULL, 0),
('today_09/08/2014', 'post', 24, 6, NULL, 0),
('today_09/08/2014', NULL, 25, 6, NULL, 0),
('today_13/08/2014', NULL, 26, 4, NULL, 0),
('today_13/08/2014', NULL, 27, 4, NULL, 0),
('today_13/08/2014', NULL, 28, 4, NULL, 0),
('today_13/08/2014', NULL, 29, 4, NULL, 0),
('today_13/08/2014', NULL, 30, 4, NULL, 0),
('today_13/08/2014', NULL, 31, 4, NULL, 0),
('today_13/08/2014', NULL, 32, 4, NULL, 0),
('today_13/08/2014', NULL, 33, 4, NULL, 0),
('today_09/08/2014', NULL, 34, 6, NULL, 0),
('today_12/08/2014', NULL, 35, 4, NULL, 0),
('today_12/08/2014', NULL, 36, 2, NULL, 0),
('today_12/08/2014', NULL, 37, 5, NULL, 0),
('today_11/08/2014', NULL, 38, 6, NULL, 0),
('The', NULL, 39, 6, NULL, 0),
('trhytrytryrty', NULL, 40, 1, NULL, 0),
('trhytrytryrty', NULL, 41, 1, NULL, 0),
('trhytrytryrty', NULL, 42, 1, NULL, 0),
('my', NULL, 43, 1, NULL, 0),
('my', NULL, 44, 1, NULL, 0),
('my', NULL, 45, 1, NULL, 0),
('my', NULL, 46, 1, NULL, 0),
('last_01', NULL, 47, 2, NULL, 0),
('The Survey', NULL, 48, 1, NULL, 0),
('The', NULL, 49, 1, NULL, 0),
('The', NULL, 50, 1, NULL, 0),
('The', NULL, 51, 1, NULL, 0),
('The', NULL, 52, 1, NULL, 0),
('The', NULL, 53, 1, NULL, 0),
('The', NULL, 54, 1, NULL, 0),
('final', NULL, 55, 1, NULL, 0),
('Thanush', NULL, 56, 1, NULL, 0),
('Thanush', NULL, 57, 1, NULL, 0),
('Thanush', NULL, 58, 1, NULL, 0),
('The', NULL, 59, 1, NULL, 0),
('today_11/08/2014', NULL, 60, 2, NULL, 0),
('today_09/08/2014', NULL, 61, 1, NULL, 0),
('today_11/08/2014', NULL, 62, 1, NULL, 0),
('today_11/08/2014', NULL, 63, 1, NULL, 0),
('Thanush', NULL, 64, 3, NULL, 0),
('test', NULL, 65, 1, NULL, 0),
('today_09/08/2014', NULL, 66, 4, NULL, 0),
('Test', NULL, 67, 6, NULL, 0),
('Thanush', NULL, 68, 1, NULL, 0),
('Thanush', NULL, 69, 3, NULL, 0),
('today_11/08/2014', NULL, 70, 1, NULL, 0),
('Test_final_survey', NULL, 71, 3, NULL, 0),
('today_16/08/2014', NULL, 72, 1, NULL, 0),
('new test one for space', NULL, 73, 6, NULL, 0),
('Thanush survey for final testing', NULL, 74, 6, NULL, 0),
('Thanush survey for final testing', NULL, 75, 6, NULL, 0),
('Thanush survey for final testing', NULL, 76, 6, NULL, 0),
('Thanush survey for final testing', NULL, 77, 6, NULL, 0),
('Thanush survey for final testing', NULL, 78, 6, NULL, 0),
('Thanush survey for final testing', NULL, 79, 4, NULL, 0),
('Thanush survey', NULL, 80, 6, NULL, 0),
('Thanush survey', NULL, 81, 6, NULL, 0),
('Thanush survey for final testing', NULL, 82, 6, NULL, 0),
('today_16/08/2014', NULL, 83, 6, NULL, 0),
('today_16/08/2014', NULL, 84, 6, NULL, 0),
('test_17-08-2014-11-20', NULL, 85, 6, NULL, 0),
('test_17-08-2014-11-20', NULL, 86, 6, NULL, 0),
('test_17-08-2014-11-20', NULL, 87, 6, NULL, 0),
('Thanush survey for final testing', NULL, 88, 6, NULL, 0),
('Thanush survey for final testing', NULL, 89, 6, NULL, 0),
('Thanush survey for final testing', NULL, 90, 6, NULL, 0),
('Thanush survey for final testing', NULL, 91, 6, NULL, 0),
('The Survey', NULL, 92, 6, NULL, 0),
('The Survey', NULL, 93, 6, NULL, 0),
('The Survey', NULL, 94, 6, NULL, 0),
('The Survey', NULL, 95, 6, NULL, 0),
('The Survey', NULL, 96, 6, NULL, 0),
('Thanush survey for final testing', NULL, 97, 6, NULL, 0),
('Thanush survey for final testing', NULL, 98, 6, NULL, 0),
('test_17-08-2014-11-20_existing', NULL, 99, 6, NULL, 0),
('test_17-08-2014-11-20_existing', NULL, 100, 6, NULL, 0),
('Thanush survey for final testing', NULL, 101, 6, NULL, 0),
('Thanush survey for final testing', NULL, 102, 6, NULL, 0),
('test_17-08-2014-11-20_existing', NULL, 103, 6, NULL, 0),
('test_17-08-2014-11-20_existing', NULL, 104, 6, NULL, 0),
('test_17-08-2014-11-20_existing', NULL, 105, 6, NULL, 0),
('test_17-08-2014-12.57_existing', NULL, 106, 6, NULL, 0),
('test_17-08-2014-12.57_existing', NULL, 107, 6, NULL, 0),
('test_17-08-2014-11-20_existing', NULL, 108, 6, NULL, 0),
('test_17-08-2014-12.59_existing', NULL, 109, 6, NULL, 0),
('test_17-08-2014-01.03_existing', NULL, 110, 6, NULL, 0),
('test_17-08-2014-01.48_existing', NULL, 111, 6, NULL, 0),
('test_17-08-2014-01.59_existing', NULL, 112, 6, NULL, 0),
('Thanush survey for final testing', NULL, 113, 4, NULL, 0),
('today_09/08/2014', NULL, 114, 2, NULL, 0),
('Thanush survey for final testing', NULL, 115, 1, NULL, 0),
('testttttt', NULL, 116, 5, NULL, 0),
('rrrrrer', NULL, 117, 1, NULL, 0),
('hjjhjj', NULL, 118, 1, NULL, 0),
('pppppp', NULL, 119, 1, NULL, 0),
('nneee', NULL, 120, 1, NULL, 0),
('Test final survey on 12/09/2014', NULL, 121, 1, NULL, 0),
('Test final survey on 12/09/2014', NULL, 122, 1, NULL, 0),
('Test final survey on 12/09/2014', NULL, 123, 2, NULL, 0),
('The Survey', NULL, 124, 4, NULL, 0),
('The Survey', NULL, 125, 1, NULL, 0),
('The Survey', NULL, 126, 3, NULL, 0),
('The Survey', NULL, 127, 3, NULL, 0),
('dddddddddddddddddd', NULL, 128, 1, NULL, 0),
('Thanush survey for final testing', NULL, 129, 1, NULL, 0),
('test static', NULL, 130, 3, NULL, 0),
('Thanush survey for final testing', NULL, 131, 3, NULL, 0),
('Test final survey on 12/09/2014', NULL, 132, 1, NULL, 0),
('Thanush survey for final testing', NULL, 133, 4, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_timeline`
--

CREATE TABLE IF NOT EXISTS `tbl_timeline` (
  `timeline_id` int(12) NOT NULL AUTO_INCREMENT,
  `actor_name` varchar(200) DEFAULT NULL COMMENT 'Actor name',
  `respondent` int(10) DEFAULT NULL COMMENT 'Respondent',
  `timeline_uid` varchar(20) NOT NULL COMMENT 'Auto generated internal alphanumeric identifier',
  `modified_date` int(10) DEFAULT NULL COMMENT 'Modified Date',
  `created_by` int(20) DEFAULT NULL COMMENT 'Created By',
  `actor` int(10) DEFAULT NULL COMMENT 'Actor',
  `note` varchar(1000) DEFAULT NULL COMMENT 'Note',
  `record_type` varchar(10) NOT NULL COMMENT 'Record type',
  `action_date` int(10) NOT NULL COMMENT 'Action date',
  `user_name` varchar(100) DEFAULT NULL COMMENT 'Created By',
  `action_type` int(5) NOT NULL COMMENT 'Action type',
  `created_date` int(10) DEFAULT NULL COMMENT 'Created Date',
  `record_id` int(10) NOT NULL COMMENT 'Owner record of timeline',
  `modified_by` int(20) DEFAULT NULL COMMENT 'Modified By',
  `respondent_name` varchar(200) DEFAULT NULL COMMENT 'Respondent name',
  PRIMARY KEY (`timeline_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_unit_of_measures`
--

CREATE TABLE IF NOT EXISTS `tbl_unit_of_measures` (
  `unit_of_measures_id` int(12) NOT NULL AUTO_INCREMENT,
  `unit_of_measures_name` varchar(255) NOT NULL COMMENT 'Unit of Measure Name',
  PRIMARY KEY (`unit_of_measures_id`),
  UNIQUE KEY `uk_users_username` (`unit_of_measures_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tbl_unit_of_measures`
--

INSERT INTO `tbl_unit_of_measures` (`unit_of_measures_id`, `unit_of_measures_name`) VALUES
(1, 'name_01'),
(2, 'name_02');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE IF NOT EXISTS `tbl_users` (
  `username` varchar(255) NOT NULL COMMENT 'Username',
  `phone_number` varchar(20) DEFAULT NULL COMMENT 'Phone number',
  `last_login` int(11) DEFAULT NULL COMMENT 'Last login',
  `user_id` int(12) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT 'Full name',
  `modified_date` int(10) DEFAULT NULL COMMENT 'Modified Date',
  `created_date` int(10) DEFAULT NULL COMMENT 'Created Date',
  `created_by` int(20) DEFAULT NULL COMMENT 'Created By',
  `modified_by` int(20) DEFAULT NULL COMMENT 'Modified By',
  `last_unsuccessful_login` int(11) DEFAULT NULL COMMENT 'Last unsuccessful login',
  `status` int(5) DEFAULT NULL COMMENT 'Status',
  `groups` varchar(255) DEFAULT NULL COMMENT 'Groups',
  `persistent_token` varchar(50) DEFAULT NULL COMMENT 'Persistent token',
  `token_expire_in` int(11) DEFAULT NULL COMMENT 'Token expire in',
  `role` varchar(50) NOT NULL COMMENT 'User role',
  `password` varchar(255) NOT NULL COMMENT 'Password',
  `user_uid` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL COMMENT 'Email',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `uk_users_username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`username`, `phone_number`, `last_login`, `user_id`, `name`, `modified_date`, `created_date`, `created_by`, `modified_by`, `last_unsuccessful_login`, `status`, `groups`, `persistent_token`, `token_expire_in`, `role`, `password`, `user_uid`, `image`, `email`) VALUES
('admin', '0774772658', 0, 1, 'Admin', 1394083412, 1394083412, 1, 1, 0, 1, 'no', NULL, NULL, 'Admin', 'Xn+kIeHfRGVHIZSu2xw4mH6D0K4fOwkKq71X+URoUos=', '1', 'Admin/admin', 'user1@gmail.com'),
('admin@gmail.com', NULL, NULL, 11, 'Thanushan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'User', '8JOSdypDa6v+o7T/374hX3bOj1AhSwe09xAvY6q5TRw=', 'w1qBT', '', 'admin@gmail.com'),
('Thanushcst@gmail.com', '0772002423', NULL, 12, 'Thanushan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'User', 'nFyspVZwJ4jRv7m9ZoPxtcCbUfCgyyh5spk7udKMQ0I=', 'CIgxl', 'Thanushan/thanushan', 'Thanushcst@gmail.com'),
('admin_@gmail.com', NULL, NULL, 13, 'Thanushan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'User', 'LacxpK+z0H8wuN6aKEt3TiyBRUnrMs6UTVurDYASFEo=', '7YMXz', NULL, 'admin_@gmail.com'),
('a@fgf.com', NULL, 1401213534, 14, 'Thanushan', NULL, 1401213534, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'User', 'hhLU9j/FeZoSp9+qbfMGHdV0+Hc7YKeguyLbat8aOzU=', 'Di6as', NULL, 'a@fgf.com'),
('testuser@gmail.com', '0772002423', 1410886573, 15, 'TestUser', NULL, 1410886573, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'User', 'qxskJXN/7WEn3K+u3RewovKVGs5wJNl4AUzaRNeMnek=', 'Yl0PG', NULL, 'testuser@gmail.com'),
('user@gmail.com', '0772002423', 1410886837, 17, 'TestUser', NULL, 1410886837, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'User', 'Ih56k4XpjZgwE8RwewiI3uVC0LeFeBgI9tXSLy1FNpU=', 'BveNx', NULL, 'user@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_groups`
--

CREATE TABLE IF NOT EXISTS `tbl_user_groups` (
  `groups` varchar(255) DEFAULT NULL COMMENT 'Groups',
  `user_group_id` int(12) NOT NULL AUTO_INCREMENT,
  `user_id` int(12) NOT NULL COMMENT 'User id',
  `modified_date` int(10) DEFAULT NULL COMMENT 'Modified Date',
  `created_by` int(20) DEFAULT NULL COMMENT 'Created By',
  `created_date` int(10) DEFAULT NULL COMMENT 'Created Date',
  `modified_by` int(20) DEFAULT NULL COMMENT 'Modified By',
  PRIMARY KEY (`user_group_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_survey_sections`
--

CREATE TABLE IF NOT EXISTS `tbl_user_survey_sections` (
  `user_survey_sections_id` int(12) NOT NULL AUTO_INCREMENT,
  `user_id` int(12) NOT NULL COMMENT 'User id',
  `survey_sections_id` int(12) NOT NULL COMMENT 'Survey Sections id',
  `modified_date` int(10) DEFAULT NULL COMMENT 'Modified Date',
  PRIMARY KEY (`user_survey_sections_id`),
  KEY `user_id` (`user_id`),
  KEY `survey_sections_id` (`survey_sections_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_answers`
--
ALTER TABLE `tbl_answers`
  ADD CONSTRAINT `tbl_answers_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `tbl_users` (`user_id`),
  ADD CONSTRAINT `tbl_answers_ibfk_2` FOREIGN KEY (`question_options_id`) REFERENCES `tbl_question_options` (`question_options_id`),
  ADD CONSTRAINT `tbl_answers_ibfk_3` FOREIGN KEY (`unit_of_measures_id`) REFERENCES `tbl_unit_of_measures` (`unit_of_measures_id`);

--
-- Constraints for table `tbl_data_collection`
--
ALTER TABLE `tbl_data_collection`
  ADD CONSTRAINT `tbl_data_collection_ibfk_1` FOREIGN KEY (`questions_id`) REFERENCES `tbl_questions` (`questions_id`),
  ADD CONSTRAINT `tbl_data_collection_ibfk_2` FOREIGN KEY (`answer_id`) REFERENCES `tbl_answers` (`answer_id`),
  ADD CONSTRAINT `tbl_data_collection_ibfk_3` FOREIGN KEY (`survey_collection_id`) REFERENCES `tbl_survey_collection` (`survey_collection_id`);

--
-- Constraints for table `tbl_option_choices`
--
ALTER TABLE `tbl_option_choices`
  ADD CONSTRAINT `tbl_option_choices_ibfk_1` FOREIGN KEY (`option_group_id`) REFERENCES `tbl_option_group` (`option_group_id`);

--
-- Constraints for table `tbl_questions`
--
ALTER TABLE `tbl_questions`
  ADD CONSTRAINT `tbl_questions_ibfk_1` FOREIGN KEY (`survey_sections_id`) REFERENCES `tbl_survey_sections` (`survey_sections_id`),
  ADD CONSTRAINT `tbl_questions_ibfk_2` FOREIGN KEY (`input_type_id`) REFERENCES `tbl_input_type` (`input_type_id`),
  ADD CONSTRAINT `tbl_questions_ibfk_3` FOREIGN KEY (`option_group_id`) REFERENCES `tbl_option_group` (`option_group_id`);

--
-- Constraints for table `tbl_question_options`
--
ALTER TABLE `tbl_question_options`
  ADD CONSTRAINT `tbl_question_options_ibfk_1` FOREIGN KEY (`questions_id`) REFERENCES `tbl_questions` (`questions_id`),
  ADD CONSTRAINT `tbl_question_options_ibfk_2` FOREIGN KEY (`option_choice_id`) REFERENCES `tbl_option_choices` (`option_choice_id`);

--
-- Constraints for table `tbl_survey_collection`
--
ALTER TABLE `tbl_survey_collection`
  ADD CONSTRAINT `tbl_survey_collection_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `tbl_users` (`user_id`),
  ADD CONSTRAINT `tbl_survey_collection_ibfk_2` FOREIGN KEY (`survey_sections_id`) REFERENCES `tbl_survey_sections` (`survey_sections_id`);

--
-- Constraints for table `tbl_survey_header`
--
ALTER TABLE `tbl_survey_header`
  ADD CONSTRAINT `tbl_survey_header_ibfk_1` FOREIGN KEY (`organization_id`) REFERENCES `tbl_organization` (`organization_id`);

--
-- Constraints for table `tbl_survey_sections`
--
ALTER TABLE `tbl_survey_sections`
  ADD CONSTRAINT `tbl_survey_sections_ibfk_1` FOREIGN KEY (`survey_header_id`) REFERENCES `tbl_survey_header` (`survey_header_id`);

--
-- Constraints for table `tbl_user_groups`
--
ALTER TABLE `tbl_user_groups`
  ADD CONSTRAINT `tbl_user_groups_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `tbl_users` (`user_id`);

--
-- Constraints for table `tbl_user_survey_sections`
--
ALTER TABLE `tbl_user_survey_sections`
  ADD CONSTRAINT `tbl_user_survey_sections_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `tbl_users` (`user_id`),
  ADD CONSTRAINT `tbl_user_survey_sections_ibfk_2` FOREIGN KEY (`survey_sections_id`) REFERENCES `tbl_survey_sections` (`survey_sections_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
