-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versi server:                 5.5.34-MariaDB - mariadb.org binary distribution
-- OS Server:                    Win64
-- HeidiSQL Versi:               8.0.0.4396
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping database structure for db_toko
CREATE DATABASE IF NOT EXISTS `db_toko` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `db_toko`;


-- Dumping structure for table db_toko.tbarang
CREATE TABLE IF NOT EXISTS `tbarang` (
  `id` bigint(20) NOT NULL,
  `kode` varchar(50) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jenis` varchar(50) NOT NULL,
  `keterangan` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.


-- Dumping structure for table db_toko.tmenu
CREATE TABLE IF NOT EXISTS `tmenu` (
  `id` int(10) NOT NULL,
  `namaMenu` varchar(50) DEFAULT NULL,
  `namaForm` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Untuk menyimpan class construct, membuat toolstringitem secara dinamic sesuai nama menu, kemudian memberikan event untuk membuat form/class sesuai nama form';

-- Data exporting was unselected.


-- Dumping structure for table db_toko.tmutasibarang
CREATE TABLE IF NOT EXISTS `tmutasibarang` (
  `id` bigint(20) NOT NULL,
  `id_Barang` bigint(20) NOT NULL,
  `tgl` datetime NOT NULL,
  `arus` bit(1) NOT NULL COMMENT 'menentukan arah keluar/masuk barang',
  `harga` decimal(15,2) NOT NULL,
  `jumlah` int(11) NOT NULL COMMENT 'jumlah barang keluar/masuk',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Mencatat arus keluar masuk barang';

-- Data exporting was unselected.


-- Dumping structure for table db_toko.trole
CREATE TABLE IF NOT EXISTS `trole` (
  `id` int(10) DEFAULT NULL,
  `nama` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.


-- Dumping structure for table db_toko.troledetail
CREATE TABLE IF NOT EXISTS `troledetail` (
  `id` int(10) NOT NULL,
  `idUser` int(10) DEFAULT NULL,
  `idRole` int(10) DEFAULT NULL,
  `menu` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idUser` (`idUser`),
  KEY `idRole` (`idRole`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.


-- Dumping structure for table db_toko.tuser
CREATE TABLE IF NOT EXISTS `tuser` (
  `id` int(10) NOT NULL,
  `uid` varchar(10) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `passwd` char(50) DEFAULT NULL,
  `role` int(10) DEFAULT NULL COMMENT 'jabatan/privelege',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
