-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 30, 2021 at 10:12 AM
-- Server version: 10.3.29-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpussk_perpus`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `release_year` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `cover_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `author`, `release_year`, `created_at`, `updated_at`, `cover_url`, `cover_id`, `category_id`) VALUES
(1, 'Indonesia Merdeka', 'RR Indonesia', 2010, '2021-05-25 20:02:06', '2021-05-25 20:02:06', 'https://res.cloudinary.com/karla190922/image/upload/v1621972925/books_cover/jsvpr3wlbjr2dl7shcki.png', 'books_cover/jsvpr3wlbjr2dl7shcki', 2),
(2, 'Indonesia 2', 'Steve', 2111, '2021-05-25 21:14:25', '2021-05-29 10:18:33', 'https://res.cloudinary.com/karla190922/image/upload/v1621977265/books_cover/fgmlt1icubfk0qm9lqhi.jpg', 'books_cover/fgmlt1icubfk0qm9lqhi', 3);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2021_03_06_210343_create_books_table', 1),
(10, '2021_03_07_223733_add_file_path', 1),
(11, '2021_03_08_011244_create_orders_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('b19523c083d868b5cf38ef45c57a8577923590a7024f21f7d15d255c9de77ffe6950262810cd5e16', 1, 1, 'LaravelAuthApp', '[]', 0, '2021-05-24 16:54:47', '2021-05-24 16:54:47', '2022-05-24 23:54:47'),
('8c8b348e266a91edbf526ed5a8eebcc9b92810b6aee2d613165d4a99dc67350dd1ffb3ab6539309c', 2, 1, 'LaravelAuthApp', '[]', 0, '2021-05-25 15:40:03', '2021-05-25 15:40:03', '2022-05-25 22:40:03'),
('ef9db5f66af2d791384abd0ba592f0666541641bfc47ddeeb38c355ab3918baeaf163da46374e065', 3, 1, 'LaravelAuthApp', '[]', 0, '2021-05-25 15:41:20', '2021-05-25 15:41:20', '2022-05-25 22:41:20'),
('bd187126284da52b47751368ddb2e292da468cd878bfa322aa37e19fd420479615fbb3eb601d7c84', 4, 1, 'LaravelAuthApp', '[]', 0, '2021-05-25 15:47:39', '2021-05-25 15:47:39', '2022-05-25 22:47:39'),
('19a4c25b7ac592d5f8ac0facb0db4cd1ab003460089324f7440238b2aa6da777de1a08de348267c7', 5, 1, 'LaravelAuthApp', '[]', 0, '2021-05-25 15:52:11', '2021-05-25 15:52:11', '2022-05-25 22:52:11'),
('88038feffddbbf09b7578aa28f5f2907078eaeec0f410f481606ffb167c825fe6cfad4b1ded198a2', 1, 1, 'LaravelAuthApp', '[]', 0, '2021-05-25 16:20:20', '2021-05-25 16:20:20', '2022-05-25 23:20:20'),
('ce2988d427795f98f194b62e487324c9ba68dd0857831a91ead986cb369a6ca1e825a03eefd023dd', 15, 1, 'LaravelAuthApp', '[]', 0, '2021-05-28 10:09:18', '2021-05-28 10:09:18', '2022-05-28 17:09:18'),
('9a2bb7c886d8a6b3dd4a5a7985c6023c66c4da6ea531c7a3c23f85933c92db6d611d31c1b01dd5e2', 15, 1, 'LaravelAuthApp', '[]', 0, '2021-05-28 10:09:30', '2021-05-28 10:09:30', '2022-05-28 17:09:30');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'vRUD9TQ9oNYZfZqbvZIHY6faPsluK2ujM8iFI3AL', NULL, 'http://localhost', 1, 0, 0, '2021-05-24 16:25:58', '2021-05-24 16:25:58'),
(2, NULL, 'Laravel Password Grant Client', 'j0CfCr2haYHWwsbx235Y2BsISppNSCPuFDdhlUtb', 'users', 'http://localhost', 0, 1, 0, '2021-05-24 16:25:58', '2021-05-24 16:25:58');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-05-24 16:25:58', '2021-05-24 16:25:58');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `book_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal` date DEFAULT NULL,
  `jam` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `book_id`, `status`, `tanggal`, `jam`, `created_at`, `updated_at`) VALUES
