-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Apr 02, 2017 at 05:33 PM
-- Server version: 5.6.33
-- PHP Version: 7.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `isabellerae`
--

-- --------------------------------------------------------

--
-- Table structure for table `Blog`
--

CREATE TABLE `Blog` (
  `ID` int(11) NOT NULL,
  `PostsPerPage` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Blog`
--

INSERT INTO `Blog` (`ID`, `PostsPerPage`) VALUES
(1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `BlogCategory`
--

CREATE TABLE `BlogCategory` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('BlogCategory') DEFAULT 'BlogCategory',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `URLSegment` varchar(255) DEFAULT NULL,
  `BlogID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `BlogEntry`
--

CREATE TABLE `BlogEntry` (
  `ID` int(11) NOT NULL,
  `Date` datetime DEFAULT NULL,
  `Author` mediumtext,
  `Tags` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `BlogEntry_Live`
--

CREATE TABLE `BlogEntry_Live` (
  `ID` int(11) NOT NULL,
  `Date` datetime DEFAULT NULL,
  `Author` mediumtext,
  `Tags` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `BlogEntry_versions`
--

CREATE TABLE `BlogEntry_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `Date` datetime DEFAULT NULL,
  `Author` mediumtext,
  `Tags` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `BlogHolder`
--

CREATE TABLE `BlogHolder` (
  `ID` int(11) NOT NULL,
  `AllowCustomAuthors` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ShowFullEntry` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `OwnerID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `BlogHolder_Live`
--

CREATE TABLE `BlogHolder_Live` (
  `ID` int(11) NOT NULL,
  `AllowCustomAuthors` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ShowFullEntry` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `OwnerID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `BlogHolder_versions`
--

CREATE TABLE `BlogHolder_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `AllowCustomAuthors` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ShowFullEntry` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `OwnerID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `BlogPost`
--

CREATE TABLE `BlogPost` (
  `ID` int(11) NOT NULL,
  `PublishDate` datetime DEFAULT NULL,
  `AuthorNames` varchar(1024) DEFAULT NULL,
  `Summary` mediumtext,
  `FeaturedImageID` int(11) NOT NULL DEFAULT '0',
  `DoubleHeight` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ThumbnailImageID` int(11) NOT NULL DEFAULT '0',
  `Introduction` mediumtext,
  `Country` mediumtext,
  `City` mediumtext,
  `DateVisited` date DEFAULT NULL,
  `CountryID` int(11) NOT NULL DEFAULT '0',
  `CountryIDID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `BlogPost`
--

INSERT INTO `BlogPost` (`ID`, `PublishDate`, `AuthorNames`, `Summary`, `FeaturedImageID`, `DoubleHeight`, `ThumbnailImageID`, `Introduction`, `Country`, `City`, `DateVisited`, `CountryID`, `CountryIDID`) VALUES
(6, '2016-02-11 11:03:00', NULL, NULL, 3, 1, 39, 'Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.', '1', 'Bali', '2015-06-25', 9, 0),
(13, '2016-03-07 09:00:00', NULL, NULL, 0, 1, 62, NULL, NULL, 'Bangkok', '2016-03-01', 1, 0),
(14, '2016-03-07 16:28:00', NULL, NULL, 0, 1, 81, NULL, NULL, 'Chiang Mai', '2016-03-05', 1, 0),
(15, '2016-01-01 16:57:00', NULL, NULL, 0, 1, 278, NULL, NULL, NULL, '2016-01-01', 10, 0),
(16, '2016-03-14 00:00:00', NULL, NULL, 0, 1, 141, NULL, NULL, 'Mekong River', '2016-03-09', 2, 0),
(17, '2016-03-12 13:20:00', NULL, NULL, 0, 1, 129, NULL, NULL, 'Chiang Rai', '2016-03-08', 1, 0),
(18, '2016-03-15 14:24:00', NULL, NULL, 0, 1, 242, NULL, NULL, 'Luang Prabang', '2016-03-10', 2, 0),
(19, '2016-03-17 14:55:00', NULL, NULL, 0, 1, 237, NULL, NULL, 'Luang Prabang', '2016-03-11', 2, 0),
(20, '2016-03-18 15:11:00', NULL, NULL, 0, 1, 220, NULL, NULL, 'Vang Vieng', '2016-03-16', 2, 0),
(21, '2016-03-19 15:26:00', NULL, NULL, 0, 1, 236, NULL, NULL, 'Vientiane', '2016-03-17', 2, 0),
(22, '2016-03-30 16:08:00', NULL, NULL, 0, 1, 244, NULL, NULL, 'Hanoi', '2016-03-18', 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `BlogPost_Authors`
--

CREATE TABLE `BlogPost_Authors` (
  `ID` int(11) NOT NULL,
  `BlogPostID` int(11) NOT NULL DEFAULT '0',
  `MemberID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `BlogPost_Authors`
--

INSERT INTO `BlogPost_Authors` (`ID`, `BlogPostID`, `MemberID`) VALUES
(1, 6, 1),
(2, 7, 1),
(3, 8, 1),
(4, 9, 1),
(5, 10, 1),
(6, 11, 1),
(7, 12, 1),
(8, 13, 1),
(9, 14, 1),
(10, 15, 1),
(11, 16, 1),
(12, 17, 1),
(13, 18, 1),
(14, 19, 1),
(15, 20, 1),
(16, 21, 1),
(17, 22, 1);

-- --------------------------------------------------------

--
-- Table structure for table `BlogPost_Categories`
--

CREATE TABLE `BlogPost_Categories` (
  `ID` int(11) NOT NULL,
  `BlogPostID` int(11) NOT NULL DEFAULT '0',
  `BlogCategoryID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `BlogPost_Live`
--

CREATE TABLE `BlogPost_Live` (
  `ID` int(11) NOT NULL,
  `PublishDate` datetime DEFAULT NULL,
  `AuthorNames` varchar(1024) DEFAULT NULL,
  `Summary` mediumtext,
  `FeaturedImageID` int(11) NOT NULL DEFAULT '0',
  `DoubleHeight` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ThumbnailImageID` int(11) NOT NULL DEFAULT '0',
  `Introduction` mediumtext,
  `Country` mediumtext,
  `City` mediumtext,
  `DateVisited` date DEFAULT NULL,
  `CountryID` int(11) NOT NULL DEFAULT '0',
  `CountryIDID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `BlogPost_Live`
--

INSERT INTO `BlogPost_Live` (`ID`, `PublishDate`, `AuthorNames`, `Summary`, `FeaturedImageID`, `DoubleHeight`, `ThumbnailImageID`, `Introduction`, `Country`, `City`, `DateVisited`, `CountryID`, `CountryIDID`) VALUES
(6, '2016-02-11 11:03:00', NULL, NULL, 3, 1, 39, 'Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.', '1', 'Bali', '2015-06-25', 9, 0),
(13, '2016-03-07 09:00:00', NULL, NULL, 0, 1, 62, NULL, NULL, 'Bangkok', '2016-03-01', 1, 0),
(14, '2016-03-07 16:28:00', NULL, NULL, 0, 1, 81, NULL, NULL, 'Chiang Mai', '2016-03-05', 1, 0),
(15, '2016-01-01 16:57:00', NULL, NULL, 0, 1, 278, NULL, NULL, NULL, '2016-01-01', 10, 0),
(16, '2016-03-14 00:00:00', NULL, NULL, 0, 1, 141, NULL, NULL, 'Mekong River', '2016-03-09', 2, 0),
(17, '2016-03-12 13:20:00', NULL, NULL, 0, 1, 129, NULL, NULL, 'Chiang Rai', '2016-03-08', 1, 0),
(18, '2016-03-15 14:24:00', NULL, NULL, 0, 1, 242, NULL, NULL, 'Luang Prabang', '2016-03-10', 2, 0),
(19, '2016-03-17 14:55:00', NULL, NULL, 0, 1, 237, NULL, NULL, 'Luang Prabang', '2016-03-11', 2, 0),
(20, '2016-03-18 15:11:00', NULL, NULL, 0, 1, 220, NULL, NULL, 'Vang Vieng', '2016-03-16', 2, 0),
(21, '2016-03-19 15:26:00', NULL, NULL, 0, 1, 236, NULL, NULL, 'Vientiane', '2016-03-17', 2, 0),
(22, '2016-03-30 16:08:00', NULL, NULL, 0, 1, 244, NULL, NULL, 'Hanoi', '2016-03-18', 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `BlogPost_Tags`
--

CREATE TABLE `BlogPost_Tags` (
  `ID` int(11) NOT NULL,
  `BlogPostID` int(11) NOT NULL DEFAULT '0',
  `BlogTagID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `BlogPost_versions`
--

CREATE TABLE `BlogPost_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `PublishDate` datetime DEFAULT NULL,
  `AuthorNames` varchar(1024) DEFAULT NULL,
  `Summary` mediumtext,
  `FeaturedImageID` int(11) NOT NULL DEFAULT '0',
  `DoubleHeight` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ThumbnailImageID` int(11) NOT NULL DEFAULT '0',
  `Introduction` mediumtext,
  `Country` mediumtext,
  `City` mediumtext,
  `DateVisited` date DEFAULT NULL,
  `CountryID` int(11) NOT NULL DEFAULT '0',
  `CountryIDID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `BlogPost_versions`
--

INSERT INTO `BlogPost_versions` (`ID`, `RecordID`, `Version`, `PublishDate`, `AuthorNames`, `Summary`, `FeaturedImageID`, `DoubleHeight`, `ThumbnailImageID`, `Introduction`, `Country`, `City`, `DateVisited`, `CountryID`, `CountryIDID`) VALUES
(1, 6, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0),
(2, 6, 2, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0),
(3, 6, 3, '2016-02-11 11:03:00', NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0),
(4, 6, 4, '2016-02-11 11:03:00', NULL, NULL, 3, 0, 4, NULL, NULL, NULL, NULL, 0, 0),
(5, 7, 1, '2016-02-11 11:03:00', NULL, NULL, 3, 0, 4, NULL, NULL, NULL, NULL, 0, 0),
(6, 8, 1, '2016-02-11 11:03:00', NULL, NULL, 3, 0, 4, NULL, NULL, NULL, NULL, 0, 0),
(7, 8, 2, '2016-02-11 11:03:00', NULL, NULL, 3, 1, 4, NULL, NULL, NULL, NULL, 0, 0),
(8, 9, 1, '2016-02-11 11:03:00', NULL, NULL, 3, 1, 4, NULL, NULL, NULL, NULL, 0, 0),
(9, 10, 1, '2016-02-11 11:03:00', NULL, NULL, 3, 0, 4, NULL, NULL, NULL, NULL, 0, 0),
(10, 11, 1, '2016-02-11 11:03:00', NULL, NULL, 3, 0, 4, NULL, NULL, NULL, NULL, 0, 0),
(11, 11, 2, '2016-02-11 11:03:00', NULL, NULL, 3, 1, 4, NULL, NULL, NULL, NULL, 0, 0),
(12, 12, 1, '2016-02-11 11:03:00', NULL, NULL, 3, 0, 4, NULL, NULL, NULL, NULL, 0, 0),
(13, 9, 2, '2016-02-11 11:03:00', NULL, NULL, 0, 1, 0, NULL, NULL, NULL, NULL, 0, 0),
(14, 7, 2, '2016-02-11 11:03:00', NULL, NULL, 0, 0, 6, NULL, NULL, NULL, NULL, 0, 0),
(15, 6, 5, '2016-02-11 11:03:00', NULL, NULL, 3, 0, 4, NULL, NULL, NULL, NULL, 0, 0),
(16, 6, 6, '2016-02-11 11:03:00', NULL, NULL, 3, 0, 4, 'Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.', NULL, NULL, NULL, 0, 0),
(17, 6, 7, '2016-02-11 11:03:00', NULL, NULL, 3, 0, 4, NULL, NULL, NULL, NULL, 0, 0),
(18, 6, 8, '2016-02-11 11:03:00', NULL, NULL, 3, 0, 4, NULL, NULL, NULL, NULL, 0, 0),
(19, 6, 9, '2016-02-11 11:03:00', NULL, NULL, 3, 0, 4, NULL, NULL, NULL, NULL, 0, 0),
(20, 6, 10, '2016-02-11 11:03:00', NULL, NULL, 3, 0, 4, NULL, 'Thailand', 'Bangkok', '2016-03-01', 0, 0),
(21, 6, 11, '2016-02-11 11:03:00', NULL, NULL, 3, 0, 4, NULL, '1', 'Bangkok', '2016-03-01', 0, 0),
(22, 6, 12, '2016-02-11 11:03:00', NULL, NULL, 3, 0, 4, NULL, NULL, 'Bangkok', '2016-03-01', 0, 0),
(23, 6, 13, '2016-02-11 11:03:00', NULL, NULL, 3, 0, 4, NULL, NULL, 'Bangkok', '2016-03-01', 4, 0),
(24, 6, 14, '2016-02-11 11:03:00', NULL, NULL, 3, 0, 4, NULL, NULL, 'Bangkok', '2016-03-01', 1, 0),
(25, 6, 15, '2016-02-11 11:03:00', NULL, NULL, 3, 0, 4, NULL, NULL, 'Bangkok', '2016-03-01', 1, 0),
(26, 7, 3, '2016-02-11 11:03:00', NULL, NULL, 0, 0, 6, NULL, NULL, 'Vientiane', NULL, 2, 0),
(27, 7, 4, '2016-02-11 11:03:00', NULL, NULL, 0, 0, 6, NULL, NULL, 'Vientiane', '2016-02-18', 2, 0),
(28, 8, 3, '2016-02-11 11:03:00', NULL, NULL, 3, 1, 4, NULL, NULL, 'Hanoi', NULL, 3, 0),
(29, 9, 3, '2016-02-11 11:03:00', NULL, NULL, 0, 1, 0, NULL, NULL, NULL, NULL, 4, 0),
(30, 8, 4, '2016-02-11 11:03:00', NULL, NULL, 3, 1, 4, NULL, NULL, 'Hanoi', NULL, 3, 0),
(31, 8, 5, '2016-02-11 11:03:00', NULL, NULL, 3, 1, 4, NULL, NULL, 'Hanoi', NULL, 3, 0),
(32, 10, 2, '2016-02-11 11:03:00', NULL, NULL, 3, 0, 4, NULL, NULL, NULL, NULL, 9, 0),
(33, 10, 3, '2016-02-11 11:03:00', NULL, NULL, 3, 0, 4, NULL, NULL, 'Bali', NULL, 9, 0),
(34, 6, 16, '2016-02-11 11:03:00', NULL, NULL, 3, 0, 4, NULL, NULL, 'Bangkok', '2016-03-01', 1, 0),
(35, 6, 17, '2016-02-11 11:03:00', NULL, NULL, 3, 0, 4, NULL, NULL, 'Bangkok', '2016-03-01', 1, 0),
(36, 6, 18, '2016-02-11 11:03:00', NULL, NULL, 3, 0, 4, NULL, NULL, 'Bangkok', '2016-03-01', 1, 0),
(37, 6, 19, '2016-02-11 11:03:00', NULL, NULL, 3, 0, 35, NULL, NULL, 'Bangkok', '2016-03-01', 1, 0),
(38, 6, 20, '2016-02-11 11:03:00', NULL, NULL, 3, 0, 35, NULL, NULL, 'Bali', '2015-06-25', 9, 0),
(39, 6, 21, '2016-02-11 11:03:00', NULL, NULL, 3, 0, 35, NULL, NULL, 'Bali', '2015-06-25', 9, 0),
(40, 6, 22, '2016-02-11 11:03:00', NULL, NULL, 3, 0, 35, NULL, NULL, 'Bali', '2015-06-25', 9, 0),
(41, 6, 23, '2016-02-11 11:03:00', NULL, NULL, 3, 0, 39, NULL, NULL, 'Bali', '2015-06-25', 9, 0),
(42, 6, 24, '2016-02-11 11:03:00', NULL, NULL, 3, 0, 39, NULL, NULL, 'Bali', '2015-06-25', 9, 0),
(43, 6, 25, '2016-02-11 11:03:00', NULL, NULL, 3, 0, 39, NULL, NULL, 'Bali', '2015-06-25', 9, 0),
(44, 6, 26, '2016-02-11 11:03:00', NULL, NULL, 3, 0, 39, NULL, NULL, 'Bali', '2015-06-25', 9, 0),
(45, 13, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0),
(46, 13, 2, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, 1, 0),
(47, 13, 3, '2016-03-07 09:00:53', NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, 1, 0),
(48, 13, 4, '2016-03-07 09:00:00', NULL, NULL, 0, 1, 61, NULL, NULL, NULL, NULL, 1, 0),
(49, 13, 5, '2016-03-07 09:00:00', NULL, NULL, 0, 1, 62, NULL, NULL, NULL, NULL, 1, 0),
(50, 13, 6, '2016-03-07 09:00:00', NULL, NULL, 0, 1, 62, NULL, NULL, NULL, NULL, 1, 0),
(51, 13, 7, '2016-03-07 09:00:00', NULL, NULL, 0, 1, 62, NULL, NULL, NULL, NULL, 1, 0),
(52, 13, 8, '2016-03-07 09:00:00', NULL, NULL, 0, 1, 62, NULL, NULL, NULL, NULL, 1, 0),
(53, 6, 27, '2016-02-11 11:03:00', NULL, NULL, 3, 1, 39, NULL, NULL, 'Bali', '2015-06-25', 9, 0),
(54, 14, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0),
(55, 14, 2, NULL, NULL, NULL, 0, 1, 80, NULL, NULL, NULL, NULL, 1, 0),
(56, 14, 3, '2016-03-07 16:28:37', NULL, NULL, 0, 1, 80, NULL, NULL, NULL, NULL, 1, 0),
(57, 14, 4, '2016-03-07 16:28:00', NULL, NULL, 0, 1, 81, NULL, NULL, NULL, NULL, 1, 0),
(58, 14, 5, '2016-03-07 16:28:00', NULL, NULL, 0, 1, 81, NULL, NULL, NULL, NULL, 1, 0),
(59, 14, 6, '2016-03-07 16:28:00', NULL, NULL, 0, 1, 81, NULL, NULL, 'Chiang Mai', '2016-03-05', 1, 0),
(60, 13, 9, '2016-03-07 09:00:00', NULL, NULL, 0, 1, 62, NULL, NULL, 'Bangkok', '2016-03-01', 1, 0),
(61, 14, 7, '2016-03-07 16:28:00', NULL, NULL, 0, 1, 81, NULL, NULL, 'Chiang Mai', '2016-03-05', 1, 0),
(62, 15, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0),
(63, 15, 2, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, 1, 0),
(64, 15, 3, '2016-03-07 16:57:31', NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, 1, 0),
(65, 15, 4, '2016-03-07 16:57:00', NULL, NULL, 0, 1, 104, NULL, NULL, NULL, NULL, 1, 0),
(66, 15, 5, '2016-03-07 16:57:00', NULL, NULL, 0, 1, 104, NULL, NULL, NULL, NULL, 1, 0),
(67, 15, 6, '2016-03-07 16:57:00', NULL, NULL, 0, 1, 104, NULL, NULL, NULL, '2016-01-01', 10, 0),
(68, 15, 7, '2016-01-01 16:57:00', NULL, NULL, 0, 1, 104, NULL, NULL, NULL, '2016-01-01', 10, 0),
(69, 15, 8, '2016-01-01 16:57:00', NULL, NULL, 0, 1, 104, NULL, NULL, NULL, '2016-01-01', 10, 0),
(70, 15, 9, '2016-01-01 16:57:00', NULL, NULL, 0, 1, 104, NULL, NULL, NULL, '2016-01-01', 10, 0),
(71, 13, 10, '2016-03-07 09:00:00', NULL, NULL, 0, 1, 62, NULL, NULL, 'Bangkok', '2016-03-01', 1, 0),
(72, 16, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0),
(73, 17, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0),
(74, 17, 2, NULL, NULL, NULL, 0, 0, 129, NULL, NULL, NULL, NULL, 1, 0),
(75, 17, 3, '2016-03-30 13:20:18', NULL, NULL, 0, 0, 129, NULL, NULL, NULL, NULL, 1, 0),
(76, 17, 4, '2016-03-30 13:20:00', NULL, NULL, 0, 0, 129, NULL, NULL, 'Chiang Rai', '2016-03-08', 1, 0),
(77, 17, 5, '2016-03-12 13:20:00', NULL, NULL, 0, 0, 129, NULL, NULL, 'Chiang Rai', '2016-03-08', 1, 0),
(78, 17, 6, '2016-03-12 13:20:00', NULL, NULL, 0, 1, 129, NULL, NULL, 'Chiang Rai', '2016-03-08', 1, 0),
(79, 16, 2, NULL, NULL, NULL, 0, 1, 141, NULL, NULL, NULL, NULL, 1, 0),
(80, 16, 3, NULL, NULL, NULL, 0, 1, 141, NULL, NULL, NULL, NULL, 1, 0),
(81, 16, 4, '2016-03-14 00:00:00', NULL, NULL, 0, 1, 141, NULL, NULL, 'Mekong River', '2016-03-09', 2, 0),
(82, 18, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0),
(83, 18, 2, NULL, NULL, NULL, 0, 1, 175, NULL, NULL, 'Luang Prabang', '2016-03-10', 2, 0),
(84, 18, 3, '2016-03-30 14:24:00', NULL, NULL, 0, 1, 175, NULL, NULL, 'Luang Prabang', '2016-03-10', 2, 0),
(85, 18, 4, '2016-03-30 14:24:00', NULL, NULL, 0, 1, 175, NULL, NULL, 'Luang Prabang', '2016-03-10', 2, 0),
(86, 18, 5, '2016-03-30 14:24:00', NULL, NULL, 0, 1, 178, NULL, NULL, 'Luang Prabang', '2016-03-10', 2, 0),
(87, 18, 6, '2016-03-30 14:24:00', NULL, NULL, 0, 1, 178, NULL, NULL, 'Luang Prabang', '2016-03-10', 2, 0),
(88, 18, 7, '2016-03-15 14:24:00', NULL, NULL, 0, 1, 178, NULL, NULL, 'Luang Prabang', '2016-03-10', 2, 0),
(89, 19, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0),
(90, 19, 2, NULL, NULL, NULL, 0, 1, 206, NULL, NULL, NULL, NULL, 1, 0),
(91, 19, 3, '2016-03-30 14:55:22', NULL, NULL, 0, 1, 206, NULL, NULL, NULL, NULL, 1, 0),
(92, 19, 4, '2016-03-30 14:55:00', NULL, NULL, 0, 1, 206, NULL, NULL, NULL, NULL, 1, 0),
(93, 19, 5, '2016-03-17 14:55:00', NULL, NULL, 0, 1, 206, NULL, NULL, 'Luang Prabang', '2016-03-11', 2, 0),
(94, 19, 6, '2016-03-17 14:55:00', NULL, NULL, 0, 1, 206, NULL, NULL, 'Luang Prabang', '2016-03-11', 2, 0),
(95, 20, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0),
(96, 20, 2, NULL, NULL, NULL, 0, 1, 220, NULL, NULL, NULL, NULL, 1, 0),
(97, 20, 3, NULL, NULL, NULL, 0, 1, 220, NULL, NULL, NULL, NULL, 1, 0),
(98, 20, 4, NULL, NULL, NULL, 0, 1, 220, NULL, NULL, 'Vang Vieng', '2016-03-16', 2, 0),
(99, 20, 5, '2016-03-30 15:11:00', NULL, NULL, 0, 1, 220, NULL, NULL, 'Vang Vieng', '2016-03-16', 2, 0),
(100, 21, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0),
(101, 21, 2, NULL, NULL, NULL, 0, 1, 233, NULL, NULL, NULL, NULL, 1, 0),
(102, 21, 3, '2016-03-30 15:26:23', NULL, NULL, 0, 1, 233, NULL, NULL, NULL, NULL, 1, 0),
(103, 21, 4, '2016-03-30 15:26:00', NULL, NULL, 0, 1, 233, NULL, NULL, NULL, NULL, 1, 0),
(104, 21, 5, '2016-03-30 15:26:00', NULL, NULL, 0, 1, 233, NULL, NULL, NULL, NULL, 1, 0),
(105, 21, 6, '2016-03-19 15:26:00', NULL, NULL, 0, 1, 236, NULL, NULL, 'Vientiane', '2016-03-16', 2, 0),
(106, 21, 7, '2016-03-19 15:26:00', NULL, NULL, 0, 1, 236, NULL, NULL, 'Vientiane', '2016-03-17', 2, 0),
(107, 20, 6, '2016-03-18 15:11:00', NULL, NULL, 0, 1, 220, NULL, NULL, 'Vang Vieng', '2016-03-16', 2, 0),
(108, 19, 7, '2016-03-17 14:55:00', NULL, NULL, 0, 1, 237, NULL, NULL, 'Luang Prabang', '2016-03-11', 2, 0),
(109, 19, 8, '2016-03-17 14:55:00', NULL, NULL, 0, 1, 237, NULL, NULL, 'Luang Prabang', '2016-03-11', 2, 0),
(110, 18, 8, '2016-03-15 14:24:00', NULL, NULL, 0, 1, 242, NULL, NULL, 'Luang Prabang', '2016-03-10', 2, 0),
(111, 18, 9, '2016-03-15 14:24:00', NULL, NULL, 0, 1, 242, NULL, NULL, 'Luang Prabang', '2016-03-10', 2, 0),
(112, 21, 8, '2016-03-19 15:26:00', NULL, NULL, 0, 1, 236, NULL, NULL, 'Vientiane', '2016-03-17', 2, 0),
(113, 22, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0),
(114, 22, 2, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, 1, 0),
(115, 22, 3, '2016-03-30 16:08:59', NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, 1, 0),
(116, 22, 4, '2016-03-30 16:08:00', NULL, NULL, 0, 1, 244, NULL, NULL, NULL, NULL, 1, 0),
(117, 22, 5, '2016-03-30 16:08:00', NULL, NULL, 0, 1, 244, NULL, NULL, 'Hanoi', '2016-03-18', 3, 0),
(118, 15, 10, '2016-01-01 16:57:00', NULL, NULL, 0, 1, 278, NULL, NULL, NULL, '2016-01-01', 10, 0);

-- --------------------------------------------------------

--
-- Table structure for table `BlogSection`
--

CREATE TABLE `BlogSection` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('BlogSection') DEFAULT 'BlogSection',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` mediumtext,
  `Content` mediumtext,
  `Sort` int(11) NOT NULL DEFAULT '0',
  `MainImageID` int(11) NOT NULL DEFAULT '0',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  `ImageLayout` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `BlogSection`
--

INSERT INTO `BlogSection` (`ID`, `ClassName`, `LastEdited`, `Created`, `Title`, `Content`, `Sort`, `MainImageID`, `ParentID`, `ImageLayout`) VALUES
(7, 'BlogSection', '2016-03-07 07:26:47', '2016-02-17 11:12:58', NULL, '<p class="lead">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Maecenas faucibus mollis interdum. Maecenas faucibus mollis interdum. Donec ullamcorper nulla non metus auctor fringilla. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>\n<p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Cras mattis consectetur purus sit amet fermentum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam quis risus eget urna mollis ornare vel eu leo.</p>', 1, 25, 8, 'FixedWidth'),
(8, 'BlogSection', '2016-03-07 07:32:11', '2016-02-24 09:57:05', NULL, '<p class="p1"><span class="s1">After two flights totalling about 10 hours we landed on the tarmac of what looked like a small village, not Ngurah Rai international airport. We were shuffled onto a bus and and hurriedly entered the arrivals hall with USD$35 ready for our Visa, only to be told we don’t need one. All a bit confused, we waited in the the line for a border security officer to stamp us through, passing signs warning us, No visa - instant 5 years jail. Needless to say, the refusal to take our money and these fairly intimidating signs left us a bit worried. We shouldn’t have been, as when we approached the border security officer he laughed at the US money in our passports and then relieved us of all worries saying visa’s have been removed for kiwis, but not australians. After a little giggle and a huge sigh of relief we all started to make our way to the baggage claim with lowered heart rates. After collecting our bags we made our way through to the arrivals hall where I swear there were over 100 people waving signs at us… We found our Buffalo Tours lady and squeezed our way through people trying to take our bags for us, into the tropical warm climate then back into air conditioned van for an hour long trip to Ubud. The ride north through Denpasar was hair raising at times, but we learnt very fast we just had to relax and pretend that we knew the chaotic road rules would work and we’d get to our destination unscathed. When we arrived in Ubud, we were all very tired, so we settled in with a cup of tea and a small cake, a walk around the resort followed by dinner and some shut eye.</span></p>', 1, 0, 6, 'FixedWidth'),
(10, 'BlogSection', '2016-02-24 23:49:46', '2016-02-24 23:49:45', NULL, NULL, 2, 41, 6, 'FixedWidth'),
(11, 'BlogSection', '2016-03-07 07:33:05', '2016-02-24 23:51:09', NULL, '<p class="p1"><span class="s1">After a great sleep we awoke to the sound of roosters, something we had to get used too but didn\'t know it yet. We decided to take it easy and go for a wander around Ubud, our first stop was a little shop across the road from where we were staying. This is where we got our first taste of haggling and the words ‘Mum’ and ‘Miss’. We didn’t actually buy anything but continued off down the road a bit. It only took about 10 steps to realise too that we must look at where we were walking.  The sidewalks in Bali leave a lot to be desired! Holes, wonky tiles and giant grates you could easily slip into were just the beginning of the game we would start playing called watch out for the…! This continued as we meandered through the streets, and we had to watch out for dogs, scooters, holes, and even piles of bricks. (That literally made up a column as wide as the footpath) I felt like singing the song from the Bear Hunt book… “we can’t go over it, we can’t go through it, we’ll have to go around it!”</span></p>\n<p dir="ltr"> </p>\n<p style="text-align: center;" dir="ltr"><span class="lead"><span><span>I felt like singing the song from the Bear Hunt book… “</span>we can’t go over it, we can’t go through it, we’ll have to go around it!"</span></span> </p>\n<p dir="ltr"> </p>\n<p class="p1"><span class="s1">We visited the Ubud monkey forest in the afternoon, and what an adventure that was! I love monkeys, but I’m somewhat afraid of them. Ever since our guide in Thailand once told us if the bite we’ll end up really sick, and he proceeded to sneak up behind me and grab my leg. Needless to say I jumped out of my skin but then was able to laugh about it. So the Ubud monkey forest cost us a mere Rp30,000 (About NZD$3.30) each and this went to the upkeep of the grounds. They were beautiful, the paths and gardens were well kept, however full of banana skins and Kumara so just watch your step! There were monkeys everywhere, even before you even get inside the grounds as it’s semi-free forest where the monkeys can leave if they please. (A little side story - a guide we had on a different day mentioned to us if we were to stay at the hotel adjacent to the monkey forest, not to leave our togs out to dry on the deck because the Monkeys come over in the evening for a swim in the pool and a wee thieving session of anything they can find… We thought this was quite funny and couldn’t help imagining a monkey in a little yellow polka dot bikini!!) Back in the forest we spent a long time wandering through the shade admiring the babies and their mothers, and just observing the strange and somewhat human-like behaviour of the monkey’s. However, the monkeys don’t seem to observe privacy, they’re quite happy to have grooming sessions or a wee scratch ‘down there’ in the middle of the footpath or in full view of the public. My wee tip for the monkey forest is not to buy the bananas. We worked out pretty quick that unless you wanted to become a monkey magnet then to briskly walk by the banana kiosk and just watch from a distance. But then again, if you don’t mind furry things jumping at you from all angles, then feel free!</span></p>', 3, 0, 6, 'FixedWidth'),
(12, 'BlogSection', '2016-02-25 09:37:32', '2016-02-24 23:57:35', NULL, NULL, 4, 0, 6, 'FixedWidth'),
(13, 'BlogSection', '2016-03-07 07:33:47', '2016-02-25 09:39:52', NULL, '<p class="p1"><span class="s1">We planned an excursion for our next day in Ubud, but it meant driving up to Mount Batur and cycling 35km’s back downhill to Ubud. </span></p>\n<p class="lead" style="text-align: center;" dir="ltr"><span>Today is the day I nearly died. </span>Well… sort of.</p>\n<p class="p1"><span class="s1">Here’s the story. We took a little minibus up to a high vantage point looking over Mount Batur and Batur lake. On the way we picked up more guests and guides, more that could actually fit in the minibus, but that’s the balinese way. We got to the top and it was so picturesque up there, I wish we had spent more time admiring the view. We had a spot of breakfast and used some of the worst toilets I’ve ever experienced. (So far that is…) We then jumped on some bikes which all had rather faulty brakes. This worried us as we were going on a downhill ride and I would have thought brakes were a fairly necessary thing to be functioning correctly. Feeling somewhat nervous, we started the adventure downhill to Ubud. We cycled through small villages and near rice paddies, the scenery was beautiful. We stopped a few times and admired the views, we even walked onto a rice farm and helped a family harvest some rice in exchange for photographs. It was a family affair, with each member of the family having a job, even grandma, who was blowing grass out from the rice grains by throwing it up into the air. She had clearly had many years of experience! We continued on and our guide mentioned that we were about to go up a large-ish hill. He didn’t quite tell us how big it was until we saw the damn thing. It was long, twisty and very very steep. It took a while but we pushed our way up to the top. On foot. He said we only had one more hill, and this is where I thought I was going to die. Backing up a few kilometers, my chain had fallen off and the guide at the back of the group and I had stopped to fix it. This set us back a bit so we were cycling super fast to catch up, I was coming down a hill ready to take a corner when I saw our first guide waving ‘down, down’ to me. I thought he meant go down a gear as the hill was close. Well, the hill was close, but a car was closer, on a one way bridge, and I was heading straight for it. Turns out he was telling me to slow down, but I thought I’d demonstrate my drifting skills by skidding sideways in some gravel and leaving a puff of smoke on my tail. I didn’t fall over, but I sure did get one heck of a fright! After the excitement and shaky legs, l walked up the next hill and caught my breath. We made it to a little village near Ubud and after dodging 1 car, about 10 dogs, 20 scooters and 100 potholes I was definitely ready for some food. Our guide provided us with lunch and a short dance performance from some young girls - one of whom was his daughter. We then took a minibus back to the resort and had a swim to aid our aching behinds. Tomorrow will be a quiet day. </span></p>', 5, 0, 6, 'FixedWidth'),
(14, 'BlogSection', '2016-02-25 09:47:52', '2016-02-25 09:47:50', NULL, NULL, 6, 50, 6, 'FullWidth'),
(15, 'BlogSection', '2016-03-07 07:34:21', '2016-02-25 09:49:58', NULL, '<p class="p1"><span class="s1">After a thrill seeking day yesterday, we opted for a more relaxed wander around Ubud. We went in a different direction than the first day wandering by many little shops and eateries. We found a number of touristy shops selling the same things, but something that really amused us were the amount of wooden penis shaped bottle openers. We’d see them in all sizes and colours and even souvenir packs of 6 to take home for your friends! We assumed it was aimed at the aussies… but found it awfully funny walking down the street with stands of these things sticking out of the shopfront onto the footpath! We enjoyed a wander around the market, and realised just how cheap things were! A dress I saw in a shop only a block away was going to cost me Rp200,000 (NZD$22) but in the market, the same dress cost me Rp60,000 (NZD$6.50). The shop keepers will do anything to get your attention, and it became a bit of a joke! Mum was a target… most conversations went a bit like this, “Beautiful daughters Mum!” “Top Mum” “Dress Mum” “Shoes Mum” This Mum” That Mum” and we were similar, with anything we glanced at, “Scarf Miss!”. We turned this into a joke and everything became ‘something Mum’ for the rest of the trip. </span></p>', 7, 0, 6, 'FixedWidth'),
(16, 'BlogSection', '2016-02-25 09:53:50', '2016-02-25 09:53:49', NULL, NULL, 8, 0, 6, 'FixedWidth'),
(17, 'BlogSection', '2016-03-07 07:34:44', '2016-02-25 09:54:21', NULL, '<p class="p1"><span class="s1">We bumped into some friends from home as we wandered through the street of Ubud, and they recommended we try a little restaurant called Ibu Rai. So we visited it and the food was beautiful but the story of the restaurant was even more touching. Ibu Rai became well know with travellers after her husband died, leaving her with six small children. She got a small pension from the government and set up a warung (food stall) where she sold food to travellers in the 60’s. Travel books began to recommend Ibu Rai warung as a place to find safe and affordable food in Ubud. Four of her children graduated from university and became self supporting. In the 70’s she was no longer selling food, but she sold pictures from a shop in front of her house. In 1986, her son Dewa Gede opened a restaurant and as a tribute to his mother\'s courage, he called in Ibu Rai. Ibu Rai died in 2004 and because of the respect the community held for her she had a very large cremation. Today, Ibu Rai’s grandson runs the restaurant and a blurb about her and her life is printed on the menus to explain what a lovely story this restaurant has, created by such an inspiring lady.</span></p>', 9, 0, 6, 'FixedWidth'),
(18, 'BlogSection', '2016-03-07 08:55:38', '2016-02-25 09:55:59', NULL, '<p class="p1"><span class="s1">After four days in Ubud we headed south to Seminyak where we were based for the remainder of our Bali holiday. We had a travel and explore day and realised that Seminyak was a lot busier than Ubud. We started a new game called dodge the scooter in Seminyak. There were more scooters here than in Ubud and with so many broken footpaths, we walked on the road quite a lot… sometimes feeling like we were risking our lives but the drivers were very good at dodging us and any other obstacles that got in their way. </span></p>\n<p class="p2"> </p>\n<p class="p1"><span class="s1">On our Second day in Seminyak, we organised a tour to see the Green Village and School in a region called Abiansemal. This was the most expensive tour we did at US$33 but all proceeds go towards the Indonesian scholar programme, which sponsors 20 Indonesian students attend the Green School. Our first impressions of the Green Village were just breathtaking. We arrived to see a small office, toilet block and cafe all crafted from Bamboo. This was minimal however compared to the masterpiece homes we toured. There were 6 level homes crafted from bamboo in curving shapes that naturally occur when using the flexible material. Everything was bamboo or another sustainable material such as stone. Toilet seats, stairs, furniture, walls, taps, anything and everything was bamboo! All of the doors in the Green village are circular and pivot in the centre. This allows for the bamboo to change shape over time without the square shape of a door sagging. After the village we visited the factory where we saw the piles of different bamboo, types, shapes and lengths. All bamboo must be treated to extend it’s life and prevent termites so there were multiple long baths where the bamboo would soak in a boron solution before drying ready to be used to build. After the factory we headed to the Green School which was the most eye opening experience. The classrooms here are open air, the paths are cobbled to create awareness, there’s a bird sanctuary and a mud pit used for education! The school prides itself in being an holistic learning centre and is working towards becoming off grid. The school already uses solar power and are in the final stages of making a whirlpool hydro generator. The Green village, school and factory and such inspiring places, not just for their beauty but for their drive to make the world a more sustainable place by using materials that are plentiful and creating jobs for local people. </span></p>', 10, 53, 6, 'FixedWidth'),
(19, 'BlogSection', '2016-02-25 10:02:35', '2016-02-25 10:01:24', NULL, NULL, 11, 54, 6, 'FixedWidth'),
(20, 'BlogSection', '2016-03-07 08:56:38', '2016-02-25 10:04:51', NULL, '<p class="p1"><span class="s1">We did some more research into locations of Rice Paddies the night we came back from The Green Village. Coming down to Seminyak meant we were further away from the lush greenery that is in Northern Bali. After looking into various things to do up north we came up with an itinerary that would take us to the lake at the bottom of Mount Batur, though the rice fields of Jatiluweh and to Tanah Lot temple. The day started nice and early and we met up with our Driver Wayan. Wayan was a fantastic guide and we learnt a lot about Bali while with him for the day. Wayan story 1: When we asked him about his name Wayan explained to us that all firstborn males in a family are called Wayan, and second born males are called Murray. This must be why we saw so many ‘Wayan’s eatery’ on the side of the roads. Moving on. We drove up towards the region of Tabanan which hold Bali’s national botanical gardens. These were impressive and so large. We discovered a beautiful bamboo made greenhouse that held only orchids and a huge cactus house too. We went via a fruit and vege market in a small Muslim town. It was interesting seeing the lack of tourists in this very cultural area. After this we visited a temple called Pura Ulun Danu Beratan. This is a temple that has been built on a lake. It’s close to shore and has a foot bridge connection but it sure makes for beautiful photographs. En route back down the island we took the windiest and pot hole-iest route ever to the area of Jatiluweh. It’s know for large rice terraces and breathtaking views. We stopped for lunch here then went for a walk through the fields. It’s here we have Wayan story 2. He told us that the water troughs that run through the towns are fought over by the locals who are desperate to soak their rice. They sneak out at night to divert the water into their fields rather than their neighbours fields. And they treat it a bit like a game. we drove through more rice fields on our way to Tanah Lot temple. This temple is built out of a rock in the ocean and can only be walked out to at low tide. We sat up on a ridge to watch the sun fade behind the temple and the birds go crazy flying about getting home to their nests. Bali sure does put on a good sunset! </span></p>', 12, 0, 6, 'FixedWidth'),
(21, 'BlogSection', '2016-02-25 10:11:38', '2016-02-25 10:11:36', NULL, NULL, 13, 59, 6, 'FullWidth'),
(22, 'BlogSection', '2016-03-07 08:56:59', '2016-02-25 10:12:49', NULL, '<p class="p1"><span class="s1">After a big day out we opted for a chilled out morning and then a ride south of Bali to Ulawatu. There’s another temple here and we weren\'t quite templed out yet. This one was on top of a cliff and was also a great spot for watching the sun go down. As the sun set, we piled into an outdoor arena with a heap of other tourists to watch a traditional Kek Kek Trance dance. Although I didn’t quite understand the story, the performers were amazing. There was a group of men ranging in ages from teens to seniors and they all had flawless rhythm. This was the trance part of the show, they kept the sound going for almost an hour. As the sun went down, out came the fire dance. They created a circle of hay in the centre and set it alight as the finale! Quite spectacular! After this we went to the Four Seasons Hotel for a special 21st birthday Dinner for Chelsea. We even had the waiter to create a special cake with her name on it and candles! We had some beautiful wine and strong cocktail overlooking the waves. This was a perfect end to our beautiful Bali adventure. </span></p>', 14, 0, 6, 'FixedWidth'),
(23, 'BlogSection', '2016-02-25 10:14:51', '2016-02-25 10:14:49', NULL, NULL, 15, 60, 6, 'FullWidth'),
(24, 'BlogSection', '2016-03-27 11:13:15', '2016-03-07 09:18:35', NULL, NULL, 2, 0, 13, 'FixedWidth'),
(25, 'BlogSection', '2016-03-27 11:13:15', '2016-03-07 09:19:49', NULL, NULL, 5, 70, 13, 'FixedWidth'),
(26, 'BlogSection', '2016-03-27 11:17:15', '2016-03-07 09:24:31', NULL, NULL, 8, 116, 13, 'FixedWidth'),
(27, 'BlogSection', '2016-03-27 11:13:15', '2016-03-07 09:25:04', NULL, NULL, 10, 79, 13, 'FixedWidth'),
(28, 'BlogSection', '2016-03-27 11:40:42', '2016-03-07 16:39:13', NULL, NULL, 1, 0, 14, 'FixedWidth'),
(29, 'BlogSection', '2016-03-27 11:40:42', '2016-03-07 16:39:40', NULL, NULL, 3, 85, 14, 'FixedWidth'),
(31, 'BlogSection', '2016-03-27 11:40:42', '2016-03-07 16:42:51', NULL, NULL, 8, 94, 14, 'FullWidth'),
(32, 'BlogSection', '2016-03-27 11:40:42', '2016-03-07 16:45:19', NULL, NULL, 12, 0, 14, 'FixedWidth'),
(33, 'BlogSection', '2016-03-27 11:40:42', '2016-03-07 16:46:05', NULL, NULL, 13, 99, 14, 'FixedWidth'),
(34, 'BlogSection', '2016-03-27 11:49:18', '2016-03-07 16:48:37', NULL, NULL, 18, 0, 14, 'FixedWidth'),
(35, 'BlogSection', '2016-03-07 17:09:40', '2016-03-07 17:09:38', 'Welcome...', '<p class="h3">Hi, I\'m Isabelle.</p>\n<p>I\'m a kiwi embarking on a traveling adventure. This blog will show lots of photos and some writing of my travels. </p>\n<p>My destinations are Thailand, Laos, Vietnam, Singapore, Europe and the UK. </p>', 1, 0, 15, 'FixedWidth'),
(36, 'BlogSection', '2016-03-27 11:13:15', '2016-03-27 11:03:16', NULL, '<p><span id="docs-internal-guid-2cf1064a-b7bd-b793-df8e-2435fe18a853"><span>This trip was my second time in Bangkok, and I wasn\'t to sure what to expect, more of the same or something different. As it turns out, Bangkok is such a huge city, almost everything we saw was new! We stayed along Silom road, which is know to be quite touristy. The moment we stepped outside, the words, "Tuk Tuk!", "Taxi" or "Temple Tour" came at us from all directions, we politely say no as the follow us down the street waving their laminated cards with tourist destinations on them. </span><span><br class="kix-line-break"></span></span></p>', 1, 0, 13, 'FixedWidth'),
(37, 'BlogSection', '2016-03-27 11:13:15', '2016-03-27 11:05:00', NULL, '<p><span id="docs-internal-guid-2cf1064a-b7bf-79e9-eab3-3740d87a8473"><span>During our time in Bangkok we did visit some of the touristy things, like the Wat Pho, the golden reclining Buddha. A Buddha can be in many poses and you can tell what they mean often by the hand gestures. A reclining Buddha depicts the last remaining moments of life on Earth of the Historical Buddha before dying and entering entering Nirvana. Because this Buddha was able to seek enlightenment in this lifetime, they were able to escape the endless cycle of birth, death and reincarnation. The Wat Pho is one of the most famous of these statues lying at 46 metres long. In the temple ground we spent about 2 hours wandering and amazed at the beautiful detail put into each structure. The was a lot of mosaic and a lot of gold which with the light reflecting on them looked rather magical. </span></span></p>', 3, 0, 13, 'FixedWidth'),
(38, 'BlogSection', '2016-03-27 11:13:15', '2016-03-27 11:05:16', NULL, '<p><span id="docs-internal-guid-2cf1064a-b7bf-ae25-183e-0b47e149477c"><span>An hour bus ride took us to the Damnoen Saduak Floating Markets outside of Bangkok city. I went here last time I was in Bangkok and loved it, however this time I was sad to see the lack of Thai boats on the water. The number of tourist paddle boats greatly outnumbered those genuine fruit, veggie, food or coconut ice cream boats. The tourists were creating a tourist destination for themselves, selfie stick in hand. </span></span></p>', 6, 0, 13, 'FixedWidth'),
(39, 'BlogSection', '2016-03-27 11:13:15', '2016-03-27 11:05:46', NULL, '<p><span id="docs-internal-guid-2cf1064a-b7c0-1199-8949-7e3748b7cf80"><span>We caught many Tuk Tuks around the city, to all sorts of places and the sights you see along the way are fascinating. I loved watching the food carts be cycled through the traffic, weaving in and out of the countless pink or green and yellow Taxis. Life is different here. </span><br></span></p>', 9, 0, 13, 'FixedWidth'),
(40, 'BlogSection', '2016-03-27 11:13:15', '2016-03-27 11:06:03', NULL, '<p dir="ltr"><span>Our time in Bangkok concluded when we caught the night train north to Chiang Mai...</span></p>', 11, 0, 13, 'FixedWidth'),
(41, 'BlogSection', '2016-03-27 11:13:15', '2016-03-27 11:09:00', NULL, NULL, 4, 0, 13, 'FixedWidth'),
(42, 'BlogSection', '2016-03-27 11:13:15', '2016-03-27 11:11:29', NULL, NULL, 7, 111, 13, 'FixedWidth'),
(43, 'BlogSection', '2016-03-27 11:40:42', '2016-03-27 11:25:55', NULL, '<p><span id="docs-internal-guid-53e907fa-b7d1-cb69-049e-9117f3197647"><span>As the train rumbled into the mountainous region of Doi Khun Tan Nation Park, I knew we were approaching a new area of Thailand. Sunrise from the train was beautiful with the sun the reddest I had ever seen. </span><span><br class="kix-line-break"></span></span></p>', 2, 0, 14, 'FixedWidth'),
(44, 'BlogSection', '2016-03-27 11:40:42', '2016-03-27 11:27:28', NULL, '<p>We arrived at our guesthouse absolutely knackered, my feet feeling unstable and my body unsure what kind of terrain it was on. We ventured out to a small cafe called \'Graph\' down one of the soi\'s (streets) near where were staying and ordered a nice strong Iced coffee. The streets off the main drag are so narrow here, we sat on the step of the cafe and watched as the scooters, dogs and a lady selling icecream rode her bike with umbrella and sidecar passed us with a big grin. I got the feeling people in Chiang Mai are friendlier than in Bangkok.</p>\n<p>Chiang Mai has a square moat that runs all the way around the perimeter of the old city, and part of the brick gates and corners are still there. We sat and watched the pigeons for a while at the Tha Pae Gate.</p>', 4, 0, 14, 'FixedWidth'),
(46, 'BlogSection', '2016-03-27 11:40:42', '2016-03-27 11:27:55', NULL, '<p><span id="docs-internal-guid-53e907fa-b7d4-7a09-f675-404fa5685045"><span>After our train hangover had gone away, we ventured south to the Saturday night market. Food, craft and music galore! As we were shuffling our way through the crowds, suddenly at our feet was a line of five musicians, each playing a different kind of percussion instrument and singing along. Down a side alley we find some food, barbecue pork, dumplings and a dessert of sticky rice and mango. This is something that sounded like a strange combo but as the signature dish of the area, we had to try it and it was surprisingly nice! After more strolling we came across a kid rock band, belting it out on the drums, guitar and bass... who would have guessed! </span><span><br class="kix-line-break"></span></span></p>', 6, 0, 14, 'FixedWidth'),
(47, 'BlogSection', '2016-03-27 11:40:42', '2016-03-27 11:28:07', NULL, '<p><span id="docs-internal-guid-53e907fa-b7d4-a450-5fdd-718d0113462b"><span>In Chiang Mai, the thing to do is a cooking class, so we enrolled ourselves in one with the Baan Thai School for the next day. We were first taken to a market, where our guide showed us different herbs and spices and also the very strange eggplants. Here the eggplant is green, and either the size of a pea or the size of your pinky finger. They\'re apparently very strong, I didn\'t get a chance to try one, I don’t think I’m really missing out. At the school I learned how to cook Chicken Cashew Nut, Tom Yam Soup, Papaya Salad and Koi Soi, and traditional Chiang Mai dish. </span><span><br class="kix-line-break"></span></span></p>', 9, 0, 14, 'FixedWidth'),
(48, 'BlogSection', '2016-03-27 11:40:42', '2016-03-27 11:28:21', NULL, '<p><span id="docs-internal-guid-53e907fa-b7d4-d62b-ffce-367787301e6e"><span>We visited Doi Suthep one evening which is a gorgeous temple on top of a hill overlooking the city. Our driver had has car breakdown halfway up the hill so we flagged another red car to get us all the way up. The temple was beautiful, it was the most golden temple I\'ve ever seen, and being sunset, it was glowing! There are so many intricate details it was hard to take it all in. After seeing the actual temple we went around the grounds which were equally as picturesque. There were many monks walking around and I was happy to be standing at the right place at the right time to capture one contemplating life as he looked over the city. </span><span><br class="kix-line-break"></span></span></p>', 11, 0, 14, 'FixedWidth'),
(49, 'BlogSection', '2016-03-27 11:40:42', '2016-03-27 11:28:36', NULL, '<p><span id="docs-internal-guid-53e907fa-b7d5-0e59-11df-e3d3c3629f35"><span>Another area of Chiang Mai that we explored was Nimmenheimen road. A new \'hip\' area of town with many little craft shops selling unique items you would see at any other market. We spent a few hours strolling up and down, and tried out some Roti bread with savoury topping for dinner! We also went into the huge Maya centre to cool off a bit, and found other little crafty shops and a place called \'Camp\'. It was an awesome co-working/study area for people with free internet. It was packed to overflowing, and looked like a cool creative space if you were working on the road.</span></span></p>', 14, 0, 14, 'FixedWidth'),
(50, 'BlogSection', '2016-03-27 11:52:39', '2016-03-27 11:28:48', NULL, '<p dir="ltr"><span>Chiang Mai has become my favourite place in Thailand. It\'s like Bangkok, but on a smaller, friendlier scale. Everyone is kind to one another and you\'re not hassled too much to get in a Tuk Tuk. I would love to visit again.</span></p>\n<p dir="ltr"><span><span id="docs-internal-guid-53e907fa-b7ea-0bf1-391b-a3480d1c9e8e"><span>Oh and did I forget to mention… we went to a cabaret, a lady boy cabaret. And Rihanna was there. That’s all.</span></span></span></p>', 16, 0, 14, 'FixedWidth'),
(51, 'BlogSection', '2016-03-27 11:40:42', '2016-03-27 11:30:29', NULL, NULL, 5, 119, 14, 'FixedWidth'),
(52, 'BlogSection', '2016-03-27 11:40:42', '2016-03-27 11:35:20', NULL, NULL, 7, 0, 14, 'FixedWidth'),
(53, 'BlogSection', '2016-03-27 11:40:42', '2016-03-27 11:39:02', NULL, NULL, 10, 124, 14, 'FixedWidth'),
(63, 'BlogSection', '2016-03-27 11:49:18', '2016-03-27 11:49:00', NULL, NULL, 15, 0, 14, 'FixedWidth'),
(64, 'BlogSection', '2016-03-30 13:38:19', '2016-03-30 13:25:50', NULL, '<p>Wat Rong Khun, or The White temple is such a beautiful sight. It\'s striking colour and reflective mirror make it one the most unique temple I\'ve ever seen. It\'s still a work in progress though, even though billions and billions of Vietnamese Dong have already been put into it\'s creation. </p>\n<p>There\'s a journey, and it starts in Hell. You must cross a bridge with a sea of hands and as we were informed many times, it is very bad luck to stop or pause here because this is the symbol of re-birth. After that you walk over another bridge through the Gate of Heaven the temple itself, and although photos are not allowed, I assure you the mural inside is spectacular! It\'s carefully drawn with all kinds of Superheros and cartoons, from batman to the hulk and hello kitty to a dalek. This temple is most definitely one of a kind.</p>', 1, 136, 17, 'FixedWidth'),
(65, 'BlogSection', '2016-03-30 13:27:58', '2016-03-30 13:27:56', NULL, NULL, 2, 0, 17, 'FixedWidth'),
(66, 'BlogSection', '2016-03-30 14:01:37', '2016-03-30 13:51:24', NULL, '<p><span id="docs-internal-guid-35926024-c7ca-c04e-02d3-3f40b1b0b9ce"><span>We were in Houay Xai, Laos. A small town on the edge of the Mekong River with Thailand on the other side. About 20 of us eager backpackers were piling into three Tuk Tuks, packs on top, and us in the back. It kind of looked like a clown car, given the Tuk Tuks are painted bright colours and all. We drove a few minutes down the road to the riverbank where dozens of longboats were all parked up, nose on the riverbank. This way! This way! our tour guide was yelling, he was ushering us towards one of these boats, it was blue until I saw the inside. Hello Kitty Paradise. Pink seats, pink curtains and Hello Kitty blankets. Did I just walk into Japan?</span></span></p>', 1, 0, 16, 'FixedWidth'),
(67, 'BlogSection', '2016-03-30 14:01:37', '2016-03-30 13:57:45', NULL, '<p><span id="docs-internal-guid-35926024-c7d1-22ac-3a04-0a9831dbd805"><span>This was home for the next two days. We were making our way along the river to Luang Prabang. On the first dat we were on the boat for 7 hours, it was fascinating spotting the small villages as we sailed by. We passed lots of water buffalos and cows, who enjoy swimming and drinking from the river. There was also a group of kids doing back flips off the bank at one point! For a good hour or so we were floating down no man\'s land between Laos to the north and Thailand to the south. We came to a checkpoint where the boat was pulled over and two security guards came on board. We all watching with interest as the searched the boat for illegal drugs and people (as our guide said). They even lifted loose floorboards to check! Given the all clear off we sailed again. </span><span><br class="kix-line-break"></span></span></p>', 3, 0, 16, 'FixedWidth'),
(68, 'BlogSection', '2016-03-30 14:01:37', '2016-03-30 14:01:10', NULL, NULL, 2, 150, 16, 'FullWidth'),
(69, 'BlogSection', '2016-03-30 14:04:36', '2016-03-30 14:04:11', NULL, '<p><span id="docs-internal-guid-35926024-c7d1-22ac-3a04-0a9831dbd805"><span><span id="docs-internal-guid-35926024-c7d6-ffaf-816d-94b7b1050150"><span>Around 4pm, we arrived at a small village called Ban Pak Nguey. It\'s a village of 1000 people and were were staying in families homes for the night. We jumped of the boat and went for a walk around the village. We visited the school, which had 4 classrooms. A few people from our group gave some impromptu lessons and the kids loved it! Afterwards, the kids beckoned us out to the field where a dusty game of soccer was played. We then made our way back down to the Mekong, for it was bath time. Along with the locals, we swam in the Mekong, some washing hair, others just enjoying the water. I sat on a rock for a while watching as a elderly lady spent about an hour washing all her family’s clothes in the river then finishing off with a bath herself. It was a different way of life to experience. As the sun went down we headed back up to the village for some dinner, a blessing ceremony and a swig of homemade whisky. </span><span><br class="kix-line-break"></span></span></span></span></p>', 4, 151, 16, 'FixedWidth'),
(70, 'BlogSection', '2016-03-30 14:07:46', '2016-03-30 14:07:44', NULL, NULL, 5, 154, 16, 'FixedWidth'),
(71, 'BlogSection', '2016-03-30 14:09:35', '2016-03-30 14:09:06', NULL, '<p><span id="docs-internal-guid-35926024-c7db-60c2-d390-d814796aff2b"><span>After a sleep on the hardest mattress and pillow ever (Maybe second hardest actually, thinking back to the horrific experience on a rice pillow in Japan) we gobbled down an egg on toast it was back to the boat for another day. Most of us were still really tired so we slept for a couple of hours, Hello Kitty blankets and all. The morning on the Mekong was spectacular though, the mist was still settled in the layered hills and the air was crisp and cool. Eventually the mist rose and the day turned out to be a beaut! As we were nearing Luang Prabang we stopped off at Pak Ou Caves, there are thousand and thousands of buddhas in these caves, it was quite a different experience to any other temple we\'d seen. This was my first experience of giant steps... I’m sure the whole country had an obsession with them!</span><span><br class="kix-line-break"></span></span></p>', 6, 163, 16, 'FixedWidth'),
(72, 'BlogSection', '2016-03-30 14:15:27', '2016-03-30 14:15:25', NULL, NULL, 7, 166, 16, 'FixedWidth'),
(74, 'BlogSection', '2016-03-30 15:34:23', '2016-03-30 14:33:36', NULL, '<p><span id="docs-internal-guid-d4b3212e-c7f3-4de6-fa7a-7905d4e27e52"><span> </span></span></p>', 2, 239, 18, 'FixedWidth'),
(75, 'BlogSection', '2016-03-30 14:47:08', '2016-03-30 14:34:52', NULL, NULL, 3, 189, 18, 'FullWidth'),
(78, 'BlogSection', '2016-03-30 14:47:08', '2016-03-30 14:39:24', NULL, '<p><span id="docs-internal-guid-d4b3212e-c7f6-d479-4513-4c4f0f1c37ec"><span>Ah Luang Prabang, the little french town that grew on me. As we jumped off the boat into a minivan for our drive to the guesthouse, I was surprised and unsure where Luang Prabang and I were going to get along. We got to the guesthouse, and still I was unsure. There wasn\'t anything familiar, no Seven Elevens or Cafes, just random piles of thing for sale in what looked like peoples living rooms. Lucky we arrived late ish, so we had some dinner and tucked in for the night. </span><span><br class="kix-line-break"></span><span><br class="kix-line-break"></span><span>The next day, we realised we were staying next to a giant hill, called Mount Phousi. It\'s pronounced \'Pussy\' and this provided our group with many jokes over our time in Luang Prabang. Walking around Mount Phousi, we discovered a quaint little township, a street lined with cafes, shops and French influence everywhere! I fell in love. That didn\'t take long. The shutters on all the buildings, and the French patisseries selling fresh croissants and pain au chocolat started showing around every corner. There also were many \'Phousi\' things around to cause a giggle... Phousi Guest House, Phousi Cafe and Phousi Markets.... you get the idea! </span><span><br class="kix-line-break"></span></span></p>', 1, 0, 18, 'FixedWidth'),
(79, 'BlogSection', '2016-03-30 14:47:08', '2016-03-30 14:40:58', NULL, '<p><span id="docs-internal-guid-d4b3212e-c7f8-26f8-a8ad-abb50513eb37"><span>Whilst in Luang Prabang, we visited an elephant rescue sanctuary, where we fed and went for a ride on the elephants. The elephants used to be used for logging, so were very used to heavy items on their backs. The sanctuary is fairly new so some of the elephants were still in the transition period. They had chains draped on their backs, but these would slowly be removed as their behaviour improved. There were also a couple of little rascal baby elephants, who love to squash the sugar cane and bamboo. Elephants eat 200 - 300 kg of food each day, which is 10% of their body weight. In the evenings, the elephants go for a walk to the nearby forest area and get a 300 metre chain attached to a tree. They are very clever, and only walk out and back along the chain so they don\'t get tangled in the trees. They get a new area to discover and eat every night. The baby elephants remain on the sanctuary grounds because they have been know to get tangled in the trees and there\'s enough food for them there. It was really an eye opening experience, seeing the way ex-logging and poorly treated elephants are being trained for human interaction and a better life. </span><span><br class="kix-line-break"></span></span></p>', 4, 0, 18, 'FixedWidth'),
(80, 'BlogSection', '2016-03-30 14:49:11', '2016-03-30 14:44:51', NULL, '<p><span id="docs-internal-guid-d4b3212e-c7ff-1d34-e850-39e4abafa09f"><span>After the elephant visit we headed out into the bush further to discover the Kuang Si Waterfalls. There are a beautiful set of three pools with layering cascades. We had a nice dip and had the fish nibble our feet! In the waterfall park, there is also a rescue sanctuary for moon bears. we got to see bears for the first time, hanging out in hammocks and trees.... so cute!</span><span><br class="kix-line-break"></span></span></p>', 6, 0, 18, 'FixedWidth'),
(81, 'BlogSection', '2016-03-30 14:47:08', '2016-03-30 14:46:02', NULL, NULL, 5, 201, 18, 'FullWidth'),
(82, 'BlogSection', '2016-03-30 14:50:12', '2016-03-30 14:50:10', NULL, NULL, 7, 202, 18, 'FullWidth'),
(83, 'BlogSection', '2016-03-30 14:50:45', '2016-03-30 14:50:38', NULL, '<p><span id="docs-internal-guid-d4b3212e-c801-0d48-f3a6-349b6c9f93e3"><span>Luang Prabang was such a lovely place to stay for 5 nights, the French influence was really enjoyable, I think I improved my french while there too!! </span></span></p>', 8, 0, 18, 'FixedWidth'),
(84, 'BlogSection', '2016-03-30 14:52:23', '2016-03-30 14:52:18', NULL, NULL, 9, 205, 18, 'FixedWidth'),
(85, 'BlogSection', '2016-03-30 14:58:36', '2016-03-30 14:58:34', NULL, '<p><span id="docs-internal-guid-d1120993-c808-56b0-100a-45ae2617e677"><span>In Luang Prabang we went out to an organic farm to discover the life of a rice farmer. We had a very energetic guide named Lee, who explained to us the process of making sticking rice. </span></span></p>', 1, 0, 19, 'FixedWidth'),
(86, 'BlogSection', '2016-03-30 15:08:04', '2016-03-30 14:59:10', NULL, '<p><span id="docs-internal-guid-d1120993-c80b-7198-b962-d3aed7b4a8b4"><span>In the field, the first step is to plough with a water buffalo... or a faster mechanical water buffalo sometimes! We ploughed the fields with a lovely chap called Rudolf. After ploughing, you can sprinkle the rice, and watch it germinate for a few weeks. It\'s then planted in clumps and straight lines to grow up. Once fully grown, the rice is harvested and the grains are smacked out by whacking handfuls on a wooden board. Afterwards, winnowing the rice to blow away the grass. The process continues, where you smash the rice with a somewhat giant mortar and pestle the shake and throw to get the husks and dust away. Because the rice is heavy, it will just fall back down. Then you have a grain! It can ground down further to flour using two stones, or be cooked up ready to eat. </span><span><br class="kix-line-break"></span></span></p>', 2, 208, 19, 'FixedWidth'),
(87, 'BlogSection', '2016-03-30 15:05:59', '2016-03-30 15:01:34', NULL, NULL, 3, 0, 19, 'FixedWidth'),
(88, 'BlogSection', '2016-03-30 15:03:09', '2016-03-30 15:02:29', NULL, '<p dir="ltr"><span>To cook the perfect sticky rice, Laos style. Rinse twice (very important because I\'ve heard that part so many times with emphasis on the two!) then soak the rice overnight. In the morning, bring a pot of watcher to the boil and place a bamboo basket on top ensuring the basket isn\'t actually touching that water. Place the rice in the basket and steam for about 30 minutes. And Voila! Perfect sticky rice.</span></p>', 4, 215, 19, 'FullWidth'),
(89, 'BlogSection', '2016-03-30 15:04:54', '2016-03-30 15:04:52', NULL, NULL, 5, 218, 19, 'FixedWidth'),
(90, 'BlogSection', '2016-03-30 15:14:11', '2016-03-30 15:13:57', NULL, '<p><span id="docs-internal-guid-494aaa03-c816-39b1-5f1a-e1c778886bb2"><span>We arrived in Vang Vieng around 3pm, feeling a bit worse for ware after a torturous 6 hour drive over the windiest hills I have ever been on, dodging chickens, dogs, scooters and humans by only millimetres! We decided that we\'d go for an explore in the countryside and ride 7kms to this blue lagoon...</span><span><br class="kix-line-break"></span><span><br class="kix-line-break"></span><span>Getting out of the Vang Vieng township was the best idea! The hills are so beautiful, very pointy and jagged, unlike anything familiar.  The ride was flat and we had the most comfy bikes on the planet! (Don\'t know how we managed to swing that one) After an hour or so, stopping for some cows and a few picture stops, we arrived at the blue lagoon... or really just a pretty swimming hole. There were swings and ropes for the dare devils to jump in from, or the lazy river part where we hung out watching. The water was cold and refreshing after a very hot bike ride!</span></span></p>', 1, 0, 20, 'FixedWidth'),
(91, 'BlogSection', '2016-03-30 15:19:41', '2016-03-30 15:17:42', NULL, '<p><span id="docs-internal-guid-494aaa03-c81b-c108-ce47-c31f319eac86"><span>The ride back was spectacular, with the layered mountains creating a stunning backdrop to a sunset photo!</span></span></p>', 2, 222, 20, 'FixedWidth'),
(92, 'BlogSection', '2016-03-30 15:21:29', '2016-03-30 15:21:24', NULL, NULL, 3, 229, 20, 'FixedWidth'),
(93, 'BlogSection', '2016-03-30 15:43:47', '2016-03-30 15:43:46', NULL, '<p dir="ltr"><span>This is the story of the most eventful-in-a-bad-way day so far on our trip through South East Asia. </span><span><br class="kix-line-break"></span><span><br class="kix-line-break"></span><span>We were in Vang Vieng, Laos. On a search for some kind of breakfast that would sit comfortably in our stomachs, for we had a 6 hour windy bus journey ahead of us. And if the day before winding up and down steep mountains was anything to go by, I could only hope it got flatter. </span><span><br class="kix-line-break"></span><span><br class="kix-line-break"></span><span>So we sat down and asked for coffee, obviously the most important breakfast item and set 1, a baguette and fried egg. This was about the 6th or 7th baguette and fried egg breakfast we\'d had in Laos, the French really left their imprint and taught everyone how to cook great baguettes. I was really enjoying this particular one, crusty on the outside and steaming hot on the inside. It was delicious. That was, until I saw some spots in the bread, I thought it was yeast but oh no, this was more than yeast. It was a whole damn family of ants! Cooked. Into my baguette. I was super thrilled by this discovery, free extra protein in my breakfast couldn\'t be more wanted. We quickly passed some Kip to the lady and walked back to the guesthouse. I wasn\'t feeling ill, I probably didn\'t eat many but it still left me feeling queasy. </span><span><br class="kix-line-break"></span><span><br class="kix-line-break"></span><span>I\'m not sure if it was the ants or the horrendous roads that 2 hours after breakfast made me scream STOP!!! to our poor Lao driver who spoke not a word of english. He pulled the van over and I leapt out feeling the worst sickness in a long time. After composing myself and drinking some water we continued, my new position. Front passenger seat. I think they were all afraid I\'d puke in the van, I was just pleased to be able to see the road and have air con. We continued for another 4 hours on roads with potholes every 50 metres, gravel every other 100 metres and Lao drivers who think any side of the road is theirs. I think we had about 30 chicken near misses, 20 scooter dodges and 10 dog swerves.</span><span><br class="kix-line-break"></span><span><br class="kix-line-break"></span><span>Eventually, we made it to Vientiane. The big foggy capital of Laos. I was so ready to jump off that bus and lay down for a bit but no. We did a tiki tour around the city, seeing more stupas, buddhas and temples, a museum and documentary and Vientianes version of the Arc de Triomphe. Where third incident were to occur, the worst of all. My phone got stolen by a lady selling sticky rice in a bamboo shoot. </span><span><br class="kix-line-break"></span><span><br class="kix-line-break"></span><span>So yeah, I was tired and we were all aimlessly wandering around this Arc in the middle of the road and I was sitting on a park bench. Not sure what happened between me sitting down, getting up and walking a bit down the path but my phone was not with me. The whole group had a look, and someone thought they saw the lady selling sticky rice in a bamboo shoot was holding it. Needless to say she scampered into the dust and I was left talking to the Police who didn\'t really seem like they could care less. But the story gets better...</span><span><br class="kix-line-break"></span><span><br class="kix-line-break"></span><span>Our group leader told me later on that evening the the Policeman was \'so sure\' he knew that lady and that she would be on the bus tomorrow morning so he can get my phone back. I thought it would be an unlikely story, and the more it developed, the more I understood I\'d have to bribe him about 150,000 Kip ($30 NZD) to retrieve my phone. Maybe. It all sounded too good to be true and this guy was up for a quick buck on the side. The next day, our group leader rings me again, he says this time the Policeman is 100% sure he knows where the woman lives, but it\'s 50kms away from the city. If I pay him 1,000,000 Kip ($200 NZD) he\'ll go and get it, Or I can give him a smaller bribe to get the address and go myself. Not sure I was up to confronting a random woman in some remote village who is meant to have my phone. My guess is it\'s already for sale somewhere down a back alley way. </span><span><br class="kix-line-break"></span><span><br class="kix-line-break"></span><span>I\'ve accepted the loss and got my handwritten report from  the police for insurance... so we\'ll see how that goes. Good thing I\'m in Asia and phones are cheap here!</span><span><br class="kix-line-break"></span><span><br class="kix-line-break"></span><span>Onwards and upwards to Vietnam, clearly Laos has had enough of me!</span><span><br class="kix-line-break"></span></p>', 1, 0, 21, 'FixedWidth'),
(94, 'BlogSection', '2016-03-30 16:16:59', '2016-03-30 16:16:57', NULL, NULL, 1, 249, 22, 'FixedWidth'),
(95, 'BlogSection', '2016-03-30 16:18:22', '2016-03-30 16:18:20', NULL, NULL, 2, 257, 22, 'FixedWidth'),
(96, 'BlogSection', '2016-03-30 16:19:22', '2016-03-30 16:19:18', NULL, NULL, 3, 0, 22, 'FixedWidth'),
(97, 'BlogSection', '2016-03-30 16:27:51', '2016-03-30 16:26:45', NULL, NULL, 4, 262, 22, 'FixedWidth'),
(98, 'BlogSection', '2016-03-30 16:31:46', '2016-03-30 16:31:43', NULL, NULL, 5, 267, 22, 'FixedWidth'),
(99, 'BlogSection', '2016-03-30 16:45:49', '2016-03-30 16:43:31', NULL, '<p><iframe src="https://player.vimeo.com/video/159780113" width="800" height="451" frameborder="0"></iframe></p>', 6, 0, 22, 'FixedWidth');

-- --------------------------------------------------------

--
-- Table structure for table `BlogSection_SectionImages`
--

CREATE TABLE `BlogSection_SectionImages` (
  `ID` int(11) NOT NULL,
  `BlogSectionID` int(11) NOT NULL DEFAULT '0',
  `ImageID` int(11) NOT NULL DEFAULT '0',
  `SortOrder` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `BlogSection_SectionImages`
--

INSERT INTO `BlogSection_SectionImages` (`ID`, `BlogSectionID`, `ImageID`, `SortOrder`) VALUES
(1, 6, 12, 1),
(2, 6, 15, 2),
(3, 6, 16, 3),
(4, 6, 14, 4),
(5, 7, 26, 1),
(6, 7, 27, 2),
(7, 7, 28, 3),
(8, 7, 29, 4),
(13, 12, 46, 5),
(14, 12, 47, 6),
(15, 12, 48, 7),
(16, 12, 49, 8),
(17, 16, 52, 2),
(18, 16, 51, 1),
(19, 19, 55, 1),
(20, 19, 57, 2),
(21, 24, 66, 3),
(22, 24, 64, 1),
(23, 24, 65, 2),
(24, 24, 67, 4),
(25, 26, 78, 7),
(26, 26, 76, 6),
(27, 26, 74, 4),
(28, 26, 71, 1),
(30, 26, 77, 8),
(31, 26, 73, 3),
(33, 28, 83, 1),
(34, 28, 84, 2),
(35, 30, 90, 5),
(36, 30, 93, 8),
(37, 30, 88, 3),
(38, 30, 87, 2),
(39, 30, 86, 1),
(40, 30, 91, 6),
(41, 30, 89, 4),
(42, 30, 92, 7),
(43, 32, 95, 1),
(44, 32, 96, 2),
(45, 32, 97, 3),
(46, 32, 98, 4),
(47, 34, 101, 2),
(48, 34, 100, 1),
(49, 41, 108, 1),
(50, 41, 107, 2),
(51, 41, 110, 4),
(52, 41, 109, 3),
(53, 42, 114, 1),
(54, 42, 115, 2),
(55, 51, 118, 2),
(56, 51, 117, 1),
(57, 52, 123, 4),
(58, 52, 120, 1),
(59, 52, 122, 3),
(60, 52, 121, 2),
(61, 63, 127, 3),
(62, 63, 128, 4),
(63, 63, 126, 1),
(64, 63, 125, 2),
(65, 64, 134, 3),
(66, 64, 132, 1),
(67, 64, 133, 2),
(68, 64, 135, 4),
(69, 65, 137, 1),
(70, 65, 138, 2),
(71, 65, 139, 3),
(72, 65, 140, 4),
(73, 67, 146, 4),
(74, 67, 147, 3),
(75, 67, 149, 6),
(76, 67, 144, 1),
(77, 67, 145, 2),
(78, 67, 148, 5),
(79, 69, 153, 2),
(80, 69, 152, 1),
(81, 70, 157, 3),
(82, 70, 160, 6),
(83, 70, 156, 2),
(84, 70, 155, 1),
(85, 70, 159, 5),
(86, 70, 158, 4),
(87, 70, 161, 7),
(88, 70, 162, 8),
(89, 71, 165, 2),
(90, 71, 164, 1),
(91, 72, 170, 4),
(92, 72, 169, 3),
(93, 72, 168, 2),
(94, 72, 171, 5),
(95, 72, 172, 6),
(96, 72, 173, 7),
(97, 72, 174, 8),
(98, 72, 167, 1),
(99, 74, 185, 3),
(100, 74, 186, 4),
(101, 74, 187, 5),
(102, 74, 188, 6),
(103, 74, 181, 1),
(104, 74, 182, 2),
(130, 80, 200, 1),
(131, 80, 199, 2),
(132, 80, 196, 3),
(133, 80, 194, 5),
(134, 80, 195, 6),
(135, 80, 198, 4),
(136, 84, 204, 2),
(137, 84, 203, 1),
(138, 87, 214, 6),
(139, 87, 209, 1),
(140, 87, 213, 5),
(142, 87, 211, 3),
(143, 87, 210, 2),
(144, 89, 216, 1),
(145, 89, 217, 2),
(146, 87, 219, 7),
(147, 91, 223, 1),
(148, 91, 224, 2),
(149, 91, 225, 3),
(150, 91, 226, 4),
(151, 91, 227, 5),
(152, 91, 228, 6),
(153, 92, 230, 1),
(154, 92, 231, 2),
(155, 74, 240, 7),
(156, 74, 241, 8),
(157, 94, 250, 2),
(158, 94, 248, 1),
(159, 94, 253, 4),
(160, 94, 252, 3),
(161, 94, 254, 6),
(162, 94, 256, 8),
(163, 94, 255, 7),
(164, 94, 251, 5),
(165, 95, 259, 2),
(166, 95, 258, 1),
(167, 96, 260, 1),
(168, 96, 261, 2),
(169, 97, 263, 1),
(170, 97, 264, 2),
(171, 97, 265, 3),
(172, 97, 266, 4),
(173, 98, 268, 1),
(174, 98, 269, 2),
(175, 98, 270, 4),
(176, 98, 271, 5),
(177, 98, 272, 3),
(178, 98, 273, 6),
(179, 98, 275, 8),
(180, 98, 274, 7),
(181, 98, 276, 9),
(182, 98, 277, 10);

-- --------------------------------------------------------

--
-- Table structure for table `BlogTag`
--

CREATE TABLE `BlogTag` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('BlogTag') DEFAULT 'BlogTag',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `URLSegment` varchar(255) DEFAULT NULL,
  `BlogID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `BlogTree`
--

CREATE TABLE `BlogTree` (
  `ID` int(11) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `LandingPageFreshness` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `BlogTree_Live`
--

CREATE TABLE `BlogTree_Live` (
  `ID` int(11) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `LandingPageFreshness` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `BlogTree_versions`
--

CREATE TABLE `BlogTree_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `Name` varchar(255) DEFAULT NULL,
  `LandingPageFreshness` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Blog_Contributors`
--

CREATE TABLE `Blog_Contributors` (
  `ID` int(11) NOT NULL,
  `BlogID` int(11) NOT NULL DEFAULT '0',
  `MemberID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Blog_Editors`
--

CREATE TABLE `Blog_Editors` (
  `ID` int(11) NOT NULL,
  `BlogID` int(11) NOT NULL DEFAULT '0',
  `MemberID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Blog_Live`
--

CREATE TABLE `Blog_Live` (
  `ID` int(11) NOT NULL,
  `PostsPerPage` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Blog_Live`
--

INSERT INTO `Blog_Live` (`ID`, `PostsPerPage`) VALUES
(1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `Blog_versions`
--

CREATE TABLE `Blog_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `PostsPerPage` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Blog_versions`
--

INSERT INTO `Blog_versions` (`ID`, `RecordID`, `Version`, `PostsPerPage`) VALUES
(1, 1, 3, 0),
(2, 1, 4, 0),
(3, 1, 5, 0),
(4, 1, 6, 0),
(5, 1, 7, 0),
(6, 1, 8, 0),
(7, 1, 9, 0),
(8, 1, 10, 0),
(9, 1, 11, 0),
(10, 1, 12, 0),
(11, 1, 13, 0),
(12, 1, 14, 0);

-- --------------------------------------------------------

--
-- Table structure for table `Blog_Writers`
--

CREATE TABLE `Blog_Writers` (
  `ID` int(11) NOT NULL,
  `BlogID` int(11) NOT NULL DEFAULT '0',
  `MemberID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ContactRequest`
--

CREATE TABLE `ContactRequest` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('ContactRequest') DEFAULT 'ContactRequest',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Name` mediumtext,
  `Email` mediumtext,
  `Message` mediumtext,
  `Sort` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Country`
--

CREATE TABLE `Country` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('Country') DEFAULT 'Country',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` mediumtext,
  `Sort` int(11) NOT NULL DEFAULT '0',
  `PatternID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Country`
--

INSERT INTO `Country` (`ID`, `ClassName`, `LastEdited`, `Created`, `Title`, `Sort`, `PatternID`) VALUES
(1, 'Country', '2016-02-17 11:02:27', '2016-02-16 08:56:41', 'Thailand', 0, 22),
(2, 'Country', '2016-02-17 10:57:20', '2016-02-16 08:56:51', 'Laos', 0, 18),
(3, 'Country', '2016-02-17 10:58:56', '2016-02-16 08:56:59', 'Vietnam', 0, 19),
(4, 'Country', '2016-02-17 11:01:36', '2016-02-16 08:57:09', 'Singapore', 0, 21),
(5, 'Country', '2016-02-16 08:57:38', '2016-02-16 08:57:38', 'United Kingdom', 0, 0),
(6, 'Country', '2016-02-16 08:57:44', '2016-02-16 08:57:44', 'France', 0, 0),
(7, 'Country', '2016-02-16 08:57:52', '2016-02-16 08:57:52', 'Italy', 0, 0),
(8, 'Country', '2016-02-16 08:57:59', '2016-02-16 08:57:59', 'Spain', 0, 0),
(9, 'Country', '2016-02-17 11:08:11', '2016-02-17 11:03:19', 'Indonesia', 0, 24),
(10, 'Country', '2016-03-07 17:01:01', '2016-03-07 16:59:51', 'New Zealand', 0, 106);

-- --------------------------------------------------------

--
-- Table structure for table `Country_BlogPosts`
--

CREATE TABLE `Country_BlogPosts` (
  `ID` int(11) NOT NULL,
  `CountryID` int(11) NOT NULL DEFAULT '0',
  `BlogPostID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ErrorPage`
--

CREATE TABLE `ErrorPage` (
  `ID` int(11) NOT NULL,
  `ErrorCode` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ErrorPage`
--

INSERT INTO `ErrorPage` (`ID`, `ErrorCode`) VALUES
(4, 404),
(5, 500);

-- --------------------------------------------------------

--
-- Table structure for table `ErrorPage_Live`
--

CREATE TABLE `ErrorPage_Live` (
  `ID` int(11) NOT NULL,
  `ErrorCode` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ErrorPage_Live`
--

INSERT INTO `ErrorPage_Live` (`ID`, `ErrorCode`) VALUES
(4, 404),
(5, 500);

-- --------------------------------------------------------

--
-- Table structure for table `ErrorPage_versions`
--

CREATE TABLE `ErrorPage_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `ErrorCode` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `File`
--

CREATE TABLE `File` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('File','Folder','Image','Image_Cached') DEFAULT 'File',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Filename` mediumtext,
  `Content` mediumtext,
  `ShowInSearch` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  `OwnerID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `File`
--

INSERT INTO `File` (`ID`, `ClassName`, `LastEdited`, `Created`, `Name`, `Title`, `Filename`, `Content`, `ShowInSearch`, `ParentID`, `OwnerID`) VALUES
(1, 'Folder', '2016-02-11 22:41:25', '2016-02-11 22:41:25', 'Uploads', 'Uploads', 'assets/Uploads/', NULL, 1, 0, 0),
(2, 'Image', '2016-02-11 22:41:25', '2016-02-11 22:41:25', 'SilverStripeLogo.png', 'SilverStripeLogo.png', 'assets/Uploads/SilverStripeLogo.png', NULL, 1, 1, 0),
(3, 'Image', '2016-02-11 11:33:34', '2016-02-11 11:33:34', 'wallhaven-193742.jpg', 'wallhaven 193742', 'assets/Uploads/wallhaven-193742.jpg', NULL, 1, 1, 1),
(4, 'Image', '2016-02-11 11:33:40', '2016-02-11 11:33:40', 'wallhaven-193743.jpg', 'wallhaven 193743', 'assets/Uploads/wallhaven-193743.jpg', NULL, 1, 1, 1),
(5, 'Image', '2016-02-13 00:04:11', '2016-02-13 00:04:11', 'logo.png', 'logo', 'assets/Uploads/logo.png', NULL, 1, 1, 1),
(6, 'Image', '2016-02-13 00:13:14', '2016-02-13 00:13:14', 'wallhaven-15170.jpg', 'wallhaven 15170', 'assets/Uploads/wallhaven-15170.jpg', NULL, 1, 1, 1),
(7, 'Image', '2016-02-13 11:06:30', '2016-02-13 11:06:30', 'banner-bg.jpg', 'banner bg', 'assets/Uploads/banner-bg.jpg', NULL, 1, 1, 1),
(8, 'Image', '2016-02-13 11:30:45', '2016-02-13 11:30:45', 'wallhaven-193744.jpg', 'wallhaven 193744', 'assets/Uploads/wallhaven-193744.jpg', NULL, 1, 1, 1),
(9, 'Image', '2016-02-13 11:31:02', '2016-02-13 11:31:02', 'banner-bg2.jpg', 'banner bg2', 'assets/Uploads/banner-bg2.jpg', NULL, 1, 1, 1),
(10, 'Image', '2016-02-24 10:13:01', '2016-02-13 11:31:40', 'wallhaven-193745.jpg', 'wallhaven 193745', 'assets/Uploads/wallhaven-193745.jpg', NULL, 1, 1, 1),
(11, 'Image', '2016-02-14 03:58:06', '2016-02-14 03:58:06', 'Mums-camera-25.06.2011-235.jpg', 'Mums camera 25.06.2011 235', 'assets/Uploads/Mums-camera-25.06.2011-235.jpg', NULL, 1, 1, 1),
(12, 'Image', '2016-02-14 04:05:49', '2016-02-14 04:05:49', 'Mums-camera-25.06.2011-230.jpg', 'Mums camera 25.06.2011 230', 'assets/Uploads/Mums-camera-25.06.2011-230.jpg', NULL, 1, 1, 1),
(13, 'Image', '2016-02-14 04:05:51', '2016-02-14 04:05:51', 'Mums-camera-25.06.2011-237.jpg', 'Mums camera 25.06.2011 237', 'assets/Uploads/Mums-camera-25.06.2011-237.jpg', NULL, 1, 1, 1),
(14, 'Image', '2016-02-14 04:05:59', '2016-02-14 04:05:59', 'Mums-camera-25.06.2011-240.jpg', 'Mums camera 25.06.2011 240', 'assets/Uploads/Mums-camera-25.06.2011-240.jpg', NULL, 1, 1, 1),
(15, 'Image', '2016-02-14 04:06:00', '2016-02-14 04:06:00', 'Mums-camera-25.06.2011-238.jpg', 'Mums camera 25.06.2011 238', 'assets/Uploads/Mums-camera-25.06.2011-238.jpg', NULL, 1, 1, 1),
(16, 'Image', '2016-02-14 04:06:02', '2016-02-14 04:06:02', 'Mums-camera-25.06.2011-239.jpg', 'Mums camera 25.06.2011 239', 'assets/Uploads/Mums-camera-25.06.2011-239.jpg', NULL, 1, 1, 1),
(17, 'Image', '2016-02-17 10:37:10', '2016-02-17 10:37:10', 'thailand-pattern.jpg', 'thailand pattern', 'assets/Uploads/thailand-pattern.jpg', NULL, 1, 1, 1),
(18, 'Image', '2016-02-17 10:57:18', '2016-02-17 10:57:18', 'laos-pattern.jpg', 'laos pattern', 'assets/Uploads/laos-pattern.jpg', NULL, 1, 1, 1),
(19, 'Image', '2016-02-17 10:58:53', '2016-02-17 10:58:53', 'vietnam-pattern.jpg', 'vietnam pattern', 'assets/Uploads/vietnam-pattern.jpg', NULL, 1, 1, 1),
(20, 'Image', '2016-02-17 11:00:17', '2016-02-17 11:00:17', 'vietnam.jpg', 'vietnam', 'assets/Uploads/vietnam.jpg', NULL, 1, 1, 1),
(21, 'Image', '2016-02-17 11:01:34', '2016-02-17 11:01:34', 'singapore-pattern.jpg', 'singapore pattern', 'assets/Uploads/singapore-pattern.jpg', NULL, 1, 1, 1),
(22, 'Image', '2016-02-17 11:02:25', '2016-02-17 11:02:25', 'thailand-pattern2.jpg', 'thailand pattern2', 'assets/Uploads/thailand-pattern2.jpg', NULL, 1, 1, 1),
(23, 'Image', '2016-02-17 11:07:55', '2016-02-17 11:05:08', 'indonesia-pattern.jpg', 'indonesia pattern', 'assets/Uploads/indonesia-pattern.jpg', NULL, 1, 1, 1),
(24, 'Image', '2016-02-17 11:08:06', '2016-02-17 11:08:06', 'Indonesia-pattern2.jpg', 'Indonesia pattern2', 'assets/Uploads/Indonesia-pattern2.jpg', NULL, 1, 1, 1),
(25, 'Image', '2016-02-17 11:13:31', '2016-02-17 11:13:31', 'Mums-camera-26.06.2011-238.jpg', 'Mums camera 26.06.2011 238', 'assets/Uploads/Mums-camera-26.06.2011-238.jpg', NULL, 1, 1, 1),
(26, 'Image', '2016-02-17 11:14:25', '2016-02-17 11:14:25', 'Mums-camera-25.06.2011-233.jpg', 'Mums camera 25.06.2011 233', 'assets/Uploads/Mums-camera-25.06.2011-233.jpg', NULL, 1, 1, 1),
(27, 'Image', '2016-02-17 11:14:27', '2016-02-17 11:14:27', 'Mums-camera-25.06.2011-234.jpg', 'Mums camera 25.06.2011 234', 'assets/Uploads/Mums-camera-25.06.2011-234.jpg', NULL, 1, 1, 1),
(28, 'Image', '2016-02-17 11:14:30', '2016-02-17 11:14:30', 'Mums-camera-26.06.2011-235.jpg', 'Mums camera 26.06.2011 235', 'assets/Uploads/Mums-camera-26.06.2011-235.jpg', NULL, 1, 1, 1),
(29, 'Image', '2016-02-17 11:14:32', '2016-02-17 11:14:32', 'Mums-camera-25.06.2011-236.jpg', 'Mums camera 25.06.2011 236', 'assets/Uploads/Mums-camera-25.06.2011-236.jpg', NULL, 1, 1, 1),
(30, 'Image', '2016-02-24 03:17:13', '2016-02-24 03:17:13', 'ir-logo.png', 'ir logo', 'assets/Uploads/ir-logo.png', NULL, 1, 1, 1),
(31, 'Image', '2016-02-24 03:17:33', '2016-02-24 03:17:33', 'ir-logo-wh.png', 'ir logo wh', 'assets/Uploads/ir-logo-wh.png', NULL, 1, 1, 1),
(32, 'Image', '2016-02-24 03:26:38', '2016-02-24 03:26:38', 'ir-banner.jpg', 'ir banner', 'assets/Uploads/ir-banner.jpg', NULL, 1, 1, 1),
(33, 'Image', '2016-02-24 03:27:31', '2016-02-24 03:27:31', 'ir-banner2.jpg', 'ir banner2', 'assets/Uploads/ir-banner2.jpg', NULL, 1, 1, 1),
(34, 'Image', '2016-02-24 03:28:43', '2016-02-24 03:28:43', 'ir-logo2.png', 'ir logo2', 'assets/Uploads/ir-logo2.png', NULL, 1, 1, 1),
(35, 'Image', '2016-02-24 10:12:03', '2016-02-24 10:12:03', 'IMG-9616.JPG', 'IMG 9616', 'assets/Uploads/IMG-9616.JPG', NULL, 1, 1, 1),
(36, 'Image', '2016-02-24 10:13:49', '2016-02-24 10:13:49', 'IMG-9617.JPG', 'IMG 9617', 'assets/Uploads/IMG-9617.JPG', NULL, 1, 1, 1),
(37, 'Image', '2016-02-24 10:16:05', '2016-02-24 10:16:05', 'IMG-9616.jpg', 'IMG 9616', 'assets/Uploads/IMG-9616.jpg', NULL, 1, 1, 1),
(38, 'Image', '2016-02-24 10:16:22', '2016-02-24 10:16:22', 'IMG-9617.jpg', 'IMG 9617', 'assets/Uploads/IMG-9617.jpg', NULL, 1, 1, 1),
(39, 'Image', '2016-02-24 10:27:36', '2016-02-24 10:27:36', 'IMG-9616-cropped.jpg', 'IMG 9616 cropped', 'assets/Uploads/IMG-9616-cropped.jpg', NULL, 1, 1, 1),
(40, 'Image', '2016-02-24 10:28:01', '2016-02-24 10:28:01', 'IMG-9616-cropped2.jpg', 'IMG 9616 cropped2', 'assets/Uploads/IMG-9616-cropped2.jpg', NULL, 1, 1, 1),
(41, 'Image', '2016-02-24 23:49:42', '2016-02-24 23:49:42', 'IMG-9319.JPG', 'IMG 9319', 'assets/Uploads/IMG-9319.JPG', NULL, 1, 1, 1),
(42, 'Image', '2016-02-24 23:56:10', '2016-02-24 23:56:10', 'IMG-9411.JPG', 'IMG 9411', 'assets/Uploads/IMG-9411.JPG', NULL, 1, 1, 1),
(43, 'Image', '2016-02-24 23:56:19', '2016-02-24 23:56:19', 'IMG-9415.JPG', 'IMG 9415', 'assets/Uploads/IMG-9415.JPG', NULL, 1, 1, 1),
(44, 'Image', '2016-02-24 23:56:47', '2016-02-24 23:56:47', 'IMG-9352.JPG', 'IMG 9352', 'assets/Uploads/IMG-9352.JPG', NULL, 1, 1, 1),
(45, 'Image', '2016-02-24 23:57:32', '2016-02-24 23:57:32', 'IMG-9346.JPG', 'IMG 9346', 'assets/Uploads/IMG-9346.JPG', NULL, 1, 1, 1),
(46, 'Image', '2016-02-25 09:37:02', '2016-02-25 09:37:02', 'monkey4.jpg', 'monkey4', 'assets/Uploads/monkey4.jpg', NULL, 1, 1, 1),
(47, 'Image', '2016-02-25 09:37:17', '2016-02-25 09:37:17', 'monkey1.jpg', 'monkey1', 'assets/Uploads/monkey1.jpg', NULL, 1, 1, 1),
(48, 'Image', '2016-02-25 09:37:25', '2016-02-25 09:37:25', 'monkey2.jpg', 'monkey2', 'assets/Uploads/monkey2.jpg', NULL, 1, 1, 1),
(49, 'Image', '2016-02-25 09:37:30', '2016-02-25 09:37:30', 'monkey3.jpg', 'monkey3', 'assets/Uploads/monkey3.jpg', NULL, 1, 1, 1),
(50, 'Image', '2016-02-25 09:47:47', '2016-02-25 09:47:47', 'IMG-9438.jpg', 'IMG 9438', 'assets/Uploads/IMG-9438.jpg', NULL, 1, 1, 1),
(51, 'Image', '2016-02-25 09:53:40', '2016-02-25 09:53:40', 'IMG-9816.jpg', 'IMG 9816', 'assets/Uploads/IMG-9816.jpg', NULL, 1, 1, 1),
(52, 'Image', '2016-02-25 09:53:46', '2016-02-25 09:53:46', 'IMG-9432.jpg', 'IMG 9432', 'assets/Uploads/IMG-9432.jpg', NULL, 1, 1, 1),
(53, 'Image', '2016-02-25 09:55:55', '2016-02-25 09:55:55', 'IMG-9565.jpg', 'IMG 9565', 'assets/Uploads/IMG-9565.jpg', NULL, 1, 1, 1),
(54, 'Image', '2016-02-25 10:00:57', '2016-02-25 10:00:57', 'IMG-0060.jpg', 'IMG 0060', 'assets/Uploads/IMG-0060.jpg', NULL, 1, 1, 1),
(55, 'Image', '2016-02-25 10:01:02', '2016-02-25 10:01:02', 'IMG-0018.jpg', 'IMG 0018', 'assets/Uploads/IMG-0018.jpg', NULL, 1, 1, 1),
(56, 'Image', '2016-02-25 10:01:23', '2016-02-25 10:01:23', 'IMG-0072.jpg', 'IMG 0072', 'assets/Uploads/IMG-0072.jpg', NULL, 1, 1, 1),
(57, 'Image', '2016-02-25 10:02:30', '2016-02-25 10:02:30', 'IMG-73.jpg', 'IMG 73', 'assets/Uploads/IMG-73.jpg', NULL, 1, 1, 1),
(58, 'Image', '2016-02-25 10:11:03', '2016-02-25 10:11:03', 'IMG-9638.jpg', 'IMG 9638', 'assets/Uploads/IMG-9638.jpg', NULL, 1, 1, 1),
(59, 'Image', '2016-02-25 10:11:32', '2016-02-25 10:11:32', 'IMG-9639.jpg', 'IMG 9639', 'assets/Uploads/IMG-9639.jpg', NULL, 1, 1, 1),
(60, 'Image', '2016-02-25 10:14:47', '2016-02-25 10:14:47', 'IMG-9923.jpg', 'IMG 9923', 'assets/Uploads/IMG-9923.jpg', NULL, 1, 1, 1),
(61, 'Image', '2016-03-07 09:01:52', '2016-03-07 09:01:52', 'IMAG0527.jpg', 'IMAG0527', 'assets/Uploads/IMAG0527.jpg', NULL, 1, 1, 1),
(62, 'Image', '2016-03-07 09:04:30', '2016-03-07 09:04:30', 'IMAG528.jpg', 'IMAG528', 'assets/Uploads/IMAG528.jpg', NULL, 1, 1, 1),
(63, 'Image', '2016-03-07 09:05:19', '2016-03-07 09:05:19', 'IMAG529.jpg', 'IMAG529', 'assets/Uploads/IMAG529.jpg', NULL, 1, 1, 1),
(64, 'Image', '2016-03-07 09:17:28', '2016-03-07 09:17:28', 'IMAG0318.jpg', 'IMAG0318', 'assets/Uploads/IMAG0318.jpg', NULL, 1, 1, 1),
(65, 'Image', '2016-03-07 09:17:30', '2016-03-07 09:17:30', 'IMAG0496.jpg', 'IMAG0496', 'assets/Uploads/IMAG0496.jpg', NULL, 1, 1, 1),
(66, 'Image', '2016-03-07 09:18:20', '2016-03-07 09:18:20', 'IMAG0260.jpg', 'IMAG0260', 'assets/Uploads/IMAG0260.jpg', NULL, 1, 1, 1),
(67, 'Image', '2016-03-07 09:18:31', '2016-03-07 09:18:31', 'IMAG0520.jpg', 'IMAG0520', 'assets/Uploads/IMAG0520.jpg', NULL, 1, 1, 1),
(68, 'Image', '2016-03-07 09:19:46', '2016-03-07 09:19:46', 'IMAG0225.jpg', 'IMAG0225', 'assets/Uploads/IMAG0225.jpg', NULL, 1, 1, 1),
(69, 'Image', '2016-03-07 09:21:11', '2016-03-07 09:21:11', 'IMAG0382.jpg', 'IMAG0382', 'assets/Uploads/IMAG0382.jpg', NULL, 1, 1, 1),
(70, 'Image', '2016-03-07 09:21:44', '2016-03-07 09:21:44', 'IMAG383.jpg', 'IMAG383', 'assets/Uploads/IMAG383.jpg', NULL, 1, 1, 1),
(71, 'Image', '2016-03-07 09:22:31', '2016-03-07 09:22:31', 'IMAG0427.jpg', 'IMAG0427', 'assets/Uploads/IMAG0427.jpg', NULL, 1, 1, 1),
(72, 'Image', '2016-03-07 09:22:45', '2016-03-07 09:22:45', 'IMAG0453.jpg', 'IMAG0453', 'assets/Uploads/IMAG0453.jpg', NULL, 1, 1, 1),
(73, 'Image', '2016-03-07 09:23:03', '2016-03-07 09:23:03', 'IMAG0546.jpg', 'IMAG0546', 'assets/Uploads/IMAG0546.jpg', NULL, 1, 1, 1),
(74, 'Image', '2016-03-07 09:23:20', '2016-03-07 09:23:20', 'IMAG0362.jpg', 'IMAG0362', 'assets/Uploads/IMAG0362.jpg', NULL, 1, 1, 1),
(75, 'Image', '2016-03-07 09:23:54', '2016-03-07 09:23:54', 'IMAG226.jpg', 'IMAG226', 'assets/Uploads/IMAG226.jpg', NULL, 1, 1, 1),
(76, 'Image', '2016-03-07 09:24:08', '2016-03-07 09:24:08', 'IMAG0223.jpg', 'IMAG0223', 'assets/Uploads/IMAG0223.jpg', NULL, 1, 1, 1),
(77, 'Image', '2016-03-07 09:24:21', '2016-03-07 09:24:21', 'IMAG0533.jpg', 'IMAG0533', 'assets/Uploads/IMAG0533.jpg', NULL, 1, 1, 1),
(78, 'Image', '2016-03-07 09:24:28', '2016-03-07 09:24:28', 'IMAG0177.jpg', 'IMAG0177', 'assets/Uploads/IMAG0177.jpg', NULL, 1, 1, 1),
(79, 'Image', '2016-03-07 09:24:57', '2016-03-07 09:24:57', 'DSC02948.jpg', 'DSC02948', 'assets/Uploads/DSC02948.jpg', NULL, 1, 1, 1),
(80, 'Image', '2016-03-07 16:28:33', '2016-03-07 16:28:33', 'IMAG0900.jpg', 'IMAG0900', 'assets/Uploads/IMAG0900.jpg', NULL, 1, 1, 1),
(81, 'Image', '2016-03-07 16:34:10', '2016-03-07 16:34:10', 'IMAG901.jpg', 'IMAG901', 'assets/Uploads/IMAG901.jpg', NULL, 1, 1, 1),
(82, 'Image', '2016-03-07 16:34:39', '2016-03-07 16:34:39', 'IMAG902.jpg', 'IMAG902', 'assets/Uploads/IMAG902.jpg', NULL, 1, 1, 1),
(83, 'Image', '2016-03-07 16:38:59', '2016-03-07 16:38:59', 'IMAG0564.jpg', 'IMAG0564', 'assets/Uploads/IMAG0564.jpg', NULL, 1, 1, 1),
(84, 'Image', '2016-03-07 16:39:09', '2016-03-07 16:39:09', 'IMAG0612.jpg', 'IMAG0612', 'assets/Uploads/IMAG0612.jpg', NULL, 1, 1, 1),
(85, 'Image', '2016-03-07 16:39:35', '2016-03-07 16:39:35', 'DSC02982.jpg', 'DSC02982', 'assets/Uploads/DSC02982.jpg', NULL, 1, 1, 1),
(86, 'Image', '2016-03-07 16:40:35', '2016-03-07 16:40:35', 'IMAG0640.jpg', 'IMAG0640', 'assets/Uploads/IMAG0640.jpg', NULL, 1, 1, 1),
(87, 'Image', '2016-03-07 16:40:43', '2016-03-07 16:40:43', 'IMAG0625.jpg', 'IMAG0625', 'assets/Uploads/IMAG0625.jpg', NULL, 1, 1, 1),
(88, 'Image', '2016-03-07 16:41:01', '2016-03-07 16:41:01', 'IMAG0618.jpg', 'IMAG0618', 'assets/Uploads/IMAG0618.jpg', NULL, 1, 1, 1),
(89, 'Image', '2016-03-07 16:41:09', '2016-03-07 16:41:09', 'IMAG0689.jpg', 'IMAG0689', 'assets/Uploads/IMAG0689.jpg', NULL, 1, 1, 1),
(90, 'Image', '2016-03-07 16:41:23', '2016-03-07 16:41:23', 'DSC03072.jpg', 'DSC03072', 'assets/Uploads/DSC03072.jpg', NULL, 1, 1, 1),
(91, 'Image', '2016-03-07 16:41:36', '2016-03-07 16:41:36', 'IMAG0668.jpg', 'IMAG0668', 'assets/Uploads/IMAG0668.jpg', NULL, 1, 1, 1),
(92, 'Image', '2016-03-07 16:42:07', '2016-03-07 16:42:07', 'IMAG0699.jpg', 'IMAG0699', 'assets/Uploads/IMAG0699.jpg', NULL, 1, 1, 1),
(93, 'Image', '2016-03-07 16:42:17', '2016-03-07 16:42:17', 'DSC03094.jpg', 'DSC03094', 'assets/Uploads/DSC03094.jpg', NULL, 1, 1, 1),
(94, 'Image', '2016-03-07 16:42:47', '2016-03-07 16:42:47', 'IMAG0748.jpg', 'IMAG0748', 'assets/Uploads/IMAG0748.jpg', NULL, 1, 1, 1),
(95, 'Image', '2016-03-07 16:44:02', '2016-03-07 16:44:02', 'IMAG0784.jpg', 'IMAG0784', 'assets/Uploads/IMAG0784.jpg', NULL, 1, 1, 1),
(96, 'Image', '2016-03-07 16:44:03', '2016-03-07 16:44:03', 'IMAG0821.jpg', 'IMAG0821', 'assets/Uploads/IMAG0821.jpg', NULL, 1, 1, 1),
(97, 'Image', '2016-03-07 16:45:12', '2016-03-07 16:45:12', 'IMAG0887.jpg', 'IMAG0887', 'assets/Uploads/IMAG0887.jpg', NULL, 1, 1, 1),
(98, 'Image', '2016-03-07 16:45:14', '2016-03-07 16:45:14', 'IMAG903.jpg', 'IMAG903', 'assets/Uploads/IMAG903.jpg', NULL, 1, 1, 1),
(99, 'Image', '2016-03-07 16:46:01', '2016-03-07 16:46:01', 'DSC03145.jpg', 'DSC03145', 'assets/Uploads/DSC03145.jpg', NULL, 1, 1, 1),
(100, 'Image', '2016-03-07 16:48:16', '2016-03-07 16:48:16', 'IMAG0932.jpg', 'IMAG0932', 'assets/Uploads/IMAG0932.jpg', NULL, 1, 1, 1),
(101, 'Image', '2016-03-07 16:48:33', '2016-03-07 16:48:33', 'DSC03273.jpg', 'DSC03273', 'assets/Uploads/DSC03273.jpg', NULL, 1, 1, 1),
(102, 'Image', '2016-03-07 16:53:46', '2016-03-07 16:53:46', 'DSC3146.jpg', 'DSC3146', 'assets/Uploads/DSC3146.jpg', NULL, 1, 1, 1),
(103, 'Image', '2016-03-07 16:54:34', '2016-03-07 16:54:34', 'DSC2983.jpg', 'DSC2983', 'assets/Uploads/DSC2983.jpg', NULL, 1, 1, 1),
(104, 'Image', '2016-03-07 16:57:48', '2016-03-07 16:57:48', 'DSC3147.jpg', 'DSC3147', 'assets/Uploads/DSC3147.jpg', NULL, 1, 1, 1),
(105, 'Image', '2016-03-07 16:58:25', '2016-03-07 16:58:25', 'DSC3148.jpg', 'DSC3148', 'assets/Uploads/DSC3148.jpg', NULL, 1, 1, 1),
(106, 'Image', '2016-03-07 17:00:57', '2016-03-07 17:00:57', 'nz-pattern.jpg', 'nz pattern', 'assets/Uploads/nz-pattern.jpg', NULL, 1, 1, 1),
(107, 'Image', '2016-03-27 11:07:58', '2016-03-27 11:07:58', 'DSC02596.jpg', 'DSC02596', 'assets/Uploads/DSC02596.jpg', NULL, 1, 1, 1),
(108, 'Image', '2016-03-27 11:07:59', '2016-03-27 11:07:59', 'DSC02562.jpg', 'DSC02562', 'assets/Uploads/DSC02562.jpg', NULL, 1, 1, 1),
(109, 'Image', '2016-03-27 11:08:30', '2016-03-27 11:08:30', 'IMAG0290.jpg', 'IMAG0290', 'assets/Uploads/IMAG0290.jpg', NULL, 1, 1, 1),
(110, 'Image', '2016-03-27 11:08:56', '2016-03-27 11:08:56', 'DSC02637.jpg', 'DSC02637', 'assets/Uploads/DSC02637.jpg', NULL, 1, 1, 1),
(111, 'Image', '2016-03-27 11:11:01', '2016-03-27 11:11:01', 'DSC02923.jpg', 'DSC02923', 'assets/Uploads/DSC02923.jpg', NULL, 1, 1, 1),
(112, 'Image', '2016-03-27 11:11:26', '2016-03-27 11:11:26', 'DSC02877.jpg', 'DSC02877', 'assets/Uploads/DSC02877.jpg', NULL, 1, 1, 1),
(113, 'Image', '2016-03-27 11:11:28', '2016-03-27 11:11:28', 'DSC02884.jpg', 'DSC02884', 'assets/Uploads/DSC02884.jpg', NULL, 1, 1, 1),
(114, 'Image', '2016-03-27 11:12:19', '2016-03-27 11:12:19', 'DSC2878.jpg', 'DSC2878', 'assets/Uploads/DSC2878.jpg', NULL, 1, 1, 1),
(115, 'Image', '2016-03-27 11:12:27', '2016-03-27 11:12:27', 'DSC2885.jpg', 'DSC2885', 'assets/Uploads/DSC2885.jpg', NULL, 1, 1, 1),
(116, 'Image', '2016-03-27 11:17:12', '2016-03-27 11:17:12', 'DSC02620.jpg', 'DSC02620', 'assets/Uploads/DSC02620.jpg', NULL, 1, 1, 1),
(117, 'Image', '2016-03-27 11:30:12', '2016-03-27 11:30:12', 'IMAG619.jpg', 'IMAG619', 'assets/Uploads/IMAG619.jpg', NULL, 1, 1, 1),
(118, 'Image', '2016-03-27 11:30:16', '2016-03-27 11:30:16', 'DSC03046.jpg', 'DSC03046', 'assets/Uploads/DSC03046.jpg', NULL, 1, 1, 1),
(119, 'Image', '2016-03-27 11:30:26', '2016-03-27 11:30:26', 'DSC03027.jpg', 'DSC03027', 'assets/Uploads/DSC03027.jpg', NULL, 1, 1, 1),
(120, 'Image', '2016-03-27 11:34:42', '2016-03-27 11:34:42', 'DSC3095.jpg', 'DSC3095', 'assets/Uploads/DSC3095.jpg', NULL, 1, 1, 1),
(121, 'Image', '2016-03-27 11:34:55', '2016-03-27 11:34:55', 'IMAG700.jpg', 'IMAG700', 'assets/Uploads/IMAG700.jpg', NULL, 1, 1, 1),
(122, 'Image', '2016-03-27 11:35:12', '2016-03-27 11:35:12', 'IMAG0705.jpg', 'IMAG0705', 'assets/Uploads/IMAG0705.jpg', NULL, 1, 1, 1),
(123, 'Image', '2016-03-27 11:35:15', '2016-03-27 11:35:15', 'DSC03085.jpg', 'DSC03085', 'assets/Uploads/DSC03085.jpg', NULL, 1, 1, 1),
(124, 'Image', '2016-03-27 11:38:58', '2016-03-27 11:38:58', 'Screen-Shot-2016-03-27-at-6.38.13-PM.png', 'Screen Shot 2016 03 27 at 6.38.13 PM', 'assets/Uploads/Screen-Shot-2016-03-27-at-6.38.13-PM.png', NULL, 1, 1, 1),
(125, 'Image', '2016-03-27 11:48:32', '2016-03-27 11:48:32', 'Screen-Shot-2016-03-27-at-6.47.24-PM.png', 'Screen Shot 2016 03 27 at 6.47.24 PM', 'assets/Uploads/Screen-Shot-2016-03-27-at-6.47.24-PM.png', NULL, 1, 1, 1),
(126, 'Image', '2016-03-27 11:48:34', '2016-03-27 11:48:34', 'Screen-Shot-2016-03-27-at-6.47.01-PM.png', 'Screen Shot 2016 03 27 at 6.47.01 PM', 'assets/Uploads/Screen-Shot-2016-03-27-at-6.47.01-PM.png', NULL, 1, 1, 1),
(127, 'Image', '2016-03-27 11:48:43', '2016-03-27 11:48:43', 'DSC03320.jpg', 'DSC03320', 'assets/Uploads/DSC03320.jpg', NULL, 1, 1, 1),
(128, 'Image', '2016-03-27 11:48:57', '2016-03-27 11:48:57', 'IMAG0950.jpg', 'IMAG0950', 'assets/Uploads/IMAG0950.jpg', NULL, 1, 1, 1),
(129, 'Image', '2016-03-30 13:18:51', '2016-03-30 13:18:51', 'DSC03369.jpg', 'DSC03369', 'assets/Uploads/DSC03369.jpg', NULL, 1, 1, 1),
(130, 'Image', '2016-03-30 13:19:22', '2016-03-30 13:19:22', 'DSC3370.jpg', 'DSC3370', 'assets/Uploads/DSC3370.jpg', NULL, 1, 1, 1),
(131, 'Image', '2016-03-30 13:23:30', '2016-03-30 13:23:30', 'DSC03362.jpg', 'DSC03362', 'assets/Uploads/DSC03362.jpg', NULL, 1, 1, 1),
(132, 'Image', '2016-03-30 13:23:39', '2016-03-30 13:23:39', 'DSC03363.jpg', 'DSC03363', 'assets/Uploads/DSC03363.jpg', NULL, 1, 1, 1),
(133, 'Image', '2016-03-30 13:23:50', '2016-03-30 13:23:50', 'DSC03364.jpg', 'DSC03364', 'assets/Uploads/DSC03364.jpg', NULL, 1, 1, 1),
(134, 'Image', '2016-03-30 13:24:07', '2016-03-30 13:24:07', 'DSC03358.jpg', 'DSC03358', 'assets/Uploads/DSC03358.jpg', NULL, 1, 1, 1),
(135, 'Image', '2016-03-30 13:25:07', '2016-03-30 13:25:07', 'DSC03394.jpg', 'DSC03394', 'assets/Uploads/DSC03394.jpg', NULL, 1, 1, 1),
(136, 'Image', '2016-03-30 13:25:46', '2016-03-30 13:25:46', 'DSC03347.jpg', 'DSC03347', 'assets/Uploads/DSC03347.jpg', NULL, 1, 1, 1),
(137, 'Image', '2016-03-30 13:27:19', '2016-03-30 13:27:19', 'DSC03374.jpg', 'DSC03374', 'assets/Uploads/DSC03374.jpg', NULL, 1, 1, 1),
(138, 'Image', '2016-03-30 13:27:32', '2016-03-30 13:27:32', 'DSC03380.jpg', 'DSC03380', 'assets/Uploads/DSC03380.jpg', NULL, 1, 1, 1),
(139, 'Image', '2016-03-30 13:27:35', '2016-03-30 13:27:35', 'DSC03382.jpg', 'DSC03382', 'assets/Uploads/DSC03382.jpg', NULL, 1, 1, 1),
(140, 'Image', '2016-03-30 13:27:46', '2016-03-30 13:27:46', 'DSC03385.jpg', 'DSC03385', 'assets/Uploads/DSC03385.jpg', NULL, 1, 1, 1),
(141, 'Image', '2016-03-30 13:45:31', '2016-03-30 13:45:31', 'IMAG1163.jpg', 'IMAG1163', 'assets/Uploads/IMAG1163.jpg', NULL, 1, 1, 1),
(142, 'Image', '2016-03-30 13:46:07', '2016-03-30 13:46:07', 'IMAG1164.jpg', 'IMAG1164', 'assets/Uploads/IMAG1164.jpg', NULL, 1, 1, 1),
(143, 'Image', '2016-03-30 13:52:28', '2016-03-30 13:52:28', 'IMAG1105.jpg', 'IMAG1105', 'assets/Uploads/IMAG1105.jpg', NULL, 1, 1, 1),
(144, 'Image', '2016-03-30 13:55:25', '2016-03-30 13:55:25', 'IMAG1090.jpg', 'IMAG1090', 'assets/Uploads/IMAG1090.jpg', NULL, 1, 1, 1),
(145, 'Image', '2016-03-30 13:55:45', '2016-03-30 13:55:45', 'IMAG1094.jpg', 'IMAG1094', 'assets/Uploads/IMAG1094.jpg', NULL, 1, 1, 1),
(146, 'Image', '2016-03-30 13:56:42', '2016-03-30 13:56:42', 'DSC03412.jpg', 'DSC03412', 'assets/Uploads/DSC03412.jpg', NULL, 1, 1, 1),
(147, 'Image', '2016-03-30 13:57:00', '2016-03-30 13:57:00', 'DSC03415.jpg', 'DSC03415', 'assets/Uploads/DSC03415.jpg', NULL, 1, 1, 1),
(148, 'Image', '2016-03-30 13:57:28', '2016-03-30 13:57:28', 'IMAG1098.jpg', 'IMAG1098', 'assets/Uploads/IMAG1098.jpg', NULL, 1, 1, 1),
(149, 'Image', '2016-03-30 13:57:36', '2016-03-30 13:57:36', 'G0260373.jpg', 'G0260373', 'assets/Uploads/G0260373.jpg', NULL, 1, 1, 1),
(150, 'Image', '2016-03-30 14:01:06', '2016-03-30 14:01:06', 'IMAG1106.jpg', 'IMAG1106', 'assets/Uploads/IMAG1106.jpg', NULL, 1, 1, 1),
(151, 'Image', '2016-03-30 14:03:11', '2016-03-30 14:03:11', 'DSC03441.jpg', 'DSC03441', 'assets/Uploads/DSC03441.jpg', NULL, 1, 1, 1),
(152, 'Image', '2016-03-30 14:03:44', '2016-03-30 14:03:44', 'DSC03517.jpg', 'DSC03517', 'assets/Uploads/DSC03517.jpg', NULL, 1, 1, 1),
(153, 'Image', '2016-03-30 14:04:06', '2016-03-30 14:04:06', 'DSC03455.jpg', 'DSC03455', 'assets/Uploads/DSC03455.jpg', NULL, 1, 1, 1),
(154, 'Image', '2016-03-30 14:05:28', '2016-03-30 14:05:28', 'DSC03468.jpg', 'DSC03468', 'assets/Uploads/DSC03468.jpg', NULL, 1, 1, 1),
(155, 'Image', '2016-03-30 14:05:29', '2016-03-30 14:05:29', 'DSC03487.jpg', 'DSC03487', 'assets/Uploads/DSC03487.jpg', NULL, 1, 1, 1),
(156, 'Image', '2016-03-30 14:05:41', '2016-03-30 14:05:41', 'DSC03486.jpg', 'DSC03486', 'assets/Uploads/DSC03486.jpg', NULL, 1, 1, 1),
(157, 'Image', '2016-03-30 14:05:52', '2016-03-30 14:05:52', 'DSC03478.jpg', 'DSC03478', 'assets/Uploads/DSC03478.jpg', NULL, 1, 1, 1),
(158, 'Image', '2016-03-30 14:06:07', '2016-03-30 14:06:07', 'IMAG1134.jpg', 'IMAG1134', 'assets/Uploads/IMAG1134.jpg', NULL, 1, 1, 1),
(159, 'Image', '2016-03-30 14:06:27', '2016-03-30 14:06:27', 'IMAG1130.jpg', 'IMAG1130', 'assets/Uploads/IMAG1130.jpg', NULL, 1, 1, 1),
(160, 'Image', '2016-03-30 14:06:43', '2016-03-30 14:06:43', 'DSC03483.jpg', 'DSC03483', 'assets/Uploads/DSC03483.jpg', NULL, 1, 1, 1),
(161, 'Image', '2016-03-30 14:07:10', '2016-03-30 14:07:10', 'IMAG1165.jpg', 'IMAG1165', 'assets/Uploads/IMAG1165.jpg', NULL, 1, 1, 1),
(162, 'Image', '2016-03-30 14:07:40', '2016-03-30 14:07:40', 'IMAG1169.jpg', 'IMAG1169', 'assets/Uploads/IMAG1169.jpg', NULL, 1, 1, 1),
(163, 'Image', '2016-03-30 14:08:45', '2016-03-30 14:08:45', 'IMAG1154.jpg', 'IMAG1154', 'assets/Uploads/IMAG1154.jpg', NULL, 1, 1, 1),
(164, 'Image', '2016-03-30 14:08:50', '2016-03-30 14:08:50', 'IMAG1151.jpg', 'IMAG1151', 'assets/Uploads/IMAG1151.jpg', NULL, 1, 1, 1),
(165, 'Image', '2016-03-30 14:09:00', '2016-03-30 14:09:00', 'IMAG1139.jpg', 'IMAG1139', 'assets/Uploads/IMAG1139.jpg', NULL, 1, 1, 1),
(166, 'Image', '2016-03-30 14:11:40', '2016-03-30 14:11:40', 'IMAG1176.jpg', 'IMAG1176', 'assets/Uploads/IMAG1176.jpg', NULL, 1, 1, 1),
(167, 'Image', '2016-03-30 14:11:51', '2016-03-30 14:11:51', 'IMAG1178.jpg', 'IMAG1178', 'assets/Uploads/IMAG1178.jpg', NULL, 1, 1, 1),
(168, 'Image', '2016-03-30 14:12:04', '2016-03-30 14:12:04', 'DSC03527.jpg', 'DSC03527', 'assets/Uploads/DSC03527.jpg', NULL, 1, 1, 1),
(169, 'Image', '2016-03-30 14:12:27', '2016-03-30 14:12:27', 'DSC03513.jpg', 'DSC03513', 'assets/Uploads/DSC03513.jpg', NULL, 1, 1, 1),
(170, 'Image', '2016-03-30 14:14:17', '2016-03-30 14:14:17', 'DSC03428.jpg', 'DSC03428', 'assets/Uploads/DSC03428.jpg', NULL, 1, 1, 1),
(171, 'Image', '2016-03-30 14:14:43', '2016-03-30 14:14:43', 'DSC03555.jpg', 'DSC03555', 'assets/Uploads/DSC03555.jpg', NULL, 1, 1, 1),
(172, 'Image', '2016-03-30 14:14:50', '2016-03-30 14:14:50', 'DSC03560.jpg', 'DSC03560', 'assets/Uploads/DSC03560.jpg', NULL, 1, 1, 1),
(173, 'Image', '2016-03-30 14:15:05', '2016-03-30 14:15:05', 'DSC03564.jpg', 'DSC03564', 'assets/Uploads/DSC03564.jpg', NULL, 1, 1, 1),
(174, 'Image', '2016-03-30 14:15:15', '2016-03-30 14:15:15', 'DSC03578.jpg', 'DSC03578', 'assets/Uploads/DSC03578.jpg', NULL, 1, 1, 1),
(175, 'Image', '2016-03-30 14:22:58', '2016-03-30 14:22:58', 'IMAG1520.jpg', 'IMAG1520', 'assets/Uploads/IMAG1520.jpg', NULL, 1, 1, 1),
(176, 'Image', '2016-03-30 14:23:22', '2016-03-30 14:23:22', 'IMAG1521.jpg', 'IMAG1521', 'assets/Uploads/IMAG1521.jpg', NULL, 1, 1, 1),
(177, 'Image', '2016-03-30 14:25:08', '2016-03-30 14:25:08', 'IMAG1421.jpg', 'IMAG1421', 'assets/Uploads/IMAG1421.jpg', NULL, 1, 1, 1),
(178, 'Image', '2016-03-30 14:25:54', '2016-03-30 14:25:54', 'DSC04176.jpg', 'DSC04176', 'assets/Uploads/DSC04176.jpg', NULL, 1, 1, 1),
(179, 'Image', '2016-03-30 14:26:10', '2016-03-30 14:26:10', 'DSC4177.jpg', 'DSC4177', 'assets/Uploads/DSC4177.jpg', NULL, 1, 1, 1),
(180, 'Image', '2016-03-30 14:26:23', '2016-03-30 14:26:23', 'DSC4178.jpg', 'DSC4178', 'assets/Uploads/DSC4178.jpg', NULL, 1, 1, 1),
(181, 'Image', '2016-03-30 14:31:25', '2016-03-30 14:31:25', 'IMAG1422.jpg', 'IMAG1422', 'assets/Uploads/IMAG1422.jpg', NULL, 1, 1, 1),
(182, 'Image', '2016-03-30 14:31:30', '2016-03-30 14:31:30', 'IMAG1426.jpg', 'IMAG1426', 'assets/Uploads/IMAG1426.jpg', NULL, 1, 1, 1),
(183, 'Image', '2016-03-30 14:32:06', '2016-03-30 14:32:06', 'IMAG1636.jpg', 'IMAG1636', 'assets/Uploads/IMAG1636.jpg', NULL, 1, 1, 1),
(184, 'Image', '2016-03-30 14:32:17', '2016-03-30 14:32:17', 'DSC03865.jpg', 'DSC03865', 'assets/Uploads/DSC03865.jpg', NULL, 1, 1, 1),
(185, 'Image', '2016-03-30 14:32:38', '2016-03-30 14:32:38', 'IMAG1317.jpg', 'IMAG1317', 'assets/Uploads/IMAG1317.jpg', NULL, 1, 1, 1),
(186, 'Image', '2016-03-30 14:32:50', '2016-03-30 14:32:50', 'IMAG1357.jpg', 'IMAG1357', 'assets/Uploads/IMAG1357.jpg', NULL, 1, 1, 1),
(187, 'Image', '2016-03-30 14:33:21', '2016-03-30 14:33:21', 'IMAG1395.jpg', 'IMAG1395', 'assets/Uploads/IMAG1395.jpg', NULL, 1, 1, 1),
(188, 'Image', '2016-03-30 14:33:31', '2016-03-30 14:33:31', 'IMAG1399.jpg', 'IMAG1399', 'assets/Uploads/IMAG1399.jpg', NULL, 1, 1, 1),
(189, 'Image', '2016-03-30 14:34:12', '2016-03-30 14:34:12', 'IMAG1368.jpg', 'IMAG1368', 'assets/Uploads/IMAG1368.jpg', NULL, 1, 1, 1),
(190, 'Image', '2016-03-30 14:34:39', '2016-03-30 14:34:39', 'DSC04179.jpg', 'DSC04179', 'assets/Uploads/DSC04179.jpg', NULL, 1, 1, 1),
(191, 'Image', '2016-03-30 14:34:50', '2016-03-30 14:34:50', 'DSC04178.jpg', 'DSC04178', 'assets/Uploads/DSC04178.jpg', NULL, 1, 1, 1),
(192, 'Image', '2016-03-30 14:35:13', '2016-03-30 14:35:13', 'IMAG1637.jpg', 'IMAG1637', 'assets/Uploads/IMAG1637.jpg', NULL, 1, 1, 1),
(193, 'Image', '2016-03-30 14:41:44', '2016-03-30 14:41:44', 'DSC04089.jpg', 'DSC04089', 'assets/Uploads/DSC04089.jpg', NULL, 1, 1, 1),
(194, 'Image', '2016-03-30 14:42:51', '2016-03-30 14:42:51', 'DSC04072.jpg', 'DSC04072', 'assets/Uploads/DSC04072.jpg', NULL, 1, 1, 1),
(195, 'Image', '2016-03-30 14:43:13', '2016-03-30 14:43:13', 'DSC04058.jpg', 'DSC04058', 'assets/Uploads/DSC04058.jpg', NULL, 1, 1, 1),
(196, 'Image', '2016-03-30 14:43:35', '2016-03-30 14:43:35', 'DSC04134.jpg', 'DSC04134', 'assets/Uploads/DSC04134.jpg', NULL, 1, 1, 1),
(197, 'Image', '2016-03-30 14:43:46', '2016-03-30 14:43:46', 'DSC04035.jpg', 'DSC04035', 'assets/Uploads/DSC04035.jpg', NULL, 1, 1, 1),
(198, 'Image', '2016-03-30 14:44:10', '2016-03-30 14:44:10', 'DSC04011.jpg', 'DSC04011', 'assets/Uploads/DSC04011.jpg', NULL, 1, 1, 1),
(199, 'Image', '2016-03-30 14:44:31', '2016-03-30 14:44:31', 'DSC04001.jpg', 'DSC04001', 'assets/Uploads/DSC04001.jpg', NULL, 1, 1, 1),
(200, 'Image', '2016-03-30 14:44:49', '2016-03-30 14:44:49', 'DSC03895.jpg', 'DSC03895', 'assets/Uploads/DSC03895.jpg', NULL, 1, 1, 1),
(201, 'Image', '2016-03-30 14:45:51', '2016-03-30 14:45:51', 'DSC03897.jpg', 'DSC03897', 'assets/Uploads/DSC03897.jpg', NULL, 1, 1, 1),
(202, 'Image', '2016-03-30 14:50:06', '2016-03-30 14:50:06', 'DSC04107.jpg', 'DSC04107', 'assets/Uploads/DSC04107.jpg', NULL, 1, 1, 1),
(203, 'Image', '2016-03-30 14:51:48', '2016-03-30 14:51:48', 'DSC4180.jpg', 'DSC4180', 'assets/Uploads/DSC4180.jpg', NULL, 1, 1, 1),
(204, 'Image', '2016-03-30 14:51:54', '2016-03-30 14:51:54', 'DSC4179.jpg', 'DSC4179', 'assets/Uploads/DSC4179.jpg', NULL, 1, 1, 1),
(205, 'Image', '2016-03-30 14:52:06', '2016-03-30 14:52:06', 'IMAG1638.jpg', 'IMAG1638', 'assets/Uploads/IMAG1638.jpg', NULL, 1, 1, 1),
(206, 'Image', '2016-03-30 14:54:57', '2016-03-30 14:54:57', 'IMAG1263.jpg', 'IMAG1263', 'assets/Uploads/IMAG1263.jpg', NULL, 1, 1, 1),
(207, 'Image', '2016-03-30 14:55:18', '2016-03-30 14:55:18', 'IMAG1264.jpg', 'IMAG1264', 'assets/Uploads/IMAG1264.jpg', NULL, 1, 1, 1),
(208, 'Image', '2016-03-30 14:59:07', '2016-03-30 14:59:07', 'G0330447.jpg', 'G0330447', 'assets/Uploads/G0330447.jpg', NULL, 1, 1, 1),
(209, 'Image', '2016-03-30 14:59:52', '2016-03-30 14:59:52', 'DSC03615.jpg', 'DSC03615', 'assets/Uploads/DSC03615.jpg', NULL, 1, 1, 1),
(210, 'Image', '2016-03-30 15:00:32', '2016-03-30 15:00:32', 'DSC03635.jpg', 'DSC03635', 'assets/Uploads/DSC03635.jpg', NULL, 1, 1, 1),
(211, 'Image', '2016-03-30 15:00:41', '2016-03-30 15:00:41', 'DSC03626.jpg', 'DSC03626', 'assets/Uploads/DSC03626.jpg', NULL, 1, 1, 1),
(212, 'Image', '2016-03-30 15:00:51', '2016-03-30 15:00:51', 'DSC03621.jpg', 'DSC03621', 'assets/Uploads/DSC03621.jpg', NULL, 1, 1, 1),
(213, 'Image', '2016-03-30 15:01:05', '2016-03-30 15:01:05', 'DSC03616.jpg', 'DSC03616', 'assets/Uploads/DSC03616.jpg', NULL, 1, 1, 1),
(214, 'Image', '2016-03-30 15:01:23', '2016-03-30 15:01:23', 'DSC03609.jpg', 'DSC03609', 'assets/Uploads/DSC03609.jpg', NULL, 1, 1, 1),
(215, 'Image', '2016-03-30 15:02:25', '2016-03-30 15:02:25', 'IMAG1255.jpg', 'IMAG1255', 'assets/Uploads/IMAG1255.jpg', NULL, 1, 1, 1),
(216, 'Image', '2016-03-30 15:04:34', '2016-03-30 15:04:34', 'DSC03677.jpg', 'DSC03677', 'assets/Uploads/DSC03677.jpg', NULL, 1, 1, 1),
(217, 'Image', '2016-03-30 15:04:42', '2016-03-30 15:04:42', 'DSC03690.jpg', 'DSC03690', 'assets/Uploads/DSC03690.jpg', NULL, 1, 1, 1),
(218, 'Image', '2016-03-30 15:04:48', '2016-03-30 15:04:48', 'DSC3622.jpg', 'DSC3622', 'assets/Uploads/DSC3622.jpg', NULL, 1, 1, 1),
(219, 'Image', '2016-03-30 15:05:56', '2016-03-30 15:05:56', 'DSC03607.jpg', 'DSC03607', 'assets/Uploads/DSC03607.jpg', NULL, 1, 1, 1),
(220, 'Image', '2016-03-30 15:09:50', '2016-03-30 15:09:50', 'DSC04218.jpg', 'DSC04218', 'assets/Uploads/DSC04218.jpg', NULL, 1, 1, 1),
(221, 'Image', '2016-03-30 15:10:16', '2016-03-30 15:10:16', 'DSC4219.jpg', 'DSC4219', 'assets/Uploads/DSC4219.jpg', NULL, 1, 1, 1),
(222, 'Image', '2016-03-30 15:17:09', '2016-03-30 15:17:09', 'IMAG1717.jpg', 'IMAG1717', 'assets/Uploads/IMAG1717.jpg', NULL, 1, 1, 1),
(223, 'Image', '2016-03-30 15:17:10', '2016-03-30 15:17:10', 'DSC04229.jpg', 'DSC04229', 'assets/Uploads/DSC04229.jpg', NULL, 1, 1, 1),
(224, 'Image', '2016-03-30 15:17:34', '2016-03-30 15:17:34', 'G0560853.jpg', 'G0560853', 'assets/Uploads/G0560853.jpg', NULL, 1, 1, 1),
(225, 'Image', '2016-03-30 15:18:26', '2016-03-30 15:18:26', 'G0550845.jpg', 'G0550845', 'assets/Uploads/G0550845.jpg', NULL, 1, 1, 1),
(226, 'Image', '2016-03-30 15:18:47', '2016-03-30 15:18:47', 'DSC04203.jpg', 'DSC04203', 'assets/Uploads/DSC04203.jpg', NULL, 1, 1, 1),
(227, 'Image', '2016-03-30 15:19:06', '2016-03-30 15:19:06', 'DSC04250.jpg', 'DSC04250', 'assets/Uploads/DSC04250.jpg', NULL, 1, 1, 1),
(228, 'Image', '2016-03-30 15:19:20', '2016-03-30 15:19:20', 'G0520721.jpg', 'G0520721', 'assets/Uploads/G0520721.jpg', NULL, 1, 1, 1),
(229, 'Image', '2016-03-30 15:20:06', '2016-03-30 15:20:06', 'DSC04281.jpg', 'DSC04281', 'assets/Uploads/DSC04281.jpg', NULL, 1, 1, 1),
(230, 'Image', '2016-03-30 15:20:15', '2016-03-30 15:20:15', 'DSC04288.jpg', 'DSC04288', 'assets/Uploads/DSC04288.jpg', NULL, 1, 1, 1),
(231, 'Image', '2016-03-30 15:21:20', '2016-03-30 15:21:20', 'IMAG1704.jpg', 'IMAG1704', 'assets/Uploads/IMAG1704.jpg', NULL, 1, 1, 1),
(232, 'Image', '2016-03-30 15:25:23', '2016-03-30 15:25:23', 'DSC04225.jpg', 'DSC04225', 'assets/Uploads/DSC04225.jpg', NULL, 1, 1, 1),
(233, 'Image', '2016-03-30 15:25:55', '2016-03-30 15:25:55', 'DSC04353.jpg', 'DSC04353', 'assets/Uploads/DSC04353.jpg', NULL, 1, 1, 1),
(234, 'Image', '2016-03-30 15:26:33', '2016-03-30 15:26:33', 'DSC4226.jpg', 'DSC4226', 'assets/Uploads/DSC4226.jpg', NULL, 1, 1, 1),
(235, 'Image', '2016-03-30 15:26:52', '2016-03-30 15:26:52', 'DSC4227.jpg', 'DSC4227', 'assets/Uploads/DSC4227.jpg', NULL, 1, 1, 1),
(236, 'Image', '2016-03-30 15:27:51', '2016-03-30 15:27:51', 'DSC4228.jpg', 'DSC4228', 'assets/Uploads/DSC4228.jpg', NULL, 1, 1, 1),
(237, 'Image', '2016-03-30 15:30:27', '2016-03-30 15:30:27', 'DSC3617.jpg', 'DSC3617', 'assets/Uploads/DSC3617.jpg', NULL, 1, 1, 1),
(238, 'Image', '2016-03-30 15:30:57', '2016-03-30 15:30:57', 'DSC3618.jpg', 'DSC3618', 'assets/Uploads/DSC3618.jpg', NULL, 1, 1, 1),
(239, 'Image', '2016-03-30 15:33:10', '2016-03-30 15:33:10', 'DSC4181.jpg', 'DSC4181', 'assets/Uploads/DSC4181.jpg', NULL, 1, 1, 1),
(240, 'Image', '2016-03-30 15:34:00', '2016-03-30 15:34:00', 'IMAG1522.jpg', 'IMAG1522', 'assets/Uploads/IMAG1522.jpg', NULL, 1, 1, 1),
(241, 'Image', '2016-03-30 15:34:18', '2016-03-30 15:34:18', 'DSC3866.jpg', 'DSC3866', 'assets/Uploads/DSC3866.jpg', NULL, 1, 1, 1),
(242, 'Image', '2016-03-30 15:35:23', '2016-03-30 15:35:23', 'DSC03766.jpg', 'DSC03766', 'assets/Uploads/DSC03766.jpg', NULL, 1, 1, 1),
(243, 'Image', '2016-03-30 15:36:40', '2016-03-30 15:36:40', 'DSC3767.jpg', 'DSC3767', 'assets/Uploads/DSC3767.jpg', NULL, 1, 1, 1),
(244, 'Image', '2016-03-30 16:09:14', '2016-03-30 16:09:14', 'DSC04897.jpg', 'DSC04897', 'assets/Uploads/DSC04897.jpg', NULL, 1, 1, 1),
(245, 'Image', '2016-03-30 16:09:38', '2016-03-30 16:09:38', 'DSC4898.jpg', 'DSC4898', 'assets/Uploads/DSC4898.jpg', NULL, 1, 1, 1),
(246, 'Image', '2016-03-30 16:13:22', '2016-03-30 16:13:22', 'DSC04637.jpg', 'DSC04637', 'assets/Uploads/DSC04637.jpg', NULL, 1, 1, 1),
(247, 'Image', '2016-03-30 16:14:06', '2016-03-30 16:14:06', 'DSC04489.jpg', 'DSC04489', 'assets/Uploads/DSC04489.jpg', NULL, 1, 1, 1),
(248, 'Image', '2016-03-30 16:14:34', '2016-03-30 16:14:34', 'DSC04626.jpg', 'DSC04626', 'assets/Uploads/DSC04626.jpg', NULL, 1, 1, 1),
(249, 'Image', '2016-03-30 16:14:54', '2016-03-30 16:14:54', 'DSC04651.jpg', 'DSC04651', 'assets/Uploads/DSC04651.jpg', NULL, 1, 1, 1),
(250, 'Image', '2016-03-30 16:15:03', '2016-03-30 16:15:03', 'DSC04620.jpg', 'DSC04620', 'assets/Uploads/DSC04620.jpg', NULL, 1, 1, 1),
(251, 'Image', '2016-03-30 16:15:18', '2016-03-30 16:15:18', 'DSC04884.jpg', 'DSC04884', 'assets/Uploads/DSC04884.jpg', NULL, 1, 1, 1),
(252, 'Image', '2016-03-30 16:15:34', '2016-03-30 16:15:34', 'DSC04688.jpg', 'DSC04688', 'assets/Uploads/DSC04688.jpg', NULL, 1, 1, 1),
(253, 'Image', '2016-03-30 16:15:39', '2016-03-30 16:15:39', 'DSC04653.jpg', 'DSC04653', 'assets/Uploads/DSC04653.jpg', NULL, 1, 1, 1),
(254, 'Image', '2016-03-30 16:16:18', '2016-03-30 16:16:18', 'DSC04738.jpg', 'DSC04738', 'assets/Uploads/DSC04738.jpg', NULL, 1, 1, 1),
(255, 'Image', '2016-03-30 16:16:28', '2016-03-30 16:16:28', 'DSC04775.jpg', 'DSC04775', 'assets/Uploads/DSC04775.jpg', NULL, 1, 1, 1),
(256, 'Image', '2016-03-30 16:16:55', '2016-03-30 16:16:55', 'DSC04770.jpg', 'DSC04770', 'assets/Uploads/DSC04770.jpg', NULL, 1, 1, 1),
(257, 'Image', '2016-03-30 16:17:26', '2016-03-30 16:17:26', 'DSC04690.jpg', 'DSC04690', 'assets/Uploads/DSC04690.jpg', NULL, 1, 1, 1),
(258, 'Image', '2016-03-30 16:17:35', '2016-03-30 16:17:35', 'DSC04694.jpg', 'DSC04694', 'assets/Uploads/DSC04694.jpg', NULL, 1, 1, 1),
(259, 'Image', '2016-03-30 16:18:17', '2016-03-30 16:18:17', 'DSC04490.jpg', 'DSC04490', 'assets/Uploads/DSC04490.jpg', NULL, 1, 1, 1),
(260, 'Image', '2016-03-30 16:19:11', '2016-03-30 16:19:11', 'DSC04732.jpg', 'DSC04732', 'assets/Uploads/DSC04732.jpg', NULL, 1, 1, 1),
(261, 'Image', '2016-03-30 16:19:12', '2016-03-30 16:19:12', 'DSC04733-2.jpg', 'DSC04733 2', 'assets/Uploads/DSC04733-2.jpg', NULL, 1, 1, 1),
(262, 'Image', '2016-03-30 16:19:58', '2016-03-30 16:19:58', 'DSC04721.jpg', 'DSC04721', 'assets/Uploads/DSC04721.jpg', NULL, 1, 1, 1),
(263, 'Image', '2016-03-30 16:27:20', '2016-03-30 16:27:20', 'DSC04990.jpg', 'DSC04990', 'assets/Uploads/DSC04990.jpg', NULL, 1, 1, 1),
(264, 'Image', '2016-03-30 16:27:34', '2016-03-30 16:27:34', 'DSC04978.jpg', 'DSC04978', 'assets/Uploads/DSC04978.jpg', NULL, 1, 1, 1),
(265, 'Image', '2016-03-30 16:27:39', '2016-03-30 16:27:39', 'DSC05018.jpg', 'DSC05018', 'assets/Uploads/DSC05018.jpg', NULL, 1, 1, 1),
(266, 'Image', '2016-03-30 16:27:46', '2016-03-30 16:27:46', 'DSC04973.jpg', 'DSC04973', 'assets/Uploads/DSC04973.jpg', NULL, 1, 1, 1),
(267, 'Image', '2016-03-30 16:28:58', '2016-03-30 16:28:58', 'DSC04737.jpg', 'DSC04737', 'assets/Uploads/DSC04737.jpg', NULL, 1, 1, 1),
(268, 'Image', '2016-03-30 16:29:10', '2016-03-30 16:29:10', 'DSC04521.jpg', 'DSC04521', 'assets/Uploads/DSC04521.jpg', NULL, 1, 1, 1),
(269, 'Image', '2016-03-30 16:29:13', '2016-03-30 16:29:13', 'DSC04543.jpg', 'DSC04543', 'assets/Uploads/DSC04543.jpg', NULL, 1, 1, 1),
(270, 'Image', '2016-03-30 16:29:27', '2016-03-30 16:29:27', 'DSC04556.jpg', 'DSC04556', 'assets/Uploads/DSC04556.jpg', NULL, 1, 1, 1),
(271, 'Image', '2016-03-30 16:29:33', '2016-03-30 16:29:33', 'DSC04557.jpg', 'DSC04557', 'assets/Uploads/DSC04557.jpg', NULL, 1, 1, 1),
(272, 'Image', '2016-03-30 16:29:43', '2016-03-30 16:29:43', 'DSC04560.jpg', 'DSC04560', 'assets/Uploads/DSC04560.jpg', NULL, 1, 1, 1),
(273, 'Image', '2016-03-30 16:30:17', '2016-03-30 16:30:17', 'DSC04572-2.jpg', 'DSC04572 2', 'assets/Uploads/DSC04572-2.jpg', NULL, 1, 1, 1),
(274, 'Image', '2016-03-30 16:30:31', '2016-03-30 16:30:31', 'DSC04913.jpg', 'DSC04913', 'assets/Uploads/DSC04913.jpg', NULL, 1, 1, 1),
(275, 'Image', '2016-03-30 16:30:49', '2016-03-30 16:30:49', 'DSC04907.jpg', 'DSC04907', 'assets/Uploads/DSC04907.jpg', NULL, 1, 1, 1),
(276, 'Image', '2016-03-30 16:31:09', '2016-03-30 16:31:09', 'DSC04918.jpg', 'DSC04918', 'assets/Uploads/DSC04918.jpg', NULL, 1, 1, 1),
(277, 'Image', '2016-03-30 16:31:39', '2016-03-30 16:31:39', 'DSC05097.jpg', 'DSC05097', 'assets/Uploads/DSC05097.jpg', NULL, 1, 1, 1),
(278, 'Image', '2016-03-30 16:35:31', '2016-03-30 16:35:31', 'DSC4691.jpg', 'DSC4691', 'assets/Uploads/DSC4691.jpg', NULL, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `Group`
--

CREATE TABLE `Group` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('Group') DEFAULT 'Group',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Description` mediumtext,
  `Code` varchar(255) DEFAULT NULL,
  `Locked` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `HtmlEditorConfig` mediumtext,
  `ParentID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Group`
--

INSERT INTO `Group` (`ID`, `ClassName`, `LastEdited`, `Created`, `Title`, `Description`, `Code`, `Locked`, `Sort`, `HtmlEditorConfig`, `ParentID`) VALUES
(1, 'Group', '2016-02-11 10:41:23', '2016-02-11 10:41:23', 'Content Authors', NULL, 'content-authors', 0, 1, NULL, 0),
(2, 'Group', '2016-02-11 10:41:23', '2016-02-11 10:41:23', 'Administrators', NULL, 'administrators', 0, 0, NULL, 0),
(3, 'Group', '2016-02-11 11:02:34', '2016-02-11 11:02:34', 'Blog users', NULL, 'blog-users', 0, 0, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `Group_Members`
--

CREATE TABLE `Group_Members` (
  `ID` int(11) NOT NULL,
  `GroupID` int(11) NOT NULL DEFAULT '0',
  `MemberID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Group_Members`
--

INSERT INTO `Group_Members` (`ID`, `GroupID`, `MemberID`) VALUES
(1, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `Group_Roles`
--

CREATE TABLE `Group_Roles` (
  `ID` int(11) NOT NULL,
  `GroupID` int(11) NOT NULL DEFAULT '0',
  `PermissionRoleID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `LoginAttempt`
--

CREATE TABLE `LoginAttempt` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('LoginAttempt') DEFAULT 'LoginAttempt',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Status` enum('Success','Failure') DEFAULT 'Success',
  `IP` varchar(255) DEFAULT NULL,
  `MemberID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Member`
--

CREATE TABLE `Member` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('Member') DEFAULT 'Member',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `FirstName` varchar(50) DEFAULT NULL,
  `Surname` varchar(50) DEFAULT NULL,
  `Email` varchar(254) DEFAULT NULL,
  `TempIDHash` varchar(160) DEFAULT NULL,
  `TempIDExpired` datetime DEFAULT NULL,
  `Password` varchar(160) DEFAULT NULL,
  `RememberLoginToken` varchar(160) DEFAULT NULL,
  `NumVisit` int(11) NOT NULL DEFAULT '0',
  `LastVisited` datetime DEFAULT NULL,
  `AutoLoginHash` varchar(160) DEFAULT NULL,
  `AutoLoginExpired` datetime DEFAULT NULL,
  `PasswordEncryption` varchar(50) DEFAULT NULL,
  `Salt` varchar(50) DEFAULT NULL,
  `PasswordExpiry` date DEFAULT NULL,
  `LockedOutUntil` datetime DEFAULT NULL,
  `Locale` varchar(6) DEFAULT NULL,
  `FailedLoginCount` int(11) NOT NULL DEFAULT '0',
  `DateFormat` varchar(30) DEFAULT NULL,
  `TimeFormat` varchar(30) DEFAULT NULL,
  `URLSegment` varchar(50) DEFAULT NULL,
  `BlogProfileSummary` mediumtext,
  `BlogProfileImageID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Member`
--

INSERT INTO `Member` (`ID`, `ClassName`, `LastEdited`, `Created`, `FirstName`, `Surname`, `Email`, `TempIDHash`, `TempIDExpired`, `Password`, `RememberLoginToken`, `NumVisit`, `LastVisited`, `AutoLoginHash`, `AutoLoginExpired`, `PasswordEncryption`, `Salt`, `PasswordExpiry`, `LockedOutUntil`, `Locale`, `FailedLoginCount`, `DateFormat`, `TimeFormat`, `URLSegment`, `BlogProfileSummary`, `BlogProfileImageID`) VALUES
(1, 'Member', '2016-12-10 13:28:49', '2016-02-11 10:41:24', 'Default Admin', NULL, 'admin', '02544354bd33ecf8a801c5a65c8c8a22f4378f4c', '2016-03-30 10:55:02', '$2y$10$490a78c670bf68a30b43aO4QeNHMBUlZRZFoRIE9Q1kZXtqgxAYV.', NULL, 11, '2016-03-30 10:11:01', NULL, NULL, 'blowfish', '10$490a78c670bf68a30b43ab', NULL, NULL, 'en_US', 2, 'yyyy-MM-dd', 'H:mm', 'default-admin', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `MemberPassword`
--

CREATE TABLE `MemberPassword` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('MemberPassword') DEFAULT 'MemberPassword',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Password` varchar(160) DEFAULT NULL,
  `Salt` varchar(50) DEFAULT NULL,
  `PasswordEncryption` varchar(50) DEFAULT NULL,
  `MemberID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `MemberPassword`
--

INSERT INTO `MemberPassword` (`ID`, `ClassName`, `LastEdited`, `Created`, `Password`, `Salt`, `PasswordEncryption`, `MemberID`) VALUES
(1, 'MemberPassword', '2016-02-11 10:41:25', '2016-02-11 10:41:25', '$2y$10$490a78c670bf68a30b43aO5e2GQ4EV2ZwbZ9wv3MRSw9FbrXIeLMu', '10$490a78c670bf68a30b43ab', 'blowfish', 1),
(2, 'MemberPassword', '2016-02-22 10:19:47', '2016-02-22 10:19:47', '$2y$10$490a78c670bf68a30b43aO4QeNHMBUlZRZFoRIE9Q1kZXtqgxAYV.', '10$490a78c670bf68a30b43ab', 'blowfish', 1);

-- --------------------------------------------------------

--
-- Table structure for table `Page`
--

CREATE TABLE `Page` (
  `ID` int(11) NOT NULL,
  `PageColor` varchar(6) DEFAULT NULL,
  `LightTheme` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `NoBannerImage` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `BannerImageID` int(11) NOT NULL DEFAULT '0',
  `LightText` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `BannerFullscreen` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `BannerLightText` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Page`
--

INSERT INTO `Page` (`ID`, `PageColor`, `LightTheme`, `NoBannerImage`, `BannerImageID`, `LightText`, `BannerFullscreen`, `BannerLightText`) VALUES
(1, NULL, 0, 0, 103, 0, 0, 1),
(2, NULL, 0, 0, 0, 0, 0, 0),
(3, NULL, 0, 0, 0, 0, 0, 0),
(6, NULL, 0, 0, 40, 1, 1, 1),
(13, NULL, 0, 0, 63, 0, 1, 1),
(14, NULL, 0, 0, 82, 0, 1, 1),
(15, NULL, 0, 0, 0, 0, 0, 1),
(16, NULL, 0, 0, 142, 0, 1, 1),
(17, NULL, 0, 0, 130, 0, 1, 1),
(18, NULL, 0, 0, 243, 0, 1, 1),
(19, NULL, 0, 0, 238, 0, 1, 1),
(20, NULL, 0, 0, 221, 0, 1, 1),
(21, NULL, 0, 0, 235, 0, 1, 1),
(22, NULL, 0, 0, 245, 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `Page_Live`
--

CREATE TABLE `Page_Live` (
  `ID` int(11) NOT NULL,
  `PageColor` varchar(6) DEFAULT NULL,
  `LightTheme` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `NoBannerImage` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `BannerImageID` int(11) NOT NULL DEFAULT '0',
  `LightText` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `BannerFullscreen` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `BannerLightText` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Page_Live`
--

INSERT INTO `Page_Live` (`ID`, `PageColor`, `LightTheme`, `NoBannerImage`, `BannerImageID`, `LightText`, `BannerFullscreen`, `BannerLightText`) VALUES
(1, NULL, 0, 0, 103, 0, 0, 1),
(2, NULL, 0, 0, 0, 0, 0, 0),
(3, NULL, 0, 0, 0, 0, 0, 0),
(6, NULL, 0, 0, 40, 1, 1, 1),
(13, NULL, 0, 0, 63, 0, 1, 1),
(14, NULL, 0, 0, 82, 0, 1, 1),
(15, NULL, 0, 0, 0, 0, 0, 1),
(16, NULL, 0, 0, 142, 0, 1, 1),
(17, NULL, 0, 0, 130, 0, 1, 1),
(18, NULL, 0, 0, 243, 0, 1, 1),
(19, NULL, 0, 0, 238, 0, 1, 1),
(20, NULL, 0, 0, 221, 0, 1, 1),
(21, NULL, 0, 0, 235, 0, 1, 1),
(22, NULL, 0, 0, 245, 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `Page_versions`
--

CREATE TABLE `Page_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `PageColor` varchar(6) DEFAULT NULL,
  `LightTheme` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `NoBannerImage` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `BannerImageID` int(11) NOT NULL DEFAULT '0',
  `LightText` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `BannerFullscreen` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `BannerLightText` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Page_versions`
--

INSERT INTO `Page_versions` (`ID`, `RecordID`, `Version`, `PageColor`, `LightTheme`, `NoBannerImage`, `BannerImageID`, `LightText`, `BannerFullscreen`, `BannerLightText`) VALUES
(1, 1, 2, NULL, 0, 0, 0, 0, 0, 0),
(2, 1, 3, NULL, 0, 0, 0, 0, 0, 0),
(3, 6, 1, NULL, 0, 0, 0, 0, 0, 0),
(4, 6, 2, NULL, 0, 0, 0, 0, 0, 0),
(5, 6, 3, NULL, 0, 0, 0, 0, 0, 0),
(6, 6, 4, NULL, 0, 0, 0, 0, 0, 0),
(7, 7, 1, NULL, 0, 0, 0, 0, 0, 0),
(8, 8, 1, NULL, 0, 0, 0, 0, 0, 0),
(9, 8, 2, NULL, 0, 0, 0, 0, 0, 0),
(10, 9, 1, NULL, 0, 0, 0, 0, 0, 0),
(11, 10, 1, NULL, 0, 0, 0, 0, 0, 0),
(12, 11, 1, NULL, 0, 0, 0, 0, 0, 0),
(13, 11, 2, NULL, 0, 0, 0, 0, 0, 0),
(14, 12, 1, NULL, 0, 0, 0, 0, 0, 0),
(15, 1, 4, NULL, 0, 0, 0, 0, 0, 0),
(16, 9, 2, NULL, 0, 0, 0, 0, 0, 0),
(17, 1, 5, NULL, 0, 0, 0, 0, 0, 0),
(18, 7, 2, NULL, 0, 0, 0, 0, 0, 0),
(19, 1, 6, NULL, 0, 0, 7, 0, 0, 0),
(20, 1, 7, NULL, 0, 0, 8, 1, 0, 0),
(21, 1, 8, NULL, 0, 0, 9, 0, 0, 0),
(22, 6, 5, NULL, 0, 0, 10, 1, 0, 0),
(23, 6, 6, NULL, 0, 0, 10, 1, 0, 0),
(24, 6, 7, NULL, 0, 0, 10, 1, 0, 0),
(25, 6, 8, NULL, 0, 0, 10, 1, 0, 0),
(26, 6, 9, NULL, 0, 0, 10, 0, 1, 1),
(27, 6, 10, NULL, 0, 0, 10, 0, 1, 1),
(28, 6, 11, NULL, 0, 0, 10, 0, 1, 1),
(29, 6, 12, NULL, 0, 0, 10, 0, 1, 1),
(30, 6, 13, NULL, 0, 0, 10, 0, 1, 1),
(31, 1, 9, NULL, 0, 0, 9, 0, 0, 0),
(32, 2, 2, NULL, 0, 0, 0, 0, 0, 0),
(33, 3, 2, NULL, 0, 0, 0, 0, 0, 0),
(34, 6, 14, NULL, 0, 0, 10, 0, 1, 1),
(35, 6, 15, NULL, 0, 0, 10, 0, 1, 1),
(36, 7, 3, NULL, 0, 0, 0, 0, 0, 0),
(37, 7, 4, NULL, 0, 0, 0, 0, 0, 0),
(38, 8, 3, NULL, 0, 0, 0, 0, 0, 0),
(39, 9, 3, NULL, 0, 0, 0, 0, 0, 0),
(40, 8, 4, NULL, 0, 0, 0, 0, 0, 0),
(41, 8, 5, NULL, 0, 0, 20, 0, 1, 1),
(42, 10, 2, NULL, 0, 0, 0, 0, 0, 0),
(43, 10, 3, NULL, 0, 0, 0, 0, 0, 0),
(44, 1, 10, NULL, 0, 0, 32, 0, 0, 0),
(45, 1, 11, NULL, 0, 0, 33, 0, 0, 0),
(46, 1, 12, NULL, 0, 0, 0, 0, 0, 0),
(47, 6, 16, NULL, 0, 0, 10, 0, 1, 1),
(48, 6, 17, NULL, 0, 0, 10, 0, 1, 1),
(49, 6, 18, NULL, 0, 0, 10, 0, 1, 1),
(50, 6, 19, NULL, 0, 0, 10, 0, 1, 1),
(51, 6, 20, NULL, 0, 0, 10, 0, 1, 1),
(52, 6, 21, NULL, 0, 0, 36, 0, 1, 1),
(53, 6, 22, NULL, 0, 0, 37, 0, 1, 1),
(54, 6, 23, NULL, 0, 0, 37, 0, 1, 1),
(55, 6, 24, NULL, 0, 0, 40, 0, 1, 1),
(56, 6, 25, NULL, 0, 0, 40, 0, 1, 1),
(57, 6, 26, NULL, 0, 0, 40, 0, 1, 1),
(58, 13, 1, NULL, 0, 0, 0, 0, 0, 0),
(59, 13, 2, NULL, 0, 0, 0, 0, 0, 0),
(60, 13, 3, NULL, 0, 0, 0, 0, 0, 0),
(61, 13, 4, NULL, 0, 0, 0, 0, 0, 0),
(62, 13, 5, NULL, 0, 0, 0, 0, 0, 0),
(63, 13, 6, NULL, 0, 0, 63, 0, 1, 1),
(64, 13, 7, NULL, 0, 0, 63, 0, 1, 1),
(65, 13, 8, NULL, 0, 0, 63, 0, 1, 1),
(66, 6, 27, NULL, 0, 0, 40, 0, 1, 1),
(67, 14, 1, NULL, 0, 0, 0, 0, 0, 0),
(68, 14, 2, NULL, 0, 0, 0, 0, 0, 0),
(69, 14, 3, NULL, 0, 0, 0, 0, 0, 0),
(70, 14, 4, NULL, 0, 0, 0, 0, 0, 0),
(71, 14, 5, NULL, 0, 0, 82, 0, 1, 1),
(72, 14, 6, NULL, 0, 0, 82, 0, 1, 1),
(73, 13, 9, NULL, 0, 0, 63, 0, 1, 1),
(74, 14, 7, NULL, 0, 0, 82, 0, 1, 1),
(75, 1, 13, NULL, 0, 0, 102, 0, 0, 0),
(76, 1, 14, NULL, 0, 0, 103, 0, 0, 1),
(77, 15, 1, NULL, 0, 0, 0, 0, 0, 0),
(78, 15, 2, NULL, 0, 0, 0, 0, 0, 0),
(79, 15, 3, NULL, 0, 0, 0, 0, 0, 0),
(80, 15, 4, NULL, 0, 0, 0, 0, 0, 0),
(81, 15, 5, NULL, 0, 0, 105, 0, 0, 1),
(82, 15, 6, NULL, 0, 0, 105, 0, 0, 1),
(83, 15, 7, NULL, 0, 0, 105, 0, 0, 1),
(84, 15, 8, NULL, 0, 0, 105, 0, 0, 1),
(85, 15, 9, NULL, 0, 0, 0, 0, 0, 1),
(86, 13, 10, NULL, 0, 0, 63, 0, 1, 1),
(87, 16, 1, NULL, 0, 0, 0, 0, 0, 0),
(88, 17, 1, NULL, 0, 0, 0, 0, 0, 0),
(89, 17, 2, NULL, 0, 0, 130, 0, 0, 0),
(90, 17, 3, NULL, 0, 0, 130, 0, 0, 0),
(91, 17, 4, NULL, 0, 0, 130, 0, 0, 0),
(92, 17, 5, NULL, 0, 0, 130, 0, 0, 0),
(93, 17, 6, NULL, 0, 0, 130, 0, 1, 1),
(94, 16, 2, NULL, 0, 0, 0, 0, 0, 0),
(95, 16, 3, NULL, 0, 0, 142, 0, 1, 1),
(96, 16, 4, NULL, 0, 0, 142, 0, 1, 1),
(97, 18, 1, NULL, 0, 0, 0, 0, 0, 0),
(98, 18, 2, NULL, 0, 0, 176, 0, 1, 0),
(99, 18, 3, NULL, 0, 0, 176, 0, 1, 0),
(100, 18, 4, NULL, 0, 0, 177, 0, 1, 1),
(101, 18, 5, NULL, 0, 0, 0, 0, 1, 1),
(102, 18, 6, NULL, 0, 0, 180, 0, 1, 1),
(103, 18, 7, NULL, 0, 0, 180, 0, 1, 1),
(104, 19, 1, NULL, 0, 0, 0, 0, 0, 0),
(105, 19, 2, NULL, 0, 0, 207, 0, 1, 0),
(106, 19, 3, NULL, 0, 0, 207, 0, 1, 0),
(107, 19, 4, NULL, 0, 0, 207, 0, 1, 1),
(108, 19, 5, NULL, 0, 0, 207, 0, 1, 1),
(109, 19, 6, NULL, 0, 0, 207, 0, 1, 1),
(110, 20, 1, NULL, 0, 0, 0, 0, 0, 0),
(111, 20, 2, NULL, 0, 0, 0, 0, 0, 0),
(112, 20, 3, NULL, 0, 0, 221, 0, 1, 1),
(113, 20, 4, NULL, 0, 0, 221, 0, 1, 1),
(114, 20, 5, NULL, 0, 0, 221, 0, 1, 1),
(115, 21, 1, NULL, 0, 0, 0, 0, 0, 0),
(116, 21, 2, NULL, 0, 0, 0, 0, 1, 0),
(117, 21, 3, NULL, 0, 0, 0, 0, 1, 0),
(118, 21, 4, NULL, 0, 0, 235, 0, 1, 1),
(119, 21, 5, NULL, 0, 0, 235, 0, 1, 1),
(120, 21, 6, NULL, 0, 0, 235, 0, 1, 1),
(121, 21, 7, NULL, 0, 0, 235, 0, 1, 1),
(122, 20, 6, NULL, 0, 0, 221, 0, 1, 1),
(123, 19, 7, NULL, 0, 0, 207, 0, 1, 1),
(124, 19, 8, NULL, 0, 0, 238, 0, 1, 1),
(125, 18, 8, NULL, 0, 0, 180, 0, 1, 1),
(126, 18, 9, NULL, 0, 0, 243, 0, 1, 1),
(127, 21, 8, NULL, 0, 0, 235, 0, 1, 1),
(128, 22, 1, NULL, 0, 0, 0, 0, 0, 0),
(129, 22, 2, NULL, 0, 0, 0, 0, 0, 0),
(130, 22, 3, NULL, 0, 0, 0, 0, 0, 0),
(131, 22, 4, NULL, 0, 0, 245, 0, 1, 1),
(132, 22, 5, NULL, 0, 0, 245, 0, 1, 1),
(133, 15, 10, NULL, 0, 0, 0, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `Permission`
--

CREATE TABLE `Permission` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('Permission') DEFAULT 'Permission',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Code` varchar(50) DEFAULT NULL,
  `Arg` int(11) NOT NULL DEFAULT '0',
  `Type` int(11) NOT NULL DEFAULT '1',
  `GroupID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Permission`
--

INSERT INTO `Permission` (`ID`, `ClassName`, `LastEdited`, `Created`, `Code`, `Arg`, `Type`, `GroupID`) VALUES
(1, 'Permission', '2016-02-11 10:41:23', '2016-02-11 10:41:23', 'CMS_ACCESS_CMSMain', 0, 1, 1),
(2, 'Permission', '2016-02-11 10:41:23', '2016-02-11 10:41:23', 'CMS_ACCESS_AssetAdmin', 0, 1, 1),
(3, 'Permission', '2016-02-11 10:41:23', '2016-02-11 10:41:23', 'CMS_ACCESS_ReportAdmin', 0, 1, 1),
(4, 'Permission', '2016-02-11 10:41:23', '2016-02-11 10:41:23', 'SITETREE_REORGANISE', 0, 1, 1),
(5, 'Permission', '2016-02-11 10:41:23', '2016-02-11 10:41:23', 'ADMIN', 0, 1, 2),
(6, 'Permission', '2016-02-11 11:02:34', '2016-02-11 11:02:34', 'CMS_ACCESS_CMSMain', 0, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `PermissionRole`
--

CREATE TABLE `PermissionRole` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('PermissionRole') DEFAULT 'PermissionRole',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(50) DEFAULT NULL,
  `OnlyAdminCanApply` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `PermissionRoleCode`
--

CREATE TABLE `PermissionRoleCode` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('PermissionRoleCode') DEFAULT 'PermissionRoleCode',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Code` varchar(50) DEFAULT NULL,
  `RoleID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `RedirectorPage`
--

CREATE TABLE `RedirectorPage` (
  `ID` int(11) NOT NULL,
  `RedirectionType` enum('Internal','External') DEFAULT 'Internal',
  `ExternalURL` varchar(2083) DEFAULT NULL,
  `LinkToID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `RedirectorPage_Live`
--

CREATE TABLE `RedirectorPage_Live` (
  `ID` int(11) NOT NULL,
  `RedirectionType` enum('Internal','External') DEFAULT 'Internal',
  `ExternalURL` varchar(2083) DEFAULT NULL,
  `LinkToID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `RedirectorPage_versions`
--

CREATE TABLE `RedirectorPage_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `RedirectionType` enum('Internal','External') DEFAULT 'Internal',
  `ExternalURL` varchar(2083) DEFAULT NULL,
  `LinkToID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `SiteConfig`
--

CREATE TABLE `SiteConfig` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('SiteConfig') DEFAULT 'SiteConfig',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Tagline` varchar(255) DEFAULT NULL,
  `Theme` varchar(255) DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers') DEFAULT 'Anyone',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers') DEFAULT 'LoggedInUsers',
  `CanCreateTopLevelType` enum('LoggedInUsers','OnlyTheseUsers') DEFAULT 'LoggedInUsers',
  `SiteDescription` mediumtext,
  `Mailto` varchar(100) DEFAULT NULL,
  `SubmitText` mediumtext,
  `Address` varchar(250) DEFAULT NULL,
  `PhoneNumber` varchar(250) DEFAULT NULL,
  `Email` varchar(250) DEFAULT NULL,
  `LogoID` int(11) NOT NULL DEFAULT '0',
  `LogoReverseID` int(11) NOT NULL DEFAULT '0',
  `BrandColor` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `SiteConfig`
--

INSERT INTO `SiteConfig` (`ID`, `ClassName`, `LastEdited`, `Created`, `Title`, `Tagline`, `Theme`, `CanViewType`, `CanEditType`, `CanCreateTopLevelType`, `SiteDescription`, `Mailto`, `SubmitText`, `Address`, `PhoneNumber`, `Email`, `LogoID`, `LogoReverseID`, `BrandColor`) VALUES
(1, 'SiteConfig', '2016-02-24 09:50:21', '2016-02-11 10:41:24', 'Isabelle Rae', 'Travels', 'main', 'Anyone', 'LoggedInUsers', 'LoggedInUsers', NULL, NULL, NULL, NULL, NULL, NULL, 34, 31, '271238');

-- --------------------------------------------------------

--
-- Table structure for table `SiteConfig_CreateTopLevelGroups`
--

CREATE TABLE `SiteConfig_CreateTopLevelGroups` (
  `ID` int(11) NOT NULL,
  `SiteConfigID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `SiteConfig_EditorGroups`
--

CREATE TABLE `SiteConfig_EditorGroups` (
  `ID` int(11) NOT NULL,
  `SiteConfigID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `SiteConfig_ViewerGroups`
--

CREATE TABLE `SiteConfig_ViewerGroups` (
  `ID` int(11) NOT NULL,
  `SiteConfigID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `SiteTree`
--

CREATE TABLE `SiteTree` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('SiteTree','Page','Blog','BlogPost','BlogEntry','ErrorPage','RedirectorPage','VirtualPage','BlogTree','BlogHolder') DEFAULT 'SiteTree',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `URLSegment` varchar(255) DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `MenuTitle` varchar(100) DEFAULT NULL,
  `Content` mediumtext,
  `MetaDescription` mediumtext,
  `ExtraMeta` mediumtext,
  `ShowInMenus` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ShowInSearch` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `HasBrokenFile` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `HasBrokenLink` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ReportClass` varchar(50) DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers','Inherit') DEFAULT 'Inherit',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers','Inherit') DEFAULT 'Inherit',
  `Version` int(11) NOT NULL DEFAULT '0',
  `ParentID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `SiteTree`
--

INSERT INTO `SiteTree` (`ID`, `ClassName`, `LastEdited`, `Created`, `URLSegment`, `Title`, `MenuTitle`, `Content`, `MetaDescription`, `ExtraMeta`, `ShowInMenus`, `ShowInSearch`, `Sort`, `HasBrokenFile`, `HasBrokenLink`, `ReportClass`, `CanViewType`, `CanEditType`, `Version`, `ParentID`) VALUES
(1, 'Blog', '2016-03-07 16:55:07', '2016-02-11 10:41:23', 'home', 'Home', NULL, '<p class="lead">Photos, videos and stories from a small kiwi getting lost in the big wide world</p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 14, 0),
(2, 'Page', '2016-02-17 10:25:33', '2016-02-11 10:41:24', 'about-us', 'About Us', NULL, '<p class="lead">Praesent commodo cursus magna, vel scelerisque nisl consectetur et.</p>\n<p>Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nulla vitae elit libero, a pharetra augue. Donec id elit non mi porta gravida at eget metus. Etiam porta sem malesuada magna mollis euismod. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Nullam quis risus eget urna mollis ornare vel eu leo.</p>\n<p>Cras mattis consectetur purus sit amet fermentum.</p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 2, 0),
(3, 'Page', '2016-02-17 10:25:45', '2016-02-11 10:41:24', 'contact-us', 'Contact Us', NULL, '<p class="lead">Praesent commodo cursus magna, vel scelerisque nisl consectetur et.</p>\n<p>Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nulla vitae elit libero, a pharetra augue. Donec id elit non mi porta gravida at eget metus. Etiam porta sem malesuada magna mollis euismod. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Nullam quis risus eget urna mollis ornare vel eu leo.</p>\n<p>Cras mattis consectetur purus sit amet fermentum.</p>', NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 2, 0),
(4, 'ErrorPage', '2016-02-11 10:41:25', '2016-02-11 10:41:24', 'page-not-found', 'Page not found', NULL, '<p>Sorry, it seems you were trying to access a page that doesn\'t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>', NULL, NULL, 0, 0, 4, 0, 0, NULL, 'Inherit', 'Inherit', 1, 0),
(5, 'ErrorPage', '2016-02-11 10:41:25', '2016-02-11 10:41:24', 'server-error', 'Server error', NULL, '<p>Sorry, there was a problem with handling your request.</p>', NULL, NULL, 0, 0, 5, 0, 0, NULL, 'Inherit', 'Inherit', 1, 0),
(6, 'BlogPost', '2016-03-07 16:26:40', '2016-02-11 11:02:46', 'chaotic-paradise', 'Bali Diaries', NULL, '<p class="lead">I travelled to Bali expecting an island holiday but it turned into the most remarkably diverse adventure full of tooting scooters and lush green countryside. </p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 27, 1),
(13, 'BlogPost', '2016-03-27 11:13:19', '2016-03-07 08:58:23', 'sights-and-speed-of-bangkok', 'Sights and Speed of Bangkok', NULL, '<p class="lead">Exploring a big city full of speeding tuk tuks and glistening golden temples.</p>', NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 10, 1),
(14, 'BlogPost', '2016-03-27 11:49:27', '2016-03-07 16:27:21', 'the-beauty-of-chiang-mai', 'The Beauty of Chiang Mai', NULL, '<p class="lead">I bet you didn\'t think peaceful Monks and Rihanna impersonating Ladyboys could make it together in one blog post...</p>', NULL, NULL, 0, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 7, 1),
(15, 'BlogPost', '2016-03-30 16:35:36', '2016-03-07 16:56:45', 'welcome-to-my-blog', 'Welcome...', NULL, NULL, NULL, NULL, 0, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 10, 1),
(16, 'BlogPost', '2016-03-30 14:01:41', '2016-03-13 10:03:15', 'the-mighty-mekong', 'The Mighty Mekong', NULL, NULL, NULL, NULL, 0, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 4, 1),
(17, 'BlogPost', '2016-03-30 13:21:59', '2016-03-27 11:00:37', 'batman-inside-a-temple', 'Batman inside a temple?', NULL, '<p class="lead">Wat Rong Khun Temple - The White Temple</p>', NULL, NULL, 0, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 6, 1),
(18, 'BlogPost', '2016-03-30 15:36:43', '2016-03-30 14:21:02', 'the-little-french-town-in-the-middle-of-asia', 'In love with Luang Prabang', NULL, '<p><span id="docs-internal-guid-d4b3212e-c7e5-f7be-a6e8-e3d59707347e"><span>The little French town in the middle of Asia</span></span></p>', NULL, NULL, 0, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 9, 1),
(19, 'BlogPost', '2016-03-30 15:31:02', '2016-03-30 14:54:07', 'rice-farming', 'Rice Farming', NULL, '<p class="lead"><span id="docs-internal-guid-d1120993-c806-fd5d-60ef-edbb3cc49673"><span>That time I became a rice farmer!</span></span></p>', NULL, NULL, 0, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 8, 1),
(20, 'BlogPost', '2016-03-30 15:29:35', '2016-03-30 15:09:10', 'cycling-to-the-blue-lagoon', 'Cycling to the Blue Lagoon', NULL, NULL, NULL, NULL, 0, 1, 9, 0, 0, NULL, 'Inherit', 'Inherit', 6, 1),
(21, 'BlogPost', '2016-03-30 15:38:44', '2016-03-30 15:23:46', 'ants-for-breakfast', 'Ants for breakfast', NULL, '<p class="lead"><span id="docs-internal-guid-850d9316-c822-a7fd-c17b-a999fc04a063"><span>The day I ate ants for breakfast and the lady selling sticky rice in a bamboo shoot stole my phone. </span></span></p>', NULL, NULL, 0, 1, 10, 0, 0, NULL, 'Inherit', 'Inherit', 8, 1),
(22, 'BlogPost', '2016-03-30 16:10:49', '2016-03-30 15:44:46', 'hanoi-snapshot', 'Hanoi Snapshot', NULL, NULL, NULL, NULL, 0, 1, 11, 0, 0, NULL, 'Inherit', 'Inherit', 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `SiteTree_EditorGroups`
--

CREATE TABLE `SiteTree_EditorGroups` (
  `ID` int(11) NOT NULL,
  `SiteTreeID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `SiteTree_ImageTracking`
--

CREATE TABLE `SiteTree_ImageTracking` (
  `ID` int(11) NOT NULL,
  `SiteTreeID` int(11) NOT NULL DEFAULT '0',
  `FileID` int(11) NOT NULL DEFAULT '0',
  `FieldName` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `SiteTree_LinkTracking`
--

CREATE TABLE `SiteTree_LinkTracking` (
  `ID` int(11) NOT NULL,
  `SiteTreeID` int(11) NOT NULL DEFAULT '0',
  `ChildID` int(11) NOT NULL DEFAULT '0',
  `FieldName` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `SiteTree_Live`
--

CREATE TABLE `SiteTree_Live` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('SiteTree','Page','Blog','BlogPost','BlogEntry','ErrorPage','RedirectorPage','VirtualPage','BlogTree','BlogHolder') DEFAULT 'SiteTree',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `URLSegment` varchar(255) DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `MenuTitle` varchar(100) DEFAULT NULL,
  `Content` mediumtext,
  `MetaDescription` mediumtext,
  `ExtraMeta` mediumtext,
  `ShowInMenus` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ShowInSearch` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `HasBrokenFile` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `HasBrokenLink` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ReportClass` varchar(50) DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers','Inherit') DEFAULT 'Inherit',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers','Inherit') DEFAULT 'Inherit',
  `Version` int(11) NOT NULL DEFAULT '0',
  `ParentID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `SiteTree_Live`
--

INSERT INTO `SiteTree_Live` (`ID`, `ClassName`, `LastEdited`, `Created`, `URLSegment`, `Title`, `MenuTitle`, `Content`, `MetaDescription`, `ExtraMeta`, `ShowInMenus`, `ShowInSearch`, `Sort`, `HasBrokenFile`, `HasBrokenLink`, `ReportClass`, `CanViewType`, `CanEditType`, `Version`, `ParentID`) VALUES
(1, 'Blog', '2016-03-07 16:55:07', '2016-02-11 10:41:23', 'home', 'Home', NULL, '<p class="lead">Photos, videos and stories from a small kiwi getting lost in the big wide world</p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 14, 0),
(2, 'Page', '2016-02-17 10:25:34', '2016-02-11 10:41:24', 'about-us', 'About Us', NULL, '<p class="lead">Praesent commodo cursus magna, vel scelerisque nisl consectetur et.</p>\n<p>Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nulla vitae elit libero, a pharetra augue. Donec id elit non mi porta gravida at eget metus. Etiam porta sem malesuada magna mollis euismod. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Nullam quis risus eget urna mollis ornare vel eu leo.</p>\n<p>Cras mattis consectetur purus sit amet fermentum.</p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 2, 0),
(3, 'Page', '2016-02-17 10:25:45', '2016-02-11 10:41:24', 'contact-us', 'Contact Us', NULL, '<p class="lead">Praesent commodo cursus magna, vel scelerisque nisl consectetur et.</p>\n<p>Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nulla vitae elit libero, a pharetra augue. Donec id elit non mi porta gravida at eget metus. Etiam porta sem malesuada magna mollis euismod. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Nullam quis risus eget urna mollis ornare vel eu leo.</p>\n<p>Cras mattis consectetur purus sit amet fermentum.</p>', NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 2, 0),
(4, 'ErrorPage', '2016-02-11 10:41:33', '2016-02-11 10:41:24', 'page-not-found', 'Page not found', NULL, '<p>Sorry, it seems you were trying to access a page that doesn\'t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>', NULL, NULL, 0, 0, 4, 0, 0, NULL, 'Inherit', 'Inherit', 1, 0),
(5, 'ErrorPage', '2016-02-11 10:41:24', '2016-02-11 10:41:24', 'server-error', 'Server error', NULL, '<p>Sorry, there was a problem with handling your request.</p>', NULL, NULL, 0, 0, 5, 0, 0, NULL, 'Inherit', 'Inherit', 1, 0),
(6, 'BlogPost', '2016-03-07 16:26:40', '2016-02-11 11:02:46', 'chaotic-paradise', 'Bali Diaries', NULL, '<p class="lead">I travelled to Bali expecting an island holiday but it turned into the most remarkably diverse adventure full of tooting scooters and lush green countryside. </p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 27, 1),
(13, 'BlogPost', '2016-03-27 11:13:19', '2016-03-07 08:58:23', 'sights-and-speed-of-bangkok', 'Sights and Speed of Bangkok', NULL, '<p class="lead">Exploring a big city full of speeding tuk tuks and glistening golden temples.</p>', NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 10, 1),
(14, 'BlogPost', '2016-03-27 11:49:27', '2016-03-07 16:27:21', 'the-beauty-of-chiang-mai', 'The Beauty of Chiang Mai', NULL, '<p class="lead">I bet you didn\'t think peaceful Monks and Rihanna impersonating Ladyboys could make it together in one blog post...</p>', NULL, NULL, 0, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 7, 1),
(15, 'BlogPost', '2016-03-30 16:35:36', '2016-03-07 16:56:45', 'welcome-to-my-blog', 'Welcome...', NULL, NULL, NULL, NULL, 0, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 10, 1),
(16, 'BlogPost', '2016-03-30 14:01:41', '2016-03-13 10:03:15', 'the-mighty-mekong', 'The Mighty Mekong', NULL, NULL, NULL, NULL, 0, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 4, 1),
(17, 'BlogPost', '2016-03-30 13:21:59', '2016-03-27 11:00:37', 'batman-inside-a-temple', 'Batman inside a temple?', NULL, '<p class="lead">Wat Rong Khun Temple - The White Temple</p>', NULL, NULL, 0, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 6, 1),
(18, 'BlogPost', '2016-03-30 15:36:43', '2016-03-30 14:21:02', 'the-little-french-town-in-the-middle-of-asia', 'In love with Luang Prabang', NULL, '<p><span id="docs-internal-guid-d4b3212e-c7e5-f7be-a6e8-e3d59707347e"><span>The little French town in the middle of Asia</span></span></p>', NULL, NULL, 0, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 9, 1),
(19, 'BlogPost', '2016-03-30 15:31:02', '2016-03-30 14:54:07', 'rice-farming', 'Rice Farming', NULL, '<p class="lead"><span id="docs-internal-guid-d1120993-c806-fd5d-60ef-edbb3cc49673"><span>That time I became a rice farmer!</span></span></p>', NULL, NULL, 0, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 8, 1),
(20, 'BlogPost', '2016-03-30 15:29:35', '2016-03-30 15:09:10', 'cycling-to-the-blue-lagoon', 'Cycling to the Blue Lagoon', NULL, NULL, NULL, NULL, 0, 1, 9, 0, 0, NULL, 'Inherit', 'Inherit', 6, 1),
(21, 'BlogPost', '2016-03-30 15:38:44', '2016-03-30 15:23:46', 'ants-for-breakfast', 'Ants for breakfast', NULL, '<p class="lead"><span id="docs-internal-guid-850d9316-c822-a7fd-c17b-a999fc04a063"><span>The day I ate ants for breakfast and the lady selling sticky rice in a bamboo shoot stole my phone. </span></span></p>', NULL, NULL, 0, 1, 10, 0, 0, NULL, 'Inherit', 'Inherit', 8, 1),
(22, 'BlogPost', '2016-03-30 16:10:49', '2016-03-30 15:44:46', 'hanoi-snapshot', 'Hanoi Snapshot', NULL, NULL, NULL, NULL, 0, 1, 11, 0, 0, NULL, 'Inherit', 'Inherit', 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `SiteTree_versions`
--

CREATE TABLE `SiteTree_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `WasPublished` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `AuthorID` int(11) NOT NULL DEFAULT '0',
  `PublisherID` int(11) NOT NULL DEFAULT '0',
  `ClassName` enum('SiteTree','Page','Blog','BlogPost','BlogEntry','ErrorPage','RedirectorPage','VirtualPage','BlogTree','BlogHolder') DEFAULT 'SiteTree',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `URLSegment` varchar(255) DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `MenuTitle` varchar(100) DEFAULT NULL,
  `Content` mediumtext,
  `MetaDescription` mediumtext,
  `ExtraMeta` mediumtext,
  `ShowInMenus` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ShowInSearch` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `HasBrokenFile` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `HasBrokenLink` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ReportClass` varchar(50) DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers','Inherit') DEFAULT 'Inherit',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers','Inherit') DEFAULT 'Inherit',
  `ParentID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `SiteTree_versions`
--

INSERT INTO `SiteTree_versions` (`ID`, `RecordID`, `Version`, `WasPublished`, `AuthorID`, `PublisherID`, `ClassName`, `LastEdited`, `Created`, `URLSegment`, `Title`, `MenuTitle`, `Content`, `MetaDescription`, `ExtraMeta`, `ShowInMenus`, `ShowInSearch`, `Sort`, `HasBrokenFile`, `HasBrokenLink`, `ReportClass`, `CanViewType`, `CanEditType`, `ParentID`) VALUES
(1, 1, 1, 1, 0, 0, 'Page', '2016-02-11 10:41:23', '2016-02-11 10:41:23', 'home', 'Home', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href="admin/">the CMS</a>.</p><p>You can now access the <a href="http://docs.silverstripe.org">developer documentation</a>, or begin the <a href="http://www.silverstripe.org/learn/lessons">SilverStripe lessons</a>.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(2, 2, 1, 1, 0, 0, 'Page', '2016-02-11 10:41:24', '2016-02-11 10:41:24', 'about-us', 'About Us', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.<br></p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(3, 3, 1, 1, 0, 0, 'Page', '2016-02-11 10:41:24', '2016-02-11 10:41:24', 'contact-us', 'Contact Us', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.<br></p>', NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(4, 4, 1, 1, 0, 0, 'ErrorPage', '2016-02-11 10:41:24', '2016-02-11 10:41:24', 'page-not-found', 'Page not found', NULL, '<p>Sorry, it seems you were trying to access a page that doesn\'t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>', NULL, NULL, 0, 0, 4, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(5, 5, 1, 1, 0, 0, 'ErrorPage', '2016-02-11 10:41:24', '2016-02-11 10:41:24', 'server-error', 'Server error', NULL, '<p>Sorry, there was a problem with handling your request.</p>', NULL, NULL, 0, 0, 5, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(6, 1, 2, 1, 1, 1, '', '2016-02-11 11:02:17', '2016-02-11 10:41:23', 'home', 'Home', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href="admin/">the CMS</a>.</p><p>You can now access the <a href="http://docs.silverstripe.org">developer documentation</a>, or begin the <a href="http://www.silverstripe.org/learn/lessons">SilverStripe lessons</a>.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(7, 1, 3, 1, 1, 1, 'Blog', '2016-02-11 11:02:34', '2016-02-11 10:41:23', 'home', 'Home', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href="admin/">the CMS</a>.</p><p>You can now access the <a href="http://docs.silverstripe.org">developer documentation</a>, or begin the <a href="http://www.silverstripe.org/learn/lessons">SilverStripe lessons</a>.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(8, 6, 1, 0, 1, 0, 'BlogPost', '2016-02-11 11:02:46', '2016-02-11 11:02:46', 'new-blog-post', 'New Blog Post', NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(9, 6, 2, 0, 1, 0, 'BlogPost', '2016-02-11 11:03:00', '2016-02-11 11:02:46', 'new-blog-post', 'New Blog Post', NULL, '<p class="lead">Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.</p>\n<p>Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras mattis consectetur purus sit amet fermentum. Nullam quis risus eget urna mollis ornare vel eu leo. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>\n<p>Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras mattis consectetur purus sit amet fermentum. Nullam quis risus eget urna mollis ornare vel eu leo. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(10, 6, 3, 1, 1, 1, 'BlogPost', '2016-02-11 11:03:00', '2016-02-11 11:02:46', 'new-blog-post', 'New Blog Post', NULL, '<p class="lead">Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.</p>\n<p>Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras mattis consectetur purus sit amet fermentum. Nullam quis risus eget urna mollis ornare vel eu leo. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>\n<p>Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras mattis consectetur purus sit amet fermentum. Nullam quis risus eget urna mollis ornare vel eu leo. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(11, 6, 4, 1, 1, 1, 'BlogPost', '2016-02-11 11:33:44', '2016-02-11 11:02:46', 'new-blog-post', 'New Blog Post', NULL, '<p class="lead">Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.</p>\n<p>Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras mattis consectetur purus sit amet fermentum. Nullam quis risus eget urna mollis ornare vel eu leo. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>\n<p>Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras mattis consectetur purus sit amet fermentum. Nullam quis risus eget urna mollis ornare vel eu leo. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(12, 7, 1, 1, 1, 1, 'BlogPost', '2016-02-11 11:39:55', '2016-02-11 11:02:46', 'new-blog-post-2', 'New Blog Post', NULL, '<p class="lead">Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.</p>\n<p>Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras mattis consectetur purus sit amet fermentum. Nullam quis risus eget urna mollis ornare vel eu leo. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>\n<p>Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras mattis consectetur purus sit amet fermentum. Nullam quis risus eget urna mollis ornare vel eu leo. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>', NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(13, 8, 1, 1, 1, 1, 'BlogPost', '2016-02-11 11:40:32', '2016-02-11 11:02:46', 'new-blog-post-3', 'New Blog Post', NULL, '<p class="lead">Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.</p>\n<p>Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras mattis consectetur purus sit amet fermentum. Nullam quis risus eget urna mollis ornare vel eu leo. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>\n<p>Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras mattis consectetur purus sit amet fermentum. Nullam quis risus eget urna mollis ornare vel eu leo. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>', NULL, NULL, 0, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(14, 8, 2, 1, 1, 1, 'BlogPost', '2016-02-11 11:40:43', '2016-02-11 11:02:46', 'new-blog-post-3', 'New Blog Post', NULL, '<p class="lead">Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.</p>\n<p>Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras mattis consectetur purus sit amet fermentum. Nullam quis risus eget urna mollis ornare vel eu leo. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>\n<p>Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras mattis consectetur purus sit amet fermentum. Nullam quis risus eget urna mollis ornare vel eu leo. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>', NULL, NULL, 0, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(15, 9, 1, 1, 1, 1, 'BlogPost', '2016-02-11 11:41:58', '2016-02-11 11:02:46', 'new-blog-post-4', 'New Blog Post', NULL, '<p class="lead">Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.</p>\n<p>Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras mattis consectetur purus sit amet fermentum. Nullam quis risus eget urna mollis ornare vel eu leo. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>\n<p>Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras mattis consectetur purus sit amet fermentum. Nullam quis risus eget urna mollis ornare vel eu leo. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>', NULL, NULL, 0, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(16, 10, 1, 1, 1, 1, 'BlogPost', '2016-02-11 11:42:06', '2016-02-11 11:02:46', 'new-blog-post-5', 'New Blog Post', NULL, '<p class="lead">Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.</p>\n<p>Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras mattis consectetur purus sit amet fermentum. Nullam quis risus eget urna mollis ornare vel eu leo. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>\n<p>Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras mattis consectetur purus sit amet fermentum. Nullam quis risus eget urna mollis ornare vel eu leo. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>', NULL, NULL, 0, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(17, 11, 1, 0, 1, 0, 'BlogPost', '2016-02-11 11:42:55', '2016-02-11 11:02:46', 'new-blog-post-6', 'New Blog Post', NULL, '<p class="lead">Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.</p>\n<p>Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras mattis consectetur purus sit amet fermentum. Nullam quis risus eget urna mollis ornare vel eu leo. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>\n<p>Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras mattis consectetur purus sit amet fermentum. Nullam quis risus eget urna mollis ornare vel eu leo. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>', NULL, NULL, 0, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(18, 11, 2, 1, 1, 1, 'BlogPost', '2016-02-11 11:43:00', '2016-02-11 11:02:46', 'new-blog-post-6', 'New Blog Post', NULL, '<p class="lead">Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.</p>\n<p>Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras mattis consectetur purus sit amet fermentum. Nullam quis risus eget urna mollis ornare vel eu leo. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>\n<p>Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras mattis consectetur purus sit amet fermentum. Nullam quis risus eget urna mollis ornare vel eu leo. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>', NULL, NULL, 0, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(19, 12, 1, 1, 1, 1, 'BlogPost', '2016-02-11 11:43:05', '2016-02-11 11:02:46', 'new-blog-post-7', 'New Blog Post', NULL, '<p class="lead">Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.</p>\n<p>Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras mattis consectetur purus sit amet fermentum. Nullam quis risus eget urna mollis ornare vel eu leo. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>\n<p>Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras mattis consectetur purus sit amet fermentum. Nullam quis risus eget urna mollis ornare vel eu leo. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>', NULL, NULL, 0, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(20, 1, 4, 1, 1, 1, 'Blog', '2016-02-12 23:49:13', '2016-02-11 10:41:23', 'home', 'Home', NULL, '<p>Photos, videos and stories from a small kiwi getting lost in the big wide world</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(21, 9, 2, 1, 1, 1, 'BlogPost', '2016-02-12 23:51:20', '2016-02-11 11:02:46', 'new-blog-post-4', 'New Blog Post', NULL, '<p class="lead">Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.</p>\n<p>Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras mattis consectetur purus sit amet fermentum. Nullam quis risus eget urna mollis ornare vel eu leo. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>\n<p>Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras mattis consectetur purus sit amet fermentum. Nullam quis risus eget urna mollis ornare vel eu leo. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>', NULL, NULL, 0, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(22, 1, 5, 1, 1, 1, 'Blog', '2016-02-13 00:05:43', '2016-02-11 10:41:23', 'home', 'Home', NULL, '<p class="lead">Photos, videos and stories from a small kiwi getting lost in the big wide world</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(23, 7, 2, 1, 1, 1, 'BlogPost', '2016-02-13 00:13:16', '2016-02-11 11:02:46', 'new-blog-post-2', 'New Blog Post', NULL, '<p class="lead">Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.</p>\n<p>Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras mattis consectetur purus sit amet fermentum. Nullam quis risus eget urna mollis ornare vel eu leo. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>\n<p>Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras mattis consectetur purus sit amet fermentum. Nullam quis risus eget urna mollis ornare vel eu leo. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>', NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(24, 1, 6, 1, 1, 1, 'Blog', '2016-02-13 11:06:32', '2016-02-11 10:41:23', 'home', 'Home', NULL, '<p class="lead">Photos, videos and stories from a small kiwi getting lost in the big wide world</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(25, 1, 7, 1, 1, 1, 'Blog', '2016-02-13 11:30:48', '2016-02-11 10:41:23', 'home', 'Home', NULL, '<p class="lead">Photos, videos and stories from a small kiwi getting lost in the big wide world</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(26, 1, 8, 1, 1, 1, 'Blog', '2016-02-13 11:31:06', '2016-02-11 10:41:23', 'home', 'Home', NULL, '<p class="lead">Photos, videos and stories from a small kiwi getting lost in the big wide world</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(27, 6, 5, 1, 1, 1, 'BlogPost', '2016-02-13 11:31:43', '2016-02-11 11:02:46', 'new-blog-post', 'New Blog Post', NULL, '<p class="lead">Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.</p>\n<p>Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras mattis consectetur purus sit amet fermentum. Nullam quis risus eget urna mollis ornare vel eu leo. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>\n<p>Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras mattis consectetur purus sit amet fermentum. Nullam quis risus eget urna mollis ornare vel eu leo. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(28, 6, 6, 1, 1, 1, 'BlogPost', '2016-02-13 11:33:21', '2016-02-11 11:02:46', 'new-blog-post', 'New Blog Post', NULL, '<p class="lead">Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.</p>\n<p>Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras mattis consectetur purus sit amet fermentum. Nullam quis risus eget urna mollis ornare vel eu leo. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>\n<p>Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras mattis consectetur purus sit amet fermentum. Nullam quis risus eget urna mollis ornare vel eu leo. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(29, 6, 7, 1, 1, 1, 'BlogPost', '2016-02-13 11:58:17', '2016-02-11 11:02:46', 'new-blog-post', 'New Blog Post', NULL, '<p class="lead">Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.</p>\n<p>Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras mattis consectetur purus sit amet fermentum. Nullam quis risus eget urna mollis ornare vel eu leo. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(30, 6, 8, 1, 1, 1, 'BlogPost', '2016-02-14 03:44:27', '2016-02-11 11:02:46', 'test-blog-post', 'Test Blog Post', NULL, '<p class="lead">Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.</p>\n<p>Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras mattis consectetur purus sit amet fermentum. Nullam quis risus eget urna mollis ornare vel eu leo. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(31, 6, 9, 1, 1, 1, 'BlogPost', '2016-02-14 11:08:20', '2016-02-11 11:02:46', 'test-blog-post', 'Test Blog Post', NULL, '<p class="lead">Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.</p>\n<p>Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras mattis consectetur purus sit amet fermentum. Nullam quis risus eget urna mollis ornare vel eu leo. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(32, 6, 10, 1, 1, 1, 'BlogPost', '2016-02-14 11:27:38', '2016-02-11 11:02:46', 'test-blog-post', 'Test Blog Post', NULL, '<p class="lead">Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.</p>\n<p>Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras mattis consectetur purus sit amet fermentum. Nullam quis risus eget urna mollis ornare vel eu leo. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(33, 6, 11, 1, 1, 1, 'BlogPost', '2016-02-16 09:03:49', '2016-02-11 11:02:46', 'test-blog-post', 'Test Blog Post', NULL, '<p class="lead">Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.</p>\n<p>Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras mattis consectetur purus sit amet fermentum. Nullam quis risus eget urna mollis ornare vel eu leo. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(34, 6, 12, 1, 1, 1, 'BlogPost', '2016-02-16 20:13:15', '2016-02-11 11:02:46', 'test-blog-post', 'Test Blog Post', NULL, '<p class="lead">Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.</p>\n<p>Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras mattis consectetur purus sit amet fermentum. Nullam quis risus eget urna mollis ornare vel eu leo. </p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(35, 6, 13, 1, 1, 1, 'BlogPost', '2016-02-17 08:48:29', '2016-02-11 11:02:46', 'test-blog-post', 'Test Blog Post', NULL, '<p class="lead">Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.</p>\n<p>Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras mattis consectetur purus sit amet fermentum. Nullam quis risus eget urna mollis ornare vel eu leo. </p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(36, 1, 9, 1, 1, 1, 'Blog', '2016-02-17 10:13:59', '2016-02-11 10:41:23', 'home', 'Home', NULL, '<p class="lead">Photos, videos and stories from a small kiwi getting lost in the big wide world</p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(37, 2, 2, 1, 1, 1, 'Page', '2016-02-17 10:25:33', '2016-02-11 10:41:24', 'about-us', 'About Us', NULL, '<p class="lead">Praesent commodo cursus magna, vel scelerisque nisl consectetur et.</p>\n<p>Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nulla vitae elit libero, a pharetra augue. Donec id elit non mi porta gravida at eget metus. Etiam porta sem malesuada magna mollis euismod. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Nullam quis risus eget urna mollis ornare vel eu leo.</p>\n<p>Cras mattis consectetur purus sit amet fermentum.</p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(38, 3, 2, 1, 1, 1, 'Page', '2016-02-17 10:25:45', '2016-02-11 10:41:24', 'contact-us', 'Contact Us', NULL, '<p class="lead">Praesent commodo cursus magna, vel scelerisque nisl consectetur et.</p>\n<p>Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nulla vitae elit libero, a pharetra augue. Donec id elit non mi porta gravida at eget metus. Etiam porta sem malesuada magna mollis euismod. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Nullam quis risus eget urna mollis ornare vel eu leo.</p>\n<p>Cras mattis consectetur purus sit amet fermentum.</p>', NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(39, 6, 14, 1, 1, 1, 'BlogPost', '2016-02-17 10:41:51', '2016-02-11 11:02:46', 'test-blog-post', 'Test Blog Post', NULL, '<p class="lead">Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.</p>\n<p>Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras mattis consectetur purus sit amet fermentum. Nullam quis risus eget urna mollis ornare vel eu leo. </p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(40, 6, 15, 1, 1, 1, 'BlogPost', '2016-02-17 10:55:01', '2016-02-11 11:02:46', 'test-blog-post', 'Thailand Post', NULL, '<p class="lead">Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.</p>\n<p>Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras mattis consectetur purus sit amet fermentum. Nullam quis risus eget urna mollis ornare vel eu leo. </p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(41, 7, 3, 1, 1, 1, 'BlogPost', '2016-02-17 10:55:25', '2016-02-11 11:02:46', 'new-blog-post-2', 'Laos Post', NULL, '<p class="lead">Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.</p>\n<p>Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras mattis consectetur purus sit amet fermentum. Nullam quis risus eget urna mollis ornare vel eu leo. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>\n<p>Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras mattis consectetur purus sit amet fermentum. Nullam quis risus eget urna mollis ornare vel eu leo. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>', NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(42, 7, 4, 1, 1, 1, 'BlogPost', '2016-02-17 10:55:31', '2016-02-11 11:02:46', 'new-blog-post-2', 'Laos Post', NULL, '<p class="lead">Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.</p>\n<p>Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras mattis consectetur purus sit amet fermentum. Nullam quis risus eget urna mollis ornare vel eu leo. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>\n<p>Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras mattis consectetur purus sit amet fermentum. Nullam quis risus eget urna mollis ornare vel eu leo. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>', NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(43, 8, 3, 1, 1, 1, 'BlogPost', '2016-02-17 10:55:46', '2016-02-11 11:02:46', 'new-blog-post-3', 'New Blog Post', NULL, '<p class="lead">Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.</p>\n<p>Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras mattis consectetur purus sit amet fermentum. Nullam quis risus eget urna mollis ornare vel eu leo. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>\n<p>Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras mattis consectetur purus sit amet fermentum. Nullam quis risus eget urna mollis ornare vel eu leo. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>', NULL, NULL, 0, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(44, 9, 3, 1, 1, 1, 'BlogPost', '2016-02-17 10:56:10', '2016-02-11 11:02:46', 'singapore-post', 'Singapore Post', NULL, '<p class="lead">Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.</p>\n<p>Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras mattis consectetur purus sit amet fermentum. Nullam quis risus eget urna mollis ornare vel eu leo. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>\n<p>Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras mattis consectetur purus sit amet fermentum. Nullam quis risus eget urna mollis ornare vel eu leo. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>', NULL, NULL, 0, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(45, 8, 4, 1, 1, 1, 'BlogPost', '2016-02-17 10:56:43', '2016-02-11 11:02:46', 'vietnam-post', 'Vietnam Post', NULL, '<p class="lead">Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.</p>\n<p>Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras mattis consectetur purus sit amet fermentum. Nullam quis risus eget urna mollis ornare vel eu leo. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>\n<p>Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras mattis consectetur purus sit amet fermentum. Nullam quis risus eget urna mollis ornare vel eu leo. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>', NULL, NULL, 0, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(46, 8, 5, 1, 1, 1, 'BlogPost', '2016-02-17 11:00:20', '2016-02-11 11:02:46', 'vietnam-post', 'Vietnam Post', NULL, '<p class="lead">Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.</p>\n<p>Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras mattis consectetur purus sit amet fermentum. Nullam quis risus eget urna mollis ornare vel eu leo. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>\n<p>Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras mattis consectetur purus sit amet fermentum. Nullam quis risus eget urna mollis ornare vel eu leo. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>', NULL, NULL, 0, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(47, 10, 2, 1, 1, 1, 'BlogPost', '2016-02-17 11:05:52', '2016-02-11 11:02:46', 'new-blog-post-5', 'Indonesia Post', NULL, '<p class="lead">Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.</p>\n<p>Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras mattis consectetur purus sit amet fermentum. Nullam quis risus eget urna mollis ornare vel eu leo. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>\n<p>Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras mattis consectetur purus sit amet fermentum. Nullam quis risus eget urna mollis ornare vel eu leo. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>', NULL, NULL, 0, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(48, 10, 3, 1, 1, 1, 'BlogPost', '2016-02-17 11:06:01', '2016-02-11 11:02:46', 'new-blog-post-5', 'Indonesia Post', NULL, '<p class="lead">Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.</p>\n<p>Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras mattis consectetur purus sit amet fermentum. Nullam quis risus eget urna mollis ornare vel eu leo. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>\n<p>Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras mattis consectetur purus sit amet fermentum. Nullam quis risus eget urna mollis ornare vel eu leo. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>', NULL, NULL, 0, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(49, 1, 10, 1, 1, 1, 'Blog', '2016-02-24 03:26:52', '2016-02-11 10:41:23', 'home', 'Home', NULL, '<p class="lead">Photos, videos and stories from a small kiwi getting lost in the big wide world</p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(50, 1, 11, 1, 1, 1, 'Blog', '2016-02-24 03:27:34', '2016-02-11 10:41:23', 'home', 'Home', NULL, '<p class="lead">Photos, videos and stories from a small kiwi getting lost in the big wide world</p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(51, 1, 12, 1, 1, 1, 'Blog', '2016-02-24 03:34:37', '2016-02-11 10:41:23', 'home', 'Home', NULL, '<p class="lead">Photos, videos and stories from a small kiwi getting lost in the big wide world</p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(52, 6, 16, 1, 1, 1, 'BlogPost', '2016-02-24 09:56:46', '2016-02-11 11:02:46', 'test-blog-post', 'Chaotic Paradise', NULL, '<p class="lead">Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.</p>\n<p>Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras mattis consectetur purus sit amet fermentum. Nullam quis risus eget urna mollis ornare vel eu leo. </p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(53, 6, 17, 1, 1, 1, 'BlogPost', '2016-02-24 10:06:26', '2016-02-11 11:02:46', 'test-blog-post', 'Chaotic Paradise', NULL, '<p>I travelled to Bali expecting an island holiday but it turned into the most remarkably diverse adventure full of tooting scooters and lush green countryside. </p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(54, 6, 18, 1, 1, 1, 'BlogPost', '2016-02-24 10:07:17', '2016-02-11 11:02:46', 'test-blog-post', 'Chaotic Paradise', NULL, '<p class="lead">I travelled to Bali expecting an island holiday but it turned into the most remarkably diverse adventure full of tooting scooters and lush green countryside. </p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(55, 6, 19, 1, 1, 1, 'BlogPost', '2016-02-24 10:12:08', '2016-02-11 11:02:46', 'test-blog-post', 'Chaotic Paradise', NULL, '<p class="lead">I travelled to Bali expecting an island holiday but it turned into the most remarkably diverse adventure full of tooting scooters and lush green countryside. </p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(56, 6, 20, 1, 1, 1, 'BlogPost', '2016-02-24 10:12:37', '2016-02-11 11:02:46', 'test-blog-post', 'Chaotic Paradise', NULL, '<p class="lead">I travelled to Bali expecting an island holiday but it turned into the most remarkably diverse adventure full of tooting scooters and lush green countryside. </p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(57, 6, 21, 1, 1, 1, 'BlogPost', '2016-02-24 10:13:54', '2016-02-11 11:02:46', 'test-blog-post', 'Chaotic Paradise', NULL, '<p class="lead">I travelled to Bali expecting an island holiday but it turned into the most remarkably diverse adventure full of tooting scooters and lush green countryside. </p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(58, 6, 22, 1, 1, 1, 'BlogPost', '2016-02-24 10:16:08', '2016-02-11 11:02:46', 'test-blog-post', 'Chaotic Paradise', NULL, '<p class="lead">I travelled to Bali expecting an island holiday but it turned into the most remarkably diverse adventure full of tooting scooters and lush green countryside. </p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(59, 6, 23, 1, 1, 1, 'BlogPost', '2016-02-24 10:27:41', '2016-02-11 11:02:46', 'test-blog-post', 'Chaotic Paradise', NULL, '<p class="lead">I travelled to Bali expecting an island holiday but it turned into the most remarkably diverse adventure full of tooting scooters and lush green countryside. </p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(60, 6, 24, 1, 1, 1, 'BlogPost', '2016-02-24 10:28:04', '2016-02-11 11:02:46', 'test-blog-post', 'Chaotic Paradise', NULL, '<p class="lead">I travelled to Bali expecting an island holiday but it turned into the most remarkably diverse adventure full of tooting scooters and lush green countryside. </p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(61, 6, 25, 1, 1, 1, 'BlogPost', '2016-02-25 09:42:22', '2016-02-11 11:02:46', 'chaotic-paradise', 'Chaotic Paradise', NULL, '<p class="lead">I travelled to Bali expecting an island holiday but it turned into the most remarkably diverse adventure full of tooting scooters and lush green countryside. </p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(62, 6, 26, 1, 1, 1, 'BlogPost', '2016-03-07 07:30:02', '2016-02-11 11:02:46', 'chaotic-paradise', 'Bali Diaries', NULL, '<p class="lead">I travelled to Bali expecting an island holiday but it turned into the most remarkably diverse adventure full of tooting scooters and lush green countryside. </p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(63, 13, 1, 0, 1, 0, 'BlogPost', '2016-03-07 08:58:23', '2016-03-07 08:58:23', 'new-blog-post', 'New Blog Post', NULL, NULL, NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(64, 13, 2, 0, 1, 0, 'BlogPost', '2016-03-07 09:00:53', '2016-03-07 08:58:23', 'bangkok-photo', 'Bangkok Sights and Sounds', NULL, NULL, NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(65, 13, 3, 1, 1, 1, 'BlogPost', '2016-03-07 09:00:53', '2016-03-07 08:58:23', 'bangkok-photo', 'Bangkok Sights and Sounds', NULL, NULL, NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(66, 13, 4, 1, 1, 1, 'BlogPost', '2016-03-07 09:02:06', '2016-03-07 08:58:23', 'sights-and-speed-of-bangkok', 'Sights and Speed of Bangkok', NULL, NULL, NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(67, 13, 5, 1, 1, 1, 'BlogPost', '2016-03-07 09:04:34', '2016-03-07 08:58:23', 'sights-and-speed-of-bangkok', 'Sights and Speed of Bangkok', NULL, NULL, NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(68, 13, 6, 1, 1, 1, 'BlogPost', '2016-03-07 09:05:24', '2016-03-07 08:58:23', 'sights-and-speed-of-bangkok', 'Sights and Speed of Bangkok', NULL, NULL, NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(69, 13, 7, 1, 1, 1, 'BlogPost', '2016-03-07 09:08:04', '2016-03-07 08:58:23', 'sights-and-speed-of-bangkok', 'Sights and Speed of Bangkok', NULL, '<p>Exploring a big city full of speeding tuk tuks, glistening golden temples and mouth-watering street food.</p>', NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(70, 13, 8, 1, 1, 1, 'BlogPost', '2016-03-07 09:27:06', '2016-03-07 08:58:23', 'sights-and-speed-of-bangkok', 'Sights and Speed of Bangkok', NULL, '<p class="lead">Exploring a big city full of speeding tuk tuks, glistening golden temples and mouth-watering street food.</p>', NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(71, 6, 27, 1, 1, 1, 'BlogPost', '2016-03-07 16:26:40', '2016-02-11 11:02:46', 'chaotic-paradise', 'Bali Diaries', NULL, '<p class="lead">I travelled to Bali expecting an island holiday but it turned into the most remarkably diverse adventure full of tooting scooters and lush green countryside. </p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(72, 14, 1, 0, 1, 0, 'BlogPost', '2016-03-07 16:27:21', '2016-03-07 16:27:21', 'new-blog-post', 'New Blog Post', NULL, NULL, NULL, NULL, 0, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(73, 14, 2, 0, 1, 0, 'BlogPost', '2016-03-07 16:28:37', '2016-03-07 16:27:21', 'the-beauty-of-chiang-mai', 'The Beauty of Chiang Mai', NULL, NULL, NULL, NULL, 0, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(74, 14, 3, 1, 1, 1, 'BlogPost', '2016-03-07 16:28:37', '2016-03-07 16:27:21', 'the-beauty-of-chiang-mai', 'The Beauty of Chiang Mai', NULL, NULL, NULL, NULL, 0, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(75, 14, 4, 1, 1, 1, 'BlogPost', '2016-03-07 16:34:14', '2016-03-07 16:27:21', 'the-beauty-of-chiang-mai', 'The Beauty of Chiang Mai', NULL, NULL, NULL, NULL, 0, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(76, 14, 5, 1, 1, 1, 'BlogPost', '2016-03-07 16:34:44', '2016-03-07 16:27:21', 'the-beauty-of-chiang-mai', 'The Beauty of Chiang Mai', NULL, NULL, NULL, NULL, 0, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(77, 14, 6, 1, 1, 1, 'BlogPost', '2016-03-07 16:36:27', '2016-03-07 16:27:21', 'the-beauty-of-chiang-mai', 'The Beauty of Chiang Mai', NULL, NULL, NULL, NULL, 0, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(78, 13, 9, 1, 1, 1, 'BlogPost', '2016-03-07 16:36:52', '2016-03-07 08:58:23', 'sights-and-speed-of-bangkok', 'Sights and Speed of Bangkok', NULL, '<p class="lead">Exploring a big city full of speeding tuk tuks, glistening golden temples and mouth-watering street food.</p>', NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(79, 14, 7, 1, 1, 1, 'BlogPost', '2016-03-07 16:50:56', '2016-03-07 16:27:21', 'the-beauty-of-chiang-mai', 'The Beauty of Chiang Mai', NULL, '<p class="lead">I bet you didn\'t think peaceful Monks and Rihanna impersonating Ladyboys could make it together in one blog post...</p>', NULL, NULL, 0, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(80, 1, 13, 1, 1, 1, 'Blog', '2016-03-07 16:53:50', '2016-02-11 10:41:23', 'home', 'Home', NULL, '<p class="lead">Photos, videos and stories from a small kiwi getting lost in the big wide world</p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(81, 1, 14, 1, 1, 1, 'Blog', '2016-03-07 16:54:41', '2016-02-11 10:41:23', 'home', 'Home', NULL, '<p class="lead">Photos, videos and stories from a small kiwi getting lost in the big wide world</p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(82, 15, 1, 0, 1, 0, 'BlogPost', '2016-03-07 16:56:45', '2016-03-07 16:56:45', 'new-blog-post', 'New Blog Post', NULL, NULL, NULL, NULL, 0, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(83, 15, 2, 0, 1, 0, 'BlogPost', '2016-03-07 16:57:31', '2016-03-07 16:56:45', 'welcome-to-my-blog', 'Welcome to my blog', NULL, NULL, NULL, NULL, 0, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(84, 15, 3, 1, 1, 1, 'BlogPost', '2016-03-07 16:57:31', '2016-03-07 16:56:45', 'welcome-to-my-blog', 'Welcome to my blog', NULL, NULL, NULL, NULL, 0, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(85, 15, 4, 1, 1, 1, 'BlogPost', '2016-03-07 16:57:52', '2016-03-07 16:56:45', 'welcome-to-my-blog', 'Welcome to my blog', NULL, NULL, NULL, NULL, 0, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(86, 15, 5, 1, 1, 1, 'BlogPost', '2016-03-07 16:58:29', '2016-03-07 16:56:45', 'welcome-to-my-blog', 'Welcome to my blog', NULL, NULL, NULL, NULL, 0, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(87, 15, 6, 1, 1, 1, 'BlogPost', '2016-03-07 17:01:28', '2016-03-07 16:56:45', 'welcome-to-my-blog', 'Welcome to my blog', NULL, NULL, NULL, NULL, 0, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(88, 15, 7, 1, 1, 1, 'BlogPost', '2016-03-07 17:02:44', '2016-03-07 16:56:45', 'welcome-to-my-blog', 'Welcome to my blog', NULL, NULL, NULL, NULL, 0, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(89, 15, 8, 1, 1, 1, 'BlogPost', '2016-03-07 17:03:20', '2016-03-07 16:56:45', 'welcome-to-my-blog', 'Welcome...', NULL, NULL, NULL, NULL, 0, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(90, 15, 9, 1, 1, 1, 'BlogPost', '2016-03-07 17:04:56', '2016-03-07 16:56:45', 'welcome-to-my-blog', 'Welcome...', NULL, NULL, NULL, NULL, 0, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(91, 13, 10, 1, 1, 1, 'BlogPost', '2016-03-13 10:01:48', '2016-03-07 08:58:23', 'sights-and-speed-of-bangkok', 'Sights and Speed of Bangkok', NULL, '<p class="lead">Exploring a big city full of speeding tuk tuks and glistening golden temples.</p>', NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(92, 16, 1, 0, 1, 0, 'BlogPost', '2016-03-13 10:03:15', '2016-03-13 10:03:15', 'new-blog-post', 'New Blog Post', NULL, NULL, NULL, NULL, 0, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(93, 17, 1, 0, 1, 0, 'BlogPost', '2016-03-27 11:00:37', '2016-03-27 11:00:37', 'new-blog-post-2', 'New Blog Post', NULL, NULL, NULL, NULL, 0, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(94, 17, 2, 0, 1, 0, 'BlogPost', '2016-03-30 13:20:18', '2016-03-27 11:00:37', 'batman-inside-a-temple', 'Batman inside a temple?', NULL, '<p class="lead">Wat Rong Khun Temple - The White Temple</p>', NULL, NULL, 0, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(95, 17, 3, 1, 1, 1, 'BlogPost', '2016-03-30 13:20:18', '2016-03-27 11:00:37', 'batman-inside-a-temple', 'Batman inside a temple?', NULL, '<p class="lead">Wat Rong Khun Temple - The White Temple</p>', NULL, NULL, 0, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 1);
INSERT INTO `SiteTree_versions` (`ID`, `RecordID`, `Version`, `WasPublished`, `AuthorID`, `PublisherID`, `ClassName`, `LastEdited`, `Created`, `URLSegment`, `Title`, `MenuTitle`, `Content`, `MetaDescription`, `ExtraMeta`, `ShowInMenus`, `ShowInSearch`, `Sort`, `HasBrokenFile`, `HasBrokenLink`, `ReportClass`, `CanViewType`, `CanEditType`, `ParentID`) VALUES
(96, 17, 4, 1, 1, 1, 'BlogPost', '2016-03-30 13:20:41', '2016-03-27 11:00:37', 'batman-inside-a-temple', 'Batman inside a temple?', NULL, '<p class="lead">Wat Rong Khun Temple - The White Temple</p>', NULL, NULL, 0, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(97, 17, 5, 1, 1, 1, 'BlogPost', '2016-03-30 13:21:24', '2016-03-27 11:00:37', 'batman-inside-a-temple', 'Batman inside a temple?', NULL, '<p class="lead">Wat Rong Khun Temple - The White Temple</p>', NULL, NULL, 0, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(98, 17, 6, 1, 1, 1, 'BlogPost', '2016-03-30 13:21:59', '2016-03-27 11:00:37', 'batman-inside-a-temple', 'Batman inside a temple?', NULL, '<p class="lead">Wat Rong Khun Temple - The White Temple</p>', NULL, NULL, 0, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(99, 16, 2, 0, 1, 0, 'BlogPost', '2016-03-30 13:45:37', '2016-03-13 10:03:15', 'the-mighty-mekong', 'The Mighty Mekong', NULL, NULL, NULL, NULL, 0, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(100, 16, 3, 0, 1, 0, 'BlogPost', '2016-03-30 13:46:11', '2016-03-13 10:03:15', 'the-mighty-mekong', 'The Mighty Mekong', NULL, NULL, NULL, NULL, 0, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(101, 16, 4, 1, 1, 1, 'BlogPost', '2016-03-30 13:47:00', '2016-03-13 10:03:15', 'the-mighty-mekong', 'The Mighty Mekong', NULL, NULL, NULL, NULL, 0, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(102, 18, 1, 0, 1, 0, 'BlogPost', '2016-03-30 14:21:02', '2016-03-30 14:21:02', 'new-blog-post', 'New Blog Post', NULL, NULL, NULL, NULL, 0, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(103, 18, 2, 0, 1, 0, 'BlogPost', '2016-03-30 14:23:56', '2016-03-30 14:21:02', 'the-little-french-town-in-the-middle-of-asia', 'The little French town in the middle of Asia', NULL, '<p>In love with Luang Prabang</p>', NULL, NULL, 0, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(104, 18, 3, 1, 1, 1, 'BlogPost', '2016-03-30 14:24:00', '2016-03-30 14:21:02', 'the-little-french-town-in-the-middle-of-asia', 'The little French town in the middle of Asia', NULL, '<p>In love with Luang Prabang</p>', NULL, NULL, 0, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(105, 18, 4, 1, 1, 1, 'BlogPost', '2016-03-30 14:25:17', '2016-03-30 14:21:02', 'the-little-french-town-in-the-middle-of-asia', 'The little French town in the middle of Asia', NULL, '<p><span id="docs-internal-guid-d4b3212e-c7e5-f7be-a6e8-e3d59707347e"><span>The little French town in the middle of Asia</span></span></p>', NULL, NULL, 0, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(106, 18, 5, 1, 1, 1, 'BlogPost', '2016-03-30 14:26:09', '2016-03-30 14:21:02', 'the-little-french-town-in-the-middle-of-asia', 'In love with Luang Prabang', NULL, '<p><span id="docs-internal-guid-d4b3212e-c7e5-f7be-a6e8-e3d59707347e"><span>The little French town in the middle of Asia</span></span></p>', NULL, NULL, 0, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(107, 18, 6, 1, 1, 1, 'BlogPost', '2016-03-30 14:26:28', '2016-03-30 14:21:02', 'the-little-french-town-in-the-middle-of-asia', 'In love with Luang Prabang', NULL, '<p><span id="docs-internal-guid-d4b3212e-c7e5-f7be-a6e8-e3d59707347e"><span>The little French town in the middle of Asia</span></span></p>', NULL, NULL, 0, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(108, 18, 7, 1, 1, 1, 'BlogPost', '2016-03-30 14:27:25', '2016-03-30 14:21:02', 'the-little-french-town-in-the-middle-of-asia', 'In love with Luang Prabang', NULL, '<p><span id="docs-internal-guid-d4b3212e-c7e5-f7be-a6e8-e3d59707347e"><span>The little French town in the middle of Asia</span></span></p>', NULL, NULL, 0, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(109, 19, 1, 0, 1, 0, 'BlogPost', '2016-03-30 14:54:07', '2016-03-30 14:54:07', 'new-blog-post', 'New Blog Post', NULL, NULL, NULL, NULL, 0, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(110, 19, 2, 0, 1, 0, 'BlogPost', '2016-03-30 14:55:22', '2016-03-30 14:54:07', 'rice-farming', 'Rice Farming', NULL, NULL, NULL, NULL, 0, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(111, 19, 3, 1, 1, 1, 'BlogPost', '2016-03-30 14:55:22', '2016-03-30 14:54:07', 'rice-farming', 'Rice Farming', NULL, NULL, NULL, NULL, 0, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(112, 19, 4, 1, 1, 1, 'BlogPost', '2016-03-30 14:55:27', '2016-03-30 14:54:07', 'rice-farming', 'Rice Farming', NULL, NULL, NULL, NULL, 0, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(113, 19, 5, 1, 1, 1, 'BlogPost', '2016-03-30 14:56:44', '2016-03-30 14:54:07', 'rice-farming', 'Rice Farming', NULL, NULL, NULL, NULL, 0, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(114, 19, 6, 1, 1, 1, 'BlogPost', '2016-03-30 14:57:06', '2016-03-30 14:54:07', 'rice-farming', 'Rice Farming', NULL, '<p class="lead"><span id="docs-internal-guid-d1120993-c806-fd5d-60ef-edbb3cc49673"><span>That time I became a rice farmer!</span></span></p>', NULL, NULL, 0, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(115, 20, 1, 0, 1, 0, 'BlogPost', '2016-03-30 15:09:10', '2016-03-30 15:09:10', 'new-blog-post', 'New Blog Post', NULL, NULL, NULL, NULL, 0, 1, 9, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(116, 20, 2, 0, 1, 0, 'BlogPost', '2016-03-30 15:09:53', '2016-03-30 15:09:10', 'cycling-to-the-blue-lagoon', 'Cycling to the Blue Lagoon', NULL, NULL, NULL, NULL, 0, 1, 9, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(117, 20, 3, 0, 1, 0, 'BlogPost', '2016-03-30 15:10:22', '2016-03-30 15:09:10', 'cycling-to-the-blue-lagoon', 'Cycling to the Blue Lagoon', NULL, NULL, NULL, NULL, 0, 1, 9, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(118, 20, 4, 0, 1, 0, 'BlogPost', '2016-03-30 15:11:00', '2016-03-30 15:09:10', 'cycling-to-the-blue-lagoon', 'Cycling to the Blue Lagoon', NULL, NULL, NULL, NULL, 0, 1, 9, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(119, 20, 5, 1, 1, 1, 'BlogPost', '2016-03-30 15:11:00', '2016-03-30 15:09:10', 'cycling-to-the-blue-lagoon', 'Cycling to the Blue Lagoon', NULL, NULL, NULL, NULL, 0, 1, 9, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(120, 21, 1, 0, 1, 0, 'BlogPost', '2016-03-30 15:23:46', '2016-03-30 15:23:46', 'new-blog-post', 'New Blog Post', NULL, NULL, NULL, NULL, 0, 1, 10, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(121, 21, 2, 0, 1, 0, 'BlogPost', '2016-03-30 15:26:23', '2016-03-30 15:23:46', 'ants-for-breakfast', 'Ants for breakfast', NULL, NULL, NULL, NULL, 0, 1, 10, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(122, 21, 3, 1, 1, 1, 'BlogPost', '2016-03-30 15:26:23', '2016-03-30 15:23:46', 'ants-for-breakfast', 'Ants for breakfast', NULL, NULL, NULL, NULL, 0, 1, 10, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(123, 21, 4, 1, 1, 1, 'BlogPost', '2016-03-30 15:26:58', '2016-03-30 15:23:46', 'ants-for-breakfast', 'Ants for breakfast', NULL, NULL, NULL, NULL, 0, 1, 10, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(124, 21, 5, 1, 1, 1, 'BlogPost', '2016-03-30 15:27:26', '2016-03-30 15:23:46', 'ants-for-breakfast', 'Ants for breakfast', NULL, '<p><span id="docs-internal-guid-850d9316-c822-a7fd-c17b-a999fc04a063"><span>The day I ate ants for breakfast and the lady selling sticky rice in a bamboo shoot stole my phone. </span></span></p>', NULL, NULL, 0, 1, 10, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(125, 21, 6, 1, 1, 1, 'BlogPost', '2016-03-30 15:28:17', '2016-03-30 15:23:46', 'ants-for-breakfast', 'Ants for breakfast', NULL, '<p><span id="docs-internal-guid-850d9316-c822-a7fd-c17b-a999fc04a063"><span>The day I ate ants for breakfast and the lady selling sticky rice in a bamboo shoot stole my phone. </span></span></p>', NULL, NULL, 0, 1, 10, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(126, 21, 7, 1, 1, 1, 'BlogPost', '2016-03-30 15:28:43', '2016-03-30 15:23:46', 'ants-for-breakfast', 'Ants for breakfast', NULL, '<p><span id="docs-internal-guid-850d9316-c822-a7fd-c17b-a999fc04a063"><span>The day I ate ants for breakfast and the lady selling sticky rice in a bamboo shoot stole my phone. </span></span></p>', NULL, NULL, 0, 1, 10, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(127, 20, 6, 1, 1, 1, 'BlogPost', '2016-03-30 15:29:35', '2016-03-30 15:09:10', 'cycling-to-the-blue-lagoon', 'Cycling to the Blue Lagoon', NULL, NULL, NULL, NULL, 0, 1, 9, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(128, 19, 7, 1, 1, 1, 'BlogPost', '2016-03-30 15:30:30', '2016-03-30 14:54:07', 'rice-farming', 'Rice Farming', NULL, '<p class="lead"><span id="docs-internal-guid-d1120993-c806-fd5d-60ef-edbb3cc49673"><span>That time I became a rice farmer!</span></span></p>', NULL, NULL, 0, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(129, 19, 8, 1, 1, 1, 'BlogPost', '2016-03-30 15:31:02', '2016-03-30 14:54:07', 'rice-farming', 'Rice Farming', NULL, '<p class="lead"><span id="docs-internal-guid-d1120993-c806-fd5d-60ef-edbb3cc49673"><span>That time I became a rice farmer!</span></span></p>', NULL, NULL, 0, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(130, 18, 8, 1, 1, 1, 'BlogPost', '2016-03-30 15:35:26', '2016-03-30 14:21:02', 'the-little-french-town-in-the-middle-of-asia', 'In love with Luang Prabang', NULL, '<p><span id="docs-internal-guid-d4b3212e-c7e5-f7be-a6e8-e3d59707347e"><span>The little French town in the middle of Asia</span></span></p>', NULL, NULL, 0, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(131, 18, 9, 1, 1, 1, 'BlogPost', '2016-03-30 15:36:43', '2016-03-30 14:21:02', 'the-little-french-town-in-the-middle-of-asia', 'In love with Luang Prabang', NULL, '<p><span id="docs-internal-guid-d4b3212e-c7e5-f7be-a6e8-e3d59707347e"><span>The little French town in the middle of Asia</span></span></p>', NULL, NULL, 0, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(132, 21, 8, 1, 1, 1, 'BlogPost', '2016-03-30 15:38:44', '2016-03-30 15:23:46', 'ants-for-breakfast', 'Ants for breakfast', NULL, '<p class="lead"><span id="docs-internal-guid-850d9316-c822-a7fd-c17b-a999fc04a063"><span>The day I ate ants for breakfast and the lady selling sticky rice in a bamboo shoot stole my phone. </span></span></p>', NULL, NULL, 0, 1, 10, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(133, 22, 1, 0, 1, 0, 'BlogPost', '2016-03-30 15:44:46', '2016-03-30 15:44:46', 'new-blog-post', 'New Blog Post', NULL, NULL, NULL, NULL, 0, 1, 11, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(134, 22, 2, 0, 1, 0, 'BlogPost', '2016-03-30 16:08:59', '2016-03-30 15:44:46', 'hanoi-snapshot', 'Hanoi Snapshot', NULL, NULL, NULL, NULL, 0, 1, 11, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(135, 22, 3, 1, 1, 1, 'BlogPost', '2016-03-30 16:08:59', '2016-03-30 15:44:46', 'hanoi-snapshot', 'Hanoi Snapshot', NULL, NULL, NULL, NULL, 0, 1, 11, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(136, 22, 4, 1, 1, 1, 'BlogPost', '2016-03-30 16:09:40', '2016-03-30 15:44:46', 'hanoi-snapshot', 'Hanoi Snapshot', NULL, NULL, NULL, NULL, 0, 1, 11, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(137, 22, 5, 1, 1, 1, 'BlogPost', '2016-03-30 16:10:49', '2016-03-30 15:44:46', 'hanoi-snapshot', 'Hanoi Snapshot', NULL, NULL, NULL, NULL, 0, 1, 11, 0, 0, NULL, 'Inherit', 'Inherit', 1),
(138, 15, 10, 1, 1, 1, 'BlogPost', '2016-03-30 16:35:36', '2016-03-07 16:56:45', 'welcome-to-my-blog', 'Welcome...', NULL, NULL, NULL, NULL, 0, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 1);

-- --------------------------------------------------------

--
-- Table structure for table `SiteTree_ViewerGroups`
--

CREATE TABLE `SiteTree_ViewerGroups` (
  `ID` int(11) NOT NULL,
  `SiteTreeID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `VirtualPage`
--

CREATE TABLE `VirtualPage` (
  `ID` int(11) NOT NULL,
  `VersionID` int(11) NOT NULL DEFAULT '0',
  `CopyContentFromID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `VirtualPage_Live`
--

CREATE TABLE `VirtualPage_Live` (
  `ID` int(11) NOT NULL,
  `VersionID` int(11) NOT NULL DEFAULT '0',
  `CopyContentFromID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `VirtualPage_versions`
--

CREATE TABLE `VirtualPage_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `VersionID` int(11) NOT NULL DEFAULT '0',
  `CopyContentFromID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Blog`
--
ALTER TABLE `Blog`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `BlogCategory`
--
ALTER TABLE `BlogCategory`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `BlogID` (`BlogID`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `BlogEntry`
--
ALTER TABLE `BlogEntry`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `BlogEntry_Live`
--
ALTER TABLE `BlogEntry_Live`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `BlogEntry_versions`
--
ALTER TABLE `BlogEntry_versions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`);

--
-- Indexes for table `BlogHolder`
--
ALTER TABLE `BlogHolder`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `OwnerID` (`OwnerID`);

--
-- Indexes for table `BlogHolder_Live`
--
ALTER TABLE `BlogHolder_Live`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `OwnerID` (`OwnerID`);

--
-- Indexes for table `BlogHolder_versions`
--
ALTER TABLE `BlogHolder_versions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`),
  ADD KEY `OwnerID` (`OwnerID`);

--
-- Indexes for table `BlogPost`
--
ALTER TABLE `BlogPost`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FeaturedImageID` (`FeaturedImageID`),
  ADD KEY `ThumbnailImageID` (`ThumbnailImageID`),
  ADD KEY `CountryID` (`CountryID`),
  ADD KEY `CountryIDID` (`CountryIDID`);

--
-- Indexes for table `BlogPost_Authors`
--
ALTER TABLE `BlogPost_Authors`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `BlogPostID` (`BlogPostID`),
  ADD KEY `MemberID` (`MemberID`);

--
-- Indexes for table `BlogPost_Categories`
--
ALTER TABLE `BlogPost_Categories`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `BlogPostID` (`BlogPostID`),
  ADD KEY `BlogCategoryID` (`BlogCategoryID`);

--
-- Indexes for table `BlogPost_Live`
--
ALTER TABLE `BlogPost_Live`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FeaturedImageID` (`FeaturedImageID`),
  ADD KEY `ThumbnailImageID` (`ThumbnailImageID`),
  ADD KEY `CountryID` (`CountryID`),
  ADD KEY `CountryIDID` (`CountryIDID`);

--
-- Indexes for table `BlogPost_Tags`
--
ALTER TABLE `BlogPost_Tags`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `BlogPostID` (`BlogPostID`),
  ADD KEY `BlogTagID` (`BlogTagID`);

--
-- Indexes for table `BlogPost_versions`
--
ALTER TABLE `BlogPost_versions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`),
  ADD KEY `FeaturedImageID` (`FeaturedImageID`),
  ADD KEY `ThumbnailImageID` (`ThumbnailImageID`),
  ADD KEY `CountryID` (`CountryID`),
  ADD KEY `CountryIDID` (`CountryIDID`);

--
-- Indexes for table `BlogSection`
--
ALTER TABLE `BlogSection`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `MainImageID` (`MainImageID`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `ParentID` (`ParentID`);

--
-- Indexes for table `BlogSection_SectionImages`
--
ALTER TABLE `BlogSection_SectionImages`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `BlogSectionID` (`BlogSectionID`),
  ADD KEY `ImageID` (`ImageID`);

--
-- Indexes for table `BlogTag`
--
ALTER TABLE `BlogTag`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `BlogID` (`BlogID`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `BlogTree`
--
ALTER TABLE `BlogTree`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `BlogTree_Live`
--
ALTER TABLE `BlogTree_Live`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `BlogTree_versions`
--
ALTER TABLE `BlogTree_versions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`);

--
-- Indexes for table `Blog_Contributors`
--
ALTER TABLE `Blog_Contributors`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `BlogID` (`BlogID`),
  ADD KEY `MemberID` (`MemberID`);

--
-- Indexes for table `Blog_Editors`
--
ALTER TABLE `Blog_Editors`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `BlogID` (`BlogID`),
  ADD KEY `MemberID` (`MemberID`);

--
-- Indexes for table `Blog_Live`
--
ALTER TABLE `Blog_Live`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Blog_versions`
--
ALTER TABLE `Blog_versions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`);

--
-- Indexes for table `Blog_Writers`
--
ALTER TABLE `Blog_Writers`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `BlogID` (`BlogID`),
  ADD KEY `MemberID` (`MemberID`);

--
-- Indexes for table `ContactRequest`
--
ALTER TABLE `ContactRequest`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `Country`
--
ALTER TABLE `Country`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `PatternID` (`PatternID`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `Country_BlogPosts`
--
ALTER TABLE `Country_BlogPosts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `CountryID` (`CountryID`),
  ADD KEY `BlogPostID` (`BlogPostID`);

--
-- Indexes for table `ErrorPage`
--
ALTER TABLE `ErrorPage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ErrorPage_Live`
--
ALTER TABLE `ErrorPage_Live`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ErrorPage_versions`
--
ALTER TABLE `ErrorPage_versions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`);

--
-- Indexes for table `File`
--
ALTER TABLE `File`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ParentID` (`ParentID`),
  ADD KEY `OwnerID` (`OwnerID`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `Group`
--
ALTER TABLE `Group`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ParentID` (`ParentID`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `Group_Members`
--
ALTER TABLE `Group_Members`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `GroupID` (`GroupID`),
  ADD KEY `MemberID` (`MemberID`);

--
-- Indexes for table `Group_Roles`
--
ALTER TABLE `Group_Roles`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `GroupID` (`GroupID`),
  ADD KEY `PermissionRoleID` (`PermissionRoleID`);

--
-- Indexes for table `LoginAttempt`
--
ALTER TABLE `LoginAttempt`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `MemberID` (`MemberID`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `Member`
--
ALTER TABLE `Member`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Email` (`Email`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `BlogProfileImageID` (`BlogProfileImageID`);

--
-- Indexes for table `MemberPassword`
--
ALTER TABLE `MemberPassword`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `MemberID` (`MemberID`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `Page`
--
ALTER TABLE `Page`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `BannerImageID` (`BannerImageID`);

--
-- Indexes for table `Page_Live`
--
ALTER TABLE `Page_Live`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `BannerImageID` (`BannerImageID`);

--
-- Indexes for table `Page_versions`
--
ALTER TABLE `Page_versions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`),
  ADD KEY `BannerImageID` (`BannerImageID`);

--
-- Indexes for table `Permission`
--
ALTER TABLE `Permission`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `GroupID` (`GroupID`),
  ADD KEY `Code` (`Code`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `PermissionRole`
--
ALTER TABLE `PermissionRole`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `PermissionRoleCode`
--
ALTER TABLE `PermissionRoleCode`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `RoleID` (`RoleID`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `RedirectorPage`
--
ALTER TABLE `RedirectorPage`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `LinkToID` (`LinkToID`);

--
-- Indexes for table `RedirectorPage_Live`
--
ALTER TABLE `RedirectorPage_Live`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `LinkToID` (`LinkToID`);

--
-- Indexes for table `RedirectorPage_versions`
--
ALTER TABLE `RedirectorPage_versions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`),
  ADD KEY `LinkToID` (`LinkToID`);

--
-- Indexes for table `SiteConfig`
--
ALTER TABLE `SiteConfig`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `LogoID` (`LogoID`),
  ADD KEY `LogoReverseID` (`LogoReverseID`);

--
-- Indexes for table `SiteConfig_CreateTopLevelGroups`
--
ALTER TABLE `SiteConfig_CreateTopLevelGroups`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `SiteConfigID` (`SiteConfigID`),
  ADD KEY `GroupID` (`GroupID`);

--
-- Indexes for table `SiteConfig_EditorGroups`
--
ALTER TABLE `SiteConfig_EditorGroups`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `SiteConfigID` (`SiteConfigID`),
  ADD KEY `GroupID` (`GroupID`);

--
-- Indexes for table `SiteConfig_ViewerGroups`
--
ALTER TABLE `SiteConfig_ViewerGroups`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `SiteConfigID` (`SiteConfigID`),
  ADD KEY `GroupID` (`GroupID`);

--
-- Indexes for table `SiteTree`
--
ALTER TABLE `SiteTree`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ParentID` (`ParentID`),
  ADD KEY `URLSegment` (`URLSegment`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `SiteTree_EditorGroups`
--
ALTER TABLE `SiteTree_EditorGroups`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `SiteTreeID` (`SiteTreeID`),
  ADD KEY `GroupID` (`GroupID`);

--
-- Indexes for table `SiteTree_ImageTracking`
--
ALTER TABLE `SiteTree_ImageTracking`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `SiteTreeID` (`SiteTreeID`),
  ADD KEY `FileID` (`FileID`);

--
-- Indexes for table `SiteTree_LinkTracking`
--
ALTER TABLE `SiteTree_LinkTracking`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `SiteTreeID` (`SiteTreeID`),
  ADD KEY `ChildID` (`ChildID`);

--
-- Indexes for table `SiteTree_Live`
--
ALTER TABLE `SiteTree_Live`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ParentID` (`ParentID`),
  ADD KEY `URLSegment` (`URLSegment`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `SiteTree_versions`
--
ALTER TABLE `SiteTree_versions`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`),
  ADD KEY `AuthorID` (`AuthorID`),
  ADD KEY `PublisherID` (`PublisherID`),
  ADD KEY `ParentID` (`ParentID`),
  ADD KEY `URLSegment` (`URLSegment`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `SiteTree_ViewerGroups`
--
ALTER TABLE `SiteTree_ViewerGroups`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `SiteTreeID` (`SiteTreeID`),
  ADD KEY `GroupID` (`GroupID`);

--
-- Indexes for table `VirtualPage`
--
ALTER TABLE `VirtualPage`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `CopyContentFromID` (`CopyContentFromID`);

--
-- Indexes for table `VirtualPage_Live`
--
ALTER TABLE `VirtualPage_Live`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `CopyContentFromID` (`CopyContentFromID`);

--
-- Indexes for table `VirtualPage_versions`
--
ALTER TABLE `VirtualPage_versions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`),
  ADD KEY `CopyContentFromID` (`CopyContentFromID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Blog`
--
ALTER TABLE `Blog`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `BlogCategory`
--
ALTER TABLE `BlogCategory`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `BlogEntry`
--
ALTER TABLE `BlogEntry`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `BlogEntry_Live`
--
ALTER TABLE `BlogEntry_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `BlogEntry_versions`
--
ALTER TABLE `BlogEntry_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `BlogHolder`
--
ALTER TABLE `BlogHolder`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `BlogHolder_Live`
--
ALTER TABLE `BlogHolder_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `BlogHolder_versions`
--
ALTER TABLE `BlogHolder_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `BlogPost`
--
ALTER TABLE `BlogPost`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `BlogPost_Authors`
--
ALTER TABLE `BlogPost_Authors`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `BlogPost_Categories`
--
ALTER TABLE `BlogPost_Categories`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `BlogPost_Live`
--
ALTER TABLE `BlogPost_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `BlogPost_Tags`
--
ALTER TABLE `BlogPost_Tags`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `BlogPost_versions`
--
ALTER TABLE `BlogPost_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;
--
-- AUTO_INCREMENT for table `BlogSection`
--
ALTER TABLE `BlogSection`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;
--
-- AUTO_INCREMENT for table `BlogSection_SectionImages`
--
ALTER TABLE `BlogSection_SectionImages`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=183;
--
-- AUTO_INCREMENT for table `BlogTag`
--
ALTER TABLE `BlogTag`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `BlogTree`
--
ALTER TABLE `BlogTree`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `BlogTree_Live`
--
ALTER TABLE `BlogTree_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `BlogTree_versions`
--
ALTER TABLE `BlogTree_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Blog_Contributors`
--
ALTER TABLE `Blog_Contributors`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Blog_Editors`
--
ALTER TABLE `Blog_Editors`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Blog_Live`
--
ALTER TABLE `Blog_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `Blog_versions`
--
ALTER TABLE `Blog_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `Blog_Writers`
--
ALTER TABLE `Blog_Writers`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ContactRequest`
--
ALTER TABLE `ContactRequest`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Country`
--
ALTER TABLE `Country`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `Country_BlogPosts`
--
ALTER TABLE `Country_BlogPosts`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ErrorPage`
--
ALTER TABLE `ErrorPage`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `ErrorPage_Live`
--
ALTER TABLE `ErrorPage_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `ErrorPage_versions`
--
ALTER TABLE `ErrorPage_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `File`
--
ALTER TABLE `File`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=279;
--
-- AUTO_INCREMENT for table `Group`
--
ALTER TABLE `Group`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `Group_Members`
--
ALTER TABLE `Group_Members`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `Group_Roles`
--
ALTER TABLE `Group_Roles`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `LoginAttempt`
--
ALTER TABLE `LoginAttempt`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Member`
--
ALTER TABLE `Member`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `MemberPassword`
--
ALTER TABLE `MemberPassword`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `Page`
--
ALTER TABLE `Page`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `Page_Live`
--
ALTER TABLE `Page_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `Page_versions`
--
ALTER TABLE `Page_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;
--
-- AUTO_INCREMENT for table `Permission`
--
ALTER TABLE `Permission`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `PermissionRole`
--
ALTER TABLE `PermissionRole`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `PermissionRoleCode`
--
ALTER TABLE `PermissionRoleCode`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `RedirectorPage`
--
ALTER TABLE `RedirectorPage`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `RedirectorPage_Live`
--
ALTER TABLE `RedirectorPage_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `RedirectorPage_versions`
--
ALTER TABLE `RedirectorPage_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `SiteConfig`
--
ALTER TABLE `SiteConfig`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `SiteConfig_CreateTopLevelGroups`
--
ALTER TABLE `SiteConfig_CreateTopLevelGroups`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `SiteConfig_EditorGroups`
--
ALTER TABLE `SiteConfig_EditorGroups`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `SiteConfig_ViewerGroups`
--
ALTER TABLE `SiteConfig_ViewerGroups`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `SiteTree`
--
ALTER TABLE `SiteTree`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `SiteTree_EditorGroups`
--
ALTER TABLE `SiteTree_EditorGroups`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `SiteTree_ImageTracking`
--
ALTER TABLE `SiteTree_ImageTracking`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `SiteTree_LinkTracking`
--
ALTER TABLE `SiteTree_LinkTracking`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `SiteTree_Live`
--
ALTER TABLE `SiteTree_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `SiteTree_versions`
--
ALTER TABLE `SiteTree_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;
--
-- AUTO_INCREMENT for table `SiteTree_ViewerGroups`
--
ALTER TABLE `SiteTree_ViewerGroups`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `VirtualPage`
--
ALTER TABLE `VirtualPage`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `VirtualPage_Live`
--
ALTER TABLE `VirtualPage_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `VirtualPage_versions`
--
ALTER TABLE `VirtualPage_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
