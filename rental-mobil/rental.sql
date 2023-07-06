-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 03, 2023 at 10:30 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rental`
--

-- --------------------------------------------------------

--
-- Table structure for table `mobil`
--

CREATE TABLE `mobil` (
  `id_mobil` int(11) NOT NULL,
  `merk` varchar(30) NOT NULL,
  `tahun` int(11) NOT NULL,
  `plat` varchar(10) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `mobil`
--

INSERT INTO `mobil` (`id_mobil`, `merk`, `tahun`, `plat`, `status`) VALUES
(1, 'Avanza', 2017, 'H 1234 QWE', 1),
(2, 'Xenia', 2016, 'H 5678 PTS', 1),
(4, 'CHEVROLET', 2019, 'H 2314 BDD', 1),
(5, 'BUGATI', 2022, 'H 1122 BCC', 1),
(6, 'DUCATI', 2020, 'H 2233 FJJ', 1),
(7, 'Avanza', 2024, 'H 1231 GDD', 1);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `no_nota` varchar(10) NOT NULL,
  `tanggal` date NOT NULL,
  `nama_cust` varchar(50) NOT NULL,
  `no_ktp` int(11) NOT NULL,
  `alamat` text DEFAULT NULL,
  `biaya` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_mobil` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `no_nota`, `tanggal`, `nama_cust`, `no_ktp`, `alamat`, `biaya`, `id_user`, `id_mobil`) VALUES
(1, 'USM1', '2017-04-25', 'Maulana', 1234, 'Semarang', 250000, 4, 1),
(2, 'USM2', '2017-04-25', 'Firdaus', 1234, 'Semarang', 250000, 5, 1),
(3, 'USM3', '2023-07-03', 'Azmi', 2147483647, 'Semarang', 12345, 1, 1),
(4, 'USM4', '2023-07-03', 'Maulana', 2147483647, 'Surabaya', 12345, 1, 0),
(5, 'USM5', '2023-07-03', 'Maulana', 2147483647, 'Maulana', 543468, 1, 0),
(6, 'USM6', '2023-07-03', 'fixry', 2147483647, 'Asdwer', 667767, 1, 1),
(7, 'USM7', '2023-07-03', 'Diah', 2147483647, 'Weleri', 33221, 1, 4),
(8, 'USM8', '2023-07-03', 'Maulana', 2147483647, 'Boja', 332134, 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `nama`, `level`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Azmi Maulana', 1),
(12, 'user', 'ee11cbb19052e40b07aac0ca060c23ee', 'User', 2),
(13, 'Azmi', 'aabefdb0281e2a4d81c7638a851468d7', 'Admin', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mobil`
--
ALTER TABLE `mobil`
  ADD PRIMARY KEY (`id_mobil`) USING BTREE;

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`) USING BTREE;

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mobil`
--
ALTER TABLE `mobil`
  MODIFY `id_mobil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
