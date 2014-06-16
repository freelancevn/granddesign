-- phpMyAdmin SQL Dump
-- version 4.0.5
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 16, 2014 at 07:34 AM
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
-- Table structure for table `ktv_blogs`
--

CREATE TABLE IF NOT EXISTS `ktv_blogs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `visible` tinyint(1) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1' COMMENT '0:deleted',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `ktv_blogs`
--

INSERT INTO `ktv_blogs` (`id`, `description`, `link`, `visible`, `status`) VALUES
(1, 'Google+', 'http://googleplus', 1, 1),
(2, 'Facebook', 'http://facebook.com', 1, 1),
(3, 'http://haha.vn', 'http://haha.vn', 1, 1);

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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `ktv_category`
--

INSERT INTO `ktv_category` (`id`, `category_name`, `type`, `date_create`, `status`, `sort`) VALUES
(3, 'Biệt Thự', 0, '2014-06-10 05:51:27', 1, 3),
(4, 'Nhà Hàng, Khách Sạn, Spa', 0, '2013-08-27 15:09:49', 1, 4),
(5, 'Văn Phòng', 0, '2013-08-27 15:10:03', 1, 5),
(14, 'Nhà Phố', 0, '2013-09-10 22:00:34', 1, 7),
(17, 'Chung cư', 0, '2014-06-10 05:44:28', 1, 1),
(18, 'MDF', 1, '2014-06-10 06:06:59', 1, 1),
(19, 'MFC', 1, '2014-06-10 06:08:07', 1, 2),
(20, 'Polly Wood', 1, '2014-06-10 06:08:41', 1, 3),
(21, 'Vật Liệu Phủ Bề Mặt', 1, '2014-06-10 06:09:23', 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `ktv_clips`
--

CREATE TABLE IF NOT EXISTS `ktv_clips` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) NOT NULL,
  `embed` varchar(255) NOT NULL,
  `visible` tinyint(1) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1' COMMENT '0:deleted',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `ktv_clips`
--

INSERT INTO `ktv_clips` (`id`, `description`, `embed`, `visible`, `status`) VALUES
(1, 'BÍCH PHƯƠNG - Mình Yêu Nhau Đi [OFFICIAL MV] ', '<iframe width="560" height="315" src="//www.youtube.com/embed/X8mhF6HgzVA" frameborder="0" allowfullscreen></iframe>', 1, 1),
(2, 'Bai noi chuyen cua Thieu tuong Nguyen Thanh Tuan ve bien Dong ', '<iframe width="560" height="315" src="//www.youtube.com/embed/N59a8SivrUE" frameborder="0" allowfullscreen></iframe>', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ktv_config`
--

