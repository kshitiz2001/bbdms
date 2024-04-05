-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 05, 2024 at 07:34 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bbdms`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin', 'admin', 7838620584, 'admin@gmail.com', 'e807f1fcf82d132f9bb018ca6738a19f', '2024-04-05 05:28:11');

-- --------------------------------------------------------

--
-- Table structure for table `tblblooddonars`
--

CREATE TABLE `tblblooddonars` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `MobileNumber` char(11) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Gender` varchar(20) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `BloodGroup` varchar(20) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `Message` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(1) DEFAULT NULL,
  `Password` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblblooddonars`
--

INSERT INTO `tblblooddonars` (`id`, `FullName`, `MobileNumber`, `EmailId`, `Gender`, `Age`, `BloodGroup`, `Address`, `Message`, `PostingDate`, `status`, `Password`) VALUES
(6, 'Hari Sharan  Dubey', '7797987981', 'ashu@gmail.com', 'Male', 35, 'O-', 'H-900, Ravinderpuri colony, Varanasi', ' Call me if blood require', '2022-05-17 12:43:41', 1, '202cb962ac59075b964b07152d234b70'),
(9, 'Shreya', '9789797979', 'test@gmail.com', 'Female', 56, 'A+', 'Allahabad', ' gjhgjhgjhghjghj', '2022-05-21 06:09:08', 1, '202cb962ac59075b964b07152d234b70'),
(10, 'Ankit Gupta', '1236547890', 'johnd@gmail.com', 'Male', 25, 'O-', 'A 5623 XYZ Street New Delhi', ' NA', '2022-07-29 01:50:58', 1, 'f925916e2754e5e03f75dd58a5733251'),
(11, 'Abhishek Singh', '1231231230', 'amitk@gmail.com', 'Male', 26, 'AB+', 'ABc Street Sector 20 Noida UP', ' NA', '2022-08-02 01:22:52', 1, 'f925916e2754e5e03f75dd58a5733251'),
(12, 'Mohit Varshney', '1425362514', 'ak@test.com', 'Male', 30, 'A-', 'NA', ' NA', '2022-12-27 17:31:08', 1, 'f925916e2754e5e03f75dd58a5733251'),
(14, 'Abhishek Singh Kushwaha', '7878787878', 'abc123@gmail.com', 'Male', 23, 'O-', 'gurgaon', ' hello', '2023-12-08 07:19:27', 1, 'e807f1fcf82d132f9bb018ca6738a19f'),
(16, 'Kshitiz Kumar Singh', '7838620584', 'singh.lovekumar2020@gmail.com', 'Male', 23, 'O+', 'Gurgaon', ' ', '2024-02-17 05:51:52', 1, '25f9e794323b453885f5181f1b624d0b'),
(17, '', '9999999999', '', 'Male', 22, 'A-', 'sasasasasasa', ' ', '2024-04-05 04:57:54', 1, '279acbcab4822a0279cf89e7d4af0e60');

-- --------------------------------------------------------

--
-- Table structure for table `tblbloodgroup`
--

CREATE TABLE `tblbloodgroup` (
  `id` int(11) NOT NULL,
  `BloodGroup` varchar(20) DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblbloodgroup`
--

INSERT INTO `tblbloodgroup` (`id`, `BloodGroup`, `PostingDate`) VALUES
(1, 'A-', '2022-04-30 20:33:50'),
(2, 'AB-', '2022-04-30 20:34:00'),
(3, 'O-', '2022-04-30 20:34:00'),
(4, 'A-', '2022-04-30 20:34:00'),
(5, 'A+', '2022-04-30 20:34:00'),
(6, 'AB+', '2022-04-30 20:34:00'),
(7, 'O+', '2024-02-17 05:51:03');

-- --------------------------------------------------------

--
-- Table structure for table `tblbloodrequirer`
--

