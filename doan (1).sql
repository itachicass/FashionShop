-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 07, 2020 lúc 10:11 AM
-- Phiên bản máy phục vụ: 10.4.11-MariaDB
-- Phiên bản PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `doan`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cthd`
--

CREATE TABLE `cthd` (
  `SOHD` int(11) NOT NULL,
  `MASP` int(11) NOT NULL,
  `SL` int(11) NOT NULL,
  `THANHTIEN` double NOT NULL,
  `HINHANH` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `cthd`
--

INSERT INTO `cthd` (`SOHD`, `MASP`, `SL`, `THANHTIEN`, `HINHANH`) VALUES
(9, 3, 1, 265000, 'Ao Hoodle Nu.jpg'),
(10, 3, 1, 265000, 'Ao Hoodle Nu.jpg'),
(11, 2, 1, 250000, 'ae4fc184bf01e573b7e1f73e1e1922c2.jpg_600x600q80.jpg'),
(11, 3, 2, 530000, 'Ao Hoodle Nu.jpg'),
(12, 3, 1, 265000, 'Ao Hoodle Nu.jpg'),
(13, 3, 3, 795000, 'Ao Hoodle Nu.jpg'),
(14, 1, 1, 250000, '1ee4fa62eeb3a309600189fde334883d.jpg'),
(15, 1, 1, 250000, '1ee4fa62eeb3a309600189fde334883d.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `SOHD` int(11) NOT NULL,
  `NGHD` date NOT NULL,
  `MAKH` int(11) DEFAULT NULL,
  `TRIGIA` double NOT NULL,
  `TINHTRANG` varchar(255) NOT NULL,
  `THANHTOAN` int(11) NOT NULL,
  `GHICHU` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `hoadon`
--

INSERT INTO `hoadon` (`SOHD`, `NGHD`, `MAKH`, `TRIGIA`, `TINHTRANG`, `THANHTOAN`, `GHICHU`) VALUES
(1, '2020-07-01', NULL, 0, 'cho xu ly', 0, 'HCM'),
(2, '2020-07-01', NULL, 0, 'cho xu ly', 0, 'HCM'),
(3, '2020-07-02', NULL, 0, 'cho xu ly', 0, 'HCM'),
(4, '2020-07-02', NULL, 0, 'cho xu ly', 0, 'HCM'),
(5, '2020-07-03', NULL, 0, 'cho xu ly', 0, 'HCM'),
(6, '2020-07-03', NULL, 0, 'cho xu ly', 0, 'HCM'),
(7, '2020-07-03', 1, 0, 'cho xu ly', 0, 'Q3 TH HCM'),
(8, '2020-07-06', 2, 0, 'cho xu ly', 0, 'HCM'),
(9, '2020-07-06', 4, 0, 'cho xu ly', 0, 'HCM'),
(10, '2020-07-06', 5, 0, 'cho xu ly', 0, 'TP HCM'),
(11, '2020-07-06', 6, 780000, 'cho xu ly', 0, 'TP HCM'),
(12, '2020-07-06', 7, 265000, 'cho xu ly', 0, 'TP HCM'),
(13, '2020-07-06', 1, 795000, 'cho xu ly', 0, 'Q3 TH HCM'),
(14, '2020-07-06', 1, 250000, 'cho xu ly', 0, 'Q3 TH HCM'),
(15, '2020-07-07', 1, 250000, 'cho xu ly', 0, 'Q3 TH HCM');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `MAKH` int(4) NOT NULL,
  `HOTEN` varchar(40) NOT NULL,
  `DCHI` varchar(50) NOT NULL,
  `SODT` varchar(10) NOT NULL,
  `NGSINH` date NOT NULL,
  `NGDK` date NOT NULL,
  `DOANHSO` double NOT NULL DEFAULT 0,
  `GIOITINH` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `khachhang`
--

INSERT INTO `khachhang` (`MAKH`, `HOTEN`, `DCHI`, `SODT`, `NGSINH`, `NGDK`, `DOANHSO`, `GIOITINH`) VALUES
(1, 'Nguyen Ngoc Thao Ngan', 'Q3 TH HCM', '0123456789', '1997-07-21', '2019-04-18', 0, 'nữ'),
(2, 'Nguyen Ngoc Thao', 'Q3 TH HCM', '0123456788', '1997-07-21', '2019-04-18', 0, 'nữ'),
(3, 'Thanh', 'TP HCM', '01234', '2020-07-06', '2020-07-06', 0, 'Nam'),
(4, 'thanh', 'HCM', '02135', '1997-04-23', '2020-07-06', 0, 'nu'),
(5, 'Tuan', 'TP HCM', '01659', '1999-04-26', '2020-07-06', 0, 'Nam'),
(6, 'Tuan', 'TP HCM', '01659', '1999-04-26', '2020-07-06', 0, 'Nam'),
(7, 'Tuan', 'TP HCM', '01659', '1999-04-26', '2020-07-06', 0, 'Nam'),
(8, 'thanh', 'hcm', '02135', '1997-04-23', '2020-07-07', 0, 'nu'),
(9, 'mnbv', 'hcm', '02135', '2020-07-09', '2020-07-07', 0, 'nu');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khuyenmai`
--

