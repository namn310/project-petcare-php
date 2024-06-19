-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 19, 2024 lúc 11:41 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `petcaredb`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`id`, `email`, `pass`, `name`) VALUES
(1, 'admin@gmail.com', '25f9e794323b453885f5181f1b624d0b', 'Nguyễn Phương Nam');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `booking`
--

CREATE TABLE `booking` (
  `id` int(11) NOT NULL,
  `idCus` int(11) NOT NULL,
  `nameService` varchar(255) NOT NULL,
  `type` varchar(50) NOT NULL,
  `goi` varchar(100) NOT NULL,
  `namePet` varchar(100) NOT NULL,
  `weight` varchar(100) NOT NULL,
  `dateBook` varchar(30) NOT NULL,
  `dateCreate` varchar(40) NOT NULL,
  `tinhtrangBook` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `booking`
--

INSERT INTO `booking` (`id`, `idCus`, `nameService`, `type`, `goi`, `namePet`, `weight`, `dateBook`, `dateCreate`, `tinhtrangBook`) VALUES
(28, 1, 'Spa-grooming', 'Mèo', 'Gói sạch toàn thân', 'petuy', '3,5', '5h chiều ngày 20/6/2024', '12-06-24', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment`
--

CREATE TABLE `comment` (
  `id_comment` int(100) NOT NULL,
  `id_product` int(100) NOT NULL,
  `id_user` int(100) NOT NULL,
  `noidung` varchar(1024) NOT NULL,
  `timeCreate` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `comment`
--

INSERT INTO `comment` (`id_comment`, `id_product`, `id_user`, `noidung`, `timeCreate`) VALUES
(1, 60, 1, 'sản phẩm đẹp quá', '16-06-24'),
(2, 60, 1, 'Đẹp quá', '16-06-24'),
(3, 60, 1, 'sản phẩm đẹp quá', '16-06-24'),
(6, 28, 1, 'Sản phẩm rất tốt', '16-06-24');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `sodienthoai` varchar(30) NOT NULL,
  `pass` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `customers`
--

INSERT INTO `customers` (`id`, `name`, `address`, `email`, `sodienthoai`, `pass`) VALUES
(1, 'Nguyễn Phương Nam', 'Láng Thượng, Đống Đa, Hà Nội', 'user@gmail.com', '0123456789', '25f9e794323b453885f5181f1b624d0b'),
(2, 'namnnnn', 'Thanh Xuân, Hà Nội', 'nam@gmail.com', '0913456767', '25f9e794323b453885f5181f1b624d0b');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `id_danhmuc` int(11) NOT NULL,
  `tendanhmuc` varchar(50) NOT NULL,
  `dateadd` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`id_danhmuc`, `tendanhmuc`, `dateadd`) VALUES
(5, 'Dụng cụ', '07-06-24'),
(6, 'Thức ăn hạt', ''),
(7, 'Phụ kiện', '07-06-24'),
(8, 'Pate', '07-06-24'),
(9, 'Thực phẩm chức năng', '07-06-24'),
(11, 'Đồ chơi', '15-06-24');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dichvu`
--

CREATE TABLE `dichvu` (
  `id_dichvu` int(11) NOT NULL,
  `ten_dichvu` varchar(100) NOT NULL,
  `hinhanh` varchar(100) NOT NULL,
  `dateCreate` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `dichvu`
--

INSERT INTO `dichvu` (`id_dichvu`, `ten_dichvu`, `hinhanh`, `dateCreate`) VALUES
(2, 'Spa-Grooming', '1718460833_spa_cost.webp', '15-06-24'),
(3, 'Dịch vụ khách sạn', '1718462316_hotel pet.jpg', '15-06-24'),
(5, 'Dịch vụ khác', '1718463674_otherservice.jpg', '15-06-24');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhanvien`
--

CREATE TABLE `nhanvien` (
  `idNV` int(50) NOT NULL,
  `tenNV` varchar(100) NOT NULL,
  `anhNV` varchar(100) NOT NULL,
  `diachi` varchar(200) NOT NULL,
  `birth` varchar(30) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `chucvu` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `cmnd` int(30) NOT NULL,
  `dateadd` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `nhanvien`
--

INSERT INTO `nhanvien` (`idNV`, `tenNV`, `anhNV`, `diachi`, `birth`, `sex`, `phone`, `chucvu`, `email`, `cmnd`, `dateadd`) VALUES
(4, 'Hồ Thị Thanh Ngân', '1718789393_cach-tuyen-dung-nhan-vien-ban-hang-1.jpg', '155-157 Trần Quốc Thảo, Quận 3, Hồ Chí Minh', '1998-06-09', 'Nữ', '0912345678', 'Tư vấn', 'aitk@gmail.com', 0, '09-06-24'),
(5, 'Nguyễn Phương Nam', '1718789241_tải xuống (3).jpg', '	6 Nguyễn Lương Bằng, Tân Phú, Quận 7, Hồ Chí Minh', '1998-06-09', 'Nam', '0912345678', 'Bác sĩ thú y', 'namnp@gmail.com', 0, '09-06-24');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orderdetails`
--

CREATE TABLE `orderdetails` (
  `id` int(11) NOT NULL,
  `order_id` int(50) NOT NULL,
  `product_id` int(50) NOT NULL,
  `number` int(50) NOT NULL,
  `price` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `orderdetails`
--

INSERT INTO `orderdetails` (`id`, `order_id`, `product_id`, `number`, `price`) VALUES
(19, 20, 27, 1, 430000),
(23, 23, 70, 1, 250000),
(24, 24, 74, 1, 20000),
(25, 25, 60, 1, 115000),
(26, 26, 62, 1, 40000),
(27, 27, 67, 1, 50000),
(28, 28, 75, 1, 250000),
(29, 28, 64, 2, 60000),
(31, 30, 74, 6, 20000),
(32, 30, 66, 5, 100000),
(33, 31, 88, 1, 130000),
(34, 31, 80, 1, 980000),
(35, 32, 61, 1, 200000),
(36, 33, 62, 1, 40000),
(37, 34, 67, 1, 50000),
(38, 35, 60, 1, 115000),
(39, 36, 88, 1, 130000),
(40, 37, 64, 1, 60000),
(41, 38, 61, 1, 200000),
(42, 39, 40, 1, 50000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `customer_id` int(50) NOT NULL,
  `create_at` varchar(30) NOT NULL,
  `status` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `create_at`, `status`) VALUES
(23, 1, '2024-06-09 19:02:58', 1),
(24, 1, '2024-06-10 22:26:26', 0),
(25, 1, '2024-06-10 23:09:58', 1),
(26, 1, '2024-06-10 23:11:50', 1),
(27, 1, '2024-06-10 23:20:43', 0),
(28, 1, '2024-06-10 23:25:03', 1),
(30, 1, '2024-06-11 13:55:29', 0),
(31, 1, '2024-06-11 22:01:24', 1),
(32, 1, '2024-06-13 15:51:20', 0),
(33, 1, '2024-06-13 15:52:10', 0),
(34, 1, '2024-06-13 16:04:42', 0),
(35, 1, '2024-06-13 20:56:59', 0),
(36, 1, '2024-06-13 20:58:39', 0),
(37, 1, '2024-06-13 20:59:58', 1),
(38, 1, '2024-06-15 20:34:21', 1),
(39, 1, '2024-06-15 23:07:27', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `idPro` int(11) NOT NULL,
  `id_danhmuc` int(50) NOT NULL,
  `namePro` varchar(100) NOT NULL,
  `soluong` int(255) NOT NULL,
  `giaban` varchar(500) NOT NULL,
  `giavon` varchar(500) NOT NULL,
  `discount` varchar(30) NOT NULL,
  `danhmuc` varchar(100) NOT NULL,
  `tinhtrang` varchar(100) NOT NULL,
  `hinhanh` varchar(500) NOT NULL,
  `mota` varchar(5000) NOT NULL,
  `timeadd` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`idPro`, `id_danhmuc`, `namePro`, `soluong`, `giaban`, `giavon`, `discount`, `danhmuc`, `tinhtrang`, `hinhanh`, `mota`, `timeadd`) VALUES
(16, 5, 'Dụng cụ vệ sinh', 15, '540000', '540000', '', 'Dụng cụ', 'Còn hàng', '1717581645_dc3.png', '<p>+ Chỉ cần phủ giấy ăn lên trên phân ,và dùng kẹp và gắp bỏ vào túi ,rồi dùng vòi xịt và rửa sạch .</p><p>+&nbsp;<i><strong>Dụng cụ gắp phân cho chó mèo</strong></i>&nbsp;với chất liệu nhựa bền và dẻo nên hoàn toàn yên tâm sử dụng lâu dài, tiện lợi và sạch sẽ.</p><p>+ Kích cỡ&nbsp;<i><strong>Dụng cụ gắp phân cho chó mèo</strong></i> : 16x10x15 cm</p><p>&nbsp;</p>', '05-06-24'),
(17, 9, 'Vitamin Và Khoáng Chất Bổ Trợ Xương Khớp Chó Mèo Canina Petvital Arthro Tabletten Chính Hãng  Nhập K', 15, '540000', '540000', '', 'Thực phẩm chức năng', 'Còn hàng', '1718508952_petvital_arthro_tabletten_13c0d439f7634e8c8569d23bf2986f3b_grande.webp', '<h4><strong>ĐẶC ĐIỂM NỔI BẬT</strong></h4><p><i>Vitamin và khoáng chất bổ trợ xương khớp chó mèo.</i></p><p>&nbsp;</p><p><strong>PETVITAL® ARTHRO-TABLETTEN</strong></p><p><strong>Thành phần:</strong> maltodextrin, cellulose, vỏ cây liễu (Salix), gừng, cây vuốt quỷ.</p><p><strong>Phụ gia dinh dưỡng cho mỗi kg:</strong> 8.200mg vitamin B₁, 2.500mcg vitamin B₁₂, 2.200mg vitamin E, 8mg kẽm dưới dạng oxit kẽm, 155mg sắt dưới dạng sắt (II) sulfat / heptahydrat, 13mg molypden dưới dạng natri molypdat, 10mg mangan dưới dạng mangan (II) oxit, 1,5 mg đồng dưới dạng đồng (II) sulfat / pentahydrate.</p><p><strong>Thành phần phân tích:</strong> tro thô 5,0%, protein thô 2,7%, chất béo thô 1,1%, xơ thô 19,7%</p><ul><li>Vỏ cây liễu (Salix) và gừng, cây vuốt quỷ: dùng để nâng đỡ xương, khớp và mô liên kết.</li><li>Vitamin E: như một chất chống oxy hóa, nó ngăn các gốc tự do và hoạt động như một vitamin bảo vệ tế bào.</li><li>Vitamin B₁: cần thiết cho việc truyền các xung thần kinh.</li><li>Sắt: rất quan trọng cho sự hình thành máu, vận chuyển oxy và hoạt động của cơ.</li><li>Đồng: tham gia vào quá trình phát triển máu, hình thành sắc tố lông và phát triển sụn.</li><li>Kẽm: hỗ trợ sự phát triển và phân chia tế bào.</li></ul><p><strong>Lợi ích chính:</strong></p><p>PETVITAL® ARTHRO-TABLETTEN chứa vitamin, khoáng chất và thực vật khô. Các chiết xuất thực vật hỗ trợ xương và khớp trong chức năng tự nhiên của chúng</p><ul><li>Ảnh hưởng thuận lợi đến sự trao đổi chất của xương</li><li>Các khớp xương yếu được củng cố và đàn hồi trở lại.</li><li>Quá trình lão hóa của khớp bị chậm lại nhờ sự hỗ trợ của sự cân bằng ion tự nhiên của mô xương.</li><li>Mô xương và gân trở nên săn chắc hoặc đàn hồi trở lại</li><li>Hỗ trợ tái tạo xương, ví dụ sau khi điều trị tẩy giun và trong trường hợp rối loạn tăng trưởng.</li></ul><p><strong>Khuyến nghị cho ăn (mỗi con/1 ngày):</strong></p><ul><li><i>Chó con/mèo con:</i> 2 viên cho mỗi 10kg thể trọng (tối đa 12 viên), uống mỗi ngày ngày, sử dụng trong 1 tháng. Lặp lại điều trị sau 6 tháng.</li><li><i>Chó/mèo trưởng thành:</i> 5 viên / 10kg thể trọng (tối đa 20 viên), uống mỗi ngày ngày, sử dụng trong 3 tháng. Lặp lại chế độ này mỗi năm một lần.</li></ul>', '05-06-24'),
(19, 6, 'Nabirang', 15, '540000', '540000', '', 'Thức ăn hạt', 'Còn hàng', '1717582466_hat6.jpg', '<p>THÀNH PHẦN<br>Ngũ cốc, bột phụ phẩm gia cầm, bột thịt và xương, bột thịt, dầu gà, bột củ cải đường, bột cá, hạt lanh, muối, hỗn hơn khoáng (Zn,Mn,v.v.), Hỗn hợp vitamin (A, D,v.v.), KCL, Taurine, chiết xuất yucca, vitamin E.<br>THÀNH PHẦN DINH DƯỠNG<br>Đạm ≥ 30%; Béo thô ≥ 12%; Canxi ≥ 1%; Photpho ≥ 0.8%; Xơ thô ≤ 4%; Tro thô ≤ 11%; Độ ẩm ≤ 12%.<br>ĐẶC ĐIỂM<br>– Mùi cá khô thơm nức mũi khó cưỡng<br>– 100% nguyên liệu sạch từ tự nhiên, được chọn lọc kĩ lưỡng<br>– Tỷ lệ hấp thụ tiêu hóa tuyệt vời, hạn chế mùi thối từ ph.ân<br>– Kích thước nhỏ phù hợp dành cho mèo cưng<br>– Phù hợp cho mọi giai đoạn phát triển của mèo cưng<br>CÔNG DỤNG<br>– Chức năng đào thải búi lông<br>– Tỷ lệ hấp thụ tiêu hóa tuyệt vời<br>– Cải thiện dị ứng<br>– Khả năng tiêu hóa hấp thu cao và sức khỏe đường ruột<br>– Tăng cường khả năng miễn dịch và giảm nhiễm trùng<br>– Loại bỏ gàu và cải thiện làn da và lông<br>– Nhiều chất xơ mang lại lợi ích to lớn cho quá trình hấp thụ táo bón và tiêu hóa<br>LIỀU LƯỢNG<br>– Mèo～3kg: 30～50g<br>– Mèo～5kg: ～75g<br>– Mèo～7kg: ～100g<br>– Mèo～10kg: ～120g<br>Đề xuất khác nhau dựa trên hoạt động và môi trường.<br>BẢO QUẢN: Nơi khô ráo, thoáng mát, tránh ánh sáng trực tiếp.</p>', '05-06-24'),
(40, 5, 'Kim tiêm', 19, '50000', '50000', '', 'Dụng cụ', 'Còn hàng', '1717735572_dc1.webp', '<p>- <strong>Kích thước: </strong>7x13 (0.7x13mm)</p><p>- <strong>Chất liệu:</strong>&nbsp;inox</p><p>- <strong>Xuất xứ:</strong> PRC - LA</p><p>- Loại kim sử dụng được nhiều lần</p><p>- Đầu kim thông dụng với tất cả các loại xilanh trên thị trường.</p>', '07-06-24'),
(60, 11, 'Đồ chơi mèo Whisker Cá Voi', 28, '115000', '115000', '', 'Đồ chơi', 'Còn hàng', '1717818623_do-choi-meo-wf-ca-coi-2-1690266120027.jpg', '<p><strong>Đồ Chơi Mèo Whisker Fiasta Cá Cói</strong></p><ul><li>Thương hiệu: Paddy</li><li>Phù hợp cho: Mèo mọi lứa tuổi</li><li>Với 20 năm kinh nghiệm thiết kế đầy tính sáng tạo, giàu kinh nghiệm, nhân viên chuyên nghiệp và đội ngũ quản lý có năng lực, AFP đã cung cấp 95% sản phẩm dành cho thú cưng chất lượng tốt sang thị trường châu Âu và Châu Mỹ. Các sản&nbsp;phẩm của AFP được làm từ chất liệu cao cấp, an toàn cho sức khỏe, có nhiều hình dạng và kích thước khác nhau, phù hợp với mọi loại thú cưng. Đồ chơi mèo của AFP với màu sắc thu hút, thiết kế dễ thương, là món đồ chơi không thể thiếu cho mèo nhà bạn, giúp các bé giải trí, vận động và phát triển trí thông minh.</li></ul><p><strong>Lợi ích:</strong></p><ul><li>Giải trí và vận động: giúp mèo giải trí, vận động và giải tỏa căng thẳng</li><li>Phát triển trí thông minh: tương tác giúp mèo phát triển trí thông minh.</li><li>Giảm stress: Điều này rất quan trọng đối với những chú mèo bị stress, lo lắng.</li><li>Tăng cường sự gắn bó: giúp mèo và chủ nhân tăng cường sự gắn bó.</li></ul><p><strong>Thành phần</strong></p><ul><li>Chất liệu:&nbsp;Làm bằng chất liệu cối, nhẹ, an toàn cho móng và chân của mèo</li></ul><p><strong>Hướng dẫn sử dụng</strong></p><ul><li>Lựa chọn đồ chơi có kích thước phù hợp với thú cưng</li><li>Tránh xa tầm tay của trẻ nhỏ, cần có người lớn chơi cùng khi có trẻ nhỏ</li><li>Kiểm tra sản phẩm trước khi cho thú cưng chơi</li><li>Tránh tiếp xúc với lửa</li><li>Không sử dụng với mục đích khác ngoài đồ chơi cho mèo</li><li>Tham khảo ý kiến bác sĩ thú y nếu mèo có tình trạng sức khỏe đặc biệt</li></ul>', '08-06-24'),
(61, 11, 'Đồ chơi cho mèo cảm biến hình chim FOFOS', 46, '200000', '200000', '20', 'Đồ chơi', 'Còn hàng', '1717818705_do-choi-fofos-1.webp', '<h4>Đồ Chơi Cho Mèo Cảm Biến Hình Chim FOFOS</h4><ul><li>Thương hiệu:&nbsp;<strong>FOFOS</strong></li><li>Phù hợp cho: Mèo mọi lứa tuổi</li><li>FOFOS là thương hiệu&nbsp;<strong>đồ chơi cho&nbsp;mèo</strong>&nbsp;nổi tiếng. Các sản phẩm của FOFOS được thiết kế dựa trên nhu cầu và sở thích của chó mèo, với mục đích giúp chúng vui chơi, giải trí và phát triển toàn diện. Các sản phẩm đồ chơi FOFOS có nhiều mẫu mã đa dạng, từ đồ chơi nhai, đồ chơi đuổi bắt, đồ chơi thông minh,... được làm từ chất liệu an toàn, thân thiện với môi trường.</li></ul><p><strong>Lợi ích:&nbsp;</strong></p><ul><li>Giúp thú cưng vui chơi, giải trí, giảm căng thẳng, mệt mỏi.</li><li>Kích thích mọc răng, nướu, phát triển xương khớp.</li><li>Phát triển trí thông minh, khả năng tư duy và giải quyết vấn đề.</li><li>Giúp tăng cường vận động, phát triển thể chất.</li><li>Giảm nguy cơ thú cưng nghịch phá đồ đạc trong nhà.</li></ul><p><strong>Thành phần</strong></p><ul><li>Chất liệu: Vải fabric, catnip</li></ul><p><strong>Hướng dẫn sử dụng</strong></p><ul><li>Lựa chọn đồ chơi có kích thước phù hợp với thú cưng</li><li>Kiểm tra sản phẩm trước khi cho thú cưng chơi</li><li>Tránh tiếp xúc với lửa</li><li>Không sử dụng với mục đích khác ngoài đồ chơi cho thú cưng</li></ul>', '08-06-24'),
(62, 11, 'Đồ Chơi Cho Mèo Cần Câu Mèo CattyMan', 38, '40000', '40000', '', 'Đồ chơi', 'Còn hàng', '1717818771_do-choi-cho-meo-can-cau-meo-cattyman-2-1692256925680.webp', '<p>Các Sen đừng bỏ lỡ món quà tặng thú vị này dành cho Boss của mình nhé, các Boss chắc chắn sẽ thích mê!<br>- Ngộ nghĩnh đáng yêu, thu hút thú cưng nhà bạn chơi đùa, tương tác cùng cần câu mèo<br>- Kích thích thú cưng vờn bắt, tăng cường khả năng vận động hoạt bát<br>- Thiết kế độc đáo, hấp dẫn, bắt mắt<br><br>Có 3 mẫu thiết kế:<br>- Kén tằm hình chim, đính lông gà: 80x365x20mm<br>- Kén tằm hình thỏ, đính ruy băng: 80x365x20mm<br>- Banh lông cam: 70x385x50mm<br><br>Thông số kỹ thuật:<br>- Chất liệu cao cấp siêu bền, an toàn với thú cưng<br>- Trọng lượng: 20g<br>- Sản xuất tại Việt Nam theo tiêu chuẩn của CattyMan Nhật Bản</p>', '08-06-24'),
(63, 11, ' Đồ Chơi Cho Mèo Banh Catnip FOFOS', 34, '20000', '20000', '', 'Đồ chơi', 'Còn hàng', '1717818859_do-choi-meo-banh-catnip-fofos_5.webp', '<h4>Đồ Chơi Cho Mèo&nbsp;Banh Catnip FOFOS</h4><ul><li>Thương hiệu:&nbsp;<strong>FOFOS</strong></li><li>Phù hợp cho: Mèo mọi lứa tuổi</li><li>FOFOS là thương hiệu&nbsp;<strong>đồ chơi cho&nbsp;mèo</strong>&nbsp;nổi tiếng. Các sản phẩm của FOFOS được thiết kế dựa trên nhu cầu và sở thích của chó mèo, với mục đích giúp chúng vui chơi, giải trí và phát triển toàn diện. Các sản phẩm đồ chơi FOFOS có nhiều mẫu mã đa dạng, từ đồ chơi nhai, đồ chơi đuổi bắt, đồ chơi thông minh,... được làm từ chất liệu an toàn, thân thiện với môi trường.</li></ul><p><strong>Lợi ích:&nbsp;</strong></p><ul><li>Giúp thú cưng vui chơi, giải trí, giảm căng thẳng, mệt mỏi.</li><li>Kích thích mọc răng, nướu, phát triển xương khớp.</li><li>Phát triển trí thông minh, khả năng tư duy và giải quyết vấn đề.</li><li>Giúp tăng cường vận động, phát triển thể chất.</li><li>Giảm nguy cơ thú cưng nghịch phá đồ đạc trong nhà.</li></ul><p><strong>Thành phần</strong></p><ul><li>Chất liệu: Vải lông nhung, catnip</li></ul><p><strong>Hướng dẫn sử dụng</strong></p><ul><li>Lựa chọn đồ chơi có kích thước phù hợp với thú cưng</li><li>Kiểm tra sản phẩm trước khi cho thú cưng chơi</li><li>Tránh tiếp xúc với lửa</li><li>Không sử dụng với mục đích khác ngoài đồ chơi cho thú cưng</li></ul>', '08-06-24'),
(64, 11, 'Hộp 6 Chuột Mini CattyMan Đồ Chơi Cho Mèo', 20, '60000', '60000', '', 'Đồ chơi', 'Còn hàng', '1717818958_do-choi-meo-hop-6-chuot-mini-cattyman1.webp', '<p>Hộp 6 Chuột CattyMan Đồ Chơi Cho Mèo</p><p>- Dễ dàng giao tiếp với mèo yêu.</p><p>- Giúp cho mèo chơi đùa thư giãn</p><p>- Dùng để chơi đùa cùng thú cưng của bạn</p><p>- Tạo sự vận động khỏe mạnh và nhanh nhẹn</p><p>Sản xuất tại Việt Nam</p><p>Chất liệu: nhựa, lông, vải.</p><p>Thương hiệu: CattyMan</p>', '08-06-24'),
(65, 5, 'Vòng Cổ Chó Mèo Có Chuông Dày ', 30, '30000', '30000', '', 'Dụng cụ', 'Còn hàng', '1717819729_vong-co-chuong-day-1cm-cho-cho-meo-paddy.webp', '<p>???? Vòng cổ chuông dành cho thú cưng</p><p>Loại dày 1cm =&gt; chó mèo dưới 5kg</p><p>MÀU SẮC: Giao ngẫu nhiên</p><p>❤️ Vòng cổ chuông cho thú cưng với thiết kế dày dặn và chắc chắn, chiếc vòng cổ này sẽ nằm thật gọn gàng và êm ái trên cổ chú thú cưng của bạn, sẵn sàng cho mọi chuyến đi dạo hoặc chạy bộ đầy hứng khởi phía trước.</p><p>+ Ngoài tác dụng giúp bạn giữ chặt và theo sát chú thú cưng của mình, thời trang của chiếc vòng cổ còn là điểm nhấn nổi bật để chú thú cưng của bạn trông thật “sành điệu”.</p><p>+ Vòng Cổ nhiều màu sắc cho vật nuôi, có chuông kêu leng keng giúp cho bạn biết chú thú cưng của mình đang ở đâu, giúp cho vật nuôi không bị lạc.</p>', '08-06-24'),
(66, 7, 'Áo Cho Chó Mèo Hình Gấu Màu Pastel', 94, '100000', '100000', '10', 'Phụ kiện', 'Còn hàng', '1717819816_ao-cho-cho-meo-hinh-gau-mau-pastel-paddy-pet-shop_2.jpg', '<p>Áo Cho Chó Mèo Hình Gấu Màu Pastel</p><p><br>???? CHẤT LIỆU<br>- Vải thun cotton mỏng nhẹ in hình ảnh sắc nét, chất vải êm ái, thoáng mát<br><br>???? GỢI Ý CHỌN SIZE<br>RỘNG NGỰC*DÀI LƯNG (Trọng lượng của bé)<br>- XS : 20cm*30cm (0.3~0.5kg)<br>- S: 25cm*35cm (1.5~2.5kg)<br>- M: 30cm*40cm (2.5~4kg)<br>- L: 35cm*45cm (4.5~5kg)<br>- XL: 40cm*50cm (5.5~7kg)<br>- 2XL: 45cm*55cm (7~9.5kg)<br>***Với áo lẻ: tham khảo độ rộng vòng ngực<br>***Với set áo kèm quần: tham khảo độ dài lưng<br><br>???? Lưu ý: Số liệu trên chỉ mang tính chất tương đối. Size áo còn phụ thuộc vào giống cún và độ dày lông. Để chọn chính xác cỡ áo cho chó mèo, bạn vui lòng chat trực tiếp cho shop để được tư vấn tốt nhất.<br><br>???? CHÍNH SÁCH ĐỔI HÀNG<br>- Nếu sản phẩm bị lỗi do nhà sản xuất, shop sẽ gửi bù cho bạn và shop sẽ chịu toàn bộ chi phí<br>- Nếu bạn muốn đổi size, vui lòng gửi lại hàng ra cho chúng mình, chúng mình sẽ gửi lại size muốn đổi cho bạn, bạn thanh toán phí ship</p>', '08-06-24'),
(67, 7, 'Nón Vải Dễ Thương Cho Chó Mèo', 43, '50000', '50000', '', 'Phụ kiện', 'Còn hàng', '1717820215_non-mu-cho-cho-meo-2-1702290606736.webp', '<p><strong>Nón Vải Dễ Thương Cho Chó Mèo</strong></p><ul><li>Thương hiệu:&nbsp;<strong>Paddy</strong></li><li>Phù hợp cho: Chó/mèo mọi lứa tuổi</li><li>Nón Vải là&nbsp;<strong>phụ kiện cho chó mèo</strong>&nbsp;tuyệt vời được làm bằng vải mềm mại và thoáng mát, có hình đồng tiền vàng xinh xắn trên đỉnh. Mũ có thể được điều chỉnh để phù hợp với kích thước đầu của chó hoặc mèo của bạn.</li></ul><p><strong>Lợi ích:&nbsp;</strong></p><ul><li>Giúp bảo vệ đầu và tai của chó hoặc mèo khỏi ánh nắng mặt trời.</li><li>Giúp giữ ấm đầu và tai của chó hoặc mèo trong thời tiết lạnh.</li><li>Tạo thêm phong cách cho chó hoặc mèo của bạn.</li></ul><p><strong>Thành phần</strong></p><ul><li>Chất liệu: Vải nỉ nhồi bông</li></ul><p><strong>Hướng dẫn sử dụng</strong></p><ul><li>Chọn kích thước mũ phù hợp với kích thước đầu của chó hoặc mèo của bạn.</li><li>Mũ nên vừa khít với đầu nhưng không quá chật.</li></ul>', '08-06-24'),
(68, 7, 'Áo Cho Chó Mèo Trắng Đỏ Bunny Vải Nỉ', 50, '150000', '150000', '', 'Phụ kiện', 'Còn hàng', '1717820283_quan-ao-cho-meo_1.webp', '<p>Áo Cho Chó Mèo Trắng Đỏ Bunny Vải Nỉ</p><p>???? CHẤT LIỆU<br>- Chất vải nỉ êm ái, ấm áp cho thú cưng<br><br>???? GỢI Ý CHỌN SIZE<br>RỘNG NGỰC*DÀI LƯNG (Trọng lượng của bé)<br>- S: 25cm*35cm (1~2.5kg)<br>- M: 30cm*40cm (2.5~4kg)<br>- L: 35cm*45cm (4~5kg)<br>- XL: 40cm*50cm (5~7kg)</p><p><br>***Với áo lẻ: tham khảo độ rộng vòng ngực<br>***Với set áo kèm quần: tham khảo độ dài lưng<br><br>???? Lưu ý: Số liệu trên chỉ mang tính chất tương đối. Size áo còn phụ thuộc vào giống cún và độ dày lông. Để chọn chính xác cỡ áo cho chó mèo, bạn vui lòng chat trực tiếp cho shop để được tư vấn tốt nhất.<br>&nbsp;</p>', '08-06-24'),
(69, 7, 'Áo Đầm Cho Chó Mèo Vải Nỉ Gấu Đính Nơ', 40, '150000', '150000', '', 'Phụ kiện', 'Còn hàng', '1717822240_41KyMgYBE-L_1.jpg', '<p>Áo Đầm Cho Chó Mèo Vải Nỉ Gấu Đính Nơ</p><p>???? CHẤT LIỆU<br>- Chất vải nỉ êm ái, ấm áp cho thú cưng<br><br>???? GỢI Ý CHỌN SIZE<br>RỘNG NGỰC*DÀI LƯNG (Trọng lượng của bé)<br>- S: 25cm*37cm (1~2.5kg)<br>- M: 30cm*42cm (2.5~4kg)<br>- L: 35cm*45cm (4~5kg)<br>- XL: 40cm*50cm (5~7kg)</p><p><br>***Với áo lẻ: tham khảo độ rộng vòng ngực<br>***Với set áo kèm quần: tham khảo độ dài lưng<br><br>???? Lưu ý: Số liệu trên chỉ mang tính chất tương đối. Size áo còn phụ thuộc vào giống cún và độ dày lông. Để chọn chính xác cỡ áo cho chó mèo, bạn vui lòng chat trực tiếp cho shop để được tư vấn tốt nhất.<br>&nbsp;</p>', '08-06-24'),
(70, 7, 'Áo Cho Chó Mèo Vải Nỉ Kèm Túi Lông', 29, '250000', '250000', '20', 'Phụ kiện', 'Còn hàng', '1717822297_ao-cho-cho-meo-ni-noel-giang-sinh.webp', '<p>Áo Cho Chó Mèo Vải Nỉ Kèm Túi Lông<br><br>???? CHẤT LIỆU<br>- Chất vải nỉ êm ái, ấm áp cho thú cưng<br><br>???? GỢI Ý CHỌN SIZE<br>RỘNG NGỰC*DÀI LƯNG (Trọng lượng của bé)<br>- S: 25cm*35cm (1~2.5kg)<br>- M: 30cm*40cm (2.5~4kg)<br>- L: 35cm*45cm (4~5kg)<br>- XL: 40cm*50cm (5~7kg)</p><p><br>***Với áo lẻ: tham khảo độ rộng vòng ngực<br>***Với set áo kèm quần: tham khảo độ dài lưng<br><br>???? Lưu ý: Số liệu trên chỉ mang tính chất tương đối. Size áo còn phụ thuộc vào giống cún và độ dày lông. Để chọn chính xác cỡ áo cho chó mèo, bạn vui lòng chat trực tiếp cho shop để được tư vấn tốt nhất.<br>&nbsp;</p>', '08-06-24'),
(71, 5, 'Bàn Chải Đánh Răng Cho Chó Mèo Silicon Đeo Tay', 30, '20000', '20000', '', 'Dụng cụ', 'Còn hàng', '1717822401_2_732b4a6f-eebd-4802-8c22-3933a06748ef.webp', '<p><strong>Thông tin chung:&nbsp;</strong></p><ul><li>Thương hiệu: Paddy</li><li>Phù hợp cho: Chó/Mèo mọi lứa tuổi</li><li>Bản chải đánh răng chó mèo silicon đeo tay là một loại bàn chải đánh răng dành cho thú cưng, được thiết kế để vừa vặn với ngón tay của bạn và có thể làm sạch răng lợi của chó mèo một cách nhẹ nhàng, hiệu quả, không gây tổn thương cho nướu và lợi, không cần sử dụng kem đánh răng, giúp ngăn ngừa sâu răng và viêm nha chu cho thú cưng.</li></ul><p><strong>Lợi ích:</strong></p><ul><li>Loại bỏ cặn thức ăn, mảng bám và sự hình thành vôi răng</li><li>Chống lại các chứng bệnh về nướu, ngừa sâu răng</li><li>Kiểm soát mùi hôi miệng<br>&nbsp;</li><li>Thiết kế nhỏ gọn, tiện dụng</li></ul><p><strong>Thành phần</strong><br>&nbsp;</p><ul><li>Chất liệu: silicon siêu mềm và dẻo</li></ul><p><strong>Hướng dẫn sử dụng</strong></p><ul><li>Đeo bàn chải lên ngón tay của bạn (thêm 1 ít kem đánh răng hoặc nước xịt thơm miệng) và nhẹ nhàng chà vào răng chó mèo</li><li>Sử dụng hàng ngày để răng miệng bé luôn sạch sẽ.</li></ul>', '08-06-24'),
(72, 5, 'Set Kem Đánh Răng Mèo Kèm Bàn Chải Bioline', 45, '50000', '50000', '', 'Dụng cụ', 'Còn hàng', '1717822459_set-ban-chai-va-kem-danh-rang-meo-bioline.webp', '<p>Set Kem Đánh Răng &amp; Bàn Chải #Bioline Cho Chó Mèo - Giải pháp an toàn và hữu hiệu để tiêu diệt hôi miệng ở thú cưng.<br><br>* BỘ SẢN PHẨM GỒM:<br>- 1 Tuýp kem đánh răng<br>- 3 kiểu bàn chải đánh răng<br><br>* THÔNG TIN SẢN PHẨM<br>- Kem đánh răng là phương pháp tốt nhất để đảm bảo rằng vật nuôi của chúng tôi sẽ tận hưởng sức khỏe răng miệng tốt.<br>- Đánh răng hàng ngày với chiếc Goofy Tails Bioline TOOTHPASTE này cung cấp dịch vụ chăm sóc nha khoa tại nhà tốt nhất cho thú cưng của bạn.<br>- Kem đánh răng được chế tạo đặc biệt để an toàn, hiệu quả và hấp dẫn cho chó hoặc mèo của bạn.<br>- Chứa kết hợp hiệu quả cao của Aloe ổn định, Vitamin B6 và Chitosan, giúp làm giảm công thức và điều kiện cao răng và khử mùi của vật nuôi.<br>- Dental Care Set Tooth Paste với bạc hà giúp ngăn ngừa sự tích tụ của cao răng. Cải thiện vệ sinh trong miệng.<br><br>* THÀNH PHẦN<br>- Sorbitol, Silicon Dioxide, Alky, Polyglycosiders, Cellulose Gum, Peppermint, Tetrasodium Pyrophosphate, Enzyme.<br><br>* ĐẶC ĐIỂM NỔI BẬT<br>- Bàn chải đánh răng cho chó nhạy cảm: Cho phép đánh răng nhẹ nhàng trên các khu vực nhạy cảm (đặc biệt là khuyến cáo trong giai đoạn thích ứng)<br>Gum Massage Brush: Thúc đẩy lưu thông máu và ngăn ngừa nướu răng.<br>* Loại bỏ hơi thở của chó xấu bằng chiếc bàn chải đánh răng và kem đánh răng dành cho chó này để bạn có thể tận hưởng những nụ hôn của chú chó mà không có hơi thở hôi thối của chó.<br>* Bộ bàn chải đánh răng cho chó là nhẹ nhàng nhưng hiệu quả trong việc loại bỏ hơi thở hôi, giảm tích tụ vôi răng, và làm trắng và làm sáng răng của con chó.<br>* Thành phần tự nhiên đảm bảo sức khỏe răng miệng tối ưu cho con chó của bạn với hương vị của một món ngon mà họ sẽ yêu thích.<br>* Công thức với các thành phần tự nhiên cho Advanced Breath Freshening.<br><br>CÁCH SỬ DỤNG: Trước khi sử dụng sản phẩm này, hãy dùng một chút mát xa với bàn chải đánh răng để thích ứng trong vài ngày đầu tiên. sau đó, áp dụng 1 ~ 2cm trên bàn chải đánh răng và nhẹ nhàng đánh răng của thú cưng của bạn.</p>', '08-06-24'),
(73, 5, 'Bột Vệ Sinh Răng Miệng Chó Mèo Trộn Thức Ăn Cature Rollon Oral Care', 46, '50000', '50000', '', 'Dụng cụ', 'Còn hàng', '1717822524_61SMilG1KcL.webp', '<p><strong>Bột Vệ Sinh Răng Miệng Chó Mèo Trộn Thức Ăn Cature Rollon Oral Care</strong></p><ul><li>Thương hiệu: Cature</li><li>Phù hợp cho: Chó/ Mèo (trên 2 tháng tuổi)</li><li>Bột Vệ Sinh Răng Miệng Chó Mèo Care Rollon of Oral Care là một sản phẩm giúp làm sạch răng và ngăn ngừa các bệnh về răng miệng cho chó mèo đến từ Nhật Bản. Sản phẩm được sản xuất bởi Care, một thương hiệu uy tín trong lĩnh vực chăm sóc thú cưng.<br>Bột Vệ Sinh Răng Miệng Care Rollon of Oral Care có vị ngọt, dễ sử dụng và phù hợp với cả chó và mèo. Bạn nên cho chó mèo sử dụng 2-3 lần/tuần để đạt hiệu quả tốt nhất.</li></ul><p><strong>Lợi ích:</strong></p><ul><li>Vệ sinh răng miệng, khử mùi hôi miệng cho chó mèo, không cần dùng đến bàn chải đánh răng</li><li>Giúp kiểm soát ngăn ngừa mảng bám và cao răng</li><li>Công thức tự nhiên, an toàn</li><li>Giảm thiểu nguy cơ mắc các bệnh về răng miệng như viêm nha chu, sâu răng, hôi miệng.</li></ul><p><strong>Thành phần:</strong><br>&nbsp;</p><ul><li>Chiết xuất quả hồng, chiết suất hoa cúc, nước dùng lên men mật ong, allantoin, chiết xuất hương thảo, nước tinh khiết, v.v.</li></ul><p><strong>Hướng dẫn sử dụng</strong></p><ul><li>Bột trộn chung với thức ăn (hạt, pate &amp; snack)</li><li>Dùng cho chó mèo trên 2 tháng tuổi<br>+ Chó mèo dưới 10kg: 1 gói/1 ngày<br>+ Chó 10-25kg: 1-2 gói/1 ngày<br>+ Chó trên 25kg trở lên: 2-3 gói/ 1 ngày</li></ul>', '08-06-24'),
(74, 8, 'Pate Mèo Kaniva Vitamin Ball Bổ Não Dưỡng Lông ', 23, '20000', '20000', '15', 'Pate', 'Còn hàng', '1717822655_pate-meo-kaniva-vitamin-ball-bo-nao-duong-long-70g_4.jpg', '<p><strong>Pate Mèo Kaniva Vitamin Ball Bổ Não Dưỡng Lông 70g</strong></p><ul><li>Thương hiệu:&nbsp;<strong>Kaniva</strong></li><li>Phù hợp cho: Mèo mọi lứa tuổi</li><li><strong>Pate mèo</strong>&nbsp;Kaniva Vitamin Ball là thức ăn cho mèo hoàn chỉnh và cân bằng được công thức chế biến để đáp ứng nhu cầu dinh dưỡng của tất cả các giai đoạn của mèo. Nó được làm từ các nguồn protein chất lượng cao, bao gồm thịt gà, cá và trứng, và cũng được tăng cường vitamin và khoáng chất để hỗ trợ sức khỏe của mèo. Pate Mèo Kaniva Vitamin Ball cũng được làm từ hỗn hợp thành phần độc đáo giúp hỗ trợ hệ tiêu hóa, da và lông của mèo.</li></ul><p><strong>Lợi ích:</strong></p><ul><li>Vitamin B3, B6 và B9 giúp nuôi dưỡng thần kinh và trí não.</li><li>Tinh Dầu cá hồi ức chế viêm, tăng miễn dịch ở mèo.</li><li>Đặc biệt tốt cho các bé cơ địa da kém hay bị nấm da chữa lành tổn thương do nấm, phòng ngừa rụng lông, cải thiện lông dầy mượt.</li><li>Ngừa tăng cholesterol cao.</li><li>Tăng tỷ lệ chuyển hóa mỡ chống béo phì.</li><li>Tránh các bệnh liên quan đến sụn khớp.</li><li>Duy trì, hỗ trợ hoạt động của não bộ</li><li>Tăng tỷ lệ hấp thụ Canxi tối đa.</li></ul><p><strong>Thành phần</strong></p><ul><li>Thịt gà và cá ngừ, Trứng,&nbsp;Dầu cá hồi,&nbsp;Tinh dầu hoa anh thảo,&nbsp;Taurine,&nbsp;Vitamin và khoáng chất.</li></ul><p><strong>Hướng dẫn sử dụng</strong></p><ul><li>Có thể cho ăn trực tiếp và chỉ cần bổ sung thêm nước là có thể duy trì sức khỏe bình thường của thú cưng. Điều chỉnh liều lượng tùy theo độ tuổi, cân nặng và mức độ hoạt động của mèo nhà bạn</li><li>Bảo quản nhiệt độ phòng, để ngăn mát và dùng hết trong 48 tiếng sau khi mở nắp</li></ul>', '08-06-24'),
(75, 6, 'Thức Ăn Hạt Cho Mèo Mọi Lứa Tuổi Natural Core Hữu Cơ ', 141, '250000', '250000', '20', 'Thức ăn hạt', 'Còn hàng', '1717822753_thuc-an-cho-meo-moi-lua-tuoi-natural-core-95-huu-co-1kg_1.webp', '<p><strong>Thức Ăn Cho Mèo Mọi Lứa Tuổi Natural Core 95% Hữu Cơ 1kg</strong></p><ul><li>Thương hiệu:&nbsp;<strong>Natural Core</strong></li><li>Phù hợp cho: Mèo mọi lứa tuổi</li><li><strong>Thức ăn cho mèo</strong> mọi lứa tuổi Natural Core 95% Hữu Cơ 1kg là sản phẩm thức ăn hạt hữu cơ cao cấp cho mèo, được sản xuất tại Hàn Quốc. Sản phẩm được chế biến từ 95% nguyên liệu hữu cơ, bao gồm thịt gà, thịt cá hồi, thịt vịt rút xương, hồng sâm,... cùng các loại rau củ quả tươi ngon, mang đến cho mèo nguồn dinh dưỡng đầy đủ và cân bằng, giúp mèo phát triển khỏe mạnh và toàn diện.</li></ul><p><strong>Lợi ích:</strong></p><ul><li>95% nguyên liệu hữu cơ và 5% là vitamin và khoáng chất tồn tại ở dạng vô cơ<br>&nbsp;</li><li>Chăm sóc da, làm đẹp lông</li><li>Tăng cường khả năng tiêu hoá và hấp thụ dưỡng chất</li><li>Giảm thiểu mùi phân</li><li>Loại bỏ lông trong dạ dày</li><li>Giúp tăng cường sức đề kháng và phòng ngừa bệnh tật</li><li>Dành cho mèo thuộc mọi lứa tuổi, cân nặng</li></ul><p><strong>Thành phần</strong></p><ul><li>Được chế biến từ thịt gà, thịt cá hồi, thịt vịt rút xương, hồng sâm…, protein, chất béo, chất xơ, vitamin và khoáng chất<br>&nbsp;</li></ul><p><strong>Hướng dẫn sử dụng</strong></p><ul><li>Chia làm 2-3 bữa/ngày</li><li>Lượng cho ăn hàng ngày được khuyến nghị (gam mỗi ngày) theo trọng lượng cơ thể (kg) và hình dáng của mèo.</li><li>Khẩu phần ăn hàng ngày có thể thay đổi liên quan đến nhiệt độ môi trường, lối sống của mèo (trong nhà-ngoài trời), tính khí và hoạt động của mèo.</li></ul>', '08-06-24'),
(78, 8, 'Pate Cho Mèo Snappy Tom Lon 400g', 30, '38000', '38000', '', 'Pate', 'Còn hàng', '1718508640_1599449591_snappy-tom-lamb-400g.jpg', '<p><i><strong>Pate cho mèo Snappy Tom Lon 400g</strong></i> là thức ăn mềm hoàn chỉnh,&nbsp;thơm ngon dành cho mèo từ 6 tháng tuổi với tới 10 hương vị đa dạng.</p><p><i><strong>Pate cho mèo Snappy Tom Lon 400g</strong></i> nổi tiếng với chất lượng vượt trội,&nbsp;nguyên liệu tươi ngon hảo hạng như cá hồi, cá ngừ, thịt cừu,... Loại pate này bổ sung lượng protein dồi dào để mèo trưởng thành khoẻ mạnh. Lượng taurine, vitamin và khoáng chất giúp mèo phát triển toàn diện về trí não và hệ miễn dịch để chống lại bệnh tật.</p><p>Hướng dẫn sử dụng <i><strong>Pate cho mèo Snappy Tom Lon 400g</strong></i>:</p><p>- Dùng 1/2 lon 1 ngày, chia đều mỗi bữa. Bạn có thể điều chỉnh theo độ tuổi, cân nặng của mèo</p><p>- Nên dùng luôn sau khi mở nắp hoặc, bảo quản trong tủ lạnh tối đa 3 ngày</p><p>Sản phẩm có 10 hương vị để bạn thoả sức thay đổi bữa ăn cho mèo. Đảm bảo&nbsp;an toàn tuyệt đối,&nbsp;không chứa&nbsp;gluten, phẩm màu và chất bảo quản.</p>', '11-06-24'),
(79, 8, 'Pate Snappy Tom gói 85g', 35, '20000', '20000', '', 'Pate', 'Chọn tình trạng', '1718508774_9a63904779abc7b204187022ea0e4cea.jpg', '<p><strong>Pate Snappy Tom gói 85g</strong> đến từ thương hiệu lâu đời của Úc, đem lại những bữa ăn thơm ngon đầy đủ các chất dinh dưỡng cho thú cưng. Với dây chuyền sản xuất hiện đại, kiểm duyệt nghiêm ngặt, Pate Snappy Tom sẽ mang tới sự an tâm khi sử dụng sản phẩm.</p>', '11-06-24'),
(80, 6, 'Hạt Ganador Adult Cho Chó Trưởng Thành Vị Cừu & Gạo', 55, '980000', '980000', '20', 'Thức ăn hạt', 'Còn hàng', '1718091266_ganadorlamb.webp', '<p>Thức ăn cho chó trưởng thành vị thịt cừu và gạo Ganador Adult Lamb and Rice<br>GANADOR ADULT LAMB and RICE</p><p><br>(Dành cho chó trưởng thành từ 12 tháng trở lên)</p><p><br>Mô tả sản phẩm:<br>+ Thức ăn Hỗn Hợp Ganador Thịt Cừu và gạo có công thức được pha chế và thiết kế từ Pháp đảm bảo giá trị dinh dưỡng cao nhằm duy trì hợp lí giai đoạn trưởng thành dài nhất của Chó cưng cho nhiều giống loài và kích cỡ.<br>+ Thức ăn Hỗn Hợp Ganador Thịt Cừu và gạo được chế biến đặc biệt cho thú cưng của bạn nhằm đảm bảo một chế độ dinh dưỡng toàn diện và cân bằng.</p><p><br>Thương hiệu: Pháp</p>', '11-06-24'),
(81, 8, 'Pate TƯƠI The Pet Cho Chó Mèo Biếng Ăn (1kg) Ship NowGrab 2H', 56, '200000', '200000', '20', 'Pate', 'Còn hàng', '1718091486_123 (1).jpg', '<p>Pate Tươi Cho Mèo Hỗn Hợp cho Chó Mèo Biếng Ăn được làm từ hỗn hợp cá biển và gan gà tươi nguyên chất thích hợp dùng cho Chó Mèo.<br><br>CHẤP HẾT TẤT CẢ MÈO BIẾNG ĂN, KHÓ ĂN, KÉN MỌI LOẠI THỨC ĂN.<br>???? 100% nguyên liệu tự nhiên, không độn rau củ, chứa độ ẩm &amp; đạm tự nhiên cao từ 60-84%.<br>???? Năng lượng cao hơn vượt trội so với các dòng sản phẩm khác trên thị trường (trung bình ở mức 400kcal/kg).<br>???? Công thức siêu cấp nước, giúp ngăn ngừa sỏi thận.<br>???? Với giá chỉ từ 8k/bữa ăn là Boss đã có được bữa ăn thơm ngon, tốt cho sức khỏe.<br>???? Chỉ cần bảo quản sản phẩm trong ngăn mát, không cần chế biến hay hâm nóng.<br><br>Paddy có sẵn có 2 mùi vị thơm ngon #BestSeller, hấp dẫn các bé kén ăn<br>✅ Hỗn Hợp Gà - cho Chó &amp; Mèo<br>✅ Hỗn Hợp Cá - cho Mèo<br>✅ Hỗn Hợp Gà - cho Chó &amp; Mèo</p><p>Khối lượng: hộp to 1kg</p>', '11-06-24'),
(82, 9, 'Gel Dinh Dưỡng GimCat Hỗ Trợ Sức Khỏe Cho Mèo (50g)', 56, '150000', '150000', '15', 'Thực phẩm chức năng', 'Còn hàng', '1718091616_gel-dinh-duong-gimcat-ho-tro-suc-khoe-cho-meo-50g-paddy-12.jpg', '<p>el Dinh Dưỡng Đặc Trị Cho Mèo Gimcat Paste 50g - Tiêu búi lông &amp; Hỗ trợ tiêu hóa (Nhập khẩu Đức)<br><br>&gt;&gt;&gt; Gel dinh dưỡng cho mèo con Gimcat Kitten Paste 50g - dành cho mèo con trên 6 tuần tuổi<br>• Với công thức tăng trưởng độc đáo chứa: tỷ lệ canxi/phốt pho tối ưu để kích thích tăng trưởng và xương chắc khỏe.<br>• 12 vitamin thiết yếu, nguyên tố vi lượng và khoáng chất cho hệ miễn dịch khỏe mạnh.<br>• Dầu hạt lạnh và dầu cá bảo vệ tế bào.<br>• Taurine giúp tăng cường thị lực và chức năng tim khỏe mạnh.<br>• Lòng đỏ trứng đáp ứng nhu cầu axit arachidonic (chất tăng miễn dịch, mèo không thể tự sản xuất).<br><br>&gt;&gt;&gt; Gel hỗ trợ tiêu hóa cho mèo Gimcat Gastro Intestinal Paste Digestion 50g - Dành cho mèo hỗ trợ tiêu hoá (căng bằng vi sinh, bảo vệ màng nhầy ruột):<br>• Sản phẩm bảo vệ đường tiêu hóa một cách tự nhiên, bằng cách căn bằng lượng vi khuẩn có bên trong ruột.<br>• Sản phẩm chứa chất xơ hòa tan làm từ vỏ psyllium và TGOS prebiotic (chất xơ hòa tan) để điều chỉnh và giữ cho hệ vi sinh đường ruột khỏe mạnh.<br>• Beta-glucan và vỏ cây hệ du giúp giảm kích ứng đường tiêu hóa và đảm bảo màng nhầy ruột khỏe mạnh.<br>• Cỏ khô tăng cường khả năng tiêu hóa.<br><br>&gt;&gt;&gt; Gel tiêu búi lông cho mèo GimCat Malt-Soft Extra Anti-Hairball 50g<br>• Với sự kết hợp của mạch nha, dầu hạt lanh, cellulose và beta-glucan giúp bài tiết các búi lông một cách tự nhiên. Làm giảm sự tích tụ của búi lông trong dạ dày và nôn ra ngoài.<br>• Beta-glucan giúp tránh kích ứng đường tiêu hóa.<br><br>HDSD<br>Cho ăn 6 cm mỗi ngày, trực tiếp từ ống hoặc thêm vào thực phẩm (1 cm = khoảng 0,5 g).<br><br>Bảo quản: nơi khô ráo thoáng mát sau khi mở nắp.<br>Trọng lượng: 50g</p>', '11-06-24'),
(83, 9, 'Gel Dưỡng Lông Da Chó Mèo Virbac Megaderm', 45, '50000', '50000', '15', 'Thực phẩm chức năng', 'Còn hàng', '1718091679_gel-muot-long-cho-meo-virbac.webp', '<p>☘ GEL DINH DƯỠNG VIRBAC MEGADERM GIÚP MƯỢT LÔNG, DA, GIẢM NGỨA CHO PET THÚ CƯNG CHÓ MÈO, Một hộp 28 gói mỗi gói 4ml ☘<br>Megaderm - Gel ăn dinh dưỡng cho chó mèo<br>Hạn sử dụng: 24 tháng<br><br>- Gel ăn dinh dưỡng chứa Omega 3 và Omega 6 giúp mượt da lông và giảm ngứa.<br>- Giảm các triệu chứng ngứa và dị ứng trên da.<br>- Giảm rụng lông, làm lành những vết thương trên da.<br>- Mượt lông, da, giảm sự tăng tiết chất nhờn trên da.<br>- Hỗ trợ khả năng phòng vệ tự nhiên của thú cưng.<br>- Megaderm là chất bổ sung dinh dưỡng ngon miệng cung cấp các axit béo thiết yếu (EFA) từ các nhóm Omega 3 và Omega 6 nguồn gốc từ thiên nhiên.<br>- Megaderm là sản phẩm axit béo thiết yếu duy nhất trên thị trường có tỷ lệ omega 6 và omega 3 lí tưởng 5:1, đảm bảo hiệu quả và kéo dài cho lông bị hư hại.<br>- Megaderm chứa một hàm lượng đậm đặc axit béo, cung cấp đến 178mg EFA/kg/ngày. Vitamin A và E giúp kiểm soát các vấn đề về da khác nhau trên chó, mèo, đặc biệt trong dị ứng bằng 2 tác động hỗ trợ, đó là phục hồi sự hoàn thiện cho bộ da và điều tiết sự viêm nhiễm (sưng đỏ, ngứa).<br>- Megaderm còn hỗ trợ khả năng phòng vệ tự nhiên của thú cưng giúp cho chúng khỏe mạnh.<br>- Megaderm đựng trong các bao nhôm riêng biệt, thuận tiện cho một lần sử dụng, đảm bảo liều chính xác, vệ sinh.<br><br>Cách dùng:<br>Trộn vào thức ăn hoặc cho ăn trực tiếp với liều lượng: 4ml cho thú cưng nặng đến 10kg<br>Sử dụng 8ml cho thú cưng nặng từ 10-20kg<br>Sử dụng 2 gói x 8ml cho vật nuôi trên 20kg<br>Kiểm soát các bệnh trên da: Cho ăn mỗi ngày, trong 1- 2 tuần<br>Duy trì da, lông khỏe: Cho ăn mỗi hai ngày, trong 1 – 2 tuần<br><br>* Sản Phẩm Sản Xuất Tại: Pháp<br>* Bảo quản: Nơi khô thoáng, tránh ánh nắng trực tiếp.<br>* Hướng dẫn sử dụng: Phù hợp cho thú cưng dưới 10kg<br>* Hạn sử dụng: 24 tháng kể từ ngày sản xuất</p>', '11-06-24'),
(84, 9, 'Bột Mỡ Bò Grau Tăng Cường Năng Lượng Cho Chó Mèo 400g', 45, '600000', '600000', '20', 'Thực phẩm chức năng', 'Còn hàng', '1718091738_bot-mo-cho-meo-tang-can-grau.webp', '<p>Với hàm lượng dinh dưỡng cao cho chó Mèo Hay còn được gọi theo tên tiếng Việt cho dễ hiểu là mỡ bò, là sản phẩm giàu Protein.</p><p>Protein giúp cơ thể mèo phát triển cơ bắp và chắc khoẻ nang lông, nhờ đó có một bộ lông mượt, xốp và hạn chế gẫy rụng. Hiệu quả nhhất là mấy đứa biếng ăn, lớn phổng lên như thánh gióng luôn ạ Sản phẩm vô cùng cần thiết cho chó mèo chuẩn bị mang thai, đang mang thai và cho con bú. Mang lại hiệu quả đáng ngạc nhiên với những đàn chó mèo đang trong giai đoạn phát triển. Đặc biệt hiệu quả hơn với những chú chó dòng chó săn, chó thể thao, size lớn, cần nhiều năng lượng. Mỡ bò giúp chó mèo có bộ da và lông khoẻ mạnh, óng ả, dày và xốp hơn. Mỡ Bò được làm giàu đường glucose, hấp thụ trực tiếp vào cơ thể, giúp tăng cường năng lượng nhanh chóng và hiệu quả.</p><p>Cách dùng: trộn lượng thích hợp theo chỉ dẫn trên nhãn vào thức ăn.</p><p>- Mèo lớn: 1/2 thìa cafe/ngày - Mèo nhỏ 2 tháng tuổi (đã biết ăn sữa): 1/4 thìa cafe/ngày - Chó: 1/2-2 thìa cafe/ngày - tuỳ cân nặng.</p>', '11-06-24'),
(85, 9, 'Gel Dinh Dưỡng Nourse 09 Cho Chó Mèo', 65, '130000', '130000', '5', 'Thực phẩm chức năng', 'Còn hàng', '1718091798_thuc-an-dinh-duong-cho-cho-meo-gel-nourse-09.webp', '<p>GEL DINH DƯỠNG NOURSE</p><p>Phù hợp để sử dụng cho mèo mang thai và mèo con ????</p><p>Gel dinh dưỡng Nutritional Gel Nourse giúp bổ sung dưỡng chất cho mèo và vật nuôi.</p><p>Giúp các bé ăn ngon miệng, mau lớn, mau hồi phục sức khỏe</p><p>HƯỚNG DẪN SỬ DỤNG Nutritional gel có thể dùng hàng ngày. Cho ăn trực tiếp hoặc trộn trong thức ăn cho chó, thức ăn cho mèo…</p><p>Liều dùng:</p><p>Chó nhỏ &lt;10kg 2-6cm/ lần, &lt;20kg 6-10cm/ lần</p><p>Chó lớn &lt;10kg 2-4cm/ lần, &lt;20kg 4-8cm/ lần</p><p>Chó có thai &lt;10kg 9-12cm/ lần, &lt;20kg 12-14cm/ lần</p><p>Mèo con 3-5cm/ lần</p><p>Mèo trưởng thành 2-4cm/ lần Mèo giai đoạn mang thai 4-5cm/ lần</p><p>THÀNH PHẦN</p><p>&nbsp;???? Nutritional gel một sản phẩm rất ngon miệng, được chỉ định dùng cung cấp năng lượng và chất dinh dưỡng cần thiết tăng cường sức khỏe, làn da và bộ lông khỏe mạnh cho các trường hợp sau: Chó và mèo đặc biệt là chó mèo đang lớn, đang mang thai hay nuôi con nhỏ. Chó săn, chó nghiệp vụ Chó mèo, vật nuôi cần hồi phục sau khi ốm, phẫu thuật,… Chó mèo, vật nuôi sinh ra yếu, còi xương, nhẹ cân, thiếu sữa.</p><p>Trọng lượng: 120g/tuýp</p>', '11-06-24'),
(86, 9, 'Gel Dinh Dưỡng & Tiêu Búi Lông PetAg Cho Mèo 100g', 34, '245000', '245000', '3', 'Thực phẩm chức năng', 'Còn hàng', '1718091871_thuc-an-dinh-duong-cho-meo-tieu-bui-long-100g.webp', '<p>ổ sung đầy đủ các dưỡng chất, cung cấp năng lượng cùng tất cả các vitamin và khoáng chất cần thiết cho chó, mèo vật cưng của bạn:<br>+ Đặc biệt được coi là thức ăn chó con, mèo con lý tưởng chứa nhiều chất béo và carbonhydrate dạng dễ tiêu hóa giúp chó con, mèo con mau lớn.<br>+ Hỗ trợ sức khỏe chó mẹ mang thai, tăng lượng sữa, chất lượng sữa đảm bảo.<br>+ Bồi bổ cơ thể chó nghiệp vụ, chó săn.<br>+ Tăng cường sức khỏe cho chó bị thương, chó bị ốm, chó sau phẫu thuật,…</p>', '11-06-24'),
(87, 11, 'Vòng Cao Su TPet Đồ Chơi Cho Chó Nhai Gặm & Huấn Luyện', 30, '40000', '40000', '', 'Đồ chơi', 'Còn hàng', '1718092119_upload_915d5e2f83574d02b7e9be1eb19208c2_master.webp', '<p>Vòng Cao Su TPet Đồ Chơi Nhai Gặm &amp; Huấn Luyện Chó<br><br>MÀU SẮC: Giao ngẫu nhiên<br><br>1. Vật liệu:<br>_Cao su thiên nhiên<br>_Nguyên liệu đạt chứng nhận CE, Reach, RoHS,...đảm bảo an toàn tuyệt đối cho thú cưng và người sử dụng<br><br>2. Khối lượng sản phẩm: 230gram<br><br>&nbsp;</p>', '11-06-24'),
(88, 11, 'Gối Nằm Cho Chó Mèo Thư Giãn DoggyMan Êm Ái', 43, '130000', '130000', '3', 'Đồ chơi', 'Còn hàng', '1718092195_do-choi-cho-cho-meo-goi-nam-doggyman.webp', '<p>Gối Nằm DoggyMan Êm Ái Cho Chó Mèo Thư Giãn<br><br>Tính năng sản phẩm:<br>- Gối với chiều cao và độ cong được thiết kế để cho chó cưng dễ ngủ.<br>- Dễ dàng giặt với bột giặt thông thường.<br>- Sản xuất tại Việt Nam theo tiêu chuẩn xuất khẩu Nhật Bản<br><br>Chất liệu: Polyester.<br><br>Thông số sản phẩm:<br>- Kích thước sản phẩm (mm): W200 x H400 x D150<br>- Trọng lượng sản phẩm (g): 180</p>', '11-06-24'),
(89, 11, 'Bàn Cào Móng Giấy Cho Mèo', 34, '50000', '50000', '', 'Đồ chơi', 'Còn hàng', '1718471214_Ban-cao-mong-cho-meo-giay-ep.jpg', '<p>ĐẶC ĐIỂM NỔI BẬT<br>- Đây là dụng cụ thích hợp để hướng cho chú mèo của bạn cào móng đúng chỗ. Chọn một dụng cụ cào móng với bề mặt thô nhám để mèo của bạn có thể cào và làm đẹp bộ móng bằng tất cả sự thích thú của bé cưng.<br>- Mèo thường sử dụng móng vuốt để cào đồ nội thất hoặc ghế sofa, khi có món đồ chơi dành riêng cho mèo chúng ta không cần lo lắng điều đó nữa.<br>- Cào móng cũng là một hình thức tập thể dục, tận hưởng khoảng thời gian thoải mái và thư giãn một cách đơn giản nhất.<br>- Bàn cào dành riêng cho các bé mèo dùng để cào móng, tránh hiện tượng phá phách, làm hư các đồ trong nhà.<br>- Giúp móng mèo luôn trong tình trạng tốt<br>- Chất liệu tự nhiên giúp móng mèo luôn chắc khỏe, luôn trong tình trạng tốt nhất.<br>- Giúp các bé giải toả căng thẳng, stress.<br>- Thiết kế dạng bàn hình chữ nhật giúp các bé dễ dàng cào hơn.<br>- Kích thước gọn gàng, nhẹ, dễ dàng di chuyển, dọn dẹp<br>- Ngoài ra có thể để bàn cào trên mặt phẳng để các bé nằm.</p>', '11-06-24'),
(92, 6, 'Hạt Tươi Taste Of The Wild Cho Chó Trưởng Thành (USA)', 56, '125000', '125000', '', 'Thức ăn hạt', 'Chọn tình trạng', '1718509127_126_79164fa7-ae04-4dd0-b7d9-e59fed3cf8c8.webp', '<p>Thức Ăn Hạt Cao Cấp Taste Of The Wild Cho Chó Trưởng Thành (Nhập khẩu Mỹ)<br>Taste Of The Wild là một trong những thương hiệu thức ăn cho chó mèo phát triển nhanh nhất thế giới. Các sản phẩm của Taste Of The Wild được sản xuất trực tiếp tại Mỹ dựa trên các điều kiện sản xuất tốt nhất. Thức ăn cho chó mèo Taste Of The Wild ngày càng được yêu thích. Góp phần xây dựng khẩu phần ăn đầy đủ chất và năng lượng cho thú cưng.<br><br>Thức ăn cho chó mèo Taste Of The Wild mang hương vị đặc trưng không giống bất kỳ loại thức ăn nào khác trên thị trường. Tất cả công thức dinh dưỡng được xây dựng trên chế độ ăn tự nhiên của thú cưng. Thành phần đầu tiên quan trọng phải kể tới thịt và cá. Nguồn Protein được lấy từ thịt lợn, bò rừng, cá hồi, vịt, thịt nai… Kết hợp với hương liệu và gia vị giúp thức ăn ngon và hấp dẫn hơn. Chắc chắn một điều rằng sẽ kích thích thú cưng của bạn ham ăn hơn.<br><br>Hương vị “hoang dã” ở đây có nghĩa là thuận tự nhiên. Khoa học hiện đại đã chứng minh chó mèo tuy đã được thuần hóa nhưng chúng vẫn còn mang những đặc điểm của chó cổ và mèo hoang. Chính vì vậy, Taste Of The Wild tạo ra những hương vị đặc trưng cho sự “hoang dã” ấy. Tuy vậy, thức ăn cho chó mèo Taste Of The Wild vẫn đảm bảo an toàn và chất lượng ở mức cao nhất. Việc theo dõi các thành phần dinh dưỡng và quy trình sản xuất luôn được đặt lên hàng đầu.<br><br>Thức ăn cho chó Taste Of The Wild cao cấp và hoàn chỉnh. Không sử dụng ngũ cốc dựa trên chế độ ăn của tổ tiên của chó mèo. Hàm lượng chất đạm được lấy từ thịt động vật và cá. Kết hợp với những loại rau củ quả, trái cây tự nhiên. Công thức này được nghiên cứu phù hợp với tất cả các giống chó khác nhau. Đặc biệt, thích hợp với cả chó đang mang thai hoặc trong thời kỳ đang cho con bú.<br><br>Thức ăn cho chó Taste Of The Wild có sự đa dạng về khẩu vị rõ rệt. Mỗi giống chó lại yêu thích những khẩu vị khác nhau. Chính vì vậy, chủ thú cưng có nhiều sự lựa chọn với các loại thức ăn cho chó Taste Of The Wild.<br><br>Dưới đây là một số lựa chọn dành cho bạn: Thức ăn cho chó vị cá hồi xông khói, thịt cừu, thịt nai nướng, bò rừng, heo rừng: Pacific Stream Puppy Recipe, Pine Forest Canine Recipe, Sierra Mountain Canine Formula, High Prairie Canine Formula... Mỗi một loại đều có chứa một loại protein cần thiết cho sự phát triển của thú cưng.</p>', '16-06-24'),
(93, 6, 'Thức Ăn Hạt Cho Chó Con Poodle Royal Canin Poodle Puppy', 67, '182000', '182000', '14', 'Thức ăn hạt', 'Còn hàng', '1718509349_thuc-an-cho-cho-con-royal-canin-poodle-puppy.webp', '<p><strong>c Ăn Hạt Cho Chó Con Poodle Royal Canin Poodle Puppy</strong></p><ul><li>Thương hiệu: Royal Canin</li><li>Phù hợp cho: Chó con Poodle (2 - 10 tháng tuổi)</li><li>Royal Canin Poodle Puppy là loại thức ăn cho chó dinh dưỡng được thiết kế dành riêng cho chó con Poodle của bạn. Thức ăn Poodle này tùy chỉnh được thiết kế cho mõm và hàm thẳng của Poodle, giúp chúng dễ dàng nhặt và nhai. Hạt Royal Canin chứa một hỗn hợp các chất chống oxy hóa độc quyền và vitamin E hỗ trợ hệ thống miễn dịch đang phát triển của Poodle puppy và giữ cho cơ thể chó phát triển khỏe mạnh.&nbsp;Royal Canin Poodle còn hỗ trợ sức khỏe của da và lông cũng như chăm sóc hệ tiêu hóa trong giai đoạn chó con của Poodle. Khi Poodle của bạn hơn 10 tháng tuổi, hãy chuyển sang các loại hạt cho Poodle khác của Royal Canin để có đầy đủ dinh dưỡng cho những năm trường thành tiếp theo.</li></ul><p><strong>Lợi ích:</strong></p><ul><li>GIÚP CHÓ PHÁT TRIỂN KHỎE MẠNH: Một phức hợp chất chống oxy hóa độc quyền, bao gồm vitamin E, giúp hỗ trợ sự phát triển của hệ thống miễn dịch ở chó con.</li><li>TỐT CHO DA VÀ LÔNG:&nbsp; EPA và DHA từ dầu cá giúp thúc đẩy làn da và bộ lông khỏe mạnh giúp nuôi dưỡng bộ lông xoăn đang phát triển của chó con</li><li>HỖ TRỢ TIÊU HÓA: Hỗ trợ tiêu hóa khỏe mạnh ở chó con và thúc đẩy chất lượng phân tối ưu với protein và prebiotic chất lượng cao.</li><li>HÌNH DÁNG KIBBLE CHUYÊN DỤNG: Thiết kế kibble độc đáo giúp Poodle dễ dàng nhặt và nhai thức ăn.&nbsp;</li></ul>', '16-06-24'),
(94, 6, 'Hạt Ganador Adult Cho Chó Trưởng Thành Vị Gà Quay', 56, '20000', '20000', '', 'Thức ăn hạt', 'Còn hàng', '1718509411_ganadorchickern.webp', '<p>THỨC ĂN CHO CHÓ Ganador adult Dạng hạt Vị gà nướng</p><p><br>Dành cho tất cả các giống Chó trưởng thành từ 12 tháng tuổi trở lên<br><br>Ganador là nhãn hiệu thức ăn cho chó cưng được sản xuất bởi Tập đoàn Neovia với gần 60 năm kinh nghiệm trong lĩnh vực dinh dưỡng và chăm sóc thú cưng.</p><p><br>Công thức sản phẩm là tâm huyết nghiên cứu của các chuyên gia dinh dưỡng vật nuôi hàng đầu tại Pháp với mong muốn cung cấp cho chó cưng hàm lượng dinh dưỡng cân bằng và đầy đủ nhất, giúp chúng có một cuộc sống thật khỏe mạnh và năng động.<br>Mỗi sản phẩm của chúng tôi được sản xuất từ những nguyên liệu chất lượng cao như thịt thật và gạo/cơm, tuân thủ nghiêm ngặt hệ thống tiêu chuẩn quốc tế của Ngành sản xuất thức ăn Chăn nuôi Hoa Kỳ (AAFCO).</p><p><br>Sản phẩm Ganador đảm bảo chó cưng được nuôi dưỡng đầy đủ cả về thể chất lẫn tinh thần để chúng luôn có một cuộc sống mạnh khỏe, dài lâu và hạnh phúc bên bạn.<br><br>Thức ăn cho chó trưởng thành Ganador vị gà nướng Adult Roasted Chicken giúp tăng sức đề kháng, chứa các thành phần hỗ trợ tiêu hóa. Bổ sung Omega 3 và 6 cho làn da và bộ lông khỏe mạnh. Công thức cân bằng protein và khoáng chất, giúp xương và cơ chắc khỏe.<br><br>Thành phần: ngũ cốc nguyên hạt (lúa mì, ngô, gạo), bột gia cầm, bã nành, cám lúa mì, mỡ gia cầm, khoáng chất (Sắt, Đồng, Mangan, Kẽm, lốt, Selen), Vitamin (A, D3, K3, B1, B2, B6, B12, PP, E (Tocopherol), Canxi D-Pantothenate, Biotin, Axit Folic, Choline), Dicalcium Phosphate, Canxi Catbonate, Natri Clorua, chất bảo quản, chất chống oxy hóa, màu thực phẩm, chất làm ngon miệng, hương vị thịt gà nướng, chiết xuất Yucca Schidigera.<br><br>* Thương hiệu: Thương hiệu từ Pháp<br>* Xuất xứ sản phẩm: Việt Nam<br>* Bảo quản: Nơi khô thoáng, tránh ánh nắng trực tiếp.<br>* Hướng dẫn sử dụng: Phù hợp cho tất cả các giống Chó trưởng thành từ 12 tháng trở lên</p>', '16-06-24'),
(95, 6, 'Hạt Mềm Cho Chó Trưởng Thành Zenith Adult', 34, '54000', '54000', '4', 'Thức ăn hạt', 'Còn hàng', '1718509497_hat-mem-zenith-adult-cho-cho-truong-thanh-paddy-2.webp', '<p><strong>Hạt Mềm Zenith Adult Small Breed Cho Chó Trưởng Thành Giống Nhỏ</strong></p><p>Thuộc dòng sản phẩm thức ăn hạt mềm cao cấp cho thú cưng. Thức ăn hạt mềm chó lớn Zenith Adult được chế biến từ thịt cừu tươi, thịt nạc gà rút xương, gạo lứt, yến mạch và dầu cá hồi. Với các thành phần tươi sạch, giàu dinh dưỡng, hạt mềm Zenith Adult cung cấp độ ẩm cao và lượng muối thấp, thơm ngon, dễ nhai, dễ tiêu hóa và tốt cho sức khỏe chó trưởng thành.</p><ul><li>Dành cho cho chó giống nhỏ trên 1 tuổi</li><li>Giúp xương khớp chắc khoẻ, phòng tránh bệnh loãng xương Không chứa ngũ cốc, không gây dị ứng</li><li>Được chế biến từ thịt cừu, bột gà, gạo lứt, yến mạch</li><li>Giúp giảm bớt mùi phân và mùi cơ thể</li><li>Giúp tăng cường sức đề kháng, phòng tránh bệnh tật</li><li>Duy trì cơ thể cân đối, đốt cháy lượng mỡ dư thừa, cho các chú chó vóc dáng đẹp</li></ul>', '16-06-24'),
(96, 6, 'Thức Ăn Cho Chó Trưởng Thành Pedigree Vị Bò Rau Củ', 120, '115000', '115000', '15', 'Thức ăn hạt', 'Còn hàng', '1718509577_hat-pedigree-cho-truong-thanh-vi-bo-rau-cu-paddy-1.webp', '<p><strong>Thức Ăn Cho Chó Trưởng Thành Pedigree Vị Bò Rau Củ</strong></p><p>- Cún cần lượng protein gấp 3 lần con người để tăng trưởng. Vì thế, cún cần được bổ sung đầy đủ các chất dinh dưỡng để duy trì thể trạng khỏe mạnh và vóc dáng cân đối.<br>- Sản phẩm thức ăn hạt khô Pedigree vị bò sẽ cung cấp cho cún những lợi ích sau:<br>- Vị thơm ngon với vị bò khoái khẩu giúp cún ăn ngon miệng.<br>- Cung cấp đủ vitamin và khoáng chất, giúp tăng cường hệ thống miễn dịch của cún, giúp cún cưng phát triển khỏe mạnh,<br>- Cung cấp Omega 6 và Kẽm, được khoa học chứng sẽ mang đến bộ lông bóng mượt cho cún trong vòng 6 tuần .<br>- Sản phẩm chứa nhiều canxi và phốt pho, giúp cho răng và xương cún chắc khỏe<br>- Kiểm soát được khẩu phần ăn hàng ngày, tránh việc quá nhiều để cún bỏ lại thức ăn thừa.<br>- Nhanh chóng, tiện lợi, không tốn nhiều thời gian chuẩn bị,<br>* Thành Phần:<br>- Ngũ cốc, protein, Đậu tương nguyên dầu, chất béo, chất xơ<br><br>* Bảo quản: Nơi khô ráo, thoáng mát, tránh ánh nắng trực tiếp<br>* Hướng dẫn sử dụng: Phù hợp với Cún trưởng thành<br>* Hsd: 12 tháng kể từ ngày sản xuất</p>', '16-06-24');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id_comment`);

--
-- Chỉ mục cho bảng `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`id_danhmuc`);

--
-- Chỉ mục cho bảng `dichvu`
--
ALTER TABLE `dichvu`
  ADD PRIMARY KEY (`id_dichvu`);

--
-- Chỉ mục cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`idNV`);

--
-- Chỉ mục cho bảng `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`idPro`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `booking`
--
ALTER TABLE `booking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `comment`
--
ALTER TABLE `comment`
  MODIFY `id_comment` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id_danhmuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `dichvu`
--
ALTER TABLE `dichvu`
  MODIFY `id_dichvu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  MODIFY `idNV` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `orderdetails`
--
ALTER TABLE `orderdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `idPro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
