-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 17, 2025 lúc 03:34 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `billiards_database`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `customers`
--

INSERT INTO `customers` (`id`, `name`, `phone`, `email`, `created_at`, `updated_at`) VALUES
(1, 'Phạm Văn CHiến', '113', 'chienpham02062003@gmail.com', '2025-04-11 08:58:06', '2025-04-11 08:58:06'),
(2, 'Phạm Văn CHiến', '113', 'chienpham02062003@gmail.com', '2025-04-11 09:15:02', '2025-04-11 09:15:02'),
(3, 'Phạm Văn B', '1232', 'hello@gmail.com', '2025-04-11 11:19:54', '2025-04-11 11:19:54'),
(4, 'Phạm Văn B', '1232', NULL, '2025-04-13 07:50:43', '2025-04-13 07:50:43'),
(5, 'Duy', '113', 'hello@gmail.com', '2025-04-13 07:57:36', '2025-04-13 07:57:36'),
(6, 'Duy e', '12312312', 'chienpham02062003@gmail.com', '2025-04-13 07:58:32', '2025-04-13 07:58:32'),
(7, 'Duy em', '12312312', NULL, '2025-04-13 08:05:50', '2025-04-13 08:05:50'),
(8, 'Duy em', '12312312', 'hello@gmail.com', '2025-04-13 08:16:24', '2025-04-13 08:16:24'),
(9, 'Phạm Văn CHiến', '12312312', 'chienpham02062003@gmail.com', '2025-04-13 08:56:21', '2025-04-13 08:56:21'),
(10, 'Phạm Văn CHiến', '12312312', 'chienpham02062003@gmail.com', '2025-04-13 08:58:16', '2025-04-13 08:58:16'),
(11, 'Phạm Văn CHiến', '12312312', NULL, '2025-04-13 09:11:42', '2025-04-13 09:11:42'),
(12, 'Duy em', '113', 'hello@gmail.com', '2025-04-13 09:17:55', '2025-04-13 09:17:55'),
(13, 'Duy em', '113', NULL, '2025-04-13 09:27:48', '2025-04-13 09:27:48'),
(14, 'Phạm Văn B', '113', NULL, '2025-04-13 09:37:53', '2025-04-13 09:37:53'),
(15, 'Phạm Văn B', '113', 'chienpham02062003@gmail.com', '2025-04-13 09:44:50', '2025-04-13 09:44:50'),
(16, 'Phạm Văn B', '113', NULL, '2025-04-16 01:03:13', '2025-04-16 01:03:13');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `invoices`
--

