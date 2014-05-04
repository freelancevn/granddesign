-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 04, 2014 at 11:05 AM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `kientrucvang`
--

-- --------------------------------------------------------

--
-- Table structure for table `ktv_category`
--

CREATE TABLE IF NOT EXISTS `ktv_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(50) DEFAULT NULL,
  `type` int(1) DEFAULT NULL COMMENT '0: cong trinh, 1: shop noi that',
  `date_create` datetime DEFAULT NULL,
  `status` int(1) DEFAULT '1' COMMENT '0: delete',
  `sort` int(11) DEFAULT NULL,
  `cate_shop` int(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `ktv_category`
--

INSERT INTO `ktv_category` (`id`, `category_name`, `type`, `date_create`, `status`, `sort`, `cate_shop`) VALUES
(1, 'Chung cư, Penhouse', 0, '2013-08-27 15:08:16', 1, 1, 0),
(3, 'Biệt thự, Nhà phố', 0, '2013-08-27 15:09:21', 1, 3, 0),
(4, 'Khách sạn, Resort', 0, '2013-08-27 15:09:49', 1, 4, 0),
(5, 'Showroom, văn phòng', 0, '2013-08-27 15:10:03', 1, 5, 0),
(6, 'Nội Thất Cổ Điển', 0, '2013-09-10 22:02:21', 1, 6, 0),
(7, 'Sofa', 1, '2013-09-09 22:19:19', 1, 10, 1),
(8, 'Kệ tivi', 1, '2013-09-08 08:49:13', 1, 2, 1),
(9, 'Bộ bàn ghế ăn', 1, '2013-09-08 08:49:05', 1, 3, 2),
(10, 'Đèn chùm', 1, '2013-09-08 08:48:57', 1, 5, 5),
(14, 'Nhà Hàng, Cafe, Spa, Beauty Salon', 0, '2013-09-10 22:00:34', 1, 7, 0),
(15, 'Bàn Sofa', 1, '2013-09-23 14:51:08', 1, 2, 1),
(16, 'Giường Ngủ', 1, '2013-09-23 14:50:10', 1, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `ktv_config`
--

CREATE TABLE IF NOT EXISTS `ktv_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key_config` varchar(255) DEFAULT NULL,
  `key_value` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `ktv_config`
--

INSERT INTO `ktv_config` (`id`, `key_config`, `key_value`) VALUES
(1, 'ABOUT', '<p>GRANDDESIGN l&agrave; c&ocirc;ng ty tư vấn thiết kế được th&agrave;nh lập theo h&igrave;nh thức cổ phần. Hoạt động dưới sự điều h&agrave;nh của ban gi&aacute;m đốc v&agrave; hội đồng quản trị, c&ugrave;ng với đội ngũ c&aacute;c kiến tr&uacute;c sư c&oacute; năng lực chuy&ecirc;n m&ocirc;n cao v&agrave; phong c&aacute;ch l&agrave;m việc chuy&ecirc;n nghiệp. Quan điểm thiết kế: Ph&acirc;n t&iacute;ch kh&ocirc;ng gian sống từ mọi g&oacute;c độ, nghi&ecirc;n cứu những ưu ti&ecirc;n của cuộc sống. GRANDDESIGN đề xuất c&aacute;c giải ph&aacute;p thiết kế ph&ugrave; hợp nhất cho từng kh&ocirc;ng gian trong ng&ocirc;i nh&agrave; bạn</p>\r\n'),
(2, 'FACTORY', '<p>Đang cập nhật ..</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt="" src="http://m.f29.img.vnecdn.net/2014/04/08/KOR-5086-4204-1393304484-7081-1396942691.jpg" style="height:374px; width:500px" /></p>\r\n\r\n<p><object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0"><param name="quality" value="high" /><param name="movie" value="http://www.youtube.com/watch?v=v7y-ue9z5w0" /><embed pluginspage="http://www.macromedia.com/go/getflashplayer" quality="high" src="http://www.youtube.com/watch?v=v7y-ue9z5w0" type="application/x-shockwave-flash"></embed></object></p>\r\n'),
(3, 'FOOTERHCM', '<p>\r\n	&nbsp;216 Nguyễn Thị Minh Khai, Quận 3, Tp.HCM</p>\r\n<p>\r\n	<span>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span><span style="color:#ff0000;"><span> </span><span>Hotline</span></span><span>:</span> 0916.979.777 ( Mr Minh )</p>\r\n<p>\r\n	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;0902.797.548 ( Mr Sơn )</p>\r\n'),
(4, 'FOOTERHANOI', '<p>\n	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;15/36 Nguyễn Viết Xu&acirc;n - H&agrave; Nội</p>\n<p>\n	<span style="color:#ff0000;"><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; Hotline</span></span>: &nbsp;0985.37.3333 (Mr Hảii )</p>\n<p>\n	&nbsp;</p>\n'),
(5, 'CONTACTHCM', '<p>\r\n	<span class="right">216 Nguyễn Thị Minh Khai, Q.3, Tp.HCM</span> - 0916.979.777(Mr.Minh)</p>\r\n'),
(6, 'CONTACTHANOI', '<p>\r\n	<span class="right">15/36 Nguyễn Viết Xu&acirc;n - H&agrave; Nội</span> - 0985.37.3333 (Mr Hải)</p>\r\n'),
(7, 'CONTACTHCMLINK', '<iframe width="525" height="350" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.com/maps?f=q&source=s_q&hl=vi&geocode=&q=216+Nguy%E1%BB%85n+Th%E1%BB%8B+Minh+Khai,+Th%C3%A0nh+ph%E1%BB%91+H%E1%BB%93+Ch%C3%AD+Minh,+H%E1%BB%93+Ch%C3%AD+Minh,+Vi%E1%BB%87t+Nam&aq=0&oq=216+nguy%E1%BB%85n+th%E1%BB%8B+minh&sll=37.0625,-95.677068&sspn=37.188995,86.572266&ie=UTF8&hq=&hnear=216+Nguy%E1%BB%85n+Th%E1%BB%8B+Minh+Khai,+6,+H%E1%BB%93+Ch%C3%AD+Minh,+Vi%E1%BB%87t+Nam&t=m&z=14&iwloc=A&output=embed"></iframe><br /><small><a href="https://maps.google.com/maps?f=q&source=embed&hl=vi&geocode=&q=216+Nguy%E1%BB%85n+Th%E1%BB%8B+Minh+Khai,+Th%C3%A0nh+ph%E1%BB%91+H%E1%BB%93+Ch%C3%AD+Minh,+H%E1%BB%93+Ch%C3%AD+Minh,+Vi%E1%BB%87t+Nam&aq=0&oq=216+nguy%E1%BB%85n+th%E1%BB%8B+minh&sll=37.0625,-95.677068&sspn=37.188995,86.572266&ie=UTF8&hq=&hnear=216+Nguy%E1%BB%85n+Th%E1%BB%8B+Minh+Khai,+6,+H%E1%BB%93+Ch%C3%AD+Minh,+Vi%E1%BB%87t+Nam&t=m&z=14&iwloc=A" style="color:#0000FF;text-align:left">Xem Bản đồ cỡ lớn hơn</a></small>'),
(8, 'CONTACTHANOILINK', '<iframe width="525" height="350" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.com.au/maps?f=q&source=s_q&hl=en&geocode=&q=15%2F36+Nguy%E1%BB%85n+Vi%E1%BA%BFt+Xu%C3%A2n+-+H%C3%A0+N%E1%BB%99i&aq=&sll=-25.335448,135.745076&sspn=43.719032,86.572266&ie=UTF8&hq=15%2F36+Nguy%E1%BB%85n+Vi%E1%BA%BFt+Xu%C3%A2n+-&hnear=Hanoi,+Hoan+Kiem+District,+Hanoi,+Vietnam&t=m&cid=3316819898581495654&ll=21.021701,105.829239&spn=0.056083,0.072956&z=13&iwloc=A&output=embed"></iframe><br /><small><a href="https://maps.google.com.au/maps?f=q&source=embed&hl=en&geocode=&q=15%2F36+Nguy%E1%BB%85n+Vi%E1%BA%BFt+Xu%C3%A2n+-+H%C3%A0+N%E1%BB%99i&aq=&sll=-25.335448,135.745076&sspn=43.719032,86.572266&ie=UTF8&hq=15%2F36+Nguy%E1%BB%85n+Vi%E1%BA%BFt+Xu%C3%A2n+-&hnear=Hanoi,+Hoan+Kiem+District,+Hanoi,+Vietnam&t=m&cid=3316819898581495654&ll=21.021701,105.829239&spn=0.056083,0.072956&z=13&iwloc=A" style="color:#0000FF;text-align:left">View Larger Map</a></small>'),
(9, 'TITLE', 'GRANDDESIGN Saigon - Kiến trúc - Nội thất'),
(10, 'KEYWORDS', 'thiết kế nội thất, thiet ke noi that, nhà đẹp, thiet ke nha dep, xay nha dep, kiến trúc, nội thất, xây dựng'),
(11, 'DESCRIPTION', 'Nhà đẹp với phong cách thiết kế đơn giản và bố trí nội thất thông minh. Ánh sáng tràn ngập với các khung cửa kính lớn, thiên về cảnh quan xanh màu lá | granddesign.com.vn'),
(12, 'PRICETABLE', '<table border="1" cellpadding="1" cellspacing="1" style="width:500px">\r\n	<tbody>\r\n		<tr>\r\n			<td>T&ecirc;n</td>\r\n			<td>Gi&aacute; (USD)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>H&agrave; Trọng Đại</td>\r\n			<td>100.000k</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Nguyễn Văn Dương</td>\r\n			<td>1.000k</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `ktv_fengshui`
--

CREATE TABLE IF NOT EXISTS `ktv_fengshui` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `summary` text CHARACTER SET utf8 NOT NULL,
  `content` longtext CHARACTER SET utf8 NOT NULL,
  `visible` tinyint(1) NOT NULL,
  `creationDate` datetime NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1' COMMENT '0: deleted',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci AUTO_INCREMENT=17 ;

--
-- Dumping data for table `ktv_fengshui`
--

INSERT INTO `ktv_fengshui` (`id`, `title`, `summary`, `content`, `visible`, `creationDate`, `status`) VALUES
(14, 'Phong thủy 1', 'Phong thủy 1', '<p>Phong thủy 1</p>\r\n', 1, '2014-05-04 10:52:10', 1),
(16, 'Phong thủy 2', 'Phong thủy 2', '<p>Phong thủy 2</p>\r\n', 0, '2014-05-04 11:01:52', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ktv_img_header`
--

CREATE TABLE IF NOT EXISTS `ktv_img_header` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imgname` varchar(50) DEFAULT NULL,
  `date_create` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `ktv_img_header`
--

INSERT INTO `ktv_img_header` (`id`, `imgname`, `date_create`) VALUES
(1, 'index/7961377844443.jpg', NULL),
(3, 'index/3281377844550.jpg', NULL),
(4, 'index/9421381292792.jpg', NULL),
(5, 'index/8231381296144.jpg', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ktv_info`
--

CREATE TABLE IF NOT EXISTS `ktv_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `postion` varchar(50) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `type` int(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=29 ;

--
-- Dumping data for table `ktv_info`
--

INSERT INTO `ktv_info` (`id`, `name`, `postion`, `image`, `sort`, `type`) VALUES
(13, 'Hoàng Minh', 'Giám Đốc', '1378920299.6177.jpg', 9, 0),
(14, 'Trần Ngọc Sơn', 'Phó Giám Đốc', '1378920314.6834.jpg', 8, 0),
(17, 'Nguyễn Mạnh Linh', 'Quản Lý Kỹ Thuật', '1384423568.203.jpg', 7, 0),
(18, 'Lê Trung Hiếu', 'Trưởng Phòng Thiết Kế', '1384423766.1958.jpg', 8, 0),
(19, 'Đỗ Việt Hải', 'Giám Đốc', '1384477986.8945.jpg', 10, 1),
(20, 'Lê Mạnh Hà', 'Phó Giám Đốc', '1384478110.3446.JPG', 8, 1),
(22, 'Lê Hữu Chiến', 'Phó Giám Đốc', '1384478228.2716.JPG', 7, 1),
(23, 'Đỗ Việt Hà', 'Trưởng Phòng Thiết Kế', '1384478266.1537.jpg', 6, 1),
(25, 'Trần Qúy Thắng', 'Chuyên viên kinh doanh', '1384478355.9701.jpg', 5, 1),
(26, 'Trần Nguyễn Giáng Tiên', 'Chuyên viên kinh doanh', '1384478431.0967.jpg', 6, 0),
(27, 'Thái Trần Phương Mai', 'Chuyên viên kinh doanh', '1384478604.0392.jpg', 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ktv_news`
--

CREATE TABLE IF NOT EXISTS `ktv_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `summary` text CHARACTER SET utf8 NOT NULL,
  `content` longtext CHARACTER SET utf8 NOT NULL,
  `visible` tinyint(1) NOT NULL,
  `creationDate` datetime NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1' COMMENT '0: deleted',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci AUTO_INCREMENT=10 ;

--
-- Dumping data for table `ktv_news`
--

INSERT INTO `ktv_news` (`id`, `title`, `summary`, `content`, `visible`, `creationDate`, `status`) VALUES
(9, 'Một số tin mới', 'Một số tin mới đáng chú ý trong ngày', '<p>Trang n&agrave;y được l&agrave;m trong ng&agrave;y</p>\r\n\r\n<p>Hết</p>\r\n', 1, '2014-05-01 17:40:49', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ktv_product`
--

