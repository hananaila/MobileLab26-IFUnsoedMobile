-- Database: `toko_api`
-- Dibuat untuk Modul 4 Pemrograman Mobile

CREATE DATABASE IF NOT EXISTS `toko_api` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `toko_api`;

-- --------------------------------------------------------
-- 1. SQL membuat tabel member
-- --------------------------------------------------------
CREATE TABLE IF NOT EXISTS `member` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nama` VARCHAR(255) NOT NULL,
  `email` VARCHAR(255) NOT NULL UNIQUE,
  `password` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------
-- 2. SQL membuat tabel member_token
-- --------------------------------------------------------
CREATE TABLE IF NOT EXISTS `member_token` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `member_id` INT NOT NULL,
  `auth_key` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`member_id`) REFERENCES `member`(`id`) ON UPDATE CASCADE ON DELETE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------
-- 3. SQL membuat tabel produk
-- --------------------------------------------------------
CREATE TABLE IF NOT EXISTS `produk` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `kode_produk` VARCHAR(255) NOT NULL,
  `nama_produk` VARCHAR(255) NOT NULL,
  `harga` INT NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------
-- Data Awal / Seeder untuk Pengujian
-- --------------------------------------------------------
INSERT INTO `produk` (`id`, `kode_produk`, `nama_produk`, `harga`) VALUES
(1, 'A001', 'Kamera', 5000000),
(2, 'A002', 'Kulkas', 2500000),
(3, 'A003', 'Mesin Cuci', 2000000)
ON DUPLICATE KEY UPDATE `nama_produk`=VALUES(`nama_produk`), `harga`=VALUES(`harga`);

-- User default admin: password 'admin' (menggunakan password_hash BCRYPT default)
INSERT INTO `member` (`id`, `nama`, `email`, `password`) VALUES
(1, 'Administrator', 'admin@admin.com', '$2y$12$XXCuMxWm95a0.WuxklLlm.0ZQCMrdtCAC5pnrp8SvIiOGx7sTV0TO')
ON DUPLICATE KEY UPDATE `nama`=VALUES(`nama`), `password`=VALUES(`password`);
