-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 22, 2019 at 09:38 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_companyapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `nama`, `email`, `website`, `alamat`, `logo`, `created_at`, `updated_at`) VALUES
(1, 'Perum Wasita Kuswandari Tbk', 'wulandari.hearja@example.com', 'tamba.name', 'Dk. Dagon No. 875', 'logo-Perum Wasita Kuswandari Tbk.png', NULL, '2019-11-22 01:22:15'),
(2, 'Perum Hutasoit Wahyuni', 'mila.jailani@example.net', 'sihombing.my.id', 'Kpg. Baranang Siang Indah No. 30', 'c78e69ad50e0596a97a1fac96b7e9de7.jpg', NULL, NULL),
(3, 'PD Megantara Pratiwi Tbk', 'raisa56@example.net', 'saputra.name', 'Ds. Gegerkalong Hilir No. 377', '145f468ad1bd6ac08acc43ece7fc9c0c.jpg', NULL, NULL),
(4, 'UD Narpati', 'ppurwanti@example.com', 'rahayu.net', 'Gg. Bakit  No. 398', 'e4629736407cfd054259e4a37eccb229.jpg', NULL, NULL),
(5, 'PT Nashiruddin Maulana', 'nurdiyanti.ana@example.com', 'suartini.id', 'Psr. Kartini No. 892', '11346cb3d6a1b9a0862b230cee6effab.jpg', NULL, NULL),
(6, 'PT Wacana', 'dlailasari@example.com', 'hassanah.net', 'Jln. Ir. H. Juanda No. 583', '5136cf4bd7deb3646e2e0aabe40f9c37.jpg', NULL, NULL),
(7, 'Perum Wahyudin Tbk', 'bsiregar@example.net', 'putra.desa.id', 'Kpg. Badak No. 592', '3432c787f4349eac2b9f8831f67c3f03.jpg', NULL, NULL),
(8, 'PT Mandala Novitasari', 'ulva32@example.net', 'napitupulu.go.id', 'Gg. Padma No. 531', '599df9aeface87067a9848652945dd37.jpg', NULL, NULL),
(9, 'PD Melani', 'okta99@example.org', 'kuswandari.or.id', 'Ki. Cut Nyak Dien No. 722', 'f9a59f9369dd65dcc54734c93c008e46.jpg', NULL, NULL),
(10, 'CV Prastuti', 'khalim@example.org', 'wacana.or.id', 'Gg. Bank Dagang Negara No. 861', 'f26b2ca91f10f8d0ec8c6cf0bf1774b1.jpg', NULL, NULL),
(11, 'PD Puspita Mangunsong (Persero) Tbk', 'pratiwi.estiono@example.net', 'fujiati.ac.id', 'Kpg. Nanas No. 52', 'fe1f7f86125b646acf1a9b6766f01c8b.jpg', NULL, NULL),
(12, 'PD Adriansyah Prasasta Tbk', 'ghaliyati.wahyuni@example.net', 'kusmawati.biz.id', 'Dk. Sunaryo No. 294', '2e226d98faebfd02afbe69dc7d6e0934.jpg', NULL, NULL),
(13, 'CV Utami Hartati Tbk', 'saadat85@example.org', 'suryatmi.go.id', 'Ki. Jamika No. 499', 'a3eb37caa4040d9d6a38470899079b35.jpg', NULL, NULL),
(14, 'UD Palastri', 'jaiman.wibisono@example.com', 'wastuti.or.id', 'Dk. Peta No. 301', '518f4d370e48b948a4d121c3312c824a.jpg', NULL, NULL),
(15, 'CV Wijaya (Persero) Tbk', 'mayasari.digdaya@example.org', 'suryatmi.name', 'Jr. Bazuka Raya No. 16', '52c66a40739fe7130452c2517552517a.jpg', NULL, NULL),
(16, 'CV Farida Usamah Tbk', 'zprasetya@example.com', 'laksmiwati.tv', 'Jln. Baing No. 190', '23223276e0be4a648ee876fd262dd152.jpg', NULL, NULL),
(17, 'Perum Hutasoit Pratama', 'budiyanto.jagaraga@example.net', 'usamah.biz.id', 'Ds. Laksamana No. 13', '21d351566d4d2b3de9f8578ba03aeb60.jpg', NULL, NULL),
(18, 'Perum Kusmawati', 'fagustina@example.com', 'santoso.tv', 'Ki. Aceh No. 59', 'fb91428d15372a85bb53e459c28112bb.jpg', NULL, NULL),
(19, 'PT Wulandari Susanti (Persero) Tbk', 'zfirmansyah@example.org', 'nasyidah.asia', 'Dk. Sunaryo No. 90', '94994ded89230e12727f7bed1bf4495b.jpg', NULL, NULL),
(20, 'PT Mardhiyah (Persero) Tbk', 'farhunnisa.wijaya@example.com', 'usamah.org', 'Ki. Baik No. 861', 'bcd7a88154a7ba71b1c828450d842557.jpg', NULL, NULL),
(21, 'PT Hardiansyah Tbk', 'raden85@example.net', 'setiawan.info', 'Psr. Achmad No. 970', '8c402d5e7ca7f66f3bbdf360b1bd0486.jpg', NULL, NULL),
(22, 'Perum Mandasari Usada', 'bagya03@example.org', 'tamba.co.id', 'Gg. Supomo No. 399', '96a1fdd77961336d5d4c39b6e6d85569.jpg', NULL, NULL),
(23, 'CV Wulandari Hariyah Tbk', 'daruna30@example.com', 'purnawati.ac.id', 'Gg. Siliwangi No. 89', 'bad5be0fd13a8a4f4be501b2fd264188.jpg', NULL, NULL),
(24, 'PD Susanti Zulaika', 'maulana.parman@example.org', 'mahendra.org', 'Ki. Gardujati No. 930', '9c7b0d680358e00e866039baa489a586.jpg', NULL, NULL),
(25, 'PT Wastuti Pratama', 'ira.palastri@example.net', 'nuraini.or.id', 'Ds. Siliwangi No. 850', '937c176a6e7bcd97b7e4a020f314048e.jpg', NULL, NULL),
(26, 'PD Kusumo Marpaung Tbk', 'edward.simanjuntak@example.com', 'sihotang.ac.id', 'Jr. Tambun No. 492', 'b7edf46df72d86c29b6c00d7791201e5.jpg', NULL, NULL),
(27, 'Perum Firgantoro Agustina Tbk', 'bahuwirya.nasyiah@example.org', 'samosir.my.id', 'Dk. Wahid Hasyim No. 526', '2d0df2159c123835e6fcb7261e9d27ad.jpg', NULL, NULL),
(28, 'PD Iswahyudi Hutapea (Persero) Tbk', 'lzulaika@example.com', 'pudjiastuti.info', 'Kpg. Bappenas No. 180', 'a9fc61529b18abaf452915d26baa425d.jpg', NULL, NULL),
(29, 'PD Agustina', 'kala.prastuti@example.net', 'riyanti.com', 'Gg. Basket No. 711', 'b916d8b07c799536e7bc5c50d9f91ef7.jpg', NULL, NULL),
(30, 'UD Yuniar Tbk', 'hutapea.yance@example.net', 'wibowo.go.id', 'Dk. Sukajadi No. 247', '4f53e8b0cf0b9f52d378a7b7843466f8.jpg', NULL, NULL),
(31, 'PT Setiawan Samosir (Persero) Tbk', 'naradi26@example.org', 'adriansyah.biz.id', 'Dk. Orang No. 393', '61d93eef3b2c2f654cd8fbf12aa4670a.jpg', NULL, NULL),
(32, 'PD Padmasari Hartati Tbk', 'lukita.mulyani@example.net', 'sudiati.web.id', 'Jln. Abdul. Muis No. 947', '379399df5d56df375ad937817c192807.jpg', NULL, NULL),
(33, 'CV Hidayanto Kusumo Tbk', 'usyi.wahyuni@example.com', 'nasyiah.tv', 'Ds. Sampangan No. 27', 'a843830cc1614a85f48b2f8ca3cd3e75.jpg', NULL, NULL),
(34, 'UD Nurdiyanti Saputra (Persero) Tbk', 'mharyanti@example.com', 'widiastuti.go.id', 'Psr. Elang No. 304', 'e97c95cf5613c10f2e8ca129ba39a3fa.jpg', NULL, NULL),
(35, 'PT Wijaya Ardianto Tbk', 'novitasari.capa@example.org', 'andriani.net', 'Gg. Pasir Koja No. 380', 'f0b576ab894f7c816ce56d507f2b25c2.jpg', NULL, NULL),
(36, 'Perum Hasanah Marbun (Persero) Tbk', 'vero81@example.net', 'farida.id', 'Jln. Baja No. 238', '148d261dd711a007bb2ff11b38de2028.jpg', NULL, NULL),
(37, 'UD Wahyuni', 'siregar.sakti@example.org', 'nasyiah.web.id', 'Dk. Otista No. 319', 'de5e9ef5f89ca793e443cb5d2e8f7ca7.jpg', NULL, NULL),
(38, 'UD Mustofa', 'napitupulu.karya@example.net', 'kurniawan.co.id', 'Ds. Merdeka No. 990', 'fc1ff7b054e09ad4be3cdf8fe81b156b.jpg', NULL, NULL),
(39, 'Perum Palastri (Persero) Tbk', 'athamrin@example.com', 'hastuti.in', 'Psr. Yos No. 710', '6e16cf0fb5e54034da823a5185cb971f.jpg', NULL, NULL),
(40, 'CV Rahmawati Halim Tbk', 'salahudin.siti@example.net', 'saptono.biz', 'Kpg. Tentara Pelajar No. 250', 'f94b597046e22ebe90fcbfac830caa9d.jpg', NULL, NULL),
(41, 'UD Ramadan Suryono Tbk', 'ganep82@example.org', 'tamba.com', 'Jln. B.Agam 1 No. 288', '65007a97e223e2e3c1eb1679901dc167.jpg', NULL, NULL),
(42, 'UD Sinaga', 'whidayat@example.org', 'pradipta.mil.id', 'Kpg. Adisumarmo No. 470', 'abaee91e6f6bd5b2167e807145799bd3.jpg', NULL, NULL),
(43, 'PD Haryanto Iswahyudi Tbk', 'hutagalung.artawan@example.com', 'handayani.id', 'Psr. Raden No. 499', 'd2bce7f20c808ee611b7dbfdb7f62961.jpg', NULL, NULL),
(44, 'PT Hidayat Pertiwi', 'oman.hasanah@example.org', 'hartati.asia', 'Psr. HOS. Cjokroaminoto (Pasirkaliki) No. 567', '4c0761e86480a86c0bda2fd57fd04a5d.jpg', NULL, NULL),
(45, 'Perum Mardhiyah', 'mpradana@example.com', 'hariyah.tv', 'Kpg. Babakan No. 164', '543a43fc964124a26e7482fe662505a1.jpg', NULL, NULL),
(46, 'CV Uyainah (Persero) Tbk', 'lintang66@example.org', 'rajata.tv', 'Jr. Sudiarto No. 873', '016a326466c96fd3468a99b6db6a1e28.jpg', NULL, NULL),
(47, 'UD Setiawan (Persero) Tbk', 'vwijayanti@example.net', 'mansur.in', 'Psr. Kartini No. 425', '3d48a4bc4e27262828ce5acb62b8a7f5.jpg', NULL, NULL),
(48, 'UD Prasetyo (Persero) Tbk', 'wijayanti.lala@example.com', 'pratiwi.tv', 'Kpg. W.R. Supratman No. 669', '07d4a4408b28c6fb50b4dcaee0ef0adb.jpg', NULL, NULL),
(49, 'PT Iswahyudi Handayani', 'rpadmasari@example.org', 'mulyani.my.id', 'Psr. Samanhudi No. 130', 'd9def65d3c6977f15e678edf2d2e64e8.jpg', NULL, NULL),
(50, 'CV Wijayanti Hardiansyah (Persero) Tbk', 'harto72@example.org', 'suwarno.com', 'Gg. Nakula No. 239', '6341eb70dba6e650db0ef530a94389ba.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `job_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `nama`, `email`, `company_id`, `job_id`, `created_at`, `updated_at`) VALUES
(1, 'Sakura Kusmawati', 'rmtardhisssyah@example.org', 12, 18, NULL, '2019-11-22 01:20:49'),
(2, 'Maya Suryatmi', 'usyi.marpaung@example.org', 24, 18, NULL, NULL),
(3, 'Hairyanto Firgantoro S.Sos', 'zahra88@example.net', 24, 10, NULL, NULL),
(4, 'Tami Mardhiyah', 'syuliarti@example.com', 22, 11, NULL, NULL),
(5, 'Salman Pradana', 'laila.nurdiyanti@example.net', 24, 21, NULL, NULL),
(6, 'Zizi Riyanti S.Gz', 'caturangga.purwanti@example.com', 27, 8, NULL, NULL),
(7, 'Dipa Tarihoran S.H.', 'shastuti@example.com', 29, 11, NULL, NULL),
(8, 'Vera Aisyah Padmasari S.Gz', 'januar.putri@example.com', 16, 17, NULL, NULL),
(9, 'Mutia Haryanti', 'oskar.rahimah@example.com', 19, 18, NULL, NULL),
(10, 'Jaya Habibi', 'elma48@example.net', 8, 11, NULL, NULL),
(11, 'Lurhur Suryono', 'agustina.setya@example.com', 45, 19, NULL, NULL),
(12, 'Harjaya Siregar', 'farida.calista@example.com', 35, 5, NULL, NULL),
(13, 'Yuni Rahayu', 'diana10@example.org', 44, 13, NULL, NULL),
(14, 'Malika Nabila Maryati S.Farm', 'gawati79@example.net', 30, 15, NULL, NULL),
(15, 'Eka Cakrabirawa Adriansyah', 'karman08@example.net', 9, 1, NULL, NULL),
(16, 'Tina Maryati', 'maria62@example.com', 6, 5, NULL, NULL),
(17, 'Harjasa Saragih', 'nlestari@example.org', 27, 6, NULL, NULL),
(18, 'Amelia Rahayu', 'sarah.wastuti@example.org', 45, 11, NULL, NULL),
(19, 'Kamaria Rachel Mandasari M.Pd', 'wijayanti.karna@example.net', 27, 24, NULL, NULL),
(20, 'Rosman Margana Saragih S.Psi', 'irma.padmasari@example.net', 50, 7, NULL, NULL),
(21, 'Sidiq Pranowo', 'garda70@example.org', 19, 27, NULL, NULL),
(22, 'Jumadi Catur Jailani', 'vnovitasari@example.net', 17, 8, NULL, NULL),
(23, 'Alika Pertiwi M.M.', 'estiawan06@example.net', 23, 22, NULL, NULL),
(24, 'Kasiran Thamrin', 'siska09@example.com', 15, 9, NULL, NULL),
(25, 'Taufan Sinaga', 'emong.wijaya@example.org', 31, 18, NULL, NULL),
(26, 'Ayu Suartini', 'rahimah.puspa@example.org', 33, 25, NULL, NULL),
(27, 'Ira Farida', 'anastasia.kuswandari@example.com', 44, 18, NULL, NULL),
(28, 'Zizi Melani', 'nadia.laksmiwati@example.com', 24, 22, NULL, NULL),
(29, 'Garda Nardi Nashiruddin S.Kom', 'uli.lailasari@example.org', 9, 24, NULL, NULL),
(30, 'Kawaca Prasetyo', 'aurora.halim@example.org', 38, 18, NULL, NULL),
(31, 'Luwar Ramadan', 'qhidayat@example.org', 13, 15, NULL, NULL),
(32, 'Vivi Nasyidah', 'iwidodo@example.net', 38, 16, NULL, NULL),
(33, 'Jarwa Tugiman Sirait', 'langgeng.nuraini@example.net', 3, 7, NULL, NULL),
(34, 'Juli Laksita', 'psalahudin@example.net', 23, 15, NULL, NULL),
(35, 'Bancar Prakasa', 'xmansur@example.com', 4, 10, NULL, NULL),
(36, 'Tari Yuliana Usada', 'salimah50@example.com', 24, 2, NULL, NULL),
(37, 'Tira Jasmin Suartini S.Sos', 'tari.zulkarnain@example.com', 45, 8, NULL, NULL),
(38, 'Raden Latupono', 'parman31@example.com', 50, 25, NULL, NULL),
(39, 'Calista Devi Laksmiwati M.Pd', 'rika.simanjuntak@example.org', 6, 6, NULL, NULL),
(40, 'Yulia Zizi Suartini S.T.', 'mujur.rahayu@example.com', 41, 8, NULL, NULL),
(41, 'Vega Asmuni Pangestu S.Gz', 'ssuryono@example.org', 32, 1, NULL, NULL),
(42, 'Dirja Hidayat S.T.', 'wardaya.permadi@example.net', 43, 26, NULL, NULL),
(43, 'Hafshah Yuliarti', 'oktaviani.yuliana@example.net', 14, 10, NULL, NULL),
(44, 'Ajiman Jamal Narpati', 'mustofa.septi@example.org', 5, 7, NULL, NULL),
(45, 'Almira Padmasari S.Pt', 'manullang.eka@example.net', 26, 12, NULL, NULL),
(46, 'Bakiadi Kawaya Maulana', 'mala08@example.net', 35, 15, NULL, NULL),
(47, 'Sari Ana Lestari', 'sari.winarno@example.net', 3, 10, NULL, NULL),
(48, 'Saka Opung Narpati', 'nlailasari@example.org', 33, 9, NULL, NULL),
(49, 'Endah Sakura Mandasari', 'chelsea94@example.com', 13, 1, NULL, NULL),
(50, 'Indah Jamalia Andriani', 'msuartini@example.org', 47, 29, NULL, NULL),
(51, 'Jumari Wibisono', 'yhartati@example.org', 1, 28, NULL, NULL),
(52, 'Jessica Novi Maryati S.Psi', 'nfirgantoro@example.org', 11, 6, NULL, NULL),
(53, 'Yani Kusmawati', 'narpati.kamaria@example.net', 34, 30, NULL, NULL),
(54, 'Marsudi Pranowo', 'sitompul.novi@example.net', 25, 3, NULL, NULL),
(55, 'Karman Pangestu', 'suyainah@example.org', 13, 2, NULL, NULL),
(56, 'Bakiadi Firmansyah', 'emangunsong@example.com', 15, 21, NULL, NULL),
(57, 'Koko Prayoga M.Pd', 'yulianti.michelle@example.org', 14, 6, NULL, NULL),
(58, 'Vera Suryatmi S.Psi', 'xprasetyo@example.com', 10, 9, NULL, NULL),
(59, 'Cakrajiya Lutfan Tarihoran', 'rahayu77@example.org', 18, 7, NULL, NULL),
(60, 'Kala Ozy Pratama S.IP', 'padmasari.parman@example.net', 48, 8, NULL, NULL),
(61, 'Embuh Prasetya S.Pt', 'laksmiwati.joko@example.org', 2, 23, NULL, NULL),
(62, 'Uda Sirait', 'salman07@example.net', 19, 11, NULL, NULL),
(63, 'Taufik Pratama', 'maryati.usyi@example.net', 21, 1, NULL, NULL),
(64, 'Oliva Dian Pertiwi', 'haryanti.jabal@example.net', 24, 28, NULL, NULL),
(65, 'Oni Prastuti', 'gada.samosir@example.org', 23, 28, NULL, NULL),
(66, 'Silvia Elvina Melani', 'tira12@example.org', 2, 22, NULL, NULL),
(67, 'Kartika Lestari', 'dongoran.bahuwirya@example.com', 3, 30, NULL, NULL),
(68, 'Kasiyah Wijayanti', 'ulya71@example.net', 24, 11, NULL, NULL),
(69, 'Emas Mustofa', 'adriansyah.tedi@example.org', 5, 9, NULL, NULL),
(70, 'Pia Rahayu', 'saptono.edward@example.com', 5, 16, NULL, NULL),
(71, 'Cakrajiya Anggriawan S.Pt', 'wwidodo@example.org', 7, 2, NULL, NULL),
(72, 'Dalimin Naradi Prabowo S.E.', 'bsuartini@example.net', 41, 10, NULL, NULL),
(73, 'Salwa Hastuti', 'gandewa.anggraini@example.org', 15, 27, NULL, NULL),
(74, 'Luhung Zulkarnain', 'lintang.wijaya@example.net', 35, 8, NULL, NULL),
(75, 'Hamima Usamah', 'almira.mansur@example.org', 6, 5, NULL, NULL),
(76, 'Artanto Bagya Waskita M.M.', 'harjaya03@example.com', 45, 30, NULL, NULL),
(77, 'Raditya Hamzah Hidayat M.Farm', 'mariadi.tampubolon@example.com', 22, 6, NULL, NULL),
(78, 'Lala Laksmiwati', 'hutasoit.reksa@example.net', 23, 16, NULL, NULL),
(79, 'Dina Yuliarti', 'maheswara.liman@example.org', 17, 17, NULL, NULL),
(80, 'Murti Hartana Waluyo', 'slamet.wastuti@example.net', 13, 30, NULL, NULL),
(81, 'Anastasia Hasanah', 'dongoran.agnes@example.org', 29, 16, NULL, NULL),
(82, 'Rahmat Rajata', 'salimah.wijayanti@example.org', 17, 25, NULL, NULL),
(83, 'Bella Oktaviani', 'nadine93@example.com', 15, 11, NULL, NULL),
(84, 'Cornelia Lidya Hartati', 'kania.nuraini@example.net', 27, 2, NULL, NULL),
(85, 'Mahfud Siregar', 'rahayu.jaeman@example.com', 37, 16, NULL, NULL),
(86, 'Bakidin Budi Permadi S.Gz', 'bakda06@example.org', 5, 27, NULL, NULL),
(87, 'Oni Prastuti', 'xpuspita@example.com', 35, 22, NULL, NULL),
(88, 'Hairyanto Pranowo', 'kmelani@example.net', 29, 20, NULL, NULL),
(89, 'Janet Lestari S.Psi', 'radit64@example.net', 2, 25, NULL, NULL),
(90, 'Prasetya Nasrullah Pranowo', 'teddy.aryani@example.com', 14, 7, NULL, NULL),
(91, 'Ana Anggraini S.H.', 'gadang84@example.com', 39, 21, NULL, NULL),
(92, 'Queen Yuniar M.M.', 'bakiadi82@example.com', 48, 11, NULL, NULL),
(93, 'Ganda Cahyadi Utama M.M.', 'emil.riyanti@example.net', 19, 27, NULL, NULL),
(94, 'Belinda Padmasari', 'hasna.andriani@example.org', 45, 1, NULL, NULL),
(95, 'Darman Anggriawan', 'yuni02@example.net', 33, 10, NULL, NULL),
(96, 'Intan Nasyiah S.I.Kom', 'galih35@example.com', 4, 25, NULL, NULL),
(97, 'Gada Prakasa', 'galuh.jailani@example.net', 16, 2, NULL, NULL),
(98, 'Zahra Salsabila Astuti', 'sabrina.yuniar@example.net', 4, 11, NULL, NULL),
(99, 'Muhammad Irnanto Marbun', 'tasnim.kuswandari@example.net', 18, 24, NULL, NULL),
(100, 'Omar Ramadan', 'ira.waskita@example.net', 48, 10, NULL, NULL),
(101, 'Hana Nilam Puspasari', 'wastuti.jindra@example.net', 43, 9, NULL, NULL),
(102, 'Ciaobella Nasyiah', 'kusmawati.cawisono@example.com', 37, 17, NULL, NULL),
(103, 'Luwar Halim S.H.', 'ami.marbun@example.net', 17, 14, NULL, NULL),
(104, 'Manah Wibowo', 'dipa14@example.net', 3, 28, NULL, NULL),
(105, 'Ratna Halima Wastuti', 'ulva.waluyo@example.com', 13, 23, NULL, NULL),
(106, 'Chelsea Nasyiah', 'fanggraini@example.com', 1, 15, NULL, NULL),
(107, 'Endra Pangestu', 'lazuardi.malik@example.org', 47, 26, NULL, NULL),
(108, 'Parman Hardiansyah', 'tamba.dasa@example.net', 15, 20, NULL, NULL),
(109, 'Restu Azalea Pratiwi', 'marsudi15@example.com', 43, 9, NULL, NULL),
(110, 'Eva Diah Nurdiyanti', 'yhasanah@example.net', 7, 13, NULL, NULL),
(111, 'Hana Purwanti', 'gfujiati@example.org', 38, 25, NULL, NULL),
(112, 'Jumadi Widodo', 'xhutagalung@example.com', 7, 30, NULL, NULL),
(113, 'Dodo Tasdik Tarihoran', 'xsuryono@example.com', 16, 8, NULL, NULL),
(114, 'Alika Aryani', 'latika.prabowo@example.com', 37, 30, NULL, NULL),
(115, 'Febi Maimunah Hasanah S.Sos', 'suwarno.juli@example.net', 28, 17, NULL, NULL),
(116, 'Chandra Sinaga S.H.', 'melinda88@example.org', 39, 25, NULL, NULL),
(117, 'Safina Kasiyah Handayani S.T.', 'pudjiastuti.ajiono@example.net', 35, 29, NULL, NULL),
(118, 'Jatmiko Simbolon', 'hagustina@example.com', 39, 25, NULL, NULL),
(119, 'Almira Vivi Widiastuti', 'kpurnawati@example.net', 20, 8, NULL, NULL),
(120, 'Faizah Anastasia Zulaika', 'vino03@example.com', 20, 9, NULL, NULL),
(121, 'Harjo Uwais', 'gatra.budiyanto@example.com', 47, 1, NULL, NULL),
(122, 'Kacung Thamrin', 'banggraini@example.org', 30, 15, NULL, NULL),
(123, 'Sabrina Gina Yuliarti M.Ak', 'zhabibi@example.org', 39, 12, NULL, NULL),
(124, 'Hardana Nainggolan', 'taufik.halimah@example.org', 41, 30, NULL, NULL),
(125, 'Nova Utami', 'maras70@example.com', 10, 22, NULL, NULL),
(126, 'Clara Padmasari', 'elon41@example.net', 1, 17, NULL, NULL),
(127, 'Rosman Tamba M.Farm', 'rahmawati.ulya@example.net', 8, 18, NULL, NULL),
(128, 'Icha Hasanah', 'joko.hidayanto@example.org', 15, 6, NULL, NULL),
(129, 'Harjasa Iswahyudi', 'prastuti.violet@example.org', 44, 3, NULL, NULL),
(130, 'Padma Puspasari S.E.', 'maya59@example.net', 6, 10, NULL, NULL),
(131, 'Elma Lailasari', 'suryatmi.vicky@example.net', 39, 1, NULL, NULL),
(132, 'Kanda Prasetya', 'eka73@example.net', 19, 13, NULL, NULL),
(133, 'Cinta Farhunnisa Usamah', 'asafitri@example.net', 15, 6, NULL, NULL),
(134, 'Cinthia Hassanah S.T.', 'oyuliarti@example.org', 37, 16, NULL, NULL),
(135, 'Carla Melani', 'dwijaya@example.org', 19, 27, NULL, NULL),
(136, 'Kasiyah Rahimah', 'nlaksmiwati@example.org', 31, 10, NULL, NULL),
(137, 'Puti Gabriella Safitri S.Farm', 'wahyudin.uchita@example.net', 36, 30, NULL, NULL),
(138, 'Ilsa Yulianti', 'ywibowo@example.org', 43, 9, NULL, NULL),
(139, 'Kacung Balidin Rajata S.Ked', 'xanana.hardiansyah@example.com', 35, 10, NULL, NULL),
(140, 'Ade Pangestu', 'paris41@example.net', 32, 15, NULL, NULL),
(141, 'Karman Saragih S.Kom', 'uyainah.nardi@example.net', 40, 18, NULL, NULL),
(142, 'Kenes Maryadi M.Farm', 'lembah.sirait@example.net', 23, 8, NULL, NULL),
(143, 'Capa Latupono', 'iwaluyo@example.org', 17, 22, NULL, NULL),
(144, 'Betania Tantri Yulianti S.Farm', 'harjaya73@example.net', 7, 3, NULL, NULL),
(145, 'Paiman Mansur', 'luhung57@example.com', 14, 19, NULL, NULL),
(146, 'Cayadi Sihombing', 'ophelia.nainggolan@example.org', 5, 20, NULL, NULL),
(147, 'Purwadi Garang Wibowo M.Ak', 'zelaya.wastuti@example.com', 27, 8, NULL, NULL),
(148, 'Bella Haryanti', 'hariyah.aurora@example.net', 16, 19, NULL, NULL),
(149, 'Kuncara Dadap Tarihoran S.E.', 'oni.lestari@example.org', 4, 8, NULL, NULL),
(150, 'Eka Pudjiastuti', 'faizah63@example.com', 8, 6, NULL, NULL),
(151, 'Elvina Rahayu S.I.Kom', 'iwibisono@example.com', 21, 2, NULL, NULL),
(152, 'Ghaliyati Purnawati', 'wnugroho@example.com', 34, 23, NULL, NULL),
(153, 'Tiara Fitria Utami', 'harsanto42@example.net', 19, 6, NULL, NULL),
(154, 'Rahayu Hassanah M.Ak', 'nwacana@example.org', 47, 7, NULL, NULL),
(155, 'Makuta Siregar', 'ulya69@example.com', 27, 10, NULL, NULL),
(156, 'Betania Haryanti', 'damanik.respati@example.net', 50, 24, NULL, NULL),
(157, 'Padmi Usamah', 'sitorus.bakiono@example.com', 18, 7, NULL, NULL),
(158, 'Nabila Wulandari', 'budiyanto.jelita@example.net', 19, 24, NULL, NULL),
(159, 'Zulfa Kusmawati', 'xsitorus@example.org', 48, 8, NULL, NULL),
(160, 'Puspa Andriani', 'talia.hutagalung@example.org', 44, 2, NULL, NULL),
(161, 'Prabu Mahendra', 'tari.damanik@example.com', 10, 17, NULL, NULL),
(162, 'Karen Astuti S.H.', 'farida.mahmud@example.net', 45, 4, NULL, NULL),
(163, 'Cemeti Hakim S.Pd', 'wirda.kusmawati@example.com', 29, 18, NULL, NULL),
(164, 'Iriana Maryati', 'kenzie51@example.com', 39, 18, NULL, NULL),
(165, 'Ilyas Ardianto', 'oprakasa@example.org', 1, 3, NULL, NULL),
(166, 'Syahrini Patricia Kusmawati', 'narpati.adikara@example.net', 41, 16, NULL, NULL),
(167, 'Tina Dina Usada', 'labuh54@example.net', 19, 19, NULL, NULL),
(168, 'Tugiman Emil Wibowo', 'safitri.cinta@example.net', 31, 7, NULL, NULL),
(169, 'Silvia Yuliarti', 'syolanda@example.com', 22, 12, NULL, NULL),
(170, 'Martana Ardianto S.Ked', 'kusmawati.indah@example.org', 16, 2, NULL, NULL),
(171, 'Almira Syahrini Suartini', 'rusamah@example.com', 18, 20, NULL, NULL),
(172, 'Warji Widodo S.Pd', 'ajiono.tampubolon@example.net', 16, 25, NULL, NULL),
(173, 'Tantri Aryani', 'olga34@example.com', 39, 23, NULL, NULL),
(174, 'Cakrajiya Waluyo', 'pangeran16@example.net', 48, 12, NULL, NULL),
(175, 'Winda Farida', 'balidin.wacana@example.org', 42, 10, NULL, NULL),
(176, 'Zalindra Hassanah', 'prasasta.umay@example.org', 24, 12, NULL, NULL),
(177, 'Kamila Jasmin Wahyuni S.H.', 'grahayu@example.net', 45, 23, NULL, NULL),
(178, 'Enteng Firgantoro', 'najmudin.damu@example.net', 47, 5, NULL, NULL),
(179, 'Oni Maryati', 'bwidodo@example.net', 24, 17, NULL, NULL),
(180, 'Wani Syahrini Wahyuni S.Pd', 'suartini.dacin@example.net', 9, 8, NULL, NULL),
(181, 'Artawan Tasdik Jailani S.Farm', 'hsinaga@example.org', 33, 17, NULL, NULL),
(182, 'Karimah Permata', 'gabriella58@example.com', 8, 22, NULL, NULL),
(183, 'Warsa Nashiruddin', 'kiandra39@example.com', 12, 10, NULL, NULL),
(184, 'Yance Nova Yulianti M.TI.', 'ohandayani@example.net', 35, 11, NULL, NULL),
(185, 'Slamet Hutagalung', 'asman.nasyidah@example.com', 45, 15, NULL, NULL),
(186, 'Emong Agus Sitompul M.Farm', 'suartini.sakura@example.org', 24, 4, NULL, NULL),
(187, 'Dimas Setiawan S.Farm', 'hamima46@example.org', 50, 7, NULL, NULL),
(188, 'Rusman Sihombing S.Pd', 'hairyanto.lazuardi@example.com', 1, 18, NULL, NULL),
(189, 'Darsirah Tri Firgantoro', 'raisa89@example.org', 7, 23, NULL, NULL),
(190, 'Kenes Rizki Kurniawan', 'reksa.hariyah@example.com', 31, 7, NULL, NULL),
(191, 'Zulfa Wijayanti M.Farm', 'pyulianti@example.org', 25, 15, NULL, NULL),
(192, 'Rini Usamah', 'fujiati.parman@example.org', 30, 20, NULL, NULL),
(193, 'Cawisadi Sihombing', 'erik.firmansyah@example.org', 10, 26, NULL, NULL),
(194, 'Garan Tampubolon', 'ida77@example.net', 23, 13, NULL, NULL),
(195, 'Vivi Andriani', 'latif57@example.com', 48, 7, NULL, NULL),
(196, 'Prayoga Saragih', 'luwar.pertiwi@example.com', 24, 17, NULL, NULL),
(197, 'Baktianto Kusumo', 'fujiati.anastasia@example.net', 38, 28, NULL, NULL),
(198, 'Jasmani Rajasa M.Farm', 'ida01@example.com', 48, 3, NULL, NULL),
(199, 'Vivi Melani S.Kom', 'febi.usamah@example.com', 25, 27, NULL, NULL),
(200, 'Rachel Tiara Mulyani', 'puspa.mulyani@example.net', 31, 16, NULL, NULL),
(201, 'pt adas', 'adas@mail', NULL, NULL, '2019-11-21 23:34:08', '2019-11-21 23:34:08'),
(202, 'Dimas Okta Arifani', 'dimasokta14@gmail.com', NULL, NULL, '2019-11-22 00:00:14', '2019-11-22 00:00:14');

-- --------------------------------------------------------

--
-- Table structure for table `job_references`
--

CREATE TABLE `job_references` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_pekerjaan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_references`
--

INSERT INTO `job_references` (`id`, `nama_pekerjaan`, `created_at`, `updated_at`) VALUES
(1, 'Biological Technician', NULL, NULL),
(2, 'Adjustment Clerk', NULL, NULL),
(3, 'Electronic Masking System Operator', NULL, NULL),
(4, 'Broadcast News Analyst', NULL, NULL),
(5, 'Home Appliance Repairer', NULL, NULL),
(6, 'Recyclable Material Collector', NULL, NULL),
(7, 'Photographer', NULL, NULL),
(8, 'Cafeteria Cook', NULL, NULL),
(9, 'Library Worker', NULL, NULL),
(10, 'Milling Machine Operator', NULL, NULL),
(11, 'Photoengraver', NULL, NULL),
(12, 'Recreation and Fitness Studies Teacher', NULL, NULL),
(13, 'Central Office Operator', NULL, NULL),
(14, 'Etcher', NULL, NULL),
(15, 'Shear Machine Set-Up Operator', NULL, NULL),
(16, 'Brazing Machine Operator', NULL, NULL),
(17, 'Sociologist', NULL, NULL),
(18, 'Machine Operator', NULL, NULL),
(19, 'Home Appliance Installer', NULL, NULL),
(20, 'Software Engineer', NULL, NULL),
(21, 'Telecommunications Line Installer', NULL, NULL),
(22, 'Chemist', NULL, NULL),
(23, 'Food Tobacco Roasting', NULL, NULL),
(24, 'Production Planning', NULL, NULL),
(25, 'Command Control Center Specialist', NULL, NULL),
(26, 'Coroner', NULL, NULL),
(27, 'Psychiatric Aide', NULL, NULL),
(28, 'Credit Analyst', NULL, NULL),
(29, 'Religious Worker', NULL, NULL),
(30, 'Brake Machine Setter', NULL, NULL);

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_11_21_164746_create_companies_table', 1),
(5, '2019_11_21_184613_create_table_job_references', 1),
(6, '2019_11_21_185139_create_employees', 1);

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
(1, 'Admin', 'admin@transisi.id', '2019-11-21 12:02:57', '$2y$10$Q.tTSIVcfikVy2FXBpkKqumcc4optfrtXv3v0/bY7tSl/G.X6F.Du', NULL, '2019-11-21 12:02:57', '2019-11-21 12:02:57');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `companies_email_unique` (`email`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employees_email_unique` (`email`),
  ADD KEY `employees_company_id_foreign` (`company_id`),
  ADD KEY `employees_job_id_foreign` (`job_id`);

--
-- Indexes for table `job_references`
--
ALTER TABLE `job_references`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=203;

--
-- AUTO_INCREMENT for table `job_references`
--
ALTER TABLE `job_references`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `employees_job_id_foreign` FOREIGN KEY (`job_id`) REFERENCES `job_references` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
