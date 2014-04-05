-- phpMyAdmin SQL Dump
-- version 4.0.5
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 04, 2014 at 08:39 PM
-- Server version: 5.5.23
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `ktv_config`
--

INSERT INTO `ktv_config` (`id`, `key_config`, `key_value`) VALUES
(1, 'ABOUT', '<p>\r\n	GRANDDESIGN l&agrave; c&ocirc;ng ty tư vấn thiết kế được th&agrave;nh lập theo h&igrave;nh thức cổ phần. Hoạt động dưới sự điều h&agrave;nh của ban gi&aacute;m đốc v&agrave; hội đồng quản trị, c&ugrave;ng với đội ngũ c&aacute;c kiến tr&uacute;c sư c&oacute; năng lực chuy&ecirc;n m&ocirc;n cao v&agrave; phong c&aacute;ch l&agrave;m việc chuy&ecirc;n nghiệp. Quan điểm thiết kế: Ph&acirc;n t&iacute;ch kh&ocirc;ng gian sống từ mọi g&oacute;c độ, nghi&ecirc;n cứu những ưu ti&ecirc;n của cuộc sống. GRANDDESIGN đề xuất c&aacute;c giải ph&aacute;p thiết kế ph&ugrave; hợp nhất cho từng kh&ocirc;ng gian trong ng&ocirc;i nh&agrave; bạn</p>\r\n'),
(2, 'FACTORY', '<p>\r\n	Đang cập nhật ....</p>\r\n'),
(3, 'FOOTERHCM', '<p>\r\n	216 Nguyễn Thị Minh Khai, Quận 3, Tp.HCM</p>\r\n<p>\r\n	<span>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span><span style="color:#ff0000;"><span> </span><span>Hotline</span></span><span>:</span> 0916.979.777 ( Mr Minh )</p>\r\n<p>\r\n	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;0902.797.548 ( Mr Sơn )</p>\r\n'),
(4, 'FOOTERHANOI', '<p>\r\n	15/36 Nguyễn Viết Xu&acirc;n - H&agrave; Nội</p>\r\n<p>\r\n	<span style="color:#ff0000;"><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; Hotline</span></span>: &nbsp;0985.37.3333 (Mr Hải )</p>\r\n<p>\r\n	&nbsp;</p>\r\n'),
(5, 'CONTACTHCM', '<p>\r\n	<span class="right">\r\n		216 Nguyễn Thị Minh Khai, Q.3, Tp.HCM</span> - 0916.979.777(Mr.Minh)</p>'),
(6, 'CONTACTHANOI', '<p>\r\n	<span class="right">15/36 Nguyễn Viết Xu&acirc;n - H&agrave; Nội</span> - 0985.37.3333 (Mr Hải)</p>\r\n'),
(7, 'CONTACTHCMLINK', '<iframe width="525" height="350" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.com/maps?f=q&source=s_q&hl=vi&geocode=&q=216+Nguy%E1%BB%85n+Th%E1%BB%8B+Minh+Khai,+Th%C3%A0nh+ph%E1%BB%91+H%E1%BB%93+Ch%C3%AD+Minh,+H%E1%BB%93+Ch%C3%AD+Minh,+Vi%E1%BB%87t+Nam&aq=0&oq=216+nguy%E1%BB%85n+th%E1%BB%8B+minh&sll=37.0625,-95.677068&sspn=37.188995,86.572266&ie=UTF8&hq=&hnear=216+Nguy%E1%BB%85n+Th%E1%BB%8B+Minh+Khai,+6,+H%E1%BB%93+Ch%C3%AD+Minh,+Vi%E1%BB%87t+Nam&t=m&z=14&iwloc=A&output=embed"></iframe><br /><small><a href="https://maps.google.com/maps?f=q&source=embed&hl=vi&geocode=&q=216+Nguy%E1%BB%85n+Th%E1%BB%8B+Minh+Khai,+Th%C3%A0nh+ph%E1%BB%91+H%E1%BB%93+Ch%C3%AD+Minh,+H%E1%BB%93+Ch%C3%AD+Minh,+Vi%E1%BB%87t+Nam&aq=0&oq=216+nguy%E1%BB%85n+th%E1%BB%8B+minh&sll=37.0625,-95.677068&sspn=37.188995,86.572266&ie=UTF8&hq=&hnear=216+Nguy%E1%BB%85n+Th%E1%BB%8B+Minh+Khai,+6,+H%E1%BB%93+Ch%C3%AD+Minh,+Vi%E1%BB%87t+Nam&t=m&z=14&iwloc=A" style="color:#0000FF;text-align:left">Xem Bản đồ cỡ lớn hơn</a></small>'),
(8, 'CONTACTHANOILINK', '<iframe width="525" height="350" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.com.au/maps?f=q&source=s_q&hl=en&geocode=&q=15%2F36+Nguy%E1%BB%85n+Vi%E1%BA%BFt+Xu%C3%A2n+-+H%C3%A0+N%E1%BB%99i&aq=&sll=-25.335448,135.745076&sspn=43.719032,86.572266&ie=UTF8&hq=15%2F36+Nguy%E1%BB%85n+Vi%E1%BA%BFt+Xu%C3%A2n+-&hnear=Hanoi,+Hoan+Kiem+District,+Hanoi,+Vietnam&t=m&cid=3316819898581495654&ll=21.021701,105.829239&spn=0.056083,0.072956&z=13&iwloc=A&output=embed"></iframe><br /><small><a href="https://maps.google.com.au/maps?f=q&source=embed&hl=en&geocode=&q=15%2F36+Nguy%E1%BB%85n+Vi%E1%BA%BFt+Xu%C3%A2n+-+H%C3%A0+N%E1%BB%99i&aq=&sll=-25.335448,135.745076&sspn=43.719032,86.572266&ie=UTF8&hq=15%2F36+Nguy%E1%BB%85n+Vi%E1%BA%BFt+Xu%C3%A2n+-&hnear=Hanoi,+Hoan+Kiem+District,+Hanoi,+Vietnam&t=m&cid=3316819898581495654&ll=21.021701,105.829239&spn=0.056083,0.072956&z=13&iwloc=A" style="color:#0000FF;text-align:left">View Larger Map</a></small>'),
(9, 'TITLE', 'GRANDDESIGN Saigon - Kiến trúc - Nội thất'),
(10, 'KEYWORDS', 'thiết kế nội thất, thiet ke noi that, nhà đẹp, thiet ke nha dep, xay nha dep, kiến trúc, nội thất, xây dựng'),
(11, 'DESCRIPTION', 'Nhà đẹp với phong cách thiết kế đơn giản và bố trí nội thất thông minh. Ánh sáng tràn ngập với các khung cửa kính lớn, thiên về cảnh quan xanh màu lá | granddesign.com.vn');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=28 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=34 ;

