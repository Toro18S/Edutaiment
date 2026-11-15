-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 14, 2021 at 04:00 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `edutainment`
--

-- --------------------------------------------------------

--
-- Table structure for table `game`
--

CREATE TABLE `game` (
  `id_game` int(11) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `swf` text NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `game`
--

INSERT INTO `game` (`id_game`, `judul`, `swf`, `tanggal`) VALUES
(15, 'Game Edukasi', 'kuis.swf', '2021-04-30');

-- --------------------------------------------------------

--
-- Table structure for table `materi`
--

CREATE TABLE `materi` (
  `id_materi` int(11) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `isimateri` text NOT NULL,
  `swf` varchar(100) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `materi`
--

INSERT INTO `materi` (`id_materi`, `judul`, `isimateri`, `swf`, `tanggal`) VALUES
(32, 'Blender', '<p style=\"text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"background-color:white\">Blender</span></span><span style=\"font-size:10.5pt\"><span style=\"background-color:white\"> adalah </span></span><a href=\"https://id.wikipedia.org/wiki/Perangkat_lunak_sumber_terbuka\" title=\"Perangkat lunak sumber terbuka\"><span style=\"font-size:10.5pt\"><span style=\"background-color:white\">perangkat lunak sumber terbuka</span></span></a> <a href=\"https://id.wikipedia.org/wiki/Grafika_komputer_3D\" title=\"Grafika komputer 3D\"><span style=\"font-size:10.5pt\"><span style=\"background-color:white\">grafika komputer 3D</span></span></a><span style=\"font-size:10.5pt\"><span style=\"background-color:white\">.Perangkat lunak ini digunakan untuk membuat </span></span><a href=\"https://id.wikipedia.org/wiki/Film_animasi\" title=\"Film animasi\"><span style=\"font-size:10.5pt\"><span style=\"background-color:white\">film animasi</span></span></a><span style=\"font-size:10.5pt\"><span style=\"background-color:white\">, efek visual, model cetak 3D, aplikasi 3D interaktif dan video</span></span><span style=\"font-size:10.5pt\"><span style=\"background-color:white\"> game</span></span><span style=\"font-size:10.5pt\"><span style=\"background-color:white\">. Blender memiliki beberapa fitur termasuk pemodelan 3D, penteksturan, penyunting gambar bitmap, penulangan, simulasi cairan dan asap, simulasi partikel, animasi, penyunting video, pemahat digital dan rendering.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"background-color:white\">Bermula Padatahun 1988-an Ton Roosendaal mendanai sebuah perusahaan yang bergerak dibidang animasi yang dinamakan NeoGeo. Pada tahun 1995 muncullah sebuah perangkat lunak yang pada akhirnya dinamakan Blender. Setelah diamati lebih dalam ternyata Blender ini memiliki potensi untuk digunakan oleh artis&ndash;artis di luar NeoGeo. Lalu padatahun 1998 Ton mendirikan perusahaan yang bernama Not a Number (NaN) Untuk mengembangkan dan memasarkan Blender lebih jauh.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:10.5pt\"><span style=\"background-color:white\">K</span></span><span style=\"font-size:10.5pt\"><span style=\"background-color:white\">arena tidakingin Blender hilang ditelan waktu dan zaman begitu saja, Ton Roosendaal mendirikan organisasi non profit yang bernama Blender Foundation. Tujuan utama Blender Foundation adalah terus mempromosikan dan mengembangkan Blender sebagai proyek sumber terbuka. Pada tahun 2002 Blender dirilis ulang di bawah syarat&ndash;syarat GNU General Public License. Pengembangan Blender terus berlanjut hingga saat ini.</span></span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n', 'asli.swf', '2021-04-24');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_loginsiswa`
--

CREATE TABLE `tabel_loginsiswa` (
  `id_loginsiswa` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `nis` varchar(10) NOT NULL,
  `kelas` varchar(10) NOT NULL,
  `aktif` enum('N','Y') NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tabel_loginsiswa`
--

INSERT INTO `tabel_loginsiswa` (`id_loginsiswa`, `tanggal`, `nis`, `kelas`, `aktif`, `nama`, `username`, `password`) VALUES
(2, '2021-04-29', '', '6-A', 'Y', 'Ibnu', '12345', 'saad');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_nilai`
--

CREATE TABLE `tabel_nilai` (
  `id_nilai` int(11) NOT NULL,
  `benar` int(4) NOT NULL,
  `salah` int(4) NOT NULL,
  `kosong` int(4) NOT NULL,
  `poin` int(4) NOT NULL,
  `id_loginsiswa` int(11) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tabel_nilai`
--

INSERT INTO `tabel_nilai` (`id_nilai`, `benar`, `salah`, `kosong`, `poin`, `id_loginsiswa`, `tanggal`) VALUES
(1, 12, 0, 0, 40, 2, '2021-04-30');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_soal`
--

CREATE TABLE `tabel_soal` (
  `id_soal` int(11) NOT NULL,
  `pertanyaan` text NOT NULL,
  `pilihan_a` text NOT NULL,
  `pilihan_b` text NOT NULL,
  `pilihan_c` text NOT NULL,
  `pilihan_d` text NOT NULL,
  `jawaban` varchar(100) NOT NULL,
  `publish` enum('yes','no') NOT NULL,
  `tipe` int(5) NOT NULL,
  `pilihan_e` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tabel_soal`
--

INSERT INTO `tabel_soal` (`id_soal`, `pertanyaan`, `pilihan_a`, `pilihan_b`, `pilihan_c`, `pilihan_d`, `jawaban`, `publish`, `tipe`, `pilihan_e`) VALUES
(18, '<p><span style=\"font-size:14px\">Yang BUKAN merupakan peranan storyboard pada animasi adalah&hellip;.</span></p>\r\n', 'Storyboard dibuat untuk menjelaskan skenario secara lebih detail dari detik demi detik', 'Storyboard menjelaskan tentang susunan materi yang disampaikan pada detik demi detik beserta suaranya', 'Storyboard menjelaskan tentang susunan materi yang disampaikan pada detik demi detik beserta grafisnya', 'Storyboard menjelaskan tentang susunan materi yang disampaikan pada detik demi detik beserta animasi dan video yang dibutuhkannya', 'a', 'yes', 0, 'Storyboard menjelaskan tentang susunan materi yang disampaikan pada detik demi detik beserta biaya pembuatan dan nama-nama kru yang terlibat'),
(19, '<p><span style=\"font-size:14px\">Berikut ini merupakan kaidah-kaidah dalam pembuatan film animasi, KECUALI&hellip;.</span></p>\r\n', 'Kaidah Penciptaan Gerak', 'Kaidah Pengaturan Waktu (timing)', 'Kaidah Sebab Akibat', 'Kaidah Gerakan Newton', 'a', 'yes', 0, 'Kaidah Relativitas Einstein'),
(20, '<p><span style=\"font-size:14px\">Hasil dari pengolahan gambar tangan sehingga menjadi gambar yang bergerak disebut dengan&hellip;.</span></p>\r\n', 'Film', 'Movie', 'Animasi', 'Cinema', 'a', 'yes', 0, 'Diorama'),
(21, '<p><span style=\"font-size:14px\">Teknik animasi untuk membuat objek yang dimanipulasi secara fisik agar terlihat bergerak sendiri, dan biasanya dibuat dari gabungan dari foto-foto, dengan mayoritas tokoh animasinya dibuat menggunakan lilin/tanah liat adalah animasi&hellip;.</span></p>\r\n', 'Animasi Komputer', 'Animasi stop motion', 'Animasi komputer', 'Animasi tiga dimensi', 'a', 'yes', 0, 'Animasi model'),
(22, '<p><span style=\"font-size:14px\">Animasi tradisional juga sering disebut &hellip; karena tehnik pengerjaannya dilakukan pada celluloid transparent yang sekilas mirip sekali dengan transparansi OHP yang sering kita gunakan.</span></p>\r\n', 'Animasi tiga dimensi', 'Cel animation', 'Stop motion', 'Story board', 'a', 'yes', 0, 'Scene'),
(23, '<p><span style=\"font-size:14px\">salah satu tokoh pengembang dari blender</span></p>\r\n', 'thomas knoll', 'steve jobs', 'Roy E. Disney\r\n\r\n\r\n', 'ton roosendaal', 'a', 'yes', 0, 'georgelucas'),
(24, '<p><span style=\"font-size:14px\">Seni menghasilkan gambar bergerak dengan sendirinya, melalui penggunaan komputer disebut dengan&hellip;.</span></p>\r\n', 'Animasi komputer', 'Animasi stop motion', 'Animasi tradisional', 'Animasi digital', 'a', 'yes', 0, 'Animasi analog'),
(25, '<p><span style=\"font-size:14px\">Tempat pengaturan timing atau waktu animasi dan penggabungan objek-objek dari masing-masing layer adalah pengertian dari istilah&hellip;.</span></p>\r\n', 'Pixel', 'Layer', 'Frame', 'Timeline', 'a', 'yes', 0, 'Scene'),
(26, '<p><span style=\"font-size:14px\">Ketika kita hendak merender di blender, maka tombol pada keyboard untuk menjalankan perintah render adalah&nbsp;</span></p>\r\n', 'F9', 'F4', 'F12', 'M', 'a', 'yes', 0, 'N'),
(27, '<p><span style=\"font-size:14px\">Tombol pada keyboard untuk mengeluarkan perintah Hapus di blender adalah&nbsp;</span></p>\r\n', 'F10', 'F4', 'X', 'M', 'a', 'yes', 0, 'H'),
(43, '<p><span style=\"font-size:14px\">Untuk memasuki mode Camera pada blender digunakan tombol</span></p>\r\n', 'F12', 'F3', 'Numpad 0', 'Numpad 5', 'a', 'yes', 0, 'Z'),
(44, '<p><span style=\"font-size:14px\">ketika sebuah file yang dihasilkan oleh software 3D, file tersebut akan disimpan dalam ekstensi tertentu. jika *.blend, maka file tersebut&nbsp; adalah file&nbsp;</span></p>\r\n', 'lightwave 3D', 'Maya', 'Cinema 4D', '3DS Max', 'a', 'yes', 0, 'Blender'),
(45, '<p><span style=\"font-size:14px\">Pengembang Blender adalah...</span></p>\r\n', 'NeoGeo\r\n', 'Pixar', 'Discreet', 'Alias', 'a', 'yes', 0, 'Wave front');

-- --------------------------------------------------------

--
-- Table structure for table `timer`
--

CREATE TABLE `timer` (
  `id` int(11) NOT NULL,
  `waktu` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `timer`
--

INSERT INTO `timer` (`id`, `waktu`) VALUES
(1, 60);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`) VALUES
(1, 'admin', 'e10adc3949ba59abbe56e057f20f883e');

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `id` int(10) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `link` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `game`
--
ALTER TABLE `game`
  ADD PRIMARY KEY (`id_game`);

--
-- Indexes for table `materi`
--
ALTER TABLE `materi`
  ADD PRIMARY KEY (`id_materi`);

--
-- Indexes for table `tabel_loginsiswa`
--
ALTER TABLE `tabel_loginsiswa`
  ADD PRIMARY KEY (`id_loginsiswa`);

--
-- Indexes for table `tabel_nilai`
--
ALTER TABLE `tabel_nilai`
  ADD PRIMARY KEY (`id_nilai`);

--
-- Indexes for table `tabel_soal`
--
ALTER TABLE `tabel_soal`
  ADD PRIMARY KEY (`id_soal`);

--
-- Indexes for table `timer`
--
ALTER TABLE `timer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `game`
--
ALTER TABLE `game`
  MODIFY `id_game` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `materi`
--
ALTER TABLE `materi`
  MODIFY `id_materi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `tabel_loginsiswa`
--
ALTER TABLE `tabel_loginsiswa`
  MODIFY `id_loginsiswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tabel_nilai`
--
ALTER TABLE `tabel_nilai`
  MODIFY `id_nilai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tabel_soal`
--
ALTER TABLE `tabel_soal`
  MODIFY `id_soal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `timer`
--
ALTER TABLE `timer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
