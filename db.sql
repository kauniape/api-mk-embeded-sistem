-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 29 Okt 2025 pada 11.51
-- Versi server: 8.4.3
-- Versi PHP: 8.3.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smart_weather`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `weather_data`
--

CREATE TABLE `weather_data` (
  `id` int NOT NULL,
  `station_id` int NOT NULL,
  `temperature` decimal(5,2) NOT NULL,
  `humidity` decimal(5,2) NOT NULL,
  `rain_status` varchar(50) NOT NULL,
  `wind_speed` decimal(5,2) NOT NULL,
  `light_intensity` varchar(50) NOT NULL,
  `recorded_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `weather_data`
--

INSERT INTO `weather_data` (`id`, `station_id`, `temperature`, `humidity`, `rain_status`, `wind_speed`, `light_intensity`, `recorded_at`) VALUES
(1, 1, 28.50, 65.20, 'Cerah', 15.30, 'Tinggi', '2025-10-26 07:35:58'),
(2, 2, 27.80, 70.10, 'Hujan Ringan', 12.70, 'Sedang', '2025-10-26 07:35:58'),
(3, 3, 29.20, 60.80, 'Cerah', 18.40, 'Tinggi', '2025-10-26 07:35:58'),
(4, 4, 26.90, 75.30, 'Mendung', 10.20, 'Rendah', '2025-10-26 07:35:58'),
(5, 5, 30.10, 55.70, 'Cerah', 20.50, 'Tinggi', '2025-10-26 07:35:58'),
(6, 1, 28.50, 65.20, 'Cerah', 15.30, 'Tinggi', '2025-10-25 12:44:17'),
(7, 1, 27.80, 68.10, 'Cerah', 14.70, 'Tinggi', '2025-10-25 13:44:17'),
(8, 1, 29.20, 62.80, 'Cerah', 16.40, 'Tinggi', '2025-10-25 14:44:17'),
(9, 1, 26.90, 72.30, 'Hujan Ringan', 12.10, 'Sedang', '2025-10-25 15:44:17'),
(10, 1, 30.10, 58.70, 'Cerah', 18.50, 'Tinggi', '2025-10-25 16:44:17'),
(11, 1, 27.40, 69.80, 'Mendung', 13.20, 'Sedang', '2025-10-25 17:44:17'),
(12, 1, 28.90, 63.50, 'Cerah', 15.80, 'Tinggi', '2025-10-25 18:44:17'),
(13, 1, 29.60, 61.20, 'Cerah', 17.20, 'Tinggi', '2025-10-25 19:44:17'),
(14, 1, 26.70, 73.90, 'Hujan Ringan', 11.50, 'Rendah', '2025-10-25 20:44:17'),
(15, 1, 31.20, 56.40, 'Cerah', 19.80, 'Tinggi', '2025-10-25 21:44:17'),
(16, 1, 28.10, 66.70, 'Cerah', 14.90, 'Tinggi', '2025-10-25 22:44:17'),
(17, 1, 27.30, 70.50, 'Mendung', 12.80, 'Sedang', '2025-10-25 23:44:17'),
(18, 1, 29.80, 59.80, 'Cerah', 16.90, 'Tinggi', '2025-10-26 00:44:17'),
(19, 1, 30.50, 57.10, 'Cerah', 18.20, 'Tinggi', '2025-10-26 01:44:17'),
(20, 1, 27.60, 71.40, 'Hujan Ringan', 13.50, 'Sedang', '2025-10-26 02:44:17'),
(21, 1, 28.70, 64.90, 'Cerah', 15.60, 'Tinggi', '2025-10-26 03:44:17'),
(22, 1, 29.30, 62.10, 'Cerah', 16.70, 'Tinggi', '2025-10-26 04:44:17'),
(23, 1, 26.80, 74.20, 'Hujan', 10.90, 'Rendah', '2025-10-26 05:44:17'),
(24, 1, 30.80, 55.60, 'Cerah', 19.10, 'Tinggi', '2025-10-26 06:44:17'),
(25, 1, 28.40, 65.80, 'Cerah', 15.20, 'Tinggi', '2025-10-26 07:44:17'),
(26, 2, 27.80, 70.10, 'Hujan Ringan', 12.70, 'Sedang', '2025-10-25 12:44:17'),
(27, 2, 28.20, 67.80, 'Mendung', 13.90, 'Sedang', '2025-10-25 13:44:17'),
(28, 2, 26.90, 73.40, 'Hujan Ringan', 11.20, 'Rendah', '2025-10-25 14:44:17'),
(29, 2, 29.10, 63.70, 'Cerah', 16.10, 'Tinggi', '2025-10-25 15:44:17'),
(30, 2, 27.50, 71.20, 'Hujan Ringan', 12.40, 'Sedang', '2025-10-25 16:44:17'),
(31, 2, 28.70, 66.90, 'Mendung', 14.80, 'Sedang', '2025-10-25 17:44:17'),
(32, 2, 26.40, 75.80, 'Hujan', 9.70, 'Rendah', '2025-10-25 18:44:17'),
(33, 2, 30.20, 59.30, 'Cerah', 17.90, 'Tinggi', '2025-10-25 19:44:17'),
(34, 2, 27.90, 69.60, 'Hujan Ringan', 13.10, 'Sedang', '2025-10-25 20:44:17'),
(35, 2, 28.40, 65.80, 'Cerah', 15.20, 'Tinggi', '2025-10-25 21:44:17'),
(36, 2, 29.60, 61.50, 'Cerah', 16.80, 'Tinggi', '2025-10-25 22:44:17'),
(37, 2, 27.10, 72.70, 'Mendung', 11.90, 'Sedang', '2025-10-25 23:44:17'),
(38, 2, 28.80, 64.20, 'Cerah', 15.50, 'Tinggi', '2025-10-26 00:44:17'),
(39, 2, 26.70, 74.90, 'Hujan Ringan', 10.80, 'Rendah', '2025-10-26 01:44:17'),
(40, 2, 29.90, 60.10, 'Cerah', 17.20, 'Tinggi', '2025-10-26 02:44:17'),
(41, 2, 27.60, 70.80, 'Hujan Ringan', 12.90, 'Sedang', '2025-10-26 03:44:17'),
(42, 2, 28.30, 67.10, 'Mendung', 14.20, 'Sedang', '2025-10-26 04:44:17'),
(43, 2, 30.50, 57.90, 'Cerah', 18.40, 'Tinggi', '2025-10-26 05:44:17'),
(44, 2, 27.20, 73.30, 'Hujan', 11.50, 'Rendah', '2025-10-26 06:44:17'),
(45, 2, 29.10, 63.40, 'Cerah', 16.30, 'Tinggi', '2025-10-26 07:44:17'),
(46, 3, 29.20, 60.80, 'Cerah', 18.40, 'Tinggi', '2025-10-25 12:44:17'),
(47, 3, 30.10, 57.60, 'Cerah', 19.20, 'Tinggi', '2025-10-25 13:44:17'),
(48, 3, 28.70, 64.90, 'Cerah', 15.80, 'Tinggi', '2025-10-25 14:44:17'),
(49, 3, 27.40, 69.70, 'Mendung', 13.10, 'Sedang', '2025-10-25 15:44:17'),
(50, 3, 31.20, 55.30, 'Cerah', 20.10, 'Tinggi', '2025-10-25 16:44:17'),
(51, 3, 29.80, 59.20, 'Cerah', 17.60, 'Tinggi', '2025-10-25 17:44:17'),
(52, 3, 28.10, 66.40, 'Cerah', 14.90, 'Tinggi', '2025-10-25 18:44:17'),
(53, 3, 30.50, 56.80, 'Cerah', 18.90, 'Tinggi', '2025-10-25 19:44:17'),
(54, 3, 27.90, 68.30, 'Mendung', 12.70, 'Sedang', '2025-10-25 20:44:17'),
(55, 3, 29.60, 61.10, 'Cerah', 16.40, 'Tinggi', '2025-10-25 21:44:17'),
(56, 3, 31.80, 53.90, 'Cerah', 21.20, 'Tinggi', '2025-10-25 22:44:17'),
(57, 3, 28.40, 65.70, 'Cerah', 15.30, 'Tinggi', '2025-10-25 23:44:17'),
(58, 3, 30.20, 58.40, 'Cerah', 17.80, 'Tinggi', '2025-10-26 00:44:17'),
(59, 3, 27.60, 70.10, 'Hujan Ringan', 11.90, 'Sedang', '2025-10-26 01:44:17'),
(60, 3, 29.90, 59.80, 'Cerah', 17.10, 'Tinggi', '2025-10-26 02:44:17'),
(61, 3, 28.80, 63.60, 'Cerah', 16.20, 'Tinggi', '2025-10-26 03:44:17'),
(62, 3, 30.70, 55.90, 'Cerah', 19.40, 'Tinggi', '2025-10-26 04:44:17'),
(63, 3, 27.30, 71.80, 'Mendung', 12.20, 'Sedang', '2025-10-26 05:44:17'),
(64, 3, 29.40, 62.30, 'Cerah', 16.70, 'Tinggi', '2025-10-26 06:44:17'),
(65, 3, 31.10, 54.70, 'Cerah', 20.50, 'Tinggi', '2025-10-26 07:44:17'),
(66, 4, 26.90, 75.30, 'Mendung', 10.20, 'Rendah', '2025-10-25 12:44:17'),
(67, 4, 27.40, 72.80, 'Hujan Ringan', 11.50, 'Sedang', '2025-10-25 13:44:17'),
(68, 4, 28.10, 69.60, 'Mendung', 12.80, 'Sedang', '2025-10-25 14:44:17'),
(69, 4, 25.80, 78.90, 'Hujan', 8.90, 'Rendah', '2025-10-25 15:44:17'),
(70, 4, 29.20, 64.10, 'Cerah', 15.70, 'Tinggi', '2025-10-25 16:44:17'),
(71, 4, 27.70, 71.40, 'Mendung', 11.90, 'Sedang', '2025-10-25 17:44:17'),
(72, 4, 26.30, 76.80, 'Hujan Ringan', 9.60, 'Rendah', '2025-10-25 18:44:17'),
(73, 4, 28.80, 66.70, 'Cerah', 14.20, 'Tinggi', '2025-10-25 19:44:17'),
(74, 4, 27.10, 73.90, 'Hujan Ringan', 10.80, 'Sedang', '2025-10-25 20:44:17'),
(75, 4, 29.50, 62.80, 'Cerah', 16.10, 'Tinggi', '2025-10-25 21:44:17'),
(76, 4, 26.60, 75.70, 'Mendung', 10.30, 'Rendah', '2025-10-25 22:44:17'),
(77, 4, 28.40, 68.20, 'Cerah', 13.90, 'Tinggi', '2025-10-25 23:44:17'),
(78, 4, 27.90, 70.50, 'Hujan Ringan', 12.10, 'Sedang', '2025-10-26 00:44:17'),
(79, 4, 25.70, 79.40, 'Hujan', 8.40, 'Rendah', '2025-10-26 01:44:17'),
(80, 4, 29.80, 61.30, 'Cerah', 16.80, 'Tinggi', '2025-10-26 02:44:17'),
(81, 4, 27.20, 74.10, 'Mendung', 11.20, 'Sedang', '2025-10-26 03:44:17'),
(82, 4, 28.60, 67.80, 'Cerah', 14.50, 'Tinggi', '2025-10-26 04:44:17'),
(83, 4, 26.80, 76.20, 'Hujan Ringan', 9.90, 'Rendah', '2025-10-26 05:44:17'),
(84, 4, 29.10, 63.90, 'Cerah', 15.40, 'Tinggi', '2025-10-26 06:44:17'),
(85, 4, 27.50, 72.60, 'Mendung', 11.70, 'Sedang', '2025-10-26 07:44:17'),
(86, 5, 30.10, 55.70, 'Cerah', 20.50, 'Tinggi', '2025-10-25 12:44:17'),
(87, 5, 31.20, 53.40, 'Cerah', 21.80, 'Tinggi', '2025-10-25 13:44:17'),
(88, 5, 29.80, 58.90, 'Cerah', 18.20, 'Tinggi', '2025-10-25 14:44:17'),
(89, 5, 28.50, 63.60, 'Cerah', 15.90, 'Tinggi', '2025-10-25 15:44:17'),
(90, 5, 32.10, 51.80, 'Cerah', 22.40, 'Tinggi', '2025-10-25 16:44:17'),
(91, 5, 30.70, 56.20, 'Cerah', 19.60, 'Tinggi', '2025-10-25 17:44:17'),
(92, 5, 29.30, 60.10, 'Cerah', 17.10, 'Tinggi', '2025-10-25 18:44:17'),
(93, 5, 31.80, 52.90, 'Cerah', 21.20, 'Tinggi', '2025-10-25 19:44:17'),
(94, 5, 30.40, 57.50, 'Cerah', 18.80, 'Tinggi', '2025-10-25 20:44:17'),
(95, 5, 28.90, 62.30, 'Cerah', 16.40, 'Tinggi', '2025-10-25 21:44:17'),
(96, 5, 32.50, 50.60, 'Cerah', 23.10, 'Tinggi', '2025-10-25 22:44:17'),
(97, 5, 31.30, 54.10, 'Cerah', 20.90, 'Tinggi', '2025-10-25 23:44:17'),
(98, 5, 29.60, 59.40, 'Cerah', 17.70, 'Tinggi', '2025-10-26 00:44:17'),
(99, 5, 30.90, 55.80, 'Cerah', 19.30, 'Tinggi', '2025-10-26 01:44:17'),
(100, 5, 28.70, 64.20, 'Cerah', 15.60, 'Tinggi', '2025-10-26 02:44:17'),
(101, 5, 31.60, 53.70, 'Cerah', 21.50, 'Tinggi', '2025-10-26 03:44:17'),
(102, 5, 30.20, 58.30, 'Cerah', 18.40, 'Tinggi', '2025-10-26 04:44:17'),
(103, 5, 29.10, 61.80, 'Cerah', 16.90, 'Tinggi', '2025-10-26 05:44:17'),
(104, 5, 32.20, 51.20, 'Cerah', 22.70, 'Tinggi', '2025-10-26 06:44:17'),
(105, 5, 30.80, 56.90, 'Cerah', 19.80, 'Tinggi', '2025-10-26 07:44:17');

