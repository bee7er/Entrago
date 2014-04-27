-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 27, 2014 at 05:59 PM
-- Server version: 5.5.36
-- PHP Version: 5.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `addbook`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE IF NOT EXISTS `book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`id`, `name`, `description`, `created`, `modified`) VALUES
(1, 'Friends', 'A list of my best friends. Primarily friends, family and loved ones.', '2014-04-26 17:29:00', '2014-04-27 14:34:58'),
(3, 'Romans', 'A list of Romans. I don''t know too many Romans, although I have an Italian uncle on my mother''s side, who is a lovely guy; I would like to keep in touch with him.', '2014-04-26 17:37:00', '2014-04-26 17:40:12'),
(4, 'Countrymen', 'A list of country folk. Mainly my wife''s cousins who live in the west country. Don''t see them very often, so it is important to hang onto their contact details.', '2014-04-26 17:38:00', '2014-04-26 17:40:29');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE IF NOT EXISTS `contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `book_id` int(11) NOT NULL,
  `first` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `last` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_83DFDFA416A2B381` (`book_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `book_id`, `first`, `last`, `email`, `mobile`, `created`, `modified`) VALUES
(1, 1, 'Vivian', 'Roswell', 'vroswell@area51.gov.usa', '07787999100', '2014-04-26 00:00:00', '2014-04-27 09:07:48'),
(2, 4, 'Charlie', 'Farley', 'chas@gmail.com', '07870123654', '2014-04-26 22:25:00', '2014-04-26 22:29:57'),
(3, 4, 'Piggy', 'Malone', 'piggy@yahoo.com', '07653111333', '2014-04-26 22:38:00', '2014-04-26 22:38:27'),
(4, 3, 'Giovanni', 'Emoli', 'giovanni@yahoo.it', '+39 7863555444', '2014-04-27 17:00:26', '2014-04-27 17:00:26');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `contact`
--
ALTER TABLE `contact`
  ADD CONSTRAINT `FK_83DFDFA416A2B381` FOREIGN KEY (`book_id`) REFERENCES `book` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
