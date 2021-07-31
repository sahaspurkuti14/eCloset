-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 31, 2021 at 08:05 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `other` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `report` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `setting` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stock` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` int(15) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `phone`, `email`, `email_verified_at`, `password`, `remember_token`, `category`, `coupon`, `product`, `order`, `other`, `report`, `role`, `return`, `contact`, `setting`, `stock`, `type`, `created_at`, `updated_at`) VALUES
(3, 'Admin', '123456789', 'admin@gmail.com', NULL, '$2y$12$dMY5vrhg4kz.iP5sr.pH3uV.VlPhgEP30QR1PHY8s0F8vMXGyOvwq', NULL, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 1, '0000-00-00 00:00:00', NULL),
(5, 'sahas', '123456', 'sahas5999@gmail.com', NULL, '$2y$10$kJi2/Po9gcwri7kQwH7qGeJ2yFJ9.pkb1rAEdx8vXYbIsUrKeeBlu', NULL, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_logo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `brand_name`, `brand_logo`, `created_at`, `updated_at`) VALUES
(1, 'Nike', 'public/media/brand/130721_04_51_58.jpg', NULL, NULL),
(2, 'Adidas', 'public/media/brand/140721_04_49_16.png', NULL, NULL),
(3, 'Vans', 'public/media/brand/140721_04_13_17.png', NULL, NULL),
(4, 'Converse', 'public/media/brand/140721_04_53_17.png', NULL, NULL),
(5, 'Puma', 'public/media/brand/140721_04_19_18.png', NULL, NULL),
(6, 'No Brand', 'public/media/brand/140721_04_13_19.png', NULL, NULL),
(7, 'Zara', 'public/media/brand/140721_04_30_19.png', NULL, NULL),
(8, 'Goldstar', 'public/media/brand/140721_04_47_19.jpg', NULL, NULL),
(9, 'KTM CTY', 'public/media/brand/140721_04_13_20.png', NULL, NULL),
(10, 'Naviforce', 'public/media/brand/140721_04_32_20.png', NULL, NULL),
(11, 'erke', 'public/media/brand/140721_04_22_21.jpg', NULL, NULL),
(12, 'Levi\'s', 'public/media/brand/140721_04_30_51.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `created_at`, `updated_at`) VALUES
(4, 'Men\'s Fashion', '2021-07-13 21:56:28', '2021-07-13 21:56:28'),
(5, 'Women\'s Fashion', '2021-07-13 21:57:21', '2021-07-13 21:57:21'),
(6, 'Kids', '2021-07-13 21:58:12', '2021-07-13 21:58:12'),
(7, 'Watches & Accessories', '2021-07-13 21:58:46', '2021-07-13 21:58:46'),
(8, 'Bags & Purse', '2021-07-13 22:19:59', '2021-07-13 22:19:59'),
(9, 'new category', '2021-07-25 02:00:04', '2021-07-25 02:00:04');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `phone`, `email`, `message`, `created_at`, `updated_at`) VALUES
(1, 'Ujjwal Pudasaini', '9860098166', 'uzalgunner@gmail.com', 'hey ! whats up', NULL, NULL),
(2, 'Ujjwal Pudasaini', '9860098166', 'uzalgunner@gmail.com', 'hey ! whats up .. i am fine thank u', NULL, NULL),
(3, 'name', '9808123462', 'sahas5999@gmail.com', 'mero message', NULL, NULL),
(4, 'sahas', '9808123462', 'sahas5999@gmail.com', 'yo mero message', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `coupon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `coupon`, `discount`, `created_at`, `updated_at`) VALUES
(2, '1234', '25', NULL, NULL),
(3, 'EASY', '50', NULL, NULL),
(4, 'NEW', '10', NULL, NULL),
(5, 'new123', '50', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
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
(4, '2019_10_05_052517_create_admins_table', 1),
(5, '2021_05_04_123724_create_categories_table', 2),
(6, '2021_05_04_124057_create_subcategories_table', 2),
(7, '2021_05_04_124117_create_brands_table', 2),
(8, '2021_07_13_054306_create_coupons_table', 3),
(9, '2021_07_13_063657_create_products_table', 4),
(10, '2021_07_13_081855_create_products_table', 5),
(11, '2021_07_13_082900_create_products_table', 6),
(12, '2018_12_23_120000_create_shoppingcart_table', 7),
(13, '2021_07_14_130811_create_wishlists_table', 7),
(14, '2021_07_16_110818_create_settings_table', 8),
(15, '2016_06_01_000001_create_oauth_auth_codes_table', 9),
(16, '2016_06_01_000002_create_oauth_access_tokens_table', 9),
(17, '2016_06_01_000003_create_oauth_refresh_tokens_table', 9),
(18, '2016_06_01_000004_create_oauth_clients_table', 9),
(19, '2016_06_01_000005_create_oauth_personal_access_clients_table', 9),
(20, '2021_07_20_070655_create_orders_table', 10),
(21, '2021_07_20_070918_create_orders_details_table', 10),
(22, '2021_07_20_071158_create_shipping_table', 10),
(23, '2021_07_22_034014_create_seo_table', 11),
(24, '2021_07_23_035751_create_sitesetting_table', 12),
(25, '2021_07_24_185044_create_contact_table', 13);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', '70bA2VtsctZLM8Z9h903m0ZwlBYjJGIwAAK0K4wX', NULL, 'http://localhost', 1, 0, 0, '2021-07-17 04:17:45', '2021-07-17 04:17:45'),
(2, NULL, 'Laravel Password Grant Client', 'OfQd8CwIMEXnKeiujUp69AqhoWwTymWmXoZZoRAK', 'users', 'http://localhost', 0, 1, 0, '2021-07-17 04:17:45', '2021-07-17 04:17:45');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-07-17 04:17:45', '2021-07-17 04:17:45');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paying_amount` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blnc_transection` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_order_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtotal` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vat` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `return_order` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `month` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `payment_type`, `payment_id`, `paying_amount`, `blnc_transection`, `stripe_order_id`, `subtotal`, `shipping`, `vat`, `total`, `status`, `return_order`, `month`, `date`, `year`, `status_code`, `created_at`, `updated_at`) VALUES
(1, '2', '', 'card_1JFMOeB7T4vz3JoUX0wDT1E1', '651500', 'txn_1JFMOgB7T4vz3JoURUw7gcT9', '60f70293af5c8', '6500.00', '10', '5', '6515', '3', '0', 'July', '20-07-21', '2021', '12345', NULL, NULL),
(2, '2', 'stripe', 'card_1JFNBUB7T4vz3JoUJXYrcVqR', '61500', 'txn_1JFNBVB7T4vz3JoUzTSLKG5F', '60f70e66c5008', '600.00', '10', '5', '615', '4', '0', 'July', '20-07-21', '2021', '234234', NULL, NULL),
(3, '2', 'stripe', 'card_1JFv13B7T4vz3JoUG1eva3xs', '651500', 'txn_1JFv14B7T4vz3JoUCsQcm32Q', '60f90a694adf8', '6500.00', '10', '5', '6515', '3', '2', 'July', '22-07-21', '2021', NULL, NULL, NULL),
(4, '4', 'stripe', 'card_1JFxqyB7T4vz3JoU83VgsHhV', '451500', 'txn_1JFxr0B7T4vz3JoUdcriCMzv', '60f934fd46d38', '4500.00', '10', '5', '4515', '2', '0', 'July', '22-07-21', '2021', NULL, NULL, NULL),
(5, '2', 'stripe', 'card_1JGHXNB7T4vz3JoUV6CpeUxX', '201500', 'txn_1JGHXPB7T4vz3JoUqnFa2Avv', '60fa5c968f4cd', '2000.00', '10', '5', '2015', '4', '2', 'July', '23-07-21', '2021', '736600', NULL, NULL),
(6, '2', 'stripe', 'card_1JGKV5B7T4vz3JoUYitxoM6D', '201500', 'txn_1JGKV7B7T4vz3JoUW2S0P43m', '60fa891505ed0', '2000.00', '10', '5', '2015', '2', '0', 'July', '23-07-21', '2021', '916392', NULL, NULL),
(7, '3', 'stripe', 'card_1JGM75B7T4vz3JoUEXFHnho2', '401500', 'txn_1JGM77B7T4vz3JoUokMSce74', '60faa144db2cd', '4000.00', '10', '5', '4015', '2', '0', 'July', '23-07-21', '2021', '906798', NULL, NULL),
(8, '10', 'stripe', 'card_1JGfhaB7T4vz3JoU94eOkDJP', '251500', 'txn_1JGfhcB7T4vz3JoUbKuAir5d', '60fbc766bd472', '2450', '10', '5', '2515', '2', '2', 'July', '24-07-21', '2021', '126601', NULL, NULL),
(9, '2', 'stripe', 'card_1JGlE6B7T4vz3JoUF5LxIgUR', '801500', 'txn_1JGlE8B7T4vz3JoUC32fzVHV', '60fc1a6401536', '8000.00', '10', '5', '8015', '3', '0', 'July', '24-07-21', '2021', '767681', NULL, NULL),
(10, '5', 'stripe', 'card_1JH0aLB7T4vz3JoUZVtjjYrZ', '251500', 'txn_1JH0aNB7T4vz3JoU3a6EMCYB', '60fd00f8e5dd7', '2450', '10', '5', '2515', '1', '1', 'July', '25-07-21', '2021', '248047', NULL, NULL),
(11, '5', 'stripe', 'card_1JH18bB7T4vz3JoU6hWsLvra', '201500', 'txn_1JH18cB7T4vz3JoULX5uHxGW', '60fd0944a8ffb', '1950', '10', '5', '2015', '0', '0', 'July', '25-07-21', '2021', '543365', NULL, NULL),
(12, '5', 'stripe', 'card_1JH1zeB7T4vz3JoU4rJeenVC', '801500', 'txn_1JH1zgB7T4vz3JoUOO8BvK8C', '60fd161e4a812', '7950', '10', '5', '8015', '0', '0', 'July', '25-07-21', '2021', '216529', NULL, NULL),
(13, '9', 'stripe', 'card_1JH25uB7T4vz3JoUt4PxBa4h', '251500', 'txn_1JH25wB7T4vz3JoUkfqNrSE3', '60fd17a291879', '2500.00', '10', '5', '2515', '0', '0', 'July', '25-07-21', '2021', '974124', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders_details`
--

CREATE TABLE `orders_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `singleprice` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `totalprice` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders_details`
--

INSERT INTO `orders_details` (`id`, `order_id`, `product_id`, `product_name`, `color`, `size`, `quantity`, `singleprice`, `totalprice`, `created_at`, `updated_at`) VALUES
(1, 1, '23', 'ERKE sports sneakers for men', 'black', '38', '1', '6500', '6500', NULL, NULL),
(2, 2, '21', 'Cap', 'blue', 'm', '1', '600', '600', NULL, NULL),
(3, 3, '23', 'ERKE sports sneakers for men', 'black', '38', '1', '6500', '6500', NULL, NULL),
(4, 4, '29', 'Naviforce Watch for Women', 'golden', 'm', '1', '2000', '2000', NULL, NULL),
(5, 4, '26', 'converse shoes', 'white', '38', '1', '2500', '2500', NULL, NULL),
(6, 5, '29', 'Naviforce Watch for Women', 'golden', 'm', '1', '2000', '2000', NULL, NULL),
(7, 6, '8', 'Black High Rise Stretchable Jeans For Women', 'Black', '24', '1', '2000', '2000', NULL, NULL),
(8, 7, '28', 'Baby Carrier', 'black', 's', '1', '4000', '4000', NULL, NULL),
(9, 8, '30', 'product', 'white', '22', '1', '2500', '2500', NULL, NULL),
(10, 9, '28', 'Baby Carrier', 'black', 's', '2', '4000', '8000', NULL, NULL),
(11, 10, '30', 'product', 'white', '22', '1', '2500', '2500', NULL, NULL),
(12, 11, '29', 'Naviforce Watch for Women', 'golden', 'm', '1', '2000', '2000', NULL, NULL),
(13, 12, '28', 'Baby Carrier', 'blue', 'm', '2', '4000', '8000', NULL, NULL),
(14, 13, '30', 'product', 'white', '22', '1', '2500', '2500', NULL, NULL);

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_quantity` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_color` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_size` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `selling_price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount_price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `main_slider` int(11) DEFAULT NULL,
  `hot_deal` int(11) DEFAULT NULL,
  `buyone_getone` int(11) DEFAULT NULL,
  `best_rated` int(11) DEFAULT NULL,
  `mid_slider` int(11) DEFAULT NULL,
  `hot_new` int(11) DEFAULT NULL,
  `trend` int(11) DEFAULT NULL,
  `image_one` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_two` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_three` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `subcategory_id`, `brand_id`, `product_name`, `product_code`, `product_quantity`, `product_details`, `product_color`, `product_size`, `selling_price`, `discount_price`, `video_link`, `main_slider`, `hot_deal`, `buyone_getone`, `best_rated`, `mid_slider`, `hot_new`, `trend`, `image_one`, `image_two`, `image_three`, `status`, `created_at`, `updated_at`) VALUES
