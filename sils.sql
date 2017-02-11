-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-02-2017 a las 16:00:12
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
(4, '2014_10_12_000000_create_users_table', 1),
(5, '2014_10_12_100000_create_password_resets_table', 1),
(6, '2017_02_09_223854_create_tipo_user_table', 1),
(7, '2017_02_11_030103_create_table_usuarioslibertadst', 2);

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
(1, 'Diario Piragua', '2017-02-10 05:00:00', NULL),
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
(1, 'Eric Martinez Muentes', 1, 'ejmm10.19@gmail.com', '$2y$10$fQ9RMUNbyhbXH0jjX.KBReCzK5UGHLZ.a7Uq2r0TqzNoNKrXWn4L2', 'q8ss4cAdUEQf14wAxI3fHIa8sfpcS9L3fgOEMEmiDntGO0RRmp4xmPTj0lz2', '2017-02-10 22:33:39', '2017-02-10 22:33:39'),
(2, 'Maria Ospina', 2, 'maoz06026@gmail.com', '$2y$10$jfV0Eqm8mPAUtSQ7GFNEwOYtLSgCvQOd8qrjvUUZN0v/rxrC9pODe', 'v9LUcihZDxnaQsBjAUdRIYdfORsGqdJcmNxhhiSGbDOA61z6SjRvzWHa3n3m', '2017-02-11 02:59:50', '2017-02-11 02:59:50');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `userslibertad`
--

CREATE TABLE `userslibertad` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellidos` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `userslibertad`
--

INSERT INTO `userslibertad` (`id`, `name`, `apellidos`, `email`, `created_at`, `updated_at`) VALUES
(4, 'maria', 'ospina', 'maoz06026@gmail.com', '2017-02-11 10:03:52', '2017-02-11 10:03:52'),
(5, 'sair', 'sanchez', 'sairsanchez@gmail.com', '2017-02-11 10:04:20', '2017-02-11 10:04:20'),
(6, 'Valerie', 'Martinez Muentes', 'Valerie@gmail.com', '2017-02-11 10:14:09', '2017-02-11 10:14:09');

--
-- Índices para tablas volcadas
--

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
-- Indices de la tabla `userslibertad`
--
ALTER TABLE `userslibertad`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `userslibertad_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
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
--
-- AUTO_INCREMENT de la tabla `userslibertad`
--
ALTER TABLE `userslibertad`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
