-- --------------------------------------------------------
-- Host:                         localhost
-- Versi server:                 5.7.24 - MySQL Community Server (GPL)
-- OS Server:                    Win64
-- HeidiSQL Versi:               9.5.0.5332
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- membuang struktur untuk table break-out.detail_order
CREATE TABLE IF NOT EXISTS `detail_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_order` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jumlah_menu` int(11) NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel break-out.detail_order: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `detail_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `detail_order` ENABLE KEYS */;

-- membuang struktur untuk table break-out.kategoris
CREATE TABLE IF NOT EXISTS `kategoris` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `kategori` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

-- Membuang data untuk tabel break-out.kategoris: ~2 rows (lebih kurang)
/*!40000 ALTER TABLE `kategoris` DISABLE KEYS */;
INSERT INTO `kategoris` (`id`, `kategori`, `created_at`, `updated_at`) VALUES
	(1, 'Food', '2012-01-10 14:47:30', '2012-01-10 14:47:30'),
	(2, 'Drink', '2012-01-10 14:47:35', '2012-01-10 14:47:35');
/*!40000 ALTER TABLE `kategoris` ENABLE KEYS */;

-- membuang struktur untuk table break-out.levels
CREATE TABLE IF NOT EXISTS `levels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `level` enum('admin','owner','kasir','waiter','meja','koki') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

-- Membuang data untuk tabel break-out.levels: ~5 rows (lebih kurang)
/*!40000 ALTER TABLE `levels` DISABLE KEYS */;
INSERT INTO `levels` (`id`, `level`, `created_at`, `updated_at`) VALUES
	(1, 'admin', NULL, NULL),
	(2, 'owner', NULL, NULL),
	(3, 'kasir', NULL, NULL),
	(4, 'waiter', NULL, NULL),
	(5, 'meja', NULL, NULL);
/*!40000 ALTER TABLE `levels` ENABLE KEYS */;

-- membuang struktur untuk table break-out.menus
CREATE TABLE IF NOT EXISTS `menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga` int(11) NOT NULL,
  `kategori` int(11) NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('ready','sold out') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

-- Membuang data untuk tabel break-out.menus: ~17 rows (lebih kurang)
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` (`id`, `nama`, `harga`, `kategori`, `photo`, `status`, `created_at`, `updated_at`) VALUES
	(15, 'Bajigur', 14000, 2, 'bajigur.jpg', 'ready', '2019-05-09 16:28:39', '2019-05-09 16:28:39'),
	(16, 'Bakakak Hayam', 50000, 1, 'bakakak-hayam.jpg', 'ready', '2019-05-09 16:29:31', '2019-05-09 16:29:31'),
	(17, 'Bandrek', 11000, 2, 'bandrek.jpg', 'ready', '2019-05-09 16:29:57', '2019-05-09 16:29:57'),
	(18, 'Empal Gentong', 23000, 1, 'empal-gentong.jpeg', 'ready', '2019-05-09 16:30:21', '2019-05-09 16:30:21'),
	(19, 'Es Cendol', 7000, 2, 'es-cendol.jpg', 'ready', '2019-05-09 16:30:42', '2019-05-09 16:30:42'),
	(20, 'Es Cincau', 7000, 2, 'es-cincau.jpg', 'ready', '2019-05-09 16:31:06', '2019-05-09 16:31:06'),
	(21, 'Es Doger', 14000, 2, 'es-doger.jpg', 'ready', '2019-05-09 16:31:45', '2019-05-09 16:31:45'),
	(22, 'Es Goyobod', 15000, 2, 'es-goyobod.png', 'ready', '2019-05-09 16:32:07', '2019-05-09 16:32:07'),
	(23, 'Es Oyen', 15000, 2, 'es-oyen.jpg', 'ready', '2019-05-09 16:32:28', '2019-05-09 16:32:28'),
	(24, 'Karedok', 10000, 1, 'karedok.jpg', 'ready', '2019-05-09 16:32:51', '2019-05-09 16:32:51'),
	(25, 'Kupat Tahu', 10000, 1, 'kupat-tahu.jpg', 'ready', '2019-05-09 16:33:07', '2019-05-09 16:33:07'),
	(26, 'Lotek', 10000, 1, 'lotek.jpg', 'ready', '2019-05-09 16:33:29', '2019-05-09 16:33:29'),
	(27, 'Mie Kocok', 20000, 1, 'mie-kocok.jpg', 'ready', '2019-05-09 16:33:50', '2019-05-09 16:33:50'),
	(28, 'Nasi Liwet', 12000, 1, 'nasi-liwet.jpg', 'ready', '2019-05-09 16:34:20', '2019-05-09 16:34:20'),
	(29, 'Nasi Timbel', 12000, 1, 'nasi-timbel.jpg', 'ready', '2019-05-09 16:34:35', '2019-05-09 16:34:35'),
	(30, 'Sate Maranggi', 40000, 1, 'sate-maranggi.jpg', 'ready', '2019-05-09 16:34:51', '2019-05-09 16:34:51'),
	(31, 'Soto Bandung', 20000, 1, 'soto-bandung.jpg', 'ready', '2019-05-09 16:35:12', '2019-05-09 16:35:12'),
	(32, 'Soto Mie', 18000, 1, 'soto-mie.jpg', 'ready', '2019-05-09 16:35:27', '2019-05-09 16:35:27'),
	(33, 'Tutug Oncom', 10000, 1, 'tutug-oncom.jpg', 'ready', '2019-05-09 16:35:44', '2019-05-09 16:35:44');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;

