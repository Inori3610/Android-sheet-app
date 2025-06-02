-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 03, 2025 at 01:39 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `qlnoithat`
--

-- --------------------------------------------------------

--
-- Table structure for table `loainoithat`
--

CREATE TABLE `loainoithat` (
  `maloaiNT` varchar(20) NOT NULL,
  `tenloaiNT` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `loainoithat`
--

INSERT INTO `loainoithat` (`maloaiNT`, `tenloaiNT`) VALUES
('ban1', 'Ban'),
('ghe1', 'Ghe'),
('ke1', 'Ke');

-- --------------------------------------------------------

--
-- Table structure for table `noithat`
--

CREATE TABLE `noithat` (
  `manoithat` int(11) NOT NULL,
  `tennoithat` varchar(50) NOT NULL,
  `donvitinh` varchar(20) NOT NULL,
  `soluong` int(11) NOT NULL,
  `dongia` int(11) NOT NULL,
  `maloaiNT` varchar(20) NOT NULL,
  `hinhanh` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `noithat`
--

INSERT INTO `noithat` (`manoithat`, `tennoithat`, `donvitinh`, `soluong`, `dongia`, `maloaiNT`, `hinhanh`) VALUES
(1, 'Ban go', 'dong', 50, 300000, 'ban1', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSYDXoSNHCdhZPIXzRFeVdSNl71O7pbgeH6GQ&s'),
(2, 'Ghe nhua', 'dong', 35, 20000, 'ghe1', 'https://product.hstatic.net/1000380002/product/ghe_nhua_lun_kieu_v2-01_90c99db5caf140529644fb2022fe893e_master.jpg'),
(3, 'ke sat', 'dong', 40, 50000, 'ke1', 'https://bahuy.com/wp-content/uploads/2021/07/GS1B6-AVT-300x300.jpg'),
(4, 'ke nhua', 'dong', 20, 10000, 'ke1', 'https://bangheduytan.com/wp-content/uploads/2021/03/028.do_.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `loainoithat`
--
ALTER TABLE `loainoithat`
  ADD PRIMARY KEY (`maloaiNT`);

--
-- Indexes for table `noithat`
--
ALTER TABLE `noithat`
  ADD PRIMARY KEY (`manoithat`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `noithat`
--
ALTER TABLE `noithat`
  MODIFY `manoithat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
