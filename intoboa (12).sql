-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 01, 2021 at 11:13 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `intoboa`
--

-- --------------------------------------------------------

--
-- Table structure for table `aboutus`
--

CREATE TABLE `aboutus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `aboutus`
--

INSERT INTO `aboutus` (`id`, `title`, `image`, `description`, `status`, `is_deleted`, `created_at`, `updated_at`) VALUES
(2, 'Happy Children', '1634290541.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', 1, 0, '2021-10-15 05:00:36', '2021-10-15 09:35:41'),
(3, 'Our Vision', '1634290565.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', 1, 0, '2021-10-15 05:09:45', '2021-10-20 04:42:29'),
(4, 'Our vision', '1634290590.png', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', 1, 0, '2021-10-15 05:17:51', '2021-10-20 04:30:50'),
(5, 'About Us ', '1634290624.png', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', 1, 1, '2021-10-15 05:24:32', '2021-10-20 04:31:31'),
(10, 'About us', '1636442423.png', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 1, 0, '2021-10-20 04:32:08', '2021-11-09 07:20:23');

-- --------------------------------------------------------

--
-- Table structure for table `app_login`
--

CREATE TABLE `app_login` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `session_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `device_type` int(11) NOT NULL DEFAULT 0,
  `remember_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id`, `image`, `created_at`, `updated_at`) VALUES