--
-- Dumping data for table `ktv_product`
--

INSERT INTO `ktv_product` (`id`, `product_name`, `fk_category`, `investors`, `unbuilt_area`, `address`, `time_finish`, `fk_imges`, `date_create`, `status`, `sort`, `ishowhot`) VALUES
(32, 'TT Giảng Võ', 3, 'Mr Tuấn', '80m2', 'Khu Tập Thể Giảng Võ', '10 Ngày', NULL, '2013-09-10 09:33:04', 0, 0, 0),
(33, '14/36 Nguyễn Viết Xuân', 3, 'Mr Khang', '40m2 * 3 Tầng', '14/36 Nguyễn Viết Xuân', '2 Tuần', NULL, '2013-09-10 09:36:15', 0, 0, 0);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `ktv_shop`
--

INSERT INTO `ktv_shop` (`id`, `name`, `fk_category`, `feed`, `size`, `price`, `description`, `img_1`, `img_2`, `img_3`, `status`, `sort`, `showproduct`) VALUES
(13, 'Sofa1', 7, 'Vai', 'Big', '5tr', '<p>\r\n	Oh yeah :)</p>\r\n', '49/6e/295f6e49.jpg', 'ed/2a/98f02aed.jpg', 'bb/9b/64fb9bbb.jpg', 1, 1, 1);

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