(1, 13, 2, 'Approved', '2021-05-27', '22:42', '2021-05-27 15:42:58', '2021-05-29 13:01:21'),
(2, 13, 1, 'Submitted', '2021-05-28', '10:20', '2021-05-27 16:55:31', '2021-05-27 16:55:31'),
(3, 13, 1, 'Rejected', '2021-05-29', '08:21', '2021-05-28 02:13:07', '2021-05-29 20:10:49'),
(4, 13, 1, 'Selesai', '2021-05-30', '09:00', '2021-05-28 14:39:03', '2021-05-29 15:08:37'),
(5, 3, 2, 'Submitted', '2021-05-29', '21:20', '2021-05-29 14:19:39', '2021-05-29 14:19:39'),
(23, 13, 1, 'Approved', '2021-05-31', '03:15', '2021-05-29 20:10:06', '2021-05-29 20:10:31'),
(22, 13, 1, 'Approved', '2021-05-31', '05:15', '2021-05-29 20:07:18', '2021-05-29 20:09:42');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `role` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kelas` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `kelas`, `token`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'null', 'dede55@gmail.com', NULL, '$2y$10$oAyfBe3jBsNzkMy4hS3xSueL4UR9QN7rNOIzzWhtNoIyAMi2Bz/w6', 'admin', NULL, NULL, NULL, '2021-05-24 16:24:39', '2021-05-29 17:26:42'),
(2, 'dede', 'dede57@gmail.com', NULL, '$2y$10$91iYILQ7N0g7YvB7WY16m.pWqGlT8P1uA9ov9B9nFqZkEk24Pl6N6', 'admin', NULL, NULL, NULL, '2021-05-25 15:40:03', '2021-05-25 15:40:03'),
(3, 'Alex', 'alex@gmail.com', NULL, '$2y$10$keVa44REodOG.KrdtZHfyu.tTiQ2UHggLH2aqmMgB3YwaxoTnc1aC', 'user', NULL, NULL, NULL, '2021-05-25 15:41:20', '2021-05-25 15:41:20'),
(4, 'Alex', 'alex22@gmail.com', NULL, '$2y$10$oiSJDohKgVgy9XajVmfEU.8.gEWPLpEsZ0tTeZtqkj.KSlXTf18VO', 'user', NULL, NULL, NULL, '2021-05-25 15:47:39', '2021-05-25 15:47:39'),
(5, 'Alex', 'alex223@gmail.com', NULL, '$2y$10$OiW0Coh/wErG4Pm1r3NtgeX8Q4cQNfhAwj1KeGW3q/I0Esg/oAkGq', 'user', NULL, NULL, NULL, '2021-05-25 15:52:11', '2021-05-25 15:52:11'),
(6, 'Alex', 'alex23@gmail.com', NULL, '$2y$10$jd5wHjFl7.Ddr/c5bqFXEuDipU3vlxjNusQs4iupJGq5R46dTRaOO', 'user', NULL, NULL, NULL, '2021-05-25 15:54:57', '2021-05-25 15:54:57'),
(7, 'dede', 'dede570@gmail.com', NULL, '$2y$10$gR0IpApCuabd2P./Ydhr.elkmjbokjbwsTZbSgk83ySmBxueFUx0W', 'admin', NULL, NULL, NULL, '2021-05-25 15:56:35', '2021-05-25 15:56:35'),
(8, 'dede', 'dede50@gmail.com', NULL, '$2y$10$CTAtIpMGlmwKFtN9TpCsDuSKVPTxg6Y6V5YFnsLTuD3r1wlqIP.M6', 'admin', NULL, NULL, NULL, '2021-05-25 15:57:31', '2021-05-25 15:57:31'),
(9, 'dede', 'dede52@gmail.com', NULL, '$2y$10$J6/6FXINdWgXplru8vNXMeQTDf7e9YkAusxznlx1EvmAKi272Ty4u', 'admin', NULL, NULL, NULL, '2021-05-25 16:01:02', '2021-05-25 16:01:02'),
(10, 'Alex', 'alex2s@gmail.com', NULL, '$2y$10$/WENx151sFg7bmJqAif.Ku2BKvHQcVTx2VQJMhQP1LSRwW1RiOllS', 'user', NULL, NULL, NULL, '2021-05-25 16:01:46', '2021-05-25 16:01:46'),
(11, 'Alex', 'alex2n4@gmail.com', NULL, '$2y$10$KiGeScs0Kpqi8popYtQETOxNi4YQDSF1ObJ4PZi1FG/v995UKaUMO', 'user', NULL, NULL, NULL, '2021-05-25 16:04:27', '2021-05-25 16:04:27'),
(12, 'Alex', 'alex2n@gmail.com', NULL, '$2y$10$V3hTcUyJ6vG9vOl8c6Od5.TyXT9UdHkWZVmTDwRKh738kIHdjaz42', 'user', NULL, NULL, NULL, '2021-05-25 16:05:25', '2021-05-25 16:05:25'),
(13, 'fery tes', 'fery@gmail.com', NULL, '$2y$10$W4yDNT.xF1qQ7f15wEBnW.w1xotaD2KGbVMIO0IE5D.U6JuIZk4Ne', 'user', 'XII', 'e07g2zpKQGi3GIYeen9mw5:APA91bFTAF-zO6OJvN6Js7XiTCd0244sKdS1X3eVbIuFAwS348L0IT4KCnrSX9JM_tpg12n1UfnYkjphp2ryQIA_qmoMDwxjUBVbzze5irJZn7VvEUwC6FOD-cFWVx4NB3Ols7_wfNNx', NULL, '2021-05-25 19:34:45', '2021-05-29 18:40:41'),
(14, 'Admin', 'perpus.skadala@gmail.com', NULL, '$2y$10$IotzWVz7ui6qdw0Ry01VwOZUwTYNX5D.l.d1D8u1jO4.E.HB6cQ7G', 'admin', NULL, NULL, NULL, '2021-05-25 20:01:15', '2021-05-25 20:01:15'),
(15, 'Fery', 'fery2@gmail.com', NULL, '$2y$10$yH5oRQ4qQfiIxRl4Ag.ik.ixEFlo8E5mMMYWdVW.QT2Z0SWvTrwn.', 'user', NULL, NULL, NULL, '2021-05-28 10:03:22', '2021-05-28 10:03:22'),
(16, 'dede', 'dede27@gmail.com', NULL, '$2y$10$yiLGg1LeqgjJVtvpwbrTMuZ4xAwhz3E14ahVkqe5b1t.3YPeJq5.u', 'admin', NULL, NULL, NULL, '2021-05-28 10:12:34', '2021-05-28 10:12:34'),
(17, 'dede', 'dede270@gmail.com', NULL, '$2y$10$.EG68xLj1UN0g4T6ydZqdOo0o9XlsZY/0dEFTgAUXB5ZpjkHCeT7y', 'admin', 'XII', NULL, NULL, '2021-05-28 10:13:46', '2021-05-28 10:13:46'),
(18, 'dede123', 'dede@gmail.com', NULL, '$2y$10$QP.zjKlgY9AbH9DK33VCheP1Vi.Snjv63E4P7.X0djBoTs5ARsZiy', 'user', 'dede@gmail.com', NULL, NULL, '2021-05-28 14:36:35', '2021-05-28 14:36:35'),
(19, 'admin test', 'admin@gmail.com', NULL, '$2y$10$5rXDqM1tRWXVRJFUdpQlb.Zo/ESASqqac4L4QgUUpIfXJq5vTAyxe', 'admin', NULL, NULL, NULL, '2021-05-28 14:53:15', '2021-05-28 14:53:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`),
  ADD KEY `orders_book_id_foreign` (`book_id`);

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
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
