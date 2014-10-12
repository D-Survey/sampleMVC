-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 07, 2014 at 05:21 AM
-- Server version: 5.5.17
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Table structure for table `tbl_actor_types`
--

CREATE TABLE IF NOT EXISTS `tbl_actor_types` (
  `modified_date` int(10) DEFAULT NULL COMMENT 'Modified Date',
  `modified_by` int(20) DEFAULT NULL COMMENT 'Modified By',
  `name` varchar(200) NOT NULL COMMENT 'Actor/Institution Name',
  `labels` varchar(500) DEFAULT NULL COMMENT 'Labels',
  `created_by` int(20) DEFAULT NULL COMMENT 'Created By',
  `phone` varchar(300) DEFAULT NULL COMMENT 'Phone (comma separated)',
  `address` varchar(300) DEFAULT NULL COMMENT 'Address',
  `created_date` int(10) DEFAULT NULL COMMENT 'Created Date',
  `actor_type_id` int(12) NOT NULL AUTO_INCREMENT,
  `actor_type_uid` varchar(20) NOT NULL COMMENT 'Auto generated internal alphanumeric identifier',
  PRIMARY KEY (`actor_type_id`),
  UNIQUE KEY `uk_actor_types_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_answers`
--

CREATE TABLE IF NOT EXISTS `tbl_answers` (
  `answer_id` int(12) NOT NULL AUTO_INCREMENT,
  `user_id` int(12) NOT NULL COMMENT 'User id',
  `question_options_id` int(12) NOT NULL COMMENT 'Question id',
  `answer_number` int(12) NOT NULL COMMENT 'anwser Numberic',
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=54 ;

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
(53, 1, 11, 0, 'None at all', 1, NULL, NULL, NULL, NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_audit`
--

CREATE TABLE IF NOT EXISTS `tbl_audit` (
  `entity_id` varchar(20) NOT NULL COMMENT 'Entity id',
  `action_type` varchar(50) NOT NULL COMMENT 'Action type',
  `entity_type` varchar(30) NOT NULL COMMENT 'Entity type',
  `time_stamp` int(10) DEFAULT NULL COMMENT 'Timestamp',
  `audit_id` int(12) NOT NULL AUTO_INCREMENT,
  `data` varchar(8000) DEFAULT NULL COMMENT 'Data',
  `action_by` int(11) NOT NULL COMMENT 'Action by',
  PRIMARY KEY (`audit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=155 ;

--
-- Dumping data for table `tbl_data_collection`
--

INSERT INTO `tbl_data_collection` (`data_collection_id`, `questions_id`, `answer_id`, `survey_collection_id`, `collection_value`) VALUES
(1, 1, 1, 1, 5),
(2, 1, 2, 1, 2),
(3, 1, 3, 1, 1),
(4, 1, 4, 1, 1),
(5, 1, 5, 1, 1),
(6, 2, 6, 1, 1),
(7, 2, 7, 1, 8),
(8, 2, 8, 1, 1),
(9, 2, 9, 1, 1),
(10, 2, 10, 1, 2),
(11, 3, 11, 1, 1),
(12, 3, 12, 1, 3),
(13, 3, 13, 1, 7),
(14, 1, 1, 2, 1),
(15, 1, 2, 2, 0),
(16, 1, 3, 2, 2),
(17, 1, 4, 2, 0),
(18, 1, 5, 2, 2),
(19, 2, 6, 2, 0),
(20, 2, 7, 2, 0),
(21, 2, 8, 2, 3),
(22, 2, 9, 2, 1),
(23, 2, 10, 2, 1),
(24, 3, 11, 2, 0),
(25, 3, 12, 2, 2),
(26, 3, 13, 2, 3),
(27, 1, 1, 2, 1),
(28, 1, 2, 2, 0),
(29, 1, 3, 2, 2),
(30, 1, 4, 2, 0),
(31, 1, 5, 2, 2),
(32, 2, 6, 2, 0),
(33, 2, 7, 2, 0),
(34, 2, 8, 2, 3),
(35, 2, 9, 2, 1),
(36, 2, 10, 2, 1),
(37, 3, 11, 2, 0),
(38, 3, 12, 2, 2),
(39, 3, 13, 2, 3),
(40, 1, 1, 2, 1),
(41, 1, 2, 2, 0),
(42, 1, 3, 2, 2),
(43, 1, 4, 2, 0),
(44, 1, 5, 2, 2),
(45, 2, 6, 2, 0),
(46, 2, 7, 2, 0),
(47, 2, 8, 2, 3),
(48, 2, 9, 2, 1),
(49, 2, 10, 2, 1),
(50, 3, 11, 2, 0),
(51, 3, 12, 2, 2),
(52, 3, 13, 2, 3),
(53, 1, 1, 2, 1),
(54, 1, 2, 2, 0),
(55, 1, 3, 2, 2),
(56, 1, 4, 2, 0),
(57, 1, 5, 2, 2),
(58, 2, 6, 2, 0),
(59, 2, 7, 2, 0),
(60, 2, 8, 2, 3),
(61, 2, 9, 2, 1),
(62, 2, 10, 2, 1),
(63, 3, 11, 2, 0),
(64, 3, 12, 2, 2),
(65, 3, 13, 2, 3),
(66, 1, 1, 3, 0),
(67, 1, 2, 3, 2),
(68, 1, 3, 3, 0),
(69, 1, 4, 3, 0),
(70, 1, 5, 3, 0),
(71, 2, 6, 3, 2),
(72, 2, 7, 3, 0),
(73, 2, 8, 3, 0),
(74, 2, 9, 3, 0),
(75, 2, 10, 3, 0),
(76, 3, 11, 3, 0),
(77, 3, 12, 3, 0),
(78, 3, 13, 3, 2),
(79, 7, 29, 6, 1),
(80, 7, 30, 6, 0),
(81, 7, 31, 6, 0),
(82, 7, 32, 6, 0),
(83, 7, 33, 6, 0),
(84, 8, 34, 6, 0),
(85, 8, 35, 6, 1),
(86, 8, 36, 6, 0),
(87, 8, 37, 6, 0),
(88, 8, 38, 6, 0),
(89, 9, 39, 6, 0),
(90, 9, 40, 6, 1),
(91, 9, 41, 6, 0),
(92, 9, 42, 6, 0),
(93, 9, 43, 6, 0),
(94, 10, 44, 6, 0),
(95, 10, 45, 6, 1),
(96, 10, 46, 6, 0),
(97, 10, 47, 6, 0),
(98, 10, 48, 6, 0),
(99, 11, 49, 6, 0),
(100, 11, 50, 6, 0),
(101, 11, 51, 6, 0),
(102, 11, 52, 6, 1),
(103, 11, 53, 6, 0),
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
(129, 1, 1, 8, 0),
(130, 1, 2, 8, 0),
(131, 1, 3, 8, 0),
(132, 1, 4, 8, 0),
(133, 1, 5, 8, 0),
(134, 2, 6, 8, 0),
(135, 2, 7, 8, 0),
(136, 2, 8, 8, 0),
(137, 2, 9, 8, 0),
(138, 2, 10, 8, 0),
(139, 3, 11, 8, 0),
(140, 3, 12, 8, 0),
(141, 3, 13, 8, 0),
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
(154, 3, 13, 9, 0);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tbl_organization`
--

INSERT INTO `tbl_organization` (`organization_id`, `organization_name`) VALUES
(1, 'D-Survey'),
(2, 'GloSoft Solutions');

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
  UNIQUE KEY `uk_users_username` (`questions_name`),
  KEY `survey_sections_id` (`survey_sections_id`),
  KEY `input_type_id` (`input_type_id`),
  KEY `option_group_id` (`option_group_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

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
(11, 20, 1, 'How much do your opinions about work matter to your co-workers?', NULL, 1, 0, 0, 0, 0, 1, 0);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

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
(11, 11, 1);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `tbl_survey_collection`
--

INSERT INTO `tbl_survey_collection` (`survey_collection_id`, `user_id`, `survey_sections_id`, `sections_name`, `created_by`, `modified_by`, `created_date`, `modified_date`) VALUES
(1, 1, 1, 'Customer Satisfaction Survey', 1, NULL, 1401725835, NULL),
(2, 1, 1, 'Customer Satisfaction Survey', 1, NULL, 1401894179, NULL),
(3, 1, 1, 'Customer Satisfaction Survey', 1, NULL, 1402136621, NULL),
(4, 1, 2, 'In-Store Customer Satisfaction Survey', 1, NULL, 1402198314, NULL),
(5, 1, 1, 'Customer Satisfaction Survey', 1, NULL, 1402205898, NULL),
(6, 1, 20, 'Employee Satisfaction Template', 1, NULL, 1402238838, NULL),
(7, 12, 20, 'Employee Satisfaction Template', 12, NULL, 1402283899, NULL),
(8, 12, 1, 'Customer Satisfaction Survey', 12, NULL, 1402283968, NULL),
(9, 12, 1, 'Customer Satisfaction Survey', 12, NULL, 1402287511, NULL);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `tbl_survey_header`
--

INSERT INTO `tbl_survey_header` (`survey_name`, `instructions`, `survey_header_id`, `organization_id`, `sections_subheading`) VALUES
('Customer Surveys', 'Launch your survey today with our well-researched Customer Survey Templates.', 1, 1, 'These sample surveys provide field-tested questions that measure employee satisfaction and influence employee engagement.'),
('HR Surveys', 'Start collecting vital employee feedback using our HR Survey Templates.', 2, 1, 'These industry standard sample surveys contain objective questions that measure customer satisfaction and drivers that influence customer loyalty.'),
('Event Surveys', 'Get valuable pre-event input and post-event feedback using our professionally written Event Survey Templates.', 3, 1, 'These sample surveys help you measure attendee satisfaction and ensure successful events.'),
('Healthcare Surveys', 'Conduct your own patient satisfaction surveys with our professional Healthcare Survey Templates.', 4, 1, 'surveys include a standard HCAHPS hospital survey, as well as surveys that collect critical feedback from healthcare employees.'),
('Higher Education Surveys', 'Deploy surveys throughout your university with our Higher Education Survey Templates. ', 5, 1, 'Our fully customizable sample college surveys help you gather important feedback from students, alumni, and more.'),
('Others', NULL, 6, 2, 'User Defined Surveys');

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
  `sections_required_state` tinyint(1) DEFAULT NULL COMMENT 'Sections Status',
  PRIMARY KEY (`survey_sections_id`),
  KEY `survey_header_id` (`survey_header_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

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
('New Survey', NULL, 21, 6, NULL, 0);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`username`, `phone_number`, `last_login`, `user_id`, `name`, `modified_date`, `created_date`, `created_by`, `modified_by`, `last_unsuccessful_login`, `status`, `groups`, `persistent_token`, `token_expire_in`, `role`, `password`, `user_uid`, `image`, `email`) VALUES
('admin', '0774772569', 0, 1, 'Admin', 1394083412, 1394083412, 1, 1, 0, 1, 'no', NULL, NULL, 'Admin', 'Xn+kIeHfRGVHIZSu2xw4mH6D0K4fOwkKq71X+URoUos=', '1', 'Admin/admin', 'user1@gmail.com'),
('admin@gmail.com', NULL, NULL, 11, 'Thanushan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'User', '8JOSdypDa6v+o7T/374hX3bOj1AhSwe09xAvY6q5TRw=', 'w1qBT', '', 'admin@gmail.com'),
('Thanushcst@gmail.com', '0772002423', NULL, 12, 'Thanushan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'User', 'nFyspVZwJ4jRv7m9ZoPxtcCbUfCgyyh5spk7udKMQ0I=', 'CIgxl', 'Thanushan/thanushan', 'Thanushcst@gmail.com'),
('admin_@gmail.com', NULL, NULL, 13, 'Thanushan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'User', 'LacxpK+z0H8wuN6aKEt3TiyBRUnrMs6UTVurDYASFEo=', '7YMXz', NULL, 'admin_@gmail.com'),
('a@fgf.com', NULL, 1401213534, 14, 'Thanushan', NULL, 1401213534, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'User', 'hhLU9j/FeZoSp9+qbfMGHdV0+Hc7YKeguyLbat8aOzU=', 'Di6as', NULL, 'a@fgf.com');

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
