-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 28, 2025 at 02:34 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hris`
--

-- --------------------------------------------------------

--
-- Table structure for table `educational_background`
--

CREATE TABLE `educational_background` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `level` varchar(50) NOT NULL,
  `school_name` varchar(255) NOT NULL,
  `date_attended` varchar(50) NOT NULL,
  `degree_earned` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `date_hired` date NOT NULL,
  `address` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `telephone` varchar(20) NOT NULL,
  `cellphone` varchar(20) NOT NULL,
  `birthdate` date NOT NULL,
  `birthplace` varchar(255) NOT NULL,
  `tin_number` varchar(20) NOT NULL,
  `civil_status` varchar(50) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `sss_number` varchar(20) NOT NULL,
  `nationality` varchar(50) NOT NULL,
  `weight` int(11) NOT NULL,
  `height` int(11) NOT NULL,
  `educational_background` text DEFAULT NULL,
  `employment_record` text DEFAULT NULL,
  `training_records` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `position`, `department`, `date_hired`, `address`, `status`, `telephone`, `cellphone`, `birthdate`, `birthplace`, `tin_number`, `civil_status`, `sex`, `sss_number`, `nationality`, `weight`, `height`, `educational_background`, `employment_record`, `training_records`) VALUES
(26, 'Bernardo E. Casio', 'WELDER', 'EWAN', '3333-03-12', 'TAGA DIYAN LANG', 'II', '230303', '09210939301', '5525-02-25', 'DIYAN LANG', '123123', 'MARRIED', 'MADALAS', '123123', 'PINOY', 65, 5, '[{\"level\":\"Elementary\",\"name_of_school\":\"ELEM\",\"date_attended\":\"2022\",\"degree_earned\":\"\"},{\"level\":\"High School\",\"name_of_school\":\"JHS\",\"date_attended\":\"2022\",\"degree_earned\":\"\"},{\"level\":\"Vocational\",\"name_of_school\":\"\",\"date_attended\":\"\",\"degree_earned\":\"\"},{\"level\":\"College\",\"name_of_school\":\"\",\"date_attended\":\"\",\"degree_earned\":\"\"},{\"level\":\"Post Graduate\",\"name_of_school\":\"\",\"date_attended\":\"\",\"degree_earned\":\"\"}]', '[{\"date\":\"\",\"company\":\"\",\"address\":\"\",\"position\":\"\"}]', ''),
(27, 'Pj', 'IT', 'IT DEP', '2025-03-10', 'Imus', 'HIred', '1293890', '9890809', '5223-02-06', 'IMUS', '2323232', 'MARRIED', 'MADALAS', '2323', 'PINOY', 65, 65, '[{\"level\":\"Elementary\",\"name_of_school\":\"ELEM\",\"date_attended\":\"2023\",\"degree_earned\":\"\"},{\"level\":\"High School\",\"name_of_school\":\"JHS\",\"date_attended\":\"2025\",\"degree_earned\":\"\"},{\"level\":\"Vocational\",\"name_of_school\":\"TVL\",\"date_attended\":\"50525\",\"degree_earned\":\"\"},{\"level\":\"College\",\"name_of_school\":\"CVSU\",\"date_attended\":\"2025\",\"degree_earned\":\"\"},{\"level\":\"Post Graduate\",\"name_of_school\":\"\",\"date_attended\":\"\",\"degree_earned\":\"\"}]', '[{\"date\":\"\",\"company\":\"\",\"address\":\"\",\"position\":\"\"}]', ''),
(28, 'asd', 'asd', 'asd', '0032-02-23', '21312', '3123', '23', '76', '0006-08-07', '7', '786', '876', '786', '786', '786', 87, 78, '[{\"level\":\"Elementary\",\"name_of_school\":\"678\",\"date_attended\":\"6786\",\"degree_earned\":\"786\"},{\"level\":\"High School\",\"name_of_school\":\"7678\",\"date_attended\":\"6786\",\"degree_earned\":\"876\"},{\"level\":\"Vocational\",\"name_of_school\":\"876\",\"date_attended\":\"786\",\"degree_earned\":\"876\"},{\"level\":\"College\",\"name_of_school\":\"786\",\"date_attended\":\"786\",\"degree_earned\":\"876\"},{\"level\":\"Post Graduate\",\"name_of_school\":\"786\",\"date_attended\":\"876\",\"degree_earned\":\"876\"}]', '[{\"date\":\"67\",\"company\":\"876\",\"address\":\"86\",\"position\":\"8\"}]', ''),
(29, '13', '123', '890', '0007-09-08', '789', '7', '987', '98', '0097-08-07', '89', '79', '876', '89', '786', '97', 89, 789, '[{\"level\":\"Elementary\",\"name_of_school\":\"7\",\"date_attended\":\"897\",\"degree_earned\":\"987\"},{\"level\":\"High School\",\"name_of_school\":\"98\",\"date_attended\":\"7\",\"degree_earned\":\"897\"},{\"level\":\"Vocational\",\"name_of_school\":\"89\",\"date_attended\":\"789\",\"degree_earned\":\"7\"},{\"level\":\"College\",\"name_of_school\":\"897\",\"date_attended\":\"89\",\"degree_earned\":\"7\"},{\"level\":\"Post Graduate\",\"name_of_school\":\"987\",\"date_attended\":\"987\",\"degree_earned\":\"987\"}]', '[{\"date\":\"89\",\"company\":\"79\",\"address\":\"87\",\"position\":\"897\"}]', ''),
(30, 'Dave Kylle Claveria', 'Saftey Officer', 'field', '0192-08-09', 'Brgy. Benabye, Merida, Leyte', 'Not Interested', '12323', '123123', '0123-03-12', 'leyte', '123', 'Maried', 'Male', '123', 'FIlipino', 123, 123, '[{\"level\":\"Elementary\",\"name_of_school\":\"Elem\",\"date_attended\":\"213\",\"degree_earned\":\"\"},{\"level\":\"High School\",\"name_of_school\":\"JHS\",\"date_attended\":\"123\",\"degree_earned\":\"13\"},{\"level\":\"Vocational\",\"name_of_school\":\"123\",\"date_attended\":\"213\",\"degree_earned\":\"321\"},{\"level\":\"College\",\"name_of_school\":\"231\",\"date_attended\":\"23\",\"degree_earned\":\"\"},{\"level\":\"Post Graduate\",\"name_of_school\":\"213\",\"date_attended\":\"\",\"degree_earned\":\"\"}]', '[{\"date\":\"\",\"company\":\"\",\"address\":\"\",\"position\":\"\"}]', ''),
(31, '987897', '89789', '7', '8798-09-08', '98', '98', '9', '89', '9989-08-01', '98', '98', '9', '89', '09', '890', 8, 9098, '[{\"level\":\"Elementary\",\"name_of_school\":\"\",\"date_attended\":\"098\",\"degree_earned\":\"098\"},{\"level\":\"High School\",\"name_of_school\":\"098\",\"date_attended\":\"98\",\"degree_earned\":\"08\"},{\"level\":\"Vocational\",\"name_of_school\":\"098\",\"date_attended\":\"\",\"degree_earned\":\"908\"},{\"level\":\"College\",\"name_of_school\":\"908\",\"date_attended\":\"908\",\"degree_earned\":\"09\"},{\"level\":\"Post Graduate\",\"name_of_school\":\"80\",\"date_attended\":\"98\",\"degree_earned\":\"90\"}]', '[{\"date\":\"8098\",\"company\":\"098\",\"address\":\"908\",\"position\":\"90890\"}]', ''),
(32, '2', '89', '7897', '0007-09-08', '898', '79', '87', '897', '0023-09-08', '897', '87', '89', '897', '8', '9', 8, 98, '[{\"level\":\"Elementary\",\"name_of_school\":\"90\",\"date_attended\":\"98\",\"degree_earned\":\"98\"},{\"level\":\"High School\",\"name_of_school\":\"90\",\"date_attended\":\"8\",\"degree_earned\":\"098\"},{\"level\":\"Vocational\",\"name_of_school\":\"98\",\"date_attended\":\"908\",\"degree_earned\":\"90\"},{\"level\":\"College\",\"name_of_school\":\"8\",\"date_attended\":\"908\",\"degree_earned\":\"90\"},{\"level\":\"Post Graduate\",\"name_of_school\":\"8098\",\"date_attended\":\"908\",\"degree_earned\":\"908\"}]', '[{\"date\":\"90\",\"company\":\"809\",\"address\":\"86\",\"position\":\"908\"}]', ''),
(33, '1213', '89', '798', '0323-02-23', '123', '789', '789', '879', '0233-09-08', '87998', '879', '879', '879', '879', '879', 879, 123, '[{\"level\":\"Elementary\",\"name_of_school\":\"789\",\"date_attended\":\"789\",\"degree_earned\":\"879\"},{\"level\":\"High School\",\"name_of_school\":\"789\",\"date_attended\":\"123\",\"degree_earned\":\"8123\"},{\"level\":\"Vocational\",\"name_of_school\":\"89\",\"date_attended\":\"980\",\"degree_earned\":\"890\"},{\"level\":\"College\",\"name_of_school\":\"809\",\"date_attended\":\"980890\",\"degree_earned\":\"890\"},{\"level\":\"Post Graduate\",\"name_of_school\":\"890\",\"date_attended\":\"890\",\"degree_earned\":\"890\"}]', '[{\"date\":\"890\",\"company\":\"890\",\"address\":\"890\",\"position\":\"890\"}]', ''),
(34, '1213', '89', '798', '0323-02-23', '123', '789', '789', '879', '0233-09-08', '87998', '879', '879', '879', '879', '879', 879, 123, '[{\"level\":\"Elementary\",\"name_of_school\":\"789\",\"date_attended\":\"789\",\"degree_earned\":\"879\"},{\"level\":\"High School\",\"name_of_school\":\"789\",\"date_attended\":\"123\",\"degree_earned\":\"8123\"},{\"level\":\"Vocational\",\"name_of_school\":\"89\",\"date_attended\":\"980\",\"degree_earned\":\"890\"},{\"level\":\"College\",\"name_of_school\":\"809\",\"date_attended\":\"980890\",\"degree_earned\":\"890\"},{\"level\":\"Post Graduate\",\"name_of_school\":\"890\",\"date_attended\":\"890\",\"degree_earned\":\"890\"}]', '[{\"date\":\"890\",\"company\":\"890\",\"address\":\"890\",\"position\":\"890\"}]', ''),
(35, '12', '12', '12', '0122-02-12', '12', '987', '987', '987', '0009-08-07', '978', '789', '798', '789', '789', '789', 789, 78978, '[{\"level\":\"Elementary\",\"name_of_school\":\"789\",\"date_attended\":\"7889\",\"degree_earned\":\"78\"},{\"level\":\"High School\",\"name_of_school\":\"97\",\"date_attended\":\"897\",\"degree_earned\":\"98\"},{\"level\":\"Vocational\",\"name_of_school\":\"987\",\"date_attended\":\"987\",\"degree_earned\":\"987\"},{\"level\":\"College\",\"name_of_school\":\"98897\",\"date_attended\":\"789\",\"degree_earned\":\"7\"},{\"level\":\"Post Graduate\",\"name_of_school\":\"897\",\"date_attended\":\"89\",\"degree_earned\":\"7\"}]', '[{\"date\":\"987\",\"company\":\"89\",\"address\":\"7\",\"position\":\"987\"}]', ''),
(36, '890', '8', '908', '0099-08-09', '890', '890', '809', '980', '0899-09-08', '908098', '980', '908', '890', '890', '90', 8980, 98, '[{\"level\":\"Elementary\",\"name_of_school\":\"980\",\"date_attended\":\"8\",\"degree_earned\":\"098\"},{\"level\":\"High School\",\"name_of_school\":\"\",\"date_attended\":\"890\",\"degree_earned\":\"980\"},{\"level\":\"Vocational\",\"name_of_school\":\"89\",\"date_attended\":\"980\",\"degree_earned\":\"890\"},{\"level\":\"College\",\"name_of_school\":\"890\",\"date_attended\":\"89089\",\"degree_earned\":\"0\"},{\"level\":\"Post Graduate\",\"name_of_school\":\"89890\",\"date_attended\":\"89\",\"degree_earned\":\"89\"}]', '[{\"date\":\"0809\",\"company\":\"890890\",\"address\":\"890\",\"position\":\"123\"}]', ''),
(37, '98', '908', '098', '9898-01-09', '980', '098', '098', '098', '0898-09-08', '980890', '8', '0', '890', '908', '890', 890, 980890, '[{\"level\":\"Elementary\",\"name_of_school\":\"89\",\"date_attended\":\"89\",\"degree_earned\":\"89\"},{\"level\":\"High School\",\"name_of_school\":\"890\",\"date_attended\":\"890\",\"degree_earned\":\"890\"},{\"level\":\"Vocational\",\"name_of_school\":\"809\",\"date_attended\":\"890\",\"degree_earned\":\"890\"},{\"level\":\"College\",\"name_of_school\":\"809\",\"date_attended\":\"890\",\"degree_earned\":\"8\"},{\"level\":\"Post Graduate\",\"name_of_school\":\"98\",\"date_attended\":\"09\",\"degree_earned\":\"098890\"}]', '[{\"date\":\"98089\",\"company\":\"980\",\"address\":\"89\",\"position\":\"980\"}]', ''),
(38, '98', '908', '098', '9898-01-09', '980', '098', '098', '098', '0898-09-08', '980890', '8', '0', '890', '908', '890', 890, 980890, '[{\"level\":\"Elementary\",\"name_of_school\":\"89\",\"date_attended\":\"89\",\"degree_earned\":\"89\"},{\"level\":\"High School\",\"name_of_school\":\"890\",\"date_attended\":\"890\",\"degree_earned\":\"890\"},{\"level\":\"Vocational\",\"name_of_school\":\"809\",\"date_attended\":\"890\",\"degree_earned\":\"890\"},{\"level\":\"College\",\"name_of_school\":\"809\",\"date_attended\":\"890\",\"degree_earned\":\"8\"},{\"level\":\"Post Graduate\",\"name_of_school\":\"98\",\"date_attended\":\"09\",\"degree_earned\":\"098890\"}]', '[{\"date\":\"98089\",\"company\":\"980\",\"address\":\"89\",\"position\":\"980\"}]', ''),
(39, '98', '908', '098', '9898-01-09', '980', '098', '098', '098', '0898-09-08', '980890', '8', '0', '890', '908', '890', 890, 980890, '[{\"level\":\"Elementary\",\"name_of_school\":\"89\",\"date_attended\":\"89\",\"degree_earned\":\"89\"},{\"level\":\"High School\",\"name_of_school\":\"890\",\"date_attended\":\"890\",\"degree_earned\":\"890\"},{\"level\":\"Vocational\",\"name_of_school\":\"809\",\"date_attended\":\"890\",\"degree_earned\":\"890\"},{\"level\":\"College\",\"name_of_school\":\"809\",\"date_attended\":\"890\",\"degree_earned\":\"8\"},{\"level\":\"Post Graduate\",\"name_of_school\":\"98\",\"date_attended\":\"09\",\"degree_earned\":\"098890\"}]', '[{\"date\":\"98089\",\"company\":\"980\",\"address\":\"89\",\"position\":\"980\"}]', ''),
(40, '908898', '90', '88', '0089-08-09', '123', '890', '8', '890', '0001-09-08', 'jkj', '80', '98', '09', '890', '8', 908, 0, '[{\"level\":\"Elementary\",\"name_of_school\":\"98\",\"date_attended\":\"098\",\"degree_earned\":\"098\"},{\"level\":\"High School\",\"name_of_school\":\"09\",\"date_attended\":\"8\",\"degree_earned\":\"908\"},{\"level\":\"Vocational\",\"name_of_school\":\"09\",\"date_attended\":\"098\",\"degree_earned\":\"089\"},{\"level\":\"College\",\"name_of_school\":\"890\",\"date_attended\":\"890\",\"degree_earned\":\"8\"},{\"level\":\"Post Graduate\",\"name_of_school\":\"90\",\"date_attended\":\"809\",\"degree_earned\":\"980\"}]', '[{\"date\":\"809\",\"company\":\"08\",\"address\":\"\",\"position\":\"890\"}]', ''),
(41, '123', '123123', '8097', '0789-09-08', '7', '879', '7', '897', '7987-09-08', '789', '786', '89', '786', '987', '987', 897, 98, '[{\"level\":\"Elementary\",\"name_of_school\":\"798\",\"date_attended\":\"798\",\"degree_earned\":\"786\"},{\"level\":\"High School\",\"name_of_school\":\"98\",\"date_attended\":\"789\",\"degree_earned\":\"8\"},{\"level\":\"Vocational\",\"name_of_school\":\"97\",\"date_attended\":\"7897\",\"degree_earned\":\"89\"},{\"level\":\"College\",\"name_of_school\":\"798789\",\"date_attended\":\"789\",\"degree_earned\":\"876\"},{\"level\":\"Post Graduate\",\"name_of_school\":\"9\",\"date_attended\":\"77\",\"degree_earned\":\"7\"}]', '[{\"date\":\"7\",\"company\":\"7\",\"address\":\"7\",\"position\":\"\"}]', ''),
(42, '123', '876', '7', '0212-07-06', '876', '78', '78', '76', '0006-07-08', '798', '123', '987', '98', '7', '890', 8, 90, '[{\"level\":\"Elementary\",\"name_of_school\":\"809\",\"date_attended\":\"8\",\"degree_earned\":\"908\"},{\"level\":\"High School\",\"name_of_school\":\"09\",\"date_attended\":\"8\",\"degree_earned\":\"908\"},{\"level\":\"Vocational\",\"name_of_school\":\"908\",\"date_attended\":\"90\",\"degree_earned\":\"89\"},{\"level\":\"College\",\"name_of_school\":\"08\",\"date_attended\":\"09\",\"degree_earned\":\"890\"},{\"level\":\"Post Graduate\",\"name_of_school\":\"80\",\"date_attended\":\"98\",\"degree_earned\":\"90\"}]', '[{\"date\":\"890\",\"company\":\"876\",\"address\":\"09\",\"position\":\"890\"}]', ''),
(43, '123', '876', '7', '0212-07-06', '876', '78', '78', '76', '0006-07-08', '798', '123', '987', '98', '7', '890', 8, 90, '[{\"level\":\"Elementary\",\"name_of_school\":\"809\",\"date_attended\":\"8\",\"degree_earned\":\"908\"},{\"level\":\"High School\",\"name_of_school\":\"09\",\"date_attended\":\"8\",\"degree_earned\":\"908\"},{\"level\":\"Vocational\",\"name_of_school\":\"908\",\"date_attended\":\"90\",\"degree_earned\":\"89\"},{\"level\":\"College\",\"name_of_school\":\"08\",\"date_attended\":\"09\",\"degree_earned\":\"890\"},{\"level\":\"Post Graduate\",\"name_of_school\":\"80\",\"date_attended\":\"98\",\"degree_earned\":\"90\"}]', '[{\"date\":\"890\",\"company\":\"876\",\"address\":\"09\",\"position\":\"890\"}]', ''),
(44, 'Christian', 'it manager', 'it dept', '2025-04-03', 'imus', 'ojt', '8788700', '09377482947', '2000-01-01', 'imus', '82143198264', 'single', 'male', '1944712', 'fil', 89, 190, '[{\"level\":\"Elementary\",\"name_of_school\":\"ctes\",\"date_attended\":\"2009\",\"degree_earned\":\"most beahve\"},{\"level\":\"High School\",\"name_of_school\":\"geanhs\",\"date_attended\":\"2015\",\"degree_earned\":\"woth honor\"},{\"level\":\"Vocational\",\"name_of_school\":\"\",\"date_attended\":\"\",\"degree_earned\":\"\"},{\"level\":\"College\",\"name_of_school\":\"cvsu\",\"date_attended\":\"2021\",\"degree_earned\":\"bsit\"},{\"level\":\"Post Graduate\",\"name_of_school\":\"\",\"date_attended\":\"\",\"degree_earned\":\"\"}]', '[{\"date\":\"2025\",\"company\":\"netflix\",\"address\":\"makati\",\"position\":\"it manager\"}]', ''),
(45, '123129786', '7', '6', '0123-08-07', '897', '897', '897', '89', '0878-07-07', '98798', '786', '897', '897', '897', '879', 98, 7, '[{\"level\":\"Elementary\",\"name_of_school\":\"987\",\"date_attended\":\"9889\",\"degree_earned\":\"798\"},{\"level\":\"High School\",\"name_of_school\":\"7678\",\"date_attended\":\"897\",\"degree_earned\":\"897\"},{\"level\":\"Vocational\",\"name_of_school\":\"89\",\"date_attended\":\"7987\",\"degree_earned\":\"789\"},{\"level\":\"College\",\"name_of_school\":\"786\",\"date_attended\":\"987\",\"degree_earned\":\"987\"},{\"level\":\"Post Graduate\",\"name_of_school\":\"8\",\"date_attended\":\"78\",\"degree_earned\":\"987\"}]', '[{\"date\":\"879\",\"company\":\"9\",\"address\":\"87\",\"position\":\"987\"}]', ''),
(46, 'BERT', '87', '8', '0007-08-07', '87', '897', '89', '789', '0033-02-23', '89', '786', '897', '89', '786', '97', 897, 89, '[{\"level\":\"Elementary\",\"name_of_school\":\"7\",\"date_attended\":\"897\",\"degree_earned\":\"897\"},{\"level\":\"High School\",\"name_of_school\":\"89\",\"date_attended\":\"7\",\"degree_earned\":\"897\"},{\"level\":\"Vocational\",\"name_of_school\":\"897\",\"date_attended\":\"897\",\"degree_earned\":\"897\"},{\"level\":\"College\",\"name_of_school\":\"89\",\"date_attended\":\"78\",\"degree_earned\":\"7\"},{\"level\":\"Post Graduate\",\"name_of_school\":\"897\",\"date_attended\":\"897\",\"degree_earned\":\"897\"}]', '[{\"date\":\"98\",\"company\":\"78\",\"address\":\"97\",\"position\":\"897\"}]', ''),
(47, 'BERT', '87', '8', '0007-08-07', '87', '897', '89', '789', '0033-02-23', '89', '786', '897', '89', '786', '97', 897, 89, '[{\"level\":\"Elementary\",\"name_of_school\":\"7\",\"date_attended\":\"897\",\"degree_earned\":\"897\"},{\"level\":\"High School\",\"name_of_school\":\"89\",\"date_attended\":\"7\",\"degree_earned\":\"897\"},{\"level\":\"Vocational\",\"name_of_school\":\"897\",\"date_attended\":\"897\",\"degree_earned\":\"897\"},{\"level\":\"College\",\"name_of_school\":\"89\",\"date_attended\":\"78\",\"degree_earned\":\"7\"},{\"level\":\"Post Graduate\",\"name_of_school\":\"897\",\"date_attended\":\"897\",\"degree_earned\":\"897\"}]', '[{\"date\":\"98\",\"company\":\"78\",\"address\":\"97\",\"position\":\"897\"}]', ''),
(48, 'PARDESS', '890', '890', '0989-09-08', '908', '908', '90', '8908', '0123-08-09', '0-990', '90-', '90', '90-', '90-', '09', 9, 90, '[{\"level\":\"Elementary\",\"name_of_school\":\"90\",\"date_attended\":\"9090\",\"degree_earned\":\"90\"},{\"level\":\"High School\",\"name_of_school\":\"09\",\"date_attended\":\"213\",\"degree_earned\":\"09\"},{\"level\":\"Vocational\",\"name_of_school\":\"099\",\"date_attended\":\"908\",\"degree_earned\":\"908\"},{\"level\":\"College\",\"name_of_school\":\"90\",\"date_attended\":\"8\",\"degree_earned\":\"09\"},{\"level\":\"Post Graduate\",\"name_of_school\":\"890\",\"date_attended\":\"890\",\"degree_earned\":\"980\"}]', '[{\"date\":\"980\",\"company\":\"890\",\"address\":\"890\",\"position\":\"890\"}]', ''),
(49, 'TRYLANG', '8907', '897', '0087-07-08', '879', '89', '789', '7', '0007-09-08', '7', '8978', '7', '87', '87', '8', 78, 7, '[{\"level\":\"Elementary\",\"name_of_school\":\"87\",\"date_attended\":\"8\",\"degree_earned\":\"78\"},{\"level\":\"High School\",\"name_of_school\":\"7\",\"date_attended\":\"878\",\"degree_earned\":\"78\"},{\"level\":\"Vocational\",\"name_of_school\":\"7\",\"date_attended\":\"87\",\"degree_earned\":\"8\"},{\"level\":\"College\",\"name_of_school\":\"7\",\"date_attended\":\"87\",\"degree_earned\":\"8\"},{\"level\":\"Post Graduate\",\"name_of_school\":\"78\",\"date_attended\":\"7\",\"degree_earned\":\"87\"}]', '[{\"date\":\"8\",\"company\":\"78\",\"address\":\"7\",\"position\":\"87\"}]', ''),
(50, 'afasfa', 'asdfasdfa', 'asfasfas', '2025-01-01', 'kajbfajfbjh', 'jhadbfjahsfbjh', '44323329', '9184914619734', '2000-01-01', 'skdbflskdjb', '3479823749', 'skdnfksjdfk', ',ajfaf', '232786536872', 'kjdsbfkasjdbfk', 473218943, 941, '[{\"level\":\"Elementary\",\"name_of_school\":\"kjbfkasbfk\",\"date_attended\":\"39293\",\"degree_earned\":\"kbadfkajsdbf\"},{\"level\":\"High School\",\"name_of_school\":\"kjdanfkjasdfk\",\"date_attended\":\"091284\",\"degree_earned\":\"lshfodsah\"},{\"level\":\"Vocational\",\"name_of_school\":\"dkjfsdfosid\",\"date_attended\":\"0908\",\"degree_earned\":\"lkjsdbnflksdbfl\"},{\"level\":\"College\",\"name_of_school\":\"lsnlvsnlvdbsl\",\"date_attended\":\"0-988889-0\",\"degree_earned\":\"odfsdlbfsdolkb\"},{\"level\":\"Post Graduate\",\"name_of_school\":\"odjbfoasbdfio\",\"date_attended\":\"79878\",\"degree_earned\":\"kljsdkjbsdkfjb\"}]', '[{\"date\":\"78978\",\"company\":\"bnldflkjbsk\",\"address\":\"osdahbfoasdo\",\"position\":\"kjbijbdoifbu\"}]', '[{\"date\":\"2000-01-01\",\"course_title\":\"kljsdabfklsadjbf\",\"address\":\"kjsdbfkjsdbf\",\"trainer\":\"lkasjbdfsabd\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `employment_records`
--

CREATE TABLE `employment_records` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `date` varchar(50) NOT NULL,
  `company` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `educational_background`
--
ALTER TABLE `educational_background`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employment_records`
--
ALTER TABLE `employment_records`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `educational_background`
--
ALTER TABLE `educational_background`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `employment_records`
--
ALTER TABLE `employment_records`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `educational_background`
--
ALTER TABLE `educational_background`
  ADD CONSTRAINT `educational_background_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `employment_records`
--
ALTER TABLE `employment_records`
  ADD CONSTRAINT `employment_records_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
