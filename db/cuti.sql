-- phpMyAdmin SQL Dump
-- version 2.8.0.3
-- http://www.phpmyadmin.net
-- 
-- Host: localhost
-- Generation Time: Feb 03, 2020 at 12:56 AM
-- Server version: 5.0.20
-- PHP Version: 5.1.2
-- 
-- Database: `cuti`
-- 

-- --------------------------------------------------------

-- 
-- Table structure for table `acara`
-- 

CREATE TABLE `acara` (
  `id_acara` int(6) NOT NULL auto_increment,
  `acara` text collate latin1_general_ci NOT NULL,
  `hari` varchar(30) collate latin1_general_ci NOT NULL,
  `tanggal` varchar(10) collate latin1_general_ci NOT NULL,
  `waktu` varchar(5) collate latin1_general_ci NOT NULL,
  `tempat` varchar(500) collate latin1_general_ci NOT NULL,
  `id_pegawai` varchar(6) collate latin1_general_ci NOT NULL,
  `keterangan` text collate latin1_general_ci NOT NULL,
  `status` varchar(30) collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`id_acara`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `acara`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `atasan`
-- 

CREATE TABLE `atasan` (
  `id_atasan` int(6) NOT NULL auto_increment,
  `atasan` varchar(100) collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`id_atasan`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `atasan`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `barang`
-- 

CREATE TABLE `barang` (
  `id_barang` int(6) NOT NULL auto_increment,
  `nama_barang` varchar(500) collate latin1_general_ci NOT NULL,
  `satuan` varchar(50) collate latin1_general_ci NOT NULL,
  `harga` varchar(10) collate latin1_general_ci NOT NULL,
  `kategori` varchar(20) collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`id_barang`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=195 ;

-- 
-- Dumping data for table `barang`
-- 

INSERT INTO `barang` VALUES (1, 'flash disk', 'Buah', '145000', 'Peralatan Perlengkap');
INSERT INTO `barang` VALUES (2, 'Keyboard', 'Buah', '155000', 'Peralatan Perlengkap');
INSERT INTO `barang` VALUES (3, 'Mouse', 'Buah', '95000', 'Peralatan Perlengkap');
INSERT INTO `barang` VALUES (4, 'Mouse optik', 'Buah', '175000', 'Peralatan Perlengkap');
INSERT INTO `barang` VALUES (5, 'Modem', 'Buah', '340000', 'Peralatan Perlengkap');
INSERT INTO `barang` VALUES (6, 'Rebon Printer e-KTP', 'Buah', '4000000', 'Peralatan Perlengkap');
INSERT INTO `barang` VALUES (7, 'Catridege printer (I)', 'Buah', '370000', 'Peralatan Perlengkap');
INSERT INTO `barang` VALUES (8, 'Catridege printer (II)', 'Buah', '275000', 'Peralatan Perlengkap');
INSERT INTO `barang` VALUES (9, 'Catridege printer laser jet', 'Buah', '1100000', 'Peralatan Perlengkap');
INSERT INTO `barang` VALUES (10, 'Ribbon Pritonik', 'Buah', '900000', 'Peralatan Perlengkap');
INSERT INTO `barang` VALUES (11, 'Catridege Multi colour', 'Buah', '3600000', 'Peralatan Perlengkap');
INSERT INTO `barang` VALUES (12, 'Refill /tinta botol  (kualitas I)', 'Buah', '150000', 'Peralatan Perlengkap');
INSERT INTO `barang` VALUES (13, 'Refill /tinta botol  (kualitas II)', 'Buah', '85000', 'Peralatan Perlengkap');
INSERT INTO `barang` VALUES (14, 'Refill / tinta Kotak', 'Kotak', '34500', 'Peralatan Perlengkap');
INSERT INTO `barang` VALUES (15, 'Refill Toner Printer laser jet', 'Buah', '450000', 'Peralatan Perlengkap');
INSERT INTO `barang` VALUES (16, 'Pita Printer Double folio', 'Buah', '125000', 'Peralatan Perlengkap');
INSERT INTO `barang` VALUES (17, 'Pita Printer Folio', 'Buah', '30000', 'Peralatan Perlengkap');
INSERT INTO `barang` VALUES (18, 'Pita mesin tik', 'Buah', '15000', 'Peralatan Perlengkap');
INSERT INTO `barang` VALUES (19, 'Tinta stensil', 'Buah', '75000', 'Peralatan Perlengkap');
INSERT INTO `barang` VALUES (20, 'CD / DVD blank', 'Keping', '5000', 'Peralatan Perlengkap');
INSERT INTO `barang` VALUES (21, 'Modem  GSM (LTE/4G)', 'Buah', '750000', 'Peralatan Perlengkap');
INSERT INTO `barang` VALUES (22, 'Kabel power charge', 'Buah', '100000', 'Peralatan Perlengkap');
INSERT INTO `barang` VALUES (23, 'Charge laptop', 'Buah', '600000', 'Peralatan Perlengkap');
INSERT INTO `barang` VALUES (24, 'Baterai laptop', 'Buah', '600000', 'Peralatan Perlengkap');
INSERT INTO `barang` VALUES (25, 'Baterai UPS', 'Buah', '400000', 'Peralatan Perlengkap');
INSERT INTO `barang` VALUES (26, 'Power suplay', 'Buah', '1200000', 'Peralatan Perlengkap');
INSERT INTO `barang` VALUES (27, 'RAM PC Dekstop', 'Buah', '1000000', 'Peralatan Perlengkap');
INSERT INTO `barang` VALUES (28, 'Ribbon Printer kartu Id Card', 'Buah', '2000000', 'Peralatan Perlengkap');
INSERT INTO `barang` VALUES (29, 'Toner Mesin Fotocopy mini', 'Buah', '750000', 'Peralatan Perlengkap');
INSERT INTO `barang` VALUES (30, 'Cetak ID card', 'Buah', '5000', 'Cetak');
INSERT INTO `barang` VALUES (31, 'Cetak kartu nama', 'Kotak', '100000', 'Cetak');
INSERT INTO `barang` VALUES (32, 'Cetak kop di map', 'Lembar', '5000', 'Cetak');
INSERT INTO `barang` VALUES (33, 'Cetak ukuran 1/4 folio', 'Pak', '10000', 'Cetak');
INSERT INTO `barang` VALUES (34, 'Cetak ukuran 1/2 folio', 'Pak', '15000', 'Cetak');
INSERT INTO `barang` VALUES (35, 'Cetak ukuran folio', 'Pak', '25000', 'Cetak');
INSERT INTO `barang` VALUES (36, 'Cetak ukuran double folio', 'Pak', '35000', 'Cetak');
INSERT INTO `barang` VALUES (37, 'Cetak ukuran 1/4 folio NCR', 'Pak', '25000', 'Cetak');
INSERT INTO `barang` VALUES (38, 'Cetak ukuran 1/2 folio NCR', 'Pak', '35000', 'Cetak');
INSERT INTO `barang` VALUES (39, 'Cetak ukuran  folio NCR', 'Pak', '4500', 'Cetak');
INSERT INTO `barang` VALUES (40, 'Cetak ukuran double folio NCR', 'Pak', '55000', 'Cetak');
INSERT INTO `barang` VALUES (41, 'Cetak piagam', 'Lembar', '10000', 'Cetak');
INSERT INTO `barang` VALUES (42, 'Cetak stiker kecil', 'Lembar', '1500', 'Cetak');
INSERT INTO `barang` VALUES (43, 'Cetak stiker sedang', 'Lembar', '2500', 'Cetak');
INSERT INTO `barang` VALUES (44, 'Cetak stiker besar', 'Lembar', '5000', 'Cetak');
INSERT INTO `barang` VALUES (45, 'Cetak stiker ekstra besar', 'Lembar', '15000', 'Cetak');
INSERT INTO `barang` VALUES (46, 'Cetak amplop putih', 'Kotak', '50000', 'Cetak');
INSERT INTO `barang` VALUES (47, 'Cetak amplop coklat', 'Kotak', '170000', 'Cetak');
INSERT INTO `barang` VALUES (48, 'Cetak map biasa', 'Pak', '50000', 'Cetak');
INSERT INTO `barang` VALUES (49, 'Cetak map premium', 'Pak', '75000', 'Cetak');
INSERT INTO `barang` VALUES (50, 'Cetak pita pembatas', 'Roll', '35000', 'Cetak');
INSERT INTO `barang` VALUES (51, 'Cetak continous NCR', 'Kotak', '600000', 'Cetak');
INSERT INTO `barang` VALUES (52, 'Cetak NCR Kuitansi', 'Kotak', '40000', 'Cetak');
INSERT INTO `barang` VALUES (53, 'Cetak NCR Kuarto', 'Kotak', '300000', 'Cetak');
INSERT INTO `barang` VALUES (54, 'Cetak Spanduk', 'Meter', '50000', 'Cetak');
INSERT INTO `barang` VALUES (55, 'Cetak pas photo', 'Lembar', '1500', 'Cetak');
INSERT INTO `barang` VALUES (56, 'Cetak photo 3R', 'Lembar', '2000', 'Cetak');
INSERT INTO `barang` VALUES (57, 'Cetak photo 4R', 'Lembar', '3000', 'Cetak');
INSERT INTO `barang` VALUES (58, 'Cetak photo 5R', 'Lembar', '5000', 'Cetak');
INSERT INTO `barang` VALUES (59, 'Cetak photo 6R', 'Lembar', '75000', 'Cetak');
INSERT INTO `barang` VALUES (60, 'Cetak photo 7R', 'Lembar', '10000', 'Cetak');
INSERT INTO `barang` VALUES (61, 'Cetak photo 8R', 'Lembar', '15000', 'Cetak');
INSERT INTO `barang` VALUES (62, 'Cetak photo 10R', 'Lembar', '20000', 'Cetak');
INSERT INTO `barang` VALUES (63, 'Cetak kertas blanko', 'Eksemplar', '100000', 'Cetak');
INSERT INTO `barang` VALUES (64, 'Cetak surat kop', 'Rim', '175000', 'Cetak');
INSERT INTO `barang` VALUES (65, 'Cetak kertas nota', 'Eksemplar', '175000', 'Cetak');
INSERT INTO `barang` VALUES (66, 'Cetak blanko disposisi', 'Rim', '175000', 'Cetak');
INSERT INTO `barang` VALUES (67, 'Cetak kartu kendali surat masuk NCR', 'Rim', '175000', 'Cetak');
INSERT INTO `barang` VALUES (68, 'Cetak kertas SSP NCR', 'Rim', '175000', 'Cetak');
INSERT INTO `barang` VALUES (69, 'Cetak Amplop Kop SKPD ', 'Kotak', '170000', 'Cetak');
INSERT INTO `barang` VALUES (70, 'Cetak Amplop kasing extra folio coklat', 'Kotak', '115000', 'Cetak');
INSERT INTO `barang` VALUES (71, 'Cetak  map kop SKPD', 'Kotak', '115000', 'Cetak');
INSERT INTO `barang` VALUES (72, 'Cetak buku', 'Eksemplar', '250000', 'Cetak');
INSERT INTO `barang` VALUES (73, 'Cetak jilid', 'Buah', '50000', 'Cetak');
INSERT INTO `barang` VALUES (74, 'Cetak pandel/plakat', 'Buah', '450000', 'Cetak');
INSERT INTO `barang` VALUES (75, 'Cetak kertas undangan', 'Lembar', '7500', 'Cetak');
INSERT INTO `barang` VALUES (76, 'Cetak kalender', 'Lembar', '50000', 'Cetak');
INSERT INTO `barang` VALUES (77, 'Cetak buletin', 'Halaman', '5000', 'Cetak');
INSERT INTO `barang` VALUES (78, 'Cetak kop garuda mas', 'Rim', '500000', 'Cetak');
INSERT INTO `barang` VALUES (79, 'Cetak brosur', 'Lembar', '10000', 'Cetak');
INSERT INTO `barang` VALUES (80, 'Cetak ijazah', 'Lembar', '10000', 'Cetak');
INSERT INTO `barang` VALUES (81, 'Cetak sertifikat hasil ujian', 'Lembar', '10000', 'Cetak');
INSERT INTO `barang` VALUES (82, 'Amplop kecil', 'Kotak', '14500', 'ATK');
INSERT INTO `barang` VALUES (83, 'Amplop sedang', 'Kotak', '17000', 'ATK');
INSERT INTO `barang` VALUES (84, 'Amplop besar', 'Kotak', '24500', 'ATK');
INSERT INTO `barang` VALUES (85, 'Amplop Coklat Kecil', 'Pak', '25000', 'ATK');
INSERT INTO `barang` VALUES (86, 'Amplop Coklat Sedang', 'Pak', '41000', 'ATK');
INSERT INTO `barang` VALUES (87, 'Amplop Coklat besar', 'Pak', '51000', 'ATK');
INSERT INTO `barang` VALUES (88, 'Ballpoint', 'Buah', '7500', 'ATK');
INSERT INTO `barang` VALUES (89, 'Ballpoint Balliner/Besar/Tebal', 'Buah', '19500', 'ATK');
INSERT INTO `barang` VALUES (90, 'Pensil 2B', 'Buah', '5000', 'ATK');
INSERT INTO `barang` VALUES (91, 'Spidol Kecil', 'Buah', '2500', 'ATK');
INSERT INTO `barang` VALUES (92, 'Spidol whiteboard', 'Buah', '10000', 'ATK');
INSERT INTO `barang` VALUES (93, 'spidol permanent', 'Buah', '10000', 'ATK');
INSERT INTO `barang` VALUES (94, 'Penanda setara stabilo kecil', 'Buah', '9500', 'ATK');
INSERT INTO `barang` VALUES (95, 'Penanda setara stabilo besar', 'Buah', '12500', 'ATK');
INSERT INTO `barang` VALUES (96, 'Crayon', 'Kotak', '38000', 'ATK');
INSERT INTO `barang` VALUES (97, 'rautan Pensil', 'Buah', '8000', 'ATK');
INSERT INTO `barang` VALUES (98, 'Pemutih kertas', 'Buah', '7000', 'ATK');
INSERT INTO `barang` VALUES (99, 'Penghapus pensil', 'Buah', '3500', 'ATK');
INSERT INTO `barang` VALUES (100, 'Penghapus white board', 'Buah', '8500', 'ATK');
INSERT INTO `barang` VALUES (101, 'Penggaris plastik 30 cm', 'Buah', '7000', 'ATK');
INSERT INTO `barang` VALUES (102, 'Penggaris besi 30 cm', 'Buah', '10500', 'ATK');
INSERT INTO `barang` VALUES (103, 'Penggaris besi 60 cm', 'Buah', '21000', 'ATK');
INSERT INTO `barang` VALUES (104, 'Papper clip kecil', 'Kotak', '4000', 'ATK');
INSERT INTO `barang` VALUES (105, 'Papper clip besar', 'Kotak', '7500', 'ATK');
INSERT INTO `barang` VALUES (106, 'Binder kecil', 'Kotak', '16500', 'ATK');
INSERT INTO `barang` VALUES (107, 'Binder  sedang', 'Kotak', '22000', 'ATK');
INSERT INTO `barang` VALUES (108, 'Binder besar', 'Kotak', '28000', 'ATK');
INSERT INTO `barang` VALUES (109, 'Pelubang kertas kecil', 'Buah', '48000', 'ATK');
INSERT INTO `barang` VALUES (110, 'Pelubang kertas besar', 'Buah', '145000', 'ATK');
INSERT INTO `barang` VALUES (111, 'Bak stempel', 'Buah', '12500', 'ATK');
INSERT INTO `barang` VALUES (112, 'Tinta Stempel', 'Buah', '11500', 'ATK');
INSERT INTO `barang` VALUES (113, 'Blanko ssp', 'Buah', '25500', 'ATK');
INSERT INTO `barang` VALUES (114, 'Buku absen', 'Buah', '16500', 'ATK');
INSERT INTO `barang` VALUES (115, 'Buku agenda', 'Buah', '24000', 'ATK');
INSERT INTO `barang` VALUES (116, 'Buku agenda premium', 'Buah', '29000', 'ATK');
INSERT INTO `barang` VALUES (117, 'Buku ekspedisi 100 Lembar', 'Buah', '10000', 'ATK');
INSERT INTO `barang` VALUES (118, 'Buku ekspedisi 200 Lembar', 'Buah', '20000', 'ATK');
INSERT INTO `barang` VALUES (119, 'Buku kwarto', 'Buah', '16500', 'ATK');
INSERT INTO `barang` VALUES (120, 'Buku folio', 'Buah', '22000', 'ATK');
INSERT INTO `barang` VALUES (121, 'Buku kuitansi pasar', 'Buah', '8000', 'ATK');
INSERT INTO `barang` VALUES (122, 'Buku tulis / notes', 'Buah', '6500', 'ATK');
INSERT INTO `barang` VALUES (123, 'Clip kertas', 'Buah', '6500', 'ATK');
INSERT INTO `barang` VALUES (124, 'Cutter kecil', 'Buah', '7500', 'ATK');
INSERT INTO `barang` VALUES (125, 'Cutter besar', 'Buah', '17500', 'ATK');
INSERT INTO `barang` VALUES (126, 'Gunting kecil', 'Buah', '10000', 'ATK');
INSERT INTO `barang` VALUES (127, 'Gunting besar', 'Buah', '14000', 'ATK');
INSERT INTO `barang` VALUES (128, 'Stapler besar', 'Buah', '68000', 'ATK');
INSERT INTO `barang` VALUES (129, 'Stapler kecil', 'Buah', '33000', 'ATK');
INSERT INTO `barang` VALUES (130, 'Kertas F4 70 gram', 'Rim', '55000', 'ATK');
INSERT INTO `barang` VALUES (131, 'Kertas A4 70 gram', 'Rim', '53000', 'ATK');
INSERT INTO `barang` VALUES (132, 'Kertas F4 80 gram', 'Rim', '60000', 'ATK');
INSERT INTO `barang` VALUES (133, 'Kertas A4 80 gram', 'Rim', '57000', 'ATK');
INSERT INTO `barang` VALUES (134, 'Kertas A3 70 gram', 'Rim', '77000', 'ATK');
INSERT INTO `barang` VALUES (135, 'Kertas concrode', 'Rim', '90000', 'ATK');
INSERT INTO `barang` VALUES (136, 'Kertas NCR', 'Rim', '100000', 'ATK');
INSERT INTO `barang` VALUES (137, 'Kertas cover', 'Pak', '35000', 'ATK');
INSERT INTO `barang` VALUES (138, 'Plastik cover', 'Pak', '57000', 'ATK');
INSERT INTO `barang` VALUES (139, 'Kertas folio bergaris', 'Pak', '23500', 'ATK');
INSERT INTO `barang` VALUES (140, 'Kertas duplikator', 'Pak', '59000', 'ATK');
INSERT INTO `barang` VALUES (141, 'Kertas karbon', 'Pak', '62000', 'ATK');
INSERT INTO `barang` VALUES (142, 'Kertas karton', 'Lembar', '9000', 'ATK');
INSERT INTO `barang` VALUES (143, 'Kertas label', 'Lembar', '9000', 'ATK');
INSERT INTO `barang` VALUES (144, 'Kertas linen', 'Lembar', '5000', 'ATK');
INSERT INTO `barang` VALUES (145, 'Kertas manila', 'Lembar', '7000', 'ATK');
INSERT INTO `barang` VALUES (146, 'Kertas transparan', 'Pak', '38500', 'ATK');
INSERT INTO `barang` VALUES (147, 'Map plastik tali', 'Buah', '8500', 'ATK');
INSERT INTO `barang` VALUES (148, 'Map tali', 'Buah', '6000', 'ATK');
INSERT INTO `barang` VALUES (149, 'Kertas stensil', 'Pak', '46500', 'ATK');
INSERT INTO `barang` VALUES (150, 'Kertas fax', 'Buah', '30000', 'ATK');
INSERT INTO `barang` VALUES (151, 'Kertas stiker', 'Pak', '10000', 'ATK');
INSERT INTO `barang` VALUES (152, 'Kertas stiker glossy', 'Pak', '40000', 'ATK');
INSERT INTO `barang` VALUES (153, 'Isi cutter kecil', 'Kotak', '21500', 'ATK');
INSERT INTO `barang` VALUES (154, 'Isi cutter besar', 'Kotak', '38000', 'ATK');
INSERT INTO `barang` VALUES (155, 'Isi stapler kecil', 'Kotak', '3000', 'ATK');
INSERT INTO `barang` VALUES (156, 'Isi stapler besar', 'Kotak', '6500', 'ATK');
INSERT INTO `barang` VALUES (157, 'Kalkulator', 'Buah', '190000', 'ATK');
INSERT INTO `barang` VALUES (158, 'Kapur tulis', 'Kotak', '8000', 'ATK');
INSERT INTO `barang` VALUES (159, 'Lakban', 'Buah', '18000', 'ATK');
INSERT INTO `barang` VALUES (160, 'Isolasi bolak balik', 'Buah', '16500', 'ATK');
INSERT INTO `barang` VALUES (161, 'Isolasi biasa', 'Buah', '5000', 'ATK');
INSERT INTO `barang` VALUES (162, 'Lem kertas', 'Buah', '5500', 'ATK');
INSERT INTO `barang` VALUES (163, 'Lem kertas stik', 'Buah', '12000', 'ATK');
INSERT INTO `barang` VALUES (164, 'Map kertas biasa', 'Lembar', '1000', 'ATK');
INSERT INTO `barang` VALUES (165, 'Map kertas peserta', 'Lembar', '3000', 'ATK');
INSERT INTO `barang` VALUES (166, 'Map kertas snelhecter', 'Pak', '62000', 'ATK');
INSERT INTO `barang` VALUES (167, 'Map kertas batik / sejenis', 'Lembar', '7500', 'ATK');
INSERT INTO `barang` VALUES (168, 'Map plastik snelhecter', 'Lembar', '10000', 'ATK');
INSERT INTO `barang` VALUES (169, 'Map odner kertas', 'Buah', '26000', 'ATK');
INSERT INTO `barang` VALUES (170, 'Map odner plastik', 'Buah', '36000', 'ATK');
INSERT INTO `barang` VALUES (171, 'Map odner premium', 'Buah', '47000', 'ATK');
INSERT INTO `barang` VALUES (172, 'Map gantung', 'Buah', '11000', 'ATK');
INSERT INTO `barang` VALUES (173, 'Tas peserta', 'Buah', '59000', 'ATK');
INSERT INTO `barang` VALUES (174, 'Tas plastik', 'Buah', '17000', 'ATK');
INSERT INTO `barang` VALUES (175, 'Papan alat tulis', 'Buah', '24000', 'ATK');
INSERT INTO `barang` VALUES (176, 'Name tag peserta', 'Buah', '3000', 'ATK');
INSERT INTO `barang` VALUES (177, 'Name tag id card', 'Buah', '3000', 'ATK');
INSERT INTO `barang` VALUES (178, 'Holder / yoyo', 'set', '14000', 'ATK');
INSERT INTO `barang` VALUES (179, 'Papan nama pegawai', 'Buah', '25000', 'ATK');
INSERT INTO `barang` VALUES (180, 'Kertas buram', 'Rim', '26000', 'ATK');
INSERT INTO `barang` VALUES (181, 'Plastik sampul gulungan', 'roll', '312500', 'ATK');
INSERT INTO `barang` VALUES (182, 'Tali rafia', 'kg', '31000', 'ATK');
INSERT INTO `barang` VALUES (183, 'Folder biasa', 'set', '11000', 'ATK');
INSERT INTO `barang` VALUES (184, 'Kertas samson/pembungkus arsip', 'Lembar', '5000', 'ATK');
INSERT INTO `barang` VALUES (185, 'Lem Rajawai', 'Buah', '17500', 'ATK');
INSERT INTO `barang` VALUES (186, 'PVC Blank ID card isi 500 pcs', 'Kotak', '550000', 'ATK');
INSERT INTO `barang` VALUES (187, 'Stempel', 'Buah', '30000', 'ATK');
INSERT INTO `barang` VALUES (188, 'Pembatas kertas warna / Sticknote', 'Buah', '15000', 'ATK');
INSERT INTO `barang` VALUES (189, 'Push pin', 'Buah', '10000', 'ATK');
INSERT INTO `barang` VALUES (190, 'Penggaris kayu', 'Buah', '15000', 'ATK');
INSERT INTO `barang` VALUES (191, 'Busur Kayu', 'Buah', '15000', 'ATK');
INSERT INTO `barang` VALUES (192, 'Jangka Kayu', 'Buah', '15000', 'ATK');
INSERT INTO `barang` VALUES (193, 'Segitiga Kayu', 'Buah', '3000', 'ATK');

-- --------------------------------------------------------

-- 
-- Table structure for table `belanja_barang`
-- 

CREATE TABLE `belanja_barang` (
  `id_belanja` int(10) NOT NULL auto_increment,
  `id_spk` varchar(10) collate latin1_general_ci NOT NULL,
  `id_barang` varchar(10) collate latin1_general_ci NOT NULL,
  `keterangan` varchar(500) collate latin1_general_ci NOT NULL,
  `qty` varchar(10) collate latin1_general_ci NOT NULL,
  `jumlah` varchar(20) collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`id_belanja`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `belanja_barang`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `buku_tamu`
-- 

CREATE TABLE `buku_tamu` (
  `id_tamu` int(6) NOT NULL auto_increment,
  `nama` varchar(500) collate latin1_general_ci NOT NULL,
  `instansi` varchar(500) collate latin1_general_ci NOT NULL,
  `keperluan` text collate latin1_general_ci NOT NULL,
  `tanggal` varchar(100) collate latin1_general_ci NOT NULL,
  `id_petugas` varchar(10) collate latin1_general_ci NOT NULL,
  `no_urut` varchar(10) collate latin1_general_ci NOT NULL,
  `unix` varchar(20) collate latin1_general_ci NOT NULL,
  `tahun` varchar(4) collate latin1_general_ci NOT NULL,
  `bulan` varchar(4) collate latin1_general_ci NOT NULL,
  `formasi` varchar(20) collate latin1_general_ci NOT NULL,
  `hari` varchar(2) collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`id_tamu`),
  UNIQUE KEY `unix` (`unix`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=1710 ;

-- 
-- Dumping data for table `buku_tamu`
-- 

INSERT INTO `buku_tamu` VALUES (1, 'CHYNTIA HANDAYANI', 'JL. PRAMUKA NO 12 RT 03 RW 06 KEL. MENTAOS. KEC. BANJARBARU UTARA / 082153904383', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '13-11-2019, 1:07 am', '9', '0001', '7ogq9HBvpTX5', '2019', '911', 'Tenaga Pendidikan', '13');
INSERT INTO `buku_tamu` VALUES (2, 'YUSELLA BUDI PARADINA', 'JL. LAKSANA INTAN GG TAUFIK NO 36 RT 15 KELAYAN SELATAN, BANJARMASIN SELATAN,/081348075270', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Apoteker', '13-11-2019, 1:53 am', '10', '0001', '348mOvI1PA3i', '2019', '911', 'Tenaga Kesehatan', '13');
INSERT INTO `buku_tamu` VALUES (3, 'HELMAN RAMADHANI', 'JL. HARMONI 2 KOMPLEK. BUMI RAYA PERMAI. 085247112851', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Asisten Apoteker', '13-11-2019, 2:04 am', '10', '0002', 'BONjMb9zenug', '2019', '911', 'Tenaga Kesehatan', '13');
INSERT INTO `buku_tamu` VALUES (4, 'SETIAWAN', 'KOMP.KENCANA PERMAI BLOK E.10 RT. 25 RW. 011, LOKTABAT UTARA BANJARBARU/ 081357394463', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Penyuluh Kesehatan Masyarakat', '13-11-2019, 2:40 am', '10', '0003', '8r8TxGmr7Xa2', '2019', '911', 'Tenaga Kesehatan', '13');
INSERT INTO `buku_tamu` VALUES (5, 'ANNISA MUNAWARAH', 'JL. SIMPANG CEMARA RAYA 2 RT.40 RW.001 NO.112 KELURAHAN SUNGAI MIAI, KECAMATAN BANJARMASIN UTARA KOTA BANJARMASIN / 081351273586', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Bidan', '13-11-2019, 3:04 am', '10', '0004', 'LJ0v7ZkW5kRd', '2019', '911', 'Tenaga Kesehatan', '13');
INSERT INTO `buku_tamu` VALUES (6, 'RM. HERRU TRIO CHRIESNA', 'JL. KENARI BLOK W 05 GRIYA ULIN PERMAI RT.001 RW.004 KELURAHAN LANDASAN ULIN TIMUR KECAMATAN LANDASAN ULIN KOTA BANJARBARU/082255617550', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Pranata Komputer', '13-11-2019, 3:07 am', '10', '0001', 'M8r3p7G1fR80', '2019', '911', 'Tenaga Teknis', '13');
INSERT INTO `buku_tamu` VALUES (7, 'HADIJATUL HIKMAH', 'SUNGAI TIUNG, RT.006/002 BANJARBARU / 087846372584', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Analis Keuangan Pemerintah Pusat dan Daerah', '13-11-2019, 3:44 am', '10', '0002', '7TQK3z34jmGh', '2019', '911', 'Tenaga Teknis', '13');
INSERT INTO `buku_tamu` VALUES (8, 'MUHAMAD BAKHRIN NOOR', 'JL. TARUNA PRAJA KOMPLEK BALITAN 8 BLOK A NO.3 RT47/XII KELURAHAN LOKTABAT UTARA, KECAMATAN BANJARBARU UTARA, KOTA BANJARBARU / 081250098010', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Pengelola Pengadaan Barang/Jasa', '13-11-2019, 3:54 am', '10', '0003', 'iGc7nbKMEL89', '2019', '911', 'Tenaga Teknis', '13');
INSERT INTO `buku_tamu` VALUES (9, 'NOR LAILA AGUSTINA', 'JL. TARUNA PRAJA RAYA KOMP BALITAN 8 BLOK A NO 03 RT/RW 47/12, LOKTABAT UTARA , BANJARBARU UTARA/ 082254571116', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Pranata Laboratorium Kesehatan', '13-11-2019, 3:56 am', '10', '0005', 'r8Cj61U9aO69', '2019', '911', 'Tenaga Kesehatan', '13');
INSERT INTO `buku_tamu` VALUES (10, 'AHMAD WAHYUNI', 'JL.IR. P. M. NOOR RT.02 DESA PADANG PANJANG KECAMATAN KARANG INTAN KABUPATEN BANJAR / 089637887485', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '13-11-2019, 5:25 am', '10', '0006', 'a09T2vnHCI0c', '2019', '911', 'Tenaga Kesehatan', '13');
INSERT INTO `buku_tamu` VALUES (11, 'DINNI NURSYAHBANI', 'ASRAMA DENZIPUR-8 RT 12/RW 02 DESA GUNTUNG MANGGIS KECAMATAN LANDASAN ULIN KOTA BANJARBARU', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Bidan', '13-11-2019, 5:49 am', '10', '0007', '2v3kyduG78CK', '2019', '911', 'Tenaga Kesehatan', '13');
INSERT INTO `buku_tamu` VALUES (12, 'ELLYSA HARLIANTI', 'JL. GOTONG ROYONG NO. 46 BANJARBARU/ 08991235910', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Bidan', '14-11-2019, 12:39 am', '10', '0001', 'eFiorsOIAnq0', '2019', '911', 'Tenaga Kesehatan', '14');
INSERT INTO `buku_tamu` VALUES (13, 'SYARIFAH NORHASANAH', 'JL. MENTERI EMPAT NO. 25 RT. 24. MARTAPURA / 85247005133', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Pranata Laboratorium Kesehatan', '14-11-2019, 12:42 am', '10', '0002', '7Qyicx5agF6K', '2019', '911', 'Tenaga Kesehatan', '14');
INSERT INTO `buku_tamu` VALUES (14, 'NANIK DWI ASTUTI', 'JL. SINAR BARU KOMP. GRIYA SINAR BARU RT.024 RW.006 SUNGAI ULIN BANJARBARU / 082152622285', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Analis Keuangan Pemerintah Pusat dan Daerah', '14-11-2019, 12:43 am', '10', '0001', '7yEO1Hnorjty', '2019', '911', 'Tenaga Teknis', '14');
INSERT INTO `buku_tamu` VALUES (15, 'FAHRINA', 'JL. A. YANI KM. 3,5 KOMP. WIJAYA KUSUMA NO.23 BANJARMASIN / 085251504624', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Analis Keuangan Pemerintah Pusat dan Daerah', '14-11-2019, 12:46 am', '10', '0002', 'Y7PWrFt6sEXE', '2019', '911', 'Tenaga Teknis', '14');
INSERT INTO `buku_tamu` VALUES (16, 'AGUSTINA PROVITASARI', 'JL. PURNAWIRAWAN NO.51 RT.2A RW.01 KEL.ANGSAU KEC.PELAIHARI KAB.TANAH LAUT /081256455351', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Analis Kemasyarakatan', '14-11-2019, 12:48 am', '10', '0003', 'OU9HZGd6N09Z', '2019', '911', 'Tenaga Teknis', '14');
INSERT INTO `buku_tamu` VALUES (17, 'RAHMAYANTI', 'JL. PINTU AIR KOMP. PINTU AIR PERMAI BLOK B13 RT. 10 RW. 02 KEL. BINCAU MARTAPURA / 085248079556', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat Gigi', '14-11-2019, 12:52 am', '10', '0003', 'bh35eFkDh66y', '2019', '911', 'Tenaga Kesehatan', '14');
INSERT INTO `buku_tamu` VALUES (18, 'APRILLIANI FARIDA', 'KOMPL. AL IKHWAN JL.CAHAYA 2 NO. 34 RT.006/003 KEL. GUNTUNG PAIKAT KEC.BANJARBARU SELATAN / 085753793164', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Epidemiolog Kesehatan', '14-11-2019, 12:55 am', '10', '0004', '9yPkM81d8Vgz', '2019', '911', 'Tenaga Kesehatan', '14');
INSERT INTO `buku_tamu` VALUES (19, 'ABDUL KHAIR', 'JL. KARAMUNTING I NO.99 RT. 005 RW. 002 KEL. GUNTUNG PAIKAT KEC. BANJARBARU SELATAN KOTA BANJARBARU/ 08115517333', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Analis Diklat', '14-11-2019, 12:56 am', '10', '0004', 'aBpFdXuRmETh', '2019', '911', 'Tenaga Teknis', '14');
INSERT INTO `buku_tamu` VALUES (20, 'AYNUN', 'KOMPLEK WENGGA TRIKORA RAYA BLK M NO 315 RT.042 RW.003 BANJARBARU 70721 / 085245866862', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Pranata Komputer', '14-11-2019, 1:45 am', '10', '0005', 'TSdcZXVOHQWv', '2019', '911', 'Tenaga Teknis', '14');
INSERT INTO `buku_tamu` VALUES (21, 'ARIEF NORMANSYAH', 'JL SEKUMPUL KOMP. INDRA SARI PERMAI 2 BLOK.B RT 007 / 087723633337', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Asisten Apoteker', '14-11-2019, 1:47 am', '10', '0005', 'A9AMoGvPQqqM', '2019', '911', 'Tenaga Kesehatan', '14');
INSERT INTO `buku_tamu` VALUES (22, 'RADIATLUL ADAWIYAH', 'JL.A.YANI KM.5,54 KOMPLEK KARYA MANDIRI RT.023 KELURAHAN PEMURUS LUAR KECAMATAN BANJARMASIN TIMUR / 085390746434', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Nutrisionis', '14-11-2019, 1:48 am', '10', '0006', 'Yb9g3u6eERV8', '2019', '911', 'Tenaga Kesehatan', '14');
INSERT INTO `buku_tamu` VALUES (23, 'KHAIRUNNISA', 'JL. KARANG ANYAR 2 KOMPLEK LUTVINA GRIYA ASRI 3 NO.13 RT 20 RW 11 KELURAHAN LOKTABAT UTARA KECAMATAN BANJARBARU UTARA / 08124999716', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '14-11-2019, 2:08 am', '10', '0001', 'U1IfsCN3kQ1s', '2019', '911', 'Tenaga Pendidikan', '14');
INSERT INTO `buku_tamu` VALUES (24, 'FITRIYANI', 'DSN. JARINGAN DS. SUMBERAGUNG RT 02/05 KEC. NGARINGAN KAB. GROBOGAN / 082170774626', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '14-11-2019, 2:23 am', '10', '0002', '3FnczxFN2Xvx', '2019', '911', 'Tenaga Pendidikan', '14');
INSERT INTO `buku_tamu` VALUES (25, 'FITRIA NUR WIJAYANTI', 'JL . KOMET RAYA NO. 54 A RT 003/RW 004 KELURAHAN MENTAOS KECAMATAN BANJARBARU UTARA KOTA BANJARBARU, KALIMANTAN SELATAN / 083136000252', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Teknik Pengairan', '14-11-2019, 2:37 am', '10', '0006', 'EG8MJsvco1N2', '2019', '911', 'Tenaga Teknis', '14');
INSERT INTO `buku_tamu` VALUES (26, 'RIRIN DEVIYULIA', 'JL KENANGAN 1 NO 266 PALANGKARAYA / 081250620870', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Agama Islam', '14-11-2019, 2:38 am', '10', '0003', 'beA5Cs04FFq4', '2019', '911', 'Tenaga Pendidikan', '14');
INSERT INTO `buku_tamu` VALUES (27, 'MAULIDI RIZANI', 'KOMPLEK MUSTIKA GRIYA ANGKASA GANG 5 NO 36 LANDASAN ULIN /085248874887', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Teknik Jalan dan Jembatan', '14-11-2019, 2:40 am', '10', '0007', '9dMKk35MBIIc', '2019', '911', 'Tenaga Teknis', '14');
INSERT INTO `buku_tamu` VALUES (28, 'WINDA YULIANTI', 'JL. GOTONGROYONG UJUNG NO.17 RT.04 RW.06 KEL. MENTAOS KEC. BANJARBARU UTARA/082255467844', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '14-11-2019, 2:52 am', '10', '0004', 'RjiGt4JnIMou', '2019', '911', 'Tenaga Pendidikan', '14');
INSERT INTO `buku_tamu` VALUES (29, 'ABDURAHMAN', 'JL JEND SUDIRMAN KANDANGAN / 081931617151', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '14-11-2019, 2:53 am', '10', '0005', 'JSzWZU6rzm3j', '2019', '911', 'Tenaga Pendidikan', '14');
INSERT INTO `buku_tamu` VALUES (30, 'RAHAYU LINA RAHMAWATI', 'JL SUKAMAJU KOMPLEK CITRA MANDIRI PERMAI III BLOK D NO 5 RT 5 RW 1 KELURAHAN LANDASAN ULIN UTARA KECAMATAN LIANG ANGGANG / 08525136929', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Apoteker', '14-11-2019, 3:14 am', '10', '0007', '7429bcy7C58q', '2019', '911', 'Tenaga Kesehatan', '14');
INSERT INTO `buku_tamu` VALUES (31, 'SITI KHADIJAH', 'JL. SIDOMULYO RT 04 RW 01 KELURAHAN GUNTUNG PAYUNG KECAMATAN LANDASAN ULIN BANJARBARU / 082358294832', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '14-11-2019, 3:31 am', '10', '0008', 'dOvj9C2rZ98E', '2019', '911', 'Tenaga Kesehatan', '14');
INSERT INTO `buku_tamu` VALUES (32, 'SYIHAB', 'JL. MESJID NO.5 RT.6 RW.2 PASAYANGAN UTARA MARTAPURA / 085346811316', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '14-11-2019, 3:42 am', '10', '0009', 'uA7XrtbrXxKm', '2019', '911', 'Tenaga Kesehatan', '14');
INSERT INTO `buku_tamu` VALUES (33, 'ANNISA HERLIANY NURDIEN', 'KOMPLEK KELAPA GADING PERMAI JL. PUTRI DUYUNG II NO 8A / 08134532385', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Perancang Peraturan Perundang-undangan', '14-11-2019, 5:32 am', '10', '0008', '9j9Cyntm3vgP', '2019', '911', 'Tenaga Teknis', '14');
INSERT INTO `buku_tamu` VALUES (34, 'MAWADDAH', 'JL.KERAMAT RAYA RT.15 RW.01 NO.02 JEMBATAN 1 KEL.SEI.BILU KEC.BANJARMASIN TIMUR, BANJARMASIN / 089680937295', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Asisten Apoteker', '14-11-2019, 5:46 am', '10', '0010', 'JLLJsq344cF2', '2019', '911', 'Tenaga Kesehatan', '14');
INSERT INTO `buku_tamu` VALUES (35, 'NOORMA YURIYANTI', 'JL. INDRA GIRI CITRA RT 002 RW 002 LOKTABAT UTARA BANJARBARU UTARA/082250010086', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Penyuluh Kesehatan Masyarakat', '15-11-2019, 12:07 am', '10', '0001', '4sOISrLCOWQe', '2019', '911', 'Tenaga Kesehatan', '15');
INSERT INTO `buku_tamu` VALUES (36, 'NITA PURNAMA', 'JL SUNGAI ANDAI RT 01 RW 01 NO 60 KELURAHAN SUNGAI ANDAI KECAMATAN BANJARMASIN UTARA KODE POS 70122', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Perawat', '15-11-2019, 12:14 am', '10', '0002', 'YWv6TEEnyJNC', '2019', '911', 'Tenaga Kesehatan', '15');
INSERT INTO `buku_tamu` VALUES (37, 'AHMAD JULIAN', 'DESA DARUSSALAM RT/RW 001/001 KEC.DANAU PANGGANG KAB.HULU SUNGAI UTARA', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Penjasorkes', '15-11-2019, 12:16 am', '10', '0001', '6yW6UTPjP9bU', '2019', '911', 'Tenaga Pendidikan', '15');
INSERT INTO `buku_tamu` VALUES (38, 'ALPINI SUSTRI', 'JL. KOMP. GRAHA PERMATA INDAH 2, DESA TUNGKARAN KEC. MARTAPURA KOTA, KAB BANJAR / 085249161791', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '15-11-2019, 12:19 am', '10', '0002', 'SP9BF8VPIJTH', '2019', '911', 'Tenaga Pendidikan', '15');
INSERT INTO `buku_tamu` VALUES (39, 'TRI MAYA SOPA', 'JL. PONDOK EMPAT GG. SRIKANDI RT 19 RW 08 NO. 76 KEL. LOKTABAT UTARA BANJARBARU UTARA NO. HP. 0813 4851 1986', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Penyuluh Kesehatan Masyarakat', '15-11-2019, 12:21 am', '10', '0003', 'G26qqTO6719M', '2019', '911', 'Tenaga Kesehatan', '15');
INSERT INTO `buku_tamu` VALUES (40, 'FITHRATINNISA', 'SUNGAI LANDAS RT 01 KEC KARANG INTAN KAB BANJAR / 087827685460', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Asisten Apoteker', '15-11-2019, 12:24 am', '10', '0004', 'vt4Bvi2jcnjL', '2019', '911', 'Tenaga Kesehatan', '15');
INSERT INTO `buku_tamu` VALUES (41, 'FITHRATINNISA', 'SUNGAI LANDAS RT 01 KEC.KARANG INTAN KAB.BANJAR / 087827685460', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Asisten Apoteker', '15-11-2019, 12:25 am', '10', '0005', 'QHHBL23HsSmj', '2019', '911', 'Tenaga Kesehatan', '15');
INSERT INTO `buku_tamu` VALUES (42, 'SANTI HARIYATI', 'JL. SEKUMPUL GG. AL RASYID RT.002/RW.003 NO.07 SEI KACANG MARTAPURA / 087815009101', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Perawat', '15-11-2019, 12:27 am', '10', '0006', 'LFs6F214aOW1', '2019', '911', 'Tenaga Kesehatan', '15');
INSERT INTO `buku_tamu` VALUES (43, 'SUSI RIANI', 'PERUM GRAHA CAHAYA ABADI E 4 JL. ABADI III RT 006 RW 007 KELURAHAN GUNTUNG MANGGIS KECAMATAN LANDASAN ULIN KOTA BANJARBARU / 081953106784', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Bidan', '15-11-2019, 12:33 am', '10', '0007', 'r8digoOyysBU', '2019', '911', 'Tenaga Kesehatan', '15');
INSERT INTO `buku_tamu` VALUES (44, 'NURIL FATIMAH', 'JL. HKSN KOMPLEK AMD PERMAI BLOK B12 NO.320 RT. 24 BANJARMASIN / 082253033513', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Bidan', '15-11-2019, 1:00 am', '10', '0008', 'VbC31NnCou46', '2019', '911', 'Tenaga Kesehatan', '15');
INSERT INTO `buku_tamu` VALUES (45, 'MARIANA', 'KOMPLEK ANGGREK PARK RESIDENCE BLOK C16 RT 005 RW 003 KELURAHAN SEKUMPUL MARTAPURA / 085348477098', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Analis Keuangan Pemerintah Pusat dan Daerah', '15-11-2019, 1:03 am', '10', '0001', 'P4Y6inZqyU5g', '2019', '911', 'Tenaga Teknis', '15');
INSERT INTO `buku_tamu` VALUES (46, 'RUSNIDA REZKIAH,SE', 'JL.PERUM CITRA HASANAH PERMAI BLOK B-7 RT 39/11 CEMPAKA BANJARBARU/8225827778', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Analis Keuangan Pemerintah Pusat dan Daerah', '15-11-2019, 1:05 am', '10', '0002', '686vtb4HbJaW', '2019', '911', 'Tenaga Teknis', '15');
INSERT INTO `buku_tamu` VALUES (47, 'RISKA AISARY', 'JALAN GUNTUNG HARAPAN RT 34 RW 05 / 083150855344', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana terampil - Sanitarian', '15-11-2019, 1:09 am', '10', '0009', 'TZdvQ6u16m8E', '2019', '911', 'Tenaga Kesehatan', '15');
INSERT INTO `buku_tamu` VALUES (48, 'RISKA AISARY', 'JL. GUNTUNG HARAPAN RT 34 / RW 05 / 083150855344', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana terampil - Sanitarian', '15-11-2019, 1:10 am', '10', '0010', 'okm9FI3Q5i3N', '2019', '911', 'Tenaga Kesehatan', '15');
INSERT INTO `buku_tamu` VALUES (49, 'WAHYU SULISTIYOWATI', 'JL. TARUNA PRAJA PERUM RAJATA BLOK B.8/0811215652995', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Analis Keuangan Pemerintah Pusat dan Daerah', '15-11-2019, 1:12 am', '10', '0003', '32ryt65855cf', '2019', '911', 'Tenaga Teknis', '15');
INSERT INTO `buku_tamu` VALUES (50, 'ERMI LIA SUSANTI', 'JL.PROVINSI KM.168 NO.42 KECAMATAN SATUI / 082255493229', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '15-11-2019, 1:14 am', '10', '0003', 'UcuWDr4kI0H8', '2019', '911', 'Tenaga Pendidikan', '15');
INSERT INTO `buku_tamu` VALUES (51, 'NOFY ASTUTY', 'JL. GOTONG ROYONG UJUNG NO.27 A GG. AL-MAUN RT.004 RW.006 KEL. MENTAOS KEC. BANJARBARU UTARA KOTA BANJARBARU', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '15-11-2019, 1:15 am', '10', '0004', 'CKSU3yYvrI45', '2019', '911', 'Tenaga Pendidikan', '15');
INSERT INTO `buku_tamu` VALUES (52, 'SITI PATIMAH', 'JL.PURI MATAHARI RT 01/RW 01 CINDAI ALUS MARTAPURA / 085931526800', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Perawat', '15-11-2019, 1:18 am', '10', '0011', '9m2PVum3qFJH', '2019', '911', 'Tenaga Kesehatan', '15');
INSERT INTO `buku_tamu` VALUES (53, 'ELLYSA ISTIQOMAH', 'JL.GOTONG ROYONG LOKTABAT SELATAN NO.49 082351759995', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Penjasorkes', '15-11-2019, 1:19 am', '10', '0005', '3X17uk9AOp34', '2019', '911', 'Tenaga Pendidikan', '15');
INSERT INTO `buku_tamu` VALUES (54, 'NURUL ISTIQA', 'JL. A. YANI KM 25 RT 001 RW 009 LANDASAN ULIN TIMUR BANJARBARU / 085259200131', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Bidan', '15-11-2019, 1:22 am', '10', '0012', '754d4344zIJC', '2019', '911', 'Tenaga Kesehatan', '15');
INSERT INTO `buku_tamu` VALUES (55, 'SRI MAULIDA', 'KOMPLEK WIYATA MEGAH JL.PERJUANGAN RT 007/RW 002 KELURAHAN SUNGAI ULIN KECAMATAN BANJARBARU UTARA / 085251038494', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Bidan', '15-11-2019, 1:24 am', '10', '0013', '37NHN2Xj8EiH', '2019', '911', 'Tenaga Kesehatan', '15');
INSERT INTO `buku_tamu` VALUES (56, 'MOHAMMAD REZKI SHOLIHIN', 'KOMP. CEMPAKA PERMAI BLOK B NO 15 JL. PERAMBAIAN III/DUKUH JAYA RT 030/RW 007. KEL. SUNGAI ULIN, KEC. BANJARBARU UTARA. KOTA BANJARBARU / 082353218669', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Epidemiolog Kesehatan', '15-11-2019, 1:27 am', '10', '0014', 'qSTj3EcmcQjG', '2019', '911', 'Tenaga Kesehatan', '15');
INSERT INTO `buku_tamu` VALUES (57, 'DHESTA PURNAMASARI', 'JALAN GARUDA NO. 79 RT.003 RW.005 KEL. KOMET KEC. BANJARBARU UTARA, KOTA BANJARBARU KAL-SEL / 081351050301', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Epidemiolog Kesehatan', '15-11-2019, 1:28 am', '10', '0015', 'yGTrc2kP9K74', '2019', '911', 'Tenaga Kesehatan', '15');
INSERT INTO `buku_tamu` VALUES (58, 'MEILISA EKA PRATIWI', 'JL TIRIKORA KOMP TAMAN TRIKORA SURYA ARSIT SAPUTRA NO 10 B, BANJARBARU / 081803730074', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Asisten Apoteker', '15-11-2019, 1:41 am', '10', '0016', 'xiUx0JWANyD0', '2019', '911', 'Tenaga Kesehatan', '15');
INSERT INTO `buku_tamu` VALUES (59, 'ANIETHA MERDEKAWATI', 'JL. SAPATA MARGA BLOKC NO. 73 RT. 010 RW. 003 KEL. GUNTUNG PAYUNG KEC. LANDASAN ULIN KOTA BANJARBARU/ 082255461917', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Analis Keuangan Pemerintah Pusat dan Daerah', '15-11-2019, 1:43 am', '10', '0004', 'DRX2kBXbIUI7', '2019', '911', 'Tenaga Teknis', '15');
INSERT INTO `buku_tamu` VALUES (60, 'ANITA NUR FAJRIANI', 'JL.A.YANI KM 12.600 RT 003 RW 001, KEL. GAMBUT BARAT, KEC. GAMBUT, KAB. BANJAR / 0895605329251', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Apoteker', '15-11-2019, 1:51 am', '10', '0017', '4uB61kB62WaP', '2019', '911', 'Tenaga Kesehatan', '15');
INSERT INTO `buku_tamu` VALUES (61, 'EKA SETIYAWAN', 'GUNUNG BEROMBAK, RT.02/RW.11, KELURAHAN CEMPAKA, KECAMATAN CEMPAKA, KOTA BANJARBARU/085768875461', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Penyuluh Kesehatan Masyarakat', '15-11-2019, 1:53 am', '10', '0018', 'yOstKj3DvTrd', '2019', '911', 'Tenaga Kesehatan', '15');
INSERT INTO `buku_tamu` VALUES (62, 'AKHMAD QOMARUDDIN', 'JL. IR. P. M. NOOR RT.029 RW.005 KEL. BANJARBARU SELATAN / 085246422112', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '15-11-2019, 1:56 am', '10', '0006', 'RqWV3Hd1pZP5', '2019', '911', 'Tenaga Pendidikan', '15');
INSERT INTO `buku_tamu` VALUES (63, 'MUHAMMAD RIZKI ANSHARI', 'KOMP.BERUNTUNG JAYA JL.SADEWA 3 NO 15 RT 24 BANJARMASIN / 081254818813', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Asisten Apoteker', '15-11-2019, 1:57 am', '10', '0019', 'sNHUYZJX583J', '2019', '911', 'Tenaga Kesehatan', '15');
INSERT INTO `buku_tamu` VALUES (64, 'EDWARD SEBASTIAN', 'KOMP.BALITAN 13 RT 46 RW 12 NO 30 BANJARBARU UTARA / 081212141960', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '15-11-2019, 2:00 am', '10', '0020', 'LjpoA90Uvi35', '2019', '911', 'Tenaga Kesehatan', '15');
INSERT INTO `buku_tamu` VALUES (65, 'RAFIQA HAILIA SARI', 'KOMP. BALITAN 13 BLOK. B NO. 30 RT. 046 RW. 012 BANJARBARU UTARA/ 082153449343', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Bidan', '15-11-2019, 2:03 am', '10', '0021', 'cOXcXN1RVn1Y', '2019', '911', 'Tenaga Kesehatan', '15');
INSERT INTO `buku_tamu` VALUES (66, 'RENNY HERAWATI', 'JL. PERUMNAS ASABRI TEGAL ARUM NO.58 RT.44 RW.09 KEL.SYAMSUDIN NOOR KEC. LANDASAN ULIN, KOTA BANJARBARU / 081350297176', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Bahasa Indonesia', '15-11-2019, 2:13 am', '10', '0007', 'cW8MUM9qgPsF', '2019', '911', 'Tenaga Pendidikan', '15');
INSERT INTO `buku_tamu` VALUES (67, 'MUHAMMAD IRHASH MAULANA', 'JL.P.ABDURRAHMAN NO.7C RT.25/RW09, KAB.BANJAR, KALIMANTAN SELATAN / 08971360727', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Teknik penyehatan lingkungan', '15-11-2019, 2:17 am', '10', '0005', 'EYKzdub4vdVz', '2019', '911', 'Tenaga Teknis', '15');
INSERT INTO `buku_tamu` VALUES (68, 'RENANDA PRATIWI RIZKILLA', 'JL TARUNA BAKTI KOMP GRAHA ANJUNG MAHATAMA / 082155393216', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Analis Keuangan Pemerintah Pusat dan Daerah', '15-11-2019, 2:19 am', '10', '0006', 'KeoO5P6g881z', '2019', '911', 'Tenaga Teknis', '15');
INSERT INTO `buku_tamu` VALUES (69, 'LISLIANI', 'JL. P.M. NOOR KOMPLEK ASABRI BLOK DC NO.06 RT/RW 018/004 KELURAHAN SUNGAI ULIN KECAMATAN BANJARBARU UTARA KOTA BANJARBARU / 085346572536', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Agama Islam', '15-11-2019, 2:28 am', '10', '0008', 'v7ZkW5kRdci5', '2019', '911', 'Tenaga Pendidikan', '15');
INSERT INTO `buku_tamu` VALUES (70, 'EKA PRAMUDITA', 'JL. TARUNA PRAJA KOMPLEK MEKAR INDAH NO. 2A BANJARBARU / 082254406603', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '15-11-2019, 3:10 am', '10', '0009', 'pARbRbaf1gQM', '2019', '911', 'Tenaga Pendidikan', '15');
INSERT INTO `buku_tamu` VALUES (71, 'CRESTY NOVIA', 'JL. TARUNA PRAJA KOMPLEK MEKAR INDAH NO.2A BANJARBARU / 082254406603', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '15-11-2019, 3:12 am', '10', '0010', 'hd58jPudg25A', '2019', '911', 'Tenaga Pendidikan', '15');
INSERT INTO `buku_tamu` VALUES (72, 'MAJMA''IL ASMA', 'PERUM MUSTIKA GRIYA PERMAI BLOK E NO. 196 SUNGAI SIPAI. MARTAPURA. KABUPATEN BANJAR 082256427743', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '16-11-2019, 12:01 am', '10', '0001', 'HFY2kkv6JfyF', '2019', '911', 'Tenaga Pendidikan', '16');
INSERT INTO `buku_tamu` VALUES (73, 'YTYTY', 'ANBDJKBHBJKBRFI', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Agama Islam', '16-11-2019, 12:05 am', '10', '0002', 'HIdOqx8Fa3Wd', '2019', '911', 'Tenaga Pendidikan', '16');
INSERT INTO `buku_tamu` VALUES (74, 'MAHMUD SIRRIE', 'KOMPLEK SAPA NUSA BLOK E NO.1 RT.27 RW.04 GUNTUNG MANGGIS LANDASAN ULIN / 085820400684', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Perancang Peraturan Perundang-undangan', '16-11-2019, 12:16 am', '10', '0001', '4M8xcWJD86IE', '2019', '911', 'Tenaga Teknis', '16');
INSERT INTO `buku_tamu` VALUES (75, 'KHOLIDA ROIHAN', 'JL. PENDIDIKAN 3 NO.11 RT.16 SUNGAI PARING MARTAPURA / 085229928289', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Apoteker', '16-11-2019, 12:18 am', '10', '0001', 'kbMob6uR9Y54', '2019', '911', 'Tenaga Kesehatan', '16');
INSERT INTO `buku_tamu` VALUES (76, 'PUTRI MEISHANDY', 'KOMPLEK BERLINA JAYA 1 GUNTUNG MANGGIS / 081253338621', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Nutrisionis', '16-11-2019, 12:19 am', '10', '0002', '9sBJX242LnyF', '2019', '911', 'Tenaga Kesehatan', '16');
INSERT INTO `buku_tamu` VALUES (77, 'MEY DWI SULIANDARI', 'JL. BUDI WALUYO 2 RT.006 RW.002 SUNGAI ULIN BANJARBARU / 085245973665', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '16-11-2019, 12:20 am', '10', '0003', '3FTzcvTxbJju', '2019', '911', 'Tenaga Pendidikan', '16');
INSERT INTO `buku_tamu` VALUES (78, 'BAYU CLESTIANA', 'ASRAMA KODIM 1006 SUNGAI PARING MARTAPURA / 085387640118', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '16-11-2019, 12:21 am', '10', '0004', '85vaXMajipYA', '2019', '911', 'Tenaga Pendidikan', '16');
INSERT INTO `buku_tamu` VALUES (79, 'SRI HARTATI', 'JL. GUNTUNG MANGGIS PERUM. GRAHA KARTIKA RT.18 RW.03 GUNTUNG MANGGIS LANDASAN ULIN BANJARBARU / 081351639670', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Pengelola Anggaran', '16-11-2019, 12:23 am', '10', '0002', 'JjbMh2Ct2N3E', '2019', '911', 'Tenaga Teknis', '16');
INSERT INTO `buku_tamu` VALUES (80, 'CATUR WIRA PATRIA', 'JL. GUNTUNG MANGGIS PERUM. GRAHA KARTIKA RT.18 RW.03 GUNTUNG MANGGIS LANDASAN ULIN BANJARBARU / 081348281616', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Analis Keuangan Pemerintah Pusat dan Daerah', '16-11-2019, 12:25 am', '10', '0003', 'k5z4AsLbYCzv', '2019', '911', 'Tenaga Teknis', '16');
INSERT INTO `buku_tamu` VALUES (81, 'SUWANDI', 'JL. 9 OKTOBER GG. JEMAAH 2 RT.009 NO.18 KELURAHAN PAKAUMAN KOTA BANJARMASIN / 085246024455', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '16-11-2019, 12:26 am', '10', '0005', 'PAZpFdiGv251', '2019', '911', 'Tenaga Pendidikan', '16');
INSERT INTO `buku_tamu` VALUES (82, 'BELLA ANGGREANY', 'KOMPLEK BERLINA JAYA 3 BLOK E7 RT.017 RW.002 GUNTUNG MANGGIS LANDASAN ULIN BANJARBARU / 081348489363', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Perancang Peraturan Perundang-undangan', '16-11-2019, 12:30 am', '10', '0004', 'eN19McbhSEEd', '2019', '911', 'Tenaga Teknis', '16');
INSERT INTO `buku_tamu` VALUES (83, 'MUSYARRAFAH', 'GG. KELINCI RT.01 RW.02 NO.10 KEL. LANDASAN ULIN UTARA LIANG ANGGANG BANJARBARU / 085390321126', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Analis Keuangan Pemerintah Pusat dan Daerah', '16-11-2019, 12:32 am', '10', '0005', 'dAE82sfU6nCt', '2019', '911', 'Tenaga Teknis', '16');
INSERT INTO `buku_tamu` VALUES (84, 'FEBRY HERNAWATY', 'JL. JERUK KOMPLEK SIRKUIT DAMAI BLOK G/236 RT.05 RW.06 KELURAHAN SUNGAI ULIN / 081255596842', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Apoteker', '16-11-2019, 12:33 am', '10', '0003', 'h7s5v593zmB1', '2019', '911', 'Tenaga Kesehatan', '16');
INSERT INTO `buku_tamu` VALUES (85, 'RAHMAT KURNIAWAN', 'JL. PENDIDIKAN RT.05 RW.02 SEKUMPUL MARTAPURA / 0895617000426', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '16-11-2019, 12:34 am', '10', '0004', '5Z30p36RDS4K', '2019', '911', 'Tenaga Kesehatan', '16');
INSERT INTO `buku_tamu` VALUES (86, 'TIA ARIANI SALSABILA', 'KOMPLEK MEKATANI JL.KARET NO.79 BANJARBARU / 085393394887', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Dokter', '16-11-2019, 12:36 am', '10', '0005', 'B3HJoVH559oy', '2019', '911', 'Tenaga Kesehatan', '16');
INSERT INTO `buku_tamu` VALUES (87, 'TRIA WULAN SARI', 'JL. RP SOEPARTO KOMPLEK MERATUS NO.88 BANJARBARU / 085248242555', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '16-11-2019, 12:37 am', '10', '0006', 'AB5QqtexVKBC', '2019', '911', 'Tenaga Pendidikan', '16');
INSERT INTO `buku_tamu` VALUES (88, 'HARIS KURNIAWAN', 'JL. CEMPAKA 5 NO.21 BANJARMASIN / 081952854792', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '16-11-2019, 12:39 am', '10', '0006', 'W5rI4PxYq7GO', '2019', '911', 'Tenaga Kesehatan', '16');
INSERT INTO `buku_tamu` VALUES (89, 'RAMBANI SHALEDA SANTOSO', 'BALITRA JAYA PERMAI JL. ATHENA BLOK K5 BANJARBARU / 081348228367', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Bidan', '16-11-2019, 12:40 am', '10', '0007', 'bOickO5aUXC3', '2019', '911', 'Tenaga Kesehatan', '16');
INSERT INTO `buku_tamu` VALUES (90, 'NIKITA KHARISMA', 'JL. PERDAGANGAN KOMPLEK HKSN P BLOK A8/369 RT.28 RW.02 KEL. ALALAK UTARA KEC. BANJARMASIN UTARA BANJARMASIN / 085820310564', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Pengelola Anggaran', '16-11-2019, 12:46 am', '10', '0006', 'dQ3IbjCU4I12', '2019', '911', 'Tenaga Teknis', '16');
INSERT INTO `buku_tamu` VALUES (91, 'NUR MAULIDA', 'JL. HAKIM SAMAT DESA KEPAYANG RT.001/RW.001 KEC. TAPIN TENGAH TAPIN / 082255153521', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Penjasorkes', '16-11-2019, 12:48 am', '10', '0007', 'Y77oXDLZrU2o', '2019', '911', 'Tenaga Pendidikan', '16');
INSERT INTO `buku_tamu` VALUES (92, 'MUHAMMAD ZIKRI AMRI', 'JL. INDRA GIRI PERMAI NO.4A BANJARBARU / 082391349087', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Analis Diklat', '16-11-2019, 12:50 am', '10', '0007', 'S3fRF3dCSoGh', '2019', '911', 'Tenaga Teknis', '16');
INSERT INTO `buku_tamu` VALUES (93, 'DEPIANA LATIPAH', 'JL. MADU MANIS NO.41 RT.07 RW.03 KEL.SUNGAI PARING KABUPATEN BANJAR / 085345863669', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Asisten Apoteker', '16-11-2019, 12:51 am', '10', '0008', 'IosiOEn70qi3', '2019', '911', 'Tenaga Kesehatan', '16');
INSERT INTO `buku_tamu` VALUES (94, 'MUHAMMAD NUGRAHA DWI S', 'JL. GERILYA KAMPUNG BARU RT.15 NO.24 BANJARMASIN / 081250313748', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Perancang Peraturan Perundang-undangan', '16-11-2019, 12:53 am', '10', '0008', 'qqG7ZJ37e5nU', '2019', '911', 'Tenaga Teknis', '16');
INSERT INTO `buku_tamu` VALUES (95, 'MAULIDA ERIANA', 'JL. BIMA GG JAMBU RT 2 RW.2 DESA BAHARU UTARA / 083138606625', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Apoteker', '16-11-2019, 12:59 am', '10', '0009', '28j5F7Be0er7', '2019', '911', 'Tenaga Kesehatan', '16');
INSERT INTO `buku_tamu` VALUES (96, 'MUHAMMAD ARDI', 'JL. MELATI 4 ANGSOKA 3 NO.42 RT.03 KEL.KEBUN BUNGA KEC.BANJARMASIN TIMUR KOTA BANJARMASIN / 0819437786970', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Analis Kemasyarakatan', '16-11-2019, 1:02 am', '10', '0009', 'zkeDUsa6tWg6', '2019', '911', 'Tenaga Teknis', '16');
INSERT INTO `buku_tamu` VALUES (97, 'SISKA NUR ISLAMIYAH', 'JL. KARANG ANYAR 3 KOMPLEK DARUL HIJAH PUTRI BANJARBARU / 085245505656', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Bidan', '16-11-2019, 1:04 am', '10', '0010', 'A4o9b364PXcg', '2019', '911', 'Tenaga Kesehatan', '16');
INSERT INTO `buku_tamu` VALUES (98, 'KHOLIDAH', 'JL. A. YANI GG. FAMILY MARTAPURA / 087816214488', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '16-11-2019, 1:05 am', '10', '0011', 'vTOf5d4u6H71', '2019', '911', 'Tenaga Kesehatan', '16');
INSERT INTO `buku_tamu` VALUES (99, 'GUSTI RINA KURNIATI', 'JL. VETERAN KOMPLEK BREMAN INDAH NO.6 SUNGAI SIPAI / 08195463990', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Perawat', '16-11-2019, 1:06 am', '10', '0012', 'UTIqheG244UN', '2019', '911', 'Tenaga Kesehatan', '16');
INSERT INTO `buku_tamu` VALUES (100, 'AHMAD ZAKI YAMANI', 'JL. MENTERI 4 GG. SWAKARYA 1 NO.3A MARTAPURA/ 085251887933', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '16-11-2019, 1:08 am', '10', '0008', 'k29oIuYN4RI9', '2019', '911', 'Tenaga Pendidikan', '16');
INSERT INTO `buku_tamu` VALUES (101, 'RULIE ASMITA', 'JL. PRAMUKA KOMPLEK KENANGA RT.07 RW.01 PEMURUS LUAR KEC. BANJARMASIN TIMUR BANJARMASIN / 081351744422', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Bidan', '16-11-2019, 1:09 am', '10', '0013', 'guXBMe2rSyOe', '2019', '911', 'Tenaga Kesehatan', '16');
INSERT INTO `buku_tamu` VALUES (102, 'WIWI HASTUTI', 'JL. BINA TANI GUNTUNG MANGGIS RT,19 RW.03 BANJARBARU / 0895703453213', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Bidan', '16-11-2019, 1:11 am', '10', '0014', 'r5oW9B536Od4', '2019', '911', 'Tenaga Kesehatan', '16');
INSERT INTO `buku_tamu` VALUES (103, 'HAJI HASAN', 'JL. BINA TANI GUNTUNG MANGGIS RT.019 RW.003 KEL.GUNTUNG MANGGIS KEC.LANDASAN ULIN BANJARBARU /. 085248967200', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Asisten Apoteker', '16-11-2019, 1:12 am', '10', '0015', '7606VZdv12Qk', '2019', '911', 'Tenaga Kesehatan', '16');
INSERT INTO `buku_tamu` VALUES (104, 'RATNAWATY', 'JL. SIMPANG TANDUI RT.001/RW.001 TAPIN SELATAN, TAPIN / 081214722142', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '16-11-2019, 1:14 am', '10', '0009', 'r9388N94o52V', '2019', '911', 'Tenaga Pendidikan', '16');
INSERT INTO `buku_tamu` VALUES (105, 'THALITA AMELIA', 'JL. HASAN BASRI KOMPLEK SIMPANG GUSTI RT.34 RW.03 BANJARMASIN / 087849491350', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Analis Keuangan Pemerintah Pusat dan Daerah', '16-11-2019, 1:18 am', '10', '0010', 'g9fa0RC6WdN6', '2019', '911', 'Tenaga Teknis', '16');
INSERT INTO `buku_tamu` VALUES (106, 'DELLA KHAIRINA', 'JL. PERINTIS KEMERDEKAAN BARABAI HST / 082152712288', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Pengelola Pengadaan Barang/Jasa', '16-11-2019, 1:19 am', '10', '0011', '7dGz1J53Z7PY', '2019', '911', 'Tenaga Teknis', '16');
INSERT INTO `buku_tamu` VALUES (107, 'MUTIARA RIZKI DEWANGI', 'PERUM BUMI BERKAH MULIA ASRI BLOK A7 BANJARBARU / 082218888432', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Epidemiolog Kesehatan', '16-11-2019, 1:20 am', '10', '0016', '9j1LC1bE8P3p', '2019', '911', 'Tenaga Kesehatan', '16');
INSERT INTO `buku_tamu` VALUES (108, 'ALFIYA FARIDA', 'JL. SALAK ASPOL RESTA BLOK D NO 44 BANJARBARU / 082150844442', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Analis Keuangan Pemerintah Pusat dan Daerah', '16-11-2019, 1:21 am', '10', '0012', 'pO5yoqe1391y', '2019', '911', 'Tenaga Teknis', '16');
INSERT INTO `buku_tamu` VALUES (109, 'SELOKA ANDHINI PUTRI', 'JL. PERDAGANGAN NO 8B BANJARMASIN / 08115181969', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Analis Keuangan Pemerintah Pusat dan Daerah', '16-11-2019, 1:23 am', '10', '0013', 'jmbMhWa7mWCZ', '2019', '911', 'Tenaga Teknis', '16');
INSERT INTO `buku_tamu` VALUES (110, 'ANNIDA FAKHRIANI', 'KOMPLEK CITRA PERMATA BIRU BLOK IV NO.20E SEKUMPUL MARTAPURA / 087816250033', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Pranata Laboratorium Kesehatan', '16-11-2019, 1:25 am', '10', '0017', 'E1MZOfqP3UrA', '2019', '911', 'Tenaga Kesehatan', '16');
INSERT INTO `buku_tamu` VALUES (111, 'YUNAN HAMIDI', 'JL. BRIGJEN HASAN BASRI SIMPANG TANGGA BANJARMASIN / 085386974778', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '16-11-2019, 1:29 am', '10', '0018', '23cU217JGMt6', '2019', '911', 'Tenaga Kesehatan', '16');
INSERT INTO `buku_tamu` VALUES (112, 'DWI JAYANTI MACHENDRA', 'JL. SUKAMAJU PERUM CITRA MANDIRI PERMAI 2 BLOK I NO 8 LANDASAN ULIN UTARA LIANG ANGGANG BANJARBARU / 082157290299', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Bidan', '16-11-2019, 1:35 am', '10', '0019', 'ga1nBxu6Lu22', '2019', '911', 'Tenaga Kesehatan', '16');
INSERT INTO `buku_tamu` VALUES (113, 'SYAIFULLAH', 'HANDIL 6 RT/RW 006/- MUARA JAWA TENGAH', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Agama Islam', '16-11-2019, 1:40 am', '10', '0010', 'fGfYkfBDo5Wb', '2019', '911', 'Tenaga Pendidikan', '16');
INSERT INTO `buku_tamu` VALUES (114, 'LINA ERIANI', 'JL. SULTAN ADAM GG. AL-AMAN NO. 23 RT. 26 KELURAHAN SURGI MUFTI, KECAMATAN BANJARMASIN UTARA, KOTA BANJARMASIN / 085332191017', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '16-11-2019, 1:51 am', '10', '0020', 'qWs1W93p4ZgB', '2019', '911', 'Tenaga Kesehatan', '16');
INSERT INTO `buku_tamu` VALUES (115, 'NILAH MAYA SARI', 'JL. KUIN SELATAN N0.309 RT.002 BANJARMASIN / 089656966538', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Perawat', '16-11-2019, 2:01 am', '10', '0021', 'nd1SP5P1FKRg', '2019', '911', 'Tenaga Kesehatan', '16');
INSERT INTO `buku_tamu` VALUES (116, 'AJENG SUCIANI', 'JL. MAJAPAHIT NO. 8 KOMP. PINUS BARU', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Nutrisionis', '16-11-2019, 2:04 am', '10', '0022', 'ohe9tOezP4qb', '2019', '911', 'Tenaga Kesehatan', '16');
INSERT INTO `buku_tamu` VALUES (117, 'RYAN WIRATAMA', 'JL. PERJUANGAN KOMP. GARUDA BLOK D NO.23 RT/RW.007/002 KEL.SUNGAI ULIN KEC. BANJARBARU UTARA KOTA BANJARBARU 70714 / 085391172300', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Analis Keuangan Pemerintah Pusat dan Daerah', '16-11-2019, 2:08 am', '10', '0014', 'cy03uoYJpk9G', '2019', '911', 'Tenaga Teknis', '16');
INSERT INTO `buku_tamu` VALUES (118, 'NANA RUKMANA', 'JL. PERJUANGAN KOMP. GARUDA BLOK D NO.23 RT/RW.007.002 KEL. SUNGAI ULIN KEC. BANJARBARU UTARA KOTA BANJARBARU 70714 / 082351374040', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Bidan', '16-11-2019, 2:10 am', '10', '0023', 'I6BsI4Pp382H', '2019', '911', 'Tenaga Kesehatan', '16');
INSERT INTO `buku_tamu` VALUES (119, 'ANISA SUCI DESI ANDINI', 'BUPATEN TANAH BUMBU / 085346029431', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '16-11-2019, 2:12 am', '10', '0011', 'NPqrRYb0JHzD', '2019', '911', 'Tenaga Pendidikan', '16');
INSERT INTO `buku_tamu` VALUES (120, 'LISANA', 'DS. BARUNAI-BARU RT 001 KEL. BARUNAI-BARU KEC. ANJIR PASAR KAB BATOLA / 082350858050', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '16-11-2019, 2:16 am', '10', '0012', 'y4FFH8p5NfK2', '2019', '911', 'Tenaga Pendidikan', '16');
INSERT INTO `buku_tamu` VALUES (121, 'VANESSA PUTRI NUR ANDINI', 'JL. PANCASETIA KOMP BALITAN 8B NO 02 / 082158006515', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '16-11-2019, 2:19 am', '10', '0013', 'Z5BrvLMEcTLt', '2019', '911', 'Tenaga Pendidikan', '16');
INSERT INTO `buku_tamu` VALUES (122, 'YEYEN SIMAMORA', 'JLN GOLF KOMP. GRAHA PELITA ASRI BLOK D NO.12 / 082351610772', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Pranata Komputer', '16-11-2019, 2:22 am', '10', '0015', '32FT638S4Chq', '2019', '911', 'Tenaga Teknis', '16');
INSERT INTO `buku_tamu` VALUES (123, 'RIZKA AMELIA', 'JL. IR PM NOOR RT.002 DESA MANDIANGIN TIMUR / 082151330524', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Bidan', '16-11-2019, 2:24 am', '10', '0024', 'vgmTePyC5r9h', '2019', '911', 'Tenaga Kesehatan', '16');
INSERT INTO `buku_tamu` VALUES (124, 'AHMAD MUBARAK', 'JL A.YANI RT 005 RW 000 KECAMATAN KUSAN HILIR / 082250976044', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat Gigi', '16-11-2019, 2:28 am', '10', '0025', '6HgTGku8sxSD', '2019', '911', 'Tenaga Kesehatan', '16');
INSERT INTO `buku_tamu` VALUES (125, 'RIRIN ATIKA', 'JL. PONDOK LABU KARANG ANYAR RT 19. NO 8 LOKTABAT UTARA, BANJARBARU / 081258797132', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana terampil - Sanitarian', '16-11-2019, 2:32 am', '10', '0026', 'VWEqd0sze84o', '2019', '911', 'Tenaga Kesehatan', '16');
INSERT INTO `buku_tamu` VALUES (126, 'AGUNG TRY HANDOKO', 'JALAN GAWI SABUMI NO 30 RT 04 KELURAHAN KOTA PAGATAN KECAMATAN KUSAN HILIR KABUPATEN TANAH BUMBU KALIMANTAN SELATAN 72273/082251059649', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Analis Diklat', '16-11-2019, 2:36 am', '10', '0016', 'pu4z03GOKK8Q', '2019', '911', 'Tenaga Teknis', '16');
INSERT INTO `buku_tamu` VALUES (127, 'YURITA APRIYATI LESTARI', 'JALAN GAWI SABUMI NO 30 RT 04 KELURAHAN KOTA PAGATAN KECAMATAN KUSAN HILIR KABUPATEN TANAH BUMBU KALIMANTAN SELATAN 72273', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Asisten Apoteker', '16-11-2019, 2:38 am', '10', '0027', 'oPbUPj9WxVT2', '2019', '911', 'Tenaga Kesehatan', '16');
INSERT INTO `buku_tamu` VALUES (128, 'ANNADHROTUS SHIDDIQIA', 'KOMPLEK CITRA PERMATA BIRU, BLOK IV NO. 20E RT/RW :004/003 KABUPATEN BANJAR / 082222262355', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Epidemiolog Kesehatan', '16-11-2019, 2:44 am', '10', '0028', '0I6a86oL9DDp', '2019', '911', 'Tenaga Kesehatan', '16');
INSERT INTO `buku_tamu` VALUES (129, 'SOPHIA YUSTINA', 'JL. MENTAOS INDAH NO.25 RT 003 RW 005 BANJARBARU / 081217942631', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Dokter', '16-11-2019, 2:45 am', '10', '0029', 'PsF6qV7qtVaj', '2019', '911', 'Tenaga Kesehatan', '16');
INSERT INTO `buku_tamu` VALUES (130, 'FAHRIANSYAH', 'JL. AMPARAYA, RT 2 RW 1, DS. AMPARAYA, KEC SIMPUR KAB. HSS 081336815335', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '16-11-2019, 2:48 am', '10', '0014', '1eN3d8DMNb5K', '2019', '911', 'Tenaga Pendidikan', '16');
INSERT INTO `buku_tamu` VALUES (131, 'RIZKA HAYATI', 'JL. AMPARAYA RT 002 RW 001 DESA AMPARAYA KEC.SIMPUR', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '16-11-2019, 2:50 am', '10', '0015', '79hpqeOH8cIL', '2019', '911', 'Tenaga Pendidikan', '16');
INSERT INTO `buku_tamu` VALUES (132, 'JANIKA SUJI K', 'JL.PATIANOM NO.7 RT 3A,TAMIANGLAYANG,KEC.DUSUN TIMUR,KAB.BARITO TIMUR,KALIMANTAN TENGAH / 081346561069', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Apoteker', '16-11-2019, 2:52 am', '10', '0030', 'o4SR3zzG99bU', '2019', '911', 'Tenaga Kesehatan', '16');
INSERT INTO `buku_tamu` VALUES (133, 'SURYA ARRACHMAN', 'JL ANTESA RT 05B RW 01 KE ANGSAU KEC PELAIHARI / 085820482471', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Analis Kemasyarakatan', '16-11-2019, 2:54 am', '10', '0017', 'ddo35KEW3F0r', '2019', '911', 'Tenaga Teknis', '16');
INSERT INTO `buku_tamu` VALUES (134, 'ISTIQAMAH', 'PANANGKALAAN HULU, RT.001 KECAMATAN AMUNTAI UTARA / 081348963543', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana terampil - Sanitarian', '16-11-2019, 2:56 am', '10', '0031', '82jeg2mVh5Bh', '2019', '911', 'Tenaga Kesehatan', '16');
INSERT INTO `buku_tamu` VALUES (135, 'ISMAH', 'JL.TANJUNG REMA GG. ERLANGGA NO.42 / 083150970303', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '16-11-2019, 2:58 am', '10', '0016', 'Q2N2Fzg72G5y', '2019', '911', 'Tenaga Pendidikan', '16');
INSERT INTO `buku_tamu` VALUES (136, 'LISDA HANDAYANI', 'JL. ROSELA UJUNG RT.11 RW.3 KEL. KEMUNING, BANJARBARU / 081351903999', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Apoteker', '16-11-2019, 3:21 am', '10', '0032', '8c7d2YLHf7I2', '2019', '911', 'Tenaga Kesehatan', '16');
INSERT INTO `buku_tamu` VALUES (137, 'MUTIARA ARIANI RAHMAN', 'JL. HARUAN RATU ELOK NO. 67/22, RT. 006, RW. 002, KEL. SEI. BESAR, KEC. BANJARBARU SELATAN, KOTA BANJARBARU, KALIMANTAN SELATAN. 082153612002', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '16-11-2019, 11:59 pm', '10', '0017', 'u8mrq3k26CEm', '2019', '911', 'Tenaga Pendidikan', '16');
INSERT INTO `buku_tamu` VALUES (138, 'WENNY ARIANTI', 'JL. MADU MANIS RT 007/ RW 003 N0. 21 KEL. SUNGAIN PARING KEC. MARTAPURA / 085951187815', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '17-11-2019, 12:01 am', '10', '0001', 'GsdmsV9q65D9', '2019', '911', 'Tenaga Pendidikan', '17');
INSERT INTO `buku_tamu` VALUES (139, 'NIA ERVIRA SAFITRI', 'JL.A.YANI KM 21 GG.KELUARGA KEL. LANDASAN ULIN BARAT, KEC. LIANGANGGANG, KOTA BANJARBARU, KALIMANTAN SELATAN, 089521026868', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '17-11-2019, 12:04 am', '10', '0002', '7df4XZtqMkn1', '2019', '911', 'Tenaga Pendidikan', '17');
INSERT INTO `buku_tamu` VALUES (140, 'ELMA ROSIANA', 'JL. SOETOYO S KOMPLEK DAMAI NO.18 RT.14 BANJARMASIN / 089630339372', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '17-11-2019, 12:05 am', '10', '0003', 'x2jeVfbuot3O', '2019', '911', 'Tenaga Pendidikan', '17');
INSERT INTO `buku_tamu` VALUES (141, 'JUM''ATUN ANNISA', 'JL. PULAU ALALAK RT.008 KEL. PULAU ALALAK KEC. ALALAK KAB. BARITO KUALA / 081649073020', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '17-11-2019, 12:06 am', '10', '0004', 'xaO232VZnZH7', '2019', '911', 'Tenaga Pendidikan', '17');
INSERT INTO `buku_tamu` VALUES (142, 'RABIATUL ADAWIAH', 'KOMPLEK SA''ADAH 1 GG. HIDAYAH RT.010 RW.004 KEL. SUNGAI PARING KEC. MARTAPURA KOTA KAB. BANJAR / 085246890766', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Analis Keuangan Pemerintah Pusat dan Daerah', '17-11-2019, 12:08 am', '10', '0001', 'j01IMqNFK0qx', '2019', '911', 'Tenaga Teknis', '17');
INSERT INTO `buku_tamu` VALUES (143, 'HIDAYAH MURNIATI', 'JL. INTAN 3 NO.17 KOMPLEK AMACO BANJARBARU / 082157077981', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Apoteker', '17-11-2019, 12:09 am', '10', '0001', 'ByxtpPp3O7d6', '2019', '911', 'Tenaga Kesehatan', '17');
INSERT INTO `buku_tamu` VALUES (144, 'NURLIYANI', 'JL. KURIHING PERUM PERMATA GOLF 3 BLOK B1 RT.06 RW.04 LANDASAN ULIN UTARA BANJARBARU / 081255577473', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Bidan', '17-11-2019, 12:11 am', '10', '0002', 'YY4e84tVRxCs', '2019', '911', 'Tenaga Kesehatan', '17');
INSERT INTO `buku_tamu` VALUES (145, 'AKHMAD HARIS', 'KOMPLEK BPI JL. BUKIT SIGUNTANG BLOK N NO.125 SUNGAI ULIN BANJARBARU / 085251541812', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Epidemiolog Kesehatan', '17-11-2019, 12:12 am', '10', '0003', 'rg5AsUfDWAhB', '2019', '911', 'Tenaga Kesehatan', '17');
INSERT INTO `buku_tamu` VALUES (146, 'LULU RAHMAWATI', 'JL. PERJUANGAN KOMPLEK DUTA PERMAI NO.03 BLOK A SUNGAI SIPAI MARTAPURA / 08971183546', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Pranata Laboratorium Kesehatan', '17-11-2019, 12:13 am', '10', '0004', 'vjv8U56TWN1a', '2019', '911', 'Tenaga Kesehatan', '17');
INSERT INTO `buku_tamu` VALUES (147, 'LISNAWATI', 'JL. BUMI BERKAT 5 KOMPLEK GRIYA ABDI PERKASA NO.A14 BANJARBARU / 082254594346', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Perawat', '17-11-2019, 12:17 am', '10', '0005', 'Bdhj3qFB5icB', '2019', '911', 'Tenaga Kesehatan', '17');
INSERT INTO `buku_tamu` VALUES (148, 'MUTIARA ARIANI RAHMAN', 'JL. HARUAN RATU ELOK NO.67/22 BANJARBARU / 082153612002', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '17-11-2019, 12:20 am', '10', '0005', 'JmECMT2ijFxf', '2019', '911', 'Tenaga Pendidikan', '17');
INSERT INTO `buku_tamu` VALUES (149, 'LUH GEDE LAKSMI RAHAYU', 'KOMPLEK GRIYA ULIN PERMAI JL. RAJAWALI BLOK H.H NO.05 LANDASAN ULIN TIMUR BANJARBARU / 081318051061', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Dokter', '17-11-2019, 12:21 am', '10', '0006', 'EuNY39N2DDgi', '2019', '911', 'Tenaga Kesehatan', '17');
INSERT INTO `buku_tamu` VALUES (150, 'RADEYA OKTANTIA CARIN', 'KOMPLEK KELAPA GADING 2 JL. BAGDAD NO.17 BANJARBARU / 089691124459', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '17-11-2019, 12:22 am', '10', '0006', 'QGOp7joSC6N7', '2019', '911', 'Tenaga Pendidikan', '17');
INSERT INTO `buku_tamu` VALUES (151, 'JANUARTI ALPISAH', 'JL. VETERAN KOMPLE A.YANI 2 RT.024 RW.002 NO.03 BANJARMASIN / 081952799795', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Analis Keuangan Pemerintah Pusat dan Daerah', '17-11-2019, 12:23 am', '10', '0002', 'VTPqBrcfyJfe', '2019', '911', 'Tenaga Teknis', '17');
INSERT INTO `buku_tamu` VALUES (152, 'DESY ANGGRAINI', 'KOMPLEK BINCAU INDAH 2 BLOK M NO.01 RT.14 DESA BINCAU KEC. MARTAPURA KOTA KAB. BANJAR / 082158528193', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '17-11-2019, 12:25 am', '10', '0007', 'YVUb5081PV9J', '2019', '911', 'Tenaga Pendidikan', '17');
INSERT INTO `buku_tamu` VALUES (153, 'MUHAMMAD ALIMI', 'JL. VETERAN KOMPLEK A.YANI 2 RT.32 RW.02 KEL. PENGAMBANGAN KEC. BANJARMASIN TIMUR BANJARMASIN / 085390651591', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Bahasa Indonesia', '17-11-2019, 12:26 am', '10', '0008', 'UrLV8UoGaQGn', '2019', '911', 'Tenaga Pendidikan', '17');
INSERT INTO `buku_tamu` VALUES (154, 'GABRIELLA OCTAVIRA N.', 'JL. PRAMUKA KM.06 KOMPLEK DPRD NO.06 RT.19 BANJARMASIN / 081295958113', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Pengelola Pengadaan Barang/Jasa', '17-11-2019, 12:27 am', '10', '0003', 'gNkB1GitR5uU', '2019', '911', 'Tenaga Teknis', '17');
INSERT INTO `buku_tamu` VALUES (155, 'HIKMAH NOER AIDA', 'KOMPLEK MEKATAMARAYA 3 BLOK E NO.06 BANJARBARU / 082250715122', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '17-11-2019, 12:29 am', '10', '0009', 'Vs7DkOEx2Y1x', '2019', '911', 'Tenaga Pendidikan', '17');
INSERT INTO `buku_tamu` VALUES (156, 'KHAIRUN NISA', 'KOMPLEK GRIYA ULIN PERMAI JL. NURI BLOK M NO 34 RT.03 RW.03 LANDASAN ULIN BANJARBARU / 082250516960', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '17-11-2019, 12:30 am', '10', '0010', 'yrbZpA0UH59r', '2019', '911', 'Tenaga Pendidikan', '17');
INSERT INTO `buku_tamu` VALUES (157, 'MUTIA ROHALIYANI', 'JL. SRIWAJAYA GG. SMA 4 RT.01 RW.01 KEL. LANDASAN ULIN UTARA KEC. LIANG ANGGANG BANJARBARU / 083146513628', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '17-11-2019, 12:31 am', '10', '0011', 'J3YJi2A8qJrz', '2019', '911', 'Tenaga Pendidikan', '17');
INSERT INTO `buku_tamu` VALUES (158, 'KIRANI RAHMAWATI', 'JL. IR.P.M. NOOR RT.020 RW.005 KEL. SUNGAI ULIN KEC. BANJARBARU UTARA BANJARBARU / 081953643793', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '17-11-2019, 12:33 am', '10', '0012', 'JfyFWx3AmW92', '2019', '911', 'Tenaga Pendidikan', '17');
INSERT INTO `buku_tamu` VALUES (159, 'EKA SRI SUSILOWATI', 'JL. ANTAR REJA KAMPUNG GUNTUNG PAIKAT RT.012 RW.003 / 085248475628', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '17-11-2019, 12:35 am', '10', '0013', 'vvW4ISrde1F3', '2019', '911', 'Tenaga Pendidikan', '17');
INSERT INTO `buku_tamu` VALUES (160, 'HARY AYU INDAH SURYANI', '0895701269918', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '17-11-2019, 12:36 am', '10', '0014', '4112Tby08Wxe', '2019', '911', 'Tenaga Pendidikan', '17');
INSERT INTO `buku_tamu` VALUES (161, 'FALAHIYATUL AWALIYAH', '081251560667', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Penyuluh Kesehatan Masyarakat', '17-11-2019, 12:37 am', '10', '0007', 'BGA64R968r0B', '2019', '911', 'Tenaga Kesehatan', '17');
INSERT INTO `buku_tamu` VALUES (162, 'HERLINA HAFSARI', '082149061099', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Epidemiolog Kesehatan', '17-11-2019, 12:39 am', '10', '0008', 'Yh7sNHUYZJX5', '2019', '911', 'Tenaga Kesehatan', '17');
INSERT INTO `buku_tamu` VALUES (163, 'MELANI YUNIAN KURNIAWATI', '082153894390', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '17-11-2019, 12:40 am', '10', '0015', 'H2443XjxiUx0', '2019', '911', 'Tenaga Pendidikan', '17');
INSERT INTO `buku_tamu` VALUES (164, 'KHALIMIN', '085742495606', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Analis Diklat', '17-11-2019, 12:40 am', '10', '0004', '2DDgigHRIvMk', '2019', '911', 'Tenaga Teknis', '17');
INSERT INTO `buku_tamu` VALUES (165, 'RIZQI HAYATI', '085251782919', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Epidemiolog Kesehatan', '17-11-2019, 12:41 am', '10', '0009', 'jDt8d6LdAYsm', '2019', '911', 'Tenaga Kesehatan', '17');
INSERT INTO `buku_tamu` VALUES (166, 'DEWI ARIYANI WALDANIA', '085248985361', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Analis Keuangan Pemerintah Pusat dan Daerah', '17-11-2019, 12:42 am', '10', '0005', 'NSF10bdxgK2S', '2019', '911', 'Tenaga Teknis', '17');
INSERT INTO `buku_tamu` VALUES (167, 'YUNITA', '081250719669', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Dokter', '17-11-2019, 12:43 am', '10', '0010', 'U14ra1TNumiZ', '2019', '911', 'Tenaga Kesehatan', '17');
INSERT INTO `buku_tamu` VALUES (168, 'GUSTI INDRA RACHMADANI', '085651260355', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Analis Diklat', '17-11-2019, 12:44 am', '10', '0006', '1yMzLpQ8T2tI', '2019', '911', 'Tenaga Teknis', '17');
INSERT INTO `buku_tamu` VALUES (169, 'RIZKI ERMA YULIANI', '085346468489', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '17-11-2019, 12:45 am', '10', '0011', 'M7c7DILdJ8if', '2019', '911', 'Tenaga Kesehatan', '17');
INSERT INTO `buku_tamu` VALUES (170, 'NURUN NISA', '085349280017', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Nutrisionis', '17-11-2019, 12:46 am', '10', '0012', 'aLhfOoaby3zs', '2019', '911', 'Tenaga Kesehatan', '17');
INSERT INTO `buku_tamu` VALUES (171, 'MUKTI RAHAYU', '085932890176', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Nutrisionis', '17-11-2019, 12:47 am', '10', '0013', 'crxkVouxzD0t', '2019', '911', 'Tenaga Kesehatan', '17');
INSERT INTO `buku_tamu` VALUES (172, 'MUQINI', '082157089004', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '17-11-2019, 12:48 am', '10', '0016', '54c5K111aJ15', '2019', '911', 'Tenaga Pendidikan', '17');
INSERT INTO `buku_tamu` VALUES (173, 'MULIA SARI', '082254760432', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '17-11-2019, 12:49 am', '10', '0014', '5676rAV3muuB', '2019', '911', 'Tenaga Kesehatan', '17');
INSERT INTO `buku_tamu` VALUES (174, 'OLYA RADIATI', '08977232537', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Epidemiolog Kesehatan', '17-11-2019, 12:50 am', '10', '0015', 'gd5OMLzSuy9x', '2019', '911', 'Tenaga Kesehatan', '17');
INSERT INTO `buku_tamu` VALUES (175, 'DIAH EKA MILAWATI', '085251134054', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Pengelola Anggaran', '17-11-2019, 12:51 am', '10', '0007', 'Pf5d7AuFt8sO', '2019', '911', 'Tenaga Teknis', '17');
INSERT INTO `buku_tamu` VALUES (176, 'RISKA MUTIA', '085750377419', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Perancang Peraturan Perundang-undangan', '17-11-2019, 12:53 am', '10', '0008', '9nA19YPsAVgz', '2019', '911', 'Tenaga Teknis', '17');
INSERT INTO `buku_tamu` VALUES (177, 'MUHAMMAD SOLEH AFIA', '085236153006', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Analis Diklat', '17-11-2019, 12:54 am', '10', '0009', 'L88Umjfrh3eX', '2019', '911', 'Tenaga Teknis', '17');
INSERT INTO `buku_tamu` VALUES (178, 'RIZKA MEILAWATI', '085722490567', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '17-11-2019, 12:55 am', '10', '0016', 'yFN7vgyzud0V', '2019', '911', 'Tenaga Kesehatan', '17');
INSERT INTO `buku_tamu` VALUES (179, 'TITIS ANGGRAENI', '082253179399', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Analis Kemasyarakatan', '17-11-2019, 12:56 am', '10', '0010', 'tMBPRmqIXYxV', '2019', '911', 'Tenaga Teknis', '17');
INSERT INTO `buku_tamu` VALUES (180, 'MANNA FADHILAH HALIM', '085248803013', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana terampil - Sanitarian', '17-11-2019, 12:59 am', '10', '0017', '19MvGP6Nv7Pp', '2019', '911', 'Tenaga Kesehatan', '17');
INSERT INTO `buku_tamu` VALUES (181, 'AKHMAD NABIL', '085332587888', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Asisten Apoteker', '17-11-2019, 1:00 am', '10', '0018', 'nRAc7dd7mY2c', '2019', '911', 'Tenaga Kesehatan', '17');
INSERT INTO `buku_tamu` VALUES (182, 'SAPTIAN NOOR', '085390892152', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Pranata Komputer', '17-11-2019, 1:03 am', '10', '0011', 'PNj6Y303SCXG', '2019', '911', 'Tenaga Teknis', '17');
INSERT INTO `buku_tamu` VALUES (183, 'NUR RIZKIAH', '085758169843', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Pranata Laboratorium Kesehatan', '17-11-2019, 1:04 am', '10', '0019', 't2Y7rbpukCL2', '2019', '911', 'Tenaga Kesehatan', '17');
INSERT INTO `buku_tamu` VALUES (184, 'MAHDA YUNARTI', '085388587516', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Pranata Laboratorium Kesehatan', '17-11-2019, 1:05 am', '10', '0020', 'Ymm3M6x1Pgu7', '2019', '911', 'Tenaga Kesehatan', '17');
INSERT INTO `buku_tamu` VALUES (185, 'MELDA IBFRIDA', '085252036932', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '17-11-2019, 1:06 am', '10', '0017', 'AQEt6dbCg8Z4', '2019', '911', 'Tenaga Pendidikan', '17');
INSERT INTO `buku_tamu` VALUES (186, 'RIZKI AYU RETYANING', '087766935666', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Bidan', '17-11-2019, 1:09 am', '10', '0021', 'q1vdeTC8LbEz', '2019', '911', 'Tenaga Kesehatan', '17');
INSERT INTO `buku_tamu` VALUES (187, 'RATNA SARI', '081348464665', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '17-11-2019, 1:10 am', '10', '0018', 'ae3Tp8xE6XI5', '2019', '911', 'Tenaga Pendidikan', '17');
INSERT INTO `buku_tamu` VALUES (188, 'MUTIA ROMILDA DELIMA', '085251156255', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Analis Keuangan Pemerintah Pusat dan Daerah', '17-11-2019, 1:11 am', '10', '0012', '8Hi6O1mDW8D3', '2019', '911', 'Tenaga Teknis', '17');
INSERT INTO `buku_tamu` VALUES (189, 'ESTI WIDYA SARI', '082299788207', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '17-11-2019, 1:12 am', '10', '0019', '4pb4EQj8WpdR', '2019', '911', 'Tenaga Pendidikan', '17');
INSERT INTO `buku_tamu` VALUES (190, 'DWI APRINA PRATIWI', '085248455671', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Asisten Apoteker', '17-11-2019, 1:13 am', '10', '0022', 'VLEf5A10uJLU', '2019', '911', 'Tenaga Kesehatan', '17');
INSERT INTO `buku_tamu` VALUES (191, 'RIDHONI HIDAYAT', '085348413816', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Asisten Apoteker', '17-11-2019, 1:14 am', '10', '0023', 'h8WprT4Csy71', '2019', '911', 'Tenaga Kesehatan', '17');
INSERT INTO `buku_tamu` VALUES (192, 'NORMA HIDAH', '082352697608', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '17-11-2019, 1:18 am', '10', '0024', 'cQ9Y971sofd5', '2019', '911', 'Tenaga Kesehatan', '17');
INSERT INTO `buku_tamu` VALUES (193, 'SAFIRA EVANI RIZKI ANWAR', '081347361800', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Apoteker', '17-11-2019, 1:22 am', '10', '0025', 'Sb90L15gPs62', '2019', '911', 'Tenaga Kesehatan', '17');
INSERT INTO `buku_tamu` VALUES (194, 'DWI HASTUTI', '081255563646', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat Gigi', '17-11-2019, 1:23 am', '10', '0026', '8ZGnHIBjOHxL', '2019', '911', 'Tenaga Kesehatan', '17');
INSERT INTO `buku_tamu` VALUES (195, 'INTAN MEGA PUTRI', '082252007052', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Asisten Apoteker', '17-11-2019, 1:24 am', '10', '0027', 'fU3UTIqheG24', '2019', '911', 'Tenaga Kesehatan', '17');
INSERT INTO `buku_tamu` VALUES (196, 'KHAIRIZKY ABDILLAH', '085245893366', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Pengelola Anggaran', '17-11-2019, 1:26 am', '10', '0013', '88M3S8IfPe64', '2019', '911', 'Tenaga Teknis', '17');
INSERT INTO `buku_tamu` VALUES (197, 'NURYUNITA FITRYANAH', '081347544743', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Bidan', '17-11-2019, 1:29 am', '10', '0028', '68k7FLD317AU', '2019', '911', 'Tenaga Kesehatan', '17');
INSERT INTO `buku_tamu` VALUES (198, 'ELOK ASMARANI', '081351144682', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Bahasa Indonesia', '17-11-2019, 1:30 am', '10', '0020', '2XOAiNSSUV3A', '2019', '911', 'Tenaga Pendidikan', '17');
INSERT INTO `buku_tamu` VALUES (199, 'DIAN NURMASARI', '082153652887', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Analis Diklat', '17-11-2019, 1:31 am', '10', '0014', 'n5Lp3m212Cfp', '2019', '911', 'Tenaga Teknis', '17');
INSERT INTO `buku_tamu` VALUES (200, 'PUTRI PERMATASARI', '082230888076', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Analis Keuangan Pemerintah Pusat dan Daerah', '17-11-2019, 1:32 am', '10', '0015', '6ocU7j4DK8i2', '2019', '911', 'Tenaga Teknis', '17');
INSERT INTO `buku_tamu` VALUES (201, 'HULIDA RANZAYANTI', '085393370000', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Penyuluh Kesehatan Masyarakat', '17-11-2019, 1:33 am', '10', '0029', '5U8V7Qzdp20u', '2019', '911', 'Tenaga Kesehatan', '17');
INSERT INTO `buku_tamu` VALUES (202, 'SITTI ZUBAEDAH', '085292088737', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '17-11-2019, 1:35 am', '10', '0021', '0iFrG98JmWsy', '2019', '911', 'Tenaga Pendidikan', '17');
INSERT INTO `buku_tamu` VALUES (203, 'ANTIK PRATIWI', '085345510046', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '17-11-2019, 1:36 am', '10', '0022', 'G6bq6nFSpJxR', '2019', '911', 'Tenaga Pendidikan', '17');
INSERT INTO `buku_tamu` VALUES (204, 'ANDRIZA REFINALDI', '082256810381', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Analis Diklat', '17-11-2019, 1:38 am', '10', '0016', 'VYX1z22MHW47', '2019', '911', 'Tenaga Teknis', '17');
INSERT INTO `buku_tamu` VALUES (205, 'TSANA ANNISA', '087848061878', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Pranata Laboratorium Kesehatan', '17-11-2019, 1:41 am', '10', '0030', 'K78POD7G785T', '2019', '911', 'Tenaga Kesehatan', '17');
INSERT INTO `buku_tamu` VALUES (206, 'RISNA APRILIYANI', '089656918712', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Pranata Laboratorium Kesehatan', '17-11-2019, 1:41 am', '10', '0031', 'LWf37HeFpVoX', '2019', '911', 'Tenaga Kesehatan', '17');
INSERT INTO `buku_tamu` VALUES (207, 'INDAH KUSUMA WARDANI', '085732679111', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Bidan', '17-11-2019, 1:42 am', '10', '0032', '7XI9WuKjph1U', '2019', '911', 'Tenaga Kesehatan', '17');
INSERT INTO `buku_tamu` VALUES (208, 'ASIFAH DIAH RAHMANI', '0895399893393', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Pranata Laboratorium Kesehatan', '17-11-2019, 1:44 am', '10', '0033', '1CMVkUkck39F', '2019', '911', 'Tenaga Kesehatan', '17');
INSERT INTO `buku_tamu` VALUES (209, 'AULIA HASBI', '089692062306', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Pranata Laboratorium Kesehatan', '17-11-2019, 1:46 am', '10', '0034', 'V2D4v55N5134', '2019', '911', 'Tenaga Kesehatan', '17');
INSERT INTO `buku_tamu` VALUES (210, 'FAZAR NOOR MAULIYANA', '081256653142', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Analis Keuangan Pemerintah Pusat dan Daerah', '17-11-2019, 1:58 am', '10', '0017', 'gMX58RYuyjY8', '2019', '911', 'Tenaga Teknis', '17');
INSERT INTO `buku_tamu` VALUES (211, 'SARI YANTI', '085332519467', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Analis Keuangan Pemerintah Pusat dan Daerah', '17-11-2019, 1:59 am', '10', '0018', '1KhtaiKc1Xi7', '2019', '911', 'Tenaga Teknis', '17');
INSERT INTO `buku_tamu` VALUES (212, 'MAULIDAH', '082353274419', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '17-11-2019, 2:01 am', '10', '0035', '5MBIIc1eu042', '2019', '911', 'Tenaga Kesehatan', '17');
INSERT INTO `buku_tamu` VALUES (213, 'RINA HALIPAH', '085248443010', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '17-11-2019, 2:05 am', '10', '0023', 'GLDQj44fPPF9', '2019', '911', 'Tenaga Pendidikan', '17');
INSERT INTO `buku_tamu` VALUES (214, 'M. RIZKI FADLIAN NOOR', '082251603161', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '17-11-2019, 2:09 am', '10', '0036', 'J6kSRZJiPCKA', '2019', '911', 'Tenaga Kesehatan', '17');
INSERT INTO `buku_tamu` VALUES (215, 'ELLIN YUSMITASARI', '085248475599', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Bidan', '17-11-2019, 2:10 am', '10', '0037', 'UOdpLsoL0oR6', '2019', '911', 'Tenaga Kesehatan', '17');
INSERT INTO `buku_tamu` VALUES (216, 'ST. RISA AINA', '081349506472', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Nutrisionis', '17-11-2019, 2:11 am', '10', '0038', 'D3W7QF0d3bg4', '2019', '911', 'Tenaga Kesehatan', '17');
INSERT INTO `buku_tamu` VALUES (217, 'ELISA', '081251123245', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Analis Diklat', '17-11-2019, 2:13 am', '10', '0019', 'd1gXXI1p5o9D', '2019', '911', 'Tenaga Teknis', '17');
INSERT INTO `buku_tamu` VALUES (218, 'NASRULLAH', '082158025993', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Asisten Apoteker', '17-11-2019, 2:14 am', '10', '0039', 'BtPpgYBGA64R', '2019', '911', 'Tenaga Kesehatan', '17');
INSERT INTO `buku_tamu` VALUES (219, 'MARLIANA', '085821201114', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '17-11-2019, 2:16 am', '10', '0024', 'DboyNv3S996b', '2019', '911', 'Tenaga Pendidikan', '17');
INSERT INTO `buku_tamu` VALUES (220, 'NURUL HAZANNAH', '081351712939', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '17-11-2019, 2:18 am', '10', '0025', '8v5E8R1O7k8x', '2019', '911', 'Tenaga Pendidikan', '17');
INSERT INTO `buku_tamu` VALUES (221, 'LISA MAULIDIA', '085845961190', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Asisten Apoteker', '17-11-2019, 2:19 am', '10', '0040', 'oQQTvi8Qht25', '2019', '911', 'Tenaga Kesehatan', '17');
INSERT INTO `buku_tamu` VALUES (222, 'IDA ISMA PURWANTI', '082141977766', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Apoteker', '17-11-2019, 2:20 am', '10', '0041', 'taZ6XnM88LOr', '2019', '911', 'Tenaga Kesehatan', '17');
INSERT INTO `buku_tamu` VALUES (223, 'RINA FRANSISKA', '081332243796', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '17-11-2019, 2:21 am', '10', '0026', '0yC5xocJ2GgM', '2019', '911', 'Tenaga Pendidikan', '17');
INSERT INTO `buku_tamu` VALUES (224, 'ERLITA HAFIZA', '081256361526', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '17-11-2019, 2:22 am', '10', '0027', 'UzJEzJ2LC6fu', '2019', '911', 'Tenaga Pendidikan', '17');
INSERT INTO `buku_tamu` VALUES (225, 'HAEKAL AQLA AL-MARAGHI', '081953786386', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Epidemiolog Kesehatan', '17-11-2019, 2:23 am', '10', '0042', '271QOJ2bH8vR', '2019', '911', 'Tenaga Kesehatan', '17');
INSERT INTO `buku_tamu` VALUES (226, 'MEGAWATI', '081322902016', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Analis Keuangan Pemerintah Pusat dan Daerah', '17-11-2019, 2:24 am', '10', '0020', 'rV5OgGUYXsm4', '2019', '911', 'Tenaga Teknis', '17');
INSERT INTO `buku_tamu` VALUES (227, 'TATI LUKMAN', '083141314959', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '17-11-2019, 2:25 am', '10', '0028', 'nZH7O3846Yv1', '2019', '911', 'Tenaga Pendidikan', '17');
INSERT INTO `buku_tamu` VALUES (228, 'NIDA YUNIARTI', '089692148041', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Epidemiolog Kesehatan', '17-11-2019, 2:26 am', '10', '0043', 'O7BT9O4HMAFR', '2019', '911', 'Tenaga Kesehatan', '17');
INSERT INTO `buku_tamu` VALUES (229, 'MARIA ULFAH', '082149819696', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '17-11-2019, 2:26 am', '10', '0029', '1i14vCqm3uD5', '2019', '911', 'Tenaga Pendidikan', '17');
INSERT INTO `buku_tamu` VALUES (230, 'RONA KARMILA', '082154151859', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat Gigi', '17-11-2019, 2:31 am', '10', '0044', 'Xc1HdMGi2IV6', '2019', '911', 'Tenaga Kesehatan', '17');
INSERT INTO `buku_tamu` VALUES (231, 'FIRMAN', '082358700044', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '17-11-2019, 2:32 am', '10', '0045', 'Df5JSrUztXBD', '2019', '911', 'Tenaga Kesehatan', '17');
INSERT INTO `buku_tamu` VALUES (232, 'SAHBANA', '082350369036', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Analis Keuangan Pemerintah Pusat dan Daerah', '17-11-2019, 2:40 am', '10', '0021', 'a754QHtp1LTh', '2019', '911', 'Tenaga Teknis', '17');
INSERT INTO `buku_tamu` VALUES (233, 'NOVIA KHALIANA', '082299677156', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '17-11-2019, 2:41 am', '10', '0030', 'atooJxa4b8pT', '2019', '911', 'Tenaga Pendidikan', '17');
INSERT INTO `buku_tamu` VALUES (234, 'AULIA RAHMI', '081952722272', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '17-11-2019, 2:42 am', '10', '0031', 'D1DEzSbPdZLj', '2019', '911', 'Tenaga Pendidikan', '17');
INSERT INTO `buku_tamu` VALUES (235, 'AFNI MAULIDA', '085249464266', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '17-11-2019, 2:42 am', '10', '0032', 'rpaGS63AzQFg', '2019', '911', 'Tenaga Pendidikan', '17');
INSERT INTO `buku_tamu` VALUES (236, 'GT. KARINA PERMATASARI', '085246200117', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Analis Keuangan Pemerintah Pusat dan Daerah', '17-11-2019, 2:56 am', '10', '0022', 'uOKC1GpMDz4H', '2019', '911', 'Tenaga Teknis', '17');
INSERT INTO `buku_tamu` VALUES (237, 'ANNISA HUSWATUN KHASANAH', '0895416043700', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '17-11-2019, 3:08 am', '10', '0033', '1Z4KYbILdU4b', '2019', '911', 'Tenaga Pendidikan', '17');
INSERT INTO `buku_tamu` VALUES (238, 'LUTHFIA NURHIDAYATI', '085247424536', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Pranata Laboratorium Kesehatan', '18-11-2019, 12:02 am', '10', '0001', 'p9EBPaJg4D50', '2019', '911', 'Tenaga Kesehatan', '18');
INSERT INTO `buku_tamu` VALUES (239, 'SITI AISYAH MA''RIFAH', '087814827532', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Bahasa Indonesia', '18-11-2019, 12:04 am', '10', '0001', 'I3t7jh121hKW', '2019', '911', 'Tenaga Pendidikan', '18');
INSERT INTO `buku_tamu` VALUES (240, 'RAHMI MULYANI', '085299625981', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '18-11-2019, 12:08 am', '10', '0002', 'hcOQv61kab0c', '2019', '911', 'Tenaga Pendidikan', '18');
INSERT INTO `buku_tamu` VALUES (241, 'NERA APRILLA SELA', '081253197062', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '18-11-2019, 12:17 am', '10', '0003', 'FL45a6z23X4s', '2019', '911', 'Tenaga Pendidikan', '18');
INSERT INTO `buku_tamu` VALUES (242, 'NOOR RAHMAH', '082253052651', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '18-11-2019, 12:22 am', '10', '0004', 'Uu55c6yW6UTP', '2019', '911', 'Tenaga Pendidikan', '18');
INSERT INTO `buku_tamu` VALUES (243, 'DWI KARLIANA PUTRI', 'JL. BIDURI NO. 4 KOMP. AMACO BANJARBARU UTARA / 085754444560', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Nutrisionis', '18-11-2019, 12:27 am', '10', '0002', 'nFA3oSavi660', '2019', '911', 'Tenaga Kesehatan', '18');
INSERT INTO `buku_tamu` VALUES (244, 'WENNY YULIANA', '085349301921', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Epidemiolog Kesehatan', '18-11-2019, 12:33 am', '10', '0003', '1f6p9Ln9HrXO', '2019', '911', 'Tenaga Kesehatan', '18');
INSERT INTO `buku_tamu` VALUES (245, 'TRI BINTARI', '085249218040', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Asisten Apoteker', '18-11-2019, 12:34 am', '10', '0004', 'eMGZGUvizq43', '2019', '911', 'Tenaga Kesehatan', '18');
INSERT INTO `buku_tamu` VALUES (246, 'NUR HIDAYANTI', '085348037122', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Asisten Apoteker', '18-11-2019, 12:35 am', '10', '0005', 'WBKJ9iqyvjNJ', '2019', '911', 'Tenaga Kesehatan', '18');
INSERT INTO `buku_tamu` VALUES (247, 'DEWI SUKMA ARISMAN', '081348380478', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Penjasorkes', '18-11-2019, 12:36 am', '10', '0005', 'SrLK49r1E7Ka', '2019', '911', 'Tenaga Pendidikan', '18');
INSERT INTO `buku_tamu` VALUES (248, 'HUSNUL KHOTIMAH', '085385725071', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Bidan', '18-11-2019, 12:37 am', '10', '0006', 'UPj9WxVT2Q77', '2019', '911', 'Tenaga Kesehatan', '18');
INSERT INTO `buku_tamu` VALUES (249, 'ANGGI ARISTIANI PUTRI', '087709360289', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Analis Kemasyarakatan', '18-11-2019, 12:38 am', '10', '0001', 'qyvv7u9qJnRF', '2019', '911', 'Tenaga Teknis', '18');
INSERT INTO `buku_tamu` VALUES (250, 'HUSNA KAMILAH', '081294004499', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Apoteker', '18-11-2019, 12:39 am', '10', '0007', 'cf5AyGTrc2kP', '2019', '911', 'Tenaga Kesehatan', '18');
INSERT INTO `buku_tamu` VALUES (251, 'NORMALITA SARI', '085248163980', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Apoteker', '18-11-2019, 12:40 am', '10', '0008', '98L8I69ESk27', '2019', '911', 'Tenaga Kesehatan', '18');
INSERT INTO `buku_tamu` VALUES (252, 'M. IKHBAL AZWARI', '081255179912', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Pranata Laboratorium Kesehatan', '18-11-2019, 12:41 am', '10', '0009', '8fRBbscfP1Kf', '2019', '911', 'Tenaga Kesehatan', '18');
INSERT INTO `buku_tamu` VALUES (253, 'CITRA MAHDINI', '081255210050', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Bidan', '18-11-2019, 12:42 am', '10', '0010', '8Z4sJ69NsW3a', '2019', '911', 'Tenaga Kesehatan', '18');
INSERT INTO `buku_tamu` VALUES (254, 'SRI RAGITA', '081215558951', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Analis Keuangan Pemerintah Pusat dan Daerah', '18-11-2019, 12:43 am', '10', '0002', 'STavZIaWhqsg', '2019', '911', 'Tenaga Teknis', '18');
INSERT INTO `buku_tamu` VALUES (255, 'NELLY YULIANTY', '081250118833', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Perawat', '18-11-2019, 12:44 am', '10', '0011', 'X51EnseZv4z4', '2019', '911', 'Tenaga Kesehatan', '18');
INSERT INTO `buku_tamu` VALUES (256, 'NAFIB LUDFIA ROCHMATIN', '081380001135', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Perawat', '18-11-2019, 12:45 am', '10', '0012', 'N2Xj8EiHsk1J', '2019', '911', 'Tenaga Kesehatan', '18');
INSERT INTO `buku_tamu` VALUES (257, 'ANNA ROSALINA', '085348481830', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Pengelola Anggaran', '18-11-2019, 12:46 am', '10', '0003', '5o5ot9jCU4Ks', '2019', '911', 'Tenaga Teknis', '18');
INSERT INTO `buku_tamu` VALUES (258, 'MEGA LESTARI', '082250762858', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Asisten Apoteker', '18-11-2019, 12:47 am', '10', '0013', 'x9xd4GV7STIq', '2019', '911', 'Tenaga Kesehatan', '18');
INSERT INTO `buku_tamu` VALUES (259, 'TIYA KAHDAWATI', '085349483739', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '18-11-2019, 12:48 am', '10', '0006', 'rdCJM2gX6dt2', '2019', '911', 'Tenaga Pendidikan', '18');
INSERT INTO `buku_tamu` VALUES (260, 'YURIDA EKA MARIYANI', '082199740081', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Perancang Peraturan Perundang-undangan', '18-11-2019, 12:49 am', '10', '0004', 'aZ2q7q1BITEN', '2019', '911', 'Tenaga Teknis', '18');
INSERT INTO `buku_tamu` VALUES (261, 'REHANA SARI', '085248355129', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '18-11-2019, 12:50 am', '10', '0007', '848hBp6U6VaY', '2019', '911', 'Tenaga Pendidikan', '18');
INSERT INTO `buku_tamu` VALUES (262, 'PUTERI SARINA', '08875637359', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Bahasa Indonesia', '18-11-2019, 12:51 am', '10', '0008', 'K53i4uZTajQi', '2019', '911', 'Tenaga Pendidikan', '18');
INSERT INTO `buku_tamu` VALUES (263, 'RIANTO SURYA MIHARJA', '081223759699', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Analis Diklat', '18-11-2019, 12:51 am', '10', '0005', '889Sgk2652L2', '2019', '911', 'Tenaga Teknis', '18');
INSERT INTO `buku_tamu` VALUES (264, 'DEAR AYU WIDURI', '081398419672', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '18-11-2019, 12:52 am', '10', '0009', 'qhbgVNpzCs92', '2019', '911', 'Tenaga Pendidikan', '18');
INSERT INTO `buku_tamu` VALUES (265, 'MI NINGSIH', '081351630737', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '18-11-2019, 12:53 am', '10', '0014', '1GE4jLyX2W0m', '2019', '911', 'Tenaga Kesehatan', '18');
INSERT INTO `buku_tamu` VALUES (266, 'INDRIYATNI FITRIA', '082358791431', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Analis Keuangan Pemerintah Pusat dan Daerah', '18-11-2019, 12:54 am', '10', '0006', 'DgGc76K575f5', '2019', '911', 'Tenaga Teknis', '18');
INSERT INTO `buku_tamu` VALUES (267, 'ADRIYAH', '081346550262', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Bidan', '18-11-2019, 12:55 am', '10', '0015', '9HBvpTX5S234', '2019', '911', 'Tenaga Kesehatan', '18');
INSERT INTO `buku_tamu` VALUES (268, 'NANDA YUNARA', '081348235208', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '18-11-2019, 12:56 am', '10', '0010', 'TFDyVI2KZZoO', '2019', '911', 'Tenaga Pendidikan', '18');
INSERT INTO `buku_tamu` VALUES (269, 'M. TAMJIDILLAH', '085251009481', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '18-11-2019, 12:57 am', '10', '0016', '1mX8UopYoX8F', '2019', '911', 'Tenaga Kesehatan', '18');
INSERT INTO `buku_tamu` VALUES (270, 'SITI CHAIRANI NUR', '082255320768', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Dokter', '18-11-2019, 12:58 am', '10', '0017', 'RVn1YnuiJQ5i', '2019', '911', 'Tenaga Kesehatan', '18');
INSERT INTO `buku_tamu` VALUES (271, 'RAUDAH', '085251481462', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Penjasorkes', '18-11-2019, 12:59 am', '10', '0011', '2RTR6JC6fbbt', '2019', '911', 'Tenaga Pendidikan', '18');
INSERT INTO `buku_tamu` VALUES (272, 'AGUS NURBAYTI ROOSE', '089661742325', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Penjasorkes', '18-11-2019, 1:00 am', '10', '0012', 'RGxWZUg6Z989', '2019', '911', 'Tenaga Pendidikan', '18');
INSERT INTO `buku_tamu` VALUES (273, 'AULIA ULFAH', '087716372818', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Pranata Laboratorium Kesehatan', '18-11-2019, 1:01 am', '10', '0018', 'BYQMavkKHFYy', '2019', '911', 'Tenaga Kesehatan', '18');
INSERT INTO `buku_tamu` VALUES (274, 'NIDA RAHMANIAH', '087815271233', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Nutrisionis', '18-11-2019, 1:03 am', '10', '0019', 'f4X6pIuapoST', '2019', '911', 'Tenaga Kesehatan', '18');
INSERT INTO `buku_tamu` VALUES (275, 'ERNI NOVIANTI', '082156324040', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Epidemiolog Kesehatan', '18-11-2019, 1:06 am', '10', '0020', 'D7DR3IDO66xy', '2019', '911', 'Tenaga Kesehatan', '18');
INSERT INTO `buku_tamu` VALUES (276, 'RISKA NOPIANTI', '083150059345', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Pranata Laboratorium Kesehatan', '18-11-2019, 1:07 am', '10', '0021', 'Iyu6UNG3p1B2', '2019', '911', 'Tenaga Kesehatan', '18');
INSERT INTO `buku_tamu` VALUES (277, 'EVIN RUVI NUARY', '081257943071', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '18-11-2019, 1:08 am', '10', '0013', 'jpYFZVdh91Pe', '2019', '911', 'Tenaga Pendidikan', '18');
INSERT INTO `buku_tamu` VALUES (278, 'MAULIDATUL JENAH', '082155619030', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Perawat', '18-11-2019, 1:12 am', '10', '0022', 'ceFZb0LXmP9b', '2019', '911', 'Tenaga Kesehatan', '18');
INSERT INTO `buku_tamu` VALUES (279, 'NIKO NURCAHYA BUDI', '089685100906', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Pengelola Formasi dan Pengadaan Pegawai', '18-11-2019, 1:21 am', '10', '0007', 'mRAA8pCE536z', '2019', '911', 'Tenaga Teknis', '18');
INSERT INTO `buku_tamu` VALUES (280, 'APRILINA WIJAYANTI', '082351364354', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Epidemiolog Kesehatan', '18-11-2019, 1:24 am', '10', '0023', 'Ux33sfWqRWH9', '2019', '911', 'Tenaga Kesehatan', '18');
INSERT INTO `buku_tamu` VALUES (281, 'DWINING WAHYUDI', '081346883747', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Penjasorkes', '18-11-2019, 1:25 am', '10', '0014', 'Nb5C1SyXLL6e', '2019', '911', 'Tenaga Pendidikan', '18');
INSERT INTO `buku_tamu` VALUES (282, 'NURHADIATI', '085768875266', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Penjasorkes', '18-11-2019, 1:26 am', '10', '0015', 'Qz2i18123yb6', '2019', '911', 'Tenaga Pendidikan', '18');
INSERT INTO `buku_tamu` VALUES (283, 'M. SYAHRIR RAMADANI', '082353143931', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Asisten Apoteker', '18-11-2019, 1:27 am', '10', '0024', '2uvYWahy8hr2', '2019', '911', 'Tenaga Kesehatan', '18');
INSERT INTO `buku_tamu` VALUES (284, 'WINSA WIRA WIJAYA', '085251999307', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Apoteker', '18-11-2019, 1:28 am', '10', '0025', '5u3IEJy3n84h', '2019', '911', 'Tenaga Kesehatan', '18');
INSERT INTO `buku_tamu` VALUES (285, 'SITI KHAIRINA MUTAHAROH', '082148583694', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Pranata Laboratorium Kesehatan', '18-11-2019, 1:29 am', '10', '0026', 'oTg8pVY6JKM5', '2019', '911', 'Tenaga Kesehatan', '18');
INSERT INTO `buku_tamu` VALUES (286, 'MUHAMMAD FADHILLAH', '082154308437', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Analis Diklat', '18-11-2019, 1:30 am', '10', '0008', '26ao4iO5ang5', '2019', '911', 'Tenaga Teknis', '18');
INSERT INTO `buku_tamu` VALUES (287, 'AKHMAD SYARIFUDDIN', '082192356068', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Asisten Apoteker', '18-11-2019, 1:34 am', '10', '0027', 'TMmhC64k6fpU', '2019', '911', 'Tenaga Kesehatan', '18');
INSERT INTO `buku_tamu` VALUES (288, 'DARA NATA AGUSTINA', '082119076659', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Bidan', '18-11-2019, 1:35 am', '10', '0028', 'yZe9J5G5mkaI', '2019', '911', 'Tenaga Kesehatan', '18');
INSERT INTO `buku_tamu` VALUES (289, 'SHEILA NOVI HAPSARI', '087787974938', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Analis Keuangan Pemerintah Pusat dan Daerah', '18-11-2019, 1:37 am', '10', '0009', 'KOz4L4CH9xJf', '2019', '911', 'Tenaga Teknis', '18');
INSERT INTO `buku_tamu` VALUES (290, 'MASYITA YULIANDA', '085299777706', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Penyuluh Kesehatan Masyarakat', '18-11-2019, 1:38 am', '10', '0029', 'NujE5VEv9Rmm', '2019', '911', 'Tenaga Kesehatan', '18');
INSERT INTO `buku_tamu` VALUES (291, 'RINATI WULANDARI', '082253561722', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Epidemiolog Kesehatan', '18-11-2019, 1:39 am', '10', '0030', 'qVY1eWm796GO', '2019', '911', 'Tenaga Kesehatan', '18');
INSERT INTO `buku_tamu` VALUES (292, 'FITRI SARLIANTI', '085349951509', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Asisten Apoteker', '18-11-2019, 1:42 am', '10', '0031', 'xT3dzoaT07B1', '2019', '911', 'Tenaga Kesehatan', '18');
INSERT INTO `buku_tamu` VALUES (293, 'MUHAMMAD MIRZA FAHLIVI', '083143578528', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '18-11-2019, 1:43 am', '10', '0016', 'GmzRP5PSp3af', '2019', '911', 'Tenaga Pendidikan', '18');
INSERT INTO `buku_tamu` VALUES (294, 'MARATUSH SHALIHAH', '081350839430', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '18-11-2019, 1:44 am', '10', '0017', 'QJGDDGu6A93L', '2019', '911', 'Tenaga Pendidikan', '18');
INSERT INTO `buku_tamu` VALUES (295, 'WAN YUDHA NUGRAHA', '082251138879', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Epidemiolog Kesehatan', '18-11-2019, 1:45 am', '10', '0032', 'jFxf5r6C8WGn', '2019', '911', 'Tenaga Kesehatan', '18');
INSERT INTO `buku_tamu` VALUES (296, 'DEWI SARTIKA', '085313972108', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '18-11-2019, 1:45 am', '10', '0033', 'LdU4bAx5jRf3', '2019', '911', 'Tenaga Kesehatan', '18');
INSERT INTO `buku_tamu` VALUES (297, 'MUHAMMAD MINTARJO', '081257408500', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Perancang Peraturan Perundang-undangan', '18-11-2019, 1:49 am', '10', '0010', '79k8EZ6FG0nE', '2019', '911', 'Tenaga Teknis', '18');
INSERT INTO `buku_tamu` VALUES (298, 'EKO EDISON SIAGIAN', '085393085042', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '18-11-2019, 1:50 am', '10', '0034', '529GXANsYc15', '2019', '911', 'Tenaga Kesehatan', '18');
INSERT INTO `buku_tamu` VALUES (299, 'ELLYA RAHMAWATI', '085393085041', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Bidan', '18-11-2019, 1:51 am', '10', '0035', 'kkmIV4IBaR1T', '2019', '911', 'Tenaga Kesehatan', '18');
INSERT INTO `buku_tamu` VALUES (300, 'ERIA HERLITA', '085252525956', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Bidan', '18-11-2019, 1:52 am', '10', '0036', 'uk9AOp3487sp', '2019', '911', 'Tenaga Kesehatan', '18');
INSERT INTO `buku_tamu` VALUES (301, 'AISYAH HUMAIRAH', '082253985778', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Epidemiolog Kesehatan', '18-11-2019, 1:53 am', '10', '0037', 'O5ang54qbOpg', '2019', '911', 'Tenaga Kesehatan', '18');
INSERT INTO `buku_tamu` VALUES (302, 'UMMU NIKMATUS SANGADAH', '082257523611', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Analis Kemasyarakatan', '18-11-2019, 1:54 am', '10', '0011', 'nse3tUUD87A6', '2019', '911', 'Tenaga Teknis', '18');
INSERT INTO `buku_tamu` VALUES (303, 'UMMU NIKMATUS SANGADAH', '082257523611', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Analis Kemasyarakatan', '18-11-2019, 1:54 am', '10', '0012', 'dG8vP6VOSp8O', '2019', '911', 'Tenaga Teknis', '18');
INSERT INTO `buku_tamu` VALUES (304, 'MUHAMMAD RIFKI HAFIZHI', '085349141462', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Epidemiolog Kesehatan', '18-11-2019, 1:55 am', '10', '0038', 'Y8AMt23iO7rz', '2019', '911', 'Tenaga Kesehatan', '18');
INSERT INTO `buku_tamu` VALUES (305, 'GADIS DESIANJARNI', '082251122191', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '18-11-2019, 1:57 am', '10', '0018', 'j9Cyntm3vgPe', '2019', '911', 'Tenaga Pendidikan', '18');
INSERT INTO `buku_tamu` VALUES (306, 'NURUL FITRIANI', '081256643369', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '18-11-2019, 1:58 am', '10', '0019', 'V01mX8UopYoX', '2019', '911', 'Tenaga Pendidikan', '18');
INSERT INTO `buku_tamu` VALUES (307, 'NILAWATI', '081214772019', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Bahasa Indonesia', '18-11-2019, 1:58 am', '10', '0020', 'jm0V9BE9J2JQ', '2019', '911', 'Tenaga Pendidikan', '18');
INSERT INTO `buku_tamu` VALUES (308, 'IRDAWATI', '089666221707', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '18-11-2019, 1:59 am', '10', '0021', 'uz3n3RMIjVvi', '2019', '911', 'Tenaga Pendidikan', '18');
INSERT INTO `buku_tamu` VALUES (309, 'MEUTYA INDAHSARI', '083155806668', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '18-11-2019, 2:01 am', '10', '0022', 'i07IZiKAJq21', '2019', '911', 'Tenaga Pendidikan', '18');
INSERT INTO `buku_tamu` VALUES (310, 'NOOR ALFIANI DEWI', '082154415180', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '18-11-2019, 2:02 am', '10', '0023', '1z55c92MQaE9', '2019', '911', 'Tenaga Pendidikan', '18');
INSERT INTO `buku_tamu` VALUES (311, 'TRI YULIANTI', '082254406518', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '18-11-2019, 2:03 am', '10', '0024', 'c6I8k0V0PS8F', '2019', '911', 'Tenaga Pendidikan', '18');
INSERT INTO `buku_tamu` VALUES (312, 'RANI INTAN PERMATASARI', '087816676655', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana terampil - Sanitarian', '18-11-2019, 2:04 am', '10', '0039', 'I60Ze9FqSa5Q', '2019', '911', 'Tenaga Kesehatan', '18');
INSERT INTO `buku_tamu` VALUES (313, 'RIZKY FITHRA RAMADHANI', '08971150116', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Bahasa Indonesia', '18-11-2019, 2:10 am', '10', '0025', 'kb42B4GP347x', '2019', '911', 'Tenaga Pendidikan', '18');
INSERT INTO `buku_tamu` VALUES (314, 'SITI KHOMAIRA', '082155022680', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Pengelola Pengadaan Barang/Jasa', '18-11-2019, 2:11 am', '10', '0013', 'nxO7Kj7t3xBA', '2019', '911', 'Tenaga Teknis', '18');
INSERT INTO `buku_tamu` VALUES (315, 'SURYA ARRACHMAN', '085820482471', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Analis Kemasyarakatan', '18-11-2019, 2:14 am', '10', '0014', 'h1UzJEzJ2LC6', '2019', '911', 'Tenaga Teknis', '18');
INSERT INTO `buku_tamu` VALUES (316, 'NUR IKHSAN', '0895700719054', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '18-11-2019, 2:16 am', '10', '0040', 'q2f96qMkx339', '2019', '911', 'Tenaga Kesehatan', '18');
INSERT INTO `buku_tamu` VALUES (317, 'RIKA FITRIANI', '082351680012', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Nutrisionis', '18-11-2019, 2:17 am', '10', '0041', '773eECeV6DaL', '2019', '911', 'Tenaga Kesehatan', '18');
INSERT INTO `buku_tamu` VALUES (318, 'FITRIANI DWI FEBRIYANTI', '081254999190', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Analis Kemasyarakatan', '18-11-2019, 2:18 am', '10', '0015', '9tdI1XgUQbmf', '2019', '911', 'Tenaga Teknis', '18');
INSERT INTO `buku_tamu` VALUES (319, 'MUHAMMAD BUDI SAPUTRA', '085247852755', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Analis Keuangan Pemerintah Pusat dan Daerah', '18-11-2019, 2:19 am', '10', '0016', '97y2aF467eay', '2019', '911', 'Tenaga Teknis', '18');
INSERT INTO `buku_tamu` VALUES (320, 'NURFAUZAH AZMI', '085350844733', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '18-11-2019, 2:24 am', '10', '0026', '8EQjDYK8I2nS', '2019', '911', 'Tenaga Pendidikan', '18');
INSERT INTO `buku_tamu` VALUES (321, 'NUR NOPIAH', '081346231116', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '18-11-2019, 2:27 am', '10', '0027', 'bTFDyVI2KZZo', '2019', '911', 'Tenaga Pendidikan', '18');
INSERT INTO `buku_tamu` VALUES (322, 'RABIATUL ADAWIYAH', '081319013556', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Penjasorkes', '18-11-2019, 2:28 am', '10', '0028', 'h7e9RI5VK3rQ', '2019', '911', 'Tenaga Pendidikan', '18');
INSERT INTO `buku_tamu` VALUES (323, 'HENI AMARIYA', '085751605122', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Bahasa Indonesia', '18-11-2019, 2:29 am', '10', '0029', '12AxvqukTgS2', '2019', '911', 'Tenaga Pendidikan', '18');
INSERT INTO `buku_tamu` VALUES (324, 'ERMA IRIANI', '083159536909', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Bahasa Indonesia', '18-11-2019, 2:30 am', '10', '0030', 'Ic93H0UEEdQV', '2019', '911', 'Tenaga Pendidikan', '18');
INSERT INTO `buku_tamu` VALUES (325, 'HERLINA HIDAYATI', '082353115507', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Pranata Laboratorium Kesehatan', '18-11-2019, 2:37 am', '10', '0042', '7iJXykgormMp', '2019', '911', 'Tenaga Kesehatan', '18');
INSERT INTO `buku_tamu` VALUES (326, 'ZHENI RAMDHAENI', '082150936512', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Pengelola Anggaran', '18-11-2019, 2:39 am', '10', '0017', 'XhR3fIeHCRn0', '2019', '911', 'Tenaga Teknis', '18');
INSERT INTO `buku_tamu` VALUES (327, 'ULFAH HIDAYAH', '085388616216', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Epidemiolog Kesehatan', '18-11-2019, 2:40 am', '10', '0043', 'bvCaj86Mav8T', '2019', '911', 'Tenaga Kesehatan', '18');
INSERT INTO `buku_tamu` VALUES (328, 'AISYAH FAJERINA', '089628102893', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Bahasa Indonesia', '18-11-2019, 2:41 am', '10', '0031', 'Rba6698DTtov', '2019', '911', 'Tenaga Pendidikan', '18');
INSERT INTO `buku_tamu` VALUES (329, 'ANIDA HAYATI', '085250060700', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Bidan', '18-11-2019, 2:43 am', '10', '0044', 'yp9vyqx3g6qc', '2019', '911', 'Tenaga Kesehatan', '18');
INSERT INTO `buku_tamu` VALUES (330, 'NADIA SHOLEHA', '082252872996', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Penyuluh Kesehatan Masyarakat', '18-11-2019, 2:44 am', '10', '0045', 'md2n93QSzLX5', '2019', '911', 'Tenaga Kesehatan', '18');
INSERT INTO `buku_tamu` VALUES (331, 'ENY MUTIA YULIANI', '082157936272', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Nutrisionis', '18-11-2019, 2:46 am', '10', '0046', 'OI8a8ggU87Ga', '2019', '911', 'Tenaga Kesehatan', '18');
INSERT INTO `buku_tamu` VALUES (332, 'GT. KHAIRUNNISA', '081357592868', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '18-11-2019, 2:48 am', '10', '0047', 'jpoA90Uvi35T', '2019', '911', 'Tenaga Kesehatan', '18');
INSERT INTO `buku_tamu` VALUES (333, 'NILA OKTA FIDAYANTI', '085828342057', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Epidemiolog Kesehatan', '18-11-2019, 2:53 am', '10', '0048', 'HM6C53Xa75u3', '2019', '911', 'Tenaga Kesehatan', '18');
INSERT INTO `buku_tamu` VALUES (334, 'ACHMAD RIZA ULYANI', 'JL. FAJAR NO.105 RT.02 RW.04 KEL. LOKTABAT SELATAN, BANJARBARU 081258604632', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '18-11-2019, 3:00 am', '10', '0032', 'tak2y2i6hHIx', '2019', '911', 'Tenaga Pendidikan', '18');
INSERT INTO `buku_tamu` VALUES (335, 'MUHAMMAD LUTFI', '089521333423', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '18-11-2019, 3:01 am', '10', '0033', 'AutDPLQa5ZgS', '2019', '911', 'Tenaga Pendidikan', '18');
INSERT INTO `buku_tamu` VALUES (336, 'RISKA KARTIKA PUTERI', '087815732477', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Pranata Komputer', '18-11-2019, 3:03 am', '10', '0018', '29tukbetqupm', '2019', '911', 'Tenaga Teknis', '18');
INSERT INTO `buku_tamu` VALUES (337, 'MUTMAINAH', '081250824236', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Bahasa Indonesia', '18-11-2019, 3:04 am', '10', '0034', 't8e469o5A4Nf', '2019', '911', 'Tenaga Pendidikan', '18');
INSERT INTO `buku_tamu` VALUES (338, 'DESI APRINA', '085246110595', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Pranata Laboratorium Kesehatan', '18-11-2019, 3:05 am', '10', '0049', 'cuhM63BCnXi3', '2019', '911', 'Tenaga Kesehatan', '18');
INSERT INTO `buku_tamu` VALUES (339, 'DEVI TAMALA', '082152422088', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Pranata Laboratorium Kesehatan', '18-11-2019, 3:05 am', '10', '0050', 'vMAJmWe97P86', '2019', '911', 'Tenaga Kesehatan', '18');
INSERT INTO `buku_tamu` VALUES (340, 'BAHRUL ILMI', '087814476999', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '18-11-2019, 3:06 am', '10', '0051', 'jO5R0qBOE1aA', '2019', '911', 'Tenaga Kesehatan', '18');
INSERT INTO `buku_tamu` VALUES (341, 'ANDI SETIAWAN', '082149845042', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Nutrisionis', '18-11-2019, 3:07 am', '10', '0052', 'MYpUnVNij68y', '2019', '911', 'Tenaga Kesehatan', '18');
INSERT INTO `buku_tamu` VALUES (342, 'HAFIDZAH', '081249003390', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Apoteker', '18-11-2019, 3:08 am', '10', '0053', 'cLQIEFmza4ui', '2019', '911', 'Tenaga Kesehatan', '18');
INSERT INTO `buku_tamu` VALUES (343, 'SRI WAHIDAH ARIYANTI', '082157221197', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Bidan', '18-11-2019, 3:18 am', '10', '0054', 'ETthMX97OS4e', '2019', '911', 'Tenaga Kesehatan', '18');
INSERT INTO `buku_tamu` VALUES (344, 'LAILY NASHIRAH', '081549471995', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Epidemiolog Kesehatan', '18-11-2019, 3:20 am', '10', '0055', '2AmfB4bz8VPa', '2019', '911', 'Tenaga Kesehatan', '18');
INSERT INTO `buku_tamu` VALUES (345, 'ELSA KEMALA', '081351124488', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Analis Kemasyarakatan', '18-11-2019, 3:21 am', '10', '0019', 'D5gE0t61pqKh', '2019', '911', 'Tenaga Teknis', '18');
INSERT INTO `buku_tamu` VALUES (346, 'ASRI STYA WIRANDA', '082149944405', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Bahasa Indonesia', '18-11-2019, 3:23 am', '10', '0035', 'BkLsvNhLIHL4', '2019', '911', 'Tenaga Pendidikan', '18');
INSERT INTO `buku_tamu` VALUES (347, 'KHUSNUL FADHILAH', '087836604220', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Pranata Laboratorium Kesehatan', '18-11-2019, 3:24 am', '10', '0056', 'OuUHfPye3hAq', '2019', '911', 'Tenaga Kesehatan', '18');
INSERT INTO `buku_tamu` VALUES (348, 'LIRA ATELIA', '085821753830', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '18-11-2019, 3:26 am', '10', '0036', 'n84Y2H7y5YRZ', '2019', '911', 'Tenaga Pendidikan', '18');
INSERT INTO `buku_tamu` VALUES (349, 'EKA SARI YULIANTI', '0818272541', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Nutrisionis', '18-11-2019, 3:27 am', '10', '0057', 'j4GbSO62qULo', '2019', '911', 'Tenaga Kesehatan', '18');
INSERT INTO `buku_tamu` VALUES (350, 'RIKA ARLITA', '081251142137', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '18-11-2019, 3:29 am', '10', '0058', 'cILUs2hUQGOp', '2019', '911', 'Tenaga Kesehatan', '18');
INSERT INTO `buku_tamu` VALUES (351, 'WINDA HAYATI', '089665450907', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Apoteker', '18-11-2019, 3:31 am', '10', '0059', '8MQ094LehaTI', '2019', '911', 'Tenaga Kesehatan', '18');
INSERT INTO `buku_tamu` VALUES (352, 'MUTIA WIDYASTUTI', '085806671985', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Pranata Laboratorium Kesehatan', '18-11-2019, 3:36 am', '10', '0060', '88DCeeCF4F25', '2019', '911', 'Tenaga Kesehatan', '18');
INSERT INTO `buku_tamu` VALUES (353, 'MARIA FEBRINA SARAWATI', '085348178918', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '18-11-2019, 3:40 am', '10', '0037', '8FojFkp23pqD', '2019', '911', 'Tenaga Pendidikan', '18');
INSERT INTO `buku_tamu` VALUES (354, 'A. HADI AZHARI', '082351195923', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Apoteker', '18-11-2019, 3:58 am', '10', '0061', 'm7YF6T955TSH', '2019', '911', 'Tenaga Kesehatan', '18');
INSERT INTO `buku_tamu` VALUES (355, 'MUHAMMAD RIZWAN', '085346158161', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Pengelola Anggaran', '18-11-2019, 3:59 am', '10', '0020', 'rU6Dj0edY3hU', '2019', '911', 'Tenaga Teknis', '18');
INSERT INTO `buku_tamu` VALUES (356, 'ASTRIANA', '082153549007', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Pengelola Anggaran', '18-11-2019, 4:00 am', '10', '0021', '54xnt59335bp', '2019', '911', 'Tenaga Teknis', '18');
INSERT INTO `buku_tamu` VALUES (357, 'NUR HIDAYANTI', '082211221602', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Perawat', '18-11-2019, 4:02 am', '10', '0062', 'in6vXSoDY9Oi', '2019', '911', 'Tenaga Kesehatan', '18');
INSERT INTO `buku_tamu` VALUES (358, 'RETNO PANCA DESTARI', '082256822301', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Bidan', '18-11-2019, 4:06 am', '10', '0063', 'NiaT9x76SzLi', '2019', '911', 'Tenaga Kesehatan', '18');
INSERT INTO `buku_tamu` VALUES (359, 'TRI CAHYO SUSENO', '082178308476', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Penjasorkes', '18-11-2019, 4:11 am', '10', '0038', 'uI3ZSWt94z4A', '2019', '911', 'Tenaga Pendidikan', '18');
INSERT INTO `buku_tamu` VALUES (360, 'SITI SAADIAH', '089691332539', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Bahasa Indonesia', '18-11-2019, 4:12 am', '10', '0039', '0h8hu6y83BSc', '2019', '911', 'Tenaga Pendidikan', '18');
INSERT INTO `buku_tamu` VALUES (361, 'YUNITA RIZKI AMALIA', '08115163196', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Bidan', '18-11-2019, 4:16 am', '10', '0064', '6qvFvY54ctB6', '2019', '911', 'Tenaga Kesehatan', '18');
INSERT INTO `buku_tamu` VALUES (362, 'NOOR AZIZAH', '085390964140', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '18-11-2019, 4:21 am', '10', '0040', 'yoqe1391ytiB', '2019', '911', 'Tenaga Pendidikan', '18');
INSERT INTO `buku_tamu` VALUES (363, 'DEVY YULITA', '081253982798', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Analis Keuangan Pemerintah Pusat dan Daerah', '18-11-2019, 4:22 am', '10', '0022', '7r686vtb4HbJ', '2019', '911', 'Tenaga Teknis', '18');
INSERT INTO `buku_tamu` VALUES (364, 'ADE IRMA IRIANI', '085751424237', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Epidemiolog Kesehatan', '18-11-2019, 4:26 am', '10', '0065', 'Y0I85e8cW8MU', '2019', '911', 'Tenaga Kesehatan', '18');
INSERT INTO `buku_tamu` VALUES (365, 'NOOR HIDAYANTI', '085248888369', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '18-11-2019, 4:33 am', '10', '0041', 'E3O4jfn8v9pT', '2019', '911', 'Tenaga Pendidikan', '18');
INSERT INTO `buku_tamu` VALUES (366, 'RACHMAT SANDY RAMADHAN', '081254902345', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Analis Keuangan Pemerintah Pusat dan Daerah', '18-11-2019, 4:52 am', '10', '0023', '5Cj39tGPxYHR', '2019', '911', 'Tenaga Teknis', '18');
INSERT INTO `buku_tamu` VALUES (367, 'GINA AGUSTINAH', '081254982204', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana terampil - Sanitarian', '18-11-2019, 4:53 am', '10', '0066', '6VaYZtvoW1Q8', '2019', '911', 'Tenaga Kesehatan', '18');
INSERT INTO `buku_tamu` VALUES (368, 'NUR RAHMANIAR', '082155618875', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Pranata Laboratorium Kesehatan', '18-11-2019, 4:57 am', '10', '0067', 'L2AmfB4bz8VP', '2019', '911', 'Tenaga Kesehatan', '18');
INSERT INTO `buku_tamu` VALUES (369, 'LAILY MUKHLISAH', '081251528997', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Bahasa Indonesia', '18-11-2019, 4:58 am', '10', '0042', 'is9EJ2G6KQm2', '2019', '911', 'Tenaga Pendidikan', '18');
INSERT INTO `buku_tamu` VALUES (370, 'AYU MAULIDYA FATRIYANI', '081253956291', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Bidan', '18-11-2019, 4:59 am', '10', '0068', 'Ynbpu8mrq3k2', '2019', '911', 'Tenaga Kesehatan', '18');
INSERT INTO `buku_tamu` VALUES (371, 'ANISA MEGGAWATI', '081254008180', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Analis Keuangan Pemerintah Pusat dan Daerah', '18-11-2019, 5:02 am', '10', '0024', 'Fzp06e9IrQU9', '2019', '911', 'Tenaga Teknis', '18');
INSERT INTO `buku_tamu` VALUES (372, 'DEWI SUGIARTI', '085821624579', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Analis Keuangan Pemerintah Pusat dan Daerah', '18-11-2019, 5:03 am', '10', '0025', 'WFG1y6E3W3mD', '2019', '911', 'Tenaga Teknis', '18');
INSERT INTO `buku_tamu` VALUES (373, 'INTAN KUMALA MEIDINA', 'JL. BATU TERAPU RT/RW. 023/009 BANJARBARU / 08969811797', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Epidemiolog Kesehatan', '18-11-2019, 5:10 am', '10', '0069', 'tL37ejkvz7TZ', '2019', '911', 'Tenaga Kesehatan', '18');
INSERT INTO `buku_tamu` VALUES (374, 'NOOR FEJRINA SEPTIANA', '087864285821', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Epidemiolog Kesehatan', '18-11-2019, 5:14 am', '10', '0070', '6S1x4JJIEJ1g', '2019', '911', 'Tenaga Kesehatan', '18');
INSERT INTO `buku_tamu` VALUES (375, 'INTAN KUMALA MEIDINA', '089690811797', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Epidemiolog Kesehatan', '18-11-2019, 5:15 am', '10', '0071', 'd2PefZtYf1gi', '2019', '911', 'Tenaga Kesehatan', '18');
INSERT INTO `buku_tamu` VALUES (376, 'LULUK ANNA ERLINA', '081348952514', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Dokter', '18-11-2019, 5:17 am', '10', '0072', 'N14OCs7EDX51', '2019', '911', 'Tenaga Kesehatan', '18');
INSERT INTO `buku_tamu` VALUES (377, 'MARETA ERNANI W', '087842970810', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '18-11-2019, 5:26 am', '10', '0073', '7yp0XJp4B6Xn', '2019', '911', 'Tenaga Kesehatan', '18');
INSERT INTO `buku_tamu` VALUES (378, 'NI MADE AYU KOMANG DEWI', '081348455981', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '18-11-2019, 5:28 am', '10', '0074', 'pARu7iy2Gv9g', '2019', '911', 'Tenaga Kesehatan', '18');
INSERT INTO `buku_tamu` VALUES (379, 'DENTY PUJI SEPTIA PARMAN', '085942001640', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '18-11-2019, 5:29 am', '10', '0075', '5RvD1epLyD0F', '2019', '911', 'Tenaga Kesehatan', '18');
INSERT INTO `buku_tamu` VALUES (380, 'MUTIA AFRIANTI', '082149792914', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Analis Keuangan Pemerintah Pusat dan Daerah', '18-11-2019, 5:30 am', '10', '0026', 'tXJbazH4Wu08', '2019', '911', 'Tenaga Teknis', '18');
INSERT INTO `buku_tamu` VALUES (381, 'HELENA YOLANDA ANJARYANA', '081953353731', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Analis Kemasyarakatan', '18-11-2019, 5:33 am', '10', '0027', 'JddY8D3NJCXK', '2019', '911', 'Tenaga Teknis', '18');
INSERT INTO `buku_tamu` VALUES (382, 'M. BIRTY ARIYADI', '087815555740', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Penjasorkes', '18-11-2019, 5:34 am', '10', '0043', 'VdoiBiKHFjPb', '2019', '911', 'Tenaga Pendidikan', '18');
INSERT INTO `buku_tamu` VALUES (383, 'HANA', '08565299009', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Perancang Peraturan Perundang-undangan', '18-11-2019, 5:38 am', '10', '0028', '8qnrPML615U2', '2019', '911', 'Tenaga Teknis', '18');
INSERT INTO `buku_tamu` VALUES (384, 'MAR''I', '085332225657', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '18-11-2019, 5:40 am', '10', '0076', 'KGkuDyex4r1O', '2019', '911', 'Tenaga Kesehatan', '18');
INSERT INTO `buku_tamu` VALUES (385, 'FITRIANI LATIFAH', '082262448589', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '18-11-2019, 5:47 am', '10', '0044', 'Lu9ZITLYbK37', '2019', '911', 'Tenaga Pendidikan', '18');
INSERT INTO `buku_tamu` VALUES (386, 'VENNI SAVITRI', '082250703747', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Analis Kemasyarakatan', '18-11-2019, 5:56 am', '10', '0029', 'ATdFZKn9FRm5', '2019', '911', 'Tenaga Teknis', '18');
INSERT INTO `buku_tamu` VALUES (387, 'RIDHA NOVRIHATI SOLEHAH', '082250139779', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Agama Islam', '18-11-2019, 5:58 am', '10', '0045', '1F3pDPU56g1D', '2019', '911', 'Tenaga Pendidikan', '18');
INSERT INTO `buku_tamu` VALUES (388, 'SUCI LIAWATI', '085849504070', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Pengelola Formasi dan Pengadaan Pegawai', '18-11-2019, 6:11 am', '10', '0030', 'vex69ZGJtFUv', '2019', '911', 'Tenaga Teknis', '18');
INSERT INTO `buku_tamu` VALUES (389, 'ELOK ASMARANI', '081351144682', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Bahasa Indonesia', '18-11-2019, 11:39 pm', '10', '0046', 'OHxHi6rm4ifr', '2019', '911', 'Tenaga Pendidikan', '18');
INSERT INTO `buku_tamu` VALUES (390, 'ELOK ASMARANI', '081351144682', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Bahasa Indonesia', '18-11-2019, 11:40 pm', '10', '0047', 'bVD8Rejdjx67', '2019', '911', 'Tenaga Pendidikan', '18');
INSERT INTO `buku_tamu` VALUES (391, 'FHASHAS', 'EQ2EQWEQ', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Agama Islam', '18-11-2019, 11:41 pm', '10', '0048', 'hnp9K1XZc6i9', '2019', '911', 'Tenaga Pendidikan', '18');
INSERT INTO `buku_tamu` VALUES (392, 'SULAIMAN IBERAHIM', 'EEEE', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Agama Islam', '18-11-2019, 11:41 pm', '10', '0049', 'RpB8gX3KNM9H', '2019', '911', 'Tenaga Pendidikan', '18');
INSERT INTO `buku_tamu` VALUES (393, 'SULAIMAN IBERAHIM', '111', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Agama Islam', '18-11-2019, 11:42 pm', '10', '0050', 'r92shpH11fz7', '2019', '911', 'Tenaga Pendidikan', '18');
INSERT INTO `buku_tamu` VALUES (394, 'DAYAN', 'DF', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Agama Islam', '19-11-2019, 12:04 am', '10', '0001', 'nTMsocS86AGe', '2019', '911', 'Tenaga Pendidikan', '19');
INSERT INTO `buku_tamu` VALUES (395, 'ELOK ASMARANI', '081351144682', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Bahasa Indonesia', '19-11-2019, 12:05 am', '10', '0002', 'CXTTYZAHJvek', '2019', '911', 'Tenaga Pendidikan', '19');
INSERT INTO `buku_tamu` VALUES (396, 'LINDA SARI', '085248805772', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Bahasa Indonesia', '19-11-2019, 12:06 am', '10', '0003', '46h6FuS7km3D', '2019', '911', 'Tenaga Pendidikan', '19');
INSERT INTO `buku_tamu` VALUES (397, 'PUTRI DIAHASTUTI', '082352192131', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Bidan', '19-11-2019, 12:07 am', '10', '0001', '48gC81t20p1v', '2019', '911', 'Tenaga Kesehatan', '19');
INSERT INTO `buku_tamu` VALUES (398, 'DWI INTAN PURNAMA SARI', '082350837646', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Pranata Laboratorium Kesehatan', '19-11-2019, 12:08 am', '10', '0002', '2js362Mv7yNq', '2019', '911', 'Tenaga Kesehatan', '19');
INSERT INTO `buku_tamu` VALUES (399, 'RANTY FATRIANA PUTERI', '082282822006', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Apoteker', '19-11-2019, 12:09 am', '10', '0003', '9X6ux2bXN6OJ', '2019', '911', 'Tenaga Kesehatan', '19');
INSERT INTO `buku_tamu` VALUES (400, 'RANTY FATRIANA PUTERI', '082282822006', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Apoteker', '19-11-2019, 12:09 am', '10', '0004', 'mMp1Q7YX0CCn', '2019', '911', 'Tenaga Kesehatan', '19');
INSERT INTO `buku_tamu` VALUES (401, 'MUHAMMAD RAMADHAN', '087795557999', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Apoteker', '19-11-2019, 12:10 am', '10', '0005', '4A4Y5BnXZLHW', '2019', '911', 'Tenaga Kesehatan', '19');
INSERT INTO `buku_tamu` VALUES (402, 'NOVI ANGGRAENY', '081350060942', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Pengelola Anggaran', '19-11-2019, 12:12 am', '10', '0001', 'xz4dOL8IFIrx', '2019', '911', 'Tenaga Teknis', '19');
INSERT INTO `buku_tamu` VALUES (403, 'WENDHA YUNIANDARI', '082350900700', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat Gigi', '19-11-2019, 12:12 am', '10', '0006', 'JE6mupspCNZB', '2019', '911', 'Tenaga Kesehatan', '19');
INSERT INTO `buku_tamu` VALUES (404, 'NAFISYAH', '081348353457', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Pranata Laboratorium Kesehatan', '19-11-2019, 12:14 am', '10', '0007', 'CrjL96MRMPtx', '2019', '911', 'Tenaga Kesehatan', '19');
INSERT INTO `buku_tamu` VALUES (405, 'NAFISYAH', '081348353457', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Pranata Laboratorium Kesehatan', '19-11-2019, 12:14 am', '10', '0008', 'sre8Eu5NfGfj', '2019', '911', 'Tenaga Kesehatan', '19');
INSERT INTO `buku_tamu` VALUES (406, 'DINA SEPTIANA', '082153276824', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Analis Diklat', '19-11-2019, 12:15 am', '10', '0002', '9ekqCvQ2WTsa', '2019', '911', 'Tenaga Teknis', '19');
INSERT INTO `buku_tamu` VALUES (407, 'MAHMUDAH HENY ALTA', '082357356489', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Agama Islam', '19-11-2019, 12:16 am', '10', '0004', 'K15ekHsdCAhS', '2019', '911', 'Tenaga Pendidikan', '19');
INSERT INTO `buku_tamu` VALUES (408, 'YUDIANOOR', '085822213338', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '19-11-2019, 12:17 am', '10', '0005', 'SEEdBXMK459t', '2019', '911', 'Tenaga Pendidikan', '19');
INSERT INTO `buku_tamu` VALUES (409, 'FAUZAN SAFITRI', '081255577897', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Teknik Pengairan', '19-11-2019, 12:18 am', '10', '0003', 'E94FPQho4QxC', '2019', '911', 'Tenaga Teknis', '19');
INSERT INTO `buku_tamu` VALUES (410, 'ARIZA RAKASIWI MAYA P', '081350486662', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Penyuluh Kesehatan Masyarakat', '19-11-2019, 12:19 am', '10', '0009', 'ra6FbUR1CGz6', '2019', '911', 'Tenaga Kesehatan', '19');
INSERT INTO `buku_tamu` VALUES (411, 'NOOR AJRINA SYAIBATUL A', '08125115702', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Pengelola Anggaran', '19-11-2019, 12:20 am', '10', '0004', 'UNG3p1B2zZMy', '2019', '911', 'Tenaga Teknis', '19');
INSERT INTO `buku_tamu` VALUES (412, 'ADISTY YUNIZA RIZQALIA', '087715575109', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Epidemiolog Kesehatan', '19-11-2019, 12:22 am', '10', '0010', '33314au1Ievx', '2019', '911', 'Tenaga Kesehatan', '19');
INSERT INTO `buku_tamu` VALUES (413, 'AL GIEN NOR', '085251027611', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Pranata Laboratorium Kesehatan', '19-11-2019, 12:23 am', '10', '0011', 'Vrc2S5Z30p36', '2019', '911', 'Tenaga Kesehatan', '19');
INSERT INTO `buku_tamu` VALUES (414, 'R. AWAN SAMUDERA', '082158384227', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Pranata Laboratorium Kesehatan', '19-11-2019, 12:23 am', '10', '0012', 'yh6tLeNxP4hK', '2019', '911', 'Tenaga Kesehatan', '19');
INSERT INTO `buku_tamu` VALUES (415, 'DIAN ARIFA FAUZIA', '087721080731', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Pranata Laboratorium Kesehatan', '19-11-2019, 12:24 am', '10', '0013', 'Xgd5xno88EB2', '2019', '911', 'Tenaga Kesehatan', '19');
INSERT INTO `buku_tamu` VALUES (416, 'FAJAR KHALIS ANANDA', '081254452957', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Dokter', '19-11-2019, 12:25 am', '10', '0014', '6A93LKDQhh7e', '2019', '911', 'Tenaga Kesehatan', '19');
INSERT INTO `buku_tamu` VALUES (417, 'ELINDA YUNIAR PUTRI', '085651048578', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Analis Keuangan Pemerintah Pusat dan Daerah', '19-11-2019, 12:26 am', '10', '0005', 'cqfB4G7Qevr7', '2019', '911', 'Tenaga Teknis', '19');
INSERT INTO `buku_tamu` VALUES (418, 'YUNITA MARSILIANTY', '081250853523', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Perawat', '19-11-2019, 12:27 am', '10', '0015', 'KSn9hkNz3GMt', '2019', '911', 'Tenaga Kesehatan', '19');
INSERT INTO `buku_tamu` VALUES (419, 'YUNISA HARSIASIMA P', '081251266640', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Perawat', '19-11-2019, 12:28 am', '10', '0016', 'K5u6cLSn0Gsn', '2019', '911', 'Tenaga Kesehatan', '19');
INSERT INTO `buku_tamu` VALUES (420, 'MU''ARRIFAH ADHIYAH', '085210122224', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '19-11-2019, 12:29 am', '10', '0006', 's9MzSGS3yf5x', '2019', '911', 'Tenaga Pendidikan', '19');
INSERT INTO `buku_tamu` VALUES (421, 'MISBAHUL JANNAH', '08125522280', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '19-11-2019, 12:30 am', '10', '0007', 'Bj35V2O4qKaW', '2019', '911', 'Tenaga Pendidikan', '19');
INSERT INTO `buku_tamu` VALUES (422, 'YUNI WULANDARI', '08125183071', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Analis Keuangan Pemerintah Pusat dan Daerah', '19-11-2019, 12:31 am', '10', '0006', 'Gt4JnIMou1Js', '9', '911', 'Tenaga Teknis', '19');
INSERT INTO `buku_tamu` VALUES (423, 'ADITYA PRATIWI', '082250656566', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Perancang Peraturan Perundang-undangan', '19-11-2019, 12:32 am', '10', '0007', '7c0tDsJ6yE1v', '2019', '911', 'Tenaga Teknis', '19');
INSERT INTO `buku_tamu` VALUES (424, 'EKA MAULIANI', '081255066558', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Analis Keuangan Pemerintah Pusat dan Daerah', '19-11-2019, 12:33 am', '10', '0008', 'QHF7is9EJ2G6', '2019', '911', 'Tenaga Teknis', '19');
INSERT INTO `buku_tamu` VALUES (425, 'NIKEN LIMAS WIKANTI', '082153431357', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Pranata Laboratorium Kesehatan', '19-11-2019, 12:34 am', '10', '0017', '1vd3V5Qc6uaQ', '2019', '911', 'Tenaga Kesehatan', '19');
INSERT INTO `buku_tamu` VALUES (426, 'SEPTINA RAHMA SAPUTRI', '081351135660', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '19-11-2019, 12:34 am', '10', '0008', 'E4jLyX2W0mQ1', '2019', '911', 'Tenaga Pendidikan', '19');
INSERT INTO `buku_tamu` VALUES (427, 'NANDA MUSLIM', '085349719993', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Perancang Peraturan Perundang-undangan', '19-11-2019, 12:35 am', '10', '0009', '24axpR5DbW3t', '2019', '911', 'Tenaga Teknis', '19');
INSERT INTO `buku_tamu` VALUES (428, 'DONNY JAYA PRAMADA', '081348895900', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Analis Kemasyarakatan', '19-11-2019, 12:36 am', '10', '0010', 'UopYoX8FojFk', '2019', '911', 'Tenaga Teknis', '19');
INSERT INTO `buku_tamu` VALUES (429, 'MUHAMMAD FACHRIANOOR', '081225749992', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Apoteker', '19-11-2019, 12:37 am', '10', '0018', '8u8n5UJM7LLz', '2019', '911', 'Tenaga Kesehatan', '19');
INSERT INTO `buku_tamu` VALUES (430, 'PUTERI APRILLIANTY', '081349484522', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Asisten Apoteker', '19-11-2019, 12:38 am', '10', '0019', 'CMKu9i63sE3N', '2019', '911', 'Tenaga Kesehatan', '19');
INSERT INTO `buku_tamu` VALUES (431, 'DESI PUTRI UTAMI', '085251080906', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Perancang Peraturan Perundang-undangan', '19-11-2019, 12:40 am', '10', '0011', 'y94LsjHy99zM', '2019', '911', 'Tenaga Teknis', '19');
INSERT INTO `buku_tamu` VALUES (432, 'CHAIRUNISA', '081332943475', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '19-11-2019, 12:41 am', '10', '0009', 'VyxFE4qu48U9', '2019', '911', 'Tenaga Pendidikan', '19');
INSERT INTO `buku_tamu` VALUES (433, 'WITA AJRINA AULIA', '082253416342', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '19-11-2019, 12:43 am', '10', '0010', 'MdtNhLac8ZTT', '2019', '911', 'Tenaga Pendidikan', '19');
INSERT INTO `buku_tamu` VALUES (434, 'SITI EKA PEBRIYANI', '085246305200', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '19-11-2019, 12:44 am', '10', '0011', 'MFen46543gOo', '2019', '911', 'Tenaga Pendidikan', '19');
INSERT INTO `buku_tamu` VALUES (435, 'RYAN ANUGRAH', '082159849078', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Analis Diklat', '19-11-2019, 12:46 am', '10', '0012', '6Etx2K5bt46J', '2019', '911', 'Tenaga Teknis', '19');
INSERT INTO `buku_tamu` VALUES (436, 'RISKY MUDHI PRANANTA', '081246901179', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '19-11-2019, 12:47 am', '10', '0012', 'eJpiZN8r7E4H', '2019', '911', 'Tenaga Pendidikan', '19');
INSERT INTO `buku_tamu` VALUES (437, 'NUR ANA', '089691939239', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Analis Kemasyarakatan', '19-11-2019, 12:48 am', '10', '0013', '4EKu5NmtCqmu', '2019', '911', 'Tenaga Teknis', '19');
INSERT INTO `buku_tamu` VALUES (438, 'MAHMUDAH', '081258824616', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Agama Islam', '19-11-2019, 12:49 am', '10', '0013', '5p7hMgiDh8ih', '2019', '911', 'Tenaga Pendidikan', '19');
INSERT INTO `buku_tamu` VALUES (439, 'M. RIZKY PERDANA', '082255523600', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Perancang Peraturan Perundang-undangan', '19-11-2019, 12:50 am', '10', '0014', '31B23B9a82Mg', '2019', '911', 'Tenaga Teknis', '19');
INSERT INTO `buku_tamu` VALUES (440, 'SHALEHAH', '081249564613', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '19-11-2019, 12:51 am', '10', '0020', '18qQQeq9HnHK', '2019', '911', 'Tenaga Kesehatan', '19');
INSERT INTO `buku_tamu` VALUES (441, 'DEWI HARTATI', '082297185873', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '19-11-2019, 12:52 am', '10', '0021', 'kc3O4v2MXm2d', '2019', '911', 'Tenaga Kesehatan', '19');
INSERT INTO `buku_tamu` VALUES (442, 'PUSPA RAHAYU', '085348481348', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat Gigi', '19-11-2019, 12:52 am', '10', '0022', '73r5vqZ9yarW', '2019', '911', 'Tenaga Kesehatan', '19');
INSERT INTO `buku_tamu` VALUES (443, 'ROHANA', '085654481303', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Bahasa Indonesia', '19-11-2019, 12:53 am', '10', '0014', '8v9pTXCQg489', '2019', '911', 'Tenaga Pendidikan', '19');
INSERT INTO `buku_tamu` VALUES (444, 'SUSANNA', '081251565047', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Bidan', '19-11-2019, 12:54 am', '10', '0023', '8tMnytgPmz22', '2019', '911', 'Tenaga Kesehatan', '19');
INSERT INTO `buku_tamu` VALUES (445, 'LISA MULIANATA', '085248779011', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Analis Keuangan Pemerintah Pusat dan Daerah', '19-11-2019, 12:55 am', '10', '0015', '5f5k9caWj1ih', '2019', '911', 'Tenaga Teknis', '19');
INSERT INTO `buku_tamu` VALUES (446, 'MANIATUL QIPTIAH', '082250450575', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '19-11-2019, 12:56 am', '10', '0015', 'e6c0ooAInIV6', '2019', '911', 'Tenaga Pendidikan', '19');
INSERT INTO `buku_tamu` VALUES (447, 'MUHAMMAD RIDHA', '081256589130', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '19-11-2019, 12:57 am', '10', '0016', 'P1hd9arWKzkb', '2019', '911', 'Tenaga Pendidikan', '19');
INSERT INTO `buku_tamu` VALUES (448, 'HELDA FAHLINA', '085849535802', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Bidan', '19-11-2019, 12:58 am', '10', '0024', 'So87ZBpz9mz2', '2019', '911', 'Tenaga Kesehatan', '19');
INSERT INTO `buku_tamu` VALUES (449, 'MUKHAMMAD SURYA KUSUMA W', '081253466428', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Penjasorkes', '19-11-2019, 12:59 am', '10', '0017', '2qAPdX7xzKIv', '2019', '911', 'Tenaga Pendidikan', '19');
INSERT INTO `buku_tamu` VALUES (450, 'ANJARANI NUR MUTIA', '082251269320', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Epidemiolog Kesehatan', '19-11-2019, 1:00 am', '10', '0025', 'rE3E7DIHUjQp', '2019', '911', 'Tenaga Kesehatan', '19');
INSERT INTO `buku_tamu` VALUES (451, 'AULIA RAHMAN', '081255118008', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Pranata Komputer', '19-11-2019, 1:01 am', '10', '0016', '6EFCjrq387XP', '2019', '911', 'Tenaga Teknis', '19');
INSERT INTO `buku_tamu` VALUES (452, 'AKHMAD RIDWAN', '082157010108', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana terampil - Sanitarian', '19-11-2019, 1:02 am', '10', '0026', 'T2Q77tcFs8SQ', '2019', '911', 'Tenaga Kesehatan', '19');
INSERT INTO `buku_tamu` VALUES (453, 'NOORDIN PRIYAMBODO', '081250120911', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Analis Diklat', '19-11-2019, 1:03 am', '10', '0017', '5o20G0dpfL5p', '2019', '911', 'Tenaga Teknis', '19');
INSERT INTO `buku_tamu` VALUES (454, 'INDAH SUCIANA', '082136491205', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '19-11-2019, 1:03 am', '10', '0018', 'Ht4A0UqHTJ11', '2019', '911', 'Tenaga Pendidikan', '19');
INSERT INTO `buku_tamu` VALUES (455, 'CORRINA', '081345320929', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Bidan', '19-11-2019, 1:04 am', '10', '0027', 'UiTuy57grYN1', '2019', '911', 'Tenaga Kesehatan', '19');
INSERT INTO `buku_tamu` VALUES (456, 'TRI NOVI BUDIYANTI', '081251164674', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Bidan', '19-11-2019, 1:05 am', '10', '0028', 'Qyudgz9k0XUu', '2019', '911', 'Tenaga Kesehatan', '19');
INSERT INTO `buku_tamu` VALUES (457, 'HARINDA WAHYU KUSUMA N', '085225680026', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Dokter Gigi', '19-11-2019, 1:06 am', '10', '0029', 'BPmAP2ZRZ6Xx', '2019', '911', 'Tenaga Kesehatan', '19');
INSERT INTO `buku_tamu` VALUES (458, 'NOVIA HELLIARY ZITNI', '081255200266', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '19-11-2019, 1:08 am', '10', '0030', 'RjpWe5BSvDsF', '2019', '911', 'Tenaga Kesehatan', '19');
INSERT INTO `buku_tamu` VALUES (459, 'RETNO DWI HANDAYANI', '085751608689', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '19-11-2019, 1:09 am', '10', '0031', 'z57r8AX7o6YX', '2019', '911', 'Tenaga Kesehatan', '19');
INSERT INTO `buku_tamu` VALUES (460, 'TRIANITA UTAMI', '087753512277', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Analis Keuangan Pemerintah Pusat dan Daerah', '19-11-2019, 1:10 am', '10', '0018', 'm4pGhZWY11uX', '2019', '911', 'Tenaga Teknis', '19');
INSERT INTO `buku_tamu` VALUES (461, 'RIZKI MAULANA', '089521713162', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Analis Keuangan Pemerintah Pusat dan Daerah', '19-11-2019, 1:11 am', '10', '0019', '01t8214YWv6T', '2019', '911', 'Tenaga Teknis', '19');
INSERT INTO `buku_tamu` VALUES (462, 'DAHLIANI', '085249168987', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Agama Islam', '19-11-2019, 1:12 am', '10', '0019', 'Sji4MfK675hO', '2019', '911', 'Tenaga Pendidikan', '19');
INSERT INTO `buku_tamu` VALUES (463, 'FARIDA HAINUR', '082351401989', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '19-11-2019, 1:18 am', '10', '0020', '0ncxa1M57bOi', '2019', '911', 'Tenaga Pendidikan', '19');
INSERT INTO `buku_tamu` VALUES (464, 'RUDIANSYAH', '081521797792', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Bahasa Indonesia', '19-11-2019, 1:19 am', '10', '0021', 'j2zQhAarH9sd', '2019', '911', 'Tenaga Pendidikan', '19');
INSERT INTO `buku_tamu` VALUES (465, 'PAJRIANSYAH', '081350519141', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Pranata Komputer', '19-11-2019, 1:20 am', '10', '0020', 'f4MiR603KX97', '2019', '911', 'Tenaga Teknis', '19');
INSERT INTO `buku_tamu` VALUES (466, 'RUSMIATI', '085251105608', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Apoteker', '19-11-2019, 1:20 am', '10', '0032', 'Z16BAj1UzFc7', '2019', '911', 'Tenaga Kesehatan', '19');
INSERT INTO `buku_tamu` VALUES (467, 'ANITA SYAFARINA', '085705323213', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Bidan', '19-11-2019, 1:21 am', '10', '0033', '1XX3ChyFW41h', '2019', '911', 'Tenaga Kesehatan', '19');
INSERT INTO `buku_tamu` VALUES (468, 'FITRI LUTFI WARDANA', '089636310109', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Pengelola Anggaran', '19-11-2019, 1:22 am', '10', '0021', 'svH4t4FSZ3Ns', '2019', '911', 'Tenaga Teknis', '19');
INSERT INTO `buku_tamu` VALUES (469, 'HAITAMI', '087816622040', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Bahasa Indonesia', '19-11-2019, 1:23 am', '10', '0022', 'L96MRMPtxzMn', '2019', '911', 'Tenaga Pendidikan', '19');
INSERT INTO `buku_tamu` VALUES (470, 'PARAMITA CYNTHIA', '085250974121', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Perancang Peraturan Perundang-undangan', '19-11-2019, 1:24 am', '10', '0022', '1b5mS2gOt3TE', '2019', '911', 'Tenaga Teknis', '19');
INSERT INTO `buku_tamu` VALUES (471, 'ZULFIAKBAR RAFSANJANI', '082254104330', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '19-11-2019, 1:25 am', '10', '0034', 'KM2XqaGJjTgQ', '2019', '911', 'Tenaga Kesehatan', '19');
INSERT INTO `buku_tamu` VALUES (472, 'NIA BUDIARTI Y', '085251781516', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '19-11-2019, 1:26 am', '10', '0023', 'INe5rM82VpzI', '2019', '911', 'Tenaga Pendidikan', '19');
INSERT INTO `buku_tamu` VALUES (473, 'IDA YANTI', '085248149773', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Epidemiolog Kesehatan', '19-11-2019, 1:27 am', '10', '0035', 'RzUHEij81hnQ', '2019', '911', 'Tenaga Kesehatan', '19');
INSERT INTO `buku_tamu` VALUES (474, 'RISKA AYU ULANSARI', '0812478182656', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '19-11-2019, 1:28 am', '10', '0024', '1sV9a1Ki5A88', '2019', '911', 'Tenaga Pendidikan', '19');
INSERT INTO `buku_tamu` VALUES (475, 'RABI''ATUL ADAWIYAH', '089691277462', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '19-11-2019, 1:29 am', '10', '0025', 'mHmrRvMAJmWe', '2019', '911', 'Tenaga Pendidikan', '19');
INSERT INTO `buku_tamu` VALUES (476, 'SUMIYATI', '082291387676', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Pengelola Anggaran', '19-11-2019, 1:30 am', '10', '0023', '5ZXy3KXEY7OV', '2019', '911', 'Tenaga Teknis', '19');
INSERT INTO `buku_tamu` VALUES (477, 'RAHMAT HASANI N', '081392626126', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '19-11-2019, 1:31 am', '10', '0026', 'PNaokEKb7z6E', '2019', '911', 'Tenaga Pendidikan', '19');
INSERT INTO `buku_tamu` VALUES (478, 'MUHAMMAD MUTTAQIN', '081952742122', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Pranata Laboratorium Kesehatan', '19-11-2019, 1:31 am', '10', '0036', 'G4F7ZALdkjzq', '2019', '911', 'Tenaga Kesehatan', '19');
INSERT INTO `buku_tamu` VALUES (479, 'RICA NOVIANITA SUZANTI', '08971158057', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '19-11-2019, 1:33 am', '10', '0037', 'dOLQRi1fA2Vp', '2019', '911', 'Tenaga Kesehatan', '19');
INSERT INTO `buku_tamu` VALUES (480, 'NUR INDRIYANI', '085252558199', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Apoteker', '19-11-2019, 1:34 am', '10', '0038', '8bL4RvMSSLFV', '2019', '911', 'Tenaga Kesehatan', '19');
INSERT INTO `buku_tamu` VALUES (481, 'HAZRIYAL', '085249903708', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Nutrisionis', '19-11-2019, 1:35 am', '10', '0039', 'SSUV3Ar6R4y0', '2019', '911', 'Tenaga Kesehatan', '19');
INSERT INTO `buku_tamu` VALUES (482, 'NAJIB GIOVANI ANGGASTA', '081250472188', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Pengelola Pengadaan Barang/Jasa', '19-11-2019, 1:36 am', '10', '0024', '9o22r9VC4pPb', '2019', '911', 'Tenaga Teknis', '19');
INSERT INTO `buku_tamu` VALUES (483, 'LU''LU'' NIKHLATUR RIF''AH', '085722757949', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Dokter Gigi', '19-11-2019, 1:37 am', '10', '0040', 'YGnvr3i8NEUm', '2019', '911', 'Tenaga Kesehatan', '19');
INSERT INTO `buku_tamu` VALUES (484, 'NURHAILI', '085322264505', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Asisten Apoteker', '19-11-2019, 1:38 am', '10', '0041', '9s6tGRT5ZTCO', '2019', '911', 'Tenaga Kesehatan', '19');
INSERT INTO `buku_tamu` VALUES (485, 'DYNA KARTIKA SARI', '081351512929', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Analis Diklat', '19-11-2019, 1:39 am', '10', '0025', 'Gd6fGW47eQXP', '2019', '911', 'Tenaga Teknis', '19');
INSERT INTO `buku_tamu` VALUES (486, 'PUTRI NORMALIA', '0895421473366', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Analis Keuangan Pemerintah Pusat dan Daerah', '19-11-2019, 1:42 am', '10', '0026', 'YN84USHtkCc4', '2019', '911', 'Tenaga Teknis', '19');
INSERT INTO `buku_tamu` VALUES (487, 'ROOSYIDA', '082250566113', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Analis Kemasyarakatan', '19-11-2019, 1:43 am', '10', '0027', 'V9YqY2vUc4Nm', '2019', '911', 'Tenaga Teknis', '19');
INSERT INTO `buku_tamu` VALUES (488, 'RAVIDAH', '081348544653', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Bidan', '19-11-2019, 1:45 am', '10', '0042', 'qFS3sbQ9hiDo', '2019', '911', 'Tenaga Kesehatan', '19');
INSERT INTO `buku_tamu` VALUES (489, 'ALAINA NORHANIFAH', '081348281379', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Bidan', '19-11-2019, 1:47 am', '10', '0043', 'x2Y1xksX6Hd4', '2019', '911', 'Tenaga Kesehatan', '19');
INSERT INTO `buku_tamu` VALUES (490, 'MUTRIA RISMA', '085889475049', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Pranata Laboratorium Kesehatan', '19-11-2019, 1:48 am', '10', '0044', 'vBf46b92DH2D', '2019', '911', 'Tenaga Kesehatan', '19');
INSERT INTO `buku_tamu` VALUES (491, 'NOOR LAILLY', '087844812349', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Pranata Laboratorium Kesehatan', '19-11-2019, 1:50 am', '10', '0045', 'hVcpu4z03GOK', '2019', '911', 'Tenaga Kesehatan', '19');
INSERT INTO `buku_tamu` VALUES (492, 'ANI SUYATI', '085251344348', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Bidan', '19-11-2019, 1:52 am', '10', '0046', '3yGInjc45Nob', '2019', '911', 'Tenaga Kesehatan', '19');
INSERT INTO `buku_tamu` VALUES (493, 'MEILINDA ASLIN NOOR', '089613673004', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '19-11-2019, 1:53 am', '10', '0027', 'O1eGNY37LgiM', '2019', '911', 'Tenaga Pendidikan', '19');
INSERT INTO `buku_tamu` VALUES (494, 'SHAUFA SYAFITRI', '087821121151', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '19-11-2019, 1:55 am', '10', '0028', 'gDc53pY2H90f', '2019', '911', 'Tenaga Pendidikan', '19');
INSERT INTO `buku_tamu` VALUES (495, 'MIFTAHUL ZANNAH', '08975383303', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '19-11-2019, 1:55 am', '10', '0029', 'p1Z4KYbILdU4', '2019', '911', 'Tenaga Pendidikan', '19');
INSERT INTO `buku_tamu` VALUES (496, 'HANIDA ULFAH', '082251551726', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '19-11-2019, 1:56 am', '10', '0030', '7K9NELzBf4Xk', '2019', '911', 'Tenaga Pendidikan', '19');
INSERT INTO `buku_tamu` VALUES (497, 'RAHMAWATI', '085298164068', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '19-11-2019, 1:57 am', '10', '0031', '5OMLzSuy9xUW', '2019', '911', 'Tenaga Pendidikan', '19');
INSERT INTO `buku_tamu` VALUES (498, 'SUZI WILASARI', '085654751089', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '19-11-2019, 1:58 am', '10', '0032', 'JkQQ1QxeShNB', '2019', '911', 'Tenaga Pendidikan', '19');
INSERT INTO `buku_tamu` VALUES (499, 'RAHMANIANUR SARI', '081254472882', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Analis Keuangan Pemerintah Pusat dan Daerah', '19-11-2019, 1:58 am', '10', '0028', 'HK7Oye8D6pxz', '2019', '911', 'Tenaga Teknis', '19');
INSERT INTO `buku_tamu` VALUES (500, 'NURUL WAHIDAH', '081258574352', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Nutrisionis', '19-11-2019, 1:59 am', '10', '0047', 'iQuyqO9UtYoO', '2019', '911', 'Tenaga Kesehatan', '19');
INSERT INTO `buku_tamu` VALUES (501, 'ANDHIKA YUSUF PRABOWO', '089501555122', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Teknik Jalan dan Jembatan', '19-11-2019, 2:00 am', '10', '0029', '1xYjkECDzB2Y', '2019', '911', 'Tenaga Teknis', '19');
INSERT INTO `buku_tamu` VALUES (502, 'TAHITA ARIA YUNIARTI', '081251073326', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Apoteker', '19-11-2019, 2:01 am', '10', '0048', 'I7XnDNKpQ38C', '2019', '911', 'Tenaga Kesehatan', '19');
INSERT INTO `buku_tamu` VALUES (503, 'DEZAR', '081256643453', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Apoteker', '19-11-2019, 2:04 am', '10', '0049', 'UFMJV66KqUJe', '2019', '911', 'Tenaga Kesehatan', '19');
INSERT INTO `buku_tamu` VALUES (504, 'QISTI RAHMAWATI HUSNA', '085252672552', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Apoteker', '19-11-2019, 2:05 am', '10', '0050', 'b5081PV9J5M2', '2019', '911', 'Tenaga Kesehatan', '19');
INSERT INTO `buku_tamu` VALUES (505, 'RATNA YULIYANTI', '083151272535', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '19-11-2019, 2:06 am', '10', '0033', 'NM5iWIPWOAZu', '2019', '911', 'Tenaga Pendidikan', '19');
INSERT INTO `buku_tamu` VALUES (506, 'ASTUTI WAHIDAH', '085252552188', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Pengelola Anggaran', '19-11-2019, 2:07 am', '10', '0030', 'c3odRSdcpZ5B', '2019', '911', 'Tenaga Teknis', '19');
INSERT INTO `buku_tamu` VALUES (507, 'ZEIHAN ALISIA F', '085754841875', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Pranata Laboratorium Kesehatan', '19-11-2019, 2:08 am', '10', '0051', '86Mav8Tkd7IN', '2019', '911', 'Tenaga Kesehatan', '19');
INSERT INTO `buku_tamu` VALUES (508, 'LEVINA TYA ATANTY', '0895632413852', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Pranata Laboratorium Kesehatan', '19-11-2019, 2:09 am', '10', '0052', 'MG30v7pnz7Bm', '2019', '911', 'Tenaga Kesehatan', '19');
INSERT INTO `buku_tamu` VALUES (509, 'EKY LINDA JUWITA', '085246366413', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Pranata Laboratorium Kesehatan', '19-11-2019, 2:09 am', '10', '0053', '9OszCmI3q1h0', '2019', '911', 'Tenaga Kesehatan', '19');
INSERT INTO `buku_tamu` VALUES (510, 'MARIA PRAMITA', '082155720504', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '19-11-2019, 2:10 am', '10', '0034', 'is75omb4Y9yY', '2019', '911', 'Tenaga Pendidikan', '19');
INSERT INTO `buku_tamu` VALUES (511, 'NOVI RIDHAYANTI', '082153539232', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Dokter', '19-11-2019, 2:11 am', '10', '0054', 'LAJjGt81RcXW', '2019', '911', 'Tenaga Kesehatan', '19');
INSERT INTO `buku_tamu` VALUES (512, 'NOVIA INTAN HAPSARI', '082253557729', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '19-11-2019, 2:12 am', '10', '0055', '6qte1XvOTFV3', '2019', '911', 'Tenaga Kesehatan', '19');
INSERT INTO `buku_tamu` VALUES (513, 'AHMAD MAULANA', '08', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Analis Diklat', '19-11-2019, 2:15 am', '10', '0031', 'a53Mj7te8Ffh', '2019', '911', 'Tenaga Teknis', '19');
INSERT INTO `buku_tamu` VALUES (514, 'IRWAN HIDAYAT', '082156396483', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Pranata Laboratorium Kesehatan', '19-11-2019, 2:15 am', '10', '0056', 'GY95jaKddhCz', '2019', '911', 'Tenaga Kesehatan', '19');
INSERT INTO `buku_tamu` VALUES (515, 'DESSY WIDIYANI P', '082153635323', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Bidan', '19-11-2019, 2:17 am', '10', '0057', 'AuYhqs6ahP1V', '2019', '911', 'Tenaga Kesehatan', '19');
INSERT INTO `buku_tamu` VALUES (516, 'YUSRINA AULIAWATI', '085250804270', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Pengelola Anggaran', '19-11-2019, 2:18 am', '10', '0032', '3n84h6Y3Ip8P', '2019', '911', 'Tenaga Teknis', '19');
INSERT INTO `buku_tamu` VALUES (517, 'PUTRI MUSTIKA S', '081346645406', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Pranata Laboratorium Kesehatan', '19-11-2019, 2:19 am', '10', '0058', 'veBDtSKnRHF2', '2019', '911', 'Tenaga Kesehatan', '19');
INSERT INTO `buku_tamu` VALUES (518, 'FIKA AYU ARISTIANI', '085251124999', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Bidan', '19-11-2019, 2:20 am', '10', '0059', 'ayzD9MFK9Xtq', '2019', '911', 'Tenaga Kesehatan', '19');
INSERT INTO `buku_tamu` VALUES (519, 'ANGGRAINI PUTRI P', '087814270745', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Bidan', '19-11-2019, 2:21 am', '10', '0060', 'W9jqT63FRCQu', '2019', '911', 'Tenaga Kesehatan', '19');
INSERT INTO `buku_tamu` VALUES (520, 'ANIDA', '081349708155', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Epidemiolog Kesehatan', '19-11-2019, 2:22 am', '10', '0061', 'SgB4b45f5BhE', '2019', '911', 'Tenaga Kesehatan', '19');
INSERT INTO `buku_tamu` VALUES (521, 'MUHAMMAD FAUZI NOOR', '082150714386', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Perancang Peraturan Perundang-undangan', '19-11-2019, 2:26 am', '10', '0033', 'rs4r6mhKdSYG', '2019', '911', 'Tenaga Teknis', '19');
INSERT INTO `buku_tamu` VALUES (522, 'GALUH TRIPUSPITANINGRUM', '085753075375', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '19-11-2019, 2:27 am', '10', '0035', 'Ihzq8969ihPT', '2019', '911', 'Tenaga Pendidikan', '19');
INSERT INTO `buku_tamu` VALUES (523, 'AKHMAD RIDHO', '085754240317', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '19-11-2019, 2:31 am', '10', '0062', 'bF25MpxO1Tbs', '2019', '911', 'Tenaga Kesehatan', '19');
INSERT INTO `buku_tamu` VALUES (524, 'GAYUH PURWANDONO', '081517369652', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '19-11-2019, 2:41 am', '10', '0036', 'N09Z0Rm9KPHr', '2019', '911', 'Tenaga Pendidikan', '19');
INSERT INTO `buku_tamu` VALUES (525, 'ASNI FATHUL JANAH', '081250042374', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana terampil - Sanitarian', '19-11-2019, 2:43 am', '10', '0063', 'Zama7dKFsre8', '2019', '911', 'Tenaga Kesehatan', '19');
INSERT INTO `buku_tamu` VALUES (526, 'SITTA ANNISA FACHRIANA', '082252781277', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Teknik penyehatan lingkungan', '19-11-2019, 2:44 am', '10', '0034', 'O232VZnZH7O3', '2019', '911', 'Tenaga Teknis', '19');
INSERT INTO `buku_tamu` VALUES (527, 'SYAIPUL ANWAR', '081253525454', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Pranata Komputer', '19-11-2019, 2:47 am', '10', '0035', 'aibet98K2g1e', '2019', '911', 'Tenaga Teknis', '19');
INSERT INTO `buku_tamu` VALUES (528, 'RITLI RIZQIANA MAULA', '089692701995', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Analis Kemasyarakatan', '19-11-2019, 2:48 am', '10', '0036', '29e3hS5i35VT', '2019', '911', 'Tenaga Teknis', '19');
INSERT INTO `buku_tamu` VALUES (529, 'SITI WAHYU ASMIYANTI', '085252393938', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '19-11-2019, 2:50 am', '10', '0064', 'nHCI0carH719', '2019', '911', 'Tenaga Kesehatan', '19');
INSERT INTO `buku_tamu` VALUES (530, 'APETRIANI', '085251801216', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana terampil - Sanitarian', '19-11-2019, 2:51 am', '10', '0065', 'Hc29pVaqyLXq', '2019', '911', 'Tenaga Kesehatan', '19');
INSERT INTO `buku_tamu` VALUES (531, 'NOORMALIANI', '085702288481', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana terampil - Sanitarian', '19-11-2019, 2:52 am', '10', '0066', 'ukKFen4XUg8u', '2019', '911', 'Tenaga Kesehatan', '19');
INSERT INTO `buku_tamu` VALUES (532, 'DENNY SILVIO AKHER', '08971486401', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Epidemiolog Kesehatan', '19-11-2019, 2:53 am', '10', '0067', 'GVsyh6hcxqO5', '2019', '911', 'Tenaga Kesehatan', '19');
INSERT INTO `buku_tamu` VALUES (533, 'YULIANA ERISA', '0811502854', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '19-11-2019, 2:54 am', '10', '0068', 'OH3pO9SV438Y', '2019', '911', 'Tenaga Kesehatan', '19');
INSERT INTO `buku_tamu` VALUES (534, 'AMINUDDIN', '085248484530', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Analis Keuangan Pemerintah Pusat dan Daerah', '19-11-2019, 3:04 am', '10', '0037', 'UtoH3JzrbQ5M', '2019', '911', 'Tenaga Teknis', '19');
INSERT INTO `buku_tamu` VALUES (535, 'ELIS EFRIL REFDIANTI', '081522786785', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '19-11-2019, 3:14 am', '10', '0037', '59C0s8J9fWa7', '2019', '911', 'Tenaga Pendidikan', '19');
INSERT INTO `buku_tamu` VALUES (536, 'ARDIANSYAH', '082157786879', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '19-11-2019, 3:20 am', '10', '0038', 'Yq2fKzL7B3HJ', '2019', '911', 'Tenaga Pendidikan', '19');
INSERT INTO `buku_tamu` VALUES (537, 'AYU WULANDARI', '082255254193', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Bahasa Indonesia', '19-11-2019, 3:21 am', '10', '0039', 'j7cLJPcR91N0', '2019', '911', 'Tenaga Pendidikan', '19');
INSERT INTO `buku_tamu` VALUES (538, 'RAUDATUL AULIA', '082253060202', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Pranata Laboratorium Kesehatan', '19-11-2019, 3:22 am', '10', '0069', 'UPYP9Se2B9ja', '2019', '911', 'Tenaga Kesehatan', '19');
INSERT INTO `buku_tamu` VALUES (539, 'IRWAN YAHYA', '082157091945', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '19-11-2019, 3:23 am', '10', '0070', 'W7j4GbSO62qU', '2019', '911', 'Tenaga Kesehatan', '19');
INSERT INTO `buku_tamu` VALUES (540, 'FITRIA ARISSA YULANDHA', '0895700606042', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Analis Perencanaan Wilayah Perumahan', '19-11-2019, 3:24 am', '10', '0038', '76SzLi9TSdcZ', '2019', '911', 'Tenaga Teknis', '19');
INSERT INTO `buku_tamu` VALUES (541, 'MUTIAH', '0895375792187', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Bahasa Indonesia', '19-11-2019, 3:25 am', '10', '0040', 'H4Wi7L7ks75W', '2019', '911', 'Tenaga Pendidikan', '19');
INSERT INTO `buku_tamu` VALUES (542, 'ADE PURNAMASARI', '085248055515', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '19-11-2019, 3:26 am', '10', '0071', 'H7O3846Yv1z3', '2019', '911', 'Tenaga Kesehatan', '19');
INSERT INTO `buku_tamu` VALUES (543, 'NURUL HIKMAH', '087850315044', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Pengelola Anggaran', '19-11-2019, 3:29 am', '10', '0039', '7EvTx03G6M5X', '2019', '911', 'Tenaga Teknis', '19');
INSERT INTO `buku_tamu` VALUES (544, 'WAHIDAH', '081998035155', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '19-11-2019, 3:33 am', '10', '0072', 'RHoEMW2E0ojt', '2019', '911', 'Tenaga Kesehatan', '19');
INSERT INTO `buku_tamu` VALUES (545, 'EKA PUJI RISTIANI', '081254919309', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '19-11-2019, 3:37 am', '10', '0041', '021D1v0rD9LG', '2019', '911', 'Tenaga Pendidikan', '19');
INSERT INTO `buku_tamu` VALUES (546, 'HAIRIAH', '082250098882', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Bidan', '19-11-2019, 3:48 am', '10', '0073', 'LM5XfpcAkiph', '2019', '911', 'Tenaga Kesehatan', '19');
INSERT INTO `buku_tamu` VALUES (547, 'RAHMI ZAKIAH', '081336588549', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Pranata Komputer', '19-11-2019, 3:49 am', '10', '0040', 'fX3Iuh8t8ya4', '2019', '911', 'Tenaga Teknis', '19');
INSERT INTO `buku_tamu` VALUES (548, 'VERONICA MYUVITA', '081258403502', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Perawat', '19-11-2019, 3:54 am', '10', '0074', 'AMFTdJ49pC5Q', '2019', '911', 'Tenaga Kesehatan', '19');
INSERT INTO `buku_tamu` VALUES (549, 'RAUDAH PUTRI EKASARI', '089683411562', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Bahasa Indonesia', '19-11-2019, 4:19 am', '10', '0042', 'FJvT49oPG0S3', '2019', '911', 'Tenaga Pendidikan', '19');
INSERT INTO `buku_tamu` VALUES (550, 'DWI PUTRI SELTARI', '082154020854', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '19-11-2019, 4:20 am', '10', '0043', '8FY77YVdoiBi', '2019', '911', 'Tenaga Pendidikan', '19');
INSERT INTO `buku_tamu` VALUES (551, 'EKA SEPTI PURNAMAWATI', '085332136020', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '19-11-2019, 4:21 am', '10', '0044', 'kynY6ur92shp', '2019', '911', 'Tenaga Pendidikan', '19');
INSERT INTO `buku_tamu` VALUES (552, 'SYARIFFINA DARWIS', '089691552828', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '19-11-2019, 4:24 am', '10', '0045', '45EbNmYzW17G', '2019', '911', 'Tenaga Pendidikan', '19');
INSERT INTO `buku_tamu` VALUES (553, 'RHISMIDEA ISTINARI', '081367970289', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Dokter', '19-11-2019, 4:41 am', '10', '0075', '2yGRRX5ZRQTq', '2019', '911', 'Tenaga Kesehatan', '19');
INSERT INTO `buku_tamu` VALUES (554, 'SULISTYANINGTYAS', '082252672566', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Asisten Apoteker', '19-11-2019, 4:42 am', '10', '0076', 'dL7Ng3Y1r5F9', '2019', '911', 'Tenaga Kesehatan', '19');
INSERT INTO `buku_tamu` VALUES (555, 'HESTI OKTAVIANI PUTRI', '081250471144', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Pengelola Anggaran', '19-11-2019, 4:43 am', '10', '0041', 'k7FLD317AUY6', '2019', '911', 'Tenaga Teknis', '19');
INSERT INTO `buku_tamu` VALUES (556, 'NITA MEILIANI', '081251239006', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Analis Keuangan Pemerintah Pusat dan Daerah', '19-11-2019, 4:44 am', '10', '0042', 'N8s66ffZj4pm', '2019', '911', 'Tenaga Teknis', '19');
INSERT INTO `buku_tamu` VALUES (557, 'MELDA SHEFTI NUR''AIN', '0895348716739', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Bidan', '19-11-2019, 4:54 am', '10', '0077', 'jPKK45RvD1ep', '2019', '911', 'Tenaga Kesehatan', '19');
INSERT INTO `buku_tamu` VALUES (558, 'NUR FARISA', '081952888734', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Asisten Apoteker', '19-11-2019, 4:55 am', '10', '0078', 'eX7rK72LItJU', '2019', '911', 'Tenaga Kesehatan', '19');
INSERT INTO `buku_tamu` VALUES (559, 'DEDY', '085346338167', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat Gigi', '19-11-2019, 5:04 am', '10', '0079', 'uDsAbAkZN8ds', '2019', '911', 'Tenaga Kesehatan', '19');
INSERT INTO `buku_tamu` VALUES (560, 'ANITA WIDYA KUSUMA', '083159300756', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat Gigi', '19-11-2019, 5:05 am', '10', '0080', 'A0H12631p9MA', '2019', '911', 'Tenaga Kesehatan', '19');
INSERT INTO `buku_tamu` VALUES (561, 'ENDAH DWI ASTUTI', '082154002666', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Analis Keuangan Pemerintah Pusat dan Daerah', '19-11-2019, 5:14 am', '10', '0043', 'jrvchQi52s4O', '2019', '911', 'Tenaga Teknis', '19');
INSERT INTO `buku_tamu` VALUES (562, 'NOOR ALFI LAILATIL M', '081545752217', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Agama Islam', '19-11-2019, 5:17 am', '10', '0046', 'JTqEMWWcXEqn', '2019', '911', 'Tenaga Pendidikan', '19');
INSERT INTO `buku_tamu` VALUES (563, 'FARID MAULANA', '085822290607', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Analis Diklat', '19-11-2019, 5:22 am', '10', '0044', 'MMEE6P4tMxIB', '2019', '911', 'Tenaga Teknis', '19');
INSERT INTO `buku_tamu` VALUES (564, 'DINA LYDIANI', '081257367145', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '19-11-2019, 5:29 am', '10', '0081', 'N6rA17EVprRh', '2019', '911', 'Tenaga Kesehatan', '19');
INSERT INTO `buku_tamu` VALUES (565, 'IMDADILLAH RIFANI', '085386699211', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Pranata Komputer', '19-11-2019, 5:34 am', '10', '0045', 'OAQEt6dbCg8Z', '2019', '911', 'Tenaga Teknis', '19');
INSERT INTO `buku_tamu` VALUES (566, 'ZUL FINA FITRI', '082151401813', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Nutrisionis', '19-11-2019, 5:35 am', '10', '0082', 'bd1ivJcyXrhG', '2019', '911', 'Tenaga Kesehatan', '19');
INSERT INTO `buku_tamu` VALUES (567, 'RIZKA ASTRIYANI', '085348360018', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Analis Keuangan Pemerintah Pusat dan Daerah', '19-11-2019, 5:41 am', '10', '0046', 'uh4M2zmZqEGu', '2019', '911', 'Tenaga Teknis', '19');
INSERT INTO `buku_tamu` VALUES (568, 'KASPUL ANWAR', '082154235113', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Agama Islam', '19-11-2019, 5:48 am', '10', '0047', 'G3G6bq6nFSpJ', '2019', '911', 'Tenaga Pendidikan', '19');
INSERT INTO `buku_tamu` VALUES (569, 'MUHAMMAD HALID', '085787571727', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Pengelola Anggaran', '19-11-2019, 5:50 am', '10', '0047', '5MW2W9QEoTpA', '2019', '911', 'Tenaga Teknis', '19');
INSERT INTO `buku_tamu` VALUES (570, 'PUTRI ARVIYANTI', '089672433540', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '19-11-2019, 5:53 am', '10', '0048', 't1893eHmOaBp', '2019', '911', 'Tenaga Pendidikan', '19');
INSERT INTO `buku_tamu` VALUES (571, 'HAPOSAN', '085246308004', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Perancang Peraturan Perundang-undangan', '19-11-2019, 5:57 am', '10', '0048', 'kXGd6fGW47eQ', '2019', '911', 'Tenaga Teknis', '19');
INSERT INTO `buku_tamu` VALUES (572, 'MITA MARIATI', '085349262206', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '19-11-2019, 5:58 am', '10', '0049', 'j0g0KIqA0L63', '2019', '911', 'Tenaga Pendidikan', '19');
INSERT INTO `buku_tamu` VALUES (573, 'ANJAR MURDANI', '089602391868', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '19-11-2019, 11:39 pm', '10', '0050', '6aMeER1x87P4', '2019', '911', 'Tenaga Pendidikan', '19');
INSERT INTO `buku_tamu` VALUES (574, 'DEWI RIYANTI', '083143543587', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '20-11-2019, 11:54 pm', '10', '0001', 'QI9t4BjZEPLZ', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (575, 'ANJAR MURDANI', '089602391868', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '20-11-2019, 11:52 pm', '10', '0001', 'NJ1gvBdqmpNt', '2019', '911', 'Tenaga Pendidikan', '20');
INSERT INTO `buku_tamu` VALUES (576, 'WULAN PUJIWATI', '082255256199', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '20-11-2019, 11:55 pm', '10', '0002', 'oj2PVb17Ntd3', '2019', '911', 'Tenaga Pendidikan', '20');
INSERT INTO `buku_tamu` VALUES (577, 'NURMILAWATY', '085248412523', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '20-11-2019, 11:56 pm', '10', '0002', 'CZLhdjxZ0Iz8', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (578, 'SRI YULIANTI', '087716512412', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '20-11-2019, 11:57 pm', '10', '0003', '5iHPx76dF8D5', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (579, 'NURUL JANNAH', '088705179146', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Asisten Apoteker', '20-11-2019, 11:58 pm', '10', '0004', '7082OPk8EpXB', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (580, 'LANGGENG DWI ASTUTI L', '081250716898', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '20-11-2019, 11:59 pm', '10', '0003', '08eShYkfQ42I', '2019', '911', 'Tenaga Pendidikan', '20');
INSERT INTO `buku_tamu` VALUES (581, 'ANISA KHANSA CHAIRANA', '087869352499', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '20-11-2019, 12:00 am', '10', '0004', 'dd7mY2cd4gEy', '2019', '911', 'Tenaga Pendidikan', '20');
INSERT INTO `buku_tamu` VALUES (582, 'MAHRITA AYU MUSTIKASARI', '085952464060', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '20-11-2019, 12:01 am', '10', '0005', 'Ku74P6em2Lrd', '2019', '911', 'Tenaga Pendidikan', '20');
INSERT INTO `buku_tamu` VALUES (583, 'ILMI', '085215906128', 'Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '20-11-2019, 12:02 am', '10', '0005', '9tukbetqupm3', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (584, 'MARTINA SAITA ENDAH WATI', '085387892709', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Epidemiolog Kesehatan', '20-11-2019, 12:03 am', '10', '0006', 'aKddhCzjYzL6', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (585, 'NYNDEA ELISA', '081347212720', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '20-11-2019, 12:04 am', '10', '0006', 'ZGd6N09Z0Rm9', '2019', '911', 'Tenaga Pendidikan', '20');
INSERT INTO `buku_tamu` VALUES (586, 'DITA PERMATASARI', '081296989191', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Dokter Gigi', '20-11-2019, 12:05 am', '10', '0007', '3CNZnup1c244', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (587, 'ARISA IZZATY', '081356609355', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Dokter Gigi', '20-11-2019, 12:06 am', '10', '0008', '4b45f5BhEstb', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (588, 'HUSNA', '085393707105', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Pranata Laboratorium Kesehatan', '20-11-2019, 12:07 am', '10', '0009', 'I1iQ8SePPAi7', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (589, 'USWATUN HASANAH', '085332955002', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '20-11-2019, 12:08 am', '10', '0010', 'E8XzW6d64kI3', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (590, 'AHMAD BAIHAKI', '08875459248', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Analis Keuangan Pemerintah Pusat dan Daerah', '20-11-2019, 12:09 am', '10', '0001', 'Ubmd2n93QSzL', '2019', '911', 'Tenaga Teknis', '20');
INSERT INTO `buku_tamu` VALUES (591, 'RIDHI HAIDIER', '085652138978', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '20-11-2019, 12:11 am', '10', '0007', 'jFkp23pqD7fG', '2019', '911', 'Tenaga Pendidikan', '20');
INSERT INTO `buku_tamu` VALUES (592, 'FIRDAUS', '085248239351', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Analis Diklat', '20-11-2019, 12:12 am', '10', '0002', 'uaZ2q7q1BITE', '2019', '911', 'Tenaga Teknis', '20');
INSERT INTO `buku_tamu` VALUES (593, 'RADEN RORO KURNIA F', '085246196394', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Pengelola Pengadaan Barang/Jasa', '20-11-2019, 12:18 am', '10', '0003', '9I2d5dySGBN4', '2019', '911', 'Tenaga Teknis', '20');
INSERT INTO `buku_tamu` VALUES (594, 'MUHAMMAD SAYUTI', '089516526292', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Pranata Laboratorium Kesehatan', '20-11-2019, 12:18 am', '10', '0011', 'GP342N9kG7iy', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (595, 'AZHAR JULIANSYAH HIDAYAT', '085754885702', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '20-11-2019, 12:20 am', '10', '0008', '4gVfugP1TG33', '2019', '911', 'Tenaga Pendidikan', '20');
INSERT INTO `buku_tamu` VALUES (596, 'DWI ERLINA R', '085249009725', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Analis Diklat', '20-11-2019, 12:20 am', '10', '0004', 'i09K9O4Ny1UC', '2019', '911', 'Tenaga Teknis', '20');
INSERT INTO `buku_tamu` VALUES (597, 'DEDDY ANDRIYANOR', '087713932442', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Analis Diklat', '20-11-2019, 12:21 am', '10', '0005', '1H0JN1B4GK0v', '2019', '911', 'Tenaga Teknis', '20');
INSERT INTO `buku_tamu` VALUES (598, 'WIWIT NOVIA ARDHYANTI S', '082154082576', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Asisten Apoteker', '20-11-2019, 12:23 am', '10', '0012', 'QS2Fr3Q41jdR', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (599, 'AHMAD SYAIFUDIN', '085650887742', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Analis Keuangan Pemerintah Pusat dan Daerah', '20-11-2019, 12:23 am', '10', '0006', '35F55IBCrvUo', '2019', '911', 'Tenaga Teknis', '20');
INSERT INTO `buku_tamu` VALUES (600, 'FAHRIANA ZAMI', '081326440559', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Bidan', '20-11-2019, 12:26 am', '10', '0013', '21E9MH28YHY5', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (601, 'RENDY RAKHMANA P', '081392954521', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Pengelola Pengadaan Barang/Jasa', '20-11-2019, 12:27 am', '10', '0007', '2E0ojt251ebG', '2019', '911', 'Tenaga Teknis', '20');
INSERT INTO `buku_tamu` VALUES (602, 'TRYA WULAN SARI', '082149462458', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Bahasa Indonesia', '20-11-2019, 12:28 am', '10', '0009', 'n6Q32OPSum1g', '2019', '911', 'Tenaga Pendidikan', '20');
INSERT INTO `buku_tamu` VALUES (603, 'RIZQIYYATIN AZKIYAH', '082338613022', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Bidan', '20-11-2019, 12:29 am', '10', '0014', 'F4fz5Ya9mO9n', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (604, 'EKA SURYA OCTAVIANA S', '082118449330', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Analis Keuangan Pemerintah Pusat dan Daerah', '20-11-2019, 12:30 am', '10', '0008', 'gQM9DMEd3oyE', '2019', '911', 'Tenaga Teknis', '20');
INSERT INTO `buku_tamu` VALUES (605, 'EMEKA SEPTILIANA', '085248091413', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Teknik penyehatan lingkungan', '20-11-2019, 12:31 am', '10', '0009', 'kQis0ZVnMp35', '2019', '911', 'Tenaga Teknis', '20');
INSERT INTO `buku_tamu` VALUES (606, 'RACHMAWATY', '085345685740', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Analis Keuangan Pemerintah Pusat dan Daerah', '20-11-2019, 12:32 am', '10', '0010', '524xzV9ZpAId', '2019', '911', 'Tenaga Teknis', '20');
INSERT INTO `buku_tamu` VALUES (607, 'LAILA RAHMI JAMILAH', '087814666099', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Pranata Laboratorium Kesehatan', '20-11-2019, 12:33 am', '10', '0015', '3f76fW5rI4Px', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (608, 'EVI JUMIYATI', '0895705169958', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Pranata Laboratorium Kesehatan', '20-11-2019, 12:34 am', '10', '0016', '4O026qHV1S2Z', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (609, 'KAHFI RISALI', '082331139946', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019', '20-11-2019, 12:35 am', '10', '0001', 'LQ9ZDAQHoNFK', '2019', '911', '', '20');
INSERT INTO `buku_tamu` VALUES (610, 'KAHFI RISALI', '082331139946', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Bahasa Indonesia', '20-11-2019, 12:36 am', '10', '0010', '2mMDQaW24Ya5', '2019', '911', 'Tenaga Pendidikan', '20');
INSERT INTO `buku_tamu` VALUES (611, 'KHOLISOH', '085349370227', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Bidan', '20-11-2019, 12:36 am', '10', '0017', 'azEOO67885sS', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (612, 'HELDA MARLINA', '087841673988', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Bidan', '20-11-2019, 12:37 am', '10', '0018', 'kxZ7dbeH5T1C', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (613, 'RISA ASTRIA DESVITA AYU', '085787892131', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Bidan', '20-11-2019, 12:38 am', '10', '0019', 'xvqii44BHyak', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (614, 'ARINA WULANDARI', '08115011205', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '20-11-2019, 12:39 am', '10', '0011', 'Gi2IV6d2773e', '2019', '911', 'Tenaga Pendidikan', '20');
INSERT INTO `buku_tamu` VALUES (615, 'RUSMAWATI', '08971495770', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '20-11-2019, 12:40 am', '10', '0012', 'VAWBesCE5774', '2019', '911', 'Tenaga Pendidikan', '20');
INSERT INTO `buku_tamu` VALUES (616, 'SUCI AGUSTINA', '082154443783', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '20-11-2019, 12:41 am', '10', '0013', 'xNvgyAGDCMC8', '2019', '911', 'Tenaga Pendidikan', '20');
INSERT INTO `buku_tamu` VALUES (617, 'FIRDA AMALIA ALFIN', '081350009774', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Epidemiolog Kesehatan', '20-11-2019, 12:42 am', '10', '0020', 'BXbadq5WbTUV', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (618, 'LINDA ANGGRAINI', '082252545492', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '20-11-2019, 12:43 am', '10', '0014', '2B4p52ZYktPZ', '2019', '911', 'Tenaga Pendidikan', '20');
INSERT INTO `buku_tamu` VALUES (619, 'NOVIA SRIDEWI', '082255287141', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '20-11-2019, 12:44 am', '10', '0015', 'ZzW6L2J8RC17', '2019', '911', 'Tenaga Pendidikan', '20');
INSERT INTO `buku_tamu` VALUES (620, 'DEBBY VIDIA PRAMESTI', '082153513563', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Analis Keuangan Pemerintah Pusat dan Daerah', '20-11-2019, 12:45 am', '10', '0011', 'ir9388N94o52', '2019', '911', 'Tenaga Teknis', '20');
INSERT INTO `buku_tamu` VALUES (621, 'WAHYUDI', '087816581026', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Asisten Apoteker', '20-11-2019, 12:45 am', '10', '0021', 'ShhITvp5EbY1', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (622, 'FANITTA ARIESTA', '082350317668', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Pengelola Anggaran', '20-11-2019, 12:46 am', '10', '0012', '573aM78s4Bng', '2019', '911', 'Tenaga Teknis', '20');
INSERT INTO `buku_tamu` VALUES (623, 'INDAH PERMATA SARI', '082251030679', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Penjasorkes', '20-11-2019, 12:47 am', '10', '0016', '4mgNnyvH4fA9', '2019', '911', 'Tenaga Pendidikan', '20');
INSERT INTO `buku_tamu` VALUES (624, 'DAMAR GILANG UTAMA', '085397308125', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Dokter', '20-11-2019, 12:48 am', '10', '0022', '5AV13PtQzUcu', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (625, 'NIA LARASATI', '082214203020', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '20-11-2019, 12:48 am', '10', '0017', '4pyWQ78F55qG', '2019', '911', 'Tenaga Pendidikan', '20');
INSERT INTO `buku_tamu` VALUES (626, 'NURUL SYAFRIATI', '085349483764', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '20-11-2019, 12:49 am', '10', '0018', 'peXuIOQtvFo7', '2019', '911', 'Tenaga Pendidikan', '20');
INSERT INTO `buku_tamu` VALUES (627, 'IKA PRASETYA', '089690372898', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Perawat', '20-11-2019, 12:50 am', '10', '0023', 'Wdfi6tNFGyIZ', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (628, 'RAHMI FADHILLAH HAYATI', '081349452935', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Analis Kemasyarakatan', '20-11-2019, 12:51 am', '10', '0013', 'Lp3m212CfpvJ', '2019', '911', 'Tenaga Teknis', '20');
INSERT INTO `buku_tamu` VALUES (629, 'RIKA ELFRIDA BUTARBUTAR', '081348898885', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Perancang Peraturan Perundang-undangan', '20-11-2019, 12:52 am', '10', '0014', '8MJsvco1N2zC', '2019', '911', 'Tenaga Teknis', '20');
INSERT INTO `buku_tamu` VALUES (630, 'RINA RIZKY HIDAYANTI', '082150753305', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Pengelola Anggaran', '20-11-2019, 12:53 am', '10', '0015', 'DW8V7869M61E', '2019', '911', 'Tenaga Teknis', '20');
INSERT INTO `buku_tamu` VALUES (631, 'RIZKY AUDINA', '087703620933', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '20-11-2019, 12:54 am', '10', '0024', 'o5WT5OaBgz98', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (632, 'MUHAMMAD NAZARI APRIYAND', '081937134919', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '20-11-2019, 12:55 am', '10', '0025', 'n9sBBg66PYRS', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (633, 'AHMAD WINGGO', '082354478249', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Pranata Komputer', '20-11-2019, 12:56 am', '10', '0016', 'R1x87P4voocn', '2019', '911', 'Tenaga Teknis', '20');
INSERT INTO `buku_tamu` VALUES (634, 'MUHAMMAD SYAHRIJAL', '085246458089', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '20-11-2019, 12:56 am', '10', '0019', 's38iYQbRK8T6', '2019', '911', 'Tenaga Pendidikan', '20');
INSERT INTO `buku_tamu` VALUES (635, 'FRETTY WULANSARI', '081348901998', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '20-11-2019, 12:57 am', '10', '0026', 'rpqb8u8Uqv2V', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (636, 'ADE KUSUMA WARDIAH', '081345285900', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Nutrisionis', '20-11-2019, 12:58 am', '10', '0027', 'j5F7Be0er73j', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (637, 'NURUL FAKHRIAL', '089692762271', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '20-11-2019, 12:59 am', '10', '0028', 'zmZqEGuAgVLN', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (638, 'MUHAMMAD REYZALDI A', '082357476554', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Epidemiolog Kesehatan', '20-11-2019, 1:00 am', '10', '0029', 'q85qrjq5cfPy', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (639, 'WIWIEN ELYANTI', '085387000208', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Epidemiolog Kesehatan', '20-11-2019, 1:01 am', '10', '0030', 'orjtyE1jsgvB', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (640, 'AYU WINARSIH', '085218465868', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Analis Keuangan Pemerintah Pusat dan Daerah', '20-11-2019, 1:02 am', '10', '0017', 'G25VPj07951j', '2019', '911', 'Tenaga Teknis', '20');
INSERT INTO `buku_tamu` VALUES (641, 'WISNU ADIGUNA JAYA', '081274201709', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '20-11-2019, 1:02 am', '10', '0020', '2OPk8EpXBe7t', '2019', '911', 'Tenaga Pendidikan', '20');
INSERT INTO `buku_tamu` VALUES (642, 'CHUSNUL AMALIYAH', '081258061550', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '20-11-2019, 1:03 am', '10', '0031', 'MUe2Uma00zG0', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (643, 'MEIRIN RULLIYANI', '0895700518176', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '20-11-2019, 1:05 am', '10', '0032', '22xBJOZ6A2r2', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (644, 'NECO MULYA NOOR', '087752981553', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Analis Diklat', '20-11-2019, 1:06 am', '10', '0018', 'Jxmkj6OsFzXJ', '2019', '911', 'Tenaga Teknis', '20');
INSERT INTO `buku_tamu` VALUES (645, 'UNNY CEASAR', '082150064610', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Analis Keuangan Pemerintah Pusat dan Daerah', '20-11-2019, 1:06 am', '10', '0019', 'BCrvUouOmFBf', '2019', '911', 'Tenaga Teknis', '20');
INSERT INTO `buku_tamu` VALUES (646, 'LISDA HILALINA', '081351710946', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Analis Keuangan Pemerintah Pusat dan Daerah', '20-11-2019, 1:07 am', '10', '0020', 'jE9HGVsyh6hc', '2019', '911', 'Tenaga Teknis', '20');
INSERT INTO `buku_tamu` VALUES (647, 'NOOR JANNAH', '081254822717', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Analis Keuangan Pemerintah Pusat dan Daerah', '20-11-2019, 1:08 am', '10', '0021', '7tcFs8SQKQm5', '2019', '911', 'Tenaga Teknis', '20');
INSERT INTO `buku_tamu` VALUES (648, 'RISMA PRIYANTY', '089506715262', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Pranata Laboratorium Kesehatan', '20-11-2019, 1:09 am', '10', '0033', 'S32hnZjiibVD', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (649, 'NUR AZIZAH HESTYANI', '082255073653', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Nutrisionis', '20-11-2019, 1:11 am', '10', '0034', 'trTkrRttV7ao', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (650, 'YOGGY PRABOWO', '085347621881', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Dokter', '20-11-2019, 1:12 am', '10', '0035', 'ckgNkB1GitR5', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (651, 'AHMAD NOOR FUADI', '081299061915', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Epidemiolog Kesehatan', '20-11-2019, 1:13 am', '10', '0036', '1q0DeoZy3V6n', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (652, 'LIA REZNIA FARLINA', '08125186424', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Analis Keuangan Pemerintah Pusat dan Daerah', '20-11-2019, 1:14 am', '10', '0022', 'dAhJQ92v3kyd', '2019', '911', 'Tenaga Teknis', '20');
INSERT INTO `buku_tamu` VALUES (653, 'KHAIRI IMANAH', '081212142638', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Nutrisionis', '20-11-2019, 1:15 am', '10', '0037', 'cOZgc6QPEk4g', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (654, 'ANDI MUHAMMAD RIVALDY A', '081254422754', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Perancang Peraturan Perundang-undangan', '20-11-2019, 1:16 am', '10', '0023', '9ZpAIddh58J9', '2019', '911', 'Tenaga Teknis', '20');
INSERT INTO `buku_tamu` VALUES (655, 'EKA SEPTIA MAULIDA A', '085347135161', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '20-11-2019, 1:17 am', '10', '0021', 'EaUXK8RTaHPO', '2019', '911', 'Tenaga Pendidikan', '20');
INSERT INTO `buku_tamu` VALUES (656, 'RENITA MEIDIANA PUTRI', '081933850348', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Perawat', '20-11-2019, 1:17 am', '10', '0038', 'F9QU0s3yp9cP', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (657, 'SILVIA ARSIDA LESTARI', '0819673627', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Pranata Komputer', '20-11-2019, 1:20 am', '10', '0024', 'Dtz9CKSU3yYv', '2019', '911', 'Tenaga Teknis', '20');
INSERT INTO `buku_tamu` VALUES (658, 'NOR ELMAH', '085389578880', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Asisten Apoteker', '20-11-2019, 1:21 am', '10', '0039', 'VKSxu8fjSjpY', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (659, 'NOVITA AYU WIDIYAWATI', '081351088580', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Analis Diklat', '20-11-2019, 1:22 am', '10', '0025', 'z6ccy0zp9HSX', '2019', '911', 'Tenaga Teknis', '20');
INSERT INTO `buku_tamu` VALUES (660, 'LINA OCTAVIANI', '081350006906', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Analis Keuangan Pemerintah Pusat dan Daerah', '20-11-2019, 1:23 am', '10', '0026', 'pZ99O9V73K32', '2019', '911', 'Tenaga Teknis', '20');
INSERT INTO `buku_tamu` VALUES (661, 'MUHAMMAD RIDHO', '083159085007', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Asisten Apoteker', '20-11-2019, 1:24 am', '10', '0040', 'cKD49uz7R5GG', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (662, 'AHMAD QALYUBI', '082217941448', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Pranata Laboratorium Kesehatan', '20-11-2019, 1:25 am', '10', '0041', 'pAy03bq8rixi', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (663, 'NAILA', '085248106886', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Bahasa Indonesia', '20-11-2019, 1:26 am', '10', '0022', 'WnKWzfvxffzY', '2019', '911', 'Tenaga Pendidikan', '20');
INSERT INTO `buku_tamu` VALUES (664, 'FATHUR RAHMAN', '085348132869', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '20-11-2019, 1:27 am', '10', '0023', 't3k528j5zsz1', '2019', '911', 'Tenaga Pendidikan', '20');
INSERT INTO `buku_tamu` VALUES (665, 'ERNA WATI', '085348929345', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '20-11-2019, 1:27 am', '10', '0024', '8UvuFL681KW6', '2019', '911', 'Tenaga Pendidikan', '20');
INSERT INTO `buku_tamu` VALUES (666, 'RENDRA HERMAWAN', '082153909229', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Pranata Komputer', '20-11-2019, 1:28 am', '10', '0027', '4iQisbi53D4H', '2019', '911', 'Tenaga Teknis', '20');
INSERT INTO `buku_tamu` VALUES (667, 'FATIMATU ZAHRA', '081250125684', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '20-11-2019, 1:29 am', '10', '0025', '8iFnN8edEaJ6', '2019', '911', 'Tenaga Pendidikan', '20');
INSERT INTO `buku_tamu` VALUES (668, 'ELLYTA MAULIDDIA', '085248751164', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '20-11-2019, 1:30 am', '10', '0026', '0j9T4GYySVBV', '2019', '911', 'Tenaga Pendidikan', '20');
INSERT INTO `buku_tamu` VALUES (669, 'ELVANA NOVEMBERRAIN', '082255784738', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Penjasorkes', '20-11-2019, 1:31 am', '10', '0027', '08eko887d6ky', '2019', '911', 'Tenaga Pendidikan', '20');
INSERT INTO `buku_tamu` VALUES (670, 'ETIKA YATI RISAMPUNI', '082154989457', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Penjasorkes', '20-11-2019, 1:32 am', '10', '0028', 'PVum3qFJHFhk', '2019', '911', 'Tenaga Pendidikan', '20');
INSERT INTO `buku_tamu` VALUES (671, 'ACHMAD FAUZI', '085248324244', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Agama Islam', '20-11-2019, 1:32 am', '10', '0029', 'kNSAH452k7bv', '2019', '911', 'Tenaga Pendidikan', '20');
INSERT INTO `buku_tamu` VALUES (672, 'RUDY FEBRIANNOR', '081348101929', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Perancang Peraturan Perundang-undangan', '20-11-2019, 1:33 am', '10', '0028', '9bZQTj6WLE23', '2019', '911', 'Tenaga Teknis', '20');
INSERT INTO `buku_tamu` VALUES (673, 'EKASARI PRATIWI', '081254658011', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '20-11-2019, 1:34 am', '10', '0030', '3d5nSPHnHC0y', '2019', '911', 'Tenaga Pendidikan', '20');
INSERT INTO `buku_tamu` VALUES (674, 'RAUDHATUL JANNAH', '085820008956', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '20-11-2019, 1:35 am', '10', '0042', 'H5aXeCJDiqs3', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (675, 'NUR ANNISA', '081649066906', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '20-11-2019, 1:36 am', '10', '0031', 'z8yIkSq5fE9V', '2019', '911', 'Tenaga Pendidikan', '20');
INSERT INTO `buku_tamu` VALUES (676, 'ABDUL WAHID', '085705387986', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '20-11-2019, 1:37 am', '10', '0032', 'X7xzKIvsrs4r', '2019', '911', 'Tenaga Pendidikan', '20');
INSERT INTO `buku_tamu` VALUES (677, 'ALDI PAHLEVI', '082351859141', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '20-11-2019, 1:37 am', '10', '0043', '64arcWBXeTe7', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (678, 'SHINTA ELISA', '082253720818', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '20-11-2019, 1:38 am', '10', '0033', 'YZtjhsbZiVcu', '2019', '911', 'Tenaga Pendidikan', '20');
INSERT INTO `buku_tamu` VALUES (679, 'RIZKY SYAIHAN RACHMAN', '081349658185', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Analis Keuangan Pemerintah Pusat dan Daerah', '20-11-2019, 1:40 am', '10', '0029', 'DgigHRIvMknx', '2019', '911', 'Tenaga Teknis', '20');
INSERT INTO `buku_tamu` VALUES (680, 'ANISAH', '085246325238', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Nutrisionis', '20-11-2019, 1:41 am', '10', '0044', 'HWkJkOvRv8mx', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (681, 'AL MADANI', '08121664809', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Analis Diklat', '20-11-2019, 1:42 am', '10', '0030', '58oIGObfPszT', '2019', '911', 'Tenaga Teknis', '20');
INSERT INTO `buku_tamu` VALUES (682, 'FATHIYATUR RAHMAH', '082254429936', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Apoteker', '20-11-2019, 1:43 am', '10', '0045', 'VSAvP3Dxq134', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (683, 'ERIKA KUSUMAWATI', '085822179759', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Dokter', '20-11-2019, 1:44 am', '10', '0046', 'ILdU4bAx5jRf', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (684, 'YOSEVINE', '081348230860', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Dokter', '20-11-2019, 1:45 am', '10', '0047', 'DJy7K9fNrBSq', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (685, 'GINA ALIA MAWADDAH', '0859196161384', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Pranata Laboratorium Kesehatan', '20-11-2019, 1:46 am', '10', '0048', '46b92DH2Dqnd', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (686, 'MUHAMMAD RINALDY AKBAR', 'BANJARBARU', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Perancang Peraturan Perundang-undangan', '20-11-2019, 1:47 am', '10', '0031', 'RxCs9YsCYQDr', '2019', '911', 'Tenaga Teknis', '20');
INSERT INTO `buku_tamu` VALUES (687, 'AMANIA HUMAIDA', '085214969826', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat Gigi', '20-11-2019, 1:47 am', '10', '0049', '85s4nvzg96jh', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (688, 'IRMA YULIARTI', '085251475095', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '20-11-2019, 1:48 am', '10', '0034', '4Vh9s4SPqka0', '2019', '911', 'Tenaga Pendidikan', '20');
INSERT INTO `buku_tamu` VALUES (689, 'HARIYANSYAH', '082213679937', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Analis Diklat', '20-11-2019, 1:49 am', '10', '0032', '4RI9oW184hb3', '2019', '911', 'Tenaga Teknis', '20');
INSERT INTO `buku_tamu` VALUES (690, 'NURLILIS ACHADIYAH', '081215790449', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '20-11-2019, 1:50 am', '10', '0035', 'FeLNG3G6bq6n', '2019', '911', 'Tenaga Pendidikan', '20');
INSERT INTO `buku_tamu` VALUES (691, 'NAMIRA MEDINA PUTRI', '085753495657', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Bahasa Indonesia', '20-11-2019, 1:51 am', '10', '0036', 'Z1zy9k7H3tIQ', '2019', '911', 'Tenaga Pendidikan', '20');
INSERT INTO `buku_tamu` VALUES (692, 'NORRAISA SHALIHA', '082251159260', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Nutrisionis', '20-11-2019, 1:52 am', '10', '0050', '2u18ymJ49nJS', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (693, 'HELMIAH', '082154015188', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Nutrisionis', '20-11-2019, 1:53 am', '10', '0051', 'H24O7Ga3N7ks', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (694, 'RADEN SATRIO ARIF W', '089627989884', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Pengelola Anggaran', '20-11-2019, 1:54 am', '10', '0033', 'QsmM4j5QjDoT', '2019', '911', 'Tenaga Teknis', '20');
INSERT INTO `buku_tamu` VALUES (695, 'NOVITA FUJI NINGTIAS', '081218954915', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Perancang Peraturan Perundang-undangan', '20-11-2019, 1:55 am', '10', '0034', '2d3j1c6RhYBb', '2019', '911', 'Tenaga Teknis', '20');
INSERT INTO `buku_tamu` VALUES (696, 'BERLIAN INDAH P', '089685735888', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '20-11-2019, 1:56 am', '10', '0037', '9m8v5W3FIxC7', '2019', '911', 'Tenaga Pendidikan', '20');
INSERT INTO `buku_tamu` VALUES (697, 'LIPI YANOOR', '085248859996', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '20-11-2019, 1:57 am', '10', '0038', '898t1AQ9YER3', '2019', '911', 'Tenaga Pendidikan', '20');
INSERT INTO `buku_tamu` VALUES (698, 'SULIS PURWATI', '082358733183', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '20-11-2019, 1:58 am', '10', '0039', 'Y37LgiMM9cNC', '2019', '911', 'Tenaga Pendidikan', '20');
INSERT INTO `buku_tamu` VALUES (699, 'NURUS SURAYA', '085248085350', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '20-11-2019, 1:58 am', '10', '0040', '67HcPn5U751N', '2019', '911', 'Tenaga Pendidikan', '20');
INSERT INTO `buku_tamu` VALUES (700, 'NOOR NASTH GINANJAR', '089524338646', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Analis Diklat', '20-11-2019, 1:59 am', '10', '0035', 'ZVUD3n975E0W', '2019', '911', 'Tenaga Teknis', '20');
INSERT INTO `buku_tamu` VALUES (701, 'HUSNUL KHATIMAH', '081345249723', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Bahasa Indonesia', '20-11-2019, 2:00 am', '10', '0041', '1sVmYf3pqVY1', '2019', '911', 'Tenaga Pendidikan', '20');
INSERT INTO `buku_tamu` VALUES (702, 'FITRIA ISNANI', '082251562484', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana terampil - Sanitarian', '20-11-2019, 2:02 am', '10', '0052', 'G8KsHuFH4Wi7', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (703, 'PRESTASI AKBARI', '082148711120', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana terampil - Sanitarian', '20-11-2019, 2:02 am', '10', '0053', 'f25FFv29JhF3', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (704, 'SUDARMI', '082154031390', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '20-11-2019, 2:03 am', '10', '0042', '14gb7Vaa9m8v', '2019', '911', 'Tenaga Pendidikan', '20');
INSERT INTO `buku_tamu` VALUES (705, 'FARIDAH', '082149792859', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Pranata Laboratorium Kesehatan', '20-11-2019, 2:04 am', '10', '0054', 's808MQ094Leh', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (706, 'MEIGA T', '08315000555595', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Pranata Laboratorium Kesehatan', '20-11-2019, 2:05 am', '10', '0055', 'Vs76n1oraDAk', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (707, 'JASMADI', '085346104557', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '20-11-2019, 2:06 am', '10', '0043', '3LnsMQRZ8pga', '2019', '911', 'Tenaga Pendidikan', '20');
INSERT INTO `buku_tamu` VALUES (708, 'AHMAD RIZA DAILAMI', '085752777256', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Penyuluh Kesehatan Masyarakat', '20-11-2019, 2:07 am', '10', '0056', '52L2S11O86m7', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (709, 'WAHDINI', '085350333999', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Analis Keuangan Pemerintah Pusat dan Daerah', '20-11-2019, 2:08 am', '10', '0036', 'd1pZP5e4pKjG', '2019', '911', 'Tenaga Teknis', '20');
INSERT INTO `buku_tamu` VALUES (710, 'EDY PRASETYO', '081283425129', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Teknik penyehatan lingkungan', '20-11-2019, 2:09 am', '10', '0037', '5dySGBN49qBr', '2019', '911', 'Tenaga Teknis', '20');
INSERT INTO `buku_tamu` VALUES (711, 'ALVINA ROSANA', '085249452903', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Dokter', '20-11-2019, 2:10 am', '10', '0057', 'yQJ74kXGd6fG', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (712, 'DWI ALVIAH', '082157753688', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Agama Islam', '20-11-2019, 2:11 am', '10', '0044', 'T5iL2Xv16570', '2019', '911', 'Tenaga Pendidikan', '20');
INSERT INTO `buku_tamu` VALUES (713, 'FATIMAH', '085100109414', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Agama Islam', '20-11-2019, 2:12 am', '10', '0045', '9qgPsF6qV7qt', '2019', '911', 'Tenaga Pendidikan', '20');
INSERT INTO `buku_tamu` VALUES (714, 'YUNITA DEWI', '082156605281', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Epidemiolog Kesehatan', '20-11-2019, 2:12 am', '10', '0058', 'SE7nbGDeo39h', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (715, 'ST. RUKAYAH', '082253540276', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '20-11-2019, 2:13 am', '10', '0046', '973OPB2Q2p4i', '2019', '911', 'Tenaga Pendidikan', '20');
INSERT INTO `buku_tamu` VALUES (716, 'HUDA ANGGRIAWAN', '082250102472', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '20-11-2019, 2:14 am', '10', '0059', 'vK23vSgkYzNq', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (717, 'NENA KARLENA', '08125367604', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '20-11-2019, 2:15 am', '10', '0047', 'S1mo3mfJ8BU4', '2019', '911', 'Tenaga Pendidikan', '20');
INSERT INTO `buku_tamu` VALUES (718, 'MEI SARI MULYANI', '085248000771', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Epidemiolog Kesehatan', '20-11-2019, 2:16 am', '10', '0060', 'xkVouxzD0t1J', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (719, 'KARTIKA MUKTITAMA P', '085393541552', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Epidemiolog Kesehatan', '20-11-2019, 2:17 am', '10', '0061', 'Yd51v9a8XFge', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (720, 'SURYANTI', '085329055039', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Bidan', '20-11-2019, 2:17 am', '10', '0062', 'TqNobXNDxjqC', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (721, 'RAFI ADITIA KUMARA', '085391691177', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Perawat', '20-11-2019, 2:18 am', '10', '0063', 'g9eB6ou1F5Co', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (722, 'YOVAN MAULANA', '082281638281', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Analis Diklat', '20-11-2019, 2:19 am', '10', '0038', 'WIyGK96DxaO2', '2019', '911', 'Tenaga Teknis', '20');
INSERT INTO `buku_tamu` VALUES (723, 'MUHAMMAD ALFI MUZAKI', '085246643335', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Pranata Laboratorium Kesehatan', '20-11-2019, 2:20 am', '10', '0064', '6dF8D5gE0t61', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (724, 'EKA PUTRI NINGSIH', '085248207519', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '20-11-2019, 2:22 am', '10', '0048', 'xZ7dbeH5T1C8', '2019', '911', 'Tenaga Pendidikan', '20');
INSERT INTO `buku_tamu` VALUES (725, 'AINUL IZZAH', '082148599180', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Pengelola Pengadaan Barang/Jasa', '20-11-2019, 2:23 am', '10', '0039', 'LhfOoaby3zsS', '2019', '911', 'Tenaga Teknis', '20');
INSERT INTO `buku_tamu` VALUES (726, 'RIZKA MELYANI', '082250790363', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Pengelola Anggaran', '20-11-2019, 2:25 am', '10', '0040', '1cR3Rtvt4Bvi', '2019', '911', 'Tenaga Teknis', '20');
INSERT INTO `buku_tamu` VALUES (727, 'VALENTINO AGUSTINUS', '081349369830', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Perawat', '20-11-2019, 2:26 am', '10', '0065', 'na30ucAS68Cb', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (728, 'JAUCHAIRIYAH', '085345740388', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat Gigi', '20-11-2019, 2:27 am', '10', '0066', 'uTO2kRfgNOUN', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (729, 'NOOR RIDHA ARMAN', '085654548404', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Pengelola Pengadaan Barang/Jasa', '20-11-2019, 2:28 am', '10', '0041', '4mdRrWK3nm3D', '2019', '911', 'Tenaga Teknis', '20');
INSERT INTO `buku_tamu` VALUES (730, 'TAUFIK YUDHI PRASETYO', '081254236363', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Pengelola Pengadaan Barang/Jasa', '20-11-2019, 2:29 am', '10', '0042', 'xbJjuDPcqfB4', '2019', '911', 'Tenaga Teknis', '20');
INSERT INTO `buku_tamu` VALUES (731, 'SUSI SUSILAWATI', '085349183871', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Epidemiolog Kesehatan', '20-11-2019, 2:30 am', '10', '0067', 'K32FT638S4Ch', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (732, 'ANITA RAHAYU', '081346221757', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Penyuluh Kesehatan Masyarakat', '20-11-2019, 2:31 am', '10', '0068', 'mqb17Uu55c6y', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (733, 'FAIZAH', '087815941667', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Analis Keuangan Pemerintah Pusat dan Daerah', '20-11-2019, 2:31 am', '10', '0043', 'L5g5S450D3h0', '2019', '911', 'Tenaga Teknis', '20');
INSERT INTO `buku_tamu` VALUES (734, 'AULIA YAHYA', '082250093672', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Analis Keuangan Pemerintah Pusat dan Daerah', '20-11-2019, 2:32 am', '10', '0044', 'hE9VXTsjj3m6', '2019', '911', 'Tenaga Teknis', '20');
INSERT INTO `buku_tamu` VALUES (735, 'MUHAMMAD IBNU SINA', '082255645316', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Analis Kemasyarakatan', '20-11-2019, 2:33 am', '10', '0045', 'ScMWWNZrNW2N', '2019', '911', 'Tenaga Teknis', '20');
INSERT INTO `buku_tamu` VALUES (736, 'FITHRI FAULINA', '0877043380075', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Epidemiolog Kesehatan', '20-11-2019, 2:34 am', '10', '0069', 'Sa95jIbHFo7K', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (737, 'DIAH KURNIA PUTRI', '085224724313', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Analis Kemasyarakatan', '20-11-2019, 2:35 am', '10', '0046', 'k81Y0Cm9Ax5v', '2019', '911', 'Tenaga Teknis', '20');
INSERT INTO `buku_tamu` VALUES (738, 'NOR ISNA FEBRIANI', '082154444025', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Analis Keuangan Pemerintah Pusat dan Daerah', '20-11-2019, 2:35 am', '10', '0047', 'g6id5xU2YdN3', '2019', '911', 'Tenaga Teknis', '20');
INSERT INTO `buku_tamu` VALUES (739, 'HUSNUL HATIMAH', '085246863607', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Asisten Apoteker', '20-11-2019, 2:36 am', '10', '0070', 'LJPcR91N078J', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (740, 'LENA MAGDALIA', '081372944515', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Bahasa Indonesia', '20-11-2019, 2:37 am', '10', '0049', '95Hzg9fa0RC6', '2019', '911', 'Tenaga Pendidikan', '20');
INSERT INTO `buku_tamu` VALUES (741, 'VITHA AMALYA MAHARANI', '085252323676', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Nutrisionis', '20-11-2019, 2:38 am', '10', '0071', 'cTt2Xgd5xno8', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (742, 'ANNISA KURNIANI', '081322615656', 'i Pertama - Guru Kelas', '20-11-2019, 2:39 am', '10', '0050', 'p9HSXySMPoIb', '2019', '911', 'Tenaga Pendidikan', '20');
INSERT INTO `buku_tamu` VALUES (743, 'NUR LIANA', '082354780560', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '20-11-2019, 2:40 am', '10', '0051', '9g168zZ1nZaE', '2019', '911', 'Tenaga Pendidikan', '20');
INSERT INTO `buku_tamu` VALUES (744, 'RAUDATUL ADAWIYAH', '085332132696', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '20-11-2019, 2:40 am', '10', '0052', '9mOqkRdUknrY', '2019', '911', 'Tenaga Pendidikan', '20');
INSERT INTO `buku_tamu` VALUES (745, 'EVANIA ELIANTI SUPAR', '082112258078', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Asisten Apoteker', '20-11-2019, 2:41 am', '10', '0072', 'rpmuuJddY8D3', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (746, 'ULFIA AHDIYANI', '081255578901', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '20-11-2019, 2:42 am', '10', '0053', 'aeIsH3ACGA1W', '2019', '911', 'Tenaga Pendidikan', '20');
INSERT INTO `buku_tamu` VALUES (747, 'SANTO ZABIDI ACHMADIYAH', '085204973874', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Perawat', '20-11-2019, 2:43 am', '10', '0073', 'Y54ctB6D2sNd', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (748, 'MULIANA', '085348011516', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Asisten Apoteker', '20-11-2019, 2:44 am', '10', '0074', 'MGpb4WZJX247', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (749, 'LISMAWATI', '085950042504', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Pengelola Anggaran', '20-11-2019, 2:46 am', '10', '0048', 'G2moJ8KKO3D8', '2019', '911', 'Tenaga Teknis', '20');
INSERT INTO `buku_tamu` VALUES (750, 'SITI HADIJAH', '087814961560', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Perawat', '20-11-2019, 2:47 am', '10', '0075', '4DPU51OkM45R', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (751, 'BENAZIR MAULANI AFIFAH', '081345462354', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Perancang Peraturan Perundang-undangan', '20-11-2019, 2:48 am', '10', '0049', 'v9i2jFkGo7Mj', '2019', '911', 'Tenaga Teknis', '20');
INSERT INTO `buku_tamu` VALUES (752, 'PUTERI SUSANTI', '082250206216', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Bahasa Indonesia', '20-11-2019, 2:50 am', '10', '0054', 'yI3OZVSoVqqb', '2019', '911', 'Tenaga Pendidikan', '20');
INSERT INTO `buku_tamu` VALUES (753, 'GUSTI RIZKI AMALIA', '081257225722', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '20-11-2019, 2:51 am', '10', '0055', 'ZITLYbK37V17', '2019', '911', 'Tenaga Pendidikan', '20');
INSERT INTO `buku_tamu` VALUES (754, 'GUSTI TITA RAHMA', '081255566671', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Analis Keuangan Pemerintah Pusat dan Daerah', '20-11-2019, 2:52 am', '10', '0050', 'cD4E87JK6ZSL', '2019', '911', 'Tenaga Teknis', '20');
INSERT INTO `buku_tamu` VALUES (755, 'GUSTI NANDA RIZKHO', '087814040082', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Pranata Komputer', '20-11-2019, 2:53 am', '10', '0051', 'tC531Y3IG424', '2019', '911', 'Tenaga Teknis', '20');
INSERT INTO `buku_tamu` VALUES (756, 'ADELIA PUSPITA SARI', '081347742692', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Teknik penyehatan lingkungan', '20-11-2019, 2:54 am', '10', '0052', 'rh7cLB9n90SG', '2019', '911', 'Tenaga Teknis', '20');
INSERT INTO `buku_tamu` VALUES (757, 'YESIKA SUSANTI', '082231306031', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '20-11-2019, 2:55 am', '10', '0056', 'vG9OszCmI3q1', '2019', '911', 'Tenaga Pendidikan', '20');
INSERT INTO `buku_tamu` VALUES (758, 'MAULIDA FITRIANI', '082154114819', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Bahasa Indonesia', '20-11-2019, 2:56 am', '10', '0057', 'IQ97ZdEmAsnt', '2019', '911', 'Tenaga Pendidikan', '20');
INSERT INTO `buku_tamu` VALUES (759, 'FARIDA ARIYANI', '08115554111', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019', '20-11-2019, 2:57 am', '10', '0002', 'nEbhS95Hzg9f', '2019', '911', '', '20');
INSERT INTO `buku_tamu` VALUES (760, 'RAFITA SARI', '081953814009', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '20-11-2019, 2:58 am', '10', '0058', 'uUvuJU7keebK', '2019', '911', 'Tenaga Pendidikan', '20');
INSERT INTO `buku_tamu` VALUES (761, 'NOVITA SARI', '085348375800', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Bidan', '20-11-2019, 3:00 am', '10', '0076', '2vnLmqCH5aXe', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (762, 'RISKA SAFARINA', '085753244818', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Pengelola Anggaran', '20-11-2019, 3:01 am', '10', '0053', '69NsW3absLK8', '2019', '911', 'Tenaga Teknis', '20');
INSERT INTO `buku_tamu` VALUES (763, 'WIDYA PUTRI SANJAYANTI', '081260015679', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Pengelola Anggaran', '20-11-2019, 3:01 am', '10', '0054', 'x627cHSgA511', '2019', '911', 'Tenaga Teknis', '20');
INSERT INTO `buku_tamu` VALUES (764, 'NURUL QAMARIYAH', '087815055517', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Pengelola Anggaran', '20-11-2019, 3:03 am', '10', '0055', '1E94FPQho4Qx', '2019', '911', 'Tenaga Teknis', '20');
INSERT INTO `buku_tamu` VALUES (765, 'NINA ANDRIYANI', '082150077794', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Pengelola Anggaran', '20-11-2019, 3:04 am', '10', '0056', 'I2M9Lp39oNJT', '2019', '911', 'Tenaga Teknis', '20');
INSERT INTO `buku_tamu` VALUES (766, 'RISMA DEFIYANTI', '082157071978', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Penyuluh Kesehatan Masyarakat', '20-11-2019, 3:05 am', '10', '0077', 'r1x7xsks19yP', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (767, 'ROSALIN MONICA', '082240820155', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Apoteker', '20-11-2019, 3:06 am', '10', '0078', 'H559oyNcpGY5', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (768, 'BAYU SEPTIADI', '081232966008', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Dokter', '20-11-2019, 3:07 am', '10', '0079', '8BU1KGBWYxT3', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (769, 'GANDA IMANDA', '0819816560', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Perancang Peraturan Perundang-undangan', '20-11-2019, 3:08 am', '10', '0057', 'd866x19eQM2V', '2019', '911', 'Tenaga Teknis', '20');
INSERT INTO `buku_tamu` VALUES (770, 'EKA SEVTIANA', '082251703046', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '20-11-2019, 3:09 am', '10', '0059', '7N3mKhzmk52e', '2019', '911', 'Tenaga Pendidikan', '20');
INSERT INTO `buku_tamu` VALUES (771, 'ZISKA RAHMADYA HERZA', '081770780385', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Pranata Laboratorium Kesehatan', '20-11-2019, 3:10 am', '10', '0080', 'mq9tkT3P4Lkx', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (772, 'MEGA PUZA PURNAMASARI', '083142285898', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Bahasa Indonesia', '20-11-2019, 3:11 am', '10', '0060', 'dRr2Tp3CGtDs', '2019', '911', 'Tenaga Pendidikan', '20');
INSERT INTO `buku_tamu` VALUES (773, 'SITI SHOLIKA', '082253527850', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Bahasa Indonesia', '20-11-2019, 3:12 am', '10', '0061', '2gHIr8SZzE1q', '2019', '911', 'Tenaga Pendidikan', '20');
INSERT INTO `buku_tamu` VALUES (774, 'KAHFI KURNIAWAN RAHMAN', '085828132562', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '20-11-2019, 3:12 am', '10', '0062', '4BHyakNSScMh', '2019', '911', 'Tenaga Pendidikan', '20');
INSERT INTO `buku_tamu` VALUES (775, 'SRI MULYANI', '087814545145', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '20-11-2019, 3:13 am', '10', '0063', 'EPc5G25D59C0', '2019', '911', 'Tenaga Pendidikan', '20');
INSERT INTO `buku_tamu` VALUES (776, 'RANDINA EKA PUTRI', '081257305060', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Apoteker', '20-11-2019, 3:14 am', '10', '0081', '4CHPz4Aeci9m', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (777, 'AKHMAD RAMADHAN', '081351734113', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Epidemiolog Kesehatan', '20-11-2019, 3:15 am', '10', '0082', 'bFYs912JS67m', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (778, 'HAIRINA SUKMA RAHMAWATI', '081254673552', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Analis Keuangan Pemerintah Pusat dan Daerah', '20-11-2019, 3:16 am', '10', '0058', '7ZmjUx91I4Ym', '2019', '911', 'Tenaga Teknis', '20');
INSERT INTO `buku_tamu` VALUES (779, 'YENI ROSNANI', '082194845581', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '20-11-2019, 3:16 am', '10', '0064', 'M0h8WprT4Csy', '2019', '911', 'Tenaga Pendidikan', '20');
INSERT INTO `buku_tamu` VALUES (780, 'ELVI LAILATIN', '089607678951', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '20-11-2019, 3:17 am', '10', '0065', 'ajQiyfNOSu5v', '2019', '911', 'Tenaga Pendidikan', '20');
INSERT INTO `buku_tamu` VALUES (781, 'RAISA NUR AULIANI', '081251374454', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Analis Kemasyarakatan', '20-11-2019, 3:18 am', '10', '0059', 'kJ8Qdd2OkDWz', '2019', '911', 'Tenaga Teknis', '20');
INSERT INTO `buku_tamu` VALUES (782, 'SYLVEA NORITA', '083133992149', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '20-11-2019, 3:20 am', '10', '0066', '37624h8uvh46', '2019', '911', 'Tenaga Pendidikan', '20');
INSERT INTO `buku_tamu` VALUES (783, 'DWI REZKY SUKMAWATY', '08115131906', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Apoteker', '20-11-2019, 3:21 am', '10', '0083', 'i58Y2SBKLSSc', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (784, 'DHIYA''UL AKBAR', '08115128008', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Pengelola Pengadaan Barang/Jasa', '20-11-2019, 3:22 am', '10', '0060', 'CJ6kSRZJiPCK', '2019', '911', 'Tenaga Teknis', '20');
INSERT INTO `buku_tamu` VALUES (785, 'APRILIA DWI SUSANTI', '081351034943', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '20-11-2019, 3:22 am', '10', '0084', 'qfFQ63O29bv9', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (786, 'SALMA MUFIDAH', '085345656254', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '20-11-2019, 3:23 am', '10', '0067', 'UZxpI3YAEB2x', '2019', '911', 'Tenaga Pendidikan', '20');
INSERT INTO `buku_tamu` VALUES (787, 'LAILY HIKMAWATI', '082233406969', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Bidan', '20-11-2019, 3:24 am', '10', '0085', 'V5XNXay3eqRN', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (788, 'EMMA PURNAMA SARI', '083159390522', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '20-11-2019, 3:25 am', '10', '0068', 'A8qBxgRzUENb', '2019', '911', 'Tenaga Pendidikan', '20');
INSERT INTO `buku_tamu` VALUES (789, 'RABIATUL ADAWIAH', '082155609043', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Bidan', '20-11-2019, 3:25 am', '10', '0086', 'hgHax3xQJ0oY', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (790, 'U. PURNAMA SARI', '081255611645', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Perawat', '20-11-2019, 3:26 am', '10', '0087', 'JafOvCqTgJi9', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (791, 'LINDA GINAYAH', '082350718495', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Bidan', '20-11-2019, 3:27 am', '10', '0088', 'LHt8e469o5A4', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (792, 'FIFI MEGAWATI', '082251043006', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Bidan', '20-11-2019, 3:28 am', '10', '0089', 'E65Nd68IOQht', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (793, 'NOR HIDAYAH', '089693000753', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '20-11-2019, 3:29 am', '10', '0069', 'qa7SbYKxR2pO', '2019', '911', 'Tenaga Pendidikan', '20');
INSERT INTO `buku_tamu` VALUES (794, 'DITA AULIA ABIDIN', '08565392287', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Teknik Jalan dan Jembatan', '20-11-2019, 3:30 am', '10', '0061', 'z3rmDNT7Eqr9', '2019', '911', 'Tenaga Teknis', '20');
INSERT INTO `buku_tamu` VALUES (795, 'NINA RIDANI', '081250032302', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '20-11-2019, 3:30 am', '10', '0090', '4LehaTIjDt8d', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (796, 'LAILA APRIYANTI', '087816965552', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '20-11-2019, 3:31 am', '10', '0070', 'Hu6cdBMV49Y5', '2019', '911', 'Tenaga Pendidikan', '20');
INSERT INTO `buku_tamu` VALUES (797, 'SRI RAHAYU', '081299052986', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Analis Kemasyarakatan', '20-11-2019, 3:32 am', '10', '0062', 'SdAN54QEvKIc', '2019', '911', 'Tenaga Teknis', '20');
INSERT INTO `buku_tamu` VALUES (798, 'ANNISA NUR LIYANTI', '082190801315', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Pranata Laboratorium Kesehatan', '20-11-2019, 3:33 am', '10', '0091', 'Ar39G6VZLqfJ', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (799, 'MUHAMMAD ADI CHANDRA', '082250318794', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Pranata Laboratorium Kesehatan', '20-11-2019, 3:34 am', '10', '0092', '1LKDBj35V2O4', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (800, 'RIZKY ARIANI PUTRA', '082157071294', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Epidemiolog Kesehatan', '20-11-2019, 3:35 am', '10', '0093', '2A6joJ8CT144', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (801, 'ERNI ANITA', '085347783848', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Pranata Laboratorium Kesehatan', '20-11-2019, 3:36 am', '10', '0094', '0ZKdn1Qa7y87', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (802, 'BENA DWI ARTA ROSA', '085251973637', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Pranata Laboratorium Kesehatan', '20-11-2019, 3:36 am', '10', '0095', 't8ya4G29tukb', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (803, 'MAKI ZAMZAM', '081251543935', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Epidemiolog Kesehatan', '20-11-2019, 3:37 am', '10', '0096', 'WVzFHk0MSJ71', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (804, 'MISNAWATI', '085348962642', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Pranata Laboratorium Kesehatan', '20-11-2019, 3:38 am', '10', '0097', '5tQzfEaF4FYP', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (805, 'TIFFANY SHAHNAZ RUSLI', '085299361177', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '20-11-2019, 3:39 am', '10', '0071', 'ExRa2SBGJq6S', '2019', '911', 'Tenaga Pendidikan', '20');
INSERT INTO `buku_tamu` VALUES (806, 'FRANSISCA PURBA', '087814730660', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Perawat', '20-11-2019, 3:40 am', '10', '0098', 'hWa7mWCZcDpi', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (807, 'GAGUK SANTOSO', '081351999469', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Analis Keuangan Pemerintah Pusat dan Daerah', '20-11-2019, 3:42 am', '10', '0063', 'ALkrqg2BsRYG', '2019', '911', 'Tenaga Teknis', '20');
INSERT INTO `buku_tamu` VALUES (808, 'GAGUK SANTOSO', '081351999469', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Analis Keuangan Pemerintah Pusat dan Daerah', '20-11-2019, 3:43 am', '10', '0064', '89bLknOqnr76', '2019', '911', 'Tenaga Teknis', '20');
INSERT INTO `buku_tamu` VALUES (809, 'EVA NOOR ASWARINI', '082251948949', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '20-11-2019, 3:43 am', '10', '0072', 'DIJ9XFXzNvps', '2019', '911', 'Tenaga Pendidikan', '20');
INSERT INTO `buku_tamu` VALUES (810, 'NIZAR', '082256966661', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Penjasorkes', '20-11-2019, 3:44 am', '10', '0073', '3sbQ9hiDoCNi', '2019', '911', 'Tenaga Pendidikan', '20');
INSERT INTO `buku_tamu` VALUES (811, 'MUHAMMAD ZAINI', '085345146979', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Penjasorkes', '20-11-2019, 3:45 am', '10', '0074', 'OF55cqnn8jv3', '2019', '911', 'Tenaga Pendidikan', '20');
INSERT INTO `buku_tamu` VALUES (812, 'MUHAMMAD FUAD ANSYARI', '081316477659', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Penjasorkes', '20-11-2019, 3:46 am', '10', '0075', 'TEN9pDYbTUDz', '2019', '911', 'Tenaga Pendidikan', '20');
INSERT INTO `buku_tamu` VALUES (813, 'ARIEF RAHMAN HAKIM', '0853486811785', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Bahasa Indonesia', '20-11-2019, 3:46 am', '10', '0076', 'z4t1m1hIKX54', '2019', '911', 'Tenaga Pendidikan', '20');
INSERT INTO `buku_tamu` VALUES (814, 'MUHAMMAD DIMAS ADITYA', '082153654896', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Perancang Peraturan Perundang-undangan', '20-11-2019, 3:47 am', '10', '0065', 'hmTVSAvP3Dxq', '2019', '911', 'Tenaga Teknis', '20');
INSERT INTO `buku_tamu` VALUES (815, 'SA''IDAH FAJRINA', '088245828575', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat Gigi', '20-11-2019, 3:49 am', '10', '0099', 'X3F9I2rsDacM', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (816, 'SA''IDAH FAJRINA', '088245828575', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat Gigi', '20-11-2019, 3:49 am', '10', '0100', 'Ce1z55c92MQa', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (817, 'DANA PERIYANA', '087810063913', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Pranata Laboratorium Kesehatan', '20-11-2019, 3:50 am', '10', '0101', 'r6aYkFBL2057', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (818, 'SITI NURHAYATI', '085651428363', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Pranata Laboratorium Kesehatan', '20-11-2019, 3:51 am', '10', '0102', 'Xem1tC9CRxGm', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (819, 'MARDIANA', '085754499963', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana terampil - Sanitarian', '20-11-2019, 3:52 am', '10', '0103', '1Ki5A88T404J', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (820, 'SITI SOLEHAH', '081952845246', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '20-11-2019, 3:53 am', '10', '0077', 'rff6tL37ejkv', '2019', '911', 'Tenaga Pendidikan', '20');
INSERT INTO `buku_tamu` VALUES (821, 'DANIK ASTITI RAHAYU', '083151419901', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '20-11-2019, 3:54 am', '10', '0078', 'CF42euG2T2od', '2019', '911', 'Tenaga Pendidikan', '20');
INSERT INTO `buku_tamu` VALUES (822, 'YASHINTA', '08113155345', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Analis Kemasyarakatan', '20-11-2019, 3:55 am', '10', '0066', 'dbeH5T1C82M6', '2019', '911', 'Tenaga Teknis', '20');
INSERT INTO `buku_tamu` VALUES (823, 'DWI AGUS EFENDY', '082358149117', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '20-11-2019, 3:55 am', '10', '0079', '98caUMThWPPB', '2019', '911', 'Tenaga Pendidikan', '20');
INSERT INTO `buku_tamu` VALUES (824, 'DONNY SEPTIAN', '081805322993', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '20-11-2019, 3:56 am', '10', '0104', 'XqaGJjTgQ4yH', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (825, 'MIRZA FAHHRIZAL', '082154308675', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '20-11-2019, 3:57 am', '10', '0105', '8ES4TDz4FAXh', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (826, 'TIARA KIRANA NUR', '085248813131', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Pengelola Pengadaan Barang/Jasa', '20-11-2019, 3:58 am', '10', '0067', 'sPVpzT3Ln0V0', '2019', '911', 'Tenaga Teknis', '20');
INSERT INTO `buku_tamu` VALUES (827, 'ARIEF MOHAMMAD PRIBADI', '081253355518', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Perancang Peraturan Perundang-undangan', '20-11-2019, 3:59 am', '10', '0068', 'eMu5Nao82v12', '2019', '911', 'Tenaga Teknis', '20');
INSERT INTO `buku_tamu` VALUES (828, 'RISMA HAFSARI', '082255294296', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Pranata Laboratorium Kesehatan', '20-11-2019, 4:00 am', '10', '0106', 'ToDadqjNBydb', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (829, 'MELYANI IKHSANA', '087773948230', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Pranata Laboratorium Kesehatan', '20-11-2019, 4:01 am', '10', '0107', '3O29bv930E8O', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (830, 'NURHALISA', '081549234538', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '20-11-2019, 4:01 am', '10', '0108', '2p1Z4KYbILdU', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (831, 'ELYANI RAHMI KHOIRINI', '0895401176569', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '20-11-2019, 4:02 am', '10', '0109', '1SBb7gRF703M', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (832, 'NADIROH HUMAIROH', '089686833639', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Analis Keuangan Pemerintah Pusat dan Daerah', '20-11-2019, 4:03 am', '10', '0069', 'W56gx424xcEz', '2019', '911', 'Tenaga Teknis', '20');
INSERT INTO `buku_tamu` VALUES (833, 'SRI WAHYUNI', '089690864188', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Analis Keuangan Pemerintah Pusat dan Daerah', '20-11-2019, 4:04 am', '10', '0070', 'zFL4jR2U6Vma', '2019', '911', 'Tenaga Teknis', '20');
INSERT INTO `buku_tamu` VALUES (834, 'RESTU YULINDA RINI', '082154440529', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Epidemiolog Kesehatan', '20-11-2019, 4:05 am', '10', '0110', 'vBUD62hLqEV4', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (835, 'SITI NUR SA''DA', '082255610402', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Penyuluh Kesehatan Masyarakat', '20-11-2019, 4:05 am', '10', '0111', '5KNb5C1SyXLL', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (836, 'EVITA SORAYA', '08195692963', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Analis Keuangan Pemerintah Pusat dan Daerah', '20-11-2019, 4:06 am', '10', '0071', '91buWbR0jPKK', '2019', '911', 'Tenaga Teknis', '20');
INSERT INTO `buku_tamu` VALUES (837, 'FRANSISKA ROHMAWATI', '082148511189', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Bahasa Indonesia', '20-11-2019, 4:07 am', '10', '0080', 'bGMFCIPNj6Y3', '2019', '911', 'Tenaga Pendidikan', '20');
INSERT INTO `buku_tamu` VALUES (838, 'HERLIANI', '081346886667', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Asisten Apoteker', '20-11-2019, 4:08 am', '10', '0112', 't95e4gb9XA55', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (839, 'M. ANSHARI', '085393001409', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Penjasorkes', '20-11-2019, 4:09 am', '10', '0081', 'Uq5o5hQ4yy94', '2019', '911', 'Tenaga Pendidikan', '20');
INSERT INTO `buku_tamu` VALUES (840, 'ARNI YULIANTI', '081253102689', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Analis Keuangan Pemerintah Pusat dan Daerah', '20-11-2019, 4:10 am', '10', '0072', '5arEuNY39N2D', '2019', '911', 'Tenaga Teknis', '20');
INSERT INTO `buku_tamu` VALUES (841, 'RATNAWATI', '081349386815', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Bidan', '20-11-2019, 4:11 am', '10', '0113', 'L23q1q9qSR1C', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (842, 'SATYO HERNAWAN RAMDHAN', '089692607582', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Analis Kemasyarakatan', '20-11-2019, 4:12 am', '10', '0073', '2z59X8DguXBM', '2019', '911', 'Tenaga Teknis', '20');
INSERT INTO `buku_tamu` VALUES (843, 'ZURAIDA FARIDA', '081935342229', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '20-11-2019, 4:13 am', '10', '0082', 'WDdkH19o9WnM', '2019', '911', 'Tenaga Pendidikan', '20');
INSERT INTO `buku_tamu` VALUES (844, 'MAYA MELDANITA', '085248808234', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '20-11-2019, 4:14 am', '10', '0083', '5WV3tBnM35FA', '2019', '911', 'Tenaga Pendidikan', '20');
INSERT INTO `buku_tamu` VALUES (845, 'DEWINTA SETIA HAPPY L', '081392428484', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Analis Kemasyarakatan', '20-11-2019, 4:14 am', '10', '0074', 'By6h3X17uk9A', '2019', '911', 'Tenaga Teknis', '20');
INSERT INTO `buku_tamu` VALUES (846, 'WAHYU NUR HIDAYATI', '082353686003', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Analis Keuangan Pemerintah Pusat dan Daerah', '20-11-2019, 4:16 am', '10', '0075', 'YAHSgSENI7FG', '2019', '911', 'Tenaga Teknis', '20');
INSERT INTO `buku_tamu` VALUES (847, 'NORHALIMAH', '085393298616', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Bidan', '20-11-2019, 4:16 am', '10', '0114', 'mN3Ax91fmeMb', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (848, 'VRESTI ENDAH APRISILYA', '081221781445', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '20-11-2019, 4:18 am', '10', '0115', 'yg0KTvpCciHs', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (849, 'ULFI TAQWANING BEKTI', '089619314332', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Pengelola Anggaran', '20-11-2019, 4:19 am', '10', '0076', '1CbTAt4zy52c', '2019', '911', 'Tenaga Teknis', '20');
INSERT INTO `buku_tamu` VALUES (850, 'NUSRIATUL HIDAYAH', '085251570863', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '20-11-2019, 4:19 am', '10', '0084', '9xEXv4zMUe2U', '2019', '911', 'Tenaga Pendidikan', '20');
INSERT INTO `buku_tamu` VALUES (851, 'MAISYARAH', '085248423322', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '20-11-2019, 4:20 am', '10', '0085', '2C4KV4bJRpkC', '2019', '911', 'Tenaga Pendidikan', '20');
INSERT INTO `buku_tamu` VALUES (852, 'RIZKY MULYANI', '087886457475', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Analis Diklat', '20-11-2019, 4:26 am', '10', '0077', 'o5tp1HK0q48r', '2019', '911', 'Tenaga Teknis', '20');
INSERT INTO `buku_tamu` VALUES (853, 'RAMONA INSYERAH', '082350087174', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Nutrisionis', '20-11-2019, 4:27 am', '10', '0116', 'jydpfdPRea9x', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (854, 'RURI SAWITRI', '085249346795', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Penyuluh Kesehatan Masyarakat', '20-11-2019, 4:28 am', '10', '0117', 'O7Kj7t3xBAYm', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (855, 'MUHAMMAD HUSAINI', '082250525011', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Asisten Apoteker', '20-11-2019, 4:30 am', '10', '0118', 'ik9R2ijJO8hn', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (856, 'FARIDA NURHAYATI', '085393020002', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Pranata Laboratorium Kesehatan', '20-11-2019, 4:31 am', '10', '0119', 'HL45IM7c7DIL', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (857, 'TIKA APRILIANI', '081253980960', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Pranata Laboratorium Kesehatan', '20-11-2019, 4:33 am', '10', '0120', 'zH6G1WxMzBWE', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (858, 'DHITA EKA SEPTIANA', '081347330119', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '20-11-2019, 4:34 am', '10', '0086', '36m89ZbIcyga', '2019', '911', 'Tenaga Pendidikan', '20');
INSERT INTO `buku_tamu` VALUES (859, 'FAIZAL ADI PRASETYO', '082158441368', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Analis Keuangan Pemerintah Pusat dan Daerah', '20-11-2019, 5:03 am', '10', '0078', 'JtUN8z3nz741', '2019', '911', 'Tenaga Teknis', '20');
INSERT INTO `buku_tamu` VALUES (860, 'EMILIA SINTA', '085388866112', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Agama Islam', '20-11-2019, 5:04 am', '10', '0087', '3drh0795sJzd', '2019', '911', 'Tenaga Pendidikan', '20');
INSERT INTO `buku_tamu` VALUES (861, 'FAJAR ANSHARI', '085388866112', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Penjasorkes', '20-11-2019, 5:05 am', '10', '0088', 'vdeTC8LbEzkV', '2019', '911', 'Tenaga Pendidikan', '20');
INSERT INTO `buku_tamu` VALUES (862, 'TIDIE YUSUF ANUGRAH', '085248885518', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Penjasorkes', '20-11-2019, 5:06 am', '10', '0089', 'fDL8PziJO3Ma', '2019', '911', 'Tenaga Pendidikan', '20');
INSERT INTO `buku_tamu` VALUES (863, 'DHITA NOVIANTY', '082150844254', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Asisten Apoteker', '20-11-2019, 5:06 am', '10', '0121', 'pJOz87Pit2ES', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (864, 'RIZKY WULANDARI', '088246038621', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '20-11-2019, 5:07 am', '10', '0090', 'poSTjZN42Hd6', '2019', '911', 'Tenaga Pendidikan', '20');
INSERT INTO `buku_tamu` VALUES (865, 'NURHALISA', '082251712973', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Asisten Apoteker', '20-11-2019, 5:08 am', '10', '0122', 'E45CyUf8cYC8', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (866, 'M. ADDY INDRA HIDAYAT', '085346000097', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Pranata Komputer', '20-11-2019, 5:08 am', 'Saat ini a', '0079', '7MOduukKFen4', '2019', '911', 'Tenaga Teknis', '20');
INSERT INTO `buku_tamu` VALUES (867, 'DINDA NURFITRIA APRIANA', '081257025040', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Apoteker', '20-11-2019, 5:09 am', '10', '0123', 'ROziAjCL7WL5', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (868, 'IRMA HAPSARI', '089691450136', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Apoteker', '20-11-2019, 5:10 am', '10', '0124', 'R15MiaKnIVDn', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (869, 'FITRI RAHAYU', '081258592053', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Pranata Laboratorium Kesehatan', '20-11-2019, 5:11 am', '10', '0125', 'spjfB4MFV0y5', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (870, 'SYAHNUR SRI WAHYUNI', '081265709194', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Dokter', '20-11-2019, 5:15 am', '10', '0126', '5H6uqp9bQqfF', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (871, 'NORMALISA', '081804121228', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '20-11-2019, 5:15 am', '10', '0091', '72Ux15AeL53f', '2019', '911', 'Tenaga Pendidikan', '20');
INSERT INTO `buku_tamu` VALUES (872, 'AMIRUDIN ANSHOR', '081348949598', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Perancang Peraturan Perundang-undangan', '20-11-2019, 5:19 am', '10', '0080', 'B4GP347xmB1b', '2019', '911', 'Tenaga Teknis', '20');
INSERT INTO `buku_tamu` VALUES (873, 'WINDA ROLYANDETY', '087840587090', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '20-11-2019, 5:20 am', '10', '0092', '9Wu9a35sAK3Y', '2019', '911', 'Tenaga Pendidikan', '20');
INSERT INTO `buku_tamu` VALUES (874, 'MARTIANA', '089626989114', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '20-11-2019, 5:20 am', '10', '0093', '5D59C0s8J9fW', '2019', '911', 'Tenaga Pendidikan', '20');
INSERT INTO `buku_tamu` VALUES (875, 'ANNAZEA MUTTAQIAH', '081224539007', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '20-11-2019, 5:21 am', '10', '0094', 'Fx2pjtIZSfM3', '2019', '911', 'Tenaga Pendidikan', '20');
INSERT INTO `buku_tamu` VALUES (876, 'GUSTI RINI NOVIDA SARI', '085754550455', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat Gigi', '20-11-2019, 5:23 am', '10', '0127', 'N4IX77hHRR68', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (877, 'MUHAMMAD SAUKANI', '085754550455', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '20-11-2019, 5:23 am', '10', '0128', 'hrNNGZusOPJE', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (878, 'MARIANA', '085251582151', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Bidan', '20-11-2019, 5:27 am', '10', '0129', 'Ln0V09QSdAN5', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (879, 'PRITA INDAHMURTI', '082243664050', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Dokter Gigi', '20-11-2019, 5:28 am', '10', '0130', '75pjf4D9dMKk', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (880, 'FIRDAUSI RISKIVIAWINANDA', '082154013103', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Dokter', '20-11-2019, 5:29 am', '10', '0131', 'Qm9Ik3vekt1H', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (881, 'MOH. DAUDI HEYKAL', '082295122165', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Perancang Peraturan Perundang-undangan', '20-11-2019, 5:31 am', '10', '0081', '4GP347xmB1b5', '2019', '911', 'Tenaga Teknis', '20');
INSERT INTO `buku_tamu` VALUES (882, 'MUHAMMAD HENDRA ADI S', '081258344891', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Penjasorkes', '20-11-2019, 5:32 am', '10', '0095', 'DTobOppYhq0X', '2019', '911', 'Tenaga Pendidikan', '20');
INSERT INTO `buku_tamu` VALUES (883, 'DAHLIA', '081258344891', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '20-11-2019, 5:32 am', '10', '0096', 'zhOhzEr4rM3r', '2019', '911', 'Tenaga Pendidikan', '20');
INSERT INTO `buku_tamu` VALUES (884, 'ANWAR NOOR', '085388606611', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '20-11-2019, 5:34 am', '10', '0132', 'AVMTo448n5d4', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (885, 'MUHAMMAD FAJRIN HIDAYAT', '081350060026', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Pranata Komputer', '20-11-2019, 5:36 am', '10', '0082', 'Iuj7e992CuTx', '2019', '911', 'Tenaga Teknis', '20');
INSERT INTO `buku_tamu` VALUES (886, 'SASMI RIYAN DANI', '081250177023', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Pranata Komputer', '20-11-2019, 5:42 am', '10', '0083', 'RVx383p85vaX', '2019', '911', 'Tenaga Teknis', '20');
INSERT INTO `buku_tamu` VALUES (887, 'NURUL QAMARIAH', '085348554772', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '20-11-2019, 5:50 am', '10', '0097', 'gU3d64nqKqfA', '2019', '911', 'Tenaga Pendidikan', '20');
INSERT INTO `buku_tamu` VALUES (888, 'NORMIATI', '082150152828', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Analis Keuangan Pemerintah Pusat dan Daerah', '20-11-2019, 5:51 am', '10', '0084', 'fJ49gTCrHGeU', '2019', '911', 'Tenaga Teknis', '20');
INSERT INTO `buku_tamu` VALUES (889, 'MUTIA SAFITRI', '085251755700', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Apoteker', '20-11-2019, 5:53 am', '10', '0133', 'acMN7Zy8oab1', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (890, 'DWI SULISTIYANI', '081283052914', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Bidan', '20-11-2019, 6:02 am', '10', '0134', 'cy38JEhz522K', '2019', '911', 'Tenaga Kesehatan', '20');
INSERT INTO `buku_tamu` VALUES (891, 'ARY TAUFIK RAHMAN', '082277859336', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '20-11-2019, 6:04 am', '10', '0098', 'KMYgS5uWV6M8', '2019', '911', 'Tenaga Pendidikan', '20');
INSERT INTO `buku_tamu` VALUES (892, 'MUHAMAD FERIDIK FAJAR', '082256049855', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Penjasorkes', '20-11-2019, 6:10 am', '10', '0099', '1MEWzh6ogon3', '2019', '911', 'Tenaga Pendidikan', '20');
INSERT INTO `buku_tamu` VALUES (893, 'SA''DA', '081251418158', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Analis Keuangan Pemerintah Pusat dan Daerah', '20-11-2019, 6:13 am', '10', '0085', 'v8bB95RHtB8X', '2019', '911', 'Tenaga Teknis', '20');
INSERT INTO `buku_tamu` VALUES (894, 'NURAIDA', '082357269552', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '20-11-2019, 6:22 am', '10', '0100', 'RtcvmOqraDzB', '2019', '911', 'Tenaga Pendidikan', '20');
INSERT INTO `buku_tamu` VALUES (895, 'NOVITA ANDRIYANI', '082197674217', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '20-11-2019, 6:28 am', '10', '0101', '8jqCH5CP9Tdt', '2019', '911', 'Tenaga Pendidikan', '20');
INSERT INTO `buku_tamu` VALUES (896, 'RIZKHA AMARIL', '082254543434', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Pranata Komputer', '20-11-2019, 6:32 am', '10', '0086', 'gbGMFCIPNj6Y', '2019', '911', 'Tenaga Teknis', '20');
INSERT INTO `buku_tamu` VALUES (897, 'NUR LATIFAH', '085705274487', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Analis Keuangan Pemerintah Pusat dan Daerah', '20-11-2019, 6:52 am', '10', '0087', 't1jJ839pM8xU', '2019', '911', 'Tenaga Teknis', '20');
INSERT INTO `buku_tamu` VALUES (898, 'NIZAR RIYADI RAHMAN', '085332204040', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Teknik Pengairan', '20-11-2019, 6:56 am', '10', '0088', 'Dgu3k99P8ES4', '2019', '911', 'Tenaga Teknis', '20');
INSERT INTO `buku_tamu` VALUES (899, 'ENNY MUJTAHIDAH', '081351388814', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Pengelola Pengadaan Barang/Jasa', '20-11-2019, 6:57 am', '10', '0089', 'cq6dTe2dQ6B1', '2019', '911', 'Tenaga Teknis', '20');
INSERT INTO `buku_tamu` VALUES (900, 'SULAIMAN IBERAHIM', '4687686', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Agama Islam', '20-11-2019, 11:44 pm', '10', '0102', '3yf5xq69hiVq', '2019', '911', 'Tenaga Pendidikan', '20');
INSERT INTO `buku_tamu` VALUES (901, 'DIKA DIAMONIDI', '082255025029', 'angan Pemerintah Pusat dan Daerah', '21-11-2019, 12:01 am', '10', '0001', '94no6zez78S1', '2019', '911', 'Tenaga Teknis', '21');
INSERT INTO `buku_tamu` VALUES (902, 'ANIS FATIHA', '081159433051', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Penyuluh Kesehatan Masyarakat', '21-11-2019, 12:01 am', '10', '0001', 'jLRiyW3b7D27', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (903, 'NOVIANA RAHDIATI', '081350064649', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Analis Diklat', '21-11-2019, 12:04 am', '10', '0002', 'mdykMDZ1Kppy', '2019', '911', 'Tenaga Teknis', '21');
INSERT INTO `buku_tamu` VALUES (904, 'HUSNUL KHATIMAH', '081345249723', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Bahasa Indonesia', '21-11-2019, 12:14 am', '10', '0001', '1pqVj6EFCjrq', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (905, 'SITI MAHMUDAH', '0831425271940', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '21-11-2019, 12:14 am', '10', '0002', 'MgZo8PXv18sz', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (906, 'MILA SHAUFIAH', '082357049888', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '21-11-2019, 12:15 am', '10', '0002', 'Lt6L984317LW', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (907, 'ANA RIYANTI', '089648351221', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '21-11-2019, 12:15 am', '10', '0003', 's5q18PJPfCJ1', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (908, 'AHSANUR RIJAL', '083155854468', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Agama Islam', '21-11-2019, 12:16 am', '10', '0004', 'PuLXPIJIv1RA', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (909, 'ZAKARIA FERMANA', '082244331195', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '21-11-2019, 12:16 am', '10', '0005', 'zt3d5nSPHnHC', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (910, 'RUSMILA MAULIDA', '085753512674', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '21-11-2019, 12:17 am', '10', '0006', '7s624q3TWY6A', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (911, 'NANI WARDANI', '085245424249', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Bahasa Indonesia', '21-11-2019, 12:17 am', '10', '0007', '8ErxdD2JZ8uL', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (912, 'YATI HARDIYANTI P', '085345659999', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Analis Diklat', '21-11-2019, 12:18 am', '10', '0003', 'Mj3Vqv6t7a8t', '2019', '911', 'Tenaga Teknis', '21');
INSERT INTO `buku_tamu` VALUES (913, 'ALIN MAS ALIYAH', '082148014447', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Bidan', '21-11-2019, 12:19 am', '10', '0003', '94o5o5tZmas9', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (914, 'NORLIANSYAH', '085349770630', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Agama Islam', '21-11-2019, 12:19 am', '10', '0008', 'U9aO694z1cCg', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (915, 'M. FITRIYADI', '0822508068687', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '21-11-2019, 12:20 am', '10', '0004', '5zymi6f7fd9I', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (916, 'MUHAMMAD TAUFIK', '082353060190', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Penjasorkes', '21-11-2019, 12:20 am', '10', '0009', 's7gO7rAecQv4', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (917, 'SAUDAH', '082351261341', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Analis Keuangan Pemerintah Pusat dan Daerah', '21-11-2019, 12:21 am', '10', '0004', 'sjFBU8rg5UYZ', '2019', '911', 'Tenaga Teknis', '21');
INSERT INTO `buku_tamu` VALUES (918, 'RISSA', '087886945407', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '21-11-2019, 12:22 am', '10', '0010', 'J31ye88M3S8I', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (919, 'LESKA WAHYUNI', '085705838047', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '21-11-2019, 12:22 am', '10', '0011', 'sXOF9Z7n6Sea', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (920, 'APRODITHA', '087877112489', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '21-11-2019, 12:23 am', '10', '0012', 'btBzq4QHH4N6', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (921, 'APRILIYANA NAVRATILOVA', '082153130707', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '21-11-2019, 12:24 am', '10', '0013', 'ed5rV54OXdEq', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (922, 'WIDYA PUTRI UTAMI', '082358287434', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '21-11-2019, 12:24 am', '10', '0014', 'c8pCH98L8I69', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (923, 'AMALIA NAFISAH', '088258089298', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '21-11-2019, 12:25 am', '10', '0015', 'ZZFXtct3Kpk5', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (924, 'RISMA KHAIRIAH', '081545072463', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Bahasa Indonesia', '21-11-2019, 12:26 am', '10', '0016', 'jgtjEmFSuyq8', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (925, 'ANIISA SHALEHAH', '08115134292', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Apoteker', '21-11-2019, 12:27 am', '10', '0005', 'b3Z8hGH4WV8V', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (926, 'MAYA APRIANTI', '082350510600', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '21-11-2019, 12:27 am', '10', '0017', 'DJ7f3GcPdi3V', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (927, 'LILY RAHMAWATI', '085251380611', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '21-11-2019, 12:28 am', '10', '0018', 'D8gC6DIJ9XFX', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (928, 'MARIANA ANDERIANI', '085100208804', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Epidemiolog Kesehatan', '21-11-2019, 12:28 am', '10', '0006', 'm8HpKq2su1zQ', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (929, 'SARINAH', '085345310835', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Bidan', '21-11-2019, 12:29 am', '10', '0007', '0hDoTus1B51F', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (930, 'JAMIATUL', '082253358795', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Epidemiolog Kesehatan', '21-11-2019, 12:30 am', '10', '0008', '8cR0aZWo62V6', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (931, 'RAHMAWATI', '089691587955', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '21-11-2019, 12:30 am', '10', '0019', 'FR5Za58nE0fq', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (932, 'NORMAWATI', '0895705035285', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '21-11-2019, 12:30 am', '10', '0020', 'LKDQhh7e9RI5', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (933, 'MUHAMMAD ANDRIANI', '085248011886', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '21-11-2019, 12:31 am', '10', '0021', '8ESBKdU82V9v', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (934, 'RAHMAD WAHYUDI', '085750587210', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '21-11-2019, 12:32 am', '10', '0022', 'QZSEYKzdub4v', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (935, 'METTA GIOVANI', '081357051403', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Bidan', '21-11-2019, 12:32 am', '10', '0009', 'FZb0LXmP9bc2', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (936, 'RISQI HAYATI HS', '081253769090', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Bahasa Indonesia', '21-11-2019, 12:33 am', '10', '0023', 'MThWPPB758m1', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (937, 'M. LIZYAR RUSMANI', '082350956174', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '21-11-2019, 12:34 am', '10', '0024', 'mT1BkWyBtYY4', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (938, 'SAHDIANANNOR', '05482', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Penjasorkes', '21-11-2019, 12:34 am', '10', '0025', '6d2773eECeV6', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (939, 'MAYA OKTARINI', '085332177832', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Pranata Laboratorium Kesehatan', '21-11-2019, 12:35 am', '10', '0010', 'MD3Ok1uqpEKu', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (940, 'FARADILLA IEDLIANY', '081255099422', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Analis Kemasyarakatan', '21-11-2019, 12:36 am', '10', '0005', '8jm0V9BE9J2J', '2019', '911', 'Tenaga Teknis', '21');
INSERT INTO `buku_tamu` VALUES (941, 'SRI WIDARTI', '082351901343', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Pranata Laboratorium Kesehatan', '21-11-2019, 12:36 am', '10', '0011', '2J3OQoe13E3f', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (942, 'TEMI AKBAR', '083141416199', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Pranata Laboratorium Kesehatan', '21-11-2019, 12:38 am', '10', '0012', '68r3Z2Zk2PMd', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (943, 'WAHYUNI PUJI SJ', '081254288272', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '21-11-2019, 12:39 am', '10', '0026', 'r6mhKdSYGUqE', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (944, 'ANGGIE RISNA V', '081250473484', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat Gigi', '21-11-2019, 12:39 am', '10', '0013', 'MrnSy67ZsT8z', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (945, 'AULIA RAHMAH', '082157088506', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat Gigi', '21-11-2019, 12:40 am', '10', '0014', 'XG6vvfYxMzJN', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (946, 'NOR AIDA AGUSTINA', '085218150979', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Epidemiolog Kesehatan', '21-11-2019, 12:42 am', '10', '0015', 'y5jaGBH5mnxx', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (947, 'GUSTI RIDHA AHDA P', '0853329301600', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '21-11-2019, 12:42 am', '10', '0027', '7k1czrMZn7NF', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (948, 'DWI LIS STIANI', '081952777887', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Bidan', '21-11-2019, 12:43 am', '10', '0016', '98AOiLIv12Fa', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (949, 'FARIDAH', '081253336585', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '21-11-2019, 12:44 am', '10', '0028', 'tqDy7mZv46U6', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (950, 'JULIANA AFRIHANI', '08961868834', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '21-11-2019, 12:44 am', '10', '0029', 'aVJD49O32T41', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (951, 'ATINA LUTHPIA', '08989090979', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '21-11-2019, 12:45 am', '10', '0030', 't3d5nSPHnHC0', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (952, 'MUHAMMAD BUDI SETIAWAN', '083141320009', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '21-11-2019, 12:45 am', '10', '0031', 'x1Pgu7PiHIr6', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (953, 'SITI PATIMAH', '085248141929', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Perawat', '21-11-2019, 12:46 am', '10', '0017', 'MzSGS3yf5xq6', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (954, 'NUR BAITILLAH', '087816550331', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '21-11-2019, 12:46 am', '10', '0032', 'dG6hVcG8TB7B', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (955, 'RUSDIANA HARDIYANTI', '087715557444', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '21-11-2019, 12:47 am', '10', '0033', 'rdVFD14gb7Va', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (956, 'DWIKI HENDRA SAFITRI', '085345445447', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Penjasorkes', '21-11-2019, 12:47 am', '10', '0034', 'xV54nrRqhM35', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (957, 'NOR ASNI FEBRIYANI', '0895700503443', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Analis Keuangan Pemerintah Pusat dan Daerah', '21-11-2019, 12:48 am', '10', '0006', 'tp2Wd25AuYhq', '2019', '911', 'Tenaga Teknis', '21');
INSERT INTO `buku_tamu` VALUES (958, 'DEVI PUSPITA HANDAYANI', '08981375848', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Dokter Gigi', '21-11-2019, 12:49 am', '10', '0018', 'mEThfnG55Ry6', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (959, 'ENDAH YUSLIANA SARI', '081911982298', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '21-11-2019, 12:49 am', '10', '0019', 'v8K2p6PhrE3E', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (960, 'NOUR RISSA HANDAYANI', '082154131599', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Bidan', '21-11-2019, 12:50 am', '10', '0020', '5S88cjGAxN9H', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (961, 'RINI AGUSTINA', '089655598778', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Bidan', '21-11-2019, 12:50 am', '10', '0021', 'zQALkrqg2BsR', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (962, 'FITRIANI', '085251107171', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '21-11-2019, 12:51 am', '10', '0035', 's2o9Ek465MQ9', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (963, 'SITI NURLAILA', '082240546558', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '21-11-2019, 12:51 am', '10', '0022', 'fYr2b3h0bnRL', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (964, 'NUR ZAKIAH', '085109566060', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Penyuluh Kesehatan Masyarakat', '21-11-2019, 12:52 am', '10', '0023', 'Z95qxOe2NL6s', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (965, 'THOFAN THOMAS PUTRA', '085248376062', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '21-11-2019, 12:53 am', '10', '0024', 'hDF5CvBf46b9', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (966, 'PRIMA', '081808081380', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Bahasa Indonesia', '21-11-2019, 12:53 am', '10', '0036', 'cXEhdvO9C9Jv', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (967, 'RAHMAT SALEH', '0895341034089', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '21-11-2019, 12:54 am', '10', '0037', '7I5VVJV8UF4A', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (968, 'AYU OCTAVIANA DEWI', '081251229050', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Analis Keuangan Pemerintah Pusat dan Daerah', '21-11-2019, 12:54 am', '10', '0007', 'b1epd01CtPuH', '2019', '911', 'Tenaga Teknis', '21');
INSERT INTO `buku_tamu` VALUES (969, 'DINA APRINA', '089646619776', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '21-11-2019, 12:55 am', '10', '0038', '5pb6pn8x71yD', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (970, 'WAHYUDA', '085391374422', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '21-11-2019, 12:55 am', '10', '0039', 'FG1y6E3W3mDW', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (971, 'NURLATIFAH', '082335836684', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '21-11-2019, 12:56 am', '10', '0040', 'LG42VLEf5A10', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (972, 'RATIH KOMALA SARI', '085251641827', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Penyuluh Kesehatan Masyarakat', '21-11-2019, 12:57 am', '10', '0025', 'L2F3uhuV2x7O', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (973, 'KARINA', '08235848404', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '21-11-2019, 12:57 am', '10', '0041', 'OXUZxpI3YAEB', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (974, 'WENI SEPTIA ANGGREINI', '085345304363', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '21-11-2019, 12:58 am', '10', '0042', '38P6XaPmJ4CH', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (975, 'HERLINA', '082153616413', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '21-11-2019, 12:58 am', '10', '0043', 'HsLTa5Bq5N5X', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (976, 'MUHAMMAD AKLANI', '085251001920', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '21-11-2019, 12:59 am', '10', '0044', '2TLfTT7vMSdU', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (977, 'SITI MAISYARAH', '0833131217163', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Analis Keuangan Pemerintah Pusat dan Daerah', '21-11-2019, 12:59 am', '10', '0008', 'OysSsaDFymBO', '2019', '911', 'Tenaga Teknis', '21');
INSERT INTO `buku_tamu` VALUES (978, 'ASTRIA AGUSTINA', '081250713173', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '21-11-2019, 1:00 am', '10', '0026', 'jj2agL5g5JBI', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (979, 'FATMAWATI FITRIANA. ZH', '081953688700', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '21-11-2019, 1:01 am', '10', '0045', 'jSqEKGkbMYG2', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (980, 'AYU CHAIRUNISSA', '081256723030', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Perancang Peraturan Perundang-undangan', '21-11-2019, 1:02 am', '10', '0009', 'Ysa4eJkQQ1Qx', '2019', '911', 'Tenaga Teknis', '21');
INSERT INTO `buku_tamu` VALUES (981, 'SITI AISYAH', '087816166907', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '21-11-2019, 1:03 am', '10', '0046', '55cf9s4d9L1R', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (982, 'DORA UNAWEKLA', '085254102919', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '21-11-2019, 1:04 am', '10', '0047', 'ufvOGK0j7T5g', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (983, 'UMI HALISAH DINA', '081254952572', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Analis Perencanaan Wilayah Perumahan', '21-11-2019, 1:04 am', '10', '0010', 'pYAEJPNaokEK', '2019', '911', 'Tenaga Teknis', '21');
INSERT INTO `buku_tamu` VALUES (984, 'YOSPA NOVIA NITA', '085249397372', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Penyuluh Kesehatan Masyarakat', '21-11-2019, 1:05 am', '10', '0027', 'H9yb33By6h3X', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (985, 'RIZKY FADIANTI', '081257812205', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Dokter', '21-11-2019, 1:06 am', '10', '0028', '2r3PfjB6fG2O', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (986, 'HERIYADI', '081253852613', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Perancang Peraturan Perundang-undangan', '21-11-2019, 1:06 am', '10', '0011', 'UnVNij68yaxb', '2019', '911', 'Tenaga Teknis', '21');
INSERT INTO `buku_tamu` VALUES (987, 'SILVI PUTRI IRAWATI', '085249452777', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Apoteker', '21-11-2019, 1:07 am', '10', '0029', 'qauertu46STR', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (988, 'AHMAD MUIN', '082153607140', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Epidemiolog Kesehatan', '21-11-2019, 1:07 am', '10', '0030', 'jY8ucv1aesmu', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (989, 'ELLYYANTI', '087841261929', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '21-11-2019, 1:08 am', '10', '0048', 'aDtQ60QtLX58', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (990, 'YANNITA RESTIANI', '082148627829', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Epidemiolog Kesehatan', '21-11-2019, 1:08 am', '10', '0031', 'ovAVV8eUZnii', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (991, 'AYU WULANDARI', '082234133188', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '21-11-2019, 1:09 am', '10', '0032', '11uXJKxqx1cC', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (992, 'RABIATUL ADAWIYAH', '081351009868', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Agama Islam', '21-11-2019, 1:10 am', '10', '0049', 'h4uQz2i18123', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (993, 'NUR HIDAYAH', '089692546676', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Bahasa Indonesia', '21-11-2019, 1:10 am', '10', '0050', '5WMC4uz3n3RM', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (994, 'JULIANA RAISITA', '082254545227', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '21-11-2019, 1:11 am', '10', '0051', 'jj8OG7sZImN8', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (995, 'DIAN NURANI', '082150094373', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Asisten Apoteker', '21-11-2019, 1:11 am', '10', '0033', 'GOuWXK89K0Y2', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (996, 'EKA SUDARWATI', '082255257534', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '21-11-2019, 1:11 am', '10', '0052', 'PKbh8QoX41eK', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (997, 'RIPANI', '082128401330', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Penjasorkes', '21-11-2019, 1:12 am', '10', '0053', 'D3NUePs6zKTH', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (998, 'NUR HUMAIROH', '0895635557171', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Apoteker', '21-11-2019, 1:13 am', '10', '0034', 'TVkcBj8Xo18O', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (999, 'LAILI RAHMI', '082352649070', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Bidan', '21-11-2019, 1:13 am', '10', '0035', 'MW2E0ojt251e', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1000, 'DWI WINDA PUSPITA', '0895803751717', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Bahasa Indonesia', '21-11-2019, 1:14 am', '10', '0054', 'aBiT39K53i4u', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (1001, 'UMI WINDA YULIANTIKA', '087815252508', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '21-11-2019, 1:15 am', '10', '0055', '66b6i7T9EZ1M', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (1002, 'NOVRIYANTI ERLINDA P', '085245581117', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '21-11-2019, 1:15 am', '10', '0056', '4T4KyXUum161', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (1003, 'M. AMIRULLAH', '085251994907', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Epidemiolog Kesehatan', '21-11-2019, 1:16 am', '10', '0036', 'DKb2C4KV4bJR', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1004, 'RIFA HALIMAH', '087753937893', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '21-11-2019, 1:17 am', '10', '0057', 'ZrEG8MJsvco1', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (1005, 'TRIYANA', '085251662344', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Analis Keuangan Pemerintah Pusat dan Daerah', '21-11-2019, 1:17 am', '10', '0012', 'RqYt9428aQDr', '2019', '911', 'Tenaga Teknis', '21');
INSERT INTO `buku_tamu` VALUES (1006, 'ADE BUDIMAN', '085249720234', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Analis Diklat', '21-11-2019, 1:18 am', '10', '0013', '5IM7c7DILdJ8', '2019', '911', 'Tenaga Teknis', '21');
INSERT INTO `buku_tamu` VALUES (1007, 'RIADUL JANNAH', '081258355150', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Analis Keuangan Pemerintah Pusat dan Daerah', '21-11-2019, 1:19 am', '10', '0014', 'g129M8P69VCB', '2019', '911', 'Tenaga Teknis', '21');
INSERT INTO `buku_tamu` VALUES (1008, 'MUHAMMAD REDHANI HAFIZ', '0895700282301', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '21-11-2019, 1:20 am', '10', '0037', '7y87yEO1Hnor', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1009, 'YATI', '085251272828', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Bidan', '21-11-2019, 1:20 am', '10', '0038', 'QvDmAyK5X6A2', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1010, 'SELFIRAHIDAYAH', '08195698916', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Asisten Apoteker', '21-11-2019, 1:22 am', '10', '0039', 'T3sGm8O8g1z1', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1011, 'RENNY', '082351191695', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Asisten Apoteker', '21-11-2019, 1:22 am', '10', '0040', 'rtu46STRX137', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1012, 'NURUL SHADIKA K', '082255525420', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Asisten Apoteker', '21-11-2019, 1:24 am', '10', '0041', 'aM32FIr8digo', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1013, 'KHOIRI YUNI F', '082213565706', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Asisten Apoteker', '21-11-2019, 1:24 am', '10', '0042', 'A1Y0KCgfOt8z', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1014, 'RINI FRISKA RAHAYU', '08978849985', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '21-11-2019, 1:25 am', '10', '0043', 'mi6f7fd9I4yI', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1015, 'GITA AYU APRIANTI', '085348020393', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Apoteker', '21-11-2019, 1:26 am', '10', '0044', 'LoTg8pVY6JKM', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1016, 'REFI MHADITYA', '085250431525', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Epidemiolog Kesehatan', '21-11-2019, 1:26 am', '10', '0045', 'khT94N26889S', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1017, 'NORHALIFAH', '081250005414', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Apoteker', '21-11-2019, 1:27 am', '10', '0046', 'Fj5z8sks75Yj', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1018, 'IKA RAHMAH', '081257965554', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Perawat', '21-11-2019, 1:28 am', '10', '0047', 'uUFbSxTB7Jf0', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1019, 'SAMANTHA REYHAN R', '081251262021', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Perawat', '21-11-2019, 1:28 am', '10', '0048', '2AxvqukTgS2p', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1020, 'IHDA MUNIRAH', '087806844377', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '21-11-2019, 1:29 am', '10', '0058', 'cG4F7ZALdkjz', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (1021, 'MIA ZULVINA', '000', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Epidemiolog Kesehatan', '21-11-2019, 1:29 am', '10', '0049', 'pXkFkubBq9u8', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1022, 'LULU NOVIA ENDAH R', '082295210505', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Epidemiolog Kesehatan', '21-11-2019, 1:29 am', '10', '0050', '44248Cj834RR', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1023, 'PAIJAH', '081528681140', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '21-11-2019, 1:30 am', '10', '0051', 'QJbq8dZNOn79', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1024, 'MUHAMMAD LUTHFI', '081255522631', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '21-11-2019, 1:31 am', '10', '0052', 'a1nBxu6Lu22g', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1025, 'HAFIZHOH NUR A', '08991191211', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Asisten Apoteker', '21-11-2019, 1:32 am', '10', '0053', 'RTjXu01t6ff3', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1026, 'VIRGINIA AGUSTINE', '08', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Pranata Komputer', '21-11-2019, 1:32 am', '10', '0015', 'JRGnc67D4a07', '2019', '911', 'Tenaga Teknis', '21');
INSERT INTO `buku_tamu` VALUES (1027, 'SITI SHOLIKAH', '082253527850', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Bahasa Indonesia', '21-11-2019, 1:33 am', '10', '0059', 'doiBiKHFjPbf', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (1028, 'SUMAIYAH', '081250523603', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '21-11-2019, 1:34 am', '10', '0060', 'ku8sxSDBaCzv', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (1029, 'FITRI AULIA', '085389633235', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Pranata Laboratorium Kesehatan', '21-11-2019, 1:34 am', '10', '0054', 'e3TZzNjXDdB6', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1030, 'KOMARIYAH', '082153898450', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '21-11-2019, 1:35 am', '10', '0061', '87yEO1Hnorjt', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (1031, 'SITI LISA NURJANNAH', '0895634752651', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '21-11-2019, 1:36 am', '10', '0062', 'UbP2Q4mMpQSz', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (1032, 'YOHANA NENES TALIA', '089674909817', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '21-11-2019, 1:36 am', '10', '0063', 'd22JTHY5Bt2W', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (1033, 'RIKY MARLIADI', '08971427464', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Bahasa Indonesia', '21-11-2019, 1:37 am', '10', '0064', 'yKTv8enO59hJ', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (1034, 'ALI SYAHADAH R', '081528936546', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '21-11-2019, 1:37 am', '10', '0065', '7b3ZkfSY8coe', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (1035, 'ELY ARIANI', '081349551300', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Epidemiolog Kesehatan', '21-11-2019, 1:38 am', '10', '0055', 'FFq43IWSfDdS', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1036, 'HAIDAWATI', '085248091988', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Bidan', '21-11-2019, 1:39 am', '10', '0056', 'c5K111aJ153z', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1037, 'MARNO PRATAMA', '087819993070', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Pranata Laboratorium Kesehatan', '21-11-2019, 1:40 am', '10', '0057', '6fN1026hv8bB', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1038, 'HIKMAH AULIA', '081249662819', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Agama Islam', '21-11-2019, 1:40 am', '10', '0066', '0Iz8oRWt5o5f', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (1039, 'RISTU KHAIRI', '085349298196', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Agama Islam', '21-11-2019, 1:41 am', '10', '0067', 'o03Uzc96ocU7', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (1040, 'YOGI SAM ISNAN', '085248800037', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Analis Keuangan Pemerintah Pusat dan Daerah', '21-11-2019, 1:41 am', '10', '0016', 'zbzOMfV2W09S', '2019', '911', 'Tenaga Teknis', '21');
INSERT INTO `buku_tamu` VALUES (1041, 'NATALIA YANTO', '082154023350', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Analis Diklat', '21-11-2019, 1:42 am', '10', '0017', 'G3gDFm11hU6n', '2019', '911', 'Tenaga Teknis', '21');
INSERT INTO `buku_tamu` VALUES (1042, 'RIZKI ALFIANA RISMA', '081255551607', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Analis Diklat', '21-11-2019, 1:43 am', '10', '0018', '3trbiEsFfjr5', '2019', '911', 'Tenaga Teknis', '21');
INSERT INTO `buku_tamu` VALUES (1043, 'DWI SULISTIYANI', '081283052914', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Bidan', '21-11-2019, 1:43 am', '10', '0058', 'K19FW40JEF1T', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1044, 'SITI RUKAYAH', '085251277966', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Bahasa Indonesia', '21-11-2019, 1:44 am', '10', '0068', '6R4m6EcTAoPb', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (1045, 'AKBAR JAILANI', '082123172683', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Bahasa Indonesia', '21-11-2019, 1:45 am', '10', '0069', 'tXBDAB53IN1p', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (1046, 'SITI AMINAH', '0895338826487', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '21-11-2019, 1:45 am', '10', '0070', 'NeNxsk03dTyx', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (1047, 'HAMDANAH', '0857544554549', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '21-11-2019, 1:46 am', '10', '0071', '9GXANsYc150F', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (1048, 'FITIA ULFA', '0895700440590', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '21-11-2019, 1:46 am', '10', '0072', 'AyGTrc2kP9K7', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (1049, 'MIFTAHUNNISA', '085246248362', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Pranata Laboratorium Kesehatan', '21-11-2019, 1:47 am', '10', '0059', '48T4K16v658j', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1050, 'ZAINAB ROSALINA', '081931320133', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Pranata Laboratorium Kesehatan', '21-11-2019, 1:47 am', '10', '0060', 'GW8UtWMRDSxT', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1051, 'ZULIA NOORLATIFAH', '081349427072', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '21-11-2019, 1:48 am', '10', '0073', 'YE27undsP8V5', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (1052, 'ESTER NOVELLA', '081346840271', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Apoteker', '21-11-2019, 1:48 am', '10', '0061', '385CYQVx1mVo', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1053, 'ADLIANI NASHUHA', '085252244181', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '21-11-2019, 1:49 am', '10', '0074', '4mnraXV6VC8E', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (1054, 'AINAWATI', '082252477191', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '21-11-2019, 1:50 am', '10', '0075', '4N26889Sgk26', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (1055, 'TRI PRASOJO', '085349906614', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Perancang Peraturan Perundang-undangan', '21-11-2019, 1:50 am', '10', '0019', 'QyZsIu7uIXP2', '2019', '911', 'Tenaga Teknis', '21');
INSERT INTO `buku_tamu` VALUES (1056, 'FIRLY NORACHIM', '081349484937', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Epidemiolog Kesehatan', '21-11-2019, 1:51 am', '10', '0062', 'D1v0rD9LGif8', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1057, 'IKA NURNOVIYANTI P', '081250569236', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Asisten Apoteker', '21-11-2019, 1:52 am', '10', '0063', '3tBnM35FA6Gx', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1058, 'NURUL FITHRIAH', '08971117398', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Asisten Apoteker', '21-11-2019, 1:52 am', '10', '0064', 'j9KPExI8S7rC', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1059, 'GUSTI DAHLIANI', '085248379788', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Agama Islam', '21-11-2019, 1:53 am', '10', '0076', 'U87GazL61yMz', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (1060, 'DITA DWI RAHMADHANI', '087810822982', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Dokter', '21-11-2019, 1:53 am', '10', '0065', '8G3Aaf6EL6sp', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1061, 'NAZUAH ULFIE', '082155721828', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '21-11-2019, 1:54 am', '10', '0077', 'kWm5d8W4910G', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (1062, 'RABIATUL ADAWIYAH', '91648881', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '21-11-2019, 1:54 am', '10', '0078', 'Qdfkqe6c329f', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (1063, 'RAHMIYATI', '082352829419', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '21-11-2019, 1:55 am', '10', '0079', 'P8XAfy82O7nC', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (1064, 'SAIDATUL AWALIYAH', '08986168768', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Agama Islam', '21-11-2019, 1:55 am', '10', '0080', 'BJ6Bynf88VmP', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (1065, 'NORITA DWI SARTIKA', '089528730121', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '21-11-2019, 1:56 am', '10', '0066', 'h6Ye9AQ24axp', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1066, 'FEBRINA SUSILAWATI', '085251570638', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Apoteker', '21-11-2019, 1:57 am', '10', '0067', 'QFg0MnebbFP8', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1067, 'MENTARI DWI N', '082255458283', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '21-11-2019, 1:57 am', '10', '0081', 'N7vgyzud0VI2', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (1068, 'YANI MAULINI', '082154078922', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '21-11-2019, 1:58 am', '10', '0068', 'AiYBGzMBsI42', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1069, 'SRI HARYATI', '085349842811', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat Gigi', '21-11-2019, 1:58 am', '10', '0069', '2crr2js362Mv', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1070, 'NIDYA RIZKY SELVERA', '081233671115', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Analis Kemasyarakatan', '21-11-2019, 1:59 am', '10', '0020', 'Jq21WTy1AzXc', '2019', '911', 'Tenaga Teknis', '21');
INSERT INTO `buku_tamu` VALUES (1071, 'RINA DIN AHELMINA', '085753293388', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Pranata Laboratorium Kesehatan', '21-11-2019, 2:00 am', '10', '0070', '1IV19GV1B8NW', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1072, 'LAILATUS SYARIFAH', '081344924785', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Analis Keuangan Pemerintah Pusat dan Daerah', '21-11-2019, 2:01 am', '10', '0021', 'bXY1eEj3eX3R', '2019', '911', 'Tenaga Teknis', '21');
INSERT INTO `buku_tamu` VALUES (1073, 'PRADITA SAESARIA ANDHINI', '082245458776', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Dokter', '21-11-2019, 2:02 am', '10', '0071', 'QbInKtA3Fncz', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1074, 'IRNI RUSILAWATI', '081257355004', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Analis Keuangan Pemerintah Pusat dan Daerah', '21-11-2019, 2:02 am', '10', '0022', 'RY41a7dGz1J5', '2019', '911', 'Tenaga Teknis', '21');
INSERT INTO `buku_tamu` VALUES (1075, 'EKA YULIA W', '082339699909', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Bidan', '21-11-2019, 2:03 am', '10', '0072', 'Bzq4QHH4N6Kv', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1076, 'NOOR HAQ SA''DIAH', '081255285558', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Analis Keuangan Pemerintah Pusat dan Daerah', '21-11-2019, 2:04 am', '10', '0023', 'bKeYxKCXTTYZ', '2019', '911', 'Tenaga Teknis', '21');
INSERT INTO `buku_tamu` VALUES (1077, 'SAFARINA', '085245668286', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Pengelola Anggaran', '21-11-2019, 2:05 am', '10', '0024', '14XWHv5Hu8LO', '2019', '911', 'Tenaga Teknis', '21');
INSERT INTO `buku_tamu` VALUES (1078, 'TIWI YULIANI', '082153066766', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '21-11-2019, 2:05 am', '10', '0073', 'n7I5KTou43Mh', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1079, 'ANJELINA', '087859481947', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '21-11-2019, 2:06 am', '10', '0082', '7mYzED6XRkzI', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (1080, 'NUR LIANI SAPUTRI', '082242268020', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '21-11-2019, 2:06 am', '10', '0083', 'etqupm3Gqi35', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (1081, 'SRI SANTI', '081254476890', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '21-11-2019, 2:07 am', '10', '0074', 'hRzdiGc7nbKM', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1082, 'RIA SUCI MAWATI', '08152089161', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '21-11-2019, 2:07 am', '10', '0075', 'BCx69p44Nt2g', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1083, 'NORMA KIKI RAMADHANI', '085931527681', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '21-11-2019, 2:08 am', '10', '0084', 'Vqv6t7a8tDPA', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (1084, 'YULIA PUSPITASARI', '085398355992', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '21-11-2019, 2:09 am', '10', '0076', 'ZJp4Qr6AKg4M', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1085, 'RAMBO', '085822511084', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Analis Diklat', '21-11-2019, 2:10 am', '10', '0025', 'gAvmOHxHi6rm', '2019', '911', 'Tenaga Teknis', '21');
INSERT INTO `buku_tamu` VALUES (1086, 'GAYATRI IMANARTI', '085787722826', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Bidan', '21-11-2019, 2:10 am', '10', '0077', 'VsPMcbtB2oUr', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1087, 'MEGAWATI', '082255456467', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat Gigi', '21-11-2019, 2:11 am', '10', '0078', '5EuE498caUMT', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1088, 'ROSSY HANDAYANI', '0895338548850', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '21-11-2019, 2:11 am', '10', '0085', 'THhSN4RcDuNh', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (1089, 'REZKI TRI MAYANG SARI', '082153561424', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '21-11-2019, 2:12 am', '10', '0079', '8NN7QJK15ekH', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1090, 'HARIANI SASMITA', '081347184421', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Pranata Laboratorium Kesehatan', '21-11-2019, 2:12 am', '10', '0080', 'fz52RM21o0XS', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1091, 'TARANDIKA KIRANA SARI', '082351892844', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat Gigi', '21-11-2019, 2:13 am', '10', '0081', 'M1To483396fL', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1092, 'MISVI ARSITA', '081254612460', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat Gigi', '21-11-2019, 2:13 am', '10', '0082', 'pNzzunU3JR32', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1093, 'HERI HIDAYAT', '085284393983', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '21-11-2019, 2:14 am', '10', '0086', 'OT8g7W3Tu1q3', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (1094, 'SALADIN', '082250074477', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Agama Islam', '21-11-2019, 2:15 am', '10', '0087', 'gn46CG241W64', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (1095, 'ELISA WIDIASTUTI', '082350173434', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Asisten Apoteker', '21-11-2019, 2:15 am', '10', '0083', 'D2Gion3I2U83', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1096, 'NORLIANA', '082151534903', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '21-11-2019, 2:16 am', '10', '0084', '8IzrG9QLLF1I', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1097, 'ANITA WIDI ASTUTI', '081254750516', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Bidan', '21-11-2019, 2:16 am', '10', '0085', 'IfyzGIrzy5yH', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1098, 'WIWIN ALFIYANTI', '085753265111', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '21-11-2019, 2:17 am', '10', '0086', '2yDItS98u8n5', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1099, 'SRI HELDINA', '081255595695', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Bidan', '21-11-2019, 2:18 am', '10', '0087', 'Yu9mFkpW132M', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1100, 'IKA RIZQI PURNAMA SARI', '087775827828', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Asisten Apoteker', '21-11-2019, 2:18 am', '10', '0088', '6798I45LM7EH', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1101, 'IKA RIZQI PURNAMA SARI', '087775827828', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Asisten Apoteker', '21-11-2019, 2:18 am', '10', '0089', 'q0DeoZy3V6nT', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1102, 'EVA MAWARNI', '087732747050', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Asisten Apoteker', '21-11-2019, 2:19 am', '10', '0090', '8VuCjxXdW5xH', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1103, 'ELVIA APRILIANTI', '089644141553', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Pranata Laboratorium Kesehatan', '21-11-2019, 2:19 am', '10', '0091', 'UkL75e29sBJX', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1104, 'JANNATUN NISA', '083153719937', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Asisten Apoteker', '21-11-2019, 2:20 am', '10', '0092', '4pb1N0E4jWPP', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1105, 'FITRIA NOVA NURYANA', '085245102825', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Analis Keuangan Pemerintah Pusat dan Daerah', '21-11-2019, 2:20 am', '10', '0026', 'RdWPRsjoS5Qx', '2019', '911', 'Tenaga Teknis', '21');
INSERT INTO `buku_tamu` VALUES (1106, 'INTAN PURNAMA SARI', '082255667605', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Pranata Laboratorium Kesehatan', '21-11-2019, 2:21 am', '10', '0093', 'VFpVvZTRxCPI', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1107, 'ELLY ERMAWATI', '081351575235', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '21-11-2019, 2:22 am', '10', '0094', '9C9JvKPL1RVx', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1108, 'NOOR RAHMATULLAH ERIANTO', '0811500124', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana terampil - Sanitarian', '21-11-2019, 2:22 am', '10', '0095', 'zBta8oYJZiMe', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1109, 'AKHMAD TAUFIQURRAHMAN', '085387468686', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Agama Islam', '21-11-2019, 2:23 am', '10', '0088', 'BuD27g23Q580', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (1110, 'WENDY ARDI', '081243596611', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Bahasa Indonesia', '21-11-2019, 2:23 am', '10', '0089', 'R95vjv8U56TW', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (1111, 'MUHAMMAD RIZAL', '085845006895', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Analis Diklat', '21-11-2019, 2:24 am', '10', '0027', 'u4JoM63JTc8p', '2019', '911', 'Tenaga Teknis', '21');
INSERT INTO `buku_tamu` VALUES (1112, 'FAJERIA RIMA HUMAIRA', '085252393779', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Analis Kemasyarakatan', '21-11-2019, 2:24 am', '10', '0028', 'MH28YHY5kRLA', '2019', '911', 'Tenaga Teknis', '21');
INSERT INTO `buku_tamu` VALUES (1113, 'SYAMSUL BAHRI', '085398929599', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Ahli Pertama - Pengelola Pengadaan Barang/Jasa', '21-11-2019, 2:25 am', '10', '0029', 'aa5zPJWtLVi9', '2019', '911', 'Tenaga Teknis', '21');
INSERT INTO `buku_tamu` VALUES (1114, 'DEVI ANNISA FEBRIANA', '081345453656', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Asisten Apoteker', '21-11-2019, 2:26 am', '10', '0096', '4KCMKu9i63sE', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1115, 'WENNY HIMAWATI', '081348691230', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Epidemiolog Kesehatan', '21-11-2019, 2:27 am', '10', '0097', 'xeShNByrD9d4', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1116, 'ESTI WINDARI', '085246323662', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Perawat', '21-11-2019, 2:28 am', '10', '0098', 'DH8v2qAPdX7x', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1117, 'NADYA ALDIANI MULFAH', '087876624711', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Asisten Apoteker', '21-11-2019, 2:28 am', '10', '0099', 'Ry6s5HZpJnIe', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1118, 'NINA LELIYANI', '087816144443', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '21-11-2019, 2:29 am', '10', '0100', '6kkmIV4IBaR1', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1119, 'SRI LESTARI', '085248489037', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Perawat', '21-11-2019, 2:30 am', '10', '0101', 'mP1bbo5WT5Oa', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1120, 'PUTRI DIANA WULANDARI', '081255068695', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Pranata Laboratorium Kesehatan', '21-11-2019, 2:30 am', '10', '0102', 'SqN22mMG30v7', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1121, 'NORMELIYANI', '085654009732', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Asisten Apoteker', '21-11-2019, 2:31 am', '10', '0103', 'GsrVNQIEoCW5', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1122, 'PUTRI AFINA AWWALIAH', '085751025873', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana terampil - Sanitarian', '21-11-2019, 2:31 am', '10', '0104', 't4FSZ3NsNHfh', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1123, 'RAHMAWATI FITRIANI', '085390782975', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Perawat', '21-11-2019, 2:32 am', '10', '0105', 'V6rF8Hk3Dq20', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1124, 'ROHMI FAUZI', '085752776626', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Perawat', '21-11-2019, 2:32 am', '10', '0106', '2HUoi4891U5O', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1125, 'HERNI HAIRIYANI', '083159180810', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat Gigi', '21-11-2019, 2:33 am', '10', '0107', 'XHqZmm7oH775', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1126, 'HASANAH', '085937051562', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '21-11-2019, 2:34 am', '10', '0090', 'efQVne4utXdh', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (1127, 'RUSMAWATI GIRSANG', '085348329383', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat Gigi', '21-11-2019, 2:34 am', '10', '0108', 'o1Sk6nAPf5d7', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1128, 'WELYS KHOLIFAH C', '081233281146', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Bidan', '21-11-2019, 2:35 am', '10', '0109', 'xBc8Qrf6iBXb', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1129, 'SABITA PRIHARTINI W', '087771787040', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '21-11-2019, 2:36 am', '10', '0110', '6BAj1UzFc7r6', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1130, 'DIANA ANINDYA', '082157213192', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '21-11-2019, 2:37 am', '10', '0091', 'A78TfVWNXRiC', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (1131, 'SHALAHUDDIN', '081347816570', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '21-11-2019, 2:37 am', '10', '0092', '8e22Ar1x7xsk', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (1132, 'FARIDA CAECARIANI REZEKY', '081255487444', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Apoteker', '21-11-2019, 2:38 am', '10', '0111', 'td7z9a6gaeIs', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1133, 'FARIDA ARIANI', '085248703545', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Bidan', '21-11-2019, 2:39 am', '10', '0112', 'U0y94LsjHy99', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1134, 'NIRMALA CAHYA ILLAHI', '085345832693', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana terampil - Sanitarian', '21-11-2019, 2:39 am', '10', '0113', 'eX0T80NqEVuI', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1135, 'NASRULLAH', '085754606189', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Asisten Apoteker', '21-11-2019, 2:40 am', '10', '0114', 'E9VXTsjj3m6S', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1136, 'MERLIZA MUTIA', '082251996283', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Penjasorkes', '21-11-2019, 2:41 am', '10', '0093', '67ZsT8zV9k4p', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (1137, 'FATHAN ANSYORI', '089684673526', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '21-11-2019, 2:41 am', '10', '0094', 'B79hZoxBc8Qr', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (1138, 'ATIKAH ASTI FITRINURI', '089691441436', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '21-11-2019, 2:42 am', '10', '0095', 'gEyVC4g5Boii', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (1139, 'DWI ARUM KUSUMA NING', '089657632142', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Asisten Apoteker', '21-11-2019, 2:43 am', '10', '0115', 'E4vmXZJgkoJz', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1140, 'JULPIANA ISMIYANTI', '082353084338', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '21-11-2019, 2:43 am', '10', '0116', 'vLXykVhE9VXT', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1141, 'RIRI NOVY ANDINI', '081347063137', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '21-11-2019, 2:44 am', '10', '0096', 'o88EB28PAZpF', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (1142, 'HENDY RIANTONO ACHMADI P', '085332260212', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Penjasorkes', '21-11-2019, 2:44 am', '10', '0097', '3onz2Pt3Cib3', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (1143, 'TRI NOORHEMY REMILA', '082150888477', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '21-11-2019, 2:45 am', '10', '0098', '20NYX05mMu5E', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (1144, 'AULIA MULIDA PUTRI', '082297190212', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Apoteker', '21-11-2019, 2:46 am', '10', '0117', 'xnFA3oSavi66', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1145, 'DESSY ASTUTI', '081346470005', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Epidemiolog Kesehatan', '21-11-2019, 2:47 am', '10', '0118', '5p01A36kkmIV', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1146, 'NOOR AIDA', '085821326202', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Asisten Apoteker', '21-11-2019, 2:47 am', '10', '0119', 'QNMjXMb7zfcO', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1147, 'NOORJANNAH', '081348000068', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '21-11-2019, 2:48 am', '10', '0120', '1RtFHDbWSF61', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1148, 'HIDAYATULLAH', '085828164541', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Asisten Apoteker', '21-11-2019, 2:48 am', '10', '0121', '7C58qnrPML61', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1149, 'HENDRI', '085754172817', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '21-11-2019, 2:49 am', '10', '0099', 'rnA92MiC2Ycg', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (1150, 'ARPIAH', '081348356400', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Asisten Apoteker', '21-11-2019, 2:50 am', '10', '0122', 'Q9YER3RhtIZk', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1151, 'ERINA TYAS ATIKA SARI', '085348168182', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Asisten Apoteker', '21-11-2019, 2:50 am', '10', '0123', 'UMeYxGax7CE5', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1152, 'NITA MULYANA', '08125682133', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '21-11-2019, 2:51 am', '10', '0100', 'EHfhR675YWqj', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (1153, 'NURRIDHA', '082213894685', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Asisten Apoteker', '21-11-2019, 2:51 am', '10', '0124', 'cO1H6q6PoIuj', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1154, 'YULINAR HADYANTI', '085951144155', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Asisten Apoteker', '21-11-2019, 2:52 am', '10', '0125', '1tT6263C3TpJ', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1155, 'LUTHFIANI NUR SYA''ADAH', '081350597778', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '21-11-2019, 2:53 am', '10', '0126', '54LMNp6sYEj7', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1156, 'NORHAYATI', '089691679670', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Asisten Apoteker', '21-11-2019, 2:53 am', '10', '0127', '43649P2Q41sM', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1157, 'RINA RAHMINA', '085248287555', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Epidemiolog Kesehatan', '21-11-2019, 2:54 am', '10', '0128', '4vCqm3uD5179', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1158, 'NAJMI FARIDA', '08115129303', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '21-11-2019, 2:54 am', '10', '0129', 'CB66b6i7T9EZ', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1159, 'CHINTYA MOLLYNA', '085750746017', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Asisten Apoteker', '21-11-2019, 2:55 am', '10', '0130', '694z1cCgz52E', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1160, 'FUTZI ASTUTI C', '081221029599', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '21-11-2019, 2:56 am', '10', '0131', '1Jk8O4LiaTRO', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1161, 'DESRI WULANDARI', '085366631900', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Epidemiolog Kesehatan', '21-11-2019, 2:56 am', '10', '0132', 'y87221pvtVI7', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1162, 'PITTA ULI GULTOM', '081376727917', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '21-11-2019, 2:57 am', '10', '0133', '4TkLygbbvsOy', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1163, 'ANNISA BANI', '0895340736976', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Asisten Apoteker', '21-11-2019, 2:57 am', '10', '0134', '27VOUEv04tps', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1164, 'ULFAH', '081347613382', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat Gigi', '21-11-2019, 2:58 am', '10', '0135', '0Rm9KPHr3QBm', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1165, 'IKA PANDU SAPUTRI', '083159363111', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Bidan', '21-11-2019, 2:59 am', '10', '0136', 'VM5117Ana7n2', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1166, 'DINA FITRIANA', '082159400200', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Penyuluh Kesehatan Masyarakat', '21-11-2019, 2:59 am', '10', '0137', 'D6Q2i75pjf4D', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1167, 'DINI AKHIRIA', '085249997890', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '21-11-2019, 3:00 am', '10', '0138', 'rKPNCDW8V786', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1168, 'RUDI PERMADI', '085251145042', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '21-11-2019, 3:00 am', '10', '0139', 'O59hJZB4VV3F', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1169, 'NIA INDAH YUNIARTI', '081251847929', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Dokter', '21-11-2019, 3:01 am', '10', '0140', 'qTD8YsmDErBk', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1170, 'MUHAMMAD IRWANDA', '085849552736', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '21-11-2019, 3:01 am', '10', '0101', '2mDfCzojFru3', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (1171, 'HASYMI MAULANA', '082299208296', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '21-11-2019, 3:02 am', '10', '0141', 'dj8QYDLBI93v', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1172, 'YOSA TRI ADHI', '081234509993', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Bahasa Indonesia', '21-11-2019, 3:03 am', '10', '0102', '6aDASQC3c0Fq', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (1173, 'RISSA SAFTIRANTI', '085251677577', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Epidemiolog Kesehatan', '21-11-2019, 3:03 am', '10', '0142', 'Pt865hGcYKzr', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1174, 'RAHMATULLAH', '081218620704', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '21-11-2019, 3:04 am', '10', '0143', '8vPOMW6urK7W', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1175, 'YUDI SETIAWAN', '087816097428', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '21-11-2019, 3:04 am', '10', '0103', '57bOickO5aUX', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (1176, 'LISNA FITRIA SARI', '085751655952', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Penyuluh Kesehatan Masyarakat', '21-11-2019, 3:05 am', '10', '0144', 'NJCXKznfzNaH', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1177, 'NOORMALINA', '085245661794', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '21-11-2019, 3:05 am', '10', '0104', 'pGY5kX40AgDc', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (1178, 'HERMAWAN', '082251363231', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '21-11-2019, 3:06 am', '10', '0105', 'OXdEqLy1U5rI', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (1179, 'ANISA NISVIARISNA', '081224771513', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Epidemiolog Kesehatan', '21-11-2019, 3:07 am', '10', '0145', 'X8UopYoX8Foj', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1180, 'AULYA RICKY RIMBAWAN', '085246443686', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Epidemiolog Kesehatan', '21-11-2019, 3:07 am', '10', '0146', '0t61pqKh2jA7', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1181, 'MAWADDAH', '087816123050', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '21-11-2019, 3:08 am', '10', '0106', 'SvbS1CbTAt4z', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (1182, 'KARTIKA DEWI', '082250019119', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '21-11-2019, 3:08 am', '10', '0107', 'mtmXgUiKLAJj', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (1183, 'GHISKA ALDYNA PUTRI', '082255991622', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Pranata Laboratorium Kesehatan', '21-11-2019, 3:10 am', '10', '0147', '8EZ6FG0nEKM2', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1184, 'MAHANI', '082150184456', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '21-11-2019, 3:10 am', '10', '0148', '3Ax91fmeMbP6', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1185, 'RAHMAWATI', '085754266338', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '21-11-2019, 3:11 am', '10', '0108', '07ZJuYE7d22J', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (1186, 'ASTUTI WAHIDAH', '081245048565', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Bahasa Indonesia', '21-11-2019, 3:11 am', '10', '0109', '2HR91Y9zQALk', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (1187, 'WASANORJANAH', '082150028973', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '21-11-2019, 3:12 am', '10', '0110', 'hqPicna7UfDL', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (1188, 'ELA MUKRIYANTI WARDANI', '085345031117', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '21-11-2019, 3:13 am', '10', '0111', 'txz4dOL8IFIr', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (1189, 'RIZKA AULIA DAHLIYANI', '081348134885', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '21-11-2019, 3:13 am', '10', '0112', 'dF8D5gE0t61p', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (1190, 'MARATUSHSHALEHAH', '085248753344', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '21-11-2019, 3:14 am', '10', '0113', 'G42VLEf5A10u', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (1191, 'RESKI HARI SAPUTRI', '082150412124', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '21-11-2019, 3:14 am', '10', '0114', '9C2rZ98ESBKd', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (1192, 'AGUS PRIYONO', '085348001115', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '21-11-2019, 3:15 am', '10', '0115', 'EKD4qp7Maq2f', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (1193, 'M. HAFIZ ANSHARI', '085950003650', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Asisten Apoteker', '21-11-2019, 3:16 am', '10', '0149', 'TVB3sixp06s5', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1194, 'ANIS WIDI ATI', '087814357444', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Asisten Apoteker', '21-11-2019, 3:16 am', '10', '0150', 'L4mipYzcoCW2', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1195, 'NENENG SUPRASTYO WATI', '081253327996', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Pranata Laboratorium Kesehatan', '21-11-2019, 3:17 am', '10', '0151', 'TIa6OPSiCn4X', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1196, 'YUANITA PRABANDARI', '081348202077', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Pranata Laboratorium Kesehatan', '21-11-2019, 3:18 am', '10', '0152', 'dfkqe6c329fR', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1197, 'SURATNA', '085391620083', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '21-11-2019, 3:18 am', '10', '0153', 'vtMrd1A5b846', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1198, 'VIVI ANDRIA FEBIONA', '081352080392', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '21-11-2019, 3:19 am', '10', '0154', 'Pn2dzhOhzEr4', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1199, 'RIMA SISWANTI', '082254069696', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Epidemiolog Kesehatan', '21-11-2019, 3:20 am', '10', '0155', 'E1GE4jLyX2W0', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1200, 'GISKA HERWINNOMAN HUTAMI', '085285371631', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Bahasa Indonesia', '21-11-2019, 3:21 am', '10', '0116', '8fjSjpYFZVdh', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (1201, 'SUHADA', '085250006012', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '21-11-2019, 3:22 am', '10', '0117', '17Ntd3CNZnup', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (1202, 'NURUL CAHYATI', '081350406900', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Perawat', '21-11-2019, 3:23 am', '10', '0156', '7826YM0h8Wpr', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1203, 'RIEN LAILY', '081937134183', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Bidan', '21-11-2019, 3:24 am', '10', '0157', 'mj61J5uizj7C', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1204, 'NUR FITRIANI AHDY', '082252335332', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Apoteker', '21-11-2019, 3:25 am', '10', '0158', '6J60iFrG98Jm', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1205, 'NANDA ASTRIYATI', '082150070759', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '21-11-2019, 3:26 am', '10', '0118', 'vDygK63Q4Vh9', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (1206, 'DINA MARIYANA', '087815929878', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '21-11-2019, 3:27 am', '10', '0159', '1KuEpX41YUp8', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1207, 'DARIANI', '082251033776', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '21-11-2019, 3:27 am', '10', '0160', '8UtWMRDSxTJ3', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1208, 'PUTRI RANA ANGGRAINI', '085247084332', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '21-11-2019, 3:28 am', '10', '0119', 'f7fd9I4yIk3j', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (1209, 'MAI SAROH', '081250556252', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '21-11-2019, 3:29 am', '10', '0120', '3ve8vNY7d9A6', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (1210, 'ST. KRISNAWATI', '089698287779', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '21-11-2019, 3:29 am', '10', '0121', 'a4bkiu4QvVy4', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (1211, 'SORAYA', '085248008928', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Bidan', '21-11-2019, 3:30 am', '10', '0161', 'zru6CpfUpfd7', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1212, 'LISA YULIANI', '081250090058', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Bidan', '21-11-2019, 3:30 am', '10', '0162', 'VjONah2SJ0j2', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1213, 'SHOFATUL FITRIYAH', '081254658060', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '21-11-2019, 3:31 am', '10', '0122', 'NXjk58YyQF3U', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (1214, 'DIAH ANDINY', '085828812163', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '21-11-2019, 3:32 am', '10', '0123', 'q43IWSfDdSo4', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (1215, 'ARLIS MAHLUFI', '087803468837', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Epidemiolog Kesehatan', '21-11-2019, 3:34 am', '10', '0163', '1BkWyBtYY4e8', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1216, 'RAFIKAH', '085348153324', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Penyuluh Kesehatan Masyarakat', '21-11-2019, 3:35 am', '10', '0164', 'j2r3PfjB6fG2', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1217, 'RUSMILAWATI', '085753840363', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Penyuluh Kesehatan Masyarakat', '21-11-2019, 3:36 am', '10', '0165', '9ZITLYbK37V1', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1218, 'RINA BUDI ASTUTI', '082240000919', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '21-11-2019, 3:37 am', '10', '0124', 'Pc5G25D59C0s', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (1219, 'RESTI RIMA JURAIDA', '082352562110', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Bidan', '21-11-2019, 3:37 am', '10', '0166', 'vohsuQFuLgB4', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1220, 'BAHRUL ILMI', '081350704820', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Penjasorkes', '21-11-2019, 3:38 am', '10', '0125', '5d4u6H71qsMO', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (1221, 'INDAH AMALIA REZKY', '081251224456', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Apoteker', '21-11-2019, 3:38 am', '10', '0167', '9P8DmcSO2ixu', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1222, 'RUMIYANA', '082255473930', 'aru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '21-11-2019, 3:39 am', '10', '0126', 'n1tT6263C3Tp', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (1223, 'HARTATIK NINGSIH', '081352339862', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '21-11-2019, 3:40 am', '10', '0127', 'F1Fm68y78BLh', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (1224, 'NI''MA MAULIDA', '083159886628', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '21-11-2019, 3:41 am', '10', '0128', 'r4rRhY4DEn9s', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (1225, 'MEIRINA EKASARI', '081250434723', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Asisten Apoteker', '21-11-2019, 3:42 am', '10', '0168', '43XjxiUx0JWA', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1226, 'SARI MASTUTI AGUSTIN', '085250616780', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Bidan', '21-11-2019, 3:43 am', '10', '0169', '9DReYnb8GC9n', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1227, 'RIO HERS LAMBANG', '081225745000', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '21-11-2019, 3:43 am', '10', '0170', 'JJIHAD4EQRus', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1228, 'SAID MUHAMMAD YUSUF', '081231575666', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '21-11-2019, 3:44 am', '10', '0171', '6rF8Hk3Dq20G', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1229, 'TSAQIB KHALIDI', '082225604635', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '21-11-2019, 3:44 am', '10', '0172', 'uI151C2NS879', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1230, 'MAR''ATUS SOLEHA', '085248992482', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Bidan', '21-11-2019, 3:45 am', '10', '0173', 'Y0TzLZ3f76fW', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1231, 'MUHAMMAD PRIYADI H', '081345105557', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '21-11-2019, 3:46 am', '10', '0174', 'g30g129M8P69', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1232, 'YULIANA', '0811513366', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Epidemiolog Kesehatan', '21-11-2019, 3:46 am', '10', '0175', 'k5z4J76Gq3a2', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1233, 'HAIRUN NISA', '085248034830', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Asisten Apoteker', '21-11-2019, 3:47 am', '10', '0176', '8WnVYZAq3RG4', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1234, 'RAHMATUS SAIDIYAH', '085248869219', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Asisten Apoteker', '21-11-2019, 3:47 am', '10', '0177', 'y1meDWJM7Hc7', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1235, 'MARTHA KRISTINA', '087803467666', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '21-11-2019, 3:48 am', '10', '0129', 'L802ZjBQGr33', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (1236, 'META WISDAWATI', '08195125164', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Apoteker', '21-11-2019, 3:49 am', '10', '0178', '2BkNJ16qvFvY', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1237, 'RENDRA SEPRIMA', '081347557629', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Perawat', '21-11-2019, 3:49 am', '10', '0179', 'm11hU6nK6190', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1238, 'RATIH ASRI PUSPITASARI', '0822226879747', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Penjasorkes', '21-11-2019, 3:50 am', '10', '0130', 'XogYSfVUumQX', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (1239, 'MIA AUDINA PUTRI', '08115139602', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Bahasa Indonesia', '21-11-2019, 3:51 am', '10', '0131', '2Kgpt1q7ots6', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (1240, 'M. JARKANI', '085336678284', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '21-11-2019, 3:51 am', '10', '0132', '4g5BoiiuMkda', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (1241, 'SRI MARYATI', '082240644414', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Asisten Apoteker', '21-11-2019, 3:52 am', '10', '0180', '88HxEZ6o0XAN', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1242, 'KARIMAH', '081357866530', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '21-11-2019, 3:52 am', '10', '0133', '8vI19F2Ohr5L', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (1243, 'AULIA RUSYADA', '083159644292', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Nutrisionis', '21-11-2019, 3:53 am', '10', '0181', 'jSjZWY4eJ8Z0', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1244, 'M. AZMUL FAUZI', '087755207858', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Penjasorkes', '21-11-2019, 3:53 am', '10', '0134', 'O5s4xHZb0A6b', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (1245, 'RIZNA HERMIYA ULFAH', '083149385122', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Nutrisionis', '21-11-2019, 3:54 am', '10', '0182', 'N5XQMRXyQtL3', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1246, 'ITA SUSANTI', '081528798322', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat Gigi', '21-11-2019, 3:55 am', '10', '0183', '2sNL2AmfB4bz', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1247, 'MURSYIDAH', '089658557006', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '21-11-2019, 3:55 am', '10', '0135', 'P1H2OadHmxO3', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (1248, 'DEWI SARTIKA SARI', '089691462102', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '21-11-2019, 3:56 am', '10', '0136', 'dvO9C9JvKPL1', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (1249, 'KETUT DANI CATUR YANTI', '085248859679', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Perawat', '21-11-2019, 3:57 am', '10', '0184', 'E2Sy61X1y4nj', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1250, 'NADYA ULFA', '081911036628', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat Gigi', '21-11-2019, 3:57 am', '10', '0185', 'S1r7XIPfasa4', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1251, 'FIRDA ENDAH SAFITRI', '081995535953', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat Gigi', '21-11-2019, 3:58 am', '10', '0186', 'gpcJPUqqKjb6', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1252, 'EKA YULIAN SARI', '085393331612', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Bidan', '21-11-2019, 3:58 am', '10', '0187', 'rJtBf4gKWJ42', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1253, 'MUHAMMAD FADLIANOOR', '085251315677', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '21-11-2019, 3:59 am', '10', '0137', 'f0TrJzn2mbbo', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (1254, 'RAUDATUN NISA', '082354896427', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Epidemiolog Kesehatan', '21-11-2019, 3:59 am', '10', '0188', 'mn4OmUn3u48t', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1255, 'MUHAMMAD RIZKI', '089638668088', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Epidemiolog Kesehatan', '21-11-2019, 4:00 am', '10', '0189', 'v04tps38iYQb', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1256, 'DWI MIA JUNITA', '082149911448', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana terampil - Sanitarian', '21-11-2019, 4:01 am', '10', '0190', 'bz1FTOU9HZGd', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1257, 'MARDIYATI', '089612426007', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '21-11-2019, 4:02 am', '10', '0138', 'p7Tmv6A0AXoX', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (1258, 'RAHMATIAH', '089691419809', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Bahasa Indonesia', '21-11-2019, 4:02 am', '10', '0139', '5X2E7br6aYkF', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (1259, 'NINA', '087817942060', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '21-11-2019, 4:03 am', '10', '0140', 'yzbna09T2vnH', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (1260, 'M. REVI ZULFAHNOOR', '082255461745', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '21-11-2019, 4:05 am', '10', '0191', 'FAXhqyH6b5KY', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1261, 'RAHMADI', '081380024455', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Epidemiolog Kesehatan', '21-11-2019, 4:06 am', '10', '0192', '15FzXUG8v7Qy', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1262, 'APRILIA YUSRINA', '081944473998', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '21-11-2019, 4:06 am', '10', '0193', 'UR4mB4GC9B95', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1263, 'RINTO PARDOMUAN SIREGAR', '081251516024', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '21-11-2019, 4:07 am', '10', '0141', 'ZkhsK9UWNgOW', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (1264, 'LUKI', '8855', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Bahasa Indonesia', '21-11-2019, 4:07 am', '10', '0142', 'r2eupPuctJ2d', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (1265, 'MAHENDRA NUR IMAN', '085247993877', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '21-11-2019, 4:08 am', '10', '0143', 'K4yIS8GucHA1', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (1266, 'ANNISA HIDAYATI', '082242813439', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '21-11-2019, 4:08 am', '10', '0144', 'DKMPHOg7d0Ca', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (1267, 'SITI MARHAMAH', '083153625792', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '21-11-2019, 4:09 am', '10', '0145', '7tXkty5arEuN', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (1268, 'AHMAD HUSNI', '082251778314', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '21-11-2019, 4:10 am', '10', '0194', '1O4Ft6P2Poj2', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1269, 'GALUH DJATI NIRMOLO', '085735093737', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Epidemiolog Kesehatan', '21-11-2019, 4:10 am', '10', '0195', 'XOAiNSSUV3Ar', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1270, 'MAINITA RAHIM', '085828144427', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '21-11-2019, 4:11 am', '10', '0146', 's9EJ2G6KQm22', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (1271, 'MARIA ULFAH', '08875115853', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '21-11-2019, 4:12 am', '10', '0147', 'tVjO5R0qBOE1', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (1272, 'DWITA HANNA POETRI', '081254743854', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Epidemiolog Kesehatan', '21-11-2019, 4:13 am', '10', '0196', 'RpkCLYu0ODG4', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1273, 'RINA ROSE ERVANA', '081258439883', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '21-11-2019, 4:13 am', '10', '0148', 'z3n3RMIjVvi8', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (1274, 'SITI AMINAH', '082353332526', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Bahasa Indonesia', '21-11-2019, 4:14 am', '10', '0149', '4R968r0B6xBF', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (1275, 'AIDINA PUTERI', '081284326770', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Epidemiolog Kesehatan', '21-11-2019, 4:14 am', '10', '0197', 'HK0q48rpRUe5', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1276, 'RIA SULIANI', '089678443580', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '21-11-2019, 4:14 am', '10', '0150', 'dvQf7fL53ZP5', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (1277, 'DITA PURNAMASARI', '082160951616', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '21-11-2019, 4:15 am', '10', '0151', 'AxvqukTgS2px', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (1278, 'AQMARINA RAHMI', '081347332127', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '21-11-2019, 4:15 am', '10', '0152', 'O3Macx91UCxp', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (1279, 'DEWI FAHRIYANA', '087815727616', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '21-11-2019, 4:16 am', '10', '0153', 'd7t7RN4jRdLN', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (1280, 'GUSMAN RIANTY', '081253521852', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Bahasa Indonesia', '21-11-2019, 4:16 am', '10', '0154', 'Kg4MZnG7B1UQ', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (1281, 'SITI AISYAH', '087814412241', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '21-11-2019, 4:17 am', '10', '0155', '64kI3vLVi7UW', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (1282, 'HUMAIRA ULFA', '085347422333', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Epidemiolog Kesehatan', '21-11-2019, 4:17 am', '10', '0198', '7885sSeRdWPR', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1283, 'SUNARTI', '085392263316', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '21-11-2019, 4:17 am', '10', '0156', 'Umab9ge729NP', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (1284, 'ROFIAH', '085332626727', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '21-11-2019, 4:18 am', '10', '0199', 'GA1Wdfi6tNFG', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1285, 'NURLAELA SUPANTI', '085245185056', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '21-11-2019, 4:18 am', '10', '0157', 'd4XZAvs1dZv8', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (1286, 'NORLAILA', '087849924324', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana terampil - Sanitarian', '21-11-2019, 4:19 am', '10', '0200', '8rZasCY8bLBI', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1287, 'AULIA HIDAYATI', '085252330272', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Pranata Laboratorium Kesehatan', '21-11-2019, 4:19 am', '10', '0201', 'IOivBdhj3qFB', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1288, 'KHASNA KAMALA', '085247077416', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Perawat', '21-11-2019, 4:20 am', '10', '0202', 'jFkGo7MjX49s', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1289, 'LINGGA AYUDIA', '081251375084', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Apoteker', '21-11-2019, 4:20 am', '10', '0203', 'U4KjGo2t6WuT', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1290, 'HUSNUL KHATIMAH', '081255565834', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '21-11-2019, 4:21 am', '10', '0204', 'Cb1gEIF7Iiyz', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1291, 'ANIKA IKTISHAD ASLAMA', '082138050035', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Apoteker', '21-11-2019, 4:21 am', '10', '0205', '2RtHXt5h8pM4', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1292, 'HERISKA AULIA', '082325215286', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Apoteker', '21-11-2019, 4:21 am', '10', '0206', 'R5pCNkdRnGf2', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1293, 'AINUN RAHMI', '081351822357', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '21-11-2019, 4:21 am', '10', '0207', 'NkB1GitR5uUF', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1294, 'MISLAWATI', '081350208182', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '21-11-2019, 4:22 am', '10', '0208', 'nXi070XF3JzO', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1295, 'FIRDA FARIDA', '082293366405', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '21-11-2019, 4:22 am', '10', '0158', 'XemyFcYTmjdR', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (1296, 'YENNY PURWANTI', '085349144443', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '21-11-2019, 4:23 am', '10', '0159', 'YANy87221pvt', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (1297, 'NURJANAH', '081348017056', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '21-11-2019, 4:23 am', '10', '0160', 'zFE4a7Jddo35', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (1298, 'SELVIA', '085386720243', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '21-11-2019, 4:24 am', '10', '0209', 'Y5xHQWcZiegf', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1299, 'MUCHTIA WIDYA AGUSTINA', '081349469407', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Penyuluh Kesehatan Masyarakat', '21-11-2019, 4:24 am', '10', '0210', 'pdIscUyO32IG', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1300, 'NURUL HUDA', '085248551279', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '21-11-2019, 4:25 am', '10', '0161', 'aq5WZLvGyaBu', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (1301, 'ZAINAL AQLI', '085849400511', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '21-11-2019, 4:25 am', '10', '0162', 'No9HBc49Gen8', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (1302, 'ANTASARI MUDA', '087806480711', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Analis Kemasyarakatan', '21-11-2019, 4:26 am', '10', '0030', 'h2Ct2N3Egugy', '2019', '911', 'Tenaga Teknis', '21');
INSERT INTO `buku_tamu` VALUES (1303, 'NUR QIFTYAH', '085386138452', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Nutrisionis', '21-11-2019, 4:26 am', '10', '0211', 'LiC6OPAZ8ADD', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1304, 'PUTERI AMALIA', '083150575659', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Penyuluh Kesehatan Masyarakat', '21-11-2019, 4:27 am', '10', '0212', 'ImEmF37624h8', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1305, 'YULI HARISMA', '085246399003', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Bidan', '21-11-2019, 4:27 am', '10', '0213', 'jNAA85sAC7Fn', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1306, 'MUHAMMAD RIFQI KHAIRI', '085750635895', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Dokter', '21-11-2019, 4:27 am', '10', '0214', 'hAazcjRU1S7E', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1307, 'RICA ATICA', '082238179022', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Penyuluh Kesehatan Masyarakat', '21-11-2019, 4:27 am', '10', '0215', '11j7HgVWWvOC', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1308, 'HAYATUN NUFUS', '085820428843', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Bahasa Indonesia', '21-11-2019, 4:28 am', '10', '0163', 'OOMUTPv9j1LC', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (1309, 'MAULIDA', '0895324747087', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Epidemiolog Kesehatan', '21-11-2019, 4:28 am', '10', '0216', 'QRZQu25sF6HX', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1310, 'ALINDAWATI', '081348878844', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '21-11-2019, 4:28 am', '10', '0164', 'nXZLHWpUngWI', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (1311, 'JULIA', '089676953592', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Asisten Apoteker', '21-11-2019, 4:29 am', '10', '0217', 'Ct2N3Egugy8f', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1312, 'RIKA APRILIANA', '089674441448', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '21-11-2019, 4:29 am', '10', '0165', 'Xf6cGDV4TLFM', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (1313, 'EMMY', '081271446009', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat Gigi', '21-11-2019, 4:29 am', '10', '0218', 'jECMe7IEt3Kg', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1314, 'HAMNAH', '085251563764', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '21-11-2019, 4:30 am', '10', '0166', '59tdI1XgUQbm', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (1315, 'IKHSAN SUADI', '081351508283', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '21-11-2019, 4:30 am', '10', '0219', 'pO9SV438Yv4z', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1316, 'NOOR ANNISA', '081649070966', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Pranata Laboratorium Kesehatan', '21-11-2019, 4:34 am', '10', '0220', 'YZF6VQ7Oe84h', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1317, 'DARA AULIA HASANAH', '081238136648', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Penyuluh Kesehatan Masyarakat', '21-11-2019, 4:39 am', '10', '0221', 'DGGVykVtNo06', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1318, 'DARA AULIA HASANAH', '081238136648', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Penyuluh Kesehatan Masyarakat', '21-11-2019, 4:39 am', '10', '0222', 'BCn1Z1DgiVFp', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1319, 'MUTIARA SRI WAHYUNINGSIH', '082254769589', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Bidan', '21-11-2019, 4:40 am', '10', '0223', '2vUc4Nmo8zp3', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1320, 'EFRIANA', '085348820219', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '21-11-2019, 4:50 am', '10', '0167', 'MdSYpSIjMX9P', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (1321, 'HAIRIL RIFANI', '085349468347', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Epidemiolog Kesehatan', '21-11-2019, 5:14 am', '10', '0224', 'fDU18a6oGv96', '2019', '911', 'Tenaga Kesehatan', '21');
INSERT INTO `buku_tamu` VALUES (1322, 'MUSTIKA AWALINA', '082254401923', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Bahasa Indonesia', '21-11-2019, 5:28 am', '10', '0168', 'I4Pp382HL45I', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (1323, 'NOVI ARIANI', '085248121688', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '21-11-2019, 5:29 am', '10', '0169', '00nLCV6Gj521', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (1324, 'CHAHYETTY SEPTIA', '24561346761', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Agama Islam', '21-11-2019, 11:27 pm', '10', '0170', 'z25VCBXVzt6s', '2019', '911', 'Tenaga Pendidikan', '21');
INSERT INTO `buku_tamu` VALUES (1325, 'GINA PURNAMA NINGSIH', '556866', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Bahasa Indonesia', '22-11-2019, 11:29 pm', '10', '0001', 'ae0VRk2YHvy5', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1326, 'MUHAMMAD SALMAN', '085754656101', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Agama Islam', '22-11-2019, 11:31 pm', '10', '0002', 'ZjZE7UGSi1WC', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1327, 'AGUSRINA VIDIYANTI', '081226614122', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Analis Kemasyarakatan', '22-11-2019, 11:34 pm', '10', '0001', '5KeqTgFZM74S', '2019', '911', 'Tenaga Teknis', '22');
INSERT INTO `buku_tamu` VALUES (1328, 'AGUSRINA VIDIYANTI', '081226614122', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Teknis Analis Kemasyarakatan', '22-11-2019, 11:47 pm', '10', '0002', 'IK3PTfMGiW28', '2019', '911', 'Tenaga Teknis', '22');
INSERT INTO `buku_tamu` VALUES (1329, 'MUNDITA BINTARI', '08888', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Nutrisionis', '22-11-2019, 11:50 pm', '10', '0001', 'G6vch8ZDJy7K', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1330, 'SEPTY PERMATA SARI', '082255474881', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '22-11-2019, 11:51 pm', '10', '0003', '5ID8X6GjCnOv', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1331, 'SYAHRIDA AINAMERA', '081808011993', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '22-11-2019, 11:52 pm', '10', '0004', 'TNG8Uah5QoVq', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1332, 'INTAN PURNAMA SARI', '45454', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Bidan', '22-11-2019, 11:52 pm', '10', '0002', 'o44N5XW56gx4', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1333, 'ROBIATUL MAULIDTA HUSNA', '082156393734', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Pranata Laboratorium Kesehatan', '22-11-2019, 11:53 pm', '10', '0003', '72D6Q2i75pjf', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1334, 'KHUSNUL KHATIMAH', '085345307218', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '22-11-2019, 11:54 pm', '10', '0005', 'xb8qSIqoJ6Ik', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1335, 'NISA ANGRAINI', '082255114133', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Asisten Apoteker', '22-11-2019, 11:54 pm', '10', '0004', '4XUg8utD7U0y', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1336, 'NUR ANDRIANI', '081254530788', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '22-11-2019, 11:54 pm', '10', '0006', 'SkzRyiLRgBp2', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1337, 'NURUL MAISYARAH', '082227882866', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Asisten Apoteker', '22-11-2019, 11:55 pm', '10', '0005', 'IBsK2uquizvY', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1338, 'LIANA SARI', '087716195875', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '22-11-2019, 11:55 pm', '10', '0007', '5ang54qbOpg7', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1339, 'SITI ASKIAH', '0822559962823', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Pranata Laboratorium Kesehatan', '22-11-2019, 11:56 pm', '10', '0006', 'kW1Z79hpqeOH', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1340, 'YULITA SETIANI', '082113141621', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Nutrisionis', '22-11-2019, 11:56 pm', '10', '0007', '2dzhOhzEr4rM', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1341, 'ROESMA SURYA RUKMANA', '081952707876', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Penjasorkes', '22-11-2019, 11:57 pm', '10', '0008', 'LXykVhE9VXTs', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1342, 'SRI WAHYUNI', '081348572896', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Nutrisionis', '22-11-2019, 11:57 pm', '10', '0008', '39fI1iQ8SePP', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1343, 'RADITYA CATUR HANGGONO', '085292000203', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Penjasorkes', '22-11-2019, 11:57 pm', '10', '0009', 'Nt275tQzfEaF', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1344, 'SRI HASTUTI', '082250151112', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '22-11-2019, 11:58 pm', '10', '0009', 'SLoTg8pVY6JK', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1345, 'LISTIYANA DEWI', '085950077700', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '22-11-2019, 11:58 pm', '10', '0010', 'stGa83H99G3J', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1346, 'IQBAL RIDHANI', '081348427171', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Perawat', '22-11-2019, 11:58 pm', '10', '0010', 'ytp9EBPaJg4D', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1347, 'RINA RACHMAN', '085248627991', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '22-11-2019, 11:59 pm', '10', '0011', 'ysBJ1EcmUSJX', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1348, 'MUHAMMAD HELMI', '085251111644', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '22-11-2019, 11:59 pm', '10', '0011', '3iYJu7pkCdaa', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1349, 'MUTIARA SHOLEHAH', '081251420091', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '22-11-2019, 11:59 pm', '10', '0012', 'd6c7Mx9PzZeI', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1350, 'KUKUH WICAKSONO', '081347482725', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Pranata Laboratorium Kesehatan', '22-11-2019, 12:00 am', '10', '0001', 'HN9oEsh7L32A', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1351, 'KUKUH WICAKSONO', '081347482725', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Pranata Laboratorium Kesehatan', '22-11-2019, 12:00 am', '10', '0002', 'kda9rZR32xSe', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1352, 'PUTRI DWI JAYANTI', '082253367880', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '22-11-2019, 12:00 am', '10', '0001', '9N9c7z2gq2Ed', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1353, 'FSFASFA', 'FSA', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Agama Islam', '22-11-2019, 12:01 am', '10', '0002', 'yxoNL6eQgnpv', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1354, 'PUTRI DWI JAYANTI', '082253367880', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '22-11-2019, 12:01 am', '10', '0003', 'oZP9JtS025ez', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1355, 'DAYAN', '54544521', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Bidan', '22-11-2019, 12:01 am', '10', '0003', 'v7X2k4Zm5LC4', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1356, 'PUTRI DWI JAYANTI', '082253367880', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '22-11-2019, 12:01 am', '10', '0004', '8EiHsk1J3x9x', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1357, 'FADIN', 'FBASJBFJA', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Dokter Gigi', '22-11-2019, 12:01 am', '10', '0004', '60ZM0Y2B2898', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1358, 'PUTRI DWI JAYANTI', '082253367880', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '22-11-2019, 12:01 am', '10', '0005', 'LC1bE8P3p4i8', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1359, 'FSFAF', 'FSA4F5A', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Apoteker', '22-11-2019, 12:01 am', '10', '0005', 'xUNp13kk9Kyg', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1360, 'PUTRI DWI JAYANTI', '082253367880', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '22-11-2019, 12:01 am', '10', '0006', 'HDbWSF61ZYiV', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1361, 'SULAIMAN IBERAHIM', '4', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Apoteker', '22-11-2019, 12:01 am', '10', '0006', 'jgtR54WB1J31', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1362, 'PUTRI DWI JAYANTI', '082253367880', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '22-11-2019, 12:02 am', '10', '0007', 'QyiUOU5XLH24', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1363, 'PUTRI DWI JAYANTI', '082253367880', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '22-11-2019, 12:02 am', '10', '0008', 'AEQ7WHEBRzf5', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1364, 'DASD', '3', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Apoteker', '22-11-2019, 12:02 am', '10', '0007', 'yOe6pP701t82', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1365, 'PUTRI DWI JAYANTI', '082253367880', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '22-11-2019, 12:02 am', '10', '0009', '2FRaHE3O4jfn', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1366, 'SULAIMAN IBERAHIM', '664', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Apoteker', '22-11-2019, 12:02 am', '10', '0008', 'CuTx9s6tGRT5', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1367, 'PUTRI DWI JAYANTI', '082253367880', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '22-11-2019, 12:02 am', '10', '0010', 'cv1aesmuiS5i', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1368, 'DAHLIANSYAH', '6', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Apoteker', '22-11-2019, 12:02 am', '10', '0009', 'bZZFXtct3Kpk', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1369, 'SULAIMAN IBERAHIM', '2', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Apoteker', '22-11-2019, 12:02 am', '10', '0010', 'RRZAESB9UvQ6', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1370, 'PUTRI DWI JAYANTI', '082253367880', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '22-11-2019, 12:02 am', '10', '0011', '8hu6y83BSc4N', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1371, 'FADIN', '5454', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Apoteker', '22-11-2019, 12:02 am', '10', '0011', 'R89977q859xc', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1372, 'PUTRI DWI JAYANTI', '082253367880', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '22-11-2019, 12:02 am', '10', '0012', 'EsturKPNCDW8', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1373, 'PUTRI DWI JAYANTI', '082253367880', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '22-11-2019, 12:02 am', '10', '0013', 'rNUKBaRxKyid', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1374, 'KUKUH WICAKSONO', '081347482725', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Pranata Laboratorium Kesehatan', '22-11-2019, 12:02 am', '10', '0012', 'P8Yy8t1z3THN', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1375, 'LINA MILIANI', '0895627095992', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '22-11-2019, 12:03 am', '10', '0014', 'vjH5IV40Sus6', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1376, 'EKE EVIANA YULIYANI', '081255580504', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Bidan', '22-11-2019, 12:03 am', '10', '0013', '8rZI5G937ZPC', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1377, 'AKHMAD HAFIZ YAMINI', '085247191301', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '22-11-2019, 12:04 am', '10', '0014', '6KvGP87BTyxJ', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1378, 'MUHAMMAD SHOLEH', '0852325917226', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Agama Islam', '22-11-2019, 12:04 am', '10', '0015', 'V7869M61E7GR', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1379, 'SIGIT NORRAHIMI', '085252615752', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '22-11-2019, 12:04 am', '10', '0015', 'Y6ur92shpH11', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1380, 'DWI PRISTYA NINGRUM', '085247195207', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Agama Islam', '22-11-2019, 12:05 am', '10', '0016', 'IOk6NXq7ujEC', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1381, 'YULIA ATMI', '081288505900', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat Gigi', '22-11-2019, 12:05 am', '10', '0016', 'gEPAQNMjXMb7', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1382, 'ANITA PUTRI', '082274464681', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '22-11-2019, 12:05 am', '10', '0017', '9fhCzY77oXDL', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1383, 'DEWI DESYANTI', '085246457450', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '22-11-2019, 12:06 am', '10', '0018', '4Id6D9eL9Lu9', '2019', '911', 'n', '22');
INSERT INTO `buku_tamu` VALUES (1384, 'YUNITA MAISAROH', '085389667198', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Bidan', '22-11-2019, 12:06 am', '10', '0017', 'r3Q41jdRdf41', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1385, 'ALIFAH SARAH DESITARINA', '087821289191', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Dokter Gigi', '22-11-2019, 12:07 am', '10', '0018', '85jLPvaQbR9O', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1386, 'DESY OKTAPIANY', '082156679970', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '22-11-2019, 12:07 am', '10', '0019', '0I85e8cW8MUM', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1387, 'NURUN NIDA', '08971498098', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Pranata Laboratorium Kesehatan', '22-11-2019, 12:08 am', '10', '0019', 'JRiy2pqM4TkL', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1388, 'ARMINA ROYANI', '087814438909', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '22-11-2019, 12:08 am', '10', '0020', 'fzE816s4ndP9', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1389, 'RIA MAULIDA AGUSTINA', '085347963656', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Pranata Laboratorium Kesehatan', '22-11-2019, 12:09 am', '10', '0020', 'C0eOjR2crr2j', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1390, 'IRNA MURLINGGA', '082152548864', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Bahasa Indonesia', '22-11-2019, 12:09 am', '10', '0021', '1H9yb33By6h3', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1391, 'REMA HANDAYANI', '082153774738', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '22-11-2019, 12:09 am', '10', '0021', 'FWDU51cTcDu5', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1392, 'LATIFAH', '082352649073', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Agama Islam', '22-11-2019, 12:09 am', '10', '0022', 'TQ0aibet98K2', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1393, 'KHAIRUN NISA', '085348953619', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Epidemiolog Kesehatan', '22-11-2019, 12:10 am', '10', '0022', 'q3moATWoQkAI', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1394, 'EKA DAMAYANTI', '087815853556', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '22-11-2019, 12:10 am', '10', '0023', 'ioB83cd8Hutg', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1395, 'MEITRY MODITA', '082150347190', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '22-11-2019, 12:10 am', '10', '0023', '7oH7757px8tO', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1396, 'YUNITA MULIAWATI', '085349380807', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '22-11-2019, 12:11 am', '10', '0024', 'eRJ0q85jLPva', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1397, 'NORHAYATI', '089691679670', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Asisten Apoteker', '22-11-2019, 12:11 am', '10', '0024', '32oRND31PF59', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1398, 'NAJWA SAFARINA', '081251316917', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '22-11-2019, 12:11 am', '10', '0025', 'W8LVkL2XjO2I', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1399, 'TIARA RIZKI AMELIYA', '082154940737', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Bidan', '22-11-2019, 12:11 am', '10', '0025', 'DpZPy1mMb9rV', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1400, 'PIPIT SULUH SASANTI', '085651009811', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '22-11-2019, 12:12 am', '10', '0026', '273r5vqZ9yar', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1401, 'NOVIA IRAWANTY', '082240406519', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Bidan', '22-11-2019, 12:12 am', '10', '0026', '45RvD1epLyD0', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1402, 'DJAITUN', '081250447611', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Agama Islam', '22-11-2019, 12:12 am', '10', '0027', 'HHku4JoM63JT', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1403, 'MUHAMMAD KASPI', '085651155219', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '22-11-2019, 12:13 am', '10', '0027', '797X9Zpz99Fo', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1404, 'LINNY MARLISA', '087800567549', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '22-11-2019, 12:13 am', '10', '0028', '4hQpSjQpdT7n', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1405, 'RHOHMAWATI', '081259903599', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '22-11-2019, 12:13 am', '10', '0028', 'V5OaJX7R4sSC', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1406, 'AKHMAD RIDHANI', '085349302075', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Bahasa Indonesia', '22-11-2019, 12:14 am', '10', '0029', '1D9nozmSa5Z6', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1407, 'BAITUN NISA', '082226481899', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Epidemiolog Kesehatan', '22-11-2019, 12:14 am', '10', '0029', 'JzxfcOXcXN1R', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1408, 'ADE DWI PRASETYO', '082251766797', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '22-11-2019, 12:14 am', '10', '0030', 'd6kyUEE2Sy61', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1409, 'RIDNA NURHAJATI', '082150008464', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Pranata Laboratorium Kesehatan', '22-11-2019, 12:14 am', '10', '0030', 'eECeV6DaLoGq', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1410, 'MITA ARIYANTI', '082157217128', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '22-11-2019, 12:15 am', '10', '0031', 'jRWAEQ7WHEBR', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1411, 'DITA MAULANA', '083123593493', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Perawat', '22-11-2019, 12:15 am', '10', '0031', 'xovAgX39L4Rc', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1412, 'TUTI KARENI', '081253900669', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '22-11-2019, 12:15 am', '10', '0032', 'dLNuvNN05Pr8', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1413, 'MUTIARA', '082154239508', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Bidan', '22-11-2019, 12:16 am', '10', '0032', 'h5JYMIYTRO38', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1414, 'RAHMI NIKE ROSAHIN', '08986366256', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Bahasa Indonesia', '22-11-2019, 12:16 am', '10', '0033', 'hLRXPy1sVmYf', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1415, 'HAYATUN NUFUS', '082153554440', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '22-11-2019, 12:16 am', '10', '0033', 'Z8tMnytgPmz2', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1416, 'DELI AKBAR', '089674441467', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '22-11-2019, 12:16 am', '10', '0034', 'XpcBRO6EViRf', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1417, 'TIKA INDRIANA', '085368171228', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Bidan', '22-11-2019, 12:17 am', '10', '0034', 'kbD4N5D508Vy', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1418, 'HJ RENI ADHAMIANTI', '085340711111', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '22-11-2019, 12:18 am', '10', '0035', '8nHmn4OmUn3u', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1419, 'RIA MAYADIANTI SAFITRI', '085249595181', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana terampil - Sanitarian', '22-11-2019, 12:18 am', '10', '0035', 'HcPn5U751NKk', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1420, 'SUMARNI', '082296918151', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '22-11-2019, 12:18 am', '10', '0036', '7mN6miXDn2ca', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1421, 'NURUL PUTRI HIDAYANTI', '089692142261', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Bidan', '22-11-2019, 12:19 am', '10', '0036', '9fjUOdZc1EU5', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1422, 'NOOR ARNI MUTIA', '083151879581', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '22-11-2019, 12:19 am', '10', '0037', 'nA19YPsAVgz5', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1423, 'RABIATUL ISLAMIAH', '081944224492', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Bidan', '22-11-2019, 12:19 am', '10', '0037', 'XP5yyy27tULf', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1424, 'LISA RIZLIANA', '081350419027', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '22-11-2019, 12:19 am', '10', '0038', 'Y6gI5p52M356', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1425, 'IRMA RAHMAWATI', '082157046365', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '22-11-2019, 12:20 am', '10', '0039', 'KvK23vSgkYzN', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1426, 'MERCYTA NADIATWALA', '0895401634814', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '22-11-2019, 12:20 am', '10', '0038', 'SLobXY1eEj3e', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1427, 'JERRY AMRULLAH', '081254428122', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '22-11-2019, 12:20 am', '10', '0040', 'ufcQqWT56j4b', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1428, 'LANIA NOORMADINAH', '082113055022', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Epidemiolog Kesehatan', '22-11-2019, 12:21 am', '10', '0039', 'XpJnagS5iUrL', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1429, 'ERNAWATI', '085751583338', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '22-11-2019, 12:21 am', '10', '0041', 'HIxCPaAvyj7T', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1430, 'ANNISA RAHMAWATI', '085349506763', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Bidan', '22-11-2019, 12:21 am', '10', '0040', 'oR6gasR7fgU3', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1431, 'ANNISAH', '085332121716', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '22-11-2019, 12:21 am', '10', '0042', 'QvXSY47e16XR', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1432, 'NURLAILATUL KHAIRIYYAH', '081953787595', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Perawat', '22-11-2019, 12:22 am', '10', '0041', 'f6v3BQ37Mqct', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1433, 'NOOR DEWI AMELIA', '089678157399', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Bahasa Indonesia', '22-11-2019, 12:22 am', '10', '0043', 'g1z15HTJVD2k', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1434, 'SAIDAH WARDANI', '085952750479', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat Gigi', '22-11-2019, 12:22 am', '10', '0042', 'MvuSGnEK4Px2', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1435, 'NUR YASINTA', '089692111651', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '22-11-2019, 12:23 am', '10', '0044', '6iaVdoQZ83cr', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1436, 'RAHMAWATI', '0822546003936', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '22-11-2019, 12:23 am', '10', '0045', 'd9A64Ig44iEP', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1437, 'RAHIMATUL WASLI', '082150471314', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat Gigi', '22-11-2019, 12:23 am', '10', '0043', 'qrRoDh2vctSb', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1438, 'SHINTA', '082350012735', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Bahasa Indonesia', '22-11-2019, 12:24 am', '10', '0046', 'Egugy8fRBbsc', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1439, 'INDAH SHINTYA DEWI', '081351734748', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat Gigi', '22-11-2019, 12:24 am', '10', '0044', '6EL8yK5iQkJx', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1440, 'M. RAHMATULLAH AKBAR', '082250467152', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '22-11-2019, 12:24 am', '10', '0047', 'q7hDF5CvBf46', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1441, 'AULIA RAHMAH', '082256983226', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '22-11-2019, 12:25 am', '10', '0048', 'NZxGKIHFY2kk', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1442, 'MAIRITA', '082214559423', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Penyuluh Kesehatan Masyarakat', '22-11-2019, 12:25 am', '10', '0045', 'X0CCn69vEp6E', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1443, 'HAYATUL MAHYA', '087811030113', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Nutrisionis', '22-11-2019, 12:26 am', '10', '0046', 'p3487spRLtz0', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1444, 'RIWI NOORHASANAH', '082255255979', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '22-11-2019, 12:26 am', '10', '0049', 'UGSi1WCSv4AD', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1445, 'SITI MUNAWARAH', '080158006489', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '22-11-2019, 12:28 am', '10', '0050', 'UWh5S88cjGAx', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1446, 'DINA MARIANA', '082251127270', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Nutrisionis', '22-11-2019, 12:28 am', '10', '0047', 'CWN1IF0nNzAp', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1447, 'MAWADDAH', '08957070109696', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana terampil - Sanitarian', '22-11-2019, 12:28 am', '10', '0048', 'Z1MEWzh6ogon', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1448, 'DWI WAHYUNIARTI', '085939513887', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Bahasa Indonesia', '22-11-2019, 12:29 am', '10', '0051', '8js95mSYi1U8', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1449, 'DEVI TRI NURMALASARI', '085245811004', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Epidemiolog Kesehatan', '22-11-2019, 12:29 am', '10', '0049', '2SmqKvDygK63', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1450, 'NUR HIDAYATININGSIH', '082256045255', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '22-11-2019, 12:29 am', '10', '0052', 'uG2T2oda0R5Q', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1451, 'SITI MASARAH', '0819344442727', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '22-11-2019, 12:30 am', '10', '0053', '8VPaSHfE21pc', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1452, 'ALMAEI DWI BRIASTI', '082221861513', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '22-11-2019, 12:30 am', '10', '0050', 'iaKnIVDn2UCr', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1453, 'NURLINA HARDIYANTINI', '085348262993', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '22-11-2019, 12:31 am', '10', '0054', 'Byno3CuVRr6F', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1454, 'WIDYA ANGGREINI', '081521644662', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '22-11-2019, 12:31 am', '10', '0055', 'C5ryYqYWqvhD', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1455, 'MARIANAH', '087772730229', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Bahasa Indonesia', '22-11-2019, 12:32 am', '10', '0056', '62Mj3Vqv6t7a', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1456, 'RIRIN AGUSTINA', '081348408286', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '22-11-2019, 12:32 am', '10', '0051', 'k6k1Lmj61J5u', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1457, 'WIDYA ALFIANA PERTIWI', '082149908819', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '22-11-2019, 12:33 am', '10', '0057', '3pjokm7t3nZa', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1458, 'MARSHA MUTHIA LISTYANI', '081355029090', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Apoteker', '22-11-2019, 12:33 am', '10', '0052', 'dpfdPRea9x9D', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1459, 'MELATI HIDAYATI', '085248009932', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Apoteker', '22-11-2019, 12:34 am', '10', '0053', 'SC13Hy0ZDSkn', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1460, 'PARIDA ARIANI', '0895414549652', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Bahasa Indonesia', '22-11-2019, 12:34 am', '10', '0058', 'ft94nLyg09RK', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1461, 'RITA ENDAR WATI', '081350008966', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Epidemiolog Kesehatan', '22-11-2019, 12:34 am', '10', '0054', '7439GgeG6jty', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1462, 'ANNE RUFAIDAH', '087814797515', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '22-11-2019, 12:34 am', '10', '0059', '0aBuVIR4PU5Z', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1463, 'MUSTAINNAH', '082230011313', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '22-11-2019, 12:35 am', '10', '0055', '9YsCYQDrO9ed', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1464, 'REDHA HUSTIANI', '081349604878', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '22-11-2019, 12:35 am', '10', '0060', 'rvLMEcTLt21E', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1465, 'ARDILLA SANTI', '082157054196', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Nutrisionis', '22-11-2019, 12:36 am', '10', '0056', '7vtD23cU217J', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1466, 'MIRAYANTI', '08115139676', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Bidan', '22-11-2019, 12:36 am', '10', '0057', 'cmUkLPHxc5Cs', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1467, 'RABIATUL ADAWIAH', '081915164014', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Bahasa Indonesia', '22-11-2019, 12:36 am', '10', '0061', 'qyH6b5KYGdXG', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1468, 'MUHAMMAD RIDHO FAHRIZAL', '082153914575', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Epidemiolog Kesehatan', '22-11-2019, 12:37 am', '10', '0058', 'P5sDRsaM1413', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1469, 'ISNAWATI', '085248001345', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Bahasa Indonesia', '22-11-2019, 12:37 am', '10', '0062', '3dCSoGhi4MoT', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1470, 'RAUDAH', '082350354703', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Dokter Gigi', '22-11-2019, 12:37 am', '10', '0059', 'raMe7a2Z4b4N', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1471, 'AULIA RUSMAYATI', '081349616662', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Dokter Gigi', '22-11-2019, 12:38 am', '10', '0060', 'K3YAHSgSENI7', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1472, 'PUTRI DIAN NURANI', '081258713066', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '22-11-2019, 12:38 am', '10', '0063', 'vm1Xj4uWeCAo', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1473, 'VITA ERNAWATI', '085255962023', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Bidan', '22-11-2019, 12:40 am', '10', '0061', 'XTTYZAHJvekh', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1474, 'PEBIA NORVIANA', '082350979997', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Bidan', '22-11-2019, 12:41 am', '10', '0062', 'hR80UHN56GQN', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1475, 'HALIMATUS SA''DIAH', '085248199948', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '22-11-2019, 12:41 am', '10', '0064', 'YPEBPqS964In', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1476, 'IRWANSYAH', '082290385119', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Bahasa Indonesia', '22-11-2019, 12:42 am', '10', '0065', '6YtqD20E4qOj', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1477, 'M. FAUZANNOR. F', '085251130640', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana terampil - Sanitarian', '22-11-2019, 12:42 am', '10', '0063', 'rs4nr2o0p7qD', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1478, 'JULIA', '089676953592', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Asisten Apoteker', '22-11-2019, 12:42 am', '10', '0064', 'iL7c3odRSdcp', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1479, 'MAYLIA TRI AUDINA', '083159301724', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '22-11-2019, 12:42 am', '10', '0066', 'EDiEsoW9J92u', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1480, 'FATHUL JANNAH', '081347507632', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '22-11-2019, 12:43 am', '10', '0067', 'D14gb7Vaa9m8', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1481, 'NUR AINAH', '085391116220', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Epidemiolog Kesehatan', '22-11-2019, 12:43 am', '10', '0065', 'bpu8mrq3k26C', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1482, 'SITI MOKARAMAH', '081346840805', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '22-11-2019, 12:43 am', '10', '0068', '2r9VC4pPbLSr', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1483, 'PIPIT AYU NINGSIH', '082252225016', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Nutrisionis', '22-11-2019, 12:44 am', '10', '0066', 'BM18j9mkhTKr', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1484, 'MUTIARA NOORHIKMAH', '082255475072', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '22-11-2019, 12:44 am', '10', '0069', 'huMB9rQnTD38', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1485, 'NUR HASNI', '081348690548', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Epidemiolog Kesehatan', '22-11-2019, 12:44 am', '10', '0067', 'j56YHjmbMhWa', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1486, 'MASPUAH', '081251314124', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '22-11-2019, 12:44 am', '10', '0070', 'jLyMnsV5OaJX', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1487, 'ANTUNG DESY AMELIA N', '082353212230', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '22-11-2019, 12:45 am', '10', '0071', '2fz27F70ZVUD', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1488, 'MAIMUNAH', '081255427458', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Nutrisionis', '22-11-2019, 12:45 am', '10', '0068', 'Y39N2DDgigHR', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1489, 'ERLITA MAUDINA', '082156396343', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '22-11-2019, 12:46 am', '10', '0072', '1ReRBGSXm90B', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1490, 'DINA MAYASARI', '082153881490', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '22-11-2019, 12:46 am', '10', '0069', '56GQNV3L6798', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1491, 'MARDI SAPUTERA', '089676933688', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '22-11-2019, 12:46 am', '10', '0073', 'Z4KYbILdU4bA', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1492, 'NOVI SYAMSIATI', '082155836888', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Bidan', '22-11-2019, 12:47 am', '10', '0070', 'GO79qQxTB9L1', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1493, 'RINI DENO SARI M', '082251030731', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '22-11-2019, 12:47 am', '10', '0074', '7hVHNPqrRYb0', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1494, 'RYAN ANDRE OKTOYUDI', '085333832888', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Dokter', '22-11-2019, 12:47 am', '10', '0071', 'Ze0mzY7PhxiU', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1495, 'NORHIDAYAH', '081349161688', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '22-11-2019, 12:47 am', '10', '0075', 'tB8XtvohsuQF', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1496, 'MUHAMMAD MURSID', '087815864722', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Bahasa Indonesia', '22-11-2019, 12:48 am', '10', '0076', 'oTueOva62f88', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1497, 'RINAWATI DARMANINGSIH', '089666259155', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Pranata Laboratorium Kesehatan', '22-11-2019, 12:48 am', '10', '0072', 'Q8TWoi4p5ft9', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1498, 'LARASATI WULANDARI', '085609044923', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Agama Islam', '22-11-2019, 12:49 am', '10', '0077', 'i9eBD2Qk3a61', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1499, 'YULIAN ANSHARI', '081245613115', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Asisten Apoteker', '22-11-2019, 12:49 am', '10', '0073', 'voYA5sST7HF2', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1500, 'NORLYSNAWATI', '08981432590', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '22-11-2019, 12:49 am', '10', '0078', 'OivBdhj3qFB5', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1501, 'ANNISA AMALIA', '082357300076', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Pranata Laboratorium Kesehatan', '22-11-2019, 12:49 am', '10', '0074', 'Ry1A3Z4D2Gio', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1502, 'YUDA SAPUTRA', '085750077880', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Penjasorkes', '22-11-2019, 12:50 am', '10', '0079', '4KjGo2t6WuTO', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1503, 'AULIA OCTAVIANA', '085393402032', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Bidan', '22-11-2019, 12:50 am', '10', '0075', 'mu81Iejr9gTK', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1504, 'LATIFAH', '081251087909', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '22-11-2019, 12:50 am', '10', '0080', 'q1Q2ujWsyoqT', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1505, 'MAULIATI', '081953142134', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Penjasorkes', '22-11-2019, 12:51 am', '10', '0081', 'gO7rAecQv436', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1506, 'SITI RAHMAH', '082350945360', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Bidan', '22-11-2019, 12:51 am', '10', '0076', '8ZTTR68T2HK7', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1507, 'RAHMANIYYAH', '082153547793', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '22-11-2019, 12:51 am', '10', '0082', 'z5hxin3jVtEM', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1508, 'RIZKA ARIE ANI', '081295378020', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Bahasa Indonesia', '22-11-2019, 12:52 am', '10', '0083', 'e904otI3Qyp7', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1509, 'SULAIMAN AZHARI', '081345451368', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Epidemiolog Kesehatan', '22-11-2019, 12:52 am', '10', '0077', '8eB4KeoO5P6g', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1510, 'NUR SHABRINA', '083155805767', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Agama Islam', '22-11-2019, 12:53 am', '10', '0084', 'hLqEV4K1DqrI', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1511, 'ERITTA OCTAVIA', '081953828824', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Apoteker', '22-11-2019, 12:53 am', '10', '0078', '0R5i8ioSm9bS', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1512, 'ASWIYYAH RUSMAWATI', '085390481288', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Perawat', '22-11-2019, 12:53 am', '10', '0079', 'cGuz3xQF799A', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1513, 'AGATHIS SILVA HARAHAP', '085248827329', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '22-11-2019, 12:53 am', '10', '0085', 'h1nQ8QLU1B4u', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1514, 'ANGGUN PRATIWI', '082153829718', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '22-11-2019, 12:54 am', '10', '0086', 'ts6IYeIec312', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1515, 'YAUMI RAHMAH', '0895705971857', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Pranata Laboratorium Kesehatan', '22-11-2019, 12:54 am', '10', '0080', 'tuBdo35M2F8E', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1516, 'ANGGELIANITA ROESADI', '083141244970', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Bahasa Indonesia', '22-11-2019, 12:55 am', '10', '0087', 'J91h25F6qgYS', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1517, 'MEKA HAJRIANI FITRIAH', '081349536635', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Perawat', '22-11-2019, 12:55 am', '10', '0081', 'I12eHjj2agL5', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1518, 'EDDY QURNIA RAHMAN', '087816440909', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Epidemiolog Kesehatan', '22-11-2019, 12:55 am', '10', '0082', 'kAPn5nYnpEeW', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1519, 'MUHAMMAD FAHRUL IHSAN', '085249660891', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '22-11-2019, 12:56 am', '10', '0088', 'ccy0zp9HSXyS', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1520, 'ZANNATUL ILYYIN', '082250609911', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat Gigi', '22-11-2019, 12:56 am', '10', '0083', '7mpEVG6vch8Z', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1521, 'YUNITA RACHMAWATI', '081803188977', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '22-11-2019, 12:57 am', '10', '0089', 'jT7kCA7QV10N', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1522, 'KHADIJAH', '085248862847', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Apoteker', '22-11-2019, 12:57 am', '10', '0084', 'vk0en8HifxD9', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1523, 'SARI HANDAYANI', '081345447206', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '22-11-2019, 12:58 am', '10', '0090', 'xa8f2meMu5Na', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1524, 'MEITHA THERESIA OSANTI', '085248200860', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Epidemiolog Kesehatan', '22-11-2019, 12:58 am', '10', '0085', '3SQK1CVAYyJo', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1525, 'HARTATI RAHMINI', '085652159614', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Nutrisionis', '22-11-2019, 12:58 am', '10', '0086', '7946h6FuS7km', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1526, 'NORLIDYA SANTI', '081349580755', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '22-11-2019, 12:58 am', '10', '0091', '9idaR8bWkt9i', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1527, 'ATIKAH DINDA MAIRINA', '082157738811', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Penyuluh Kesehatan Masyarakat', '22-11-2019, 12:59 am', '10', '0087', 'VPj07951jUn3', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1528, 'ROLIANOR', '082250463732', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Penyuluh Kesehatan Masyarakat', '22-11-2019, 1:00 am', '10', '0088', 'eL53fx804hCW', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1529, 'ERSA AGUSTINA', '085346000739', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Pranata Laboratorium Kesehatan', '22-11-2019, 1:00 am', '10', '0089', 'b2KpiQiPKbh8', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1530, 'DWI SRI RAHAYU', '085248541118', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '22-11-2019, 1:00 am', '10', '0092', 'c7MnPXUiKdJu', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1531, 'RIA FEBRIAYANTI', '085348676709', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Bidan', '22-11-2019, 1:01 am', '10', '0090', 'ZOf99IznN8sf', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1532, 'MUHAMMAD FAUZAN A', '081257871286', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '22-11-2019, 1:01 am', '10', '0093', 'sE7pPuUvuJU7', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1533, 'NINA ALFIAH', '081251574848', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat Gigi', '22-11-2019, 1:01 am', '10', '0091', 'bTUV8V01mX8U', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1534, 'GUSTI ABDIAN N NUR', '089605255514', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '22-11-2019, 1:02 am', '10', '0094', 'FH8p5NfK2J3O', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1535, 'KIKI REZKI AULIA', '085332926128', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Bidan', '22-11-2019, 1:02 am', '10', '0092', 'sP8V54xxFNYg', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1536, 'ITA PURNAMA', '082352704442', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '22-11-2019, 1:02 am', '10', '0095', '3t7jh121hKWA', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1537, 'SHINTA NATASIA', '085252811125', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Bidan', '22-11-2019, 1:03 am', '10', '0093', 's8RjpWe5BSvD', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1538, 'DEDIK IRAWAN', '085735210240', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Penjasorkes', '22-11-2019, 1:03 am', '10', '0096', 'V8nHmn4OmUn3', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1539, 'QIYA ZULIANTIKA', '081232206117', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '22-11-2019, 1:03 am', '10', '0097', '5c92MQaE9SMP', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1540, 'SYARIFAH HAFSYAH', '081258275908', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Bidan', '22-11-2019, 1:03 am', '10', '0094', 'Nzt3d5nSPHnH', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1541, 'MUTIA PURNAMA SARI', '085751426066', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Bidan', '22-11-2019, 1:04 am', '10', '0095', '638S4Chq5c62', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1542, 'NOOR RIALITARIANTI', '085251597000', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Agama Islam', '22-11-2019, 1:04 am', '10', '0098', '2QY4112Tby08', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1543, 'BIBIT YOLANDA', '082354787060', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat Gigi', '22-11-2019, 1:05 am', '10', '0096', '3GMt8WOc9fhC', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1544, 'UWANG', '082350562626', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Bahasa Indonesia', '22-11-2019, 1:05 am', '10', '0099', 'uA3H97082OPk', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1545, 'MUHAMMAD LUTHFI RAMADHAN', '081998441118', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Epidemiolog Kesehatan', '22-11-2019, 1:05 am', '10', '0097', 'IeqapA973OPB', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1546, 'RUSMINI', '085390998423', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '22-11-2019, 1:05 am', '10', '0100', 'OmJ8373nQOA4', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1547, 'MORMALIANA', '082383291205', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Bahasa Indonesia', '22-11-2019, 1:06 am', '10', '0101', '6o3DYImW1B43', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1548, 'HAMUNISA', '-', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Bidan', '22-11-2019, 1:06 am', '10', '0098', 'JaN4IX77hHRR', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1549, 'RAHIMAH', '085249654828', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Agama Islam', '22-11-2019, 1:07 am', '10', '0102', 'R638jm0V9BE9', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1550, 'SITI RAHMAH', '08125196222', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Pranata Laboratorium Kesehatan', '22-11-2019, 1:07 am', '10', '0099', 'mnx1LzdGfYr2', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1551, 'RISMAWATI', '081250505966', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Perawat', '22-11-2019, 1:07 am', '10', '0100', 'ubkXpUrHbJIU', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1552, 'INTAN PUSPITASARI', '085950073688', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Bahasa Indonesia', '22-11-2019, 1:07 am', '10', '0103', 'IAd6EL8yK5iQ', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1553, 'ROSITA', '087716199661', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Pranata Laboratorium Kesehatan', '22-11-2019, 1:08 am', '10', '0101', 'SzcH8q4z9s62', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1554, 'ANARIYANI', '085251231868', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '22-11-2019, 1:08 am', '10', '0104', 'grYN1Io75q86', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1555, 'RIANSYAH', '081255423134', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '22-11-2019, 1:08 am', '10', '0105', 'KRXyBF8Ky32C', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1556, 'SUCI AMIRAH', '085242247298', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Epidemiolog Kesehatan', '22-11-2019, 1:08 am', '10', '0102', '65855cf9s4d9', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1557, 'PUTRI HANDAYANI', '082255785523', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '22-11-2019, 1:09 am', '10', '0106', 'OS8zerYUXRQT', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1558, 'ACHMAD SAUPI', '082253060577', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Epidemiolog Kesehatan', '22-11-2019, 1:09 am', '10', '0103', '6NgQDB7mYzED', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1559, 'EKA RAHMAWATI', '087815357771', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '22-11-2019, 1:10 am', '10', '0107', 'OMUTPv9j1LC1', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1560, 'VIVIN FITRIA ANGGRAENI', '085727677640', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Penyuluh Kesehatan Masyarakat', '22-11-2019, 1:10 am', '10', '0104', '2ytpycvCjzv7', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1561, 'RENI PRAMULARSIH', '088242191895', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Bidan', '22-11-2019, 1:11 am', '10', '0105', '9DCgF3G12z9B', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1562, 'SEPTIA DWI RUSMELLYA', '085349371728', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '22-11-2019, 1:11 am', '10', '0108', 'X9SZ6gRAdrtG', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1563, 'FIKRUL ILMI', '081351092225', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Epidemiolog Kesehatan', '22-11-2019, 1:11 am', '10', '0106', '2FIO3DOXHqZm', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1564, 'RAFIKA IRMA SARI', '085248381928', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '22-11-2019, 1:12 am', '10', '0109', 'HDetmii4Dbfs', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1565, 'MARIYA ULFAH', '082250354392', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Penyuluh Kesehatan Masyarakat', '22-11-2019, 1:12 am', '10', '0107', '4z1cCgz52EdJ', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1566, 'HAYYATUNNUFUS SYIFA A', '08969174858857', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '22-11-2019, 1:12 am', '10', '0110', '8g7Lgu69YHa3', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1567, 'MEIRATIH YUMNA', '082154483287', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Perawat', '22-11-2019, 1:13 am', '10', '0108', 'fs1771AZiT3P', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1568, 'ANIDA HILMA', '089688776650', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Agama Islam', '22-11-2019, 1:13 am', '10', '0111', 'c7r686vtb4Hb', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1569, 'EVA PUSPITA SARI', '085386545851', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '22-11-2019, 1:13 am', '10', '0109', 'tzKTqNobXNDx', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1570, 'MUTIA FITRIANI', '081943334913', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '22-11-2019, 1:14 am', '10', '0112', 'ZeKALxRP5IUK', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1571, 'NURIKA PERMATA SARI', '089693169240', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Perawat', '22-11-2019, 1:14 am', '10', '0110', '6ff3hJ15177Q', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1572, 'YULIANITA SARI', '082298982100', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '22-11-2019, 1:14 am', '10', '0113', 'TDSxb31PJ9WG', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1573, 'NOOR AHADIYYATIKA', '085257223345', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Epidemiolog Kesehatan', '22-11-2019, 1:15 am', '10', '0111', 'EnyJNCpdPymS', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1574, 'ERLAN RIDWAN', '085251686116', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Penjasorkes', '22-11-2019, 1:15 am', '10', '0114', 'q8rixidjrvch', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1575, 'DESI ERVIANI', '082151058594', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Asisten Apoteker', '22-11-2019, 1:15 am', '10', '0112', 'FGyIZQba2vUF', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1576, 'NADZAR JAKA P', '085248497200', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Penjasorkes', '22-11-2019, 1:16 am', '10', '0115', 'We97P86CkNSA', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1577, 'DIAN RETNO ANGGRAINI', '085820035009', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '22-11-2019, 1:16 am', '10', '0116', 'mpNt275tQzfE', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1578, 'GOZALI', '085349366997', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Pranata Laboratorium Kesehatan', '22-11-2019, 1:16 am', '10', '0113', 'j8WpdRU0ymkq', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1579, 'KHAIRUN NISA', '085100846463', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Apoteker', '22-11-2019, 1:17 am', '10', '0114', 'b19UtNhdjnXQ', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1580, 'RILDA ANDRIA ALDILA', '08980112222', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '22-11-2019, 1:17 am', '10', '0117', 'csc2BSLobXY1', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1581, 'SAPTARINA SASMITA D', '085248372492', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '22-11-2019, 1:18 am', '10', '0118', 'CnXi33X8AVXC', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1582, 'EZZATI FARAH FIRMANAH', '087819401706', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Asisten Apoteker', '22-11-2019, 1:18 am', '10', '0115', '7VOUEv04tps3', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1583, 'SAIPUL RAHMAN', '087816698974', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Agama Islam', '22-11-2019, 1:19 am', '10', '0119', '4nk7I5VVJV8U', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1584, 'SAYYID MUHAMMAD BASYIR', '081350315050', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '22-11-2019, 1:19 am', '10', '0116', 'A8qJrzs8AZ4V', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1585, 'TRIAN NANDA PUTRA', '087714144114', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '22-11-2019, 1:20 am', '10', '0117', 'h957gOhxp9Hk', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1586, 'HIDAYATURRHAMAN', '085251632383', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Agama Islam', '22-11-2019, 1:20 am', '10', '0120', 'cB530EO1qd9J', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1587, 'FATHIYYAH', '08971405804', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '22-11-2019, 1:20 am', '10', '0118', 'JQCpfJi58Y2S', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1588, 'CINDI WULANDARI', '082154477949', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana terampil - Sanitarian', '22-11-2019, 1:21 am', '10', '0119', 'KdJuEuch3EF5', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1589, 'RUSMILAHAYATI', '082393416263', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '22-11-2019, 1:22 am', '10', '0121', 'gWIP28k4puD1', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1590, 'MARIATUL QIBTIAH', '081350007022', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Pranata Laboratorium Kesehatan', '22-11-2019, 1:22 am', '10', '0120', 'fqREoKcMoKqf', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1591, 'RUSMILAHAYATI', '082393416263', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '22-11-2019, 1:22 am', '10', '0122', 'c0t6y4LsYF6e', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1592, 'VERA YULIA DAMAYANTI', '081321061672', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Perawat', '22-11-2019, 1:23 am', '10', '0121', 'B0P8WnVYZAq3', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1593, 'SRI YULIANTI', '081253319038', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Agama Islam', '22-11-2019, 1:23 am', '10', '0123', 'Ly1U5rI12eHj', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1594, 'REZKIYANI', '085245145815', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat Gigi', '22-11-2019, 1:24 am', '10', '0122', 'hZ72DO6gOYay', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1595, 'AMELIA KUSUMA WARDANY', '085251668077', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '22-11-2019, 1:25 am', '10', '0124', 'hW9BNQyiUOU5', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1596, 'PUTRI CITA SARI', '087715680885', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Penjasorkes', '22-11-2019, 1:25 am', '10', '0125', 'OQv61kab0cq6', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1597, 'KHAIRUNISA ARSYAD', '081520947528', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Pranata Laboratorium Kesehatan', '22-11-2019, 1:25 am', '10', '0123', 'KIc1MpQ36a4T', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1598, 'ZULFA MUSLIMAH', '082158006867', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Penyuluh Kesehatan Masyarakat', '22-11-2019, 1:26 am', '10', '0124', 'JKX9P1v9Iz6W', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1599, 'RATNA DEVI INDRASWARI', '085326085476', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '22-11-2019, 1:26 am', '10', '0126', '2x98978KbjCc', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1600, 'ROSDINAWATI', '089660180717', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Pranata Laboratorium Kesehatan', '22-11-2019, 1:27 am', '10', '0125', 'Xu7a4MzFL4jR', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1601, 'FEBRIYANTI', '081939792752', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Agama Islam', '22-11-2019, 1:27 am', '10', '0127', '8xdGfox31gv4', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1602, 'RALAS JUNITA NINSI', '085314597676', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Epidemiolog Kesehatan', '22-11-2019, 1:27 am', '10', '0126', 'f8oNSF10bdxg', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1603, 'DYAH NINGRUM PRBAGIRI', '081253532241', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Asisten Apoteker', '22-11-2019, 1:28 am', '10', '0127', '2z3D6ZdNQyQS', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1604, 'SOPHAN', '087854213841', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '22-11-2019, 1:29 am', '10', '0128', 'ZU1RDkO9rg9s', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1605, 'HENDRA', '085249657009', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '22-11-2019, 1:29 am', '10', '0129', '89AMvbBj35e6', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1606, 'SITI SAFA''AH', '082251885599', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Agama Islam', '22-11-2019, 1:30 am', '10', '0128', '2SP9BF8VPIJT', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1607, 'ELLY RISNAWATI', '085252474553', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat Gigi', '22-11-2019, 1:30 am', '10', '0130', 'W4e8L49xAutV', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1608, 'RAKHMADIANTI', '081296427993', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Bidan', '22-11-2019, 1:31 am', '10', '0131', 'b42WdW9a6hUO', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1609, 'FEBRINA AYU LESTARI', '082932457231', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Agama Islam', '22-11-2019, 1:31 am', '10', '0129', 'zPJWtLVi9dOH', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1610, 'ARNI BEKTI NINGSIH', '085600973601', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Bahasa Indonesia', '22-11-2019, 1:32 am', '10', '0130', 'zGRIqtym4Q8T', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1611, 'REFAN RAHMADIDILLAH', '081346115199', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana terampil - Sanitarian', '22-11-2019, 1:32 am', '10', '0132', 'Xm90B271QOJ2', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1612, 'FARIDA EKAWATI', '085385570007', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Asisten Apoteker', '22-11-2019, 1:33 am', '10', '0133', '7ujECMe7IEt3', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1613, 'ENI NOOR FITRIANI', '085777840013', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '22-11-2019, 1:33 am', '10', '0131', 'do35M2F8En73', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1614, 'JAMITA SARAH', '081250038228', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Epidemiolog Kesehatan', '22-11-2019, 1:33 am', '10', '0134', '8BE5s8I1yVTP', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1615, 'REZKI AULIA NOVIANTI', '08115555561', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Bidan', '22-11-2019, 1:35 am', '10', '0135', '02PFm3jMVZLH', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1616, 'ADHAN PIDDINI', '08975959567', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Dokter', '22-11-2019, 1:36 am', '10', '0136', 'nxxcW8bL4RvM', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1617, 'DESSY DILIANTI PUTERI', '08176642566', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '22-11-2019, 1:37 am', '10', '0137', '5V51L6yE4q3m', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1618, 'EKA WIDYOWATI', '082150123403', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Bidan', '22-11-2019, 1:37 am', '10', '0138', 'q5cfPyT80fvr', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1619, 'MERI SUSANTI', '083159018334', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Perawat', '22-11-2019, 1:38 am', '10', '0139', 'c2nBrLGpKoKH', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1620, 'RISDA AMALIA', '085828695788', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Nutrisionis', '22-11-2019, 1:39 am', '10', '0140', '9sdT18Rv48o2', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1621, 'FEBRIYANTI', '085248180735', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Epidemiolog Kesehatan', '22-11-2019, 1:39 am', '10', '0141', '9q1QY8JF1IV1', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1622, 'ROSEYANA', '082255637711', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Epidemiolog Kesehatan', '22-11-2019, 1:40 am', '10', '0142', 'Jbh35eFkDh66', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1623, 'FINA RAHAYU', '082133383153', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Epidemiolog Kesehatan', '22-11-2019, 1:40 am', '10', '0143', 'KV49js0Q67q4', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1624, 'DEWI LUSIANA PUTRI', '087717430130', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Pranata Laboratorium Kesehatan', '22-11-2019, 1:41 am', '10', '0144', 'y4FJcVMmhR2U', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1625, 'HABIBAH', '0853905334321', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Pranata Laboratorium Kesehatan', '22-11-2019, 1:41 am', '10', '0145', '5U56731uQ8bU', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1626, 'TINI HENDRIANI', '081257790492', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Penyuluh Kesehatan Masyarakat', '22-11-2019, 1:42 am', '10', '0146', 'D7MrBJ6401Az', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1627, 'RAKHMAD KHUMAIDI', '085349220369', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Dokter', '22-11-2019, 1:42 am', '10', '0147', 'G5a6A6IG8GyC', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1628, 'ARIEF NOORRAHMAN', '081227435830', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana terampil - Sanitarian', '22-11-2019, 1:42 am', '10', '0148', '92x4L141UT79', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1629, 'MAHDINI NOVIANTI', '087814013464', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana terampil - Sanitarian', '22-11-2019, 1:43 am', '10', '0149', 'e64BdvQf7fL5', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1630, 'RAHMAT AKBAR', '081359431044', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Apoteker', '22-11-2019, 1:43 am', '10', '0150', 'gIK6i09K9O4N', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1631, 'SAIDATUL MONAWARAH', '081347478647', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Bidan', '22-11-2019, 1:44 am', '10', '0151', 'AQHoNFKIve4M', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1632, 'RENY MAULIDANIAR', '081348744875', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Apoteker', '22-11-2019, 1:44 am', '10', '0152', 'EReIPNRMyD9V', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1633, 'NURUL HUSNA', '081350066792', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Pranata Laboratorium Kesehatan', '22-11-2019, 1:45 am', '10', '0153', 'dVzovAVV8eUZ', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1634, 'TULUZ HIDAYAT', '082350717665', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Epidemiolog Kesehatan', '22-11-2019, 1:45 am', '10', '0154', 'OC1UScMWWNZr', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1635, 'DAHLIANA', '082352167955', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Nutrisionis', '22-11-2019, 1:45 am', '10', '0155', 'hITvp5EbY18B', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1636, 'EMA AYU OCTAVIANI', '081253040125', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Bidan', '22-11-2019, 1:46 am', '10', '0156', '1UmRdL57KqW1', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1637, 'HJ NORHAYATI', '089691587757', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Pranata Laboratorium Kesehatan', '22-11-2019, 1:46 am', '10', '0157', '6kSRZJiPCKAd', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1638, 'NOOR SYIFA KHAIRUNNISA', '081254673563', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Bidan', '22-11-2019, 1:46 am', '10', '0158', 'HHQU352TusQd', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1639, 'ANTUNG LISA ARIATI', '081226266149', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Apoteker', '22-11-2019, 1:47 am', '10', '0159', 'U40D1DEzSbPd', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1640, 'ADONES SEHA', '085250805030', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '22-11-2019, 1:47 am', '10', '0160', 'TbPf90kb42B4', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1641, 'ISTIQOMAH', '082353170101', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Pranata Laboratorium Kesehatan', '22-11-2019, 1:48 am', '10', '0161', 'Vj4u2g5nh9d1', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1642, 'INDAH PRASETYAWATY L', '081349312184', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Epidemiolog Kesehatan', '22-11-2019, 1:48 am', '10', '0162', 'x5agF6K63B5r', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1643, 'FERDY WIRANATA', '087814181819', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '22-11-2019, 1:48 am', '10', '0132', '1oraDAkZ54HK', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1644, 'RIBKA BUNTU', '081351922635', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Pranata Laboratorium Kesehatan', '22-11-2019, 1:49 am', '10', '0163', '7bjKLJ16HHiW', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1645, 'ELLY ISFIANI', '082350575744', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Epidemiolog Kesehatan', '22-11-2019, 1:49 am', '10', '0164', 'br6IWAWkFBW7', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1646, 'SITI FATIMAH', '082353024891', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Asisten Apoteker', '22-11-2019, 1:49 am', '10', '0165', 'qqKYGrgjJ6SJ', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1647, 'LIA ELSA PRATIWI', '082154958283', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '22-11-2019, 1:50 am', '10', '0133', 'oyNcpGY5ixZ9', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1648, 'MUHAMMAD RIDUAN A', '082253367415', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '22-11-2019, 1:50 am', '10', '0166', 'hi8h8qp9u3bH', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1649, 'YOSE RIZAL BIDOL', '0895623478195', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '22-11-2019, 1:50 am', '10', '0134', '0LXmP9bc20ch', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1650, 'MULIA SARI', '085346361520', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '22-11-2019, 1:51 am', '10', '0135', '1FTOU9HZGd6N', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1651, 'KHAIRUN NISA', '082240320692', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Nutrisionis', '22-11-2019, 1:51 am', '10', '0167', 'Hhk7T99XfpNc', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1652, 'M. RESTU AULIA', '085754204828', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Apoteker', '22-11-2019, 1:52 am', '10', '0168', 'J9Xo67tHeAE3', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1653, 'NOOR MALIA OLPAH', '081528677720', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '22-11-2019, 1:52 am', '10', '0136', '5T4TScV4Ry1S', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1654, 'DEWI AYUNINGSIH', '082214969596', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Bidan', '22-11-2019, 1:52 am', '10', '0169', '3OBtPpgYBGA6', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1655, 'MAHDALINA', '085349463969', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '22-11-2019, 1:53 am', '10', '0137', 'z2gq2EdB1KpZ', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1656, 'RISKA AULIA', '081545003438', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Perawat', '22-11-2019, 1:53 am', '10', '0170', '11WRBT9rpa7J', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1657, 'HALILURRAHMAN', '083159993668', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Agama Islam', '22-11-2019, 1:53 am', '10', '0138', 'b93cnI3vAMFT', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1658, 'HILIYANTI', '085347785869', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Asisten Apoteker', '22-11-2019, 1:53 am', '10', '0171', 'K9UWNgOWOJE2', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1659, 'ANDI INTAN ISNAINI A', '081350911313', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Bidan', '22-11-2019, 1:55 am', '10', '0172', '4AeUkd2kZH73', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1660, 'RAMLAH', '085245041115', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '22-11-2019, 1:55 am', '10', '0139', 'uGyRPEn2L60i', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1661, 'RINA NURJANAH', '085750805566', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Pranata Laboratorium Kesehatan', '22-11-2019, 1:55 am', '10', '0173', 'U2O8X8bcPdQg', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1662, 'NOOR INDAH LARASATI', '082153947300', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Apoteker', '22-11-2019, 1:56 am', '10', '0174', 'CN3kQ1stGIz8', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1663, 'AULIA FITRIANI', '081255550534', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Asisten Apoteker', '22-11-2019, 1:56 am', '10', '0175', 'c0cvK7N39M3U', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1664, 'DWI NUR ANJARWATI', '082350057474', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Bidan', '22-11-2019, 1:56 am', '10', '0176', '0795sJzdG6hV', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1665, 'SYIFA HILMIYA', '087788669525', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Pranata Laboratorium Kesehatan', '22-11-2019, 1:58 am', '10', '0177', '7f7W7826YM0h', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1666, 'DJARRY LANNA', '082266073595', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Pranata Laboratorium Kesehatan', '22-11-2019, 1:58 am', '10', '0178', 'LM9HuoFUvpmg', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1667, 'NOVI NURDIAN', '082232190959', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '22-11-2019, 1:59 am', '10', '0140', 'PefZtYf1gi6o', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1668, 'LENY SULISTYORINI', '085655137797', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Bidan', '22-11-2019, 1:59 am', '10', '0179', 'iaCrq0xz8yIk', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1669, 'RIZQY SHOFIA', '085248895224', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '22-11-2019, 2:00 am', '10', '0141', '8VGAXYOAZie7', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1670, 'YONA ERIZCA HAFSARI', '0813355556929', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Agama Islam', '22-11-2019, 2:00 am', '10', '0142', '89Y1847G8NIY', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1671, 'WAHYUDI GUNAWAN', '085397029695', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Epidemiolog Kesehatan', '22-11-2019, 2:05 am', '10', '0180', 'gTK4aX13P237', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1672, 'PUTRI FERDAYANTI', '085350834878', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Nutrisionis', '22-11-2019, 2:06 am', '10', '0181', 'hPCTsYtooBzH', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1673, 'HAIFA MUNIF', '082234416641', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Bidan', '22-11-2019, 2:07 am', '10', '0182', 'U810uBU4TUgA', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1674, 'MUHAMMAD ABID MAULANA', '082154474874', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Bahasa Indonesia', '22-11-2019, 2:08 am', '10', '0143', '7fUZdH5CvQdU', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1675, 'ROSALIANI', '082352514786', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Bidan', '22-11-2019, 2:17 am', '10', '0183', 'E27undsP8V54', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1676, 'ENI SUMIATI', '08152818633', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '22-11-2019, 2:18 am', '10', '0144', '01CtPuHDVD6P', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1677, 'RAHMAN', '082213017885', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Agama Islam', '22-11-2019, 2:18 am', '10', '0145', '35cPf5SsaVAf', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1678, 'FIKA ROSSIANA DEWI', '082232315046', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Bidan', '22-11-2019, 2:20 am', '10', '0184', '53Mj7te8FfhR', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1679, 'NOVITA SARI', '082153380801', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '22-11-2019, 2:20 am', '10', '0185', '6ei3MMqH104L', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1680, 'NOVRISA LESTARI', '087779549510', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Asisten Apoteker', '22-11-2019, 2:21 am', '10', '0186', 'AfRBu1jA2Tf4', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1681, 'LINDA SARI', '082357014498', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Penjasorkes', '22-11-2019, 2:22 am', '10', '0146', 'q4kgWI7o318x', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1682, 'LINDA SARI', '082357014498', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '22-11-2019, 2:22 am', '10', '0147', '84Akp7V8g7Lg', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1683, 'RENI YUSTIANA', '081351767223', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '22-11-2019, 2:23 am', '10', '0148', 'zymi6f7fd9I4', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1684, 'RAHMIYATI', '08981231123', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '22-11-2019, 2:24 am', '10', '0149', '7B1nS75MfTKk', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1685, 'MULYATI RIZKI AULIA', '085248993093', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '22-11-2019, 2:25 am', '10', '0150', 'r6IWAWkFBW7a', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1686, 'HASBI ANDI AMRULLAH', '08999759888', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '22-11-2019, 2:26 am', '10', '0151', 't38P6XaPmJ4C', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1687, 'SHINDYA RISNA PRADITA', '085750746561', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Bahasa Indonesia', '22-11-2019, 2:26 am', '10', '0152', 'om4uWMThEyez', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1688, 'SITI ROHANI', '085248754650', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Agama Islam', '22-11-2019, 2:27 am', '10', '0153', 'U751NKk81Y0C', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1689, 'SYINTIA WULAN PERMATA S', '082157046952', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Epidemiolog Kesehatan', '22-11-2019, 2:28 am', '10', '0187', 'Haxuz0r79DCV', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1690, 'KHALIMATUS SA''DIYAH', '082157940690', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Epidemiolog Kesehatan', '22-11-2019, 2:28 am', '10', '0188', 'O5sMOk4GKst7', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1691, 'MUHAMMAD LUTFI YUNUS', '087814456877', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Perawat', '22-11-2019, 2:29 am', '10', '0189', '1fR80ncxa1M5', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1692, 'NYOMAN ANNISA ABDULLAH', '081357509342', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Perawat', '22-11-2019, 2:29 am', '10', '0190', 'nLCD2SP9BF8V', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1693, 'MUHAMMAD IRWAN HABIBI', '082251518373', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Asisten Apoteker', '22-11-2019, 2:30 am', '10', '0191', '8J5bkZE23E78', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1694, 'DIARTO ADI SAPUTRO', '081234283178', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat Gigi', '22-11-2019, 2:31 am', '10', '0192', 'uctJ2dmyApMx', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1695, 'SYALEHA', '085247162189', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Bidan', '22-11-2019, 2:31 am', '10', '0193', '6dt27cuh4M2z', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1696, 'KHAIRIL ANWAR', '085248612262', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '22-11-2019, 2:32 am', '10', '0154', 'yVTPqBrcfyJf', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1697, 'HJ. RAUDAH ELJANNAH', '085391839707', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '22-11-2019, 2:33 am', '10', '0155', 's96TP9dV2WIy', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1698, 'HULPATUNNISA', '083141415267', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Agama Islam', '22-11-2019, 2:38 am', '10', '0156', 'i070XF3JzOD0', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1699, 'ANNISA', '082251045694', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '22-11-2019, 2:38 am', '10', '0157', 'Oj2nCJ49xLGZ', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1700, 'MEILIA EKA INDRIANI', '081255005723', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '22-11-2019, 2:41 am', '10', '0194', 'aokEKb7z6Egp', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1701, 'MUHAMMAD FAIDURRAHMAN', '081352343525', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Agama Islam', '22-11-2019, 2:42 am', '10', '0158', '3K32FT638S4C', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1702, 'NOOR HAMIDAH', '081349591597', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '22-11-2019, 2:43 am', '10', '0159', 'gtRNDOOXW9jq', '2019', '911', 'Tenaga Pendidikan', '22');
INSERT INTO `buku_tamu` VALUES (1703, 'ANA MARIANA', '082250506667', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Bidan', '22-11-2019, 2:44 am', '10', '195', 'GBH5mnxxcW8b', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1704, 'NORA REZKY SANTIKA', '081931379199', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Epidemiolog Kesehatan', '22-11-2019, 2:45 am', '10', '0196', 'OVTyO1KWFG1y', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1705, 'ANUGERAH NUR RAHMAT', '0895701133898', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Epidemiolog Kesehatan', '22-11-2019, 2:49 am', '10', '0197', 'Se79pD29utM4', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1706, 'DENI HERIANTO', '085251417878', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Pelaksana Terampil - Perawat', '22-11-2019, 2:50 am', '10', '0198', 'sJAnjLRiyW3b', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1707, 'DR FELYNAWATI', '081349686329', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Kesehatan Ahli Pertama - Dokter', '22-11-2019, 2:51 am', '10', '0199', 'CokPGG3UzFv2', '2019', '911', 'Tenaga Kesehatan', '22');
INSERT INTO `buku_tamu` VALUES (1708, 'RUSMITA HANI', '082159031189', 'Mendaftar CPNS Kota Banjarbaru pada Formasi Tahun 2019 Tenaga Pendidikan Ahli Pertama - Guru Kelas', '22-11-2019, 2:53 am', '10', '0160', 'u3Ki5zuS7817', '2019', '911', 'Tenaga Pendidikan', '22');

-- --------------------------------------------------------

-- 
-- Table structure for table `cuti`
-- 

CREATE TABLE `cuti` (
  `id_ambil_cuti` int(6) NOT NULL auto_increment,
  `id_cuti` varchar(6) collate latin1_general_ci NOT NULL,
  `id_pegawai` varchar(6) collate latin1_general_ci NOT NULL,
  `lama_cuti` varchar(20) collate latin1_general_ci NOT NULL,
  `tgl_awal` varchar(50) collate latin1_general_ci NOT NULL,
  `tgl_akhir` varchar(50) collate latin1_general_ci NOT NULL,
  `alasan` text collate latin1_general_ci NOT NULL,
  `alamat_cuti` varchar(100) collate latin1_general_ci NOT NULL,
  `telp` varchar(50) collate latin1_general_ci NOT NULL,
  `tahun` varchar(15) collate latin1_general_ci NOT NULL,
  `status` varchar(20) collate latin1_general_ci NOT NULL,
  `id_atasan` varchar(6) collate latin1_general_ci NOT NULL,
  `tgl_pengajuan` varchar(50) collate latin1_general_ci NOT NULL,
  `no_cuti` varchar(10) collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`id_ambil_cuti`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `cuti`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `disposisi`
-- 

CREATE TABLE `disposisi` (
  `id_disposisi` int(10) NOT NULL auto_increment,
  `id_suratmasuk` varchar(10) collate latin1_general_ci NOT NULL,
  `id_unitkerja` varchar(10) collate latin1_general_ci NOT NULL,
  `isi` text collate latin1_general_ci NOT NULL,
  `tgl_disposisi` varchar(100) collate latin1_general_ci NOT NULL,
  `admin` varchar(100) collate latin1_general_ci NOT NULL,
  `tahun` varchar(10) collate latin1_general_ci NOT NULL,
  `tgl_cetak` varchar(30) collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`id_disposisi`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `disposisi`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `distributor`
-- 

CREATE TABLE `distributor` (
  `id_distributor` int(11) NOT NULL auto_increment,
  `distributor` varchar(500) collate latin1_general_ci NOT NULL,
  `nama_pemilik` varchar(100) collate latin1_general_ci NOT NULL,
  `alamat` varchar(500) collate latin1_general_ci NOT NULL,
  `npwp` varchar(100) collate latin1_general_ci NOT NULL,
  `rek_bank` varchar(100) collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`id_distributor`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `distributor`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `esselon`
-- 

CREATE TABLE `esselon` (
  `id_esselon` int(2) NOT NULL auto_increment,
  `esselon` varchar(100) collate latin1_general_ci NOT NULL,
  `tunjangan` varchar(20) collate latin1_general_ci NOT NULL,
  `grade` varchar(2) collate latin1_general_ci NOT NULL,
  `pensiun` varchar(3) collate latin1_general_ci NOT NULL,
  `kd_esselon` varchar(100) collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`id_esselon`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=9 ;

-- 
-- Dumping data for table `esselon`
-- 

INSERT INTO `esselon` VALUES (1, 'II.a', '3.250.000', '1', '60', 'AA');
INSERT INTO `esselon` VALUES (2, 'II.b', '2.025.000', '2', '60', 'AA');
INSERT INTO `esselon` VALUES (3, 'III.a', '1.260.000', '3', '58', 'BB');
INSERT INTO `esselon` VALUES (4, 'III.b', '980.000', '4', '58', 'BB');
INSERT INTO `esselon` VALUES (5, 'IV.a', '540.000', '5', '58', 'CC');
INSERT INTO `esselon` VALUES (6, 'IV.b', '490.000', '6', '58', 'CC');
INSERT INTO `esselon` VALUES (7, 'V.a', '360.000', '7', '58', 'DD');
INSERT INTO `esselon` VALUES (8, '-', '', '99', '58', 'FF');

-- --------------------------------------------------------

-- 
-- Table structure for table `formasi`
-- 

CREATE TABLE `formasi` (
  `id_formasi` int(6) NOT NULL auto_increment,
  `klasifikasi` varchar(50) collate latin1_general_ci NOT NULL,
  `formasi` varchar(500) collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`id_formasi`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=33 ;

-- 
-- Dumping data for table `formasi`
-- 

INSERT INTO `formasi` VALUES (1, 'Tenaga Pendidikan', 'Ahli Pertama - Guru Agama Islam');
INSERT INTO `formasi` VALUES (2, 'Tenaga Pendidikan', 'Ahli Pertama - Guru Bahasa Indonesia');
INSERT INTO `formasi` VALUES (3, 'Tenaga Pendidikan', 'Ahli Pertama - Guru Kelas');
INSERT INTO `formasi` VALUES (4, 'Tenaga Pendidikan', 'Ahli Pertama - Guru Penjasorkes');
INSERT INTO `formasi` VALUES (5, 'Tenaga Kesehatan', 'Ahli Pertama - Apoteker');
INSERT INTO `formasi` VALUES (6, 'Tenaga Kesehatan', 'Ahli Pertama - Dokter  ');
INSERT INTO `formasi` VALUES (7, 'Tenaga Kesehatan', 'Ahli Pertama - Dokter Gigi');
INSERT INTO `formasi` VALUES (8, 'Tenaga Kesehatan', 'Ahli Pertama - Epidemiolog Kesehatan');
INSERT INTO `formasi` VALUES (9, 'Tenaga Kesehatan', 'Ahli Pertama - Perawat');
INSERT INTO `formasi` VALUES (10, 'Tenaga Kesehatan', 'Ahli Pertama - Penyuluh Kesehatan Masyarakat');
INSERT INTO `formasi` VALUES (11, 'Tenaga Kesehatan', 'Ahli Pertama - Psikolog Klinis');
INSERT INTO `formasi` VALUES (12, 'Tenaga Kesehatan', 'Pelaksana Terampil - Asisten Apoteker');
INSERT INTO `formasi` VALUES (13, 'Tenaga Kesehatan', 'Pelaksana Terampil - Bidan');
INSERT INTO `formasi` VALUES (14, 'Tenaga Kesehatan', 'Pelaksana Terampil - Nutrisionis ');
INSERT INTO `formasi` VALUES (15, 'Tenaga Kesehatan', 'Pelaksana Terampil - Perawat ');
INSERT INTO `formasi` VALUES (16, 'Tenaga Kesehatan', 'Pelaksana Terampil - Perawat Gigi');
INSERT INTO `formasi` VALUES (17, 'Tenaga Kesehatan', 'Pelaksana Terampil - Pranata Laboratorium Kesehatan');
INSERT INTO `formasi` VALUES (18, 'Tenaga Kesehatan', 'Pelaksana terampil - Sanitarian');
INSERT INTO `formasi` VALUES (19, 'Tenaga Teknis', 'Ahli Pertama - Analis Keuangan Pemerintah Pusat dan Daerah');
INSERT INTO `formasi` VALUES (20, 'Tenaga Teknis', 'Ahli Pertama - Pengelola Pengadaan Barang/Jasa');
INSERT INTO `formasi` VALUES (21, 'Tenaga Teknis', 'Ahli Pertama - Teknik penyehatan lingkungan');
INSERT INTO `formasi` VALUES (22, 'Tenaga Teknis', 'Ahli Pertama - Perancang Peraturan Perundang-undangan');
INSERT INTO `formasi` VALUES (23, 'Tenaga Teknis', 'Ahli Pertama - Pranata Komputer');
INSERT INTO `formasi` VALUES (24, 'Tenaga Teknis', 'Ahli Pertama - Teknik Jalan dan Jembatan');
INSERT INTO `formasi` VALUES (25, 'Tenaga Teknis', 'Ahli Pertama - Teknik Pengairan ');
INSERT INTO `formasi` VALUES (26, 'Tenaga Teknis', 'Analis Diklat');
INSERT INTO `formasi` VALUES (27, 'Tenaga Teknis', 'Analis Kemasyarakatan');
INSERT INTO `formasi` VALUES (28, 'Tenaga Teknis', 'Analis Perencanaan Wilayah Perumahan');
INSERT INTO `formasi` VALUES (29, 'Tenaga Teknis', 'Pengelola Anggaran');
INSERT INTO `formasi` VALUES (30, 'Tenaga Teknis', 'Pengelola Formasi dan Pengadaan Pegawai');
INSERT INTO `formasi` VALUES (31, 'Tenaga Teknis', 'Pengelola pengendalian masyarakat');
INSERT INTO `formasi` VALUES (32, 'Tenaga Teknis', 'Verifikator keuangan');

-- --------------------------------------------------------

-- 
-- Table structure for table `formasi_cpns`
-- 

CREATE TABLE `formasi_cpns` (
  `id_formasi_cpns` int(6) NOT NULL auto_increment,
  `kd_formasi` varchar(20) collate latin1_general_ci NOT NULL,
  `nama_formasi` varchar(500) collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`id_formasi_cpns`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=35 ;

-- 
-- Dumping data for table `formasi_cpns`
-- 

INSERT INTO `formasi_cpns` VALUES (1, '10105001', 'ANALIS DIKLAT');
INSERT INTO `formasi_cpns` VALUES (2, '10105035', 'PENGELOLA FORMASI DAN PENGADAAN PEGAWAI');
INSERT INTO `formasi_cpns` VALUES (3, '10106058', 'PENGELOLA ANGGARAN');
INSERT INTO `formasi_cpns` VALUES (4, '10106112', 'VERIFIKATOR KEUANGAN');
INSERT INTO `formasi_cpns` VALUES (5, '10109032', 'PENGELOLA PENGENDALIAN MASYARAKAT');
INSERT INTO `formasi_cpns` VALUES (6, '11300007', 'ANALIS KEMASYARAKATAN');
INSERT INTO `formasi_cpns` VALUES (7, '12000014', 'ANALIS PERENCANAAN WILAYAH PERUMAHAN');
INSERT INTO `formasi_cpns` VALUES (8, 'JFGURU1004', 'AHLI PERTAMA - GURU AGAMA ISLAM');
INSERT INTO `formasi_cpns` VALUES (9, 'JFGURU1020', 'AHLI PERTAMA - GURU BAHASA INDONESIA');
INSERT INTO `formasi_cpns` VALUES (10, 'JFGURU1040', 'AHLI PERTAMA - GURU KELAS');
INSERT INTO `formasi_cpns` VALUES (11, 'JFGURU1052', 'AHLI PERTAMA - GURU PENJASORKES');
INSERT INTO `formasi_cpns` VALUES (12, 'JFKES2132', 'PELAKSANA/TERAMPIL - ASISTEN APOTEKER');
INSERT INTO `formasi_cpns` VALUES (13, 'JFKES2133', 'PELAKSANA/TERAMPIL - BIDAN');
INSERT INTO `formasi_cpns` VALUES (14, 'JFKES2137', 'PELAKSANA/TERAMPIL - NUTRISIONIS');
INSERT INTO `formasi_cpns` VALUES (15, 'JFKES2141', 'PELAKSANA/TERAMPIL - PERAWAT');
INSERT INTO `formasi_cpns` VALUES (16, 'JFKES2142', 'PELAKSANA/TERAMPIL - PERAWAT GIGI');
INSERT INTO `formasi_cpns` VALUES (17, 'JFKES2144', 'PELAKSANA/TERAMPIL - PRANATA LABORATORIUM KESEHATAN');
INSERT INTO `formasi_cpns` VALUES (18, 'JFKES2147', 'PELAKSANA/TERAMPIL - SANITARIAN');
INSERT INTO `formasi_cpns` VALUES (19, 'JFKES5102', 'AHLI PERTAMA - APOTEKER');
INSERT INTO `formasi_cpns` VALUES (20, 'JFKES5104', 'AHLI PERTAMA - DOKTER');
INSERT INTO `formasi_cpns` VALUES (21, 'JFKES5105', 'AHLI PERTAMA - DOKTER GIGI');
INSERT INTO `formasi_cpns` VALUES (22, 'JFKES5106', 'AHLI PERTAMA - EPIDEMIOLOG KESEHATAN');
INSERT INTO `formasi_cpns` VALUES (23, 'JFKES5110', 'AHLI PERTAMA - NUTRISIONIS');
INSERT INTO `formasi_cpns` VALUES (24, 'JFKES5111', 'AHLI PERTAMA - PENYULUH KESEHATAN MASYARAKAT');
INSERT INTO `formasi_cpns` VALUES (25, 'JFKES5112', 'AHLI PERTAMA - PERAWAT');
INSERT INTO `formasi_cpns` VALUES (26, 'JFTEK2067', 'PELAKSANA/TERAMPIL - PRANATA KOMPUTER');
INSERT INTO `formasi_cpns` VALUES (27, 'JFTEK5027', 'AHLI PERTAMA - PRANATA KOMPUTER');
INSERT INTO `formasi_cpns` VALUES (28, 'JFTEK5042', 'AHLI PERTAMA - PENGELOLA PENGADAAN BARANG/JASA');
INSERT INTO `formasi_cpns` VALUES (29, 'JFTEK5061', 'AHLI PERTAMA - PERANCANG PERATURAN PERUNDANG - UNDANGAN');
INSERT INTO `formasi_cpns` VALUES (30, 'JFTEK5070', 'AHLI PERTAMA - ANALIS KEUANGAN PEMERINTAH PUSAT DAN DAERAH');
INSERT INTO `formasi_cpns` VALUES (31, 'JFTEK5123', 'AHLI PERTAMA - TEKNIK PENGAIRAN');
INSERT INTO `formasi_cpns` VALUES (32, 'JFTEK5124', 'AHLI PERTAMA - TEKNIK PENYEHATAN LINGKUNGAN');
INSERT INTO `formasi_cpns` VALUES (33, 'JFTEK5125', 'AHLI PERTAMA - TEKNIK JALAN DAN JEMBATAN');
INSERT INTO `formasi_cpns` VALUES (34, 'JFKES5116', 'AHLI PERTAMA - PSIKOLOG KLINIS');

-- --------------------------------------------------------

-- 
-- Table structure for table `jabatan`
-- 

CREATE TABLE `jabatan` (
  `id_jabatan` int(6) NOT NULL auto_increment,
  `jabatan` varchar(100) collate latin1_general_ci NOT NULL,
  `jns_jabatan` varchar(10) collate latin1_general_ci NOT NULL,
  `id_esselon` varchar(4) collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`id_jabatan`),
  UNIQUE KEY `jabatan` (`jabatan`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=48 ;

-- 
-- Dumping data for table `jabatan`
-- 

INSERT INTO `jabatan` VALUES (3, 'KEPALA BADAN KEPEGAWAIAN, PENDIDIKAN DAN PELATIHAN', 'Struktural', '2');
INSERT INTO `jabatan` VALUES (4, 'SEKRETARIS', 'Struktural', '3');
INSERT INTO `jabatan` VALUES (5, 'KEPALA SUB BAGIAN UMUM DAN KEPEGAWAIAN', 'Struktural', '5');
INSERT INTO `jabatan` VALUES (6, 'KEPALA SUB BAGIAN PERENCANAAN DAN KEUANGAN', 'Struktural', '5');
INSERT INTO `jabatan` VALUES (7, 'KEPALA BIDANG PERENCANAAN DAN PEMBINAAN APARATUR', 'Struktural', '4');
INSERT INTO `jabatan` VALUES (8, 'KEPALA BIDANG BIDANG MUTASI DAN PENGEMBANGAN APARATUR', 'Struktural', '4');
INSERT INTO `jabatan` VALUES (9, 'KEPALA SUB BIDANG DIKLAT DAN PENGEMBANGAN KOMPETENSI APARATUR', 'Struktural', '5');
INSERT INTO `jabatan` VALUES (10, 'KEPALA SUB BIDANG PENILAIAN KINERJA DAN PENGEMBANGAN KARIR APARATUR', 'Struktural', '5');
INSERT INTO `jabatan` VALUES (11, 'KEPALA SUB BIDANG INFORMASI DAN FASILITASI PROFESI ASN', 'Struktural', '5');
INSERT INTO `jabatan` VALUES (12, 'KEPALA SUB BIDANG DISIPLIN, KESEJAHTERAAN DAN PERLINDUNGAN APARATUR', 'Struktural', '5');
INSERT INTO `jabatan` VALUES (13, 'KEPALA SUB BIDANG PENGADAAN DAN PEMBERHENTIAN APARATUR', 'Struktural', '5');
INSERT INTO `jabatan` VALUES (14, 'KEPALA SUB BIDANG MUTASI DAN KEPANGKATAN APARATUR', 'Struktural', '5');
INSERT INTO `jabatan` VALUES (15, 'ANALIS SISTEM INFORMASI DAN JARINGAN', 'Struktural', '8');
INSERT INTO `jabatan` VALUES (16, 'PENGELOLA BAHAN PERENCANAAN', 'Struktural', '8');
INSERT INTO `jabatan` VALUES (17, 'PENGADMINISTRASI TUGAS/IZIN BELAJAR', 'Struktural', '8');
INSERT INTO `jabatan` VALUES (18, 'PRAMU BAKTI', 'Struktural', '8');
INSERT INTO `jabatan` VALUES (19, 'PENGELOLA DATA', 'Struktural', '8');
INSERT INTO `jabatan` VALUES (20, 'ANALIS PENGEMBANGAN KOMPETENSI', 'Struktural', '8');
INSERT INTO `jabatan` VALUES (21, 'PENGELOLA KEPEGAWAIAN', 'Struktural', '8');
INSERT INTO `jabatan` VALUES (22, 'PENGADMINISTRASI UMUM', 'Struktural', '8');
INSERT INTO `jabatan` VALUES (23, 'ANALIS PERENCANAAN, EVALUASI DAN PELAPORAN', 'Struktural', '8');
INSERT INTO `jabatan` VALUES (24, 'PENGADMINISTRASI KEPEGAWAIAN', 'Struktural', '8');
INSERT INTO `jabatan` VALUES (25, 'ANALIS DIKLAT', 'Struktural', '8');
INSERT INTO `jabatan` VALUES (26, 'ANALIS KINERJA', 'Struktural', '8');
INSERT INTO `jabatan` VALUES (27, 'PENYUSUN RENCANA MUTASI', 'Struktural', '8');
INSERT INTO `jabatan` VALUES (28, 'ANALIS KESEJAHTERAAN SDM', 'Struktural', '8');
INSERT INTO `jabatan` VALUES (29, 'PENGADMINISTRASI PERSURATAN', 'Struktural', '8');
INSERT INTO `jabatan` VALUES (30, 'PELAKSANA', 'Struktural', '8');
INSERT INTO `jabatan` VALUES (31, 'PENYUSUN KEBUTUHAN BARANG INVENTARIS', 'Struktural', '8');
INSERT INTO `jabatan` VALUES (32, 'PENGELOLA DISIPLIN PEGAWAI', 'Struktural', '8');
INSERT INTO `jabatan` VALUES (33, 'PRANATA KOMPUTER PELAKSANA', 'Fungsional', '8');
INSERT INTO `jabatan` VALUES (34, 'PRANATA KOMPUTER PELAKSANA LANJUTAN', 'Fungsional', '8');
INSERT INTO `jabatan` VALUES (35, 'PENGELOLA GAJI	', 'Struktural', '8');
INSERT INTO `jabatan` VALUES (36, 'VERIFIKATOR KEUANGAN', 'Struktural', '8');
INSERT INTO `jabatan` VALUES (37, 'BENDAHARA', 'Struktural', '8');
INSERT INTO `jabatan` VALUES (38, 'ANALIS KESEJAHTERAAN APARATUR', 'Struktural', '8');
INSERT INTO `jabatan` VALUES (39, 'ANALIS KEPEGAWAIAN PERTAMA', 'Fungsional', '8');
INSERT INTO `jabatan` VALUES (40, 'PENGELOLA SARANA DAN PRASARANA', 'Struktural', '8');
INSERT INTO `jabatan` VALUES (41, 'ANALIS HUKUM', 'Struktural', '8');
INSERT INTO `jabatan` VALUES (42, 'ANALIS PENGEMBANGAN KARIR', 'Struktural', '8');
INSERT INTO `jabatan` VALUES (43, 'PRANATA DIKLAT', 'Struktural', '8');
INSERT INTO `jabatan` VALUES (44, 'PRANATA KOMPUTER PERTAMA', 'Fungsional', '8');
INSERT INTO `jabatan` VALUES (45, 'PENGELOLA FORMASI DAN PENGADAAN PEGAWAI', 'Struktural', '8');
INSERT INTO `jabatan` VALUES (46, 'ANALIS KEPEGAWAIAN MADYA', 'Fungsional', '8');
INSERT INTO `jabatan` VALUES (47, 'PENGELOLA SISTEM INFORMASI MANAJEMEN KEPEGAWAIAN', 'Struktural', '8');

-- --------------------------------------------------------

-- 
-- Table structure for table `jenis_cuti`
-- 

CREATE TABLE `jenis_cuti` (
  `id_cuti` int(6) NOT NULL auto_increment,
  `cuti` varchar(30) collate latin1_general_ci NOT NULL,
  `max` varchar(20) collate latin1_general_ci NOT NULL,
  `kd_cuti` varchar(500) collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`id_cuti`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=7 ;

-- 
-- Dumping data for table `jenis_cuti`
-- 

INSERT INTO `jenis_cuti` VALUES (1, 'Cuti Tahunan', '12', '851');
INSERT INTO `jenis_cuti` VALUES (2, 'Cuti Alasan Penting', '31', '857');
INSERT INTO `jenis_cuti` VALUES (3, 'Cuti Sakit', '14', '853');
INSERT INTO `jenis_cuti` VALUES (4, 'Cuti Sakit Gugur Kandungan', '47', '853');
INSERT INTO `jenis_cuti` VALUES (5, 'Cuti Melahirkan', '93', '854');
INSERT INTO `jenis_cuti` VALUES (6, 'Cuti Besar', '93', '852');

-- --------------------------------------------------------

-- 
-- Table structure for table `jenis_pd`
-- 

CREATE TABLE `jenis_pd` (
  `id_pd` int(2) NOT NULL auto_increment,
  `pd` varchar(100) collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`id_pd`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=4 ;

-- 
-- Dumping data for table `jenis_pd`
-- 

INSERT INTO `jenis_pd` VALUES (1, 'Perjalanan Dinas Luar Daerah');
INSERT INTO `jenis_pd` VALUES (2, 'Perjalanan Dinas Luar Daerah Dalam Provinsi');
INSERT INTO `jenis_pd` VALUES (3, 'Perjalanan Dinas Dalam Daerah');

-- --------------------------------------------------------

-- 
-- Table structure for table `kgb`
-- 

CREATE TABLE `kgb` (
  `id_kgb` int(10) NOT NULL auto_increment,
  `kd_kgb` varchar(10) collate latin1_general_ci NOT NULL,
  `no_agenda` varchar(10) collate latin1_general_ci NOT NULL,
  `tgl_surat` varchar(30) collate latin1_general_ci NOT NULL,
  `gelar_dpn` varchar(30) collate latin1_general_ci NOT NULL,
  `nama` varchar(500) collate latin1_general_ci NOT NULL,
  `gelar_blk` varchar(50) collate latin1_general_ci NOT NULL,
  `nip` varchar(50) collate latin1_general_ci NOT NULL,
  `unit_kerja` text collate latin1_general_ci NOT NULL,
  `tmt_kgb` varchar(50) collate latin1_general_ci NOT NULL,
  `tmt_yad` varchar(50) collate latin1_general_ci NOT NULL,
  `tahun` varchar(6) collate latin1_general_ci NOT NULL,
  `admin` varchar(30) collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`id_kgb`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=4 ;

-- 
-- Dumping data for table `kgb`
-- 

INSERT INTO `kgb` VALUES (1, '822.4', '0001', '4 April 2017', '', 'NOVALYA JANARKO', '', '196910292003121001', 'BKPP', '01-04-2019', '01-04-2021', '2019', '');
INSERT INTO `kgb` VALUES (2, '822.1', '0002', '5 Februari Tahun', 'H.', 'PAIJO', 'S.Kom', '198511252010011009', 'RSDI BANJARBARU', '01-10-2018', '01-04-2021', '2019', '');
INSERT INTO `kgb` VALUES (3, '822.1', '0003', '5 April 2017', 'H.', 'NOVALYA JANARKO', 'S.Aja', '19700418 200312 1 ', 'RSDI BANJARBARU', '01-04-2018', '01-04-2021', '2019', '');

-- --------------------------------------------------------

-- 
-- Table structure for table `mobil`
-- 

CREATE TABLE `mobil` (
  `id_mobil` int(10) NOT NULL auto_increment,
  `tanggal` varchar(100) collate latin1_general_ci NOT NULL,
  `nama` varchar(100) collate latin1_general_ci NOT NULL,
  `subbid` varchar(100) collate latin1_general_ci NOT NULL,
  `keperluan` text collate latin1_general_ci NOT NULL,
  `id_petugas` varchar(6) collate latin1_general_ci NOT NULL,
  `unix` varchar(100) collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`id_mobil`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=3 ;

-- 
-- Dumping data for table `mobil`
-- 

INSERT INTO `mobil` VALUES (1, '12-01-2019, 2:39 pm', 'RIYANTO WIDI PRANOWO, S.TH', 'SUB BAGIAN UMUM DAN KEPEGAWAIAN', 'n', '3', 'Kk35MBIIc1eu');
INSERT INTO `mobil` VALUES (2, '12-01-2019, 2:49 pm', 'TAUFIQURRAHMAN NOOR, S.AG., MM', 'SUB BAGIAN PERENCANAAN DAN KEUANGAN', 'aaaaa', '1', 'W17p2N984zDs');

-- --------------------------------------------------------

-- 
-- Table structure for table `pagu_sppd`
-- 

CREATE TABLE `pagu_sppd` (
  `id_pagu` int(3) NOT NULL auto_increment,
  `id_unit_sppd` varchar(6) collate latin1_general_ci NOT NULL,
  `rp` varchar(100) collate latin1_general_ci NOT NULL,
  `tahun` varchar(10) collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`id_pagu`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `pagu_sppd`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `panjar`
-- 

CREATE TABLE `panjar` (
  `id_panjar` int(6) NOT NULL auto_increment,
  `id_sppd` varchar(6) collate latin1_general_ci NOT NULL,
  `klasifikasi` varchar(30) collate latin1_general_ci NOT NULL,
  `rincian` text collate latin1_general_ci NOT NULL,
  `harga` varchar(20) collate latin1_general_ci NOT NULL,
  `tgl_panjar` varchar(30) collate latin1_general_ci NOT NULL,
  `status` varchar(10) collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`id_panjar`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=3 ;

-- 
-- Dumping data for table `panjar`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `pegawai`
-- 

CREATE TABLE `pegawai` (
  `id_pegawai` int(10) NOT NULL auto_increment,
  `gelar_dpn` varchar(20) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `gelar_blk` varchar(20) NOT NULL,
  `nama_p` varchar(50) NOT NULL,
  `nip` varchar(30) NOT NULL,
  `tempat_lahir` varchar(100) NOT NULL,
  `tgl_lahir` varchar(12) NOT NULL,
  `golongan` varchar(27) NOT NULL,
  `tmt` varchar(12) NOT NULL,
  `id_jabatan` varchar(10) NOT NULL,
  `jabatan` varchar(100) NOT NULL,
  `eselon` varchar(20) NOT NULL,
  `unit_kerja` varchar(100) NOT NULL,
  `kelamin` varchar(15) NOT NULL,
  `gol_darah` varchar(3) NOT NULL,
  `no_telp` varchar(30) NOT NULL,
  `alamat` text NOT NULL,
  `admin` varchar(40) NOT NULL,
  `tgl` varchar(20) NOT NULL,
  `lokasi` varchar(250) NOT NULL,
  `id_atasan` varchar(40) NOT NULL,
  `level` varchar(2) NOT NULL,
  `status` varchar(2) NOT NULL,
  `nrtk` varchar(30) NOT NULL,
  PRIMARY KEY  (`id_pegawai`),
  UNIQUE KEY `nip` (`nip`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=30 ;

-- 
-- Dumping data for table `pegawai`
-- 

INSERT INTO `pegawai` VALUES (1, '', 'LUKI DWI JANARKO', 'S.Kom', 'LUKI DWI JANARKO', '198505212010011009', 'Ponorogo', '21-05-1985', '7', '01-04-2018', '5', 'KEPALA SUB BAGIAN UMUM DAN KEPEGAWAIAN', 'IV.a', 'SUB BAGIAN UMUM DAN KEPEGAWAIAN', 'Laki-Laki', 'O', '082244784747', 'Komplek wengga kuda blok d no. 178 a kel. gt. manggis, banjarbaru', '', '07-07-2019, 6:54 pm', 'files/813811701cb6e58393dba20fa156f9fa.png', '4', '5', '1', '');
INSERT INTO `pegawai` VALUES (2, '', 'SLAMET RIYADI', 'S.Sos', 'SLAMET RIYADI', '196612121989101001', 'Magelang', '12-12-1966', '5', '01-04-2017', '4', 'SEKRETARIS', 'III.a', 'SEKRETARIAT', 'Laki-Laki', 'A', '-', '-', '', '09-07-2019, 4:57 pm', 'files/38d8c7a01726a9bcec222c527e74c0bc.png', '3', '3', '1', '');
INSERT INTO `pegawai` VALUES (3, 'Dra.', 'SRI LAILANA', '', 'SRI LAILANA', '197304141993022003', 'Banjarbaru', '14-04-1973', '5', '01-04-2017', '3', 'KEPALA BADAN KEPEGAWAIAN, PENDIDIKAN DAN PELATIHAN', 'II.b', 'BADAN KEPEGAWAIAN, PENDIDIKAN DAN PELATIHAN', 'Perempuan', '-', '-', '-', '', '10-09-2019, 5:19 pm', 'files/e8a54d17e68afc077237e03384789178.jpg', '3', '2', '1', '');
INSERT INTO `pegawai` VALUES (4, 'H. ', 'FATHUR RAHMAN', 'S.Sos, MM', 'FATHUR RAHMAN ', '196306031985031030', 'Hulu Sungai Selatan', '03-06-1963', '5', '01-04-2010', '7', 'KEPALA BIDANG PERENCANAAN DAN PEMBINAAN APARATUR', 'III.b', 'BIDANG PERENCANAAN DAN PEMBINAAN APARATUR', 'Laki-Laki', '-', '-', '-', '', '10-09-2019, 5:24 pm', 'files/058ae6b0578c02031aeaee4c2b6ee00d.jpg', '3', '4', '1', '');
INSERT INTO `pegawai` VALUES (5, 'Hj. ', 'SARIDELI', 'SH,MM', 'SARIDELI ', '197006131997032007', 'Palangkaraya', '13-06-1970', '5', '01-04-2019', '8', 'KEPALA BIDANG BIDANG MUTASI DAN PENGEMBANGAN APARATUR', 'III.b', 'BIDANG MUTASI DAN PENGEMBANGAN APARATUR', 'Perempuan', '-', '-', '-', '', '17-09-2019, 6:24 am', 'files/2550f2e1f53292663a4007c71ad0c854.jpg', '3', '4', '1', '');
INSERT INTO `pegawai` VALUES (6, '', 'BUDI RIFANI', 'S.Sos', 'BUDI RIFANI', '197403241997031002', 'Banjarmasin', '24-03-1974', '6', '01-04-2019', '13', 'KEPALA SUB BIDANG PENGADAAN DAN PEMBERHENTIAN APARATUR', 'IV.a', 'SUB BIDANG PENGADAAN DAN PEMBERHENTIAN APARATUR', 'Laki-Laki', '-', '-', '-', '', '17-09-2019, 6:31 am', 'files/003ef52e57bc4dc96579ccab36325684.jpg', '7', '5', '1', '');
INSERT INTO `pegawai` VALUES (7, '', 'RUSTY NOFIAN', 'SE', 'RUSTY NOFIAN', '198011142009032005', 'Bandung', '14-11-1980', '7', '01-04-2016', '5', 'KEPALA SUB BAGIAN UMUM DAN KEPEGAWAIAN', 'IV.a', 'SUB BAGIAN UMUM DAN KEPEGAWAIAN', 'Perempuan', '-', '-', '-', '', '17-09-2019, 6:32 am', 'files/2bb4b62e0789cf442eac5897919542e6.jpg', '4', '5', '1', '');
INSERT INTO `pegawai` VALUES (8, '', 'TETTY ANGGRAINI', 'S.Psi', 'TETTY ANGGRAINI', '198212262010012023', 'Jakarta', '26-12-1982', '7', '01-04-2016', '14', 'KEPALA SUB BIDANG MUTASI DAN KEPANGKATAN APARATUR', 'IV.a', 'BIDANG MUTASI DAN PENGEMBANGAN APARATUR', 'Perempuan', '-', '-', '-', '', '17-09-2019, 6:34 am', 'files/be520aa00d0dd601a083fb6292e39675.jpg', '8', '5', '1', '');
INSERT INTO `pegawai` VALUES (9, '', 'FIRDAUS NOORRAHMAN', 'SE', 'FIRDAUS NOORRAHMAN', '198511252010011009', 'Banjarmasin', '25-11-1985', '7', '01-04-2016', '10', 'KEPALA SUB BIDANG PENILAIAN KINERJA DAN PENGEMBANGAN KARIR APARATUR', 'IV.a', 'SUB BIDANG PENILAIAN KINERJA DAN PENGEMBANGAN KARI', 'Laki-Laki', '-', '-', '-', '', '17-09-2019, 6:43 am', 'files/bfe979f12abfe7d395316eab297c9eed.jpg', '8', '5', '1', '');
INSERT INTO `pegawai` VALUES (28, '', 'HELMI MAHDITIA ADAM', 'S.Kom', 'HELMI MAHDITIA ADAM', '198604192010011007', 'Banjarbaru', '19-04-1986', '8', '01-04-2018', '11', 'KEPALA SUB BIDANG INFORMASI DAN FASILITASI PROFESI ASN', 'IV.a', 'SUB BIDANG PENILAIAN KINERJA DAN PENGEMBANGAN KARI', 'Laki-Laki', '-', '-', '-', '', '28-01-2020, 6:43 pm', 'files/b22fdc97ae0423485224ac89ab8e98c3.jpg', '7', '5', '1', '');
INSERT INTO `pegawai` VALUES (11, '', 'EVIE LISTIANA', 'SH', 'EVIE LISTIANA', '198101312010012010', 'Banjarbaru', '31-01-1981', '7', '01-04-2018', '12', 'KEPALA SUB BIDANG DISIPLIN, KESEJAHTERAAN DAN PERLINDUNGAN APARATUR', 'IV.a', 'SUB BIDANG DISIPLIN, KESEJAHTERAAN DAN PERLINDUNGA', 'Perempuan', '-', '-', '-', '', '17-09-2019, 6:46 am', 'files/b22e57e036cea69ae2d1f6111477ed1f.jpg', '7', '5', '1', '');
INSERT INTO `pegawai` VALUES (12, '', 'MESNAWATI', 'S.Sos', 'MESNAWATI', '198203112008012029', 'Banjarbaru', '11-03-1982', '9', '01-04-2016', '39', 'ANALIS KEPEGAWAIAN PERTAMA', '-', 'BADAN KEPEGAWAIAN, PENDIDIKAN DAN PELATIHAN', 'Perempuan', '-', '-', '-', '', '17-09-2019, 6:54 am', 'files/513e118d5579345ec91f6024125b653e.jpg', '3', '99', '1', '');
INSERT INTO `pegawai` VALUES (13, '', 'KHAIRINA RAHMAWATI', 'SE', 'KHAIRINA RAHMAWATI', '196703271996032001', 'Hulu Sungai Tengah', '27-03-1967', '7', '01-04-2016', '47', 'PENGELOLA SISTEM INFORMASI MANAJEMEN KEPEGAWAIAN', '-', 'SUB BIDANG PENGADAAN DAN PEMBERHENTIAN APARATUR', 'Perempuan', '-', '-', '-', '', '17-09-2019, 7:01 am', 'files/95004f420a8bc01598a7483401165773.jpg', '14', '99', '1', '');
INSERT INTO `pegawai` VALUES (14, '', 'AKHMAD RIPANI', '', 'AKHMAD RIPANI', '197008101993031008', 'Hulu Sungai Tengah', '10-08-1970', '8', '01-04-2016', '43', 'PRANATA DIKLAT', '-', 'SUB BIDANG DIKLAT DAN PENGEMBANGAN KOMPETENSI APAR', 'Laki-Laki', '-', '-', '-', '', '17-09-2019, 7:10 am', 'files/a42bb6ae4f2965b219d21d65c746a931.jpg', '10', '99', '1', '');
INSERT INTO `pegawai` VALUES (15, '', 'CICI SRI WAHYUNI', 'SE', 'CICI SRI WAHYUNI', '197810182010012001', 'Banjarbaru', '18-10-1978', '8', '01-04-2016', '27', 'PENYUSUN RENCANA MUTASI', '-', 'SUB BIDANG MUTASI DAN KEPANGKATAN APARATUR', 'Perempuan', '-', '-', '-', '', '17-09-2019, 7:11 am', 'files/c892da62537ec47fbab3481f6b088035.jpg', '8', '99', '1', '');
INSERT INTO `pegawai` VALUES (16, '', 'KARTINI', 'A.Md', 'KARTINI', '198504092008032003', 'Banjarmasin', '09-04-1985', '9', '01-04-2016', '37', 'BENDAHARA', '-', 'SUB BAGIAN PERENCANAAN DAN KEUANGAN', 'Perempuan', '-', '-', '-', '', '17-09-2019, 7:40 am', 'files/9c62c1409e8f119e7383af88f020dbb4.jpg', '9', '99', '1', '');
INSERT INTO `pegawai` VALUES (17, '', 'RAHMADANIAH', 'SE', 'RAHMADANIAH', '198605142010012013', 'Tanah Bumbu', '14-05-1986', '8', '01-04-2019', '36', 'VERIFIKATOR KEUANGAN', '-', 'SUB BAGIAN PERENCANAAN DAN KEUANGAN', 'Perempuan', '-', '-', '-', '', '17-09-2019, 7:42 am', 'files/c8d84c737737aefafad6dbf3064c1693.jpg', '9', '99', '1', '');
INSERT INTO `pegawai` VALUES (18, '', 'ERLINDA MAHARANI PUSPITA SARI', 'SH', 'ERLINDA MAHARANI PUSPITA SARI', '199201052015032004', 'Yogyakarta', '05-01-1992', '8', '01-04-2019', '41', 'ANALIS HUKUM', '-', 'SUB BIDANG DISIPLIN, KESEJAHTERAAN DAN PERLINDUNGA', 'Perempuan', '-', '-', '-', '', '17-09-2019, 7:48 am', 'files/5203e9f8a8e7a071d84d1f1edd26a83c.jpg', '13', '99', '1', '');
INSERT INTO `pegawai` VALUES (19, '', 'RIZQI HIDAYAH', 'S.IP', 'RIZQI HIDAYAH', '199305292015072001', 'Banjarmasin', '29-05-1993', '9', '01-07-2016', '42', 'ANALIS PENGEMBANGAN KARIR', '-', 'SUB BIDANG PENILAIAN KINERJA DAN PENGEMBANGAN KARI', 'Perempuan', '-', '-', '-', '', '17-09-2019, 7:50 am', 'files/335e24e19a44959ba477de8fd5df5007.jpg', '11', '99', '1', '');
INSERT INTO `pegawai` VALUES (20, 'H.', 'YUDI NOPRIHAN', 'SE, MM', 'YUDI NOPRIHAN', '197811052010011003', 'Hulu Sungai Selatan', '05-11-1978', '9', '01-12-2017', '38', 'ANALIS KESEJAHTERAAN APARATUR', '-', 'SUB BIDANG DISIPLIN, KESEJAHTERAAN DAN PERLINDUNGA', 'Laki-Laki', '-', '-', '-', '', '17-09-2019, 7:53 am', 'files/3a05f45b569e43fb4e137640f583a3b2.jpg', '13', '99', '1', '');
INSERT INTO `pegawai` VALUES (21, '', 'AKHMAD BUDIANOOR', 'A.Md', 'AKHMAD BUDIANOOR', '198312182010011013', 'Banjarbaru', '18-12-1983', '9', '01-04-2018', '40', 'PENGELOLA SARANA DAN PRASARANA', '-', 'SUB BAGIAN UMUM DAN KEPEGAWAIAN', 'Laki-Laki', '-', '-', '-', '', '17-09-2019, 8:06 am', 'files/d1b0a723a9616d25aa2cf8f75fad7972.jpg', '6', '99', '1', '');
INSERT INTO `pegawai` VALUES (22, '', 'MUHAMMAD FAZLI RAHMAWAN', 'SE', 'MUHAMMAD FAZLI RAHMAWAN', '198512132010011002', 'Hulu Sungai Selatan', '13-12-1985', '9', '01-04-2018', '35', 'PENGELOLA GAJI	', '-', 'SUB BAGIAN PERENCANAAN DAN KEUANGAN', 'Laki-Laki', '-', '-', '-', '', '17-09-2019, 8:08 am', 'files/b18cb643e946116d193e95c6d1de42f0.jpg', '9', '99', '1', '');
INSERT INTO `pegawai` VALUES (23, '', 'RAMA DHIPA YANA', 'A.Md', 'RAMA DHIPA YANA', '198305162010011011', 'Banjarmasin', '16-05-1983', '9', '01-04-2018', '34', 'PRANATA KOMPUTER PELAKSANA LANJUTAN', '-', 'BADAN KEPEGAWAIAN, PENDIDIKAN DAN PELATIHAN', 'Laki-Laki', '-', '-', '-', '', '17-09-2019, 8:16 am', 'files/dd71694c517dc8f94594c5a2472d4d74.jpg', '3', '99', '1', '');
INSERT INTO `pegawai` VALUES (24, '', 'DODIK PURNOMO', '', 'DODIK PURNOMO', '197511182009011003', 'Kediri', '18-11-1975', '11', '01-04-2017', '31', 'PENYUSUN KEBUTUHAN BARANG INVENTARIS', '-', 'SUB BAGIAN UMUM DAN KEPEGAWAIAN', 'Laki-Laki', '-', '-', '-', '', '17-09-2019, 8:17 am', 'files/2a25407c8f66cee8df098db0ad5365ac.jpg', '6', '99', '1', '');
INSERT INTO `pegawai` VALUES (25, '', 'ZUBAIDAH', '', 'ZUBAIDAH', '197406202006042018', 'Hulu Sungai Tengah', '20-06-1974', '10', '01-04-2018', '32', 'PENGELOLA DISIPLIN PEGAWAI', '-', 'SUB BIDANG DISIPLIN, KESEJAHTERAAN DAN PERLINDUNGA', 'Laki-Laki', '-', '-', '-', '', '17-09-2019, 8:18 am', 'files/26430ef47ca8770fc4c771f3be34b0cc.jpg', '13', '99', '1', '');
INSERT INTO `pegawai` VALUES (26, '', 'NUR PRASETYA SANTOSO', '', 'NUR PRASETYA SANTOSO', '198104142014061001', 'Kotabaru', '14-04-1981', '12', '01-10-2018', '22', 'PENGADMINISTRASI UMUM', '-', 'BIDANG MUTASI DAN PENGEMBANGAN APARATUR', 'Laki-Laki', '-', '-', '-', '', '17-09-2019, 8:20 am', 'files/16964fb7eba59a2033847e36425fac4c.jpg', '8', '99', '1', '');
INSERT INTO `pegawai` VALUES (27, '', 'RISMADI', '', 'RISMADI', '196711062007011014', 'Banjarbaru', '06-11-1967', '15', '01-04-2015', '29', 'PENGADMINISTRASI PERSURATAN', '-', 'SUB BAGIAN UMUM DAN KEPEGAWAIAN', 'Laki-Laki', '-', '-', '-', '', '17-09-2019, 8:53 am', 'files/767f38bc691fb25f724a89b2affe52e5.jpg', '6', '99', '1', '');
INSERT INTO `pegawai` VALUES (29, '', 'DIANA FITHRI WARDHANI', 'SH', 'DIANA FITHRI WARDHANI', '197809092005012011', 'Banjarbaru', '09-09-1978', '6', '01-10-2014', '9', 'KEPALA SUB BIDANG DIKLAT DAN PENGEMBANGAN KOMPETENSI APARATUR', 'IV.a', 'SUB BIDANG DIKLAT DAN PENGEMBANGAN KOMPETENSI APAR', 'Perempuan', '-', '-', '-', '', '28-01-2020, 6:45 pm', 'files/94704f3bb90cdb58726fd7c3923e9789.jpg', '10', '5', '1', '');

-- --------------------------------------------------------

-- 
-- Table structure for table `petugas`
-- 

CREATE TABLE `petugas` (
  `id_petugas` int(6) NOT NULL auto_increment,
  `nama` varchar(500) collate latin1_general_ci NOT NULL,
  `nip` varchar(100) collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`id_petugas`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=10 ;

-- 
-- Dumping data for table `petugas`
-- 

INSERT INTO `petugas` VALUES (1, 'RAHMADANIAH, SE', '198605142010012013');
INSERT INTO `petugas` VALUES (2, 'AKHMAD BUDIANOOR, A.Md', '198312182010011013');
INSERT INTO `petugas` VALUES (3, 'DODIK PURNOMO', '197511182009011003');
INSERT INTO `petugas` VALUES (4, 'RISMADI ', '196711062007011014');
INSERT INTO `petugas` VALUES (5, 'DWI ERLINA ROSANTY', '109 85 08');
INSERT INTO `petugas` VALUES (6, 'YURI RAHMITA R., SE', '118 89 08');
INSERT INTO `petugas` VALUES (7, 'RIKA DWI HASTUTI N, SE ', '129 89 08');
INSERT INTO `petugas` VALUES (8, 'MARYONO', '135 89 09');
INSERT INTO `petugas` VALUES (9, 'NURUL SALSHA MAULIDANIA', '');

-- --------------------------------------------------------

-- 
-- Table structure for table `puas`
-- 

CREATE TABLE `puas` (
  `id_puas` int(6) NOT NULL auto_increment,
  `puas` varchar(10) collate latin1_general_ci NOT NULL,
  `tgl` varchar(20) collate latin1_general_ci NOT NULL,
  `tahun` varchar(10) collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`id_puas`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=35 ;

-- 
-- Dumping data for table `puas`
-- 

INSERT INTO `puas` VALUES (1, 'P', '20-08-2019, 9:12 am', '2020');
INSERT INTO `puas` VALUES (2, 'KP', '20-08-2019, 12:27 pm', '2020');
INSERT INTO `puas` VALUES (3, 'TP', '20-08-2019, 12:27 pm', '');
INSERT INTO `puas` VALUES (4, 'P', '20-08-2019, 12:27 pm', '2020');
INSERT INTO `puas` VALUES (5, 'P', '20-08-2019, 12:27 pm', '');
INSERT INTO `puas` VALUES (6, 'KP', '20-08-2019, 12:27 pm', '');
INSERT INTO `puas` VALUES (7, 'P', '20-08-2019, 12:34 pm', '');
INSERT INTO `puas` VALUES (8, 'P', '20-08-2019, 12:35 pm', '');
INSERT INTO `puas` VALUES (9, 'P', '20-08-2019, 12:35 pm', '');
INSERT INTO `puas` VALUES (10, 'P', '20-08-2019, 12:35 pm', '');
INSERT INTO `puas` VALUES (11, 'P', '20-08-2019, 12:35 pm', '');
INSERT INTO `puas` VALUES (12, 'P', '20-08-2019, 12:35 pm', '');
INSERT INTO `puas` VALUES (13, 'P', '20-08-2019, 12:35 pm', '');
INSERT INTO `puas` VALUES (14, 'P', '20-08-2019, 12:35 pm', '');
INSERT INTO `puas` VALUES (15, 'P', '20-08-2019, 12:39 pm', '');
INSERT INTO `puas` VALUES (16, 'P', '20-08-2019, 12:39 pm', '');
INSERT INTO `puas` VALUES (17, 'P', '20-08-2019, 12:39 pm', '');
INSERT INTO `puas` VALUES (18, 'P', '20-08-2019, 12:39 pm', '');
INSERT INTO `puas` VALUES (19, 'P', '20-08-2019, 12:39 pm', '');
INSERT INTO `puas` VALUES (20, 'P', '20-08-2019, 12:40 pm', '');
INSERT INTO `puas` VALUES (21, 'P', '20-08-2019, 12:40 pm', '');
INSERT INTO `puas` VALUES (22, 'P', '20-08-2019, 12:40 pm', '');
INSERT INTO `puas` VALUES (23, 'P', '20-08-2019, 12:40 pm', '');
INSERT INTO `puas` VALUES (24, 'P', '20-08-2019, 12:40 pm', '');
INSERT INTO `puas` VALUES (25, 'P', '20-08-2019, 12:40 pm', '');
INSERT INTO `puas` VALUES (26, 'P', '20-08-2019, 1:31 pm', '');
INSERT INTO `puas` VALUES (27, 'P', '20-08-2019, 1:32 pm', '');
INSERT INTO `puas` VALUES (28, 'P', '20-08-2019, 1:32 pm', '');
INSERT INTO `puas` VALUES (29, 'P', '20-08-2019, 1:32 pm', '');
INSERT INTO `puas` VALUES (30, 'P', '20-08-2019, 1:32 pm', '');
INSERT INTO `puas` VALUES (31, 'P', '08-09-2019, 5:20 pm', '');
INSERT INTO `puas` VALUES (32, 'KP', '08-09-2019, 5:25 pm', '');
INSERT INTO `puas` VALUES (33, 'P', '02-02-2020, 9:22 am', '2020');
INSERT INTO `puas` VALUES (34, 'P', '02-02-2020, 9:22 am', '2020');

-- --------------------------------------------------------

-- 
-- Table structure for table `rampung`
-- 

CREATE TABLE `rampung` (
  `id_rampung` int(6) NOT NULL auto_increment,
  `id_sppd` varchar(6) collate latin1_general_ci NOT NULL,
  `klasifikasi` varchar(50) collate latin1_general_ci NOT NULL,
  `rincian` text collate latin1_general_ci NOT NULL,
  `qty` varchar(6) collate latin1_general_ci NOT NULL,
  `harga` varchar(20) collate latin1_general_ci NOT NULL,
  `satuan` varchar(30) collate latin1_general_ci NOT NULL,
  `tgl_rampung` varchar(30) collate latin1_general_ci NOT NULL,
  `jumlah` varchar(20) collate latin1_general_ci NOT NULL,
  `keterangan` varchar(10) collate latin1_general_ci NOT NULL,
  `id_unit_sppd` varchar(6) collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`id_rampung`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `rampung`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `spk`
-- 

CREATE TABLE `spk` (
  `id_spk` int(10) NOT NULL auto_increment,
  `id_user` int(10) NOT NULL,
  `id_distributor` int(10) NOT NULL,
  `id_pejabat` varchar(10) collate latin1_general_ci NOT NULL,
  `untuk` varchar(500) collate latin1_general_ci NOT NULL,
  `keperluan` varchar(500) collate latin1_general_ci NOT NULL,
  `hari` varchar(30) collate latin1_general_ci NOT NULL,
  `tgl_serah` varchar(100) collate latin1_general_ci NOT NULL,
  `tgl_buat` varchar(100) collate latin1_general_ci NOT NULL,
  `kd_unik` varchar(500) collate latin1_general_ci NOT NULL,
  `nomor_spk` varchar(100) collate latin1_general_ci NOT NULL,
  `nomor_ba` varchar(100) collate latin1_general_ci NOT NULL,
  `tahun` varchar(10) collate latin1_general_ci NOT NULL,
  `id_klasifikasi` varchar(10) collate latin1_general_ci NOT NULL,
  `jenis` varchar(2) collate latin1_general_ci NOT NULL,
  `n_bulan` varchar(3) collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`id_spk`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `spk`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `sppd`
-- 

CREATE TABLE `sppd` (
  `id_sppd` int(6) NOT NULL auto_increment,
  `id_perjalanan` varchar(6) collate latin1_general_ci NOT NULL,
  `id_pegawai` varchar(6) collate latin1_general_ci NOT NULL,
  `maksud` text collate latin1_general_ci NOT NULL,
  `angkutan` varchar(50) collate latin1_general_ci NOT NULL,
  `berangkat` varchar(30) collate latin1_general_ci NOT NULL,
  `tujuan` varchar(30) collate latin1_general_ci NOT NULL,
  `lama` varchar(5) collate latin1_general_ci NOT NULL,
  `tgl_berangkat` varchar(30) collate latin1_general_ci NOT NULL,
  `tgl_kembali` varchar(30) collate latin1_general_ci NOT NULL,
  `pengikut` text collate latin1_general_ci NOT NULL,
  `anggaran` text collate latin1_general_ci NOT NULL,
  `keterangan` text collate latin1_general_ci NOT NULL,
  `tahun` varchar(10) collate latin1_general_ci NOT NULL,
  `tgl_pengajuan` varchar(30) collate latin1_general_ci NOT NULL,
  `id_beban_unit` varchar(10) collate latin1_general_ci NOT NULL,
  `no_sppd` varchar(10) collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`id_sppd`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `sppd`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `surat_keluar`
-- 

CREATE TABLE `surat_keluar` (
  `id_suratkeluar` int(10) NOT NULL auto_increment,
  `no_agenda` varchar(10) collate latin1_general_ci NOT NULL,
  `id_unitkerja` varchar(10) collate latin1_general_ci NOT NULL,
  `id_klasifikasi` varchar(10) collate latin1_general_ci NOT NULL,
  `no_surat` varchar(50) collate latin1_general_ci NOT NULL,
  `tgl_surat` varchar(30) collate latin1_general_ci NOT NULL,
  `perihal` text collate latin1_general_ci NOT NULL,
  `tujuan` text collate latin1_general_ci NOT NULL,
  `tgl_input` varchar(30) collate latin1_general_ci NOT NULL,
  `admin` varchar(100) collate latin1_general_ci NOT NULL,
  `tahun` varchar(10) collate latin1_general_ci NOT NULL,
  `sifat` varchar(20) collate latin1_general_ci NOT NULL,
  `lokasi` varchar(500) collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`id_suratkeluar`),
  UNIQUE KEY `no_surat` (`no_surat`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `surat_keluar`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `surat_masuk`
-- 

CREATE TABLE `surat_masuk` (
  `id_suratmasuk` int(10) NOT NULL auto_increment,
  `no_agenda` varchar(10) collate latin1_general_ci NOT NULL,
  `asal_surat` text collate latin1_general_ci NOT NULL,
  `tgl_surat` varchar(100) collate latin1_general_ci NOT NULL,
  `kd_surat` varchar(10) collate latin1_general_ci NOT NULL,
  `no_surat` varchar(100) collate latin1_general_ci NOT NULL,
  `sifat` varchar(30) collate latin1_general_ci NOT NULL,
  `perihal` text collate latin1_general_ci NOT NULL,
  `tgl_terima` varchar(100) collate latin1_general_ci NOT NULL,
  `lokasi` varchar(500) collate latin1_general_ci NOT NULL,
  `admin` varchar(100) collate latin1_general_ci NOT NULL,
  `tahun` varchar(10) collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`id_suratmasuk`),
  UNIQUE KEY `no_surat` (`no_surat`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `surat_masuk`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tb_golongan`
-- 

CREATE TABLE `tb_golongan` (
  `id_gol` int(3) NOT NULL auto_increment,
  `golongan` varchar(40) NOT NULL,
  PRIMARY KEY  (`id_gol`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

-- 
-- Dumping data for table `tb_golongan`
-- 

INSERT INTO `tb_golongan` VALUES (1, 'Pembina Utama (IV/e)');
INSERT INTO `tb_golongan` VALUES (2, 'Pembina Utama Madya (IV/d)');
INSERT INTO `tb_golongan` VALUES (3, 'Pembina Utama Muda (IV/c)');
INSERT INTO `tb_golongan` VALUES (4, 'Pembina Tingkat I (IV/b)');
INSERT INTO `tb_golongan` VALUES (5, 'Pembina (IV/a)');
INSERT INTO `tb_golongan` VALUES (6, 'Penata Tingkat I (III/d)');
INSERT INTO `tb_golongan` VALUES (7, 'Penata  (III/c)');
INSERT INTO `tb_golongan` VALUES (8, 'Penata Muda Tingkat I (III/b)');
INSERT INTO `tb_golongan` VALUES (9, 'Penata Muda (III/a)');
INSERT INTO `tb_golongan` VALUES (10, 'Pengatur Tingkat I (II/d)');
INSERT INTO `tb_golongan` VALUES (11, 'Pengatur  (II/c)');
INSERT INTO `tb_golongan` VALUES (12, 'Pengatur Muda Tingkat I (II/b)');
INSERT INTO `tb_golongan` VALUES (13, 'Pengatur Muda (II/a)');
INSERT INTO `tb_golongan` VALUES (14, 'Juru Tingkat I (I/d)');
INSERT INTO `tb_golongan` VALUES (15, 'Juru  (I/c)');
INSERT INTO `tb_golongan` VALUES (16, 'Juru Muda Tingkat I (I/b)');
INSERT INTO `tb_golongan` VALUES (17, 'Juru Muda (I/a)');

-- --------------------------------------------------------

-- 
-- Table structure for table `tbl_klasifikasi`
-- 

CREATE TABLE `tbl_klasifikasi` (
  `id_klasifikasi` int(5) NOT NULL auto_increment,
  `kode` varchar(30) NOT NULL,
  `nama` varchar(250) NOT NULL,
  `uraian` mediumtext NOT NULL,
  `id_user` tinyint(5) NOT NULL,
  PRIMARY KEY  (`id_klasifikasi`),
  KEY `fk_id_user` (`id_user`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=219 ;

-- 
-- Dumping data for table `tbl_klasifikasi`
-- 

INSERT INTO `tbl_klasifikasi` VALUES (2, '000', 'UMUM', 'UMUM', 2);
INSERT INTO `tbl_klasifikasi` VALUES (3, '001', 'Lambang', 'Lambang', 2);
INSERT INTO `tbl_klasifikasi` VALUES (4, '001.1', 'Garuda', 'Garuda', 2);
INSERT INTO `tbl_klasifikasi` VALUES (5, '001.2', 'Bendera Kebangsaan', 'Bendera Kebangsaan', 2);
INSERT INTO `tbl_klasifikasi` VALUES (6, '002', 'Tanda Kehoramatan/Pengahargaan', 'Tanda Kehoramatan/Pengahargaan', 2);
INSERT INTO `tbl_klasifikasi` VALUES (7, '003', 'Hari Raya/Besar', 'Hari Raya/Besar', 2);
INSERT INTO `tbl_klasifikasi` VALUES (8, '003.1', 'Hari Nasional/17 Agustus', 'Hari Nasional/17 Agustus', 2);
INSERT INTO `tbl_klasifikasi` VALUES (9, '004', 'Ucapan', 'Ucapan', 2);
INSERT INTO `tbl_klasifikasi` VALUES (10, '004.1', 'Terima Kasih', 'Terima Kasih', 2);
INSERT INTO `tbl_klasifikasi` VALUES (11, '004.2', 'Selamat', 'Selamat', 2);
INSERT INTO `tbl_klasifikasi` VALUES (12, '004.3', 'Mohon diri', 'Mohon diri', 2);
INSERT INTO `tbl_klasifikasi` VALUES (13, '004.5', 'Ucapan Lainnya', 'Ucapan Lainnya', 2);
INSERT INTO `tbl_klasifikasi` VALUES (14, '005', 'Undangan', 'Undangan', 2);
INSERT INTO `tbl_klasifikasi` VALUES (15, '007', 'Tanda Gambar Presiden/ Wakil Presiden/ Pejabat Pemerintah', 'Tanda Gambar Presiden/ Wakil Presiden/ Pejabat Pemerintah', 2);
INSERT INTO `tbl_klasifikasi` VALUES (16, '010', 'Urusan Dalam', 'Urusan Dalam', 2);
INSERT INTO `tbl_klasifikasi` VALUES (17, '011.1', 'Instalasi Listrik', 'Instalasi Listrik', 2);
INSERT INTO `tbl_klasifikasi` VALUES (18, '011.2', 'Telepon', 'Telepon', 2);
INSERT INTO `tbl_klasifikasi` VALUES (19, '011.4', 'Air Minum', 'Air Minum', 2);
INSERT INTO `tbl_klasifikasi` VALUES (20, '012', 'Rumah Dinas', 'Rumah Dinas', 2);
INSERT INTO `tbl_klasifikasi` VALUES (21, '012.1', 'Taman untuk Rumah Dinas', 'Taman untuk Rumah Dinas', 2);
INSERT INTO `tbl_klasifikasi` VALUES (22, '012.2', 'Perabotan', 'Perabotan', 2);
INSERT INTO `tbl_klasifikasi` VALUES (23, '017', 'Kemanan/Tatib Kantor', 'Kemanan/Tatib Kantor', 2);
INSERT INTO `tbl_klasifikasi` VALUES (24, '018', 'Kebersihan Kantor', 'Kebersihan Kantor', 2);
INSERT INTO `tbl_klasifikasi` VALUES (25, '019', 'Protokol', 'Protokol', 2);
INSERT INTO `tbl_klasifikasi` VALUES (26, '019.1', 'Upacara Bendera', 'Upacara Bendera', 2);
INSERT INTO `tbl_klasifikasi` VALUES (27, '019.2', 'Kerjasama', 'Kerjasama', 2);
INSERT INTO `tbl_klasifikasi` VALUES (28, '020', 'Peralatan', 'Peralatan', 2);
INSERT INTO `tbl_klasifikasi` VALUES (29, '021', 'Alat Tulis', 'Alat Tulis', 2);
INSERT INTO `tbl_klasifikasi` VALUES (30, '022', 'Mesin kantor', 'Mesin kantor', 2);
INSERT INTO `tbl_klasifikasi` VALUES (31, '022.1', 'Manual', 'Manual', 2);
INSERT INTO `tbl_klasifikasi` VALUES (32, '022.2', 'Elektronik', 'Elektronik', 2);
INSERT INTO `tbl_klasifikasi` VALUES (33, '023', 'Perabot kantor', 'Perabot kantor', 2);
INSERT INTO `tbl_klasifikasi` VALUES (34, '024', 'Alat angkutan', 'Alat angkutan', 2);
INSERT INTO `tbl_klasifikasi` VALUES (35, '025', 'Pakain Sinas', 'Pakain Sinas', 2);
INSERT INTO `tbl_klasifikasi` VALUES (36, '028.1', 'Penghapusan', 'Penghapusan', 2);
INSERT INTO `tbl_klasifikasi` VALUES (37, '030', 'Kekayaan Daerah', 'Kekayaan Daerah', 2);
INSERT INTO `tbl_klasifikasi` VALUES (38, '031', 'Tanah/Kebun/ dll', 'Tanah/Kebun/dll', 2);
INSERT INTO `tbl_klasifikasi` VALUES (39, '032', 'Gedung/ Asrama dll', 'Gedung/Asrama dll', 2);
INSERT INTO `tbl_klasifikasi` VALUES (40, '040', 'Perpustakaan/Dokumen/Kearsipan', 'Perpustakaan/Dokumen/Kearsipan', 2);
INSERT INTO `tbl_klasifikasi` VALUES (41, '041', 'Perpustakaan', 'Perpustakaan', 2);
INSERT INTO `tbl_klasifikasi` VALUES (42, '041.4', 'Perpustakaan Sekolah', 'Perpustakaan Sekolah', 2);
INSERT INTO `tbl_klasifikasi` VALUES (43, '041.6', 'Pengadaan Bahan Pustaka', 'Pengadaan Bahan Pustaka', 2);
INSERT INTO `tbl_klasifikasi` VALUES (44, '041.7', 'Pelayanan', 'Pelayanan', 2);
INSERT INTO `tbl_klasifikasi` VALUES (45, '041.8', 'Pemeliharaan', 'Pemeliharaan', 2);
INSERT INTO `tbl_klasifikasi` VALUES (46, '041.9', 'Kerajasama antar Perpustakaan', 'Kerajasama antar Perpustakaan', 2);
INSERT INTO `tbl_klasifikasi` VALUES (47, '042', 'Dokumentasi', 'Dokumentasi', 2);
INSERT INTO `tbl_klasifikasi` VALUES (48, '045', 'Kearsipan', 'Kearsipan', 2);
INSERT INTO `tbl_klasifikasi` VALUES (49, '045.1', 'Ekspedisi', 'Ekspedisi', 2);
INSERT INTO `tbl_klasifikasi` VALUES (50, '045.2', 'Surat Pengantar', 'Surat Pengantar', 2);
INSERT INTO `tbl_klasifikasi` VALUES (51, '045.3', 'Salah Kirim', 'Salah Kirim', 2);
INSERT INTO `tbl_klasifikasi` VALUES (52, '045.6', 'Penyusutan arsip', 'Penyusutan arsip', 2);
INSERT INTO `tbl_klasifikasi` VALUES (53, '045.63', 'Pemusnahan Arsip', 'Pemusnahan Arsip', 2);
INSERT INTO `tbl_klasifikasi` VALUES (54, '045.8', 'Pemeliharaan/perawatan arsip', 'Pemeliharaan/perawatan arsip', 2);
INSERT INTO `tbl_klasifikasi` VALUES (55, '047', 'Telegram/Telex/Radio', 'Telegram/Telex/Radio', 2);
INSERT INTO `tbl_klasifikasi` VALUES (56, '048', 'Data Elektronik', 'Data Elektronik', 2);
INSERT INTO `tbl_klasifikasi` VALUES (57, '050', 'Perenacaan', 'Perenacaan', 2);
INSERT INTO `tbl_klasifikasi` VALUES (58, '420', 'PENDIDIKAN', 'PENDIDIKAN', 2);
INSERT INTO `tbl_klasifikasi` VALUES (59, '421', 'Sekolah', 'Sekolah', 2);
INSERT INTO `tbl_klasifikasi` VALUES (60, '421.1', 'Prasekolah', 'Prasekolah', 2);
INSERT INTO `tbl_klasifikasi` VALUES (61, '421.2', 'Sekolah Dasar', 'Sekolah Dasar', 2);
INSERT INTO `tbl_klasifikasi` VALUES (62, '421.6', 'Kegiatan Sekolah Dies Natalis - Lustrum', 'Kegiatan Sekolah Dies Natalis - Lustrum', 2);
INSERT INTO `tbl_klasifikasi` VALUES (63, '421.7', 'Kegiatan Pelajar: Reuni/Dharama wisata/lomba/siswa teladan', 'Kegiatan Pelajar: Reuni/Dharama wisata/lomba/siswa teladan', 2);
INSERT INTO `tbl_klasifikasi` VALUES (64, '421.9', 'Pendidikan Luar Sekolah', 'Pendidikan Luar Sekolah', 2);
INSERT INTO `tbl_klasifikasi` VALUES (65, '422', 'Administrasi Sekolah', 'Administrasi Sekolah', 2);
INSERT INTO `tbl_klasifikasi` VALUES (66, '422.1', 'Persyaratan masuk sekolah/testing/ujian pendafataran', 'Persyaratan masuk sekolah/testing/ujian pendafataran', 2);
INSERT INTO `tbl_klasifikasi` VALUES (67, '422.2', 'Tahun Pelajaran', 'Tahun Pelajaran', 2);
INSERT INTO `tbl_klasifikasi` VALUES (68, '422.3', 'Hari Libur', 'Hari Libur', 2);
INSERT INTO `tbl_klasifikasi` VALUES (69, '422.4', 'Uang Sekolah/SPP', 'Uang Sekolah/SPP', 2);
INSERT INTO `tbl_klasifikasi` VALUES (70, '422.5', 'Bea Siswa', 'Bea Siswa', 2);
INSERT INTO `tbl_klasifikasi` VALUES (71, '422.6', 'Ijazah', 'Ijazah', 2);
INSERT INTO `tbl_klasifikasi` VALUES (72, '423', 'Metode Belajar', 'Metode Belajar', 2);
INSERT INTO `tbl_klasifikasi` VALUES (73, '423.1', 'Kuliah', 'Kuliah', 2);
INSERT INTO `tbl_klasifikasi` VALUES (74, '423.2', 'Ceramah/Simposium/Seminar', 'Ceramah/Simposium/Seminar', 2);
INSERT INTO `tbl_klasifikasi` VALUES (75, '423.3', 'Diskusi', 'Diskusi', 2);
INSERT INTO `tbl_klasifikasi` VALUES (76, '423.4', 'Kuliah lapangan/Widya wisata/KKN/PPL', 'Kuliah lapangan/Widya wisata/KKN/PPL', 2);
INSERT INTO `tbl_klasifikasi` VALUES (77, '423.5', 'Kurikulum', 'Kurikulum', 2);
INSERT INTO `tbl_klasifikasi` VALUES (78, '423.6', 'Karya Tulis Ilmiah', 'Karya Tulis Ilmiah', 2);
INSERT INTO `tbl_klasifikasi` VALUES (79, '423.7', 'Ujian', 'Ujian', 2);
INSERT INTO `tbl_klasifikasi` VALUES (80, '424', 'Tenaga Pengajar/Guru Guru Berprestasi', 'Tenaga Pengajar/Guru Guru Berprestasi', 2);
INSERT INTO `tbl_klasifikasi` VALUES (81, '425', 'Sarana Pendidikan', 'Sarana Pendidikan', 2);
INSERT INTO `tbl_klasifikasi` VALUES (82, '425.1', 'Gedung', 'Gedung', 2);
INSERT INTO `tbl_klasifikasi` VALUES (83, '425.11', 'Gedung Sekolah', 'Gedung Sekolah', 2);
INSERT INTO `tbl_klasifikasi` VALUES (84, '425.12', 'Kampus', 'Kampus', 2);
INSERT INTO `tbl_klasifikasi` VALUES (85, '425.13', 'Pusat Kegiatan', 'Pusat Kegiatan', 2);
INSERT INTO `tbl_klasifikasi` VALUES (86, '425.14', 'Perpustakaan', 'Perpustakaan', 2);
INSERT INTO `tbl_klasifikasi` VALUES (87, '425.15', 'Laboratorium', 'Laboratorium', 2);
INSERT INTO `tbl_klasifikasi` VALUES (88, '425.2', 'Buku', 'Buku', 2);
INSERT INTO `tbl_klasifikasi` VALUES (89, '425.3', 'Perlengkapan Sekolah', 'Perlengkapan Sekolah', 2);
INSERT INTO `tbl_klasifikasi` VALUES (90, '425.4', 'Sistem Informasi Pendidikan', 'Sistem Informasi Pendidikan', 2);
INSERT INTO `tbl_klasifikasi` VALUES (91, '426', 'Keolahragaan', 'Keolahragaan', 2);
INSERT INTO `tbl_klasifikasi` VALUES (92, '526.1', 'Cabang Olahraga', 'Cabang Olahraga', 2);
INSERT INTO `tbl_klasifikasi` VALUES (93, '426.2', 'Sarana', 'Sarana', 2);
INSERT INTO `tbl_klasifikasi` VALUES (94, '426.21', 'Gedung Olahraga', 'Gedung Olahraga', 2);
INSERT INTO `tbl_klasifikasi` VALUES (95, '426.22', 'Stadion', 'Stadion', 2);
INSERT INTO `tbl_klasifikasi` VALUES (96, '426.23', 'Lapangan', 'Lapangan', 2);
INSERT INTO `tbl_klasifikasi` VALUES (97, '426.24', 'Kolam Renang', 'Kolam Renang', 2);
INSERT INTO `tbl_klasifikasi` VALUES (98, '426.3', 'Pesta Olahraga/PON/PORSADA/Olympiade/PORSENI', 'Pesta Olahraga/PON/PORSADA/Olympiade/PORSENI', 2);
INSERT INTO `tbl_klasifikasi` VALUES (99, '426.4', 'Hobby', 'Hobby', 2);
INSERT INTO `tbl_klasifikasi` VALUES (100, '427', 'Kemudaan', 'Kemudaan', 2);
INSERT INTO `tbl_klasifikasi` VALUES (101, '428', 'Pramuka', 'Pramuka', 2);
INSERT INTO `tbl_klasifikasi` VALUES (102, '429', 'Pendidikan Kedinasan', 'Pendidikan Kedinasan', 2);
INSERT INTO `tbl_klasifikasi` VALUES (103, '430', 'Kebudayaan', 'Kebudayaan', 2);
INSERT INTO `tbl_klasifikasi` VALUES (104, '431', 'Kesenian', 'Kesenian', 2);
INSERT INTO `tbl_klasifikasi` VALUES (105, '431.1', 'Cabang Kesenian', 'Cabang Kesenian', 2);
INSERT INTO `tbl_klasifikasi` VALUES (106, '431.2', 'Sarana', 'Sarana', 2);
INSERT INTO `tbl_klasifikasi` VALUES (107, '433', 'Sejarah', 'Sejarah', 2);
INSERT INTO `tbl_klasifikasi` VALUES (108, '434', 'Bahasa', 'Bahasa', 2);
INSERT INTO `tbl_klasifikasi` VALUES (109, '437', 'Festival', ' pentas seni', 2);
INSERT INTO `tbl_klasifikasi` VALUES (110, '440', 'Kesehatan', 'Kesehatan', 2);
INSERT INTO `tbl_klasifikasi` VALUES (111, '441', 'Pembinaan Kesehatan', 'Pembinaan Kesehatan', 2);
INSERT INTO `tbl_klasifikasi` VALUES (112, '441.1', 'Gigi', 'Gigi', 2);
INSERT INTO `tbl_klasifikasi` VALUES (113, '411.2', 'Mata', 'Mata', 2);
INSERT INTO `tbl_klasifikasi` VALUES (114, '411.5', 'Usaha Kesehatan Sekolah', 'Usaha Kesehatan Sekolah', 2);
INSERT INTO `tbl_klasifikasi` VALUES (115, '442', 'Obat-Obatan', 'Obat-Obatan', 2);
INSERT INTO `tbl_klasifikasi` VALUES (116, '450', 'Agama', 'Agama', 2);
INSERT INTO `tbl_klasifikasi` VALUES (117, '451', 'Islam', 'Islam', 2);
INSERT INTO `tbl_klasifikasi` VALUES (118, '451.1', 'Peribadatan', 'Peribadatan', 2);
INSERT INTO `tbl_klasifikasi` VALUES (119, '451.2', 'Rumah Sholat', 'Rumah Sholat', 2);
INSERT INTO `tbl_klasifikasi` VALUES (120, '452', 'Protestan', 'Protestan', 2);
INSERT INTO `tbl_klasifikasi` VALUES (121, '453', 'Katholik', 'Katholik', 2);
INSERT INTO `tbl_klasifikasi` VALUES (122, '454', 'Hindu', 'Hindu', 2);
INSERT INTO `tbl_klasifikasi` VALUES (123, '455', 'Budha', 'Budha', 2);
INSERT INTO `tbl_klasifikasi` VALUES (124, '800', 'KEPEGAWAIAN', 'KEPEGAWAIAN', 2);
INSERT INTO `tbl_klasifikasi` VALUES (125, '810', 'PENGADAAN PEGAWAI', 'PENGADAAN PEGAWAI', 2);
INSERT INTO `tbl_klasifikasi` VALUES (126, '811', 'Lamaranÿ', 'Lamaranÿ', 2);
INSERT INTO `tbl_klasifikasi` VALUES (127, '811.2', 'Testing', 'Testing', 2);
INSERT INTO `tbl_klasifikasi` VALUES (128, '811.2', 'Sreaning', 'Sreaning', 2);
INSERT INTO `tbl_klasifikasi` VALUES (129, '811.3', 'Panggilan', 'Panggilan', 2);
INSERT INTO `tbl_klasifikasi` VALUES (130, '813', 'Pengangkatan Capeg', 'Pengangkatan Capeg', 2);
INSERT INTO `tbl_klasifikasi` VALUES (131, '813.1', 'Pengangaktan Capeg Gol I', 'Pengangaktan Capeg Gol I', 2);
INSERT INTO `tbl_klasifikasi` VALUES (132, '813.2', 'Pengangkatan Capeg Gol II', 'Pengangkatan Capeg Gol II', 2);
INSERT INTO `tbl_klasifikasi` VALUES (133, '813.3', 'Pengangkatan Capeg Gol III', 'Pengangkatan Capeg Gol III', 2);
INSERT INTO `tbl_klasifikasi` VALUES (134, '813.4', 'Pengangkatan Capeg Gol IV', 'Pengangkatan Capeg Gol IV', 2);
INSERT INTO `tbl_klasifikasi` VALUES (135, '813.5', 'Pengangkatan Calong Guru', 'Pengangkatan Calong Guru', 2);
INSERT INTO `tbl_klasifikasi` VALUES (136, '820', 'MUTASI', 'MUTASI', 2);
INSERT INTO `tbl_klasifikasi` VALUES (137, '820.1', 'Golongan I', 'Golongan I', 2);
INSERT INTO `tbl_klasifikasi` VALUES (138, '820.2', 'Golongan II', 'Golongan II', 2);
INSERT INTO `tbl_klasifikasi` VALUES (139, '820.3', 'Golongan III', 'Golongan III', 2);
INSERT INTO `tbl_klasifikasi` VALUES (140, '820.4', 'Golongan IV', 'Golongan IV', 2);
INSERT INTO `tbl_klasifikasi` VALUES (141, '820.5', 'Fungsional', 'Fungsional', 2);
INSERT INTO `tbl_klasifikasi` VALUES (142, '821', 'Pengangkatan', 'Pengangkatan', 2);
INSERT INTO `tbl_klasifikasi` VALUES (143, '821.1', 'Pengangkatan PNS', 'Pengangkatan PNS', 2);
INSERT INTO `tbl_klasifikasi` VALUES (144, '821.11', 'Pengangkatan PNS Gol I', 'Pengangkatan PNS Gol I', 2);
INSERT INTO `tbl_klasifikasi` VALUES (145, '821.12', 'Pengangkatan PNS Gol II', 'Pengangkatan PNS Gol II', 2);
INSERT INTO `tbl_klasifikasi` VALUES (146, '821.13', 'Pengangkatan PNS Gol III', 'Pengangkatan PNS Gol III', 2);
INSERT INTO `tbl_klasifikasi` VALUES (147, '821.14', 'Pengangkatan PNS Gol IV', 'Pengangkatan PNS Gol IV', 2);
INSERT INTO `tbl_klasifikasi` VALUES (148, '821.2', 'Pengangkatan dalam jabatan-pembebasan/berita acara serah terima jabatan', 'Pengangkatan dalam jabatan-pembebasan/berita acara serah terima jabatan', 2);
INSERT INTO `tbl_klasifikasi` VALUES (149, '822', 'Kenaikan Gaji Berkala', 'Kenaikan Gaji Berkala', 2);
INSERT INTO `tbl_klasifikasi` VALUES (150, '822.1', 'Peg. Gol I', 'Peg. Gol I', 2);
INSERT INTO `tbl_klasifikasi` VALUES (151, '822.2', 'Peg. Gol II', 'Peg. Gol II', 2);
INSERT INTO `tbl_klasifikasi` VALUES (152, '822.3', 'Peg. Gol III', 'Peg. Gol III', 2);
INSERT INTO `tbl_klasifikasi` VALUES (153, '822.4', 'Peg. Gol IV', 'Peg. Gol IV', 2);
INSERT INTO `tbl_klasifikasi` VALUES (154, '823', 'Kenaikan Pangkat/Pengangkatan', 'Kenaikan Pangkat/Pengangkatan', 2);
INSERT INTO `tbl_klasifikasi` VALUES (155, '823.1', 'Peg. Gol I', 'Peg. Gol I', 2);
INSERT INTO `tbl_klasifikasi` VALUES (156, '823.2', 'Peg. Gol II', 'Peg. Gol II', 2);
INSERT INTO `tbl_klasifikasi` VALUES (157, '823.3', 'Peg. Gol III', 'Peg. Gol III', 2);
INSERT INTO `tbl_klasifikasi` VALUES (158, '823.4', 'Peg. Gol IV', 'Peg. Gol IV', 2);
INSERT INTO `tbl_klasifikasi` VALUES (159, '426.5', 'Izin Belajar', 'Izin Belajar', 2);
INSERT INTO `tbl_klasifikasi` VALUES (160, '830', 'Kedudukan', 'Kedudukan', 2);
INSERT INTO `tbl_klasifikasi` VALUES (161, '833', 'Penghargaan Ijazah', 'Penghargaan Ijazah', 2);
INSERT INTO `tbl_klasifikasi` VALUES (162, '840', 'Kesejahteraan Pegawai', 'Kesejahteraan Pegawai', 2);
INSERT INTO `tbl_klasifikasi` VALUES (163, '841', 'Tunjangan', 'Tunjangan', 2);
INSERT INTO `tbl_klasifikasi` VALUES (164, '841.1', 'Jabatan', 'Jabatan', 2);
INSERT INTO `tbl_klasifikasi` VALUES (165, '841.2', 'Kehormatan', 'Kehormatan', 2);
INSERT INTO `tbl_klasifikasi` VALUES (166, '841.3', 'Kematianÿ', 'Kematianÿ', 2);
INSERT INTO `tbl_klasifikasi` VALUES (167, '841.4', 'Hari Raya', 'Hari Raya', 2);
INSERT INTO `tbl_klasifikasi` VALUES (168, '841.5', 'Perjalanan Pindah / Cuti Pindah', 'Perjalanan Pindah / Cuti Pindah', 2);
INSERT INTO `tbl_klasifikasi` VALUES (169, '841.6', 'Keluarga', 'Keluarga', 2);
INSERT INTO `tbl_klasifikasi` VALUES (170, '841.7', 'Pangan/uang makan', 'Pangan/uang makan', 2);
INSERT INTO `tbl_klasifikasi` VALUES (171, '842', 'Dana', 'Dana', 2);
INSERT INTO `tbl_klasifikasi` VALUES (172, '842.1', 'Taspen', 'Taspen', 2);
INSERT INTO `tbl_klasifikasi` VALUES (173, '842.2', 'Kesehatan', 'Kesehatan', 2);
INSERT INTO `tbl_klasifikasi` VALUES (174, '842.3', 'Asuransi', 'Asuransi', 2);
INSERT INTO `tbl_klasifikasi` VALUES (175, '850', 'Cuti', 'Cuti', 2);
INSERT INTO `tbl_klasifikasi` VALUES (176, '851', 'Tahuan', 'Tahuan', 2);
INSERT INTO `tbl_klasifikasi` VALUES (177, '852', 'Besar', 'Besar', 2);
INSERT INTO `tbl_klasifikasi` VALUES (178, '853', 'Sakit', 'Sakit', 2);
INSERT INTO `tbl_klasifikasi` VALUES (179, '854', 'Hamil', 'Hamil', 2);
INSERT INTO `tbl_klasifikasi` VALUES (180, '855', 'Naik Haji', 'Naik Haji', 2);
INSERT INTO `tbl_klasifikasi` VALUES (181, '856', 'Diluar tanggungan negara', 'Diluar tanggungan negara Republik Indonesia', 2);
INSERT INTO `tbl_klasifikasi` VALUES (182, '857', 'Alasan lain', 'Alasan lain', 2);
INSERT INTO `tbl_klasifikasi` VALUES (183, '860', 'Penilaian', 'Penilaian', 2);
INSERT INTO `tbl_klasifikasi` VALUES (184, '861', 'Penghargaan', 'Penghargaan', 2);
INSERT INTO `tbl_klasifikasi` VALUES (185, '862', 'Hukuman', 'Hukuman', 2);
INSERT INTO `tbl_klasifikasi` VALUES (186, '862.1', 'Teguran/Peringatan', 'Teguran/Peringatan', 2);
INSERT INTO `tbl_klasifikasi` VALUES (187, '862.2', 'Penundaan kenaikan gaji', 'Penundaan kenaikan gaji', 2);
INSERT INTO `tbl_klasifikasi` VALUES (188, '862.3', 'Penurunan pangkat', 'Penurunan pangkat', 2);
INSERT INTO `tbl_klasifikasi` VALUES (189, '862.4', 'Pemindahan', 'Pemindahan', 2);
INSERT INTO `tbl_klasifikasi` VALUES (190, '863', 'Kondite ', 'Kondite Profesional tentang peri kelakuan, kemampuan, atau kepatuhan terhadap tata tertib (tentang pegawai)', 2);
INSERT INTO `tbl_klasifikasi` VALUES (191, '870', 'Tata Usaha Kepegawaian', 'Tata Usaha Kepegawaian', 2);
INSERT INTO `tbl_klasifikasi` VALUES (192, '871', 'Formasi', 'Formasi', 2);
INSERT INTO `tbl_klasifikasi` VALUES (193, '873', 'Registrasi', 'Registrasi', 2);
INSERT INTO `tbl_klasifikasi` VALUES (194, '873.1', 'NIP', 'NIP', 2);
INSERT INTO `tbl_klasifikasi` VALUES (195, '873.2', 'KARPEG', 'Kartu Pegawai', 2);
INSERT INTO `tbl_klasifikasi` VALUES (196, '873.4', 'Daftar Keluarga', 'Daftar Keluarga', 2);
INSERT INTO `tbl_klasifikasi` VALUES (197, '873.5', 'Karis/Karsu', 'Karis/Karsu', 2);
INSERT INTO `tbl_klasifikasi` VALUES (198, '874', 'Daftar Riwayat Pekerjaan', 'Daftar Riwayat Pekerjaan', 2);
INSERT INTO `tbl_klasifikasi` VALUES (199, '874.1', 'Tanggal Lahir', 'Tanggal Lahir', 2);
INSERT INTO `tbl_klasifikasi` VALUES (200, '874.2', 'Penggantian Nama', 'Penggantian Nama', 2);
INSERT INTO `tbl_klasifikasi` VALUES (201, '875.1', 'Pelimpahan Wewenang', 'Pelimpahan Wewenang', 2);
INSERT INTO `tbl_klasifikasi` VALUES (202, '877', 'Sumpah / Janji', 'Sumpah / Janji', 2);
INSERT INTO `tbl_klasifikasi` VALUES (203, '878', 'Korps Kepegawaian', 'Korps Kepegawaian', 2);
INSERT INTO `tbl_klasifikasi` VALUES (204, '880', 'Pemberhentian', 'Pemberhentian', 2);
INSERT INTO `tbl_klasifikasi` VALUES (205, '881', 'Permintaan Sendiri', 'Permintaan Sendiri', 2);
INSERT INTO `tbl_klasifikasi` VALUES (206, '882', 'Dengan Hak Pensiun', 'Dengan Hak Pensiun', 2);
INSERT INTO `tbl_klasifikasi` VALUES (207, '882.1', 'Hak Pensiun PNS Gol. I', 'Hak Pensiun PNS Gol. I', 2);
INSERT INTO `tbl_klasifikasi` VALUES (208, '882.2', 'Hak Pensiun PNS Gol. II', 'Hak Pensiun PNS Gol. II', 2);
INSERT INTO `tbl_klasifikasi` VALUES (209, '882.3', 'Hak Pensiun PNS Gol. III', 'Hak Pensiun PNS Gol. III', 2);
INSERT INTO `tbl_klasifikasi` VALUES (210, '882.4', 'Hak Pensiun PNS Gol. IV', 'Hak Pensiun PNS Gol. IV', 2);
INSERT INTO `tbl_klasifikasi` VALUES (211, '882.5', 'Pensiun Janda/Duda', 'Pensiun Janda/Duda', 2);
INSERT INTO `tbl_klasifikasi` VALUES (212, '882.6', 'Pensiun Yatim Piatu', 'Pensiun Yatim Piatu', 2);
INSERT INTO `tbl_klasifikasi` VALUES (213, '882.7', 'Uang Muka pensiun', 'Uang Muka pensiun', 2);
INSERT INTO `tbl_klasifikasi` VALUES (214, '883', 'Karena meninggal', 'Karena meninggal', 2);
INSERT INTO `tbl_klasifikasi` VALUES (215, '883.1', 'Karena meninggal dalam tugas', 'Karena meninggal dalam tugas', 2);
INSERT INTO `tbl_klasifikasi` VALUES (216, '884', 'Alasan lain', 'Alasan lain', 2);
INSERT INTO `tbl_klasifikasi` VALUES (217, '888', 'Tidak dengan hormat', 'Tidak dengan hormat', 2);
INSERT INTO `tbl_klasifikasi` VALUES (218, '900', 'Keuangan', 'Keuangan', 2);

-- --------------------------------------------------------

-- 
-- Table structure for table `unit_kerja`
-- 

CREATE TABLE `unit_kerja` (
  `id_unitkerja` int(6) NOT NULL auto_increment,
  `nama` varchar(50) collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`id_unitkerja`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=14 ;

-- 
-- Dumping data for table `unit_kerja`
-- 

INSERT INTO `unit_kerja` VALUES (1, 'SEKRETARIAT');
INSERT INTO `unit_kerja` VALUES (2, 'BIDANG PERENCANAAN DAN PEMBINAAN APARATUR');
INSERT INTO `unit_kerja` VALUES (3, 'BIDANG MUTASI DAN PENGEMBANGAN APARATUR');
INSERT INTO `unit_kerja` VALUES (4, 'SUB BIDANG INFORMASI DAN FASILITASI PROFESI APARAT');
INSERT INTO `unit_kerja` VALUES (5, 'SUB BIDANG PENILAIAN KINERJA DAN PENGEMBANGAN KARI');
INSERT INTO `unit_kerja` VALUES (6, 'SUB BAGIAN UMUM DAN KEPEGAWAIAN');
INSERT INTO `unit_kerja` VALUES (7, 'SUB BAGIAN PERENCANAAN DAN KEUANGAN');
INSERT INTO `unit_kerja` VALUES (8, 'SUB BIDANG DIKLAT DAN PENGEMBANGAN KOMPETENSI APAR');
INSERT INTO `unit_kerja` VALUES (9, 'SUB BIDANG PENGADAAN DAN PEMBERHENTIAN APARATUR');
INSERT INTO `unit_kerja` VALUES (10, 'SUB BIDANG MUTASI DAN KEPANGKATAN APARATUR');
INSERT INTO `unit_kerja` VALUES (11, 'SUB BIDANG DISIPLIN, KESEJAHTERAAN DAN PERLINDUNGA');
INSERT INTO `unit_kerja` VALUES (13, 'BADAN KEPEGAWAIAN, PENDIDIKAN DAN PELATIHAN');

-- --------------------------------------------------------

-- 
-- Table structure for table `unit_sppd`
-- 

CREATE TABLE `unit_sppd` (
  `id_unit_sppd` int(3) NOT NULL auto_increment,
  `nama` varchar(50) collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`id_unit_sppd`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=4 ;

-- 
-- Dumping data for table `unit_sppd`
-- 

INSERT INTO `unit_sppd` VALUES (1, 'SEKRETARIAT');
INSERT INTO `unit_sppd` VALUES (2, 'BIDANG PERENCANAAN DAN PEMBINAAN APARATUR');
INSERT INTO `unit_sppd` VALUES (3, 'BIDANG MUTASI DAN PENGEMBANGAN APARATUR');

-- --------------------------------------------------------

-- 
-- Table structure for table `users`
-- 

CREATE TABLE `users` (
  `id` int(10) NOT NULL auto_increment,
  `nama` varchar(30) NOT NULL,
  `pswd` varchar(1000) NOT NULL,
  `email` varchar(40) NOT NULL,
  `pertanyaan` varchar(1000) NOT NULL,
  `jawaban` varchar(1000) NOT NULL,
  `key_forgot` varchar(1000) NOT NULL,
  `lokasi_ad` varchar(200) NOT NULL,
  `kategori` varchar(20) NOT NULL,
  `id_skpd` varchar(15) NOT NULL,
  `tgl` varchar(30) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=47 ;

-- 
-- Dumping data for table `users`
-- 

INSERT INTO `users` VALUES (2, 'Luki Dwi Janarko', '3351374649a3645cf743feafeb13c2df', 'luki_dije@yahoo.co.id', 'Siapa Nama Ayah Anda?', 'Daud Cahyono', '355cbd736f3abd59f59ce53a118b6d9b-luki_dije@yahoo.co.id-7540', 'files/740b0e4af2c4ee203052287040303a0f.jpg', 'Admin', '', '12-Jan-2016 01:49:58');
INSERT INTO `users` VALUES (46, 'PKPKA', 'e10adc3949ba59abbe56e057f20f883e', 'kinerja', '-', '-', '-', 'files/c9e2e2df1457b396b3a15c8bd1148dd6.jpg', 'Admin Sub Bidang', '10', '03-02-2020, 12:13 am');
INSERT INTO `users` VALUES (45, 'PENGADAAN DAN PEMBERHENTIAN AP', 'e10adc3949ba59abbe56e057f20f883e', 'pengadaan', '-', '-', '-', 'files/52d0d4c72d6c99e1f27921e59d4d33ad.jpg', 'Admin Sub Bidang', '13', '03-02-2020, 12:12 am');
INSERT INTO `users` VALUES (44, 'MUTASI DAN KEPANGKATAN', 'e10adc3949ba59abbe56e057f20f883e', 'mutasi', '-', '-', '-', 'files/0d7b8e49a744f30854a6e2e97a9f3243.jpg', 'Admin Sub Bidang', '14', '03-02-2020, 12:12 am');
INSERT INTO `users` VALUES (43, 'INFORMASI DAN FASILITASI PROFE', 'e10adc3949ba59abbe56e057f20f883e', 'informasi', '-', '-', '-', 'files/f390ed92d6e4b1aa00a5444b89ac5113.jpg', 'Admin Sub Bidang', '11', '03-02-2020, 12:11 am');
INSERT INTO `users` VALUES (41, 'DIKLAT DAN PENGEMBANGAN KOMPET', 'e10adc3949ba59abbe56e057f20f883e', 'diklat', '-', '-', '-', 'files/fc8c31c377023657878996f5e7e1af1f.jpg', 'Admin Sub Bidang', '9', '03-02-2020, 12:10 am');
INSERT INTO `users` VALUES (42, 'DISIPLIN, KESEJAHTERAAN DAN PE', 'e10adc3949ba59abbe56e057f20f883e', 'disiplin', '-', '-', '-', 'files/9fb947a8ca37c11f62e5ded857fdcd40.jpg', 'Admin Sub Bidang', '12', '03-02-2020, 12:10 am');
INSERT INTO `users` VALUES (38, 'SUBBAG UMUM KEPEGAWAIAN', 'e10adc3949ba59abbe56e057f20f883e', 'umpeg', '-', '-', '-', 'files/3d26d96a66d019411f25c76cec536f6d.png', 'Admin Sub Bidang', '5', '28-01-2020, 5:16 pm');
INSERT INTO `users` VALUES (39, 'ADMIN UMPEG', 'e10adc3949ba59abbe56e057f20f883e', 'umpegstok', '-', '-', '-', 'files/eb817f8f5a6f236a7ab294f563e529e1.jpg', 'Admin Persediaan', ' ', '02-02-2020, 10:20 pm');
INSERT INTO `users` VALUES (40, 'SUB BAGIAN PERENCANAAN DAN KEU', 'e10adc3949ba59abbe56e057f20f883e', 'perencanaan', '-', '-', '-', 'files/851251013741635638033c8e017ab44b.jpg', 'Admin Sub Bidang', '6', '03-02-2020, 12:09 am');
INSERT INTO `users` VALUES (26, 'Luki Dwi Janarko', 'e10adc3949ba59abbe56e057f20f883e', 'luki', '', '', '', 'files/b846093771a1e46f937afd5c0291c3d0.jpg', 'Admin', '', '20-01-2018, 8:22 am');
