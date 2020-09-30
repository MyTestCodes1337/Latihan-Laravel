-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 30, 2020 at 02:37 PM
-- Server version: 10.1.44-MariaDB-0ubuntu0.18.04.1
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_laravel_1`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_13_100635_create_pegawai_table', 1),
(4, '2019_08_19_202938_create_roles_table', 1),
(5, '2019_08_19_210435_create_role_user_table', 1),
(6, '2019_08_20_162928_create_mobil_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `mobil`
--

CREATE TABLE `mobil` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah` int(11) NOT NULL,
  `sewa` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`id`, `name`, `email`, `job`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Aditya Bahuwarna Santoso', 'vnasyiah@yahoo.co.id', 'loss', 0, '1994-03-05 06:13:36', '2019-09-03 20:49:17'),
(2, 'Eka Palastri', 'fitria.situmorang@gmail.co.id', 'neque', 0, '2007-10-22 12:37:24', '2021-03-18 20:46:14'),
(3, 'Narji Jailani S.Psi', 'hlaksmiwati@gmail.co.id', 'quisquam', 1, '1991-05-12 00:13:50', '2020-12-20 14:09:11'),
(4, 'Perkasa Saefullah', 'pnasyidah@yahoo.co.id', 'iure', 1, '2002-07-30 13:45:18', '2021-02-09 21:31:34'),
(5, 'Vanesa Hartati', 'pradipta.tami@iswahyudi.desa.id', 'explicabo', 1, '1979-08-23 12:08:51', '2021-05-30 01:04:04'),
(6, 'Sabar Kurniawan S.Pd', 'fujiati.martani@yahoo.co.id', 'suscipit', 0, '1970-04-14 14:01:25', '2020-08-06 21:07:55'),
(7, 'Puti Usada', 'awidodo@anggriawan.org', 'adipisci', 0, '1990-01-25 12:19:38', '2019-10-08 18:45:57'),
(8, 'Maimunah Riyanti', 'yuniar.hamzah@pranowo.co.id', 'magni', 1, '1979-04-26 10:28:40', '2020-11-30 18:33:34'),
(9, 'Luis Uwais', 'cgunawan@yahoo.co.id', 'facilis', 1, '2002-10-23 08:38:22', '2020-05-17 06:51:09'),
(10, 'Satya Najmudin', 'smahendra@tamba.name', 'aspernatur', 0, '2001-05-11 06:01:09', '2021-06-19 23:39:28'),
(11, 'Akarsana Dabukke', 'clara.pratiwi@gmail.co.id', 'distinctio', 0, '1984-09-03 08:24:25', '2021-04-14 14:02:09'),
(12, 'Vera Melani', 'daruna59@gmail.com', 'libero', 0, '1973-07-28 07:29:48', '2020-05-24 21:48:45'),
(13, 'Artanto Widodo', 'nilam.aryani@gmail.co.id', 'velit', 1, '1979-09-02 01:17:46', '2020-08-14 00:39:18'),
(14, 'Jayeng Satya Gunarto', 'olivia.mustofa@zulaika.info', 'dicta', 0, '2009-01-25 19:55:39', '2021-03-18 17:51:22'),
(15, 'Caraka Waskita', 'sabar02@gmail.com', 'esse', 0, '2004-02-09 05:10:15', '2021-03-12 16:32:41'),
(16, 'Karman Damanik S.H.', 'mandala.dodo@gmail.com', 'est', 0, '2010-05-01 19:14:33', '2020-01-23 02:34:29'),
(17, 'Gandi Hutapea S.IP', 'bakiono.prastuti@yahoo.co.id', 'ducimus', 1, '1980-08-18 12:08:01', '2020-01-21 16:43:57'),
(18, 'Ade Puspita M.Farm', 'chelsea.yuniar@yahoo.com', 'accusamus', 0, '1970-05-23 12:32:09', '2019-09-28 17:25:24'),
(19, 'Farhunnisa Tari Fujiati', 'dalima.dongoran@sihombing.co', 'eum', 1, '2005-10-13 18:54:08', '2021-06-13 08:18:59'),
(20, 'Melinda Maryati', 'waskita.hairyanto@gmail.com', 'fuga', 0, '2005-01-20 19:02:55', '2020-05-12 19:19:27'),
(21, 'Kenari Maman Permadi', 'paramita.prabowo@yahoo.co.id', 'expedita', 1, '2017-04-02 06:15:48', '2020-06-23 08:59:39'),
(22, 'Rudi Danang Manullang M.Farm', 'hardi.pangestu@yahoo.co.id', 'error', 1, '2015-05-14 07:55:58', '2021-06-07 07:21:42'),
(23, 'Rahmi Haryanti', 'widya.pradipta@gmail.com', 'pariatur', 1, '2004-10-20 16:54:15', '2019-09-12 03:40:59'),
(24, 'Opan Wibisono', 'ihsan78@gmail.co.id', 'nesciunt', 1, '1978-12-23 19:34:38', '2020-02-26 17:26:41'),
(25, 'Azalea Titi Agustina M.TI.', 'gangsa35@yahoo.com', 'enim', 0, '1999-12-01 18:40:47', '2021-03-31 14:49:47'),
(26, 'Kania Utami', 'malika.hakim@gmail.co.id', 'cumque', 1, '1983-09-14 03:31:17', '2020-05-06 08:47:58'),
(27, 'Cakrawangsa Najmudin', 'ngunawan@suryono.asia', 'repellendus', 1, '1981-11-01 20:20:28', '2020-11-15 22:52:11'),
(28, 'Jais Rajasa S.Gz', 'indah.mandasari@yahoo.co.id', 'eos', 1, '2009-10-07 07:10:38', '2020-12-26 14:12:38'),
(29, 'Karma Sitorus', 'hasna.hidayanto@gmail.com', 'sequi', 1, '1992-08-08 03:13:37', '2020-07-09 12:40:35'),
(30, 'Restu Wastuti', 'fitriani.wacana@gmail.com', 'non', 1, '2010-12-31 06:23:21', '2021-04-17 06:47:10'),
(31, 'Ghaliyati Gawati Nuraini', 'wulandari.paramita@uwais.co', 'dolores', 0, '1979-04-18 08:16:19', '2021-08-19 09:01:14'),
(32, 'Pia Kuswandari S.Sos', 'myolanda@yahoo.co.id', 'earum', 0, '2018-12-22 01:03:00', '2019-11-02 22:01:56'),
(33, 'Nugraha Balijan Waluyo S.E.I', 'digdaya.jailani@kuswoyo.co.id', 'Hacker', 0, '1997-09-08 11:50:34', '2019-08-20 04:17:16'),
(34, 'Kasiyah Laksmiwati', 'pranowo.belinda@yahoo.co.id', 'incidunt', 1, '1999-06-09 04:12:35', '2019-09-02 17:01:23'),
(35, 'Zizi Agustina S.Ked', 'eli.hutapea@yahoo.co.id', 'possimus', 0, '1997-09-03 19:31:48', '2019-11-20 21:44:36'),
(36, 'Irma Suartini', 'osamosir@yahoo.com', 'sequi', 0, '1971-06-20 07:01:58', '2021-04-14 15:18:36'),
(37, 'Bakijan Cagak Pradipta', 'adika81@gmail.co.id', 'similique', 1, '2010-05-24 04:28:59', '2020-10-25 10:14:05'),
(38, 'Nardi Marbun', 'yuniar.karimah@gmail.com', 'quia', 0, '2002-02-28 18:37:54', '2019-10-01 11:43:41'),
(39, 'Ulya Ana Yuniar', 'ppuspasari@gmail.co.id', 'beatae', 1, '1990-04-07 20:39:03', '2020-03-03 10:13:05'),
(40, 'Rachel Padmasari', 'iriana16@gmail.com', 'sint', 1, '1985-06-30 22:31:30', '2020-06-21 22:01:34'),
(41, 'Marsudi Kasiran Sitorus', 'rahayu.adriansyah@gmail.co.id', 'exercitationem', 0, '1991-06-14 09:35:44', '2019-10-22 17:49:47'),
(42, 'Yunita Lailasari S.Pt', 'adriansyah.eko@yahoo.com', 'saepe', 0, '1979-04-16 18:38:39', '2019-11-13 00:22:44'),
(43, 'Najib Kuswoyo', 'cakrabuana.wahyuni@yahoo.com', 'eos', 1, '1981-08-15 21:23:21', '2021-05-28 14:19:07'),
(44, 'Gabriella Halimah S.Psi', 'mansur.qori@nasyidah.web.id', 'minima', 1, '1993-01-20 23:51:27', '2020-01-11 15:26:06'),
(45, 'Imam Catur Dongoran S.Psi', 'natalia.adriansyah@lailasari.in', 'ut', 0, '2012-05-08 16:40:47', '2020-01-28 09:37:41'),
(46, 'Tania Riyanti S.Ked', 'pratiwi.endra@gmail.com', 'optio', 0, '2001-08-31 18:42:45', '2020-09-24 18:03:30'),
(47, 'Vicky Mayasari', 'okta.kuswoyo@gmail.com', 'maxime', 1, '2019-03-25 18:47:09', '2020-10-16 23:37:28'),
(48, 'Eka Puspita', 'novi.pertiwi@damanik.name', 'optio', 0, '2005-11-11 01:03:34', '2021-07-05 06:41:20'),
(49, 'Aurora Mayasari', 'safitri.rahmi@lestari.biz', 'doloribus', 1, '1983-12-05 05:00:09', '2020-06-04 15:36:12'),
(50, 'Cemeti Baktiadi Prakasa', 'rina.pradana@kusumo.co.id', 'vitae', 0, '1992-08-17 10:47:34', '2020-05-21 19:14:37'),
(51, 'Paramita Susanti', 'yyulianti@wijaya.sch.id', 'voluptas', 1, '1991-07-16 18:55:11', '2019-12-14 05:33:41'),
(52, 'Prasetyo Pranowo S.Psi', 'estiawan89@yahoo.co.id', 'fugiat', 0, '1985-08-09 17:13:23', '2021-06-11 05:37:45'),
(53, 'Umar Mansur S.Ked', 'uwais.maria@gmail.co.id', 'velit', 1, '2010-03-25 03:06:23', '2021-07-20 20:20:35'),
(54, 'Gamani Sihotang', 'tiswahyudi@yahoo.com', 'veniam', 1, '2011-11-16 06:48:03', '2020-01-31 08:06:12'),
(55, 'Zelda Prastuti S.I.Kom', 'usada.bakiadi@yahoo.com', 'in', 0, '2006-07-29 23:50:11', '2021-01-02 02:45:38'),
(56, 'Ajimin Napitupulu', 'yosef48@gmail.com', 'ut', 0, '2017-04-21 20:55:03', '2021-01-03 09:23:01'),
(57, 'Siska Vera Maryati S.E.', 'ariyanti@gmail.com', 'soluta', 1, '1973-05-22 20:48:53', '2021-04-14 04:22:08'),
(58, 'Sari Wirda Uyainah S.Pt', 'mharyanti@yahoo.co.id', 'velit', 1, '1987-07-02 23:04:38', '2021-02-14 15:58:41'),
(59, 'Bagus Luhung Mandala M.Farm', 'puji22@mandala.ac.id', 'voluptates', 0, '1986-09-28 09:02:11', '2020-11-19 01:40:18'),
(60, 'Ghaliyati Wijayanti', 'mahesa.prasetya@hasanah.asia', 'voluptas', 1, '1979-07-04 18:06:49', '2019-10-26 16:11:46'),
(61, 'Tirtayasa Soleh Saputra S.H.', 'qardianto@gmail.com', 'quo', 0, '2004-02-14 01:36:32', '2021-08-04 10:53:19'),
(62, 'Warsa Luis Simanjuntak S.IP', 'jane49@nuraini.name', 'ducimus', 1, '1999-12-16 02:10:19', '2020-12-27 16:31:19'),
(63, 'Salwa Palastri', 'xkuswandari@gmail.com', 'provident', 1, '1992-11-22 02:09:37', '2020-06-19 10:02:59'),
(64, 'Candrakanta Manullang', 'ysalahudin@gmail.com', 'sed', 1, '1989-12-10 13:54:31', '2020-06-16 09:52:47'),
(65, 'Safina Yolanda', 'ssetiawan@yahoo.co.id', 'placeat', 0, '1992-07-16 10:31:07', '2020-07-02 00:16:08'),
(66, 'Ika Rahimah', 'pradipta.damar@zulaika.mil.id', 'qui', 1, '1995-09-05 23:09:45', '2021-08-05 03:09:28'),
(67, 'Victoria Prastuti M.TI.', 'unatsir@pudjiastuti.co', 'qui', 1, '1981-12-07 03:58:38', '2021-06-05 07:08:36'),
(68, 'Cakrabuana Winarno', 'utama.raden@yahoo.com', 'nisi', 0, '1976-04-16 09:13:16', '2021-07-21 00:40:53'),
(69, 'Titi Patricia Palastri', 'inababan@farida.biz', 'est', 1, '1971-10-23 21:24:57', '2020-04-08 08:58:33'),
(70, 'Paris Zahra Utami S.Sos', 'rina41@utama.name', 'debitis', 0, '2005-06-18 01:26:06', '2020-07-29 13:41:01'),
(71, 'Nurul Ira Nuraini', 'respati.oktaviani@sihombing.asia', 'iure', 1, '1982-12-10 21:46:18', '2020-04-07 03:14:47'),
(72, 'Almira Lala Utami S.IP', 'qharyanti@kurniawan.biz.id', 'non', 0, '1984-10-23 04:59:42', '2021-05-19 09:44:02'),
(73, 'Diah Elma Mayasari', 'hsantoso@yahoo.co.id', 'dolores', 0, '1972-09-14 17:52:49', '2020-07-09 07:05:02'),
(74, 'Ika Farida S.Ked', 'prastuti.ega@hidayanto.net', 'incidunt', 1, '1984-08-14 13:51:02', '2020-12-01 04:36:16'),
(75, 'Baktianto Dabukke', 'eyulianti@yahoo.co.id', 'velit', 0, '1975-01-14 15:31:07', '2020-04-26 17:46:06'),
(76, 'Syahrini Calista Zulaika', 'kmelani@yahoo.co.id', 'sed', 0, '2010-07-11 08:54:14', '2020-11-17 23:11:27'),
(77, 'Puti Rachel Laksmiwati S.Ked', 'hassanah.asirwanda@sitompul.co', 'ducimus', 0, '2008-10-12 05:44:28', '2021-01-16 12:01:08'),
(78, 'Usyi Hassanah', 'dewi.aryani@prayoga.info', 'autem', 0, '2003-12-19 01:41:58', '2020-08-10 22:17:38'),
(79, 'Elvin Candra Napitupulu', 'hrahayu@gmail.co.id', 'ut', 1, '2014-01-10 17:36:07', '2021-01-21 18:17:49'),
(80, 'Ira Laksita S.Pd', 'imegantara@agustina.co.id', 'doloremque', 0, '1986-04-09 07:49:48', '2020-11-09 05:26:30'),
(81, 'Utama Maheswara S.Ked', 'lazuardi.ghaliyati@hastuti.sch.id', 'aut', 1, '1979-03-20 10:53:51', '2021-07-01 08:42:51'),
(82, 'Mutia Usamah S.IP', 'tmulyani@ardianto.go.id', 'porro', 0, '1983-03-22 20:40:07', '2021-07-24 18:32:53'),
(83, 'Sakura Siti Yulianti', 'tantri29@gmail.com', 'autem', 0, '1999-05-15 18:49:37', '2021-04-01 02:22:14'),
(84, 'Dina Yessi Rahmawati S.IP', 'wardianto@lailasari.sch.id', 'assumenda', 1, '1973-11-17 21:53:52', '2020-09-12 04:38:27'),
(85, 'Darsirah Januar', 'psuartini@yahoo.com', 'qui', 0, '2000-10-08 16:01:35', '2021-01-29 17:22:11'),
(86, 'Bagiya Pangestu', 'hutasoit.icha@tarihoran.org', 'dicta', 1, '2017-07-21 17:34:00', '2020-07-12 01:48:17'),
(87, 'Violet Mardhiyah', 'oktaviani.kawaya@gmail.com', 'aut', 0, '1972-08-31 13:49:59', '2021-01-01 23:56:33'),
(88, 'Purwanto Firmansyah M.Kom.', 'xmaryadi@yahoo.com', 'deserunt', 0, '2014-06-15 08:14:15', '2020-08-12 05:50:25'),
(89, 'Kawaya Budiyanto', 'spratiwi@gmail.co.id', 'ut', 0, '2013-02-02 05:08:54', '2021-04-02 02:43:52'),
(90, 'Clara Melani', 'sirawan@hutapea.in', 'iure', 0, '2016-04-23 19:31:41', '2020-08-16 05:45:17'),
(91, 'Zulaikha Mulyani M.Kom.', 'gilang00@yahoo.co.id', 'ea', 1, '2014-03-16 07:54:56', '2020-08-07 04:31:38'),
(92, 'Jasmani Manullang', 'caket47@nashiruddin.biz.id', 'at', 1, '1982-06-05 02:06:23', '2020-05-08 02:10:01'),
(93, 'Bakijan Manullang', 'kenari.nugroho@yahoo.co.id', 'sapiente', 0, '2009-06-17 03:50:57', '2019-09-13 02:00:24'),
(94, 'Ade Permata', 'winda32@yahoo.co.id', 'nihil', 1, '1999-04-10 12:00:23', '2020-02-17 10:35:47'),
(95, 'Maya Purnawati', 'ira.anggraini@yolanda.co.id', 'debitis', 1, '2009-06-29 08:19:07', '2020-12-06 03:09:20'),
(96, 'Lasmono Tamba M.Ak', 'bala56@prabowo.org', 'commodi', 1, '1975-01-13 20:05:54', '2020-10-04 08:46:21'),
(97, 'Tina Riyanti S.IP', 'gsantoso@megantara.com', 'numquam', 0, '2009-01-03 10:18:17', '2021-04-04 05:46:49'),
(98, 'Fathonah Nasyiah', 'paiman85@yahoo.com', 'enim', 1, '2000-11-08 21:24:12', '2020-11-02 16:56:58'),
(99, 'Intan Suci Kuswandari', 'gandriani@rahimah.go.id', 'debitis', 0, '1989-08-21 08:26:02', '2021-05-17 09:35:36'),
(100, 'Ajimin Lega Mangunsong', 'cinta.laksita@suryatmi.my.id', 'tenetur', 0, '2015-04-09 06:38:53', '2021-04-13 11:43:53'),
(101, 'Defri Indra M', 'defrindr@gmail.com', 'Administrator', 0, '2020-07-18 04:51:36', '2020-07-18 04:51:36');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `created_at`, `updated_at`, `role_name`) VALUES
(1, '2019-08-19 15:45:43', '2019-08-19 15:45:43', 'manager'),
(2, '2019-08-19 15:45:43', '2019-08-19 15:45:43', 'admin'),
(3, '2019-08-19 15:45:43', '2019-08-19 15:45:43', 'users');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`id`, `created_at`, `updated_at`, `user_id`, `role_id`) VALUES
(1, '2019-08-06 17:00:00', '2019-08-12 23:35:28', 1, 2),
(2, '2019-08-19 15:59:13', '2019-08-19 15:59:13', 2, 1),
(3, '2019-08-19 15:59:13', '2019-08-19 15:59:13', 3, 2),
(4, '2019-08-19 15:59:13', '2019-08-19 15:59:13', 5, 3),
(5, '2019-08-19 15:59:13', '2019-08-19 15:59:13', 4, 3);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Zizi Susanti S.I.Kom', 'defrindr@gmail.com', '2019-08-19 15:45:38', '$2y$10$04cYdcJ9bu/BQh9br212/.aHGRNGz8at9nCAMAN1hwf7rT5ZteE8y', 'xJvwfVuA6gRznERg2c6Ig1adkaTHGZVaFLvrUQZNr5Ef8OMqsrZo0eSaoXx2', '2019-08-19 15:45:38', '2019-08-19 15:45:38'),
(2, 'Olivia Puspa Hartati', 'wzulkarnain@example.org', '2019-08-19 15:45:38', '$2y$10$04cYdcJ9bu/BQh9br212/.aHGRNGz8at9nCAMAN1hwf7rT5ZteE8y', 'kBFEh4yomM', '2019-08-19 15:45:38', '2019-08-19 15:45:38'),
(3, 'Cindy Zulaikha Prastuti', 'cici.pertiwi@example.com', '2019-08-19 15:45:38', '$2y$10$04cYdcJ9bu/BQh9br212/.aHGRNGz8at9nCAMAN1hwf7rT5ZteE8y', 'lEYQNRPnPn', '2019-08-19 15:45:38', '2019-08-19 15:45:38'),
(4, 'Unjani Suryatmi S.H.', 'vera80@example.org', '2019-08-19 15:45:38', '$2y$10$04cYdcJ9bu/BQh9br212/.aHGRNGz8at9nCAMAN1hwf7rT5ZteE8y', 'jPJMzpcEtR', '2019-08-19 15:45:38', '2019-08-19 15:45:38'),
(5, 'Farhunnisa Jane Purnawati', 'tpermadi@example.net', '2019-08-19 15:45:38', '$2y$10$04cYdcJ9bu/BQh9br212/.aHGRNGz8at9nCAMAN1hwf7rT5ZteE8y', 'OVxsPCsiFS', '2019-08-19 15:45:38', '2019-08-19 15:45:38'),
(6, 'Amalia Safitri', 'nrima01@example.org', '2019-08-19 15:45:38', '$2y$10$04cYdcJ9bu/BQh9br212/.aHGRNGz8at9nCAMAN1hwf7rT5ZteE8y', 'jn3byknI2A', '2019-08-19 15:45:38', '2019-08-19 15:45:38'),
(7, 'Manah Uwais S.Farm', 'nurdiyanti.eman@example.org', '2019-08-19 15:45:38', '$2y$10$04cYdcJ9bu/BQh9br212/.aHGRNGz8at9nCAMAN1hwf7rT5ZteE8y', 'ipSSOASFl2', '2019-08-19 15:45:38', '2019-08-19 15:45:38'),
(8, 'Dalima Eka Yuliarti S.Pd', 'raden03@example.com', '2019-08-19 15:45:38', '$2y$10$04cYdcJ9bu/BQh9br212/.aHGRNGz8at9nCAMAN1hwf7rT5ZteE8y', 'J9IK7fQm6q', '2019-08-19 15:45:38', '2019-08-19 15:45:38'),
(9, 'Sabrina Pratiwi', 'jrajata@example.com', '2019-08-19 15:45:38', '$2y$10$04cYdcJ9bu/BQh9br212/.aHGRNGz8at9nCAMAN1hwf7rT5ZteE8y', 'jriEmJJzyD', '2019-08-19 15:45:38', '2019-08-19 15:45:38'),
(10, 'Shakila Haryanti', 'ira.nasyidah@example.org', '2019-08-19 15:45:38', '$2y$10$04cYdcJ9bu/BQh9br212/.aHGRNGz8at9nCAMAN1hwf7rT5ZteE8y', '3ByXGmjzyi', '2019-08-19 15:45:38', '2019-08-19 15:45:38'),
(11, 'Defri Indra Mahardika', 'defriindra021@gmail.co.id', NULL, '$2y$10$WpsMJXT7D874LN7eESyxH.agPCI30hwUdSt.kSwXaeFI.SFuu9euS', NULL, '2019-08-21 03:47:22', '2019-08-21 03:47:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mobil`
--
ALTER TABLE `mobil`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pegawai_email_unique` (`email`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_user_user_id_foreign` (`user_id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `mobil`
--
ALTER TABLE `mobil`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
