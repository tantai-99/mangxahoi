-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th12 23, 2020 lúc 07:48 PM
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
  `username` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `anhBV` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `thoigianBV` datetime NOT NULL,
  `noidungBV` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`idbaiviet`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `baiviet`
--

INSERT INTO `baiviet` (`idbaiviet`, `username`, `anhBV`, `thoigianBV`, `noidungBV`) VALUES
(32, 'ngoan@gmail.com', 'ruongbacthang.jpg', '2020-12-23 00:00:00', 'Ruộng bậc thang '),
(30, 'ngoan@gmail.com', 'bien.jpg', '2020-12-23 00:00:00', ''),
(29, 'abc@gmail.com', 'langhoa.jpg', '2020-12-23 00:00:00', 'Làng hoa'),
(28, 'abc@gmail.com', 'Tây bắc.jpg', '2020-12-23 00:00:00', 'Tây bắc'),
(27, 'nha@gmail.com', 'dongthapmuoi.jpg', '2020-12-23 00:00:00', 'Đồng Tháp '),
(26, 'nha@gmail.com', 'sapa.jpg', '2020-12-23 00:00:00', 'SAPA');

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
('vanb@gmail.com', '809f09f73d5a61070477b1d676155e25', 'Nguyễn Thị B', '2020-12-04', '0', 123456787, '', 'avatarmacdinh.jpg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
