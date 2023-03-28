-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 28 Mar 2023 pada 13.59
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
-- Struktur dari tabel `analisa_data`
--

CREATE TABLE `analisa_data` (
  `id_analisa_data` int(11) NOT NULL,
  `G` int(11) NOT NULL,
  `P` int(11) NOT NULL,
  `UK` int(11) NOT NULL,
  `KU_ibu` int(11) NOT NULL,
  `id_janin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `askeb`
--

CREATE TABLE `askeb` (
  `id_identitas` int(11) NOT NULL,
  `id_data_subjektif` int(11) NOT NULL,
  `id_data_obyektif` int(11) NOT NULL,
  `analisa_data` int(11) NOT NULL,
  `id_penatalaksanaan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_abdomen`
--

CREATE TABLE `data_abdomen` (
  `id_abdomen` int(11) NOT NULL,
  `striae` int(11) NOT NULL,
  `linea` int(11) NOT NULL,
  `luka_bekas_operasi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_dada`
--

CREATE TABLE `data_dada` (
  `id_dada` int(11) NOT NULL,
  `simetris` int(11) NOT NULL,
  `areola_hiperpigmentasi` int(11) NOT NULL,
  `pengeluaran_kolostrum` int(11) NOT NULL,
  `puting_susu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_ekstremitas_atas&bawah`
--

CREATE TABLE `data_ekstremitas_atas&bawah` (
  `id_ekstremitas_atas&bawah` int(11) NOT NULL,
  `tungkai` int(11) NOT NULL,
  `oedema` int(11) NOT NULL,
  `reflex_patella` int(11) NOT NULL,
  `varises` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_leher`
--

CREATE TABLE `data_leher` (
  `id_leher` int(11) NOT NULL,
  `pembesaran_vena_jugularis` int(11) NOT NULL,
  `pembesaran_kelenjar_tyroid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_mata`
--

CREATE TABLE `data_mata` (
  `id_mata` int(11) NOT NULL,
  `konjungtiva` varchar(20) NOT NULL,
  `sklera` varchar(20) NOT NULL,
  `pandangan_kabur` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_mulut`
--

CREATE TABLE `data_mulut` (
  `id_mulut` int(11) NOT NULL,
  `caries_gigi` int(11) NOT NULL,
  `gusi_berdarah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_obyektif`
--

CREATE TABLE `data_obyektif` (
  `id_data_obyektif` int(11) NOT NULL,
  `id_pemeriksaan_umum` int(11) NOT NULL,
  `id_pemeriksaan_fisik` int(11) NOT NULL,
  `id_pemeriksaan_penunjang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_palpasi`
--

CREATE TABLE `data_palpasi` (
  `id_palpasi` int(11) NOT NULL,
  `leopold1` int(11) NOT NULL,
  `leopold2` int(11) NOT NULL,
  `leopold3` int(11) NOT NULL,
  `leopold4` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_subjektif`
--

CREATE TABLE `data_subjektif` (
  `id_subjektif` int(11) NOT NULL,
  `keluhan_utama` varchar(500) NOT NULL,
  `id_riwayat_mens` int(11) NOT NULL,
  `id_riwayat_obstetri` int(11) NOT NULL,
  `riwayat_penyakit` varchar(500) NOT NULL,
  `riwayat_penyakit_keluarga` varchar(500) NOT NULL,
  `riwayat_psiko` varchar(500) NOT NULL,
  `id_status_kawin` int(11) NOT NULL,
  `id_pola_sehari` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `identitas`
--

CREATE TABLE `identitas` (
  `id_identitas` int(11) NOT NULL,
  `Nama` varchar(20) NOT NULL,
  `Umur` int(5) NOT NULL,
  `Agama` varchar(11) NOT NULL,
  `Pendidikan` set('SD','SMP','SMA/SMK/STM','S1','S2','S3','D1','D3','D4') NOT NULL,
  `Pekerjaan` varchar(11) NOT NULL,
  `Alamat` varchar(500) NOT NULL,
  `cara_masuk` set('datang sendiri','rujukan dari','','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `janin`
--

CREATE TABLE `janin` (
  `id_janin` int(11) NOT NULL,
  `letak_janin` set('melintang','memanjang','','') NOT NULL,
  `tunggal_gemilli` set('tunggal','gemelli','','') NOT NULL,
  `hidup_mati` set('hidup','mati','','') NOT NULL,
  `intra` set('intra','ekstra uteri','','') NOT NULL,
  `KU_janin` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemeriksaaan_fisik`
--

CREATE TABLE `pemeriksaaan_fisik` (
  `id_pemeriksaan_fisik` int(11) NOT NULL,
  `id_mata` int(11) NOT NULL,
  `id_mulut` int(11) NOT NULL,
  `id_leher` int(11) NOT NULL,
  `id_dada` int(11) NOT NULL,
  `id_abdomen` int(11) NOT NULL,
  `TFU` int(11) NOT NULL,
  `id_palpasi` int(11) NOT NULL,
  `TBJ` int(11) NOT NULL,
  `auskultasi` int(11) NOT NULL,
  `kontraksi` int(11) NOT NULL,
  `id_ekstremitas_atas&bawah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemeriksaan_umum`
--

CREATE TABLE `pemeriksaan_umum` (
  `id_pemeriksaan_umum` int(11) NOT NULL,
  `keadaan_umum` int(5) NOT NULL,
  `tensi` int(5) NOT NULL,
  `suhu` int(5) NOT NULL,
  `kesadaran` int(5) NOT NULL,
  `nadi` int(5) NOT NULL,
  `pernafasan` int(5) NOT NULL,
  `BB` int(5) NOT NULL,
  `TB` int(5) NOT NULL,
  `LILA` int(5) NOT NULL,
  `IMT` int(5) NOT NULL,
  `ROT` int(5) NOT NULL,
  `MAP` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `penatalaksanaan`
--

CREATE TABLE `penatalaksanaan` (
  `id_penatalaksanaan` int(11) NOT NULL,
  `info_hasil_periksa` int(11) NOT NULL,
  `tujuan_tindakan` int(11) NOT NULL,
  `fasilitasi` int(11) NOT NULL,
  `penanganan_keluahan` int(11) NOT NULL,
  `HE` int(11) NOT NULL,
  `kolaborasi` int(11) NOT NULL,
  `jadwal_kunjungan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pola_eliminasi`
--

CREATE TABLE `pola_eliminasi` (
  `id_eliminasi` int(11) NOT NULL,
  `BAK` set('sudah','belum','','') NOT NULL,
  `jam_bak` int(11) NOT NULL,
  `BAB` int(11) NOT NULL,
  `jam_bab` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pola_makan_minum`
--

CREATE TABLE `pola_makan_minum` (
  `id_makan_minum` int(11) NOT NULL,
  `makan` int(5) NOT NULL,
  `komposisi_makan` varchar(500) NOT NULL,
  `minum` int(5) NOT NULL,
  `ket_minum` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pola_sehari`
--

CREATE TABLE `pola_sehari` (
  `id_pola_sehari` int(11) NOT NULL,
  `id_makan_minum` int(11) NOT NULL,
  `id_eleminasi` int(11) NOT NULL,
  `istirahat` int(5) NOT NULL,
  `aktivitas` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `riwayat_mens`
--

CREATE TABLE `riwayat_mens` (
  `id_riwayat_mens` int(11) NOT NULL,
  `menarche` int(11) NOT NULL,
  `lama_hari` int(11) NOT NULL,
  `jml_softex` int(11) NOT NULL,
  `flour_albus` int(11) NOT NULL,
  `HPHT` date NOT NULL,
  `TP` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `riwayat_obstetri`
--

CREATE TABLE `riwayat_obstetri` (
  `id_riwayat_obstetri` int(11) NOT NULL,
  `hamil_ke` int(11) NOT NULL,
  `usia_hamil` int(11) NOT NULL,
  `penolong_persalinan` int(11) NOT NULL,
  `jenis_persalinan` int(11) NOT NULL,
  `penyulit_bersalin` int(11) NOT NULL,
  `penyulit_nifas` int(11) NOT NULL,
  `jenis_kelamin_anak` int(11) NOT NULL,
  `bb_anak` int(11) NOT NULL,
  `kondisi_anak` int(11) NOT NULL,
  `ASI` int(11) NOT NULL,
  `KB` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `status_kawin`
--

CREATE TABLE `status_kawin` (
  `id_status_kawin` int(11) NOT NULL,
  `kawin` int(11) NOT NULL,
  `kawin_usia` int(11) NOT NULL,
  `lama_nikah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `analisa_data`
--
ALTER TABLE `analisa_data`
  ADD PRIMARY KEY (`id_analisa_data`),
  ADD UNIQUE KEY `id_janin` (`id_janin`);

--
-- Indeks untuk tabel `askeb`
--
ALTER TABLE `askeb`
  ADD PRIMARY KEY (`id_identitas`),
  ADD UNIQUE KEY `id_identitas` (`id_identitas`),
  ADD UNIQUE KEY `id_identitas_2` (`id_identitas`),
  ADD UNIQUE KEY `id_identitas_3` (`id_identitas`),
  ADD UNIQUE KEY `id_identitas_4` (`id_identitas`),
  ADD UNIQUE KEY `data_subyektif` (`id_data_subjektif`,`id_data_obyektif`,`analisa_data`,`id_penatalaksanaan`),
  ADD UNIQUE KEY `id_data_obyektif` (`id_data_obyektif`),
  ADD UNIQUE KEY `id_penatalaksanaan` (`id_penatalaksanaan`),
  ADD KEY `analisa_data` (`analisa_data`);

--
-- Indeks untuk tabel `data_abdomen`
--
ALTER TABLE `data_abdomen`
  ADD PRIMARY KEY (`id_abdomen`);

--
-- Indeks untuk tabel `data_dada`
--
ALTER TABLE `data_dada`
  ADD PRIMARY KEY (`id_dada`);

--
-- Indeks untuk tabel `data_ekstremitas_atas&bawah`
--
ALTER TABLE `data_ekstremitas_atas&bawah`
  ADD PRIMARY KEY (`id_ekstremitas_atas&bawah`);

--
-- Indeks untuk tabel `data_leher`
--
ALTER TABLE `data_leher`
  ADD PRIMARY KEY (`id_leher`);

--
-- Indeks untuk tabel `data_mata`
--
ALTER TABLE `data_mata`
  ADD PRIMARY KEY (`id_mata`);

--
-- Indeks untuk tabel `data_mulut`
--
ALTER TABLE `data_mulut`
  ADD PRIMARY KEY (`id_mulut`);

--
-- Indeks untuk tabel `data_obyektif`
--
ALTER TABLE `data_obyektif`
  ADD PRIMARY KEY (`id_data_obyektif`),
  ADD UNIQUE KEY `id_pemeriksaan_umum` (`id_pemeriksaan_umum`,`id_pemeriksaan_fisik`,`id_pemeriksaan_penunjang`),
  ADD KEY `id_pemeriksaan_fisik` (`id_pemeriksaan_fisik`);

--
-- Indeks untuk tabel `data_palpasi`
--
ALTER TABLE `data_palpasi`
  ADD PRIMARY KEY (`id_palpasi`);

--
-- Indeks untuk tabel `data_subjektif`
--
ALTER TABLE `data_subjektif`
  ADD PRIMARY KEY (`id_subjektif`),
  ADD UNIQUE KEY `id_riwayat_mens` (`id_riwayat_mens`,`id_riwayat_obstetri`,`id_status_kawin`,`id_pola_sehari`),
  ADD KEY `id_riwayat_obstetri` (`id_riwayat_obstetri`),
  ADD KEY `id_status_kawin` (`id_status_kawin`),
  ADD KEY `id_pola_sehari` (`id_pola_sehari`);

--
-- Indeks untuk tabel `identitas`
--
ALTER TABLE `identitas`
  ADD PRIMARY KEY (`id_identitas`);

--
-- Indeks untuk tabel `janin`
--
ALTER TABLE `janin`
  ADD PRIMARY KEY (`id_janin`);

--
-- Indeks untuk tabel `pemeriksaaan_fisik`
--
ALTER TABLE `pemeriksaaan_fisik`
  ADD PRIMARY KEY (`id_pemeriksaan_fisik`),
  ADD UNIQUE KEY `mata` (`id_mata`),
  ADD UNIQUE KEY `mulut` (`id_mulut`,`id_leher`),
  ADD UNIQUE KEY `id_mulut` (`id_mulut`,`id_leher`),
  ADD UNIQUE KEY `id_dada` (`id_dada`),
  ADD UNIQUE KEY `id_ekstremitas_atas&bawah` (`id_ekstremitas_atas&bawah`),
  ADD UNIQUE KEY `id_palpasi` (`id_palpasi`),
  ADD UNIQUE KEY `id_abdomen` (`id_abdomen`),
  ADD KEY `id_leher` (`id_leher`);

--
-- Indeks untuk tabel `pemeriksaan_umum`
--
ALTER TABLE `pemeriksaan_umum`
  ADD PRIMARY KEY (`id_pemeriksaan_umum`);

--
-- Indeks untuk tabel `penatalaksanaan`
--
ALTER TABLE `penatalaksanaan`
  ADD PRIMARY KEY (`id_penatalaksanaan`);

--
-- Indeks untuk tabel `pola_eliminasi`
--
ALTER TABLE `pola_eliminasi`
  ADD PRIMARY KEY (`id_eliminasi`);

--
-- Indeks untuk tabel `pola_makan_minum`
--
ALTER TABLE `pola_makan_minum`
  ADD PRIMARY KEY (`id_makan_minum`);

--
-- Indeks untuk tabel `pola_sehari`
--
ALTER TABLE `pola_sehari`
  ADD PRIMARY KEY (`id_pola_sehari`),
  ADD UNIQUE KEY `id_makan_minum` (`id_makan_minum`,`id_eleminasi`);

--
-- Indeks untuk tabel `riwayat_mens`
--
ALTER TABLE `riwayat_mens`
  ADD PRIMARY KEY (`id_riwayat_mens`);

--
-- Indeks untuk tabel `riwayat_obstetri`
--
ALTER TABLE `riwayat_obstetri`
  ADD PRIMARY KEY (`id_riwayat_obstetri`);

--
-- Indeks untuk tabel `status_kawin`
--
ALTER TABLE `status_kawin`
  ADD PRIMARY KEY (`id_status_kawin`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `analisa_data`
--
ALTER TABLE `analisa_data`
  MODIFY `id_analisa_data` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `askeb`
--
ALTER TABLE `askeb`
  MODIFY `id_identitas` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `data_abdomen`
--
ALTER TABLE `data_abdomen`
  MODIFY `id_abdomen` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `data_dada`
--
ALTER TABLE `data_dada`
  MODIFY `id_dada` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `data_ekstremitas_atas&bawah`
--
ALTER TABLE `data_ekstremitas_atas&bawah`
  MODIFY `id_ekstremitas_atas&bawah` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `data_leher`
--
ALTER TABLE `data_leher`
  MODIFY `id_leher` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `data_mata`
--
ALTER TABLE `data_mata`
  MODIFY `id_mata` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `data_mulut`
--
ALTER TABLE `data_mulut`
  MODIFY `id_mulut` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `data_obyektif`
--
ALTER TABLE `data_obyektif`
  MODIFY `id_data_obyektif` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `data_palpasi`
--
ALTER TABLE `data_palpasi`
  MODIFY `id_palpasi` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `data_subjektif`
--
ALTER TABLE `data_subjektif`
  MODIFY `id_subjektif` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `identitas`
--
ALTER TABLE `identitas`
  MODIFY `id_identitas` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `janin`
--
ALTER TABLE `janin`
  MODIFY `id_janin` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pemeriksaaan_fisik`
--
ALTER TABLE `pemeriksaaan_fisik`
  MODIFY `id_pemeriksaan_fisik` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pemeriksaan_umum`
--
ALTER TABLE `pemeriksaan_umum`
  MODIFY `id_pemeriksaan_umum` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `penatalaksanaan`
--
ALTER TABLE `penatalaksanaan`
  MODIFY `id_penatalaksanaan` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pola_eliminasi`
--
ALTER TABLE `pola_eliminasi`
  MODIFY `id_eliminasi` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pola_makan_minum`
--
ALTER TABLE `pola_makan_minum`
  MODIFY `id_makan_minum` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pola_sehari`
--
ALTER TABLE `pola_sehari`
  MODIFY `id_pola_sehari` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `riwayat_mens`
--
ALTER TABLE `riwayat_mens`
  MODIFY `id_riwayat_mens` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `riwayat_obstetri`
--
ALTER TABLE `riwayat_obstetri`
  MODIFY `id_riwayat_obstetri` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `status_kawin`
--
ALTER TABLE `status_kawin`
  MODIFY `id_status_kawin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `analisa_data`
--
ALTER TABLE `analisa_data`
  ADD CONSTRAINT `analisa_data_ibfk_1` FOREIGN KEY (`id_janin`) REFERENCES `janin` (`id_janin`);

--
-- Ketidakleluasaan untuk tabel `askeb`
--
ALTER TABLE `askeb`
  ADD CONSTRAINT `askeb_ibfk_1` FOREIGN KEY (`id_identitas`) REFERENCES `identitas` (`id_identitas`),
  ADD CONSTRAINT `askeb_ibfk_2` FOREIGN KEY (`id_data_obyektif`) REFERENCES `data_obyektif` (`id_data_obyektif`),
  ADD CONSTRAINT `askeb_ibfk_3` FOREIGN KEY (`id_penatalaksanaan`) REFERENCES `penatalaksanaan` (`id_penatalaksanaan`),
  ADD CONSTRAINT `askeb_ibfk_4` FOREIGN KEY (`analisa_data`) REFERENCES `analisa_data` (`id_analisa_data`);

--
-- Ketidakleluasaan untuk tabel `data_obyektif`
--
ALTER TABLE `data_obyektif`
  ADD CONSTRAINT `data_obyektif_ibfk_1` FOREIGN KEY (`id_pemeriksaan_umum`) REFERENCES `pemeriksaan_umum` (`id_pemeriksaan_umum`),
  ADD CONSTRAINT `data_obyektif_ibfk_2` FOREIGN KEY (`id_pemeriksaan_fisik`) REFERENCES `pemeriksaaan_fisik` (`id_pemeriksaan_fisik`);

--
-- Ketidakleluasaan untuk tabel `data_subjektif`
--
ALTER TABLE `data_subjektif`
  ADD CONSTRAINT `data_subjektif_ibfk_1` FOREIGN KEY (`id_subjektif`) REFERENCES `askeb` (`id_data_subjektif`),
  ADD CONSTRAINT `data_subjektif_ibfk_2` FOREIGN KEY (`id_riwayat_obstetri`) REFERENCES `riwayat_obstetri` (`id_riwayat_obstetri`),
  ADD CONSTRAINT `data_subjektif_ibfk_3` FOREIGN KEY (`id_status_kawin`) REFERENCES `status_kawin` (`id_status_kawin`),
  ADD CONSTRAINT `data_subjektif_ibfk_4` FOREIGN KEY (`id_pola_sehari`) REFERENCES `pola_sehari` (`id_pola_sehari`),
  ADD CONSTRAINT `data_subjektif_ibfk_5` FOREIGN KEY (`id_riwayat_mens`) REFERENCES `riwayat_mens` (`id_riwayat_mens`);

--
-- Ketidakleluasaan untuk tabel `pemeriksaaan_fisik`
--
ALTER TABLE `pemeriksaaan_fisik`
  ADD CONSTRAINT `pemeriksaaan_fisik_ibfk_2` FOREIGN KEY (`id_mata`) REFERENCES `data_mata` (`id_mata`),
  ADD CONSTRAINT `pemeriksaaan_fisik_ibfk_3` FOREIGN KEY (`id_leher`) REFERENCES `data_leher` (`id_leher`),
  ADD CONSTRAINT `pemeriksaaan_fisik_ibfk_4` FOREIGN KEY (`id_mulut`) REFERENCES `data_mulut` (`id_mulut`),
  ADD CONSTRAINT `pemeriksaaan_fisik_ibfk_5` FOREIGN KEY (`id_dada`) REFERENCES `data_dada` (`id_dada`),
  ADD CONSTRAINT `pemeriksaaan_fisik_ibfk_6` FOREIGN KEY (`id_ekstremitas_atas&bawah`) REFERENCES `data_ekstremitas_atas&bawah` (`id_ekstremitas_atas&bawah`),
  ADD CONSTRAINT `pemeriksaaan_fisik_ibfk_7` FOREIGN KEY (`id_palpasi`) REFERENCES `data_palpasi` (`id_palpasi`),
  ADD CONSTRAINT `pemeriksaaan_fisik_ibfk_8` FOREIGN KEY (`id_abdomen`) REFERENCES `data_abdomen` (`id_abdomen`);

--
-- Ketidakleluasaan untuk tabel `pola_sehari`
--
ALTER TABLE `pola_sehari`
  ADD CONSTRAINT `pola_sehari_ibfk_1` FOREIGN KEY (`id_makan_minum`) REFERENCES `pola_makan_minum` (`id_makan_minum`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
