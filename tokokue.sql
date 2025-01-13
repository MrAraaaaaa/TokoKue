-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 13 Jan 2025 pada 13.01
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tokokue`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `adm_id` int(222) NOT NULL,
  `username` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `code` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`adm_id`, `username`, `password`, `email`, `code`, `date`) VALUES
(9, 'admin1234', 'admin123', 'admin@gmail.com', 'QFE6ZM', '2024-10-11 01:24:52'),
(10, 'Muhamad Rizki', 'Iki123', '2206062@itg.ac.id', 'QMZR92', '2024-11-08 01:39:32'),
(11, 'rizki', '980f7e1259d47d86bf4ff19a5d460d5f', 'muhamadzakie19@gmail.com', 'QSTE52', '2024-11-20 10:02:03');

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin_codes`
--

CREATE TABLE `admin_codes` (
  `id` int(222) NOT NULL,
  `codes` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `admin_codes`
--

INSERT INTO `admin_codes` (`id`, `codes`) VALUES
(1, 'QX5ZMN'),
(2, 'QFE6ZM'),
(3, 'QMZR92'),
(4, 'QPGIOV'),
(5, 'QSTE52'),
(6, 'QMTZ2J');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis kue`
--

CREATE TABLE `jenis kue` (
  `rs_id` int(222) NOT NULL,
  `c_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `url` varchar(222) NOT NULL,
  `o_hr` varchar(222) NOT NULL,
  `c_hr` varchar(222) NOT NULL,
  `o_days` varchar(222) NOT NULL,
  `slogan` text NOT NULL,
  `image` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `jenis kue`
--

INSERT INTO `jenis kue` (`rs_id`, `c_id`, `title`, `email`, `phone`, `url`, `o_hr`, `c_hr`, `o_days`, `slogan`, `image`, `date`) VALUES
(48, 14, 'Bolu', 'BoluBerry@gmail.com', '0895373761194', 'BoluBerry.com', '24hour', '24hour', 'every-day', 'Lembutnya bolu di setiap gigitan, manisnya tak pernah mengecewakan!', '629f38f76bff0.jpg', '2024-11-07 04:39:35'),
(49, 12, 'Kue Tart', 'BoluBerry@gmail.com', '0895373761194', 'BoluBerry.com', '7am', '8pm', '24hr-x7', 'Hadirkan kemeriahan di setiap momen spesial dengan tart yang sempurna!', '628db64583de8.png', '2024-11-24 21:53:25'),
(50, 13, 'Roti Sobek', 'BoluBerry@gmail.com', '0895373761194', 'BoluBerry.com', '9am', '8pm', '24hr-x7', 'Sobek dan nikmati, kelezatan yang siap berbagi!', '628dbf8311016.jpg', '2024-11-25 04:32:51'),
(51, 13, 'Kue Sus', 'BoluBerry@gmail.com', '0895373761194', 'BoluBerry.com', '9am', '8pm', '24hr-x7', 'Isi krim yang melimpah, kenikmatan yang tak terduga di dalam!', '628dda61446a8.jpg', '2024-11-25 00:27:29'),
(52, 13, 'CupCake', 'BoluBerry@gmail.com', '0895373761194', 'BoluBerry.com', '8am', '8pm', '24hr-x7', 'Kecil, manis, dan penuh warna sempurna untuk segala suasana!', '628dd888d4ed5.jpg', '2024-11-25 00:19:36'),
(53, 8, 'Pisang Bolen', 'BoluBerry@gmail.com', '0895373761194', 'BoluBerry.com', '24hour', '24hour', 'every-day', 'Renyah di luar, lembut di dalam, dan lezat tak terlupakan', '62a822b395fad.jpg', '2024-11-14 04:54:59');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis_kue`
--

CREATE TABLE `jenis_kue` (
  `rs_id` int(222) NOT NULL,
  `c_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `url` varchar(222) NOT NULL,
  `o_hr` varchar(222) NOT NULL,
  `c_hr` varchar(222) NOT NULL,
  `o_days` varchar(222) NOT NULL,
  `slogan` text NOT NULL,
  `image` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `jenis_kue`
--

INSERT INTO `jenis_kue` (`rs_id`, `c_id`, `title`, `email`, `phone`, `url`, `o_hr`, `c_hr`, `o_days`, `slogan`, `image`, `date`) VALUES
(48, 14, 'Bolu', 'BoluBerry@gmail.com', '0895373761194', 'BoluBerry.com', '24hour', '24hour', 'every-day', 'Lembutnya bolu di setiap gigitan, manisnya tak pernah mengecewakan!', 'bolu.jpg', '2024-11-07 04:39:35'),
(49, 13, 'Kue Tart', 'BoluBerry@gmail.com', '0895373761194', 'BoluBerry.com', '7am', '8pm', '24hr-x7', 'Hadirkan kemeriahan di setiap momen spesial dengan tart yang sempurna!', 'kuetart.png', '2024-11-24 21:53:25'),
(50, 12, 'Roti Sobek', 'BoluBerry@gmail.com', '0895373761194', 'BoluBerry.com', '9am', '8pm', '24hr-x7', 'Sobek dan nikmati, kelezatan yang siap berbagi!', 'rotisobek.jpg', '2024-11-25 04:32:51'),
(51, 11, 'Kue Sus', 'BoluBerry@gmail.com', '0895373761194', 'BoluBerry.com', '9am', '8pm', '24hr-x7', 'Isi krim yang melimpah, kenikmatan yang tak terduga di dalam!', 'kuesus.jpg', '2024-11-25 00:27:29'),
(52, 13, 'CupCake', 'BoluBerry@gmail.com', '0895373761194', 'BoluBerry.com', '8am', '8pm', '24hr-x7', 'Kecil, manis, dan penuh warna sempurna untuk segala suasana!', 'cupcake.jpg', '2024-11-25 00:19:36'),
(53, 12, 'Pisang Bolen', 'BoluBerry@gmail.com', '0895373761194', 'BoluBerry.com', '24hour', '24hour', 'every-day', 'Renyah di luar, lembut di dalam, dan lezat tak terlupakan', 'pisangbolen.jpg', '2024-11-14 04:54:59');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kue`
--

CREATE TABLE `kue` (
  `d_id` int(222) NOT NULL,
  `rs_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `slogan` varchar(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `img` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `kue`
--

INSERT INTO `kue` (`d_id`, `rs_id`, `title`, `slogan`, `price`, `img`) VALUES
(15, 48, 'Bolu Pandan', 'Aroma pandan yang wangi, kelembutan tiada tanding!', 20000.00, 'bolupandan.jpg'),
(16, 49, 'Tart Cokelat', 'Rayakan dengan cokelat, manisnya selalu tepat!', 30000.00, 'kuetartt.jpg'),
(17, 50, 'Roti Sobek Rasa Coklat', 'Manisnya bikin lengket!', 15000.00, 'rotisobekk.jpg'),
(18, 51, 'Sus Original', 'Kesederhanaan rasa yang memikat selera!', 5000.00, 'kuesuss.jpg'),
(19, 52, 'Cupcake Blueberry', 'Ledakan rasa blueberry di setiap gigitan', 50000.00, 'cupcakee.jpg'),
(20, 53, 'Pisang Bolen Keju', 'Perpaduan sempurna antara pisang dan keju!', 30000.00, 'rpisangbolenn.jpg'),
(22, 49, 'kue kembar', 'kue untuk para kembar', 100000.00, '674a7c07d2245.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `remark`
--

CREATE TABLE `remark` (
  `id` int(11) NOT NULL,
  `frm_id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` mediumtext NOT NULL,
  `remarkDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `remark`
--

INSERT INTO `remark` (`id`, `frm_id`, `status`, `remark`, `remarkDate`) VALUES
(71, 41, 'in process', 'in proses', '2024-04-11 02:40:37'),
(72, 44, 'in process', 'sedang di masak', '2024-05-24 21:21:29'),
(73, 44, 'closed', 'sedang di antar', '2024-05-29 05:50:12'),
(74, 44, 'in process', 'sedang di masak', '2024-06-03 17:43:02'),
(75, 44, 'in process', 'sedang di buat', '2024-06-07 04:48:43'),
(76, 49, 'in process', 'sedang di masak', '2024-06-11 04:44:59'),
(77, 49, 'in process', 'process bre', '2024-06-13 04:45:15'),
(78, 49, 'closed', 'silahkan menikmati\r\n', '2024-06-13 05:02:40'),
(79, 50, 'closed', 'segera datang', '2024-06-13 05:12:59'),
(80, 50, 'in process', 'sdad', '2024-06-13 05:14:13'),
(81, 49, 'rejected', 'aasa', '2025-01-12 11:53:29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `res_category`
--

CREATE TABLE `res_category` (
  `c_id` int(222) NOT NULL,
  `c_name` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `res_category`
--

INSERT INTO `res_category` (`c_id`, `c_name`, `date`) VALUES
(11, 'Kue Curiga', '2024-11-25 04:31:36'),
(12, 'Roti - Rotian', '2024-11-24 05:30:09'),
(13, 'Kue - Kuean', '2024-11-24 21:52:42'),
(14, 'Bolu - Boluan', '2024-11-25 00:35:48');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `u_id` int(222) NOT NULL,
  `username` varchar(222) NOT NULL,
  `f_name` varchar(222) NOT NULL,
  `l_name` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `status` int(222) NOT NULL DEFAULT 1,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`u_id`, `username`, `f_name`, `l_name`, `email`, `phone`, `password`, `address`, `status`, `date`) VALUES
(33, 'Muhamad Rizki', 'Muhamad', 'Rizki', '2206062@itg.ac.id', '0895373761194', 'ikiganteng', 'jl.pajagalan', 1, '0000-00-00 00:00:00'),
(37, 'iki', 'iki', 'olo', 'mdmdryuuki1910@gmail.com', '0895373761195', '980f7e1259d47d86bf4ff19a5d460d5f', 'jslalsa', 1, '2024-11-12 07:16:00'),
(38, 'riska', 'Riska', 'asa', 'Riska@gmai.com', '0895373761190', 'f86de2ac92056facbbaea3908dba85ce', 'asasasa', 1, '2024-11-15 05:37:15');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users_orders`
--

CREATE TABLE `users_orders` (
  `o_id` int(222) NOT NULL,
  `u_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `quantity` int(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `status` varchar(222) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adm_id`);

--
-- Indeks untuk tabel `admin_codes`
--
ALTER TABLE `admin_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jenis kue`
--
ALTER TABLE `jenis kue`
  ADD PRIMARY KEY (`rs_id`);

--
-- Indeks untuk tabel `jenis_kue`
--
ALTER TABLE `jenis_kue`
  ADD PRIMARY KEY (`rs_id`);

--
-- Indeks untuk tabel `kue`
--
ALTER TABLE `kue`
  ADD PRIMARY KEY (`d_id`);

--
-- Indeks untuk tabel `remark`
--
ALTER TABLE `remark`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `res_category`
--
ALTER TABLE `res_category`
  ADD PRIMARY KEY (`c_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`u_id`);

--
-- Indeks untuk tabel `users_orders`
--
ALTER TABLE `users_orders`
  ADD PRIMARY KEY (`o_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `adm_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `admin_codes`
--
ALTER TABLE `admin_codes`
  MODIFY `id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `jenis kue`
--
ALTER TABLE `jenis kue`
  MODIFY `rs_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT untuk tabel `jenis_kue`
--
ALTER TABLE `jenis_kue`
  MODIFY `rs_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT untuk tabel `kue`
--
ALTER TABLE `kue`
  MODIFY `d_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `remark`
--
ALTER TABLE `remark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT untuk tabel `res_category`
--
ALTER TABLE `res_category`
  MODIFY `c_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `u_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT untuk tabel `users_orders`
--
ALTER TABLE `users_orders`
  MODIFY `o_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
