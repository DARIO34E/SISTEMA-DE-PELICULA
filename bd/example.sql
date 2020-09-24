-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-09-2020 a las 13:12:04
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `example`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id`, `name`, `status_id`, `created_at`, `updated_at`) VALUES
(1, 'accion', 1, '2020-08-21 23:18:10', '2020-08-21 23:18:10'),
(2, 'drama', 1, '2020-08-21 23:18:10', '2020-08-21 23:18:10'),
(3, 'musica', 1, '2020-08-21 23:18:10', '2020-08-21 23:18:10'),
(4, 'Romance', 1, '2020-08-21 23:18:10', '2020-08-21 23:18:10'),
(5, 'terror', 1, '2020-08-21 23:18:10', '2020-08-21 23:18:10'),
(6, 'anime', 1, '2020-08-21 23:18:10', '2020-08-21 23:18:10'),
(7, 'Adulto', 1, '2020-08-21 23:18:10', '2020-08-21 23:18:10'),
(8, 'fantacia', 1, '2020-08-21 23:18:10', '2020-08-21 23:18:10'),
(9, 'ciencia ficción', 1, '2020-08-21 23:18:10', '2020-08-21 23:18:10'),
(10, 'guerra o bélicas.', 1, '2020-08-21 23:18:10', '2020-08-21 23:18:10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `category_movie`
--

CREATE TABLE `category_movie` (
  `id` int(10) UNSIGNED NOT NULL,
  `movie_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `category_movie`
--

