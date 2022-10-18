-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 15, 2022 at 09:18 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `najezkidsv1`
--

-- --------------------------------------------------------

--
-- Table structure for table `absences`
--

CREATE TABLE `absences` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `classroom_id` bigint(20) UNSIGNED DEFAULT NULL,
  `addChild_id` bigint(20) UNSIGNED DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `absence_reason` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_at` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `add_children`
--

CREATE TABLE `add_children` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_tel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_tel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `another_tel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fatherJob` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `motherJob` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `religion` int(11) DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  `delete_at` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `year_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `add_children`
--

INSERT INTO `add_children` (`id`, `name_ar`, `name_en`, `id_number`, `address`, `father_name`, `father_tel`, `mother_name`, `mother_tel`, `another_tel`, `fatherJob`, `motherJob`, `img`, `religion`, `active`, `delete_at`, `year_id`, `created_at`, `updated_at`) VALUES
(1, 'على', NULL, '11111111111111', 'elbagour/mounfia', 'محمد', '11111111111', 'gwee', '11111111111', NULL, 'rrew', 'ewtgew', NULL, 1, 1, '0', NULL, '2022-09-11 08:18:53', '2022-09-11 08:18:53'),
(2, 'محمد', NULL, '11111111111111', 'elbagour/mounfia', 'محمد', '11111111111', 'gwee', '11111111111', NULL, 'rrew', 'ewtgew', NULL, 1, 1, '0', NULL, '2022-09-11 08:18:53', '2022-09-11 08:18:53'),
(3, 'ابراهيم', NULL, '11111111111111', 'elbagour/mounfia', 'محمد', '11111111111', 'gwee', '11111111111', NULL, 'rrew', 'ewtgew', NULL, 1, 1, '0', NULL, '2022-09-11 08:18:53', '2022-09-11 08:18:53'),
(4, 'سمير', NULL, '11111111111111', 'elbagour/mounfia', 'محمد', '11111111111', 'gwee', '11111111111', NULL, 'rrew', 'ewtgew', NULL, 1, 1, '0', NULL, '2022-09-11 08:18:53', '2022-09-11 08:18:53');

-- --------------------------------------------------------

--
-- Table structure for table `buy_books`
--

CREATE TABLE `buy_books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `supplier` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `totalBuyPrice` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `totalSellPrice` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `treasury_id` bigint(20) UNSIGNED DEFAULT NULL,
  `year_id` bigint(20) UNSIGNED DEFAULT NULL,
  `delete_at` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `buy_books`
--

INSERT INTO `buy_books` (`id`, `date`, `supplier`, `note`, `totalBuyPrice`, `totalSellPrice`, `treasury_id`, `year_id`, `delete_at`, `created_at`, `updated_at`) VALUES
(1, '2022-09-11', 'Ahmed', NULL, '60', '60', 1, NULL, '0', '2022-09-11 08:24:12', '2022-09-11 08:24:12'),
(2, '2022-09-11', 'Ahmed', NULL, '240', NULL, 1, 1, '0', '2022-09-11 10:24:58', '2022-09-11 10:24:58');

-- --------------------------------------------------------

--
-- Table structure for table `buy_book_totals`
--

CREATE TABLE `buy_book_totals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `buyPrice` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sellPrice` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `treasury_id` bigint(20) UNSIGNED DEFAULT NULL,
  `buyBook_id` bigint(20) UNSIGNED DEFAULT NULL,
  `year_id` bigint(20) UNSIGNED DEFAULT NULL,
  `delete_at` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `buy_book_totals`
--

INSERT INTO `buy_book_totals` (`id`, `name`, `amount`, `buyPrice`, `sellPrice`, `treasury_id`, `buyBook_id`, `year_id`, `delete_at`, `created_at`, `updated_at`) VALUES
(1, 'كتاب 1', '3', '20', '25', 1, 1, NULL, '0', '2022-09-11 08:24:12', '2022-09-11 08:24:12'),
(2, 'كتاب 1', '20', '12', '15', 1, 2, 1, '0', '2022-09-11 10:24:58', '2022-09-11 10:24:58');

-- --------------------------------------------------------

--
-- Table structure for table `buy_uniforms`
--

CREATE TABLE `buy_uniforms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `year_id` bigint(20) UNSIGNED DEFAULT NULL,
  `buyUniformTotal_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` double(8,2) DEFAULT NULL,
  `buy_price` double(8,2) DEFAULT NULL,
  `sale_price` double(8,2) DEFAULT NULL,
  `delete_at` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `treasury_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `buy_uniforms`
--

INSERT INTO `buy_uniforms` (`id`, `year_id`, `buyUniformTotal_id`, `name`, `quantity`, `buy_price`, `sale_price`, `delete_at`, `treasury_id`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'تيشريت', 2.00, 30.00, 10.00, '0', NULL, '2022-09-11 07:52:34', '2022-09-11 07:52:34'),
(2, 1, 2, 'تيشريت', 3.00, 10.00, 12.00, '0', NULL, '2022-09-11 10:22:26', '2022-09-11 10:22:26'),
(3, 1, 3, 'بنطلون', 5.00, 12.00, 15.00, '0', NULL, '2022-09-11 10:34:58', '2022-09-11 10:34:58');

-- --------------------------------------------------------

--
-- Table structure for table `buy_uniform_totals`
--

CREATE TABLE `buy_uniform_totals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `year_id` bigint(20) UNSIGNED DEFAULT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `supplier` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_buy` double(8,2) DEFAULT NULL,
  `total_sale` double(8,2) DEFAULT NULL,
  `delete_at` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `treasury_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `buy_uniform_totals`
