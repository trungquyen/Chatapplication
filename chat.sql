-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 30, 2022 lúc 05:03 AM
-- Phiên bản máy phục vụ: 10.4.22-MariaDB
-- Phiên bản PHP: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `chat`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `messages`
--

CREATE TABLE `messages` (
  `msg_id` int(11) NOT NULL,
  `incoming_msg_id` int(255) NOT NULL,
  `outgoing_msg_id` int(255) NOT NULL,
  `msg` varchar(10000) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `messages`
--

INSERT INTO `messages` (`msg_id`, `incoming_msg_id`, `outgoing_msg_id`, `msg`) VALUES
(1, 1259020992, 442944418, 'h'),
(2, 1259020992, 442944418, 'h'),
(3, 1259020992, 442944418, 'shfdshf'),
(4, 1259020992, 442944418, 'hi nice to meet you'),
(5, 1259020992, 442944418, 'hello my friend'),
(6, 442944418, 1259020992, 'hello nice to see you'),
(7, 442944418, 1259020992, 'h'),
(8, 1259020992, 442944418, 'h'),
(9, 442944418, 1259020992, 'he'),
(10, 1259020992, 442944418, 'hello'),
(11, 442944418, 1259020992, 'see you'),
(12, 442944418, 1259020992, 'helllllllllllllllllllllllllllllllllll'),
(13, 1259020992, 1259020992, 'dfjksgkjfndkjgnfdjksngjknfdksjgnijrnjigndfkmngijdnfjgnmknfrjinerjkgndfngui9hrdfgn jkdfngjiherijgn dfjknguerngjdnfjignueirngjidnfjigneru'),
(14, 1096085407, 1259020992, 'dsfewfnsdjfndijsnfgehfgdnsignringjndfjignuirneijgnfdij'),
(15, 442944418, 1259020992, 'fgsdrdfgrsgfgdfgsregfdsgfggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggg'),
(16, 1259020992, 442944418, 'heeel'),
(17, 1259020992, 442944418, 'jjj'),
(18, 1259020992, 442944418, 'hl');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `unique_id` int(200) NOT NULL,
  `fname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lname` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`user_id`, `unique_id`, `fname`, `lname`, `email`, `password`, `img`, `status`) VALUES
(1, 1259020992, 'quyen', 'vu', 'vutrungkhoang@gmail.com', '1549821564', '1659866069avata.jpg', 'Active now'),
(2, 1096085407, 'ha', 'vu', 'vt@gmail.com', '15416', '1659866111avata.jpg', 'Offline now'),
(3, 442944418, 'hai', 'san', 'hai@gmail.com', '123', '1659883991pc2.png', 'Active now');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`msg_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `messages`
--
ALTER TABLE `messages`
  MODIFY `msg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