CREATE TABLE `invoices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `reservation_id` bigint(20) UNSIGNED NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_phone` varchar(255) NOT NULL,
  `table_name` varchar(255) NOT NULL,
  `play_time_minutes` int(11) NOT NULL DEFAULT 0,
  `play_cost` int(11) NOT NULL,
  `services_cost` int(11) NOT NULL,
  `total_payment` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `customer_note` varchar(255) DEFAULT NULL,
  `start_time` varchar(255) DEFAULT NULL,
  `end_time` varchar(255) DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `table_price` decimal(10,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `invoices`
--

INSERT INTO `invoices` (`id`, `reservation_id`, `customer_name`, `customer_phone`, `table_name`, `play_time_minutes`, `play_cost`, `services_cost`, `total_payment`, `created_at`, `updated_at`, `customer_note`, `start_time`, `end_time`, `duration`, `table_price`) VALUES
(6, 2, 'Phạm Văn CHiến', '113', '1', 438, 146056, 0, 178056.00, '2025-04-13 07:06:24', '2025-04-13 07:06:24', NULL, NULL, NULL, NULL, 0.00),
(7, 3, 'Phạm Văn B', '1232', '2', 61, 30500, 0, 62500.00, '2025-04-13 07:43:21', '2025-04-13 07:43:21', NULL, NULL, NULL, NULL, 0.00),
(8, 3, 'Phạm Văn B', '1232', '2', 61, 30500, 0, 62500.00, '2025-04-13 07:43:42', '2025-04-13 07:43:42', NULL, NULL, NULL, NULL, 0.00),
(9, 3, 'Phạm Văn B', '1232', '2', 61, 30500, 0, 74500.00, '2025-04-13 07:45:40', '2025-04-13 07:45:40', NULL, NULL, NULL, NULL, 0.00),
(10, 3, 'Phạm Văn B', '1232', '2', 61, 30500, 0, 50500.00, '2025-04-13 07:46:11', '2025-04-13 07:46:11', NULL, NULL, NULL, NULL, 0.00),
(11, 2, 'Phạm Văn CHiến', '113', '1', 438, 146056, 0, 178056.00, '2025-04-13 07:48:58', '2025-04-13 07:48:58', NULL, NULL, NULL, NULL, 0.00),
(12, 4, 'Phạm Văn B', '1232', '3', 10, 1667, 0, 33667.00, '2025-04-13 07:50:56', '2025-04-13 07:50:56', NULL, NULL, NULL, NULL, 0.00),
(13, 4, 'Phạm Văn B', '1232', '3', 10, 1667, 0, 33667.00, '2025-04-13 07:51:10', '2025-04-13 07:51:10', NULL, NULL, NULL, NULL, 0.00),
(14, 3, 'Phạm Văn B', '1232', '2', 61, 30500, 0, 62500.00, '2025-04-13 07:56:08', '2025-04-13 07:56:08', NULL, NULL, NULL, NULL, 0.00),
(15, 5, 'Duy', '113', '2', 1440, 720000, 0, 752000.00, '2025-04-13 07:57:46', '2025-04-13 07:57:46', NULL, NULL, NULL, NULL, 0.00),
(16, 6, 'Duy e', '12312312', '2', 1440, 720000, 0, 772000.00, '2025-04-13 07:59:04', '2025-04-13 07:59:04', NULL, NULL, NULL, NULL, 0.00),
(17, 7, 'Duy em', '12312312', '2', 305, 152500, 0, 184500.00, '2025-04-13 08:05:56', '2025-04-13 08:05:56', NULL, '13/04/2025, 22:05:00', '14/04/2025, 03:10:00', NULL, 30000.00),
(18, 2, 'Phạm Văn CHiến', '113', '1', 438, 146056, 0, 190056.00, '2025-04-13 08:10:12', '2025-04-13 08:10:12', NULL, '11/04/2025, 16:56:50', '12/04/2025, 00:15:00', NULL, 20000.00),
(19, 4, 'Phạm Văn B', '1232', '3', 10, 1667, 0, 41667.00, '2025-04-13 08:11:19', '2025-04-13 08:11:19', NULL, '13/04/2025, 22:50:00', '13/04/2025, 23:00:00', NULL, 10000.00),
(20, 8, 'Duy em', '12312312', '1', 122, 40667, 0, 80667.00, '2025-04-13 08:16:32', '2025-04-13 08:16:32', NULL, '13/04/2025, 22:16:00', '14/04/2025, 00:18:00', NULL, 20000.00),
(21, 9, 'Phạm Văn CHiến', '12312312', '1', 1502, 500667, 0, 552667.00, '2025-04-13 08:57:33', '2025-04-13 08:57:33', NULL, '13/04/2025, 00:58:00', '14/04/2025, 02:00:00', NULL, 20000.00),
(22, 10, 'Phạm Văn CHiến', '12312312', '2', 2, 1000, 0, 33000.00, '2025-04-13 08:58:22', '2025-04-13 08:58:22', NULL, '13/04/2025, 22:58:00', '13/04/2025, 23:00:00', NULL, 30000.00),
(23, 11, 'Phạm Văn CHiến', '12312312', '1', 16, 5333, 0, 57333.00, '2025-04-13 09:11:49', '2025-04-13 09:11:49', NULL, '13/04/2025, 23:11:00', '13/04/2025, 23:27:00', NULL, 20000.00),
(24, 12, 'Duy em', '113', '2', 40, 20000, 0, 52000.00, '2025-04-13 09:18:01', '2025-04-13 09:18:01', NULL, '13/04/2025, 23:18:00', '13/04/2025, 23:58:00', NULL, 30000.00),
(25, 13, 'Duy em', '113', '1', 23, 7667, 0, 39667.00, '2025-04-13 09:27:53', '2025-04-13 09:27:53', NULL, '13/04/2025, 23:27:00', '13/04/2025, 23:50:00', NULL, 20000.00),
(26, 13, 'Duy em', '113', '1', 23, 7667, 0, 57667.00, '2025-04-13 09:29:43', '2025-04-13 09:29:43', NULL, '13/04/2025, 23:27:00', '13/04/2025, 23:50:00', NULL, 20000.00),
(27, 13, 'Duy em', '113', '1', 23, 7667, 0, 39667.00, '2025-04-13 09:32:22', '2025-04-13 09:32:22', NULL, '13/04/2025, 23:27:00', '13/04/2025, 23:50:00', NULL, 20000.00),
(28, 14, 'Phạm Văn B', '113', '1', 13, 4333, 0, 36333.00, '2025-04-13 09:38:00', '2025-04-13 09:38:00', NULL, '13/04/2025, 23:37:00', '13/04/2025, 23:50:00', NULL, 20000.00),
(29, 15, 'Phạm Văn B', '113', '1', 6, 2000, 0, 66000.00, '2025-04-13 09:44:55', '2025-04-13 09:44:55', NULL, '13/04/2025, 23:44:00', '13/04/2025, 23:50:00', NULL, 20000.00),
(30, 16, 'Phạm Văn B', '113', '2', 244, 122000, 0, 154000.00, '2025-04-16 01:03:19', '2025-04-16 01:03:19', NULL, '16/04/2025, 15:03:00', '16/04/2025, 19:07:00', NULL, 30000.00),
(31, 15, 'Phạm Văn B', '113', '1', 6, 2000, 0, 2000.00, '2025-04-16 01:08:34', '2025-04-16 01:08:34', NULL, '13/04/2025, 23:44:00', '13/04/2025, 23:50:00', NULL, 20000.00),
(32, 15, 'Phạm Văn B', '113', '1', 6, 2000, 0, 2000.00, '2025-04-16 01:15:27', '2025-04-16 01:15:27', NULL, '13/04/2025, 23:44:00', '13/04/2025, 23:50:00', NULL, 20000.00),
(33, 15, 'Phạm Văn B', '113', '1', 6, 2000, 0, 2000.00, '2025-04-16 01:20:48', '2025-04-16 01:20:48', NULL, '13/04/2025, 23:44:00', '13/04/2025, 23:50:00', NULL, 20000.00),
(34, 15, 'Phạm Văn B', '113', '1', 6, 2000, 0, 2000.00, '2025-04-16 01:58:44', '2025-04-16 01:58:44', NULL, '13/04/2025, 23:44:00', '13/04/2025, 23:50:00', NULL, 20000.00),
(35, 15, 'Phạm Văn B', '113', '1', 6, 2000, 0, 34000.00, '2025-04-16 08:31:14', '2025-04-16 08:31:14', NULL, '13/04/2025, 23:44:00', '13/04/2025, 23:50:00', NULL, 20000.00);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `invoice_services`
--

CREATE TABLE `invoice_services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_id` bigint(20) UNSIGNED NOT NULL,
  `service_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `invoice_services`
--

INSERT INTO `invoice_services` (`id`, `invoice_id`, `service_id`, `name`, `quantity`, `price`, `created_at`, `updated_at`) VALUES
(1, 20, 1, 'Mì Tôm Hai Trứng Update40.000 đ', 2, 20000, '2025-04-13 08:16:32', '2025-04-13 08:16:32'),
(2, 21, 1, 'Mì Tôm Hai Trứng Update40.000 đ', 2, 20000, '2025-04-13 08:57:33', '2025-04-13 08:57:33'),
(3, 21, 2, 'Bia Hơi Sài Gòn12.000 đ', 1, 12000, '2025-04-13 08:57:33', '2025-04-13 08:57:33'),
(4, 22, 1, 'Mì Tôm Hai Trứng Update20.000 đ', 1, 20000, '2025-04-13 08:58:22', '2025-04-13 08:58:22'),
(5, 22, 2, 'Bia Hơi Sài Gòn12.000 đ', 1, 12000, '2025-04-13 08:58:22', '2025-04-13 08:58:22'),
(6, 23, 1, 'Mì Tôm Hai Trứng Update40.000 đ', 2, 20000, '2025-04-13 09:11:49', '2025-04-13 09:11:49'),
(7, 23, 2, 'Bia Hơi Sài Gòn12.000 đ', 1, 12000, '2025-04-13 09:11:49', '2025-04-13 09:11:49'),
(8, 24, 1, 'Mì Tôm Hai Trứng Update20.000 đ', 1, 20000, '2025-04-13 09:18:01', '2025-04-13 09:18:01'),
(9, 24, 2, 'Bia Hơi Sài Gòn12.000 đ', 1, 12000, '2025-04-13 09:18:01', '2025-04-13 09:18:01'),
(10, 25, 1, 'Mì Tôm Hai Trứng Update20.000 đ', 1, 20000, '2025-04-13 09:27:53', '2025-04-13 09:27:53'),
(11, 25, 2, 'Bia Hơi Sài Gòn12.000 đ', 1, 12000, '2025-04-13 09:27:53', '2025-04-13 09:27:53'),
(12, 26, 1, 'Mì Tôm Hai Trứng Update20.000 đ', 1, 20000, '2025-04-13 09:29:43', '2025-04-13 09:29:43'),
(13, 26, 30, 'Cơm Chiên Dương Châu30.000 đ', 1, 30000, '2025-04-13 09:29:43', '2025-04-13 09:29:43'),
(14, 27, 1, 'Mì Tôm Hai Trứng Update20.000 đ', 1, 20000, '2025-04-13 09:32:22', '2025-04-13 09:32:22'),
(15, 27, 2, 'Bia Hơi Sài Gòn12.000 đ', 1, 12000, '2025-04-13 09:32:23', '2025-04-13 09:32:23'),
(16, 28, 1, 'Mì Tôm Hai Trứng Update20.000 đ', 1, 20000, '2025-04-13 09:38:00', '2025-04-13 09:38:00'),
(17, 28, 2, 'Bia Hơi Sài Gòn12.000 đ', 1, 12000, '2025-04-13 09:38:00', '2025-04-13 09:38:00'),
(18, 29, 1, 'Mì Tôm Hai Trứng Update40.000 đ', 2, 20000, '2025-04-13 09:44:55', '2025-04-13 09:44:55'),
(19, 29, 2, 'Bia Hơi Sài Gòn24.000 đ', 2, 12000, '2025-04-13 09:44:55', '2025-04-13 09:44:55'),
(20, 30, 1, 'Mì Tôm Hai Trứng Update20.000 đ', 1, 20000, '2025-04-16 01:03:20', '2025-04-16 01:03:20'),
(21, 30, 2, 'Bia Hơi Sài Gòn12.000 đ', 1, 12000, '2025-04-16 01:03:20', '2025-04-16 01:03:20'),
(22, 35, 1, 'Mì Tôm Hai Trứng Update20.000 đ', 1, 20000, '2025-04-16 08:31:14', '2025-04-16 08:31:14'),
(23, 35, 2, 'Bia Hơi Sài Gòn12.000 đ', 1, 12000, '2025-04-16 08:31:14', '2025-04-16 08:31:14');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2025_02_24_154530_create_tables_table', 1),
(2, '2025_02_24_154545_create_customers_table', 1),
(3, '2025_02_24_154600_create_reservations_table', 1),
(4, '2025_02_25_145403_create_sessions_table', 1),
(5, '2025_02_28_075725_create_users_table', 1),
(6, '2025_02_28_084514_create_cache_table', 1),
(7, '2025_03_03_161605_create_services_table', 1),
(8, '2025_03_03_161625_create_reservation_services_table', 1),
(9, '2025_03_24_164037_add_email_column_to_users_table', 1),
(10, '2025_03_24_164631_add_auth_fields_to_users_table', 2),
(11, '2025_04_13_115846_create_invoices_table', 2),
(12, '2025_04_13_121512_update_play_time_minutes_nullable_in_invoices_table', 3),
(13, '2025_04_13_122546_add_defaults_to_invoices_table', 4),
(14, '2025_04_13_140509_add_invoice_id_to_services_table', 5),
(15, '2025_04_13_143957_update_invoices_table', 6),
(16, '2025_04_13_150145_add_missing_fields_to_invoices_table', 7),
(17, '2025_04_13_151251_create_invoice_services_table', 8);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `reservations`
--

CREATE TABLE `reservations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `table_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime DEFAULT NULL,
  `status` enum('confirmed','playing','completed','cancelled') NOT NULL DEFAULT 'confirmed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `reservations`
--

INSERT INTO `reservations` (`id`, `table_id`, `customer_id`, `start_time`, `end_time`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2025-04-11 15:58:34', '2025-04-12 01:57:00', 'cancelled', '2025-04-11 08:58:06', '2025-04-11 09:11:25'),
(2, 1, 2, '2025-04-11 16:56:50', '2025-04-12 00:15:00', 'playing', '2025-04-11 09:15:02', '2025-04-11 09:56:50'),
(3, 2, 3, '2025-04-12 01:19:00', '2025-04-12 02:20:00', 'confirmed', '2025-04-11 11:19:54', '2025-04-11 11:19:54'),
(4, 3, 4, '2025-04-13 22:50:00', '2025-04-13 23:00:00', 'confirmed', '2025-04-13 07:50:43', '2025-04-13 07:50:43'),
(5, 2, 5, '2025-04-13 00:00:00', '2025-04-14 00:00:00', 'confirmed', '2025-04-13 07:57:36', '2025-04-13 07:57:36'),
(6, 2, 6, '2025-04-13 21:58:00', '2025-04-14 21:58:00', 'confirmed', '2025-04-13 07:58:33', '2025-04-13 07:58:33'),
(7, 2, 7, '2025-04-13 22:05:00', '2025-04-14 03:10:00', 'confirmed', '2025-04-13 08:05:50', '2025-04-13 08:05:50'),
(8, 1, 8, '2025-04-13 22:16:00', '2025-04-14 00:18:00', 'confirmed', '2025-04-13 08:16:24', '2025-04-13 08:16:24'),
(9, 1, 9, '2025-04-13 00:58:00', '2025-04-14 02:00:00', 'confirmed', '2025-04-13 08:56:21', '2025-04-13 08:56:21'),
(10, 2, 10, '2025-04-13 22:58:00', '2025-04-13 23:00:00', 'confirmed', '2025-04-13 08:58:16', '2025-04-13 08:58:16'),
(11, 1, 11, '2025-04-13 23:11:00', '2025-04-13 23:27:00', 'confirmed', '2025-04-13 09:11:43', '2025-04-13 09:11:43'),
(12, 2, 12, '2025-04-13 23:18:00', '2025-04-13 23:58:00', 'confirmed', '2025-04-13 09:17:55', '2025-04-13 09:17:55'),
(13, 1, 13, '2025-04-13 23:27:00', '2025-04-13 23:50:00', 'confirmed', '2025-04-13 09:27:48', '2025-04-13 09:27:48'),
(14, 1, 14, '2025-04-13 23:37:00', '2025-04-13 23:50:00', 'confirmed', '2025-04-13 09:37:53', '2025-04-13 09:37:53'),
(15, 1, 15, '2025-04-13 23:44:00', '2025-04-13 23:50:00', 'confirmed', '2025-04-13 09:44:50', '2025-04-13 09:44:50'),
(16, 2, 16, '2025-04-16 15:03:00', '2025-04-16 19:07:00', 'confirmed', '2025-04-16 01:03:13', '2025-04-16 01:03:13');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `reservation_services`
--

CREATE TABLE `reservation_services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `reservation_id` bigint(20) UNSIGNED NOT NULL,
  `service_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `reservation_services`
--

INSERT INTO `reservation_services` (`id`, `reservation_id`, `service_id`, `quantity`, `created_at`, `updated_at`) VALUES
(5, 2, 1, 1, '2025-04-13 04:12:33', '2025-04-13 04:38:58'),
(8, 2, 2, 2, '2025-04-13 04:37:33', '2025-04-13 08:10:09'),
(10, 3, 1, 1, '2025-04-13 07:43:17', '2025-04-13 07:43:17'),
(11, 3, 2, 1, '2025-04-13 07:43:17', '2025-04-13 07:56:08'),
(12, 4, 1, 2, '2025-04-13 07:50:54', '2025-04-13 08:11:19'),
(13, 4, 2, 1, '2025-04-13 07:50:55', '2025-04-13 07:50:55'),
(14, 5, 1, 1, '2025-04-13 07:57:42', '2025-04-13 07:57:42'),
(15, 5, 2, 1, '2025-04-13 07:57:43', '2025-04-13 07:57:43'),
(16, 6, 1, 2, '2025-04-13 07:59:00', '2025-04-13 07:59:01'),
(17, 6, 2, 1, '2025-04-13 07:59:01', '2025-04-13 07:59:01'),
(18, 7, 1, 1, '2025-04-13 08:05:54', '2025-04-13 08:05:54'),
(19, 7, 2, 1, '2025-04-13 08:05:54', '2025-04-13 08:05:54'),
(21, 8, 1, 2, '2025-04-13 08:16:28', '2025-04-13 08:16:30'),
(22, 9, 1, 4, '2025-04-13 08:57:03', '2025-04-13 09:11:27'),
(23, 9, 2, 1, '2025-04-13 08:57:04', '2025-04-13 08:57:04'),
(24, 10, 1, 1, '2025-04-13 08:58:21', '2025-04-13 08:58:21'),
(25, 10, 2, 1, '2025-04-13 08:58:21', '2025-04-13 08:58:21'),
(26, 11, 1, 2, '2025-04-13 09:11:46', '2025-04-13 09:11:49'),
(27, 11, 2, 1, '2025-04-13 09:11:46', '2025-04-13 09:11:46'),
(28, 12, 1, 1, '2025-04-13 09:17:59', '2025-04-13 09:17:59'),
(29, 12, 2, 1, '2025-04-13 09:18:00', '2025-04-13 09:18:00'),
(30, 13, 1, 1, '2025-04-13 09:27:51', '2025-04-13 09:27:51'),
(31, 13, 2, 1, '2025-04-13 09:27:51', '2025-04-13 09:27:51'),
(32, 13, 30, 1, '2025-04-13 09:29:40', '2025-04-13 09:29:40'),
(33, 14, 1, 1, '2025-04-13 09:37:57', '2025-04-13 09:37:57'),
(34, 14, 2, 1, '2025-04-13 09:37:57', '2025-04-13 09:37:57'),
(35, 15, 1, 1, '2025-04-13 09:44:53', '2025-04-16 08:31:12'),
(36, 15, 2, 1, '2025-04-13 09:44:53', '2025-04-16 08:31:12'),
(37, 16, 1, 1, '2025-04-16 01:03:16', '2025-04-16 01:03:16'),
(38, 16, 2, 1, '2025-04-16 01:03:18', '2025-04-16 01:03:18');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `category` enum('drink','food','other') NOT NULL DEFAULT 'other',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `invoice_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `services`
--

INSERT INTO `services` (`id`, `name`, `price`, `description`, `image`, `category`, `created_at`, `updated_at`, `invoice_id`) VALUES
(1, 'Mì Tôm Hai Trứng Update', 20000.00, 'Không mô tả', 'XoyEknuDLR3zIKEWJdul4P1wPHJ82J8IU0jArXpj.jpg', 'food', '2025-04-11 08:54:53', '2025-04-13 08:48:00', NULL),
(2, 'Bia Hơi Sài Gòn', 12000.00, NULL, 'Lf1WwA7VnHaeiQIS1LxjpiUzImO3UPOfH311LgOi.jpg', 'drink', '2025-04-13 01:35:02', '2025-04-13 08:49:02', NULL),
(30, 'Cơm Chiên Dương Châu', 30000.00, 'Cơm cho 1 người ăn là hợp lý', 'uUKEtMp7ALz3GTUOuT3AnjUKuUMqRoBCHJn9xI01.jpg', 'food', '2025-04-13 08:50:15', '2025-04-13 08:50:15', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` text NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('fPVzp4Ya8ijxcRkqN1RgveMfa1Qq5boRraOV9vHI', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiUzR4dHpOTkRyTUJkTnRuMmc1NFNURFY2SWJZN2s5akFZQUZOZGJlViI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjIxOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTc6Im1vbW9faW52b2ljZV9kYXRhIjthOjEwOntzOjY6Il90b2tlbiI7czo0MDoiUzR4dHpOTkRyTUJkTnRuMmc1NFNURFY2SWJZN2s5akFZQUZOZGJlViI7czo2OiJhbW91bnQiO3M6NDoiMjAwMCI7czoxNDoicmVzZXJ2YXRpb25faWQiO3M6MjoiMTUiO3M6MTM6ImN1c3RvbWVyX25hbWUiO3M6MTM6IlBo4bqhbSBWxINuIEIiO3M6MTQ6ImN1c3RvbWVyX3Bob25lIjtzOjM6IjExMyI7czoxMzoiY3VzdG9tZXJfbm90ZSI7TjtzOjEwOiJ0YWJsZV9uYW1lIjtzOjE6IjEiO3M6MTE6InRhYmxlX3ByaWNlIjtzOjU6IjIwMDAwIjtzOjk6InBsYXlfY29zdCI7czo0OiIyMDAwIjtzOjEyOiJzZXJ2aWNlX2Nvc3QiO3M6MToiMCI7fX0=', 1744817482);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tables`
--

CREATE TABLE `tables` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `table_number` int(11) NOT NULL,
  `status` enum('available','occupied','unavailable') NOT NULL DEFAULT 'available',
  `area` varchar(255) NOT NULL,
  `table_type` varchar(255) NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tables`
--

INSERT INTO `tables` (`id`, `table_number`, `status`, `area`, `table_type`, `price`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, 'available', 'Trong Nhà update', 'Bàn Thường', 20000, 'Không mô tả', '2025-04-11 08:54:21', '2025-04-16 08:31:14'),
(2, 2, 'available', 'Trong Nhà', 'Bàn Thường', 30000, 'Không mô tả', '2025-04-11 11:19:02', '2025-04-16 01:03:20'),
(3, 3, 'available', 'Ngoài Trời', 'Bàn Thường', 10000, NULL, '2025-04-13 04:51:23', '2025-04-13 08:11:19');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Phạm Văn Chiến', 'admin@example.com', NULL, '$2y$12$Zv8ftnD9c4IwHAZINOtIPuQATFcTIul8p03X2MXbzswnwbgtgl5de', NULL, '2025-04-13 05:12:15', '2025-04-13 05:12:15');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Chỉ mục cho bảng `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Chỉ mục cho bảng `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoices_reservation_id_foreign` (`reservation_id`);

--
-- Chỉ mục cho bảng `invoice_services`
--
ALTER TABLE `invoice_services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoice_services_invoice_id_foreign` (`invoice_id`),
  ADD KEY `invoice_services_service_id_foreign` (`service_id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reservations_table_id_foreign` (`table_id`),
  ADD KEY `reservations_customer_id_foreign` (`customer_id`);

--
-- Chỉ mục cho bảng `reservation_services`
--
ALTER TABLE `reservation_services`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `reservation_services_reservation_id_service_id_unique` (`reservation_id`,`service_id`),
  ADD KEY `reservation_services_service_id_foreign` (`service_id`);

--
-- Chỉ mục cho bảng `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `services_invoice_id_foreign` (`invoice_id`);

--
-- Chỉ mục cho bảng `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Chỉ mục cho bảng `tables`
--
ALTER TABLE `tables`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tables_table_number_unique` (`table_number`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT cho bảng `invoice_services`
--
ALTER TABLE `invoice_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `reservations`
--
ALTER TABLE `reservations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `reservation_services`
--
ALTER TABLE `reservation_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT cho bảng `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT cho bảng `tables`
--
ALTER TABLE `tables`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `invoices`
--
ALTER TABLE `invoices`
  ADD CONSTRAINT `invoices_reservation_id_foreign` FOREIGN KEY (`reservation_id`) REFERENCES `reservations` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `invoice_services`
--
ALTER TABLE `invoice_services`
  ADD CONSTRAINT `invoice_services_invoice_id_foreign` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `invoice_services_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `reservations`
--
ALTER TABLE `reservations`
  ADD CONSTRAINT `reservations_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`),
  ADD CONSTRAINT `reservations_table_id_foreign` FOREIGN KEY (`table_id`) REFERENCES `tables` (`id`);

--
-- Các ràng buộc cho bảng `reservation_services`
--
ALTER TABLE `reservation_services`
  ADD CONSTRAINT `reservation_services_reservation_id_foreign` FOREIGN KEY (`reservation_id`) REFERENCES `reservations` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reservation_services_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `services`
--
ALTER TABLE `services`
  ADD CONSTRAINT `services_invoice_id_foreign` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