CREATE TABLE `khuyenmai` (
  `MAKM` int(11) NOT NULL,
  `PHANTRAMKM` int(11) NOT NULL,
  `TGBD` date NOT NULL,
  `TGKT` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `khuyenmai`
--

INSERT INTO `khuyenmai` (`MAKM`, `PHANTRAMKM`, `TGBD`, `TGKT`) VALUES
(0, 0, '2019-02-01', '2022-03-19');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phanhoi`
--

CREATE TABLE `phanhoi` (
  `MAPH` int(11) NOT NULL,
  `MAKH` int(4) NOT NULL,
  `MASP` int(4) NOT NULL,
  `THOIGIANPH` date NOT NULL,
  `NOIDUNG` char(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `phanhoi`
--

INSERT INTO `phanhoi` (`MAPH`, `MAKH`, `MASP`, `THOIGIANPH`, `NOIDUNG`) VALUES
(1, 1, 2, '2020-07-07', 'dep'),
(2, 1, 3, '2020-07-07', 'dep'),
(3, 1, 3, '2020-07-07', 'dep'),
(4, 1, 3, '2020-07-07', 'dep'),
(5, 1, 3, '2020-07-07', 'dep'),
(10, 1, 3, '2020-07-07', 'dep qua');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `MASP` int(11) NOT NULL,
  `TENSP` varchar(40) NOT NULL,
  `LOAISP` varchar(20) NOT NULL,
  `THUONGHIEU` varchar(255) NOT NULL,
  `NUOCSX` varchar(40) NOT NULL,
  `KICHTHUOC` char(10) NOT NULL,
  `HINHANH` varchar(255) NOT NULL,
  `GIA` double NOT NULL,
  `GIOITINH` char(3) NOT NULL,
  `SOLUONG` int(11) NOT NULL,
  `MOTA` varchar(255) CHARACTER SET utf8 NOT NULL,
  `MAKM` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`MASP`, `TENSP`, `LOAISP`, `THUONGHIEU`, `NUOCSX`, `KICHTHUOC`, `HINHANH`, `GIA`, `GIOITINH`, `SOLUONG`, `MOTA`, `MAKM`) VALUES
(1, 'Ao hoodie gau nau', 'Ao hoodie', '', 'Viet Nam', 'M', '1ee4fa62eeb3a309600189fde334883d.jpg', 250000, 'Nu', 0, '', 0),
(2, 'Ao hoodie BTS', 'Ao hoodie ', '', 'Viet Nam', 'M', 'ae4fc184bf01e573b7e1f73e1e1922c2.jpg_600x600q80.jpg', 250000, 'nu', 0, '', 0),
(3, 'Ao hoodie tho hong', 'Ao hoodie', '', 'Viet Nam', 'L', 'Ao Hoodle Nu.jpg', 265000, 'nu', 0, '', 0),
(4, 'Ao hoodie tho trang', 'Ao hoodie', '', 'Thai Lan', 'S', 'b7bf27d84c1a08ba33b4507b6862a7fa.jpg', 230000, 'nu', 0, '', 0),
(5, 'Ao hoodie tho trum', 'Ao hoosie', '', 'Thai Lan', 'XL', 'ELtXr6_simg_de2fe0_500x500_maxb.jpg', 250000, 'nu', 0, '', 0),
(6, 'Ao hoodie  ca rot', 'Ao hoodie', '', 'Viet Nam', 'M', 'f8fa7e0f44aaae8ae63a373bed53595d.jpg', 265000, 'nu', 0, '', 0),
(7, 'Ao hoodie meo', 'Ao hoodie', '', 'Viet Nam', 'L', 'f8fa7e0f44aaae8ae63a373bed53595d.jpg', 265000, 'nu', 0, '', 0),
(8, 'Ao hoodie tay rong', 'Ao hoodie', '', 'Viet Nam', 'M', 'unnamed.jpg', 265000, 'nu', 0, '', 0),
(9, 'Ao hoodie suong', 'Ao hoodie', '', 'Viet Nam', 'M', 'unnamed.jpg', 265000, 'nu', 0, '', 0),
(10, 'Áo thun xanh in hình trái tim', 'ao thun', 'ADOBE', 'VIet Nam', 'M', 'aothunxanhtraitim.jpg', 100000, 'nu', 1000, 'Áo thun vải min mát', 0),
(11, 'Bộ balo 4 món màu đen cài nơ', 'tui', 'ADOBE', 'VIet Nam', 'M', 'balo_den_no.jpg', 100000, 'nu', 1000, 'Baolo 4 món dễ thương tiện lợi', 0),
(12, 'Bộ balo 4 món màu hồng dễ thương', 'tui', 'ADOBE', 'VIet Nam', 'M', 'balo_den_no.jpg', 100000, 'nu', 1000, 'Baolo 4 món dễ thương tiện lợi', 0),
(13, 'Bộ balo 4 món màu cam dễ thương', 'tui', 'ADOBE', 'VIet Nam', 'M', 'balocam.jpg', 100000, 'nu', 1000, 'Baolo 4 món dễ thương tiện lợi', 0),
(14, 'Bộ balo 4 món màu vàng dễ thương', 'tui', 'ADOBE', 'VIet Nam', 'M', 'balocam.jpg', 100000, 'nu', 1000, 'Baolo 4 món dễ thương tiện lợi', 0),
(15, 'Bộ balo 4 món màu đỏ  đen dễ thương', 'tui', 'ADOBE', 'VIet Nam', 'M', 'đoen.jpg', 100000, 'nu', 1000, 'Baolo 4 món dễ thương tiện lợi', 0),
(16, 'Túi tote hình gấu dễ thương', 'tui', 'ADOBE', 'Thai Lan', 'M', 'gau.jpg', 100000, 'nu', 1000, 'Balo 4 món dễ thương tiện lợi', 0),
(17, 'Túi tote hình gấu dễ thương', 'tui', 'ADOBE', 'Thai Lan', 'M', 'gaugau.jpg', 100000, 'nu', 1000, 'Balo 4 món dễ thương tiện lợi', 0),
(18, 'Túi tote hình gấu dễ thương', 'tui', 'ADOBE', 'Thai Lan', 'M', 'gautrangden.jpg', 100000, 'nu', 1000, 'Balo 4 món dễ thương tiện lợi', 0),
(19, 'Túi tote hình hoa cúc dễ thương', 'tui', 'ADOBE', 'Thai Lan', 'M', 'hoacuc.jpg', 100000, 'nu', 1000, 'Balo 4 món dễ thương tiện lợi', 0),
(20, 'Balo hồng đan nơ dễ thương', 'tui', 'ADOBE', 'Thai Lan', 'M', 'hongthuan.jpg', 100000, 'nu', 1000, 'Balo 4 món dễ thương tiện lợi', 0),
(21, 'Balo hồng xen trắng đan nơ dễ thương', 'tui', 'ADOBE', 'Thai Lan', 'M', 'hongtrang.jpg', 100000, 'nu', 1000, 'Balo 4 món dễ thương tiện lợi', 0),
(22, 'Túi đen xen trắng hình mèo dễ thương', 'tui', 'ADOBE', 'Han Quoc', 'M', 'hongtrang.jpg', 100000, 'nu', 1000, 'Balo 4 món dễ thương tiện lợi', 0),
(23, 'Túi đen xen trắng hình mèo dễ thương', 'tui', 'ADOBE', 'Han Quoc', 'M', 'meoden.jpg', 100000, 'nu', 1000, 'Balo 4 món dễ thương tiện lợi', 0),
(24, 'Giày Fila', 'giay', 'FILA', 'Han Quoc', '37', 'meoden.jpg', 250000, 'nu', 1000, 'Giày đẹp êm chân', 0),
(25, 'Giày nam trắng', 'giay', 'FILA', 'Han Quoc', '42', 'giaynamtrang.jpg', 250000, 'nam', 1000, 'Giày đẹp êm chân', 0),
(26, 'Giày nữ trắng', 'giay', 'FILA', 'Han Quoc', '42', 'giaynutrang.jpg', 250000, 'nu', 1000, 'Giày đẹp êm chân', 0),
(27, 'Giày nữ NUTT trắng', 'giay', 'FILA', 'Han Quoc', '38', 'giaynuttnu.jpg', 250000, 'nu', 1000, 'Giày đẹp êm chân', 0),
(28, 'Giày Run One nam trắng', 'giay', 'RUN ONE', 'Han Quoc', '38', 'giayrunonenam.jpg', 250000, 'nam', 1000, 'Giày đẹp êm chân', 0),
(29, 'Giày Run One nam trắng', 'giay', 'RUN ONE', 'Han Quoc', '38', 'giayrunonenam.jpg', 250000, 'nam', 1000, 'Giày đẹp êm chân', 0),
(30, 'Giày vans đỏ', 'giay', 'Vans', 'Han Quoc', '38', 'giayvando.jpg', 250000, 'nam', 1000, 'Giày đẹp êm chân', 0),
(31, 'Giày Boston trắng', 'giay', 'Vans', 'Han Quoc', '38', 'giayvando.jpg', 250000, 'nu', 1000, 'Giày đẹp êm chân', 0),
(32, 'Balo in chữ smile trắng', 'tui', 'Vans', 'Viet Nam', 'M', 'smiletrang.jpg', 90000, 'nu', 1000, 'Balo dễ thương', 0),
(33, 'Balo in chữ smile vàng', 'tui', 'Vans', 'Viet Nam', 'M', 'smilevang.jpg', 90000, 'nu', 1000, 'Balo dễ thương', 0),
(34, 'Balo in chữ smile đen', 'tui', 'Vans', 'Viet Nam', 'M', 'smileden.jpg', 90000, 'nu', 1000, 'Balo dễ thương', 0),
(35, 'Balo màu trắng rêu ', 'tui', 'Vans', 'Viet Nam', 'M', 'trangreu.jpg', 90000, 'nu', 1000, 'Balo dễ thương', 0),
(36, 'Balo màu trắng đỏ ', 'tui', 'Vans', 'Viet Nam', 'M', 'trangdo.jpg', 90000, 'nu', 1000, 'Balo dễ thương', 0),
(37, 'Balo màu trắng hong ', 'tui', 'Vans', 'Viet Nam', 'M', 'tranghong.jpg', 90000, 'nu', 1000, 'Balo dễ thương', 0),
(38, 'Balo màu trắng xanh lá ', 'tui', 'Vans', 'Viet Nam', 'M', 'trangxanhla.jpg', 90000, 'nu', 1000, 'Balo dễ thương', 0),
(39, 'Balo màu xanh dương', 'tui', 'Vans', 'Viet Nam', 'M', 'xanhduong.jpg', 90000, 'nu', 1000, 'Balo dễ thương', 0),
(40, 'Quần đen ', 'quan', 'Vans', 'Viet Nam', 'M', 'quanden.jpg', 90000, 'nu', 1000, 'Quần ngắn thời trang', 0),
(41, 'Quần đen có túi', 'quan', 'Vans', 'Viet Nam', 'M', 'quandentui.jpg', 90000, 'nu', 1000, 'Quần ngắn thời trang', 0),
(42, 'Quần vàng ', 'quan', 'Vans', 'Viet Nam', 'M', 'quanvangtui.jpg', 90000, 'nu', 1000, 'Quần ngắn thời trang', 0),
(43, 'Quần trắng ', 'quan', 'Vans', 'Viet Nam', 'M', 'quantrang.jpg', 90000, 'nu', 1000, 'Quần ngắn thời trang', 0),
(44, 'Quần vàng', 'quan', 'Vans', 'Viet Nam', 'M', 'quanvang.jpg', 90000, 'nu', 1000, 'Quần ngắn thời trang', 0),
(45, 'Quần xanh có túi', 'quan', 'Vans', 'Viet Nam', 'M', 'quanxanhtui.jpg', 90000, 'nu', 1000, 'Quần ngắn thời trang', 0),
(46, 'Áo thun in hình thỏ dễ thương', 'ao', 'Vans', 'Viet Nam', 'M', 'thunthotron.jpg', 109000, 'nam', 1000, 'Áo thun mát mẻ thời trang', 0),
(47, 'Áo thun in hình thỏ dễ thương', 'ao', 'Vans', 'Viet Nam', 'M', 'thunthotron.jpg', 109000, 'nu', 1000, 'Áo thun mát mẻ thời trang', 0),
(48, 'Áo thun in hình hươu dễ thương', 'ao', 'Vans', 'Viet Nam', 'M', 'thuntranghuou.jpg', 109000, 'nam', 1000, 'Áo thun mát mẻ thời trang', 0),
(49, 'Áo thun in hình hươu dễ thương', 'ao', 'Vans', 'Viet Nam', 'M', 'thuntranghuou.jpg', 109000, 'nu', 1000, 'Áo thun mát mẻ thời trang', 0),
(50, 'Áo thun in hình đôi giày dễ thương', 'ao', 'Vans', 'Viet Nam', 'M', 'thuntrangdoigiay.jpg', 109000, 'nu', 1000, 'Áo thun mát mẻ thời trang', 0),
(51, 'Áo thun in hình cô gái dễ thương', 'ao', 'Vans', 'Viet Nam', 'M', 'thuntranggirl.jpg', 109000, 'nu', 1000, 'Áo thun mát mẻ thời trang', 0),
(52, 'Áo thun in hình hươu dễ thương', 'ao', 'Vans', 'Viet Nam', 'M', 'thuntranghuou.jpg', 109000, 'nam', 1000, 'Áo thun mát mẻ thời trang', 0),
(53, 'Áo thun in hình thỏ con dễ thương', 'ao', 'Vans', 'Viet Nam', 'M', 'thuntranghuou.jpg', 109000, 'nu', 1000, 'Áo thun mát mẻ thời trang', 0),
(54, 'Áo thun in hình thỏ con dễ thương', 'ao', 'Vans', 'Viet Nam', 'L', 'thuntranghuou.jpg', 109000, 'nam', 1000, 'Áo thun mát mẻ thời trang', 0),
(55, 'Áo thun in hình trái tim dễ thương', 'ao', 'Vans', 'Viet Nam', 'M', 'thuntrangtimdo.jpg', 109000, 'nu', 1000, 'Áo thun mát mẻ thời trang', 0),
(56, 'Áo thun in hình trái tim', 'ao', 'Vans', 'Viet Nam', 'L', 'thuntrangtimdo.jpg', 109000, 'nam', 1000, 'Áo thun mát mẻ thời trang', 0),
(57, 'Áo thun in hình hoa hồng dễ thương', 'ao', 'Vans', 'Viet Nam', 'M', 'thunxanhhoahong.jpg', 109000, 'nu', 1000, 'Áo thun mát mẻ thời trang', 0),
(58, 'Áo thun in hình hoa hồng', 'ao', 'Vans', 'Viet Nam', 'L', 'thunxanhhoahong.jpg', 109000, 'nam', 1000, 'Áo thun mát mẻ thời trang', 0),
(59, 'Áo thun in hình mèo đen dễ thương', 'ao', 'Vans', 'Viet Nam', 'M', 'thunxanhmeoden.jpg', 109000, 'nu', 1000, 'Áo thun mát mẻ thời trang', 0),
(60, 'Áo thun in hình mèo đen ', 'ao', 'Vans', 'Viet Nam', 'L', 'thunxanhmeoden.jpg', 109000, 'nam', 1000, 'Áo thun mát mẻ thời trang', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taikhoan`
--

CREATE TABLE `taikhoan` (
  `USERNAME` varchar(20) NOT NULL,
  `PASSWORD` varchar(20) NOT NULL,
  `LOAITK` int(11) NOT NULL,
  `MAKH` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `taikhoan`
--

INSERT INTO `taikhoan` (`USERNAME`, `PASSWORD`, `LOAITK`, `MAKH`) VALUES
('thanh12', '1', 1, 8),
('thao', '123', 1, 9),
('thaongan', '1', 1, 1),
('thaothao', '1', 1, 2);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `cthd`
--
ALTER TABLE `cthd`
  ADD PRIMARY KEY (`SOHD`,`MASP`),
  ADD KEY `FK_CTHD_SP` (`MASP`);

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`SOHD`),
  ADD KEY `fk_HD_KH` (`MAKH`);

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`MAKH`);

