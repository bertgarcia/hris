-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 26, 2025 at 01:31 AM
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
  `elementary_attended_years` varchar(50) DEFAULT NULL,
  `high_school_attended_years` varchar(50) DEFAULT NULL,
  `vocational_school` varchar(255) DEFAULT NULL,
  `vocational_attended_years` varchar(50) DEFAULT NULL,
  `college` varchar(255) DEFAULT NULL,
  `college_attended_years` varchar(50) DEFAULT NULL,
  `college_degree` varchar(255) DEFAULT NULL,
  `post_graduate` varchar(255) DEFAULT NULL,
  `post_graduate_attended_years` varchar(50) DEFAULT NULL,
  `post_graduate_degree` varchar(255) DEFAULT NULL,
  `first_company_address` varchar(255) DEFAULT NULL,
  `first_company_position` varchar(255) DEFAULT NULL,
  `first_company_date` varchar(50) DEFAULT NULL,
  `second_company` varchar(255) DEFAULT NULL,
  `second_company_address` varchar(255) DEFAULT NULL,
  `second_company_position` varchar(255) DEFAULT NULL,
  `second_company_date` varchar(50) DEFAULT NULL,
  `educational_background` text DEFAULT NULL,
  `employment_record` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `position`, `department`, `date_hired`, `address`, `status`, `telephone`, `cellphone`, `birthdate`, `birthplace`, `tin_number`, `civil_status`, `sex`, `sss_number`, `nationality`, `weight`, `height`, `elementary_attended_years`, `high_school_attended_years`, `vocational_school`, `vocational_attended_years`, `college`, `college_attended_years`, `college_degree`, `post_graduate`, `post_graduate_attended_years`, `post_graduate_degree`, `first_company_address`, `first_company_position`, `first_company_date`, `second_company`, `second_company_address`, `second_company_position`, `second_company_date`, `educational_background`, `employment_record`) VALUES
(25, 'Hans Christian Lawas', 'IT ', 'JAV INDUSTRY', '2525-04-05', 'JAPAN OSAKA', 'HIRED', '092392398', '09123901', '2020-02-25', 'DIYAN LANG', '111111111', 'MARRIED', 'MADALAS DA', '123123', 'ASPIN', 85, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"level\":\"Elementary\",\"name_of_school\":\"ELEM\",\"date_attended\":\"2012\",\"degree_earned\":\"\"},{\"level\":\"High School\",\"name_of_school\":\"JHS\",\"date_attended\":\"2018\",\"degree_earned\":\"\"},{\"level\":\"Vocational\",\"name_of_school\":\"PSU\",\"date_attended\":\"2020\",\"degree_earned\":\"\"},{\"level\":\"College\",\"name_of_school\":\"CVSU\",\"date_attended\":\"2022 PRESENT\",\"degree_earned\":\"\"},{\"level\":\"Post Graduate\",\"name_of_school\":\"\",\"date_attended\":\"\",\"degree_earned\":\"\"}]', '[{\"date\":\"\",\"company\":\"\",\"address\":\"\",\"position\":\"\"}]'),
(26, 'Bernardo E. Casio', 'WELDER', 'EWAN', '3333-03-12', 'TAGA DIYAN LANG', 'II', '230303', '09210939301', '5525-02-25', 'DIYAN LANG', '123123', 'MARRIED', 'MADALAS', '123123', 'PINOY', 65, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"level\":\"Elementary\",\"name_of_school\":\"ELEM\",\"date_attended\":\"2022\",\"degree_earned\":\"\"},{\"level\":\"High School\",\"name_of_school\":\"JHS\",\"date_attended\":\"2022\",\"degree_earned\":\"\"},{\"level\":\"Vocational\",\"name_of_school\":\"\",\"date_attended\":\"\",\"degree_earned\":\"\"},{\"level\":\"College\",\"name_of_school\":\"\",\"date_attended\":\"\",\"degree_earned\":\"\"},{\"level\":\"Post Graduate\",\"name_of_school\":\"\",\"date_attended\":\"\",\"degree_earned\":\"\"}]', '[{\"date\":\"\",\"company\":\"\",\"address\":\"\",\"position\":\"\"}]'),
(27, 'Pj', 'IT', 'IT DEP', '2025-03-10', 'Imus', 'HIred', '1293890', '9890809', '5223-02-06', 'IMUS', '2323232', 'MARRIED', 'MADALAS', '2323', 'PINOY', 65, 65, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"level\":\"Elementary\",\"name_of_school\":\"ELEM\",\"date_attended\":\"2023\",\"degree_earned\":\"\"},{\"level\":\"High School\",\"name_of_school\":\"JHS\",\"date_attended\":\"2025\",\"degree_earned\":\"\"},{\"level\":\"Vocational\",\"name_of_school\":\"TVL\",\"date_attended\":\"50525\",\"degree_earned\":\"\"},{\"level\":\"College\",\"name_of_school\":\"CVSU\",\"date_attended\":\"2025\",\"degree_earned\":\"\"},{\"level\":\"Post Graduate\",\"name_of_school\":\"\",\"date_attended\":\"\",\"degree_earned\":\"\"}]', '[{\"date\":\"\",\"company\":\"\",\"address\":\"\",\"position\":\"\"}]'),
(28, 'asd', 'asd', 'asd', '0032-02-23', '21312', '3123', '23', '76', '0006-08-07', '7', '786', '876', '786', '786', '786', 87, 78, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"level\":\"Elementary\",\"name_of_school\":\"678\",\"date_attended\":\"6786\",\"degree_earned\":\"786\"},{\"level\":\"High School\",\"name_of_school\":\"7678\",\"date_attended\":\"6786\",\"degree_earned\":\"876\"},{\"level\":\"Vocational\",\"name_of_school\":\"876\",\"date_attended\":\"786\",\"degree_earned\":\"876\"},{\"level\":\"College\",\"name_of_school\":\"786\",\"date_attended\":\"786\",\"degree_earned\":\"876\"},{\"level\":\"Post Graduate\",\"name_of_school\":\"786\",\"date_attended\":\"876\",\"degree_earned\":\"876\"}]', '[{\"date\":\"67\",\"company\":\"876\",\"address\":\"86\",\"position\":\"8\"}]');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

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
