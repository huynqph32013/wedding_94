-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 20, 2024 lúc 11:44 AM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `marry`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL COMMENT 'id danh mục',
  `name_categories` varchar(255) NOT NULL COMMENT 'tên danh mục'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL COMMENT 'id bình luận',
  `content_comment` text NOT NULL COMMENT 'nội dung bình luận',
  `date_comment` date NOT NULL COMMENT 'ngày bình luận',
  `id_product` int(11) NOT NULL COMMENT 'id sản phẩm được bình luận',
  `id_user` int(11) NOT NULL COMMENT 'id khách hàng đã bình luận'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `image`
--

CREATE TABLE `image` (
  `id` int(11) NOT NULL COMMENT 'id ảnh',
  `name_image` varchar(255) NOT NULL COMMENT 'Tên ảnh'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `notification`
--

CREATE TABLE `notification` (
  `id` int(11) NOT NULL COMMENT 'id liên hệ',
  `name_customer` varchar(50) NOT NULL COMMENT 'tên khách hàng',
  `phone_customer` varchar(11) NOT NULL COMMENT 'sdt khác hàng',
  `email_customer` varchar(255) NOT NULL COMMENT 'email khách hàng',
  `content_contact` text NOT NULL COMMENT 'nội dung liên hệ',
  `date_contact` date NOT NULL COMMENT 'ngày liên hệ',
  `id_user` int(11) NOT NULL COMMENT 'id khách hàng'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL COMMENT 'id bài post',
  `title` varchar(255) NOT NULL COMMENT 'tiêu đề',
  `content` text NOT NULL COMMENT 'nội dung',
  `image_post` varchar(100) DEFAULT NULL COMMENT 'ảnh',
  `id_user` int(11) NOT NULL COMMENT 'người post'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL COMMENT 'id tự tăng',
  `product_code` varchar(20) NOT NULL COMMENT 'mã đồ cưới',
  `name` varchar(255) NOT NULL COMMENT 'tên đồ cưới',
  `id_categories` int(11) NOT NULL COMMENT 'id danh mục',
  `id_image` int(11) NOT NULL COMMENT 'id image',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'ngày tạo product'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rented`
--

CREATE TABLE `rented` (
  `id` int(11) NOT NULL COMMENT 'id rented',
  `date_start` date NOT NULL COMMENT 'ngày bắt đầu thuê',
  `date_end` date NOT NULL COMMENT 'ngày kết thúc thuê',
  `sum_price` float NOT NULL COMMENT 'Tổng tiền thuê',
  `id_product` int(11) NOT NULL COMMENT 'id sản phẩm đang thuê',
  `id_user` int(11) NOT NULL COMMENT 'id khách hàng đang thuê'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL COMMENT 'id quyền',
  `role_name` varchar(255) NOT NULL COMMENT 'tên quyền'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `role`
--

INSERT INTO `role` (`id`, `role_name`) VALUES
(1, 'Nhân viên'),
(2, 'Quản lý'),
(3, 'Người dùng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL COMMENT 'email đăng nhập',
  `pass_word` varchar(255) NOT NULL COMMENT 'mật khẩu',
  `phone` varchar(10) NOT NULL COMMENT 'số điện thoại',
  `name` varchar(255) NOT NULL COMMENT 'tên người dùng',
  `address` varchar(255) NOT NULL COMMENT 'địa chỉ',
  `status` int(11) NOT NULL COMMENT 'Trạng thái',
  `id_role` int(11) NOT NULL COMMENT 'quyền',
  `id_image` int(11) DEFAULT NULL COMMENT 'image'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `email`, `pass_word`, `phone`, `name`, `address`, `status`, `id_role`, `id_image`) VALUES
(1, 'vietanh2712003@gmail.com', 'vietanh27', '0334553876', 'Lê Việt Anh', 'Phủ lý, Hà Nam', 0, 1, 0),
(2, 'khanhtrapboiz123@gmail.com', 'khanh123', '098762862', 'Lê Văn Khánh', 'Bắc từ liêm hà nội', 0, 3, NULL),
(3, 'anhlvph30859@fpt.edu', '123', '09282628', 'ÁO SƠ MI', 'Hà Nội', 0, 0, NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `rented`
--
ALTER TABLE `rented`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id danh mục';

--
-- AUTO_INCREMENT cho bảng `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id bình luận';

--
-- AUTO_INCREMENT cho bảng `image`
--
ALTER TABLE `image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id ảnh';

--
-- AUTO_INCREMENT cho bảng `notification`
--
ALTER TABLE `notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id liên hệ';

--
-- AUTO_INCREMENT cho bảng `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id bài post';

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id tự tăng';

--
-- AUTO_INCREMENT cho bảng `rented`
--
ALTER TABLE `rented`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id rented';

--
-- AUTO_INCREMENT cho bảng `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id quyền', AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
