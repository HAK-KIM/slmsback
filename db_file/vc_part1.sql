-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 19, 2022 at 01:33 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vc_part1`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `leaves`
--

CREATE TABLE `leaves` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `leave_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_start` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reason` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `duration` int(11) NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_08_19_083031_create_admins_table', 1),
(6, '2022_08_19_090329_create_leaves_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'userToken', '23d0dd42e1e439697710b14745b8e6e69bbfdaf772ac709224a231a5a45f4be3', '[\"*\"]', NULL, NULL, '2022-08-19 10:55:14', '2022-08-19 10:55:14'),
(2, 'App\\Models\\User', 2, 'userToken', '428774cb6e2213893a29a71d192eeb9a59dd856d7927acd51bd4021bf7f51a64', '[\"*\"]', NULL, NULL, '2022-08-19 11:01:03', '2022-08-19 11:01:03'),
(3, 'App\\Models\\User', 3, 'userToken', 'ad9800e66210d40f95f827c2afa902cbe58ad25e44266f5d53a36138679f0a51', '[\"*\"]', NULL, NULL, '2022-08-19 11:08:55', '2022-08-19 11:08:55'),
(4, 'App\\Models\\User', 3, 'A@gmail.com', '81d4d05680a92c71b3688de6c0583a0532e0c3688ae35e3d53f30d0627f21cc3', '[\"*\"]', NULL, NULL, '2022-08-19 11:10:14', '2022-08-19 11:10:14'),
(5, 'App\\Models\\User', 3, 'A@gmail.com', '4f6780645b16757dc454368380dad5cdacd80459db33312b8ec7cec5cd549629', '[\"*\"]', NULL, NULL, '2022-08-19 11:11:53', '2022-08-19 11:11:53'),
(6, 'App\\Models\\User', 4, 'userToken', 'a9687d453fbc60811ac267273b102d0cba473d43dbbeaa7988df2a326a9fff0c', '[\"*\"]', NULL, NULL, '2022-08-19 11:13:34', '2022-08-19 11:13:34'),
(7, 'App\\Models\\User', 5, 'userToken', '65a3a1648d8dd1c88d94f192d58cdd24fbc976d104c03e9933343638072f823b', '[\"*\"]', NULL, NULL, '2022-08-19 11:16:48', '2022-08-19 11:16:48'),
(8, 'App\\Models\\User', 6, 'userToken', 'e31abf0ca090939ac4447544b71ad75b49ac49a538b21abe8c65b4bb7515aa2d', '[\"*\"]', NULL, NULL, '2022-08-19 11:19:08', '2022-08-19 11:19:08'),
(9, 'App\\Models\\User', 6, 'C@gmail.com', 'a0f25bf43206e52864622d1356340e00bf6c6c3c4fcbcb47d78834effbfcadcd', '[\"*\"]', NULL, NULL, '2022-08-19 11:19:38', '2022-08-19 11:19:38'),
(10, 'App\\Models\\User', 6, 'C@gmail.com', '33640eee7191015a9872f9dde7944a3b3f9dc87d302fff8bf3ad3470fb4dd719', '[\"*\"]', NULL, NULL, '2022-08-19 11:20:27', '2022-08-19 11:20:27');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'sophal', 'sophal@gmail.com', NULL, '$2y$10$JmqLGrvpDpb4crXLR2Esmucjh3xjjZZ3y2dCJkr1d7zFvtYatFcBu', NULL, '2022-08-19 10:55:14', '2022-08-19 10:55:14'),
(2, 'sophy', 'sophy@gmail.com', NULL, '$2y$10$uyUULqwgLDY7FjOtotHrm.lNFAth6UJWVmNiWSuYmHD74/3v2v5la', NULL, '2022-08-19 11:01:03', '2022-08-19 11:01:03'),
(3, 'A', 'A@gmail.com', NULL, '$2y$10$6oe7GTbwzl5yz239o4f06OEIIqwsClsbSCMAWMh7o6aYt0/R.gkJ.', NULL, '2022-08-19 11:08:55', '2022-08-19 11:08:55'),
(4, 'B', 'B@gmail.com', NULL, '$2y$10$nqZ.vU1Fsr4C4jUJrHbsr.cX9Gpvz1PgQSmlLZdHr/4FxYHgqys7y', NULL, '2022-08-19 11:13:34', '2022-08-19 11:13:34'),
(5, 'D', 'D@gmail.com', NULL, '$2y$10$qJQF4./Nq2EKa1SuGJ4S1.dXcaxcEfwhM6CGNFc8fHIKD64bvKiqG', NULL, '2022-08-19 11:16:48', '2022-08-19 11:16:48'),
(6, 'C', 'C@gmail.com', NULL, '$2y$10$wl0YODsxguvTqWDd.XzB.ONqNJ.kuVqD8WMN0GAJ5S4i0ApVsfl1G', NULL, '2022-08-19 11:19:08', '2022-08-19 11:19:08'),
(7, 'E', 'E@gmail.com', NULL, '$2y$10$gw8jBgRkOFCT7txlOes8uOU599lwHwhFr9u5PcJ7W0ypi0bCfVjKy', NULL, '2022-08-19 11:31:11', '2022-08-19 11:31:11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `leaves`
--
ALTER TABLE `leaves`
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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `leaves`
--
ALTER TABLE `leaves`
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