--

INSERT INTO `buy_uniform_totals` (`id`, `year_id`, `date`, `supplier`, `notes`, `total_buy`, `total_sale`, `delete_at`, `treasury_id`, `created_at`, `updated_at`) VALUES
(1, NULL, '2022-09-11', 'Ahmed', NULL, 20.00, 60.00, '0', 1, '2022-09-11 07:52:34', '2022-09-11 07:52:34'),
(2, 1, '2022-09-11', 'Ahmed', NULL, 36.00, 30.00, '0', 1, '2022-09-11 10:22:26', '2022-09-11 10:22:26'),
(3, 1, '2022-09-11', 'Ahmed', NULL, 75.00, 60.00, '0', 1, '2022-09-11 10:34:58', '2022-09-11 10:34:58');

-- --------------------------------------------------------

--
-- Table structure for table `child_registrations`
--

CREATE TABLE `child_registrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `registration_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `child_id` bigint(20) UNSIGNED DEFAULT NULL,
  `acceptance_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `born_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `age` double(8,2) DEFAULT NULL,
  `level_id` int(11) DEFAULT NULL,
  `delete_at` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `child_registrations`
--

INSERT INTO `child_registrations` (`id`, `registration_date`, `child_id`, `acceptance_date`, `born_date`, `gender`, `city`, `age`, `level_id`, `delete_at`, `created_at`, `updated_at`) VALUES
(1, '2022-09-11', 1, '2022-09-11', '11-11-1911', 'ذكر', 'دمياط', 110.00, 1, '0', '2022-09-11 08:20:27', '2022-09-11 08:20:27'),
(2, '2022-09-11', 3, '2022-09-11', '11-11-1911', 'ذكر', 'دمياط', 110.00, 1, '0', '2022-09-11 08:20:32', '2022-09-11 08:20:32'),
(3, '2022-09-11', 2, '2022-09-11', '11-11-1911', 'ذكر', 'دمياط', 110.00, 2, '0', '2022-09-11 08:20:39', '2022-09-11 08:20:39'),
(4, '2022-09-11', 4, '2022-09-11', '11-11-1911', 'ذكر', 'دمياط', 110.00, 2, '0', '2022-09-11 08:20:44', '2022-09-11 08:20:44');

-- --------------------------------------------------------

--
-- Table structure for table `child_rooms`
--

CREATE TABLE `child_rooms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `level_id` bigint(20) UNSIGNED DEFAULT NULL,
  `classRoom_id` bigint(20) UNSIGNED DEFAULT NULL,
  `addChlid_id` bigint(20) UNSIGNED DEFAULT NULL,
  `delete_at` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `child_rooms`
--

INSERT INTO `child_rooms` (`id`, `level_id`, `classRoom_id`, `addChlid_id`, `delete_at`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, '0', '2022-09-11 08:21:03', '2022-09-11 08:21:03'),
(2, 1, 1, 3, '1', '2022-09-11 08:21:03', '2022-09-11 08:21:14'),
(3, 1, 2, 3, '1', '2022-09-11 08:21:22', '2022-09-14 08:43:59'),
(4, 2, 3, 2, '1', '2022-09-11 08:21:37', '2022-09-14 08:44:05'),
(5, 2, 4, 4, '1', '2022-09-11 08:21:43', '2022-09-14 08:44:09');

-- --------------------------------------------------------

--
-- Table structure for table `child_transfers`
--

CREATE TABLE `child_transfers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level_id` bigint(20) UNSIGNED DEFAULT NULL,
  `classroomFrom_id` bigint(20) UNSIGNED DEFAULT NULL,
  `classroomTo_id` bigint(20) UNSIGNED DEFAULT NULL,
  `addChild_id` bigint(20) UNSIGNED DEFAULT NULL,
  `delete_at` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `classrooms`
--

CREATE TABLE `classrooms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `student_count` int(11) DEFAULT NULL,
  `notes` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  `delete_at` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `classrooms`
--

INSERT INTO `classrooms` (`id`, `name`, `level_id`, `student_count`, `notes`, `active`, `delete_at`, `created_at`, `updated_at`) VALUES
(1, 'قاعة 1', '1', 10, '', 1, '0', '2022-09-11 08:17:12', '2022-09-14 07:24:57'),
(2, 'قاعة 2', '1', 8, '', 1, '0', '2022-09-11 08:17:38', '2022-09-14 07:25:08'),
(3, 'قاعة 3', '2', 11, NULL, 1, '0', '2022-09-11 08:17:46', '2022-09-11 08:17:46'),
(4, 'قاعة 4', '2', 11, NULL, 1, '0', '2022-09-11 08:17:56', '2022-09-11 08:17:56');

-- --------------------------------------------------------

--
-- Table structure for table `daycare_settiengs`
--

CREATE TABLE `daycare_settiengs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tel1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tel2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tel3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` int(11) DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `commercial_number` int(11) DEFAULT NULL,
  `commercial_id` int(11) DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vision` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mission` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `daycare_settiengs`
--

