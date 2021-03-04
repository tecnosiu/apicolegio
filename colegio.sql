-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-03-2021 a las 23:44:49
-- Versión del servidor: 10.4.17-MariaDB
-- Versión de PHP: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `colegio`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_03_04_054752_create_estudiantes_table', 2),
(5, '2021_03_04_054936_create_notas_table', 2),
(6, '2021_03_04_112456_create_students_table', 3),
(7, '2021_03_04_155013_notas_migration', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notas`
--

CREATE TABLE `notas` (
  `id` int(10) UNSIGNED NOT NULL,
  `grado` bigint(20) NOT NULL,
  `seccion` char(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `asignatura` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profesor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nota` bigint(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `student_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `notas`
--

INSERT INTO `notas` (`id`, `grado`, `seccion`, `asignatura`, `profesor`, `nota`, `created_at`, `updated_at`, `student_id`) VALUES
(2, 2, 'B', 'Historia', 'Gabriela Diaz', 19, '2021-03-04 16:22:22', '2021-03-04 16:22:22', 2),
(6, 1, 'B', 'Fisica', 'Eugenio Ferrer', 20, '2021-03-04 21:26:41', '2021-03-04 21:26:41', 1),
(7, 2, 'B', 'Fisica', 'Eugenio Ferrer', 20, '2021-03-04 21:26:45', '2021-03-04 21:26:45', 2),
(8, 1, 'B', 'Fisica', 'Eugenio Ferrer', 20, '2021-03-04 21:26:47', '2021-03-04 21:26:47', 1),
(9, 1, 'B', 'Matematica', 'Eugenio Ferrer', 14, '2021-03-04 21:26:48', '2021-03-04 21:26:48', 1),
(10, 1, 'B', 'Ingles', 'Eugenio Ferrer', 20, '2021-03-04 21:26:50', '2021-03-04 21:26:50', 1),
(11, 2, 'B', 'Geografia', 'Eugenio Ferrer', 15, '2021-03-04 21:26:51', '2021-03-04 21:26:51', 1),
(12, 2, 'B', 'Geologia', 'Eugenio Ferrer', 20, '2021-03-04 21:26:53', '2021-03-04 21:26:53', 1),
(13, 3, 'B', 'Frances', 'Eugenio Ferrer', 20, '2021-03-04 21:26:54', '2021-03-04 21:26:54', 1),
(14, 3, 'B', 'Quimica', 'Eugenio Ferrer', 20, '2021-03-04 21:26:55', '2021-03-04 21:26:55', 1),
(15, 3, 'B', 'Teologia', 'Eugenio Ferrer', 18, '2021-03-04 21:26:56', '2021-03-04 21:26:56', 1),
(16, 4, 'B', 'Dibujo', 'Eugenio Ferrer', 20, '2021-03-04 21:26:57', '2021-03-04 21:26:57', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `curso` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `students`
--

INSERT INTO `students` (`id`, `nombre`, `curso`, `created_at`, `updated_at`) VALUES
(1, 'Armando Perez', 'Primero', '2021-03-04 20:54:39', '2021-03-04 21:52:48'),
(2, 'Daniel Contreras', 'Primero', '2021-03-04 19:08:33', '2021-03-04 19:08:33'),
(4, 'Ismael Paz', 'Primero', '2021-03-04 19:51:10', '2021-03-04 19:51:10'),
(5, 'Manuela Rodriguez', 'Primero', '2021-03-04 21:09:25', '2021-03-04 21:09:25'),
(6, 'Ana Maria Bencomo', 'Primero', '2021-03-05 00:16:13', '2021-03-05 00:16:13'),
(7, 'Diego Movilla', 'Primero', '2021-03-04 20:54:39', NULL),
(8, 'Carlos Contreras', 'Primero', '2021-03-04 20:54:39', NULL),
(9, 'Isabel Montoya', 'Primero', '2021-03-04 20:54:39', NULL),
(10, 'Ana Maria Bencomo', 'Primero', '2021-03-05 01:17:46', '2021-03-05 01:17:46'),
(11, 'Ana Julia Bencomo', 'segundo', '2021-03-05 01:19:52', '2021-03-05 01:19:52'),
(12, 'Ana Isabel Bencomo', 'segundo', '2021-03-05 01:21:06', '2021-03-05 01:21:06'),
(13, 'Maria Bencomo', 'segundo', '2021-03-05 01:24:03', '2021-03-05 01:24:03'),
(14, 'Carlos Diaz', 'Segundo', '2021-03-05 02:12:49', '2021-03-05 02:12:49');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `notas`
--
ALTER TABLE `notas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notas_student_id_foreign` (`student_id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `students`
--
ALTER TABLE `students`
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
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `notas`
--
ALTER TABLE `notas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `notas`
--
ALTER TABLE `notas`
  ADD CONSTRAINT `notas_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
