-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 29, 2023 at 02:26 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `setan2`
--

-- --------------------------------------------------------

--
-- Table structure for table `ch_favorites`
--

CREATE TABLE `ch_favorites` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint NOT NULL,
  `favorite_id` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ch_favorites`
--

INSERT INTO `ch_favorites` (`id`, `user_id`, `favorite_id`, `created_at`, `updated_at`) VALUES
('2b36edf4-4aff-42e8-bf75-793f47df52f0', 7, 13, '2023-12-21 01:45:39', '2023-12-21 01:45:39');

-- --------------------------------------------------------

--
-- Table structure for table `ch_messages`
--

CREATE TABLE `ch_messages` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_id` bigint NOT NULL,
  `to_id` bigint NOT NULL,
  `body` varchar(5000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seen` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ch_messages`
--

INSERT INTO `ch_messages` (`id`, `from_id`, `to_id`, `body`, `attachment`, `seen`, `created_at`, `updated_at`) VALUES
('00d894c4-0dfb-4b04-917a-9c69c8172e8d', 7, 7, 'hi', NULL, 1, '2023-12-20 22:13:30', '2023-12-20 22:15:13'),
('013cc4aa-7fdd-4ff8-9a57-6185e049011f', 6, 13, 'koplak kan yang buat web gw', NULL, 1, '2023-12-21 02:45:56', '2023-12-21 02:45:58'),
('020e8f4c-fe7d-4784-a2dd-02d04ee60bc8', 6, 6, 'asem emng laravel pusher', NULL, 1, '2023-12-21 01:47:35', '2023-12-21 01:47:47'),
('0ce0cdac-9bec-4646-b55c-a7e2dae50a99', 13, 6, 'udh', NULL, 1, '2023-12-21 02:45:31', '2023-12-21 02:45:37'),
('0cf7c7d5-36d8-4eb2-a0e5-dde88026390b', 7, 6, 'ajarin pake laravel filament', NULL, 1, '2023-12-20 23:21:22', '2023-12-21 01:32:45'),
('0e66476b-71ea-4789-be21-1a47a8e5f57a', 13, 6, 'tdi admin chat aku', NULL, 1, '2023-12-21 02:45:36', '2023-12-21 02:45:37'),
('11d245c4-5e16-4cae-a9e4-a98f25ea9709', 3, 7, 'ampuh puh', NULL, 1, '2023-12-20 23:34:18', '2023-12-21 01:40:34'),
('11f416f5-4842-4fa4-b630-02a97eb0f110', 7, 6, 'ajarin dong puh', NULL, 1, '2023-12-20 23:21:30', '2023-12-21 01:32:45'),
('15081291-a6a2-40e1-a890-3d4429901f0e', 6, 6, 'woeee', NULL, 1, '2023-12-21 01:46:50', '2023-12-21 01:47:29'),
('175c7d63-1db4-4152-91ab-c387510a0249', 7, 7, 'puhhh ajarin dong puh', NULL, 1, '2023-12-20 23:22:17', '2023-12-20 23:22:40'),
('1b8dbc6b-213b-48cd-86f2-fd83ce3da7fa', 7, 6, 'tutor dpetin kitsune', NULL, 1, '2023-12-21 01:41:19', '2023-12-21 01:41:27'),
('1e0fd102-3646-4a3c-a3a9-5948459fe9f5', 7, 7, 'aku mah masih pemula', NULL, 1, '2023-12-20 23:22:26', '2023-12-20 23:22:40'),
('1fea6d62-975c-4211-80fa-e135713e6cda', 7, 13, 'gemoyyy', NULL, 1, '2023-12-21 01:43:01', '2023-12-21 02:44:37'),
('2094ce25-4094-4082-a3fe-d06b1bdada93', 3, 7, '😁😁😁', '{\"new_name\":\"46c465b4-e9f4-4eef-9c49-fe3c6ef5312f.png\",\"old_name\":\"logo.png\"}', 0, '2023-12-24 21:54:24', '2023-12-24 21:54:24'),
('22e4ec08-12a3-4cf0-a5bc-428539a8f70e', 13, 6, 'bobo ayng', NULL, 1, '2023-12-21 02:47:04', '2023-12-21 02:47:05'),
('23808535-cb0a-4ff6-932c-a5417ca3347d', 6, 13, 'udh mkan blum', NULL, 1, '2023-12-21 02:43:34', '2023-12-21 02:45:16'),
('2a146483-8e2c-49e4-a053-2be870452434', 13, 6, 'to -.-', NULL, 1, '2023-12-21 02:48:10', '2023-12-21 02:48:12'),
('2a5d1d75-20a9-4e8e-9083-914888b0e27e', 13, 7, 'fuck you', NULL, 0, '2023-12-21 02:45:11', '2023-12-21 02:45:11'),
('32030543-476f-4d05-8480-18cd26147a6d', 7, 7, 'puh ajarin filament donk', NULL, 1, '2023-12-20 23:31:13', '2023-12-20 23:31:28'),
('3b772227-5be8-44c7-a303-1978b0951812', 7, 7, 'hi', NULL, 1, '2023-12-20 23:17:29', '2023-12-20 23:17:31'),
('3b854f7a-8ac2-4ecf-8024-e13366783829', 6, 13, 'i love u', NULL, 1, '2023-12-21 02:47:59', '2023-12-21 02:48:00'),
('4ea050b6-2ef5-4f58-9d74-df08b829b721', 6, 13, 'smph ini bakal cringe bgt', NULL, 1, '2023-12-21 02:46:21', '2023-12-21 02:46:36'),
('58f9cc8c-afbd-49a2-9d6f-13e98cabe33f', 6, 7, 'ngpain lu chat kitsune', NULL, 1, '2023-12-21 01:43:34', '2023-12-21 01:43:36'),
('5ec3827d-1268-4b09-b9a6-b7dfc1676696', 6, 13, '🤡🤡🤡', NULL, 1, '2023-12-21 02:46:50', '2023-12-21 02:46:51'),
('6337341a-c841-4592-97a4-e5f509b6f28b', 6, 7, 'jdi gini anak muda....', NULL, 1, '2023-12-21 01:41:38', '2023-12-21 01:41:40'),
('64685ae2-7d5c-4561-9adc-b4ef6777d9e0', 7, 6, 'gw kan admin😇', NULL, 1, '2023-12-21 01:44:26', '2023-12-21 01:44:27'),
('6dde5c43-29f5-4b9c-bfbb-d28b1e7cf021', 7, 3, 'aku masih pemula', NULL, 1, '2023-12-21 01:40:44', '2023-12-23 02:55:44'),
('6dfe15ae-903f-466c-8084-f4f8f5dd393f', 6, 6, 'o2njkm', NULL, 1, '2023-12-21 01:46:48', '2023-12-21 01:47:29'),
('7133b754-f885-408d-a3e9-b75c188e35bd', 13, 13, 'gemoyyy', NULL, 1, '2023-12-21 01:29:20', '2023-12-21 01:37:48'),
('7531551b-241e-43d6-945a-8c3e0bedcb18', 6, 6, 'knp g bisa chat kitsune😡😡', NULL, 1, '2023-12-21 01:47:15', '2023-12-21 01:47:29'),
('75da79ea-5d05-4aaf-9d88-cfa08960754f', 7, 6, 'bng', NULL, 1, '2023-12-21 01:41:03', '2023-12-21 01:41:27'),
('8c659fb9-6003-42da-acf6-55104dae8df3', 3, 7, '', '{\"new_name\":\"7bbc0e36-de70-4b80-86c2-7ca0e3fa8fb8.zip\",\"old_name\":\"mdb.zip\"}', 0, '2023-12-24 21:55:40', '2023-12-24 21:55:40'),
('91e1180c-95ec-4b05-ada6-dd09a1f1909c', 7, 3, 'aku mah masih pemula', NULL, 1, '2023-12-20 23:28:05', '2023-12-20 23:34:12'),
('9956bf3e-619d-4cee-af0a-5db19268ae8c', 3, 3, 'HI', NULL, 1, '2023-12-20 22:40:15', '2023-12-20 22:40:38'),
('9a937d1a-9ee5-4a23-a11c-71ea0bcdc14a', 6, 13, ':D', NULL, 1, '2023-12-21 02:43:35', '2023-12-21 02:45:16'),
('a589ada8-f0fa-44ed-a4d0-b3d9f6cb32fa', 3, 7, 'ajarin filament donk', NULL, 1, '2023-12-20 23:34:23', '2023-12-21 01:40:34'),
('aa58f517-5014-415b-b3c5-af9b5a67f481', 7, 6, 'puhh ajarin dong puh', NULL, 1, '2023-12-20 23:21:14', '2023-12-21 01:32:45'),
('ac8b7faa-d0d0-46cb-b19c-902c4f7ac9fa', 7, 3, 'puh ajarin dong puh', NULL, 1, '2023-12-20 23:23:41', '2023-12-20 23:34:12'),
('acd378bb-0f54-4c52-953a-7518b250db90', 7, 6, 'hi', NULL, 1, '2023-12-20 23:19:58', '2023-12-21 01:32:45'),
('b4f30dd8-ce89-4b9a-a899-26110a2a4ae7', 6, 7, 'woe koplak', NULL, 1, '2023-12-21 01:43:32', '2023-12-21 01:43:36'),
('d4d46ee8-2cbb-4ed3-a3e0-dc4d065742fc', 7, 3, 'aku masih pemula', NULL, 1, '2023-12-20 23:23:49', '2023-12-20 23:34:12'),
('d4eea265-2b54-4d2d-884a-e29b4413fe34', 13, 6, '😇😇', NULL, 1, '2023-12-21 02:46:08', '2023-12-21 02:46:10'),
('e38cb891-1907-40b8-b405-16234dc69e6d', 7, 6, 'aku mah masih pemula', NULL, 1, '2023-12-20 23:21:28', '2023-12-21 01:32:45'),
('e3fd3ebd-12d2-40c1-84d5-331838518b1a', 7, 7, '😗', NULL, 1, '2023-12-20 22:43:28', '2023-12-20 23:03:21'),
('e62f6231-cb1d-4878-b6c1-31a01ffe967a', 7, 7, '', '{\"new_name\":\"6105e394-b8f4-430c-9030-05a7c33a6e77.png\",\"old_name\":\"logo.png\"}', 1, '2023-12-20 22:43:38', '2023-12-20 23:03:21'),
('eef684f0-77c4-40b5-8598-2a431ae63c1d', 7, 3, 'tutor deck', NULL, 1, '2023-12-20 23:24:41', '2023-12-20 23:34:12'),
('f54aecf2-bb8a-4b8a-8c06-ad127df919d4', 6, 13, 'gemoyy', NULL, 1, '2023-12-21 02:43:26', '2023-12-21 02:45:16'),
('fa3be939-9884-4ce0-913f-e1e30feec85f', 6, 13, 'hi', NULL, 1, '2023-12-21 02:41:12', '2023-12-21 02:45:16'),
('fa729824-a974-4fa1-950f-c2a9f7296d80', 13, 13, 'p', NULL, 1, '2023-12-21 01:28:11', '2023-12-21 01:28:23'),
('fb335a0d-4961-45d0-9044-412fd4300d8f', 13, 13, 'woe', NULL, 1, '2023-12-21 01:29:13', '2023-12-21 01:37:48'),
('ff2bb189-37e2-4db5-8975-e68aa1ab8411', 6, 6, 'hi', NULL, 1, '2023-12-21 01:35:01', '2023-12-21 01:35:28');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_12_20_073714_create_posts_table', 2),
(6, '2023_12_20_133939_create_posts_users_table', 3),
(7, '2023_12_20_140457_create_user_posts_table', 4),
(8, '2023_12_20_152753_create_permission_tables', 5),
(9, '2023_12_21_999999_add_active_status_to_users', 6),
(10, '2023_12_21_999999_add_avatar_to_users', 6),
(11, '2023_12_21_999999_add_dark_mode_to_users', 6),
(12, '2023_12_21_999999_add_messenger_color_to_users', 6),
(13, '2023_12_21_999999_create_chatify_favorites_table', 6),
(14, '2023_12_21_999999_create_chatify_messages_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2023-12-20 08:41:16', '2023-12-20 08:41:16'),
(2, 'komru', 'api', '2023-12-20 09:05:04', '2023-12-20 21:44:59'),
(3, 'Kitsunee ._.', 'api', '2023-12-21 01:27:26', '2023-12-21 01:27:26');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` text COLLATE utf8mb4_unicode_ci,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `published_at` datetime DEFAULT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `slug`, `thumbnail`, `body`, `status`, `published_at`, `user_id`, `created_at`, `updated_at`) VALUES
(3, 'p', 'p', '01HJ3BSTDGTRF42VCF96PG5Z1R.jpg', '<p>P</p>', 1, '2023-12-14 17:19:30', 3, '2023-12-20 03:19:36', '2023-12-24 21:51:36'),
(4, 'ini admi', 'ini-admi', '01HJ3C184NBZYTF5QC8PJX8DB7.png', '<p>gw admin</p>', 1, '2023-12-20 22:23:32', 7, '2023-12-20 03:23:40', '2023-12-20 03:23:40'),
(5, 'lm,;', 'lm', '01HJ3QPR5A283Q2VERZCN2082W.svg', '<p>trigerrteywuhjik</p>', 0, NULL, 3, '2023-12-20 06:47:39', '2023-12-20 06:47:39');

-- --------------------------------------------------------

--
-- Table structure for table `posts_users`
--

CREATE TABLE `posts_users` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(2, 'komru', 'web', '2023-12-20 21:45:34', '2023-12-20 21:45:34'),
(3, 'kitune._.', 'api', '2023-12-21 01:26:06', '2023-12-21 01:26:06'),
(4, 'Kitsunee ._.', 'api', '2023-12-21 01:26:28', '2023-12-21 01:26:28'),
(5, 'Kitsunee ._.', 'web', '2023-12-21 01:26:45', '2023-12-21 01:26:45');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 2),
(1, 3),
(2, 3),
(1, 4),
(1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `active_status` tinyint(1) NOT NULL DEFAULT '0',
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'avatar.png',
  `dark_mode` tinyint(1) NOT NULL DEFAULT '0',
  `messenger_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `active_status`, `avatar`, `dark_mode`, `messenger_color`) VALUES
