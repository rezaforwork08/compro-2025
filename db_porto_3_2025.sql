-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 15 Agu 2025 pada 06.58
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_porto_3_2025`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `about`
--

CREATE TABLE `about` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `image` varchar(100) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `about`
--

INSERT INTO `about` (`id`, `title`, `content`, `image`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Profil Gemilang Solution', '<h2 class=\"\">Profile Gemilang Solution</h2>', '1755059601-Business risk-amico.png', 1, '2025-08-13 02:52:38', '2025-08-13 04:33:21');

-- --------------------------------------------------------

--
-- Struktur dari tabel `blogs`
--

CREATE TABLE `blogs` (
  `id` int(11) NOT NULL,
  `id_category` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `content` longtext NOT NULL,
  `penulis` varchar(30) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `image` varchar(100) NOT NULL,
  `tags` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `blogs`
--

INSERT INTO `blogs` (`id`, `id_category`, `title`, `content`, `penulis`, `is_active`, `image`, `tags`, `created_at`, `updated_at`) VALUES
(1, 1, 'Cofeeshop dimana-mana', '<p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Voluptates ducimus eveniet, illum, laborum provident quisquam harum inventore deserunt voluptatem ipsa quaerat. </p><p>Porro vel voluptatem nemo cum, commodi eum dignissimos enim.</p>', 'Reza Ibrahim', 1, '1755139421-kopi.jpg', '[{\"value\":\"Bisnis\"},{\"value\":\"BisnisBaru\"},{\"value\":\"BisnisCofee\"}]', '2025-08-14 01:26:32', '2025-08-15 01:30:06'),
(2, 2, 'dfgdfg', '<p>dfgdfgdfg</p>', 'Reza Ibrahim', 0, '1755152049-bakrie.jfif', '', '2025-08-14 06:14:09', NULL),
(3, 2, 'sdfgdfgdfg', '<p>ffghfghfg</p>', 'Reza Ibrahim', 0, '1755153871-logo golkar.png', '', '2025-08-14 06:44:31', NULL),
(4, 0, 'sdfsdfsdf', '<p>sdgsggsg</p>', 'Reza Ibrahim', 0, '1755154057-kopi.jpg', '[{\"value\":\"dfh\"},{\"value\":\"ghjkg\"}]', '2025-08-14 06:47:37', '2025-08-14 07:17:34'),
(5, 0, 'DFGHFGHDFGH', '<p>FGDHDFGHFG</p>', 'Reza Ibrahim', 1, '1755156389-kocaknya-meme-dari-kaesang-saat-balas-cuitan-netizen-di-twitter-8.png', '[{\"value\":\"DFGHDFGH\"},{\"value\":\"DSFGDFG\"}]', '2025-08-14 07:26:29', '2025-08-14 07:26:48'),
(6, 2, 'SDFGDFSG', '<p>SDFGSDFGDFG</p>', 'Reza Ibrahim', 0, '1755156589-Business risk-amico.png', '[{\"value\":\"DSFG\"},{\"value\":\"GGFJHFGJH\"}]', '2025-08-14 07:29:49', '2025-08-14 07:48:28'),
(7, 2, 'DFGDFG', '<p>DFGHFGH</p>', 'Reza Ibrahim', 0, '', '[{\"value\":\"DFGSDFGDFG\"},{\"value\":\"dfgdfg\"}]', '2025-08-14 07:30:41', '2025-08-14 07:35:51'),
(8, 2, '<div></div>', '<p>dgdfgdfg</p>', 'Reza Ibrahim', 1, '', '[{\"value\":\"sdfsdfs\"}]', '2025-08-14 07:56:06', NULL),
(9, 2, '&lt;div&gt;&lt;/div&gt;', '<p>SDFSDFSDF</p>', 'Reza Ibrahim', 0, '1755158237-bakrie.jfif', '[{\"value\":\"SDFSDF\"}]', '2025-08-14 07:57:17', NULL),
(10, 0, 'sdfsdf', '', 'Reza Ibrahim', 1, '', '', '2025-08-14 08:06:57', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `type` varchar(35) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `name`, `type`, `created_at`, `updated_at`) VALUES
(1, 'IT', 'blog', '2025-08-15 02:12:58', '2025-08-15 02:12:58'),
(2, 'Bisnis', 'blog', '2025-08-15 02:13:02', '2025-08-15 02:13:02'),
(3, 'App', 'portofolio', '2025-08-15 02:14:45', NULL),
(4, 'Card', 'portofolio', '2025-08-15 02:17:43', NULL),
(5, 'Web', 'portofolio', '2025-08-15 02:17:43', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `clients`
--

CREATE TABLE `clients` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `portofolios`
--

CREATE TABLE `portofolios` (
  `id` int(11) NOT NULL,
  `id_category` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `client_name` varchar(50) NOT NULL,
  `project_date` date NOT NULL,
  `project_url` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `portofolios`
--

INSERT INTO `portofolios` (`id`, `id_category`, `title`, `content`, `client_name`, `project_date`, `project_url`, `image`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 4, 'Masonry Design', '<p>Design Tumbler</p>', 'https://rezaibrahim.com/', '2025-08-15', '', '1755229470-masonry-portfolio-1.jpg', 1, '2025-08-15 03:44:30', NULL),
(2, 5, 'Website Masonry', '<p>Website Masonry</p>', 'https://rezaibrahim.com/', '2025-08-15', '', '1755229576-masonry-portfolio-3.jpg', 1, '2025-08-15 03:46:16', NULL),
(3, 5, 'Website Reza', '<p>Website Reza</p>', 'https://rezaibrahim.com/', '2025-08-15', '', '1755232811-Business risk-amico.png', 1, '2025-08-15 04:40:11', NULL),
(4, 4, 'Tess CARD', '<p>Tes Card</p>', 'http://rezaibrahim.com/', '2025-08-15', '', '1755232970-kocaknya-meme-dari-kaesang-saat-balas-cuitan-netizen-di-twitter-8.png', 1, '2025-08-15 04:42:50', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `address` text NOT NULL,
  `logo` varchar(100) NOT NULL,
  `twitter` varchar(100) NOT NULL,
  `fb` varchar(100) NOT NULL,
  `ig` varchar(100) NOT NULL,
  `linkedin` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `settings`
--

INSERT INTO `settings` (`id`, `email`, `phone`, `address`, `logo`, `twitter`, `fb`, `ig`, `linkedin`, `created_at`, `updated_at`) VALUES
(1, 'reza@gmail.com', '08994212292', 'Kota Bekasi', '1754966499-WhatsApp Image 2025-04-26 at 16.21.31.jpeg', 'https://www.instagram.com/accounts/login/', 'https://www.instagram.com/accounts/login/', 'https://www.instagram.com/accounts/login/', 'https://www.instagram.com/accounts/login/', '2025-08-12 01:13:23', '2025-08-12 02:41:39');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sliders`
--

CREATE TABLE `sliders` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Slider 1', 'Tess', '1754974536-hero-carousel-1.jpg', '2025-08-12 04:55:36', NULL),
(6, 'Resep Kue Pancong Enak', 'Kue Pancong Adalah ....', '1755048306-resep-kue-pancong-enak.jpg', '2025-08-13 01:25:06', NULL),
(7, 'Thumbnail', 'Thumbnail', '1755048340-Thumbnail.png', '2025-08-13 01:25:40', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Reza Ibrahim', 'admin@gmail.com', '12345678', '2025-08-08 07:20:46', '2025-08-08 07:20:56'),
(2, 'Bambang', 'tes@gmail.com', '12345678asasas', '2025-08-08 07:19:48', NULL),
(4, 'REza', 'admi12121n@gmail.com', '1233445456', '2025-08-11 04:40:25', '2025-08-11 04:47:59');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `portofolios`
--
ALTER TABLE `portofolios`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `about`
--
ALTER TABLE `about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `portofolios`
--
ALTER TABLE `portofolios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
