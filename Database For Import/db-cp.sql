-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 29 Mar 2025 pada 19.47
-- Versi server: 8.2.0
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db-cp`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int NOT NULL,
  `batch` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(13, '2023-07-20-081917', 'App\\Database\\Migrations\\TbProduk', 'default', 'App', 1690513521, 1),
(14, '2023-07-20-084755', 'App\\Database\\Migrations\\TbSlider', 'default', 'App', 1690513521, 1),
(15, '2023-07-20-085024', 'App\\Database\\Migrations\\TbProfil', 'default', 'App', 1690513521, 1),
(16, '2023-07-28-035902', 'App\\Database\\Migrations\\TbAktivitas', 'default', 'App', 1690517128, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_aktivitas`
--

CREATE TABLE `tb_aktivitas` (
  `id_aktivitas` int UNSIGNED NOT NULL,
  `nama_aktivitas_in` varchar(200) NOT NULL,
  `nama_aktivitas_en` varchar(200) NOT NULL,
  `foto_aktivitas` varchar(100) NOT NULL,
  `deskripsi_aktivitas_in` text,
  `deskripsi_aktivitas_en` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_artikel`
--

CREATE TABLE `tb_artikel` (
  `id_artikel` int UNSIGNED NOT NULL,
  `judul_artikel` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `foto_artikel` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `deskripsi_artikel` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_produk`
--

CREATE TABLE `tb_produk` (
  `id_produk` int UNSIGNED NOT NULL,
  `nama_produk_in` varchar(200) NOT NULL,
  `nama_produk_en` varchar(200) NOT NULL,
  `foto_produk` varchar(100) NOT NULL,
  `deskripsi_produk_in` text,
  `deskripsi_produk_en` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_profil`
--

CREATE TABLE `tb_profil` (
  `id_profil` int UNSIGNED NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nama_perusahaan` varchar(100) NOT NULL,
  `logo_perusahaan` varchar(100) NOT NULL,
  `deskripsi_perusahaan_in` text,
  `deskripsi_perusahaan_en` text,
  `deskripsi_kontak_in` text,
  `deskripsi_kontak_en` text,
  `link_maps` text,
  `link_whatsapp` text,
  `favicon_website` varchar(100) NOT NULL,
  `title_website` varchar(100) NOT NULL,
  `foto_utama` varchar(100) NOT NULL,
  `alamat` text,
  `no_hp` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `teks_footer` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data untuk tabel `tb_profil`
--

INSERT INTO `tb_profil` (`id_profil`, `username`, `password`, `nama_perusahaan`, `logo_perusahaan`, `deskripsi_perusahaan_in`, `deskripsi_perusahaan_en`, `deskripsi_kontak_in`, `deskripsi_kontak_en`, `link_maps`, `link_whatsapp`, `favicon_website`, `title_website`, `foto_utama`, `alamat`, `no_hp`, `email`, `teks_footer`) VALUES
(1, 'user', 'user', 'Zyrex', 'Logo_Zyrex_29032025181450.png', '<p>Selamat datang di <strong>Zyrex</strong>, tempat di mana kebahagiaan dan kesejahteraan hidup kamumenjadi prioritas utama kami. Di Zyrex, kami mengkhususkan diri dalam menyediakan solusi dalam memecahkan masalah kamu di dunia digital yang komprehensif, mulai dari membangun website hingga layanan pemeliharaan website kamu tetap dalam kondisi prima.</p>\r\n<p><strong>Mengapa Memilih Zyrex?</strong> Zyrex menyediakan rangkaian layanan lengkap, mulai dari perencanaan dan desain website yang menarik, pengembangan yang responsif dan fungsional, hingga pemeliharaan berkala untuk memastikan website kamu selalu optimal. Kami memahami bahwa setiap bisnis memiliki kebutuhan unik. Oleh karena itu, kami menawarkan solusi yang dapat disesuaikan dengan kebutuhan spesifik kamu.</p>\r\n<p>Bergabunglah dengan Zyrex hari ini dan rasakan perbedaan dalam dunia digital.</p>', '<p>Welcome to <strong>Zyrex</strong>, where your happiness and well-being are our top priority. At Zyrex, we specialize in providing solutions to solve your problems in a comprehensive digital world, from building a website to maintaining your website in tip-top shape.<br><br><strong>Why Choose Zyrex?</strong> Zyrex provides a full range of services, from attractive website planning and design, responsive and functional development, to periodic maintenance to ensure your website is always optimal. We understand that every business has unique needs. Therefore, we offer solutions that can be tailored to your specific needs.<br><br>Join Zyrex today and experience the difference in the digital world.</p>', '<p>Provinsi Banten</p>', '<p>Banten Province</p>', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3965.388055787962!2d106.67313690968216!3d-6.343763862037796!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e69e5ab3d01e03b%3A0xb98f4c27e24202ec!2sInstitut%20Teknologi%20Indonesia%20(ITI)!5e0!3m2!1sid!2sid!4v1743271812067!5m2!1sid!2sid\" width=\"600\" height=\"400\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'https://wa.me/6283807914090', 'Favicon_Zyrex_29032025181450.png', 'Global Digitalization', '1743272090_ead2dad85323860d1adf.jpg', '<p>Jl. Puspitek, Setu, Kec. Serpong, South Tangerang City, Banten 15314</p>', '+62 83807914090', 'jonathan.zefanya16@gmail.com', 'All Rights Reserved.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_slider`
--

CREATE TABLE `tb_slider` (
  `id_slider` int UNSIGNED NOT NULL,
  `file_foto_slider` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data untuk tabel `tb_slider`
--

INSERT INTO `tb_slider` (`id_slider`, `file_foto_slider`) VALUES
(10, 'Zyrex_30032025012456.png'),
(11, 'Zyrex_30032025012514.png');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_aktivitas`
--
ALTER TABLE `tb_aktivitas`
  ADD PRIMARY KEY (`id_aktivitas`);

--
-- Indeks untuk tabel `tb_artikel`
--
ALTER TABLE `tb_artikel`
  ADD PRIMARY KEY (`id_artikel`);

--
-- Indeks untuk tabel `tb_produk`
--
ALTER TABLE `tb_produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indeks untuk tabel `tb_profil`
--
ALTER TABLE `tb_profil`
  ADD PRIMARY KEY (`id_profil`);

--
-- Indeks untuk tabel `tb_slider`
--
ALTER TABLE `tb_slider`
  ADD PRIMARY KEY (`id_slider`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `tb_aktivitas`
--
ALTER TABLE `tb_aktivitas`
  MODIFY `id_aktivitas` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tb_artikel`
--
ALTER TABLE `tb_artikel`
  MODIFY `id_artikel` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tb_produk`
--
ALTER TABLE `tb_produk`
  MODIFY `id_produk` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tb_profil`
--
ALTER TABLE `tb_profil`
  MODIFY `id_profil` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tb_slider`
--
ALTER TABLE `tb_slider`
  MODIFY `id_slider` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