CREATE TABLE IF NOT EXISTS `ktv_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(255) DEFAULT NULL,
  `fk_category` int(11) DEFAULT NULL,
  `investors` varchar(255) DEFAULT NULL,
  `unbuilt_area` varchar(50) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `time_finish` varchar(100) DEFAULT NULL,
  `fk_imges` int(11) DEFAULT NULL,
  `date_create` datetime DEFAULT NULL,
  `status` int(1) DEFAULT '1' COMMENT '0:delete',
  `sort` int(11) DEFAULT NULL,
  `ishowhot` int(1) DEFAULT '0' COMMENT '1:hot',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=86 ;

--
-- Dumping data for table `ktv_product`
--

INSERT INTO `ktv_product` (`id`, `product_name`, `fk_category`, `investors`, `unbuilt_area`, `address`, `time_finish`, `fk_imges`, `date_create`, `status`, `sort`, `ishowhot`) VALUES
(1, 'Bar Of Golf Long Bien', 2, 'Him Lam Group', '600 m2', 'Long Biên - Hà Nội', '20 ngày', NULL, '2013-09-09 12:04:44', 1, 12, 0),
(2, 'Bar Of Golf Long Bien', 13, 'Him Lam Group', '600 m2', 'Long Biên - Hà Nội', '20 ngày', NULL, '2013-09-09 21:19:16', 1, 100, 1),
(3, 'Beach Hoi An', 4, 'Mr Sơn', '1600 m2', 'Tân Thành,Cẩm An,Hội An,Quảng Nam', '20 ngày', NULL, '2013-09-09 21:26:17', 1, 100, 1),
(4, 'Penhouse Hoàng Thành', 1, 'ms Ngọc', '114 Mai Hắc Đế, Hà Nội', '350m2', '20 ngày', NULL, '2013-09-09 21:41:06', 1, 150, 0),
(5, 'Chung Cư Royal City', 1, 'ms Hà', '165m2', 'afp30-R1 Royal City , Nguyễn Trãi,Thanh Xuân, Hà Nội', '20 ngày', NULL, '2013-09-09 21:45:00', 1, 120, 1),
(6, 'Chung Cư Royal City', 1, 'mr Khanh', '165m2', 'R6 - Royal City, Nguyễn Trãi, Thanh Xuân, Hà Nội', '20 ngày', NULL, '2013-09-09 21:47:32', 1, 120, 1),
(7, 'Chung Cư Royal City', 1, 'mr Long', '221m2', 'R3 - Royal City,Nguyễn Trãi,Thanh Xuân, Hà Nội', '10 ngày', NULL, '2013-09-09 21:51:41', 1, 111, 1),
(8, 'Chung Cư VinCom', 1, 'mr Nam', '84m2', '1603 Vincon tower Bà Triệu', '7 ngày', NULL, '2013-09-09 21:55:43', 1, 100, 0),
(9, 'Chung Cư Golde Westlake', 1, 'mr Đỗ Long', '80m2', 'p7-04 Golde Westlake, 141 Hoàng Hoa Thám', '7', NULL, '2013-09-09 21:58:49', 1, 99, 1),
(10, 'Chung Cư No 5', 1, 'mr Phú', '180m2', 'p9-08, tòa nhà 25T2 No5 Trung Hòa', '14 ngày', NULL, '2013-09-09 22:08:21', 1, 90, 1),
(11, 'Chung Cư Xuân Đỉnh', 1, 'inhrms Liên', '80m2', 'ieenp3-03 Chung Cư C2 Xuân Đỉnh', '10 ngày', NULL, '2013-09-09 22:11:51', 1, 80, 0),
(12, 'Chung Cư LCF', 1, 'ms Hà', '140m2', 'Lê Đức Thọ,Mỹ Đình,Từ Liêm ,Hà Nội', '7 ngày', NULL, '2013-09-09 22:17:20', 1, 120, 1),
(13, 'Chung Cư Dịch Vọng', 1, 'ms Phương', '100m2', 'p15-06 N07 B3 Dịch Vọng,Cầu Giấy,Hà Nội', '10 ngày', NULL, '2013-09-09 22:18:32', 1, 89, 1),
(14, 'Chung Cư Sky City', 1, 'mr Hiến', '110m2', 'p 18-09 tòa nhà Sky City, 88 Láng Hạ', '110m215 ngày', NULL, '2013-09-09 22:29:00', 1, 101, 1),
(15, '70 Xuân Diệu', 3, 'Mr Dương', '120m2', '70 Xuân Diệu', '10 Ngày', NULL, '2013-09-09 22:36:28', 1, 0, 1),
(16, 'Chung Cư 170 Đê La Thành', 1, 'ms Chi', '140m2', 'p8-16 CC 170 Đê La Thành', '10 ngày', NULL, '2013-09-09 22:38:55', 1, 88, 1),
(17, '1 Lý Quốc Sư', 3, 'Mr Trung', '250m2', '1 Lý Quốc Sư', '10 Ngày', NULL, '2013-09-09 22:41:50', 1, 0, 1),
(18, 'Chung Cư Sông Đà', 1, 'mr Dũng', '160m2', 'p27-04 tòa nhà Sông Đà,Hà Đông', '15 ngày', NULL, '2013-09-09 22:45:14', 1, 86, 1),
(19, 'Chung Cư Tam Trinh', 1, 'mr Dương', '100m2', '409 Tam Trinh', '', NULL, '2013-09-09 22:49:45', 1, 20, 1),
(20, 'Chung Cư Ciputra', 1, 'ms Mai', '180m2', 'lầu 8 E1 Ciputra', '20', NULL, '2013-09-10 08:34:18', 1, 81, 0),
(21, 'Chung Cư An Sinh', 1, 'ms Hằng', '140m2', 'lầu 7 Chung Cư An Sinh,Mỹ Đình', '20 ngày', NULL, '2013-09-10 08:38:12', 1, 76, 1),
(22, 'Industrial Gallery Loft', 1, 'Modern', '', '', '', NULL, '2013-09-10 08:45:02', 1, 110, 0),
(23, 'Chung Cư No5', 1, 'ms Ngọc', '152m2', 'Chung Cư No5', '10 ngày', NULL, '2013-09-10 08:49:27', 1, 98, 0),
(24, 'Vân Nam Restaurence', 2, 'mr Long', '500m2', '27 Lý Thường Kiệt', '15 ngày', NULL, '2013-09-10 08:58:59', 1, 119, 1),
(25, 'Vân Nam Restaurence', 2, 'mr Long', '500m2', '27 Lý Thường Kiệt', '15 ngày', NULL, '2013-09-10 09:00:39', 1, 115, 1),
(26, '76 Giảng Võ', 3, 'Ms Vân', '400m2', '76 Giảng Võ', '10 Ngày', NULL, '2013-09-10 09:05:00', 1, 0, 1),
(27, 'Đặng Văn Ngữ', 3, 'Mr Tùng', '200m2', 'Đặng Văn Ngữ', '10 Ngày', NULL, '2013-09-10 09:15:23', 1, 0, 0),
(28, 'House Tây Hồ', 3, 'Mr Thành', '110m2 * 8', 'Yên Phụ', '20 Ngày', NULL, '2013-09-10 09:20:00', 1, 0, 0),
(29, '11 - 15 Võ Văn Dũng', 3, 'Mr Hoàng Anh', '120m2', '11 - 15 Võ Văn Dũng', '10 Ngày', NULL, '2013-09-10 09:24:27', 1, 0, 0),
(30, 'Golden Hotel', 4, 'ms Yến', '2000m2', 'Bãi Cháy,Hạ Long, Quảng Ninh', '45 ngày', NULL, '2013-09-10 09:27:51', 1, 116, 0),
(31, '11/5/78 Hoàng Quốc Việt', 3, 'Mr Cường', '160m2', '11/5/78 Hoàng Quốc Việt', '10 Ngày', NULL, '2013-09-10 09:29:02', 1, 0, 0),
(32, 'TT Giảng Võ', 3, 'Mr Tuấn', '80m2', 'Khu Tập Thể Giảng Võ', '10 Ngày', NULL, '2013-09-10 09:33:04', 1, 0, 0),
(33, '14/36 Nguyễn Viết Xuân', 3, 'Mr Khang', '40m2 * 3 Tầng', '14/36 Nguyễn Viết Xuân', '2 Tuần', NULL, '2013-09-10 09:36:15', 1, 0, 0),
(34, '33 Nguyễn Quốc Toản', 3, 'Mr Chu Minh', '120 m2* 2 Tầng', '33 Nguyễn Quốc Toản', '10 Ngày', NULL, '2013-09-10 09:39:46', 1, 0, 0),
(35, '65 Tôn Đức Thắng', 3, 'Mr Long', '85 m2 * 4 Tầng', '65 Tôn Đức Thắng', '3 tuần', NULL, '2013-09-10 09:43:01', 1, 0, 0),
(36, '30 Nguyễn Đình Chiểu', 3, 'Mr Dũng', '80 m2* 4 Tầng', '30 Nguyễn Đình Chiểu', '3 tuần', NULL, '2013-09-10 09:45:39', 1, 0, 0),
(37, '192 Lê Trọng Tấn', 3, 'Mr Cường', '60 m2 * 4 Tần ', '192 Lê Trọng Tấn', '1 tháng', NULL, '2013-09-10 09:57:11', 1, 0, 0),
(38, '25 Vạn Bảo', 3, 'Ms Hằng', '320 m2', '25 Vạn Bảo', '1 tháng', NULL, '2013-09-10 10:00:30', 1, 0, 0),
(39, 'Sài Gòn Sport hotel', 4, 'mr Huy', '300M2', '175/21 Phạm Ngũ Lão,q1, HCM', '15 ngày', NULL, '2013-09-10 10:33:44', 1, 100, 1),
(40, 'Khách Sạn Quốc Tế Lào Cai', 4, 'JVC Genting Malaisya Group', '', 'Trần Hưng Đạo,P Kim Tân, Lào Cai', '30 ngày', NULL, '2013-09-10 10:42:09', 1, 99, 1),
(41, 'Thế Long Hotel', 4, 'mr Thế Long', '', 'Khu Du Lịch Tam Cốc Bích Động, Ninh Bình', '15 ngày', NULL, '2013-09-10 10:44:21', 1, 97, 1),
(42, 'Hồng Hà Hotel', 4, 'Phugiareal', '300m2', '204 Trần Quang Khải', '15 ngày', NULL, '2013-09-10 10:47:34', 1, 96, 1),
(43, 'Pakbeng Reort', 4, 'Asianventure', '1200m2', 'Pakbeng, Oudomxey, Laos', '25 ngày', NULL, '2013-09-10 10:52:10', 1, 100, 1),
(44, 'Luxury Restaurence', 2, 'mr Long', '500m2', 'Lê Hồng Phong, Ngô Quyền, Hải Phòng', '20 ngày', NULL, '2013-09-10 11:11:09', 1, 115, 1),
(45, 'Luxury Restaurence', 2, 'mr Long', '500m2', 'Lê Hồng Phong, Ngô Quyền, Hải Phòng', '20 ngày', NULL, '2013-09-10 11:15:26', 1, 200, 1),
(46, 'Luxury Restaurence', 2, 'mr Long', '500m2', 'Lê Hồng Phong, Ngô Quyền, Hải Phòng', '20 ngày', NULL, '2013-09-10 11:17:05', 1, 200, 1),
(48, 'Luxury Restaurence', 14, 'mr Long', '500m2', 'Lê Hồng Phong, Ngô Quyền, Hải Phòng', '20 ngày', NULL, '2013-09-10 11:32:18', 1, 145, 1),
(49, 'Vân Nam Restaurence', 14, 'mr Long', '500m2', '27 Lý Thường Kiệt', '15 ngày', NULL, '2013-09-10 11:35:09', 1, 140, 0),
(50, 'Việt Nhật Restaurence', 14, '', '', 'Khu giao lưu văn hóa Việt Nhật, Mỹ Đình,Từ Liêm', '15 ngày', NULL, '2013-09-10 11:39:41', 1, 130, 0),
(51, 'Vip Spa', 14, '', '600m2', 'Trung Hòa Nhân Chính', '15 ngày', NULL, '2013-09-10 11:47:26', 1, 120, 0),
(52, 'Ocean Spa', 14, 'ms Tú Anh', '180m2 x 4 lầu', 'Số 5 Trung Yên 1', '20 ngày', NULL, '2013-09-10 11:49:38', 1, 121, 0),
(53, 'Bar Of Golf Long Bien', 14, 'Him Lam Group', '600 m2', 'Long Biên - Hà Nội', '20', NULL, '2013-09-10 19:36:11', 1, 160, 1),
(54, 'Lake View Cafe', 14, 'mr Phúc', '60m2', 'số 6 Phạm Huy Thông', '7 ngày', NULL, '2013-09-10 19:39:42', 1, 80, 1),
(55, 'Galaxy Cafe', 14, 'mr Tuấn', '280m2', 'Đông Anh, Hà Nội', '30 ngày', NULL, '2013-09-10 19:43:16', 1, 77, 1),
(56, 'VTM Stone', 5, 'mr Dân', '160m2', 'Trung Hòa Nhân Chính', '7 ngày', NULL, '2013-09-10 19:48:31', 1, 66, 1),
(57, 'Zen Shop', 5, 'ms Yến', '100m2', '99 Hàng Gai', '15 ngày', NULL, '2013-09-10 19:50:12', 1, 64, 1),
(58, 'Mango Fashtion', 5, 'ms Quỳnh', '30m2 x 2 lầu', '22 Đình Ngang', '15 ngày', NULL, '2013-09-10 19:53:08', 1, 57, 1),
(59, 'Fashion Shop', 5, 'mr Cường', '40m2 x 2 lầu', '16 Hàng Lược', '7 ngày', NULL, '2013-09-10 19:55:48', 1, 56, 1),
(60, 'Văn phòng Cty Hương Giang Travel', 5, 'Cty Hương Giang Travel', '120m2 x 7 lầu', '47 Phan Chu Trinh', '20 ngày', NULL, '2013-09-10 20:20:16', 1, 75, 1),
(61, 'Văn phòng Sông Đà Group', 5, ' Sông Đà Group', '12000m2', 'Tòa nhà hỗn hợp HH4 TWIN TOWER Khu đô thị mới Mỹ Đình _Từ Liêm , Hà Nội', '45 ngày', NULL, '2013-09-10 20:22:46', 1, 65, 1),
(62, 'Trụ sở Tổng công ty Xây Lắp Dầu khí Việt Nam', 5, '', '3500m2', 'Tòa nhà CEO, Lô HH2, Khu Đô Thị Mới Mễ Trì Hạ, Đường Phạm Hùng, Từ Liêm, Hà Nội', '30 ngày', NULL, '2013-09-10 20:26:08', 1, 66, 0),
(63, 'Văn Phòng Công ty cổ phần thời trang kowil', 5, 'Phu Thai Group', '700m2', 'Tầng 2 tòa nhà Lilama 10 Đường Lê Văn Lương', '7 ngày', NULL, '2013-09-10 20:27:49', 1, 62, 0),
(64, 'Văn phòng Cục đo đạc và bản đồ Việt Nam', 5, ' Cục đo đạc và bản đồ Việt Nam', '800m2', 'Hoàng quốc việt ,Cầu giấy ,Hà nội', '14 ngày', NULL, '2013-09-10 20:30:34', 1, 61, 0),
(65, 'Văn Phòng PVC Miền Nam', 5, 'Tổng công cty xây lắp dầu khí Việt Nam', '460m2', ' 11 Nguyễn Gia Thiều P6.Q3 Tp Hồ Chí Minh', '14 ngày', NULL, '2013-09-10 20:32:47', 1, 68, 0),
(66, 'Trụ Sở HQ Group', 5, 'HQ Group', '250m2', 'Tầng 13,  BIDV Tower 149 Trần Quang Khải', '15 ngày', NULL, '2013-09-10 20:34:13', 1, 60, 0),
(67, 'Văn Phòng  Mekong Securities ', 5, 'ms Chi', '80m2', '', '5 ngày', NULL, '2013-09-10 20:38:49', 1, 55, 0),
(68, 'Văn Phòng Contrexim Holdings', 5, 'Contrexim Holdings ', '600 m2', 'Tầng 36 landmark 72 , KeangNam', '20 ngày', NULL, '2013-09-10 20:40:19', 1, 56, 0),
(69, 'Văn Phòng Liên Việt Bank', 5, 'Ngân hàng Liên Việt ', '800m2', '109 Trần Hưng Đạo', '30 ngày', NULL, '2013-09-10 20:43:39', 1, 45, 0),
(70, 'Biệt Thự Hà Tĩnh', 6, ' Mr.VIết Hải', '1400m2', 'Đường Nguyễn Du ,tp Hà tĩnh', '45 ngày', NULL, '2013-09-10 22:05:40', 1, 180, 0),
(71, 'Biệt Thự 76 giảng võ', 6, 'ms Vân', '400m2', '76 giảng võ', '10 ngày', NULL, '2013-09-10 22:12:46', 1, 178, 0),
(72, 'Biệt Thự Xanh', 6, 'mr Luân', '400m2', 'Tiến Xuân ,Thạch Thất , Hà Nội ', '20 ngày', NULL, '2013-09-10 22:14:50', 1, 175, 0),
(73, 'VinCom Villa', 6, 'mr Tân', '250m2', 'BL09-04 Vincom Villa', '45 ngày', NULL, '2013-09-10 22:17:53', 1, 174, 0),
(74, 'Biệt Thự Lý Quốc Sư', 6, 'mr Trung', '250m2', 'Số 1 Lý Quốc Sư', '10 ngày', NULL, '2013-09-10 22:21:05', 1, 173, 0),
(75, 'Biệt Thự Tô Hiến Thành', 6, 'ms Ngọc', '400m2', '55 Tô Hiến Thành', '10 ngày', NULL, '2013-09-10 22:22:46', 1, 175, 0),
(76, 'Biệt Thự Làng Việt Kiều', 6, 'mr Long', '2000m2', 'Làng việt kiều Châu âu', '20 ngày', NULL, '2013-09-10 22:24:44', 1, 172, 0),
(77, 'BT Đặng Văn Ngữ', 6, 'mr Tùng', '2000m2', ' Đặng Văn Ngữ', '10 ngày', NULL, '2013-09-10 22:26:42', 1, 170, 0),
(78, 'Tây Hồ Villa', 6, 'mr Thành', '110m2x 8 Tầng', 'Yên Phụ, Tây Hồ', '20 ngày', NULL, '2013-09-10 22:28:37', 1, 169, 0),
(79, 'BT Ngọc Thụy', 6, 'ms Lan', '160 m2 x 3 Tầng', 'Số 8/520 Ngọc thụy ,Long biên', '15 ngày', NULL, '2013-09-10 22:30:16', 1, 167, 0),
(80, 'Chung Cư 170 Đê La Thành', 6, 'ms Chi', '140m2', 'p8-16 CC 170 Đê La Thành', '10 ngày', NULL, '2013-09-10 22:33:26', 1, 159, 0),
(81, 'Chung Cư No 5', 6, 'mr Phú', '180m2', 'p9-08, tòa nhà 25T2 No5 Trung Hòa', '14 ngày', NULL, '2013-09-10 22:35:30', 1, 158, 0),
(82, 'Chung Cư Sunrise city', 1, 'ms Nhung', '100m2', 'sunrise city , q7, HCM', '15 ngày', NULL, '2013-09-20 11:49:26', 1, 200, 0),
(83, 'Lion Restaurence', 14, '', '', '71 Thái Thịnh', '15 ngày', NULL, '2013-09-25 16:19:54', 1, 121, 0),
(84, 'Lion Restaurence', 14, '', '', '71 Thái Thịnh', '', NULL, '2013-09-25 16:20:36', 1, 210, 1),
(85, 'Chung Cư Thảo Điền Pearl', 1, 'A Khanh', '132 m2', '12 Quốc Hương, Thảo Điền, Tp.HCM', '15 Ngày', NULL, '2013-11-21 16:10:36', 1, 100, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ktv_product_image`
--

