-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 30, 2024 at 11:25 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpus`
--

-- --------------------------------------------------------

--
-- Table structure for table `anggota`
--

CREATE TABLE `anggota` (
  `id_anggota` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` text DEFAULT NULL,
  `nik` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `anggota`
--

INSERT INTO `anggota` (`id_anggota`, `nama`, `alamat`, `nik`) VALUES
(1, 'Ahmad Suhendra', 'Jl. Raya No.1, Jakarta', '1234567890123456'),
(2, 'Budi Santoso', 'Jl. Kebon Jeruk No.2, Bandung', '2345678901234567'),
(3, 'Cici Putri', 'Jl. Cendana No.3, Surabaya', '3456789012345678'),
(4, 'Dewi Lestari', 'Jl. Melati No.4, Medan', '4567890123456789'),
(5, 'Eko Prabowo', 'Jl. Mawar No.5, Semarang', '5678901234567890'),
(6, 'Fani Nurul', 'Jl. Anggrek No.6, Yogyakarta', '6789012345678901'),
(7, 'Gito Wibowo', 'Jl. Kenanga No.7, Malang', '7890123456789012'),
(8, 'Hani Farida', 'Jl. Kamboja No.8, Bali', '8901234567890123'),
(9, 'Iwan Ardiansyah', 'Jl. Teratai No.9, Lombok', '9012345678901234'),
(10, 'Joko Prasetyo', 'Jl. Pahlawan No.10, Padang', '0123456789012345'),
(11, 'Kiki Rosyidah', 'Jl. Wijaya No.11, Batam', '1234567890123457'),
(12, 'Lina Anggraini', 'Jl. Lili No.12, Pontianak', '2345678901234568'),
(13, 'Maya Sari', 'Jl. Flamboyan No.13, Palembang', '3456789012345679'),
(14, 'Nina Yuliana', 'Jl. Seroja No.14, Pekanbaru', '4567890123456780'),
(15, 'Oka Wirawan saputra', 'Jl. Terpadu No.15, Balikpapan', '5678901234567891'),
(17, 'Neymar', 'Brazil', '2032390203'),
(19, 'Buffon', 'Italy', '20323902030'),
(20, 'Dimaria Anggota', 'Argentina', '232424242');

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `id_buku` int(11) NOT NULL,
  `nama_buku` varchar(255) NOT NULL,
  `pengarang` varchar(255) NOT NULL,
  `penerbit` varchar(255) NOT NULL,
  `tahun_terbit` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id_buku`, `nama_buku`, `pengarang`, `penerbit`, `tahun_terbit`) VALUES
(1, 'Pengenalan SQL', 'John Doe', 'Tech Press', '2023'),
(2, 'Pengembangan Web Modern', 'Jane Smith', 'Web Publishers', '2022'),
(3, 'Data Science untuk Pemula', 'Alice Johnson', 'Data Insights', '2021'),
(4, 'Manajemen Proyek Agile', 'Robert Brown', 'Project Master', '2020'),
(5, 'Kiat Sukses Berbisnis', 'Linda White', 'Business Hub', '2024'),
(6, 'Teknik Jaringan Lanjut', 'Michael Green', 'Network Experts', '2023'),
(7, 'Algoritma dan Struktur Data', 'Sarah Miller', 'Code Academy', '2021'),
(8, 'Matematika Diskrit', 'James Wilson', 'Academic Press', '2022'),
(9, 'Sistem Operasi Modern', 'Emily Davis', 'Tech Books', '2020'),
(10, 'Desain Grafis Digital', 'David Clark', 'Creative Studio', '2024'),
(11, 'Keamanan Siber', 'Jessica Taylor', 'Security Zone', '2023'),
(12, 'Dasar-Dasar Python', 'Daniel Anderson', 'Programming World', '2021'),
(13, 'Strategi Investasi', 'Laura Martinez', 'Finance Press', '2022'),
(14, 'Psikologi dan Teknologi', 'Paul Thomas', 'Mind Tech', '2023'),
(15, 'Kreativitas dalam Menulis', 'Nancy Rodriguez', 'Writers Guild', '2024'),
(16, 'Sistem Pakar Penyakit Kulit Menggunakan Metode Forward dan Backward chaining', 'Thoriq, S.Kom', 'Unsam', '2023'),
(19, 'Sistem Pakar Penyakit Kulit Menggunakan Metode Forward dan Backward chaining', 'Thoriq, S.Kom', 'Universitas samudra', '2023'),
(22, 'Pengenalan MySql', 'John Doe', 'Tech Press', '2027'),
(26, 'PHP Studi Kasus', 'Bpk. Dimaria', 'argentina', '2023');

-- --------------------------------------------------------

--
-- Table structure for table `denda`
--

CREATE TABLE `denda` (
  `id_denda` int(11) NOT NULL,
  `id_peminjam` int(11) DEFAULT NULL,
  `denda` int(11) DEFAULT NULL,
  `waktu_pengembalian` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `denda`
--

INSERT INTO `denda` (`id_denda`, `id_peminjam`, `denda`, `waktu_pengembalian`) VALUES
(25, 37, 130000, '2024-07-04 00:00:00'),
(26, 38, 115000, '2024-07-07 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `peminjam`
--

CREATE TABLE `peminjam` (
  `id_peminjam` int(11) NOT NULL,
  `id_anggota` int(11) DEFAULT NULL,
  `id_buku` int(11) DEFAULT NULL,
  `status` enum('belum kembali','sudah kembali') NOT NULL DEFAULT 'belum kembali'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `peminjam`
--

INSERT INTO `peminjam` (`id_peminjam`, `id_anggota`, `id_buku`, `status`) VALUES
(37, 1, 1, 'belum kembali'),
(38, 6, 5, 'belum kembali');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`) VALUES
('66a757a7013b1', 'dimaria');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `password`, `username`) VALUES
(1, 'thoriq', '$2y$10$iAdafP.LtfuneIt//K9m1eMIunVNY0aAUBsFbOqIjOmug2I/pCuuS', 'thoriq'),
(2, 'messi', '$2y$10$2I61r7EK7xFAFrE0mcoAOeqPgona90EZlcDHjiAaStcCzHbxFr6kS', 'messi'),
(3, 'ronaldo', '$2y$10$JuZRya0NsY3psZcMhZZhi.eTG7V/qarQmwf2Ij0T5buIzkizvz2z.', 'ronaldo'),
(4, 'neymar', '$2y$10$pxSjzVX1MqFJlrPlnYYH8Op4bEzSxk6x/oZzWSQE0BsWBLSASpAxS', 'neymar'),
(5, 'dimaria', '$2y$10$yFW5m7ubCv.htr.xW2qvre/2ZuD3Ol3ugm/N2L7nubuJXaAN.G.a6', 'dimaria');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`id_anggota`),
  ADD UNIQUE KEY `nik` (`nik`);

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id_buku`);

--
-- Indexes for table `denda`
--
ALTER TABLE `denda`
  ADD PRIMARY KEY (`id_denda`),
  ADD KEY `id_peminjam` (`id_peminjam`);

--
-- Indexes for table `peminjam`
--
ALTER TABLE `peminjam`
  ADD PRIMARY KEY (`id_peminjam`),
  ADD KEY `id_anggota` (`id_anggota`),
  ADD KEY `id_buku` (`id_buku`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_sessions_user` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `anggota`
--
ALTER TABLE `anggota`
  MODIFY `id_anggota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `id_buku` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `denda`
--
ALTER TABLE `denda`
  MODIFY `id_denda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `peminjam`
--
ALTER TABLE `peminjam`
  MODIFY `id_peminjam` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `denda`
--
ALTER TABLE `denda`
  ADD CONSTRAINT `denda_ibfk_1` FOREIGN KEY (`id_peminjam`) REFERENCES `peminjam` (`id_peminjam`);

--
-- Constraints for table `peminjam`
--
ALTER TABLE `peminjam`
  ADD CONSTRAINT `peminjam_ibfk_1` FOREIGN KEY (`id_anggota`) REFERENCES `anggota` (`id_anggota`),
  ADD CONSTRAINT `peminjam_ibfk_2` FOREIGN KEY (`id_buku`) REFERENCES `buku` (`id_buku`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
