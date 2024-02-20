-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th12 26, 2023 lúc 05:28 PM
-- Phiên bản máy phục vụ: 8.0.31
-- Phiên bản PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `duchiep`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment`
--

DROP TABLE IF EXISTS `comment`;
CREATE TABLE IF NOT EXISTS `comment` (
  `id_comment` int NOT NULL AUTO_INCREMENT COMMENT 'id comment',
  `username` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `review` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `assess` int NOT NULL COMMENT 'danh gia',
  `time` datetime NOT NULL COMMENT 'ngày giờ đánh giá',
  `id` int NOT NULL,
  PRIMARY KEY (`id_comment`),
  KEY `user_id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `comment`
--

INSERT INTO `comment` (`id_comment`, `username`, `email`, `review`, `assess`, `time`, `id`) VALUES
(1, 'Duc Hiep', 'hiep@gmail.com', 'oke', 2, '2023-11-24 12:34:56', 10),
(2, 'Duc Minh', 'john.doe@gmail.com', 'Great product!', 4, '2023-11-25 08:45:30', 6),
(3, 'Ngoc Manhj', 'mary.smith@yahoo.com', 'Not satisfied with the service.', 2, '2023-11-26 15:20:00', 17),
(32, 'ghg', 'h@gmail.com', 'dd', 4, '2023-12-03 02:34:07', 2),
(31, 'ss2bluess2', '21211tt1535@mail.tdc.edu.vn', 'dd', 3, '2023-12-03 02:30:35', 2),
(8, 'ghg', 'd@gmail.com', 'ddd', 5, '2023-11-27 01:28:28', 17),
(34, 'ghg', 'hiepnguyenducc@gmail.com', 'eeeee', 5, '2023-12-10 15:25:19', 6),
(40, 'ghg', 'hiep@gmail.com', 'ddddd', 3, '2023-12-26 21:30:05', 3),
(41, 'ghg', 'hiep@gmail.com', 'ddddd', 3, '2023-12-26 21:30:07', 3),
(38, 'ghg', 'hiep@gmail.com', 'a', 1, '2023-12-26 21:15:23', 6),
(39, 'tong', 'hdhdh@gmail.com', 'okeeee', 5, '0000-00-00 00:00:00', 3),
(37, 'hiepnguyenducc', 'hiep@gmail.com', 'Du', 5, '2023-12-26 20:26:10', 2),
(36, 'hiepnguyenducc', 'hiep@gmail.com', 'Du', 5, '2023-12-26 20:26:03', 2),
(35, 'ghg', 'hiepnguyenducc@gmail.com', '', 5, '2023-12-10 15:25:35', 6),
(30, 'ghg', 'hiep@gmail.com', 'okeeee', 5, '2023-12-03 02:02:13', 2),
(29, 'ghg', 'hiep@gmail.com', 'okeeee', 5, '2023-12-03 02:02:04', 2),
(28, 'ghg', 'hiep@gmail.com', 'tgg', 5, '2023-11-30 10:57:45', 15),
(27, 'ghg', 'hiep@gmail.com', 'tgg', 5, '2023-11-30 10:57:26', 15),
(33, 'ghg', 'hiepnguyenducc@gmail.com', 'eeeee', 5, '2023-12-10 15:25:15', 6),
(42, 'ghg', 'hiep@gmail.com', 'dd', 1, '2023-12-26 21:33:59', 3),
(43, 'ghg', 'hiep@gmail.com', 'dd', 1, '2023-12-26 21:34:01', 3),
(44, 'tong', 'hdhdh@gmail.com', 'okeeee', 5, '0000-00-00 00:00:00', 11),
(45, 'âấn', 'tanngo@gmail.com', 'Dữuuuuuu', 4, '0000-00-00 00:00:00', 11),
(46, 'âấn', 'tanngo@gmail.com', 'Dữuuuuuu', 4, '0000-00-00 00:00:00', 5),
(47, 'admin', 'gohan98sc1@gmail.com', 'a', 5, '2023-12-26 21:39:08', 5),
(48, 'admin', 'gohan98sc1@gmail.com', 'a', 5, '2023-12-26 21:39:20', 5);

--
-- Bẫy `comment`
--
DROP TRIGGER IF EXISTS `after_insert_comment`;
DELIMITER $$
CREATE TRIGGER `after_insert_comment` AFTER INSERT ON `comment` FOR EACH ROW BEGIN
    -- Tăng số lượng comment trong bảng comment_count khi có comment mới
    UPDATE comment_count
    SET comment_count = comment_count + 1;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment_count`
--

DROP TABLE IF EXISTS `comment_count`;
CREATE TABLE IF NOT EXISTS `comment_count` (
  `id_comment_count` int NOT NULL AUTO_INCREMENT,
  `comment_count` int DEFAULT '0',
  `id` int NOT NULL,
  PRIMARY KEY (`id_comment_count`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `comment_count`
--

INSERT INTO `comment_count` (`id_comment_count`, `comment_count`, `id`) VALUES
(1, 27, 0),
(2, 29, 15);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `email`
--

DROP TABLE IF EXISTS `email`;
CREATE TABLE IF NOT EXISTS `email` (
  `email_id` int NOT NULL AUTO_INCREMENT COMMENT 'id email',
  `name_email` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`email_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `email`
--

INSERT INTO `email` (`email_id`, `name_email`) VALUES
(1, 'fffdd@gmail.com'),
(2, ''),
(3, ''),
(4, 'duonglethainguyen03@icloud.com'),
(5, 'gohan98sc1@gmail.com'),
(6, 'dddd@gmail.com');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `manufactures`
--

