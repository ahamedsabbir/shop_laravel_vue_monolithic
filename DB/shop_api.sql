-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 15, 2024 at 12:36 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop_api`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `cover_image` text NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `body`, `cover_image`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Article 1', 'This is the body of Article 1.', 'cover_image1.jpg', 'article-1', '2024-08-14 15:21:06', '2024-08-14 15:21:06'),
(2, 'Article 2', 'This is the body of Article 2.', 'cover_image2.jpg', 'article-2', '2024-08-14 15:21:06', '2024-08-14 15:21:06'),
(3, 'Article 3', 'This is the body of Article 3.', 'cover_image3.jpg', 'article-3', '2024-08-14 15:21:06', '2024-08-14 15:21:06'),
(4, 'Article 4', 'This is the body of Article 4.', 'cover_image4.jpg', 'article-4', '2024-08-14 15:21:06', '2024-08-14 15:21:06'),
(5, 'Article 5', 'This is the body of Article 5.', 'cover_image5.jpg', 'article-5', '2024-08-14 15:21:06', '2024-08-14 15:21:06'),
(6, 'Article 6', 'This is the body of Article 6.', 'cover_image6.jpg', 'article-6', '2024-08-14 15:21:06', '2024-08-14 15:21:06'),
(7, 'Article 7', 'This is the body of Article 7.', 'cover_image7.jpg', 'article-7', '2024-08-14 15:21:06', '2024-08-14 15:21:06'),
(8, 'Article 8', 'This is the body of Article 8.', 'cover_image8.jpg', 'article-8', '2024-08-14 15:21:06', '2024-08-14 15:21:06'),
(9, 'Article 9', 'This is the body of Article 9.', 'cover_image9.jpg', 'article-9', '2024-08-14 15:21:06', '2024-08-14 15:21:06'),
(10, 'Article 10', 'This is the body of Article 10.', 'cover_image10.jpg', 'article-10', '2024-08-14 15:21:06', '2024-08-14 15:21:06'),
(11, 'Article 11', 'This is the body of Article 11.', 'cover_image11.jpg', 'article-11', '2024-08-14 15:21:06', '2024-08-14 15:21:06'),
(12, 'Article 12', 'This is the body of Article 12.', 'cover_image12.jpg', 'article-12', '2024-08-14 15:21:06', '2024-08-14 15:21:06'),
(13, 'Article 13', 'This is the body of Article 13.', 'cover_image13.jpg', 'article-13', '2024-08-14 15:21:06', '2024-08-14 15:21:06'),
(14, 'Article 14', 'This is the body of Article 14.', 'cover_image14.jpg', 'article-14', '2024-08-14 15:21:06', '2024-08-14 15:21:06'),
(15, 'Article 15', 'This is the body of Article 15.', 'cover_image15.jpg', 'article-15', '2024-08-14 15:21:06', '2024-08-14 15:21:06'),
(16, 'Article 16', 'This is the body of Article 16.', 'cover_image16.jpg', 'article-16', '2024-08-14 15:21:06', '2024-08-14 15:21:06'),
(17, 'Article 17', 'This is the body of Article 17.', 'cover_image17.jpg', 'article-17', '2024-08-14 15:21:06', '2024-08-14 15:21:06'),
(18, 'Article 18', 'This is the body of Article 18.', 'cover_image18.jpg', 'article-18', '2024-08-14 15:21:06', '2024-08-14 15:21:06'),
(19, 'Article 19', 'This is the body of Article 19.', 'cover_image19.jpg', 'article-19', '2024-08-14 15:21:06', '2024-08-14 15:21:06'),
(20, 'Article 20', 'This is the body of Article 20.', 'cover_image20.jpg', 'article-20', '2024-08-14 15:21:06', '2024-08-14 15:21:06'),
(21, 'Article 21', 'This is the body of Article 21.', 'cover_image21.jpg', 'article-21', '2024-08-14 15:21:06', '2024-08-14 15:21:06'),
(22, 'Article 22', 'This is the body of Article 22.', 'cover_image22.jpg', 'article-22', '2024-08-14 15:21:06', '2024-08-14 15:21:06'),
(23, 'Article 23', 'This is the body of Article 23.', 'cover_image23.jpg', 'article-23', '2024-08-14 15:21:06', '2024-08-14 15:21:06'),
(24, 'Article 24', 'This is the body of Article 24.', 'cover_image24.jpg', 'article-24', '2024-08-14 15:21:06', '2024-08-14 15:21:06'),
(25, 'Article 25', 'This is the body of Article 25.', 'cover_image25.jpg', 'article-25', '2024-08-14 15:21:06', '2024-08-14 15:21:06'),
(26, 'Article 26', 'This is the body of Article 26.', 'cover_image26.jpg', 'article-26', '2024-08-14 15:21:06', '2024-08-14 15:21:06'),
(27, 'Article 27', 'This is the body of Article 27.', 'cover_image27.jpg', 'article-27', '2024-08-14 15:21:06', '2024-08-14 15:21:06'),
(28, 'Article 28', 'This is the body of Article 28.', 'cover_image28.jpg', 'article-28', '2024-08-14 15:21:06', '2024-08-14 15:21:06'),
(29, 'Article 29', 'This is the body of Article 29.', 'cover_image29.jpg', 'article-29', '2024-08-14 15:21:06', '2024-08-14 15:21:06'),
(30, 'Article 30', 'This is the body of Article 30.', 'cover_image30.jpg', 'article-30', '2024-08-14 15:21:06', '2024-08-14 15:21:06');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_07_17_053411_create_personal_access_tokens_table', 1),
(5, '2024_08_14_041123_create_products_table', 1),
(6, '2024_08_14_051651_create_articles_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(2, 'App\\Models\\User', 2, 'main', 'c254f4826c7fed18b15dfdf690ed75fac3b2c0b9d29759f328f84de84491d842', '[\"*\"]', NULL, NULL, '2024-08-14 11:53:37', '2024-08-14 11:53:37'),
(4, 'App\\Models\\User', 2, 'main', '521a7b2f875a5fa863be4ac6ff93a1551c4f490a52015e789fe1e06c24d1e86f', '[\"*\"]', '2024-08-14 12:33:30', NULL, '2024-08-14 12:24:02', '2024-08-14 12:33:30');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `image`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Product 1', 19.99, 'image1.jpg', 'Description for Product 1', '2024-08-14 15:16:40', '2024-08-14 15:16:40'),
(2, 'Product 2', 29.99, 'image2.jpg', 'Description for Product 2', '2024-08-14 15:16:40', '2024-08-14 15:16:40'),
(3, 'Product 3', 39.99, 'image3.jpg', 'Description for Product 3', '2024-08-14 15:16:40', '2024-08-14 15:16:40'),
(4, 'Product 4', 49.99, 'image4.jpg', 'Description for Product 4', '2024-08-14 15:16:40', '2024-08-14 15:16:40'),
(5, 'Product 5', 59.99, 'image5.jpg', 'Description for Product 5', '2024-08-14 15:16:40', '2024-08-14 15:16:40'),
(6, 'Product 6', 69.99, 'image6.jpg', 'Description for Product 6', '2024-08-14 15:16:40', '2024-08-14 15:16:40'),
(7, 'Product 7', 79.99, 'image7.jpg', 'Description for Product 7', '2024-08-14 15:16:40', '2024-08-14 15:16:40'),
(8, 'Product 8', 89.99, 'image8.jpg', 'Description for Product 8', '2024-08-14 15:16:40', '2024-08-14 15:16:40'),
(9, 'Product 9', 99.99, 'image9.jpg', 'Description for Product 9', '2024-08-14 15:16:40', '2024-08-14 15:16:40'),
(10, 'Product 10', 109.99, 'image10.jpg', 'Description for Product 10', '2024-08-14 15:16:40', '2024-08-14 15:16:40'),
(11, 'Product 11', 19.99, 'image11.jpg', 'Description for Product 11', '2024-08-14 15:16:40', '2024-08-14 15:16:40'),
(12, 'Product 12', 29.99, 'image12.jpg', 'Description for Product 12', '2024-08-14 15:16:40', '2024-08-14 15:16:40'),
(13, 'Product 13', 39.99, 'image13.jpg', 'Description for Product 13', '2024-08-14 15:16:40', '2024-08-14 15:16:40'),
(14, 'Product 14', 49.99, 'image14.jpg', 'Description for Product 14', '2024-08-14 15:16:40', '2024-08-14 15:16:40'),
(15, 'Product 15', 59.99, 'image15.jpg', 'Description for Product 15', '2024-08-14 15:16:40', '2024-08-14 15:16:40'),
(16, 'Product 16', 69.99, 'image16.jpg', 'Description for Product 16', '2024-08-14 15:16:40', '2024-08-14 15:16:40'),
(17, 'Product 17', 79.99, 'image17.jpg', 'Description for Product 17', '2024-08-14 15:16:40', '2024-08-14 15:16:40'),
(18, 'Product 18', 89.99, 'image18.jpg', 'Description for Product 18', '2024-08-14 15:16:40', '2024-08-14 15:16:40'),
(19, 'Product 19', 99.99, 'image19.jpg', 'Description for Product 19', '2024-08-14 15:16:40', '2024-08-14 15:16:40'),
(20, 'Product 20', 109.99, 'image20.jpg', 'Description for Product 20', '2024-08-14 15:16:40', '2024-08-14 15:16:40'),
(21, 'Product 21', 19.99, 'image21.jpg', 'Description for Product 21', '2024-08-14 15:16:40', '2024-08-14 15:16:40'),
(22, 'Product 22', 29.99, 'image22.jpg', 'Description for Product 22', '2024-08-14 15:16:40', '2024-08-14 15:16:40'),
(23, 'Product 23', 39.99, 'image23.jpg', 'Description for Product 23', '2024-08-14 15:16:40', '2024-08-14 15:16:40'),
(24, 'Product 24', 49.99, 'image24.jpg', 'Description for Product 24', '2024-08-14 15:16:40', '2024-08-14 15:16:40'),
(25, 'Product 25', 59.99, 'image25.jpg', 'Description for Product 25', '2024-08-14 15:16:40', '2024-08-14 15:16:40'),
(26, 'Product 26', 69.99, 'image26.jpg', 'Description for Product 26', '2024-08-14 15:16:40', '2024-08-14 15:16:40'),
(27, 'Product 27', 79.99, 'image27.jpg', 'Description for Product 27', '2024-08-14 15:16:40', '2024-08-14 15:16:40'),
(28, 'Product 28', 89.99, 'image28.jpg', 'Description for Product 28', '2024-08-14 15:16:40', '2024-08-14 15:16:40'),
(29, 'Product 29', 99.99, 'image29.jpg', 'Description for Product 29', '2024-08-14 15:16:40', '2024-08-14 15:16:40'),
(30, 'Product 30', 109.99, 'image30.jpg', 'Description for Product 30', '2024-08-14 15:16:40', '2024-08-14 15:16:40');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','user') NOT NULL DEFAULT 'user',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `image`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', NULL, 'admin@gmail.com', NULL, '$2y$12$TSj3imj0VZEvq04dTlpjHuXIUPa4c69mwqpsU1J1tQ61OvMpyHKEq', 'user', NULL, '2024-08-14 11:52:18', '2024-08-14 11:52:18'),
(2, 'nur', 'img/1723660410.jpg', 'nur@gmail.com', NULL, '$2y$12$4jCKBVdS3pHk/zJYXMwU0OBW8nqFTuUPdZ8HmK7DkKAgjw.Zjq8X.', 'user', NULL, '2024-08-14 11:53:37', '2024-08-14 12:33:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
