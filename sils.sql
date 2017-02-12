-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-02-2017 a las 06:05:59
-- Versión del servidor: 10.1.19-MariaDB
-- Versión de PHP: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sils`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clients_canaltv`
--

CREATE TABLE `clients_canaltv` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre_empresa` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre_encargado` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `direccion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefono` int(11) NOT NULL,
  `correo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clients_diariopiragua`
--

CREATE TABLE `clients_diariopiragua` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre_empresa` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre_encargado` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `direccion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefono` int(11) NOT NULL,
  `correo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `clients_diariopiragua`
--

INSERT INTO `clients_diariopiragua` (`id`, `nombre_empresa`, `nombre_encargado`, `direccion`, `telefono`, `correo`, `created_at`, `updated_at`) VALUES
(1, 'Tienda la abejita', 'Facundo Diaz', 'Cl. 9b Sur #79c Barrio Bajo Blanco', 7738213, 'tiendalabejita@gmail.com', '2017-02-12 10:03:49', '2017-02-12 10:03:49');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clients_lapurast`
--

CREATE TABLE `clients_lapurast` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre_empresa` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre_encargado` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `direccion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefono` int(11) NOT NULL,
  `correo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clients_libertadst`
--

CREATE TABLE `clients_libertadst` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre_empresa` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre_encargado` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `direccion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefono` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `correo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `clients_libertadst`
--

INSERT INTO `clients_libertadst` (`id`, `nombre_empresa`, `nombre_encargado`, `direccion`, `telefono`, `correo`, `created_at`, `updated_at`) VALUES
(1, 'mobiliarios famarsa', 'Fabriciano Martinez Muentes', 'Cr 4 #22-80', '7782425', 'mobiliariosfamarsa@gmail.com', '2017-02-12 09:45:08', '2017-02-12 09:45:08');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clients_piraguast`
--

CREATE TABLE `clients_piraguast` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre_empresa` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre_encargado` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `direccion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefono` int(11) NOT NULL,
  `correo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_02_09_223854_create_tipo_user_table', 1),
(4, '2017_02_12_041146_create_table_clients_libertadst', 1),
(5, '2017_02_12_041644_create_table_clients_piraguast', 1),
(6, '2017_02_12_041654_create_table_clients_diariopiragua', 1),
(7, '2017_02_12_041708_create_table_clients_lapurast', 1),
(8, '2017_02_12_041720_create_table_clients_canaltv', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipouser`
--

CREATE TABLE `tipouser` (
  `id` int(10) UNSIGNED NOT NULL,
  `tipo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tipouser`
--

INSERT INTO `tipouser` (`id`, `tipo`, `created_at`, `updated_at`) VALUES
(1, 'Diario Piragua', '2017-02-10 10:00:00', NULL),
(2, 'Libretad St', NULL, NULL),
(3, 'La Pura St', NULL, NULL),
(4, 'Piragua St', NULL, NULL),
(5, 'Canal Tv', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo` int(11) NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `tipo`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Eric Martinez Muentes', 1, 'ejmm10.19@gmail.com', '$2y$10$fQ9RMUNbyhbXH0jjX.KBReCzK5UGHLZ.a7Uq2r0TqzNoNKrXWn4L2', 'OEcUPsHrxEbHP3TUklMJt8ShIHnmobZL0Ywddm9UeoVmSWUVn45c0cdq8WAX', '2017-02-11 03:33:39', '2017-02-11 03:33:39'),
(2, 'Maria Ospina', 2, 'maoz06026@gmail.com', '$2y$10$jfV0Eqm8mPAUtSQ7GFNEwOYtLSgCvQOd8qrjvUUZN0v/rxrC9pODe', '7XihBhFd2HqNGrgIeMWVSBzNX3xWMPeTHWN3En6EZOe33cVbaDwhFATv5vON', '2017-02-11 07:59:50', '2017-02-11 07:59:50');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clients_canaltv`
--
ALTER TABLE `clients_canaltv`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clients_diariopiragua`
--
ALTER TABLE `clients_diariopiragua`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clients_lapurast`
--
ALTER TABLE `clients_lapurast`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clients_libertadst`
--
ALTER TABLE `clients_libertadst`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clients_piraguast`
--
ALTER TABLE `clients_piraguast`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indices de la tabla `tipouser`
--
ALTER TABLE `tipouser`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clients_canaltv`
--
ALTER TABLE `clients_canaltv`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `clients_diariopiragua`
--
ALTER TABLE `clients_diariopiragua`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `clients_lapurast`
--
ALTER TABLE `clients_lapurast`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `clients_libertadst`
--
ALTER TABLE `clients_libertadst`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `clients_piraguast`
--
ALTER TABLE `clients_piraguast`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `tipouser`
--
ALTER TABLE `tipouser`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
