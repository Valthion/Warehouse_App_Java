-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 12 Feb 2021 pada 06.48
-- Versi server: 10.1.37-MariaDB
-- Versi PHP: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gudang`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `db_admin`
--

CREATE TABLE `db_admin` (
  `user_name` varchar(10) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `db_admin`
--

INSERT INTO `db_admin` (`user_name`, `password`) VALUES
('ABC', '123'),
('valen', 'valen'),
('yosua', '1212');

-- --------------------------------------------------------

--
-- Struktur dari tabel `db_barang`
--

CREATE TABLE `db_barang` (
  `kode_barang` varchar(5) NOT NULL,
  `Nama` varchar(30) NOT NULL,
  `Jenis` varchar(30) NOT NULL,
  `Harga` int(30) NOT NULL,
  `Jumlah_Total` int(30) NOT NULL,
  `Supplier` varchar(30) NOT NULL,
  `Tanggal` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `db_barang`
--

INSERT INTO `db_barang` (`kode_barang`, `Nama`, `Jenis`, `Harga`, `Jumlah_Total`, `Supplier`, `Tanggal`) VALUES
('001', 'Indomie', 'Makanan', 1750, 270, 'PT. Indofood Sukses Makmur', '22/3/2019'),
('002', 'Pocari Sweat 500 ml', 'Minuman', 4500, 750, 'Otsuka Pharmaceutical', '22/3/2018'),
('003', 'Aqua 1000 ml', 'Minuman', 6800, 350, 'PT. Tirta Investama', '17/8/2018'),
('004', 'Ayam Potong', 'Makanan', 38000, 18, 'PT. Japfa', '15/3/2019'),
('005', 'FIESTA Nugget', 'Makanan', 40000, 50, 'PT. Charoen Pokphand', '1/4/2019'),
('006', 'Mie Sukses', 'Makanan', 1800, 90, 'PT. Wings', '2/4/2019'),
('007', 'FIESTA Karaage', 'Makanan', 40000, 20, 'PT. Charoen Pokphand', '3/4/2019'),
('008', 'FIESTA Burger', 'Makanan', 40000, 50, 'PT. Charoen Pokphand', '7/4/2019'),
('009', 'So Good Nugget', 'Makanan', 40000, 50, 'PT. So Good', '9/4/2019'),
('010', 'KIMBO Sosis', 'Makanan', 37000, 25, 'PT. Indopangan', '10/4/2018'),
('011', 'Van Houten Choco Bar', 'Makanan', 8500, 55, 'PT. Ceres Indonesia', '13/2/2018'),
('012', 'Cadbury Bar', 'Makanan', 9000, 70, 'PT. Cadbury Indonesia', '20/2/2018'),
('013', 'Teh Pucuk', 'Minuman', 2700, 120, 'PT. Mayora', '20/3/2018'),
('014', 'Tongtji Celup', 'Minuman', 1250, 200, 'PT. Tongtji', '21/3/2018'),
('015', 'Frisian Flag Choco', 'Minuman', 19000, 130, 'Friesland Campina', '3/3/2018'),
('016', 'CHAMP Nugget', 'Makanan', 27000, 50, 'PT. Charoen Pokphand', '25/2/2018'),
('017', 'Ades 450 ml', 'Minuman', 1850, 250, 'PT. Coca Cola', '29/3/2018'),
('018', 'Tora Bika Latte', 'Minuman', 1700, 200, 'PT. Mayora Indah', '23/3/2019'),
('019', 'Mie Burung Dara', 'Makanan', 2500, 150, 'PT. Kuala Pangan', '15/2/2019'),
('020', 'Cotton Bud Char Mi', 'Personal Care', 5500, 120, 'PT. Char Mi', '29/3/2018'),
('021', 'Garnier Acno Fight', 'Personal Care', 12500, 90, 'PT. Garnier Indonesia', '23/4/2019'),
('022', 'Mamy Poko', 'Perlengkapan Bayi', 25000, 80, 'PT. Unilever', '12/2/2018'),
('023', 'PANTENE ANTI DANDRUFF', 'Personal Care', 13500, 110, 'PT. Unilever', '17//3/2018'),
('024', 'Durex', 'Personal Care', 9500, 110, 'PT. Perkasa', '31/1/2018'),
('026', 'Blue Band', 'Makanan', 3500, 200, 'PT. Unilever', '28/4/2019'),
('027', 'FILMA', 'Makanan', 17500, 100, 'PT. Wilmar', '20/12/2018'),
('212', 'Ayam Kremes Bu Indra', 'Makanan', 50000, 10, 'Bu Indra', '6/9/2020');

-- --------------------------------------------------------

--
-- Struktur dari tabel `db_pegawai`
--

CREATE TABLE `db_pegawai` (
  `user_name` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `db_pegawai`
--

INSERT INTO `db_pegawai` (`user_name`, `password`) VALUES
('josep', '1212'),
('yusak', '8888');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `db_admin`
--
ALTER TABLE `db_admin`
  ADD PRIMARY KEY (`user_name`);

--
-- Indeks untuk tabel `db_barang`
--
ALTER TABLE `db_barang`
  ADD PRIMARY KEY (`kode_barang`);

--
-- Indeks untuk tabel `db_pegawai`
--
ALTER TABLE `db_pegawai`
  ADD PRIMARY KEY (`user_name`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