CREATE TABLE IF NOT EXISTS `ktv_product_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_product` int(11) DEFAULT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=597 ;

--
-- Dumping data for table `ktv_product_image`
--

INSERT INTO `ktv_product_image` (`id`, `fk_product`, `file_name`, `description`, `sort`) VALUES
(2, 1, 'ac/30/bf4030ac.jpg', 'Tesdfsdfdsf', 0),
(4, 2, 'ba/47/cbac47ba.jpg', '', 13),
(5, 2, 'c1/18/147518c1.jpg', '', 14),
(6, 2, '0f/18/8d0f180f.jpg', '', 9),
(7, 2, '4f/29/bff5294f.jpg', '', 12),
(8, 2, '2a/55/7a1c552a.jpg', '', 11),
(9, 2, 'a1/78/43cf78a1.jpg', '', 10),
(10, 3, '43/c5/68b6c543.jpg', '', 5),
(11, 3, 'a2/0e/b7bc0ea2.jpg', '', 6),
(12, 3, 'fc/53/944953fc.jpg', '', 4),
(13, 3, '64/5b/664b5b64.jpg', '', 3),
(14, 3, 'd0/43/14e643d0.jpg', '', 2),
(15, 3, '7c/8b/bdb98b7c.jpg', '', 1),
(16, 4, 'c8/7e/e1367ec8.jpg', '', 15),
(17, 4, 'c6/ec/f36cecc6.jpg', '', 7),
(18, 4, '93/96/87899693.jpg', '', 14),
(19, 4, '40/dd/d909dd40.jpg', '', 13),
(20, 4, '50/20/a6932050.jpg', '', 12),
(21, 4, 'd4/05/7ae805d4.jpg', '', 11),
(22, 4, '4b/87/6742874b.jpg', '', 10),
(23, 4, '9a/4e/d5574e9a.jpg', '', 9),
(24, 4, '81/12/cd8a1281.jpg', '', 8),
(25, 5, '56/32/7cb93256.jpg', '', 8),
(26, 5, '80/9a/57139a80.jpg', '', 7),
(27, 5, '0d/8f/1e0a8f0d.jpg', '', 6),
(28, 5, 'd7/31/a2d431d7.jpg', '', 5),
(29, 5, '4f/d0/ff15d04f.jpg', '', 4),
(30, 5, '8c/47/9e13478c.jpg', '', 2),
(31, 5, '2b/9b/1f259b2b.jpg', '', 3),
(32, 5, 'cd/c5/cae7c5cd.jpg', '', 1),
(34, 6, '0f/d7/46a0d70f.jpg', '', 5),
(35, 6, 'cf/1a/f63c1acf.jpg', '', 4),
(36, 6, '15/cb/1b1ccb15.jpg', '', 3),
(37, 6, '23/58/598e5823.jpg', '', 2),
(38, 6, '7b/da/d188da7b.jpg', '', 1),
(39, 7, 'd0/65/b5f165d0.jpg', '', 6),
(40, 7, 'e6/42/41dd42e6.jpg', '', 5),
(41, 7, 'ff/1d/d7821dff.jpg', '', 4),
(42, 7, 'e6/1c/d4191ce6.jpg', '', 3),
(43, 7, 'cc/0b/892e0bcc.jpg', '', 2),
(44, 7, '3e/c7/e929c73e.jpg', '', 1),
(45, 8, '1f/b8/4002b81f.jpg', '', 7),
(46, 8, '3b/95/1cc8953b.jpg', '', 6),
(47, 8, '80/f4/1912f480.jpg', '', 4),
(48, 8, '06/69/31546906.jpg', '', 5),
(49, 8, '46/d0/a72bd046.jpg', '', 3),
(50, 8, '93/01/cb390193.jpg', '', 2),
(51, 8, '6b/52/80ef526b.jpg', '', 1),
(52, 9, '2e/41/de07412e.jpg', '', 2),
(53, 9, 'aa/6c/c6306caa.jpg', '', 1),
(54, 9, '58/34/ad463458.jpg', '', 4),
(55, 9, '2e/6e/69ce6e2e.jpg', '', 6),
(56, 9, '63/dc/8e72dc63.jpg', '', 3),
(57, 9, '49/bf/3b69bf49.jpg', '', 5),
(58, 10, 'a9/9d/9e5a9da9.jpg', '', 3),
(59, 10, '49/f5/3a50f549.jpg', '', 4),
(60, 10, '03/32/881e3203.jpg', '', 5),
(61, 10, '0f/86/0ffb860f.jpg', '', 6),
(62, 10, '3c/ac/f82eac3c.jpg', '', 7),
(63, 11, 'e4/19/8c7619e4.jpg', '', 3),
(64, 11, 'fc/86/3b8686fc.jpg', '', 4),
(65, 11, '5e/39/3c33395e.jpg', '', 5),
(66, 11, 'b4/b8/9bd1b8b4.jpg', '', 6),
(67, 11, '39/26/f7f92639.jpg', '', 7),
(68, 11, '9b/86/77c7869b.jpg', '', 8),
(69, 12, '92/48/75a94892.jpg', '', 8),
(70, 12, '7d/e8/ebabe87d.jpg', '', 7),
(71, 12, 'da/9f/38fd9fda.jpg', '', 9),
(72, 12, '2f/8d/574b8d2f.jpg', '', 6),
(73, 12, '74/a3/0c73a374.jpg', '', 5),
(74, 12, '51/88/36268851.jpg', '', 1),
(75, 12, 'd9/06/0b6606d9.jpg', '', 4),
(76, 12, '4c/6f/d1ea6f4c.jpg', '', 3),
(77, 12, '15/0d/ff800d15.jpg', '', 2),
(78, 13, 'b7/15/66bf15b7.jpg', '', 6),
(79, 13, '7d/52/5d0a527d.jpg', '', 8),
(80, 13, 'ba/c5/acdcc5ba.jpg', '', 5),
(81, 13, '6c/71/8f4a716c.jpg', '', 4),
(82, 14, '9a/6d/629c6d9a.jpg', '', 7),
(83, 14, '94/bd/67dfbd94.jpg', '', 6),
(84, 14, 'ce/26/351026ce.jpg', '', 5),
(85, 14, '2e/0d/4a810d2e.jpg', '', 4),
(86, 14, '37/a5/ff55a537.jpg', '', 3),
(87, 14, '75/08/3d380875.jpg', '', 2),
(88, 14, '4f/06/8a0f064f.jpg', '', 1),
(90, 15, '97/9d/03c59d97.jpg', '', 1),
(91, 15, 'fc/b1/5666b1fc.jpg', '', 2),
(92, 15, 'a6/d1/72a4d1a6.jpg', '', 3),
(93, 15, 'c1/1f/a64d1fc1.jpg', '', 4),
(94, 15, 'ca/88/1aa488ca.jpg', '', 5),
(95, 15, 'f3/1a/dea01af3.jpg', '', 6),
(96, 15, '39/5f/21f85f39.jpg', '', 7),
(97, 16, '1a/71/12cf711a.jpg', '', 9),
(98, 16, '7c/84/01f3847c.jpg', '', 8),
(99, 16, '6e/41/db6b416e.jpg', '', 7),
(100, 16, '06/11/eba71106.jpg', '', 6),
(101, 16, 'b8/e6/ebc5e6b8.jpg', '', 5),
(102, 16, 'b6/74/6e7574b6.jpg', '', 4),
(103, 16, 'ee/c5/b611c5ee.jpg', '', 3),
(104, 16, 'd1/88/d23b88d1.jpg', '', 1),
(105, 16, '47/0b/24f60b47.jpg', '', 2),
(106, 17, 'b7/0c/62fc0cb7.jpg', '', 1),
(107, 17, '3e/23/5f6c233e.jpg', '', 2),
(108, 17, '92/bd/ef1fbd92.jpg', '', 3),
(109, 17, '17/f0/c0b9f017.jpg', '', 4),
(110, 17, '8b/dd/cf75dd8b.jpg', '', 5),
(111, 17, '65/6a/f9e76a65.jpg', '', 6),
(112, 17, '6c/65/2974656c.jpg', '', 7),
(113, 18, '31/33/e0363331.jpg', '', 7),
(114, 18, 'c0/ae/2453aec0.jpg', '', 6),
(115, 18, '41/bc/5536bc41.jpg', '', 5),
(116, 18, '5c/27/b3e0275c.jpg', '', 4),
(117, 18, '89/b0/9252b089.jpg', '', 3),
(118, 18, 'b3/8c/42e98cb3.jpg', '', 2),
(119, 18, '3f/a4/391aa43f.jpg', '', 1),
(120, 19, 'e2/88/bb6188e2.jpg', '', 2),
(121, 19, 'c9/12/d1dd12c9.jpg', '', 1),
(122, 19, '1b/2f/d0082f1b.jpg', '', 4),
(123, 19, '84/bf/6854bf84.jpg', '', 3),
(125, 20, 'bf/41/7d6541bf.jpg', '', 5),
(126, 20, 'ae/6d/a8046dae.jpg', '', 4),
(127, 20, '3b/f1/ccbaf13b.jpg', '', 3),
(128, 20, '42/f1/51ddf142.jpg', '', 1),
(129, 20, 'af/c2/dff5c2af.jpg', '', 7),
(130, 20, '83/2f/a0742f83.jpg', '', 2),
(131, 21, 'b7/ee/f660eeb7.jpg', '', 4),
(132, 21, '35/bc/992bbc35.jpg', '', 3),
(133, 21, '97/f0/0060f097.jpg', '', 5),
(134, 21, '56/9e/e92e9e56.jpg', '', 6),
(135, 21, 'bf/ac/b417acbf.jpg', '', 7),
(136, 21, '06/22/b91b2206.jpg', '', 2),
(137, 21, '68/84/8cb68468.jpg', '', 1),
(138, 22, 'e6/a5/6ea5a5e6.jpg', '', 0),
(139, 22, '11/6c/b8356c11.jpg', '', 0),
(140, 22, 'f2/6b/64056bf2.jpg', '', 0),
(141, 22, '08/2a/ffee2a08.jpg', '', 0),
(142, 22, '63/6e/40106e63.jpg', '', 0),
(143, 22, '5c/1f/5f491f5c.jpg', '', 0),
(144, 22, '1b/15/8d10151b.jpg', '', 0),
(145, 22, '36/ee/6bb4ee36.jpg', '', 0),
(146, 23, '0f/3c/c60d3c0f.jpg', '', 0),
(147, 23, '50/75/05fb7550.jpg', '', 0),
(148, 23, 'f4/44/11b244f4.jpg', '', 0),
(149, 23, '8d/f1/0269f18d.jpg', '', 0),
(150, 23, '19/4b/57424b19.jpg', '', 0),
(151, 23, 'f1/a7/b060a7f1.jpg', '', 0),
(152, 23, 'e5/29/c8b529e5.jpg', '', 0),
(153, 26, '99/00/8ec50099.jpg', '', 1),
(154, 26, '70/92/88fc9270.jpg', '', 2),
(155, 26, 'd9/fd/eba6fdd9.jpg', '', 3),
(156, 26, '1f/a6/4861a61f.jpg', '', 4),
(157, 26, '3b/32/9106323b.jpg', '', 5),
(158, 26, 'ca/2c/734e2cca.jpg', '', 6),
(159, 26, 'c3/a0/f34fa0c3.jpg', '', 7),
(160, 26, '08/13/34d81308.jpg', '', 8),
(161, 27, '40/63/f7186340.jpg', '', 0),
(162, 27, '3a/5a/87d75a3a.jpg', '', 0),
(163, 27, '1d/81/3f6e811d.jpg', '', 0),
(164, 27, '12/bc/7cc0bc12.jpg', '', 0),
(165, 27, 'c8/43/0d8a43c8.jpg', '', 0),
(166, 28, 'c9/56/870e56c9.jpg', '', 0),
(167, 28, '6f/54/95cd546f.jpg', '', 0),
(168, 28, '1c/ce/2101ce1c.jpg', '', 0),
(169, 28, 'c3/39/46da39c3.jpg', '', 0),
(170, 28, '03/c8/e81ac803.jpg', '', 0),
(171, 28, 'a3/ad/8979ada3.jpg', '', 0),
(172, 29, 'f6/59/c1b859f6.jpg', '', 0),
(173, 29, 'd3/46/7fd046d3.jpg', '', 0),
(174, 29, '26/7f/4f8d7f26.jpg', '', 0),
(175, 29, 'a4/1f/fa111fa4.jpg', '', 0),
(176, 29, '85/40/a4bf4085.jpg', '', 0),
(177, 29, '2b/82/774a822b.jpg', '', 0),
(178, 29, '51/fe/ca54fe51.jpg', '', 0),
(179, 29, '98/5c/27dd5c98.jpg', '', 0),
(180, 29, '14/3e/299b3e14.jpg', '', 0),
(184, 31, 'e4/83/7bdf83e4.jpg', '', 0),
(185, 31, '0b/aa/9f05aa0b.jpg', '', 0),
(186, 31, '9b/de/cfedde9b.jpg', '', 0),
(187, 31, '3b/b2/1aa4b23b.jpg', '', 0),
(188, 31, '05/2f/87fe2f05.jpg', '', 0),
(189, 31, 'f6/77/9cda77f6.jpg', '', 0),
(190, 31, 'e4/6a/b1816ae4.jpg', '', 0),
(191, 31, '4f/3d/3a693d4f.jpg', '', 0),
(192, 31, 'f0/bc/1f13bcf0.jpg', '', 0),
(193, 32, '4a/3a/04673a4a.jpg', NULL, NULL),
(194, 32, '1e/08/26bb081e.jpg', NULL, NULL),
(195, 32, '0a/5c/0e005c0a.jpg', NULL, NULL),
(196, 32, '76/aa/f92aaa76.jpg', NULL, NULL),
(197, 32, 'e2/26/b7a626e2.jpg', NULL, NULL),
(198, 33, '11/b5/c3f1b511.jpg', '', 0),
(199, 33, 'ed/ea/2fb4eaed.jpg', '', 0),
(200, 33, '0d/ba/7dadba0d.jpg', '', 0),
(201, 33, '0d/e3/ddb5e30d.jpg', '', 0),
(202, 33, '5b/7a/19a97a5b.jpg', '', 0),
(203, 33, '80/06/e0100680.jpg', '', 0),
(204, 34, 'ba/6c/ec3a6cba.jpg', '', 0),
(205, 34, '85/e8/c391e885.jpg', '', 0),
(206, 34, 'fa/bc/0e1abcfa.jpg', '', 0),
(207, 35, '67/4a/9bde4a67.jpg', '', 0),
(208, 35, '55/0a/639b0a55.jpg', '', 0),
(209, 35, '83/e8/36d7e883.jpg', '', 0),
(210, 35, '98/e6/239fe698.jpg', '', 0),
(211, 35, 'dc/8a/45c78adc.jpg', '', 0),
(212, 35, 'a4/da/0795daa4.jpg', '', 0),
(213, 36, '7f/f2/3102f27f.jpg', '', 0),
(214, 36, '8c/89/3c3f898c.jpg', '', 0),
(215, 36, '5e/f1/7902f15e.jpg', '', 0),
(216, 36, '02/5a/164f5a02.jpg', '', 0),
(217, 36, 'b6/a8/a054a8b6.jpg', '', 0),
(218, 36, 'ca/c4/ce30c4ca.jpg', '', 0),
(219, 36, '42/7d/04727d42.jpg', '', 0),
(220, 36, '2b/7c/69e37c2b.jpg', '', 0),
(221, 36, 'f0/45/95cd45f0.jpg', '', 0),
(222, 37, 'a1/62/f7d462a1.jpg', '', 0),
(223, 37, 'c7/f5/d54ff5c7.jpg', '', 0),
(224, 37, '30/3e/c9413e30.jpg', '', 0),
(225, 37, 'a7/86/2d9786a7.jpg', '', 0),
(226, 37, '64/40/ee5e4064.jpg', '', 0),
(227, 37, 'db/9b/1c919bdb.jpg', '', 0),
(228, 37, 'fb/5c/bf0c5cfb.jpg', '', 0),
(229, 38, '61/d2/5d04d261.jpg', '', 0),
(230, 38, '9e/7f/3d6d7f9e.jpg', '', 0),
(231, 38, '39/fa/9976fa39.jpg', '', 0),
(232, 38, 'ab/49/6dae49ab.jpg', '', 0),
(233, 38, '03/50/67045003.jpg', '', 0),
(234, 38, 'dd/a8/4fa3a8dd.jpg', '', 0),
(235, 38, '3e/df/a279df3e.jpg', '', 0),
(236, 38, '18/ed/b969ed18.jpg', '', 0),
(237, 38, 'ba/ca/7ae6caba.jpg', '', 0),
(238, 38, '04/75/a7517504.jpg', '', 0),
(239, 38, '66/af/d7bcaf66.jpg', '', 0),
(240, 38, 'ac/3b/13fc3bac.jpg', '', 0),
(241, 38, '7c/67/564c677c.jpg', '', 0),
(242, 38, '73/11/2e101173.jpg', '', 0),
(243, 30, '38/54/34e15438.jpg', NULL, NULL),
(244, 30, '03/ea/5f2eea03.jpg', NULL, NULL),
(245, 30, '87/76/bb1a7687.jpg', NULL, NULL),
(246, 30, '65/2e/3e672e65.jpg', NULL, NULL),
(247, 30, 'fb/7d/b9807dfb.jpg', NULL, NULL),
(248, 30, 'dd/11/249d11dd.jpg', NULL, NULL),
(249, 30, '07/9f/356c9f07.jpg', NULL, NULL),
(250, 30, '47/53/34b35347.jpg', NULL, NULL),
(251, 30, 'ef/bc/316cbcef.jpg', NULL, NULL),
(252, 39, 'c6/bc/f72abcc6.jpg', '', 0),
(253, 39, 'a4/93/971993a4.jpg', '', 0),
(254, 39, 'c8/2a/f66e2ac8.jpg', '', 0),
(255, 39, '3d/3b/b9e83b3d.jpg', '', 0),
(256, 39, '6b/df/7a37df6b.jpg', '', 0),
(257, 39, '05/8e/08848e05.jpg', '', 0),
(258, 39, '4d/f2/1bcdf24d.jpg', '', 0),
(259, 39, '78/87/6bb68778.jpg', '', 0),
(260, 39, '14/b7/309db714.jpg', '', 0),
(261, 40, 'e2/05/0def05e2.jpg', '', 0),
(262, 40, '8d/c9/9cd7c98d.jpg', '', 0),
(263, 40, '0f/9b/56de9b0f.jpg', '', 0),
(264, 40, 'f9/57/55f157f9.jpg', '', 0),
(265, 40, '40/47/39424740.jpg', '', 0),
(266, 40, '51/29/f5ad2951.jpg', '', 0),
(267, 40, 'bc/ca/a95fcabc.jpg', '', 0),
(268, 40, 'b7/8d/f3f78db7.jpg', '', 0),
(269, 40, 'e3/09/ae8609e3.jpg', '', 0),
(270, 41, 'fa/57/18aa57fa.jpg', '', 7),
(271, 41, '8f/00/4012008f.jpg', '', 6),
(272, 41, '76/69/d19c6976.jpg', '', 9),
(273, 41, 'f1/f2/0a35f2f1.jpg', '', 8),
(274, 41, '3e/2c/a3c52c3e.jpg', '', 5),
(275, 41, 'dc/b2/14fab2dc.jpg', '', 4),
(276, 41, '1b/fe/dea8fe1b.jpg', '', 3),
(277, 41, 'e6/5f/66c05fe6.jpg', '', 2),
(278, 41, '68/84/57888468.jpg', '', 1),
(279, 42, 'ee/78/5dc578ee.jpg', '', 0),
(280, 42, '16/89/3dac8916.jpg', '', 0),
(281, 42, 'ee/f0/b576f0ee.jpg', '', 0),
(282, 42, 'e2/06/dd4706e2.jpg', '', 0),
(283, 42, '73/51/508c5173.jpg', '', 0),
(284, 42, '08/4b/81654b08.jpg', '', 0),
(285, 42, 'c5/eb/8ccbebc5.jpg', '', 0),
(286, 42, 'b1/fc/1018fcb1.jpg', '', 0),
(287, 43, '9b/78/11c9789b.jpg', '', 8),
(288, 43, '92/4d/bdee4d92.jpg', '', 7),
(289, 43, '3f/15/8774153f.jpg', '', 6),
(290, 43, '8f/6e/d7546e8f.jpg', '', 5),
(291, 43, '05/98/e0349805.jpg', '', 4),
(292, 43, '2e/49/2c17492e.jpg', '', 3),
(293, 43, 'f6/a6/ed32a6f6.jpg', '', 2),
(294, 43, 'c4/5b/592a5bc4.jpg', '', 1),
(295, 48, 'a5/fc/625ffca5.jpg', '', 1),
(296, 48, '1c/94/bfa4941c.jpg', '', 2),
(297, 48, '03/3d/a89f3d03.jpg', '', 3),
(298, 48, '1b/d3/1cc7d31b.jpg', '', 4),
(299, 48, 'd4/9a/93549ad4.jpg', '', 5),
(301, 48, 'eb/9b/35d09beb.jpg', '', 7),
(302, 48, '40/1a/cdb11a40.jpg', '', 8),
(303, 48, '6d/1a/39041a6d.jpg', '', 9),
(304, 48, 'b0/89/d20a89b0.jpg', '', 10),
(305, 49, 'cc/a0/0482a0cc.jpg', '', 3),
(306, 49, 'de/41/671241de.jpg', '', 6),
(307, 49, '0b/60/ffa5600b.jpg', '', 2),
(308, 49, '5a/e7/b1c6e75a.jpg', '', 1),
(309, 50, '42/c8/51f3c842.jpg', '', 0),
(310, 50, 'cf/3a/2fac3acf.jpg', '', 0),
(311, 50, '93/78/553a7893.jpg', '', 0),
(312, 50, '4d/12/be81124d.jpg', '', 0),
(313, 51, 'd8/f8/f2d2f8d8.jpg', '', 0),
(314, 51, '19/00/c8d00019.jpg', '', 0),
(315, 51, 'ce/0e/69eb0ece.jpg', '', 0),
(316, 51, 'ed/24/700824ed.jpg', '', 0),
(317, 51, '4f/a9/75e8a94f.jpg', '', 0),
(318, 51, 'a8/84/bcc884a8.jpg', '', 0),
(319, 51, 'a6/8b/861e8ba6.jpg', '', 0),
(320, 51, 'd0/c2/7cd4c2d0.jpg', '', 0),
(321, 52, '40/48/c68b4840.jpg', '', 0),
(322, 52, '68/92/6b5e9268.jpg', '', 0),
(323, 52, '8e/2e/49d32e8e.jpg', '', 0),
(324, 52, '3e/4c/4faf4c3e.jpg', '', 0),
(325, 52, '20/1d/73d91d20.jpg', '', 0),
(326, 52, 'ff/80/5c4b80ff.jpg', '', 0),
(327, 52, '9c/9f/3e4c9f9c.jpg', '', 0),
(328, 52, 'e9/9f/620b9fe9.jpg', '', 0),
(329, 52, 'b1/f0/4f0cf0b1.jpg', '', 0),
(331, 53, 'e5/48/bec948e5.jpg', '', 0),
(332, 53, '98/b8/cc8eb898.jpg', '', 0),
(333, 53, '1f/4a/2b274a1f.jpg', '', 0),
(334, 53, 'ba/6f/d06a6fba.jpg', '', 0),
(335, 53, '37/54/6a7a5437.jpg', '', 0),
(336, 53, '62/69/13ad6962.jpg', '', 0),
(337, 53, '97/16/70c91697.jpg', '', 0),
(338, 53, '91/dc/21a3dc91.jpg', '', 0),
(339, 54, '48/3d/e1593d48.jpg', '', 0),
(340, 54, 'fd/cc/20d5ccfd.jpg', '', 0),
(341, 54, '2e/b1/7c78b12e.jpg', '', 0),
(342, 54, '25/bd/053bbd25.jpg', '', 0),
(343, 55, 'a2/7f/20437fa2.jpg', '', 0),
(344, 55, '0f/e6/edd7e60f.jpg', '', 0),
(345, 55, '82/0b/34cc0b82.jpg', '', 0),
(346, 55, '2c/34/b1c5342c.jpg', '', 0),
(347, 55, '4f/51/9c8f514f.jpg', '', 0),
(348, 55, 'c5/01/2d7601c5.jpg', '', 0),
(349, 56, '6d/e1/5c82e16d.jpg', '', 0),
(350, 56, 'c9/44/c7a044c9.jpg', '', 0),
(351, 56, 'f1/02/0c8b02f1.jpg', '', 0),
(352, 56, '40/f0/3e3df040.jpg', '', 0),
(353, 56, 'be/dc/351cdcbe.jpg', '', 0),
(354, 56, '84/fd/d4b7fd84.jpg', '', 0),
(355, 56, '82/52/04f95282.jpg', '', 0),
(356, 56, 'e3/2e/46092ee3.jpg', '', 0),
(357, 57, '2e/80/990d802e.jpg', '', 0),
(358, 57, '8b/cb/f8b0cb8b.jpg', '', 0),
(359, 57, '5c/1b/cd581b5c.jpg', '', 0),
(360, 57, 'c3/54/572454c3.jpg', '', 0),
(361, 57, '47/3d/5b6f3d47.jpg', '', 0),
(362, 57, '20/cf/95cacf20.jpg', '', 0),
(363, 57, '5a/0d/60fe0d5a.jpg', '', 0),
(364, 58, '50/c4/16cac450.jpg', '', 0),
(365, 58, '4b/a3/c9e5a34b.jpg', '', 0),
(366, 58, '5f/1e/f9851e5f.jpg', '', 0),
(367, 58, '44/cf/f0f1cf44.jpg', '', 0),
(368, 59, '56/51/5bd45156.jpg', '', 0),
(369, 59, '6a/80/0498806a.jpg', '', 0),
(370, 59, '36/37/5cd73736.jpg', '', 0),
(371, 60, '20/b9/bcf2b920.jpg', '', 0),
(372, 60, '34/4e/ed734e34.jpg', '', 0),
(373, 60, '18/7a/24537a18.jpg', '', 0),
(374, 60, '22/6d/eb576d22.jpg', '', 0),
(375, 60, 'e4/70/a86e70e4.jpg', '', 0),
(376, 60, '94/1b/06ff1b94.jpg', '', 0),
(377, 60, '88/2a/0dd12a88.jpg', '', 0),
(378, 60, '23/57/63005723.jpg', '', 0),
(379, 60, '2a/e3/9cece32a.jpg', '', 0),
(380, 61, '70/3a/b1c93a70.jpg', NULL, NULL),
(381, 61, 'cb/ca/2a7acacb.jpg', NULL, NULL),
(382, 61, 'bf/45/819245bf.jpg', NULL, NULL),
(383, 61, '1c/eb/7e91eb1c.jpg', NULL, NULL),
(384, 61, 'bd/3f/b2943fbd.jpg', NULL, NULL),
(385, 61, 'da/e4/5ef6e4da.jpg', NULL, NULL),
(386, 61, '71/38/c19a3871.jpg', NULL, NULL),
(387, 61, '79/87/78338779.jpg', NULL, NULL),
(388, 61, '39/f6/0fb2f639.jpg', NULL, NULL),
(389, 61, '78/05/78120578.jpg', NULL, NULL),
(390, 62, '65/c0/7be7c065.jpg', '', 0),
(391, 62, 'f0/3f/b0e63ff0.jpg', '', 0),
(392, 62, 'a7/3a/91a83aa7.jpg', '', 0),
(393, 62, 'e6/a4/49f3a4e6.jpg', '', 0),
(394, 62, '89/39/1fee3989.jpg', '', 0),
(395, 62, '82/08/e9ff0882.jpg', '', 0),
(396, 62, '6b/5e/cb365e6b.jpg', '', 0),
(397, 62, '08/83/0bee8308.jpg', '', 0),
(398, 62, 'b4/07/d75807b4.jpg', '', 0),
(399, 63, '73/82/4b478273.jpg', '', 0),
(400, 63, '38/28/f9d42838.jpg', '', 0),
(401, 63, 'ef/1e/05171eef.jpg', '', 0),
(402, 63, '1e/b6/0f18b61e.jpg', '', 0),
(403, 63, 'b3/5a/95205ab3.jpg', '', 0),
(404, 63, '47/8f/d2788f47.jpg', '', 0),
(405, 64, '6a/c1/64d7c16a.jpg', '', 0),
(406, 64, '4d/cf/cdcccf4d.jpg', '', 0),
(407, 64, '8c/f0/659ff08c.jpg', '', 0),
(408, 64, '1c/81/7b48811c.jpg', '', 0),
(409, 64, 'a9/b7/c79bb7a9.jpg', '', 0),
(410, 64, '6f/5b/985c5b6f.jpg', '', 0),
(411, 64, 'd9/b3/86e8b3d9.jpg', '', 0),
(412, 65, '83/07/64400783.jpg', '', 0),
(413, 65, 'b6/31/e44831b6.jpg', '', 0),
(414, 65, 'be/3e/cb773ebe.jpg', '', 0),
(415, 65, '89/fc/4f96fc89.jpg', '', 0),
(416, 65, '8f/3b/44a13b8f.jpg', '', 0),
(417, 66, 'b1/f4/d07ef4b1.jpg', '', 0),
(418, 66, '31/15/c25a1531.jpg', '', 0),
(419, 66, '99/79/0d957999.jpg', '', 0),
(420, 66, '0e/61/a3b8610e.jpg', '', 0),
(421, 67, 'a7/69/046b69a7.jpg', '', 0),
(422, 67, '34/9e/254f9e34.jpg', '', 0),
(423, 67, 'a0/8b/6fe38ba0.jpg', '', 0),
(424, 67, '6d/30/1747306d.jpg', '', 0),
(425, 68, '96/ce/11dece96.jpg', '', 0),
(426, 68, 'ba/1e/27021eba.jpg', '', 0),
(427, 68, '94/97/975d9794.jpg', '', 0),
(428, 68, '31/5a/08e05a31.jpg', '', 0),
(429, 69, '48/71/9cf27148.jpg', '', 0),
(430, 69, 'f7/39/3ea439f7.jpg', '', 0),
(431, 69, 'e6/be/a168bee6.jpg', '', 0),
(432, 69, '2b/15/2fd9152b.jpg', '', 0),
(433, 70, 'c4/71/962071c4.jpg', '', 0),
(434, 70, '8c/2c/59cc2c8c.jpg', '', 0),
(435, 70, '00/01/56130100.jpg', '', 0),
(436, 70, '86/7b/35167b86.jpg', '', 0),
(437, 70, 'a6/0e/e3d90ea6.jpg', '', 0),
(438, 70, '3e/13/cda9133e.jpg', '', 0),
(439, 70, 'e1/1d/b35a1de1.jpg', '', 0),
(440, 70, '7f/59/8e36597f.jpg', '', 0),
(441, 70, '78/fd/a60cfd78.jpg', '', 0),
(442, 70, '54/59/ecd95954.jpg', '', 0),
(443, 70, 'd8/b8/de4cb8d8.jpg', '', 0),
(444, 70, 'af/2c/bc572caf.jpg', '', 0),
(445, 70, '27/7e/849f7e27.jpg', '', 0),
(446, 70, 'f9/03/979c03f9.jpg', '', 0),
(447, 70, '13/0d/12380d13.jpg', '', 0),
(448, 70, 'eb/aa/da3aaaeb.jpg', '', 0),
(449, 70, '30/83/46578330.jpg', '', 0),
(450, 70, 'd8/cd/e9a5cdd8.jpg', '', 0),
(451, 70, 'e7/1a/b1471ae7.jpg', '', 0),
(452, 70, '56/2c/a2932c56.jpg', '', 0),
(455, 71, 'a2/30/90e430a2.jpg', '', 0),
(456, 71, 'c5/ec/68c2ecc5.jpg', '', 0),
(457, 71, '93/c2/862ac293.jpg', '', 0),
(459, 71, 'b7/3f/9daf3fb7.jpg', '', 0),
(460, 71, 'f6/6a/fd386af6.jpg', '', 0),
(461, 71, '60/19/fa001960.jpg', '', 0),
(462, 71, '3e/28/cad8283e.jpg', '', 0),
(463, 71, 'c1/a0/7e88a0c1.jpg', '', 0),
(464, 71, '4b/33/fa83334b.jpg', '', 0),
(465, 72, '6f/96/03f1966f.jpg', '', 0),
(466, 72, '24/d2/5612d224.jpg', '', 0),
(467, 72, '2e/46/af9f462e.jpg', '', 0),
(468, 72, 'b1/23/6f5923b1.jpg', '', 0),
(469, 72, '4b/ad/c13ead4b.jpg', '', 0),
(470, 72, '6a/1c/54211c6a.jpg', '', 0),
(471, 72, '48/cd/79c9cd48.jpg', '', 0),
(472, 72, '6f/09/22da096f.jpg', '', 0),
(473, 72, 'c5/1d/734a1dc5.jpg', '', 0),
(474, 72, 'cc/7d/8a5e7dcc.jpg', '', 0),
(475, 73, '21/e2/7399e221.jpg', '', 0),
(476, 73, '5c/50/65e9505c.jpg', '', 0),
(477, 73, '34/8d/7d9f8d34.jpg', '', 0),
(478, 73, '23/28/5b7c2823.jpg', '', 0),
(479, 73, 'fc/76/9f2876fc.jpg', '', 0),
(480, 73, '06/c3/f36ac306.jpg', '', 0),
(481, 73, '73/3c/35b83c73.jpg', '', 0),
(482, 73, 'ea/21/bbf821ea.jpg', '', 0),
(483, 73, '0d/1f/814d1f0d.jpg', '', 0),
(484, 73, '8d/b7/309cb78d.jpg', '', 0),
(485, 73, 'e2/7d/6fff7de2.jpg', '', 0),
(486, 73, 'e0/44/c89944e0.jpg', '', 0),
(487, 74, '9a/e4/1858e49a.jpg', '', 0),
(488, 74, 'e4/92/ee1e92e4.jpg', '', 0),
(489, 74, '00/57/bdd95700.jpg', '', 0),
(490, 74, '79/58/d0445879.jpg', '', 0),
(491, 74, '13/3b/db933b13.jpg', '', 0),
(492, 74, '3f/db/e126db3f.jpg', '', 0),
(493, 74, 'be/54/9ef754be.jpg', '', 0),
(494, 75, '15/dd/1c23dd15.jpg', '', 0),
(495, 75, '51/53/d7095351.jpg', '', 0),
(496, 75, '06/01/a6b60106.jpg', '', 0),
(497, 75, '3f/95/647b953f.jpg', '', 0),
(498, 75, '59/70/3e2a7059.jpg', '', 0),
(499, 75, '9e/0f/c5aa0f9e.jpg', '', 0),
(500, 76, 'df/0e/1b5e0edf.jpg', '', 0),
(501, 76, '10/49/bfee4910.jpg', '', 0),
(502, 76, '8a/24/9ef1248a.jpg', '', 0),
(503, 76, '9a/71/a236719a.jpg', '', 0),
(504, 76, '49/64/20bb6449.jpg', '', 0),
(505, 77, '2d/b5/7ea7b52d.jpg', '', 0),
(506, 77, '4b/89/df6b894b.jpg', '', 0),
(507, 77, '5e/67/e297675e.jpg', '', 0),
(508, 77, '3a/2f/a1be2f3a.jpg', '', 0),
(509, 77, 'bc/52/dcb552bc.jpg', '', 0),
(510, 78, '3a/81/f9db813a.jpg', '', 0),
(511, 78, '94/5a/ddee5a94.jpg', '', 0),
(512, 78, '79/93/c27a9379.jpg', '', 0),
(513, 78, '44/70/80997044.jpg', '', 0),
(514, 78, '83/e6/4974e683.jpg', '', 0),
(515, 78, 'f4/37/891e37f4.jpg', '', 0),
(516, 79, 'b2/1f/bb851fb2.jpg', NULL, NULL),
(517, 79, 'c2/d0/2fe2d0c2.jpg', NULL, NULL),
(518, 79, '86/30/08ba3086.jpg', NULL, NULL),
(519, 79, 'c5/a1/bcfda1c5.jpg', NULL, NULL),
(520, 79, '01/dc/2194dc01.jpg', NULL, NULL),
(521, 79, '34/09/2a5a0934.jpg', NULL, NULL),
(522, 79, '75/ec/a38cec75.jpg', NULL, NULL),
(523, 79, '44/32/24c33244.jpg', NULL, NULL),
(524, 79, 'ef/23/08e223ef.jpg', NULL, NULL),
(525, 80, 'c0/49/dcce49c0.jpg', NULL, NULL),
(526, 80, 'cb/b0/1ee1b0cb.jpg', NULL, NULL),
(527, 80, 'b2/2f/e4dd2fb2.jpg', NULL, NULL),
(528, 80, 'ec/a3/18f6a3ec.jpg', NULL, NULL),
(529, 80, 'ef/11/4cc711ef.jpg', NULL, NULL),
(530, 80, '0a/48/7f1b480a.jpg', NULL, NULL),
(531, 80, '4a/f4/00bff44a.jpg', NULL, NULL),
(532, 80, 'ac/a2/8871a2ac.jpg', NULL, NULL),
(533, 80, '71/9a/e7ba9a71.jpg', NULL, NULL),
(534, 81, 'd7/e0/7cdae0d7.jpg', NULL, NULL),
(535, 81, '7f/4a/dfbe4a7f.jpg', NULL, NULL),
(536, 81, '0a/97/79e4970a.jpg', NULL, NULL),
(537, 81, '0b/88/01f3880b.jpg', NULL, NULL),
(538, 81, 'd1/78/8b0178d1.jpg', NULL, NULL),
(559, 82, 'f5/35/790835f5.jpg', '', 0),
(560, 82, 'c3/07/656b07c3.jpg', '', 0),
(561, 82, 'be/51/fc3251be.jpg', '', 0),
(562, 82, '32/30/b1c03032.jpg', '', 0),
(563, 82, '47/cc/44eecc47.jpg', '', 0),
(564, 82, '19/af/ca96af19.jpg', '', 0),
(565, 82, 'a8/36/772a36a8.jpg', '', 0),
(566, 82, 'c2/dd/cf8bddc2.jpg', '', 0),
(567, 82, '06/5f/cc5a5f06.jpg', '', 0),
(568, 82, '32/3d/1f373d32.jpg', '', 0),
(569, 82, '7f/58/9129587f.jpg', '', 0),
(570, 84, '91/9b/c7db9b91.jpg', '', 0),
(571, 84, '2d/b2/469fb22d.jpg', '', 0),
(572, 84, 'c1/c2/dd13c2c1.jpg', '', 0),
(573, 84, '56/7a/ec0b7a56.jpg', '', 0),
(574, 84, '3a/21/9a9e213a.jpg', '', 0),
(575, 84, '59/d2/7606d259.jpg', '', 0),
(576, 84, '50/37/4ae23750.jpg', '', 0),
(577, 84, 'e3/47/865f47e3.jpg', '', 0),
(578, 84, '71/8d/a10a8d71.jpg', '', 0),
(579, 84, '8c/aa/cfcdaa8c.jpg', '', 0),
(580, 84, 'cc/3c/f5f83ccc.jpg', '', 0),
(581, 84, '63/d3/9adad363.jpg', '', 0),
(582, 85, '9a/1f/939f1f9a.jpg', 'Phòng Khách', 0),
(583, 85, '11/cf/fa7acf11.jpg', '', 0),
(584, 85, '91/fd/88d8fd91.jpg', 'Phòng Khách', 0),
(585, 85, 'f6/b4/b222b4f6.jpg', '', 0),
(586, 85, '9f/32/6fc9329f.jpg', 'Phòng Ngủ nhỏ 1', 0),
(587, 85, '33/91/f1b89133.jpg', 'Phòng Ngủ nhỏ 1', 0),
(588, 85, '36/d8/5ac8d836.jpg', 'Phòng Ngủ nhỏ 1', 0),
(589, 85, '54/25/30fe2554.jpg', 'Phòng Ngủ nhỏ 2', 0),
(590, 85, '34/99/cbd89934.jpg', 'Phòng Ngủ nhỏ 2', 0),
(591, 85, '1e/c4/59f7c41e.jpg', 'Phòng Ngủ nhỏ 2', 0),
(592, 85, '08/24/56332408.jpg', 'Phòng ngủ Master', 0),
(593, 85, 'ec/35/11c335ec.jpg', 'Phòng ngủ Master', 0),
(594, 85, 'd2/e3/f27de3d2.jpg', 'Phòng ngủ Master', 0),
(595, 85, 'b4/68/5c7a68b4.jpg', 'Phòng ngủ Master', 0),
(596, 85, '28/5b/62ce5b28.jpg', 'Phòng ngủ Master', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ktv_promotion`
--

CREATE TABLE IF NOT EXISTS `ktv_promotion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `order` int(11) NOT NULL,
  `available` tinyint(1) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1' COMMENT '0: deleted',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `ktv_promotion`
--

INSERT INTO `ktv_promotion` (`id`, `name`, `content`, `order`, `available`, `status`) VALUES
(1, 'Ten khuyen mai', '<p>Noi dung khuyen mai</p>\r\n\r\n<table border="1" cellpadding="1" cellspacing="1" style="width:500px">\r\n	<tbody>\r\n		<tr>\r\n			<td>Ten San pham</td>\r\n			<td>Gia</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Ghe sofa</td>\r\n			<td>10M</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Ban</td>\r\n			<td>15M</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n', 10, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ktv_recruitment`
--

CREATE TABLE IF NOT EXISTS `ktv_recruitment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `summary` longtext NOT NULL,
  `content` longtext NOT NULL,
  `visible` tinyint(1) NOT NULL,
  `creationDate` datetime NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1' COMMENT '0: deleted',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `ktv_recruitment`
--

INSERT INTO `ktv_recruitment` (`id`, `title`, `summary`, `content`, `visible`, `creationDate`, `status`) VALUES
(1, 'Tuyển 50 designer', 'Tuyển 50 designer làm việc tại HCM', '<p>Hiện đang cần tuyển designer l&agrave;m việc tại HCM</p>\r\n\r\n<p>Lương từ 1k đến 2k/th&aacute;ng<br />\r\n&nbsp;</p>\r\n', 1, '2014-05-01 17:22:45', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ktv_service`
--

CREATE TABLE IF NOT EXISTS `ktv_service` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `image` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `sortcontent` longtext COLLATE utf8_bin,
  `description` longtext CHARACTER SET utf8,
  `sort` int(11) DEFAULT NULL,
  `date_create` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=5 ;

--
-- Dumping data for table `ktv_service`
--

INSERT INTO `ktv_service` (`id`, `name`, `image`, `sortcontent`, `description`, `sort`, `date_create`, `status`) VALUES
(1, 'Giang hồ hiểm độc', '55/c4/2201c455.jpg', 0xe2809c5468e1babf206769e1bb9b69206769616e672068e1bb93206e68e1baab6e2074c3a26d2076c3a0206869e1bb836d20c491e1bb99632c2068c3b46d206e6179206cc3a02062e1baa16e206e68c6b06e67206e67c3a079206d616920c491c3a3206cc3a0207468c3b9e2809d2e, '<div class="baiviet-TopContent200">\r\n	&ldquo;Thế giới giang hồ nhẫn t&acirc;m v&agrave; hiểm độc, h&ocirc;m nay l&agrave; bạn nhưng ng&agrave;y mai đ&atilde; l&agrave; th&ugrave;&rdquo;.\r\n	<div class="cap2-boxtop-note">\r\n		<div class="bl">\r\n			<div class="br">\r\n				<div class="tl">\r\n					<div class="tr">\r\n						<p>\r\n							<a href="http://www.24h.com.vn/an-ninh-hinh-su-c51.html">An ninh</a> <a href="http://www.24h.com.vn/an-ninh-hinh-su-c51.html">h&igrave;nh sự</a> cập nhật li&ecirc;n tục tất cả c&aacute;c ng&agrave;y trong tuần</p>\r\n					</div>\r\n				</div>\r\n			</div>\r\n		</div>\r\n	</div>\r\n</div>\r\n<div class="text-conent">\r\n	<div>\r\n		<p>\r\n			Nguyễn Văn Tuấn tức Tuấn &ldquo;bạc&rdquo;, một t&ecirc;n giang hồ chuy&ecirc;n sống bằng cờ bạc v&agrave; cho vay l&atilde;i tr&ecirc;n đất H&agrave; th&agrave;nh đ&atilde; phải thốt l&ecirc;n như vậy khi kể về cuộc sống của một kẻ giang hồ như hắn.</p>\r\n		<p>\r\n			Nạn nh&acirc;n của vụ &quot;đ&aacute;nh ghen&quot; n&agrave;y l&agrave; anh Nguyễn Th&agrave;nh Lu&acirc;n, ở quận Cầu Giấy, H&agrave; Nội. Theo tường tr&igrave;nh của anh Lu&acirc;n th&igrave; ng&agrave;y 12/3, một người bạn t&ecirc;n Tuấn gọi điện thoại rủ đi ch&ugrave;a Hương. Tuấn hẹn anh Lu&acirc;n đến nh&agrave; nghỉ 131 Th&aacute;i H&agrave; để c&ugrave;ng đi. Khi anh Lu&acirc;n đến nh&agrave; nghỉ n&agrave;y, một phụ nữ tự xưng l&agrave; em của Tuấn bảo anh Lu&acirc;n l&ecirc;n ph&ograve;ng 101 để đợi. Khi v&agrave;o ph&ograve;ng, đ&atilde; c&oacute; một c&ocirc; g&aacute;i ở trong đ&oacute; từ trước. Sau đ&oacute; c&ocirc; g&aacute;i đi v&agrave;o nh&agrave; vệ sinh c&ograve;n anh Lu&acirc;n l&ecirc;n giường đắp chăn đợi anh Tuấn về.</p>\r\n		<p>\r\n			Khoảng v&agrave;i ph&uacute;t sau, b&ecirc;n ngo&agrave;i c&oacute; tiếng g&otilde; cửa. C&ocirc; g&aacute;i n&agrave;y ra mở th&igrave; c&oacute; 4 thanh ni&ecirc;n h&ugrave;ng hổ lao v&agrave;o lớn tiếng n&oacute;i: &quot;M&agrave;y d&aacute;m cặp k&egrave; với vợ tao&quot;. Mặc cho anh Lu&acirc;n ph&acirc;n trần, c&aacute;c đối tượng đấm đ&aacute; anh Lu&acirc;n rồi lấy đi 2 chiếc điện thoại di động, v&iacute; tiền, m&aacute;y t&iacute;nh bảng Ipad... Cả bọn c&ograve;n bắt anh Lu&acirc;n xuống đứng một g&oacute;c ở tầng 1 của nh&agrave; nghỉ trước khi c&aacute;c đối tượng bỏ chạy. Qu&aacute; hoảng sợ, anh Lu&acirc;n kh&ocirc;ng d&aacute;m đuổi theo v&agrave; chỉ lao ra đường cầu cứu khi nh&igrave;n thấy một chiếc xe tuần tra của C&ocirc;ng an phường đi qua.</p>\r\n		<p>\r\n			Qua điều tra đến ng&agrave;y 28/3, C&ocirc;ng an quận Đống Đa đ&atilde; bắt giữ 4 đối tượng g&acirc;y ra vụ cướp t&agrave;i sản trắng trợn tr&ecirc;n gồm Nguyễn Văn Tuấn (30 tuổi) ở Gia L&acirc;m, H&agrave; Nội; Vũ Ch&iacute; C&ocirc;ng (25 tuổi) tr&uacute; tại phường T&acirc;n Phong, thị x&atilde; Lai Ch&acirc;u, Lai Ch&acirc;u; Trần Hồng Ph&uacute; (20 tuổi) v&agrave; Nguyễn Xu&acirc;n Tuấn (21 tuổi) ở Xu&acirc;n Trường, Nam Định.</p>\r\n		<p>\r\n			Theo khai nhận của c&aacute;c đối tượng th&igrave; c&ocirc; g&aacute;i trong m&agrave;n kịch &quot;đ&aacute;nh ghen&quot; tr&ecirc;n l&agrave; Hồng Anh, 30 tuổi, người Hải Ph&ograve;ng, l&agrave; người &quot;quen biết ngo&agrave;i x&atilde; hội&quot;. Trước đ&oacute;, Hồng Anh nhắn tin nhờ Nguyễn Văn Tuấn đi đ&ograve;i nợ gi&uacute;p. Địa điểm l&agrave; nh&agrave; nghỉ 131 Th&aacute;i H&agrave;. Để c&oacute; cớ đ&ograve;i nợ th&igrave; Hồng Anh thống nhất với Tuấn dựng l&ecirc;n vụ đ&aacute;nh ghen tr&ecirc;n. Sau đ&oacute;, Hồng Anh &quot;b&ugrave;ng&quot; mất, kh&ocirc;ng quay lại để ăn chia số t&agrave;i sản cướp được.</p>\r\n		<p>\r\n			Nguyễn Văn Tuấn, tức Tuấn &quot;bạc&quot;, kẻ cầm đầu nh&oacute;m cướp tr&ecirc;n tự nhận m&igrave;nh l&agrave; một giang hồ ch&iacute;nh hiệu chuy&ecirc;n sống bằng cờ bạc v&agrave; cho vay l&atilde;i. Tuấn &quot;bạc&quot; tự nhận trong giới cho vay l&atilde;i th&igrave; hắn chỉ l&agrave;m ăn c&ograve; con. Ban đầu, dưới trướng Tuấn c&oacute; khoảng 30 qu&acirc;n, được thu nhặt trong &quot;x&atilde; hội&quot;, l&agrave; những kẻ ngoại tỉnh lang thang. Đối tượng m&agrave; Tuấn &quot;bạc&quot; nhắm tới cho vay tiền l&agrave; &quot;ca ve&quot; ở khu vực Nguyễn Ch&iacute; Thanh v&agrave; Nguyễn Kh&aacute;nh To&agrave;n, nơi c&oacute; nhiều qu&aacute;n karaoke, m&agrave; theo Tuấn &quot;bạc&quot;, đ&oacute; l&agrave; những &quot;ổ g&aacute;i&quot; ở H&agrave; Nội.</p>\r\n		<p>\r\n			Theo giải th&iacute;ch của Tuấn &quot;bạc&quot; th&igrave; cho &quot;cave&quot; vay tiền sẽ an to&agrave;n v&igrave; bọn n&agrave;y ng&agrave;y n&agrave;o cũng c&oacute; tiền để trả nợ. Để tr&aacute;nh những vụ x&ugrave; nợ lớn th&igrave; số tiền cho vay kh&ocirc;ng qu&aacute; 10 triệu đồng, thu l&atilde;i theo ng&agrave;y. V&igrave; vậy, Tuấn tổ chức một đội qu&acirc;n chuy&ecirc;n đi thu nợ h&agrave;ng ng&agrave;y cho m&igrave;nh. Mỗi t&ecirc;n đ&agrave;n em sẽ &quot;quản l&yacute;&quot; một số con nợ nhất định. Nhiệm vụ của ch&uacute;ng l&agrave; gi&aacute;m s&aacute;t con nợ xem họ ở đ&acirc;u, đi l&agrave;m tại qu&aacute;n n&agrave;o v&agrave; cuối ng&agrave;y th&igrave; li&ecirc;n lạc với con nợ để thu tiền.</p>\r\n		<p>\r\n			&quot;V&iacute; dụ &quot;b&aacute;t&quot; 30 ng&agrave;y, vay 5 triệu th&igrave; mỗi ng&agrave;y phải đ&oacute;ng 200.000 đồng gồm cả gốc v&agrave; l&atilde;i, ng&agrave;y n&agrave;o cũng thu. Với &quot;g&aacute;i&quot; th&igrave; chừng ấy tiền l&agrave; trả được&quot; - Tuấn &quot;bạc&quot; giải th&iacute;ch. Bọn &quot;g&aacute;i&quot; vay tiền chỉ cần đặt lại CMND, c&ograve;n với đ&agrave;n &ocirc;ng th&igrave; muốn vay phải &quot;cầm đồ&quot;, tức l&agrave; đặt lại t&agrave;i sản như xe m&aacute;y, điện thoại, m&aacute;y vi t&iacute;nh&hellip; Những thứ t&agrave;i sản n&agrave;y đương nhi&ecirc;n l&agrave; kh&ocirc;ng c&oacute; giấy tờ.</p>\r\n		<p>\r\n			Nguy&ecirc;n tắc kh&ocirc;ng được quan hệ th&acirc;n thiết với kh&aacute;ch vay, kh&ocirc;ng tạo sự th&acirc;n thiện v&igrave; như vậy sẽ rất kh&oacute; đ&ograve;i. N&ecirc;n kh&aacute;ch vay kh&ocirc;ng được ph&eacute;p đến chỗ ch&uacute;ng ở. Cần vay tiền đ&atilde; c&oacute; người mang đến hoặc hẹn ra chỗ n&agrave;o đ&oacute;. Đ&oacute; l&agrave; những quy định bất th&agrave;nh văn của giới hoạt động &quot;t&iacute;n dụng đen&quot; như Tuấn đặt ra đối với bọn đ&agrave;n em.</p>\r\n		<p style="text-align: center;">\r\n			<img alt="Giang hồ hiểm độc, An ninh - Hình sự, giang ho hiem doc, giang ho, doi no thue, chem nhau, hon chien, bao, bao cong an, bao an ninh" class="news-image" src="http://img-hcm.24hstatic.com:8008/upload/2-2012/images/2012-04-07/1333802993-vu-an.jpg" /></p>\r\n		<p style="text-align: center;">\r\n			<font style="color: rgb(0, 0, 255);"><em>C&aacute;c đối tượng trong nh&oacute;m cướp bị bắt giữ c&ugrave;ng tang vật.</em></font></p>\r\n		<p>\r\n			Tuấn &ldquo;bạc&rdquo; bảo rằng, giang hồ ph&acirc;n chia l&atilde;nh địa hoạt động ri&ecirc;ng. Địa b&agrave;n m&agrave; hắn được ph&eacute;p l&agrave;m ăn l&agrave; khu Cầu Giấy, Từ Li&ecirc;m, t&iacute;nh đến hết ch&acirc;n cầu Thăng Long. Nếu x&acirc;m phạm sang l&atilde;nh địa của người kh&aacute;c sẽ ăn đ&ograve;n ngay. Những vụ d&ugrave;ng s&uacute;ng hoa cải, dao kiếm&hellip; d&agrave;n trận đ&aacute;nh nhau tại cổng khu đ&ocirc; thị Ciputra hay ch&acirc;n cầu Thăng Long xảy ra li&ecirc;n tiếp trong thời gian qua, theo Tuấn &quot;bạc&quot; ch&iacute;nh l&agrave; hậu quả của việc tranh gi&agrave;nh đất l&agrave;m ăn giữa c&aacute;c băng nh&oacute;m giang hồ.</p>\r\n		<p>\r\n			Theo Tuấn &quot;bạc&quot; th&igrave; đệ nhất giang hồ H&agrave; Nội hiện nay vẫn l&agrave; S. &quot;bạch tạng&quot;, nổi tiếng một thời c&ugrave;ng c&aacute;c &quot;đại ca&quot; giang hồ kh&aacute;c như Năm Cam, Dung H&agrave;&hellip; Thứ đến l&agrave; S. &ldquo;trại nh&atilde;n&rdquo; chuy&ecirc;n &quot;l&agrave;m đất&quot; nghĩa l&agrave; hoạt động bảo k&ecirc;, đ&aacute;nh chiếm đất c&ocirc;ng. Tuấn &quot;bạc&quot; bảo rằng l&agrave;m ăn trong lĩnh vực n&agrave;y l&agrave; l&atilde;i nhất nhưng kh&ocirc;ng phải kẻ giang hồ n&agrave;o cũng l&agrave;m được.</p>\r\n		<p>\r\n			Thủ đoạn của những kẻ &quot;l&agrave;m đất&quot; l&agrave; nhắm một mảnh đất c&ocirc;ng, đất kẹt, d&ugrave;ng c&ocirc;n đồ v&aacute;c dao kiếm đến để uy hiếp, đe dọa những người sống xung quanh mảnh đất đ&oacute;. Đầu ti&ecirc;n l&agrave; dựng lều l&aacute;n ở tạm, sau đ&oacute; chỉ trong một đ&ecirc;m, ch&uacute;ng cấp tập x&acirc;y dựng một ng&ocirc;i nh&agrave; cấp bốn tr&ecirc;n mảnh đất lấn chiếm. Rồi hợp ph&aacute;p th&agrave;nh nh&agrave; ở để b&aacute;n. Đương nhi&ecirc;n những phi vụ chiếm đất n&agrave;y phải c&oacute; sự tham gia của những c&aacute;n bộ tho&aacute;i h&oacute;a của ch&iacute;nh quyền địa phương khi biến đất c&ocirc;ng th&agrave;nh đất ở n&agrave;y. Tỉ lệ ăn chia khoảng 50/50. C&aacute;c vụ nh&agrave; đất to ở H&agrave; Nội, hầu hết đều c&oacute; b&agrave;n tay của S. &ldquo;trại nh&atilde;n&rdquo;.</p>\r\n		<p>\r\n			Cũng theo tiết lộ của Tuấn &quot;bạc&quot; th&igrave; thủ đoạn bẫy giới trẻ v&agrave;o con đường cờ bạc rồi quay sang xiết nợ của giang hồ hoạt động trong lĩnh vực &quot;t&iacute;n dụng đen&quot; hiện nay ở H&agrave; Nội kh&aacute; phổ biến. Thủ đoạn của ch&uacute;ng l&agrave; chọn mặt những &quot;qu&yacute; tử&quot; con nh&agrave; kh&aacute; giả, c&oacute; tiền, c&oacute; t&agrave;i sản như nh&agrave; đất, sau đ&oacute; rủ r&ecirc; v&agrave;o cờ bạc.</p>\r\n		<p>\r\n			Ban đầu, ch&uacute;ng chỉ cho vay số tiền nhỏ, khoảng 5-10 triệu đồng. Người trong sới bạc l&agrave; &quot;nội gi&aacute;n&quot;, nghĩa l&agrave; người của bọn ch&uacute;ng bố tr&iacute; hết. L&uacute;c đầu thả cho con bạc tr&uacute;ng khoảng v&agrave;i chục triệu. Khi đ&atilde; cắn c&acirc;u, ch&uacute;ng sẽ cho con bạc thua hết sạch số tiền n&agrave;y rồi tiếp tục bơm tiền cho chơi. Đến một ngưỡng n&agrave;o đ&oacute; th&igrave; &eacute;p viết giấy vay nợ với số tiền rất lớn, t&iacute;nh cả l&atilde;i. Khi kh&ocirc;ng c&oacute; khả năng trả nợ th&igrave; quay sang đ&ograve;i bố mẹ, bắt phải b&aacute;n nh&agrave;; hoặc bắt con nợ phải mang sổ đỏ đến nộp cho ch&uacute;ng rồi hướng dẫn l&agrave;m c&aacute;c thủ tục cầm cố, sang t&ecirc;n nh&agrave; đất một c&aacute;ch hợp ph&aacute;p. Rất nhiều con nợ bị xiết nh&agrave;, mất nh&agrave; kiểu n&agrave;y m&agrave; kh&ocirc;ng d&aacute;m k&ecirc;u ai.</p>\r\n		<p>\r\n			Con đường dấn th&acirc;n v&agrave;o chốn giang hồ của Tuấn &quot;bạc&quot; từ năm 14 tuổi. Kh&ocirc;ng chịu học h&agrave;nh, chuy&ecirc;n đ&aacute;nh nhau, bị đuổi học, Tuấn &quot;bạc&quot; đi phụ xe kh&aacute;ch c&ugrave;ng anh rể. Năm 21 tuổi, do tranh kh&aacute;ch n&ecirc;n hắn bị đối thủ d&ugrave;ng dao đ&acirc;m một nh&aacute;t ch&iacute; mạng thủng gan, may m&agrave; sống s&oacute;t.</p>\r\n		<p>\r\n			Từ đ&oacute;, Tuấn bỏ nh&agrave; sống lang thang, bắt đầu con đường giang hồ bằng nghề cờ bạc. Đầu ti&ecirc;n l&agrave; &quot;l&agrave;m b&oacute;ng&quot;. C&oacute; thời gian, hắn tr&uacute;ng rất nhiều, mua được nh&agrave; tiền tỉ. Nhưng rồi cũng mất sạch khi hắn tham lam, kh&ocirc;ng &quot;cầm b&oacute;ng&quot; m&agrave; lại &quot;chơi b&oacute;ng&quot;. Thế l&agrave; hắn chuyển sang cho vay l&atilde;i.</p>\r\n		<p>\r\n			C&aacute;i t&ecirc;n Tuấn &quot;bạc&quot;, theo giải th&iacute;ch của hắn l&agrave; do những năm th&aacute;ng chuy&ecirc;n sống bằng &quot;nghề&quot; cờ bạc, v&agrave; sở th&iacute;ch của hắn l&agrave; nhuộm t&oacute;c m&agrave;u bạc. Kiếm h&agrave;ng trăm triệu đồng mỗi ng&agrave;y bằng cờ bạc, theo hắn l&agrave; chuyện b&igrave;nh thường. Hắn bảo thường ngồi xới bạc của những đ&agrave;n anh trong x&atilde; hội. &quot;Tiền họ kiếm được cũng kh&ocirc;ng phải tiền sạch n&ecirc;n khi thua h&agrave;ng trăm triệu cũng thấy b&igrave;nh thường&quot; - Tuấn &quot;bạc&quot; kết luận.</p>\r\n		<p>\r\n			Khi bị bắt giữ, Tuấn &quot;bạc&quot; t&acirc;m sự rằng, hắn rất mệt mỏi sau hơn chục năm l&agrave;m giang hồ. &quot;Khi n&oacute; cần đến m&igrave;nh th&igrave; n&oacute; rất tốt. H&ocirc;m nay n&oacute; c&oacute; thể c&ugrave;ng m&igrave;nh đi đ&aacute;nh nhau nhưng ng&agrave;y mai n&oacute; c&oacute; thể quay lại đ&aacute;nh giết m&igrave;nh lu&ocirc;n. N&oacute;i l&agrave; giang hồ nhưng khi động đến quyền lợi của nhau, l&atilde;nh địa của nhau l&agrave; chiến hết, thịt hết chứ chẳng c&oacute; t&igrave;nh nghĩa g&igrave;. Nhiều khi chỉ l&agrave; bằng mặt nhưng kh&ocirc;ng bằng l&ograve;ng, chẳng qua l&agrave; nể nhau, kh&ocirc;ng &quot;ăn&quot; được nhau th&ocirc;i&quot; - Đ&oacute; ch&iacute;nh l&agrave; c&aacute;ch h&agrave;nh xử với nhau của giới giang hồ m&agrave; Tuấn &quot;bạc&quot; cay đắng nhận ra.</p>\r\n		<p>\r\n			Tuấn &quot;bạc&quot; kể khi ngồi xới bạc, d&ugrave; kh&ocirc;ng th&iacute;ch nhưng hắn vẫn phải &quot;đập đ&aacute;&quot; c&ugrave;ng mọi người để thể hiện bản lĩnh v&agrave; khẳng định &quot;c&ugrave;ng chung ch&iacute; hướng&quot;. V&agrave; rồi hắn cũng phải d&ugrave;ng h&agrave;ng &quot;đ&aacute;&quot; để thưởng cho đ&agrave;n em của hắn, cũng l&agrave; c&aacute;ch r&agrave;ng buộc để ch&uacute;ng kh&ocirc;ng thể tho&aacute;t khỏi con đường giang hồ khi đ&atilde; tr&oacute;t sa ch&acirc;n. Ma t&uacute;y, những cuộc chơi th&aacute;c loạn&hellip; sau đ&oacute; l&agrave; điều khiển tay ch&acirc;n phải đi l&agrave;m việc cho ch&uacute;ng như đ&acirc;m ch&eacute;m người, đ&ograve;i nợ, xiết nợ v&agrave; cướp t&agrave;i sản như vụ d&agrave;n kịch đ&aacute;nh ghen như tr&ecirc;n. Đ&oacute; l&agrave; những cuộc chơi &quot;mất người&quot; m&agrave; sau n&agrave;y, hắn ngộ ra nhưng đ&atilde; qu&aacute; muộn.</p>\r\n		<p>\r\n			Một khi tay đ&atilde; nh&uacute;ng ch&agrave;m th&igrave; kh&oacute; r&uacute;t ra được. Tuấn &quot;bạc&quot; t&acirc;m sự rằng, nhiều l&uacute;c, nghĩ đến bố mẹ, gia đ&igrave;nh v&agrave; nhất l&agrave; đứa con thơ, hắn muốn từ bỏ thế giới giang hồ để quay về cuộc sống b&igrave;nh thường. Nhưng h&igrave;nh như l&agrave;m người lương thiện với một kẻ giang hồ kh&oacute; qu&aacute;. &quot;Nhiều l&uacute;c em muốn dừng lại. Đ&oacute; l&agrave; l&uacute;c nghĩ đến bố mẹ, con c&aacute;i. Muốn dừng lại nhưng c&ocirc;ng việc kh&ocirc;ng cho m&igrave;nh dừng. Dấn th&acirc;n v&agrave;o chốn giang hồ, nhiều l&uacute;c cũng đau đầu, mệt mỏi lắm, l&uacute;c n&agrave;o cũng chỉ lo nghĩ về tiền, rồi r&agrave;ng buộc bởi c&aacute;c mối quan hệ m&agrave; c&oacute; cả tiền nằm trong đ&oacute;&quot; - Tuấn &quot;bạc&quot; đ&atilde; khai như vậy.</p>\r\n		<p>\r\n			Trong cuốn sổ tay, vừa l&agrave; sổ ghi nợ, vừa l&agrave; &quot;sổ thơ&quot; của kẻ giang hồ c&oacute; t&ecirc;n Tuấn &quot;bạc&quot; n&agrave;y m&agrave; Cơ quan C&ocirc;ng an thu giữ, l&agrave; những d&ograve;ng t&acirc;m sự đau đớn, những giờ ph&uacute;t đấu tranh tư tưởng của một kẻ giang hồ muốn l&agrave;m lại cuộc đời. Trước khi bị bắt, đ&atilde; c&oacute; l&uacute;c Tuấn &quot;bạc&quot; ngộ ra rằng: &quot;Đ&atilde; đến l&uacute;c bu&ocirc;ng tất cả/ Thế giới giang hồ đầy rẫy cạm bẫy/ V&agrave; những nguy hiểm kh&ocirc;n lường/ Giờ dừng tay vẫn c&ograve;n chưa qu&aacute; muộn. Khi ph&aacute;p luật chưa sờ tới/ V&agrave; cho ta v&agrave;o v&ograve;ng tr&ograve;n c&ocirc;ng l&yacute;/ H&atilde;y vứt bỏ tất cả đi/ Khi vẫn c&ograve;n niềm tin v&agrave; hy vọng/ Tương lai vẫn c&ograve;n s&aacute;ng ngời&hellip;&quot;.</p>\r\n		<p>\r\n			Trước khi v&agrave;o nh&agrave; tạm giữ C&ocirc;ng an quận Đống Đa, Tuấn &quot;bạc&quot; nuối tiếc n&oacute;i rằng, nếu được l&agrave;m lại, hắn sẽ chọn một nghề tử tế để kiếm sống, bởi thế giới giang hồ hiểm độc đ&atilde; khiến hắn đ&aacute;nh mất m&igrave;nh, v&agrave; đ&aacute;nh mất m&aacute;i ấm gia đ&igrave;nh m&agrave; hắn đ&atilde; từng c&oacute;</p>\r\n	</div>\r\n</div>\r\n<p>\r\n	&nbsp;</p>\r\n', 1, 1333847152, 1),
(2, 'Rolls-Royce Phantom Coupe in hình đầu ngựa', '', 0x48c3a36e67207369c3aa752073616e6720416e68207175e1bb9163207469e1babf74206ce1bb992062e1baa36e20c491e1bab763206269e1bb8774206368e1bb892063c3b3206de1bb997420636869e1babf6320647579206e68e1baa5742063e1bba761205068616e746f6d20436f7570652e20586520c491c6b0e1bba3632062c3a16e20e1bb9f2043c3a163207469e1bb83752076c6b0c6a16e67207175e1bb91632041726162207468e1bb916e67206e68e1baa5742076e1bb9b692068c3ac6e6820c491e1baa775206e67e1bbb16120696e207472c3aa6e2074e1bbb16120c491e1baa775206768e1babf206e67e1bb93692e, '<h2 class="Lead">\r\n	H&atilde;ng si&ecirc;u sang Anh quốc tiết lộ bản đặc biệt chỉ c&oacute; một chiếc duy nhất của Phantom Coupe. Xe được b&aacute;n ở C&aacute;c tiểu vương quốc Arab thống nhất với h&igrave;nh đầu ngựa in tr&ecirc;n tựa đầu ghế ngồi.</h2>\r\n<p class="Normal">\r\n	Phantom Coupe phi&ecirc;n bản độc nhất c&oacute; nội thất đặc biệt với ngoại thất c&oacute; họa tiết nhấn nh&aacute;. Xe được đặt t&ecirc;n Mirage, theo t&ecirc;n ch&uacute; ngựa từng được vua Faisal của Iraq mua lại từ bộ lạc Sebaa v&agrave;o những năm đầu thế kỷ 20, sau đ&oacute; thuộc về Lady Wentworth ở Anh rồi Roger Selby ở Mỹ.</p>\r\n<p class="Normal">\r\n	Mirage l&agrave; nh&agrave; v&ocirc; địch ở cả hai quốc gia, khi chiến thắng ở Richmond Royal Show năm 1926 v&agrave; trở th&agrave;nh American Champion tại Natiolan Arabian Show tại Nashville năm 1934. Được sử dụng l&agrave;m ngựa giống suốt những năm 20 v&agrave; 30 của thế kỷ trước, d&ograve;ng m&aacute;u của Mirage hiện vẫn chảy trong nhiều giống ngựa Arab ng&agrave;y nay.</p>\r\n', 2, 1333854414, 1),
(3, 'Người ''trắng án'' sau 2 lần bị tuyên tử hình lại ra tòa', NULL, '', '<h2 class="Lead">\r\n	Vẫn mặc chiếc &aacute;o thun trắng của những lần ra to&agrave; trước, s&aacute;ng nay, L&ecirc; B&aacute; Mai tỏ ra b&igrave;nh thản khi được đưa đến ph&ograve;ng xử. Gần 10 năm sau khi vụ &aacute;n xảy ra v&agrave; cũng từng ấy lần hầu to&agrave;, số phận ph&aacute;p l&yacute; của bị c&aacute;o vẫn chưa được định đoạt.</h2>\r\n<div class="reference_news">\r\n	<a class="Lead" href="http://vnexpress.net/tin-tuc/phap-luat/hoan-xu-phuc-tham-nguoi-hai-lan-bi-tuyen-an-tu-hi-nh-2744629.html">Ho&atilde;n xử ph&uacute;c thẩm người hai lần bị tuy&ecirc;n &aacute;n tử hình</a><br />\r\n	<a class="Lead" href="http://vnexpress.net/tin-tuc/phap-luat/nguoi-trang-an-bi-tuyen-tu-chung-than-2409671.html">Người &#39;trắng &aacute;n&#39; bị tuy&ecirc;n t&ugrave; chung th&acirc;n</a></div>\r\n<p class="Normal">\r\n	Ng&agrave;y 30/8, T&ograve;a Ph&uacute;c thẩm TAND Tối cao tại TP HCM đưa ra x&eacute;t xử ph&uacute;c thẩm lần 3 đối với bị c&aacute;o L&ecirc; B&aacute; Mai (31 tuổi, ngụ tại B&igrave;nh Phước) về c&aacute;c tội Giết người v&agrave; Hiếp d&acirc;m trẻ em. Trong lần xử gần đ&acirc;y, Mai bị tuy&ecirc;n &aacute;n chung th&acirc;n cho cả 2 tội nhưng lại bị VKS kh&aacute;ng nghị theo hướng tăng h&igrave;nh phạt l&ecirc;n tử h&igrave;nh.</p>\r\n<p>\r\n	Từ s&aacute;ng sớm, bố mẹ bị c&aacute;o đ&atilde; c&oacute; mặt với nhiều lo lắng. C&ograve;n bố mẹ nạn nh&acirc;n, vợ chồng &ocirc;ng Điểu Cẩn - vẫn d&aacute;ng vẻ khắc khổ, lầm lũi bước v&agrave;o ph&ograve;ng xử. Một số nh&acirc;n chứng được triệu tập cũng đến trễ n&ecirc;n phi&ecirc;n t&ograve;a diễn ra muộn hơn thường lệ.</p>\r\n<p>\r\n	B&agrave; Nguyễn Thị Ho&agrave;i Thu - nguy&ecirc;n Ủy vi&ecirc;n ban chấp h&agrave;nh Trung ương Đảng, nguy&ecirc;n Chủ nhiệm Ủy ban C&aacute;c vấn đề x&atilde; hội của Quốc hội cũng c&oacute; mặt từ sớm để dự phi&ecirc;n xử.</p>\r\n<table align="center" border="0" cellpadding="3" cellspacing="0" class="tplCaption" width="1">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n				<img alt="le-ba-mai-2-1377828972.jpg" src="http://m.f29.img.vnecdn.net/2013/08/30/le-ba-mai-2-1377828972.jpg" width="400" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td class="Image">\r\n				Vẫn trong chiếc &aacute;o thun trắng cổ xanh như những lần ra to&agrave; trước, Mai tỏ ra b&igrave;nh tĩnh d&ugrave; đang bị VKS đề nghị tăng &aacute;n l&ecirc;n tử h&igrave;nh. Ảnh: <em>Hải Duy&ecirc;n.</em></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<p>\r\n	T&iacute;nh từ thời điểm xảy ra cho đến nay, vụ &aacute;n đ&atilde; k&eacute;o d&agrave;i gần 10 năm với tổng cộng 3 phi&ecirc;n xử sơ thẩm, 3 phi&ecirc;n ph&uacute;c thẩm v&agrave; nhiều lần kh&aacute;ng nghị, gi&aacute;m đốc thẩm, hủy &aacute;n trả hồ sơ điều tra lại.&nbsp;</p>\r\n<p>\r\n	Cho rằng vụ &aacute;n c&oacute; nhiều vi phạm tố tụng, k&eacute;o d&agrave;i qu&aacute; l&acirc;u g&acirc;y l&atilde;ng ph&iacute; tiền cho x&atilde; hội, hồi giữa th&aacute;ng 5, b&agrave; Thu đ&atilde; c&oacute; buổi đi thực nghiệm hiện trường nơi xảy ra vụ &aacute;n c&ugrave;ng với luật sư Huỳnh Thế T&acirc;n (luật sư mới được gia đ&igrave;nh L&ecirc; B&aacute; Mai thu&ecirc; trong lần ra t&ograve;a n&agrave;y). Kh&ocirc;ng l&acirc;u sau đ&oacute;, tổ c&ocirc;ng t&aacute;c thuộc VKSND Tối cao cũng đ&atilde; xuống hiện trường vụ &aacute;n để thực nghiệm, kiểm tra v&agrave; thu thập chứng cứ.</p>\r\n<p>\r\n	Theo bản &aacute;n sơ thẩm, Mai l&agrave;m thu&ecirc; cho trang trại của &ocirc;ng Dương B&aacute; Tu&acirc;n (x&atilde; An Khương, huyện Hớn Quản, tỉnh B&igrave;nh Phước). S&aacute;ng 11/12/2004, trong l&uacute;c đi rải ph&acirc;n cho c&acirc;y trồng, Mai ph&aacute;t hiện b&eacute; &Uacute;t (11 tuổi) v&agrave; Hằng (13 tuổi) đi m&oacute;t củ sắn liền nảy sinh t&agrave; &yacute;. Mai lấy xe m&aacute;y chở &Uacute;t đến khu vườn m&iacute;t gần đ&oacute; để giở tr&ograve; đồi bại sau đ&oacute; d&ugrave;ng quần của nạn nh&acirc;n để siết cổ c&ocirc; b&eacute; đến chết. G&acirc;y &aacute;n xong, Mai v&ugrave;i x&aacute;c nạn nh&acirc;n gần c&acirc;y m&iacute;t rồi quay về ch&ograve;i tắm rửa v&agrave; ăn cơm. Biết &Uacute;t l&ecirc;n xe đi c&ugrave;ng Mai, Hằng đuổi theo nhưng kh&ocirc;ng kịp n&ecirc;n quay về b&aacute;o cho người th&acirc;n.</p>\r\n<p>\r\n	Năm 2005, TAND tỉnh B&igrave;nh Phước đ&atilde; x&eacute;t xử sơ thẩm v&agrave; tuy&ecirc;n phạt Mai mức &aacute;n tử h&igrave;nh cho cả hai tội Hiếp d&acirc;m trẻ em v&agrave; Giết người. T&ograve;a ph&uacute;c thẩm TAND Tối cao tại TP HCM sau đ&oacute; giữ nguy&ecirc;n bản &aacute;n n&agrave;y. Mai k&ecirc;u oan v&agrave; cho rằng bị cơ quan điều tra &eacute;p cung n&ecirc;n mới nhận tội.</p>\r\n<p>\r\n	Ng&agrave;y 12/12/2006, Viện trưởng VKSND Tối cao ra kh&aacute;ng nghị gi&aacute;m đốc thẩm, đ&aacute;nh gi&aacute; cấp sơ thẩm v&agrave; ph&uacute;c thẩm kết tội Mai l&agrave; &quot;chưa c&oacute; căn cứ vững chắc&quot;, y&ecirc;u cầu l&agrave;m r&otilde; một số vấn đề. Sau đ&oacute;, Hội đồng Thẩm ph&aacute;n TAND Tối cao ra quyết định gi&aacute;m đốc thẩm, hủy cả hai bản &aacute;n để điều tra lại v&igrave; &quot;c&oacute; vi phạm nghi&ecirc;m trọng về tố tụng v&agrave; c&oacute; nhiều vấn đề m&acirc;u thuẫn cần được l&agrave;m r&otilde;&quot;.</p>\r\n<p>\r\n	Th&aacute;ng 5/2011, TAND tỉnh B&igrave;nh Phước đưa vụ &aacute;n ra xử sơ thẩm lần hai. Cho rằng kh&ocirc;ng đủ chứng cứ buộc tội, HĐXX tuy&ecirc;n bị c&aacute;o &quot;kh&ocirc;ng phạm tội&quot;, trả tự do cho Mai ngay tại t&ograve;a. Kh&ocirc;ng đồng &yacute; với quyết định n&agrave;y, VKSND tỉnh B&igrave;nh Phước đ&atilde; kh&aacute;ng nghị, y&ecirc;u cầu T&ograve;a Ph&uacute;c thẩm TAND Tối cao tại TP HCM x&eacute;t xử lại theo hướng buộc tội đối với bị c&aacute;o. Theo cơ quan c&ocirc;ng tố, những chứng cứ thu thập được c&oacute; đủ cơ sở kết luận Mai phạm tội Hiếp d&acirc;m trẻ em v&agrave; Giết người. Vụ &aacute;n mặc d&ugrave; c&oacute; một số sai s&oacute;t về tố tụng nhưng kh&ocirc;ng ảnh hưởng nghi&ecirc;m trọng tới qu&aacute; tr&igrave;nh giải quyết.</p>\r\n<p>\r\n	Sau một năm được trả tự do, ng&agrave;y 18/5/2012, Mai bị c&ocirc;ng an bắt giam lại với l&yacute; do &quot;để đảm bảo cho việc x&eacute;t xử ph&uacute;c thẩm v&agrave; thi h&agrave;nh &aacute;n&quot;. Trong phi&ecirc;n ph&uacute;c thẩm lần hai mở v&agrave;o th&aacute;ng 6/2012, TAND Tối cao tại TP HCM cho rằng qu&aacute; tr&igrave;nh điều tra c&oacute; thiếu s&oacute;t nhưng kh&ocirc;ng l&agrave;m thay đổi bản chất vụ &aacute;n, &quot;t&ograve;a sơ thẩm tuy&ecirc;n bị c&aacute;o Mai kh&ocirc;ng phạm tội l&agrave; bỏ lọt tội phạm&quot;. V&igrave; vậy, T&ograve;a ph&uacute;c thẩm tuy&ecirc;n hủy &aacute;n để điều tra v&agrave; x&eacute;t xử lại từ đầu.</p>\r\n<p>\r\n	Hồi đầu năm, TAND tỉnh B&igrave;nh Phước xử sơ thẩm lần 3 tuy&ecirc;n phạt Mai t&ugrave; chung th&acirc;n sau 2 lần được tuy&ecirc;n tử h&igrave;nh, một lần trắng &aacute;n. Ngay sau đ&oacute;, VKSND c&ugrave;ng cấp lại kh&aacute;ng nghị y&ecirc;u cầu T&ograve;a Ph&uacute;c thẩm TAND tối cao tại TP HCM xử bị c&aacute;o &aacute;n tử h&igrave;nh, c&ograve;n Mai tiếp tục k&ecirc;u oan.</p>\r\n', 3, 2013, 1),
(4, 'Người ''trắng án'' sau 2 lần bị tuyên tử hình lại ra tòa', NULL, 0x4ce1baa1692062e1bb8b2072612074c3b261, '<h2 class="Lead">\r\n	Vẫn mặc chiếc &aacute;o thun trắng của những lần ra to&agrave; trước, s&aacute;ng nay, L&ecirc; B&aacute; Mai tỏ ra b&igrave;nh thản khi được đưa đến ph&ograve;ng xử. Gần 10 năm sau khi vụ &aacute;n xảy ra v&agrave; cũng từng ấy lần hầu to&agrave;, số phận ph&aacute;p l&yacute; của bị c&aacute;o vẫn chưa được định đoạt.</h2>\r\n<div class="reference_news">\r\n	<a class="Lead" href="http://vnexpress.net/tin-tuc/phap-luat/hoan-xu-phuc-tham-nguoi-hai-lan-bi-tuyen-an-tu-hi-nh-2744629.html">Ho&atilde;n xử ph&uacute;c thẩm người hai lần bị tuy&ecirc;n &aacute;n tử hình</a><br />\r\n	<a class="Lead" href="http://vnexpress.net/tin-tuc/phap-luat/nguoi-trang-an-bi-tuyen-tu-chung-than-2409671.html">Người &#39;trắng &aacute;n&#39; bị tuy&ecirc;n t&ugrave; chung th&acirc;n</a></div>\r\n<p class="Normal">\r\n	Ng&agrave;y 30/8, T&ograve;a Ph&uacute;c thẩm TAND Tối cao tại TP HCM đưa ra x&eacute;t xử ph&uacute;c thẩm lần 3 đối với bị c&aacute;o L&ecirc; B&aacute; Mai (31 tuổi, ngụ tại B&igrave;nh Phước) về c&aacute;c tội Giết người v&agrave; Hiếp d&acirc;m trẻ em. Trong lần xử gần đ&acirc;y, Mai bị tuy&ecirc;n &aacute;n chung th&acirc;n cho cả 2 tội nhưng lại bị VKS kh&aacute;ng nghị theo hướng tăng h&igrave;nh phạt l&ecirc;n tử h&igrave;nh.</p>\r\n<p>\r\n	Từ s&aacute;ng sớm, bố mẹ bị c&aacute;o đ&atilde; c&oacute; mặt với nhiều lo lắng. C&ograve;n bố mẹ nạn nh&acirc;n, vợ chồng &ocirc;ng Điểu Cẩn - vẫn d&aacute;ng vẻ khắc khổ, lầm lũi bước v&agrave;o ph&ograve;ng xử. Một số nh&acirc;n chứng được triệu tập cũng đến trễ n&ecirc;n phi&ecirc;n t&ograve;a diễn ra muộn hơn thường lệ.</p>\r\n<p>\r\n	B&agrave; Nguyễn Thị Ho&agrave;i Thu - nguy&ecirc;n Ủy vi&ecirc;n ban chấp h&agrave;nh Trung ương Đảng, nguy&ecirc;n Chủ nhiệm Ủy ban C&aacute;c vấn đề x&atilde; hội của Quốc hội cũng c&oacute; mặt từ sớm để dự phi&ecirc;n xử.</p>\r\n<table align="center" border="0" cellpadding="3" cellspacing="0" class="tplCaption" width="1">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n				<img alt="le-ba-mai-2-1377828972.jpg" src="http://m.f29.img.vnecdn.net/2013/08/30/le-ba-mai-2-1377828972.jpg" width="400" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td class="Image">\r\n				Vẫn trong chiếc &aacute;o thun trắng cổ xanh như những lần ra to&agrave; trước, Mai tỏ ra b&igrave;nh tĩnh d&ugrave; đang bị VKS đề nghị tăng &aacute;n l&ecirc;n tử h&igrave;nh. Ảnh: <em>Hải Duy&ecirc;n.</em></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<p>\r\n	T&iacute;nh từ thời điểm xảy ra cho đến nay, vụ &aacute;n đ&atilde; k&eacute;o d&agrave;i gần 10 năm với tổng cộng 3 phi&ecirc;n xử sơ thẩm, 3 phi&ecirc;n ph&uacute;c thẩm v&agrave; nhiều lần kh&aacute;ng nghị, gi&aacute;m đốc thẩm, hủy &aacute;n trả hồ sơ điều tra lại.&nbsp;</p>\r\n<p>\r\n	Cho rằng vụ &aacute;n c&oacute; nhiều vi phạm tố tụng, k&eacute;o d&agrave;i qu&aacute; l&acirc;u g&acirc;y l&atilde;ng ph&iacute; tiền cho x&atilde; hội, hồi giữa th&aacute;ng 5, b&agrave; Thu đ&atilde; c&oacute; buổi đi thực nghiệm hiện trường nơi xảy ra vụ &aacute;n c&ugrave;ng với luật sư Huỳnh Thế T&acirc;n (luật sư mới được gia đ&igrave;nh L&ecirc; B&aacute; Mai thu&ecirc; trong lần ra t&ograve;a n&agrave;y). Kh&ocirc;ng l&acirc;u sau đ&oacute;, tổ c&ocirc;ng t&aacute;c thuộc VKSND Tối cao cũng đ&atilde; xuống hiện trường vụ &aacute;n để thực nghiệm, kiểm tra v&agrave; thu thập chứng cứ.</p>\r\n<p>\r\n	Theo bản &aacute;n sơ thẩm, Mai l&agrave;m thu&ecirc; cho trang trại của &ocirc;ng Dương B&aacute; Tu&acirc;n (x&atilde; An Khương, huyện Hớn Quản, tỉnh B&igrave;nh Phước). S&aacute;ng 11/12/2004, trong l&uacute;c đi rải ph&acirc;n cho c&acirc;y trồng, Mai ph&aacute;t hiện b&eacute; &Uacute;t (11 tuổi) v&agrave; Hằng (13 tuổi) đi m&oacute;t củ sắn liền nảy sinh t&agrave; &yacute;. Mai lấy xe m&aacute;y chở &Uacute;t đến khu vườn m&iacute;t gần đ&oacute; để giở tr&ograve; đồi bại sau đ&oacute; d&ugrave;ng quần của nạn nh&acirc;n để siết cổ c&ocirc; b&eacute; đến chết. G&acirc;y &aacute;n xong, Mai v&ugrave;i x&aacute;c nạn nh&acirc;n gần c&acirc;y m&iacute;t rồi quay về ch&ograve;i tắm rửa v&agrave; ăn cơm. Biết &Uacute;t l&ecirc;n xe đi c&ugrave;ng Mai, Hằng đuổi theo nhưng kh&ocirc;ng kịp n&ecirc;n quay về b&aacute;o cho người th&acirc;n.</p>\r\n<p>\r\n	Năm 2005, TAND tỉnh B&igrave;nh Phước đ&atilde; x&eacute;t xử sơ thẩm v&agrave; tuy&ecirc;n phạt Mai mức &aacute;n tử h&igrave;nh cho cả hai tội Hiếp d&acirc;m trẻ em v&agrave; Giết người. T&ograve;a ph&uacute;c thẩm TAND Tối cao tại TP HCM sau đ&oacute; giữ nguy&ecirc;n bản &aacute;n n&agrave;y. Mai k&ecirc;u oan v&agrave; cho rằng bị cơ quan điều tra &eacute;p cung n&ecirc;n mới nhận tội.</p>\r\n<p>\r\n	Ng&agrave;y 12/12/2006, Viện trưởng VKSND Tối cao ra kh&aacute;ng nghị gi&aacute;m đốc thẩm, đ&aacute;nh gi&aacute; cấp sơ thẩm v&agrave; ph&uacute;c thẩm kết tội Mai l&agrave; &quot;chưa c&oacute; căn cứ vững chắc&quot;, y&ecirc;u cầu l&agrave;m r&otilde; một số vấn đề. Sau đ&oacute;, Hội đồng Thẩm ph&aacute;n TAND Tối cao ra quyết định gi&aacute;m đốc thẩm, hủy cả hai bản &aacute;n để điều tra lại v&igrave; &quot;c&oacute; vi phạm nghi&ecirc;m trọng về tố tụng v&agrave; c&oacute; nhiều vấn đề m&acirc;u thuẫn cần được l&agrave;m r&otilde;&quot;.</p>\r\n<p>\r\n	Th&aacute;ng 5/2011, TAND tỉnh B&igrave;nh Phước đưa vụ &aacute;n ra xử sơ thẩm lần hai. Cho rằng kh&ocirc;ng đủ chứng cứ buộc tội, HĐXX tuy&ecirc;n bị c&aacute;o &quot;kh&ocirc;ng phạm tội&quot;, trả tự do cho Mai ngay tại t&ograve;a. Kh&ocirc;ng đồng &yacute; với quyết định n&agrave;y, VKSND tỉnh B&igrave;nh Phước đ&atilde; kh&aacute;ng nghị, y&ecirc;u cầu T&ograve;a Ph&uacute;c thẩm TAND Tối cao tại TP HCM x&eacute;t xử lại theo hướng buộc tội đối với bị c&aacute;o. Theo cơ quan c&ocirc;ng tố, những chứng cứ thu thập được c&oacute; đủ cơ sở kết luận Mai phạm tội Hiếp d&acirc;m trẻ em v&agrave; Giết người. Vụ &aacute;n mặc d&ugrave; c&oacute; một số sai s&oacute;t về tố tụng nhưng kh&ocirc;ng ảnh hưởng nghi&ecirc;m trọng tới qu&aacute; tr&igrave;nh giải quyết.</p>\r\n<p>\r\n	Sau một năm được trả tự do, ng&agrave;y 18/5/2012, Mai bị c&ocirc;ng an bắt giam lại với l&yacute; do &quot;để đảm bảo cho việc x&eacute;t xử ph&uacute;c thẩm v&agrave; thi h&agrave;nh &aacute;n&quot;. Trong phi&ecirc;n ph&uacute;c thẩm lần hai mở v&agrave;o th&aacute;ng 6/2012, TAND Tối cao tại TP HCM cho rằng qu&aacute; tr&igrave;nh điều tra c&oacute; thiếu s&oacute;t nhưng kh&ocirc;ng l&agrave;m thay đổi bản chất vụ &aacute;n, &quot;t&ograve;a sơ thẩm tuy&ecirc;n bị c&aacute;o Mai kh&ocirc;ng phạm tội l&agrave; bỏ lọt tội phạm&quot;. V&igrave; vậy, T&ograve;a ph&uacute;c thẩm tuy&ecirc;n hủy &aacute;n để điều tra v&agrave; x&eacute;t xử lại từ đầu.</p>\r\n<p>\r\n	Hồi đầu năm, TAND tỉnh B&igrave;nh Phước xử sơ thẩm lần 3 tuy&ecirc;n phạt Mai t&ugrave; chung th&acirc;n sau 2 lần được tuy&ecirc;n tử h&igrave;nh, một lần trắng &aacute;n. Ngay sau đ&oacute;, VKSND c&ugrave;ng cấp lại kh&aacute;ng nghị y&ecirc;u cầu T&ograve;a Ph&uacute;c thẩm TAND tối cao tại TP HCM xử bị c&aacute;o &aacute;n tử h&igrave;nh, c&ograve;n Mai tiếp tục k&ecirc;u oan.</p>\r\n', 3, 2013, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ktv_shop`
--

CREATE TABLE IF NOT EXISTS `ktv_shop` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `fk_category` int(11) DEFAULT NULL,
  `feed` varchar(255) DEFAULT NULL,
  `size` varchar(50) DEFAULT NULL,
  `price` varchar(20) DEFAULT NULL,
  `description` longtext,
  `img_1` varchar(255) DEFAULT NULL,
  `img_2` varchar(255) DEFAULT NULL,
  `img_3` varchar(255) DEFAULT NULL,
  `status` int(1) DEFAULT '1',
  `sort` int(11) DEFAULT '0',
  `showproduct` int(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `ktv_shop`
--

INSERT INTO `ktv_shop` (`id`, `name`, `fk_category`, `feed`, `size`, `price`, `description`, `img_1`, `img_2`, `img_3`, `status`, `sort`, `showproduct`) VALUES
(1, 'Kệ đứng tivi', 8, 'gỗ tự nhiên', '34x30', '30000 VNĐ', '<p>\r\n	Chưa biết n&oacute; l&agrave; dfsdfsd fskfsdfs dfsdfsdfs dfsdf sdf&nbsp; Chưa biết n&oacute; l&agrave; dfsdfsd fskfsdfs dfsdfsdfs dfsdf sdf&nbsp; Chưa biết n&oacute; l&agrave; dfsdfsd fskfsdfs dfsdfsdfs dfsdf sdf&nbsp; Chưa biết n&oacute; l&agrave; dfsdfsd fskfsdfs dfsdfsdfs dfsdf sdf&nbsp;&nbsp; Chưa biết n&oacute; l&agrave; dfsdfsd fskfsdfs dfsdfsdfs dfsdf sdf&nbsp; Chưa biết n&oacute; l&agrave; dfsdfsd fskfsdfs dfsdfsdfs dfsdf sdf&nbsp;&nbsp; Chưa biết n&oacute; l&agrave; dfsdfsd fskfsdfs dfsdfsdfs dfsdf sdf&nbsp; Chưa biết n&oacute; l&agrave; dfsdfsd fskfsdfs dfsdfsdfs dfsdf sdf&nbsp;&nbsp; Chưa biết n&oacute; l&agrave; dfsdfsd fskfsdfs dfsdfsdfs dfsdf sdf&nbsp; Chưa biết n&oacute; l&agrave; dfsdfsd fskfsdfs dfsdfsdfs dfsdf sdf&nbsp;&nbsp; Chưa biết n&oacute; l&agrave; dfsdfsd fskfsdfs dfsdfsdfs dfsdf sdf&nbsp; Chưa biết n&oacute; l&agrave; dfsdfsd fskfsdfs dfsdfsdfs dfsdf sdf&nbsp; Chưa biết n&oacute; l&agrave; dfsdfsd fskfsdfs dfsdfsdfs dfsdf sdf&nbsp;</p>\r\n', '14/12/65071214.jpg', 'bd/96/a45096bd.jpg', '3d/cc/8da6cc3d.jpg', 0, 2, 0),
(2, 'Cùi mía tivi nè', 8, 'fsdfdf', 'sdfsdf', 'dsfsdfsf', '<p>\r\n	dfs fsdfsd fsdfsd fdsfsd fsdfs fsdf</p>\r\n', '57/bf/cdbfbf57.jpg', '99/76/bc357699.jpg', 'c4/bf/795fbfc4.', 0, 1, 0),
(3, 'ghế điện', 8, 'điện', '454x22', '2000000 VNĐ', '<p>\r\n	&nbsp;fdgdfg dfgdfgd gdfg dfgdf</p>\r\n', 'f2/76/4b3a76f2.jpg', NULL, '73/db/abe5db73.jpg', 0, 10, 1),
(4, 'ghế điện Tesstdfs fsd', 1, 'điện', '454x22 CM', '2000000 VNĐ', '<p>\r\n	&nbsp;fdgdfg dfgdfgd gdfg dfgdf</p>\r\n', '5e/1b/87811b5e.jpg', '50/6d/28796d50.jpg', NULL, 0, 10, 0),
(5, 'AC003', 7, 'Vải cao cấp', '82cm * 96cm * 101cm', '5,000,000', '<p>\r\n	Ghế Armchair vải cao cấp</p>\r\n<p>\r\n	<span style="font-size:9px;">Source: Ikea</span></p>\r\n', 'd4/38/ae6238d4.jpg', '36/86/95738636.jpg', '39/be/6056be39.jpg', 0, 0, 1),
(6, 'S001', 7, 'Da bò tự nhiên', '260cm*160cm*80cm', '32,000,000', '<p>\r\n	Sofa g&oacute;c da b&ograve; tự nhi&ecirc;n nhập khẩu Th&aacute;i Lan</p>\r\n<p>\r\n	Source: Ikea</p>\r\n', 'ce/ca/7a58cace.jpg', NULL, NULL, 1, 0, 1),
(7, 'Mezoo Sofa', 7, 'vải cao cấp', '2400 * 1400 * 900', '13.50.000 VND', '', 'cc/4b/300d4bcc.jpeg', NULL, NULL, 1, 4, 0),
(8, 'ACOO3', 7, 'vải cao cấp', '', '5.000.000 VND', '', '48/01/9b410148.jpg', '04/0d/cb4b0d04.jpg', '68/f3/5e85f368.jpg', 1, 4, 1),
(9, 'Sofa góc S003', 7, 'Khung gỗ dầu, mút D40, Vải cao cấp Indo', '140cm*200cm*80cm', '12.000.000', '', '26/a4/edf7a426.jpg', NULL, NULL, 1, 0, 1),
(10, 'S005', 7, 'Vải cao cấp, Khung gỗ căm xe, Mút D40', '220 cm* 85cm', '9,000,000', '', '1a/c8/2698c81a.jpg', '1c/a6/5ca2a61c.jpg', NULL, 1, 0, 1),
(11, 'Bed 001', 16, 'Gỗ Melamine An Cường', '160cm*200cm ', '5,500,000', '<p>\r\n	Gỗ Melamine cao cấp An Cường, C&oacute; ngăn k&eacute;o dưới.</p>\r\n', '15/e6/52a4e615.jpg', '65/dc/3ae8dc65.jpg', NULL, 1, 0, 1),
(12, 'Bed 002', 16, 'Gỗ Melamine An Cường', '160cm*200cm', '4,500,000', '', 'b8/25/968625b8.jpg', 'a7/10/836a10a7.jpg', '1e/44/b9bc441e.jpg', 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ktv_user`
--

CREATE TABLE IF NOT EXISTS `ktv_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `ktv_user`
--

INSERT INTO `ktv_user` (`id`, `username`, `password`, `full_name`, `last_login`) VALUES
(1, 'admin', 'e10adc3949ba59abbe56e057f20f883e', 'Admin', NULL);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