--
-- Chỉ mục cho bảng `khuyenmai`
--
ALTER TABLE `khuyenmai`
  ADD PRIMARY KEY (`MAKM`);

--
-- Chỉ mục cho bảng `phanhoi`
--
ALTER TABLE `phanhoi`
  ADD PRIMARY KEY (`MAPH`),
  ADD KEY `FK_PH_KH` (`MAKH`),
  ADD KEY `FK_PH_SP` (`MASP`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`MASP`);

--
-- Chỉ mục cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`USERNAME`),
  ADD UNIQUE KEY `MAKH` (`MAKH`),
  ADD UNIQUE KEY `UC_tk` (`USERNAME`),
  ADD KEY `FK_TK_KH` (`MAKH`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `SOHD` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `MAKH` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `khuyenmai`
--
ALTER TABLE `khuyenmai`
  MODIFY `MAKM` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `phanhoi`
--
ALTER TABLE `phanhoi`
  MODIFY `MAPH` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `MASP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `cthd`
--
ALTER TABLE `cthd`
  ADD CONSTRAINT `FK_CTHD_SP` FOREIGN KEY (`MASP`) REFERENCES `sanpham` (`MASP`),
  ADD CONSTRAINT `FK_cthd_hd` FOREIGN KEY (`SOHD`) REFERENCES `hoadon` (`SOHD`);

--
-- Các ràng buộc cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD CONSTRAINT `fk_HD_KH` FOREIGN KEY (`MAKH`) REFERENCES `khachhang` (`MAKH`);

--
-- Các ràng buộc cho bảng `phanhoi`
--
ALTER TABLE `phanhoi`
  ADD CONSTRAINT `FK_PH_KH` FOREIGN KEY (`MAKH`) REFERENCES `khachhang` (`MAKH`),
  ADD CONSTRAINT `FK_PH_SP` FOREIGN KEY (`MASP`) REFERENCES `sanpham` (`MASP`);

--
-- Các ràng buộc cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD CONSTRAINT `FK_TK_KH` FOREIGN KEY (`MAKH`) REFERENCES `khachhang` (`MAKH`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
