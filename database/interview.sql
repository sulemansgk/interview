-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 23, 2022 at 09:11 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `interview`
--

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `created_at`, `updated_at`, `name`) VALUES
(1, '2022-06-30 05:25:37', '2022-06-30 05:25:40', 'Department no 1'),
(2, NULL, NULL, '2mULU6lnNg');

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
(5, '2022_06_22_120103_add_lastname_to_users_table', 2),
(6, '2022_06_22_000000_create_department_table', 3),
(7, '2022_06_22_000000_create_role_table', 3),
(8, '2022_06_22_120127_add_role_to_users_table', 4),
(9, '2022_06_22_120146_add_department_to_users_table', 5),
(10, '2022_06_22_120223_user_meta_information', 5);

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `created_at`, `updated_at`, `name`) VALUES
(1, '2022-06-08 05:26:58', '2022-06-15 05:27:01', 'Normal User');

-- --------------------------------------------------------

--
-- Table structure for table `usermetainfo`
--

CREATE TABLE `usermetainfo` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `age` int(11) NOT NULL DEFAULT 0,
  `current_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `usermetainfo`
--

INSERT INTO `usermetainfo` (`id`, `user_id`, `age`, `current_address`, `created_at`, `updated_at`) VALUES
(1, 1, 45, 'test address', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `department_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `last_name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `role_id`, `department_id`) VALUES
(1, 'HhNXxvDe4r', 'w', 's9X5X1xAjv@gmail.com', NULL, '$2y$10$MqyYqgK/YMZvOwPhB.9Xq.lX4l4xG/mCiA8DGNolYhFJaE5SpQ7qi', NULL, NULL, NULL, 1, 1),
(2, 'FaTvGgK9IT', 'w', '1nGn6XfX1D@gmail.com', NULL, '$2y$10$iii/DmycrvIwP4.j7gL4HOT.mc/btF62/y2bT4DXm0H46RmT8ky.O', NULL, NULL, NULL, 1, 1),
(3, '6VFHLP7JE5', 'w', 'pgoyHpJLeS@gmail.com', NULL, '$2y$10$QUkAUUTlRPL0hYB8sTmboupDvTIN0GvgSarEZ4aX.txkf9mTKUHlu', NULL, NULL, NULL, 1, 1),
(4, 'Neeg8VjbRf', 'w', 'QNHaP3J6YJ@gmail.com', NULL, '$2y$10$tsCek3so6x2Q878mWFKJfe7E8YkfwFTJKlv97J0fKhe5SsAIaKUsi', NULL, NULL, NULL, 1, 1),
(5, 'E1AHMKsfCy', 'w', 'LrOEr4TeWP@gmail.com', NULL, '$2y$10$x36hg6vxJ5sjTAqloy16QOHhaEQPcqMFqcmfwOnxm61u.oQk6C2Fa', NULL, NULL, NULL, 1, 1),
(6, 'huMZaUjDDC', 'w', 'GHgkNY4GnW@gmail.com', NULL, '$2y$10$QJVJ08V/JrUNJusQSbFrb.gnIVmuYEbJiF9nFSuutcb7L8FJERAKu', NULL, NULL, NULL, 1, 1),
(7, 'YkOO7r3YPX', 'w', 'ZgWPf6Zpxm@gmail.com', NULL, '$2y$10$/8IFZXOY4qpXKt6vFQT21.mkgRTvdDhX0xtIgLucyczZWPlJrxtiO', NULL, NULL, NULL, 1, 1),
(8, 'JMUUOJjTWM', 'w', 'dZM4l9o8pA@gmail.com', NULL, '$2y$10$cENNUdi9tVlTESltPFyOu.OknF6EKBo9Zb/gH40FUkSZ9OpksEOFa', NULL, NULL, NULL, 1, 1),
(9, 'WkFgZdpH7f', 'w', 'Xmlafxk3bB@gmail.com', NULL, '$2y$10$909CqS6IQlyti3KbOpJZ5uyNo9ioqv.Dzg0UXu.V0BZsbVZIT3JYS', NULL, NULL, NULL, 1, 1),
(10, 'h5ihfvTlCc', 'w', 'kD702lDHU5@gmail.com', NULL, '$2y$10$SNPEEs3QKeNmSOwGcOjcF.DiV/gJOYbVVkbaUz8srAfnyHNiAWJ.W', NULL, NULL, NULL, 1, 1),
(11, 'ZyGD3PyPAf', 'w', 'NZaqiP2mJT@gmail.com', NULL, '$2y$10$snFfthsOS75a2X9RZ8VM6u7QO/WoC86XRuE2GrP2mKGtxbFwYSuXq', NULL, NULL, NULL, 1, 1),
(12, '6PQaFLh1hu', 'w', 'ZTh2SijmJK@gmail.com', NULL, '$2y$10$euikHY14pNBo7VqjveqvIu/3MyCwzhqHrhdIyBe6KAB8kTkfIdfYW', NULL, NULL, NULL, 1, 1),
(13, 'OJfQR2Skjb', 'w', '5Y6fGxNUZy@gmail.com', NULL, '$2y$10$AW80wCwRVnubxv3kO94x5.0ka9e5h8Tiaa5abVTF0vHY.RFQTDLn.', NULL, NULL, NULL, 1, 1),
(14, 'WqKb1e0y7R', 'w', 'TJ8kkotHa3@gmail.com', NULL, '$2y$10$cINjUYWh.M5A3xGCVpnMQOyMgbh/aWsJpPrGG3CGkiFTuNAQTvOJG', NULL, NULL, NULL, 1, 1),
(15, 'wRgbZaHY5z', 'w', 'ivsXtOx8Nr@gmail.com', NULL, '$2y$10$N7weNve010n6uHjJNNUJ8.1/TPyBqP4ipt4VkFQM2go6zo32hwCSa', NULL, NULL, NULL, 1, 1),
(16, 'XRi9XrVElk', 'w', 'hwYhjTVjKG@gmail.com', NULL, '$2y$10$8JC..8xOO3vkHgo/iOkY.eulPQEY5r9Mk3HD50l1ZkRjrOqe8i0Cm', NULL, NULL, NULL, 1, 1),
(17, 'MQx2i0hL2d', 'w', 'ygd5poXXF4@gmail.com', NULL, '$2y$10$PvqwvnrKwBrmjn9A/WE6D.fqKZ173IBNPv0vsPG7SNzk5/.pShS0u', NULL, NULL, NULL, 1, 1),
(18, 'V1UvT1nfEj', 'w', '08PuJ4ZA6i@gmail.com', NULL, '$2y$10$UNU4XZfOQ1/JL4gLOpLcw.lqUl3uT1/KyzaGvn26Wy982/cgvGdQC', NULL, NULL, NULL, 1, 1),
(19, 'UYB8AUolsd', 'w', 'MAHPvvURiJ@gmail.com', NULL, '$2y$10$H8KZ9gU7FoIH.XwyfT3A4uisa/lNzXHgt/WvUaeczKXBHG6QhhZCm', NULL, NULL, NULL, 1, 1),
(20, 'JYFgvSgQWU', 'w', 'w4mFKHcgv6@gmail.com', NULL, '$2y$10$m1/YtKz/odRpY6ZqgbzNn.YPq8hoziPIE/rx3EsX7qgOLWW83tRXG', NULL, NULL, NULL, 1, 1),
(21, 'I1UjFsGvXj', 'w', 'Vd9D9Czdxs@gmail.com', NULL, '$2y$10$kv7ETPF83T3PqjXBDpHQ5eHdVbAhW8c84/GdXbVYGbMPBfKgXg53e', NULL, NULL, NULL, 1, 1),
(22, 'I0WIvpwbqU', 'w', 'YL972Tps7M@gmail.com', NULL, '$2y$10$j1nX4k5W/oeu7oJDDZ2B7.h3Yw1DnLIEu.vVeDh6703dsEG1hyqfW', NULL, NULL, NULL, 1, 1),
(23, 'jvZKaP56XR', 'w', 'pYe3WZrj0P@gmail.com', NULL, '$2y$10$vHyTLaG8uchGazk9ryqtT.MnBWx44Rkey3gjk8bZD6HGRxKtwEf8q', NULL, NULL, NULL, 1, 1),
(24, 'P2CpEH9LMo', 'w', 'kCL0Fmu3QC@gmail.com', NULL, '$2y$10$uT4fCUc0LKaTMh8TLtBgx.sPEpXoPTtJIacTegKcjHDLq3sR5W9Gy', NULL, NULL, NULL, 1, 1),
(25, 'iTiRhSVPJz', 'w', '3Vawp9XfVD@gmail.com', NULL, '$2y$10$xgIwKYrYwg/5TgMoTrnNTuVRPvHAtbqeL70WEWDGP8OHOp8dQC1PO', NULL, NULL, NULL, 1, 1),
(26, 'Cl8WzYrJnC', 'w', 'BQ287cihtc@gmail.com', NULL, '$2y$10$rqb8379lV4hVavcgwggNzuMJe3gC5dkb3a1/D9H88AT2oNeG3X/OC', NULL, NULL, NULL, 1, 1),
(27, 'FZezY0o197', 'w', 'nB1oYaVYw9@gmail.com', NULL, '$2y$10$K4l7syAIydogs.FbL32RbOtDI9NdwUKtizQWFWaVQUSokrqsLBuwW', NULL, NULL, NULL, 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
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
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usermetainfo`
--
ALTER TABLE `usermetainfo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usermetainfo_user_id_foreign` (`user_id`);

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
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `usermetainfo`
--
ALTER TABLE `usermetainfo`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `usermetainfo`
--
ALTER TABLE `usermetainfo`
  ADD CONSTRAINT `usermetainfo_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