(12, '1635233170.jpg', '2021-10-22 10:11:55', '2021-10-26 07:26:10');

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `title`, `image`, `short_desc`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Adipisci voluptatem', '1636356778.jpg', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p><p><br> </p><figure class=\"image\"><img src=\"http://167.172.209.57/intoboa/public/ckeditor_images/adminpages/1636356749.jpg\"></figure><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p><p><br> </p>', 0, '2021-11-08 07:32:58', '2021-11-08 07:32:58'),
(2, 'Adipisci voluptatem', '1636356790.jpg', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p><p><br> </p><figure class=\"image\"><img src=\"http://167.172.209.57/intoboa/public/ckeditor_images/adminpages/1636356749.jpg\"></figure><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p><p><br> </p>', 0, '2021-11-08 07:33:10', '2021-11-08 07:33:10'),
(3, 'Adipisci voluptatem', '1636356796.jpg', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p><p><br> </p><figure class=\"image\"><img src=\"http://167.172.209.57/intoboa/public/ckeditor_images/adminpages/1636356749.jpg\"></figure><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p><p><br> </p>', 0, '2021-11-08 07:33:16', '2021-11-08 07:33:16'),
(4, 'Adipisci voluptatem', '1636356802.jpg', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p><p><br> </p><figure class=\"image\"><img src=\"http://167.172.209.57/intoboa/public/ckeditor_images/adminpages/1636356749.jpg\"></figure><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p><p><br> </p>', 0, '2021-11-08 07:33:22', '2021-11-08 07:33:22'),
(5, 'Adipisci voluptatem', '1636356807.jpg', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p><p><br> </p><figure class=\"image\"><img src=\"http://167.172.209.57/intoboa/public/ckeditor_images/adminpages/1636356749.jpg\"></figure><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p><p><br> </p>', 0, '2021-11-08 07:33:27', '2021-11-08 07:33:27'),
(6, 'Adipisci voluptatem', '1636356812.jpg', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p><p><br> </p><figure class=\"image\"><img src=\"http://167.172.209.57/intoboa/public/ckeditor_images/adminpages/1636356749.jpg\"></figure><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p><p><br> </p>', 0, '2021-11-08 07:33:32', '2021-11-08 07:33:32'),
(7, 'Adipisci voluptatem', '1636356817.jpg', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p><p><br> </p><figure class=\"image\"><img src=\"http://167.172.209.57/intoboa/public/ckeditor_images/adminpages/1636356749.jpg\"></figure><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p><p><br> </p>', 0, '2021-11-08 07:33:37', '2021-11-08 07:33:37'),
(8, 'Adipisci voluptatem', '1636356821.jpg', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p><p><br> </p><figure class=\"image\"><img src=\"http://167.172.209.57/intoboa/public/ckeditor_images/adminpages/1636356749.jpg\"></figure><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p><p><br> </p>', 0, '2021-11-08 07:33:41', '2021-11-08 07:33:41'),
(9, 'Adipisci voluptatem', '1636356826.jpg', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p><p><br> </p><figure class=\"image\"><img src=\"http://167.172.209.57/intoboa/public/ckeditor_images/adminpages/1636356749.jpg\"></figure><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p><p><br> </p>', 0, '2021-11-08 07:33:46', '2021-11-08 07:33:46'),
(10, 'Adipisci voluptatem', '1636356832.jpg', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p><p><br> </p><figure class=\"image\"><img src=\"http://167.172.209.57/intoboa/public/ckeditor_images/adminpages/1636356749.jpg\"></figure><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p><p><br> </p>', 0, '2021-11-08 07:33:52', '2021-11-08 07:33:52'),
(11, 'Adipisci voluptatem', '1636356840.jpg', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p><p><br> </p><figure class=\"image\"><img src=\"http://167.172.209.57/intoboa/public/ckeditor_images/adminpages/1636356749.jpg\"></figure><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p><p><br> </p>', 0, '2021-11-08 07:34:00', '2021-11-08 07:34:00'),
(12, 'Adipisci voluptatem', '1636356846.jpg', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p><p><br> </p><figure class=\"image\"><img src=\"http://167.172.209.57/intoboa/public/ckeditor_images/adminpages/1636356749.jpg\"></figure><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p><p><br> </p>', 0, '2021-11-08 07:34:06', '2021-11-08 07:34:06'),
(13, 'Adipisci voluptatem', '1636356851.jpg', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p><p><br> </p><figure class=\"image\"><img src=\"http://167.172.209.57/intoboa/public/ckeditor_images/adminpages/1636356749.jpg\"></figure><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p><p><br> </p>', 0, '2021-11-08 07:34:11', '2021-11-10 08:34:36'),
(14, 'Adipisci voluptatem', '1636356858.jpg', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p><figure class=\"image\"><img src=\"http://167.172.209.57/intoboa/public/ckeditor_images/adminpages/1636356888.png\"></figure><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p><p><br> </p>', 0, '2021-11-08 07:34:18', '2021-11-08 07:34:50');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `fundraiser_id` int(11) NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `fundraiser_id`, `comment`, `status`, `created_at`, `updated_at`) VALUES
(1, 30, 17, 'abcde', 1, '2021-11-01 09:41:49', '2021-11-01 10:37:15'),
(3, 30, 17, 'Feeling deep sorrow but sending love and support from Brooklyn.', 0, '2021-11-01 10:19:04', '2021-11-01 10:19:04'),
(5, 30, 17, 'Feeling deep sorrow but sending love and support from Brooklyn.', 1, '2021-11-01 10:20:19', '2021-11-01 10:39:25'),
(6, 30, 12, 'simply dummy text of the printing and typesetting industry', 0, '2021-11-01 12:55:21', '2021-11-01 12:55:21'),
(7, 41, 12, 'Hello, I would like to pay, however, give me proof', 0, '2021-11-01 13:03:37', '2021-11-01 13:03:37'),
(8, 30, 26, 'co,,mmghjhgj', 0, '2021-11-01 13:19:23', '2021-11-01 13:19:23'),
(9, 30, 12, 'hfghfgh', 0, '2021-11-01 13:19:41', '2021-11-01 13:19:41'),
(10, 30, 26, 'Error fugiat ut bla,Tenetur est adipisc', 0, '2021-11-02 06:00:50', '2021-11-02 06:00:50'),
(11, 30, 7, 'Cupidatat eiusmod to', 0, '2021-11-08 09:23:21', '2021-11-08 09:23:21'),
(12, 46, 28, 'Lorem Ipsum has been the industry\'s standard dummy text ever since the', 0, '2021-11-10 05:55:58', '2021-11-10 05:55:58'),
(13, 30, 36, 'Please Help them', 0, '2021-11-18 01:36:16', '2021-11-18 01:36:16');

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE `contactus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contactus`
--

INSERT INTO `contactus` (`id`, `address`, `email`, `phone`, `short_description`, `created_at`, `updated_at`) VALUES
(1, 'A-105,Sector-82,Agra,282001,India', 'intoboa123@gmail.com', '1234567890', '<p><i>Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...</i></p>', '2021-11-16 00:26:05', '2021-11-16 00:26:05');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email_address` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `message` longtext DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updatede_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `first_name`, `last_name`, `email_address`, `phone`, `message`, `created_at`, `updatede_at`) VALUES
(1, 'asdasda', 'dadad', 'wqq@yopmail.com', '1234567894', 'addadd sdasda  da as as da das a  fdsd fs s fjfs fs fhs fjfshf js fhsjdh fsj hfsj fhsjf hfsjf hsjf sh fsdfh sjdf hsjd fhsdf sf', '2021-10-11 07:14:19', '2021-10-11 07:14:19'),
(2, 'asdasda', 'dadad', 'wqq@yopmail.com', '1234567894', 'addadd sdasda  da as as da das a  fdsd fs s fjfs fs fhs fjfshf js fhsjdh fsj hfsj fhsjf hfsjf hsjf sh fsdfh sjdf hsjd fhsdf sf', '2021-10-11 07:33:22', '2021-10-11 07:33:22'),
(3, 'asdasda', 'dadad', 'wqq@yopmail.com', '1234567894', 'addadd sdasda  da as as da das a  fdsd fs s fjfs fs fhs fjfshf js fhsjdh fsj hfsj fhsjf hfsjf hsjf sh fsdfh sjdf hsjd fhsdf sf', '2021-10-11 07:35:45', '2021-10-11 07:35:45'),
(4, 'asdasda', 'dadad', 'wqq@yopmail.com', '1234567894', 'eweefhsdf sf', '2021-10-11 07:36:59', '2021-10-11 07:36:59'),
(5, 'asdasda', 'dadad', 'wqq@yopmail.com', '1234567894', 'eweefhsdf sf', '2021-10-11 07:38:38', '2021-10-11 07:38:38'),
(6, 'asdasda', 'dadad', 'wqq@yopmail.com', '1234567894', 'eweefhsdf sf', '2021-10-11 07:47:36', '2021-10-11 07:47:36'),
(7, 'asdasda', 'dadad', 'wqq@yopmail.com', '1234567894', 'eweefhsdf sf', '2021-10-11 07:51:44', '2021-10-11 07:51:44'),
(8, 'asdasda', 'dadad', 'wqq@yopmail.com', '1234567894', 'eweefhsdf sf', '2021-10-11 07:52:17', '2021-10-11 07:52:17'),
(9, 'asdasda', 'dadad', 'wqq@yopmail.com', '1234567894', 'eweefhsdf sf', '2021-10-11 07:57:45', '2021-10-11 07:57:45'),
(10, 'asdasda', 'dadad', 'wqq@yopmail.com', '1234567894', 'eweefhsdf sf', '2021-10-11 08:04:07', '2021-10-11 08:04:07'),
(11, 'asdasda', 'dadad', 'wqq@yopmail.com', '1234567894', 'eweefhsdf sf', '2021-10-11 08:05:50', '2021-10-11 08:05:50'),
(12, 'asdasda', 'dadad', 'wqq@yopmail.com', '1234567894', 'eweefhsdf sf', '2021-10-11 08:06:46', '2021-10-11 08:06:46'),
(13, 'asdasda', 'dadad', 'wqq@yopmail.com', '1234567894', 'eweefhsdf sf', '2021-10-11 08:07:45', '2021-10-11 08:07:45'),
(14, 'dsaas', 'adas', 'asd@yopmail.com', '2345678906', 'asdasdasda ffds fds fds', '2021-10-11 08:12:30', '2021-10-11 08:12:30'),
(15, 'dasd', 'asdasd', 'ad@yopmail.com', '7894569874', 'asdd as asdasdasdasd  dasd asdasdasdasasdasd saasd asdad asd asd as as dasd asd asd', '2021-10-11 08:14:13', '2021-10-11 08:14:13'),
(16, 'saSas', 'ASas', 'ASS@YOPMAIL.COM', '5678765456', 'ASA SasASas S', '2021-10-11 08:30:00', '2021-10-11 08:30:00'),
(17, 'saSas', 'ASas', 'ASS@YOPMAIL.COM', '5678765456', 'ASA SasASas S', '2021-10-11 09:46:06', '2021-10-11 09:46:06'),
(18, 'saSas', 'ASas', 'ASS@YOPMAIL.COM', '5678765456', 'ASA SasASas S', '2021-10-11 09:46:23', '2021-10-11 09:46:23'),
(19, 'asdasd', 'asdasdasd', 'asb@yopmail.com', '9784561339', 'asdasdasd asdasdasdasd', '2021-10-11 09:46:53', '2021-10-11 09:46:53'),
(20, 'asdasd', 'asddd', 'ade@gmail.com', '9874563214', 'asdas asdasd a asd asdasdasd', '2021-10-11 09:48:15', '2021-10-11 09:48:15'),
(21, 'defaluter', 'deft', 'asasd@gmail.com', '2342342423', 'ssdfs sdfs sdf sf sdf sdf sf', '2021-10-11 09:50:21', '2021-10-11 09:50:21'),
(22, 'DSSDF', 'SDFSDF', 'SDFSF@GMAIL.COM', '1234567894', 'ASDASD S ADASD', '2021-10-11 09:52:53', '2021-10-11 09:52:53'),
(23, 'cats', 'cats', 'cat@gmail.com', '1234567890', 'nice work', '2021-11-11 04:55:08', '2021-11-11 04:55:08'),
(24, 'orgs', 'orgs', 'cat@gmail.com', '1234567890', 'nice workm', '2021-11-11 04:59:52', '2021-11-11 04:59:52');

-- --------------------------------------------------------

--
-- Table structure for table `donate`
--

CREATE TABLE `donate` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `amount` double(8,2) NOT NULL,
  `payment_status` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1,
  `type` int(11) NOT NULL DEFAULT 0,
  `fund_for` int(11) NOT NULL DEFAULT 0 COMMENT 'fundraiser id  or charity id',
  `recover_money` tinyint(1) NOT NULL DEFAULT 0,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'fname',
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'lname',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'email',
  `donation_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1 for fundraiser , 2 for charity',
  `tip` double(8,2) NOT NULL DEFAULT 0.00,
  `service_charges` double(8,2) NOT NULL DEFAULT 0.00,
  `created_by_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `donate`
--

INSERT INTO `donate` (`id`, `amount`, `payment_status`, `status`, `type`, `fund_for`, `recover_money`, `first_name`, `last_name`, `email`, `donation_type`, `tip`, `service_charges`, `created_by_id`, `created_at`, `updated_at`) VALUES
(1, 9999.00, 0, 1, 2, 39, 0, 'fname', 'lname', 'email', 1, 1999.80, 999.90, 46, '2021-11-26 02:57:12', '2021-11-26 02:57:12'),
(2, 50.00, 0, 1, 0, 36, 0, 'cat', 'cat', 'cat@gmail.com', 2, 0.00, 5.00, 30, '2021-11-26 06:10:42', '2021-11-26 06:10:42'),
(3, 50.00, 0, 1, 0, 30, 0, 'cat', 'cat', 'cat@gmail.com', 2, 0.00, 5.00, 30, '2021-11-26 06:11:40', '2021-11-26 06:11:40'),
(4, 257.50, 0, 1, 0, 30, 1, 'test', 'test', 'test@gmail.com', 2, 0.00, 25.75, 0, '2021-11-26 06:40:16', '2021-11-26 06:40:16'),
(5, 250.00, 0, 1, 0, 30, 0, 'test', 'rest', 'test@gmail.com', 2, 0.00, 25.00, 0, '2021-11-26 06:41:36', '2021-11-26 06:41:36'),
(7, 20.00, 0, 1, 1, 36, 0, 'fname', 'lname', 'email', 1, 0.00, 2.00, 30, '2021-11-26 07:01:09', '2021-11-26 07:01:09'),
(8, 20.00, 0, 1, 2, 31, 0, 'fname', 'lname', 'email', 1, 4.00, 2.00, 30, '2021-11-26 07:01:39', '2021-11-26 07:01:39');

-- --------------------------------------------------------

--
-- Table structure for table `dynamic_contents`
--

CREATE TABLE `dynamic_contents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `simple_setup` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secure` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expert_advice` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `various_payment` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_reach` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `org_fundraisers` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` tinyint(4) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` bigint(20) UNSIGNED NOT NULL,
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
-- Table structure for table `faq`
--

CREATE TABLE `faq` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` tinyint(4) NOT NULL COMMENT '1 for help , 2 for charity',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faq`
--

INSERT INTO `faq` (`id`, `question`, `answer`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Changing your phone number', '<p>HTML stands for HyperText Markup Language. HTML is the standard markup language for describing the structure of web pages.</p>', 1, '2021-10-15 23:39:10', '2021-11-16 02:49:25'),
(2, 'How do i withdraw money?', '<p>Bootstrap is a sleek, intuitive, and powerful front-end framework for faster and easier web development. It is a collection of CSS and HTML conventions.</p>', 2, '2021-10-15 23:39:10', '2021-11-16 02:49:32'),
(3, 'How Do i Refund my Donors?', '<p>CSS stands for Cascading Style Sheet. CSS allows you to specify various style properties for a given HTML element such as colors, backgrounds, fonts etc.</p>', 1, '2021-10-15 23:39:10', '2021-11-16 02:49:43'),
(4, 'Requesting a refund', '<p>HTML stands for HyperText Markup Language. HTML is the standard markup language for describing the structure of web pages.</p>', 2, '2021-10-15 23:39:10', '2021-11-23 04:52:57'),
(5, 'Why isn,t my fundraiser launching?', '<p>HTML stands for HyperText Markup Language. HTML is the standard markup language for describing the structure of web pages.</p>', 1, '2021-10-15 23:39:10', '2021-11-16 02:49:59'),
(6, 'Repoting fraud-What to do when y...', '<p>HTML stands for HyperText Markup Language. HTML is the standard markup language for describing the structure of web pages.</p>', 2, '2021-10-15 23:39:10', '2021-11-16 02:50:07'),
(7, 'How do i delete my Fundraiser ?', '<p>HTML stands for HyperText Markup Language. HTML is the standard markup language for describing the structure of web pages.</p>', 2, '2021-10-15 23:39:10', '2021-11-16 02:50:14'),
(8, 'important verification and withdra...', '<p>HTML stands for HyperText Markup Language. HTML is the standard markup language for describing the structure of web pages.</p>', 1, '2021-10-15 23:39:10', '2021-11-16 02:50:24'),
(9, 'Tax -Deductible donation', '<p>HTML stands for HyperText Markup Language. HTML is the standard markup language for describing the structure of web pages.</p>', 1, '2021-10-16 03:57:04', '2021-11-16 02:49:17'),
(10, 'Reactivate Fundraiser', '<p>HTML stands for HyperText Markup Language. HTML is the standard markup language for describing the structure of web pages</p>', 1, '2021-10-16 03:57:31', '2021-11-16 02:49:08'),
(11, 'Extra charge on Statement', '<p>HTML stands for HyperText Markup Language. HTML is the standard markup language for describing the structure of web pages. HTML stands for HyperText Markup Language. HTML is the standard markup language for describing the structure of web pages. HTML stands for HyperText Markup Language. HTML is the standard markup language for describing the structure of web pages.</p><p>HTML stands for HyperText Markup Language. HTML is the standard markup language for describing the structure of web pages.HTML stands for HyperText Markup Language. HTML is the standard markup language for describing the structure of web pages.HTML stands for HyperText Markup Language. HTML is the standard markup language for describing the structure of web pages.HTML stands for HyperText Markup Language. HTML is the standard markup language for describing the structure of web pages.</p>', 2, '2021-10-16 03:57:57', '2021-11-17 05:50:51'),
(16, 'What is Lorem Ipsum?', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><p>It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><p> </p>', 2, '2021-11-08 00:23:16', '2021-11-17 05:47:49'),
(17, 'Why do we use it?', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.</p>', 1, '2021-11-16 02:51:22', '2021-11-16 02:51:22');

-- --------------------------------------------------------

--
-- Table structure for table `fundraisers`
--

CREATE TABLE `fundraisers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `step` int(11) NOT NULL,
  `fundraiser_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `story` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fundraising_for` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fund_type` tinyint(4) DEFAULT NULL,
  `like_to_raise` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `cover_media` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mailing_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `digital_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `region` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_birth` datetime DEFAULT NULL,
  `person_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `relation_to` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `receive_money` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `acc_holder_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_branch_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_acc_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_nwk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `is_enable` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 for active and 0 for inactive',
  `is_featured` tinyint(1) NOT NULL DEFAULT 0,
  `type` tinyint(4) DEFAULT NULL,
  `card_type` tinyint(4) DEFAULT NULL,
  `card_info` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `view_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fundraisers`
--

INSERT INTO `fundraisers` (`id`, `user_id`, `step`, `fundraiser_title`, `story`, `fundraising_for`, `fund_type`, `like_to_raise`, `end_date`, `cover_media`, `mailing_address`, `digital_address`, `city`, `region`, `country`, `date_of_birth`, `person_name`, `contact`, `relation_to`, `receive_money`, `bank`, `acc_holder_name`, `bank_branch_name`, `bank_acc_no`, `mobile_nwk`, `phone`, `status`, `is_enable`, `is_featured`, `type`, `card_type`, `card_info`, `view_token`, `created_at`, `updated_at`) VALUES
(1, 90, 2, 'Labore rem beatae de', '<p>Labore rem beatae de</p>', '6', 1, '12000', '2021-12-08 00:00:00', 'fundraiser_images/1638274844.png', 'Aut dolor ut reicien', 'Numquam sit rerum q', 'Sunt dolor id vel', '2', 'Et quis exercitation', '1999-12-11 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, NULL, NULL, NULL, NULL, '2021-11-30 06:36:46', '2021-11-30 07:07:26'),
(2, 30, 5, 'Aute obcaecati dolor', '<p>Aute obcaecati dolor</p>', '10', 1, '12000', '2021-12-09 00:00:00', 'fundraiser_images/1638330440.jpg', 'Esse nulla consequun', 'Dignissimos enim qui', 'Est nihil aut dicta', '2', 'Rem tempore est sae', '1999-12-11 00:00:00', 'org org', '1234567890', 'brother', 'bank', '2', 'account holder name', 'bank branch name', '123412341234', NULL, NULL, 0, 1, 0, NULL, 1, '1234567890', NULL, '2021-11-30 22:16:36', '2021-11-30 23:32:33'),
(3, 30, 5, 'Soluta in in dolores', '<p>Soluta in in dolores fdgdg</p>', '8', 2, '110000', '2021-12-29 00:00:00', 'fundraiser_images/1638334985.png', 'Officia est eos ab e', 'Culpa quae corporis', 'Veniam minima volup', '2', 'Saepe voluptatem qu', '2005-12-11 00:00:00', 'org org', '1234567890', 'sister', 'bank', '1', 'account holder name', 'bank branch name', '123412341234', NULL, NULL, 0, 1, 0, NULL, 1, '123412341234', NULL, '2021-11-30 23:32:50', '2021-11-30 23:35:33'),
(4, 30, 5, 'Eu repudiandae autem', '<p>v Eu repudiandae autem</p>', '11', 2, '450000', '2021-12-24 00:00:00', 'fundraiser_images/1638335167.jpg', 'Sunt molestiae molli', 'Eum eligendi est est', 'Corporis laudantium', '3', 'Ab animi enim susci', '2002-11-12 00:00:00', 'org org', '1234567890', 'Elit temporibus ass', 'bank', '2', 'Abraham Keller', 'Edward Wolfe', '12341234134', NULL, NULL, 0, 1, 0, NULL, 3, '12341234', NULL, '2021-11-30 23:35:45', '2021-11-30 23:58:16');

-- --------------------------------------------------------

--
-- Table structure for table `funds`
--

CREATE TABLE `funds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target_amount` double(8,2) NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'reason',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_date` datetime NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `latitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_type` int(11) NOT NULL COMMENT '0= individually 1= charity.',
  `fund_mode` int(11) NOT NULL COMMENT '0= public 1=private.',
  `view_token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '0-pending.1-approved,2-rejected',
  `type` int(11) NOT NULL DEFAULT 0,
  `created_by_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `funds`
--

INSERT INTO `funds` (`id`, `title`, `name`, `target_amount`, `description`, `image`, `video`, `end_date`, `address`, `latitude`, `longitude`, `user_type`, `fund_mode`, `view_token`, `status`, `type`, `created_by_id`, `created_at`, `updated_at`) VALUES
(1, 'Hunger relief', 'Anthony', 89555.00, 'this is a description for fund raising', ' ', ' ', '2021-06-22 00:00:00', 'some address', ' ', ' ', 1, 1, 'ytB5nHoBCvo1p88dRSnNCMpXAYF1GxHSU020HNZl', 1, 0, 2, '2021-06-02 00:00:00', '2021-06-07 10:53:27'),
(2, 'Flood Relief', 'John', 632514.00, 'flood relief description', ' ', ' ', '2021-06-24 00:00:00', 'some address', ' ', ' ', 1, 0, '', 2, 0, 2, '2021-06-07 00:00:00', '2021-06-07 06:53:22');

-- --------------------------------------------------------

--
-- Table structure for table `fund_category`
--

CREATE TABLE `fund_category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fund_category`
--

INSERT INTO `fund_category` (`id`, `category`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Medical Support', 1, '2021-10-28 06:13:11', '2021-10-29 12:52:11'),
(2, 'Emergency', 1, '2021-10-28 06:35:51', '2021-10-28 06:39:31'),
(3, 'Financial Support', 1, '2021-10-28 06:36:18', '2021-10-28 06:39:54'),
(4, 'Charity or Non Charity Profit', 1, '2021-10-28 06:40:16', '2021-11-27 07:09:27'),
(5, 'Education', 1, '2021-10-28 06:40:37', '2021-10-28 06:40:37'),
(6, 'Natural Disaster', 1, '2021-10-28 06:40:55', '2021-10-28 06:40:55'),
(7, 'Life Events', 1, '2021-10-28 06:41:15', '2021-10-28 06:41:15'),
(8, 'Funerals', 1, '2021-10-28 06:41:25', '2021-10-28 06:41:25'),
(9, 'Weddings', 1, '2021-10-28 06:41:39', '2021-10-28 06:41:39'),
(10, 'Outdooring / Baby Naming', 1, '2021-10-28 06:41:50', '2021-10-28 06:41:50'),
(11, 'Birthday Party', 1, '2021-10-28 06:42:03', '2021-10-28 06:42:03'),
(12, 'Other Events', 1, '2021-10-28 06:42:20', '2021-11-11 02:08:31'),
(13, 'Business', 1, '2021-10-28 06:42:28', '2021-10-28 06:42:28'),
(14, 'Unemployment Support', 1, '2021-10-28 06:42:40', '2021-10-28 06:42:40'),
(15, 'Community Development', 1, '2021-10-28 06:42:52', '2021-11-24 06:11:14');

-- --------------------------------------------------------

--
-- Table structure for table `help`
--

CREATE TABLE `help` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `help`
--

INSERT INTO `help` (`id`, `description`, `created_at`, `updated_at`) VALUES
(2, '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p><figure class=\"image\"><img src=\"https://localhost/intoboa/public/ckeditor_images/adminpages/1636635706.png\"></figure><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', '2021-11-11 07:31:52', '2021-11-11 07:32:17');

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
(4, '2021_05_27_124438_pages', 2),
(21, '2014_10_12_100000_create_password_resets_table', 3),
(22, '2019_08_19_000000_create_failed_jobs_table', 3),
(23, '2021_05_01_134003_create_pages', 3),
(24, '2021_05_05_081609_app_login', 3),
(25, '2021_05_29_114709_create_funds', 4),
(28, '2021_10_14_102557_create_teams_table', 7),
(29, '2021_10_14_132853_create_team_table', 8),
(32, '2021_10_15_033344_create_aboutus_table', 9),
(35, '2021_10_15_075303_create_banner_table', 11),
(36, '2014_10_12_000000_create_userss_table', 12),
(38, '2021_10_16_092952_create_fundraiser_table', 13),
(42, '2021_10_19_034708_create_terms_table', 15),
(43, '2021_10_19_034728_create_privacy_policy_table', 15),
(46, '2021_10_28_050349_create_fund_category_table', 17),
(47, '2021_10_28_070855_create_testimonial_table', 18),
(51, '2021_11_01_073001_create_comments_table', 20),
(54, '2021_10_18_113046_create_blog_table', 22),
(56, '2021_11_08_094418_create_slider_table', 23),
(58, '2021_11_08_094347_create_story_table', 24),
(60, '2021_11_11_111621_create_partners_table', 26),
(61, '2021_11_11_125625_create_help_table', 27),
(62, '2021_10_19_111419_create_contactus_table', 28),
(63, '2021_10_15_062552_create_faq_table', 29),
(70, '2021_06_19_070838_create_social_links_table', 32),
(79, '2021_11_25_043747_create_settings_table', 36),
(83, '2021_05_29_112746_create_donate', 37),
(86, '2021_10_28_074837_create_fundraisers_table', 38);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `type` int(11) NOT NULL DEFAULT 0 COMMENT 'Ex. About us',
  `created_by_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `description`, `status`, `type`, `created_by_id`, `created_at`, `updated_at`) VALUES
(1, 'Start Playing Gambling Games In India', 'Start Playing Gambling Games In India', 1, 1, 2, '2021-07-21 05:17:50', '2021-10-14 06:47:37');

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

CREATE TABLE `partners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1 for active 0 for deactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `partners`
--

INSERT INTO `partners` (`id`, `logo`, `status`, `created_at`, `updated_at`) VALUES
(1, '1636632341.png', 1, '2021-11-11 06:35:41', '2021-11-11 06:35:41'),
(2, '1636632355.png', 1, '2021-11-11 06:35:55', '2021-11-11 06:35:55'),
(4, '1636632376.png', 1, '2021-11-11 06:36:16', '2021-11-11 06:36:16'),
(5, '1636632386.png', 1, '2021-11-13 06:36:26', '2021-11-11 06:36:26'),
(6, '1636632394.jpg', 1, '2021-11-11 06:36:34', '2021-11-11 06:59:25'),
(7, '1636632465.png', 1, '2021-11-11 06:36:44', '2021-11-11 06:49:14'),
(8, '1636633810.png', 1, '2021-11-11 07:00:10', '2021-11-11 07:00:10');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('asd@yopmail.com', 'diwYQZvxtv', '2021-10-01 00:35:35'),
('asd@yopmail.com', 'qszWPudCzj', '2021-10-01 00:35:52'),
('developertest68@gmail.com', 'hTSCZkQmRD', '2021-10-01 01:24:38'),
('asd@gmail.com', 'hXN8gXfoqK', '2021-10-01 02:28:19'),
('asd@gmail.com', '6tbZrDlOll', '2021-10-01 02:29:31'),
('developertest68@gmail.com', '9TB0a8ilnD', '2021-10-01 02:30:07'),
('developertest68@gmail.com', 'ojLZjXsBQZ', '2021-10-01 02:30:16'),
('developertest68@gmail.com', 'eOOX5VGunf', '2021-10-01 02:34:26'),
('developertest68@gmail.com', '7PDQqT1rVH', '2021-10-01 02:44:36'),
('asd@yopmail.com', 'DxZgbncPzd', '2021-10-01 03:48:25'),
('developertest68@gmail.com', 'kaFCxSsICp', '2021-10-01 03:51:09'),
('developertest68@gmail.com', 'FCYSKGS2lq', '2021-10-01 03:53:04'),
('developertest68@gmail.com', 'wMnvVMYbFn', '2021-10-01 03:55:22'),
('developertest68@gmail.com', 'G7sHTmgJr0', '2021-10-01 03:59:53'),
('developertest68@gmail.com', 'AhE5opsFQA', '2021-10-01 04:06:51'),
('developertest68@gmail.com', 'WUOiEfNaXc', '2021-10-01 06:30:26'),
('developertest68@gmail.com', 'v1C40mQTSd', '2021-10-27 06:33:49'),
('developertest68@gmail.com', 'YA3Nma2sk1', '2021-10-27 06:37:03'),
('developertest68@gmail.com', '3gDsXXqOK7', '2021-10-27 06:38:24'),
('developertest68@gmail.com', 'OI5G5VLRLt', '2021-10-27 06:40:07'),
('developertest68@gmail.com', 'eGT9OR6qWI', '2021-10-27 06:43:35'),
('orgorg@gmail.com', '5M3KgspYbi', '2021-10-27 06:46:17'),
('developertest68@gmail.com', 'VOOQHIgXOm', '2021-10-27 06:49:09'),
('developertest68@gmail.com', 'gddsbMAYjj', '2021-10-27 06:52:50'),
('developertest68@gmail.com', '7zzZ6W7NTC', '2021-10-27 06:53:50'),
('developertest68@gmail.com', '2F8IN1Z2cb', '2021-10-27 06:54:00'),
('developertest68@gmail.com', 'lNsszSAuTw', '2021-10-27 06:54:23'),
('developertest68@gmail.com', 'e29uTtipgG', '2021-10-27 06:56:13'),
('developertest68@gmail.com', 'h4FiyQgXQc', '2021-10-27 06:56:36'),
('developertest68@gmail.com', 'brU1H1wAGI', '2021-10-27 06:57:30'),
('developertest68@gmail.com', 'pAZ53gVnju', '2021-10-27 06:59:27'),
('developertest68@gmail.com', 'W6Zdp9QlTK', '2021-10-27 06:59:52'),
('developertest8@gmail.com', '1eqDzA5HmM', '2021-10-27 07:05:20'),
('orgtest@gmail.com', 'Gnz8Ade7Xg', '2021-10-27 07:06:52'),
('test@gmail.com', 'oMeJcg0rWL', '2021-10-27 07:18:11');

-- --------------------------------------------------------

--
-- Table structure for table `privacy_policy`
--

CREATE TABLE `privacy_policy` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `privacy_policy`
--

INSERT INTO `privacy_policy` (`id`, `description`, `created_at`, `updated_at`) VALUES
(9, '<figure class=\"image\"><img src=\"http://167.172.209.57/intoboa/public/ckeditor_images/adminpages/1636352539.jpg\"></figure><figure class=\"image\"><img src=\"http://167.172.209.57/intoboa/public/ckeditor_images/adminpages/1636352796.jpg\"></figure><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p><p> <br> </p>', '2021-11-08 06:22:39', '2021-11-18 06:16:40');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tip_on_payment` int(11) NOT NULL DEFAULT 0,
  `service_charges` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 for inactive , 1 for active',
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `tip_on_payment`, `service_charges`, `status`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 20, 10, 1, 2, '2021-11-25 23:31:38', '2021-11-26 02:55:58');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `caption` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 for inactive 1 for active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `title`, `caption`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Homeless Child', 'Raise your hand for Helpless Childrens', '1636375849.png', 1, '2021-11-08 12:50:49', '2021-11-17 23:59:00'),
(3, 'Homeless Child', 'Raise your hand for Helpless Childrens', '1636376396.png', 1, '2021-11-08 12:59:37', '2021-11-17 23:47:33'),
(4, 'Magnam saepe sint an', 'Voluptas amet dolor', '1636376443.png', 0, '2021-11-08 13:00:43', '2021-11-17 23:59:06');

-- --------------------------------------------------------

--
-- Table structure for table `social_links`
--

CREATE TABLE `social_links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `type` int(11) NOT NULL DEFAULT 0,
  `role` tinyint(4) NOT NULL DEFAULT 0,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `social_links`
--

INSERT INTO `social_links` (`id`, `link`, `status`, `type`, `role`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'www.facebook.com', 1, 1, 0, 2, '2021-11-24 04:15:26', '2021-11-24 04:15:26'),
(2, 'www.linkedin.com', 1, 2, 0, 2, '2021-11-24 04:15:40', '2021-11-24 04:15:40'),
(3, 'www.youtube.com', 1, 3, 0, 2, '2021-11-24 04:15:52', '2021-11-24 04:15:52'),
(4, 'www.twitter.com', 1, 4, 0, 2, '2021-11-24 04:16:09', '2021-11-24 04:16:09'),
(5, 'www.instagram.com', 1, 5, 0, 2, '2021-11-24 04:16:26', '2021-11-24 04:16:26'),
(10, 'Eum autem aut maxime', 1, 0, 2, 91, NULL, NULL),
(11, 'Ipsa nostrum id bea', 1, 0, 2, 91, NULL, NULL),
(12, 'Architecto et commod', 1, 0, 2, 91, NULL, NULL),
(13, 'https://www.daviho.com', 1, 0, 2, 91, NULL, NULL),
(14, 'Et nemo deleniti exp', 1, 0, 2, 92, NULL, NULL),
(15, 'Vel facilis esse su', 1, 0, 2, 92, NULL, NULL),
(16, 'Quos voluptatem Vol', 1, 0, 2, 92, NULL, NULL),
(17, 'https://www.bizofawo.ws', 1, 0, 2, 92, NULL, NULL),
(18, 'Quia soluta nemo inv', 1, 0, 2, 93, NULL, NULL),
(19, 'Alias expedita volup', 1, 0, 2, 93, NULL, NULL),
(20, 'Unde quam eum reicie', 1, 0, 2, 93, NULL, NULL),
(21, 'https://www.xyfobosipyqy.net', 1, 0, 2, 93, NULL, NULL),
(22, 'Sunt dignissimos ea', 1, 0, 2, 94, NULL, NULL),
(23, 'Excepturi nobis sed', 1, 0, 2, 94, NULL, NULL),
(24, 'Et in iusto consequa', 1, 0, 2, 94, NULL, NULL),
(25, 'https://www.dyso.org.uk', 1, 0, 2, 94, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `story`
--

CREATE TABLE `story` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `story_of` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 for inactive 1 for active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `story`
--

INSERT INTO `story` (`id`, `image`, `summary`, `story_of`, `status`, `created_at`, `updated_at`) VALUES
(3, '1636452743.jpg', 'I am a person who was helped by this organization. Before they gave me assistance, I was really struggling with this issue, but now my life is better.', 'BALKI, FARMER AND MOTHER IN NIGER', 1, '2021-11-09 10:12:23', '2021-11-09 10:12:23'),
(5, '1636457109.jpg', 'I am a person who was helped by this organization. Before they gave me assistance, I was really struggling with this issue, but now my life is better.', 'BALKI, FARMER AND MOTHER IN NIGER', 1, '2021-11-09 11:25:09', '2021-11-09 11:25:09'),
(6, '1636457198.jpg', 'I am a person who was helped by this organization. Before they gave me assistance, I was really struggling with this issue, but now my life is better.', 'BALKI, FARMER AND MOTHER IN NIGER', 1, '2021-11-09 11:26:38', '2021-11-09 11:28:08');

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `designation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`id`, `name`, `image`, `designation`, `created_at`, `updated_at`) VALUES
(1, 'Tom', '1634276557.png', 'Manager', '2021-10-14 13:31:44', '2021-10-22 07:04:17'),
(2, 'Lina', '1634276575.png', 'Team Lead', '2021-10-14 13:39:27', '2021-10-15 10:38:48'),
(3, 'Roy', '1634276590.png', 'CEO', '2021-10-14 13:45:31', '2021-10-15 05:43:10'),
(5, 'John', '1634276618.png', 'Director', '2021-10-15 05:43:38', '2021-11-09 11:35:13');

-- --------------------------------------------------------

--
-- Table structure for table `terms`
--

CREATE TABLE `terms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `terms`
--

INSERT INTO `terms` (`id`, `description`, `created_at`, `updated_at`) VALUES
(7, '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p><figure class=\"image\"><img src=\"http://167.172.209.57/intoboa/public/ckeditor_images/adminpages/1636377478.jpg\"></figure><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', '2021-11-08 13:17:59', '2021-11-08 13:17:59');

-- --------------------------------------------------------

--
-- Table structure for table `testimonial`
--

CREATE TABLE `testimonial` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `support` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `review` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pincode` int(11) DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonial`
--

INSERT INTO `testimonial` (`id`, `support`, `name`, `image`, `review`, `pincode`, `city`, `state`, `country`, `status`, `created_at`, `updated_at`) VALUES
(2, '14', 'Minerva Crane', '1635482405.png', 'I had the help of jenna in a very shattered moment in my life, the compassion and kindness went above and beyond. I needed that! Thank You!', 160011, 'City', 'State', 'Country', 1, '2021-10-28 12:57:33', '2021-11-11 04:01:23'),
(3, '15', 'Allen Lawrence', '1635482391.png', 'I had the help of jenna in a very shattered moment in my life, the compassion and kindness went above and beyond. I needed that! Thank You!', 12010, 'City', 'State', 'Country', 1, '2021-10-28 13:29:30', '2021-10-29 04:39:51'),
(4, '15', 'Calvin Soto', '1635482375.png', 'I had the help of jenna in a very shattered moment in my life, the compassion and kindness went above and beyond. I needed that! Thank You!', 160011, 'City', 'State', 'Country', 1, '2021-10-29 04:28:37', '2021-10-29 12:50:30'),
(5, '8', 'Herman Gentry', '1636354059.png', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.</p><p> </p>', 12345, 'Quos commodi dolorem', 'Et molestiae proiden', 'Necessitatibus quide', 1, '2021-11-08 06:47:39', '2021-11-11 04:01:28');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `org_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `org_desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cause_support` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `socail_media` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pincode` int(11) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `role` int(11) NOT NULL,
  `is_featured` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 for no 1, for yes',
  `is_notification` int(11) NOT NULL DEFAULT 1,
  `verification_status` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '0= inactive 1= active  2= suspend',
  `contact_verified_at` timestamp NULL DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `first_name`, `last_name`, `email`, `phone`, `profile_image`, `org_name`, `org_desc`, `cause_support`, `socail_media`, `profile_name`, `address`, `latitude`, `longitude`, `city`, `state`, `pincode`, `age`, `role`, `is_featured`, `is_notification`, `verification_status`, `status`, `contact_verified_at`, `email_verified_at`, `password`, `remember_token`, `token`, `created_at`, `updated_at`) VALUES
(2, 'Admin', 'Admin', 'Admin', 'admin@gmail.com', NULL, '1635335723.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 0, NULL, NULL, '$2y$10$wFoRryYW/7q4fXevHYZiWOlTc76hYg3TbCzcHtGnCX.yyTknHnhA2', 'Zmesva6AWMy4OpjMW9FhpukCtx8IFd2l16eONBmIUSF29Pi9dhqGFM1EuIKj', NULL, '2021-09-30 00:33:19', '2021-12-01 02:43:03'),
(4, 'testusers', NULL, NULL, 'testusers1@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, 0, 1, NULL, NULL, '$2y$10$zAV.MFK0eJWe5b03.WXh9ucnOMMi.a8n01gzCfPAM0xyZJIYY4AdO', NULL, NULL, '2021-10-14 09:49:35', '2021-10-14 13:15:35'),
(5, 'testuser2', NULL, NULL, 'testuser2@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, 0, 1, NULL, NULL, '$2y$10$UyUa8MXpRi/Vph1JvUSmB.p/l2C0..PFMkfoIw9bvi1zWQpxwApk2', NULL, NULL, '2021-10-14 09:52:27', '2021-10-22 06:32:08'),
(6, 'test', NULL, NULL, 'admin1@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, 0, 1, NULL, NULL, '$2y$10$hzHD5xfiAVPE5v66hKo1OOO32W39crRwI1RYuw41we67hwJu9iHuy', NULL, NULL, '2021-10-15 05:18:27', '2021-10-22 06:32:09'),
(12, 'testcharity1', NULL, NULL, 'testcharity1@gmail.com', '1234567890', NULL, 'testcharity1', 'testcharity1', 'Children', 'LinkedIn,Facebook', 'testcharity1', NULL, NULL, NULL, 'Chandigarh', NULL, NULL, NULL, 2, 0, 1, 0, 1, NULL, NULL, '$2y$10$BAJlRKBTgB1amWphtR/kQeQxyHAnfeRyCoj0xFcvy5lWeqq30xP3W', NULL, NULL, '2021-10-16 07:08:01', '2021-11-24 03:48:47'),
(28, 'Mira Morrow', NULL, NULL, 'zudy@mailinator.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, 0, 1, NULL, NULL, '$2y$10$eUAlM7urSqOxkEQNbIOktuDSUaUAI5X9HCcWOetKJJ48WVD7W7tjO', NULL, NULL, '2021-10-20 04:44:46', '2021-10-22 06:32:11'),
(29, 'org', NULL, NULL, 'org@gmail.com', '1234567890', NULL, 'org', 'org', 'Education', 'LinkedIn', 'orgprofile', NULL, NULL, NULL, 'chd', NULL, NULL, NULL, 2, 0, 1, 0, 1, NULL, NULL, '$2y$10$Fn.ymYo8xh/MKSZiq45cv.tzfEhekveuSMYh.5XJM8T9wLDWAtkIO', NULL, NULL, '2021-10-27 03:37:28', '2021-11-24 03:48:47'),
(30, 'org1', 'org', 'org', 'org1@gmail.com', '1234567890', '1635339405.jpg', 'org1', 'org1', 'Education', 'Facebook', 'org1profile', NULL, NULL, NULL, 'chd', NULL, NULL, NULL, 2, 0, 1, 0, 1, NULL, NULL, '$2y$10$bqI/d2MJVFGkosOrUBpyY.kXzyaoeyJNYYQUsu2VaJdG2nEY9L1t.', 'jiEw1mqiubLzqbvB5PlPTeQ33ZS7IVE4XO919WNQilnBsJ2Iu3Nusf3CHSVl', 'x64vpnWS0X', '2021-10-27 03:46:57', '2021-11-30 23:41:35'),
(32, 'dummy name', 'demo', 'demom', 'org12@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, 0, 1, NULL, NULL, '$2y$10$5wq.ZAcljSXSv68T9ZigB.JbKCNIv7q29XNJX9JCLgAE/qSFz4zU.', NULL, NULL, '2021-10-27 04:26:29', '2021-10-27 04:30:17'),
(33, 'dummy name', 'demo', 'demom', 'org123@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, 0, 1, NULL, NULL, '$2y$10$bz2hMDiMxR5vxE4.WSOVXueycdx7R91KlmrtiCYw5V7bP7oHl.Tem', NULL, NULL, '2021-10-27 04:33:59', '2021-10-27 04:42:41'),
(35, 'org112', NULL, NULL, 'org112@gmail.com', '1234567890', NULL, 'org112', 'org112', 'Education', 'Facebook', 'org112', NULL, NULL, NULL, 'chd', NULL, NULL, NULL, 2, 0, 1, 0, 1, NULL, NULL, '$2y$10$c1KJqWvBsXhJeYfycsd/kulvuIF1KNtWAlctvyYuNJNvDNP8l4CCu', NULL, '', '2021-10-27 04:38:11', '2021-11-24 03:48:47'),
(36, 'charity12', NULL, NULL, 'charity12@gmail.com', '1234567890', NULL, 'charity12', 'charity12', 'Children', 'Instagram', 'charity12', NULL, NULL, NULL, 'Chandigarh', NULL, NULL, NULL, 2, 0, 1, 0, 1, NULL, NULL, '$2y$10$YxbNbXpaGD5.2QIATmvVEuf5/trmT.b/NgsYprkMl..jmdZbceQLa', NULL, NULL, '2021-10-27 04:44:13', '2021-11-24 03:48:47'),
(37, 'dummy name', 'org', 'test', 'orgtest@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, 0, 1, NULL, NULL, '$2y$10$xJ3ZKPQ2uTEE5qrP6Vp83efkvtrkXBuvxr854ymsfG1QbXDmAQEP6', NULL, NULL, '2021-10-27 06:14:22', '2021-10-27 06:14:22'),
(38, 'orgorg', 'org', 'org', 'orgorg@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, 0, 1, NULL, NULL, '$2y$10$3TKi2vqH3rHJ3szzkSW8e.4NxlY/X0kSC0vxm91Y.1h0Up/p8W0NG', NULL, '', '2021-10-27 06:16:13', '2021-10-27 07:33:06'),
(40, 'developertest', 'developer', 'test', 'developertest68@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, 0, 1, NULL, NULL, '$2y$10$L1LkBBfKaY4P0aQo2EqAUuhyBDpNef4FT5Ah8wEVuH9j5rc8BFZ3e', NULL, '42DunfiMDb', '2021-10-27 06:23:52', '2021-10-27 07:15:19'),
(41, 'Gagan', 'Gagan', 'Sharma', 'richestsoft@gmail.com', '9780965663', NULL, 'Test Org', 'Test Description', 'Education', 'LinkedIn,Facebook,Instagram', 'Monty', NULL, NULL, NULL, 'City', NULL, NULL, NULL, 2, 0, 1, 0, 1, NULL, NULL, '$2y$10$ti1UT4uW4gB8asJ2n7q.n.5A4RA3Edx3IXyN4XfpNf8NMg3PsqE1q', NULL, NULL, '2021-10-27 13:04:47', '2021-11-24 03:48:47'),
(42, 'Tiger Preston', NULL, NULL, 'zuqa@mailinator.com', '1234567890', NULL, 'Poole Melendez LLC', 'Sims and Nguyen Inc', 'Education', 'LinkedIn', 'Sonia Weeks', NULL, NULL, NULL, 'durohately@mailinator.com', NULL, NULL, NULL, 2, 0, 1, 0, 1, NULL, NULL, '$2y$10$E7/o79RwuG.ltkkuwPpPJuF2HqqrXJ/CuzUNHAoTUbmjvxF/03OuK', NULL, NULL, '2021-10-28 04:12:13', '2021-11-24 03:48:47'),
(43, 'TestTest', 'Test', 'Test', 'test123@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, 0, 1, NULL, NULL, '$2y$10$s245.94qRbugoW71rTtXleQixZg1aJGu4p0X205seKW8NmgrZjgjy', NULL, NULL, '2021-10-29 07:44:41', '2021-10-29 07:44:41'),
(44, 'RyderBrett', 'Ryder', 'Brett', 'vuzuxelu@mailinator.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, 0, 1, NULL, NULL, '$2y$10$i1D6DHeZvCOXQ3jOuTFqPO7z4so.QkJ67ajdlNLP29dxy01Cm6u32', NULL, NULL, '2021-11-01 11:23:42', '2021-11-01 11:23:42'),
(45, 'RyderBrett', 'Ryder', 'Brett', 'vuzuxel1u@mailinator.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, 0, 1, NULL, NULL, '$2y$10$rI74NWOh4VRXJqdOFbjlFe593GWnaBCIdW7Ee6s.ym0aAOfDtL0Mq', NULL, NULL, '2021-11-01 11:24:06', '2021-11-01 11:24:06'),
(46, 'catcat', 'cat', 'cat', 'cat@gmail.com', NULL, '1636549777.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, 0, 1, NULL, NULL, '$2y$10$K9knOwPaqWMfTMVV7sQ7tO/j5U459yOuLplvfpOUwlQVdxWC6V0jq', NULL, 'nkIDBI3C7b', '2021-11-09 07:15:57', '2021-11-22 02:10:12'),
(47, 'mndylavis', 'mndy', 'lavis', 'stesting2112@gmail.com', NULL, '1636540465.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, 0, 1, NULL, NULL, '$2y$10$Cyd8Bg7xIFVhSgxbhSFPme5/E/bAlCGgUCeCXvCuBvaP4eq15K6Ym', '9xfNswimmpdwJWkdFOnZ43kvlwHAcQamF1fa0rMHhKGGuIeQmAuoTSAuSRPx', NULL, '2021-11-10 07:57:53', '2021-11-10 10:34:25'),
(48, 'Kim Jung', NULL, NULL, 'kim@gmail.com', '1234567890', NULL, 'Lorem Ipsum', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><p><br> </p><figure class=\"image\"><img src=\"https://localhost/intoboa/public/ckeditor_images/startfund/1637058544.png\"></figure><p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><p><br><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><p><br><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><p><br> </p>', 'Education', 'LinkedIn,Facebook', 'Kim Hyun Jung', NULL, NULL, NULL, 'Mohali', NULL, NULL, NULL, 2, 0, 1, 0, 1, NULL, NULL, '$2y$10$2NPb6vWA4Fj2QnVrPEI1h.1IUegxHaIdBO6myEvBa5dfk0lip1TKO', NULL, NULL, '2021-11-16 05:01:35', '2021-11-24 03:48:47'),
(49, 'testing Organisation', NULL, NULL, 'too@gmail.com', '1234567890', '1637128600.png', 'Testing Organisationn', '<p> Organisation Description Organisation Description</p>', 'Education', 'Website', 'Testing Organisation', NULL, NULL, NULL, 'Mohali', NULL, NULL, NULL, 2, 1, 1, 0, 1, NULL, NULL, '$2y$10$BEphLwCo7.oC9JBQwY5sC.r94QM00nxL70a4rfyCyRHCXEubszzV6', NULL, NULL, '2021-11-16 23:33:46', '2021-11-24 03:48:47'),
(50, 'richestsoft', NULL, NULL, 'richestsoft29@gmail.com', '1234567890', NULL, 'RichestSoft', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries</p><p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries</p>', 'Women & girls', 'Website', 'richestSoft', NULL, NULL, NULL, 'Mohali', NULL, NULL, NULL, 2, 0, 1, 0, 1, NULL, NULL, '$2y$10$/OdiNkX1LLeO.paiI2yJouYpTiHe4VDSYex.Zamv4KfOPonPYqvfW', NULL, NULL, '2021-11-17 05:23:01', '2021-11-29 00:01:00'),
(51, 'Lee minho', 'Lee min', 'ho', 'leeminho@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, 0, 1, NULL, NULL, '$2y$10$vRlLfknukF6b/0dyuqXgKuiO/SrYO2.3qbnqHHziZpwKcmL8qlPP.', NULL, NULL, '2021-11-18 06:54:26', '2021-11-18 06:54:26'),
(52, 'parkchanyeol', 'park', 'chanyeol', 'pcy@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, 0, 1, NULL, NULL, '$2y$10$cWpn1AlUvsLrKeBeUwvfv.Pa99RHFUPP7vF914wIXtaHFPvJZa6Re', NULL, NULL, '2021-11-22 00:20:15', '2021-11-22 00:20:15'),
(53, 'dohkyunsoo', 'doh', 'kyunsoo', 'do@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, 0, 1, NULL, NULL, '$2y$10$6SOlldb26vvfdgfQBbNq9uJMI9BYOIQGQRFZbCJVYFHLj.iIok/E6', NULL, NULL, '2021-11-22 00:21:49', '2021-11-22 00:21:49'),
(54, 'kimwoobin', 'kim', 'woobin', 'kwb@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, 0, 1, NULL, NULL, '$2y$10$n9V0HNUF2TYmop0NH383SOnh1.zTdzqfeJtMVsqXzBka9YB3R2LMC', NULL, NULL, '2021-11-22 00:24:39', '2021-11-22 00:24:39'),
(59, 'Minerva Crane', NULL, NULL, 'daisy@gmail.com', '1234567890', NULL, 'daisy organisation', '<p>daisy organisation &nbsp;daisy organisation</p>', 'Education', 'LinkedIn', 'daisy', NULL, NULL, NULL, 'City', NULL, NULL, NULL, 2, 0, 1, 0, 0, NULL, NULL, '$2y$10$d70YiLj7vXedxc1ttD9pH.45UvhoODTcuwpzO7ooVZ55/CYl6nvT2', NULL, NULL, '2021-11-22 01:08:07', '2021-11-24 03:48:47'),
(60, 'Eaton Lancaster', NULL, NULL, 'giwanico@mailinator.com', '1234567890', NULL, 'Vega Landry Traders', '<p>Vega Landry Traders</p>', 'Women & girls', 'Instagram', 'Ezra Gentry', NULL, NULL, NULL, 'bofakus@mailinator.com', NULL, NULL, NULL, 2, 0, 1, 0, 1, NULL, NULL, '$2y$10$FSEpEvF58uLBmnZ2cXX.e.uleOkAWTDBCTvTLWMXJNeYHEmiF.3z2', NULL, '', '2021-11-22 01:12:24', '2021-11-24 03:48:47'),
(86, 'Lysandra Lowery', NULL, NULL, 'vecifaga@mailinator.com', '1234567890', NULL, 'Buckley and Hess LLC', '<p>Buckley and Hess LLC Buckley and Hess LLC Buckley and Hess LLC Buckley and Hess LLC Buckley and Hess LLCBuckley and Hess LLC Buckley and Hess LLC</p>', 'Women & girls', NULL, 'Lysandra Lowery', NULL, NULL, NULL, 'Mohali', NULL, NULL, NULL, 2, 0, 1, 0, 0, NULL, NULL, '$2y$10$Y6zrTbif4XdKPbExP1rhZu2woFVtzVIG/UKk4y4dJ3nq643unWNBa', NULL, NULL, '2021-11-24 02:13:34', '2021-11-24 03:48:47'),
(87, 'Rashad Morton', NULL, NULL, 'gaciwed@mailinator.com', '1234567890', NULL, 'Bryan and Osborne Traders', '<p>Bryan and Osborne Traders Bryan and Osborne Traders</p>', 'Women & girls', NULL, 'Rashad Morton', NULL, NULL, NULL, 'Mohali', NULL, NULL, NULL, 2, 0, 1, 0, 0, NULL, NULL, '$2y$10$u/KGK3.BpFGplzGaGRxPp.opAP1smechqjqhJ.XABNZSK7RgcM8Cy', NULL, NULL, '2021-11-24 02:37:57', '2021-11-24 03:48:47'),
(89, 'dogdog', 'dog', 'dog', 'dog@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, 0, 1, NULL, NULL, '$2y$10$ci6EJrQA74OB8uAOiUofoeNFMjg3iKICvgCE32U0V/efwl5UGkao6', NULL, NULL, '2021-11-29 00:02:33', '2021-11-29 00:02:33'),
(90, 'dogdog', 'dog', 'dog', 'dogs@gmail.com', '1234567890', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, 0, 1, NULL, NULL, '$2y$10$N5INZylsNLGTtnKs/kG3Ue1I1jwYTAXtC3wbyUhW5AWNXHJORHhb2', NULL, NULL, '2021-11-30 04:57:01', '2021-11-30 04:57:01'),
(91, 'Aretha Higgins', NULL, NULL, 'dityzakeb@mailinator.com', '1234567890', NULL, 'Cotton and Cain Plc', '<p>Cotton and Cain Plc</p>', 'Women & girls,Medical,Sports', NULL, 'name', NULL, NULL, NULL, 'puhowiv@mailinator.com', NULL, NULL, NULL, 2, 0, 1, 0, 1, NULL, NULL, '$2y$10$2dtTM7EPPAmwmIIBMObF3uDO9cVp10tuIBXSVhn0q9AJRF.vVu5WO', NULL, NULL, '2021-12-01 00:09:44', '2021-12-01 00:10:54'),
(92, 'Abra Shaffer', NULL, NULL, 'cubunesa@mailinator.com', '1234567890', NULL, 'Parsons Hewitt Traders', '<p>Parsons Hewitt Traders</p>', 'Women & girls,Medical', NULL, 'MacKensie Sawyer', NULL, NULL, NULL, 'foletuvuvu@mailinator.com', NULL, NULL, NULL, 2, 0, 1, 0, 0, NULL, NULL, '$2y$10$8Do7KQrBnEt3uIJNAdfrKusSMgc/oDB8iyRM8GD2yUDjGElVHxu5a', NULL, NULL, '2021-12-01 04:18:39', '2021-12-01 04:18:39'),
(93, 'Melanie Howell', NULL, NULL, 'jyly@mailinator.com', '1234567890', NULL, 'Hanson Gamble Plc', '<p>Hanson Gamble Plc</p>', 'Women & girls,Medical', NULL, 'Tate Baird', NULL, NULL, NULL, 'cijorygyb@mailinator.com', NULL, NULL, NULL, 2, 0, 1, 0, 0, NULL, NULL, '$2y$10$a66kPxsBOz8m35s9cPWO5ewGVccKEIsVqgUkTrmwYONbJ0iBS2hiy', NULL, NULL, '2021-12-01 04:32:01', '2021-12-01 04:32:01'),
(94, 'Kaden Noble', NULL, NULL, 'verogexehy@mailinator.com', '1234567890', NULL, 'Ramsey Macdonald Inc', '<p>Ramsey Macdonald Inc</p>', 'Women & girls', NULL, 'Neville Little', NULL, NULL, NULL, 'suropoheqe@mailinator.com', NULL, NULL, NULL, 2, 0, 1, 0, 0, NULL, NULL, '$2y$10$v9fksgPAVnS1jIfV0FEHk.WcLeIP./N56cNhhIdqTZcsEpQBOPySS', NULL, NULL, '2021-12-01 04:33:35', '2021-12-01 04:33:35');

-- --------------------------------------------------------

--
-- Table structure for table `userss`
--

CREATE TABLE `userss` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `org_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `org_desc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cause_support` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_media` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pincode` int(11) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `role` int(11) NOT NULL,
  `is_notification` int(11) NOT NULL DEFAULT 1,
  `verification_status` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0,
  `contact_verified_at` timestamp NULL DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aboutus`
--
ALTER TABLE `aboutus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app_login`
--
ALTER TABLE `app_login`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app_login_user_id_foreign` (`user_id`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contactus`
--
ALTER TABLE `contactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donate`
--
ALTER TABLE `donate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dynamic_contents`
--
ALTER TABLE `dynamic_contents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dynamic_contents_created_by_foreign` (`created_by`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fundraisers`
--
ALTER TABLE `fundraisers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `funds`
--
ALTER TABLE `funds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `funds_created_by_id_foreign` (`created_by_id`);

--
-- Indexes for table `fund_category`
--
ALTER TABLE `fund_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `help`
--
ALTER TABLE `help`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pages_created_by_id_foreign` (`created_by_id`);

--
-- Indexes for table `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `privacy_policy`
--
ALTER TABLE `privacy_policy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `settings_created_by_foreign` (`created_by`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_links`
--
ALTER TABLE `social_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `social_links_created_by_foreign` (`created_by`);

--
-- Indexes for table `story`
--
ALTER TABLE `story`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `terms`
--
ALTER TABLE `terms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonial`
--
ALTER TABLE `testimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `userss`
--
ALTER TABLE `userss`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `userss_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aboutus`
--
ALTER TABLE `aboutus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `app_login`
--
ALTER TABLE `app_login`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `contactus`
--
ALTER TABLE `contactus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `donate`
--
ALTER TABLE `donate`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `dynamic_contents`
--
ALTER TABLE `dynamic_contents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faq`
--
ALTER TABLE `faq`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `fundraisers`
--
ALTER TABLE `fundraisers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `funds`
--
ALTER TABLE `funds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `fund_category`
--
ALTER TABLE `fund_category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `help`
--
ALTER TABLE `help`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `partners`
--
ALTER TABLE `partners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `privacy_policy`
--
ALTER TABLE `privacy_policy`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `social_links`
--
ALTER TABLE `social_links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `story`
--
ALTER TABLE `story`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `team`
--
ALTER TABLE `team`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `terms`
--
ALTER TABLE `terms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `testimonial`
--
ALTER TABLE `testimonial`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `userss`
--
ALTER TABLE `userss`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `app_login`
--
ALTER TABLE `app_login`
  ADD CONSTRAINT `app_login_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `dynamic_contents`
--
ALTER TABLE `dynamic_contents`
  ADD CONSTRAINT `dynamic_contents_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `funds`
--
ALTER TABLE `funds`
  ADD CONSTRAINT `funds_created_by_id_foreign` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pages`
--
ALTER TABLE `pages`
  ADD CONSTRAINT `pages_created_by_id_foreign` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `settings`
--
ALTER TABLE `settings`
  ADD CONSTRAINT `settings_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `social_links`
--
ALTER TABLE `social_links`
  ADD CONSTRAINT `social_links_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
