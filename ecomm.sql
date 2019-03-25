-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th3 25, 2019 lúc 02:37 PM
-- Phiên bản máy phục vụ: 10.1.38-MariaDB
-- Phiên bản PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `ecomm`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `product_id`, `quantity`) VALUES
(10, 16, 35, 2),
(11, 16, 38, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `cat_slug` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `name`, `cat_slug`) VALUES
(1, 'TOYOTA', 'laptops'),
(2, 'KIA', 'desktop-pc'),
(3, 'BMW', 'tablets'),
(4, 'LEXUS', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `details`
--

CREATE TABLE `details` (
  `id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `details`
--

INSERT INTO `details` (`id`, `sales_id`, `product_id`, `quantity`) VALUES
(14, 9, 11, 2),
(15, 9, 13, 5),
(16, 9, 3, 2),
(17, 9, 1, 3),
(18, 10, 13, 3),
(19, 10, 2, 4),
(20, 10, 19, 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `slug` varchar(200) NOT NULL,
  `price` double NOT NULL,
  `photo` varchar(200) NOT NULL,
  `date_view` date NOT NULL,
  `counter` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `description`, `slug`, `price`, `photo`, `date_view`, `counter`) VALUES
(33, 2, 'Kia Morning', '<p>Kia Morning l&agrave; máº«u xe hatcback 5 chá»—, cá»¡ nhá» cá»§a Kia kh&aacute; ná»•i tiáº¿ng táº¡i Viá»‡t nam vá»›i k&iacute;ch thÆ°á»›c nhá» v&agrave; gi&aacute; th&agrave;nh ráº». L&agrave; máº«u xe Ä‘áº§u ti&ecirc;n do Kia TrÆ°á»ng Háº£i láº¯p r&aacute;p, ra máº¯t tá»« nÄƒm 2008, máº«u xe n&agrave;y nhanh ch&oacute;ng Ä‘Æ°á»£c ngÆ°á»i ti&ecirc;u d&ugrave;ng Viá»‡t nam Æ°a chuá»™ng.</p>\r\n', 'kia-morning', 288000, 'kia-morning.jpg', '2019-03-25', 1),
(34, 2, ' Kia Rio', '<p>Kia Rio c&oacute; 2 phi&ecirc;n báº£n sedan v&agrave; hatchback váº«n nháº­p kháº©u nguy&ecirc;n chiáº¿c tá»« H&agrave;n Quá»‘c. Sá»­ dá»¥ng Ä‘á»™ng cÆ¡ 1.4l, há»™p sá»‘ tá»± Ä‘á»™ng 4 cáº¥p. Xe kh&aacute; tiá»‡n nghi vá»›i Ä‘á» th&ocirc;ng minh, cá»­a sá»• trá»i panaramic, tay l&aacute;i trá»£ lá»±c Ä‘iá»‡n t&iacute;ch há»£p c&aacute;c n&uacute;t chá»©c nÄƒng.</p>\r\n', 'kia-rio', 51000, 'kia-rio.jpg', '2019-03-25', 1),
(35, 2, 'Kia Cerato (K3) 2019', '<p>Phi&ecirc;n báº£n má»›i cá»§a KIA K3 Ä‘Æ°á»£c láº¥y t&ecirc;n l&agrave; CERATO. Sá»­ dá»¥ng 2 t&ugrave;y chá»n Ä‘á»™ng cÆ¡ l&agrave; 1.6l v&agrave; 2.0l cho c&ocirc;ng suáº¥t 128 v&agrave; 159 m&atilde; lá»±c, há»™p sá»‘ s&agrave;n hoáº·c tá»± Ä‘á»™ng 6 cáº¥p. Kháº£ nÄƒng váº­n h&agrave;nh th&uacute; vá»‹ vá»›i c&aacute;c cháº¿ Ä‘á»™ l&aacute;i Eco/Normal/Sport, Cruiser Control. Ná»™i tháº¥t Ä‘áº§y Ä‘á»§ vá»›i gháº¿ da, gháº¿ l&aacute;i chá»‰nh Ä‘iá»‡n 10 hÆ°á»›ng, nhá»› vá»‹ tr&iacute;, Ä‘áº§u DVD, camera, Ä‘iá»u h&ograve;a tá»± Ä‘á»™ng 2 v&ugrave;ng, cá»­a sá»• trá»i. Há»‡ thá»‘ng an to&agrave;n c&oacute; phanh ABS, BA, c&acirc;n báº±ng Ä‘iá»‡n tá»« v&agrave; á»•n Ä‘á»‹nh th&acirc;n xe (báº£n 2.0), 6 t&uacute;i kh&iacute; (báº£n 2.0), khá»Ÿi h&agrave;nh ngang dá»‘c HAC...Cerato hiá»‡n Ä‘ang b&aacute;n ráº¥t cháº¡y, lu&ocirc;n trong top 10 xe b&aacute;n cháº¡y nháº¥t táº¡i Viá»‡t Nam.</p>\r\n', 'kia-cerato-k3-2019', 300000, 'kia-cerato-k3-2019.jpg', '2019-03-25', 1),
(36, 2, 'Kia Rondo', '<p>Máº«u xe 7 chá»— ngá»“i má»›i phong c&aacute;ch ch&acirc;u &Acirc;u cá»§a Kia c&oacute; kh&aacute; nhiá»u option sang trá»ng nhÆ° Ä‘&egrave;n Xenon, LED ban ng&agrave;y, m&agrave;n h&igrave;nh DVD c&oacute; GPS, Ä‘iá»u h&ograve;a 2 chiá»u tá»± Ä‘á»™ng. Xe sá»­ dá»¥ng Ä‘á»™ng cÆ¡ 1.7 v&agrave; 2.0, há»™p sá»‘ tá»± Ä‘á»™ng 6 cáº¥p. Há»‡ thá»‘ng an to&agrave;n vá»›i 2 t&uacute;i kh&iacute; (báº£n 2.0 l&agrave; 6), phanh ABS, EBD (báº£n 2.0 c&oacute; th&ecirc;m BA v&agrave; c&acirc;n báº±ng Ä‘iá»‡n tá»­ ESP, khá»Ÿi h&agrave;nh ngang dá»‘c HAC, á»•n Ä‘á»‹nh th&acirc;n xe VSM)</p>\r\n', 'kia-rondo', 100000, 'kia-rondo.jpg', '0000-00-00', 0),
(37, 2, 'Kia Quoris (K9)', '<p>Ch&iacute;nh thá»©c Ä‘Æ°á»£c giá»›i thiá»‡u táº¡i triá»ƒn l&atilde;m &ocirc; t&ocirc; Viá»‡t nam 10/2016, máº«u sedan háº¡ng sang cá»§a Kia mang tham vá»ng cáº¡nh tranh vá»›i c&aacute;c t&ecirc;n tuá»•i sá»«ng sá» nhÆ° BMW 7-Series, Audi A8, Mercedes S-class hay Lexus LS. Tuy váº­y vá»›i thÆ°Æ¡ng hiá»‡u Kia c&ugrave;ng má»©c gi&aacute; kh&aacute; cao khiáº¿n cho Kia Quoris ráº¥t kh&oacute; &quot;c&oacute; cá»­a&quot; táº¡i Viá»‡t nam.</p>\r\n', 'kia-quoris-k9', 28800, 'kia-quoris-k9.jpg', '0000-00-00', 0),
(38, 3, 'BMW I8', '<p>BMW i8, máº«u xe Ä‘áº§y áº¥n tÆ°á»£ng cá»§a BMW Ä‘Æ°á»£c ra máº¯t v&agrave;o nÄƒm 2013. Xe sá»­ dá»¥ng Ä‘á»™ng cÆ¡ 1.5l Hybrid sá»©c máº¡nh tá»•ng há»£p 356Hp, há»™p sá»‘ tá»± Ä‘á»™ng 6 cáº¥p. Vá»›i thiáº¿t káº¿ Ä‘Æ°á»£c coi l&agrave; &quot;Ä‘i trÆ°á»›c thá»i Ä‘áº¡i&quot;, BMW i8 ráº¥t Ä‘Æ°á»£c c&aacute;c Ä‘áº¡i gia tráº» Æ°a th&iacute;ch tr&ecirc;n tháº¿ giá»›i v&agrave; cáº£ Viá»‡t nam. Äá»‘i thá»§ cá»§a BMW i8 l&agrave; Audi R8, Aston Martin Vantage, Acura NSX, Porsche 911, Nissan GTR, McLaren 570s</p>\r\n', 'bmw-i8', 7000000, 'bmw-i8.jpg', '2019-03-25', 2),
(39, 3, 'BMW M SERIES', '<p>BMW Ä‘&atilde; Ä‘&aacute;nh dáº¥u sá»± kiá»‡n gia nháº­p thá»‹ pháº§n xe háº¡ng sang hiá»‡u nÄƒng cao báº±ng viá»‡c nháº­p vá» chiáº¿c BMW M6 Gran Coupe. Ä&acirc;y l&agrave; phi&ecirc;n báº£n thá»ƒ thao, vá»›i nhiá»u n&acirc;ng cáº¥p ch&uacute; trá»ng Ä‘áº¿n t&iacute;nh nÄƒng hoáº¡t Ä‘á»™ng cá»§a d&ograve;ng xe &quot;coupe 4 cá»­a&quot; 6-series. Thiáº¿t káº¿ ngoáº¡i tháº¥t thá»ƒ thao b&oacute;ng báº©y, m&aacute;i xe Ä‘Æ°á»£c l&agrave;m báº±ng váº­t liá»‡u cacbon gia cá»‘ nhá»±a CFRP gi&uacute;p giáº£m khá»‘i lÆ°á»£ng; há»‡ thá»‘ng Ä‘&egrave;n pha má»›i sá»­ dá»¥ng ho&agrave;n to&agrave;n c&ocirc;ng nghá»‡ LED cho Ä‘á»™ chiáº¿u s&aacute;ng tá»‘t hÆ¡n tá»« cháº¿ Ä‘á»™ cá»‘t Ä‘áº¿n pha, Ä‘&egrave;n chiáº¿u s&aacute;ng ban ng&agrave;y DRL hay Ä‘áº¿n xi nhan tr&aacute;i pháº£i. B&ecirc;n cáº¡nh Ä‘&oacute;, BMW cÅ©ng t&iacute;ch há»£p nhiá»u c&ocirc;ng nghá»‡ th&ocirc;ng minh kh&aacute;c tr&ecirc;n chiáº¿c Ä‘&egrave;n pha n&agrave;y nhÆ°: chiáº¿u s&aacute;ng theo g&oacute;c Ä‘&aacute;nh l&aacute;i (Adaptive turning v&agrave; Cornering Lights), báº­t táº¯t cháº¿ Ä‘á»™ pha tá»± Ä‘á»™ng (Automatic high beams)</p>\r\n', 'bmw-m-series', 51000, 'bmw-m-series.jpg', '0000-00-00', 0),
(40, 3, 'BMW SERIES 1- BMW 118i', '<p>BMW 118i l&agrave; d&ograve;ng xe hathback Ä‘Æ°á»£c nh&agrave; ph&acirc;n phá»‘i cÅ© l&agrave; Euro Auto giá»›i thiá»‡u táº¡i Viá»‡t Nam tá»« cuá»‘i nÄƒm 2015. Chiáº¿c xe Ä‘Æ°á»£c nháº­p kháº©u tá»« Cá»™ng H&ograve;a Li&ecirc;n Bang Äá»©c nhanh ch&oacute;ng thu h&uacute;t kh&aacute;ch h&agrave;ng bá»Ÿi kiá»ƒu d&aacute;ng Ä‘áº¹p, c&ocirc;ng nghá»‡ ti&ecirc;n tiáº¿n, tiáº¿t kiá»‡m nhi&ecirc;n liá»‡u hiá»‡u quáº£ báº¥t ngá», cáº£m gi&aacute;c l&aacute;i pháº¥n kh&iacute;ch vá»›i 3 cháº¿ Ä‘á»™ ri&ecirc;ng biá»‡t, kh&ocirc;ng gian ná»™i tháº¥t thiáº¿t káº¿ tinh táº¿ v&agrave; rá»™ng r&atilde;i, khoang h&agrave;nh l&yacute; thuáº­n tiá»‡n v&agrave; Ä‘a dá»¥ng...</p>\r\n\r\n<p>BMW 118i l&agrave; Ä‘á»‘i thá»§ xá»©ng táº§m cá»§a Mercedes A200 táº¡i Viá»‡t Nam.</p>\r\n', 'bmw-series-1-bmw-118i', 55900, 'bmw-series-1-bmw-118i.jpg', '0000-00-00', 0),
(41, 3, 'BMW X SERIES', '<p>BMW X SERIES Ä‘ang b&aacute;n táº¡i Viá»‡t Nam bao gá»“m 5 d&ograve;ng X1, X2, X3, X4, X5, X6, X7. Sang nÄƒm 2019, BMW X3/X4 All New ho&agrave;n to&agrave;n má»›i Ä‘&atilde; ch&iacute;nh thá»©c Ä‘Æ°á»£c ph&acirc;n phá»‘i táº¡i Viá»‡t Nam.</p>\r\n\r\n<p>Äá»‘i thá»§ cá»§a BMW X series táº¡i Viá»‡t Nam l&agrave; Audi Q3, 5, 7, Mercedes GLC, GLE - Class, Lexus NX/RX ...</p>\r\n', 'bmw-x-series', 559000, 'bmw-x-series.jpg', '0000-00-00', 0),
(42, 3, 'BMW SERIES 2 - BMW 218i GRAN TOURER', '<p>Ra máº¯t v&agrave;o th&aacute;ng 04/2016, máº«u xe gia Ä‘&igrave;nh MPV Ä‘áº§u ti&ecirc;n cá»§a thÆ°Æ¡ng hiá»‡u xe sang BMW táº¡i Viá»‡t Nam l&agrave; 218i Gran Tourer Ä‘&atilde; ch&iacute;nh thá»©c chá»‘t gi&aacute; b&aacute;n g&acirc;y báº¥t ngá» khi Ä‘Æ°á»£c cho l&agrave; &ldquo;má»m&rdquo; hÆ¡n so vá»›i c&aacute;c thÆ°Æ¡ng hiá»‡u Kia, Honda d&ugrave; kh&ocirc;ng c&ugrave;ng háº¡ng. Xe c&oacute; dung t&iacute;ch 1.5L, sáº£n sinh c&ocirc;ng suáº¥t tá»‘i Ä‘a 136 m&atilde; lá»±c v&agrave; m&ocirc;-men xoáº¯n cá»±c Ä‘áº¡i 220 Nm. Xe chá»‰ máº¥t 9,8 gi&acirc;y Ä‘á»ƒ Ä‘áº¡t Ä‘Æ°á»£c ngÆ°á»¡ng 100 km/h vá»›i váº­n tá»‘c tá»‘i Ä‘a 202 km/h. Xe c&oacute; 3 cháº¿ Ä‘á»™ l&aacute;i kh&aacute;c nhau nhÆ° Eco Pro, Comfort v&agrave; Sport vá»›i má»©c ti&ecirc;u thá»¥ nhi&ecirc;n liá»‡u 5,5 l&iacute;t/ 100km</p>\r\n', 'bmw-series-2-bmw-218i-gran-tourer', 300000, 'bmw-series-2-bmw-218i-gran-tourer.jpg', '0000-00-00', 0),
(43, 1, 'Toyota Vios', '<p>Toyota Viá»‡t Nam th&ecirc;m má»™t phi&ecirc;n báº£n ho&agrave;n to&agrave;n má»›i vá»›i Ä‘á»™ng cÆ¡ tá»« 1.5L VVT &ndash; i th&agrave;nh Ä‘á»™ng cÆ¡ 1.5L Dual VVT-i (Ä‘á»™ng cÆ¡ cÅ© sá»­ dá»¥ng Ä‘áº¿n 10 nÄƒm qua)&nbsp;vá»›i há»™p sá»‘ CVT &ndash; i v&ocirc; cáº¥p (7 cáº¥p sá»‘ áº£o) gi&uacute;p xe trá»Ÿ n&ecirc;n máº¡nh máº½ hÆ¡n v&agrave; Ä‘áº·c biá»‡t ti&ecirc;u hao nhi&ecirc;n liá»‡u &iacute;t hÆ¡n v&agrave; tháº£i kh&iacute; sáº¡ch ra m&ocirc;i trÆ°á»ng</p>\r\n', 'toyota-vios', 350000, 'toyota-vios.jpg', '0000-00-00', 0),
(44, 1, 'CAMRY', '<p>Ngoáº¡i tháº¥t lá»‹ch l&atilde;m &iacute;t thay Ä‘á»•i so vá»›i báº£n tiá»n nhiá»‡m, ngoáº¡i trá»« má»™t sá»‘ chi tiáº¿t Ä‘Æ°á»£c Toyota th&ecirc;m tháº¯t nháº±m tá»‘i Æ°u h&oacute;a tráº£i nghiá»‡m ngÆ°á»i d&ugrave;ng. Ná»™i tháº¥t xe kh&aacute; ph&ugrave; há»£p vá»›i nhá»¯ng ngÆ°á»i d&ugrave;ng trung ni&ecirc;n bá»Ÿi nhá»¯ng chi tiáº¿t Ä‘Æ¡n giáº£n nhÆ°ng thá»±c dá»¥ng. Khung taplo Ä‘á»‘i xá»©ng káº¿t há»£p cháº¥t liá»‡u nhÆ° á»‘p giáº£ gá»— v&agrave; nhá»±a má»m giáº£ da, vá»›i há»‡ thá»‘ng giáº£i tr&iacute; Ä‘Æ¡n giáº£n nhÆ° Ä‘áº§u CD v&agrave; káº¿t ná»‘i AUX/USB.</p>\r\n', 'camry', 200000, 'camry.jpg', '0000-00-00', 0),
(45, 1, 'Corolla Altis', '<p>Khoang cabin xe Ä‘Æ°á»£c Ä‘iá»ƒm xuyáº¿t nhá»¯ng chi tiáº¿t tinh táº¿, vá»›i tay l&aacute;i bá»c da v&agrave; máº¡ báº¡c káº¿t há»£p vá»›i nhá»¯ng n&uacute;t báº¥m t&iacute;ch há»£p há»— trá»£ Ä‘áº¯c lá»±c cho ngÆ°á»i d&ugrave;ng. Há»‡ thá»‘ng giáº£i tr&iacute; &ldquo;chuáº©n má»±c&rdquo; vá»›i m&agrave;n h&igrave;nh 7 inch c&ugrave;ng kháº£ nÄƒng káº¿t ná»‘i AUX, USB, Bluetooth v&agrave; Ä‘&agrave;m thoáº¡i ráº£nh tay. Gháº¿ ngá»“i phá»§ da v&agrave; chá»‰nh Ä‘iá»‡n 10 hÆ°á»›ng Ä‘á»‘i vá»›i vá»‹ tr&iacute; ngÆ°á»i l&aacute;i.</p>\r\n', 'corolla-altis', 2700000, 'corolla-altis.jpg', '0000-00-00', 0),
(46, 1, 'Toyota Avanza', '<p>L&agrave; d&ograve;ng xe cáº¡nh tranh trá»±c tiáº¿p vá»›i nhá»¯ng sáº£n pháº©m nhÆ° Suzuki Ertiga hay Kia Rondo, Avanza c&oacute; thiáº¿t káº¿ Ä‘Æ¡n giáº£n m&agrave; thá»±c dá»¥ng. Pháº§n ngoáº¡i tháº¥t chuáº©n má»±c tá»« cá»¥m Ä‘&egrave;n pha ti&ecirc;u chuáº©n, thanh náº¹p ná»‘i á»Ÿ tr&ecirc;n c&ugrave;ng logo Ä‘&iacute;nh giá»¯a c&ograve;n th&acirc;n xe l&agrave; nhá»¯ng Ä‘Æ°á»ng g&acirc;n dáº­p nháº¹ vá»›i lazang 8 cháº¥u.Ná»™i tháº¥t kh&aacute; Ä‘Æ¡n giáº£n, bao gá»“m há»‡ thá»‘ng Ä‘iá»u h&ograve;a chá»‰nh tay vá»›i cá»­a gi&oacute; ph&iacute;a sau. Gháº¿ xe c&oacute; Ä‘áº§y Ä‘á»§ c&aacute;c chá»©c nÄƒng Ä‘iá»u chá»‰nh, gháº¿ l&aacute;i chá»‰nh tay 4 hÆ°á»›ng, h&agrave;ng gháº¿ 2 gáº­p 60:40 v&agrave; gháº¿ 3 gáº­p 50:50.</p>\r\n', 'toyota-avanza', 2300000, 'toyota-avanza.jpg', '0000-00-00', 0),
(47, 1, 'Toyota Rush S ', '<p><a href=\"https://muaxenhanh.vn/toyota-rush-2019/\" target=\"_blank\">Toyota Rush 2019</a>&nbsp;sá»Ÿ há»¯u ngoáº¡i tháº¥t theo Ä‘&uacute;ng phong c&aacute;ch MPV v&agrave; SUV vá»›i nhá»¯ng tinh t&uacute;y cá»§a ng&ocirc;n ngá»¯ Keen Look, káº¿t há»£p ná»™i tháº¥t tinh táº¿, gháº¿ ngá»“i bá»c ná»‰, vá»›i há»‡ thá»‘ng giáº£i tr&iacute; bao gá»“m m&agrave;n h&igrave;nh cáº£m á»©ng 7 inch, Ä‘áº§u DVD, Bluetooth v&agrave; 8 loa sá»‘ng Ä‘á»™ng c&ugrave;ng d&agrave;n Ä‘iá»u h&ograve;a tá»± Ä‘á»™ng.C&ugrave;ng vá»›i há»™p sá»‘ tá»± Ä‘á»™ng 4 cáº¥p, Rush trang bá»‹ Ä‘á»™ng cÆ¡ 2NR-VE dung t&iacute;ch chá»‰ 1.5L, cho ra c&ocirc;ng suáº¥t tá»‘i Ä‘a 104 PS v&agrave; m&ocirc; men xoáº¯n cá»±c Ä‘áº¡i 134Nm. vá»›i c&ocirc;ng nghá»‡ Dual VVT-i &nbsp;tá»‘i Æ°u, tiáº¿t kiá»‡m nhi&ecirc;n liá»‡u hÆ¡n.</p>\r\n', 'toyota-rush-s', 3400000, 'toyota-rush-s.jpg', '0000-00-00', 0),
(48, 4, 'LEXUS ES 250 2019', '<p>Lexus ES sá»Ÿ há»¯u ng&ocirc;n ngá»¯ thiáº¿t káº¿ sang trá»ng, tinh táº¿ c&ugrave;ng k&iacute;ch thÆ°á»›c tá»•ng thá»ƒ 4915 x 1820 x 1450 mm. Vá»›i chiá»u d&agrave;i cÆ¡ sá»Ÿ 2820 mm, xe dá»… d&agrave;ng chinh phá»¥c kh&aacute;ch h&agrave;ng nhá» khoang ná»™i tháº¥t tháº¥t rá»™ng r&atilde;i v&agrave; thoáº£i m&aacute;i.</p>\r\n', 'lexus-es-250-2019', 5000000, 'lexus-es-250-2019.jpg', '0000-00-00', 0),
(49, 4, 'LEXUS GS 350', '<p>Lexus GS táº¡o áº¥n tÆ°á»£ng vá»›i kh&aacute;ch h&agrave;ng nhá» thiáº¿t káº¿ má»›i máº» v&agrave; v&ocirc; c&ugrave;ng thá»ƒ thao, xe sá»Ÿ há»¯u k&iacute;ch thÆ°á»›c tá»•ng thá»ƒ 4880 x 1840 x 1455 mm. GS c&oacute; khoang cabin rá»™ng r&atilde;i vá»›i chiá»u d&agrave;i cÆ¡ sá»Ÿ l&ecirc;n Ä‘áº¿n 2850 mm. Táº¥t cáº£ gh&ecirc;Ì ngá»“i tr&ecirc;n Lexus GS Ä‘á»u Ä‘Æ°á»£c boÌ£c da cao cáº¥p thuá»™c semi-aniline tháº­t Ä‘Æ°á»£c nh&agrave; sáº£n xuáº¥t thiáº¿t káº¿ v&agrave; láº¯p r&aacute;p, mang Ä‘áº¿n sá»± sang trá»ng cho pháº§n ná»™i tháº¥t.</p>\r\n', 'lexus-gs-350', 2450000, 'lexus-gs-350.jpg', '0000-00-00', 0),
(50, 4, 'Lexus RX', '<p>Lexus RX mang váº» Ä‘áº¹p kh&oacute; cÆ°á»¡ng v&agrave; cuá»‘n h&uacute;t khi c&oacute; k&iacute;ch thÆ°á»›c tá»•ng thá»ƒ 4890 x 1895 x 1690 mm. Ná»™i tháº¥t lu&ocirc;n l&agrave; pháº§n m&agrave; Lexus chÄƒm ch&uacute;t ráº¥t kÄ© lÆ°á»¡ng cho nhá»¯ng sáº£n pháº©m cá»§a m&igrave;nh v&agrave; Lexus RX cÅ©ng kh&ocirc;ng ngoáº¡i lá»‡. Khoang cabin ghi Ä‘iá»ƒm vá»›i ngÆ°á»i d&ugrave;ng nhá» chiá»u d&agrave;i cÆ¡ sá»Ÿ Ä‘áº¡t 2790 mm v&agrave; táº¥t cáº£ gh&ecirc;Ì ngá»“i Ä‘á»u Ä‘Æ°á»£c boÌ£c da Ä‘áº¯t tiá»n semi-aniline.</p>\r\n', 'lexus-rx', 5240000, 'lexus-rx.jpg', '0000-00-00', 0),
(51, 4, 'Lexus GX', '<p>Lexus GX 460 tháº¿ há»‡ má»›i sá»Ÿ há»¯u nhá»¯ng Ä‘Æ°á»ng n&eacute;t thiáº¿t káº¿ thu h&uacute;t v&agrave; Ä‘áº¯t gi&aacute; trong k&iacute;ch thÆ°á»›c tá»•ng thá»ƒ 4880 x 1885 x 1845 mm. Khoang ná»™i tháº¥t Ä‘Æ°á»£c Ä‘a sá»‘ kh&aacute;ch h&agrave;ng h&agrave;i l&ograve;ng khi c&oacute; chá»— ngá»“i rá»™ng r&atilde;i vá»›i chiá»u d&agrave;i cÆ¡ sá»Ÿ 2790 mm.</p>\r\n', 'lexus-gx', 35400000, 'lexus-gx.jpg', '0000-00-00', 0),
(52, 4, 'Lexus RC', '<p>Lexus RC l&agrave; má»™t máº«u coupe tr&ograve;n trá»‹a káº¿t há»£p c&ugrave;ng nhá»¯ng Ä‘Æ°á»ng n&eacute;t háº§m há»‘ c&oacute; k&iacute;ch thÆ°á»›c tá»•ng thá»ƒ 4695 x 1840 x 1395 mm. Máº·c d&ugrave; l&agrave; má»™t máº«u xe coupe nhÆ°ng Lexus RC váº«n kh&ocirc;ng qu&aacute; cháº­t nhÆ° nhá»¯ng Ä‘á»‘i thá»§ kh&aacute;c vá»›i chiá»u d&agrave;i cÆ¡ sá»Ÿ Ä‘áº¡t 2730 mm.</p>\r\n', 'lexus-rc', 2900000, 'lexus-rc.jpg', '0000-00-00', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `pay_id` varchar(50) NOT NULL,
  `sales_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `sales`
--

INSERT INTO `sales` (`id`, `user_id`, `pay_id`, `sales_date`) VALUES
(9, 9, 'PAY-1RT494832H294925RLLZ7TZA', '2018-05-10'),
(10, 9, 'PAY-21700797GV667562HLLZ7ZVY', '2018-05-10');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(60) NOT NULL,
  `type` int(1) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `contact_info` varchar(100) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `status` int(1) NOT NULL,
  `activate_code` varchar(15) NOT NULL,
  `reset_code` varchar(15) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `type`, `firstname`, `lastname`, `address`, `contact_info`, `photo`, `status`, `activate_code`, `reset_code`, `created_on`) VALUES
(1, 'admin@admin.com', '$2y$10$0SHFfoWzz8WZpdu9Qw//E.tWamILbiNCX7bqhy3od0gvK5.kSJ8N2', 1, 'Nhom', '10', '', '', 'profile.jpg', 1, '', '', '2018-05-01'),
(16, 'duongnguyen@gmail.com', '$2y$10$cVakUPEUMAeJ.950ZcfLBOVQ4p.phvoyhVukk6AMb9OrAlCeV4hpe', 0, 'Duong', 'Nguyen', '', '', '', 1, '', '', '2019-03-25');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `details`
--
ALTER TABLE `details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT cho bảng `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
