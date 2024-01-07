-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 07, 2024 at 12:00 PM
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
-- Database: `krs`
--

-- --------------------------------------------------------

--
-- Table structure for table `jadwal`
--

CREATE TABLE `jadwal` (
  `id` varchar(15) NOT NULL,
  `kelas` varchar(20) NOT NULL,
  `matkul` varchar(30) NOT NULL,
  `npm` varchar(20) NOT NULL,
  `nama_dosen` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jadwal`
--

INSERT INTO `jadwal` (`id`, `kelas`, `matkul`, `npm`, `nama_dosen`) VALUES
('KZ001', '5D REG PAGI', 'BAHASA ARAB', '5C REG PAGI', '2110010533');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `no_krs` varchar(15) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `jurusan` varchar(25) NOT NULL,
  `npm` varchar(20) NOT NULL,
  `alamat` varchar(35) NOT NULL,
  `jenis_kelamin` varchar(20) NOT NULL,
  `ttl` varchar(40) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`no_krs`, `nama`, `jurusan`, `npm`, `alamat`, `jenis_kelamin`, `ttl`, `status`) VALUES
('AZ009', 'RAHMAWATI', 'ELEKTRO', '211008776', 'JL. ADIYAKSA', 'Perempuan', 'BANJARMASIN, 17-09-2006', 'Rekos'),
('AZ01', 'Abdurrahim Fadhillah', 'Teknik Informatika', '2110010533', 'JL.Kuin Selatan RT09 RW 01', 'LAKI-LAKI', 'Banjarmasin,16-01-2005', 'AKTIF'),
('HG098', 'Ibnu', 'HUKUM', '124124624', 'JL. BELITUNG DARATAN', 'Laki-Laki', 'BANJARMASIN,18-10-2003', 'Non Aktif');

-- --------------------------------------------------------

--
-- Table structure for table `ukt`
--

CREATE TABLE `ukt` (
  `no_ukt` varchar(15) NOT NULL,
  `npm` varchar(25) NOT NULL,
  `nama_mahasiswa` varchar(25) NOT NULL,
  `keterangan` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ukt`
--

INSERT INTO `ukt` (`no_ukt`, `npm`, `nama_mahasiswa`, `keterangan`) VALUES
('AZ001', '21100533', 'Abdurrahim Fadhillah', 'Lunas'),
('HG2Z', '2110010533', 'ABDURRAHIM FADHILLAH', 'Lunas'),
('KO109', '211008643', 'Kurtzzz', 'Rp.867.000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`no_krs`);

--
-- Indexes for table `ukt`
--
ALTER TABLE `ukt`
  ADD PRIMARY KEY (`no_ukt`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
