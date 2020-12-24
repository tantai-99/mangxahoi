-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th12 24, 2020 lúc 03:31 PM
-- Phiên bản máy phục vụ: 10.4.10-MariaDB
-- Phiên bản PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `mxh`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `baiviet`
--

DROP TABLE IF EXISTS `baiviet`;
CREATE TABLE IF NOT EXISTS `baiviet` (
  `idbaiviet` int(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 NOT NULL,
  `anhBV` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `thoigianBV` datetime NOT NULL,
  `noidungBV` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`idbaiviet`),
  KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `baiviet`
--

INSERT INTO `baiviet` (`idbaiviet`, `username`, `anhBV`, `thoigianBV`, `noidungBV`) VALUES
(26, 'nha@gmail.com', 'sapa.jpg', '2020-12-23 00:00:00', 'SAPA'),
(27, 'nha@gmail.com', 'dongthapmuoi.jpg', '2020-12-23 00:00:00', 'Đồng Tháp '),
(28, 'abc@gmail.com', 'Tây bắc.jpg', '2020-12-23 00:00:00', 'Tây bắc'),
(29, 'abc@gmail.com', 'langhoa.jpg', '2020-12-23 00:00:00', 'Làng hoa'),
(30, 'ngoan@gmail.com', 'bien.jpg', '2020-12-23 00:00:00', ''),
(32, 'ngoan@gmail.com', 'ruongbacthang.jpg', '2020-12-23 00:00:00', 'Ruộng bậc thang '),
(33, 'nha@gmail.com', '', '2020-12-24 00:00:00', 'aa'),
(34, 'nha@gmail.com', 'tải 00xuống.jpg', '2020-12-24 00:00:00', 'Hồ Gươm'),
(35, 'tai@gmail.com', 'mxh.sql', '2020-12-24 00:00:00', 'Hello'),
(36, 'tai@gmail.com', 'mxh.sql', '2020-12-24 00:00:00', 'a'),
(37, 'tai@gmail.com', 'tải xuống11.jpg', '2020-12-24 00:00:00', 'a');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `baytocamxuc`
--

DROP TABLE IF EXISTS `baytocamxuc`;
CREATE TABLE IF NOT EXISTS `baytocamxuc` (
  `idbaytocamxuc` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `thoigianBTCX` datetime NOT NULL,
  `icon` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binhluan`
--

DROP TABLE IF EXISTS `binhluan`;
CREATE TABLE IF NOT EXISTS `binhluan` (
  `idbinhluan` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `noidungBL` text COLLATE utf8_unicode_ci NOT NULL,
  `sticker` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chat`
--

DROP TABLE IF EXISTS `chat`;
CREATE TABLE IF NOT EXISTS `chat` (
  `idchat` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `noidungchat` bigint(20) NOT NULL,
  `thoigianchat` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nguoidung`
--

DROP TABLE IF EXISTS `nguoidung`;
CREATE TABLE IF NOT EXISTS `nguoidung` (
  `tentk` varchar(50) NOT NULL,
  `mk` varchar(32) NOT NULL,
  `hoten` varchar(50) NOT NULL,
  `ngaysinh` date NOT NULL,
  `gioitinh` varchar(3) NOT NULL,
  `sdt` int(10) NOT NULL,
  `diachi` varchar(50) NOT NULL,
  `avatar` varchar(50) NOT NULL,
  PRIMARY KEY (`tentk`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `nguoidung`
--

INSERT INTO `nguoidung` (`tentk`, `mk`, `hoten`, `ngaysinh`, `gioitinh`, `sdt`, `diachi`, `avatar`) VALUES
('abc@gmail.com', '809f09f73d5a61070477b1d676155e25', 'Văn A', '2020-12-10', '1', 234567891, '', 'avatarmacdinh.jpg'),
('ngoan@gmail.com', '809f09f73d5a61070477b1d676155e25', 'Ngoan', '2020-12-04', '1', 234567892, '', 'avatarmacdinh.jpg'),
('nha@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'Tuấn Nhã', '1999-02-26', '1', 376440058, '', 'images.jpg'),
('tai@gmail.com', '57ab30a9ee5f4d2bfe06b7aa6c5fc594', 'Tấn Tài', '1999-11-03', '1', 379307950, '', 'avatarmacdinh.jpg'),
('vanb@gmail.com', '809f09f73d5a61070477b1d676155e25', 'Nguyễn Thị B', '2020-12-04', '0', 123456787, '', 'avatarmacdinh.jpg');

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `baiviet`
--
ALTER TABLE `baiviet`
  ADD CONSTRAINT `baiviet_ibfk_1` FOREIGN KEY (`username`) REFERENCES `nguoidung` (`tentk`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
