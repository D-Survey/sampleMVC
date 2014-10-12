-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 23, 2014 at 06:03 AM
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
