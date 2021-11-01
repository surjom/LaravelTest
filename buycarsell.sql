-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 01, 2021 at 06:51 PM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `buycarsell`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `product_id`, `user_id`, `created_at`, `updated_at`) VALUES
(37, 3, 4, '2021-11-01 13:10:38', '2021-11-01 13:10:38');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2021_10_30_161749_create_users_table', 1),
(2, '2021_10_31_104947_create_products_table', 1),
(3, '2021_10_31_180212_create_cart_table', 2),
(4, '2021_11_01_113306_create_orders_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `product_id`, `user_id`, `address`, `status`, `payment_method`, `payment_status`, `created_at`, `updated_at`) VALUES
(7, 14, 4, 'SaltLake, Kolkata', 'pending', 'cash', 'pending', NULL, NULL),
(8, 9, 4, 'SaltLake, Kolkata', 'pending', 'cash', 'pending', NULL, NULL),
(9, 3, 5, '58/1/1 N.S.Dutta Road Howrah-01', 'pending', 'cash', 'pending', NULL, NULL),
(10, 8, 5, '58/1/1 N.S.Dutta Road Howrah-01', 'pending', 'cash', 'pending', NULL, NULL),
(11, 9, 5, '58/1/1 N.S.Dutta Road Howrah-01', 'pending', 'cash', 'pending', NULL, NULL),
(12, 14, 5, '58/1/1 N.S.Dutta Road Howrah-01', 'pending', 'cash', 'pending', NULL, NULL),
(13, 1, 5, 'Howrah, West Bengal', 'pending', 'cash', 'pending', NULL, NULL),
(14, 3, 5, 'Howrah, West Bengal', 'pending', 'cash', 'pending', NULL, NULL),
(15, 8, 5, 'Howrah, West Bengal', 'pending', 'cash', 'pending', NULL, NULL),
(16, 9, 5, 'Howrah, West Bengal', 'pending', 'cash', 'pending', NULL, NULL),
(17, 14, 5, 'Howrah, West Bengal', 'pending', 'cash', 'pending', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gallery` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `category`, `gallery`, `description`, `created_at`, `updated_at`) VALUES
(1, '1951 Lancia Aurelia B20 GT', '554880', 'Vintage Cars', 'https://upload.wikimedia.org/wikipedia/commons/6/63/Lancia_Aurelia_GT_B20.jpg', 'Grand Tourer', NULL, NULL),
(3, '1911 Ford Model T Touring', '15171787', 'Vintage Cars', 'https://upload.wikimedia.org/wikipedia/commons/f/fc/1911_Ford_Model_T_Touring.jpg', 'First global car', NULL, NULL),
(8, 'Alfa Romeo 8C 2300 Spider Corsa 1932 red vr TCE', '12527655', 'Vintage Cars', 'https://upload.wikimedia.org/wikipedia/commons/2/24/Alfa_Romeo_8C_2300_Spider_Corsa_1932_red_vr_TCE.jpg', 'race and sports car', NULL, NULL),
(9, '1936 Mercedes-Benz 500 K Special Roadster', '61023820', 'Vintage Cars', 'https://upload.wikimedia.org/wikipedia/commons/7/73/1936_Mercedes-Benz_500_K_Special_Roadster.jpg', 'Maisto 1936 Mercedes Special Roadster 1/18 Diecast Model Car', NULL, NULL),
(14, 'Renault Trezor Concept', '10000000', 'New Cars', 'http://robbreport.com/wp-content/uploads/2016/10/renault-trezor-concept-01.jpg', 'Radiant New Cars from the City of Lights', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(4, 'vyrazu', 'vyrazu@gmail.com', '$2y$10$jOa5z1zAbFYB0ljg53rXI.d/h/G8A5sOx/EI/0quzOU5wouitReDC', '2021-11-01 12:55:32', '2021-11-01 12:55:32'),
(5, 'Sayan Mukherjee', 'shiva.sayanmukherjee@gmail.com', '$2y$10$6/grxcjMRUdBSigr28MjkOYrqJLWJfZnm0cjKYKaazIGVQbufk3be', '2021-11-01 13:12:55', '2021-11-01 13:12:55');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
