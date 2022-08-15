-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 15, 2022 at 05:14 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `amien`
--
CREATE DATABASE IF NOT EXISTS `amien` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `amien`;

-- --------------------------------------------------------

--
-- Table structure for table `ahmoi`
--

CREATE TABLE `ahmoi` (
  `nama` varchar(100) DEFAULT NULL,
  `umur` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ahmoi`
--

INSERT INTO `ahmoi` (`nama`, `umur`) VALUES
('Amien', 19),
('Sharifah', 16);
--
-- Database: `asrama`
--
CREATE DATABASE IF NOT EXISTS `asrama` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `asrama`;

-- --------------------------------------------------------

--
-- Table structure for table `blok`
--

CREATE TABLE `blok` (
  `Penyelia` varchar(200) DEFAULT NULL,
  `No_Bilik` varchar(10) NOT NULL,
  `Nama_Penghuni` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blok`
--

INSERT INTO `blok` (`Penyelia`, `No_Bilik`, `Nama_Penghuni`) VALUES
('Cik Ummi', 'A310', 'Hasya Maria'),
('En Alias', 'B029', 'Ahmad Dhani'),
('Cik Ummi', 'A206', 'Ashiya Maniam'),
('En Yakob', 'D501', 'Harith Irsyad'),
('Mr Wong', 'C104', 'Justin Wee');

-- --------------------------------------------------------

--
-- Table structure for table `penghuni`
--

CREATE TABLE `penghuni` (
  `Nama_Penghuni` varchar(200) DEFAULT NULL,
  `Alamat_Penghuni` varchar(200) DEFAULT NULL,
  `No_Telefon` varchar(15) NOT NULL,
  `No_Bilik` varchar(10) NOT NULL,
  `Penyelia` varchar(200) DEFAULT NULL,
  `Bil` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penghuni`
--

INSERT INTO `penghuni` (`Nama_Penghuni`, `Alamat_Penghuni`, `No_Telefon`, `No_Bilik`, `Penyelia`, `Bil`) VALUES
('Hasya Maria', 'A6-20,Apartment Ria', '0121234567', 'A310', 'Cik Ummi', 1),
('Ahmad Dhani', 'Kg Pasir Salak', '0137654321', 'B029', 'En Alias', 2),
('Ashiya Maniam', 'Lot 8,Taman Meru', '0149876543', 'A206', 'Cik Ummi', 3),
('Justin Wee', 'No 9,Parklane Avenue', '0153456789', 'C104', 'Mr Wong', 4),
('Harith Irsyad', 'Kg Baru', '0164567890', 'D501', 'En Yakob', 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `penghuni`
--
ALTER TABLE `penghuni`
  ADD PRIMARY KEY (`No_Telefon`);
--
-- Database: `country`
--
CREATE DATABASE IF NOT EXISTS `country` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `country`;

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `country_id` int(11) DEFAULT NULL,
  `country_name` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`country_id`, `country_name`) VALUES
(1, 'Malaysia'),
(2, 'Thailand'),
(3, 'Indonesia');

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `state_id` int(11) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `state_name` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`state_id`, `country_id`, `state_name`) VALUES
(101, 1, 'Pahang'),
(102, 1, 'Johor'),
(103, 3, 'Aceh');
--
-- Database: `e-kauseling`
--
CREATE DATABASE IF NOT EXISTS `e-kauseling` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `e-kauseling`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `ID` int(12) NOT NULL,
  `Nama` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`ID`, `Nama`, `Password`) VALUES
(30924, 'Abdullah Amien', 'orange2k');

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
  `ID_User` varchar(12) NOT NULL,
  `Fullname` varchar(100) NOT NULL,
  `Password` varchar(30) NOT NULL,
  `Kelas` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`ID_User`, `Fullname`, `Password`, `Kelas`) VALUES
('3009', 'Amien', 'orange2k', '1DVM IPD');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`ID_User`);
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"svv\",\"table\":\"video\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2022-02-21 08:00:48', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `sistemmaklumatpelajar`
--
CREATE DATABASE IF NOT EXISTS `sistemmaklumatpelajar` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `sistemmaklumatpelajar`;

-- --------------------------------------------------------

--
-- Table structure for table `jabatan`
--

CREATE TABLE `jabatan` (
  `kod_jab` varchar(10) NOT NULL,
  `nama_jabatan` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jabatan`
--

INSERT INTO `jabatan` (`kod_jab`, `nama_jabatan`) VALUES
('EET', 'Teknologi Elektrik dan Elektronik'),
('ICT', 'Teknologi Maklumat dan Komunikasi'),
('MMT', 'Teknologi Mekanikal dan Pembuatan');

-- --------------------------------------------------------

--
-- Table structure for table `pelajar`
--

CREATE TABLE `pelajar` (
  `ic_pelajar` varchar(100) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `jantina` varchar(50) DEFAULT NULL,
  `umur` int(20) DEFAULT NULL,
  `alamat` varchar(200) DEFAULT NULL,
  `negeri` varchar(50) DEFAULT NULL,
  `kod_program` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pelajar`
--

INSERT INTO `pelajar` (`ic_pelajar`, `nama`, `jantina`, `umur`, `alamat`, `negeri`, `kod_program`) VALUES
('000204-10-2414', 'NurFatimahbintiAbdullah', 'Perempuan', 20, '64-1 Jalan Impian Indah,Taman Sri Indah 43000 Kajang', 'Selangor', 'IPD'),
('001114-01-5126', 'Nursyahira binti Abu Bakar', 'Perempuan', 20, 'SS20/3, Uda Height, 82100 Bandar Baru Uda', 'Johor', 'MPI'),
('010120-01-1029', 'Razmi bin Razman', 'Lelaki', 19, 'No.13, Jalan 1/2A Taman Kenangan 35800 Slim River', 'Perak', 'ETE'),
('010606-10-2417', 'Wan Azli bin Wan Azran', 'Lelaki', 19, 'No.32, Jalan 4/3/A Taman Amansuria, 08000 Sungai Petani', 'Kedah', 'MTK'),
('990412-10-2418', 'Umi Aini binti Iskandar', 'Perempuan', 21, 'No.7,Kampung Telok,Mukim Binjal 75050 Bukit Gendong', 'Melaka', 'ISK');

-- --------------------------------------------------------

--
-- Table structure for table `program`
--

CREATE TABLE `program` (
  `kod_prog` varchar(10) NOT NULL,
  `nama_prog` varchar(100) DEFAULT NULL,
  `kod_jab` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `program`
--

INSERT INTO `program` (`kod_prog`, `nama_prog`, `kod_jab`) VALUES
('ETE', 'Elektrik', 'EET'),
('IPD', 'Pangkalan Data', 'ICT'),
('ISK', 'Sistem Komputer', 'ICT'),
('MPI', 'Pemesinan', 'MMT'),
('MTK', 'Kimpalan', 'MMT');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jabatan`
--
ALTER TABLE `jabatan`
  ADD PRIMARY KEY (`kod_jab`);

--
-- Indexes for table `pelajar`
--
ALTER TABLE `pelajar`
  ADD PRIMARY KEY (`ic_pelajar`);

--
-- Indexes for table `program`
--
ALTER TABLE `program`
  ADD PRIMARY KEY (`kod_prog`);
--
-- Database: `sjm`
--
CREATE DATABASE IF NOT EXISTS `sjm` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `sjm`;

-- --------------------------------------------------------

--
-- Table structure for table `pekerja`
--

CREATE TABLE `pekerja` (
  `ID_Pekerja` varchar(50) NOT NULL,
  `Nama_Pekerja` varchar(50) DEFAULT NULL,
  `Bandar` varchar(50) DEFAULT NULL,
  `Negeri` varchar(50) DEFAULT NULL,
  `Unit` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pekerja`
--

INSERT INTO `pekerja` (`ID_Pekerja`, `Nama_Pekerja`, `Bandar`, `Negeri`, `Unit`) VALUES
('ID001', 'Ali Ahmad', 'Kuching', 'Sarawak', 'Sumber Manusia'),
('ID002', 'Maria', 'Subang Jaya', 'Selangor', 'Kewangan'),
('ID003', 'Wee Ling', 'Arau', 'Perlis', 'Pemasaran'),
('ID004', 'Ramasamy', 'Batu Pahat', 'Johor', 'Pengurusan'),
('ID005', 'Michael', 'Butterworth', 'Pulau Pinang', 'Produk');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pekerja`
--
ALTER TABLE `pekerja`
  ADD PRIMARY KEY (`ID_Pekerja`);
--
-- Database: `spp`
--
CREATE DATABASE IF NOT EXISTS `spp` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `spp`;

-- --------------------------------------------------------

--
-- Table structure for table `kawasan`
--

CREATE TABLE `kawasan` (
  `Nama_Pekerja` varchar(100) DEFAULT NULL,
  `Kawasan` varchar(100) DEFAULT NULL,
  `Jum_Hantar` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kawasan`
--

INSERT INTO `kawasan` (`Nama_Pekerja`, `Kawasan`, `Jum_Hantar`) VALUES
('Amin Rashid', 'Shah Alam', 80),
('Ramesh', 'Ampang', 101),
('Faliq Rais', 'Cheras', 250),
('Wee Mun', 'Petaling Jaya', 75),
('Peter', 'Cheras', 150);

-- --------------------------------------------------------

--
-- Table structure for table `pekerja`
--

CREATE TABLE `pekerja` (
  `No_Pekerja` varchar(10) DEFAULT NULL,
  `Nama_Pekerja` varchar(100) DEFAULT NULL,
  `Kawasan` varchar(100) DEFAULT NULL,
  `No_Resit` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pekerja`
--

INSERT INTO `pekerja` (`No_Pekerja`, `Nama_Pekerja`, `Kawasan`, `No_Resit`) VALUES
('P101', 'Amin Rashid', 'Shah Alam', 200),
('P102', 'Ramesh', 'Ampang', 300),
('P103', 'Faliq Rais', 'Cheras', 100),
('P104', 'Wee Mun', 'Petaling Jaya', 400),
('P105', 'Peter', 'Cheras', 700);

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `Bil` int(100) DEFAULT NULL,
  `No_Hantar` int(100) NOT NULL,
  `Nama_Pelanggan` varchar(100) DEFAULT NULL,
  `Alamat` varchar(100) DEFAULT NULL,
  `No_Telefon` varchar(20) DEFAULT NULL,
  `Tarikh_Hantar` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`Bil`, `No_Hantar`, `Nama_Pelanggan`, `Alamat`, `No_Telefon`, `Tarikh_Hantar`) VALUES
(1, 101, 'Siti Najihah', '3,Jalan Meriah,Cheras', '0123455432', '2020-10-16'),
(2, 202, 'See Kiong', 'B10,Flat Sri Sabah,Shah Alam', '0109011979', '2020-10-16'),
(3, 303, 'Selvam', '12,Seri Menanti,Ampang', '0132705689', '2020-09-25'),
(4, 404, 'Mohd Aisy', '4,Taman Belia,Petaling Jaya', '0107653909', '2020-09-18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`No_Hantar`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `No_Hantar` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=405;
--
-- Database: `spvid`
--
CREATE DATABASE IF NOT EXISTS `spvid` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `spvid`;

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `NoPelanggan` varchar(10) NOT NULL,
  `NamaPelanggan` varchar(100) DEFAULT NULL,
  `NoKP` varchar(50) DEFAULT NULL,
  `Alamat` varchar(100) DEFAULT NULL,
  `NoTel` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`NoPelanggan`, `NamaPelanggan`, `NoKP`, `Alamat`, `NoTel`) VALUES
('001', 'Hanis Izzati', '700210036140', 'Balakong', '0344437901'),
('002', 'Syamsul Azri', '800319145562', 'Kajang', '0382330312'),
('003', 'Abdul Razi', '630314014442', 'Seri Kembangan', '0384229013'),
('005', 'Munzir Hakem', '800521146032', 'Bangi', '0383218803'),
('006', 'Nadia Nabila', '901112145046', 'Kajang', '0388562314');

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `NoVideo` varchar(10) DEFAULT NULL,
  `NoPelanggan` varchar(10) DEFAULT NULL,
  `Tajuk` varchar(100) DEFAULT NULL,
  `KadarSewa` varchar(10) DEFAULT NULL,
  `TarikhKeluaran` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`NoVideo`, `NoPelanggan`, `Tajuk`, `KadarSewa`, `TarikhKeluaran`) VALUES
('021', '004', 'Aladdin', '4.00', '2005-01-01'),
('022', '003', 'Conjuring', '6.00', '2007-02-15'),
('024', '001', 'Cinderella', '5.00', '2005-03-21'),
('023', '001', 'Star Wars', '7.00', '2017-05-12'),
('025', '006', 'Transfomers', '7.00', '2018-12-31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`NoPelanggan`);
--
-- Database: `svv`
--
CREATE DATABASE IF NOT EXISTS `svv` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `svv`;

-- --------------------------------------------------------

--
-- Table structure for table `penyewa`
--

CREATE TABLE `penyewa` (
  `ID_Penyewa` varchar(5) NOT NULL,
  `Nama_penyewa` varchar(50) DEFAULT NULL,
  `Alamat` varchar(90) DEFAULT NULL,
  `No_telefon` varchar(10) DEFAULT NULL,
  `Tarikh_pulang` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penyewa`
--

INSERT INTO `penyewa` (`ID_Penyewa`, `Nama_penyewa`, `Alamat`, `No_telefon`, `Tarikh_pulang`) VALUES
('P001', 'Adelia Asha', '57, Taman Ukay', '0119876543', '2022-02-27'),
('P002', 'Iman Bahar', 'F3,Blok Dahlia', '0192345678', '2022-03-03'),
('P003', 'Micheal Jacky', 'No 10,Perdana Villa', '0152348765', '2022-03-10'),
('P004', 'Soo Weng Kit', '8A,Lily Heights', '0129876543', '2022-02-20'),
('P005', 'Nina Kumar', '78,Jalan Megah', '0145678923', '2022-03-15');

-- --------------------------------------------------------

--
-- Table structure for table `produksi`
--

CREATE TABLE `produksi` (
  `Genre_Videos` varchar(200) DEFAULT NULL,
  `Produksi` varchar(200) DEFAULT NULL,
  `Bil_salinan` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `produksi`
--

INSERT INTO `produksi` (`Genre_Videos`, `Produksi`, `Bil_salinan`) VALUES
('Seram', 'ABC Production', 7),
('Cinta', 'Wayang Tiga', 9),
('Agama', 'Ilimiah Produksi', 4),
('Teknologi', 'Sonic Film', 6),
('Seram', 'Human Production', 5);

-- --------------------------------------------------------

--
-- Table structure for table `salinan`
--

CREATE TABLE `salinan` (
  `Tajuk_Video` varchar(200) DEFAULT NULL,
  `Bil_Salinan` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salinan`
--

INSERT INTO `salinan` (`Tajuk_Video`, `Bil_Salinan`) VALUES
('Hantu Rumah Limas', 7),
('Sayang Ummi', 9),
('We Are Here', 6);

-- --------------------------------------------------------

--
-- Table structure for table `sewaan`
--

CREATE TABLE `sewaan` (
  `Bil` int(100) NOT NULL,
  `Tajuk_Video` varchar(200) DEFAULT NULL,
  `Genre_Videos` varchar(200) DEFAULT NULL,
  `Produksi` varchar(200) DEFAULT NULL,
  `Bil_Salinan` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sewaan`
--

INSERT INTO `sewaan` (`Bil`, `Tajuk_Video`, `Genre_Videos`, `Produksi`, `Bil_Salinan`) VALUES
(1, 'Hantu Rumah Limas', 'Seram', 'ABC Production', 7),
(2, 'Sayang Ummi', 'Cinta', 'Wayang Tiga', 9),
(3, 'Bersyukur', 'Agama', 'Ilmiah Produksi', 4);

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `Tajuk_Video` varchar(200) DEFAULT NULL,
  `Produksi` varchar(200) DEFAULT NULL,
  `Bil_Salinan` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`Tajuk_Video`, `Produksi`, `Bil_Salinan`) VALUES
('Agung Illahi', 'Ilmiah Produksi', 4),
('We Are Here', 'Sonic Film', 6),
('Ghostly Haunted', 'Human Production', 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `penyewa`
--
ALTER TABLE `penyewa`
  ADD PRIMARY KEY (`ID_Penyewa`);

--
-- Indexes for table `sewaan`
--
ALTER TABLE `sewaan`
  ADD PRIMARY KEY (`Bil`);
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Database: `undian_kvsa`
--
CREATE DATABASE IF NOT EXISTS `undian_kvsa` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `undian_kvsa`;

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `image` text NOT NULL,
  `id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`image`, `id`) VALUES
('haewon.jpg', 9);

-- --------------------------------------------------------

--
-- Table structure for table `simple_pengenalan`
--

CREATE TABLE `simple_pengenalan` (
  `Id` int(10) NOT NULL,
  `pengenalan` text NOT NULL,
  `visi` text NOT NULL,
  `misi` text NOT NULL,
  `images_url` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `simple_pengenalan`
--

INSERT INTO `simple_pengenalan` (`Id`, `pengenalan`, `visi`, `misi`, `images_url`) VALUES
(1, 'MPP adalah satu kumpulan wakil pelajar yang ditubuhkan melalui pilihan raya', 'Bana', 'Banana', 'jadual bertugas.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `Fullname` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `Fullname`) VALUES
(1, 'abd_amien', 'orange2k', 'Abdullah Amien'),
(2, 'Timi', 'timibotak', 'Aiman Yatimi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `simple_pengenalan`
--
ALTER TABLE `simple_pengenalan`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `simple_pengenalan`
--
ALTER TABLE `simple_pengenalan`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