(2, 3, 3, 1, 'a2', '99975', '20', 'this is description', 'black\'', 'l,m,xl', '1200', '999', 'www.youtube.com', NULL, NULL, NULL, 1, 1, 1, NULL, 'public/media/product/130721_08_00_38.jpg', 'public/media/product/1705157794966378.jpg', 'public/media/product/1705157795038034.jpg', 1, NULL, NULL),
(3, 2, 2, 1, 'Party No Sleeve Printed T-shirt', '45456', '25', 'details...', 'white', 's', '799', '499', 'www.youtube.com', 1, 1, 1, 1, 1, 1, 1, 'public/media/product/1705175341758498.jpg', 'public/media/product/1705175341932884.jpg', 'public/media/product/1705175342050716.jpg', 1, NULL, NULL),
(4, 7, 15, 7, 'Brown Leather Belt', '65565', '20', 'This is a belt. a Good belt. a leather belt .a long leather belt . a good long leather belt . a good long lasting leather belt. a good long lasting brown belt...', 'brown', 'L', '2500', '1999', NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 'public/media/product/1705233727598860.jpg', 'public/media/product/1705233728862598.jpg', 'public/media/product/1705233729235802.jpg', 1, NULL, NULL),
(5, 8, NULL, 6, 'Unisex Anti-theft bag', '6654656', '50', 'this is a product detail...', 'black', 'M', '3500', '3000', NULL, NULL, 1, NULL, 1, 1, 1, 1, 'public/media/product/1705234005729052.jpg', 'public/media/product/1705234005929194.jpg', 'public/media/product/1705234006247846.jpg', 1, NULL, NULL),
(6, 4, 18, 6, 'Printed T-shirt for men', '645120', '100', 'this is a product detail...', 'white,black,maroon,grey', 's,m,l,xl', '700', '499', NULL, 1, NULL, NULL, NULL, NULL, NULL, 1, 'public/media/product/1705234159691270.jpg', 'public/media/product/1705234160641113.jpg', 'public/media/product/1705234161691998.jpg', 1, NULL, NULL),
(7, 5, 22, 2, 'Party No Sleeve Printed T-shirt', '798465', '100', 'this is a product detail...', 'white,black,maroon', 's,l,m', '800', '600', NULL, NULL, 1, NULL, 1, 1, NULL, NULL, 'public/media/product/1705234311274221.jpg', 'public/media/product/1705234312201862.jpg', 'public/media/product/1705234313088840.jpg', 1, NULL, NULL),
(8, 5, 24, 12, 'Black High Rise Stretchable Jeans For Women', '874512', '50', 'this is a product detail...', 'Black', '24,25,26,27,28,29,30,31,32,33', '2500', '2000', NULL, 1, NULL, NULL, 1, NULL, 1, NULL, 'public/media/product/1705234577028189.jpg', 'public/media/product/1705234578157836.jpg', 'public/media/product/1705234579405085.jpg', 1, NULL, NULL),
(9, 4, 20, 7, 'Stretchable cotton pants for men', '312546', '100', 'this is a product detail...', 'white,black', '27,28,29,30,31,32,33,34', '2500', '2000', NULL, NULL, 1, NULL, 1, 1, NULL, NULL, 'public/media/product/1705234726480782.jpg', 'public/media/product/1705234727507044.jpg', 'public/media/product/1705234728852693.jpg', 1, NULL, NULL),
(12, 4, 18, 6, 'Pair of 4 printed T-shirts', '4655', '100', 'this is product description...', 'white,black,blue,red', 's,m,l,xl', '2000', '1500', NULL, 1, 1, NULL, NULL, NULL, NULL, 1, 'public/media/product/1705236035500410.jpg', 'public/media/product/1705236035545487.jpg', 'public/media/product/1705236035590792.jpg', 1, NULL, NULL),
(13, 8, 29, 6, 'Mini-purse for Girls', '64510', '20', 'this is product description...', 'pink', 'm', '1100', '1100', NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, 'public/media/product/1705236147150420.jpg', 'public/media/product/1705236147316537.jpg', 'public/media/product/1705236147425775.jpg', 1, NULL, NULL),
(14, 5, 25, 6, 'Block heel winter boots for women', '3245', '20', 'this is product description...', 'black,grey', '36,37,38', '3000', '2500', NULL, NULL, 1, NULL, 1, 1, NULL, 1, 'public/media/product/1705236349296482.jpg', 'public/media/product/1705236349505606.jpg', 'public/media/product/1705236349758499.jpg', 1, NULL, NULL),
(15, 5, 23, 6, 'High-Neck for women', '8956', '20', 'this is product description...', 'black,white,blue', 's,m,l', '1500', '1200', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1705236670094719.jpg', 'public/media/product/1705236670180997.jpg', 'public/media/product/1705236670260486.jpg', 1, NULL, NULL),
(16, 4, 19, 9, 'windcheater for men', '84652', '50', 'this is product description...', 'black', 'm,l,xl', '1600', '1600', NULL, NULL, 1, 1, 1, NULL, NULL, 1, 'public/media/product/1705236793186914.jpg', 'public/media/product/1705236793302582.jpg', 'public/media/product/1705236793413519.jpg', 1, NULL, NULL),
(17, 6, NULL, 6, 'kids 2pcs rocky set', '9541', '20', 'this is product description...', 'yellow,white', 's', '1490', '1490', NULL, NULL, NULL, NULL, 1, 1, 1, NULL, 'public/media/product/1705236942750180.jpg', 'public/media/product/1705236942827587.jpg', 'public/media/product/1705236942903066.jpg', 1, NULL, NULL),
(18, 7, 12, 10, 'NaviForce Analog Watch for men', '2222', '20', 'this is product description...', 'black', 'm', '2200', '1825', NULL, NULL, 1, NULL, 1, 1, NULL, NULL, 'public/media/product/1705237069757213.jpg', 'public/media/product/1705237069861168.jpg', 'public/media/product/1705237070011865.jpg', 1, NULL, NULL),
(21, 7, 14, 6, 'Cap', '65152', '50', 'this is a cap.', 'blue,black', 'm', '600', '600', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1705237490972594.jpg', 'public/media/product/1705237491103907.jpg', 'public/media/product/1705237491231010.jpg', 1, NULL, NULL),
(22, 8, 27, 6, 'Ladies Shoulder BAg', '9854', '20', 'this is a bag.', 'blue', 'l', '500', '450', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'public/media/product/1705237616345694.jpg', 'public/media/product/1705237616522425.jpg', 'public/media/product/1705237616695826.jpg', 1, NULL, NULL),
(23, 4, 21, 11, 'ERKE sports sneakers for men', '8451', '49', 'this is product description.', 'black,blue', '38,39,40,41,42,43,44', '6500', NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 'public/media/product/1705237887349860.jpg', 'public/media/product/1705237887423886.jpg', 'public/media/product/1705237887493169.jpg', 1, NULL, NULL),
(24, 8, 28, 6, 'Wallet foe men', '65422', '20', 'this is product description.', 'black', 'm', '499', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1705237984212459.jpg', 'public/media/product/1705237984379140.jpg', 'public/media/product/1705237984490526.jpg', 1, NULL, NULL),
(25, 7, 16, 6, 'Polarized Sporty Looks Unisex Shades', '49454', '50', 'this is product detail.this is product detail.this is product detail.this is product detail.this is product detail.this is product detail.this is product detail.', 'blue,black', 'm', '2000', '1500', NULL, NULL, NULL, NULL, 1, NULL, NULL, 1, 'public/media/product/1705788425662903.jpg', 'public/media/product/1705788426036410.jpg', 'public/media/product/1705788426087942.jpg', 1, NULL, NULL),
(26, 4, 21, 4, 'converse shoes', '77777', '50', 'this is product detail.this is product detail.this is product detail.this is product detail.', 'white,grey', '38,39,40,41,42,43', '3500', '2500', NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 'public/media/product/1705788579626234.jpg', 'public/media/product/1705788579665576.jpg', 'public/media/product/1705788579734306.jpg', 1, NULL, NULL),
(28, 6, 11, 6, 'Baby Carrier', '1110101', '48', 'this is a baby carrier.', 'black,blue', 's,m,l', '4000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1705791223197105.jpg', 'public/media/product/1705791223316856.jpg', 'public/media/product/1705791223432604.jpg', 1, NULL, NULL),
(29, 7, 13, 10, 'Naviforce Watch for Women', 'NF2252', '50', 'this is a watch. time telling watch.', 'golden,blue,white,silver', 'm', '2500', '2000', NULL, 1, NULL, NULL, 1, NULL, 1, 1, 'public/media/product/1705791443486431.jpg', 'public/media/product/1705791443531794.jpg', 'public/media/product/1705791443575026.jpg', 1, NULL, NULL),
(30, 4, 18, 2, 'product', '654', '60', 'afddgfgf', 'white,black', '22,21,s,l', '4000', '2500', NULL, NULL, 1, 1, NULL, NULL, NULL, 1, 'public/media/product/1706151735558388.jpg', 'public/media/product/1706151735865608.jpg', 'public/media/product/1706151735887651.jpg', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `seo`
--

CREATE TABLE `seo` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_author` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_tag` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_analytics` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bing_analytics` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seo`
--

INSERT INTO `seo` (`id`, `meta_title`, `meta_author`, `meta_tag`, `meta_description`, `google_analytics`, `bing_analytics`, `created_at`, `updated_at`) VALUES
(1, 'aaa', 'aaa', 'tag', 'description', 'google', 'bing', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vat` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_charge` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shopname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adderss` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `vat`, `shipping_charge`, `shopname`, `email`, `phone`, `adderss`, `logo`, `created_at`, `updated_at`) VALUES
(1, '5', '10', 'ecloset shop', 'admin@gmail.com', '54454545487', 'ecloset nepal', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `shipping`
--

CREATE TABLE `shipping` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ship_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ship_phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ship_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ship_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ship_city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shipping`
--

INSERT INTO `shipping` (`id`, `order_id`, `ship_name`, `ship_phone`, `ship_email`, `ship_address`, `ship_city`, `created_at`, `updated_at`) VALUES
(1, '1', 'Ujjwal Pudasaini', '9860098166', 'uzalgunner@gmail.com', 'Kageshwori Manohara - 08', 'Kathmandu', NULL, NULL),
(2, '2', 'Ujjwal Pudasaini', '9860098166', 'uzalgunner@gmail.com', 'Kageshwori Manohara - 08', 'Kathmandu', NULL, NULL),
(3, '3', 'Ujjwal Pudasaini', '9860098166', 'uzalgunner@gmail.com', 'Kageshwori Manohara - 08', 'Kathmandu', NULL, NULL),
(4, '4', 'sahas', '123456', 'sahas5999@gmail.com', 'budhanikkantha', 'kathmandu', NULL, NULL),
(5, '5', 'Ujjwal Pudasaini', '9860098166', 'uzalgunner@gmail.com', 'Kageshwori Manohara - 08', 'Kathmandu', NULL, NULL),
(6, '6', 'Ujjwal Pudasaini', '9860098166', 'uzalgunner@gmail.com', 'Kageshwori Manohara - 08', 'Kathmandu', NULL, NULL),
(7, '7', 'sahas', '123456', 'sahas5999@gmail.com', 'budhanilkantha', 'kathmandu', NULL, NULL),
(8, '8', 'sahas', '123456', 'sahas5999@gmail.com', 'budhanikkantha', 'kathmandu', NULL, NULL),
(9, '9', 'Ujjwal Pudasaini', '9860098166', 'uzalgunner@gmail.com', 'Kageshwori Manohara - 08', 'Kathmandu', NULL, NULL),
(10, '10', 'sahas purkuti', '9808078579', 'sahaspurkui14@gmail.com', 'budhanilkantha', 'kathmandu', NULL, NULL),
(11, '11', 'sahas purkuti', '9808123462', 'sahas5999@gmail.com', 'budhanikkantha', 'kathmandu', NULL, NULL),
(12, '12', 'sahas purkuti', '9808123462', 'sahas5999@gmail.com', 'budhanikkantha', 'kathmandu', NULL, NULL),
(13, '13', 'sahas purkuti', '9808078579', 'sahas5999@gmail.com', 'budhanikkantha', 'kathmandu', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `shoppingcart`
--

CREATE TABLE `shoppingcart` (
  `identifier` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instance` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sitesetting`
--

CREATE TABLE `sitesetting` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `phone_one` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_two` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sitesetting`
--

INSERT INTO `sitesetting` (`id`, `phone_one`, `phone_two`, `email`, `company_name`, `company_address`, `facebook`, `youtube`, `instagram`, `twitter`, `created_at`, `updated_at`) VALUES
(1, '+977 0123456789', '+977 9876543210', 'support@ecloset.com.np', 'new naame', 'Kathmandu , Nepal', 'facebook.com', 'youtube.com', 'instagram.com', 'twitter.com', NULL, NULL),
(2, '111', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `category_id`, `subcategory_name`, `created_at`, `updated_at`) VALUES
(2, 2, 'aaa', NULL, NULL),
(3, 3, 'abc', NULL, NULL),
(10, 6, 'Clothing & Accessories', NULL, NULL),
(11, 6, 'Walkers, Backpacks & Carriers', NULL, NULL),
(12, 7, 'Men\'s Watches', NULL, NULL),
(13, 7, 'Women\'s Watches', NULL, NULL),
(14, 7, 'Caps & Hats', NULL, NULL),
(15, 7, 'Belts', NULL, NULL),
(16, 7, 'Sunglasses', NULL, NULL),
(18, 4, 'Shirts & T-Shirts', NULL, NULL),
(19, 4, 'Jackets & Sweaters', NULL, NULL),
(20, 4, 'Pants', NULL, NULL),
(21, 4, 'Shoes', NULL, NULL),
(22, 5, 'Tops & T-Shirts', NULL, NULL),
(23, 5, 'Jackets & Sweaters', NULL, NULL),
(24, 5, 'Pants', NULL, NULL),
(25, 5, 'Shoes', NULL, NULL),
(26, 8, 'Backpacks', NULL, NULL),
(27, 8, 'Ladies Bags', NULL, NULL),
(28, 8, 'Wallets', NULL, NULL),
(29, 8, 'Purse', NULL, NULL),
(30, 9, 'afbddf', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `phone`, `email`, `provider`, `provider_id`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'udemy', NULL, 'udemy@gmail.com', NULL, NULL, NULL, '$2y$10$/ZK5D9KzHxhAYP54OkcZzuvl0Br5IXcB.BkS3CVd5/1QbiAPlz7cS', NULL, '2019-10-05 04:47:42', '2021-07-14 06:23:52'),
(3, 'Sahas Purkuti', '9808078579', 'sahas5999@gmail.com', NULL, NULL, NULL, '$2y$10$8avq4dh91OyDpcsNCsugmO5VTQgTyUrcdesR.jrwEfz0Y7Nho5bTu', NULL, '2021-07-15 06:21:06', '2021-07-15 06:21:06'),
(4, 'ram', '123456', 'ram@gmail.com', NULL, NULL, NULL, '$2y$10$uaDxubOzhSa8IRMiBnHlWuSbNSKwNROb.zQfscYG3zxDbvB2sWywS', NULL, '2021-07-22 01:46:27', '2021-07-22 01:46:27'),
(5, 'Sahas Purkuti', NULL, 'sahaspurkuti14@gmail.com', 'google', '117049238618230831657', NULL, NULL, NULL, '2021-07-23 20:30:48', '2021-07-23 20:30:48'),
(8, 'sahas purkuti', NULL, 'lm10.sahas@gmail.com', 'google', '112238874995148199941', NULL, NULL, NULL, '2021-07-23 20:36:08', '2021-07-23 20:36:08'),
(9, 'Sahas Purkuti', NULL, 'sahaspurkuti@yahoo.com', 'facebook', '4154733434603014', NULL, NULL, NULL, '2021-07-23 21:19:06', '2021-07-23 21:19:06'),
(10, 'user', '123456789', 'user123@gmail.com', NULL, NULL, NULL, '$2y$10$sdtGdQ4Lv7FnfdQZocy7HOHjzfoBTL7ny.tzL/z1u/90bCFgxJNYi', NULL, '2021-07-24 02:08:41', '2021-07-24 02:08:41');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 2, 24, NULL, NULL),
(2, 2, 22, NULL, NULL),
(3, 2, 19, NULL, NULL),
(4, 2, 17, NULL, NULL),
(5, 4, 29, NULL, NULL),
(6, 4, 15, NULL, NULL),
(7, 4, 26, NULL, NULL),
(8, 4, 8, NULL, NULL),
(9, 4, 14, NULL, NULL),
(10, 4, 23, NULL, NULL),
(11, 5, 29, NULL, NULL),
(12, 5, 30, NULL, NULL);

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
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders_details`
--
ALTER TABLE `orders_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seo`
--
ALTER TABLE `seo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping`
--
ALTER TABLE `shipping`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shoppingcart`
--
ALTER TABLE `shoppingcart`
  ADD PRIMARY KEY (`identifier`,`instance`);

--
-- Indexes for table `sitesetting`
--
ALTER TABLE `sitesetting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `orders_details`
--
ALTER TABLE `orders_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `seo`
--
ALTER TABLE `seo`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shipping`
--
ALTER TABLE `shipping`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `sitesetting`
--
ALTER TABLE `sitesetting`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