INSERT INTO `daycare_settiengs` (`id`, `name_ar`, `name_en`, `email`, `website`, `tel1`, `tel2`, `tel3`, `fax`, `address`, `commercial_number`, `commercial_id`, `logo`, `vision`, `mission`, `created_at`, `updated_at`) VALUES
(1, 'حضانة الروضة', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-11 07:53:15', '2022-09-11 08:44:53');

-- --------------------------------------------------------

--
-- Table structure for table `educational_expenses`
--

CREATE TABLE `educational_expenses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `level_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  `educationalYear_id` bigint(20) UNSIGNED DEFAULT NULL,
  `amount` double(8,2) DEFAULT NULL,
  `delete_at` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `educational_expenses`
--

INSERT INTO `educational_expenses` (`id`, `level_id`, `name`, `notes`, `active`, `educationalYear_id`, `amount`, `delete_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'يناير', NULL, 1, 1, 200.00, '0', '2022-09-11 08:39:00', '2022-09-11 08:39:00'),
(2, 2, 'يناير', NULL, 1, 1, 220.00, '0', '2022-09-11 08:39:00', '2022-09-11 08:39:00');

-- --------------------------------------------------------

--
-- Table structure for table `educational_expenses_collections`
--

CREATE TABLE `educational_expenses_collections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level_id` bigint(20) UNSIGNED DEFAULT NULL,
  `treasury_id` bigint(20) UNSIGNED DEFAULT NULL,
  `child_id` bigint(20) UNSIGNED DEFAULT NULL,
  `expenses_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_paid` double(8,2) DEFAULT NULL,
  `rest` double(8,2) DEFAULT NULL,
  `notes` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_at` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `educational_expenses_collections`
--

INSERT INTO `educational_expenses_collections` (`id`, `date`, `level_id`, `treasury_id`, `child_id`, `expenses_id`, `total_paid`, `rest`, `notes`, `delete_at`, `created_at`, `updated_at`) VALUES
(1, '2022-09-11', 1, 1, 1, '1', 100.00, 100.00, NULL, '1', '2022-09-11 08:39:27', '2022-09-11 08:42:41'),
(2, '2022-09-11', 1, 1, 1, '1', 100.00, 100.00, NULL, '1', '2022-09-11 08:42:24', '2022-09-11 08:42:36'),
(3, '2022-09-11', 1, 1, 1, '1', NULL, NULL, NULL, '0', '2022-09-11 10:35:45', '2022-09-11 10:35:45');

-- --------------------------------------------------------

--
-- Table structure for table `educational_years`
--

CREATE TABLE `educational_years` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dateFrom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dateTo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  `delete_at` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `educational_years`
--

INSERT INTO `educational_years` (`id`, `name`, `dateFrom`, `dateTo`, `active`, `delete_at`, `created_at`, `updated_at`) VALUES
(1, '2022/2023', '2022-09-06', '2022-09-22', 1, '0', '2022-09-11 08:38:32', '2022-09-11 08:38:32');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tel1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tel2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `educational_qualification` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `graducation_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employee_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hiring_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `main_salary` double(8,2) DEFAULT NULL,
  `insurance` double(8,2) DEFAULT NULL,
  `insurance_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_at` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name_ar`, `name_en`, `id_number`, `address`, `tel1`, `tel2`, `educational_qualification`, `graducation_date`, `employee_type`, `hiring_date`, `main_salary`, `insurance`, `insurance_date`, `delete_at`, `created_at`, `updated_at`) VALUES
(1, 'على', NULL, '11111111111111', 'elbagour/mounfia', '54646433333', '7587858725', 'ثلفق', '2022-09-02', 'ثصبثص', '2022-08-31', 2222.00, 1.00, '2022-09-06', '0', '2022-09-11 09:00:16', '2022-09-11 09:00:16'),
(2, 'ابراهيم', NULL, '11111111111111', 'elbagour/mounfia', '54646433333', '7587858725', 'ثلفق', '2022-09-02', 'ثصبثص', '2022-08-31', 2222.00, 1.00, '2022-09-06', '0', '2022-09-11 09:00:16', '2022-09-11 09:00:16');

-- --------------------------------------------------------

--
-- Table structure for table `employee_abcence_permissions`
--

CREATE TABLE `employee_abcence_permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `employee_id` bigint(20) UNSIGNED DEFAULT NULL,
  `absence_reason` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_at` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_abcence_permissions`
--

INSERT INTO `employee_abcence_permissions` (`id`, `date`, `type`, `employee_id`, `absence_reason`, `delete_at`, `created_at`, `updated_at`) VALUES
(1, '2022-09-11', 1, 1, NULL, '0', '2022-09-11 09:02:28', '2022-09-11 09:02:28');

-- --------------------------------------------------------

--
-- Table structure for table `employee_salaries`
--

CREATE TABLE `employee_salaries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employee_id` bigint(20) UNSIGNED DEFAULT NULL,
  `treasury_id` bigint(20) UNSIGNED DEFAULT NULL,
  `main_salary` double(8,2) DEFAULT NULL,
  `job_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reward` double(8,2) DEFAULT NULL,
  `reward_reason` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `absent_day` double(8,2) DEFAULT NULL,
  `discount` double(8,2) DEFAULT NULL,
  `total_salary` double(8,2) DEFAULT NULL,
  `delete_at` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_salaries`
--

INSERT INTO `employee_salaries` (`id`, `date`, `employee_id`, `treasury_id`, `main_salary`, `job_type`, `reward`, `reward_reason`, `absent_day`, `discount`, `total_salary`, `delete_at`, `created_at`, `updated_at`) VALUES
(1, '2022-09-11', 1, 1, 2222.00, 'tyit', 6.00, '7', 7.00, 67.00, 76754.00, '0', '2022-09-11 10:02:34', '2022-09-11 10:02:34');

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
-- Table structure for table `general_accounts`
--

CREATE TABLE `general_accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `treasury_id` bigint(20) UNSIGNED DEFAULT NULL,
  `generalExpensese_id` bigint(20) UNSIGNED DEFAULT NULL,
  `amount` double(8,2) DEFAULT NULL,
  `total` double(8,2) DEFAULT NULL,
  `delete_at` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `general_accounts`
--

INSERT INTO `general_accounts` (`id`, `date`, `treasury_id`, `generalExpensese_id`, `amount`, `total`, `delete_at`, `created_at`, `updated_at`) VALUES
(1, '2022-09-11', 1, 1, 500.00, NULL, '1', '2022-09-11 10:00:06', '2022-09-11 10:01:02'),
(2, '2022-09-11', 1, 1, 500.00, NULL, '0', '2022-09-11 10:01:10', '2022-09-11 10:01:10');

-- --------------------------------------------------------

--
-- Table structure for table `general_expenseses`
--

CREATE TABLE `general_expenseses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expensese_type` int(11) DEFAULT NULL,
  `price` double(8,2) DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  `delete_at` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `general_expenseses`
--

INSERT INTO `general_expenseses` (`id`, `name`, `expensese_type`, `price`, `active`, `delete_at`, `created_at`, `updated_at`) VALUES
(1, 'ايجار', 1, 500.00, 1, '0', '2022-09-11 09:59:13', '2022-09-11 09:59:13');

-- --------------------------------------------------------

--
-- Table structure for table `holidays`
--

CREATE TABLE `holidays` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `holidayStart` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `holidayEnd` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `classroom_id` bigint(20) UNSIGNED DEFAULT NULL,
  `addChild_id` bigint(20) UNSIGNED DEFAULT NULL,
  `holiday_reason` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_at` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `indebtedness_levels`
--

CREATE TABLE `indebtedness_levels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year_id` bigint(20) UNSIGNED DEFAULT NULL,
  `level_id` bigint(20) UNSIGNED DEFAULT NULL,
  `child_id` bigint(20) UNSIGNED DEFAULT NULL,
  `educationalExpense_id` bigint(20) UNSIGNED DEFAULT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pay` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_at` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `leavels`
--

CREATE TABLE `leavels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `notes` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_at` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `leavels`
--

INSERT INTO `leavels` (`id`, `name`, `value`, `notes`, `delete_at`, `created_at`, `updated_at`) VALUES
(1, 'مرحلة 1', NULL, NULL, '0', '2022-09-11 08:07:48', '2022-09-11 08:07:48'),
(2, 'مرحلة 2', NULL, NULL, '0', '2022-09-11 08:07:53', '2022-09-11 08:07:53');

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
(874, '2014_10_12_000000_create_users_table', 1),
(875, '2014_10_12_100000_create_password_resets_table', 1),
(876, '2019_08_19_000000_create_failed_jobs_table', 1),
(877, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(878, '2022_08_21_074812_create_leavels_table', 1),
(879, '2022_08_21_121534_create_daycare_settiengs_table', 1),
(880, '2022_08_21_143743_create_educational_years_table', 1),
(881, '2022_08_22_091321_create_classrooms_table', 1),
(882, '2022_08_22_104913_create_educational_expenses_table', 1),
(883, '2022_08_22_112221_create_add_children_table', 1),
(884, '2022_08_22_124336_create_child_registrations_table', 1),
(885, '2022_08_22_133156_create_child_rooms_table', 1),
(886, '2022_08_23_075652_create_child_transfers_table', 1),
(887, '2022_08_23_100558_create_absences_table', 1),
(888, '2022_08_23_105116_create_permissions_table', 1),
(889, '2022_08_23_113248_create_holidays_table', 1),
(890, '2022_08_23_120909_create_treasuries_table', 1),
(891, '2022_08_23_124124_create_educational_expenses_collections_table', 1),
(892, '2022_08_24_133831_create_employees_table', 1),
(893, '2022_08_24_143752_create_employee_abcence_permissions_table', 1),
(894, '2022_08_25_085642_create_general_expenseses_table', 1),
(895, '2022_08_25_094039_create_general_accounts_table', 1),
(896, '2022_08_25_105844_create_treasury_processes_table', 1),
(897, '2022_08_25_121124_create_employee_salaries_table', 1),
(898, '2022_08_27_085445_create_indebtedness_levels_table', 1),
(899, '2022_08_27_112150_create_buy_books_table', 1),
(900, '2022_08_27_130538_create_buy_book_totals_table', 1),
(901, '2022_08_28_093147_create_buy_uniform_totals_table', 1),
(902, '2022_08_28_093237_create_buy_uniforms_table', 1),
(903, '2022_08_28_100416_create_sell_books_table', 1),
(907, '2022_08_28_121150_create_sell_uniform_totals_table', 2),
(908, '2022_08_28_121202_create_sell_uniforms_table', 2);

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `classroom_id` bigint(20) UNSIGNED DEFAULT NULL,
  `addChild_id` bigint(20) UNSIGNED DEFAULT NULL,
  `permission_reason` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_at` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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

-- --------------------------------------------------------

--
-- Table structure for table `sell_books`
--

CREATE TABLE `sell_books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level_id` bigint(20) UNSIGNED DEFAULT NULL,
  `child_id` bigint(20) UNSIGNED DEFAULT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `book_id` bigint(20) UNSIGNED DEFAULT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year_id` bigint(20) UNSIGNED DEFAULT NULL,
  `treasury_id` bigint(20) UNSIGNED DEFAULT NULL,
  `delete_at` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sell_books`
--

INSERT INTO `sell_books` (`id`, `date`, `level_id`, `child_id`, `note`, `total`, `book_id`, `amount`, `price`, `year_id`, `treasury_id`, `delete_at`, `created_at`, `updated_at`) VALUES
(1, '2022-09-11', 1, 1, NULL, '50', 1, '2', '25', NULL, 1, '0', '2022-09-11 08:24:48', '2022-09-11 08:24:48'),
(2, '2022-09-11', 2, 2, NULL, '50', 1, '2', '25', NULL, 1, '0', '2022-09-11 08:30:35', '2022-09-11 08:30:35'),
(3, '2022-09-11', 1, 1, NULL, '225', 2, '15', '15', 1, 1, '0', '2022-09-11 10:25:18', '2022-09-11 10:25:18');

-- --------------------------------------------------------

--
-- Table structure for table `sell_uniforms`
--

CREATE TABLE `sell_uniforms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `year_id` bigint(20) UNSIGNED DEFAULT NULL,
  `sellUniformTotal_id` bigint(20) UNSIGNED DEFAULT NULL,
  `buyUniform_id` bigint(20) UNSIGNED DEFAULT NULL,
  `quantity` double(8,2) DEFAULT NULL,
  `price` double(8,2) DEFAULT NULL,
  `subTotal` double(8,2) DEFAULT NULL,
  `delete_at` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `treasury_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sell_uniforms`
--

INSERT INTO `sell_uniforms` (`id`, `year_id`, `sellUniformTotal_id`, `buyUniform_id`, `quantity`, `price`, `subTotal`, `delete_at`, `treasury_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 4.00, 10.00, 40.00, '1', NULL, '2022-09-12 05:50:14', '2022-09-12 05:57:27'),
(2, 1, 1, 3, 6.00, 10.00, 60.00, '1', NULL, '2022-09-12 05:50:14', '2022-09-12 05:57:27'),
(5, 1, 3, 1, 0.00, 10.00, 0.00, '0', NULL, '2022-09-12 06:08:54', '2022-09-12 06:08:54');

-- --------------------------------------------------------

--
-- Table structure for table `sell_uniform_totals`
--

CREATE TABLE `sell_uniform_totals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year_id` bigint(20) UNSIGNED DEFAULT NULL,
  `level_id` bigint(20) UNSIGNED DEFAULT NULL,
  `child_id` bigint(20) UNSIGNED DEFAULT NULL,
  `notes` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total` double(8,2) DEFAULT NULL,
  `delete_at` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `treasury_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sell_uniform_totals`
--

INSERT INTO `sell_uniform_totals` (`id`, `date`, `year_id`, `level_id`, `child_id`, `notes`, `total`, `delete_at`, `treasury_id`, `created_at`, `updated_at`) VALUES
(1, '2022-09-12', 1, 1, 1, '', 100.00, '1', NULL, '2022-09-12 05:50:14', '2022-09-12 05:57:27'),
(2, '2022-09-12', 1, 1, 1, '', 100.00, '1', 1, '2022-09-12 05:58:01', '2022-09-12 06:08:46'),
(3, '2022-09-12', 1, 1, 1, '', 0.00, '0', 1, '2022-09-12 06:08:54', '2022-09-12 06:08:54');

-- --------------------------------------------------------

--
-- Table structure for table `treasuries`
--

CREATE TABLE `treasuries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `treasury_secretary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `balance` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  `delete_at` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `treasuries`
--

INSERT INTO `treasuries` (`id`, `name`, `treasury_secretary`, `balance`, `active`, `delete_at`, `created_at`, `updated_at`) VALUES
(1, 'خزينة 1', 'Ahmed', '2357', 1, '0', '2022-09-11 07:51:43', '2022-09-12 06:08:54');

-- --------------------------------------------------------

--
-- Table structure for table `treasury_processes`
--

CREATE TABLE `treasury_processes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `treasury_id` bigint(20) UNSIGNED DEFAULT NULL,
  `employee_id` bigint(20) UNSIGNED DEFAULT NULL,
  `generalAccount_id` bigint(20) UNSIGNED DEFAULT NULL,
  `educationalExpense_id` bigint(20) UNSIGNED DEFAULT NULL,
  `child_id` bigint(20) UNSIGNED DEFAULT NULL,
  `buyBook_id` bigint(20) UNSIGNED DEFAULT NULL,
  `sellBook_id` bigint(20) UNSIGNED DEFAULT NULL,
  `buyUniform_id` bigint(20) UNSIGNED DEFAULT NULL,
  `sellUniform_id` bigint(20) UNSIGNED DEFAULT NULL,
  `credit` double(8,2) DEFAULT NULL,
  `debt` double(8,2) DEFAULT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `treasury_processes`
--

INSERT INTO `treasury_processes` (`id`, `treasury_id`, `employee_id`, `generalAccount_id`, `educationalExpense_id`, `child_id`, `buyBook_id`, `sellBook_id`, `buyUniform_id`, `sellUniform_id`, `credit`, `debt`, `comment`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 60.00, NULL, 'شراء زي مدرسى', '2022-09-11 07:52:34', '2022-09-11 07:52:34'),
(2, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 20.00, 'بيع زى مدرسى', '2022-09-11 08:22:14', '2022-09-11 08:22:14'),
(3, 1, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 60.00, NULL, 'شراء كتب', '2022-09-11 08:24:12', '2022-09-11 08:24:12'),
(4, 1, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 'بيع كتب', '2022-09-11 08:24:48', '2022-09-11 08:24:48'),
(5, 1, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 50.00, 'بيع كتب', '2022-09-11 08:30:35', '2022-09-11 08:30:35'),
(6, 1, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, 100.00, NULL, '2022-09-11 08:39:27', '2022-09-11 08:39:27'),
(7, 1, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'تحصيل مصروفات دراسية', '2022-09-11 08:42:24', '2022-09-11 08:42:24'),
(8, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'مصروفات عامة', '2022-09-11 10:00:06', '2022-09-11 10:00:06'),
(9, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 500.00, NULL, 'مصروفات عامة', '2022-09-11 10:01:10', '2022-09-11 10:01:10'),
(10, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 76754.00, NULL, 'صرف رواتب الموظفين', '2022-09-11 10:02:34', '2022-09-11 10:02:34'),
(11, 1, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, 30.00, NULL, 'شراء زي مدرسى', '2022-09-11 10:22:26', '2022-09-11 10:22:26'),
(12, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, 20.00, 'بيع زى مدرسى', '2022-09-11 10:24:25', '2022-09-11 10:24:25'),
(13, 1, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, 240.00, NULL, 'شراء كتب', '2022-09-11 10:24:58', '2022-09-11 10:24:58'),
(14, 1, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, 225.00, 'بيع كتب', '2022-09-11 10:25:18', '2022-09-11 10:25:18'),
(15, 1, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 60.00, NULL, 'شراء زي مدرسى', '2022-09-11 10:34:58', '2022-09-11 10:34:58'),
(16, 1, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'تحصيل مصروفات دراسية', '2022-09-11 10:35:45', '2022-09-11 10:35:45'),
(17, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 72.00, 'بيع زى مدرسى', '2022-09-11 11:19:47', '2022-09-11 11:19:47'),
(18, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, 90.00, 'بيع زى مدرسى', '2022-09-11 11:21:22', '2022-09-11 11:21:22'),
(19, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, 180.00, 'بيع زى مدرسى', '2022-09-11 11:23:29', '2022-09-11 11:23:29'),
(20, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 100.00, 'بيع زى مدرسى', '2022-09-12 05:50:14', '2022-09-12 05:50:14'),
(21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 100.00, 'حذف بيع زى مدرسى', '2022-09-12 05:57:27', '2022-09-12 05:57:27'),
(22, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, 100.00, 'بيع زى مدرسى', '2022-09-12 05:58:01', '2022-09-12 05:58:01'),
(23, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, 100.00, 'حذف بيع زى مدرسى', '2022-09-12 06:08:46', '2022-09-12 06:08:46'),
(24, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0.00, 'بيع زى مدرسى', '2022-09-12 06:08:54', '2022-09-12 06:08:54');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adderess` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  `delete_at` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name_ar`, `name_en`, `email`, `password`, `password2`, `adderess`, `tel`, `whatsapp`, `active`, `delete_at`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', NULL, 'admin@najezsoft.com', '$2y$10$RWM28aT2Xd8JnsrZs1IDLuOXijcTSFckRpk0qTyCYF5.Cf2fG1gBm', NULL, NULL, NULL, NULL, 1, '0', NULL, NULL, NULL, '2022-09-11 09:17:38'),
(2, 'Ali', NULL, 'ali@najezsoft.com', '$2y$10$..ro4axQxcJi.M14vNcjUOq.mQ2jELx/dn/wPMdhlsYhhq1829jj6', '1234', NULL, NULL, NULL, 0, '0', NULL, NULL, '2022-09-11 09:46:33', '2022-09-11 09:46:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absences`
--
ALTER TABLE `absences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `absences_classroom_id_foreign` (`classroom_id`),
  ADD KEY `absences_addchild_id_foreign` (`addChild_id`);

--
-- Indexes for table `add_children`
--
ALTER TABLE `add_children`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `buy_books`
--
ALTER TABLE `buy_books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `buy_book_totals`
--
ALTER TABLE `buy_book_totals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `buy_uniforms`
--
ALTER TABLE `buy_uniforms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `buy_uniforms_year_id_foreign` (`year_id`);

--
-- Indexes for table `buy_uniform_totals`
--
ALTER TABLE `buy_uniform_totals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `buy_uniform_totals_year_id_foreign` (`year_id`);

--
-- Indexes for table `child_registrations`
--
ALTER TABLE `child_registrations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `child_registrations_child_id_foreign` (`child_id`);

--
-- Indexes for table `child_rooms`
--
ALTER TABLE `child_rooms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `child_rooms_classroom_id_foreign` (`classRoom_id`),
  ADD KEY `child_rooms_addchlid_id_foreign` (`addChlid_id`),
  ADD KEY `child_rooms_level_id_foreign` (`level_id`);

--
-- Indexes for table `child_transfers`
--
ALTER TABLE `child_transfers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `child_transfers_classroomfrom_id_foreign` (`classroomFrom_id`),
  ADD KEY `child_transfers_classroomto_id_foreign` (`classroomTo_id`),
  ADD KEY `child_transfers_addchild_id_foreign` (`addChild_id`);

--
-- Indexes for table `classrooms`
--
ALTER TABLE `classrooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `daycare_settiengs`
--
ALTER TABLE `daycare_settiengs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `educational_expenses`
--
ALTER TABLE `educational_expenses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `educational_expenses_educationalyear_id_foreign` (`educationalYear_id`),
  ADD KEY `educational_expenses_level_id_foreign` (`level_id`);

--
-- Indexes for table `educational_expenses_collections`
--
ALTER TABLE `educational_expenses_collections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `educational_expenses_collections_treasury_id_foreign` (`treasury_id`),
  ADD KEY `educational_expenses_collections_child_id_foreign` (`child_id`);

--
-- Indexes for table `educational_years`
--
ALTER TABLE `educational_years`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_abcence_permissions`
--
ALTER TABLE `employee_abcence_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_abcence_permissions_employee_id_foreign` (`employee_id`);

--
-- Indexes for table `employee_salaries`
--
ALTER TABLE `employee_salaries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_salaries_employee_id_foreign` (`employee_id`),
  ADD KEY `employee_salaries_treasury_id_foreign` (`treasury_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `general_accounts`
--
ALTER TABLE `general_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `general_accounts_treasury_id_foreign` (`treasury_id`),
  ADD KEY `general_accounts_generalexpensese_id_foreign` (`generalExpensese_id`);

--
-- Indexes for table `general_expenseses`
--
ALTER TABLE `general_expenseses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `holidays`
--
ALTER TABLE `holidays`
  ADD PRIMARY KEY (`id`),
  ADD KEY `holidays_classroom_id_foreign` (`classroom_id`),
  ADD KEY `holidays_addchild_id_foreign` (`addChild_id`);

--
-- Indexes for table `indebtedness_levels`
--
ALTER TABLE `indebtedness_levels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leavels`
--
ALTER TABLE `leavels`
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
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_classroom_id_foreign` (`classroom_id`),
  ADD KEY `permissions_addchild_id_foreign` (`addChild_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `sell_books`
--
ALTER TABLE `sell_books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sell_uniforms`
--
ALTER TABLE `sell_uniforms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sell_uniforms_year_id_foreign` (`year_id`),
  ADD KEY `sell_uniforms_buyuniform_id_foreign` (`buyUniform_id`);

--
-- Indexes for table `sell_uniform_totals`
--
ALTER TABLE `sell_uniform_totals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sell_uniform_totals_year_id_foreign` (`year_id`),
  ADD KEY `sell_uniform_totals_level_id_foreign` (`level_id`),
  ADD KEY `sell_uniform_totals_child_id_foreign` (`child_id`);

--
-- Indexes for table `treasuries`
--
ALTER TABLE `treasuries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `treasury_processes`
--
ALTER TABLE `treasury_processes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `treasury_processes_treasury_id_foreign` (`treasury_id`),
  ADD KEY `treasury_processes_employee_id_foreign` (`employee_id`),
  ADD KEY `treasury_processes_generalaccount_id_foreign` (`generalAccount_id`),
  ADD KEY `treasury_processes_educationalexpense_id_foreign` (`educationalExpense_id`),
  ADD KEY `treasury_processes_child_id_foreign` (`child_id`);

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
-- AUTO_INCREMENT for table `absences`
--
ALTER TABLE `absences`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `add_children`
--
ALTER TABLE `add_children`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `buy_books`
--
ALTER TABLE `buy_books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `buy_book_totals`
--
ALTER TABLE `buy_book_totals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `buy_uniforms`
--
ALTER TABLE `buy_uniforms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `buy_uniform_totals`
--
ALTER TABLE `buy_uniform_totals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `child_registrations`
--
ALTER TABLE `child_registrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `child_rooms`
--
ALTER TABLE `child_rooms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `child_transfers`
--
ALTER TABLE `child_transfers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `classrooms`
--
ALTER TABLE `classrooms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `daycare_settiengs`
--
ALTER TABLE `daycare_settiengs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `educational_expenses`
--
ALTER TABLE `educational_expenses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `educational_expenses_collections`
--
ALTER TABLE `educational_expenses_collections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `educational_years`
--
ALTER TABLE `educational_years`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `employee_abcence_permissions`
--
ALTER TABLE `employee_abcence_permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `employee_salaries`
--
ALTER TABLE `employee_salaries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `general_accounts`
--
ALTER TABLE `general_accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `general_expenseses`
--
ALTER TABLE `general_expenseses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `holidays`
--
ALTER TABLE `holidays`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `indebtedness_levels`
--
ALTER TABLE `indebtedness_levels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `leavels`
--
ALTER TABLE `leavels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=909;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sell_books`
--
ALTER TABLE `sell_books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sell_uniforms`
--
ALTER TABLE `sell_uniforms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sell_uniform_totals`
--
ALTER TABLE `sell_uniform_totals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `treasuries`
--
ALTER TABLE `treasuries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `treasury_processes`
--
ALTER TABLE `treasury_processes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `absences`
--
ALTER TABLE `absences`
  ADD CONSTRAINT `absences_addchild_id_foreign` FOREIGN KEY (`addChild_id`) REFERENCES `add_children` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `absences_classroom_id_foreign` FOREIGN KEY (`classroom_id`) REFERENCES `classrooms` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `buy_uniforms`
--
ALTER TABLE `buy_uniforms`
  ADD CONSTRAINT `buy_uniforms_year_id_foreign` FOREIGN KEY (`year_id`) REFERENCES `educational_years` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `buy_uniform_totals`
--
ALTER TABLE `buy_uniform_totals`
  ADD CONSTRAINT `buy_uniform_totals_year_id_foreign` FOREIGN KEY (`year_id`) REFERENCES `educational_years` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `child_registrations`
--
ALTER TABLE `child_registrations`
  ADD CONSTRAINT `child_registrations_child_id_foreign` FOREIGN KEY (`child_id`) REFERENCES `add_children` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `child_rooms`
--
ALTER TABLE `child_rooms`
  ADD CONSTRAINT `child_rooms_addchlid_id_foreign` FOREIGN KEY (`addChlid_id`) REFERENCES `add_children` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `child_rooms_classroom_id_foreign` FOREIGN KEY (`classRoom_id`) REFERENCES `classrooms` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `child_rooms_level_id_foreign` FOREIGN KEY (`level_id`) REFERENCES `leavels` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `child_transfers`
--
ALTER TABLE `child_transfers`
  ADD CONSTRAINT `child_transfers_addchild_id_foreign` FOREIGN KEY (`addChild_id`) REFERENCES `add_children` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `child_transfers_classroomfrom_id_foreign` FOREIGN KEY (`classroomFrom_id`) REFERENCES `classrooms` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `child_transfers_classroomto_id_foreign` FOREIGN KEY (`classroomTo_id`) REFERENCES `classrooms` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `educational_expenses`
--
ALTER TABLE `educational_expenses`
  ADD CONSTRAINT `educational_expenses_educationalyear_id_foreign` FOREIGN KEY (`educationalYear_id`) REFERENCES `educational_years` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `educational_expenses_level_id_foreign` FOREIGN KEY (`level_id`) REFERENCES `leavels` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `educational_expenses_collections`
--
ALTER TABLE `educational_expenses_collections`
  ADD CONSTRAINT `educational_expenses_collections_child_id_foreign` FOREIGN KEY (`child_id`) REFERENCES `add_children` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `educational_expenses_collections_treasury_id_foreign` FOREIGN KEY (`treasury_id`) REFERENCES `treasuries` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `employee_abcence_permissions`
--
ALTER TABLE `employee_abcence_permissions`
  ADD CONSTRAINT `employee_abcence_permissions_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `employee_salaries`
--
ALTER TABLE `employee_salaries`
  ADD CONSTRAINT `employee_salaries_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `employee_salaries_treasury_id_foreign` FOREIGN KEY (`treasury_id`) REFERENCES `treasuries` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `general_accounts`
--
ALTER TABLE `general_accounts`
  ADD CONSTRAINT `general_accounts_generalexpensese_id_foreign` FOREIGN KEY (`generalExpensese_id`) REFERENCES `general_expenseses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `general_accounts_treasury_id_foreign` FOREIGN KEY (`treasury_id`) REFERENCES `treasuries` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `holidays`
--
ALTER TABLE `holidays`
  ADD CONSTRAINT `holidays_addchild_id_foreign` FOREIGN KEY (`addChild_id`) REFERENCES `add_children` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `holidays_classroom_id_foreign` FOREIGN KEY (`classroom_id`) REFERENCES `classrooms` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `permissions`
--
ALTER TABLE `permissions`
  ADD CONSTRAINT `permissions_addchild_id_foreign` FOREIGN KEY (`addChild_id`) REFERENCES `add_children` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permissions_classroom_id_foreign` FOREIGN KEY (`classroom_id`) REFERENCES `classrooms` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sell_uniforms`
--
ALTER TABLE `sell_uniforms`
  ADD CONSTRAINT `sell_uniforms_buyuniform_id_foreign` FOREIGN KEY (`buyUniform_id`) REFERENCES `buy_uniforms` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sell_uniforms_year_id_foreign` FOREIGN KEY (`year_id`) REFERENCES `educational_years` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sell_uniform_totals`
--
ALTER TABLE `sell_uniform_totals`
  ADD CONSTRAINT `sell_uniform_totals_child_id_foreign` FOREIGN KEY (`child_id`) REFERENCES `add_children` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sell_uniform_totals_level_id_foreign` FOREIGN KEY (`level_id`) REFERENCES `leavels` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sell_uniform_totals_year_id_foreign` FOREIGN KEY (`year_id`) REFERENCES `educational_years` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `treasury_processes`
--
ALTER TABLE `treasury_processes`
  ADD CONSTRAINT `treasury_processes_child_id_foreign` FOREIGN KEY (`child_id`) REFERENCES `add_children` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `treasury_processes_educationalexpense_id_foreign` FOREIGN KEY (`educationalExpense_id`) REFERENCES `educational_expenses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `treasury_processes_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `treasury_processes_generalaccount_id_foreign` FOREIGN KEY (`generalAccount_id`) REFERENCES `general_accounts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `treasury_processes_treasury_id_foreign` FOREIGN KEY (`treasury_id`) REFERENCES `treasuries` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
