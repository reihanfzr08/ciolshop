-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 20, 2020 at 07:02 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ciolshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_barang`
--

CREATE TABLE `tb_barang` (
  `id_brg` int(11) NOT NULL,
  `nama_brg` varchar(120) NOT NULL,
  `keterangan` varchar(225) NOT NULL,
  `kategori` varchar(60) NOT NULL,
  `harga` int(11) NOT NULL,
  `stok` int(4) NOT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_barang`
--

INSERT INTO `tb_barang` (`id_brg`, `nama_brg`, `keterangan`, `kategori`, `harga`, `stok`, `gambar`) VALUES
(24, 'Fender Standard Stratocaster HH RW Fretboard Black', 'Gitar Elektrik, 100% Original', 'Gitar dan Bass', 10000000, 2, 'Fender_Standard_Stratocaster_HH_RW_Fretboard_Black.jpg'),
(28, 'Marshall AS100D Acoustic Combo Amp', 'Preamp, 100% Original, Germany', 'Aksesoris', 6500000, 21, 'Marshall_AS100D_Acoustic_Combo_Amp.jpg'),
(29, 'Roland TD-17KVX V-Drums Electronic Drum Set', 'Drum Kit Elektrik, Langka, 100% Original, USA', 'Drum', 75000000, 2, 'Roland_TD-17KVX_V-Drums_Electronic_Drum_Set.jpg'),
(30, 'Zildjian 5A Natural Finish Wood Tip Drumsticks', 'Stikdrum, 100% Original', 'Aksesoris', 150000, 25, 'Zildjian_5A_Natural_Finish_Wood_Tip_Drumsticks.jpg'),
(31, 'Zoom G11 Multi-Effects Processor with Expression Pedal', 'Pedal, 100% Original', 'Aksesoris', 2000000, 3, 'Zoom_G11_Multi-Effects_Processor_with_Expression_Pedal.jpg'),
(32, 'Lespoir 4.4 Full Solid Wood Violin Hardcase Bow Rosin VL-44W Putih', 'Biola, 100% Original, Kanada', 'Biola', 6500000, 3, 'Lespoir_4_4_Full_Solid_Wood_Violin_Hardcase_Bow_Rosin_VL-44W_Putih.jpg'),
(33, 'Yamaha APX-600 Vintage Electric Acoustic GuitarB1026 White', 'Gitar Akustik, 100% Original, Jepang', 'Gitar dan Bass', 750000, 14, 'Yamaha_APX-600_Vintage_Electric_Acoustic_GuitarB1026_White.jpg'),
(34, 'Yamaha APX-500II Electric Acoustic Guitar', 'Gitar Akustik, 100% Original, Jepang', 'Gitar dan Bass', 1500000, 11, 'Yamaha_APX-500II_Electric_Acoustic_Guitar.jpg'),
(35, 'Roland KC-990 - 320W 2x12 Keyboard Amp', 'Amp, 100% Original, USA', 'Aksesoris', 7500000, 4, 'Roland_KC-990_-_320W_2x12_Keyboard_Amp.jpg'),
(36, 'Korg - Pa700 RD', 'Piano, Stok Terbatas, 100% Original, USA', 'Piano', 15000000, 2, 'Korg_-_Pa700_RD.jpg'),
(37, 'Korg - Krome Ex Cooper', 'Piano, Pemula, 100% Original, Inggris', 'Piano', 7500000, 11, 'Korg_-_Krome_Ex_Cooper.jpg'),
(38, 'KARL STEINHOFF KS-V12W VIOLIN 4-4 SIZEly Bird JS2 4 TBS', 'Biola, Sangat Langka, 100% Original, USA', 'Biola', 150000000, 1, 'KARL_STEINHOFF_KS-V12W_VIOLIN_4-4_SIZEly_Bird_JS2_4_TBS.jpg'),
(39, 'Jackson Kelly Bird JS2 4 TBS', 'Gitar Elektrik, 100% Original, USA', 'Gitar dan Bass', 6500000, 6, 'Jackson_Kelly_Bird_JS2_4_TBS.jpg'),
(40, 'Jackson C20 Concert Bass', 'Bass, Langka, 100% Original, Inggris', 'Gitar dan Bass', 2500000, 2, 'Jackson_C20_Concert_Bass1.jpg'),
(41, 'Hercules GS414B Plus - Hanging Guitar Stand with Auto Grip System', 'Gantungan Gitar, 100% Original, Swiss', 'Aksesoris', 1500000, 4, 'Hercules_GS414B_Plus_-_Hanging_Guitar_Stand_with_Auto_Grip_System.jpg'),
(42, 'Hercules DS571BB ViolinViola Stand with Bag', 'Gantungan Biola, 100% Original, Norwegia', 'Aksesoris', 1200000, 3, 'Hercules_DS571BB_ViolinViola_Stand_with_Bag.jpg'),
(46, 'Fender Standard Stratocaster HH RW Olympic White', 'Gitar Listrik, 100% Original, Inggris', 'Gitar dan Bass', 9500000, 3, 'Fender_Standard_Stratocaster_HH_RW_Olympic_White.jpg'),
(48, 'Gibson - 1968 Les Paul Custom Reissue', 'Gitar Listrik, Langka, 100% Original, USA', 'Gitar dan Bass', 55000000, 2, 'Gibson_-_1968_Les_Paul_Custom_Reissue.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tb_invoice`
--

CREATE TABLE `tb_invoice` (
  `id` int(11) NOT NULL,
  `nama` varchar(60) NOT NULL,
  `alamat` varchar(225) NOT NULL,
  `tgl_pesan` datetime NOT NULL,
  `batas_bayar` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_invoice`
--

INSERT INTO `tb_invoice` (`id`, `nama`, `alamat`, `tgl_pesan`, `batas_bayar`) VALUES
(1, 'zohan', 'Malang', '2020-10-19 15:36:21', '2020-10-20 15:36:21'),
(2, 'Sebastian', 'Jalan Kalimalang Kab. Malang Jawa Timur', '2020-10-19 17:33:26', '2020-10-20 17:33:26'),
(4, 'Johan', 'Malang', '2020-10-20 00:06:06', '2020-10-21 00:06:06'),
(5, 'Gian Luigi', 'Jalan Kalimalang Kab. Malang Jawa Timur', '2020-10-20 13:26:05', '2020-10-21 13:26:05'),
(7, 'Kael', 'Jl. Mawar', '2020-12-20 11:37:37', '2020-12-21 11:37:37');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pesanan`
--

CREATE TABLE `tb_pesanan` (
  `id` int(11) NOT NULL,
  `id_invoice` int(11) NOT NULL,
  `id_brg` int(11) NOT NULL,
  `nama_brg` varchar(50) NOT NULL,
  `jumlah` int(3) NOT NULL,
  `harga` int(10) NOT NULL,
  `pilihan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pesanan`
--

INSERT INTO `tb_pesanan` (`id`, `id_invoice`, `id_brg`, `nama_brg`, `jumlah`, `harga`, `pilihan`) VALUES
(1, 1, 3, 'Blazer', 1, 500000, ''),
(2, 2, 1, 'All Stars', 1, 300000, ''),
(3, 2, 4, 'Nike Casual', 1, 500000, ''),
(4, 2, 2, 'Vans Sneaker', 1, 300000, ''),
(5, 4, 4, 'Nike Casual', 1, 500000, ''),
(6, 4, 1, 'All Stars', 1, 300000, ''),
(7, 5, 15, 'Bola', 1, 400000, ''),
(8, 6, 2, 'Vans Sneakerz', 1, 300000, ''),
(9, 6, 3, 'Blazer', 1, 500000, ''),
(10, 7, 24, 'Fender Standard Stratocaster HH RW Fretboard Black', 3, 10000000, '');

--
-- Triggers `tb_pesanan`
--
DELIMITER $$
CREATE TRIGGER `update_stok_barang` AFTER INSERT ON `tb_pesanan` FOR EACH ROW BEGIN 
UPDATE tb_barang SET stok = stok-NEW.jumlah
WHERE id_brg=NEW.id_brg;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role_id` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id`, `nama`, `username`, `password`, `role_id`) VALUES
(1, 'Administrator', 'admin', '123', 1),
(2, 'Pengunjung', 'user', 'user', 2),
(8, 'han', 'han', 'han', 2),
(9, 'han', 'han', 'han', 2),
(10, 'thesyams.rebel8@gmail.com', 'samrmdhn', 'ass123ass', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_barang`
--
ALTER TABLE `tb_barang`
  ADD PRIMARY KEY (`id_brg`);

--
-- Indexes for table `tb_invoice`
--
ALTER TABLE `tb_invoice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_pesanan`
--
ALTER TABLE `tb_pesanan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_barang`
--
ALTER TABLE `tb_barang`
  MODIFY `id_brg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `tb_invoice`
--
ALTER TABLE `tb_invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tb_pesanan`
--
ALTER TABLE `tb_pesanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
