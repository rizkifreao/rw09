-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.1.35-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for sipudes
CREATE DATABASE IF NOT EXISTS `siskep_rw9` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `siskep_rw9`;

-- Dumping structure for table sipudes.admin
CREATE TABLE IF NOT EXISTS `admin` (
  `id_admin` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` text,
  `status` int(1) DEFAULT NULL,
  `id_penduduk` varchar(50) DEFAULT NULL,
  `akses` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_admin`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Dumping data for table sipudes.admin: ~3 rows (approximately)
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` (`id_admin`, `username`, `password`, `status`, `id_penduduk`, `akses`) VALUES
	(1, 'superadmin', '17c4520f6cfd1ab53d8745e84681eb49', 1, '9879878978', 1),
	(3, '879678676', '7fd1191185f9c0a997d17083a467cf27', 1, '879678676', 2),
	(4, '897980798', '5e54f016021d4e7411f6265fd6526f5f', 1, '897980798', 1);
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;

-- Dumping structure for table sipudes.agama
CREATE TABLE IF NOT EXISTS `agama` (
  `id_agama` varchar(10) NOT NULL,
  `agama` varchar(30) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  PRIMARY KEY (`id_agama`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table sipudes.agama: ~6 rows (approximately)
/*!40000 ALTER TABLE `agama` DISABLE KEYS */;
INSERT INTO `agama` (`id_agama`, `agama`, `status`) VALUES
	('000000001', 'Islam', 1),
	('000000002', 'Kristen', 1),
	('000000003', 'Katholik', 1),
	('000000004', 'Hindu', 1),
	('000000005', 'Budha', 1),
	('000000006', 'Khonghucu', 1);
/*!40000 ALTER TABLE `agama` ENABLE KEYS */;

-- Dumping structure for table sipudes.desa
CREATE TABLE IF NOT EXISTS `desa` (
  `desa` varchar(50) NOT NULL,
  `kecamatan` varchar(50) NOT NULL,
  `kabupaten` varchar(50) NOT NULL,
  `kepala_desa` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`desa`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table sipudes.desa: ~1 rows (approximately)
/*!40000 ALTER TABLE `desa` DISABLE KEYS */;
INSERT INTO `desa` (`desa`, `kecamatan`, `kabupaten`, `kepala_desa`) VALUES
	('RW09', 'BANDUNG KULON', 'GEMPOL SARI', 'DEDE Spd.');
/*!40000 ALTER TABLE `desa` ENABLE KEYS */;

-- Dumping structure for table sipudes.file
CREATE TABLE IF NOT EXISTS `file` (
  `id_kategori` varchar(30) DEFAULT NULL,
  `nik` varchar(30) DEFAULT NULL,
  `file` text,
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table sipudes.file: ~3 rows (approximately)
/*!40000 ALTER TABLE `file` DISABLE KEYS */;
INSERT INTO `file` (`id_kategori`, `nik`, `file`, `status`) VALUES
	('000000001', '9879878978', 'update201608280143400000000019879878978.pdf', 1),
	('000000002', '897980798', 'update20190710205040000000002897980798.pdf', 1);
/*!40000 ALTER TABLE `file` ENABLE KEYS */;

-- Dumping structure for table sipudes.kategori
CREATE TABLE IF NOT EXISTS `kategori` (
  `id_kategori` varchar(30) NOT NULL,
  `kategori` varchar(50) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  PRIMARY KEY (`id_kategori`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table sipudes.kategori: ~4 rows (approximately)
/*!40000 ALTER TABLE `kategori` DISABLE KEYS */;
INSERT INTO `kategori` (`id_kategori`, `kategori`, `status`) VALUES
	('000000001', 'KTP', 1),
	('000000002', 'Akte', 1),
	('000000003', 'Surat Nikah', 1),
	('000000004', 'Dokumen Penting Lainnya', 1);
/*!40000 ALTER TABLE `kategori` ENABLE KEYS */;

-- Dumping structure for table sipudes.kategori_klasifikasi
CREATE TABLE IF NOT EXISTS `kategori_klasifikasi` (
  `id_kategori` varchar(20) DEFAULT NULL,
  `id_klasifikasi` varchar(10) DEFAULT NULL,
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table sipudes.kategori_klasifikasi: ~11 rows (approximately)
/*!40000 ALTER TABLE `kategori_klasifikasi` DISABLE KEYS */;
INSERT INTO `kategori_klasifikasi` (`id_kategori`, `id_klasifikasi`, `status`) VALUES
	('000000001', '000000002', 1),
	('000000004', '000000002', 1),
	('000000002', '000000003', 1),
	('000000003', '000000002', 1),
	('000000002', '000000002', 1),
	('000000003', '000000003', 1),
	('000000004', '000000003', 1),
	('000000001', '000000003', 1),
	('000000002', '000000001', 1),
	('000000004', '000000001', 1),
	('000000002', '000000004', 1),
	('000000004', '000000004', 1);
/*!40000 ALTER TABLE `kategori_klasifikasi` ENABLE KEYS */;

-- Dumping structure for table sipudes.kk
CREATE TABLE IF NOT EXISTS `kk` (
  `id_kk` varchar(20) NOT NULL,
  `no_kk` varchar(50) DEFAULT NULL,
  `rt` varchar(5) DEFAULT NULL,
  `rw` varchar(5) DEFAULT NULL,
  `kk` varchar(30) DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id_kk`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table sipudes.kk: ~5 rows (approximately)
/*!40000 ALTER TABLE `kk` DISABLE KEYS */;
INSERT INTO `kk` (`id_kk`, `no_kk`, `rt`, `rw`, `kk`, `status`) VALUES
	('000000001', '76986987687687', '01', '02', '9879878978', '1'),
	('000000002', '786978698768768', '09', '09', '123123123', '1'),
	('000000003', '8907987897', '09', '08', '769878767', '1'),
	('000000004', '89798787', '08', '09', '897980798', '1'),
	('000000005', '7698687967', '07', '08', '67575577667', '1');
/*!40000 ALTER TABLE `kk` ENABLE KEYS */;

-- Dumping structure for table sipudes.klasifikasi
CREATE TABLE IF NOT EXISTS `klasifikasi` (
  `id_klasifikasi` varchar(10) DEFAULT NULL,
  `klasifikasi` varchar(50) DEFAULT NULL,
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table sipudes.klasifikasi: ~4 rows (approximately)
/*!40000 ALTER TABLE `klasifikasi` DISABLE KEYS */;
INSERT INTO `klasifikasi` (`id_klasifikasi`, `klasifikasi`, `status`) VALUES
	('000000001', 'Anak-anak', 1),
	('000000002', 'Dewasa', 1),
	('000000003', 'Orang Tua', 1),
	('000000004', 'Remaja', 1);
/*!40000 ALTER TABLE `klasifikasi` ENABLE KEYS */;

-- Dumping structure for table sipudes.klasifikasi_penduduk
CREATE TABLE IF NOT EXISTS `klasifikasi_penduduk` (
  `nik` varchar(50) DEFAULT NULL,
  `id_klasifikasi` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table sipudes.klasifikasi_penduduk: ~8 rows (approximately)
/*!40000 ALTER TABLE `klasifikasi_penduduk` DISABLE KEYS */;
INSERT INTO `klasifikasi_penduduk` (`nik`, `id_klasifikasi`) VALUES
	('9879878978', '000000002'),
	('879678676', '000000002'),
	('769878767', '000000002'),
	('897980798', '000000003'),
	('67575577667', '000000003'),
	('76798697786767', '000000002'),
	('76798697786767', '000000003'),
	('123123123', '000000003');
/*!40000 ALTER TABLE `klasifikasi_penduduk` ENABLE KEYS */;

-- Dumping structure for table sipudes.penduduk
CREATE TABLE IF NOT EXISTS `penduduk` (
  `nik` varchar(100) NOT NULL,
  `nama` varchar(150) DEFAULT NULL,
  `tempat_lahir` varchar(50) DEFAULT NULL,
  `tanggal_lahir` varchar(10) DEFAULT NULL,
  `jk` varchar(10) DEFAULT NULL,
  `golongan_darah` varchar(5) DEFAULT NULL,
  `alamat` text,
  `pekerjaan` text,
  `kewarganegaraan` varchar(50) DEFAULT NULL,
  `id_agama` varchar(30) DEFAULT NULL,
  `id_kk` varchar(50) DEFAULT NULL,
  `foto` varchar(50) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  PRIMARY KEY (`nik`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table sipudes.penduduk: ~7 rows (approximately)
/*!40000 ALTER TABLE `penduduk` DISABLE KEYS */;
INSERT INTO `penduduk` (`nik`, `nama`, `tempat_lahir`, `tanggal_lahir`, `jk`, `golongan_darah`, `alamat`, `pekerjaan`, `kewarganegaraan`, `id_agama`, `id_kk`, `foto`, `status`) VALUES
	('123123123', 'AWDAWDADW', 'BANDUNG', '11/07/2019', 'Laki-laki', 'B', 'ADADADASDWADADAWDDDDDDDDDDDDDDDASDWAD ASDAWDA', 'ADAD ADWAWDADAW DAD', 'INDONESIA', '000000001', '000000002', '', 1),
	('67575577667', 'SURYA DINATA', 'BANDUNG', '12/09/1998', 'Laki-laki', 'AB', 'RT04', 'PNS', 'INDONESIA', '000000001', '000000005', 'uploadfoto2016083006161467575577667.jpeg', 1),
	('76798697786767', 'CAMELIA', 'BANDUNG', '12/09/1998', 'Perempuan', 'A', 'RT03', 'IBU RUMAH TANGGA', 'INDONESIA', '000000001', '000000002', 'uploadfoto2016083006100676798697786767.jpeg', 2),
	('769878767', 'FANA MAYA', 'BANDUNG', '12/08/1997', 'Laki-laki', 'AB', 'RT03', 'PNS', 'INDONESIA', '000000001', '000000003', 'uploadfoto20160830061254769878767.jpeg', 1),
	('879678676', 'ASAL COBA', 'BANDUNG', '01/08/2016', 'Laki-laki', 'A', 'RT02', 'PETANI', 'INDONESIA', '000000001', '000000002', 'uploadfoto20160829182418879678676.jpeg', 1),
	('897980798', 'MUHAMMAD ROIISUL ABIDIN', 'BANDUNG', '12/07/1998', 'Laki-laki', 'B', 'RT04', '-', 'INDONESIA', '000000001', '000000004', 'uploadfoto20160830061438897980798.jpeg', 1),
	('9879878978', 'RIZKI PEBRIANTO', 'BANDUNG', '01/08/1998', 'Laki-laki', 'A', 'RT04', 'PETANI', 'INDONESIA', '000000001', '000000001', 'uploadfoto201608280140499879878978.jpeg', 1);
/*!40000 ALTER TABLE `penduduk` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
