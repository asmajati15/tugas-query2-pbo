-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 25 Jan 2023 pada 07.56
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_transaksi`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `konsumen`
--

CREATE TABLE `konsumen` (
  `kd_konsumen` int(11) NOT NULL,
  `nama` varchar(30) DEFAULT NULL,
  `jumlah_transaksi` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `konsumen`
--

INSERT INTO `konsumen` (`kd_konsumen`, `nama`, `jumlah_transaksi`) VALUES
(1, 'Max Verstappen', 16),
(2, 'Charles Leclerc', 16),
(3, 'Sergio Perez', 16),
(4, 'George Russel', 15),
(5, 'Carlos Sainz', 15),
(6, 'Lewis Hamilton', 9),
(7, 'Lando Norris', 9),
(8, 'Esteban Ocon', 8),
(9, 'Fernando Alonso', 8),
(10, 'Valterri Bottas', 8);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `kd_transaksi` int(11) NOT NULL,
  `kd_konsumen` int(11) DEFAULT NULL,
  `nama_barang` varchar(30) DEFAULT NULL,
  `jenis_barang` char(2) DEFAULT NULL,
  `harga` int(6) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `toko` char(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`kd_transaksi`, `kd_konsumen`, `nama_barang`, `jenis_barang`, `harga`, `tanggal`, `toko`) VALUES
(1, 1, 'Accu', 'A', 200000, '2021-10-22', 'BG'),
(2, 1, 'Spul', 'A', 80000, '2021-10-22', 'BD'),
(3, 1, 'Kiprok', 'A', 110000, '2021-10-22', 'BG'),
(4, 2, 'Daymaker', 'A', 250000, '2021-06-14', 'BG'),
(5, 2, 'Piston', 'B', 130000, '2021-06-14', 'CJ'),
(6, 2, 'Blok Mesin', 'B', 250000, '2021-06-14', 'CJ'),
(7, 3, 'Cover Aki', 'C', 620000, '2021-08-03', 'BD'),
(8, 3, 'Batok Lampu', 'C', 950000, '2021-08-03', 'BD'),
(9, 3, 'Sein LED', 'A', 50000, '2021-08-03', 'JK'),
(10, 4, 'Rantai SSS', 'B', 156000, '2021-12-12', 'JK'),
(11, 4, 'Paking Set', 'B', 72000, '2021-12-12', 'JK'),
(12, 4, 'Ring Piston', 'B', 25000, '2021-12-12', 'BD'),
(13, 5, 'Body Depan Set', 'C', 300000, '2022-01-15', 'BG'),
(14, 5, 'Body Belakang Set', 'C', 150000, '2022-01-15', 'BD'),
(15, 5, 'Daymaker', 'A', 200000, '2022-01-15', 'JK'),
(16, 6, 'Daymaker', 'A', 220000, '2022-02-22', 'JK'),
(17, 6, 'Girset 34T', 'B', 67000, '2022-02-22', 'JK'),
(18, 6, 'Girset 14T', 'B', 25000, '2022-02-22', 'BG'),
(19, 7, 'Body Full Set', 'C', 880000, '2022-09-30', 'BG'),
(20, 7, 'Reflektor Depan', 'C', 350000, '2022-09-30', 'BG'),
(21, 7, 'Baut Body', 'C', 5000, '2022-09-30', 'CJ'),
(22, 8, 'Super Head', 'B', 350000, '2022-11-07', 'CJ'),
(23, 8, 'Forged Piston', 'B', 170000, '2022-11-07', 'CJ'),
(24, 8, 'Paking Set', 'B', 80000, '2022-11-07', 'JK'),
(25, 9, 'Biled AES', 'A', 300000, '2022-12-22', 'JK'),
(26, 9, 'Spul', 'A', 99000, '2022-12-22', 'BG'),
(27, 9, 'Kabel Body', 'A', 40000, '2022-12-22', 'BG'),
(28, 10, 'Spakbor', 'C', 37000, '2023-01-09', 'BD'),
(29, 10, 'Cover Shock', 'C', 25000, '2023-01-09', 'BD'),
(30, 10, 'Body Samping', 'C', 70000, '2023-01-09', 'BD'),
(31, 1, 'Kaliper RCB R1', 'B', 1400000, '2021-10-22', 'BD'),
(32, 2, 'Kaliper RCB R1', 'B', 1400000, '2021-10-22', 'BD'),
(33, 3, 'Kaliper RCB R1', 'B', 400000, '2021-10-22', 'BD'),
(34, 4, 'Kaliper RCB R1', 'B', 1400000, '2021-10-22', 'BD'),
(35, 5, 'Kaliper RCB R1', 'B', 1400000, '2021-10-22', 'BD'),
(36, 1, 'Kaliper RCB R1', 'B', 1400000, '2021-10-22', 'BD'),
(37, 2, 'Kaliper RCB R1', 'B', 1400000, '2021-10-22', 'BD'),
(38, 3, 'Kaliper RCB R1', 'B', 1400000, '2021-10-22', 'BD'),
(39, 1, 'Kaliper RCB R1', 'B', 1400000, '2022-02-12', 'BG'),
(40, 2, 'Kaliper RCB R1', 'B', 1400000, '2022-02-12', 'BG'),
(41, 3, 'Kaliper RCB R1', 'B', 1400000, '2022-02-12', 'BG'),
(42, 4, 'Kaliper RCB R1', 'B', 1400000, '2022-02-12', 'BG'),
(43, 5, 'Kaliper RCB R1', 'B', 1400000, '2022-02-12', 'BG'),
(44, 6, 'Kaliper Brembo M4', 'B', 4700000, '2022-02-12', 'CJ'),
(45, 7, 'Kaliper Brembo M4', 'B', 4700000, '2022-02-12', 'CJ'),
(46, 6, 'Kaliper Brembo M4', 'B', 4700000, '2022-02-12', 'CJ'),
(47, 7, 'Kaliper Brembo M4', 'B', 4700000, '2022-02-12', 'CJ'),
(48, 8, 'Kaliper Brembo M4', 'B', 4700000, '2022-10-22', 'CJ'),
(49, 9, 'Kaliper Brembo M4', 'B', 4700000, '2022-07-13', 'CJ'),
(50, 10, 'Kaliper Brembo M4', 'B', 4700000, '2022-07-13', 'CJ'),
(51, 1, 'Kaliper Nissin Samurai', 'B', 2500000, '2022-07-13', 'JK'),
(52, 2, 'Kaliper Nissin Samurai', 'B', 2500000, '2022-07-13', 'JK'),
(53, 3, 'Kaliper Nissin Samurai', 'B', 2500000, '2022-07-13', 'JK'),
(54, 4, 'Kaliper Nissin Samurai', 'B', 2500000, '2022-07-13', 'JK'),
(55, 5, 'Kaliper Nissin Samurai', 'B', 2500000, '2022-07-13', 'JK'),
(56, 1, 'Kaliper Nissin Samurai', 'B', 2500000, '2022-07-13', 'JK'),
(57, 2, 'Kaliper Nissin Samurai', 'B', 2500000, '2022-07-13', 'JK'),
(58, 3, 'Kaliper Nissin Samurai', 'B', 2500000, '2022-07-13', 'JK'),
(59, 4, 'Kaliper Nissin Samurai', 'B', 2500000, '2022-07-13', 'JK'),
(60, 5, 'Kaliper Nissin Samurai', 'B', 2500000, '2022-10-22', 'JK'),
(61, 1, 'Kaliper Nissin Samurai', 'B', 2500000, '2022-10-22', 'JK'),
(62, 2, 'Kaliper Nissin Samurai', 'B', 2500000, '2022-10-22', 'JK'),
(63, 3, 'Kaliper Nissin Samurai', 'B', 2500000, '2022-10-22', 'JK'),
(64, 4, 'Kaliper Nissin Samurai', 'B', 2500000, '2022-10-22', 'JK'),
(65, 5, 'Kaliper Nissin Samurai', 'B', 2500000, '2022-10-22', 'JK'),
(66, 6, 'Master Rem RCB S1', 'B', 950000, '2022-10-22', 'BG'),
(67, 7, 'Master Rem RCB S1', 'B', 950000, '2021-10-22', 'BG'),
(68, 8, 'Master Rem RCB E2', 'B', 850000, '2021-10-22', 'BG'),
(69, 9, 'Master Rem RCB E2', 'B', 850000, '2021-10-22', 'BG'),
(70, 10, 'Master Rem RCB E3', 'B', 700000, '2021-10-22', 'BG'),
(71, 1, 'King Speed CNC P10', 'C', 7500000, '2022-05-22', 'BD'),
(72, 2, 'King Speed CNC P10', 'C', 7500000, '2022-05-22', 'BD'),
(73, 3, 'King Speed CNC P10', 'C', 7500000, '2022-05-22', 'BD'),
(74, 4, 'King Speed CNC P10', 'C', 7500000, '2022-05-22', 'BD'),
(75, 5, 'X Mode Vietnam', 'C', 8000000, '2022-08-12', 'BD'),
(76, 6, 'X Mode Vietnam', 'C', 8000000, '2022-08-12', 'BD'),
(77, 7, 'X Mode Vietnam', 'C', 8000000, '2022-08-12', 'BD'),
(78, 8, 'RCB SP522 Series', 'C', 2500000, '2022-09-19', 'BG'),
(79, 9, 'RCB SP522 Series', 'C', 2500000, '2022-09-19', 'BG'),
(80, 10, 'RCB SP522 Series', 'C', 2500000, '2022-09-19', 'BG'),
(81, 1, 'HELL Brake Hose', 'A', 2100000, '2021-10-22', 'BG'),
(82, 2, 'HELL Brake Hose', 'A', 2100000, '2021-10-22', 'BG'),
(83, 3, 'HELL Brake Hose', 'A', 2100000, '2021-10-22', 'BG'),
(84, 4, 'HELL Brake Hose', 'A', 2100000, '2021-10-22', 'BG'),
(85, 5, 'HELL Brake Hose', 'A', 2100000, '2021-10-22', 'BG'),
(86, 6, 'HELL Brake Hose', 'A', 2100000, '2021-10-22', 'BG'),
(87, 7, 'HELL Brake Hose', 'A', 2100000, '2021-10-22', 'BG'),
(88, 8, 'HELL Brake Hose', 'A', 2100000, '2021-10-22', 'BG'),
(89, 9, 'HELL Brake Hose', 'A', 2100000, '2021-10-22', 'BG'),
(90, 10, 'HELL Brake Hose', 'A', 2100000, '2022-11-22', 'BG'),
(91, 1, 'HELL Brake Hose', 'A', 2100000, '2022-11-22', 'BD'),
(92, 2, 'HELL Brake Hose', 'A', 2100000, '2022-11-22', 'BD'),
(93, 3, 'HELL Brake Hose', 'A', 2100000, '2022-11-22', 'BD'),
(94, 4, 'HELL Brake Hose', 'A', 2100000, '2022-11-22', 'BD'),
(95, 5, 'HELL Brake Hose', 'A', 2100000, '2022-11-22', 'BD'),
(96, 6, 'HELL Brake Hose', 'A', 2100000, '2022-11-22', 'BD'),
(97, 7, 'HELL Brake Hose', 'A', 2100000, '2022-11-22', 'BD'),
(98, 8, 'HELL Brake Hose', 'A', 2100000, '2022-11-22', 'BD'),
(99, 9, 'HELL Brake Hose', 'A', 2100000, '2022-11-22', 'BD'),
(100, 10, 'HELL Brake Hose', 'A', 2100000, '2022-11-22', 'BD'),
(101, 1, 'TDR Carbon Brake Hose', 'A', 730000, '2022-05-15', 'CJ'),
(102, 2, 'TDR Carbon Brake Hose', 'A', 730000, '2022-05-15', 'CJ'),
(103, 3, 'TDR Carbon Brake Hose', 'A', 730000, '2022-05-15', 'CJ'),
(104, 4, 'TDR Carbon Brake Hose', 'A', 730000, '2022-05-15', 'CJ'),
(105, 5, 'TDR Carbon Brake Hose', 'A', 730000, '2022-05-15', 'CJ'),
(106, 1, 'TDR Carbon Brake Hose', 'A', 730000, '2022-05-15', 'CJ'),
(107, 2, 'TDR Carbon Brake Hose', 'A', 730000, '2022-05-15', 'CJ'),
(108, 3, 'TDR Carbon Brake Hose', 'A', 730000, '2022-05-15', 'CJ'),
(109, 4, 'TDR Carbon Brake Hose', 'A', 730000, '2023-01-11', 'CJ'),
(110, 5, 'TDR Carbon Brake Hose', 'A', 730000, '2023-01-11', 'JK'),
(111, 1, 'TDR Carbon Brake Hose', 'A', 730000, '2023-01-11', 'JK'),
(112, 2, 'TDR Carbon Brake Hose', 'A', 730000, '2023-01-11', 'JK'),
(113, 3, 'TDR Carbon Brake Hose', 'A', 730000, '2023-01-11', 'JK'),
(114, 4, 'TDR Carbon Brake Hose', 'A', 730000, '2023-01-11', 'JK'),
(115, 5, 'TDR Carbon Brake Hose', 'A', 730000, '2023-01-11', 'JK'),
(116, 1, 'TDR Carbon Brake Hose', 'A', 730000, '2023-01-11', 'JK'),
(117, 2, 'TDR Carbon Brake Hose', 'A', 730000, '2023-01-11', 'JK'),
(118, 3, 'TDR Carbon Brake Hose', 'A', 730000, '2023-01-11', 'JK'),
(119, 4, 'TDR Carbon Brake Hose', 'A', 730000, '2023-01-11', 'JK'),
(120, 5, 'TDR Carbon Brake Hose', 'A', 730000, '2023-01-11', 'JK');

--
-- Trigger `transaksi`
--
DELIMITER $$
CREATE TRIGGER `transaction_history` AFTER INSERT ON `transaksi` FOR EACH ROW UPDATE konsumen SET jumlah_transaksi = konsumen.jumlah_transaksi+1 WHERE kd_konsumen = NEW.kd_konsumen
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `konsumen`
--
ALTER TABLE `konsumen`
  ADD PRIMARY KEY (`kd_konsumen`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`kd_transaksi`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `konsumen`
--
ALTER TABLE `konsumen`
  MODIFY `kd_konsumen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `kd_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