CREATE TABLE IF NOT EXISTS `ktv_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key_config` varchar(255) DEFAULT NULL,
  `key_value` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

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
(12, 'PRICETABLE', '<table border="1" cellpadding="1" cellspacing="1" style="width:500px">\r\n	<tbody>\r\n		<tr>\r\n			<td>T&ecirc;n</td>\r\n			<td>Gi&aacute; (USD)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>H&agrave; Trọng Đại</td>\r\n			<td>100.000k</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Nguyễn Văn Dương</td>\r\n			<td>1.000k</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n'),
(13, 'SLOGAN', 'SLOGAN'),
(14, 'MISSIONANDVISION', '<p>MISSIONANDVISION UPDATED</p>\r\n'),
(15, 'REGULATION', '<p>REGULATION UPDATED</p>\r\n'),
(16, 'PROCESSFLOW', '<p>PROCESSFLOW UPDATED</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `ktv_fengshui`
--

CREATE TABLE IF NOT EXISTS `ktv_fengshui` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `summary` text NOT NULL,
  `content` longtext NOT NULL,
  `visible` tinyint(1) NOT NULL,
  `creationDate` datetime NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1' COMMENT '0: deleted',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `ktv_fengshui`
--

INSERT INTO `ktv_fengshui` (`id`, `title`, `summary`, `content`, `visible`, `creationDate`, `status`) VALUES
(14, 'Phong thủy 1', 'Phong thủy 1', '<p>Phong thủy1</p>\r\n', 1, '2014-05-10 15:32:36', 1),
(16, 'Phong thủy 2', 'Phong thủy 2', '<p>Phong thủy 2</p>\r\n', 0, '2014-05-04 11:01:52', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ktv_img_header`
--

CREATE TABLE IF NOT EXISTS `ktv_img_header` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imgname` varchar(50) DEFAULT NULL,
  `link` text NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_create` datetime DEFAULT NULL,
  `visible` tinyint(1) NOT NULL,
  `type` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `ktv_img_header`
--

INSERT INTO `ktv_img_header` (`id`, `imgname`, `link`, `description`, `date_create`, `visible`, `type`) VALUES
(3, 'index/4221401586297.png', 'www.google.com.vn', 'slider2', '2014-06-01 08:31:37', 1, 2),
(4, 'index/5291401586309.png', 'www.google.com.vn', 'test banner', '2014-06-01 08:31:49', 1, 2),
(6, 'index/7851401670678.png', 'www.google.com.vn', 'slider1', '2014-06-02 07:57:58', 1, 2),
(7, 'index/7491401670702.png', 'www.google.com.vn', 'test banner', '2014-06-02 07:58:22', 1, 1);

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
-- Table structure for table `ktv_news`
--

CREATE TABLE IF NOT EXISTS `ktv_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `summary` text NOT NULL,
  `content` longtext NOT NULL,
  `visible` tinyint(1) NOT NULL,
  `creationDate` datetime NOT NULL,
  `view_count` int(8) NOT NULL DEFAULT '0',
  `status` int(1) NOT NULL DEFAULT '1' COMMENT '0: deleted',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `ktv_news`
--

INSERT INTO `ktv_news` (`id`, `title`, `image`, `summary`, `content`, `visible`, `creationDate`, `view_count`, `status`) VALUES
(9, 'Một số tin mới', 'http://l.f30.img.vnecdn.net/2014/06/15/tau5-1402767928_490x294.jpg', 'Một số tin mới đáng chú ý trong ngày', '<p>Trang n&agrave;y được l&agrave;m trong ng&agrave;y</p>\r\n\r\n<p>Hết</p>\r\n', 1, '2014-06-15 15:34:42', 2, 1),
(10, 'Tôi có 24 triệu đồng, muốn mua laptop thật mạnh', 'http://cdn.mrrental.com.au/images/computers-office/v5-431p-05_-copy.jpg', 'Tôi cần mua laptop 14 inch, chip Haswell để máy không bị quá nóng và ít tốn pin khi sử dụng. ', '<p>Laptop phải mạnh mạnh một ch&uacute;t (Core i7, RAM nhiều). T&ocirc;i sử dụng cho c&ocirc;ng việc v&agrave; chơi một số game nhẹ n&ecirc;n chỉ cần card m&agrave;n h&igrave;nh onboard vừa phải. Ai biết xin tư vấn cho t&ocirc;i.</p>\r\n\r\n<p>C&aacute;m ơn mọi người rất nhiều!</p>\r\n', 1, '2014-06-15 16:08:00', 12, 1),
(11, 'Trung Quốc đang chơi trò nghi binh', 'http://dantri4.vcmedia.vn/6DQQJ7yW5QPfG6EzuGal/Image/2014/05/1-98085.jpg', 'Trung Quốc đang cố tình tạo ra những ồn ào quanh vụ hạ đặt trái phép giàn khoan Hải Dương-981 trong vùng biển của Việt Nam. Nhưng nếu nhìn tổng thể chiến lược biển của Trung Quốc, đảo đá Gạc Ma và Chữ Thập mới là mục tiêu chính.', '<div><img alt="Trung Quốc đang đẩy mạnh xây dựng tạiGạc Ma để biến nơi đây thành căn cứ quân sự trong tương lai." src="http://dantri4.vcmedia.vn/6DQQJ7yW5QPfG6EzuGal/Image/2014/05/1-98085.jpg" style="border-color:currentcolor" /></div>\r\n\r\n<div>Trung Quốc đang đẩy mạnh x&acirc;y dựng tại Gạc Ma để biến nơi đ&acirc;y th&agrave;nh căn cứ qu&acirc;n sự trong tương lai.</div>\r\n\r\n<p>Bất chấp những phản ứng mạnh mẽ của Việt Nam v&agrave; phản đối gay gắt của cộng đồng quốc tế, Trung Quốc vẫn tiếp tục duy tr&igrave; hoạt động của gi&agrave;n khoan Hải Dương-981 trong v&ugrave;ng đặc quyền kinh tế (EEZ) v&agrave; thềm lục địa của Việt Nam. Thậm ch&iacute;, nước n&agrave;y c&ograve;n cử h&agrave;ng trăm t&agrave;u cỡ lớn, gồm cả t&agrave;u qu&acirc;n sự, v&agrave; c&aacute;c m&aacute;y bay ra hộ tống, ngang nhi&ecirc;n đ&acirc;m va c&aacute;c t&agrave;u thực thi ph&aacute;p luật của Việt Nam v&agrave; đ&acirc;m ch&igrave;m t&agrave;u c&aacute; của ngư d&acirc;n Qu&atilde;ng Ng&atilde;i.</p>\r\n\r\n<p>Những h&agrave;nh động n&agrave;y cho thấy Trung Quốc đang cố đẩy căng thẳng l&ecirc;n đến đỉnh điểm để thu h&uacute;t mọi sự ch&uacute; &yacute; v&agrave;o hoạt động của &ldquo;l&atilde;nh thổ di động tr&ecirc;n biển&rdquo;, một h&agrave;nh động tuy mang t&iacute;nh sai phạm nghi&ecirc;m trọng nhưng x&eacute;t cho c&ugrave;ng vẫn c&oacute; thể sửa chữa nếu một ng&agrave;y n&agrave;o đ&oacute; Trung Quốc r&uacute;t gi&agrave;n khoan ra khỏi v&ugrave;ng biển Việt Nam.</p>\r\n\r\n<p>Tr&ecirc;n thực tế, Trung Quốc đang chơi tr&ograve; nghi binh. Mục đ&iacute;ch ch&iacute;nh của nước n&agrave;y kh&ocirc;ng phải l&agrave; việc hạ đặt gi&agrave;n khoan hay di chuyển n&oacute; trong v&ugrave;ng biển của Việt Nam, m&agrave; l&agrave; tiến h&agrave;nh c&aacute;c hoạt động x&acirc;y dựng lớn tr&ecirc;n b&atilde;i đ&aacute; ngầm Gạc Ma thuộc cụm đảo Sinh Tồn ở Trường Sa v&agrave;&nbsp;b&atilde;i&nbsp;đ&aacute;&nbsp;Chữ Thập thuộc cụm Nam Yết ở Ho&agrave;ng Sa của Việt Nam. Theo t&iacute;nh to&aacute;n của c&aacute;c nh&agrave; chiến lược biển Trung Quốc, Gạc Ma v&agrave; Đ&aacute; Chữ Thập sẽ được x&acirc;y dựng trở th&agrave;nh hai căn cứ hải qu&acirc;n lớn nằm ngay tại yết hầu Biển Đ&ocirc;ng nhằm nh&acirc;n th&ecirc;m sức mạnh cho hải qu&acirc;n Trung Quốc v&agrave; chặn đường ra biển của Việt Nam.</p>\r\n\r\n<p>Theo th&ocirc;ng tin đăng tr&ecirc;n tờ <em>Bưu điện Hoa Nam buổi s&aacute;ng, </em>Bắc Kinh đang biến b&atilde;i đ&aacute; ngầm Gạc Ma (m&agrave; nước n&agrave;y đ&aacute;nh chiếm bất hợp ph&aacute;p của Việt Nam năm 1988) th&agrave;nh một đảo nh&acirc;n tạo khổng lồ. Tr&ecirc;n đ&oacute; sẽ c&oacute; cả s&acirc;n bay, cảng biển cho t&agrave;u qu&acirc;n sự v&agrave; d&acirc;n sự, khu vực d&acirc;n cư v&agrave; du lịch. Những c&ocirc;ng tr&igrave;nh n&agrave;y đang dần được h&igrave;nh th&agrave;nh với sự trợ gi&uacute;p của m&aacute;y h&uacute;t c&aacute;t dưới l&ograve;ng biển của Trung Quốc nhằm đưa Gạc Ma trở th&agrave;nh căn cứ nổi quy m&ocirc; lớn ở Biển Đ&ocirc;ng với diện t&iacute;ch 30 ha v&agrave; c&oacute; thể đ&oacute;n c&aacute;c t&agrave;u tải trọng l&ecirc;n tới 5.000 tấn. Một khi được ho&agrave;n th&agrave;nh, đ&acirc;y sẽ l&agrave; nơi để Bắc Kinh ph&ocirc; diễn sức mạnh qu&acirc;n sự nhằm uy hiếp cả Philippines v&agrave; Việt Nam ở quần đảo Trường Sa.</p>\r\n\r\n<p>B&ecirc;n cạnh Gạc Ma, Bắc Kinh cũng đang c&oacute; kế hoạch x&acirc;y b&atilde;i đ&aacute; ngầm Chữ Thập theo một kịch bản tương tự. Tức l&agrave; cũng c&oacute; s&acirc;n bay, cảng biển v&agrave; c&aacute;c c&ocirc;ng tr&igrave;nh phục vụ c&ocirc;ng t&aacute;c cung cấp tiếp tế, hỗ trợ qu&acirc;n sự cho hải qu&acirc;n Trung Quốc. Hiện tại, Đ&aacute; Chữ Thập chỉ l&agrave; một b&atilde;i đ&aacute; ch&igrave;m d&agrave;i 14 hải l&yacute;, rộng 4 hải l&yacute;. Tuy nhi&ecirc;n, nếu Trung Quốc c&oacute; thể biến b&atilde;i đ&aacute; ngầm n&agrave;y th&agrave;nh một h&ograve;n đảo nổi th&igrave; n&oacute; sẽ l&agrave; trạm dừng ch&acirc;n chiến lược cho hải qu&acirc;n v&agrave; c&oacute; diện t&iacute;ch gấp nhiều lần so với Gạc Ma, gấp 2 lần căn cứ qu&acirc;n sự Diego Garcia của Mỹ rộng 44 km2 ở Ấn Độ Dương.</p>\r\n\r\n<p>Một số nguồn tin th&acirc;n cận ở Trung Quốc cho biết hiện đề &aacute;n x&acirc;y dựng b&atilde;i đ&aacute; ngầm Đ&aacute; Chữ Thập đ&atilde; được tr&igrave;nh l&ecirc;n nh&agrave; cầm quyền trung ương Trung Quốc chờ th&ocirc;ng qua v&agrave; sẽ được khởi c&ocirc;ng thực hiện ngay sau khi c&ocirc;ng cuộc x&acirc;y dựng ở Gạc Ma ho&agrave;n th&agrave;nh.</p>\r\n\r\n<p>Theo c&aacute;c nh&agrave; ph&acirc;n t&iacute;ch chiến lược, với những toan t&iacute;nh v&agrave; h&agrave;nh động n&oacute;i tr&ecirc;n, Trung Quốc đ&atilde; thể hiện r&otilde; &yacute; đồ xoay chuyển chiến lược an ninh từ ph&ograve;ng vệ sang tấn c&ocirc;ng. Bởi một khi phi trường Gạc Ma ở Trường Sa ho&agrave;n th&agrave;nh, phi trường ở đảo Đ&aacute; Chữ Thập được khởi c&ocirc;ng v&agrave; phi trường đ&atilde; c&oacute; sẵn ở đảo Ph&uacute; L&acirc;m thuộc Ho&agrave;ng Sa đi v&agrave;o hoạt động đầy đủ, Bắc Kinh sẽ c&oacute; chuỗi c&aacute;c s&acirc;n bay ở hai đầu Đ&ocirc;ng T&acirc;y của Biển Đ&ocirc;ng, cơ sở thiết yếu cho việc th&agrave;nh lập V&ugrave;ng nhận dạng ph&ograve;ng kh&ocirc;ng (ADIZ) bao tr&ugrave;m v&ugrave;ng biển n&agrave;y. Đ&acirc;y thực sự mới l&agrave; mục ti&ecirc;u m&agrave; Trung Quốc đang nhắm tới v&agrave; cũng đ&atilde; được nhiều nước b&agrave;y tỏ quan ngại ngay khi Bắc Kinh th&agrave;nh lập ADIZ ở Hoa Đ&ocirc;ng th&aacute;ng 12 năm ngo&aacute;i.</p>\r\n\r\n<p>Tuy nhi&ecirc;n, x&acirc;y dựng c&aacute;c đảo nh&acirc;n tạo giữa biển đ&ograve;i hỏi rất nhiều điều kiện từ nguồn lực t&agrave;i ch&iacute;nh, sức người, c&ocirc;ng nghệ đến cơ sở ph&aacute;p luật quốc tế&hellip; L&agrave; nền kinh tế lớn thứ hai thế giới, d&acirc;n số hơn 1,3 tỷ người v&agrave; từ l&acirc;u đ&atilde; ch&uacute; trọng ph&aacute;t triển c&ocirc;ng nghệ, Trung Quốc c&oacute; thể phần n&agrave;o tự đảm bảo được ba điều kiện đầu. Nhưng c&ograve;n cơ sở luật ph&aacute;p quốc tế, Bắc Kinh sẽ kh&ocirc;ng bao giờ c&oacute; được điều n&agrave;y một khi c&ograve;n ngang nhi&ecirc;n tiến h&agrave;nh c&aacute;c hoạt động g&acirc;y hấn trong khu vực, l&agrave;m suy giảm nghi&ecirc;m trọng l&ograve;ng tin trong cộng đồng quốc tế v&agrave; g&acirc;y t&acirc;m l&yacute; bất an trong ch&iacute;nh người d&acirc;n nước m&igrave;nh.</p>\r\n\r\n<p>Theo kết quả một cuộc thăm d&ograve; dư luận do tờ Bưu điện Hoa Nam buổi s&aacute;ng thực hiện v&agrave; thống k&ecirc; tới 21h00 ng&agrave;y 7/6, c&oacute; tới 66% đọc giả lựa chọn phương &aacute;n n&oacute;i &ldquo;kh&ocirc;ng&rdquo; với x&acirc;y dựng đảo nh&acirc;n tạo ở Trường Sa so với chỉ 34% số người n&oacute;i &ldquo;c&oacute;&rdquo;. Ở g&oacute;c độ l&agrave; nh&agrave; nghi&ecirc;n cứu an ninh khu vực, b&agrave; Dương Khiết thuộc Viện Khoa học x&atilde; hội Trung Quốc cũng cho rằng &ldquo;việc x&acirc;y dựng đảo nh&acirc;n tạo c&oacute; thể g&acirc;y ra những t&aacute;c động ti&ecirc;u cực quan trọng trong khu vực&rdquo;. Theo b&agrave;, những h&agrave;nh động như vậy chỉ kho&eacute;t s&acirc;u th&ecirc;m sự thiếu tin tưởng ở c&aacute;c nước l&aacute;ng giềng của Trung Quốc v&agrave; g&acirc;y ra những bất ổn đ&aacute;ng tiếc.</p>\r\n\r\n<p>Khi l&ograve;ng d&acirc;n kh&ocirc;ng thuận, dư luận quốc tế kh&ocirc;ng th&ocirc;ng, th&igrave; những h&agrave;nh động đầy&nbsp;mưu đồ của Trung Quốc chẳng kh&aacute;c n&agrave;o một tội &aacute;c to lớn.</p>\r\n', 1, '2014-06-15 16:11:01', 21, 1);

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
  `content` text NOT NULL,
  `introduce` varchar(255) NOT NULL,
  `time_finish` varchar(100) DEFAULT NULL,
  `date_create` datetime DEFAULT NULL,
  `status` int(1) DEFAULT '1' COMMENT '0:delete',
  `sort` int(11) DEFAULT NULL,
  `view_count` int(11) DEFAULT '0' COMMENT '1:hot',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=100 ;

--
-- Dumping data for table `ktv_product`
--

INSERT INTO `ktv_product` (`id`, `product_name`, `fk_category`, `investors`, `unbuilt_area`, `address`, `content`, `introduce`, `time_finish`, `date_create`, `status`, `sort`, `view_count`) VALUES
(87, 'Test1', 14, 'Mr.A', '200', 'HCM', '<p>This is a test content</p>\r\n', 'Thi công bởi GrandDesignSaiGon trong 2 tháng', '2 month', '2014-05-26 06:12:19', 1, 11, 0),
(88, 'test2', 14, 'mr.b', '50', 'abc', '<p>Testing contents</p>\r\n', 'Thi công bởi GrandDesignSaiGon trong 2 tháng theo kiến trúc cổ điển Pháp. Không gian sáng mở với khoảng sân vườn rộng rãi', '3 months', '2014-05-27 04:15:25', 1, 21, 1),
(89, 'test3', 14, 'mr.b', '50', 'HCM', '<p>Kh&ocirc;ng gian mở với nhiều c&acirc;y cối, tiểu cảnh xung quanh ng&ocirc;i nh&agrave;. Nội thất tinh tế, sang trọng với hầu hết c&aacute;c chi tiết từ da.</p>\r\n\r\n<p>M&agrave;u sơn chủ đạo l&agrave; m&agrave;u trắng, &aacute;nh s&aacute;ng v&agrave;ng dịu tạo kh&ocirc;ng gian mở.</p>\r\n\r\n<p>Tiết kiệm tối đa diện t&iacute;ch sử dụng, hệ thống tủ &acirc;m tường được bố tr&iacute; th&ocirc;ng minh</p>\r\n\r\n<p>Hệ thống điện, nước được thiết kế tự động h&oacute;a cao, độ bền cam kết từ 20 năm trở l&ecirc;n</p>\r\n\r\n<p>Bảo h&agrave;nh l&acirc;u d&agrave;i, 2 năm.</p>\r\n', 'Thi công bởi GrandDesignSaiGon trong 2 tháng', '2 month', '2014-05-27 04:16:17', 1, 22, 15),
(90, 'test4', 17, 'mr.b', '50', 'HCM', '<p>Test content</p>\r\n', 'Thi công bởi GrandDesignSaiGon trong 2 tháng', '2 month', '2014-05-27 05:19:47', 1, 0, 0),
(91, 'test5', 3, 'mr.b', '50', 'HCM', '<p>Test 6</p>\r\n', 'Thi công bởi GrandDesignSaiGon trong 2 tháng', '2 month', '2014-05-27 05:20:07', 1, 0, 1),
(92, 'test7', 3, 'Mr.A', '50', 'HN', '<p>Test content</p>\r\n', 'Thi công bởi GrandDesignSaiGon trong 2 tháng', '3 months', '2014-05-27 05:20:33', 1, 0, 1),
(93, 'Test8', 17, 'Mr.C', '50', 'BP', '<p>Test content</p>\r\n', 'Thi công bởi GrandDesignSaiGon trong 2 tháng', '2 month', '2014-05-27 05:21:00', 1, 0, 11),
(94, 'test9', 3, 'Mr.D', '50', 'HN', '<p>Test content</p>\r\n', 'Thi công bởi GrandDesignSaiGon trong 2 tháng', '2 month', '2014-05-27 05:21:18', 1, 0, 0),
(95, 'test10', 17, 'Mr.D', '200', 'HCM', '<p>Test content</p>\r\n', 'Thi công bởi GrandDesignSaiGon trong 2 tháng', '2 month', '2014-05-27 05:21:40', 1, 0, 0),
(96, 'test11', 3, 'Mr.D', '50', 'HCM', '<p>Test content</p>\r\n', 'Thi công bởi GrandDesignSaiGon trong 2 tháng', '2 month', '2014-05-27 05:21:57', 1, 0, 0),
(97, 'test12', 17, 'mr.b', '50', 'HCM', '<p>Test content</p>\r\n', 'Thi công bởi GrandDesignSaiGon trong 2 tháng', '2 month', '2014-05-27 05:22:12', 1, 0, 0),
(98, 'Nhà anh Chương quận 9', 14, 'Anh Chương', '100m2', 'Khu dân cư Thăng Long, Quận 9', '<p>It is really strange, since the pure SQL works. I&#39;ve tried going to the code of the Update() function, then I just say <code>exit($sql)</code> and I can see that the SQL is ok, it runs properly under phpMyAdmin, except when I let update() run.</p>\r\n', 'Thi công bởi GrandDesignSaiGon trong 2 tháng', '3 tháng', '2014-06-14 11:51:45', 1, 0, 1),
(99, 'Nhà chị Quỳnh kiểu Ý', 5, 'Chị Quỳnh', '150m2', 'Dương Minh Châu, Tây Ninh', '<p>Nh&agrave; phong c&aacute;ch &Yacute;, nội thất sang trọng, s&acirc;n vườn rộng r&atilde;i, c&oacute; hồ bơi, tiểu cảnh...</p>\r\n', 'Nhà phong cách Ý, nội thất sang trọng, sân vườn rộng rãi, có hồ bơi, tiểu cảnh...', '5 tháng', '2014-06-15 13:46:36', 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ktv_product_image`
--

CREATE TABLE IF NOT EXISTS `ktv_product_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_product` int(11) DEFAULT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=60 ;

--
-- Dumping data for table `ktv_product_image`
--

INSERT INTO `ktv_product_image` (`id`, `fk_product`, `file_name`, `description`, `type`) VALUES
(6, 87, 'b3/18/65bb18b3.jpg', 'Ảnh 2x1', 21),
(7, 87, '5e/9d/869d9d5e.jpg', 'Ảnh 1x1', 11),
(8, 87, '8b/89/4d2d898b.jpg', 'Ảnh 2x2', 22),
(9, 88, '86/3b/548a3b86.jpg', '', 11),
(10, 88, '99/b5/dbdbb599.jpg', '', 21),
(11, 88, '51/fc/7dbcfc51.jpg', '', 22),
(12, 89, '64/d6/31b7d664.jpg', '', 11),
(13, 89, 'cc/63/883563cc.jpg', '', 21),
(14, 89, '4d/de/6924de4d.jpg', '', 22),
(15, 90, 'a5/f0/7147f0a5.jpg', '', 11),
(16, 90, 'b9/a0/58c0a0b9.jpg', '', 21),
(17, 90, 'bc/fc/913bfcbc.jpg', '', 22),
(18, 91, 'e7/30/0f8a30e7.jpg', '', 11),
(19, 91, '18/f3/f14cf318.jpg', '', 21),
(20, 91, 'df/24/5dc524df.jpg', '', 22),
(21, 92, '11/a6/f988a611.jpg', '', 11),
(22, 92, '4f/be/2250be4f.jpg', '', 21),
(23, 92, '23/1e/bb9b1e23.jpg', '', 22),
(24, 93, '16/ba/22ceba16.jpg', '', 11),
(25, 93, 'b2/68/36af68b2.jpg', '', 21),
(26, 93, '2d/21/d302212d.jpg', '', 22),
(27, 94, '75/a6/aab6a675.jpg', '', 11),
(28, 94, '9e/89/d9c7899e.jpg', '', 22),
(29, 94, '69/d4/781ed469.jpg', '', 21),
(30, 95, '84/18/3f3b1884.jpg', '', 11),
(31, 95, 'df/03/548003df.jpg', '', 22),
(32, 95, 'bc/76/043c76bc.jpg', '', 21),
(33, 96, '4f/67/5fa6674f.jpg', '', 11),
(34, 96, '09/d4/959bd409.jpg', '', 21),
(35, 96, '62/4d/aa6c4d62.jpg', '', 22),
(36, 97, '17/15/bdcf1517.jpg', '', 11),
(37, 97, 'bc/91/a26791bc.jpg', '', 21),
(38, 97, '02/86/7a4e8602.jpg', '', 22),
(51, 89, '52/dc/d834dc52.png', 'Ngoại cảnh', 0),
(52, 89, 'd4/80/aa4c80d4.png', 'Nội Thất', 0),
(54, 98, '10/a8/8aefa810.jpg', '', 11),
(55, 98, 'f5/f4/8282f4f5.jpg', '', 21),
(56, 98, '96/c7/d912c796.jpg', '', 22),
(57, 99, '67/a5/9d24a567.jpg', '', 11),
(58, 99, '00/fa/0d7bfa00.jpg', '', 21),
(59, 99, '6a/fb/7512fb6a.jpg', '', 22);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `ktv_promotion`
--

INSERT INTO `ktv_promotion` (`id`, `name`, `content`, `order`, `available`, `status`) VALUES
(1, 'Ten khuyen mai', '<p>Noi dung khuyen mai</p>\n\n<table border="1" cellpadding="1" cellspacing="1" style="width:500px">\n	<tbody>\n		<tr>\n			<td>Ten San pham</td>\n			<td>Gia</td>\n		</tr>\n		<tr>\n			<td>Ghe sofa</td>\n			<td>10M</td>\n		</tr>\n		<tr>\n			<td>Ban</td>\n			<td>15M</td>\n		</tr>\n	</tbody>\n</table>\n\n<p>&nbsp;</p>\n', 10, 1, 1),
(2, 'khuyen mai 3', '<p>khuyen mai 3</p>\r\n', 12, 1, 1);

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
  `postdate` date NOT NULL,
  `deadline` varchar(20) NOT NULL COMMENT '0: deleted',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `ktv_recruitment`
--

INSERT INTO `ktv_recruitment` (`id`, `title`, `summary`, `content`, `visible`, `postdate`, `deadline`) VALUES
(1, 'Tuyển 50 designer', 'Tuyển 50 designer làm việc tại HCM', '<p>Hiện đang cần tuyển designer l&agrave;m việc tại HCM</p>\r\n\r\n<p>Lương từ 1k đến 2k/th&aacute;ng<br />\r\n&nbsp;</p>\r\n', 1, '2014-05-01', '1');

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
