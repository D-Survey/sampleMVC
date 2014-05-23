-- phpMyAdmin SQL Dump
-- version 4.0.6deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 23, 2014 at 03:16 PM
-- Server version: 5.5.37-0ubuntu0.13.10.1
-- PHP Version: 5.5.3-1ubuntu2.3

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

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
(13, 1, 3, 0, 'No', 1, NULL, NULL, NULL, NULL, NULL, NULL, 1);

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
  `modified_date` int(10) DEFAULT NULL COMMENT 'Modified Date',
  `created_date` int(10) DEFAULT NULL COMMENT 'Created Date',
  `created_by` int(20) DEFAULT NULL COMMENT 'Created By',
  `modified_by` int(20) DEFAULT NULL COMMENT 'Modified By',
  `option_group_id` int(12) NOT NULL COMMENT 'Option Group id',
  `allow_multiple_answer_state` tinyint(1) NOT NULL COMMENT 'Multiple Option State',
  PRIMARY KEY (`questions_id`),
  UNIQUE KEY `uk_users_username` (`questions_name`),
  KEY `survey_sections_id` (`survey_sections_id`),
  KEY `input_type_id` (`input_type_id`),
  KEY `option_group_id` (`option_group_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tbl_questions`
--

INSERT INTO `tbl_questions` (`questions_id`, `survey_sections_id`, `input_type_id`, `questions_name`, `questions_subtext`, `answer_required_state`, `modified_date`, `created_date`, `created_by`, `modified_by`, `option_group_id`, `allow_multiple_answer_state`) VALUES
(1, 1, 1, 'How easy is it to find a Consumer Shopping website over the internet?', NULL, 1, NULL, NULL, NULL, NULL, 1, 0),
(2, 1, 1, 'How often do you use online services to purchase products?', NULL, 1, NULL, NULL, NULL, NULL, 1, 0),
(3, 1, 1, 'Would you recommend [Company Name] to others you know?', NULL, 1, NULL, NULL, NULL, NULL, 1, 0);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tbl_question_options`
--

INSERT INTO `tbl_question_options` (`question_options_id`, `questions_id`, `option_choice_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `tbl_survey_header`
--

INSERT INTO `tbl_survey_header` (`survey_name`, `instructions`, `survey_header_id`, `organization_id`, `sections_subheading`) VALUES
('HR Surveys', 'Start collecting vital employee feedback using our HR Survey Templates.', 1, 1, 'These sample surveys provide field-tested questions that measure employee satisfaction and influence employee engagement.'),
('Customer Surveys', 'Launch your survey today with our well-researched Customer Survey Templates.', 2, 1, 'These industry standard sample surveys contain objective questions that measure customer satisfaction and drivers that influence customer loyalty.'),
('Event Surveys', 'Get valuable pre-event input and post-event feedback using our professionally written Event Survey Templates.', 3, 1, 'These sample surveys help you measure attendee satisfaction and ensure successful events.'),
('Healthcare Surveys', 'Conduct your own patient satisfaction surveys with our professional Healthcare Survey Templates.', 4, 1, 'surveys include a standard HCAHPS hospital survey, as well as surveys that collect critical feedback from healthcare employees.'),
('Higher Education Surveys', 'Deploy surveys throughout your university with our Higher Education Survey Templates. ', 5, 1, 'Our fully customizable sample college surveys help you gather important feedback from students, alumni, and more.');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tbl_survey_sections`
--

INSERT INTO `tbl_survey_sections` (`sections_name`, `sections_title`, `survey_sections_id`, `survey_header_id`, `sections_subheading`, `sections_required_state`) VALUES
('Customer Satisfaction Survey', NULL, 1, 1, 'This questionnaire gathers information on consumer behavior and product purchases, and measures the level of satisfaction with sales, technical support, and customer service representatives.', 1),
('In-Store Customer Satisfaction Survey', NULL, 2, 1, 'This survey measures the quality of service and level of responsiveness experienced by customers at a store. ', 1);

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
  `user_uid` varchar(20) NOT NULL COMMENT 'Auto generated internal alphanumeric identifier',
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
  `email` varchar(255) NOT NULL COMMENT 'Email',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `uk_users_username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`username`, `phone_number`, `user_uid`, `last_login`, `user_id`, `name`, `modified_date`, `created_date`, `created_by`, `modified_by`, `last_unsuccessful_login`, `status`, `groups`, `persistent_token`, `token_expire_in`, `role`, `password`, `email`) VALUES
('admin', '0701234567', '1', 0, 1, 'root', 1394083412, 1394083412, 1, 1, 0, 1, 'no', NULL, NULL, 'ADMIN', 'root', 'user1@gmail.com');

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
