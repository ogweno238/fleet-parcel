-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 16, 2021 at 06:15 PM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `fleet_percel_db`
--
CREATE DATABASE IF NOT EXISTS `fleet_percel_db` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `fleet_percel_db`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `username`, `password`) VALUES
(1, 'admin', '2000');

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE IF NOT EXISTS `bill` (
  `bill_id` int(11) NOT NULL AUTO_INCREMENT,
  `id` varchar(255) NOT NULL,
  `username` varchar(100) NOT NULL,
  `salary` int(255) NOT NULL,
  `equipment` int(255) NOT NULL,
  `oil` int(255) NOT NULL,
  `tcost` int(255) NOT NULL,
  PRIMARY KEY (`bill_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`bill_id`, `id`, `username`, `salary`, `equipment`, `oil`, `tcost`) VALUES
(8, '25', '', 1000, 1000001, 1010, 101010101),
(9, '25', '', 1000, 100, 300, 1400),
(10, '25', '', 10000, 500, 4000, 10000);

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE IF NOT EXISTS `booking` (
  `booking_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `username` varchar(100) NOT NULL,
  `department` varchar(100) NOT NULL,
  `type` varchar(8) NOT NULL,
  `req_date` varchar(100) NOT NULL,
  `req_time` varchar(100) NOT NULL,
  `ret_date` varchar(100) NOT NULL,
  `ret_time` varchar(100) NOT NULL,
  `destination` varchar(100) NOT NULL,
  `pickup_point` varchar(100) NOT NULL,
  `resons` varchar(255) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` int(14) NOT NULL,
  `confirmation` int(11) NOT NULL,
  `veh_reg` varchar(255) NOT NULL,
  `driverid` int(11) NOT NULL,
  `finished` int(11) NOT NULL,
  `paid` int(11) NOT NULL,
  PRIMARY KEY (`booking_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=60 ;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`booking_id`, `name`, `username`, `department`, `type`, `req_date`, `req_time`, `ret_date`, `ret_time`, `destination`, `pickup_point`, `resons`, `email`, `mobile`, `confirmation`, `veh_reg`, `driverid`, `finished`, `paid`) VALUES
(56, 'julias ogweno', 'ogweno', 'mbm', 'bus', '11/15/2021', '12 : 44 AM', '11/15/2021', '12 : 44 AM', 'Mombasa', 'Nairobi', 'jgjg', 'juliasogweno20189@gmail.com', 723258935, 1, 'cho- 301294', 21, 1, 1),
(57, 'julias ogweno', 'ogweno', 'mbm', 'bus', '11/15/2021', '12 : 44 AM', '11/15/2021', '12 : 44 AM', 'Mombasa', 'Nairobi', 'jgjg', 'juliasogweno20189@gmail.com', 723258935, 1, '44', 21, 1, 1),
(58, ' JULIOUS', 'admin', 'mbm', 'bus', '11/15/2021', '1 : 26 AM', '11/17/2021', '1 : 26 AM', 'Mombasa', 'Nairobi', 'jgjg', 'oduorrodgers81@gmail.com', 723258935, 1, '44', 20, 0, 1),
(59, 'julias ogweno', 'ogweno', 'mbm', 'bus', '11/15/2021', '12 : 44 AM', '11/15/2021', '12 : 44 AM', 'Mombasa', 'Nairobi', 'jgjg', 'juliasogweno20189@gmail.com', 723258935, 1, '44', 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE IF NOT EXISTS `branches` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `branch_code` varchar(50) NOT NULL,
  `street` text NOT NULL,
  `city` text NOT NULL,
  `state` text NOT NULL,
  `zip_code` varchar(50) NOT NULL,
  `country` text NOT NULL,
  `contact` varchar(100) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`id`, `branch_code`, `street`, `city`, `state`, `zip_code`, `country`, `contact`, `date_created`) VALUES
(5, 'R4WOZxYha5oUAHf', 'GPO', 'Nairobi', 'Nairobi', '00100', 'Kenya', '', '2021-11-16 00:16:21'),
(6, 'uM7bYtsKpNSTvlV', 'Mombasa', 'Mombasa', 'Mombasa', '00400', 'Kenya', '070444322', '2021-11-16 00:23:03');

-- --------------------------------------------------------

--
-- Table structure for table `driver`
--

CREATE TABLE IF NOT EXISTS `driver` (
  `driverid` int(11) NOT NULL AUTO_INCREMENT,
  `drname` varchar(255) NOT NULL,
  `drjoin` varchar(255) NOT NULL,
  `drmobile` varchar(20) NOT NULL,
  `drnid` varchar(30) NOT NULL,
  `drlicense` varchar(30) NOT NULL,
  `drlicensevalid` varchar(100) NOT NULL,
  `draddress` varchar(255) NOT NULL,
  `drphoto` varchar(30) NOT NULL,
  `dr_available` int(11) NOT NULL,
  PRIMARY KEY (`driverid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `driver`
--

INSERT INTO `driver` (`driverid`, `drname`, `drjoin`, `drmobile`, `drnid`, `drlicense`, `drlicensevalid`, `draddress`, `drphoto`, `dr_available`) VALUES
(20, 'fahim', '03/04/2018', '01717172398712', '91238912093097812', '1093q098091839', '03/26/2018', ' creasent road, dhaka, bangladesh.', 'nsf.jpg', 1),
(21, 'Arman', '03/04/2018', '0123084982', 'kls3893809839082', '1093q098091839', '03/04/2018', ' Oktroy Mor, Rajshahi.', 'rkb.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `parcels`
--

CREATE TABLE IF NOT EXISTS `parcels` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `reference_number` varchar(100) NOT NULL,
  `sender_name` text NOT NULL,
  `sender_address` text NOT NULL,
  `sender_contact` text NOT NULL,
  `recipient_name` text NOT NULL,
  `recipient_address` text NOT NULL,
  `recipient_contact` text NOT NULL,
  `type` int(1) NOT NULL COMMENT '1 = Deliver, 2=Pickup',
  `from_branch_id` varchar(30) NOT NULL,
  `to_branch_id` varchar(30) NOT NULL,
  `weight` varchar(100) NOT NULL,
  `height` varchar(100) NOT NULL,
  `width` varchar(100) NOT NULL,
  `length` varchar(100) NOT NULL,
  `price` float NOT NULL,
  `status` int(2) NOT NULL DEFAULT '0',
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `parcels`
--

INSERT INTO `parcels` (`id`, `reference_number`, `sender_name`, `sender_address`, `sender_contact`, `recipient_name`, `recipient_address`, `recipient_contact`, `type`, `from_branch_id`, `to_branch_id`, `weight`, `height`, `width`, `length`, `price`, `status`, `date_created`) VALUES
(12, '236849', 'Julious', '270', '0759000000', 'Mitoko', '270', '0766666777', 2, '6', '6', '2', '7', '75', '6', 4000, 0, '2021-11-16 00:59:21'),
(13, '484139', 'Julious', '270', '0759000000', 'Mitoko', '270', '0766666777', 1, '6', '', '2', '7', '75', '6', 4000, 0, '2021-11-16 01:00:58');

-- --------------------------------------------------------

--
-- Table structure for table `parcel_tracks`
--

CREATE TABLE IF NOT EXISTS `parcel_tracks` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `parcel_id` int(30) NOT NULL,
  `status` int(2) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `parcel_tracks`
--

INSERT INTO `parcel_tracks` (`id`, `parcel_id`, `status`, `date_created`) VALUES
(1, 2, 1, '2020-11-27 09:53:27'),
(2, 3, 1, '2020-11-27 09:55:17'),
(3, 1, 1, '2020-11-27 10:28:01'),
(4, 1, 2, '2020-11-27 10:28:10'),
(5, 1, 3, '2020-11-27 10:28:16'),
(6, 1, 4, '2020-11-27 11:05:03'),
(7, 1, 5, '2020-11-27 11:05:17'),
(8, 1, 7, '2020-11-27 11:05:26'),
(9, 3, 2, '2020-11-27 11:05:41'),
(10, 6, 1, '2020-11-27 14:06:57'),
(11, 7, 9, '2021-11-16 00:32:11');

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE IF NOT EXISTS `system_settings` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `address` text NOT NULL,
  `cover_img` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `system_settings`
--

INSERT INTO `system_settings` (`id`, `name`, `email`, `contact`, `address`, `cover_img`) VALUES
(1, 'Fleet & Parcel Management System', 'info@sample.comm', '2547', 'kcau', '');

-- --------------------------------------------------------

--
-- Table structure for table `tripcost`
--

CREATE TABLE IF NOT EXISTS `tripcost` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `booking_id` varchar(50) NOT NULL,
  `username` varchar(100) NOT NULL,
  `total_km` varchar(11) NOT NULL,
  `oil_cost` varchar(11) NOT NULL,
  `extra_cost` varchar(11) NOT NULL,
  `total_cost` varchar(11) NOT NULL,
  `paid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `tripcost`
--

INSERT INTO `tripcost` (`id`, `booking_id`, `username`, `total_km`, `oil_cost`, `extra_cost`, `total_cost`, `paid`) VALUES
(20, '58', 'fahad', '10', '1000', '10', '1010', 1),
(21, '57', 'ogweno', '66', '89', '60', '90000', 1),
(22, '56', 'ogweno', '66', '89', '60', '90000', 0),
(23, '59', 'ogweno', '', '', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `admin` int(11) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `first_name`, `last_name`, `email`, `username`, `password`, `admin`) VALUES
(17, 'julias', 'ogweno', 'juliasogweno20189@gmail.com', 'ogweno', '2000', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '2' COMMENT '1 = admin, 2 = staff',
  `branch_id` int(30) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password`, `type`, `branch_id`, `date_created`) VALUES
(1, 'Julias', 'Ogweno', 'admin@admin.com', '08f90c1a417155361a5c4b8d297e0d78', 1, 0, '2020-11-26 10:57:04'),
(2, 'John', 'Smith', 'jsmith@sample.com', '1254737c076cf867dc53d60a0364f38e', 2, 1, '2020-11-26 11:52:04'),
(3, 'George', 'Wilson', 'gwilson@sample.com', 'd40242fb23c45206fadee4e2418f274f', 2, 4, '2020-11-27 13:32:12');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle`
--

CREATE TABLE IF NOT EXISTS `vehicle` (
  `veh_id` int(11) NOT NULL AUTO_INCREMENT,
  `veh_reg` varchar(100) NOT NULL,
  `veh_type` varchar(20) NOT NULL,
  `chesisno` varchar(100) NOT NULL,
  `brand` varchar(100) NOT NULL,
  `veh_color` varchar(100) NOT NULL,
  `veh_regdate` varchar(100) NOT NULL,
  `veh_description` varchar(255) NOT NULL,
  `veh_photo` varchar(255) NOT NULL,
  `veh_available` int(11) NOT NULL,
  PRIMARY KEY (`veh_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=37 ;

--
-- Dumping data for table `vehicle`
--

INSERT INTO `vehicle` (`veh_id`, `veh_reg`, `veh_type`, `chesisno`, `brand`, `veh_color`, `veh_regdate`, `veh_description`, `veh_photo`, `veh_available`) VALUES
(25, 'ga-259723', 'car', '101-12303.20201', 'corolla', 'Black', '25/03.17', 'hello this is a black car.', '1.jpg', 1),
(26, 'cho- 301294', 'car', '101-12309.23981', 'axio', 'white', '26.9.15', ' hello this is a white car. ', '2.jpg', 0),
(35, 'go-190312', 'car', '101321-138713.3291823', 'Corolla', 'Red', '10/17/2017', ' This is a red car.', 'images.jpg', 1),
(36, '44', 'bus', '3434', 'scania', 'blue', '11/15/2021', ' new', 'Picture1.jpg', 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
