-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 02, 2022 lúc 09:30 PM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `ttp`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `adminId` int(10) NOT NULL,
  `adminUser` varchar(255) NOT NULL,
  `adminPass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`adminId`, `adminUser`, `adminPass`) VALUES
(1, 'admin', '202cb962ac59075b964b07152d234b70'),
(2, 'adminTri', '202cb962ac59075b964b07152d234b70');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_baiviet`
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
-- Đang đổ dữ liệu cho bảng `tbl_baiviet`
--

INSERT INTO `tbl_baiviet` (`baiviet_id`, `baiviet_name`, `baiviet_title`, `baiviet_noidung`, `baiviet_date`, `baiviet_luotxem`, `baiviet_img`) VALUES
(1, 'QUÁ TRÌNH HÌNH THÀNH VÀ PHÁT TRIỂN CÔNG TY TNHH SX TM NXK TIẾN THỊNH PHÁT', 'CÔNG TY TNHH SX TM NXK NƯỚC GIẢI KHÁT TIẾN THỊNH PHÁT', '<h1 style=\"text-align: center;\"><span style=\"font-size:28px;\"><strong>CÔNG TY TNHH SX TM NXK NƯỚC GIẢI KHÁT TIẾN THỊNH PHÁT</strong></span></h1>\r\n                <p style=\"text-align: center;\"><span style=\"font-size:18px;\"><a href=\"http://salanest.com/\">http://salanest.com/</a></span>\r\n                </p>\r\n                <p style=\"text-align: center;\"><span style=\"font-size:18px;\">Hotline : 0847.28.38.38</span>\r\n                </p>\r\n                <p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><strong>QUÁ TRÌNH PHÁT TRIỂN CÔNG TY CÔNG TY TNHH SX TM XNK NGK TIẾN THỊNH PHÁT</strong> được hình từ công ty <strong>TNHH SX NGK TIẾN THỊNH PHÁT</strong> thành lập vào 2015 phát triển lĩnh vực ngành hàng nội thất và phát triển kênh bán lẻ sản phẩm nhập khẩu. Qua quá trình vận hành phát triển những năm sau. Công ty có bước tiến mới về ngành hàng tiêu dùng và bắt đầu khai phá thị trường nước uống có cồn. chính thức bắt tay họp tác với các nhãn hàng bia, rượu nhập khẩu. Một lần nữa Tiến Thịnh Phát cho ra đời Showroom Rượu đầu tiên tại khu vực quận Gò Vấp năm 2016 . Mang tên Thương Hiệu “<strong>Thế giới rượu 365</strong>“ hoặc động 02 năm tăng trưởng không cao và nhận định thị trường hạn hẹp không được phát triển mạnh mẽ.</span>\r\n                </p>\r\n                <p style=\"text-align: justify;\"><span style=\"font-size:16px;\">Bắt đầu tìm hiểu thông tin và nghiên cứu thêm những sản phẩm cùng phân khúc trong lĩnh vực sức khỏe và làm đẹp. Tiến Thịnh Phát một lần nữa chuyển đổi mô hình phát triển qua lĩnh vực sản xuất sản phẩm yến sào. Trong quá trình phát triển sản phẩm trong đầu năm 2017 gặp nhiều vấn đề khó khăn như việc tìm kiếm khách hàng , phát triển hệ thống sale , làm Marketing sản phẩm. Với sự tìm hiểu và đồng hành phát triển ngành hàng yến sào, Tiến Thịnh Phát vận dụng cơ chế từ trước và cho ra đời showroom “<strong>Yến Sào 365</strong>“ bên cạnh “<strong>Thế giới rượu 365</strong>\".</span>\r\n                </p>\r\n                <p style=\"text-align: justify;\"><span style=\"font-size:16px;\">Trong những lần thay đổi cơ chế Tiến Thịnh Phát lại cho thấy sự phát triển bền vừng và gắn liền cùng với thương hiệu được tạo ra sản phẩm chủ lực tại thời điểm phát triển. Công ty luôn đi cùng khách hàng, am hiểu và chia sẻ từ khách hàng về sản phẩm yến sào chất lượng không pha tạp chất, từ đó công ty cho ra đời sản phẩm yến sào \"<strong>Nước yến sào SALANEST\"</strong> và \"<strong>tổ yến sào Salanest\"</strong> hai sản phẩm chủ lực và phát triển định hình thương hiệu đến ngày hôm nay.</span>\r\n                </p>\r\n                <p style=\"text-align: justify;\"><span style=\"font-size:16px;\">Trong quá trình phát triển, một lần nữa sự thay đổi về cơ cấu, chúng tôi quyết định thành lập <strong>CÔNG TY TNHH SX TM XNK NGK TIẾN THỊNH PHÁT</strong>. Đây được xem là lời khẳng định sản phẩm đủ cung ứng tại thị trường Việt Nam và xuất khẩu ra nước ngoài. <strong>Công Ty SX TM XNK NGK TIẾN THỊNH PHÁT </strong>không ngừng phát triển, mang đến thị trường Việt và quốc tế những sản phẩm yến tinh khiết nhất. Chuyên cung cấp: yến thô, yến sơ chế, yến tinh chế, yến tươi đóng thố, yến hủ chưng sẵn nhiều vị khác nhau (đường phèn, táo đỏ, hạt chia, hạt sen, long nhãn, đông trùng hạ thảo, tứ vị, gừng, hương dứa thiên nhiên) phù hợp cho trẻ nhỏ, ăn kiêng dành cho người tiểu đường và người ít ăn ngọt.</span>\r\n                </p>\r\n           \r\n                <p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><strong>Công Ty SX TM XNK NGK TIẾN THINH PHÁT </strong>còn cung cấp mỹ phẩm làm đẹp từ yến sào, nhận hợp đồng gia công yến hủ chưng sẵn theo yêu cầu khách hàng để xuất khẩu quốc tế. <strong>Công Ty SX TM XNK NGK TIẾN THINH PHÁT </strong>cam kết: </span>\r\n                </p>\r\n                <ul>\r\n                    <li style=\"text-align: justify;\"><span style=\"font-size:16px;\">100% yến sào nguyên chất từ thiên nhiên.</span>\r\n                    </li>\r\n                    <li style=\"text-align: justify;\"><span style=\"font-size:16px;\">Nguồn yến hoàn toàn của Việt Nam</span>\r\n                    </li>\r\n                    <li style=\"text-align: justify;\"><span style=\"font-size:16px;\">Nói không hóa chất trong quá trình chế biến </span>\r\n                    </li>\r\n                    <li style=\"text-align: justify;\"><span style=\"font-size:16px;\">Tất cả các sản phẩm được chọn lọc kỹ lưỡng. </span>\r\n                    </li>\r\n                </ul>\r\n                <p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><strong>Thương hiệu Công Ty SX TM XNK NGK TIẾN THỊNH PHÁT</strong> được xây dựng trên phương châm “<span style=\"color:#FF0000;\"><strong>Sản phẩm thật, Sản Phẩm Sạch, Chất lượng vàng</strong></span>” góp phần\r\n                    nâng cao sức khoẻ cho cộng đồng.</span>\r\n                </p>\r\n                <p style=\"text-align: justify;\"><span style=\"font-size:16px;\">Trong quá trình phát triển sản phẩm Tiến Thịnh Phát đã đạt được những thành tưu như:</span>\r\n                </p>\r\n                <ul>\r\n                    <li style=\"text-align: justify;\"><span style=\"font-size:16px;\">Trong năm 2017 : Tiến thịnh phát đã cho ra thị trường 10.000 yến các loại.</span>\r\n                    </li>\r\n                    <li style=\"text-align: justify;\"><span style=\"font-size:16px;\">Mùa tết 2017 -2018 trong 03 ngày làm việc. tỷ lệ đơn hàng lẻ về công ty trên 1.800 Hộp.</span>\r\n                    </li>\r\n                    <li style=\"text-align: justify;\"><span style=\"font-size:16px;\">Thị trường 2018 - 2019 : Công ty tăng trưởng 50% doanh số bán hàng và đạt dung lượng sản phẩn được bán ra thị trường khắp cả nước và mọi vùng miền tổ quốc trong năm 2018 : gần 17.000 sản phẩm các loại. </span>\r\n                    </li>\r\n                    <li style=\"text-align: justify;\"><span style=\"font-size:16px;\">Trong 10 tháng đầu năm 2019: doanh số sản phẩm tăng vượt bậc, đã bán được 14.000 sản phẩm. Công ty định hướng chiến lượt cuối năm 2019 đạt doanh số 22.000 sản phẩm các loại.</span>\r\n                    </li>\r\n                </ul>\r\n                <p style=\"text-align: justify;\"><span style=\"font-size:16px;\">Trong thời gian phát triển công ty định hinh phát triển Online và Marketing online và chưa phát triển kênh GT và MT tại thị trường Việt Nam.</span>\r\n                </p>\r\n                <p style=\"text-align:center\"><img alt=\"\" height=\"512\" src=\"img/nam-thuan-phat-building-truong-cong-dinh-cho-thue-van-phong-quan-tan-binh-vlook.vn-bia.webp\" width=\"362\" />\r\n                </p>', '2022-09-28', 1234, 'kinh-nghiem-di-thue-van-phong-2.webp'),
(2, 'QUÁ TRÌNH THANH TOÁN VÀ ĐỔI TRẢ CÔNG TY  TIẾN THỊNH PHÁT GROUP.', ' - CÔNG TY TIẾN THỊNH PHÁT GROUP - THƯỚNG DẪN PHƯƠNG THỨC THANH TOÁN .', ' <h2 class=\"text-danger\" style=\"text-align: center;\"><strong>-HƯỚNG DẪN PHƯƠNG THỨC THANH TOÁN</strong></h2>\r\n<ul>\r\n                                <li>Nhằm tạo sự khác biệt về quyền lợi cho khách hàng khi đến mua hàng tại SALANEST, chúng tôi áp dụng chính sách hỗ trợ đổi trả hàng như sau:</li>\r\n                               <li> Đối với khách hàng tại khu vực HỒ CHÍ MINH, Quý khách có thể trực tiếp liên hệ đổi/ trả hàng tại văn phòng của Vua Yến ở địa chỉ: 180 Nguyễn Thị Búp , Phường Tân Chánh Hiệp , Quận 12 , Thành Phố HỒ CHÍ MINH .</li>\r\n                                <li>SALANEST sẽ thực hiện tất cả các yêu cầu vận chuyển cho khách hàng trên phạm vi toàn quốc</li>\r\n                                <li>Thời gian phục vụ từ 9h00 đến 20h00 từ thứ Hai đến thứ Bảy, không tính Chủ Nhật và các ngày lễ Tết.</li> <li>Các sản phẩm thực hiện đổi trả phải còn nguyên vẹn, không có dấu hiệu sử dụng và phải còn tem, mác. Ngoài ra, để thực hiện đổi trả hàng khách hàng phải còn giữ hóa đơn mua hàng tại salanest.com</li><li>Chúng tôi sẽ thực hiện các bước tiếp theo để kiểm tra chất lượng sản phẩm và tiến hành đổi/ trả hàng hoặc hoàn tiền theo yêu cầu của quý khách và thực hiện theo đúng quy định tại mục II của chính sách này.</li></ul>\r\n <h2 class=\"text-danger\" style=\"text-align:center;\">A. Các trường hợp đổi trả hàng</h2>\r\n                            <ol>\r\n                                <li>Đổi hàng theo nhu cầu khách hàng</li>\r\n                            </ol>   \r\n                                <p>Tất cả các mặt hàng mua từ https://salanest.com đều có thể hoàn trả trong vòng 7 ngày kể từ ngày nhận hàng. Chúng tôi chỉ chấp nhận đổi trả cho các sản phẩm còn nguyên điều kiện ban đầu, và còn hóa đơn mua hàng tại https://salanest.com và sản phẩm chưa qua sử dụng, bao gồm:</p>\r\n                                <li>Còn nguyên đóng gói và bao bì không bị rách móp.</li>\r\n                                <li>Tem/ phiếu bảo hành, tem thương hiệu, các quà tặng kèm theo ( nếu có) v.v… phải còn đầy đủ và nguyên vẹn.</li>\r\n                                <li>Không bị dơ bẩn, trầy xước, bể vỡ, hư hỏng, có mùi lạ hoặc có dấu hiệu đã qua sử dụng.</li>\r\n                         \r\n                            <p>Lưu ý: Những sản phẩm đổi trả hàng không đáp ứng các điều kiện nêu trên sẽ được tự động chuyển hoàn về địa chỉ đăng kí theo thông tin đơn hàng của quý khách.</p>\r\n                         <h3 class=\"text-danger\"> Đổi trả không vì lý do chủ quan từ khách hàng.</h3> \r\n                            \r\n                            <p>SALANEST khuyến khích quý khách hàng phải kiểm tra tình trạng bên ngoài của thùng hàng và sản phẩm trước khi thanh toán để đảm bảo rằng hàng hóa được giao đúng theo đơn đặt hàng và tình trạng bên ngoài không bị tác động. Nếu gặp trường hợp này, Quý khách vui lòng từ chối nhận hàng và báo ngay cho bộ phận hỗ trợ khách hàng để chúng tôi có phương án xử lí kịp thời. (Xin lưu ý những bước kiểm tra sâu hơn như dùng thử sản phẩm chỉ có thể được chấp nhận sau khi đơn hàng được thanh toán đầy đủ).</p>\r\n                            <p>Trong trường hợp khách hàng đã thanh toán, nhận hàng và sau đó phát hiện hàng hóa bị bể vỡ, sai nội dung hoặc thiếu hàng, xin vui lòng liên hệ ngay với bộ phận hỗ trợ khách hàng của Vua Yến để được chúng tôi hỗ trợ các bước tiếp theo như đổi/ trả hàng hoặc gửi sản phẩm còn thiếu đến khách hàng…</p><p>Chú ý: Sau 48h kể từ ngày quý khách nhận được hàng, SALANEST có quyền từ chối hỗ trợ cho những khiếu nại theo nội dung như trên.</p><h2>B. Phương thức hoàn tiền</h2><ul><p>- Tùy theo lí do hoàn trả sản phẩm, SALANEST sẽ có những phương thức hoàn thiện với chi tiết sau:</p> <li> Đổi trả theo nhu cầu khách hàng: Trường hợp này sẽ hoàn tiền lại cho khách hàng (sau khi đã trừ phí xử lý đơn hàng).</li>\r\n <li> Đổi trả không vì lý do chủ quan: Khách sẽ được đổi mới sản phẩm, đổi sản phẩm mới cùng loại, và khách hàng có thể hoàn tiền mặt nếu muốn. Liên hệ, thắc mắc, khiếu nại về vấn đề đổi trả hàng Xin quý khách vui lòng liên hệ với chúng tôi.</li></ul>\r\n<p>Địa chỉ: 180 Nguyễn Thị Búp, Phường Tân Chánh Hiệp,  Quận 12, Thành Phố Hồ Chí Minh.</p>\r\n<p>Điện thoại: (+84)47 28 38 38.</p><p class=\"clwhite\">Email: ttpsalanest@gmail.com.</p>', '2022-08-20', 1289, 'chính_sách_đổi_trả_hàng.webp'),
(3, 'HƯỚNG DẪN VẬN CHUYỂN GIAO HÀNG CÔNG TY TIẾN THỊNH PHÁT GROUP.', ' - CÔNG TY TIẾN THỊNH PHÁT GROUP thực hiện vận chuyển giao hàng & Liên kết các đơn vị vận chuyển.', ' <h2 class=\"text-danger\" style=\"text-align: center;\"><strong>-HƯỚNG DẪN VẬN CHUYỂN GIAO HÀNG.</strong></h2>\r\n<ul>\r\n                                <li>TIẾN THỊNH PHÁT GROUP giao hàng đến tận nơi tại tất cả các tỉnh thành toàn quốc. Tất cả hàng hóa vận chuyển đến nơi của khách hàng sẽ được đóng gói cẩn thận, đúng quy cách và bao gồm các chứng từ liên quan như: Đơn đặt hàng, Phiếu xuất kho, Phiếu bảo hành, Hóa đơn VAT, Hướng dẫn sử dụng…</li>\r\n                                <h3 class=\"text-danger\">KHÁCH HÀNG Ở CÁC TỈNH THÀNH KHÁC</h3>\r\n                               <li>– Tùy vào từng đơn hàng và địa điểm, SALNEST GROUP có thể miễn phí giao hàng hoặc tính phí hỗ trợ theo thỏa thuận với mức phí thấp nhất.</li>\r\n                                <li>SALANEST :– Thời gian giao hàng: Từ 24 đến 72 giờ kể từ khi nhận được thông tin xác nhận đặt hàng.</li>\r\n                                <h3 class=\"text-danger\">KHÁCH HÀNG NỘI THÀNH THÀNH PHỐ HỒ CHÍ MINH</h3>\r\n                                <li>Thời gian phục vụ từ 9h00 đến 20h00 từ thứ Hai đến thứ Bảy, không tính Chủ Nhật và các ngày lễ Tết.</li>\r\n                                <li>– Thời gian giao hàng: Từ 30 phút đến 2 giờ kể từ khi nhận được thông tin xác nhận đặt hàng<strong>.Lưu ý:</strong> Đối với các đơn hàng cần đặt trước thì thời gian giao hàng có thể lâu hơn.</li>\r\n                               \r\n                            </ul>\r\n                        </div>\r\n                        <h2 class=\"text-danger\" style=\"text-align:center;\">Cám ơn Quý khách đã chọn mua sản phẩm của SALANEST GROUP . !</h2>\r\n\r\n ', '2022-07-19', 1390, 'van-chuyen.webp'),
(4, '-CÔNG TY TIẾN THỊNH PHÁT GROUP.CHÍNH SÁCH BẢO MẬT THÔNG TIN KHÁCH HÀNG.', 'CÔNG TY TIẾN THỊNH PHÁT GROUP thực hiện CHÍNH SÁCH BẢO MẬT THÔNG TIN KHÁCH HÀNG (Xem chi tiết tại điều 68 đến Điều 73 Nghị định 52/2013/NĐ-CP)', '<ul>\r\n                                <h3 class=\"text-danger\">1- MỤC ĐÍCH VÀ PHẠM VI THU THẬP THÔNG TIN</h3>\r\n                                <ul><li>- TIẾN THỊNH PHÁT GROUP không bán, chia sẻ hay trao đổi thông tin cá nhân của khách hàng thu thập trên trang web cho một bên thứ ba nào khác.</li>\r\n                                <li>- Thông tin cá nhân thu thập được sẽ chỉ được sử dụng trong nội bộ công ty. Khi quý khách đăng ký đặt hàng tại https://salanest.com/\r\nThông tin cá nhân mà chúng tôi thu thập bao gồm:</li>\r\n<li>– Tên người liên hệ cá nhân hoặc Công ty</li>\r\n<li>– Số điện thoại:</li>\r\n<li>– Email: </li>\r\n<li>– Địa chỉ giao hàng:</li>\r\n<li>– Thông tin Công ty bao gồm tên giao dịch đầy đủ, địa chỉ, Mã số thuế:</li>\r\n<li>– Địa chỉ giao dịch:</li>\r\n<p>- Những thông tin trên sẽ được sử dụng cho một hoặc tất cả các mục đích sau đây:</p>\r\n<p>– Thông báo về việc giao hàng và hỗ trợ khách hàng</p>\r\n<p>– Cung cấp thông tin liên quan đến sản phẩm</p>\r\n<p>– Xử lý đơn đặt hàng và cung cấp dịch vụ và thông tin qua trang web của chúng tôi theo yêu cầu của quý khách</p>\r\n<p>– Ngoài ra, chúng tôi sẽ sử dụng thông tin quý khách cung cấp để hỗ trợ quản lý tài khoản khách hàng; xác nhận và thực hiện các giao dịch tài chính liên quan đến các khoản thanh toán trực tuyến của quý khách.</p>\r\n<p>- Chi tiết đơn hàng của quý khách sẽ được chúng tôi lưu trữ nhưng vì lý do bảo mật, quý khách không thể yêu cầu thông tin đó từ chúng tôi. Tuy nhiên, quý khách có thể kiểm tra thông tin đó bằng cách đăng nhập vào tài khoản riêng của mình trên trang web. Tại đó, quý khách có thể theo dõi đầy đủ chi tiết của các đơn hàng đã hoàn tất, những đơn hàng mở và những đơn hàng sắp được giao cũng như quản lý thông tin về địa chỉ, thông tin về ngân hàng và những bản tin mà quý khách đã đăng ký nhận. Quý khách cần bảo đảm là thông tin được truy cập một cách bí mật và không làm lộ cho một bên thứ ba không có quyền. Chúng tôi sẽ không chịu trách nhiệm đối với việc sử dụng sai mật khẩu trừ khi đó là lỗi của chúng tôi.</p></ul>\r\n                                \r\n<h3 class=\"text-danger\">2- PHẠM VI SỬ DỤNG THÔNG TIN</h3>\r\n<ul>\r\n    <li>- Chúng tôi có thể chia sẻ tên, số điện thoại và địa chỉ của quý khách cho dịch vụ chuyển phát nhanh để có thể giao hàng cho quý khách. Khi quý khách đăng ký làm thành viên trên trang web https://salanest.com/ chúng tôi cũng sẽ sử dụng thông tin cá nhân của quý khách để gửi các thông tin khuyến mãi/tiếp thị. Quý khách có thể hủy nhận các thông tin đó bất kỳ lúc nào bằng cách sử dụng chức năng hủy đăng ký trong các thông báo quảng cáo.</li>\r\n\r\n</ul>\r\n<h3 class=\"text-danger\">3- THỜI GIAN LƯU TRỮ THÔNG TIN</h3>\r\n<ul>\r\n<li>CÔNG TY TIẾN THỊNH PHÁT GROUP sẽ lưu trữ các Thông tin cá nhân do khách hàng cung cấp trên các hệ thống nội bộ của chúng tôi trong quá trình cung cấp dịch vụ cho khách hàng hoặc cho đến khi hoàn thành mục đích thu thập hoặc khi Khách hàng có yêu cầu hủy các thông tin đã cung cấp.</li>\r\n\r\n</ul>\r\n<h3 class=\"text-danger\">4- CAM KẾT BẢO MẬT THÔNG TIN CÁ NHÂN KHÁCH HÀNG</h3>\r\n<ul>\r\n\r\n<li>Chúng tôi rất quan tâm đến quyền riêng tư của quý khách khi quý khách sử dụng những dịch vụ của chúng tôi.Chúng tôi cũng hiểu rằng quý khách sẽ rất quan tâm đến việc những thông tin mà quý khách cũng cấp cho chúng tôi có được bảo mật an toàn hay không. Và chúng tôi luôn muốn quý khách sẽ thật yên tâm và tin tưởng khi tham gia các dịch vụ của chúng tôi. Vì vậy chúng tôi cam kết sẽ khiến quý khách có những trải nghiệm tuyệt vời nhất khi mua sắm hàng của chúng tôi với sự tin tưởng hoàn toàn.</li>\r\n<li>Chúng tôi tạo ra chính sách bảo mật này để chứng minh cho cam kết về sự an toàn bảo mật với quý khách hàng. Qua Chính sách bảo mật thông tin này, chúng tôi muốn quý khách hiểu được về việc chúng tôi thu thập thông tin khách hàng, việc sử dụng và chia sẻ thông tin cũng như việc bảo mật thông tin khách hàng của chúng tôi.\r\n</li>\r\n</ul>\r\n<p>Chân thành cảm ơn quý khách hàng đã tin tưởng chọn chúng tôi là đơn vị đối tác cung cấp</p>\r\n<h3 class=\"text-danger\">5- ĐỊA CHỈ CỦA ĐƠN VỊ THU THẬP VÀ QUẢN LÝ THÔNG TIN CÁ NHÂN\r\nCÔNG TY TIẾN THỊNH PHÁT GROUP.</h3>\r\n<p>Địa chỉ: 180 Nguyễn Thị Búp, Phường Tân Chánh Hiệp,  Quận 12, Thành Phố Hồ Chí Minh.</p>\r\n<p>Điện thoại: (+84)47 28 38 38.</p><p class=\"clwhite\">Email: ttpsalanest@gmail.com.</p>\r\n', '2022-06-12', 1980, 'bao-mat-thong-tin-khach-hang-thiet-bi.webp');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `brand_id` int(50) UNSIGNED NOT NULL,
  `brand_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_brand`
