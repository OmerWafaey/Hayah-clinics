-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 16, 2020 at 02:34 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myhmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admintb`
--

CREATE TABLE `admintb` (
  `username` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admintb`
--

INSERT INTO `admintb` (`username`, `password`) VALUES
('omar', 'omar123');

-- --------------------------------------------------------

--
-- Table structure for table `appointmenttb`
--

CREATE TABLE `appointmenttb` (
  `pid` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `doctor` varchar(30) NOT NULL,
  `docFees` int(5) NOT NULL,
  `appdate` date NOT NULL,
  `apptime` time NOT NULL,
  `userStatus` int(5) NOT NULL,
  `doctorStatus` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointmenttb`
--

INSERT INTO `appointmenttb` (`pid`, `ID`, `fname`, `lname`, `gender`, `email`, `contact`, `doctor`, `docFees`, `appdate`, `apptime`, `userStatus`, `doctorStatus`) VALUES
(4, 1, 'Omar', 'wafaey', 'Male', '3moor@gmail.com', '01138489464', 'ayman', 100, '2022-12-15', '10:00:00', 1, 0),
(4, 2, 'Maher', 'Ahmed', 'Male', 'maherahmed0@gmail.com', '01238489464', 'mohamed', 700, '2022-12-16', '10:00:00', 0, 1),
(4, 3, 'Ziad', 'Adel', 'Male', 'ziadadel0@gmail.com', '01038489464', 'omar', 1000, '2022-12-17', '03:00:00', 0, 1),
(11, 4, 'Ruaa', 'Ayman', 'Female', 'ruaaayman0@gmail.com', '0118946252', 'ashraf', 500, '2022-12-18', '20:00:00', 1, 1),
(4, 5, 'Fatma', 'Ebrahim', 'Male', 'fatmaebrahim0@gmail.com', '0128489464', 'ali', 700, '2022-12-19', '12:00:00', 1, 1),
(4, 6, 'Doha', 'Naser', 'Male', 'dohanaser0@gmail.com', '01038489464', 'hamdy', 550, '2022-12-20', '15:00:00', 0, 1),
(2, 8, 'Abdallah', 'Mohamed', 'Female', 'abdallahmohamed0@gmail.com', '0126897689', 'marwan', 550, '2022-12-21', '10:00:00', 1, 1),
(5, 9, 'Eman', 'Ahmed', 'Male', 'emanmohamed0@gmail.com', '01170897653', 'karam', 550, '2022-12-22', '20:00:00', 1, 0),
(4, 10, 'Mostafa', 'Elgendy', 'Male', 'mostafaelgendy0@gmail.com', '01238489464', 'metwaly', 550, '2022-12-23', '14:00:00', 1, 0),
(4, 11, 'Ahmed', 'Mohamed', 'Male', 'ahmedmohamed0@gmail.com', '01038489464', 'saif', 700, '2022-12-24', '15:00:00', 1, 1),
(9, 12, 'Mohamed', 'sayed', 'Male', 'mohamedsayed@gmail.com', '01183619153', 'lobna', 800, '2022-12-25', '12:00:00', 1, 1),
(9, 13, 'Mona', 'akram', 'Male', 'monaakram@gmail.com', '01283619153', 'aya', 450, '2022-12-26', '14:00:00', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `name` varchar(30) NOT NULL,
  `email` text NOT NULL,
  `contact` varchar(10) NOT NULL,
  `message` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`name`, `email`, `contact`, `message`) VALUES
('Samir', 'samir@gmail.com', '0116677554', 'Hey Admin'),
('Shady', 'shady@gmail.com', '0129778865', 'Good Job, '),
('Saleh', 'saleh@gmail.com', '0117888879', 'How can I reach you?'),
('Hanaa', 'hanaa@gmail.com', '0108979967', 'Love your site'),
('Somaia', 'somaia@gmail.com', '0127768978', 'Want some coffee?'),
('Shadya', 'shadya@gmail.com', '0118989898', 'Good service'),
('Ali', 'ali@gmail.com', '0109776868', 'you are best'),
('Salah', 'salah@gmail.com', '0117897564', 'Thank you!'),
('Amal', 'amal@gmail.com', '0129869757', 'I love your service!');

-- --------------------------------------------------------

--
-- Table structure for table `doctb`
--

CREATE TABLE `doctb` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `spec` varchar(50) NOT NULL,
  `docFees` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctb`
--

INSERT INTO `doctb` (`username`, `password`, `email`, `spec`, `docFees`) VALUES
('omar', 'omar123', 'omar@gmail.com', 'General', 450),
('Maher', 'maher123', 'maher@gmail.com', 'Cardiologist', 400),
('ziad', 'ziad123', 'ziad@gmail.com', 'General', 350),
('ruaa', 'ruaa123', 'ruaa@gmail.com', 'Pediatrician', 300),
('fatma', 'fatma123', 'fatma@gmail.com', 'Endocrinologists', 250),
('doha', 'doha123', 'doha@gmail.com', 'Cardiologist', 200),
('abdallah', 'abdallah123', 'abdallah@gmail.com', 'Neurologist', 150),
('eman', 'eman123', 'eman@gmail.com', 'Pediatrician', 100);

-- --------------------------------------------------------

--
-- Table structure for table `patreg`
--

CREATE TABLE `patreg` (
  `pid` int(11) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `password` varchar(30) NOT NULL,
  `cpassword` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patreg`
--

INSERT INTO `patreg` (`pid`, `fname`, `lname`, `gender`, `email`, `contact`, `password`, `cpassword`) VALUES
(1, 'Ramy', 'hassan', 'Male', 'ramy@gmail.com', '01076543210', 'ramy123', 'ramy123'),
(2, 'Aliaa', 'ali', 'Female', 'aliaa@gmail.com', '01176897689', 'aliaa123', 'aliaa123'),
(3, 'Shady', 'hany', 'Male', 'shadyhany@gmail.com', '01276898463', 'shadyhany123', 'shadyhany123'),
(4, 'Kareem', 'asameh', 'Male', 'kareem0@gmail.com', '01038489464', 'kareem123', 'kareem123'),
(5, 'Gamil', 'mohamed', 'Male', 'gamil@gmail.com', '01220897653', 'gamil123', 'gamil23'),
(6, 'Sara', 'ahmed', 'Female', 'sara@gmail.com', '01159986865', 'sara123', 'sara123'),
(7, 'Nancy', 'moamen', 'Female', 'nancy@gmail.com', '0108972454', 'nancy123', 'nancy123'),
(8, 'Kenzy', 'yasser', 'female', 'kenzy@gmail.com', '01209879868', 'kenzy123', 'kenzy123'),
(9, 'William', 'Badr', 'Male', 'william@gmail.com', '011619153', 'william123', 'william123'),
(10, 'Peter', 'Norvig', 'Male', 'peter@gmail.com', '01209362815', 'peter123', 'peter123'),
(11, 'Shams', 'fares', 'Female', 'shams@gmail.com', '01068946252', 'shams123', 'shams123');

-- --------------------------------------------------------

--
-- Table structure for table `prestb`
--

CREATE TABLE `prestb` (
  `doctor` varchar(50) NOT NULL,
  `pid` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `appdate` date NOT NULL,
  `apptime` time NOT NULL,
  `disease` varchar(250) NOT NULL,
  `allergy` varchar(250) NOT NULL,
  `prescription` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prestb`
--

INSERT INTO `prestb` (`doctor`, `pid`, `ID`, `fname`, `lname`, `appdate`, `apptime`, `disease`, `allergy`, `prescription`) VALUES
('omar', 4, 11, 'shady', 'Lal', '2022-12-27', '15:00:00', 'Cough', 'Nothing', 'Just take a teaspoon of Benadryl every night'),
('ziad', 2, 8, 'Aliaa', 'Bhatt', '2022-12-21', '10:00:00', 'Severe Fever', 'Nothing', 'Take bed rest'),
('ruaa', 9, 12, 'William', 'Badr', '2022-12-26', '12:00:00', 'Sever fever', 'nothing', 'Paracetamol -> 1 every morning and night'),
('fatma', 9, 13, 'William', 'Badr', '2022-12-26', '14:00:00', 'Cough', 'Skin dryness', 'Intake fruits with more water content');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointmenttb`
--
ALTER TABLE `appointmenttb`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `patreg`
--
ALTER TABLE `patreg`
  ADD PRIMARY KEY (`pid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointmenttb`
--
ALTER TABLE `appointmenttb`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `patreg`
--
ALTER TABLE `patreg`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