DROP TABLE IF EXISTS `manufactures`;
CREATE TABLE IF NOT EXISTS `manufactures` (
  `manu_id` int NOT NULL AUTO_INCREMENT,
  `manu_name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`manu_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `manufactures`
--

INSERT INTO `manufactures` (`manu_id`, `manu_name`) VALUES
(1, 'Sony'),
(2, 'Sennheiser'),
(3, 'Apple'),
(4, 'MSI'),
(5, 'Logitech');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order`
--

DROP TABLE IF EXISTS `order`;
CREATE TABLE IF NOT EXISTS `order` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `addressid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `total` double NOT NULL DEFAULT '0',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order`
--

INSERT INTO `order` (`id`, `user_id`, `name`, `addressid`, `email`, `telephone`, `note`, `total`, `time`) VALUES
('#811355', 68, 'a b', 'thôn 15, Hòa Đông,  Krông Pắc, Đắk Lắk thủ đức vietnam', 'yaongw@gmail.com', '54545345', '', 3656200, '02/01/2023 15:44:11'),
('#735053', 68, 'dat b', 'thôn 15, Hòa Đông,  Krông Pắc, Đắk Lắk thủ đức vietnam', 'locthon15@gmail.com', '54545345', '', 92600000, '02/01/2023 16:45:58'),
('#964869', 73, 'Nguyễn Hiệp', 'Bu Gia Phuc, Phu Nghia, Bu Gia Map, Binh Phuoc Binh Phuoc Vietnam', 'gohan98sc1@gmail.com', '0949985409', 'ff', 152192000, '10/12/2023 1:24:05'),
('#401777', 0, 'Hiệp Đức', 'Bu Gia Phuc, Phu Nghia, Bu Gia Map, Binh Phuoc Binh Phuoc Vietnam', 'hiepnguyenducc@gmail.com', '949985409', 'Duuuuuu', 27120000, '26/12/2023 20:27:00'),
('#994967', 80, 'Hiệp Đức', 'Bu Gia Phuc, Phu Nghia, Bu Gia Map, Binh Phuoc Binh Phuoc Vietnam', 'hiepnguyenducc@gmail.com', '0949985409', 'a', 437552000, '26/12/2023 21:40:50');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_product`
--

DROP TABLE IF EXISTS `order_product`;
CREATE TABLE IF NOT EXISTS `order_product` (
  `order_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` int NOT NULL,
  `price` int NOT NULL,
  `quantity` int NOT NULL,
  `discount` int NOT NULL DEFAULT '0',
  `amount` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_product`
--

INSERT INTO `order_product` (`order_id`, `product_id`, `price`, `quantity`, `discount`, `amount`) VALUES
('#811355', 25, 2249000, 1, 0, 2249000),
('#811355', 24, 1759000, 1, 20, 1407200),
('#735053', 4, 76900000, 1, 0, 76900000),
('#735053', 3, 15700000, 1, 0, 15700000),
('#983939', 4, 76900000, 1, 0, 76900000),
('#983939', 3, 15700000, 1, 0, 15700000),
('#983939', 2, 33900000, 1, 20, 27120000),
('#983939', 6, 250000, 1, 20, 200000),
('#214314', 2, 33900000, 1, 20, 27120000),
('#964869', 7, 23780000, 8, 20, 152192000),
('#401777', 2, 33900000, 1, 20, 27120000),
('#994967', 7, 23780000, 23, 20, 437552000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `manu_id` int NOT NULL,
  `type_id` int NOT NULL,
  `product_type_id` int NOT NULL COMMENT 'id product_type',
  `price` int NOT NULL,
  `image` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `feature` tinyint NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `product_view` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=115 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `manu_id`, `type_id`, `product_type_id`, `price`, `image`, `description`, `feature`, `created_at`, `product_view`) VALUES
(3, 'Smart Tivi 4K Sony KD-43X75 43 inch 4K HDR Android TV', 1, 1, 1, 15700000, 'tivi-3.jpg', 'Hình ảnh 4K sắc nét từ Bộ xử lý 4K X1™ cùng công nghệ X-Reality™ PRO\r\nTái tạo dải màu rộng hơn, chính xác hơn với công nghệ Live Colour™\r\nHỗ trợ định dạng âm thanh Dolby Audio\r\nTìm kiếm bằng giọng nói, HĐH Android tích hợp trợ lý ảo Google Assistant', 0, '2023-12-26 14:34:01', 14),
(4, 'Smart Tivi 4K Sony KD-85X86J 85 inch Google TV', 1, 1, 1, 76900000, 'tivi-4.jpg', 'TV trí tuệ nhân tạo AI nhận thức đầu tiên trên thế giới\r\nBộ xử lý X1™ nâng cấp lên hình ảnh 4K với độ phân giải gấp 4 lần Full HD\r\nChuyển động mượt Motionflow XR 800\r\nĐộ tương phản chân thực nhờ 4K Triluminos Pro™\r\nMàu sắc và độ tương phản trung thực hơn nữa\r\nÂm thanh, hình ảnh hài hòa, loa gắn vào khung viền, âm thanh phát ra từ đúng vị trí trong cảnh', 0, '2023-12-26 14:37:46', 17),
(5, 'Tivi Sony 32 inch 32R300E, HD Ready, MXR 100Hz', 1, 1, 1, 6300000, 'tivi-5.jpg', 'Độ phân giải màn hình HD hình ảnh sắc nét, màu sắc rực rỡ.\r\nCông nghệ Clear Resolution Enhancer cho hình ảnh mượt mà, sắc nét.\r\nBộ 4 bảo vệ X-Protection PRO bảo vệ tivi tránh hư hỏng do các yếu tố bên ngoài.\r\nHỗ trợ các kết nối USB , kết nối HDMI, Tích hợp bộ thu DVB-T2', 0, '2023-12-26 15:14:20', 11),
(6, 'Tai nghe Sennheiser MX 400 II (đen, trắng, xám)', 2, 2, 2, 250000, 'tai-nghe-1.jpg', 'Nếu bạn đang tìm kiếm một dòng tai nghe giá rẻ, đáp ứng nhu cầu âm thanh mà một dòng tai nghe thông thường có thể làm được thì Sennheiser MX 400 II chính là sản phẩm hữu dụng mà bạn đang tìm kiếm. Tai nghe nhạc MX 400 II trang bị cho mình dải tần trải dài 55Hz - 15000Hz, đáp ứng chi tiết âm thanh vượt trội nhất. Tuy với mức giá \"hạt dẻ\" nhưng MX400 II cao cấp co chế độ bảo hành lên tới 2 năm đáp ứng nhu cầu sử dụng người dùng. Dây dài 1,2m giúp bạn nghe nhạc thoải mái hơn. Chỉ cần cắm Jack cắm 3,5m vào điện thoại là bạn đã có thể vô tư nghe nhạc, và bạn cũng có thể cho điện thoại vào túi xách, túi quần rất tiện dụng.', 1, '2023-12-26 15:14:14', 91),
(7, 'Bếp từ Kangaroo sở hữu nhiều tính năng an toàn, đảm bảo yên tâm khi sử dụng:\n- Cảnh báo khi không có', 2, 8, 2, 23780000, 'tai-nghe-2.jpg', 'Tai nghe Sennheiser IE 800 là 1 trong những sản phẩm tai nghe công nghệ hot và đắt nhất trên thị trường hiện nay. Tuy đắt nhưng sản phẩm này lại được rất nhiều anh em săn đón. Tại sao lại như vậy? Chắc hẳn chiếc tai nghe nhạc này không phải dạng vừa. Hãy cùng META đi tìm hiểu chi tiết sản phẩm trong bài viết này nhé!', 1, '2023-12-26 14:40:28', 53),
(8, 'Tai nghe EPOS Sennheiser PC 7 USB', 2, 8, 3, 1200000, 'tai-nghe-3.jpg', 'Kết nối với máy tính qua cổng USB, cắm là chạy, thật đơn giản\r\nÂm thanh khi nghe và nói rất rõ ràng với giả cả phải chăng.\r\nMicrophone hạn chế , giảm thiểu tiếng ồn xung quanh\r\nTai nghe khá nhẹ và thoải mái', 0, '2023-12-26 14:38:09', 4),
(9, 'Tai nghe Sennheiser HDR165', 2, 8, 0, 3630000, 'tai-nghe-4.jpg', 'Tai nghe không dây Sennheiser HDR 165 có kiểu dáng đẹp mắt với tông màu đen sang trọng, kích thước nhỏ gọn, trọng lượng nhẹ khoảng 300g giúp bạn dễ dàng mang theo tới bất kỳ đâu để thỏa mãn niềm đam mê âm nhạc của mình. Tai nghe Sennheiser HDR165 truyền tín hiệu digital rất tốt và ổn định với khoảng cách lên đến tối đa 30m.', 1, '2023-12-05 09:07:56', 18),
(10, 'Tai nghe Sennheiser MX 375', 2, 8, 0, 529000, 'tai-nghe-5.jpg', 'Tai nghe Sennheiser MX 375 với âm bass mạnh mẽ, chất lượng âm thanh trong sáng, trung thực, rõ ràng, đem đến cho người dùng những trải nghiệm âm thanh hoàn hảo, đáp ứng dải tần 20Hz - 22kHz cho âm thanh trầm bổng theo từng nốt nhạc.', 1, '2023-12-26 14:38:24', 33),
(11, 'Apple iphone 11 128GB', 3, 3, 0, 899000, 'smartphone1.jpg', 'LCD cỡ 6,1 inch, tốc độ làm mới 60Hz\r\nFace ID góc rộng\r\nApple A13 Bionic 6 lõi, tốc độ 2,66 Ghz; Quy trình công nghệ 7nm thế hệ thứ 2 của TSMC\r\nNgâm dưới nước ở độ sâu 2m trong 30 phút\r\n128GB', 1, '2023-12-26 17:01:08', 7),
(12, 'iPhone SE 2022 64GB', 3, 3, 0, 12990000, 'smartphone2.jpg', 'Màn hình: Kích thước 4.7 inch, độ sáng 625 nit\r\nHệ điều hành: iOS 15.\r\nCamera sau: Độ phân giải 12 MP.\r\nCamera trước: Độ phân giải 7 MP.\r\nChip: Apple A15 Bionic.', 0, '2022-10-28 11:59:15', 0),
(13, 'Apple Iphone 14 Pro 512GB Space Black', 3, 3, 0, 36990000, 'smartphone3.jpg', 'Công nghệ màn hình LTPO Super Retina XDR OLED, 120Hz, HDR10, Dolby Vision, 1000 nits (typ), 2000 nits (HBM)\r\nCamera chính 48MP + Phụ 12MP + 12MP, camera selfie 12MP ở mặt trước\r\nVi xử lý Apple A16 Bionic 4nm với Apple GPU (5-core graphics)\r\nPin Li-Ion 3200mAh, Sạc không dây MagSafe', 0, '2022-10-28 11:59:15', 0),
(14, 'Apple Iphone 13 Pro 128G Silver', 3, 3, 0, 23990000, 'smartphone4.jpg', 'Công nghệ màn hình OLED Super Retina\r\nCamera 12MP + 12MP + 12MP, camera selfie 12MP ở mặt trước\r\nVi xử lý Apple A15 5nm với RAM 6GB\r\nSử dụng cả ngày, hỗ trợ sạc nhanh 20W\r\n128GB', 1, '2022-10-28 11:59:15', 1),
(15, 'APPLE iPhone 12 64G Green', 3, 3, 0, 14990000, 'smartphone5.jpg', 'Công nghệ màn hình OLED Super Retina\r\nCamera kép 12MP + 12MP, camera selfie 12MP ở mặt trước\r\nVi xử lý Apple A14 5nm với RAM 4GB\r\nSử dụng cả ngày, hỗ trợ sạc nhanh 20W', 1, '2023-12-26 14:34:41', 62),
(16, 'Laptop MSI Modern 14 B5M R5 5500U/8GB/512GB/Túi/Chuột/Win11 (203VN) ', 4, 4, 0, 13690000, 'laptop-1.jpg', 'Laptop MSI Modern 14 B5M R5 5500U (203VN) sở hữu kiểu dáng thanh lịch với thiết kế màn hình viền mỏng cùng cấu hình ổn định, sẵn sàng đồng hành cùng bạn trong mọi tác vụ xử lý công việc hay giải trí.', 0, '2022-10-28 11:59:15', 0),
(17, 'Laptop MSI Modern 14 i7-1195G7/8GB/512GB/Win11 B11MOU-1065VN', 4, 4, 0, 20590000, 'laptop-2.jpg', 'Thiết kế thời thượng, kiểu dáng nhỏ gọn với trọng lượng chỉ 1.3kg\r\nHiệu suất mạnh mẽ, xử lý mượt mà mọi tác vụ nhờ CPU i7-1195G7\r\nRAM 8GB đa nhiệm có thể làm việc với nhiều Tab mà không giật, lag\r\nỔ cứng 512GB cho không gian lưu trữ lớn, mở các ứng dụng nhanh chóng\r\nCó đủ các cổng kết nối hiện đại, thông dụng giúp nhận và truyền dữ liệu\r\nMàn hình Full HD, độ phân giải 1920x1080 hiển thị hình ảnh sắc nét', 1, '2023-12-26 14:38:30', 114),
(18, 'Laptop MSI GF66 i7-12650H/8GB/512GB/Win11 12UCK-804VN', 4, 4, 0, 26990000, 'laptop-3.jpg', 'Ngoại hình mạnh mẽ, phong cách thiết kế chuẩn Gaming với bàn phím tuyệt đẹp\r\nVi xử lý Intel Core i7-12650H Gen 12 cho hiệu năng mạnh mẽ chạy mượt mọi tựa game\r\nTrang bị Card đồ họa NVIDIA GeForce RTX đem lại đồ họa ray-tracing siêu chân thực\r\nRAM DDR4 8GB đa nhiệm cho phép Laptop làm việc với nhiều Tab mà không giật, lag\r\nỔ cứng 512GB lưu trữ được nhiều dữ liệu, khởi động máy và các ứng dụng nhanh hơn\r\nMàn hình 144Hz cho hình ảnh ấn tượng và mượt mà để bạn luôn bắt kịp mọi chuyển động\r\nBàn phím gaming RGB có thể cài đặt màu theo sở thích người dùng: đỏ, xanh, vàng,...\r\nCụm tản nhiệt cho CPU và GPU đảm bảo hiệu năng tối đa ngay cả khi chơi các game nặng', 1, '2022-10-28 11:59:15', 0),
(19, 'Laptop MSI Modern 15 A5M R7-5700U/8GB/512GB/Win11 (239VN)', 4, 4, 0, 45990000, 'laptop-4.jpg', 'Trải nghiệm hình ảnh rõ nét, chân thực trên màn hình 15.6 inch FHD\r\nCPU AMD Ryzen™ 7 5700U mạnh mẽ giải quyết công việc nhanh chóng\r\nRAM 8GB DDR4 giúp laptop đa nhiệm mượt mà, ổn định hạn chế giật lag\r\nỔ cứng SSD 512GB giúp khởi động máy nhanh, không gian lưu trữ tốt\r\nÂm thanh Hi-res Audio cho trải nghiệm âm thanh giải trí cực sống động\r\nThời lượng pin lên đến 10 giờ đáp ứng tốt nhu cầu học tập, làm việc\r\nĐèn nền bàn phím hỗ trợ người dùng khi làm việc ở môi trường thiếu sáng', 0, '2022-10-28 11:59:15', 0),
(20, 'Laptop MSI Crosshair 15 B12UEZ-460VN', 4, 4, 0, 36990000, 'laptop-5.jpg', 'Laptop MSI Crosshair 15 B12UEZ 460VN chạy trên con chip xử lý Intel Core H-series thế hệ thứ 12 mới nhất. Chip 14 nhân, 24 luồng đảm bảo hiệu suất phát huy tối đa trong quá trình chơi game. Dung lượng RAM 16GB cùng ổ cứng SSD 1TB PCle cho khả năng lưu trữ lớn, không bị giật lag trong quá trình sử dụng.', 1, '2023-12-15 15:54:15', 13),
(21, 'Chuột Gaming không dây Logitech G304', 5, 5, 0, 890000, 'chuot-1.jpg', 'Đem đến sự lựa chọn có giá thành phù hợp dành cho các game thủ, chuột Logitech G304 được nâng cấp toàn diện so với các thế hệ trước nhờ sở hữu thiết kế đột phá, cảm biến HERO 12.000 mức DPI, hệ thống 6 nút lập trình để tùy chỉnh tính năng và công nghệ tương tác không dây vượt trội LIGHTSPEED.', 1, '2023-12-05 09:26:47', 10),
(22, 'Chuột Bluetooth Logitech M650', 5, 5, 0, 849000, 'chuot-2.jpg', 'Với thiết kế tập trung vào người dùng, chuột không dây Logitech Signature M650 sẽ hứa hẹn cung cấp những trải nghiệm sử dụng thoải mái nhất. Sản phẩm nổi bật với tính năng cuộn SmartWheel, kết nối không dây liền mạch, nút bấm yên tĩnh và nút bên có thể tùy chỉnh.', 0, '2023-12-26 14:39:32', 1),
(23, 'Chuột có dây Logitech M90', 5, 5, 0, 119000, 'chuot-3.jpg', 'Chuột Logitech M90 là giải pháp bền bỉ, đơn giản và hiệu quả để dùng cho văn phòng, góc làm việc hoặc góc học tập. Thiết bị được thiết kế theo phong cách nhẹ nhàng với hai tone màu xám – đen. Chiều dài dây 1,8 mét linh hoạt kết hợp cùng độ nhạy 1000 DPI chắc chắn sẽ giúp M90 phục vụ bạn một cách hiệu quả.', 1, '2022-10-28 11:59:15', 0),
(24, 'Chuột Gaming Logitech G502 Hero High Performance', 5, 5, 0, 1759000, 'chuot-5.jpg', 'Với thiết kế đậm chất gaming và những nét cắt xẻ cực cá tính, chuột Logitech G502 HERO High Performance sẽ là trợ thủ đắc lực để game thủ có điều kiện phô diễn kỹ năng thượng thừa trong từng pha giao tranh gay cấn. Mọi chi tiết của sản phẩm như cảm biến quang học, hệ thống nút bấm, trọng lượng và đèn RGB đều được tối ưu hợp lý nhằm tạo điều kiện tốt nhất khi chơi game.', 1, '2023-11-09 18:43:54', 4),
(25, 'Chuột không dây Logitech MX Master 3', 5, 5, 0, 2249000, 'chuot-4.jpg', 'Chuột không dây Logitech MX Master 3 được thiết kế với kiểu dáng hỗ trợ cử động cổ tay và bàn tay thoải mái nhất, có thể vận hành mượt mà trên nhiều bề mặt nhờ độ phân giải cảm biến lên tới 4000 DPI và hỗ trợ công nghệ Logitech Flow giúp duy trì tương tác với ba máy tính hoặc laptop riêng biệt.', 0, '2023-12-09 18:23:20', 3),
(108, 'Loa Jbl', 0, 0, 1, 1232122312, 'OIP.jpg', 'Loa JBL chính hãng, trả góp 0%, giao hàng nhanh\r\nLoa JBL là một trong những sự lựa chọn hàng đầu cho những tín đồ âm nhạc không chỉ tại Việt Nam mà còn trên nhiều thị trường khác trên toàn thế giới. Hãng JBL không chỉ cung cấp nhiều dòng loa với mẫu mã đa dạng mà công suất cũng rất mạnh mẽ, kết hợp nhiều công nghệ âm thanh tiên tiến, hứa hẹn mang đến cho người dùng những phút giây giải trí chất lượng vượt trội.\r\n\r\nGiới thiệu thương hiệu JBL\r\nJBL (James Bullough Lansing) được thành lập bởi James Bullough Lansing vào năm 1946 tại Los Angeles, California, Hoa Kỳ và hiện thuộc sở hữu của tập đoàn Harman International. Đây là một trong những thương hiệu điện tử âm thanh nổi tiếng không chỉ tại Việt Nam mà còn ở nhiều thị trường khác trên toàn thế giới.\r\n\r\nJBL là thương hiệu loa của tập đoàn Harman International\r\n\r\nJBL là thương hiệu loa của tập đoàn Harman International\r\n\r\nTrong những năm đầu hoạt động, doanh nghiệp tập trung vào việc sản xuất loa và các loại linh kiện âm thanh dành cho các hệ thống công suất lớn như loa hội trường, loa phim trường,... Hiện nay, JBL đã trở thành một trong những cái tên hàng đầu trong việc sản xuất và cung cấp ra thị trường các dòng loa bluetooth, loa thanh, tai nghe,... sử dụng cho hệ thống âm thanh gia đình và những dàn âm thanh chuyên nghiệp.\r\n\r\nLoa JBL được người dùng đánh giá cao nhờ có chất lượng bền bỉ, công suất đa dạng và mạnh mẽ kết hợp cùng nhiều công nghệ tiên tiến, mang đến chất âm lôi cuốn và đắm chìm cho không gian.\r\n\r\nĐặc điểm loa JBL\r\nThiết kế\r\nVề thiết kế, các sản phẩm của JBL luôn được chăm chút rất tỉ mỉ, mức độ hoàn thiện cũng như độ bền của vật liệu sử dụng cao. Loa JBL có thiết kế với dạng hình hộp chữ nhật ngang hoặc đứng, lấy màu đen làm tông màu chủ đạo và điểm xuyết thêm một số họa tiết màu xanh, hồng, vàng,... hoặc thiết kế mặt lưới gợn sóng giúp tổng thể thiết bị thêm phần nổi bật.\r\n\r\nThiết kế gợn sóng đẹp mắt của loa JBL\r\n\r\nThiết kế gợn sóng đẹp mắt của loa JBL\r\n\r\nMột số dòng loa của hãng cũng được trang bị hệ thống đèn LED nhấp nháy theo nhạc cực kỳ ấn tượng cùng khả năng chống nước chuẩn IPX2, IPX4,... để khách hàng có thể sử dụng tại nhiều không gian hơn, kể cả ở bên hồ bơi hoặc bờ biển.\r\n\r\nCó thể sử dụng loa JBL ở bên hồ bơi nhờ có khả năng chống nước tốt\r\n\r\nCó thể sử dụng loa JBL ở bên hồ bơi nhờ có khả năng chống nước tốt\r\n\r\nCông suất và chất lượng âm thanh\r\nLoa JBL được trang bị hệ thống củ loa đa dạng tùy vào mỗi dòng loa khác nhau như loa toàn dải 2 chiều, loa tweeter, loa bass,... có thể tái tạo chất âm tuyệt vời ở dải tần số rộng, vừa sâu lắng vừa trong trẻo và ít bị méo tiếng.\r\n\r\nLoa JBL có thể trình diễn những dòng âm thanh chất lượng, mạnh mẽ\r\n\r\nLoa JBL có thể trình diễn những dòng âm thanh chất lượng, mạnh mẽ\r\n\r\nLoa của hãng này có khả năng trình diễn âm nhạc mới mức công suất cực kỳ mạnh mẽ và đa dạng như 150W, 600W, 800W, 1100W,... mang đến trải nghiệm chân thật như bạn đang được tận tai lắng nghe buổi trình diễn âm nhạc sống động. Với mức công suất đa dạng, khách hàng có thể sử dụng loa tại nhiều không gian khác nhau từ trong nhà ra ngoài trời.\r\n\r\nCông nghệ và tính năng\r\nLoa JBL được nhà sản xuất trang bị nhiều công nghệ và tính năng tiên tiến như PSL (Passive Sound Lighting), DJ Launch-Pad, cổng kết nối micro để hát karaoke,... để mang đến trải nghiệm sử dụng tuyệt vời hơn cho người dùng.\r\n\r\nKinh nghiệm chọn mua loa JBL\r\nNếu đang có ý định mua một chiếc loa, bạn có thể xem xét các yếu tố sau đây để đảm bảo bạn chọn được sản phẩm chất lượng, phù hợp với nhu cầu và ngân sách của mình:\r\n\r\n- Chọn loa theo kích thước và thiết kế: Loa JBL được sản xuất với nhiều mẫu mã và kích thước khác nhau. Bạn có thể dựa vào không gian mà bạn sẽ bố trí loa để lựa chọn được sản phẩm có kích thước phù hợp với diện tích phòng, giúp bạn thưởng thức chất âm hay hơn mà không khiến gian phòng trở nên chật chội.\r\n\r\nChọn loa JBL có kích thước phù hợp với không gian sử dụng\r\n\r\nChọn loa JBL có kích thước phù hợp với không gian sử dụng\r\n\r\n- Chọn loa theo công suất âm thanh: Tùy thuộc vào diện tích không gian sử dụng mà bạn có thể lựa chọn sản phẩm có mức công suất phù hợp. Nếu không có kiến thức trong chuyện này, bạn có thể tham khảo bảng chọn công suất loa theo diện tích phòng như sau:\r\n\r\nDiện tích không gian	Công suất phù hợp\r\nDưới 10m2	Dưới 30W\r\n10 - 15m2	30 - 45W\r\n15 - 25m2	45 - 75W\r\n25 - 35m2	75 - 105W\r\n35 - 45m2	105 - 135W\r\n45 - 55m2	135 - 165W\r\nTrên 55m2	Tăng thêm 3W/m2\r\n- Chọn loa có giá phù hợp với điều kiện tài chính: Hãy xác định mức ngân sách mà bạn có thể chi trả cho việc mua loa. Các dòng loa JBL hiện nay được bán với mức giá đa dạng từ vài triệu đến vài chục triệu đồng. Việc biết được khả năng chi trả của mình sẽ giúp bạn tìm được chiếc loa phù hợp nhanh hơn. Ngoài ra, bạn cũng có thể tìm kiếm những đơn vị cung cấp loa theo hình thức trả góp để sở hữu chiếc loa yêu thích mà không cần lo lắng về gánh nặng tài chính.\r\n\r\n- Kiểm tra chất lượng âm thanh trước khi mua: Nếu mua loa trực tiếp từ cửa hàng, bạn có thể yêu cầu đơn bị bán cho bạn nghe thử âm thanh phát ra từ chiếc loa định mua. Việc nghe thử âm thanh trực tiếp giúp bạn quyết định xem loa có phù hợp với sở thích âm nhạc của bạn hay không.\r\n\r\n- Chính sách bảo hành sau mua: Kiểm tra kỹ chính sách bảo hành của nhà sản xuất hoặc đơn vị phân phối đối với sản phẩm để đảm bảo bạn có một dịch vụ hỗ trợ xử lý chuyên nghiệp nếu gặp vấn đề với loa trong quá trình sử dụng sau này.\r\n\r\nMua loa JBL chính hãng, giá tốt tại Siêu Thị Điện Máy - Nội Thất Chợ Lớn\r\nSiêu Thị Điện Máy - Nội Thất Chợ Lớn là một trong những đơn vị cung cấp các sản phẩm loa JBL chính hãng hàng đầu tại Việt Nam hiện nay. Đến đây, quý khách hàng sẽ có cơ hội trải nghiệm mua sắm thoải mái với các dòng loa JBL đa dạng chủng loại và mức giá. Đồng thời, không chỉ mua được chiếc loa ưng ý mà người mua sẽ nhận được sự tư vấn nhiệt tình của đội ngũ nhân viên để đảm bảo bạn chọn được sản phẩm phù hợp với nhu cầu của mình.\r\n\r\nSiêu Thị Điện Máy - Nội Thất Chợ Lớn\r\n\r\nSiêu Thị Điện Máy - Nội Thất Chợ Lớn\r\n\r\nBên cạnh loa JBL, Điện Máy - Nội Thất Chợ Lớn cũng là nơi cung cấp nhiều dòng loa của các thương hiệu nổi tiếng khác như loa Jamo, Paramax, Nanomax, Bose, Samsung,... Vì vậy, bạn có thể đến đây để tham khảo, trải nghiệm sản phẩm của nhiều hãng khác nhau để tìm ra sản phẩm ưng ý nhất.\r\n\r\nĐừng bỏ lỡ cơ hội sở hữu những sản phẩm âm thanh chất lượng vượt trội với giá ưu đãi tại Điện Máy - Nội Thất Chợ Lớn. Hãy truy cập ngay vào website https://dienmaycholon.vn/ hoặc đi đến cửa hàng gần nhất để lựa chọn cho mình chiếc loa JBL yêu thích.\r\n\r\n', 1, '2023-12-26 14:57:49', 0),
(107, 'Hiệp Nguyễn Đức', 1, 3, 1, 888, '1.jpg', 'kkk', 0, '2023-12-25 18:31:53', 0),
(109, 'Loa Jbl', 1, 20, 11, 222, 'OIP.jpg', 'Loa JBL chính hãng, trả góp 0%, giao hàng nhanh\r\nLoa JBL là một trong những sự lựa chọn hàng đầu cho những tín đồ âm nhạc không chỉ tại Việt Nam mà còn trên nhiều thị trường khác trên toàn thế giới. Hãng JBL không chỉ cung cấp nhiều dòng loa với mẫu mã đa dạng mà công suất cũng rất mạnh mẽ, kết hợp nhiều công nghệ âm thanh tiên tiến, hứa hẹn mang đến cho người dùng những phút giây giải trí chất lượng vượt trội.\r\n\r\nGiới thiệu thương hiệu JBL\r\nJBL (James Bullough Lansing) được thành lập bởi James Bullough Lansing vào năm 1946 tại Los Angeles, California, Hoa Kỳ và hiện thuộc sở hữu của tập đoàn Harman International. Đây là một trong những thương hiệu điện tử âm thanh nổi tiếng không chỉ tại Việt Nam mà còn ở nhiều thị trường khác trên toàn thế giới.\r\n\r\nJBL là thương hiệu loa của tập đoàn Harman International\r\n\r\nJBL là thương hiệu loa của tập đoàn Harman International\r\n\r\nTrong những năm đầu hoạt động, doanh nghiệp tập trung vào việc sản xuất loa và các loại linh kiện âm thanh dành cho các hệ thống công suất lớn như loa hội trường, loa phim trường,... Hiện nay, JBL đã trở thành một trong những cái tên hàng đầu trong việc sản xuất và cung cấp ra thị trường các dòng loa bluetooth, loa thanh, tai nghe,... sử dụng cho hệ thống âm thanh gia đình và những dàn âm thanh chuyên nghiệp.\r\n\r\nLoa JBL được người dùng đánh giá cao nhờ có chất lượng bền bỉ, công suất đa dạng và mạnh mẽ kết hợp cùng nhiều công nghệ tiên tiến, mang đến chất âm lôi cuốn và đắm chìm cho không gian.\r\n\r\nĐặc điểm loa JBL\r\nThiết kế\r\nVề thiết kế, các sản phẩm của JBL luôn được chăm chút rất tỉ mỉ, mức độ hoàn thiện cũng như độ bền của vật liệu sử dụng cao. Loa JBL có thiết kế với dạng hình hộp chữ nhật ngang hoặc đứng, lấy màu đen làm tông màu chủ đạo và điểm xuyết thêm một số họa tiết màu xanh, hồng, vàng,... hoặc thiết kế mặt lưới gợn sóng giúp tổng thể thiết bị thêm phần nổi bật.\r\n\r\nThiết kế gợn sóng đẹp mắt của loa JBL\r\n\r\nThiết kế gợn sóng đẹp mắt của loa JBL\r\n\r\nMột số dòng loa của hãng cũng được trang bị hệ thống đèn LED nhấp nháy theo nhạc cực kỳ ấn tượng cùng khả năng chống nước chuẩn IPX2, IPX4,... để khách hàng có thể sử dụng tại nhiều không gian hơn, kể cả ở bên hồ bơi hoặc bờ biển.\r\n\r\nCó thể sử dụng loa JBL ở bên hồ bơi nhờ có khả năng chống nước tốt\r\n\r\nCó thể sử dụng loa JBL ở bên hồ bơi nhờ có khả năng chống nước tốt\r\n\r\nCông suất và chất lượng âm thanh\r\nLoa JBL được trang bị hệ thống củ loa đa dạng tùy vào mỗi dòng loa khác nhau như loa toàn dải 2 chiều, loa tweeter, loa bass,... có thể tái tạo chất âm tuyệt vời ở dải tần số rộng, vừa sâu lắng vừa trong trẻo và ít bị méo tiếng.\r\n\r\nLoa JBL có thể trình diễn những dòng âm thanh chất lượng, mạnh mẽ\r\n\r\nLoa JBL có thể trình diễn những dòng âm thanh chất lượng, mạnh mẽ\r\n\r\nLoa của hãng này có khả năng trình diễn âm nhạc mới mức công suất cực kỳ mạnh mẽ và đa dạng như 150W, 600W, 800W, 1100W,... mang đến trải nghiệm chân thật như bạn đang được tận tai lắng nghe buổi trình diễn âm nhạc sống động. Với mức công suất đa dạng, khách hàng có thể sử dụng loa tại nhiều không gian khác nhau từ trong nhà ra ngoài trời.\r\n\r\nCông nghệ và tính năng\r\nLoa JBL được nhà sản xuất trang bị nhiều công nghệ và tính năng tiên tiến như PSL (Passive Sound Lighting), DJ Launch-Pad, cổng kết nối micro để hát karaoke,... để mang đến trải nghiệm sử dụng tuyệt vời hơn cho người dùng.\r\n\r\nKinh nghiệm chọn mua loa JBL\r\nNếu đang có ý định mua một chiếc loa, bạn có thể xem xét các yếu tố sau đây để đảm bảo bạn chọn được sản phẩm chất lượng, phù hợp với nhu cầu và ngân sách của mình:\r\n\r\n- Chọn loa theo kích thước và thiết kế: Loa JBL được sản xuất với nhiều mẫu mã và kích thước khác nhau. Bạn có thể dựa vào không gian mà bạn sẽ bố trí loa để lựa chọn được sản phẩm có kích thước phù hợp với diện tích phòng, giúp bạn thưởng thức chất âm hay hơn mà không khiến gian phòng trở nên chật chội.\r\n\r\nChọn loa JBL có kích thước phù hợp với không gian sử dụng\r\n\r\nChọn loa JBL có kích thước phù hợp với không gian sử dụng\r\n\r\n- Chọn loa theo công suất âm thanh: Tùy thuộc vào diện tích không gian sử dụng mà bạn có thể lựa chọn sản phẩm có mức công suất phù hợp. Nếu không có kiến thức trong chuyện này, bạn có thể tham khảo bảng chọn công suất loa theo diện tích phòng như sau:\r\n\r\nDiện tích không gian	Công suất phù hợp\r\nDưới 10m2	Dưới 30W\r\n10 - 15m2	30 - 45W\r\n15 - 25m2	45 - 75W\r\n25 - 35m2	75 - 105W\r\n35 - 45m2	105 - 135W\r\n45 - 55m2	135 - 165W\r\nTrên 55m2	Tăng thêm 3W/m2\r\n- Chọn loa có giá phù hợp với điều kiện tài chính: Hãy xác định mức ngân sách mà bạn có thể chi trả cho việc mua loa. Các dòng loa JBL hiện nay được bán với mức giá đa dạng từ vài triệu đến vài chục triệu đồng. Việc biết được khả năng chi trả của mình sẽ giúp bạn tìm được chiếc loa phù hợp nhanh hơn. Ngoài ra, bạn cũng có thể tìm kiếm những đơn vị cung cấp loa theo hình thức trả góp để sở hữu chiếc loa yêu thích mà không cần lo lắng về gánh nặng tài chính.\r\n\r\n- Kiểm tra chất lượng âm thanh trước khi mua: Nếu mua loa trực tiếp từ cửa hàng, bạn có thể yêu cầu đơn bị bán cho bạn nghe thử âm thanh phát ra từ chiếc loa định mua. Việc nghe thử âm thanh trực tiếp giúp bạn quyết định xem loa có phù hợp với sở thích âm nhạc của bạn hay không.\r\n\r\n- Chính sách bảo hành sau mua: Kiểm tra kỹ chính sách bảo hành của nhà sản xuất hoặc đơn vị phân phối đối với sản phẩm để đảm bảo bạn có một dịch vụ hỗ trợ xử lý chuyên nghiệp nếu gặp vấn đề với loa trong quá trình sử dụng sau này.\r\n\r\nMua loa JBL chính hãng, giá tốt tại Siêu Thị Điện Máy - Nội Thất Chợ Lớn\r\nSiêu Thị Điện Máy - Nội Thất Chợ Lớn là một trong những đơn vị cung cấp các sản phẩm loa JBL chính hãng hàng đầu tại Việt Nam hiện nay. Đến đây, quý khách hàng sẽ có cơ hội trải nghiệm mua sắm thoải mái với các dòng loa JBL đa dạng chủng loại và mức giá. Đồng thời, không chỉ mua được chiếc loa ưng ý mà người mua sẽ nhận được sự tư vấn nhiệt tình của đội ngũ nhân viên để đảm bảo bạn chọn được sản phẩm phù hợp với nhu cầu của mình.\r\n\r\nSiêu Thị Điện Máy - Nội Thất Chợ Lớn\r\n\r\nSiêu Thị Điện Máy - Nội Thất Chợ Lớn\r\n\r\nBên cạnh loa JBL, Điện Máy - Nội Thất Chợ Lớn cũng là nơi cung cấp nhiều dòng loa của các thương hiệu nổi tiếng khác như loa Jamo, Paramax, Nanomax, Bose, Samsung,... Vì vậy, bạn có thể đến đây để tham khảo, trải nghiệm sản phẩm của nhiều hãng khác nhau để tìm ra sản phẩm ưng ý nhất.\r\n\r\nĐừng bỏ lỡ cơ hội sở hữu những sản phẩm âm thanh chất lượng vượt trội với giá ưu đãi tại Điện Máy - Nội Thất Chợ Lớn. Hãy truy cập ngay vào website https://dienmaycholon.vn/ hoặc đi đến cửa hàng gần nhất để lựa chọn cho mình chiếc loa JBL yêu thích.\r\n\r\n', 0, '2023-12-25 19:45:15', 0),
(110, 'Loa Jbl', 4, 20, 11, 222, '5', 'hhhhh', 0, '2023-12-25 19:47:42', 0),
(112, 'Loa Jbl', 2, 1, 2, 222, '0', 'vvvvvv', 0, '2023-12-25 19:55:41', 0),
(113, 'Nghe Nhạc', 3, 3, 2, 888, '0', 'a', 0, '2023-12-25 20:18:16', 0),
(114, 'Nghe Nhạc', 2, 1, 2, 888, '3', 'j', 0, '2023-12-25 20:18:42', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products_user`
--

DROP TABLE IF EXISTS `products_user`;
CREATE TABLE IF NOT EXISTS `products_user` (
  `product_id` int NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`product_id`,`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products_user`
--

INSERT INTO `products_user` (`product_id`, `user_id`) VALUES
(2, 69),
(2, 73),
(2, 80),
(3, 53),
(3, 73),
(6, 53),
(7, 52),
(7, 71),
(9, 52),
(9, 71),
(10, 52),
(11, 52),
(14, 53),
(15, 73),
(17, 53),
(17, 73),
(21, 53),
(24, 52),
(24, 71),
(25, 52),
(100, 53);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_type`
--

DROP TABLE IF EXISTS `product_type`;
CREATE TABLE IF NOT EXISTS `product_type` (
  `product_type_id` int NOT NULL AUTO_INCREMENT COMMENT 'id loai san pham',
  `name_product_type` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ten loai san pham ',
  PRIMARY KEY (`product_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_type`
--

INSERT INTO `product_type` (`product_type_id`, `name_product_type`) VALUES
(1, 'Đồ dùng nhà bếp'),
(2, 'Gia Dụng'),
(3, 'Nghe Nhạc'),
(11, 'Công nghệ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_user_cart`
--

DROP TABLE IF EXISTS `product_user_cart`;
CREATE TABLE IF NOT EXISTS `product_user_cart` (
  `product_id` int NOT NULL,
  `user_id` int NOT NULL,
  `quantity` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`product_id`,`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_user_cart`
--

INSERT INTO `product_user_cart` (`product_id`, `user_id`, `quantity`) VALUES
(4, 73, 1),
(2, 73, 1),
(6, 53, 1),
(2, 53, 1),
(98, 53, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `protypes`
--

DROP TABLE IF EXISTS `protypes`;
CREATE TABLE IF NOT EXISTS `protypes` (
  `type_id` int NOT NULL AUTO_INCREMENT,
  `type_name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `product_type_id` int NOT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `protypes`
--

INSERT INTO `protypes` (`type_id`, `type_name`, `product_type_id`) VALUES
(1, 'Tivi', 0),
(2, 'Tai nghe', 0),
(3, 'Smartphone', 0),
(4, 'LapTop', 0),
(5, 'Chuột', 0),
(20, 'Loa', 11);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `password` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `email` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `telephone` int DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `role_id` int NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `email`, `telephone`, `address`, `role_id`) VALUES
(80, 'tong', 'c4ca4238a0b923820dcc509a6f75849b', 'fffdd@gmail.com', 949985409, 'Bu Gia Phuc, Phu Nghia, Bu Gia Map, Binh Phuoc', 0),
(53, 'tritong', '202cb962ac59075b964b07152d234b70', 'Tri2003bt@gmail.com', 0, NULL, 1),
(73, 'hi', '49f68a5c8493ec2c0bf489821c21fc3b', '3', 3, '3', 0),
(68, 'aa', '202cb962ac59075b964b07152d234b70', 'yaongw@gmail.com', 12312, 'thôn 15, Hòa Đông,  Krông Pắc, Đắk Lắk', 0),
(71, 'hiep', '202cb962ac59075b964b07152d234b70', '3', 1233, '123', 0),
(70, '', 'd41d8cd98f00b204e9800998ecf8427e', NULL, NULL, NULL, 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