--

INSERT INTO `tbl_brand` (`brand_id`, `brand_name`) VALUES
(1, 'SALANEST'),
(2, 'GIA BẢO'),
(3, 'HERA NEST');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_brand_lv2`
--

CREATE TABLE `tbl_brand_lv2` (
  `id` int(11) NOT NULL,
  `brand_id` int(100) NOT NULL,
  `brand_id_lv2` int(11) NOT NULL,
  `brand_name_lv2` varchar(255) NOT NULL,
  `tinhtrang` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_brand_lv2`
--

INSERT INTO `tbl_brand_lv2` (`id`, `brand_id`, `brand_id_lv2`, `brand_name_lv2`, `tinhtrang`) VALUES
(1, 1, 11, 'đường phèn', 1),
(2, 1, 12, 'nhân sâm', 0),
(3, 1, 13, 'đông trùng', 1),
(4, 1, 15, 'saffron', 0),
(5, 1, 18, 'KIDS', 0),
(6, 2, 21, 'đường phèn', 1),
(7, 2, 22, 'nhân sâm', 1),
(8, 2, 23, 'đông trùng', 0),
(9, 2, 24, 'hạt chia', 1),
(10, 2, 25, 'không đường', 0),
(11, 2, 26, 'táo đỏ', 1),
(12, 2, 27, 'saffron', 1),
(13, 3, 31, 'đường phèn', 1),
(14, 3, 32, 'nhân sâm', 1),
(15, 3, 33, 'đông trùng', 1),
(16, 3, 34, 'hạt chia', 1),
(17, 3, 35, 'không đường', 0),
(18, 3, 36, 'táo đỏ', 1),
(19, 3, 37, 'saffron', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_cart`
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
-- Đang đổ dữ liệu cho bảng `tbl_cart`
--

INSERT INTO `tbl_cart` (`cartId`, `productId`, `sessionId`, `productName`, `price`, `quantity`, `img`) VALUES
(172, 402, 'mbu4666f22ek7bcsufsj10a1ek', 'Yến tinh chế loại 2 100g', '2990000', 2, 'yento.jpg'),
(174, 713, 'h1angr2n72ol33lsrn2u24t408', 'HERANEST - Nhân Sâm - 6 lọ .', '159000', 1, 'nhansam_6c_tra.webp'),
(175, 718, 'se2r9j55u02pppaikr8247vi45', 'HERANEST - Táo Đỏ - Hộp lớn .', '255000', 10, 'taodo_front_tra.webp'),
(206, 206, 'c04n8evatchqqkbudcebvv88od', 'Gia Bảo - Yến sào - safron - Hộp lớn', '260000', 9, 'saffron_front_tra.webp');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_category`
--

CREATE TABLE `tbl_category` (
  `category_id` int(11) UNSIGNED NOT NULL,
  `category_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_category`
--

INSERT INTO `tbl_category` (`category_id`, `category_name`) VALUES
(1, 'Yến sào chưng đường phèn'),
(2, 'Yến chưng KID'),
(3, 'Yến chưng nhân sâm'),
(4, 'Yến chưng đông trùng hạ thảo'),
(5, 'Yến chưng Saffron'),
(6, 'Yến chưng hạt chia'),
(7, 'Yến chưng không đường'),
(8, 'Yến sào Táo Đỏ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_customer`
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
-- Đang đổ dữ liệu cho bảng `tbl_customer`
--

INSERT INTO `tbl_customer` (`id`, `name`, `address`, `zipcode`, `email`, `password`) VALUES
(33, 'Minh Trí Tăng', '152/18 TTH02 quận 12 HCM', '0898303889', 'tri@gmail.com', '111'),
(36, 'Lê Thị Bông', 'Cầu dừa', '2213240011', 'bong@gmail.com', '111'),
(55, 'thanh nga', 'cung trăng', '0123456789', 'trang@gmail.com', 'vvv'),
(56, '1111', '111111111', '111111111', '11111111111@vvvvvv', '111111111111111111');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order`
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
-- Cấu trúc bảng cho bảng `tbl_sanpham`
--

CREATE TABLE `tbl_sanpham` (
  `sanpham_id` int(11) UNSIGNED NOT NULL,
  `category_id` int(11) UNSIGNED NOT NULL,
  `brand_id_lv2` varchar(20) NOT NULL,
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
-- Đang đổ dữ liệu cho bảng `tbl_sanpham`
--

INSERT INTO `tbl_sanpham` (`sanpham_id`, `category_id`, `brand_id_lv2`, `brand_id`, `sanpham_name`, `sanpham_chitiet`, `sanpham_mota`, `sanpham_gia`, `sanpham_giakhuyenmai`, `sanpham_soluong`, `hinh`) VALUES
(3, 1, '21', 2, 'Gia Bảo - Yến sào Gia Bảo -Đường Phèn - 6lọ', '<p>Thành phần:</p>\n<p>* Yến Tươi: 30%</p>\n <p>* Nước tinh khiết: 68%</p>\n <p>* Đường phèn: 8%</p>\n <p>* Tảo biển: 2%</p>\n <p* Vitamin D3, Tảo biển: 2%></p>\n<p>* Lysine: 2%</p><br><hr>', '', 239000, 230000, 20, 'yen-sao-gia-bao-duong-phen-3.webp'),
(4, 1, '21', 2, 'Gia Bảo - Yến sào Gia Bảo - Đường Phèn - hộp lớn', '<p>Thành phần:</p>\n<p>* Yến Tươi: 30%</p>\n <p>* Nước tinh khiết: 68%</p>\n <p>* Đường phèn: 8%</p>\n <p>* Tảo biển: 2%</p>\n <p* Vitamin D3, Tảo biển: 2%></p>\n<p>* Lysine: 2%</p><br><hr>', '', 239000, 230000, 20, 'yen-sao-gia-bao-duong-phen-4.webp'),
(5, 6, '24', 2, 'Gia Bảo - Yến sào Gia Bảo -Hạt Chia - hộp lớn', '<p>Thành Phần:</p>\n<p> Yến Tươi: 30% </p>\n<p> Nước tinh khiết: 68% </p>\n <p>* Đường phèn: 10%</p>\n<p>* Tảo biển: 2%</p><br><hr>', '', 249000, 240000, 20, 'yen-sao-gia-bao-duong-phen-12.webp'),
(201, 3, '22', 2, 'Gia Bảo - Yến sào Gia Bảo -Nhân Sâm - 6 lọ', '<p>Thành phần:</p>\n<p>* Yến Tươi: 30% </p>\n <p>* Đông trùng hạ thảo: 10%</p>\n<p>* Nước tinh khiết: 68% </p>\n<p>* Đường phèn: 10% </p>\n<p>* Tảo biển: 2%</p><br><hr>', '', 269000, 260000, 20, 'nhansam_6c_tra.webp'),
(202, 3, '22', 2, 'Gia Bảo - Yến sào - Nhân Sâm - Hộp Lớn', '<p>Thành phần:</p>\n<p>* Yến Tươi: 30% </p>\n <p>* Đông trùng hạ thảo: 10%</p>\n<p>* Nước tinh khiết: 68% </p>\n<p>* Đường phèn: 10% </p>\n<p>* Tảo biển: 2%</p><br><hr>', '', 269000, 260000, 20, 'nhansam_front_tra.webp'),
(205, 5, '27', 2, 'Gia Bảo - Yến sào - safron - 6 lọ', '<p>Thành phần:</p>  <p>* Yến Tươi: 30%</p>  <p>* Nhân sâm: 10%</p> <p>* Nước tinh khiết: 68%</p>   <p>* Đường phèn: 10%</p> <p>* Tảo biển: 2%</p><br><hr>', '', 269000, 260000, 10, 'saffron_6c_tra.webp'),
(206, 5, '27', 2, 'Gia Bảo - Yến sào - safron - Hộp lớn', '<p>Thành phần:</p>  <p>* Yến Tươi: 30%</p>  <p>* Nhân sâm: 10%</p> <p>* Nước tinh khiết: 68%</p>   <p>* Đường phèn: 10%</p> <p>* Tảo biển: 2%</p><br><hr>', '', 269000, 260000, 10, 'saffron_front_tra.webp'),
(302, 8, '26', 2, 'Gia Bảo - Yến sào - Táo Đỏ - 6 lọ .', '<p>Thành phần:</p>  <p>* Yến Tươi: 30%</p>  <p>* Nhân sâm: 10%</p> <p>* Nước tinh khiết: 68%</p>   <p>* Đường phèn: 10%</p> <p>* Tảo biển: 2%</p><br><hr>', '', 248000, 240000, 10, 'taodo_6c_tra.webp'),
(303, 8, '26', 2, 'Gia Bảo - Yến sào - Táo Đỏ - Hộp lớn.', '<p>Thành phần:</p>  <p>* Yến Tươi: 30%</p>  <p>* Nhân sâm: 10%</p> <p>* Nước tinh khiết: 68%</p>   <p>* Đường phèn: 10%</p> <p>* Tảo biển: 2%</p><br><hr>', '', 248000, 240000, 10, 'taodo_front_tra.webp'),
(306, 4, '33', 3, 'HERANEST - Đông Trùng - 6 lọ .', '<p>Thành Phần:</p> <p>* Yến Tươi: 35% </p>  <p>* Nước tinh khiết: 68%</p> <p>* Tảo biển: 2%</p><br><hr>', '', 269000, 260000, 10, 'dongtrung_6c_tra.webp'),
(401, 4, '33', 3, 'HERANEST - Đông Trùng - Hộp lớn.', '<p>Thành Phần:</p> <p>* Yến Tươi: 35% </p>  <p>* Nước tinh khiết: 68%</p> <p>* Tảo biển: 2%</p><br><hr>', '', 269000, 260000, 10, 'dongtrung_front_tra.webp'),
(402, 1, '31', 3, 'HERANEST - Đường Phèn - 6 lọ .', '<p>Thành Phần:</p> <p>* Yến Tươi: 35% </p>  <p>* Nước tinh khiết: 68%</p> <p>* Tảo biển: 2%</p><br><hr>', '', 239000, 230000, 10, 'duongphen_6c_tra.webp'),
(404, 1, '31', 3, 'HERANEST - Đường Phèn - 6 lọ .', '<p>Thành Phần:</p> <p>* Yến Tươi: 35% </p>  <p>* Nước tinh khiết: 68%</p> <p>* Tảo biển: 2%</p><br><hr>', '', 255000, 250000, 10, 'duongphen_6c_tra.webp'),
(405, 1, '21', 3, 'HERANEST - Đường Phèn - Hộp lớn.', '<p>Thành Phần:</p> <p>* Yến Tươi: 35% </p>  <p>* Nước tinh khiết: 68%</p> <p>* Tảo biển: 2%</p><br><hr>', '', 255000, 250000, 10, 'duongphen_front_tra.webp'),
(709, 6, '34', 3, 'HERANEST - Hạt Chia - 6 lọ .', '<p>Thành phần:</p> <p>* Yến Tươi: 35% </p>  <p>* Đông trùng hạ thảo: 10%</p> <p>* Nước tinh khiết: 68% </p> <p>* Đường phèn: 10% </p> <p>* Tảo biển: 2%</p><br><hr>', '', 265000, 259000, 10, 'hatchia_6c_tra.webp'),
(713, 3, '32', 3, 'HERANEST - Nhân Sâm - 6 lọ .', '<p>Thành phần:</p> <p>* Yến Tươi: 35% </p>  <p>* Đông trùng hạ thảo: 10%</p> <p>* Nước tinh khiết: 68% </p> <p>* Đường phèn: 10% </p> <p>* Tảo biển: 2%</p><br><hr>', '', 165000, 159000, 10, 'nhansam_6c_tra.webp'),
(714, 3, '32', 3, 'HERANEST - Nhân Sâm - Hộp lớn .', '<p>Thành phần:</p> <p>* Yến Tươi: 35% </p>  <p>* Đông trùng hạ thảo: 10%</p> <p>* Nước tinh khiết: 68% </p> <p>* Đường phèn: 10% </p> <p>* Tảo biển: 2%</p><br><hr>', '', 165000, 159000, 10, 'nhansam_front_tra.webp'),
(717, 8, '36', 3, 'HERANEST - Táo Đỏ - 6 lọ .', '<p>Thành phần:</p> <p>* Yến Tươi: 35% </p>  <p>* Đông trùng hạ thảo: 10%</p> <p>* Nước tinh khiết: 68% </p> <p>* Đường phèn: 10% </p> <p>* Tảo biển: 2%</p><br><hr>', '', 265000, 255000, 10, 'taodo_6c_tra.webp'),
(718, 8, '36', 3, 'HERANEST - Táo Đỏ - Hộp lớn .', '<p>Thành phần:</p> <p>* Yến Tươi: 35% </p>  <p>* Đông trùng hạ thảo: 10%</p> <p>* Nước tinh khiết: 68% </p> <p>* Đường phèn: 10% </p> <p>* Tảo biển: 2%</p><br><hr>', '', 265000, 255000, 10, 'taodo_front_tra.webp'),
(721, 4, '13', 1, 'SALANEST - Đông Trùng - 6 lọ .', '<p>Thành phần:</p> <p>* Yến Tươi: 20% </p>  <p>* Đông trùng hạ thảo: 10%</p> <p>* Nước tinh khiết: 68% </p> <p>* Đường phèn: 10% </p> <p>* Tảo biển: 2%</p><br><hr>', '', 259000, 250000, 99, 'yen-sao-salanest-dong-trung-7.webp'),
(722, 4, '13', 1, 'SALANEST - Đông Trùng - Hộp Lớn .', '<p>Thành phần:</p> <p>* Yến Tươi: 20% </p>  <p>* Đông trùng hạ thảo: 10%</p> <p>* Nước tinh khiết: 68% </p> <p>* Đường phèn: 10% </p> <p>* Tảo biển: 2%</p><br><hr>', '', 259000, 250000, 99, 'yen-sao-salanest-dong-trung-4.webp'),
(725, 4, '13', 1, 'SALANEST - Đông Trùng - Không Đường - 6 lọ .', '<p>Thành phần:</p> <p>* Yến Tươi: 20% </p>  <p>* Đông trùng hạ thảo: 10%</p> <p>* Nước tinh khiết: 68% </p> <p>* Đường phèn: 10% </p> <p>* Tảo biển: 2%</p><br><hr>', '', 259000, 250000, 99, 'yen-sao-salanest-dong-trung-khong-duong-2.webp'),
(728, 1, '11', 1, 'SALANEST - Đường Phèn - 6 lọ .', '<p>Thành phần:</p> <p>* Yến Tươi: 20% </p>  <p>* Đông trùng hạ thảo: 10%</p> <p>* Nước tinh khiết: 68% </p> <p>* Đường phèn: 10% </p> <p>* Tảo biển: 2%</p><br><hr>', '', 229000, 220000, 99, 'yen-sao-salanest-duong-phen-6.webp'),
(729, 1, '11', 1, 'SALANEST - Đường Phèn - Hộp Lớn.', '<p>Thành phần:</p> <p>* Yến Tươi: 20% </p>  <p>* Đông trùng hạ thảo: 10%</p> <p>* Nước tinh khiết: 68% </p> <p>* Đường phèn: 10% </p> <p>* Tảo biển: 2%</p><br><hr>', '', 229000, 220000, 99, 'yen-sao-salanest-duong-phen-7.webp'),
(733, 1, '11', 1, 'SALANEST - Đường Phèn - 1 Lọ.', '<p>Thành phần:</p> <p>* Yến Tươi: 20% </p>  <p>* Đông trùng hạ thảo: 10%</p> <p>* Nước tinh khiết: 68% </p> <p>* Đường phèn: 10% </p> <p>* Tảo biển: 2%</p><br><hr>', '', 49000, 40000, 99, 'duongphen_1c_tra.webp'),
(734, 4, '13', 1, 'SALANEST - Đông Trùng - Không Đường - 1 lọ .', '<p>Thành phần:</p> <p>* Yến Tươi: 20% </p>  <p>* Đông trùng hạ thảo: 10%</p> <p>* Nước tinh khiết: 68% </p> <p>* Đường phèn: 10% </p> <p>* Tảo biển: 2%</p><br><hr>', '', 51000, 46000, 99, 'yen-sao-salanest-dong-trung-khong-duong-1.webp');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`adminId`);

--
-- Chỉ mục cho bảng `tbl_baiviet`
--
ALTER TABLE `tbl_baiviet`
  ADD PRIMARY KEY (`baiviet_id`);

--
-- Chỉ mục cho bảng `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`brand_id`);

--
-- Chỉ mục cho bảng `tbl_brand_lv2`
--
ALTER TABLE `tbl_brand_lv2`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`cartId`),
  ADD KEY `productId` (`productId`);

--
-- Chỉ mục cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Chỉ mục cho bảng `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productId` (`productId`,`customer_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Chỉ mục cho bảng `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  ADD PRIMARY KEY (`sanpham_id`),
  ADD KEY `category_id` (`category_id`,`brand_id`),
  ADD KEY `brand_id` (`brand_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `adminId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tbl_baiviet`
--
ALTER TABLE `tbl_baiviet`
  MODIFY `baiviet_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `brand_id` int(50) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `tbl_brand_lv2`
--
ALTER TABLE `tbl_brand_lv2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `cartId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=207;

--
-- AUTO_INCREMENT cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `category_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT cho bảng `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  MODIFY `sanpham_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=735;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD CONSTRAINT `tbl_cart_ibfk_1` FOREIGN KEY (`productId`) REFERENCES `tbl_sanpham` (`sanpham_id`);

--
-- Các ràng buộc cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD CONSTRAINT `tbl_order_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `tbl_customer` (`id`),
  ADD CONSTRAINT `tbl_order_ibfk_2` FOREIGN KEY (`productId`) REFERENCES `tbl_sanpham` (`sanpham_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  ADD CONSTRAINT `tbl_sanpham_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `tbl_category` (`category_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `tbl_sanpham_ibfk_2` FOREIGN KEY (`brand_id`) REFERENCES `tbl_brand` (`brand_id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