-- membuang struktur untuk table break-out.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel break-out.migrations: ~7 rows (lebih kurang)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2012_01_09_172029_create_levels_table', 1),
	(2, '2012_01_09_172228_create_kategoris_table', 1),
	(3, '2012_01_09_172258_create_menus_table', 1),
	(4, '2012_01_09_172405_create_detail_orders_table', 1),
	(5, '2012_01_09_172430_create_orders_table', 1),
	(6, '2012_01_09_172451_create_transaksis_table', 1),
	(7, '2012_01_11_063737_create_testis_table', 2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- membuang struktur untuk table break-out.orders
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `id_meja` int(11) NOT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('dipesan','belum dibayar','dibayar') COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

-- Membuang data untuk tabel break-out.orders: ~41 rows (lebih kurang)
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` (`id`, `id_user`, `id_meja`, `keterangan`, `status`, `tanggal`, `created_at`, `updated_at`) VALUES
	(1, 9, 18, NULL, 'dibayar', '2012-01-12', '2012-01-12 14:53:19', '2012-01-12 14:55:14'),
	(2, 9, 18, NULL, 'dibayar', '2012-01-12', '2012-01-12 14:53:40', '2012-01-12 14:55:07'),
	(3, 9, 18, NULL, 'dibayar', '2012-01-12', '2012-01-12 14:54:04', '2012-01-12 15:10:47'),
	(4, 9, 18, NULL, 'dibayar', '2012-01-12', '2012-01-12 15:13:03', '2012-01-12 15:23:28'),
	(5, 9, 18, NULL, 'dibayar', '2012-01-12', '2012-01-12 15:24:32', '2012-01-12 16:15:39'),
	(6, 9, 18, NULL, 'dibayar', '2012-01-12', '2012-01-12 15:24:43', '2012-01-12 15:43:03'),
	(7, 9, 18, NULL, 'dibayar', '2012-01-12', '2012-01-12 15:24:54', '2012-01-12 16:15:55'),
	(8, 9, 18, NULL, 'dibayar', '2012-01-12', '2012-01-12 15:43:18', '2012-01-12 15:59:50'),
	(9, 9, 18, NULL, 'dibayar', '2012-01-12', '2012-01-12 16:16:29', '2012-01-12 16:16:55'),
	(10, 12, 18, NULL, 'dibayar', '2012-01-12', '2012-01-12 16:20:57', '2012-01-12 16:24:12'),
	(11, 9, 18, NULL, 'dibayar', '2012-01-12', '2012-01-12 16:24:36', '2012-01-12 16:27:20'),
	(12, 18, 19, NULL, 'dibayar', '2012-01-13', '2012-01-13 16:46:53', '2012-01-13 17:32:44'),
	(13, 18, 18, NULL, 'dibayar', '2012-01-13', '2012-01-13 16:47:22', '2012-01-13 17:29:20'),
	(14, 18, 18, NULL, 'dibayar', '2012-01-13', '2012-01-13 16:47:30', '2012-01-13 17:32:31'),
	(15, 18, 18, NULL, 'dibayar', '2012-01-13', '2012-01-13 17:08:13', '2012-01-13 17:29:01'),
	(16, 18, 18, NULL, 'dibayar', '2012-01-13', '2012-01-13 17:12:06', '2019-05-09 16:27:36'),
	(17, 18, 18, NULL, 'dibayar', '2012-01-13', '2012-01-13 17:18:49', '2012-01-13 20:19:03'),
	(18, 9, 19, NULL, 'dibayar', '2012-01-13', '2012-01-13 17:28:21', '2012-01-13 20:18:46'),
	(19, 18, 18, NULL, 'dibayar', '2012-01-13', '2012-01-13 18:06:01', '2019-05-09 16:27:17'),
	(20, 9, 18, NULL, 'dibayar', '2012-01-13', '2012-01-13 19:41:47', '2012-01-13 20:33:29'),
	(21, 18, 18, NULL, 'dibayar', '2012-01-13', '2012-01-13 20:11:15', '2012-01-13 20:32:41'),
	(22, 18, 18, NULL, 'dibayar', '2012-01-13', '2012-01-13 20:13:25', '2019-05-09 16:27:32'),
	(23, 9, 18, NULL, 'dibayar', '2012-01-13', '2012-01-13 20:23:05', '2019-05-09 16:27:29'),
	(24, 9, 19, NULL, 'dibayar', '2012-01-13', '2012-01-13 20:36:20', '2012-01-13 20:39:07'),
	(25, 18, 18, NULL, 'dibayar', '2012-01-13', '2012-01-13 20:41:09', '2019-05-09 16:27:26'),
	(26, 18, 18, NULL, 'dibayar', '2012-01-13', '2012-01-13 20:54:57', '2019-05-09 16:27:23'),
	(27, 18, 18, NULL, 'dibayar', '2012-01-13', '2012-01-13 21:22:21', '2012-01-13 21:26:32'),
	(28, 18, 18, NULL, 'dibayar', '2012-01-13', '2012-01-13 21:22:30', '2012-01-14 02:51:55'),
	(29, 12, 19, NULL, 'dibayar', '2012-01-13', '2012-01-13 21:23:50', '2012-01-13 21:25:25'),
	(30, 18, 18, NULL, 'dibayar', '2012-01-13', '2012-01-13 21:28:55', '2012-01-14 02:51:42'),
	(31, 12, 18, NULL, 'dibayar', '2012-01-13', '2012-01-13 21:29:40', '2012-01-13 21:38:58'),
	(32, 12, 19, NULL, 'dibayar', '2012-01-13', '2012-01-13 21:40:37', '2012-01-14 02:13:40'),
	(33, 12, 18, NULL, 'dibayar', '2012-01-13', '2012-01-13 21:41:30', '2012-01-14 02:13:26'),
	(34, 12, 18, NULL, 'dibayar', '2012-01-13', '2012-01-13 21:42:10', '2012-01-13 21:47:27'),
	(35, 18, 18, NULL, 'dibayar', '2012-01-14', '2012-01-14 02:10:13', '2012-01-14 02:13:03'),
	(36, 18, 18, NULL, 'dibayar', '2012-01-14', '2012-01-14 02:11:47', '2012-01-14 02:32:06'),
	(37, 18, 18, NULL, 'dibayar', '2012-01-14', '2012-01-14 02:20:38', '2012-01-14 02:31:49'),
	(38, 12, 19, NULL, 'dipesan', '2012-01-14', '2012-01-14 02:27:25', '2012-01-14 02:27:25'),
	(39, 18, 18, NULL, 'dibayar', '2012-01-14', '2012-01-14 02:37:16', '2012-01-14 02:38:55'),
	(40, 9, 18, NULL, 'dipesan', '2012-01-14', '2012-01-14 02:50:24', '2012-01-14 02:50:24'),
	(41, 9, 18, NULL, 'dibayar', '2012-01-14', '2012-01-14 02:55:31', '2019-05-09 16:27:20'),
	(42, 9, 18, NULL, 'dipesan', '2019-05-09', '2019-05-09 16:37:08', '2019-05-09 16:37:08');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;

-- membuang struktur untuk table break-out.testis
CREATE TABLE IF NOT EXISTS `testis` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `testi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel break-out.testis: ~6 rows (lebih kurang)
/*!40000 ALTER TABLE `testis` DISABLE KEYS */;
INSERT INTO `testis` (`id`, `nama`, `testi`, `status`, `created_at`, `updated_at`) VALUES
(1, 'ihsan Pratama', 'tempat makan nya adem , makanan nya enak, dan cocok unutk kumpul bersama baik sama keluarga atau pun teman teman', 'ditampilkan', '2012-01-10 23:51:47', '2012-01-10 23:51:47'),
(2, 'Dewiws', 'sambel nya mak joss', 'ditampilkan', '2012-01-11 00:04:46', '2012-01-11 01:49:42'),
(9, 'haekal', 'lalabnya kurang banyak dan liwet nya itu lhoo enak', 'ditampilkan', '2012-01-11 01:02:14', '2012-01-11 01:49:48'),
(11, 'Zulfia', 'ikan bakar nya mantull', 'ditampilkan', '2012-01-11 02:49:50', '2012-01-11 12:47:10'),
(12, 'Egi Taufik', 'cocok', 'ditampilkan', '2012-01-12 07:51:09', '2012-01-13 13:36:52'),
(15, 'Kulloh besari', 'Cocok Sekakli unutk menikmati senja buat anak indie seperti kami dengan makanan khas sunda dan secangkir kopi', 'ditampilkan', '2012-01-13 14:22:55', '2019-04-25 19:27:35'),
(16, 'Ilham Kevin Leonardo', 'bakakak ayam nya mantaps', 'dikirim', '2019-04-25 19:53:24', '2019-04-25 19:53:24'),
(17, 'Najib&nabil', 'minuman nya menyegarkan apalagi dibulan puasa ini', 'dikirim', '2019-04-30 21:30:26', '2019-04-30 21:30:26');
/*!40000 ALTER TABLE `testis` ENABLE KEYS */;

-- membuang struktur untuk table break-out.transaksis
CREATE TABLE IF NOT EXISTS `transaksis` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `id_order` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `total_bayar` int(11) NOT NULL,
  `status` enum('pending','dimasak') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

-- Membuang data untuk tabel break-out.transaksis: ~7 rows (lebih kurang)
/*!40000 ALTER TABLE `transaksis` DISABLE KEYS */;
INSERT INTO `transaksis` (`id`, `id_user`, `id_order`, `tanggal`, `total_bayar`, `status`, `created_at`, `updated_at`) VALUES
	(1, 9, 19, '2019-05-09', 0, NULL, '2019-05-09 16:27:17', '2019-05-09 16:27:17'),
	(2, 9, 41, '2019-05-09', 0, NULL, '2019-05-09 16:27:20', '2019-05-09 16:27:20'),
	(3, 9, 26, '2019-05-09', 0, NULL, '2019-05-09 16:27:23', '2019-05-09 16:27:23'),
	(4, 9, 25, '2019-05-09', 0, NULL, '2019-05-09 16:27:26', '2019-05-09 16:27:26'),
	(5, 9, 23, '2019-05-09', 0, NULL, '2019-05-09 16:27:29', '2019-05-09 16:27:29'),
	(6, 9, 22, '2019-05-09', 0, NULL, '2019-05-09 16:27:32', '2019-05-09 16:27:32'),
	(7, 9, 16, '2019-05-09', 0, NULL, '2019-05-09 16:27:36', '2019-05-09 16:27:36');
/*!40000 ALTER TABLE `transaksis` ENABLE KEYS */;

-- membuang struktur untuk table break-out.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` int(11) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel break-out.users: ~6 rows (lebih kurang)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `password`, `level`, `remember_token`, `created_at`, `updated_at`) VALUES
	(9, 'Admin', 'admin@gmail.com', '$2y$10$CKwLu6OQvIn/gQjg2mPCKOuOnqyo3T7.ICKSFma.uerofZQSpVUyy', 1, 'GyrXEfd3GdnQksShGWKOAD2kf9R76xgpvTXU26JNJdOUhzdI1Bzg4HwJRGg1', '2012-01-09 17:24:02', '2012-01-09 17:24:02'),
	(10, 'Owner', 'owner@gmail.com', '$2y$10$45rEb5J8zSDG7lzyu1PX.e0Uo8mxD.LUBo989Yg1SzgjJJIZToFQG', 2, 'mkRKN2DzRcybtxo9damIwX7806HlqYPsEPN7wfxWQfM28WGPPGPTRNdbUA9r', '2012-01-09 17:25:02', '2012-01-09 17:25:02'),
	(11, 'Kasir', 'kasir@gmail.com', '$2y$10$1qEf544.h2.wK.8ZrlEYhuTvZdGHItLMXYlHFYNLiluYmS76bUWRa', 3, 'uaQjr1WBU48YOnjjijNyjovX67HzbXhMUMcyMnoTUiIaE2BIWazs5fiLAOTy', '2012-01-09 17:29:34', '2012-01-09 17:29:44'),
	(12, 'Waiter', 'waiter@gmail.com', '$2y$10$8aRROK4OlUQt0q2rVfx9Xet.XD/Mxzz0B2thYJmNtR3mAGOi9Nbd2', 4, 'lwPyrEVl8P8gKVmo4hbgwpgFVAfTxHFa2kvyPAIVNLxnxVuFnhxNDUDQWGka', '2012-01-09 17:30:06', '2012-01-09 17:30:06'),
	(18, 'Table 1', 'meja@gmail.com', '$2y$10$xQZlTjV2cfGyvDzLOhosQuy8e.xrKOEk2T6EuDA/M8WL6BEsc1IvG', 5, 'TuWDTtvMotlye7XazS5cnGKgYHYpSoeXoQAih4pJitwlyEIoi6J18bK7I5GC', '2012-01-09 17:56:06', '2012-01-09 17:56:06'),
	(19, 'Table 2', 'meja2@gmail.com', '$2y$10$nQIRyhwz.u1cimxUIoF6l.PoUs24kzYC5MFf.mZW56qaouLraMsPO', 5, NULL, '2012-01-11 21:24:09', '2012-01-11 21:28:34');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
