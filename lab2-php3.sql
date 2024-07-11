-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th7 11, 2024 lúc 05:11 AM
-- Phiên bản máy phục vụ: 8.0.36
-- Phiên bản PHP: 8.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `lab2-php3`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaitin`
--

CREATE TABLE `loaitin` (
  `id` int NOT NULL,
  `name` varchar(50) NOT NULL,
  `anHien` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `loaitin`
--

INSERT INTO `loaitin` (`id`, `name`, `anHien`) VALUES
(1, 'Sống đẹp', 1),
(2, 'Du lịch', 1),
(3, 'Xã hội', 1),
(4, 'Sức khỏe', 1),
(5, 'Khoa học', 1),
(6, 'Đời sống', 0),
(9, 'Pháp luật', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tin`
--

CREATE TABLE `tin` (
  `id` int NOT NULL,
  `tieuDe` varchar(255) NOT NULL,
  `xem` int NOT NULL,
  `tomTat` varchar(255) DEFAULT NULL,
  `noiDung` text,
  `ngayDang` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `idLT` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `tin`
--

INSERT INTO `tin` (`id`, `tieuDe`, `xem`, `tomTat`, `noiDung`, `ngayDang`, `idLT`) VALUES
(1, 'Tin tức về thời tiết', 10, 'Thời tiết TP HCM và Nam Bộ ngày 9-7: Ngày nắng, chiều tối mưa dông', 'Trung tâm Dự báo Khí tượng thủy văn quốc gia cảnh báo người dân cần đề phòng trong mưa dông có khả năng xảy ra lốc, sét, mưa đá và gió giật mạnh... mưa với cường độ lớn trong một thời gian ngắn gây ngập úng tại các khu đô thị.\nThời tiết TP HCM và Nam Bộ trong hôm nay (9-7) nhiều mây, ngày nắng, về chiều gió nhẹ.\n\nTrên khu vực Nam Bộ, chiều tối và tối có mưa rào và dông rải rác, cục bộ có nơi mưa to; đêm có mưa rào và dông vài nơi. Nhiệt độ thấp nhất từ 24-27 độ C, nhiệt độ cao nhất từ 31-34 độ C, có nơi trên 34 độ C.\n\nCòn ở TP HCM, mây dông phát triển về chiều tối có mưa rào và dông rải rác, có nơi mưa vừa, mưa to. Nhiệt độ cao nhất dao động từ 31-33 độ C và chỉ số UV tại các quận, huyện hôm nay đạt ngưỡng nguy cơ gây hại cao (5).', '2024-06-28 11:20:08', 1),
(3, 'Chiến lược Marketing cho sản phẩm mới như thế nào?', 3, 'Cơ hội nào cho sản phẩm mới “sinh sau đẻ muộn”?', 'Rất nhiều chuyên gia Marketing cho rằng, một trong những tình thế cạnh tranh bất lợi nhất đối với hầu hết các doanh nghiệp là tung ra thị trường một sản phẩm hay một dịch vụ muộn màng, trong khi những đối thủ cạnh tranh khác đã nhanh chân hơn trong việc chiếm lĩnh thị trường. Và nhiều người tin rằng, với vị thế của một sản phẩm mới “sinh sau đẻ muộn”, doanh nghiệp khó có thể để len chân vào cuộc cạnh tranh khốc liệt này.', '2024-06-28 11:00:08', 1),
(7, 'Du lịch và Khám phá', 7, 'Những điểm đến du lịch hấp dẫn', 'Nội dung chi tiết về những điểm đến du lịch hấp dẫn trên thế giới, bao gồm các danh thắng nổi tiếng, các hoạt động du lịch và những trải nghiệm độc đáo.', '2024-06-28 08:30:00', 9),
(13, 'Tin tức về thời tiết', 10, 'Thời tiết TP HCM và Nam Bộ ngày 9-7: Ngày nắng, chiều tối và đêm có mưa rào và dông vài nơi.', 'Trung tâm Dự báo Khí tượng thủy văn quốc gia cảnh báo mưa lớn có thể gây ngập úng cục bộ tại các khu vực trũng, thấp.', '2024-06-28 11:20:08', 1),
(22, 'Chiến lược Marketing cho sản phẩm mới như thế nào?', 3, 'Cơ hội nào cho sản phẩm mới \"sinh sau đẻ muộn\"?', 'Rất nhiều chuyên gia Marketing cho rằng, một trong những yếu tố quyết định sự thành bại của sản phẩm mới là chiến lược Marketing hợp lý.', '2024-06-28 11:00:08', 3),
(26, 'Kinh tế và Tài chính', 12, 'Tình hình kinh tế toàn cầu', 'Nội dung chi tiết về tình hình kinh tế và tài chính toàn cầu, bao gồm các xu hướng kinh tế, thị trường tài chính và các chính sách kinh tế của các quốc gia.', '2024-06-28 09:00:00', 4),
(33, 'Nghệ thuật và Sáng tạo', 5, 'Xu hướng nghệ thuật hiện nay', 'Nội dung chi tiết về các xu hướng nghệ thuật và sáng tạo hiện nay bao gồm các trào lưu mới, những nghệ sĩ nổi bật và các tác phẩm được đánh giá cao.', '2024-06-28 10:30:00', 7),
(34, 'Công nghệ Tương lai', 8, 'Phát minh và công nghệ tương lai', 'Nội dung chi tiết về các phát minh và công nghệ tương lai đang được nghiên cứu và phát triển, bao gồm trí tuệ nhân tạo, công nghệ sinh học và năng lượng tái tạo.', '2024-06-28 10:00:00', 2),
(35, 'Lịch sử và Văn hóa', 4, 'Những sự kiện lịch sử quan trọng', 'Nội dung chi tiết về những sự kiện lịch sử và văn hóa quan trọng, từ các cuộc chiến tranh, các nền văn minh cổ đại đến các phong trào văn hóa hiện đại.', '2024-06-28 09:30:00', 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `loaitin`
--
ALTER TABLE `loaitin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tin`
--
ALTER TABLE `tin`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `loaitin`
--
ALTER TABLE `loaitin`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `tin`
--
ALTER TABLE `tin`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