CREATE TABLE `tblbloodrequirer` (
  `ID` int(10) NOT NULL,
  `BloodDonarID` int(10) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  `EmailId` varchar(250) DEFAULT NULL,
  `ContactNumber` bigint(10) DEFAULT NULL,
  `BloodRequirefor` varchar(250) DEFAULT NULL,
  `Message` mediumtext DEFAULT NULL,
  `ApplyDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblbloodrequirer`
--

INSERT INTO `tblbloodrequirer` (`ID`, `BloodDonarID`, `name`, `EmailId`, `ContactNumber`, `BloodRequirefor`, `Message`, `ApplyDate`) VALUES
(1, 6, 'Rakesh', 'rak@gmail.com', 7894561236, 'Father', 'Please help', '2023-12-20 11:57:24'),
(2, 3, 'Mukesh', 'muk@gmail.com', 5896231478, 'Others', 'Please help', '2023-12-17 11:58:48'),
(3, 6, 'Hitesh', 'hit@gmail.com', 1236547896, 'Brother', 'do the needful', '2023-12-27 12:02:12'),
(4, 10, 'Rahul Singh', 'rahk@gmail.com', 2536251425, 'Mother', 'Please help me', '2023-12-29 01:51:52'),
(5, 11, 'Anuj Kumar', 'ak@gmail.com', 8525232102, 'Others', 'Need blood on urgent basis', '2023-12-02 01:24:18'),
(6, 16, 'Ayush', 'abc@gmail.com', 321654987, 'Father', 'help me', '2024-02-17 05:53:35'),
(7, 6, '7989879', 'hkkj@jhgj', 0, '', '', '2024-02-17 09:01:03');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusinfo`
--

CREATE TABLE `tblcontactusinfo` (
  `id` int(11) NOT NULL,
  `Address` tinytext DEFAULT NULL,
  `EmailId` varchar(255) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcontactusinfo`
--

INSERT INTO `tblcontactusinfo` (`id`, `Address`, `EmailId`, `ContactNo`) VALUES
(1, 'G.L.A University																									', 'glauniversity@gla.ac.in', '5662250900');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusquery`
--

CREATE TABLE `tblcontactusquery` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `ContactNumber` char(11) DEFAULT NULL,
  `Message` longtext DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `type`, `detail`) VALUES
(2, 'Why Become Donor', 'donor', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">\r\n<div>\r\n  <h2>Why Become a Blood Donor: Making a Difference, One Drop at a Time</h2>\r\n\r\n  <p>\r\n    Becoming a blood donor is a selfless act that can save lives and make a significant impact on your community. Blood donations are essential for patients in need of transfusions, such as those undergoing surgery, suffering from blood disorders, or involved in accidents. By donating blood, you join a network of compassionate individuals who share the goal of ensuring a steady supply of lifesaving resources for those in need. Here are a few compelling reasons to consider becoming a blood donor:\r\n  </p>\r\n\r\n  <ul>\r\n    <li>\r\n      <b>Saving Lives:</b> Your blood donation can directly help up to three people, providing them with the essential components they require for recovery and treatment. By donating, you become an active participant in the healthcare system and contribute to a healthier community.\r\n    </li>\r\n    <li>\r\n      <b>Feeling Good Inside:</b> Donating blood has been shown to have several health benefits for donors, such as reducing the risk of heart attacks and improving overall well-being. It also encourages self-reflection and personal growth by demonstrating your capacity to make a difference in others\' lives.\r\n    </li>\r\n    <li>\r\n      <b>Free Health Check-Up:</b> During the donation process, your blood is tested for various diseases and infections, providing you with valuable health information at no cost. This can help you identify potential health risks early on and take necessary precautions.\r\n    </li>\r\n    <li>\r\n      <b>Becoming Part of a Larger Community:</b> Blood donation brings people together from all walks of life, fostering a sense of unity and shared purpose. By joining this community, you can forge connections with like-minded individuals and contribute to a culture of giving and support.\r\n    </li>\r\n    <li>\r\n      <b>Easy and Convenient:</b> Donating blood is a simple process that typically takes less than an hour. With our user-friendly blood bank management website, you can easily schedule appointments, track your donations, and receive notifications about potential blood matches.\r\n    </li>\r\n  </ul>\r\n\r\n  <p>\r\n    Becoming a blood donor is a rewarding experience that offers numerous benefits to both donors and recipients. By taking this step, you can make a tangible difference in the lives of others and contribute to a healthier, more resilient community. Join us in our mission to save lives, one drop at a time.\r\n  </p>\r\n</div>\r\n</span>'),
(3, 'About Us ', 'aboutus', '<div style=\"text-align: justify;\"><span style=\"font-size: 1em; color: rgb(0, 0, 0); font-family: \'Open Sans\', Arial, sans-serif;\"><div>\r\n  <h2>About Us: Saving Lives, One Drop at a Time</h2><br>\r\n\r\n  <p style=\"color: rgb(0, 0, 0);\">\r\n    We are dedicated to ensuring a reliable and efficient blood supply for hospitals, patients, and communities across the nation. Our mission is to save lives by connecting donors and recipients through our cutting-edge blood management platform.\r\n  </p>\r\n\r\n  <p style=\"color: rgb(0, 0, 0);\">\r\n    Our team comprises experienced professionals from various backgrounds, including medical experts, technology innovators, and dedicated volunteers. We are united by our passion for improving healthcare and making a tangible difference in people\'s lives.\r\n  </p><br>\r\n\r\n  <h3>Our Commitment to Quality and Safety</h3><br>\r\n  <p style=\"color: rgb(0, 0, 0);\">\r\n    We adheres to the highest industry standards for blood collection, processing, and distribution. We work closely with local and national health organizations to ensure our practices meet or exceed regulatory requirements. Our rigorous testing procedures guarantee the safety and suitability of every blood unit we provide.\r\n  </p><br>\r\n\r\n  <h3>Revolutionizing Blood Bank Management</h3>\r\n\r\n  <p style=\"color: rgb(0, 0, 0);\"><br>\r\n    Our innovative blood bank management website offers a user-friendly, secure platform for blood donors, hospitals, and patients to manage their blood needs effectively. With LifeBloom, you can:\r\n  </p><br>\r\n\r\n  <ul>\r\n    <li>\r\n      <b>Donors:</b> Schedule appointments, track donations, and receive notifications about potential blood matches.\r\n    </li>\r\n    <li>\r\n      <b>Hospitals:</b> Access real-time inventory, request specific blood types, and manage orders seamlessly.\r\n    </li>\r\n    <li>\r\n      <b>Patients:</b> Search for compatible blood units, track orders, and receive updates on availability.\r\n    </li>\r\n  </ul><br>\r\n\r\n  <h3>Empowering Communities, Inspiring Generosity</h3>\r\n\r\n  <p style=\"color: rgb(0, 0, 0);\">\r\n    We believe that everyone has the power to make a difference. By fostering a culture of giving and raising awareness about the importance of blood donations, we aim to inspire more individuals to become regular donors. Our website also features educational resources and engaging stories from real donors and recipients, further emphasizing the impact of blood donations on people\'s lives.\r\n  </p>\r\n<p style=\"color: rgb(0, 0, 0);\">\r\n    Together, we can create a healthier and more resilient community through the simple yet profound act of blood donation. Join us in our mission to save lives, one drop at a time.\r\n  </p>\r\n</div></span></div>');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblblooddonars`
--
ALTER TABLE `tblblooddonars`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bgroup` (`BloodGroup`);

--
-- Indexes for table `tblbloodgroup`
--
ALTER TABLE `tblbloodgroup`
  ADD PRIMARY KEY (`id`),
  ADD KEY `BloodGroup` (`BloodGroup`),
  ADD KEY `BloodGroup_2` (`BloodGroup`);

--
-- Indexes for table `tblbloodrequirer`
--
ALTER TABLE `tblbloodrequirer`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `donorid` (`BloodDonarID`);

--
-- Indexes for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblblooddonars`
--
ALTER TABLE `tblblooddonars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tblbloodgroup`
--
ALTER TABLE `tblbloodgroup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblbloodrequirer`
--
ALTER TABLE `tblbloodrequirer`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
