-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 25-09-2023 a las 22:15:40
-- Versión del servidor: 5.7.31
-- Versión de PHP: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ecommerce`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

DROP TABLE IF EXISTS `categoria`;
CREATE TABLE IF NOT EXISTS `categoria` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id`, `nombre`, `estado`, `created_at`, `updated_at`) VALUES
(1, 'Cosmética y Cuidado Personal', 'activa', '2022-06-17 04:47:55', '2022-06-18 07:02:22'),
(11, 'Carnes y Embutidos', 'activa', '2022-06-18 06:13:43', '2022-06-18 06:13:43'),
(12, 'Frutas y Verduras', 'activa', '2022-06-18 06:13:56', '2022-06-18 06:13:56'),
(13, 'Panadería y Dulces', 'activa', '2022-06-18 06:14:08', '2022-06-18 06:14:08'),
(14, 'Huevos, Lácteos y Café', 'activa', '2022-06-18 06:14:18', '2022-06-18 06:14:18'),
(15, 'Aceite, Pasta y Legumbres', 'activa', '2022-06-18 06:14:28', '2022-06-18 06:14:28'),
(16, 'Conservas y Comida Preparada', 'activa', '2022-06-18 06:14:40', '2022-06-18 06:14:40'),
(17, 'Zumos, Sodas y Bebidas', 'activa', '2022-06-18 06:15:01', '2022-06-18 06:15:01'),
(18, 'Aperitivos y Frituras', 'activa', '2022-06-18 06:15:24', '2022-06-18 06:15:24'),
(19, 'Hogar y Limpieza', 'activa', '2022-06-18 06:15:39', '2022-06-18 06:15:39'),
(20, 'Juguetes y juegos', 'activa', '2022-06-18 18:36:48', '2022-06-18 18:36:48'),
(23, 'Vinos y cervezas', 'activa', '2022-06-29 01:38:29', '2023-09-25 01:16:24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_pedido`
--

DROP TABLE IF EXISTS `detalle_pedido`;
CREATE TABLE IF NOT EXISTS `detalle_pedido` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pedido_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `cantidad` int(11) NOT NULL,
  `costo_unitario` int(11) NOT NULL,
  `subtotal` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `detalle_pedido_pedido_id_foreign` (`pedido_id`),
  KEY `detalle_pedido_product_id_foreign` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `detalle_pedido`
--

INSERT INTO `detalle_pedido` (`id`, `pedido_id`, `product_id`, `cantidad`, `costo_unitario`, `subtotal`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 2499, 2499, '2022-06-17 19:14:12', '2022-06-17 19:14:12'),
(2, 1, 6, 1, 144, 144, '2022-06-17 19:14:12', '2022-06-17 19:14:12'),
(3, 2, 1, 1, 2499, 2499, '2022-06-17 19:15:30', '2022-06-17 19:15:30'),
(4, 2, 6, 1, 144, 144, '2022-06-17 19:15:30', '2022-06-17 19:15:30'),
(5, 3, 1, 1, 2499, 2499, '2022-06-17 19:15:38', '2022-06-17 19:15:38'),
(6, 3, 6, 1, 144, 144, '2022-06-17 19:15:38', '2022-06-17 19:15:38'),
(7, 4, 7, 1, 148, 148, '2022-06-18 01:11:28', '2022-06-18 01:11:28'),
(8, 5, 4, 1, 8, 8, '2022-06-18 05:43:37', '2022-06-18 05:43:37'),
(9, 6, 4, 1, 8, 8, '2022-06-18 05:44:02', '2022-06-18 05:44:02'),
(10, 7, 18, 1, 15, 15, '2022-06-18 16:49:19', '2022-06-18 16:49:19'),
(11, 7, 22, 1, 35, 35, '2022-06-18 16:49:19', '2022-06-18 16:49:19'),
(12, 7, 16, 1, 25, 25, '2022-06-18 16:49:19', '2022-06-18 16:49:19'),
(13, 8, 22, 1, 35, 35, '2022-06-19 21:07:16', '2022-06-19 21:07:16'),
(14, 9, 24, 1, 26, 26, '2022-06-19 23:21:44', '2022-06-19 23:21:44'),
(15, 10, 23, 1, 29, 29, '2022-06-28 18:17:50', '2022-06-28 18:17:50'),
(16, 11, 23, 1, 29, 29, '2022-06-29 01:35:57', '2022-06-29 01:35:57'),
(17, 11, 22, 1, 35, 35, '2022-06-29 01:35:57', '2022-06-29 01:35:57'),
(18, 12, 25, 1, 20, 20, '2023-03-22 07:29:17', '2023-03-22 07:29:17'),
(19, 12, 28, 3, 45, 135, '2023-03-22 07:29:17', '2023-03-22 07:29:17'),
(20, 16, 25, 1, 20, 20, '2023-06-27 07:04:10', '2023-06-27 07:04:10'),
(21, 16, 28, 5, 45, 225, '2023-06-27 07:04:10', '2023-06-27 07:04:10'),
(22, 16, 24, 2, 26, 52, '2023-06-27 07:04:10', '2023-06-27 07:04:10'),
(23, 17, 25, 1, 20, 20, '2023-06-27 07:04:15', '2023-06-27 07:04:15'),
(24, 17, 28, 5, 45, 225, '2023-06-27 07:04:15', '2023-06-27 07:04:15'),
(25, 17, 24, 2, 26, 52, '2023-06-27 07:04:15', '2023-06-27 07:04:15'),
(26, 18, 25, 1, 20, 20, '2023-06-27 07:04:36', '2023-06-27 07:04:36'),
(27, 18, 28, 5, 45, 225, '2023-06-27 07:04:36', '2023-06-27 07:04:36'),
(28, 18, 24, 2, 26, 52, '2023-06-27 07:04:36', '2023-06-27 07:04:36'),
(29, 19, 28, 1, 45, 45, '2023-06-27 07:06:08', '2023-06-27 07:06:08'),
(30, 22, 25, 1, 20, 20, '2023-06-27 07:20:48', '2023-06-27 07:20:48'),
(31, 23, 25, 1, 20, 20, '2023-06-27 07:21:09', '2023-06-27 07:21:09'),
(32, 24, 25, 1, 20, 20, '2023-06-27 07:21:28', '2023-06-27 07:21:28'),
(33, 25, 25, 1, 20, 20, '2023-06-27 07:21:44', '2023-06-27 07:21:44'),
(38, 38, 28, 4, 45, 180, '2023-07-05 07:36:34', '2023-07-05 07:36:34'),
(39, 39, 28, 4, 45, 180, '2023-07-05 07:38:04', '2023-07-05 07:38:04'),
(40, 39, 25, 1, 20, 20, '2023-07-05 07:38:04', '2023-07-05 07:38:04'),
(41, 40, 28, 4, 45, 180, '2023-07-05 07:40:28', '2023-07-05 07:40:28'),
(42, 40, 25, 1, 20, 20, '2023-07-05 07:40:28', '2023-07-05 07:40:28'),
(43, 41, 24, 1, 26, 26, '2023-07-08 05:22:55', '2023-07-08 05:22:55'),
(44, 41, 23, 1, 29, 29, '2023-07-08 05:22:55', '2023-07-08 05:22:55'),
(45, 42, 25, 1, 20, 20, '2023-07-08 05:29:03', '2023-07-08 05:29:03'),
(46, 43, 25, 4, 20, 80, '2023-07-10 06:30:40', '2023-07-10 06:30:40'),
(47, 43, 24, 2, 26, 52, '2023-07-10 06:30:40', '2023-07-10 06:30:40'),
(48, 44, 24, 1, 26, 26, '2023-07-10 06:35:12', '2023-07-10 06:35:12'),
(49, 45, 24, 5, 26, 130, '2023-07-10 06:37:36', '2023-07-10 06:37:36'),
(50, 46, 29, 1, 10, 10, '2023-07-13 07:27:48', '2023-07-13 07:27:48'),
(51, 47, 29, 1, 10, 10, '2023-08-30 06:41:19', '2023-08-30 06:41:19'),
(52, 48, 25, 3, 20, 60, '2023-09-04 05:49:19', '2023-09-04 05:49:19'),
(53, 49, 29, 1, 10, 10, '2023-09-04 06:09:15', '2023-09-04 06:09:15'),
(54, 49, 25, 1, 20, 20, '2023-09-04 06:09:15', '2023-09-04 06:09:15'),
(55, 50, 29, 1, 10, 10, '2023-09-19 23:43:02', '2023-09-19 23:43:02'),
(56, 51, 29, 2, 10, 20, '2023-09-19 23:51:04', '2023-09-19 23:51:04'),
(57, 52, 29, 1, 10, 10, '2023-09-20 00:22:13', '2023-09-20 00:22:13'),
(58, 52, 30, 1, 10, 10, '2023-09-20 00:22:13', '2023-09-20 00:22:13'),
(59, 53, 30, 9, 10, 90, '2023-09-20 04:53:05', '2023-09-20 04:53:05'),
(60, 54, 30, 10, 10, 100, '2023-09-20 07:42:29', '2023-09-20 07:42:29'),
(61, 55, 29, 5, 10, 50, '2023-09-20 07:43:56', '2023-09-20 07:43:56'),
(62, 56, 30, 20, 10, 200, '2023-09-20 07:46:49', '2023-09-20 07:46:49'),
(63, 57, 28, 1, 45, 45, '2023-09-20 03:52:25', '2023-09-20 03:52:25'),
(64, 57, 30, 1, 10, 10, '2023-09-20 03:52:25', '2023-09-20 03:52:25'),
(65, 58, 6, 10, 5, 50, '2023-09-20 04:24:03', '2023-09-20 04:24:03'),
(66, 59, 31, 10, 24, 240, '2023-09-20 19:32:15', '2023-09-20 19:32:15'),
(67, 59, 30, 6, 10, 60, '2023-09-20 19:32:16', '2023-09-20 19:32:16'),
(68, 60, 31, 10, 24, 240, '2023-09-23 23:49:05', '2023-09-23 23:49:05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_12_18_031408_categoria', 1),
(6, '2021_12_19_164315_create_products_table', 1),
(7, '2021_12_19_164736_pedidos', 1),
(8, '2021_12_19_184337_detalle_pedido', 1),
(9, '2021_12_28_143517_create_permission_tables', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_permissions`
--

DROP TABLE IF EXISTS `model_has_permissions`;
CREATE TABLE IF NOT EXISTS `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_roles`
--

DROP TABLE IF EXISTS `model_has_roles`;
CREATE TABLE IF NOT EXISTS `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

DROP TABLE IF EXISTS `pedido`;
CREATE TABLE IF NOT EXISTS `pedido` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `users_id` bigint(20) UNSIGNED NOT NULL,
  `provincia` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `localidad` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `direccion` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `costo_total` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha` datetime NOT NULL,
  `estado` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pedido_users_id_foreign` (`users_id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `pedido`
--

INSERT INTO `pedido` (`id`, `users_id`, `provincia`, `localidad`, `direccion`, `costo_total`, `fecha`, `estado`, `created_at`, `updated_at`) VALUES
(1, 2, 'Cercado', 'Oruro', '6 De agosto y pagador', '2643', '2023-07-20 11:13:00', 'pendiente', '2022-06-17 19:14:12', '2022-06-17 19:14:12'),
(2, 2, 'Cercado', 'Oruro', '6 De agosto y pagador', '2643', '2022-06-22 11:13:00', 'pendiente', '2022-06-17 19:15:30', '2022-06-17 19:15:30'),
(3, 2, 'Cercado', 'Oruro', '6 De agosto y pagador', '2643', '2022-06-22 11:13:00', 'pendiente', '2022-06-17 19:15:38', '2022-06-17 19:15:38'),
(4, 1, 'Cercado', 'Oruro', '6 De agosto y pagador', '148', '2022-06-17 17:11:00', 'pendiente', '2022-06-18 01:11:28', '2022-06-18 01:11:28'),
(5, 1, 'Cercado', 'ORruro', '6 de agosto', '8', '2022-06-17 21:43:00', 'pendiente', '2022-06-18 05:43:37', '2022-06-18 05:43:37'),
(6, 1, 'Cercado', 'ORruro', '6 de agosto', '8', '2022-06-17 21:43:00', 'pendiente', '2022-06-18 05:44:02', '2022-06-18 05:44:02'),
(7, 2, 'Cercado', 'Ouro', '6 de agosto y potosi', '75', '2022-06-18 08:49:00', 'pendiente', '2022-06-18 16:49:19', '2022-06-18 16:49:19'),
(8, 1, 'Cercado', 'Ouro', '6 de agosto', '35', '2022-06-19 13:07:00', 'pendiente', '2022-06-19 21:07:16', '2022-06-19 21:07:16'),
(9, 3, 'Cercado', 'Ouro', '6 de agosto', '26', '2022-06-19 15:21:00', 'pendiente', '2022-06-19 23:21:44', '2022-06-19 23:21:44'),
(10, 1, 'Cercado', 'Ouro', '6 de agosto', '29', '2022-06-28 10:17:00', 'pendiente', '2022-06-28 18:17:50', '2022-06-28 18:17:50'),
(11, 4, 'Cercado', 'Ouro', '6 de agosto', '64', '2022-06-28 17:35:00', 'pendiente', '2022-06-29 01:35:57', '2022-06-29 01:35:57'),
(12, 1, 'Cercado', 'Ouro', '6 de agosto', '155', '2023-03-22 23:29:00', 'pendiente', '2023-03-22 07:29:17', '2023-03-22 07:29:17'),
(13, 5, 'fdf', 'fdf', 'fdfd', '45', '2023-06-19 22:58:00', 'pendiente', '2023-06-20 06:58:44', '2023-06-20 06:58:44'),
(14, 5, '6565', '656', '656', '26', '2023-06-19 23:00:00', 'pendiente', '2023-06-20 07:00:57', '2023-06-20 07:00:57'),
(15, 5, '6565', '656', '656', '26', '2023-06-19 23:00:00', 'enviado', '2023-06-20 07:04:42', '2023-06-20 07:15:18'),
(16, 6, 'dsd', 'dsd', 'asas', '297', '2023-06-26 23:04:00', 'pendiente', '2023-06-27 07:04:10', '2023-06-27 07:04:10'),
(17, 6, 'dsd', 'dsd', 'asas', '297', '2023-06-26 23:04:00', 'pendiente', '2023-06-27 07:04:15', '2023-06-27 07:04:15'),
(18, 6, 'dsd', 'dsd', 'asas', '297', '2023-06-26 23:04:00', 'pendiente', '2023-06-27 07:04:35', '2023-06-27 07:04:35'),
(19, 6, 'fdfdf', 'fdf', 'fdf', '45', '2023-06-26 23:06:00', 'entregado', '2023-06-27 07:06:08', '2023-06-27 07:28:36'),
(20, 1, 'dsd', 'dsd', 'dsd', '45', '2023-06-26 23:07:00', 'pendiente', '2023-06-27 07:07:55', '2023-06-27 07:07:55'),
(21, 1, 'sfff', 'ff', 'fff', '15', '2023-06-26 23:08:00', 'pendiente', '2023-06-27 07:08:56', '2023-06-27 07:08:56'),
(22, 1, 'dds', 'dsd', 'dsd', '20', '2023-06-26 23:20:00', 'pendiente', '2023-06-27 07:20:48', '2023-06-27 07:20:48'),
(23, 1, 'dds', 'dsd', 'dsd', '20', '2023-06-26 23:20:00', 'pendiente', '2023-06-27 07:21:09', '2023-06-27 07:21:09'),
(24, 1, 'dds', 'dsd', 'dsd', '20', '2023-06-26 23:20:00', 'pendiente', '2023-06-27 07:21:28', '2023-06-27 07:21:28'),
(25, 1, 'dds', 'dsd', 'dsd', '20', '2023-06-27 23:20:00', 'pendiente', '2023-06-27 07:21:44', '2023-06-27 07:21:44'),
(26, 1, 'fdf', 'fdf', 'fdf', '20', '2023-06-27 23:22:00', 'entregado', '2023-06-27 07:22:34', '2023-09-19 01:13:38'),
(27, 5, 'aaa', 'aaa', 'aaaa', '180', '2023-07-05 22:00:00', 'pendiente', '2023-07-05 06:00:56', '2023-07-05 06:00:56'),
(28, 5, NULL, NULL, '33', '200', '2023-07-04 23:05:00', 'pendiente', '2023-07-05 07:06:09', '2023-07-05 07:06:09'),
(29, 5, NULL, NULL, '33', '200', '2023-07-04 23:05:00', 'pendiente', '2023-07-05 07:09:27', '2023-07-05 07:09:27'),
(30, 5, NULL, NULL, 'RRRRRRR', '200', '2023-07-04 23:05:00', 'pendiente', '2023-07-05 07:13:26', '2023-07-05 07:13:26'),
(31, 5, NULL, NULL, 'AAAA', '200', '2023-07-04 23:23:00', 'pendiente', '2023-07-05 07:23:35', '2023-07-05 07:23:35'),
(32, 5, NULL, NULL, 'YTYTY', '200', '2023-07-04 23:25:00', 'pendiente', '2023-07-05 07:25:28', '2023-07-05 07:25:28'),
(33, 5, NULL, NULL, 'UUUUU', '200', '2023-07-04 23:25:00', 'pendiente', '2023-07-05 07:27:01', '2023-07-05 07:27:01'),
(34, 5, NULL, NULL, 'ZZZZZ', '200', '2023-07-04 23:30:00', 'pendiente', '2023-07-05 07:30:16', '2023-07-05 07:30:16'),
(35, 5, NULL, NULL, 'DFSHSDFH', '200', '2023-07-04 23:31:00', 'entregado', '2023-07-05 07:31:07', '2023-07-06 08:08:28'),
(36, 5, NULL, NULL, 'UUUUUU', '200', '2023-07-04 23:33:00', 'entregado', '2023-07-05 07:33:07', '2023-07-07 06:45:05'),
(37, 5, NULL, NULL, 'BBBBB', '200', '2023-07-04 23:35:00', 'entregado', '2023-07-05 07:35:19', '2023-07-07 06:43:35'),
(38, 5, NULL, NULL, 'BBBBB', '200', '2023-07-04 23:35:00', 'entregado', '2023-07-05 07:36:34', '2023-07-07 06:32:02'),
(39, 5, NULL, NULL, 'BBBBB', '200', '2023-07-04 23:35:00', 'enviado', '2023-07-05 07:38:04', '2023-07-07 06:26:51'),
(40, 5, NULL, NULL, 'JJJJJJJ', '200', '2023-07-04 23:35:00', 'entregado', '2023-07-05 07:40:28', '2023-07-07 06:16:20'),
(41, 5, NULL, NULL, 'Bolivar Pagador', '55', '2023-07-07 22:36:00', 'entregado', '2023-07-08 05:22:54', '2023-07-08 05:25:49'),
(42, 5, NULL, NULL, 'sdfsdfs', '20', '2023-07-07 00:31:00', 'pendiente', '2023-07-08 05:29:03', '2023-07-08 05:29:03'),
(43, 6, NULL, NULL, 'sdfsdf', '132', '2023-07-16 23:30:00', 'pendiente', '2023-07-10 06:30:39', '2023-07-10 06:30:39'),
(44, 6, NULL, NULL, 'dfgd', '26', '2023-07-12 01:39:00', 'pendiente', '2023-07-10 06:35:12', '2023-07-10 06:35:12'),
(45, 6, NULL, NULL, 'fghf', '130', '2023-07-12 00:37:00', 'pendiente', '2023-07-10 06:37:36', '2023-07-10 06:37:36'),
(46, 1, NULL, NULL, 'Bolivar', '10', '2023-07-12 02:27:00', 'entregado', '2023-07-13 07:27:48', '2023-09-19 01:05:31'),
(47, 6, NULL, NULL, 'xdgdfg', '10', '2023-08-30 22:41:00', 'pendiente', '2023-08-30 06:41:19', '2023-08-30 06:41:19'),
(48, 6, NULL, NULL, 'sdasd', '60', '2023-09-10 21:49:00', 'entregado', '2023-09-04 05:49:19', '2023-09-19 01:07:44'),
(49, 6, NULL, NULL, 'fdf', '30', '2023-09-03 22:09:00', 'enviado', '2023-09-04 06:09:15', '2023-09-19 01:06:12'),
(50, 1, NULL, NULL, 'xdfsdf', '10', '2023-09-19 15:42:00', 'pendiente', '2023-09-19 23:43:02', '2023-09-19 23:43:02'),
(51, 1, NULL, NULL, 'fasfa', '20', '2023-09-21 15:51:00', 'pendiente', '2023-09-19 23:51:04', '2023-09-19 23:51:04'),
(52, 1, NULL, NULL, 'gfg', '20', '2023-09-21 16:22:00', 'entregado', '2023-09-20 00:22:13', '2023-09-20 04:39:22'),
(53, 1, NULL, NULL, 'sadsa', '90', '2023-09-20 20:53:00', 'pendiente', '2023-09-20 04:53:05', '2023-09-20 04:53:05'),
(54, 1, NULL, NULL, 'sucre', '100', '2023-09-19 00:00:00', 'pendiente', '2023-09-20 07:42:29', '2023-09-20 07:42:29'),
(55, 1, NULL, NULL, 'Arica', '60', '2023-09-19 00:00:00', 'pendiente', '2023-09-20 07:43:56', '2023-09-20 07:43:56'),
(56, 1, NULL, NULL, 'Oblitas', '210', '2023-09-19 00:00:00', 'pendiente', '2023-09-20 07:46:49', '2023-09-20 07:46:49'),
(57, 1, NULL, NULL, 'Todo', '65', '2023-09-19 00:00:00', 'pendiente', '2023-09-20 03:52:25', '2023-09-20 03:52:25'),
(58, 1, NULL, NULL, 'klñjfalkñs', '60', '2023-09-20 00:00:00', 'pendiente', '2023-09-20 04:24:03', '2023-09-20 04:24:03'),
(59, 1, NULL, NULL, 'Bolivar 123 Pagador', '310', '2023-09-20 00:00:00', 'entregado', '2023-09-20 19:32:15', '2023-09-25 13:27:41'),
(60, 1, NULL, NULL, 'Cochabamba y Pagador', '250', '2023-09-23 00:00:00', 'entregado', '2023-09-23 23:49:05', '2023-09-25 04:31:51');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permissions`
--

DROP TABLE IF EXISTS `permissions`;
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin.categorias', 'web', '2022-06-17 04:47:55', '2022-06-17 04:47:55'),
(2, 'products.index', 'web', '2022-06-17 04:47:55', '2022-06-17 04:47:55'),
(3, 'products.create', 'web', '2022-06-17 04:47:55', '2022-06-17 04:47:55'),
(4, 'pedidos.index', 'web', '2022-06-17 04:47:55', '2022-06-17 04:47:55'),
(5, 'pedidos.update', 'web', '2022-06-17 04:47:55', '2022-06-17 04:47:55'),
(6, 'admin.users', 'web', '2022-06-17 04:47:55', '2022-06-17 04:47:55');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `brand_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double NOT NULL,
  `shipping_cost` double NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `cantidad` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `products_name_unique` (`name`),
  UNIQUE KEY `products_slug_unique` (`slug`),
  KEY `products_category_id_foreign` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `category_id`, `brand_id`, `name`, `slug`, `details`, `price`, `shipping_cost`, `description`, `image_path`, `estado`, `created_at`, `updated_at`, `cantidad`) VALUES
(1, 15, 1, 'Aceite Fino', 'aceite', 'Aceite V', 13, 0, 'Un litro aceite vegetal Fino', 'aceite.jpeg', 'disponible', '2022-06-17 04:47:55', '2023-09-25 16:35:11', 100),
(2, 13, 1, 'Pan Francés', 'frahg', 'Pan para F', 10, 0, 'Bolsa de pan Frances', 'oan.jpeg', 'disponible', '2022-06-17 04:47:55', '2023-09-25 16:34:28', 100),
(3, 19, 1, 'Jabon Bolivar', 'Bolivar', 'Jabon hoga', 4, 0, 'Jabon para el hogar', 'jabon.jpeg', 'disponible', '2022-06-17 04:47:55', '2023-09-25 16:33:33', 100),
(4, 11, 1, 'Salchichas Sophia', 'Sophia', 'Embutido', 12, 0, 'Salchichas para freír o hervir', 'salchicha.jpeg', 'disponible', '2022-06-17 04:47:55', '2023-09-25 16:29:42', 100),
(5, 12, 1, 'Manzanas', 'Fruta', 'Fruta', 10, 0, '5 unidades de manzanas', 'manzana.jpeg', 'disponible', '2022-06-17 04:47:55', '2023-09-25 16:28:20', 100),
(6, 17, 1, 'Cocacola', 'samsung-mv800', 'Soda', 5, 0, 'Vevida carbonatada azucarada', 'coca.webp', 'disponible', '2022-06-17 04:47:55', '2023-09-25 16:27:34', 90),
(7, 14, 1, 'Leche Pil', 'gr5-2017', 'Leche desl', 10, 0, 'Leche deslactosada', 'leche.jpeg', 'disponible', '2022-06-17 04:47:55', '2023-09-25 16:26:02', 100),
(8, 1, 1, 'Maquillaje Vogue', '003', 'Vogue res', 35, 0, 'Maquillaje para la cara, extra exfoliante', 'maquillage.jpeg', 'disponible', '2022-06-18 07:08:19', '2023-09-25 16:24:10', 100),
(9, 19, 1, 'Barbijos', '004', 'N95', 5, 0, 'Barbijos de bioseguridad N95', 'barbijo.jpeg', 'disponible', '2022-06-18 07:12:22', '2023-09-25 16:22:51', 100),
(10, 16, 1, 'Nuggets de Pollo', '005', 'LeBon', 30, 0, 'Nuggets precocidos congelados LeBON', 'nuggets.webp', 'disponible', '2022-06-18 07:14:04', '2023-09-25 16:09:11', 100),
(11, 11, 1, 'Pechuga de pollo', '001', 'Pozo', 25, 0, 'Medio quilo de pechuga de pollo rebanada', 'sofia.jpeg', 'disponible', '2022-06-18 07:15:32', '2023-09-25 16:06:17', 100),
(12, 13, 1, 'Masticables Barrilete', '002', 'Barrilete', 40, 0, 'Bolsa de masticables barrilete', 'barrilete.jpeg', 'disponible', '2022-06-18 07:16:45', '2023-09-25 16:21:10', 100),
(16, 13, 1, 'Paneton Danafria', '007', 'Danafria', 25, 0, 'Bollo hecho con una masa de tipo brioche, relleno con pasas y frutas confitadas.', 'paneton.jpeg', 'disponible', '2022-06-18 07:37:08', '2023-09-25 16:20:16', 100),
(17, 13, 1, 'Galletas surtidas Ferrari Ghezzi', '010', 'Ferrari', 38, 0, 'Caja de galletas surtidas', 'galletas.jpg', 'disponible', '2022-06-18 07:42:28', '2023-09-25 16:11:41', 100),
(18, 15, 1, 'Pasta Don Vittorio', 'p00111', 'Vitorio', 15, 0, 'Fideo para spaghetti', 'pasta.jpeg', 'disponible', '2022-06-18 07:44:45', '2023-09-25 16:07:51', 100),
(19, 18, 1, 'Tortilla Chips', 't00001', 'Nature', 15, 0, 'Frituras, nachos de maiz con sabor a pizza', 'tortilla.jpeg', 'disponible', '2022-06-18 07:46:44', '2023-09-25 15:54:35', 100),
(22, 14, 1, 'Nescafe', 'N00001', 'Nescafe', 35, 0, 'Café para diluir en agua', 'Nescafe-PNG-Photos.png', 'disponible', '2022-06-18 07:48:45', '2023-09-25 16:11:11', 100),
(23, 18, 1, 'Papas Pringles Mediano', '015', 'papas', 10, 0, 'Frituras saladas', 'pringles.jpeg', 'disponible', '2022-06-18 07:51:03', '2023-09-20 19:27:34', 100),
(24, 20, 1, 'Poco yo Perfume', 'j0001', 'Matel', 26, 0, 'Carrito de juguete', 'pocoyo.jpg', 'disponible', '2022-06-18 18:37:54', '2023-09-25 15:50:04', 96),
(25, 1, 1, 'Labial L’bel', 'l0001', 'L’bel', 20, 0, 'Labial para anti agua y cuidado con la piel', 'labial.jpg', 'disponible', '2022-06-19 23:35:28', '2023-09-25 15:46:25', 100),
(28, 23, 1, 'Vino Doña Vita', 'v002', 'Vino Tarij', 45, 0, 'Cino tinto Patero de Tarija', 'vino.jpeg', 'disponible', '2022-06-29 01:39:57', '2023-09-20 19:25:24', 100),
(29, 13, 1, 'Pan Dulce Valente', 'PAN-001', 'Valente', 10, 0, 'Pan dulce de Lui elaborado a base de nutrientes y chip de chocolate', 'pandulce.jpeg', 'disponible', '2023-07-10 07:10:41', '2023-09-25 16:25:09', 100),
(30, 17, 1, 'Agua Vital 500 ml', 'Agua Vital 500 ml', 'Agua Vital', 10, 0, 'Agua Vital 500 ml', 'agua.jpg', 'disponible', '2023-09-04 06:39:38', '2023-09-20 19:32:16', 100),
(31, 16, 1, 'Chocolate Harasic', 'Chocolate Harasic', 'Chocolate', 24, 0, 'Chocolate Harasic', 'harasic.jpg', 'disponible', '2023-09-20 03:58:36', '2023-09-25 13:05:43', 100);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'web', '2022-06-17 04:47:55', '2022-06-17 04:47:55'),
(2, 'Comprador', 'web', '2022-06-17 04:47:55', '2022-06-17 04:47:55');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role_has_permissions`
--

DROP TABLE IF EXISTS `role_has_permissions`;
CREATE TABLE IF NOT EXISTS `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ci` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefono` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `ci`, `telefono`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'JOSE PABON', 'josepabon@gmail.com', '$2y$10$zChfIsMVx//K541fao4Gl.3CyQfwc3ZOBa/O/l4kDU4wzwiZ3TWuy', '5735114', '65949863', NULL, '2022-06-17 04:47:55', '2022-06-19 23:59:19'),
(2, 'Roxana Guevara', 'ejemplo1@gmail.com', '$2y$10$.cEH30MmyDILsrAFhvf93.VxsMUgwIN3RwNqoOtHKDcJxB8A.y.lG', '5735116', '65949845', NULL, '2022-06-17 19:12:10', '2023-09-23 23:51:01'),
(3, 'Federico Torres', 'ejemplo2@gmail.com', '$2y$10$ME7dtw8DRqIDBcKE/ZQvNef2AJ/PrsekgQ8oGOFF3mOum3LKUjXaK', '5735115', '7865165456', NULL, '2022-06-19 23:20:54', '2023-09-23 23:51:33'),
(4, 'Juan Perez', 'juanp@gmail.com', '$2y$10$Jq2FWYxIntygNGFRroAykuraRCzedhVuc2Vf31zfKzJvznsRMiR4m', '5735185', '7865165455', NULL, '2022-06-29 01:35:25', '2023-09-25 01:21:11'),
(5, 'Alberto Fernandez', 'alberto@gmail.com', '$2y$10$S2i0TRksmXFQaOEW4zPSg.xY1ZGNqZEGMKlzoij0EYXhkbZVuNMU2', '121312312', '43534534', NULL, '2023-06-20 06:57:00', '2023-09-22 22:08:09'),
(6, 'Ana Maria Jara', 'ana@gmail.com', '$2y$10$AqY01U//EQoQUHFfV7zyQOew5remG3GGXKxOc/Q.eo3A5HZWYxexy', '123456', '5234567', NULL, '2023-06-27 07:01:15', '2023-09-23 23:52:37');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalle_pedido`
--
ALTER TABLE `detalle_pedido`
  ADD CONSTRAINT `detalle_pedido_pedido_id_foreign` FOREIGN KEY (`pedido_id`) REFERENCES `pedido` (`id`),
  ADD CONSTRAINT `detalle_pedido_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Filtros para la tabla `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `pedido_users_id_foreign` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categoria` (`id`);

--
-- Filtros para la tabla `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
