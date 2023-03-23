-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 23 Mar 2023 pada 13.51
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ibuhamil`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_kandungan`
--

CREATE TABLE `data_kandungan` (
  `HPHT` date NOT NULL,
  `LILA` int(100) NOT NULL,
  `tinggi_badan` int(100) NOT NULL,
  `gol_darah` varchar(5) NOT NULL,
  `riwayat_kb` varchar(500) NOT NULL,
  `riwayat_penyakit_sekarang` varchar(500) NOT NULL,
  `riwayat_penyakit_dulu` varchar(500) NOT NULL,
  `riwayat_penyakit_keluarga` varchar(500) NOT NULL,
  `riwayat_alergi` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_kontrol`
--

CREATE TABLE `data_kontrol` (
  `tgl` date NOT NULL,
  `keluhan_sekarang` varchar(500) NOT NULL,
  `tekanan_darah` int(20) NOT NULL,
  `beran_badan` int(10) NOT NULL,
  `umur_kehamilan` int(10) NOT NULL,
  `tinggi_vundus` int(2) NOT NULL,
  `letak_janin` varchar(500) NOT NULL,
  `denyut_jantung_janin` int(11) NOT NULL,
  `kaki_bengkak` set('+','-') NOT NULL,
  `hasil_pemeriksaan_laboratorium` varchar(500) NOT NULL,
  `nasihat_yang_disampaikan` varchar(500) NOT NULL,
  `keterangan` varchar(500) NOT NULL,
  `kapan_harus_kembali` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_pasien`
--

CREATE TABLE `data_pasien` (
  `id` int(11) NOT NULL,
  `nama_pasien` varchar(12) NOT NULL,
  `umur` int(3) NOT NULL,
  `telp` int(15) NOT NULL,
  `alamat` varchar(500) NOT NULL,
  `pekerjaan` varchar(500) NOT NULL,
  `nama_suami` varchar(500) NOT NULL,
  `umur_suami` int(10) NOT NULL,
  `pekerjaan_suami` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `data_pasien`
--

INSERT INTO `data_pasien` (`id`, `nama_pasien`, `umur`, `telp`, `alamat`, `pekerjaan`, `nama_suami`, `umur_suami`, `pekerjaan_suami`) VALUES
(1, 'rini', 22, 12897312, 'jl. terserah dimanapun pokok nya tinggal', '', '', 0, '');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `data_pasien`
--
ALTER TABLE `data_pasien`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `data_pasien`
--
ALTER TABLE `data_pasien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
