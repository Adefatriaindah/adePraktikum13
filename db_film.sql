-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 13, 2023 at 09:39 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_film`
--

-- --------------------------------------------------------

--
-- Table structure for table `film`
--

CREATE TABLE `film` (
  `id` int(11) NOT NULL,
  `nama_film` varchar(200) NOT NULL,
  `id_genre` varchar(10) NOT NULL,
  `duration` varchar(50) NOT NULL,
  `cover` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `film`
--

INSERT INTO `film` (`id`, `nama_film`, `id_genre`, `duration`, `cover`, `created_at`, `updated_at`) VALUES
(1, 'akhirat a love story', '3', '2 Jam', 'akhirat.jpg', '2023-06-07 01:12:23', '2023-06-07 01:12:23'),
(2, 'Aku Bukan Wanita Pilihan', '3', '1 Jam 45 Menit', 'aku bukan wanita pilihan.jpg', '2023-06-07 01:12:23', '2023-06-07 01:12:23'),
(3, 'Avanger', '4', '3 Jam', 'avanger.jpg', '2023-06-07 01:17:02', '2023-06-07 01:17:02'),
(4, 'Buya Hamka', '5', '7 Jam', 'buya hamka.jpg', '2023-06-07 01:17:02', '2023-06-07 01:17:02'),
(5, 'Despicable', '2', '1 Jam 30 Menit', 'despicable.jpg', '2023-06-07 01:17:02', '2023-06-07 01:17:02'),
(6, 'Gatot Kaca', '4', '1 Jam 50 Menit', 'gatotkaca.jpg', '2023-06-07 01:17:02', '2023-06-07 01:17:02'),
(7, 'Keluarga Cemara', '5', '2 Jam 30 Menit', 'keluarga cemara.jpg', '2023-06-07 01:20:50', '2023-06-07 01:20:50'),
(8, 'Khanzab', '1', '1 Jam 49 Menit', 'khanzab.jpg', '2023-06-07 01:20:50', '2023-06-07 01:20:50'),
(9, 'My Stupid Boss', '2', '2 Jam', 'my stupid boss.jpg', '2023-06-07 01:20:50', '2023-06-07 01:20:50'),
(10, 'Mumun Pocong', '1', '1 Jam 30 Menit', 'mumun.jpg', '2023-06-07 01:20:50', '2023-06-07 01:20:50');

-- --------------------------------------------------------

--
-- Table structure for table `genre`
--

CREATE TABLE `genre` (
  `id_genre` int(11) NOT NULL,
  `nama_genre` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `genre`
--

INSERT INTO `genre` (`id_genre`, `nama_genre`, `created_at`, `update_at`) VALUES
(1, 'Horor', '2023-06-11 16:06:24', '2023-06-11 16:06:24'),
(2, 'Comady', '2023-06-11 16:06:24', '2023-06-11 16:06:24'),
(3, 'Romance', '2023-06-11 16:06:24', '2023-06-11 16:06:24'),
(4, 'Action', '2023-06-11 16:06:24', '2023-06-11 16:06:24'),
(5, 'Drama', '2023-06-11 16:06:24', '2023-06-11 16:06:24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`id_genre`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `film`
--
ALTER TABLE `film`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `genre`
--
ALTER TABLE `genre`
  MODIFY `id_genre` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
