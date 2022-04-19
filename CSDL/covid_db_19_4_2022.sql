-- phpMyAdmin SQL Dump
-- version 2.11.6
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 19, 2022 at 02:36 PM
-- Server version: 5.0.51
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Database: `htdieuphoibncovid`
--

-- --------------------------------------------------------

--
-- Table structure for table `benhnhan`
--

CREATE TABLE `benhnhan` (
  `MaBenhNhan` int(11) NOT NULL auto_increment,
  `TenBenhNhan` varchar(60) collate utf8_unicode_ci NOT NULL,
  `Email` varchar(40) collate utf8_unicode_ci NOT NULL,
  `SoDienThoai` varchar(15) collate utf8_unicode_ci NOT NULL,
  `QueQuan` varchar(50) collate utf8_unicode_ci NOT NULL,
  `NgaySinh` date NOT NULL,
  `DiaChi` varchar(100) collate utf8_unicode_ci NOT NULL,
  `TrangThai` tinyint(4) NOT NULL,
  `NoiDieuTri` varchar(100) collate utf8_unicode_ci NOT NULL,
  `GioiTinh` tinyint(4) NOT NULL,
  `CMND` varchar(30) collate utf8_unicode_ci NOT NULL,
  `QuocTich` varchar(30) collate utf8_unicode_ci NOT NULL,
  `MaBV` varchar(20) collate utf8_unicode_ci NOT NULL,
  `MaPhuong` varchar(35) collate utf8_unicode_ci NOT NULL,
  `SoDienThoai_TK` varchar(15) collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`MaBenhNhan`),
  KEY `SoDienThoai_TK` (`SoDienThoai_TK`),
  KEY `MaPhuong` (`MaPhuong`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `benhnhan`
--

INSERT INTO `benhnhan` (`MaBenhNhan`, `TenBenhNhan`, `Email`, `SoDienThoai`, `QueQuan`, `NgaySinh`, `DiaChi`, `TrangThai`, `NoiDieuTri`, `GioiTinh`, `CMND`, `QuocTich`, `MaBV`, `MaPhuong`, `SoDienThoai_TK`) VALUES
(1, 'Dương Mộng Khánh', 'mongkhanh@gmail.com', '0988154619', 'An Giang', '2001-02-19', '29 Lê Đức Thọ', 1, 'TP HCM', 1, '089201012234', 'Việt Nam', 'CSCLQUANGV7', 'P7GV', '0988154619'),
(2, 'Trương Thành Đạt', 'dat09@gmail.com', '0913474835', 'Tiền Giang', '2001-04-10', '60 Nguyễn Huệ', 1, 'TP HCM', 1, '012201012234', 'Việt Nam', 'CSCLQUANGV7', 'P7GV', '0913474835'),
(3, 'Nguyễn Trương Thiên Long', 'thienlong@gmail.com', '0955564789', 'TP HCM', '2001-04-23', '956 Quang Trung', 1, 'TP HCM', 1, '087201012236', 'Việt Nam', 'CSCLQUANGV9', 'P9GV', '0955564789');

-- --------------------------------------------------------

--
-- Table structure for table `benhnhan_benhvien`
--

CREATE TABLE `benhnhan_benhvien` (
  `MaBenhNhan` varchar(10) collate utf8_unicode_ci NOT NULL,
  `MaBV` varchar(10) collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`MaBenhNhan`),
  KEY `MaBenhNhan` (`MaBenhNhan`),
  KEY `MaBV` (`MaBV`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `benhnhan_benhvien`
--


-- --------------------------------------------------------

--
-- Table structure for table `benhvien`
--

CREATE TABLE `benhvien` (
  `MaBV` varchar(20) collate utf8_unicode_ci NOT NULL,
  `TenBV` varchar(50) collate utf8_unicode_ci NOT NULL,
  `SoDienThoai` varchar(12) collate utf8_unicode_ci NOT NULL,
  `Email` varchar(50) collate utf8_unicode_ci NOT NULL,
  `SoLuongBenhNhan` int(11) NOT NULL,
  `SoGiuongToiDa` int(11) NOT NULL,
  `DieuTri` varchar(50) collate utf8_unicode_ci NOT NULL,
  `SoTang` int(11) NOT NULL,
  `maPhuong` varchar(35) collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`MaBV`),
  KEY `SoTang` (`SoTang`),
  KEY `maPhuong` (`maPhuong`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `benhvien`
--

INSERT INTO `benhvien` (`MaBV`, `TenBV`, `SoDienThoai`, `Email`, `SoLuongBenhNhan`, `SoGiuongToiDa`, `DieuTri`, `SoTang`, `maPhuong`) VALUES
('CSCLQUAN1BN', 'Cơ sở cách lý quận 1 Bến Nghé', '0186865377', 'cscl_quan1bn@gmail.com', 0, 3000, 'Cách ly, chăm sóc sức khỏe bệnh nhân', 1, 'PBN'),
('CSCLQUAN1CG', 'Cơ sở cách lý quận 1 Cô Giang', '0985893331', 'cscl_quan1cg@gmail.com', 0, 4000, 'Cách ly, chăm sóc sức khỏe bệnh nhân', 1, 'PCG'),
('CSCLQUAN1TD', 'Cơ sở cách lý quận 1 Tân Định', '0195898687', 'cscl_quan1td@gmail.com', 0, 5000, 'Cách ly, chăm sóc sức khỏe bệnh nhân', 1, 'PTD'),
('CSCLQUANBTH26', 'Cơ sở cách lý quận Bình Thạnh 26', '0186865366', 'cscl_quanbth26@gmail.com', 0, 3000, 'Cách ly, chăm sóc sức khỏe bệnh nhân', 1, 'P26BTH'),
('CSCLQUANBTH27', 'Cơ sở cách lý quận Bình Thạnh 27', '0186865361', 'cscl_quanbth27@gmail.com', 0, 3000, 'Cách ly, chăm sóc sức khỏe bệnh nhân', 1, 'P27BTH'),
('CSCLQUANBTH28', 'Cơ sở cách lý quận Bình Thạnh 28', '0186865362', 'cscl_quanbth28@gmail.com', 0, 3000, 'Cách ly, chăm sóc sức khỏe bệnh nhân', 1, 'P28BTH'),
('CSCLQUANGV7', 'Cơ sở cách lý quận Gò Vấp 7', '0186865666', 'cscl_quangovap7@gmail.com', 0, 6000, 'Cách ly, chăm sóc sức khỏe bệnh nhân', 1, 'P7GV'),
('CSCLQUANGV8', 'Cơ sở cách lý quận Gò Vấp 8', '0186865466', 'cscl_quangovap8@gmail.com', 0, 3000, 'Cách ly, chăm sóc sức khỏe bệnh nhân', 1, 'P8GV'),
('CSCLQUANGV9', 'Cơ sở cách lý quận Gò Vấp 9', '0176865566', 'cscl_quangovap9@gmail.com', 0, 3000, 'Cách ly, chăm sóc sức khỏe bệnh nhân', 1, 'P9GV');

-- --------------------------------------------------------

--
-- Table structure for table `canboytephuong`
--

CREATE TABLE `canboytephuong` (
  `MaCBYTP` varchar(10) collate utf8_unicode_ci NOT NULL,
  `TenCBYTP` varchar(30) collate utf8_unicode_ci NOT NULL,
  `SoDienThoai` varchar(15) collate utf8_unicode_ci NOT NULL,
  `DiaChi` varchar(100) collate utf8_unicode_ci NOT NULL,
  `DonViCongTac` varchar(100) collate utf8_unicode_ci NOT NULL,
  `Email` varchar(50) collate utf8_unicode_ci NOT NULL,
  `MaTTYTP` varchar(10) collate utf8_unicode_ci NOT NULL,
  `MaTK` varchar(20) collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`MaCBYTP`),
  KEY `MaTTYTP` (`MaTTYTP`),
  KEY `MaTK` (`MaTK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `canboytephuong`
--


-- --------------------------------------------------------

--
-- Table structure for table `cauhoi`
--

CREATE TABLE `cauhoi` (
  `MaCauHoi` int(11) NOT NULL,
  `TieuDe` varchar(30) collate utf8_unicode_ci NOT NULL,
  `TrangThai` tinyint(1) NOT NULL,
  `NoiDung` varchar(500) collate utf8_unicode_ci NOT NULL,
  `MaCBYTP` varchar(10) collate utf8_unicode_ci NOT NULL,
  `MaBenhNhan` int(11) NOT NULL,
  PRIMARY KEY  (`MaCauHoi`),
  KEY `MaCBYTP` (`MaCBYTP`),
  KEY `MaBenhNhan` (`MaBenhNhan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cauhoi`
--


-- --------------------------------------------------------

--
-- Table structure for table `nguoiquantri`
--

CREATE TABLE `nguoiquantri` (
  `MaNQT` int(11) NOT NULL,
  `TenNQT` varchar(50) collate utf8_unicode_ci NOT NULL,
  `SoDienThoai` varchar(15) collate utf8_unicode_ci NOT NULL,
  `DiaChi` varchar(50) collate utf8_unicode_ci NOT NULL,
  `Email` varchar(50) collate utf8_unicode_ci NOT NULL,
  `MaTK` varchar(20) collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`MaNQT`),
  KEY `MaTK` (`MaTK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `nguoiquantri`
--


-- --------------------------------------------------------

--
-- Table structure for table `nhanvienbenhvien`
--

CREATE TABLE `nhanvienbenhvien` (
  `MaNVBV` varchar(20) collate utf8_unicode_ci NOT NULL,
  `TenNVBV` varchar(50) collate utf8_unicode_ci NOT NULL,
  `SoDienThoai` varchar(15) collate utf8_unicode_ci NOT NULL,
  `DiaChi` varchar(100) collate utf8_unicode_ci NOT NULL,
  `DonViCongTac` varchar(100) collate utf8_unicode_ci NOT NULL,
  `Email` varchar(30) collate utf8_unicode_ci NOT NULL,
  `MaBV` varchar(20) collate utf8_unicode_ci NOT NULL,
  `MaTK` varchar(20) collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`MaNVBV`),
  KEY `MaBV` (`MaBV`),
  KEY `MaTK` (`MaTK`),
  KEY `MaTK_2` (`MaTK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `nhanvienbenhvien`
--

INSERT INTO `nhanvienbenhvien` (`MaNVBV`, `TenNVBV`, `SoDienThoai`, `DiaChi`, `DonViCongTac`, `Email`, `MaBV`, `MaTK`) VALUES
('NV001_CSYTGV7', 'Phạm Văn Khánh', '0193377172', '25 Quang Trung', 'Cơ sở y tế quận Gò Vấp 7', 'khanh_govap@gmail.com', 'CSCLQUANGV7', 'nhanvienkhanh');

-- --------------------------------------------------------

--
-- Table structure for table `phieudexuatchuyenvien`
--

CREATE TABLE `phieudexuatchuyenvien` (
  `MaPhieuDeXuat` int(11) NOT NULL auto_increment,
  `ThoiGianLapPhieu` datetime NOT NULL,
  `TangHienTai` int(11) NOT NULL,
  `TangDeXuat` int(11) NOT NULL,
  `TenBV` varchar(40) collate utf8_unicode_ci NOT NULL,
  `LyDo` varchar(100) collate utf8_unicode_ci NOT NULL,
  `TrangThaiDuyet` tinyint(4) NOT NULL,
  `MaNVBV` varchar(20) collate utf8_unicode_ci NOT NULL,
  `MaBenhNhan` int(11) NOT NULL,
  `MaBV` varchar(10) collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`MaPhieuDeXuat`),
  KEY `MaNVBV` (`MaNVBV`),
  KEY `MaBenhNhan` (`MaBenhNhan`),
  KEY `MaBV` (`MaBV`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `phieudexuatchuyenvien`
--


-- --------------------------------------------------------

--
-- Table structure for table `phieukhaibaoyte`
--

CREATE TABLE `phieukhaibaoyte` (
  `MaPhieuKBYT` int(11) NOT NULL auto_increment,
  `TrieuChung` varchar(100) collate utf8_unicode_ci default NULL,
  `TinhTrangHienTai` varchar(100) collate utf8_unicode_ci default NULL,
  `LichSuBenhNen` varchar(100) collate utf8_unicode_ci default NULL,
  `NgayPhatHienTrieuChung` datetime NOT NULL,
  `NoiDungKhaiBao` varchar(200) collate utf8_unicode_ci NOT NULL,
  `ThoiGianLap` datetime NOT NULL,
  `MaBenhNhan` int(11) NOT NULL,
  PRIMARY KEY  (`MaPhieuKBYT`),
  KEY `MaBenhNhan` (`MaBenhNhan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `phieukhaibaoyte`
--


-- --------------------------------------------------------

--
-- Table structure for table `phieuxntinhtrangbenhnhan`
--

CREATE TABLE `phieuxntinhtrangbenhnhan` (
  `MaPhieuXN` int(11) NOT NULL auto_increment,
  `NgayLapPhieu` datetime NOT NULL,
  `TinhTrang` tinyint(4) NOT NULL,
  `GiaiPhap` varchar(200) collate utf8_unicode_ci NOT NULL,
  `MaBenhNhan` int(11) NOT NULL,
  `MaCBYTP` varchar(10) collate utf8_unicode_ci NOT NULL,
  `MaBV` varchar(10) collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`MaPhieuXN`),
  KEY `MaBenhNhan` (`MaBenhNhan`),
  KEY `MaCBYTP` (`MaCBYTP`),
  KEY `MaBV` (`MaBV`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `phieuxntinhtrangbenhnhan`
--


-- --------------------------------------------------------

--
-- Table structure for table `phuong`
--

CREATE TABLE `phuong` (
  `MaPhuong` varchar(35) collate utf8_unicode_ci NOT NULL,
  `TenPhuong` varchar(50) collate utf8_unicode_ci NOT NULL,
  `MaQuan` varchar(35) collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`MaPhuong`),
  KEY `MaQuan` (`MaQuan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `phuong`
--

INSERT INTO `phuong` (`MaPhuong`, `TenPhuong`, `MaQuan`) VALUES
('P10GV', 'Phường 10', 'QGV'),
('P11BTH', 'Phường 11', 'QBinhThanh'),
('P11GV', 'Phường 11', 'QGV'),
('P12BTH', 'Phường 12', 'QBinhThanh'),
('P12GV', 'Phường 12', 'QGV'),
('P13BTH', 'Phường 13', 'QBinhThanh'),
('P13GV', 'Phường 13', 'QGV'),
('P14BTH', 'Phường 14', 'QBinhThanh'),
('P14GV', 'Phường 14', 'QGV'),
('P15BTH', 'Phường 15', 'QBinhThanh'),
('P15GV', 'Phường 15', 'QGV'),
('P16GV', 'Phường 16', 'QGV'),
('P17BTH', 'Phường 17', 'QBinhThanh'),
('P17GV', 'Phường 17', 'QGV'),
('P19BTH', 'Phường 19', 'QBinhThanh'),
('P1BTH', 'Phường 1', 'QBinhThanh'),
('P1GV', 'Phường 1', 'QGV'),
('P21BTH', 'Phường 21', 'QBinhThanh'),
('P22BTH', 'Phường 22', 'QBinhThanh'),
('P24BTH', 'Phường 24', 'QBinhThanh'),
('P25BTH', 'Phường 25', 'QBinhThanh'),
('P26BTH', 'Phường 26', 'QBinhThanh'),
('P27BTH', 'Phường 27', 'QBinhThanh'),
('P28BTH', 'Phường 28', 'QBinhThanh'),
('P2BTH', 'Phường 2', 'QBinhThanh'),
('P3BTH', 'Phường 3', 'QBinhThanh'),
('P3GV', 'Phường 3', 'QGV'),
('P4GV', 'Phường 4', 'QGV'),
('P5BTH', 'Phường 5', 'QBinhThanh'),
('P5GV', 'Phường 5', 'QGV'),
('P6BTH', 'Phường 6', 'QBinhThanh'),
('P6GV', 'Phường 6', 'QGV'),
('P7BTH', 'Phường 7', 'QBinhThanh'),
('P7GV', 'Phường 7', 'QGV'),
('P8GV', 'Phường 8', 'QGV'),
('P9GV', 'Phường 9', 'QGV'),
('PBN', 'Bến Nghé', 'Q1'),
('PBT', 'Bến Thành', 'Q1'),
('PCG', 'Cô Giang', 'Q1'),
('PCK', 'Cầu Kho', 'Q1'),
('PCOL', 'Cầu Ông Lãnh', 'Q1'),
('PDK', 'Đa Kao', 'Q1'),
('PNCT', 'Nguyễn Cư Trinh', 'Q1'),
('PNTB', 'Nguyễn Thái Bình', 'Q1'),
('PPNL', 'Phạm Ngũ Lão', 'Q1'),
('PTD', 'Tân Định', 'Q1');

-- --------------------------------------------------------

--
-- Table structure for table `quan`
--

CREATE TABLE `quan` (
  `MaQuan` varchar(35) collate utf8_unicode_ci NOT NULL,
  `TenQuan` varchar(50) collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`MaQuan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `quan`
--

INSERT INTO `quan` (`MaQuan`, `TenQuan`) VALUES
('HBC', 'Huyện Bình Chánh'),
('HCC', 'Huyện Củ Chi'),
('HCG', 'Huyện Cần Giờ'),
('HHM', 'Huyện Hóc Môn'),
('HNB', 'Huyện Nhà Bè'),
('Q1', 'Quận 1'),
('Q10', 'Quận 10'),
('Q11', 'Quận 11'),
('Q12', 'Quận 12'),
('Q2', 'Quận 2'),
('Q3', 'Quận 3'),
('Q4', 'Quận 4'),
('Q5', 'Quận 5'),
('Q6', 'Quận 6'),
('Q7', 'Quận 7'),
('Q8', 'Quận 8'),
('Q9', 'Quận 9'),
('QBinhThanh', 'Quận Bình Thạnh'),
('QBT', 'Quận Bình Tân'),
('QGV', 'Quận Gò Vấp'),
('QPN', 'Quận Phú Nhuận'),
('QTB', 'Quận Tân Bình'),
('QTD', 'Quận Thủ Đức'),
('QTP', 'Quận Tân Phú');

-- --------------------------------------------------------

--
-- Table structure for table `taikhoanbn`
--

CREATE TABLE `taikhoanbn` (
  `SoDienThoai` varchar(12) collate utf8_unicode_ci NOT NULL,
  `password` varchar(50) collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`SoDienThoai`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `taikhoanbn`
--

INSERT INTO `taikhoanbn` (`SoDienThoai`, `password`) VALUES
('0911784919', '25f9e794323b453885f5181f1b624d0b'),
('0913474835', '25f9e794323b453885f5181f1b624d0b'),
('0955564789', '25f9e794323b453885f5181f1b624d0b'),
('0977676818', '25f9e794323b453885f5181f1b624d0b'),
('0988154619', '25f9e794323b453885f5181f1b624d0b');

-- --------------------------------------------------------

--
-- Table structure for table `taikhoancv`
--

CREATE TABLE `taikhoancv` (
  `MaTK` varchar(20) collate utf8_unicode_ci NOT NULL,
  `password` varchar(50) collate utf8_unicode_ci NOT NULL,
  `phanquyen` tinyint(4) NOT NULL,
  PRIMARY KEY  (`MaTK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `taikhoancv`
--

INSERT INTO `taikhoancv` (`MaTK`, `password`, `phanquyen`) VALUES
('nhanviendao', '25f9e794323b453885f5181f1b624d0b', 2),
('nhanvienkhanh', '25f9e794323b453885f5181f1b624d0b', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tang`
--

CREATE TABLE `tang` (
  `SoTang` int(11) NOT NULL,
  `MoTaTinhTrang` varchar(300) collate utf8_unicode_ci NOT NULL,
  `SoLuong` float NOT NULL,
  `MoTaBenhVien` varchar(300) collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`SoTang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tang`
--

INSERT INTO `tang` (`SoTang`, `MoTaTinhTrang`, `SoLuong`, `MoTaBenhVien`) VALUES
(1, 'Các trường hợp F0 không triệu chứng, không bệnh nền hoặc có bệnh nền đã được điều trị ổn định, không béo phì. Dự kiến thu dung khoảng 50% trường hợp F0', 50, 'Cơ sở chăm sóc và và theo dõi sức khỏe các trường hợp F0 tại địa bàn quận, huyện và thành phố Thủ Đức'),
(2, 'Các trường hợp F0 mới được phát hiện trong cộng đồng, được khám sàng lọc và chuyển đến từ tầng 1. Dự kiến thu dung khoảng 27% trường hợp F0', 27, 'Bệnh viện dã chiến thu dung điều trị COVID-19'),
(3, 'Các trường hợp F0 có triệu chứng ở mức độ trung bình và nặng. Dự kiến thu dung khoảng 10% trường hợp F0', 10, 'Bệnh viện điều trị COVID-19 các trường hợp có triệu chứng'),
(4, 'Mắc COVID-19 nặng do bệnh lý nền hoặc bệnh lý đi kèm Dự kiến thu dung khoảng 8% F0', 8, 'Bv điều trị COVID-19 có bệnh lý đi kèm nặng cần can thiệp điều trị chuyên khoa'),
(5, 'Mắc COVID-19 có triệu chứng nặng và nguy kịch. Dự kiến thu dung khoảng 5% F0', 5, 'Bv Hồi sức COVID-19');

-- --------------------------------------------------------

--
-- Table structure for table `trungtamytephuong`
--

CREATE TABLE `trungtamytephuong` (
  `MaTTYTP` varchar(10) collate utf8_unicode_ci NOT NULL,
  `TenTTYTP` varchar(50) collate utf8_unicode_ci NOT NULL,
  `Email` varchar(50) collate utf8_unicode_ci NOT NULL,
  `SoDienThoai` varchar(12) collate utf8_unicode_ci NOT NULL,
  `DiaChi` varchar(50) collate utf8_unicode_ci NOT NULL,
  `MaPhuong` varchar(35) collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`MaTTYTP`),
  KEY `MaPhuong` (`MaPhuong`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `trungtamytephuong`
--


--
-- Constraints for dumped tables
--

--
-- Constraints for table `benhnhan`
--
ALTER TABLE `benhnhan`
  ADD CONSTRAINT `benhnhan_ibfk_3` FOREIGN KEY (`SoDienThoai_TK`) REFERENCES `taikhoanbn` (`SoDienThoai`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `benhnhan_ibfk_4` FOREIGN KEY (`MaPhuong`) REFERENCES `phuong` (`MaPhuong`);

--
-- Constraints for table `benhnhan_benhvien`
--
ALTER TABLE `benhnhan_benhvien`
  ADD CONSTRAINT `benhnhan_benhvien_ibfk_1` FOREIGN KEY (`MaBV`) REFERENCES `benhvien` (`MaBV`);

--
-- Constraints for table `benhvien`
--
ALTER TABLE `benhvien`
  ADD CONSTRAINT `benhvien_ibfk_1` FOREIGN KEY (`SoTang`) REFERENCES `tang` (`SoTang`),
  ADD CONSTRAINT `benhvien_ibfk_2` FOREIGN KEY (`maPhuong`) REFERENCES `phuong` (`MaPhuong`);

--
-- Constraints for table `canboytephuong`
--
ALTER TABLE `canboytephuong`
  ADD CONSTRAINT `canboytephuong_ibfk_1` FOREIGN KEY (`MaTTYTP`) REFERENCES `trungtamytephuong` (`MaTTYTP`),
  ADD CONSTRAINT `canboytephuong_ibfk_2` FOREIGN KEY (`MaTK`) REFERENCES `taikhoancv` (`MaTK`);

--
-- Constraints for table `cauhoi`
--
ALTER TABLE `cauhoi`
  ADD CONSTRAINT `cauhoi_ibfk_1` FOREIGN KEY (`MaCBYTP`) REFERENCES `canboytephuong` (`MaCBYTP`),
  ADD CONSTRAINT `cauhoi_ibfk_2` FOREIGN KEY (`MaBenhNhan`) REFERENCES `benhnhan` (`MaBenhNhan`);

--
-- Constraints for table `nguoiquantri`
--
ALTER TABLE `nguoiquantri`
  ADD CONSTRAINT `nguoiquantri_ibfk_1` FOREIGN KEY (`MaTK`) REFERENCES `taikhoancv` (`MaTK`);

--
-- Constraints for table `nhanvienbenhvien`
--
ALTER TABLE `nhanvienbenhvien`
  ADD CONSTRAINT `nhanvienbenhvien_ibfk_1` FOREIGN KEY (`MaBV`) REFERENCES `benhvien` (`MaBV`),
  ADD CONSTRAINT `nhanvienbenhvien_ibfk_2` FOREIGN KEY (`MaTK`) REFERENCES `taikhoancv` (`MaTK`);

--
-- Constraints for table `phieudexuatchuyenvien`
--
ALTER TABLE `phieudexuatchuyenvien`
  ADD CONSTRAINT `phieudexuatchuyenvien_ibfk_1` FOREIGN KEY (`MaNVBV`) REFERENCES `nhanvienbenhvien` (`MaNVBV`),
  ADD CONSTRAINT `phieudexuatchuyenvien_ibfk_2` FOREIGN KEY (`MaBenhNhan`) REFERENCES `benhnhan` (`MaBenhNhan`),
  ADD CONSTRAINT `phieudexuatchuyenvien_ibfk_3` FOREIGN KEY (`MaBV`) REFERENCES `benhvien` (`MaBV`);

--
-- Constraints for table `phieukhaibaoyte`
--
ALTER TABLE `phieukhaibaoyte`
  ADD CONSTRAINT `phieukhaibaoyte_ibfk_1` FOREIGN KEY (`MaBenhNhan`) REFERENCES `benhnhan` (`MaBenhNhan`);

--
-- Constraints for table `phieuxntinhtrangbenhnhan`
--
ALTER TABLE `phieuxntinhtrangbenhnhan`
  ADD CONSTRAINT `phieuxntinhtrangbenhnhan_ibfk_1` FOREIGN KEY (`MaCBYTP`) REFERENCES `canboytephuong` (`MaCBYTP`),
  ADD CONSTRAINT `phieuxntinhtrangbenhnhan_ibfk_2` FOREIGN KEY (`MaBV`) REFERENCES `benhvien` (`MaBV`);

--
-- Constraints for table `phuong`
--
ALTER TABLE `phuong`
  ADD CONSTRAINT `phuong_ibfk_1` FOREIGN KEY (`MaQuan`) REFERENCES `quan` (`MaQuan`);

--
-- Constraints for table `trungtamytephuong`
--
ALTER TABLE `trungtamytephuong`
  ADD CONSTRAINT `trungtamytephuong_ibfk_1` FOREIGN KEY (`MaPhuong`) REFERENCES `phuong` (`MaPhuong`);
