
-- phpMyAdmin SQL Dump
-- version 2.11.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 23, 2014 at 06:48 AM
-- Server version: 5.1.57
-- PHP Version: 5.2.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Database: `a1391577_dSurvey`
--

-- --------------------------------------------------------

--
-- Table structure for table `mobileanswer`
--

CREATE TABLE `mobileanswer` (
  `answer_id` int(10) DEFAULT NULL,
  `mobi_survey_id` int(10) DEFAULT NULL,
  `question_options_id` int(10) DEFAULT NULL,
  `answer_text` varchar(250) DEFAULT NULL,
  `collection_value` int(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mobileanswer`
--

INSERT INTO `mobileanswer` VALUES(1, 2, 1, 'Extremely easy', 1);
INSERT INTO `mobileanswer` VALUES(2, 2, 1, 'Very easy', 2);
INSERT INTO `mobileanswer` VALUES(3, 2, 1, 'Moderately easy', 0);
INSERT INTO `mobileanswer` VALUES(4, 2, 1, 'Slightly easy', 0);
INSERT INTO `mobileanswer` VALUES(5, 2, 1, 'Not easy at all', 0);
INSERT INTO `mobileanswer` VALUES(6, 2, 2, 'Always', 0);
INSERT INTO `mobileanswer` VALUES(7, 2, 2, 'Often', 0);
INSERT INTO `mobileanswer` VALUES(8, 2, 2, 'Seldom', 1);
INSERT INTO `mobileanswer` VALUES(9, 2, 2, 'Never', 0);
INSERT INTO `mobileanswer` VALUES(10, 2, 2, 'N/A', 0);
INSERT INTO `mobileanswer` VALUES(11, 2, 3, 'Yes', 0);
INSERT INTO `mobileanswer` VALUES(12, 2, 3, 'Not Sure', 1);
INSERT INTO `mobileanswer` VALUES(13, 2, 3, 'No', 0);