-- --------------------------------------------------------

--
-- Struktur dari tabel `weather_stations`
--

CREATE TABLE `weather_stations` (
  `id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `latitude` decimal(10,8) NOT NULL,
  `longitude` decimal(11,8) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `weather_stations`
--

INSERT INTO `weather_stations` (`id`, `name`, `latitude`, `longitude`, `created_at`, `updated_at`) VALUES
(1, 'Tegal', -6.87970000, 109.12560000, '2025-10-26 07:35:57', '2025-10-26 07:35:57'),
(2, 'Slawi', -6.98190000, 109.14070000, '2025-10-26 07:35:57', '2025-10-26 07:35:57'),
(3, 'Brebes', -6.86940000, 109.03890000, '2025-10-26 07:35:57', '2025-10-26 07:35:57'),
(4, 'Pemalang', -6.89190000, 109.37810000, '2025-10-26 07:35:57', '2025-10-26 07:35:57'),
(5, 'Pekalongan', -6.88970000, 109.67530000, '2025-10-26 07:35:57', '2025-10-26 07:35:57');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `weather_data`
--
ALTER TABLE `weather_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_station_id` (`station_id`),
  ADD KEY `idx_recorded_at` (`recorded_at`);

--
-- Indeks untuk tabel `weather_stations`
--
ALTER TABLE `weather_stations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `weather_data`
--
ALTER TABLE `weather_data`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT untuk tabel `weather_stations`
--
ALTER TABLE `weather_stations`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `weather_data`
--
ALTER TABLE `weather_data`
  ADD CONSTRAINT `weather_data_ibfk_1` FOREIGN KEY (`station_id`) REFERENCES `weather_stations` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