INSERT INTO `category_movie` (`id`, `movie_id`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 4, 4, NULL, NULL),
(2, 4, 5, NULL, NULL),
(3, 1, 1, NULL, NULL),
(4, 1, 9, NULL, NULL),
(5, 1, 10, NULL, NULL),
(6, 7, 8, NULL, NULL),
(7, 11, 6, NULL, NULL),
(8, 11, 10, NULL, NULL),
(9, 11, 2, NULL, NULL),
(10, 12, 9, NULL, NULL),
(11, 12, 6, NULL, NULL),
(12, 16, 3, NULL, NULL),
(13, 17, 10, NULL, NULL),
(14, 17, 8, NULL, NULL),
(15, 18, 6, NULL, NULL),
(16, 18, 9, NULL, NULL),
(17, 19, 8, NULL, NULL),
(18, 19, 10, NULL, NULL),
(19, 20, 9, NULL, NULL),
(20, 21, 8, NULL, NULL),
(21, 22, 7, NULL, NULL),
(22, 23, 2, NULL, NULL),
(23, 24, 2, NULL, NULL),
(24, 25, 9, NULL, NULL),
(25, 26, 10, NULL, NULL),
(26, 27, 10, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `movies`
--

CREATE TABLE `movies` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `status_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `movies`
--

INSERT INTO `movies` (`id`, `name`, `description`, `user_id`, `status_id`, `created_at`, `updated_at`) VALUES
(1, 'tu', 'Mouse only growled in reply. \'Idiot!\' said the Mouse. \'--I proceed. \"Edwin and Morcar, the earls of Mercia and Northumbria--\"\' \'Ugh!\' said the Gryphon. \'We can do without lobsters, you know. Which.', 2, 2, '2020-08-21 23:18:10', '2020-08-21 23:18:10'),
(4, 'torre', 'I\'ve finished.\' So they began moving about again, and we put a stop to this,\' she said to Alice; and Alice looked up, and there was no more of the ground, Alice soon came to ME, and told me he was.', 3, 2, '2020-08-21 23:18:10', '2020-08-21 23:18:10'),
(5, 'pedro', 'Mouse, who was a little now and then dipped suddenly down, so suddenly that Alice could see it trot away quietly into the book her sister on the bank, and of having nothing to what I see\"!\' \'You.', 4, 2, '2020-08-21 23:18:10', '2020-08-21 23:18:10'),
(7, 'Machine Operator', 'Cat. \'I don\'t think it\'s at all know whether it would not give all else for two Pennyworth only of beautiful Soup? Beau--ootiful Soo--oop! Soo--oop of the jury consider their verdict,\' the King was.', 10, 2, '2020-08-21 23:18:10', '2020-08-21 23:18:10'),
(8, 'Talent Director', 'Mock Turtle to the other, trying every door, she ran off at once to eat her up in a low trembling voice, \'Let us get to twenty at that rate! However, the Multiplication Table doesn\'t signify: let\'s.', 5, 2, '2020-08-21 23:18:10', '2020-08-21 23:18:10'),
(9, 'Order Filler', 'Dormouse!\' And they pinched it on both sides of it, and they repeated their arguments to her, one on each side, and opened their eyes and mouths so VERY much out of the Lobster Quadrille, that she.', 3, 2, '2020-08-21 23:18:10', '2020-08-21 23:18:10'),
(11, 'lanca', 'ewrfdewgfdssd', 3, 2, NULL, NULL),
(12, 'Mortal Kombat Legends: La venganza de Scorpion', 'Los campeones de los distintos reinos se enfrentan en un brutal combate hasta la muerte, en el que se determinará la suerte del futuro de la Tierra.', 12, 1, NULL, NULL),
(16, 'Legends: ', 'ssss', 12, 1, NULL, NULL),
(17, ': La venganza ', 'vbvc', 12, 1, NULL, NULL),
(18, ' Scorpion', 'nmn', 12, 1, NULL, NULL),
(19, 'diablo', 'mnbgm', 12, 1, NULL, NULL),
(20, 'bestia', 'dcd', 12, 1, NULL, NULL),
(21, 'Mortal Kombat ', 'gmhg', 7, 1, NULL, NULL),
(22, 'Dario', 'sdxada', 10, 2, NULL, NULL),
(23, 'cambios', 'Una joven de 18 años logra casi la perfección gracias a su arduo trabajo. Ella promete transformar su torpeza a través de la danza y refinar sus habilidades hasta llegar a la competencia', 12, 1, NULL, NULL),
(24, 'camino', 'Una joven de 18 años logra casi la perfección gracias a su arduo trabajo. Ella promete transformar su torpeza a través de la danza y refinar sus habilidades hasta llegar a la competencia', 2, 1, NULL, NULL),
(25, 'basta', 'Una joven de 18 años logra casi la perfección gracias a su arduo trabajo. Ella promete transformar su torpeza a través de la danza y refinar sus habilidades hasta llegar a la competencia', 2, 1, NULL, NULL),
(26, 'loco', 'Una joven de 18 años logra casi la perfección gracias a su arduo trabajo. Ella promete transformar su torpeza a través de la danza y refinar sus habilidades hasta llegar a la competencia', 3, 1, NULL, NULL),
(27, 'luego', 'Una joven de 18 años logra casi la perfección gracias a su arduo trabajo. Ella promete transformar su torpeza a través de la danza y refinar sus habilidades hasta llegar a la competencia', 3, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `movie_rental`
--

CREATE TABLE `movie_rental` (
  `id` int(10) UNSIGNED NOT NULL,
  `movie_id` int(10) UNSIGNED NOT NULL,
  `rental_id` int(10) UNSIGNED NOT NULL,
  `price` double NOT NULL,
  `observations` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `movie_rental`
--

INSERT INTO `movie_rental` (`id`, `movie_id`, `rental_id`, `price`, `observations`, `created_at`, `updated_at`) VALUES
(1, 12, 2, 2000, 'HGDFHHGC', '2020-09-15 05:28:07', '2020-09-26 05:28:07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `renta`
--

CREATE TABLE `renta` (
  `pelicula` varchar(25) NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `renta`
--

INSERT INTO `renta` (`pelicula`, `fecha_inicio`, `fecha_fin`) VALUES
('sueño', '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rentals`
--

CREATE TABLE `rentals` (
  `id` int(10) UNSIGNED NOT NULL,
  `start_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `end_date` timestamp NULL DEFAULT NULL,
  `total` double DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `status_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `rentals`
--

INSERT INTO `rentals` (`id`, `start_date`, `end_date`, `total`, `user_id`, `status_id`, `created_at`, `updated_at`) VALUES
(1, '1996-01-30 04:33:22', '2012-03-15 21:49:07', 45260262.33012, 7, 1, '2020-08-21 23:18:10', '2020-08-21 23:18:10'),
(2, '1970-08-13 11:30:34', '1986-12-07 12:05:55', 187906616.79467, 5, 1, '2020-08-21 23:18:11', '2020-08-21 23:18:11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `status_id`, `created_at`, `updated_at`) VALUES
(1, 'Administrador', 1, '2020-08-21 23:18:08', '2020-08-21 23:18:08'),
(2, 'Empleado', 1, '2020-08-21 23:18:08', '2020-08-21 23:18:08'),
(3, 'Cliente', 1, '2020-08-21 23:18:08', '2020-08-21 23:18:08');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `statuses`
--

CREATE TABLE `statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_status_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `statuses`
--

INSERT INTO `statuses` (`id`, `name`, `type_status_id`, `created_at`, `updated_at`) VALUES
(1, 'Activo', 1, '2020-08-21 23:18:08', '2020-08-21 23:18:08'),
(2, 'Inactivo', 1, '2020-08-21 23:18:08', '2020-08-21 23:18:08'),
(3, 'Bloqueado', 2, '2020-08-22 01:04:59', '2020-08-22 01:04:59'),
(4, 'Alquilado', 3, '2020-08-22 01:05:19', '2020-08-22 01:05:19'),
(5, 'Disponible', 3, '2020-08-22 01:05:19', '2020-08-22 01:05:39');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `type_statuses`
--

CREATE TABLE `type_statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `type_statuses`
--

INSERT INTO `type_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'General', '2020-08-21 23:18:08', '2020-08-21 23:18:08'),
(2, 'Usuario', '2020-08-21 23:18:08', '2020-08-21 23:18:08'),
(3, 'Peliculas', '2020-08-21 23:18:08', '2020-08-21 23:18:08');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `status_id`, `role_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'cambo', 'lueilwitzrsfdygrfsdg.kaia@gaylord.biz', NULL, '$2y$10$qW4F92em18XBx4kzwg6lI.JIUnttGnR.6p1vLCJuN2LT5pe4Kj5Jm', 2, 3, NULL, '2020-08-21 23:18:09', '2020-08-21 23:21:42'),
(3, 'Cruz Stamm II', 'dewayne49@gmail.com', NULL, '$2y$10$sLadSaNraZswCJ.KAfPjZeKPaxlR6v5hLw9TeELNE/KhL7vFHJccG', 1, 1, NULL, '2020-08-21 23:18:09', '2020-08-21 23:18:09'),
(4, 'Lorenzo Fay', 'jayme63@gmail.com', NULL, '$2y$10$yA3DzcGLioM3NEZsoQPXWurZtt/lMpsrj98/zJT9ffyBbjU1QGZTS', 2, 2, NULL, '2020-08-21 23:18:09', '2020-08-21 23:21:51'),
(5, 'Otho Greenholt', 'jaskolski.estrella@hotmail.com', NULL, '$2y$10$GPQTSFqd1deD2QykAb9FVuhLWFScKEjQJ.Pl6m6nJlvxYaYFtCO/O', 1, 1, NULL, '2020-08-21 23:18:09', '2020-08-21 23:18:09'),
(7, 'Dr. Tyree Feeney PhD', 'kaci.franecki@gmail.com', NULL, '$2y$10$A3u0S2XdbsfUuTJnMEpzSeX.Q2OulHmLq5.VXyv1oOdgW1jEt7WMi', 1, 1, NULL, '2020-08-21 23:18:09', '2020-08-21 23:18:09'),
(10, 'Mozell Ward', 'rherman@yahoo.com', NULL, '$2y$10$Vp4iihfw1bmjwo8B4L9ZFul3M6jBYHVxAAdVjq9Y./GiWlDIww3gO', 1, 3, NULL, '2020-08-21 23:18:10', '2020-08-22 00:27:03'),
(12, 'Pedro Perez', 'pedro@pedro.com', NULL, '$2y$10$gdASKajPd4MV.LB5A3l/UuqtiD4gVIyWgGgjmQVlWhbbKZfF4f4jG', 1, 2, NULL, '2020-08-21 23:48:05', '2020-08-21 23:48:05');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_status_id_foreign` (`status_id`);

--
-- Indices de la tabla `category_movie`
--
ALTER TABLE `category_movie`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_movie_movie_id_foreign` (`movie_id`),
  ADD KEY `category_movie_category_id_foreign` (`category_id`);

--
-- Indices de la tabla `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `movies_user_id_foreign` (`user_id`),
  ADD KEY `movies_status_id_foreign` (`status_id`);

--
-- Indices de la tabla `movie_rental`
--
ALTER TABLE `movie_rental`
  ADD PRIMARY KEY (`id`),
  ADD KEY `movie_rental_movie_id_foreign` (`movie_id`),
  ADD KEY `movie_rental_rental_id_foreign` (`rental_id`);

--
-- Indices de la tabla `rentals`
--
ALTER TABLE `rentals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rentals_user_id_foreign` (`user_id`),
  ADD KEY `rentals_status_id_foreign` (`status_id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `roles_status_id_foreign` (`status_id`);

--
-- Indices de la tabla `statuses`
--
ALTER TABLE `statuses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `statuses_type_status_id_foreign` (`type_status_id`);

--
-- Indices de la tabla `type_statuses`
--
ALTER TABLE `type_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_status_id_foreign` (`status_id`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `category_movie`
--
ALTER TABLE `category_movie`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `movie_rental`
--
ALTER TABLE `movie_rental`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `rentals`
--
ALTER TABLE `rentals`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `statuses`
--
ALTER TABLE `statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `type_statuses`
--
ALTER TABLE `type_statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `category_movie`
--
ALTER TABLE `category_movie`
  ADD CONSTRAINT `category_movie_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `category_movie_movie_id_foreign` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `movies`
--
ALTER TABLE `movies`
  ADD CONSTRAINT `movies_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `movies_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `movie_rental`
--
ALTER TABLE `movie_rental`
  ADD CONSTRAINT `movie_rental_movie_id_foreign` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `movie_rental_rental_id_foreign` FOREIGN KEY (`rental_id`) REFERENCES `rentals` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `rentals`
--
ALTER TABLE `rentals`
  ADD CONSTRAINT `rentals_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `rentals_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `roles`
--
ALTER TABLE `roles`
  ADD CONSTRAINT `roles_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `statuses`
--
ALTER TABLE `statuses`
  ADD CONSTRAINT `statuses_type_status_id_foreign` FOREIGN KEY (`type_status_id`) REFERENCES `type_statuses` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `users_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
