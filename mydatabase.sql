-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 06, 2020 at 08:10 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mydatabase`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `Title` varchar(100) NOT NULL,
  `Salary` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`Title`, `Salary`) VALUES
('Software Engineer', 4500),
('Java Programmer', 4000),
('SENIOR FULL STACK DEVELOPER UP TO $7000.00', 7000),
('Software Developer [1-Year Contract, Renewable, up to $4500] @ Marina REF:JC', 4500),
('Teppanyaki Trainee Chef (2-year Development Programme)', 3000),
('Frontend Web Developer (Central/ Business Solution/ Up to $1.8k)', 2000),
('Mobile Application Developer (Central/ Business Solution/ Up to $2.6K)', 2600),
('BUSINESS DEVELOPMENT EXECUTIVE', 2000),
('Sales Development Representative', 2000),
('Business Development Executive (Sales)', 2200),
('Business Development Manager ($3K)', 3000),
('CNC Programmer ($2500 + Allowance + OT + VB / Mastercam, CAD, G-code / Joo Koon)', 2800),
('Business Development Assistant (Part Time /', 10),
('IT Front-end Developers (From $20 per hour)', 20),
('Care Programme Coordinator - senior care', 2200),
('Development Temp Staff | Harbourfront | Up $13/hr', 13),
('Development Temp Staff | Harbourfront | Up $13/hr', 13),
('Business development Specialist  | Uncap earning | No Exp needed | Team player', 2000),
('3-6 Months Business Development Interns (ORD Personnel & Students Welcome)', 750),
('TECHNICIAN / SENIOR TECHNICIAN', 2000),
('Business development Specialist  | Uncap earning | No Exp needed | Team player', 2000),
('3-6 Months Business Development Interns (ORD Personnel & Students Welcome)', 750),
('TECHNICIAN / SENIOR TECHNICIAN', 2000),
('IN-HOUSE SECURITY & FIRE SAFETY OFFICER (IMMEDIATE VACANCIES)', 1400),
('Events/ Programme Coordinator (Training Provided) [Education Sector] #JWL', 2500),
('Senior Software Engineer (Java)', 6000),
('Cognos BI & Java Developer', 5800),
('Software Testing Engineer (Up to $3800 | Java | Selenium | QA)', 3800),
('📞📣Business Development (Entry Level / $12 Per Hour + Attractive Commission ) - SPJTC 📞📣', 2500),
('Temp Business Development / Recruitment Consultant(Commission Payable / HR industry) - SPSKC', 2200),
('Temp Business Development  (Convertible / Commission Payable / HR industry) - SPSKC', 3000);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
