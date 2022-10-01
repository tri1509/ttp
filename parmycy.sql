-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 01, 2022 at 06:33 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `parmycy`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `adminId` int(10) NOT NULL,
  `adminUser` varchar(255) NOT NULL,
  `adminPass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`adminId`, `adminUser`, `adminPass`) VALUES
(1, 'admin', '202cb962ac59075b964b07152d234b70'),
(2, 'adminTri', '202cb962ac59075b964b07152d234b70');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_baiviet`
--

CREATE TABLE `tbl_baiviet` (
  `baiviet_id` int(11) NOT NULL,
  `baiviet_name` varchar(255) NOT NULL,
  `baiviet_title` varchar(255) NOT NULL,
  `baiviet_noidung` text NOT NULL,
  `baiviet_date` date NOT NULL,
  `baiviet_luotxem` int(11) NOT NULL,
  `baiviet_img` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_baiviet`
--

INSERT INTO `tbl_baiviet` (`baiviet_id`, `baiviet_name`, `baiviet_title`, `baiviet_noidung`, `baiviet_date`, `baiviet_luotxem`, `baiviet_img`) VALUES
(1, 'QUÁ TRÌNH HÌNH THÀNH VÀ PHÁT TRIỂN CÔNG TY TNHH SX TM NXK TIẾN THỊNH PHÁT', 'CÔNG TY TNHH SX TM NXK NƯỚC GIẢI KHÁT TIẾN THỊNH PHÁT', '<h1 style=\"text-align: center;\"><span style=\"font-size:28px;\"><strong>CÔNG TY TNHH SX TM NXK NƯỚC GIẢI KHÁT TIẾN THỊNH PHÁT</strong></span></h1>\n                <p style=\"text-align: center;\"><span style=\"font-size:18px;\">Số tài khoản : 3838388388 - Ngân hàng ACB</span>\n                </p>\n                <p style=\"text-align: center;\"><span style=\"font-size:18px;\"><a href=\"http://salanest.com/\">http://salanest.com/</a></span>\n                </p>\n                <p style=\"text-align: center;\"><span style=\"font-size:18px;\">Hotline : 0847.28.38.38</span>\n                </p>\n                <p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><strong>QUÁ TRÌNH PHÁT TRIỂN CÔNG TY CÔNG TY TNHH SX TM XNK NGK TIẾN THỊNH PHÁT</strong> được hình từ công ty <strong>TNHH SX NGK TIẾN THỊNH PHÁT</strong> thành lập vào 2015 phát triển lĩnh vực ngành hàng nội thất và phát triển kênh bán lẻ sản phẩm nhập khẩu. Qua quá trình vận hành phát triển những năm sau. Công ty có bước tiến mới về ngành hàng tiêu dùng và bắt đầu khai phá thị trường nước uống có cồn. chính thức bắt tay họp tác với các nhãn hàng bia, rượu nhập khẩu. Một lần nữa Tiến Thịnh Phát cho ra đời Showroom Rượu đầu tiên tại khu vực quận Gò Vấp năm 2016 . Mang tên Thương Hiệu “<strong>Thế giới rượu 365</strong>“ hoặc động 02 năm tăng trưởng không cao và nhận định thị trường hạn hẹp không được phát triển mạnh mẽ.</span>\n                </p>\n                <p style=\"text-align: justify;\"><span style=\"font-size:16px;\">Bắt đầu tìm hiểu thông tin và nghiên cứu thêm những sản phẩm cùng phân khúc trong lĩnh vực sức khỏe và làm đẹp. Tiến Thịnh Phát một lần nữa chuyển đổi mô hình phát triển qua lĩnh vực sản xuất sản phẩm yến sào. Trong quá trình phát triển sản phẩm trong đầu năm 2017 gặp nhiều vấn đề khó khăn như việc tìm kiếm khách hàng , phát triển hệ thống sale , làm Marketing sản phẩm. Với sự tìm hiểu và đồng hành phát triển ngành hàng yến sào, Tiến Thịnh Phát vận dụng cơ chế từ trước và cho ra đời showroom “<strong>Yến Sào 365</strong>“ bên cạnh “<strong>Thế giới rượu 365</strong>\".</span>\n                </p>\n                <p style=\"text-align: justify;\"><span style=\"font-size:16px;\">Trong những lần thay đổi cơ chế Tiến Thịnh Phát lại cho thấy sự phát triển bền vừng và gắn liền cùng với thương hiệu được tạo ra sản phẩm chủ lực tại thời điểm phát triển. Công ty luôn đi cùng khách hàng, am hiểu và chia sẻ từ khách hàng về sản phẩm yến sào chất lượng không pha tạp chất, từ đó công ty cho ra đời sản phẩm yến sào \"<strong>Nước yến sào SALANEST\"</strong> và \"<strong>tổ yến sào Salanest\"</strong> hai sản phẩm chủ lực và phát triển định hình thương hiệu đến ngày hôm nay.</span>\n                </p>\n                <p style=\"text-align: justify;\"><span style=\"font-size:16px;\">Trong quá trình phát triển, một lần nữa sự thay đổi về cơ cấu, chúng tôi quyết định thành lập <strong>CÔNG TY TNHH SX TM XNK NGK TIẾN THỊNH PHÁT</strong>. Đây được xem là lời khẳng định sản phẩm đủ cung ứng tại thị trường Việt Nam và xuất khẩu ra nước ngoài. <strong>Công Ty SX TM XNK NGK TIẾN THỊNH PHÁT </strong>không ngừng phát triển, mang đến thị trường Việt và quốc tế những sản phẩm yến tinh khiết nhất. Chuyên cung cấp: yến thô, yến sơ chế, yến tinh chế, yến tươi đóng thố, yến hủ chưng sẵn nhiều vị khác nhau (đường phèn, táo đỏ, hạt chia, hạt sen, long nhãn, đông trùng hạ thảo, tứ vị, gừng, hương dứa thiên nhiên) phù hợp cho trẻ nhỏ, ăn kiêng dành cho người tiểu đường và người ít ăn ngọt.</span>\n                </p>\n                <p style=\"text-align:center\"><img alt=\"\" height=\"288\" src=\"http://salanest.com/upload/images/benan%201360.jpg\" width=\"816\" />\n                </p>\n                <p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><strong>Công Ty SX TM XNK NGK TIẾN THINH PHÁT </strong>còn cung cấp mỹ phẩm làm đẹp từ yến sào, nhận hợp đồng gia công yến hủ chưng sẵn theo yêu cầu khách hàng để xuất khẩu quốc tế. <strong>Công Ty SX TM XNK NGK TIẾN THINH PHÁT </strong>cam kết: </span>\n                </p>\n                <ul>\n                    <li style=\"text-align: justify;\"><span style=\"font-size:16px;\">100% yến sào nguyên chất từ thiên nhiên.</span>\n                    </li>\n                    <li style=\"text-align: justify;\"><span style=\"font-size:16px;\">Nguồn yến hoàn toàn của Việt Nam</span>\n                    </li>\n                    <li style=\"text-align: justify;\"><span style=\"font-size:16px;\">Nói không hóa chất trong quá trình chế biến </span>\n                    </li>\n                    <li style=\"text-align: justify;\"><span style=\"font-size:16px;\">Tất cả các sản phẩm được chọn lọc kỹ lưỡng. </span>\n                    </li>\n                </ul>\n                <p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><strong>Thương hiệu Công Ty SX TM XNK NGK TIẾN THỊNH PHÁT</strong> được xây dựng trên phương châm “<span style=\"color:#FF0000;\"><strong>Sản phẩm thật, Sản Phẩm Sạch, Chất lượng vàng</strong></span>” góp phần\n                    nâng cao sức khoẻ cho cộng đồng.</span>\n                </p>\n                <p style=\"text-align: justify;\"><span style=\"font-size:16px;\">Trong quá trình phát triển sản phẩm Tiến Thịnh Phát đã đạt được những thành tưu như:</span>\n                </p>\n                <ul>\n                    <li style=\"text-align: justify;\"><span style=\"font-size:16px;\">Trong năm 2017 : Tiến thịnh phát đã cho ra thị trường 10.000 yến các loại.</span>\n                    </li>\n                    <li style=\"text-align: justify;\"><span style=\"font-size:16px;\">Mùa tết 2017 -2018 trong 03 ngày làm việc. tỷ lệ đơn hàng lẻ về công ty trên 1.800 Hộp.</span>\n                    </li>\n                    <li style=\"text-align: justify;\"><span style=\"font-size:16px;\">Thị trường 2018 - 2019 : Công ty tăng trưởng 50% doanh số bán hàng và đạt dung lượng sản phẩn được bán ra thị trường khắp cả nước và mọi vùng miền tổ quốc trong năm 2018 : gần 17.000 sản phẩm các loại. </span>\n                    </li>\n                    <li style=\"text-align: justify;\"><span style=\"font-size:16px;\">Trong 10 tháng đầu năm 2019: doanh số sản phẩm tăng vượt bậc, đã bán được 14.000 sản phẩm. Công ty định hướng chiến lượt cuối năm 2019 đạt doanh số 22.000 sản phẩm các loại.</span>\n                    </li>\n                </ul>\n                <p style=\"text-align: justify;\"><span style=\"font-size:16px;\">Trong thời gian phát triển công ty định hinh phát triển Online và Marketing online và chưa phát triển kênh GT và MT tại thị trường Việt Nam.</span>\n                </p>\n                <p style=\"text-align:center\"><img alt=\"\" height=\"512\" src=\"img/nam-thuan-phat-building-truong-cong-dinh-cho-thue-van-phong-quan-tan-binh-vlook.vn-bia.jpg\" width=\"362\" />\n                </p>', '2022-09-28', 1234, 'nam-thuan-phat-building-truong-cong-dinh-cho-thue-van-phong-quan-tan-binh-vlook.vn-bia.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `brand_id` int(50) UNSIGNED NOT NULL,
  `brand_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_brand`
--

INSERT INTO `tbl_brand` (`brand_id`, `brand_name`) VALUES
(1, 'SALANEST'),
(2, 'GIA BẢO'),
(3, 'HERA NEST');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_brand_lv2`
--

CREATE TABLE `tbl_brand_lv2` (
  `id` int(11) NOT NULL,
  `brand_id` int(100) NOT NULL,
  `brand_id_lv2` int(11) NOT NULL,
  `brand_name_lv2` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_brand_lv2`
--

INSERT INTO `tbl_brand_lv2` (`id`, `brand_id`, `brand_id_lv2`, `brand_name_lv2`) VALUES
(1, 1, 11, 'đường phèn'),
(2, 1, 12, 'nhân sâm\r\n'),
(3, 1, 13, 'KIDS'),
(4, 1, 14, 'đông trùng'),
(5, 1, 15, 'saffron'),
(6, 2, 21, 'saffron'),
(7, 2, 22, 'đông trùng'),
(8, 2, 23, 'nhân sâm\r\n'),
(9, 2, 24, 'đường phèn'),
(10, 2, 25, 'không đường\r\n'),
(11, 2, 26, 'hạt chia\r\n'),
(12, 3, 31, 'đông trùng'),
(13, 3, 32, 'nhân sâm\r\n'),
(14, 3, 33, 'đường phèn'),
(15, 3, 34, 'saffron'),
(16, 3, 35, 'hạt chia\r\n'),
(17, 3, 37, 'táo đỏ\n'),
(18, 3, 36, 'không đường\r\n'),
(19, 2, 27, 'táo đỏ');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `cartId` int(11) NOT NULL,
  `productId` int(11) UNSIGNED NOT NULL,
  `sessionId` varchar(255) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_cart`
--

INSERT INTO `tbl_cart` (`cartId`, `productId`, `sessionId`, `productName`, `price`, `quantity`, `img`) VALUES
(172, 402, 'mbu4666f22ek7bcsufsj10a1ek', 'Yến tinh chế loại 2 100g', '2990000', 2, 'yento.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `category_id` int(11) UNSIGNED NOT NULL,
  `category_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`category_id`, `category_name`) VALUES
(1, 'Yến sào chưng đường phèn'),
(2, 'Yến chưng KID'),
(3, 'Yến chưng nhân sâm'),
(4, 'Yến chưng đông trùng hạ thảo'),
(5, 'Yến chưng Saffron'),
(6, 'Yến chưng hạt chia'),
(7, 'Yến chưng không đường');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `zipcode` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_customer`
--

INSERT INTO `tbl_customer` (`id`, `name`, `address`, `zipcode`, `email`, `password`) VALUES
(33, 'Minh Trí Tăng', '260/18 TTH02 quận 12 HCM', '0898303889', 'tri@gmail.com', '111'),
(36, 'Lê Thị Bông', 'Cầu dừa', '2213240011', 'bong@gmail.com', 'hhvvvvvvvvvvv');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(11) NOT NULL,
  `productId` int(100) UNSIGNED NOT NULL,
  `productName` varchar(255) NOT NULL,
  `quantity` int(40) NOT NULL,
  `price` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `customer_id` int(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `date_order` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sanpham`
--

CREATE TABLE `tbl_sanpham` (
  `sanpham_id` int(11) UNSIGNED NOT NULL,
  `category_id` int(11) UNSIGNED NOT NULL,
  `brand_id` int(11) UNSIGNED NOT NULL,
  `sanpham_name` varchar(255) NOT NULL,
  `sanpham_chitiet` text NOT NULL,
  `sanpham_mota` text NOT NULL,
  `sanpham_gia` int(50) NOT NULL,
  `sanpham_giakhuyenmai` int(50) NOT NULL,
  `sanpham_soluong` int(50) NOT NULL,
  `hinh` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_sanpham`
--

INSERT INTO `tbl_sanpham` (`sanpham_id`, `category_id`, `brand_id`, `sanpham_name`, `sanpham_chitiet`, `sanpham_mota`, `sanpham_gia`, `sanpham_giakhuyenmai`, `sanpham_soluong`, `hinh`) VALUES
(1, 1, 1, 'Gia Bảo -Yến sào Gia Bảo Đường Phèn', ' <p> Thành phần:</p>\n<p>* Yến Tươi: 30% <p>\n<p>* Saffron: 10% <p>\n<p>* Nước tinh khiết: 68% <p>\n<p>* Đường phèn: 10% <p>\n<p>* Tảo biển: 2%<p><br><hr>', '', 54000, 49000, 69, 'yen-sao-gia-bao-duong-phen-1.webp'),
(2, 1, 2, 'Gia Bảo - Yến sào Gia Bảo Đường Phèn - 3lọ', '<p>Thành Phần:</p>\n<p>* Yến Tươi: 30% </p>\n <p>* Nước tinh khiết: 68%</p>\n<p>* Tảo biển: 2%</p><br><hr>', '', 158000, 145000, 69, 'yen-sao-gia-bao-duong-phen-2.webp'),
(3, 1, 3, 'Gia Bảo - Yến sào Gia Bảo -Đường Phèn - 6lọ', '<p>Thành phần:</p>\n<p>* Yến Tươi: 30%</p>\n <p>* Nước tinh khiết: 68%</p>\n <p>* Đường phèn: 8%</p>\n <p>* Tảo biển: 2%</p>\n <p* Vitamin D3, Tảo biển: 2%></p>\n<p>* Lysine: 2%</p><br><hr>', '', 270000, 266000, 20, 'yen-sao-gia-bao-duong-phen-3.webp'),
(4, 1, 3, 'Gia Bảo - Yến sào Gia Bảo - Đường Phèn - hộp lớn', '<p>Thành phần:</p>\n<p>* Yến Tươi: 30%</p>\n <p>* Nước tinh khiết: 68%</p>\n <p>* Đường phèn: 8%</p>\n <p>* Tảo biển: 2%</p>\n <p* Vitamin D3, Tảo biển: 2%></p>\n<p>* Lysine: 2%</p><br><hr>', '', 270000, 266000, 20, 'yen-sao-gia-bao-duong-phen-4.webp'),
(5, 1, 1, 'Gia Bảo - Yến sào Gia Bảo -Hạt Chia - hộp lớn', '<p>Thành Phần:</p>\n<p> Yến Tươi: 30% </p>\n<p> Nước tinh khiết: 68% </p>\n <p>* Đường phèn: 10%</p>\n<p>* Tảo biển: 2%</p><br><hr>', '', 270000, 266000, 20, 'yen-sao-gia-bao-duong-phen-12'),
(6, 1, 2, 'Gia Bảo - Yến sào Gia Bảo -Nhân Sâm - 1 lọ', '<p>Thành Phần:</p>\n<p> Yến Tươi: 30% </p>\n<p> Nước tinh khiết: 68% </p>\n <p>* Đường phèn: 10%</p>\n<p>* Tảo biển: 2%</p><br><hr>', '', 54000, 49000, 20, 'nhansam_1c_tra.webp'),
(7, 1, 3, 'Gia Bảo - Yến sào Gia Bảo -Nhân Sâm - 3 lọ', '<p>Thành phần:</p>\n<p>* Yến Tươi: 30% </p>\n <p>* Đông trùng hạ thảo: 10%</p>\n<p>* Nước tinh khiết: 68% </p>\n<p>* Đường phèn: 10% </p>\n<p>* Tảo biển: 2%</p><br><hr>', '', 158000, 145000, 20, 'nhansam_3c_tra.webp'),
(201, 2, 2, 'Gia Bảo - Yến sào Gia Bảo -Nhân Sâm - 6 lọ', '<p>Thành phần:</p>\n<p>* Yến Tươi: 30% </p>\n <p>* Đông trùng hạ thảo: 10%</p>\n<p>* Nước tinh khiết: 68% </p>\n<p>* Đường phèn: 10% </p>\n<p>* Tảo biển: 2%</p><br><hr>', '', 8900000, 9900000, 20, 'nhansam_6c_tra.webp'),
(202, 2, 1, 'Gia Bảo - Yến sào - Nhân Sâm - Hộp Lớn', '<p>Thành phần:</p>\n<p>* Yến Tươi: 30% </p>\n <p>* Đông trùng hạ thảo: 10%</p>\n<p>* Nước tinh khiết: 68% </p>\n<p>* Đường phèn: 10% </p>\n<p>* Tảo biển: 2%</p><br><hr>', '', 11000000, 11900000, 20, 'nhansam_front_tra.webp'),
(203, 2, 2, 'Gia Bảo - Yến sào - safron - 1 lọ', '<p>Thành phần:</p>\n<p>* Yến Tươi: 30% </p>\n <p>* Đông trùng hạ thảo: 10%</p>\n<p>* Nước tinh khiết: 68% </p>\n<p>* Đường phèn: 10% </p>\n<p>* Tảo biển: 2%</p><br><hr>', '', 54000, 490000, 0, 'saffron_1c_tra.webp'),
(204, 2, 2, 'Gia Bảo - Yến sào - safron - 3 lọ', '<p>Thành phần:</p>  <p>* Yến Tươi: 30%</p>  <p>* Nhân sâm: 10%</p> <p>* Nước tinh khiết: 68%</p>   <p>* Đường phèn: 10%</p> <p>* Tảo biển: 2%</p><br><hr>', '', 151000, 149000, 10, 'saffron_3c_tra.webp'),
(205, 2, 3, 'Gia Bảo - Yến sào - safron - 6 lọ', '<p>Thành phần:</p>  <p>* Yến Tươi: 30%</p>  <p>* Nhân sâm: 10%</p> <p>* Nước tinh khiết: 68%</p>   <p>* Đường phèn: 10%</p> <p>* Tảo biển: 2%</p><br><hr>', '', 265000, 256000, 10, 'saffron_6c_tra.webp'),
(206, 2, 1, 'Gia Bảo - Yến sào - safron - Hộp lớn', '<p>Thành phần:</p>  <p>* Yến Tươi: 30%</p>  <p>* Nhân sâm: 10%</p> <p>* Nước tinh khiết: 68%</p>   <p>* Đường phèn: 10%</p> <p>* Tảo biển: 2%</p><br><hr>', '', 265000, 256000, 10, 'saffron_front_tra.webp'),
(207, 2, 1, 'Gia Bảo - Yến sào - Táo Đỏ - 1 lọ', '<p>Thành phần:</p>  <p>* Yến Tươi: 30%</p>  <p>* Nhân sâm: 10%</p> <p>* Nước tinh khiết: 68%</p>   <p>* Đường phèn: 10%</p> <p>* Tảo biển: 2%</p><br><hr>', '', 51000, 49000, 10, 'taodo_1c_tra.webp'),
(301, 3, 2, 'Gia Bảo - Yến sào - Táo Đỏ - 3 lọ .', '<p>Thành phần:</p>  <p>* Yến Tươi: 30%</p>  <p>* Nhân sâm: 10%</p> <p>* Nước tinh khiết: 68%</p>   <p>* Đường phèn: 10%</p> <p>* Tảo biển: 2%</p><br><hr>', '', 151000, 149000, 10, 'taodo_3c_tra.webp'),
(302, 3, 3, 'Gia Bảo - Yến sào - Táo Đỏ - 6 lọ .', '<p>Thành phần:</p>  <p>* Yến Tươi: 30%</p>  <p>* Nhân sâm: 10%</p> <p>* Nước tinh khiết: 68%</p>   <p>* Đường phèn: 10%</p> <p>* Tảo biển: 2%</p><br><hr>', '', 258000, 254000, 10, 'taodo_6c_tra.webp'),
(303, 3, 2, 'Gia Bảo - Yến sào - Táo Đỏ - Hộp lớn.', '<p>Thành phần:</p>  <p>* Yến Tươi: 30%</p>  <p>* Nhân sâm: 10%</p> <p>* Nước tinh khiết: 68%</p>   <p>* Đường phèn: 10%</p> <p>* Tảo biển: 2%</p><br><hr>', '', 258000, 254000, 10, 'taodo_front_tra.webp'),
(304, 3, 1, 'HERANEST - Đông Trùng - 1 lọ .', '<p>Thành Phần:</p> <p>* Yến Tươi: 35% </p>  <p>* Nước tinh khiết: 68%</p> <p>* Tảo biển: 2%</p><br><hr>', '', 55000, 49000, 10, 'dongtrung_1c_tra.webp'),
(305, 3, 2, 'HERANEST - Đông Trùng - 3 lọ .', '<p>Thành Phần:</p> <p>* Yến Tươi: 35% </p>  <p>* Nước tinh khiết: 68%</p> <p>* Tảo biển: 2%</p><br><hr>', '', 155000, 145000, 10, 'dongtrung_3c_tra.webp'),
(306, 3, 3, 'HERANEST - Đông Trùng - 6 lọ .', '<p>Thành Phần:</p> <p>* Yến Tươi: 35% </p>  <p>* Nước tinh khiết: 68%</p> <p>* Tảo biển: 2%</p><br><hr>', '', 255000, 249000, 10, 'dongtrung_6c_tra.webp'),
(401, 4, 3, 'HERANEST - Đông Trùng - Hộp lớn.', '<p>Thành Phần:</p> <p>* Yến Tươi: 35% </p>  <p>* Nước tinh khiết: 68%</p> <p>* Tảo biển: 2%</p><br><hr>', '', 255000, 249000, 10, 'dongtrung_front_tra.webp'),
(402, 4, 1, 'HERANEST - Đường Phèn - 1 lọ .', '<p>Thành Phần:</p> <p>* Yến Tươi: 35% </p>  <p>* Nước tinh khiết: 68%</p> <p>* Tảo biển: 2%</p><br><hr>', '', 55000, 49000, 10, 'duongphen_1c_tra.webp'),
(403, 4, 2, 'HERANEST - Đường Phèn - 3 lọ .', '<p>Thành Phần:</p> <p>* Yến Tươi: 35% </p>  <p>* Nước tinh khiết: 68%</p> <p>* Tảo biển: 2%</p><br><hr>', '', 151000, 145000, 10, 'duongphen_3c_tra.webp'),
(404, 4, 3, 'HERANEST - Đường Phèn - 6 lọ .', '<p>Thành Phần:</p> <p>* Yến Tươi: 35% </p>  <p>* Nước tinh khiết: 68%</p> <p>* Tảo biển: 2%</p><br><hr>', '', 255000, 250000, 10, 'duongphen_6c_tra.webp'),
(405, 4, 3, 'HERANEST - Đường Phèn - Hộp lớn.', '<p>Thành Phần:</p> <p>* Yến Tươi: 35% </p>  <p>* Nước tinh khiết: 68%</p> <p>* Tảo biển: 2%</p><br><hr>', '', 255000, 250000, 10, 'duongphen_front_tra.webp'),
(501, 5, 3, 'HERANEST - Hạt Chia - 1 lọ .', '<p>Thành phần:</p> <p>* Yến Tươi: 35% </p>  <p>* Đông trùng hạ thảo: 10%</p> <p>* Nước tinh khiết: 68% </p> <p>* Đường phèn: 10% </p> <p>* Tảo biển: 2%</p><br><hr>', '', 63000, 59000, 10, 'hatchia_1c_tra.webp'),
(502, 5, 3, 'HERANEST - Hạt Chia - 3 lọ .', '<p>Thành phần:</p> <p>* Yến Tươi: 35% </p>  <p>* Đông trùng hạ thảo: 10%</p> <p>* Nước tinh khiết: 68% </p> <p>* Đường phèn: 10% </p> <p>* Tảo biển: 2%</p><br><hr>', '', 165000, 159000, 10, 'hatchia_3c_tra.webp'),
(709, 5, 3, 'HERANEST - Hạt Chia - 6 lọ .', '<p>Thành phần:</p> <p>* Yến Tươi: 35% </p>  <p>* Đông trùng hạ thảo: 10%</p> <p>* Nước tinh khiết: 68% </p> <p>* Đường phèn: 10% </p> <p>* Tảo biển: 2%</p><br><hr>', '', 265000, 259000, 10, 'hatchia_6c_tra.webp'),
(710, 5, 3, 'HERANEST - Hạt Chia - 3 lọ .', '<p>Thành phần:</p> <p>* Yến Tươi: 35% </p>  <p>* Đông trùng hạ thảo: 10%</p> <p>* Nước tinh khiết: 68% </p> <p>* Đường phèn: 10% </p> <p>* Tảo biển: 2%</p><br><hr>', '', 265000, 259000, 10, 'hatchia_front_tra.webp'),
(711, 5, 3, 'HERANEST - Nhân Sâm - 1 lọ .', '<p>Thành phần:</p> <p>* Yến Tươi: 35% </p>  <p>* Đông trùng hạ thảo: 10%</p> <p>* Nước tinh khiết: 68% </p> <p>* Đường phèn: 10% </p> <p>* Tảo biển: 2%</p><br><hr>', '', 65000, 59000, 10, 'nhansam_1c_tra.webp'),
(712, 5, 3, 'HERANEST - Nhân Sâm - 3 lọ .', '<p>Thành phần:</p> <p>* Yến Tươi: 35% </p>  <p>* Đông trùng hạ thảo: 10%</p> <p>* Nước tinh khiết: 68% </p> <p>* Đường phèn: 10% </p> <p>* Tảo biển: 2%</p><br><hr>', '', 165000, 159000, 10, 'nhansam_3c_tra.webp'),
(713, 5, 3, 'HERANEST - Nhân Sâm - 6 lọ .', '<p>Thành phần:</p> <p>* Yến Tươi: 35% </p>  <p>* Đông trùng hạ thảo: 10%</p> <p>* Nước tinh khiết: 68% </p> <p>* Đường phèn: 10% </p> <p>* Tảo biển: 2%</p><br><hr>', '', 165000, 159000, 10, 'nhansam_6c_tra.webp'),
(714, 5, 3, 'HERANEST - Nhân Sâm - Hộp lớn .', '<p>Thành phần:</p> <p>* Yến Tươi: 35% </p>  <p>* Đông trùng hạ thảo: 10%</p> <p>* Nước tinh khiết: 68% </p> <p>* Đường phèn: 10% </p> <p>* Tảo biển: 2%</p><br><hr>', '', 165000, 159000, 10, 'nhansam_front_tra.webp'),
(715, 5, 3, 'HERANEST - Táo Đỏ - 1 lọ .', '<p>Thành phần:</p> <p>* Yến Tươi: 35% </p>  <p>* Đông trùng hạ thảo: 10%</p> <p>* Nước tinh khiết: 68% </p> <p>* Đường phèn: 10% </p> <p>* Tảo biển: 2%</p><br><hr>', '', 56000, 49000, 10, 'taodo_1c_tra.webp'),
(716, 5, 3, 'HERANEST - Táo Đỏ - 3 lọ .', '<p>Thành phần:</p> <p>* Yến Tươi: 35% </p>  <p>* Đông trùng hạ thảo: 10%</p> <p>* Nước tinh khiết: 68% </p> <p>* Đường phèn: 10% </p> <p>* Tảo biển: 2%</p><br><hr>', '', 156000, 149000, 10, 'taodo_3c_tra.webp'),
(717, 5, 3, 'HERANEST - Táo Đỏ - 6 lọ .', '<p>Thành phần:</p> <p>* Yến Tươi: 35% </p>  <p>* Đông trùng hạ thảo: 10%</p> <p>* Nước tinh khiết: 68% </p> <p>* Đường phèn: 10% </p> <p>* Tảo biển: 2%</p><br><hr>', '', 256000, 249000, 10, 'taodo_6c_tra.webp'),
(718, 5, 3, 'HERANEST - Táo Đỏ - Hộp lớn .', '<p>Thành phần:</p> <p>* Yến Tươi: 35% </p>  <p>* Đông trùng hạ thảo: 10%</p> <p>* Nước tinh khiết: 68% </p> <p>* Đường phèn: 10% </p> <p>* Tảo biển: 2%</p><br><hr>', '', 256000, 249000, 10, 'taodo_front_tra.webp'),
(719, 5, 1, 'SALANEST - Đông Trùng - 1 lọ .', '<p>Thành phần:</p> <p>* Yến Tươi: 20% </p>  <p>* Đông trùng hạ thảo: 10%</p> <p>* Nước tinh khiết: 68% </p> <p>* Đường phèn: 10% </p> <p>* Tảo biển: 2%</p><br><hr>', '', 56000, 49000, 99, 'yen-sao-salanest-dong-trung-9.webp'),
(720, 5, 1, 'SALANEST - Đông Trùng - 3 lọ .', '<p>Thành phần:</p> <p>* Yến Tươi: 20% </p>  <p>* Đông trùng hạ thảo: 10%</p> <p>* Nước tinh khiết: 68% </p> <p>* Đường phèn: 10% </p> <p>* Tảo biển: 2%</p><br><hr>', '', 161000, 155000, 99, 'yen-sao-salanest-dong-trung-8.webp'),
(721, 5, 1, 'SALANEST - Đông Trùng - 6 lọ .', '<p>Thành phần:</p> <p>* Yến Tươi: 20% </p>  <p>* Đông trùng hạ thảo: 10%</p> <p>* Nước tinh khiết: 68% </p> <p>* Đường phèn: 10% </p> <p>* Tảo biển: 2%</p><br><hr>', '', 261000, 255000, 99, 'yen-sao-salanest-dong-trung-7.webp'),
(722, 5, 1, 'SALANEST - Đông Trùng - Hộp Lớn .', '<p>Thành phần:</p> <p>* Yến Tươi: 20% </p>  <p>* Đông trùng hạ thảo: 10%</p> <p>* Nước tinh khiết: 68% </p> <p>* Đường phèn: 10% </p> <p>* Tảo biển: 2%</p><br><hr>', '', 261000, 255000, 99, 'yen-sao-salanest-dong-trung-4.webp'),
(723, 5, 1, 'SALANEST - Đông Trùng - Không Đường - 1 lọ .', '<p>Thành phần:</p> <p>* Yến Tươi: 20% </p>  <p>* Đông trùng hạ thảo: 10%</p> <p>* Nước tinh khiết: 68% </p> <p>* Đường phèn: 10% </p> <p>* Tảo biển: 2%</p><br><hr>', '', 61000, 55000, 99, 'yen-sao-salanest-dong-trung-khong-duong-1.webp'),
(724, 5, 1, 'SALANEST - Đông Trùng - Không Đường - 3 lọ .', '<p>Thành phần:</p> <p>* Yến Tươi: 20% </p>  <p>* Đông trùng hạ thảo: 10%</p> <p>* Nước tinh khiết: 68% </p> <p>* Đường phèn: 10% </p> <p>* Tảo biển: 2%</p><br><hr>', '', 161000, 155000, 99, 'yen-sao-salanest-dong-trung-khong-duong-3.webp'),
(725, 5, 1, 'SALANEST - Đông Trùng - Không Đường - 6 lọ .', '<p>Thành phần:</p> <p>* Yến Tươi: 20% </p>  <p>* Đông trùng hạ thảo: 10%</p> <p>* Nước tinh khiết: 68% </p> <p>* Đường phèn: 10% </p> <p>* Tảo biển: 2%</p><br><hr>', '', 261000, 255000, 99, 'yen-sao-salanest-dong-trung-khong-duong-2.webp'),
(726, 5, 1, 'SALANEST - Đường Phèn - 1 lọ .', '<p>Thành phần:</p> <p>* Yến Tươi: 20% </p>  <p>* Đông trùng hạ thảo: 10%</p> <p>* Nước tinh khiết: 68% </p> <p>* Đường phèn: 10% </p> <p>* Tảo biển: 2%</p><br><hr>', '', 61000, 55000, 99, 'yen-sao-salanest-duong-phen-1.webp'),
(727, 5, 1, 'SALANEST - Đường Phèn - 3 lọ .', '<p>Thành phần:</p> <p>* Yến Tươi: 20% </p>  <p>* Đông trùng hạ thảo: 10%</p> <p>* Nước tinh khiết: 68% </p> <p>* Đường phèn: 10% </p> <p>* Tảo biển: 2%</p><br><hr>', '', 161000, 155000, 99, 'yen-sao-salanest-duong-phen-5.webp'),
(728, 5, 1, 'SALANEST - Đường Phèn - 6 lọ .', '<p>Thành phần:</p> <p>* Yến Tươi: 20% </p>  <p>* Đông trùng hạ thảo: 10%</p> <p>* Nước tinh khiết: 68% </p> <p>* Đường phèn: 10% </p> <p>* Tảo biển: 2%</p><br><hr>', '', 261000, 255000, 99, 'yen-sao-salanest-duong-phen-6.webp'),
(729, 5, 1, 'SALANEST - Đường Phèn - Hộp Lớn.', '<p>Thành phần:</p> <p>* Yến Tươi: 20% </p>  <p>* Đông trùng hạ thảo: 10%</p> <p>* Nước tinh khiết: 68% </p> <p>* Đường phèn: 10% </p> <p>* Tảo biển: 2%</p><br><hr>', '', 261000, 255000, 99, 'yen-sao-salanest-duong-phen-7.webp');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`adminId`);

--
-- Indexes for table `tbl_baiviet`
--
ALTER TABLE `tbl_baiviet`
  ADD PRIMARY KEY (`baiviet_id`);

--
-- Indexes for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `tbl_brand_lv2`
--
ALTER TABLE `tbl_brand_lv2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`cartId`),
  ADD KEY `productId` (`productId`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productId` (`productId`,`customer_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  ADD PRIMARY KEY (`sanpham_id`),
  ADD KEY `category_id` (`category_id`,`brand_id`),
  ADD KEY `brand_id` (`brand_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `adminId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_baiviet`
--
ALTER TABLE `tbl_baiviet`
  MODIFY `baiviet_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `brand_id` int(50) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tbl_brand_lv2`
--
ALTER TABLE `tbl_brand_lv2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `cartId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=174;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `category_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  MODIFY `sanpham_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=730;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD CONSTRAINT `tbl_cart_ibfk_1` FOREIGN KEY (`productId`) REFERENCES `tbl_sanpham` (`sanpham_id`);

--
-- Constraints for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD CONSTRAINT `tbl_order_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `tbl_customer` (`id`),
  ADD CONSTRAINT `tbl_order_ibfk_2` FOREIGN KEY (`productId`) REFERENCES `tbl_sanpham` (`sanpham_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  ADD CONSTRAINT `tbl_sanpham_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `tbl_category` (`category_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `tbl_sanpham_ibfk_2` FOREIGN KEY (`brand_id`) REFERENCES `tbl_brand` (`brand_id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