(3, 'komru', 'kamiyakawaii4@gmail.com', NULL, '$2y$12$t7bzaAF3cObgtD4ZcLBW1.KoPhzgxXQbN3cooec4z6TTbalR6gaJm', NULL, '2023-12-20 02:05:37', '2023-12-20 22:22:58', 0, 'b11a3f2a-6200-42a0-b076-24a961c7c05b.png', 1, NULL),
(6, 'arbnna', 'ardy@admin.com', NULL, '$2y$12$IvbiGCzKCssAnygeF51Z9.stmAv0FJMsgOU2KsiB3X.xrPCpo0T7e', NULL, '2023-12-20 02:08:38', '2023-12-21 02:44:32', 1, 'avatar.png', 1, '#9C27B0'),
(7, 'admin', 'admin@gmail.com', NULL, '$2y$12$Mgj0W7OQWWi3vfk8zEknl.NHls7rlq3VnA6gdsFoO5oMDlW8bCOe2', NULL, '2023-12-20 02:14:43', '2023-12-21 02:40:39', 1, 'avatar.png', 0, NULL),
(13, 'Kitsunee ._.', 'kitsune@admin.com', NULL, '$2y$12$PsmHtjM2yjvBIGilejWKAOTd.oRfrxd8LV58oVyRAE5MNCAhaHY36', NULL, '2023-12-21 01:24:37', '2023-12-21 02:48:26', 0, 'avatar.png', 0, NULL),
(14, 'admin', 'test@gmail.com', NULL, '$2y$12$z08rpq7mQap9/pD05tPh0.f3L/7srqV7LpxG6UhY8XpfkrIu5RDGq', NULL, '2023-12-23 02:53:06', '2023-12-23 02:53:06', 0, 'avatar.png', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_posts`
--

CREATE TABLE `user_posts` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `post_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ch_favorites`
--
ALTER TABLE `ch_favorites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ch_messages`
--
ALTER TABLE `ch_messages`
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
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts_users`
--
ALTER TABLE `posts_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_posts`
--
ALTER TABLE `user_posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_posts_user_id_foreign` (`user_id`),
  ADD KEY `user_posts_post_id_foreign` (`post_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `posts_users`
--
ALTER TABLE `posts_users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `user_posts`
--
ALTER TABLE `user_posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_posts`
--
ALTER TABLE `user_posts`
  ADD CONSTRAINT `user_posts_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
