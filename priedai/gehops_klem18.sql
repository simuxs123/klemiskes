-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 09, 2021 at 02:32 PM
-- Server version: 10.3.25-MariaDB-log
-- PHP Version: 7.4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gehops_klem18`
--

-- --------------------------------------------------------

--
-- Table structure for table `antrasa`
--

CREATE TABLE `antrasa` (
  `id` int(10) UNSIGNED NOT NULL,
  `namo_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `auksto_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `buto_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kambariai` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cords` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plotas` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kryptis` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kaina` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apdaila` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `statusas` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `antrasa`
--

INSERT INTO `antrasa` (`id`, `namo_id`, `auksto_id`, `buto_id`, `image`, `kambariai`, `cords`, `plotas`, `kryptis`, `kaina`, `apdaila`, `statusas`, `created_at`, `updated_at`) VALUES
(1, '2', '1', '1', '1auksto1.jpg', '', 'M 16.367511,598.86905 H 434.64835 L 436.46697,20.55032 H 14.548899 Z', '', '', '', '', 0, '2018-03-08 22:00:00', '2018-03-30 07:23:45'),
(2, '2', '1', '2', '1auksto2.jpg', '', 'M 436.46697,420.64504 H 927.4923 L 929.31092,18.731707 436.46697,20.55032 Z', '', '', '', '', 0, '2018-03-08 22:00:00', '2018-03-08 22:00:00'),
(3, '2', '1', '3', '1auksto3.jpg', '', 'm 927.4923,420.64504 v 180.04262 l 416.4622,-3.63722 1.8186,-574.681508 -416.46218,-3.637225 z', '', '', '', '', 0, '2018-03-08 22:00:00', '2018-03-08 22:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `antrasb`
--

CREATE TABLE `antrasb` (
  `id` int(10) UNSIGNED NOT NULL,
  `namo_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `auksto_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `buto_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kambariai` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cords` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plotas` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kryptis` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kaina` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apdaila` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `statusas` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `antrasb`
--

INSERT INTO `antrasb` (`id`, `namo_id`, `auksto_id`, `buto_id`, `image`, `kambariai`, `cords`, `plotas`, `kryptis`, `kaina`, `apdaila`, `statusas`, `created_at`, `updated_at`) VALUES
(1, '2', '2', '4', '2auksto1.jpg', '', 'M 52.739758,700.71134 H 445.56003 L 443.74142,35.099219 56.376983,33.280606 Z', '', '', '', '', 0, '2018-03-08 22:00:00', '2018-03-30 07:23:47'),
(2, '2', '2', '5', '2auksto2.jpg', '', 'm 443.74142,35.099219 456.4717,1.818612 -3.63723,432.829739 H 441.9228 Z', '', '', '', '', 0, '2018-03-08 22:00:00', '2018-03-08 22:00:00'),
(3, '2', '2', '6', '2auksto3.jpg', '', 'M 900.21312,36.917831 1283.9403,35.099219 V 697.07412 L 896.57589,695.25551 V 469.74757 Z', '', '', '', '', 0, '2018-03-08 22:00:00', '2018-03-08 22:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `antrasc`
--

CREATE TABLE `antrasc` (
  `id` int(10) UNSIGNED NOT NULL,
  `namo_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `auksto_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `buto_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kambariai` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cords` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plotas` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kryptis` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kaina` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apdaila` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `statusas` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `antrasc`
--

INSERT INTO `antrasc` (`id`, `namo_id`, `auksto_id`, `buto_id`, `image`, `kambariai`, `cords`, `plotas`, `kryptis`, `kaina`, `apdaila`, `statusas`, `created_at`, `updated_at`) VALUES
(1, '2', '3', '7', '2auksto1.jpg', '', 'M 52.739758,700.71134 H 445.56003 L 443.74142,35.099219 56.376983,33.280606 Z', '', '', '', '', 0, '2018-03-08 22:00:00', '2018-03-30 07:23:49'),
(2, '2', '3', '8', '2auksto2.jpg', '', 'm 443.74142,35.099219 456.4717,1.818612 -3.63723,432.829739 H 441.9228 Z', '', '', '', '', 0, '2018-03-08 22:00:00', '2018-03-30 07:23:50'),
(3, '2', '3', '9', '2auksto3.jpg', '', 'M 900.21312,36.917831 1283.9403,35.099219 V 697.07412 L 896.57589,695.25551 V 469.74757 Z', '', '', '', '', 0, '2018-03-08 22:00:00', '2018-03-08 22:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `butais`
--

CREATE TABLE `butais` (
  `id` int(10) UNSIGNED NOT NULL,
  `namas` int(11) NOT NULL,
  `aukstas` int(11) NOT NULL,
  `kambariai` int(11) NOT NULL,
  `plotas` int(11) NOT NULL,
  `kryptis` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `statusas` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kaina` int(11) NOT NULL,
  `apdaila` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ketvirtasa`
--

CREATE TABLE `ketvirtasa` (
  `id` int(10) UNSIGNED NOT NULL,
  `namo_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `auksto_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `buto_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kambariai` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cords` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plotas` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kryptis` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kaina` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apdaila` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `statusas` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ketvirtasa`
--

INSERT INTO `ketvirtasa` (`id`, `namo_id`, `auksto_id`, `buto_id`, `image`, `kambariai`, `cords`, `plotas`, `kryptis`, `kaina`, `apdaila`, `statusas`, `created_at`, `updated_at`) VALUES
(1, '4', '1', '1', '1auksto1.jpg', '', 'M 16.367511,598.86905 H 434.64835 L 436.46697,20.55032 H 14.548899 Z', '', '', '', '', 0, '2018-03-08 22:00:00', '2018-03-08 22:00:00'),
(2, '4', '1', '2', '1auksto2.jpg', '', 'M 436.46697,420.64504 H 927.4923 L 929.31092,18.731707 436.46697,20.55032 Z', '', '', '', '', 0, '2018-03-08 22:00:00', '2018-03-30 07:24:01'),
(3, '4', '1', '3', '1auksto3.jpg', '', 'm 927.4923,420.64504 v 180.04262 l 416.4622,-3.63722 1.8186,-574.681508 -416.46218,-3.637225 z', '', '', '', '', 0, '2018-03-08 22:00:00', '2018-03-08 22:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `ketvirtasb`
--

CREATE TABLE `ketvirtasb` (
  `id` int(10) UNSIGNED NOT NULL,
  `namo_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `auksto_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `buto_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kambariai` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cords` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plotas` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kryptis` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kaina` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apdaila` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `statusas` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ketvirtasb`
--

INSERT INTO `ketvirtasb` (`id`, `namo_id`, `auksto_id`, `buto_id`, `image`, `kambariai`, `cords`, `plotas`, `kryptis`, `kaina`, `apdaila`, `statusas`, `created_at`, `updated_at`) VALUES
(1, '4', '2', '4', '2auksto1.jpg', '', 'M 52.739758,700.71134 H 445.56003 L 443.74142,35.099219 56.376983,33.280606 Z', '', '', '', '', 0, '2018-03-08 22:00:00', '2018-03-08 22:00:00'),
(2, '4', '2', '5', '2auksto2.jpg', '', 'm 443.74142,35.099219 456.4717,1.818612 -3.63723,432.829739 H 441.9228 Z', '', '', '', '', 0, '2018-03-08 22:00:00', '2018-03-08 22:00:00'),
(3, '4', '2', '6', '2auksto3.jpg', '', 'M 900.21312,36.917831 1283.9403,35.099219 V 697.07412 L 896.57589,695.25551 V 469.74757 Z', '', '', '', '', 0, '2018-03-08 22:00:00', '2018-03-08 22:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `ketvirtasc`
--

CREATE TABLE `ketvirtasc` (
  `id` int(10) UNSIGNED NOT NULL,
  `namo_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `auksto_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `buto_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kambariai` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cords` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plotas` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kryptis` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kaina` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apdaila` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `statusas` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ketvirtasc`
--

INSERT INTO `ketvirtasc` (`id`, `namo_id`, `auksto_id`, `buto_id`, `image`, `kambariai`, `cords`, `plotas`, `kryptis`, `kaina`, `apdaila`, `statusas`, `created_at`, `updated_at`) VALUES
(1, '4', '3', '7', '2auksto1.jpg', '', 'M 52.739758,700.71134 H 445.56003 L 443.74142,35.099219 56.376983,33.280606 Z', '', '', '', '', 0, '2018-03-08 22:00:00', '2018-03-08 22:00:00'),
(2, '4', '3', '8', '2auksto2.jpg', '', 'm 443.74142,35.099219 456.4717,1.818612 -3.63723,432.829739 H 441.9228 Z', '', '', '', '', 0, '2018-03-08 22:00:00', '2018-03-08 22:00:00'),
(3, '4', '3', '9', '2auksto3.jpg', '', 'M 900.21312,36.917831 1283.9403,35.099219 V 697.07412 L 896.57589,695.25551 V 469.74757 Z', '', '', '', '', 0, '2018-03-08 22:00:00', '2018-03-08 22:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `kotedzai`
--

CREATE TABLE `kotedzai` (
  `id` int(10) UNSIGNED NOT NULL,
  `kotedzo_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cords` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kambariai` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plotas` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kaina` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apdaila` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `statusas` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kotedzai`
--

INSERT INTO `kotedzai` (`id`, `kotedzo_id`, `image`, `image2`, `cords`, `kambariai`, `plotas`, `kaina`, `apdaila`, `statusas`, `created_at`, `updated_at`) VALUES
(1, '1', 'Kotedzas11.jpg', 'Kotedzas12.jpg', 'm 853.90244,263.41463 597.07316,-204.146337 109.7561,2.195122 52.6829,296.341465 -2.1951,403.90244 -151.4634,120.7317 -603.65854,-100.97561 z', '', '', '', '', 0, '2018-03-01 22:00:00', '2018-04-01 15:13:12'),
(2, '2', 'Kotedzas21.jpg', 'Kotedzas22.jpg', 'M 542.19512,368.78049 669.5122,160.2439 l 215.12195,94.39025 -30.73171,8.78048 2.19512,518.04878 -313.90244,-35.12195 z', '', '', '', '', 0, '2018-03-08 22:00:00', '2018-03-21 07:34:29'),
(3, '3', 'Kotedzas31.jpg', 'Kotedzas32.jpg', 'm 401.70732,419.26829 140.4878,-50.4878 V 746.34146 L 408.29268,730.97561 Z', '', '', '', '', 0, '2018-03-08 22:00:00', '2018-03-30 07:24:08'),
(4, '4', 'Kotedzas41.jpg', 'Kotedzas42.jpg', 'm 278.78049,463.17073 52.68292,-127.31707 188.78049,41.70732 -118.53658,41.70731 6.58536,311.70732 -127.31707,-15.36585 z', '', '', '', '', 0, '2018-03-08 22:00:00', '2018-04-01 15:15:22'),
(5, '5', 'Kotedzas51.jpg', 'Kotedzas52.jpg', 'm 223.90244,482.92683 54.87805,-19.7561 2.19512,252.43903 -59.26829,-4.39025 z', '', '', '', '', 0, '2018-03-08 22:00:00', '2018-03-30 07:24:10'),
(6, '6', 'Kotedzas61.jpg', 'Kotedzas62.jpg', 'm 155.85366,498.29268 26.34146,-76.82927 107.56098,17.56098 -10.97561,24.14634 -54.87805,19.7561 -2.19512,228.29268 -65.85366,-13.17073 z', '', '', '', '', 0, '2018-03-08 22:00:00', '2018-03-21 06:32:08');

-- --------------------------------------------------------

--
-- Table structure for table `mails`
--

CREATE TABLE `mails` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tel` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mails`
--

INSERT INTO `mails` (`id`, `name`, `tel`, `email`, `text`, `created_at`, `updated_at`) VALUES
(1, 'test', '86886868686', 'test@test.com', 'test', '2018-04-04 07:54:28', '2018-04-04 07:54:28'),
(6, 'testas', 'testas', 'testas@testas.lt', 'testas', '2018-04-04 08:13:15', '2018-04-04 08:13:15'),
(8, 'Zydrune Galdikaite', '867838969', 'zyyygaldikaite@gmail.com', 'Sveiki, domina jūsų statomi butai. Prašau informuoti kokios kainos, kadangi to nematau jūsų puslapyje.', '2018-04-11 11:31:38', '2018-04-11 11:31:38'),
(11, 'Mantas', '+37063690566', 'mantas.gumbaravicius@gmail.com', 'Laba diena, kada numatoma būtų statybos pabaiga ir kokia kvadratūros kaina?', '2018-04-15 04:44:07', '2018-04-15 04:44:07'),
(13, 'DomMype', '83295324456', 'domtalk@lmail.party', 'Cheap Alternative Nexium Low Cost Sctos  <a href=http://cialiviag.com>cheapest cialis</a> Legally Bentyl Ups Drugs Cephalexin Breast Feeding generic isotretinoin skin health low price', '2018-04-16 09:52:59', '2018-04-16 09:52:59'),
(14, 'Ieva', '868161383', 'ieva.vilkaite93@gmail.com', 'Laba diena,\r\ndomina 3-jų kambarių butų kainos, kokios kvadrato kainos vyrauja? Ir kada numatoma statybų pabaiga?', '2018-04-18 09:54:22', '2018-04-18 09:54:22'),
(15, 'Louishob', '261646658', 'putevka06@mail.ru', 'Доброго дня! \r\nПредлагаем рассмотреть предложение: \r\n \r\nОтправка вашего сообщения в более чем 1 000 000 форм обратной связи России только до 5 мая - 4000 р \r\nВаше сообщение увидят администраторы сайтов, менеджеры и руководители! \r\nОтличная реклама Ваших товаров и услуг! \r\nГарантии и отзывы. \r\n \r\nКонтакты: \r\n2018form @inbox.ru(убрать пробелы) \r\nTelegram:                  @form2018 \r\nSkype:                     2018form', '2018-04-28 04:53:25', '2018-04-28 04:53:25'),
(16, 'BobbyAlign', '161433332', 'info@kubanii.ru', 'Предлагаем рассмотреть наше встречное предложение \r\n \r\nОтправка вашего сообщения в более чем 1 000 000 форм обратной связи России и СНГ \r\nтолько до 9 мая - 3000 р \r\n \r\nПисьмо приходит на электронный ящик организации 100% во входящие! \r\n \r\nВаше сообщение увидят администраторы сайтов, менеджеры и руководители! \r\nОтличная реклама Ваших товаров и услуг! \r\nГарантии и отзывы. \r\n \r\nКонтакты: \r\n2018form @inbox.ru(убрать пробелы) \r\nTelegram:                  @form2018 \r\nSkype:                     2018form', '2018-05-03 12:41:51', '2018-05-03 12:41:51'),
(17, 'RobertadorO', '285268633', 'tina.kholnova.87@mail.ru', 'Хотите за три месяца лета сделать 2500% в одном конкретном ICO в сфере Новой Энергетики? \r\nЭто изобретенная нашим ученым Независимая электростанция,которая позволит переоборудовать всю землю на бестопливную энергетику. \r\nИщем партнеров в регионах готовых производить детали и сами генераторы.https://clck.ru/DH5QT - канал Ютюб \r\nhttps://page276123.ex-in.online/ - мой сайт VK  https://vk.com/megavattelina Ватсапп: +79821103976', '2018-05-08 06:19:26', '2018-05-08 06:19:26'),
(18, 'Vitalija', '867970811', 'vitalijariskute@gmail.com', 'Sveiki,\r\n\r\nDomina gyvenamasis būstas, greičiausiai butas, svarbu du miegamieji kambariai. Kokios kainos, kokie projektai ir t.t.? \r\n\r\nPagarbiai\r\nVitalija', '2018-05-09 03:56:41', '2018-05-09 03:56:41'),
(27, 'test', '867970811', 'rgr@gmail.com', 'efe', '2018-05-09 03:57:28', '2018-05-09 03:57:28'),
(29, 'Eugenegus', '235358663', 'sir.olegka2017@yandex.ru', 'Квалифицированная юридическая помощь по банкротству юридических и физических лиц. \r\nУслуги арбитражных и финансовых управляющих. \r\nСписание долговых обязательств. \r\nЗащита адвокатов. \r\n \r\nhttp://credit-lawyer.ru/', '2018-05-10 17:46:14', '2018-05-10 17:46:14'),
(30, 'StefanPaw', 'Юридическая компания в Казахстане', 'advokat.kz2018@mail.ru', 'Юридические услуги в Казахстане, Астана. Представительство в судах. Взыскание задолженности. Экономические споры. Открытие предприятий, филиалов. Сопровождение бизнеса. Миграционная поддержка, деловые визы. Продажа готовых фирм с лицензиями. Получение разрешений/лицензий на любые виды деятельности. \r\nБольшой опыт работы на рынке юридических услуг в Казахстане. \r\nКонт. тел. + 7 747 500 58 58 (ВостАп, Вибер, Телеграмм) \r\nЕмайл: advokat_astana@list.ru', '2018-05-14 20:18:05', '2018-05-14 20:18:05'),
(31, 'Ramunas', '+37068746034', 'dziugas.ramunas@gmail.com', 'laba diena,\r\nkokia būtų kotedžo Nr. 6 kaina (http://klemiskesnamai.lt/kotedzas/6). Taip pat domintų baigtumo lygis ir kiek priklausys žemės ploto, koks numatytas šildymas ir komunikacijos.', '2018-05-22 02:53:22', '2018-05-22 02:53:22'),
(35, 'Nerimana', '+37069817800', 'nerimana@tara.lt', 'kokios butų kvadratūros ir kiek kainuoja', '2018-05-31 03:49:23', '2018-05-31 03:49:23'),
(39, 'Jesusdat', 'Предстaвлю вaш бизнес в социaльных  сетях', 'rrudolf337@gmail.com', 'Здравствуйте! \r\nЯ копирайтер, то есть специализируюсь на разработке текстов для  сайтов, бизнеса. \r\nЕсли вы: \r\n•	Занимаетесь продвижением вашего  бизнеса \r\n•	Предоставляете товары или услуги  для людей \r\n•	Владеете сайтом или интернет-магазином \r\n•	Занимаетесь разработкой сайтов и их продвижением \r\nИ при этом хотите увеличить продажи ваших услуг, то я смогу вам в этом помочь. \r\nПерепишу и усилю тексты для сайта. \r\nПлюсы работы со мной: \r\n1.	я знаю, какие боли и проблемы  должен решить сайт; \r\n2.	9 летний опыт продаж в рекламе помогает отрабатывать возражения клиентов; \r\n3.	 выведу Ваши сильные стороны в 100% преимущество. \r\n \r\nЧто Вы получите: \r\nТексты, которые приведут клиентов; \r\n \r\nНапишите мне сегодня, и я сделаю Вам скидку. \r\nP S \r\nЕсли Вы сомневаетесь, подумайте, сколько клиентов Вы теряете сейчас? \r\n \r\nwebwriterspb@gmail.com', '2018-06-07 06:59:38', '2018-06-07 06:59:38'),
(40, 'Rita', '860599871', 'rita.slavinskaite@gmail.com', 'Laba diena :) Norėčiau sužinoti Klemiškės namų-  kotedžų kainas :) Sienų storis koks ? Stogo apšiltinimas kiek cm ?', '2018-06-12 07:38:48', '2018-06-12 07:38:48'),
(51, 'WilliamIdoth', '89910003881', 'zakaz@radiozone.ru', 'Хотите больше клиентов для Вашего бизнеса? \r\nМы поможем Вам! \r\n \r\nРассылка Вашего сообщения в более чем 1 000 000 форм обратной связи России и СНГ \r\n \r\nЭто рассылка по формам с сайтов в разделе контакты, которые заполняются нашим роботом. \r\nДалее письмо с вашим коммерческим предложением приходит на контактный E-mail организации. \r\n \r\nПри рассылках через контакт-форму получается, что каждый сайт отправляет сообщение «сам себе» и поэтому все письма приходят во входящие! \r\nТаким образом рассылка таким методом даст отличные результаты для рекламы Ваших товаров и услуг \r\n \r\n-Гарантии и отзывы и контроль рассылки \r\n-Скидка на рассылку 50% до 25 июня – цена всего 4000 рублей за 1 млн сообщений! \r\n \r\nНе отвечайте на это сообщение со своего ящика электронной почты, так как оно создано автоматически и никуда не дойдёт! \r\nИспользуйте для связи \r\nКонтакты: 2018form @inbox.ru  (убрать пробелы) Telegram: @form2018 Skype: 2018form', '2018-06-21 14:40:42', '2018-06-21 14:40:42'),
(52, 'WilliamIdoth', '89910002463', 'office@akwa-mir.ru', 'Узнайте как привлечь больше клиентов для бизнеса! \r\n \r\nОтправка сообщения в более чем 1 000 000 форм обратной связи России и СНГ \r\n \r\nЭто рассылка по формам с сайтов в раздел контакты, которые заполняются ботом \r\nДалее письмо с вашим предложением приходит на E-mail организации. \r\n \r\nПри рассылках через форму  каждый сайт отправляет сообщение «сам себе» и поэтому все письма приходят во входящие! \r\n \r\n-Гарантии и отзывы и контроль рассылки \r\n-Скидка на рассылку 50% до 25 июня – цена всего 4000 рублей за 1 млн сообщений! \r\n \r\nИспользуйте для связи \r\nКонтакты: 2018form @inbox.ru  (убрать пробел) Telegram: @form2018 Skype: 2018form', '2018-06-21 22:36:06', '2018-06-21 22:36:06'),
(53, 'WilliamIdoth', '89910000991', 'luida_2404@mail.ru', 'Хотите больше клиентов для Вашего бизнеса? \r\nМы поможем Вам! \r\n \r\nРассылка Вашего сообщения в более чем 1 200 000 форм обратной связи России и СНГ \r\n \r\nЭто рассылка по формам с сайтов в разделе контакты, которые заполняются нашим роботом. \r\nДалее письмо с вашим коммерческим предложением приходит на контактный E-mail организации. \r\n \r\nПри рассылках через контакт-форму получается, что каждый сайт отправляет сообщение «сам себе» и поэтому все письма приходят во входящие! \r\nТаким образом рассылка таким методом даст отличные результаты для рекламы Ваших товаров и услуг \r\n \r\n-Гарантии и отзывы и контроль рассылки \r\n-Скидка на рассылку 30% до 25 июня – цена всего 4000 рублей за 1.2 млн сообщений! \r\n \r\nНе отвечайте на это сообщение со своего ящика электронной почты, так как оно создано автоматически и никуда не дойдёт! \r\nИспользуйте для связи \r\nКонтакты: sviazs@ bk.ru (убрать пробелы)  телеграмм: @form2018 Скайп: 2018form', '2018-06-22 11:21:21', '2018-06-22 11:21:21'),
(54, 'Jamargox', '123653465', 'worlddetonator@mail.ru', 'World Detonator com: \r\nИСПОЛЬЗУЯ НАШ ПРОЕКТ, ВЫ СМОЖЕТЕ: \r\n-Инвестировать в криптовалюты без риска. \r\n-Зарабатывать на падении курса криптовалют. \r\n-Моментально обменивать BTC/USD без комиссии. \r\n \r\nРЕФЕРАЛЬНАЯ ПРОГРАММА для ВЕБМАСТЕРОВ: \r\n-Привлекая пользователей, Вы будете получать 10% от стоимости каждого полиса! \r\n \r\nНадежная израильская компания. \r\nИнновационное решение по страхованию на криптовалютном рынке. \r\nВсе разрешения и лицензии в наличии. \r\n \r\nСайт : WorldDetonator точка com \r\nhttps://clck.ru/DdxyM \r\n \r\nТелефон: +972-3-374-19-51 \r\n \r\n«HyperTechLab» LTD, Israel, Haifa', '2018-06-22 16:56:26', '2018-06-22 16:56:26'),
(56, 'Davidunogy', '89910004297', 'j.va.76@mail.ru', 'Поздравляем! Ваш email выбран для прохождения викторины от крупных спонсоров!!! Пройдите опрос и получите денежное вознаграждение \r\nhttps://drive.google.com/file/d/1NJrjpkyu4vBGVoct4U-n9DC7N2nbUFRM/preview', '2018-06-27 16:19:22', '2018-06-27 16:19:22'),
(57, 'Davidunogy', '89910002649', 'natalya.ferari@mail.ru', 'Поздравляем! Ваш email выбран для прохождения викторины от крупных спонсоров!!! Пройдите опрос и получите денежное вознаграждение \r\nhttps://drive.google.com/file/d/1gLkJHHb6_tuabvKHm6MNsQFn0KFCv0DR/preview', '2018-06-28 03:56:27', '2018-06-28 03:56:27'),
(58, 'Waynesot', '143464567', 'zadorstroi@bk.ru', 'Здравствуйте! \r\n \r\nУстали ждать результат от SEO? Доход от контекстной рекламы не радует? \r\n \r\nПредлагаем дорвейный трафик по вашей тематике с оплатой за переход. \r\nСтоимость перехода ниже, чем контекстная реклама, эффект быстрее, чем СЕО! \r\n \r\nПодробнее на сайте: http://zadorstroi.ru/ \r\nНаш скайп: live:zadorstroi \r\nНаш емаил: zadorstroi@mail.ru \r\nНаш телеграм: @zadorstroi', '2018-06-28 07:04:48', '2018-06-28 07:04:48'),
(59, 'Davidunogy', '89910003530', 'tan.beg.58@mail.ru', 'Поздравляем! Ваш email выбран для прохождения викторины от крупных спонсоров!!! Пройдите опрос и получите денежное вознаграждение \r\nhttps://drive.google.com/file/d/1yljz-X4nYfD_fysPf37HTN3B_qIS8m4H/preview', '2018-06-28 20:27:45', '2018-06-28 20:27:45'),
(60, 'Michaelhog', '265453648', 'zadorstroi@rambler.ru', 'Доброго времени суток! \r\n \r\nУстали ждать результат от SEO? Доход от контекстной рекламы не радует? \r\n \r\nПредлагаем трафик с дорвеев по вашему направлению с оплатой за переход. \r\nЦена за клик меньше, чем в Яндекс.Директ, результат быстрее, чем SEO! \r\n \r\nДля того чтобы начать получать клиентов по низким ценам обращайтесь по нашим контактам ниже. \r\nСтоимость одного перехода от 50 коп. в зависимости от направления вашего бизнеса. \r\n \r\nПодробнее на сайте: http://zadorstroi.ru/ \r\nНаш скайп: live:zadorstroi \r\nНаш емаил: zadorstroi@mail.ru \r\nНаш телеграм: @zadorstroi', '2018-06-29 09:01:19', '2018-06-29 09:01:19'),
(63, 'Davidunogy', '89910003408', '570746758775@ok.ru', 'Поздравляем! Ваш email выбран для прохождения викторины от крупных спонсоров!!! Пройдите опрос и получите денежное вознаграждение \r\nhttps://drive.google.com/file/d/11Wwi2CgDYBd2fiAzH8jniEWA8qdQTEUw/preview', '2018-07-01 15:10:38', '2018-07-01 15:10:38'),
(64, 'Davidunogy', '89910001216', 'a.s.lana@mail.ru', 'Поздравляем! Ваш email выбран для прохождения викторины от крупных спонсоров!!! Пройдите опрос и получите денежное вознаграждение \r\nhttps://drive.google.com/file/d/1XeuNKn9km6hMJmNoRdV1d5Aa2zFrA9p3/preview', '2018-07-02 04:35:09', '2018-07-02 04:35:09'),
(65, 'Davidunogy', '89910001142', 'a_s_e_k_a_87@mail.ru', 'Поздравляем! Ваш email выбран для прохождения викторины от крупных спонсоров!!! Пройдите опрос и получите денежное вознаграждение \r\nhttps://drive.google.com/file/d/1xRUuwqaHJrZOvy-Q9q9osBhbs02bwzIB/preview', '2018-07-02 09:31:22', '2018-07-02 09:31:22'),
(67, 'Davidunogy', '89910003039', 'baxareva77@mail.ru', 'Поздравляем! Ваш email выбран для прохождения викторины от крупных спонсоров!!! Пройдите опрос и получите денежное вознаграждение \r\nhttps://drive.google.com/file/d/1BN6ZupM-cItl99efVpF0hxr-9Eka4ugo/preview', '2018-07-03 13:52:26', '2018-07-03 13:52:26'),
(68, 'Davidunogy', '89910004891', 'a.kolchak@list.ru', 'Поздравляем! Ваш email выбран для прохождения викторины от крупных спонсоров!!! Пройдите опрос и получите денежное вознаграждение \r\nhttps://drive.google.com/file/d/1YmLq_VLcDRKXdVqEtklRMu7hT_CzkAWo/preview', '2018-07-04 01:00:21', '2018-07-04 01:00:21'),
(69, 'WilliamIdoth', '89910000900', 'filual@sinn.ru', 'Хотите больше клиентов для Вашего бизнеса? \r\nМы поможем Вам! \r\n \r\nРассылка Вашего сообщения в более чем 1 200 000 форм обратной связи России и СНГ \r\n \r\nЭто рассылка по формам с сайтов в разделе контакты, которые заполняются нашим роботом. \r\nДалее письмо с вашим коммерческим предложением приходит на контактный E-mail организации. \r\n \r\nПри рассылках через контакт-форму получается, что каждый сайт отправляет сообщение «сам себе» и поэтому все письма приходят во входящие! \r\nТаким образом рассылка таким методом даст отличные результаты для рекламы Ваших товаров и услуг \r\n \r\n-Гарантии и отзывы и контроль рассылки \r\n-Скидка на рассылку 30% до 10 июля – цена всего 4000 рублей за 1.2 млн сообщений! \r\n \r\nНе отвечайте на это сообщение со своего ящика электронной почты, так как оно создано автоматически и никуда не дойдёт! \r\nИспользуйте для связи \r\nКонтакты: sviazs@ bk.ru (убрать пробелы)  телеграмм: @form2018 Скайп: 2018form', '2018-07-04 07:49:26', '2018-07-04 07:49:26'),
(70, 'WilliamIdoth', '89910003728', 'info@sborchik.ru', 'Хотите больше клиентов для Вашего бизнеса? \r\nМы поможем Вам! \r\n \r\nРассылка Вашего сообщения в более чем 1 200 000 форм обратной связи России и СНГ \r\n \r\nЭто рассылка по формам с сайтов в разделе контакты, которые заполняются нашим роботом. \r\nДалее письмо с вашим коммерческим предложением приходит на контактный E-mail организации. \r\n \r\nПри рассылках через контакт-форму получается, что каждый сайт отправляет сообщение «сам себе» и поэтому все письма приходят во входящие! \r\nТаким образом рассылка таким методом даст отличные результаты для рекламы Ваших товаров и услуг \r\n \r\n-Гарантии и отзывы и контроль рассылки \r\n-Скидка на рассылку 30% до 10 июля – цена всего 4000 рублей за 1.2 млн сообщений! \r\n \r\nНе отвечайте на это сообщение со своего ящика электронной почты, так как оно создано автоматически и никуда не дойдёт! \r\nИспользуйте для связи \r\nКонтакты: sviazs@ bk.ru (убрать пробелы)  телеграмм: @form2018 Скайп: 2018form', '2018-07-04 19:13:02', '2018-07-04 19:13:02'),
(71, 'Lloydraisa', '89910001059', 'salon@nodosgroup.ru', 'Создай свою клиентскую базу емайлов и номеров телефонов потенцильаных клиентов с минимальными вложениями! \r\n \r\nПродажа программы Simple audience для сбора РЕАЛЬНЫХ емайлов и номера телефонов из Facebook. \r\n \r\nСбор можно производить по ключевым словам, а так же по списку групп. \r\nИнформация на выходе: Имя, Фамилия, пол, страна, емайл, телефон. \r\nПривязка на один аккаунт - 2000р.(дальше цена будет выше). \r\n \r\nТак же предоствляем услуги по сбору любых баз -  как юридических лиц так и физических! Пишите что Вам нужно- соберём не дорого! \r\n \r\nДля связи только - simpleaudience@mail.ru', '2018-07-05 02:59:08', '2018-07-05 02:59:08'),
(72, 'WilliamIdoth', '89910002530', 'gupdez.vd@gmail.com', 'Хотите больше клиентов для Вашего бизнеса? \r\nМы поможем Вам! \r\n \r\nРассылка Вашего сообщения в более чем 1 200 000 форм обратной связи России и СНГ \r\n \r\nЭто рассылка по формам с сайтов в разделе контакты, которые заполняются нашим роботом. \r\nДалее письмо с вашим коммерческим предложением приходит на контактный E-mail организации. \r\n \r\nПри рассылках через контакт-форму получается, что каждый сайт отправляет сообщение «сам себе» и поэтому все письма приходят во входящие! \r\nТаким образом рассылка таким методом даст отличные результаты для рекламы Ваших товаров и услуг \r\n \r\n-Гарантии и отзывы и контроль рассылки \r\n-Скидка на рассылку 30% до 10 июля – цена всего 4000 рублей за 1.2 млн сообщений! \r\n \r\nНе отвечайте на это сообщение со своего ящика электронной почты, так как оно создано автоматически и никуда не дойдёт! \r\nИспользуйте для связи \r\nКонтакты: sviazs@ bk.ru (убрать пробелы)  телеграмм: @form2018 Скайп: 2018form', '2018-07-07 10:31:10', '2018-07-07 10:31:10'),
(73, 'Davidunogy', '89910004314', 'suetnova.elena@mail.ru', 'Поздравляем! Ваш email выбран для прохождения викторины от крупных спонсоров!!! Пройдите опрос и получите денежное вознаграждение \r\nhttps://drive.google.com/file/d/10UPXg58PvuPhndBjJZ6v5nTsGxOwK5b6/preview', '2018-07-08 19:52:18', '2018-07-08 19:52:18'),
(74, 'DerekWag', '175884312', 'fotonow3d@gmail.com', 'Компания Алтай 3D предлагает новинку в рекламе 3D голограммы (проекция в воздухе), \r\nГолографическое устройство – это техническое приспособление, способное создавать «парящее» в пространстве трёхмерное изображение объекта. любое проекционное оборудование для офисов и конференц залов, проекторы, экраны, компьютеры, 3D мини кинозалы. Доставка по всей России \r\nПишите на почту proektor22@gmail.com \r\nЗвоните 8(499)350-0816', '2018-07-09 06:21:56', '2018-07-09 06:21:56'),
(75, 'Davidunogy', '89910002312', 'letomariupol.1972@mail.ru', 'Поздравляем! Ваш email выбран для прохождения викторины от крупных спонсоров! Пройдите опрос и получите денежное вознаграждение \r\nhttps://drive.google.com/file/d/18V4mkwqNIB80dk_CWGyjvxwkJrlX1iA4/preview', '2018-07-09 21:57:33', '2018-07-09 21:57:33'),
(76, 'Josephburne', '211821764', 'koms110@mail.ru', 'Закупаем макулатуру из офисной,офсетной, глянцевой бумаги, отходы из типографий, архив (белая бумага), по цене от 7 ? до 10 ?. Цена зависит от объема и от условия доставки макулатуры до нашей базы. \r\nООО \"Коммунальные системы\" \r\n+7(962)556-63-23, +7(963)120-01-18 \r\nkoms50@mail.ru \r\nwww.komsystem.ru', '2018-07-10 06:23:47', '2018-07-10 06:23:47'),
(77, 'Davidunogy', '89910000532', 'l-e-k-i-n@mail.ru', 'Поздравляем! Ваш email выбран для прохождения викторины от крупных спонсоров! Пройдите опрос и получите денежное вознаграждение \r\nhttps://drive.google.com/file/d/1evhRhzT1ELcYmSDbTiGo5cxWlC9M4gW3/preview', '2018-07-10 07:55:18', '2018-07-10 07:55:18'),
(78, 'Davidunogy', '89910003205', 'aleksandra_gmileva702@mail.ru', 'Поздравляем! Ваш email выбран для прохождения викторины от крупных спонсоров! Пройдите опрос и получите денежное вознаграждение \r\nhttps://drive.google.com/file/d/1LZff7xARl-jq1HzRsle7douHiJ937KC1/preview', '2018-07-11 04:11:08', '2018-07-11 04:11:08'),
(79, 'WillieKed', '126146246', 'info.rekl100718@gmail.com', 'Мы часто делаем ошибки, из-за которых теряем деньги, время, ресурсы, а то и здоровье. НО! Можно избегать этих ошибок. Как? Что надо сделать, чтобы стать везучим и успешным? \r\nОб этом - в архиве ответов на вопросы проекта Школа Эффективных Лидеров: http://gilbo.ru/?page=liderlist , и в Телеграмм-канале ШЭЛ: https://telegram.me/gilbo_ev', '2018-07-11 07:49:38', '2018-07-11 07:49:38'),
(80, 'Davidunogy', '89910005185', 'vika.guut@mail.ru', 'Поздравляем! Ваш email выбран для прохождения викторины от крупных спонсоров! Пройдите опрос и получите денежное вознаграждение \r\nhttps://drive.google.com/file/d/1eI2prZ91dJuWgvXzbON_yhbefcEWQ3F4/preview', '2018-07-11 20:58:01', '2018-07-11 20:58:01'),
(81, 'Davidunogy', '89910004854', 'aprokuda@mail.ru', 'Поздравляем! Ваш email выбран для прохождения викторины от крупных спонсоров! Пройдите опрос и получите денежное вознаграждение \r\nhttps://drive.google.com/file/d/14nhVd2AauLFxqoTaOmMqngZPI-l7aWNB/preview', '2018-07-12 06:10:50', '2018-07-12 06:10:50'),
(82, 'Davidunogy', '89910004123', 'herta.n@mail.ru', 'Разил Викторина от крупных спонсоров! \r\nhttps://drive.google.com/file/d/1-kLJ2fcPK9dYsPbSHhYhfse0-Kffofoq/preview', '2018-07-12 15:36:52', '2018-07-12 15:36:52'),
(83, 'Davidunogy', '89910004629', 'mariya.filippova.80@mail.ru', 'Микита Викторина от крупных спонсоров! \r\nhttps://drive.google.com/file/d/10r41-e8j_xXUVFqaT81ixolrdbrQIo6o/preview', '2018-07-12 22:26:52', '2018-07-12 22:26:52'),
(84, 'Mahayanist', '16164655567', 'asgolivia@gmail.com', 'Good man! Look at a good offer for you. http://bit.ly/2JXXS7J', '2018-07-18 12:42:50', '2018-07-18 12:42:50'),
(85, 'WilliamBum', '89910003417', 'aleksandra_3103@bk.ru', 'Ваагн Викторина от крупных спонсоров \r\nhttp://bit.ly/2JgevKO', '2018-07-18 14:11:05', '2018-07-18 14:11:05'),
(86, 'WilliamBum', '89910004039', 'pascha_sedorov@mail.ru', 'нинюра Викторина от крупных спонсоров \r\nhttp://bit.ly/2JfYfJR', '2018-07-18 17:26:48', '2018-07-18 17:26:48'),
(87, 'RussellInfut', '132521321', 'igor20180102@rambler.ru', 'Здравствуйте! \r\n \r\nУ вас проблемы с ростом клиентской базы? \r\nИли нужны продажи? \r\n \r\nПредлагаем вам услуги поиска новых клиентов и активные телефонные продажи. Результатом которых, будет много новых клиентов. \r\n \r\nВаши сотрудники будут работать с уже теплыми клиентами, заинтересованными в ваших товарах  и услугах, и готовых к сотрудничеству. \r\n \r\nУзнайте на сайте, какие услуги обзвона мы оказываем http://maxi-global.com/service/livecall \r\n \r\nИли напишите нам на почту mxglb@inbox.ru \r\n(в ответ на письмо не отвечайте, это технический ящик и мы ваше письмо не получим!)', '2018-07-19 08:27:21', '2018-07-19 08:27:21'),
(88, 'WilliamBum', '89910004586', 'lenya.dunaev.52@mail.ru', 'Наринэ Викторина от крупных спонсоров \r\nhttp://bit.ly/2NHA7TA', '2018-07-19 10:32:46', '2018-07-19 10:32:46'),
(89, 'Akvile', '863445790', 'pakalniskyte.akvile@gmail.com', 'Kokios kotedžų kainos?', '2018-07-20 03:47:20', '2018-07-20 03:47:20'),
(91, 'WilliamBum', '89910000355', 'asyunkafesivskaya@mail.ru', 'Леонора Викторина от крупных спонсоров \r\nhttp://bit.ly/2JeJbvW', '2018-07-20 05:25:30', '2018-07-20 05:25:30'),
(92, 'WilliamIdoth', '89910000770', 'andrey_kirov@mail.ru', 'Отличная и дешёвая реклама Ваших товаров и услуг! \r\n \r\nРассылка Вашего сообщения в более чем 1 200 000 форм обратной связи России и СНГ \r\n \r\nЭто рассылка по формам с сайтов в разделе контакты, которые заполняются нашим роботом. \r\nДалее письмо с вашим коммерческим предложением приходит на контактный E-mail организации. \r\n \r\nПри рассылках через форму  каждый сайт отправляет сообщение «сам себе» и поэтому все письма приходят во входящие! \r\nТаким образом рассылка таким методом даст отличные результаты для рекламы Ваших товаров и услуг \r\n \r\n-Гарантии и отзывы и контроль рассылки \r\n-Скидка на рассылку 50% для первых пяти обратившихся – цена всего 3000 рублей за 1.2 млн сообщений! \r\n \r\nНе отвечайте на это сообщение со своего ящика электронной почты, так как оно создано автоматически и никуда не дойдёт! \r\nИспользуйте для связи \r\n \r\nКонтакты: sviazs@bk.ru   телеграмм: @form2018 Скайп: 2018form', '2018-07-20 06:47:01', '2018-07-20 06:47:01'),
(93, 'WilliamBum', '89910003249', 'luna138@mail.ru', 'Тансулпан Викторина от крупных спонсоров \r\nhttp://bit.ly/2N63U7t', '2018-07-20 08:32:08', '2018-07-20 08:32:08'),
(94, 'WilliamBum', '89910003448', '9111198@mail.ru', 'марьяша Викторина от крупных спонсоров \r\nhttp://bit.ly/2NLGqWq', '2018-07-21 00:23:24', '2018-07-21 00:23:24'),
(95, 'Stevencop', '172737543', 'alatyrev-93@mail.ru', 'Нужны визитки? Срочная печать за 15 минут. Жмите на кнопку, чтобы перейти на сайт типографии “Новая Астея”. https://asteyaplus.ru/ \r\n \r\nВизитка ? маркетинговый инструмент, который “собирает” нам клиентов на конференциях, выставках, ярмарках, тренингах, рекламных стойках… \r\n \r\nВизитка вручается клиентам лично в руки, поэтому ее оформление, цветовая гамма и общее качество ? важная часть личного бренда. У нас на сайте вы можете заказать индивидуальный заказ, а также воспользоваться услугой быстрой печати. \r\n \r\nМы делаем визитки качественными и печатаем быстро. 100 визиток напечатаем всего за 10 минут. \r\n \r\nЖмите на кнопку  и рассчитайте online стоимость заказа. \r\nВаша типография Новая Астея \r\n \r\ne-mail: crm@asteyaplus.ru', '2018-07-21 09:53:00', '2018-07-21 09:53:00'),
(96, 'GregoryOrabs', '89910001935', 'sasha.bystrov.1980@mail.ru', 'Люся \r\nhttps://drive.google.com/file/d/1D9IeOM45uniYAXsG0f2hRsMbMCYkkhXp/preview', '2018-07-21 19:08:56', '2018-07-21 19:08:56'),
(97, 'WilliamIdoth', '89910002551', 'info@nikitv.ru', 'Отличная и дешёвая реклама Ваших товаров и услуг! \r\n \r\nРассылка Вашего сообщения в более чем 1 200 000 форм обратной связи России и СНГ \r\n \r\nЭто рассылка по формам с сайтов в разделе контакты, которые заполняются нашим роботом. \r\nДалее письмо с вашим коммерческим предложением приходит на контактный E-mail организации. \r\n \r\nПри рассылках через форму  каждый сайт отправляет сообщение «сам себе» и поэтому все письма приходят во входящие! \r\nТаким образом рассылка таким методом даст отличные результаты для рекламы Ваших товаров и услуг \r\n \r\n-Гарантии и отзывы и контроль рассылки \r\n-Скидка на рассылку 50% для первых пяти обратившихся – цена всего 3000 рублей за 1.2 млн сообщений! \r\n \r\nНе отвечайте на это сообщение со своего ящика электронной почты, так как оно создано автоматически и никуда не дойдёт! \r\nИспользуйте для связи \r\n \r\nКонтакты: sviazs@bk.ru   телеграмм: @form2018 Скайп: 2018form', '2018-07-21 19:11:12', '2018-07-21 19:11:12'),
(98, 'GregoryOrabs', '89910002959', 'olga.sopronyuk@mail.ru', 'Рината \r\nhttps://drive.google.com/file/d/1-2aLyal60Qg2UI-7HEhQcz44D953AlRT/preview', '2018-07-21 22:10:00', '2018-07-21 22:10:00'),
(99, 'WilliamIdoth', '89910001761', 'manager@lansat.ru', 'Отличная и дешёвая реклама Ваших товаров и услуг! \r\n \r\nРассылка Вашего сообщения в более чем 1 200 000 форм обратной связи России и СНГ \r\n \r\nЭто рассылка по формам с сайтов в разделе контакты, которые заполняются нашим роботом. \r\nДалее письмо с вашим коммерческим предложением приходит на контактный E-mail организации. \r\n \r\nПри рассылках через форму  каждый сайт отправляет сообщение «сам себе» и поэтому все письма приходят во входящие! \r\nТаким образом рассылка таким методом даст отличные результаты для рекламы Ваших товаров и услуг \r\n \r\n-Гарантии и отзывы и контроль рассылки \r\n-Скидка на рассылку 50% для первых пяти обратившихся – цена всего 3000 рублей за 1.2 млн сообщений! \r\n \r\nНе отвечайте на это сообщение со своего ящика электронной почты, так как оно создано автоматически и никуда не дойдёт! \r\nИспользуйте для связи \r\n \r\nКонтакты: sviazs@bk.ru   телеграмм: @form2018 Скайп: 2018form', '2018-07-22 08:07:34', '2018-07-22 08:07:34'),
(100, 'GregoryOrabs', '89910005177', 'chilaut@mail.ru', 'ася \r\nhttps://drive.google.com/file/d/1rwmlBM5wQWTu21h_IZuHOO-tr86dlhJQ/preview', '2018-07-22 13:34:02', '2018-07-22 13:34:02'),
(101, 'WilliamIdoth', '89910002187', '24701@ru.mcd.com', 'Отличная и дешёвая реклама Ваших товаров и услуг! \r\n \r\nРассылка Вашего сообщения в более чем 1 200 000 форм обратной связи России и СНГ \r\n \r\nЭто рассылка по формам с сайтов в разделе контакты, которые заполняются нашим роботом. \r\nДалее письмо с вашим коммерческим предложением приходит на контактный E-mail организации. \r\n \r\nПри рассылках через форму  каждый сайт отправляет сообщение «сам себе» и поэтому все письма приходят во входящие! \r\nТаким образом рассылка таким методом даст отличные результаты для рекламы Ваших товаров и услуг \r\n \r\n-Гарантии и отзывы и контроль рассылки \r\n-Скидка на рассылку 50% для первых пяти обратившихся – цена всего 3000 рублей за 1.2 млн сообщений! \r\n \r\nНе отвечайте на это сообщение со своего ящика электронной почты, так как оно создано автоматически и никуда не дойдёт! \r\nИспользуйте для связи \r\n \r\nКонтакты: sviazs@bk.ru   телеграмм: @form2018 Скайп: 2018form', '2018-07-22 19:43:35', '2018-07-22 19:43:35'),
(102, 'GregoryOrabs', '89910002378', 'www.fric-85@mail.ru', 'Кристиша \r\nhttps://drive.google.com/file/d/1Gh92BN5z6PLTIva1F78kqyhJUEgsPDZS/preview', '2018-07-23 14:43:51', '2018-07-23 14:43:51'),
(103, 'Robertslund', '327831673', 'online-to@rambler.ru', 'Приветствуем Вас! \r\nНа сегодняшний день Диагностическая карта Техосмотра - обязательный документ для получения полиса ОСАГО и КАСКО. \r\nНаша компания КУПИТЬ-ДК.РФ работает с 2012 года по России и обладает развитой сетью партнеров, включающих в себя более 250 организаций в 85 субъектах РФ. \r\nКУПИТЬ-ДК.РФ это сервис для оформления, регистрации и учета диагностических карт. \r\nЗа все время работы мы помогли оформить более 50 000 диагностических карт. \r\nМы законно оформляем диагностические карты всех категорий транспортных средств с внесением в базу ГИБДД ЕАИСТО всего за 10 минут. \r\nВсе наши ПТО имеют обязательную аккредитацию в Российском Союзе Автостраховщиков, следовательно все карты являются легитимными. \r\nОФОРМИТЕ ДИАГНОСТИЧЕСКУЮ КАРТУ ЗА 10 МИНУТ ОНЛАЙН НА САЙТЕ http://купить-дк.рф', '2018-07-24 04:54:05', '2018-07-24 04:54:05'),
(105, 'Francisflulk', '131454452', 'kulikovavvitoria@yandex.ru', 'Здравствуйте! \r\nМы – команда Effect, и сделали сервис, который позволяет объединить все современные каналы связи с клиентами, повысить лояльность клиентов и значительно повысить онлайн продажи. Он красивый, простой в использовании и намного лучше аналогов: \r\n1.	С нами вы никогда не пропустите ни одного обращения от клиентов. \r\n2.	Можно подключить неограниченное количество сайтов и других каналов, таких как: чат на сайте, вконтакте, facebook, telegram, viber, slack. \r\n3.	Мы сделали первую в мире кросс-интеграцию с корпоративным мессенджером Slack, благодаря которой вы можете молниеносно отвечать на сообщения клиентов из разных каналов связи, не переключаясь между чатом на сайте, соц. сетями и мессенджерами. \r\n4.	У нас есть мощная и абсолютно бесплатная версия, благодаря которой вы сможете увеличить онлайн продажи без дополнительных издержек на рекламу и другие инструменты. \r\nИскренне приглашаем вас присоединиться к нашему сервису https://effect.com/', '2018-07-26 00:30:25', '2018-07-26 00:30:25'),
(107, 'Richardfloft', '346342443', 'maslo.maslo.2018@bk.ru', 'Представляем Вашему вниманию Подсолнечное Масло сорт Премиум « Мамруковское» \r\nМасло производится  путём прессового отжима без использования химических растворителей. \r\nБез добавок пальмового, соевого и рапсового масла,  только классическое подсолнечное масло. \r\nПрезентация продукции - http://mamruk.ru/ \r\nДоставка по России  нашим автотранспортом. 100% качество и гарантия. ООО Мамруко \r\n8-800-600-52-88 \r\n8-928-474-27-64 \r\n8-918-223-53-26 \r\nMaslo@mamruk.ru', '2018-07-30 17:35:09', '2018-07-30 17:35:09'),
(108, 'JamesCooca', '312482328', 'bravito2018@mail.ru', 'Подавайте БЕСПЛАТНО объявления в любые категории и на любые темы на сайт бесплатных объявлений https://bravito.ru/  .Есть восстановление пароля. Сделали удобную мобильную версию. Бравито.ру \r\nИ да прибудет с нами Удача и Прибыль.', '2018-07-30 18:30:44', '2018-07-30 18:30:44'),
(109, 'JeffreyCathy', '147146248', 'alsxdaf1@gmail.com', 'Пять триллионов долларов вращается каждый день на валютном рынке Forex. В 2018 году каждый интернет-пользователь с уверенностью может себе позволить сделать грамотный «глоток» из рыночного потока и получить желаемую прибыль. Но не каждый готов вкладывать собственные средства. Мы предлагаем вам попробовать БЕСПЛАТНО. \r\nПолучите реальный бонус 10$ и попробуйте свои силы среди трейдеров на международном рынке обмена валют без собственных вложений! Никакого риска! Только цель к финансовому успеху. \r\nА еще, Бинарные опционы - просто прогнозируйте куда пойдет курс. Если слышали о криптовалютах - тоже пробуйте, это не страшно. \r\n \r\nhttp://welcomefx.ru  email partnerwf@gmail.com', '2018-07-31 05:36:48', '2018-07-31 05:36:48'),
(110, 'Briandueft', '+7(495) 3201735', 'v.boyarinov@corpinternet2018.ru', 'Добрый день. \r\n \r\nОт сотрудника вашей компании был сделан запрос на подключения высокоскоростного доступа в интернет. \r\nУ нас прервался звонок и мы не знаем на чей имейл отправить информацию о тарифах и сроках подключения. \r\n \r\nПросим вас передать ответственному сотруднику мои контакты для связи. \r\n \r\nНаши технические специалисты подтвердили возможность подключения доступа в интернет по вашему адресу. \r\n \r\nКуда вам отправить расценки? \r\n— \r\nВладимир Бояринов \r\nотдел подключений юридических лиц \r\nГруппа компаний «БИЗНЕС ТЕЛЕКОМ» \r\nмск: +7(495) 3201735 спб: +7 (812) 6121707 v.boyarinov@corpinternet2018.ru http://corpinternet2018.ru', '2018-08-02 10:41:56', '2018-08-02 10:41:56'),
(111, 'GregoryOrabs', '89910003352', 'nikos-trade@mail.ru', 'Нэркэс \r\nhttps://drive.google.com/file/d/1_M8uolRYioKoJsLlMc9TyL_Sn3eVfMd7/preview', '2018-08-03 05:37:29', '2018-08-03 05:37:29'),
(112, 'GregoryOrabs', '89910004532', 'nazarenkovasileva@mail.ru', 'Игорёша \r\nhttps://drive.google.com/file/d/14PKY6DTDHkU64LpR6ItZmGf861ijoia6/preview', '2018-08-04 05:19:46', '2018-08-04 05:19:46'),
(113, 'WilliamIdoth', '89910003062', 'kar-09@list.ru', 'Отличная и дешёвая реклама Ваших товаров и услуг! \r\n \r\nРассылка Вашего сообщения в более чем 1 200 000 форм обратной связи России и СНГ \r\n \r\nЭто рассылка по формам с сайтов в разделе контакты, которые заполняются нашим роботом. \r\nДалее письмо с вашим коммерческим предложением приходит на контактный E-mail организации. \r\n \r\nПри рассылках через форму  каждый сайт отправляет сообщение «сам себе» и поэтому все письма приходят во входящие! \r\nТаким образом рассылка таким методом даст отличные результаты для рекламы Ваших товаров и услуг \r\n \r\n-Гарантии и отзывы и контроль рассылки \r\n-Скидка на рассылку 50% для первых пяти обратившихся – цена всего 3000 рублей за 1.2 млн сообщений! \r\n \r\nНе отвечайте на это сообщение со своего ящика электронной почты, так как оно создано автоматически и никуда не дойдёт! \r\nИспользуйте для связи \r\n \r\nКонтакты: sviazs@bk.ru   телеграмм: @form2018 Скайп: 2018form', '2018-08-06 07:19:45', '2018-08-06 07:19:45'),
(114, 'GregoryOrabs', '89910002871', 'lastochkina1997@list.ru', 'Джамиля \r\nhttps://drive.google.com/file/d/1qZSPoQVbP2fouOhXhmIThJ5AozjMdfCF/preview', '2018-08-06 15:30:11', '2018-08-06 15:30:11'),
(115, 'WilliamIdoth', '89910001549', 'info@vetrova.net', 'Отличная и дешёвая реклама Ваших товаров и услуг! \r\n \r\nРассылка Вашего сообщения в более чем 1 200 000 форм обратной связи России и СНГ \r\n \r\nЭто рассылка по формам с сайтов в разделе контакты, которые заполняются нашим роботом. \r\nДалее письмо с вашим коммерческим предложением приходит на контактный E-mail организации. \r\n \r\nПри рассылках через форму  каждый сайт отправляет сообщение «сам себе» и поэтому все письма приходят во входящие! \r\nТаким образом рассылка таким методом даст отличные результаты для рекламы Ваших товаров и услуг \r\n \r\n-Гарантии и отзывы и контроль рассылки \r\n-Скидка на рассылку 50% для первых пяти обратившихся – цена всего 3000 рублей за 1.2 млн сообщений! \r\n \r\nНе отвечайте на это сообщение со своего ящика электронной почты, так как оно создано автоматически и никуда не дойдёт! \r\nИспользуйте для связи \r\n \r\nКонтакты: sviazs@bk.ru   телеграмм: @form2018 Скайп: 2018form', '2018-08-06 20:15:00', '2018-08-06 20:15:00'),
(116, 'GregoryOrabs', '89910003282', 'kondratieva-mariia@mail.ru', 'Айза \r\nhttps://drive.google.com/file/d/1TglLWpbkmHTP-ot4cfRpYE8zqEN9FEep/preview', '2018-08-07 05:43:33', '2018-08-07 05:43:33'),
(117, 'GregoryOrabs', '89910004855', 'aclamimam@mail.ru', 'Ино \r\nhttps://drive.google.com/file/d/1FUDEPFS2rUb9Iw8rrRzm_RJcPrw1mh7o/preview', '2018-08-08 06:31:37', '2018-08-08 06:31:37'),
(118, 'GregoryOrabs', '89910004696', 'marina.lazarchuk.83@mail.ru', 'Фаргат \r\nhttps://drive.google.com/file/d/13Dng4XrXJF5V0Hg_27USUlA5IZPl3wzL/preview', '2018-08-08 09:59:37', '2018-08-08 09:59:37'),
(119, 'GregoryOrabs', '89910000607', 'sergey1975.02@mail.ru', 'юка \r\nhttps://drive.google.com/file/d/1Xur_uKuH_FLUzZnwYCIxJnvk3BtdN2OK/preview', '2018-08-09 03:03:09', '2018-08-09 03:03:09'),
(120, 'Justinflith', '178821583', 'multimillioner2018@gmail.com', 'До розыгрыша $ 247 000 000 менее 48 час! Второй билет БЕСПЛАТНО, В ПОДАРОК!! \r\n \r\nВаши $247 000 000 здесь- http://r.lt25.ru/qx7AG \r\n \r\n-\"Мы думаем, что жизнь — это стайерский забег, а она, оказывается, — лотерея!\" \r\nАврелий Марков. \r\n \r\n-\"Чтобы выиграть в лотерее, надо иметь не только удачу, но и лотерейный билет\" \r\nДон-Аминадо \r\n \r\n\"Ты никогда не узнаешь, сколько у тебя близких и дальних родственников, \r\nсколько есть и было друзей детства, сколько сотрудников испытывают к тебе влечение, сколько мужиков пили с тобой на брудершафт, сколько \r\nдевушек мечтают выйти за тебя замуж, и вообще как сильно тебя любят все, тебя окружающие… Пока не выиграешь лотерею!\" \r\n \r\nЗаберите $247 000 000 здесь- http://r.lt25.ru/qx7AG \r\n \r\n \r\nС уважением к Вам и Вашему ДЕЛУ ! УДАЧА НЕ ЗА ГОРАМИ!', '2018-08-09 16:10:36', '2018-08-09 16:10:36'),
(122, 'GregoryOrabs', '89910005099', 'kalighatta@mail.ru', 'Дьулус \r\nhttps://drive.google.com/file/d/1pBcC4OH4zDvIY3jfKLHyKPcexqjIy2Dv/preview', '2018-08-10 07:43:38', '2018-08-10 07:43:38'),
(123, 'DavidTuh', '122214318', 'redwolf0550@gmail.com', 'Здравствуйте! \r\nЯ копирайтер, специализируюсь на написании текстов для  сайтов, бизнеса. \r\nЕсли Вы хотите увеличить продажи, то я смогу Вам в этом помочь. \r\nПерепишу и усилю тексты для сайта всего за 250р/1000знаков. \r\nПлюсы работы со мной; \r\n1.	я знаю, какие боли и проблемы  должен решать сайт, \r\n2.	10-летний опыт писателя помогает отрабатывать возражения клиентов, \r\n3.	 выведу Ваши сильные стороны в 100% преимущество. \r\n \r\nЧто вы получите: \r\nТексты, которые приведут клиентов. \r\n \r\nНапишите мне сегодня, и я добавлю бонус. \r\nP. S. \r\nЕсли Вы сомневаетесь, подумайте, сколько клиентов теряете сейчас? \r\n \r\nweb.writer.65@gmail.com', '2018-08-10 11:40:57', '2018-08-10 11:40:57'),
(125, 'GregoryOrabs', '89910001262', 'amosova.77@mail.ru', 'маримьяна \r\nhttps://drive.google.com/file/d/1Q7IXJSq0Wn_GikoTMfSJvxDSvqLas7Po/preview', '2018-08-10 17:28:09', '2018-08-10 17:28:09'),
(126, 'GregoryOrabs', '89910003131', 'petr-cook@mail.ru', 'Жорик \r\nhttps://drive.google.com/file/d/1kHECMkTLjdzyiAgaAZHeFB4eejgsESw1/preview', '2018-08-11 15:27:58', '2018-08-11 15:27:58'),
(127, 'GregoryOrabs', '89910000660', 'agrus28@mail.ru', 'Разиф \r\nhttps://drive.google.com/file/d/1SxTIy27X2j7Qbam4FzNdYRejw_vVE86P/preview', '2018-08-12 11:37:31', '2018-08-12 11:37:31'),
(128, 'GregoryOrabs', '89910000666', 'nykte@mail.ru', 'наша \r\nhttps://drive.google.com/file/d/1LkfmYR0VzMJaKEcMzMmwWFawsTuWF0JR/preview', '2018-08-12 16:38:45', '2018-08-12 16:38:45'),
(129, 'Derekmuh', '117316747', 'ina_kudryashov28@mail.ru', 'Oкажу помощь в подборе пaроля к чужому почтовомy аккаунту \r\n \r\nВремя исполнения: от 3x часов до 3 дней \r\n \r\nПaрoль НЕ изменяется, т.е. остаётся тем же, что использует владелец ящика. \r\n \r\nПредоплату НЕ беру, оплата производится только по факту выполнения работы. \r\n \r\nДоказательства выполнения работы: Фото почты ( писем ) / читаю и цитирую вам ваше письмо посланное на почту. \r\n \r\nРасценки Мaил/лиcт/бк/инбoкс: 5000 рублей/ Яндекс 12 000р. + Корпоративные. \r\n \r\nТак же пробив данных/детализация звонков/доступ в личный кабинет билайн мтс ТЕЛЕ2 Мегафон \r\n \r\nДля связи писать: uslugiopen3 @ gmail. com ( пробелы стереть )', '2018-08-13 07:40:59', '2018-08-13 07:40:59'),
(130, 'WilliesFeree', '86515136545', 'filipkwak@op.pl', 'Downloads music club Dj\'s, mp3 private server. \r\nPrivate FTP Music/Albums/mp3 1990-2018: \r\nhttp://0daymusic.org/premium.php \r\n \r\nPlan A: 20 EUR - 200GB - 30 Days \r\nPlan B: 45 EUR - 600GB - 90 Days \r\nPlan C: 80 EUR - 1500GB - 180 Days \r\n \r\nBest Regards, \r\nRobert', '2018-08-13 18:39:40', '2018-08-13 18:39:40'),
(132, 'GregoryOrabs', '89910001855', 'nuraliadamkulov@mail.ru', 'Афина \r\nhttps://drive.google.com/file/d/1fhtwULvff7MCm05m7-uQDPX1eYSuZ9rd/preview', '2018-08-13 20:53:17', '2018-08-13 20:53:17'),
(133, 'Wesleyped', '111351717', 'rti@rti-spb.com', 'Отправка Вашего сообщения в более чем 1 200 000 форм обратной связи России \r\n \r\nЭто отправка по формам с сайтов в разделе контакты, которые заполняются нашим роботом. \r\nДалее письмо с вашим предложением приходит на контактный E-mail организации. \r\n \r\nПри отправку через форму  каждый сайт отправляет сообщение «сам себе» и поэтому все письма приходят во входящие! \r\n \r\nНе отвечайте на это сообщение со своей электронной почты, так как оно создано автоматически и никуда не дойдёт! \r\nКонтакты: \r\n \r\nКонтакты: http://form2018.ru sviazs@bk.ru   телеграмм: @form2018 Скайп: 2018form', '2018-08-15 00:48:00', '2018-08-15 00:48:00'),
(134, 'GregoryOrabs', '89910001508', 'georgii_riskov@mail.ru', 'панюха \r\nhttps://drive.google.com/file/d/1PruQE6gWaFfT-SQNnn2Pg8kyqnE0YOd1/preview', '2018-08-15 13:47:59', '2018-08-15 13:47:59'),
(135, 'DavidDef', '168273764', 'lifepr@yandex.ru', 'Добрый день! Меня зовут Алексей - компания LIFEPR. https://www.lifepr.ru/ \r\n \r\nМы организуем обучающий семинар на тему: Как расходы организации превратить в доходы? (Увеличить приход компании на сумму расхода). Мы научим легко и просто увеличить оборот на 20-80% (в зависимости от сферы бизнеса) без серьезных усилий. \r\n \r\nСеминар бесплатный. На нем будет несколько директоров которые используют наш метод. Можно будет посмотреть на них и задать вопросы. \r\nБлижайший семинар пройдет 25 сентября в Санкт-Петербурге по адресу Тиванова д. 18 \r\nЧитать семинар будет серийный бизнесмен ЕВГЕНИЙ ДАНИЛОВ \r\n \r\nВАС ЖДЕТ ПРИЯТНАЯ АТМОСФЕРА, ЛЕГКИЕ ЗАКУСКИ (все за наш счет). \r\n \r\nНИКАКИХ МЕНЕДЖЕРОВ, РЕКЛАМЩИКОВ И ПРОЧИХ ЛИЧНОСТЕЙ. \r\n \r\nНа семинар допускаются ТОЛЬКО ДИРЕКТОРА КОМПАНИЙ. \r\n \r\nЕсли вас заинтересовал семинар. Прошу в ответном письме написать ФИО, телефон и email и занимаемую должность. \r\n \r\nТак же можно задать любые интересующие вас вопросы. \r\n \r\nС уважением Алексей \r\nlifepr@yandex.ru', '2018-08-15 18:13:56', '2018-08-15 18:13:56'),
(136, 'GregoryOrabs', '89910003213', 'newgenerationpc@mail.ru', 'маринка \r\nhttps://drive.google.com/file/d/17CyZg6W3jUAwBdmzvAQKM5wOxzXll9i9/preview', '2018-08-15 21:36:54', '2018-08-15 21:36:54'),
(137, 'RobertCrady', '354415284', 'e.zadorstroi@rambler.ru', 'Доброго времени суток! \r\n \r\nУстали ждать результат от SEO? Доход от контекстной рекламы не радует? \r\n \r\nПредлагаем трафик с дорвеев по вашему направлению с оплатой за переход. \r\nЦена за клик меньше, чем в Яндекс.Директ, результат быстрее, чем SEO! \r\nТакже возможна работа за сами дорвеи, а не трафик. \r\n \r\nДля того чтобы начать получать клиентов по низким ценам обращайтесь по нашим контактам ниже. \r\nСтоимость одного перехода от 50 коп. в зависимости от направления вашего бизнеса. \r\n \r\nПодробнее на сайте: http://zadorstroi.ru/ \r\nНаш скайп: live:zadorstroi \r\nНаш емаил: zadorstroi@mail.ru \r\nНаш телеграм: @zadorstroi', '2018-08-17 05:03:13', '2018-08-17 05:03:13'),
(138, 'GregoryOrabs', '89910003273', 'artemeva1956@list.ru', 'лаврюха \r\nhttps://drive.google.com/file/d/1BeDhyVxAloAf2amv0hGLwLHRVPmUVoZT/preview', '2018-08-17 10:19:30', '2018-08-17 10:19:30'),
(140, 'GregoryOrabs', '89910001024', 'slipchenkoalbinskaya@mail.ru', 'кося \r\nhttps://drive.google.com/file/d/1xktTzMPLwKKUs5nk8bX8H2GsC9PPdXA4/preview', '2018-08-19 08:40:24', '2018-08-19 08:40:24'),
(141, 'GregoryOrabs', '89910000292', 'boksbergerg@mail.ru', 'таися \r\nhttps://drive.google.com/file/d/1Pyzo6vnuoJHgYz8__0w4R-JFOuf-u8p3/preview', '2018-08-19 12:36:22', '2018-08-19 12:36:22'),
(142, 'GregoryOrabs', '89910003446', 'eva56757@mail.ru', 'Арс \r\nhttps://drive.google.com/file/d/1M6PW7HLV1e4uk8jRHgIyrffNpSQG6RI2/preview', '2018-08-20 08:53:38', '2018-08-20 08:53:38'),
(143, 'JeromeEtEfs', '214618847', 'tarrentino92@mail.ru', 'Здравствуйте, уважаемая администрация сайта! \r\n \r\nНаверняка, вы тратите значительные денежные средства на продвижение вашего проекта и не всегда результат от покупки рекламы соответствует вашим ожиданиям. \r\n \r\nМы хотели бы предложить вам инновационный способ донесения рекламной информации вашим потенциальным клиентам, при котором ваша реклама будет показана непосредственно на дисплеях гаджетов людей - на ноутбуках или смартфонах. \r\n \r\nЕсли это предложение вас заинтересовало и вы хотели бы ознакомиться с ним более детально, перейдите по этой ссылке https://goo.gl/U3bfvU \r\n \r\nЕсли же вам это неинтересно - просто проигнорируйте эту информацию. \r\n \r\nНо, в любом случае, мы благодарны вам за то, что вы потратили своё время на прочтение этого письма. \r\n \r\nУспехов!', '2018-08-21 01:28:54', '2018-08-21 01:28:54'),
(144, 'Danielrew', '171586683', 'sale@avtoavaria9.ru', 'Здравствуйте, уважаемый администратор сайта! \r\n \r\nЕсли у Вас есть автомобиль, Вам следует учесть, что повышенный уровень опасности с угрозой аварии для Вас возникает в среднем 5-6 раз в году. Даже Ваш опыт не спасает от опасных ошибок других водителей. \r\n \r\nПредлагаем Вам программу \"TutboStar Avto\", которая решает лично для Вас три задачи: \r\n \r\n1). Рассчитает и наглядно покажет аварийно-опасные периоды с указанием возможных причин опасностей. Глубина прогноза - на четыре месяца вперед. \r\n \r\n2). Поможет Вам выбрать самое удачное время для обращения в автосервис. Программа реально сэкономит Вам время, деньги и нервы! \r\n \r\n3). Укажет Вам наилучшие периоды времени как для покупки, так и для продажи машины. \r\n \r\nЕсли это предложение вас заинтересовало и вы хотели бы ознакомиться с ним более детально, перейдите по этой ссылке http://avtoavaria9.ru \r\n \r\nЕсли же вам это неинтересно - просто проигнорируйте эту информацию. \r\n \r\nУспехов!', '2018-08-21 22:16:54', '2018-08-21 22:16:54'),
(146, 'Jerrelldig', '252384572', 'snoob5656@gmail.com', 'Здравствуйте! \r\nЯ копирайтер, специализируюсь на написании текстов для  сайтов, бизнеса. \r\nЕсли Вы хотите увеличить продажи, то я смогу Вам в этом помочь. \r\nПерепишу и усилю тексты для сайта всего за 200р/1000знаков. \r\nА также предлагаю готовый, современный сайт под ключ. От профессионала. \r\nС последующим  полным продвижением. \r\nСайт, разработанный по условиям SEO, с выстроенным семантическим ядром, структурой и готовым контентом на сайте. \r\n \r\nP. S. \r\nЕсли Вы сомневаетесь, подумайте, сколько клиентов теряете сейчас? \r\n \r\nworkteamworld@gmail.com', '2018-08-24 14:56:17', '2018-08-24 14:56:17'),
(148, 'GregoryOrabs', '89910003983', 't.n.belova@mail.ru', 'аидка \r\nhttps://drive.google.com/file/d/1RdOwjSLL1m_uD5pjxwG3wEJ9cXs5SHcr/preview', '2018-08-25 01:15:07', '2018-08-25 01:15:07'),
(149, 'GregoryOrabs', '89910002894', 'bayer.a@inbox.ru', 'Іннуся \r\nhttps://drive.google.com/file/d/1jgU3jdCUstI7AhteJUrDW1N8p_ndmR8M/preview', '2018-08-25 04:20:11', '2018-08-25 04:20:11'),
(150, 'GregoryOrabs', '89910005177', 'marina-osokina@mail.ru', 'Рияз \r\nhttps://drive.google.com/file/d/1yUDYk5pMj58ClgSxYmYjWezEx9fhgHN2/preview', '2018-08-25 20:51:59', '2018-08-25 20:51:59'),
(151, 'GregoryOrabs', '89910000864', 'bishitsugi1977@mail.ru', 'викуша \r\nhttps://drive.google.com/file/d/1NsfZJfSIoC49YoCrX-IzVKGVAmKNyIWe/preview', '2018-08-26 15:38:19', '2018-08-26 15:38:19'),
(152, 'GregoryOrabs', '89910000155', 'iuliia.gurienko@mail.ru', 'Калина \r\nhttps://drive.google.com/file/d/1c8unnJ6bQDjKvL8dXnL6IMiJV3Bt8hdR/preview', '2018-08-27 00:51:29', '2018-08-27 00:51:29'),
(153, 'GregoryOrabs', '89910004067', 'sodi.ant@mail.ru', 'Алина \r\nhttps://drive.google.com/file/d/1-0rdmgVZfU7DjUSMVq2q4fiFDDxImQXh/preview', '2018-08-28 20:46:54', '2018-08-28 20:46:54'),
(154, 'GregoryOrabs', '89910003810', '86_abas@mail.ru', 'Алехандро \r\nhttps://drive.google.com/file/d/19FTkzSIUfFVP3ei9wktQNvoZdKGmvaAy/preview', '2018-08-29 17:23:20', '2018-08-29 17:23:20'),
(155, 'GregoryOrabs', '89910000539', 'rgdjess@mail.ru', 'светланка \r\nhttps://drive.google.com/file/d/1M3f2roxT24lOnvAneO5hysIouRJJpmRL/preview', '2018-08-29 20:58:47', '2018-08-29 20:58:47'),
(157, 'Rolandas', '867764482', 'Sartys.rolandas@gmail.com', 'Labas ar būtų galima inesus 50%likusis suma išsimokėtinai. Ant 2-5metu.', '2018-09-06 10:04:45', '2018-09-06 10:04:45'),
(159, 'Mindaugas', '862114178', 'mindaugasbarvydas@gmail.com', 'Laba diena, norėjau pasiteirauti 3 kambarių butų kainos kokios yra pas Jūsų parduodamuose butuose?', '2018-09-07 09:36:36', '2018-09-07 09:36:36'),
(160, 'Mariociz', '272271177', 'indoortv_sp@mail.ru', 'Добрый день! \r\nПредлагаю вам размещение рекламы  на наших носителях IndoorTV \r\nCеть IndoorTV  - это более 310 локаций в Москве и 29 городах РФ (более чем 1350 носителей). В числе объектов трансляции IndoorTV – кинотеатры, рестораны/кафе/бары, салоны красоты, фитнес клубы, жилые комплексы, мед. учреждения, объекты Москва СИТИ, ВУЗы. \r\nСреднее количество уникальных посетителей по сети – более 5,5 млн. человек в месяц. \r\nБлижайший  старт размещения возможен 21 сентября. \r\nВарианты пакетных предложений и примеры размещения рекламы клиентов – \r\nhttp://successfulproject.ru/stock/2018/07/25/aktsii_209.html \r\n \r\nБуду рад сотрудничеству. \r\nС уважением, Артем \r\nтел.: +7 (495) 769 9339 \r\ne-mail: ap@successfulproject.info', '2018-09-12 22:45:54', '2018-09-12 22:45:54');
INSERT INTO `mails` (`id`, `name`, `tel`, `email`, `text`, `created_at`, `updated_at`) VALUES
(163, 'Jamesdak', '333637476', 'bna527@yandex.ru', 'День добрый! \r\nОт Вас не пришли закрывающие документы от счета №161/12. \r\nОтправьте пожалуйста оригиналы почтой России, копию на Наш электронный ящик. \r\nОтправляю карточку предприятия. \r\nhttp://bitly.com/2NGXJKT \r\nС уважением, \r\nБухгалтер ОАО \"АльфаТраст\"', '2018-09-13 22:14:56', '2018-09-13 22:14:56'),
(164, 'AAllestetalm', '88153467744', 'oshaewooze@fastmailforyou.net', 'Poids est comment dur  votre sang pousse contre les parois de vos arteres lorsque votre coeur  determination  pompe le sang. Arteres sont les tubes qui transportent  perseverent b gerer offre sang loin de votre coeur. Chaque  culture  votre coeur  bat, il pompe le sang  par de  vos arteres a la  vacances  de votre corps. \r\nhttps://www.cialispascherfr24.com/cialis-moins-cher-marseille/', '2018-09-22 11:16:37', '2018-09-22 11:16:37'),
(165, 'Arturas', '+37062549730', 'arturas.kristutis@gmail.com', 'Laba diena,\r\n\r\nnorėčiau gauti daugiau informacijos apie kotedžus Klemiškėse. Kainos, apdailos tipai, ar suteikiama garantija? Dėkui už atsakymą.', '2018-10-02 04:07:16', '2018-10-02 04:07:16'),
(171, 'Mediterranean', '18659830326', 'ty2dabuzz@gmail.com', 'Hi Look what we have for you! - A pleasant surprise of $/€ 1600 welcome bonus \r\n Just click on the link below to qualify  \r\nhttp://bit.ly/2LZZ5Mm', '2018-10-17 00:56:39', '2018-10-17 00:56:39'),
(172, 'Olivercleli', '156156246', 'romanzov77@mail.ru', 'Ciao! \r\nLook at \r\nan interesting \r\noffer for you. \r\n \r\nhttp://bit.ly/2PFz5Ip', '2018-10-20 17:58:54', '2018-10-20 17:58:54'),
(173, 'Justina', '865427398', 'judirzsiute@gmail.com', 'Laba diena, norėjau sužinoti apie butų ir kotedžų kvadrato kainą ir su kokia apdaila pardavinėjate?', '2018-10-21 12:27:15', '2018-10-21 12:27:15'),
(174, 'RandyWaics', '354877637', 'elena23_72@mail.ru', 'Good day! \r\nBehold is  \r\nan interesting \r\noffering for you. \r\n \r\nhttp://digig.datedreamon.com/?utm_source=5bcdf3f8d2f30', '2018-10-23 03:15:15', '2018-10-23 03:15:15'),
(175, 'DanielGow', '161776558', 'mihailov50@mail.ru', 'Ciao! Here is  an amazing offering for you. \r\n \r\nhttp://bit.ly/2EIBiSv', '2018-10-26 07:58:02', '2018-10-26 07:58:02'),
(176, 'CarlosDiz', '232431433', 'saule22071972@mail.ru', 'Hello! Please note an interesting offer for you. \r\n \r\nhttp://bit.ly/2EMa8tM', '2018-10-31 00:50:54', '2018-10-31 00:50:54'),
(177, 'Davidvetty', '262656858', 'info@byggvito.se', 'Hello! Behold is  an interesting offering for you. \r\n \r\nhttp://bit.ly/2qkN0Zh', '2018-11-04 21:58:21', '2018-11-04 21:58:21'),
(178, 'hanger', '14231284281', 'victor@impulstv.com', 'Good day! Please note nice present - the excellent collection of world’s top slots, roulette and blackjack games  Are you in?  http://bit.ly/2J7YNTu', '2018-11-07 08:06:35', '2018-11-07 08:06:35'),
(179, 'HubertHoime', '354515838', 'kontakt@remaxsverige.se', 'Hey Good news ! an amazingoffer \r\n Just click on the link below to qualify  \r\n \r\nhttp://facebook.topratinglist.com?16224', '2018-11-08 16:15:37', '2018-11-08 16:15:37'),
(180, 'Barrydus', '132578787', 'mats.forssen@attraktor.se', 'Hey What we behave here is , an unpropitiousoffers \r\n Straight up click on the log-jam answerable to the bronze knick-knacks to modify  \r\n \r\n \r\nhttps://drive.google.com/file/d/18n9VsL1F3v2T4uMNeVMEud0XkHdnSrBZ/preview', '2018-11-09 21:05:52', '2018-11-09 21:05:52'),
(181, 'Barrydus', '132578787', 'webmaster@brfkruthuset.se', 'Look what we airtight against you! an awesomeoffers \r\n Are you in?  \r\n \r\n \r\nhttps://drive.google.com/file/d/1QqRZpWk_6Y6LzoFTqKVeYY8Ip92oBcHS/preview', '2018-11-11 00:49:46', '2018-11-11 00:49:46'),
(182, 'Charlesmogma', '338344288', 'trafik@demokraterna.se', 'Hey What we have here is , an amazingoffering \r\n To qualify click on the link below  \r\n \r\nhttps://drive.google.com/file/d/1NqriEjOQA7AvbzMlIJPrAY9ELPI65sFa/preview', '2018-11-13 08:55:36', '2018-11-13 08:55:36'),
(183, 'Charlesmogma', '338344288', 'info@skrothandlarn.se', 'Hey What we have here is , an amazingoffer \r\n Just click on the link below to qualify  \r\n \r\nhttps://drive.google.com/file/d/18LSLPMMp1TOGKDjwhQfkVBuT9IyRxxWO/preview', '2018-11-13 16:15:41', '2018-11-13 16:15:41'),
(184, 'Charlessek', '284358758', 'jalle.ale@telia.com', 'Hi Good news ! an interestingoffers \r\n To qualify click on the link below  \r\n \r\nhttps://drive.google.com/file/d/12XDDAO8skVOJDl9HBUh4Pru-LkN9_yHn/preview', '2018-11-16 15:07:10', '2018-11-16 15:07:10'),
(185, 'Tylerequat', '211385531', 'info@duotex.se', 'Hi an importantoffers \r\n Just click \r\n \r\nhttps://drive.google.com/file/d/1G-jPrx2wck9mCbVdTU1B7PpMt3Izlat6/preview', '2018-11-21 13:34:55', '2018-11-21 13:34:55'),
(186, 'Xerophyllum', '18482353581', 'usaf21huff@yahoo.com', 'Ciao! Please note a good offers - Join us now, and we will double or even triple your first deposit.  Just click on the link below to qualify. http://bit.ly/2Jadnd0', '2018-11-23 17:42:29', '2018-11-23 17:42:29'),
(187, 'ClieeSer', '+79169295582', 'hcmhtm4283@yahoo.com', 'Ar norite kazko naujo? Pazvelkite i sia svetaine. Tik cia mergaiciu pasirinkimas kiekvienam skoniui ir visiskai nemokamas! Jie yra klusni vergai, jie padarys viska, ka sakysi!  \r\nhttps://rebrand.ly/governy#X68', '2018-11-24 23:19:22', '2018-11-24 23:19:22'),
(188, 'PatrickReesk', '111677282', 'info@banhmitruck.se', 'Hi What we trick here is , an significantoffering \r\n Unbiased click \r\n \r\n \r\nhttp://bit.ly/2jxP3G6', '2018-12-02 06:46:43', '2018-12-02 06:46:43'),
(189, 'Jameshax', '153287857', 'info@csa.se', 'Hi What we have here is , an interestingoffer \r\n Just click on the link below to qualify  \r\n \r\nhttp://bit.ly/2wpxlh8', '2018-12-06 05:08:38', '2018-12-06 05:08:38'),
(190, 'porebski', '19364784358', 'victor.alex.ander@hotmail.com', 'Hello! Please note a good bonus - Deposit now $/€ 10 - and you will be able to play with  $/€ 20 or even $/€ 30.  Try and be our next winner. http://bit.ly/2J9tpEj', '2018-12-11 12:03:35', '2018-12-11 12:03:35'),
(191, 'JimmieQuise', '132837682', 'info@oticon.pl', 'Hy there,  What we mislead here is , an consequentialdole \r\n Are you in?  \r\n \r\n \r\nhttp://bit.ly/2PvPsX1', '2018-12-13 03:33:27', '2018-12-13 03:33:27'),
(192, 'Michaelslode', '164453632', 'info@streamingbolaget.se', 'Hi Look what we probable looking with a landscape you! an agreeableoffers \r\n Principled click on the bond care of to limit  \r\n \r\n \r\nhttp://bit.ly/2UzqM3R', '2018-12-16 15:37:40', '2018-12-16 15:37:40'),
(193, 'KeithLooth', '133828577', 'apertureyoga@gmail.com', 'an attractivetender \r\n Lawful click \r\n \r\n \r\nhttp://bit.ly/2rOJ1Vy', '2018-12-21 00:46:59', '2018-12-21 00:46:59'),
(194, 'Alfredoled', '318488843', 'asfbutik@gmail.com', 'Hey an pressingassemble up despatch \r\n Are you in?  \r\n \r\n \r\nhttp://bit.ly/2rI734O', '2018-12-24 03:26:20', '2018-12-24 03:26:20'),
(195, 'AlbertoArilm', '111717551', 'vero.galpin@gmail.com', 'Impartiality a possessions hearsay ! a amercementinstead of the repeatedly being \r\n High-minded click on the affiliation distress of the brown to mitigate  \r\n \r\n \r\nhttp://bit.ly/2EKkuc7', '2018-12-27 16:54:56', '2018-12-27 16:54:56'),
(196, 'Raymondnuh', '358324146', 'lnt.agentartistique@gmail.com', 'Hi What we hoax here is , an weirddonation \r\n Unsmiling up and down click on the log-jam subordinate to to train  \r\n \r\n \r\nhttps://drive.google.com/file/d/14hjkQgCKrTtHeOJ_NfbVadNMkYaNvZSE/preview', '2018-12-31 14:15:43', '2018-12-31 14:15:43'),
(197, 'DonaldBub', '177234346', 'santandergroup88@gmail.com', 'Hy there,  Good news ! an interestingoffering \r\n Just click \r\n \r\nhttps://drive.google.com/file/d/1FI7pLJNGhrTJfREfXT-RLpcJCMZXFfRV/preview', '2019-01-10 12:22:16', '2019-01-10 12:22:16'),
(198, 'Jamesslers', '151671634', 'bearknits53@gmail.com', 'Hi Look what we have for you! niceoffering \r\n Are you in?  \r\n \r\nhttp://servicerubin.ru', '2019-01-14 16:59:40', '2019-01-14 16:59:40'),
(199, 'Edmundnus', '346312557', 'ckmobilemechanics@gmail.com', 'Hi Look what we contain on the side of you! a credibleoffers \r\n To qualify click on the interdependence couple below    http://bit.ly/2SVo7QA', '2019-01-20 20:56:42', '2019-01-20 20:56:42'),
(200, 'Tungusic', '17208143210', '198213130@bk.ru', 'Hello! Look at nice present - A pleasant surprise of $/€ 1600 welcome bonus.  Try and be our next winner. http://bit.ly/2ypcauo', '2019-01-23 17:56:00', '2019-01-23 17:56:00'),
(201, 'Williamtut', '255572767', 'cubwaitinglist@gmail.com', 'Hey Tolerable telecast ! a nicepresent \r\n Good click   http://bit.ly/2S8ryWU', '2019-01-24 15:23:47', '2019-01-24 15:23:47'),
(202, 'Indre', '860271717', 'Indresre@gmail.com', 'Sveiki, mus domina Jūsų kotedžai, matėme turite ir mažesnių - iki 100kv., bet vistiek 3 miegamųjų. Kokią kainą siūlote už kv.m. ir ar yra galimybė įsigyti su pilna apdaila? Kaip keičiasi kvadratinio metro kaina tokiu atveju? Ar turite kažkokių pasiūlymų pirkimui be pradinio įnašo, kaip rent2buy ar kitų variantų, kurie dabar populiarėja?', '2019-01-28 14:46:06', '2019-01-28 14:46:06'),
(205, 'Roberthog', '133516435', 'ahawleywbs@gmail.com', 'Hey What we acquire here is , an consequentialdonation \r\n To qualify click on the tie up lower than beneath    http://bit.ly/2SaPtFy', '2019-01-29 00:16:55', '2019-01-29 00:16:55'),
(206, 'Roberthog', '133516435', 'alextmcelroy@gmail.com', 'Hi What we have here is , an high-rankingpresent \r\n Are you in?    http://bit.ly/2S3ZiER', '2019-02-01 18:24:25', '2019-02-01 18:24:25'),
(207, 'Roberthog', '133516435', 'omkbryant@gmail.com', 'Hy there,  Look what we require for you! delightfullyoffers \r\n Just click   http://bit.ly/2S3uzbb', '2019-02-05 19:35:45', '2019-02-05 19:35:45'),
(208, 'JosephTailm', '357522284', 'ghinilambor700@yahoo.com', 'Hello! \r\n \r\nWe spend third part of our lives at work. How to spend this time with benefit? \r\n \r\nYou can grow bitcoins by 10% spending 5 minutes a day! \r\nQuicker than a cup of coffee \r\n \r\nhttp://dcbtc.info increases bitcoins by 10% in 48 hours. \r\nYou will automatically make a profit on your bitcoin wallet. \r\n \r\nStart participating and make a profit! \r\nGuaranteed by the blockchain technology!', '2019-02-14 08:36:27', '2019-02-14 08:36:27'),
(209, 'Matruinia', '81147181454', 'mattant@wmaill.site', 'Achat Vardenafil  <a href=http://ordercheapvia.com>viagra</a> Cialis Ou Viagra Prix Levitra Generika Online', '2019-02-19 13:37:55', '2019-02-19 13:37:55'),
(210, 'Reda', '860929255', 'reda3792@gmail.com', 'Laba diena, domina 3 kambarių butų kainos.', '2019-02-25 10:57:12', '2019-02-25 10:57:12'),
(213, 'EllClep', '83291466189', 'ellUndins@zmail.website', 'Comprar Cytotec En Estados Unidos  <a href=http://levitab.com>eastern canada pharmacy for levitra</a> Dove Acquistare Cialis Originale Where To Buy Erectile Dysfunction Pills Buy Lexapro India', '2019-02-27 08:29:30', '2019-02-27 08:29:30'),
(214, 'Ophiurida', '12035237342', 'content@techgroup.top', 'Hi! \r\nHQ Engaging Content For Your Site & Social Media!!  http://bit.ly/2NBPJZc \r\nSorry to bother you.', '2019-03-02 23:26:32', '2019-03-02 23:26:32'),
(215, 'Robertbials', '213245362', '%20keepgolfreal@gmail.com', 'Hi What we accept here is , an remarkableoblation \r\n Reasonable click on the component underneath to prepare  \r\n \r\nhttp://servicerubin.ru', '2019-03-03 11:26:17', '2019-03-03 11:26:17'),
(216, 'Rogercrits', '285133677', 'emlyn.parry1941@gmail.com', 'Confirm that you are not a robot, and learn how to earn $ 1000 a day \r\nhttp://guide-traveler.ru', '2019-03-04 03:22:14', '2019-03-04 03:22:14'),
(218, 'MalcolmRet', '342236473', 'formforsome@yandex.ua', 'Hello! \r\n \r\nI guess, me and you spend third part of our lives at work)) \r\nMaybe It help us to spent this time with benefit. \r\n \r\nSo my friend told me about way to make + 10% in just 5 minutes a day. Quicker than a coffee break \r\n \r\nIt is blockchain technology. \r\n \r\nPlease look on it  http://dc-btc.pro  and tell me what you think \r\nIt says +10% each other day and aytomaticall payout. \r\n \r\nWaiting for your reply!', '2019-03-09 08:59:23', '2019-03-09 08:59:23'),
(219, 'Eddieunido', '276612436', 'katyemet@gmail.com', 'Confirm that you are not a robot, and  Look at a goodgift for victory. http://bit.ly/2EP5fyj', '2019-03-09 23:16:38', '2019-03-09 23:16:38'),
(220, 'Franklat', '341434818', 'alex.m2s@mail.ru', 'Ar norite kazko naujo? Pazvelkite i sia svetaine. Tik cia mergaiciu pasirinkimas kiekvienam skoniui ir visiskai nemokamas! Jie yra klusni vergai, jie padarys viska, ka sakysi!  \r\nhttps://governy.shortcm.li/governor#y4', '2019-03-15 07:05:11', '2019-03-15 07:05:11'),
(229, 'Kevininhep', '83191766784', 'frame53166@gmail.com', 'Hey, \r\n \r\nThat\'s quite an stunning website I\'ve got into, while was surfing a web. Nothing much, just some <a href=http://www.besthomemadepornsites.com/>ametuer home porn</a>  found :) \r\n \r\nBye!', '2019-03-30 06:43:45', '2019-03-30 06:43:45'),
(230, 'JamesAvoiz', '264212876', 'pete-gvm-affiliate@gmail.com', 'My name is Pete and I want to share a proven system with you that makes me money while I sleep! This system allows you to TRY the whole thing for F R E E for a whole 30 days! That\'s right, you can finally change your future without giving up any sensitive information in advance! I signed up myself just a while ago and I\'m already making a nice profit. \r\n \r\nIn short, this is probably the BEST THING THAT EVER HAPPENED TO YOU IF YOU TAKE ACTION NOW!!! \r\n \r\nIf you\'re interested in knowing more about this system, go to http://globalviralmarketing.com/?ref=qkgWOPkN5RoC1NWh and try it out. Again, it’s FREE! \r\n \r\nYou can thank me later \r\n \r\n/Pete', '2019-04-10 16:56:24', '2019-04-10 16:56:24'),
(231, 'Jamessit', '266416821', 'cgorillamail@gmail.com', 'Hi, \r\n \r\nI\'ve been visiting your website a few times and decided to give you some positive feedback because I find it very useful. Well done. \r\n \r\nI was wondering if you as someone with experience of creating a useful website could help me out with my new site by giving some feedback about what I could improve? \r\n \r\nYou can find my site by searching for \"casino gorilla\" in Google (it\'s the gorilla themed online casino comparison). \r\n \r\nI would appreciate if you could check it out quickly and tell me what you think. \r\n \r\ncasinogorilla.com \r\n \r\nThank you for help and I wish you a great week!', '2019-04-19 01:33:24', '2019-04-19 01:33:24'),
(232, 'LouisOvabs', '383772863', 'svetlanacol0sova@yandex.ua', 'Grow your bitcoins by 10% per 2 days. \r\nProfit comes to your btc wallet automatically. \r\n \r\nTry  http://bm-syst.xyz \r\nit takes 2 minutes only and let your btc works for you! \r\n \r\nGuaranteed by the blockchain technology!', '2019-04-19 06:43:41', '2019-04-19 06:43:41'),
(233, 'Cherienew', '83512868781', 'melody_fan@gmail.com', 'Hello, I want to work in your company on a voluntary basis, can you offer me anything? \r\na little about me:https://about.me/alexa.smith', '2019-04-23 07:09:45', '2019-04-23 07:09:45'),
(234, 'Harlansoupe', '147337462', 'gunrussia@scryptmail.com', '25 charging traumatic pistols shooting automatic fire! Modified Makarov pistols with a silencer! Combat Glock 17 original or with a silencer! And many other types of firearms without a license, without documents, without problems! \r\nDetailed video reviews of our products you can see on our website. \r\nhttp://gunrussia.pw/ \r\nIf the site is unavailable or blocked, email us at - Gunrussia@secmail.pro   or  Gunrussia@elude.in \r\nAnd we will send you the address of the backup site!', '2019-04-28 15:39:06', '2019-04-28 15:39:06'),
(235, 'Gvidas Zdanavicius', '+370 609 01138', 'p18.projektai@bikuva.lt', 'Sveiki,\r\n \r\nPrekybos tinklas “Bikuva” ieško naujų klientų, partnerių. Mūsų parduotuvių tinklas gali pasiūlyti visą statybinių ir ne tik, prekių asortimentą mažiausiomis kainomis ir pristatyti aplink Klaipėda 100 km(objektą). Tad jei statote, renovuojate aplink Klaipėdą namus, domina kokybė ir gera kaina, rašykite ar skambinkite su kainų užklausa.Visada rasime palankų kompromisą jūsų atžvilgiu! Geriausios kainos derinamos tiesiogiai su manimi.\r\n \r\nPagarbiai,\r\n\r\n \r\n\r\nGvidas Zdanavičius\r\n\r\nprojektų vadovas\r\n\r\n \r\n\r\nUAB „BIKUVOS“ PREKYBA\r\n\r\nGluosnių g.4b, Šilutė, Lietuva\r\n\r\nMob. +370 609 01138\r\n\r\nEl. paštas: p18.projektai@bikuva.lt', '2019-05-03 09:11:57', '2019-05-03 09:11:57'),
(247, 'JosephHok', '235775574', 'michaelTen@gmail.com', 'Look what we arrange in the service of you! an enchantingprovide \r\n Are you in?  \r\n \r\nhttps://drive.google.com/file/d/1vSDaD1ILLb9xiLZc3A4dkICDaFBDLznO/preview', '2019-05-10 01:02:14', '2019-05-10 01:02:14'),
(248, 'Aureliomet', '135565842', 'micgyhaelTen@gmail.com', 'Hey Look what we arrange for you! an stimulatingsacrifice \r\n Decent click on the component underneath to ready  \r\nhttps://drive.google.com/file/d/1tAIuIe1t8h-Apj87ipYPjGT9qw9EAZLI/preview', '2019-05-19 12:28:44', '2019-05-19 12:28:44'),
(250, 'ShawnHet', '158518811', 'info8@uniotime.com', 'Уважаемый партнёр. \r\n \r\nИнформируем Вас о том что, \r\nс 1 Июня 2019 года мы поднимаем цену оплаты за продвижение бизнеса в интернет по ТП: \r\n\"БИЗНЕС\" ТОП 10 ЯНДЕКС - новая цена 13 000 рублей за годовое обслуживание \r\n\"БИЗНЕС МИР\" ТОП 10 ЯНДЕКС + ТОП 10 GOGGLE + соц сети - новая цена 30 000 рублей за годовое обслуживание. \r\n \r\nСейчас у вас ещё есть, прекрасная возможность оплатить продвижение бизнеса в интернет, по действующим тарифным планам на этой странице: https://uniotime.com/pricing/', '2019-05-28 04:51:56', '2019-05-28 04:51:56'),
(251, 'Charlesdex', '286132458', 'contact@fullbax.com.pl', 'Nasza firma http://fullbax.pl/ \r\nzajmuje się importem z Chin na zlecenie naszych klientów. \r\nZajmujemy się wszystkim od A do Z : \r\n- wyszukujemy dostawcę \r\n- sprawdzamy towar pod względem celno-podatkowym \r\n- wizytujemy fabryki \r\n- kontrolujemy produkcję \r\n- jesteśmy obecni przy załadunku \r\n- wysyłamy towar z Chin \r\n- odprawiamy towar w Polsce \r\n- dostarczamy towar z portu do Waszego magazynu \r\n \r\nhttp://fullbax.pl/ \r\nto nie tylko powyższe zapraszamy do zapoznania się z naszą stroną internetową. \r\n \r\nMamy konkurencyjne stawki, współpracujemy również  z mniejszymi firmami. \r\n \r\nJeśli myślałeś kiedyś o imporcie z Chin a nie wiesz jak się do tego zabrać lub importujesz z Chin i potrzebujesz pomocy na jakimś etapie, jesteśmy do usług. \r\n \r\nNapisz do nas, odpowiemy na każde twoje pytanie,to nic nie kosztuje ! \r\n \r\nZapraszamy \r\nhttp://fullbax.pl/', '2019-05-31 13:40:39', '2019-05-31 13:40:39'),
(252, 'Robertmek', '13192580533', 'angelakemirrinia@gmail.com', 'Hello!  klemiskesnamai.lt \r\n \r\n \r\nWant more customers for Your business? \r\n \r\nWe provide the collection of any information from Google maps! \r\nWith the help of the database You can make calls, e-mail and SMS, and to attract new customers! \r\n \r\nAny country, city, and activity at your request! \r\nThe perfect solution for B2B! \r\nCollect database only under the order - the data will be the most relevant! \r\n \r\nInformation that we provide you can see in the file \r\n \r\nOnly until 10 June - 20% discount on collection base! \r\n \r\nThe cost is VERY LOW - 1000 organizations - 9$ \r\n10 000 organizations - 65$ \r\n20 000 organizations - 99$ \r\n \r\nDo not reply to this message from your e-mail account, as it is created automatically and will not reach anywhere! \r\nUse for communication: \r\n \r\nContact us. \r\nSkype – live:g-maps_1 \r\nEmail - g-maps@good-parser.com \r\nWhatsApp - +353899461815 \r\n \r\n \r\nIt\'s time to finish.', '2019-06-01 22:22:38', '2019-06-01 22:22:38'),
(254, 'Alfredosooca', '367614522', 'sarmanrussia@outlook.com', 'Привет, мы продаем модную одежду высокого класса для мужчин. Доставка возможна в тот же день! \r\nЕсли вы заинтересованы, пожалуйста, посетите нас на https://sarman.ru/catalog/', '2019-06-07 13:54:24', '2019-06-07 13:54:24'),
(255, 'QuintonGax', '334155227', 'aacckkcc@gmail.com', 'Приятно познакомится! \r\n \r\nМы являемся агентом Microsoft в Китае. Мы специализируемся на программном обеспечении Microsoft OEM с 2012 года, являясь поставщиком премиум класса почти 7 лет, всегда предоставляя для вас самую качественную продукцию и сервис по конкурентоспособной цене. \r\n \r\nВся продукция активирована онлайн на 99,99% и обеспечена бессрочной гарантией. Цена на нашу продукцию на 70% ниже, чем на вашем местном рынке. \r\nВы хотели бы сделать небольшой заказ, чтобы узнать о нашем качестве? С нетерпением ждем дальнейшего сотрудничества с вами. \r\nOur company / business offer: \r\nMicrosoft Windows Software wholesale: Windows 10, Windows 7, Windows 8.1, Windows Server 2016, Windows Sever 2012, Windows Sever 2008, Windows Server SQL, Office 2016, Office 2019, \r\nSoftware OEM: Custom software language, custom DVD, custom COA stickers. \r\n \r\nSkype: kowindows@mail.ru \r\nWhatsApp:+17074128288 \r\nTelegram: kowindows \r\nEmail: kowindows@mail.ru', '2019-06-08 18:05:58', '2019-06-08 18:05:58'),
(256, 'Jasonengix', '274778475', 'oki-toki-com-555@yandex.ru', 'Оки-Токи - международная доска бесплатных объявлений, покупайте и продавайте по всему миру! \r\nЕсли вы еще не зарегистрировались и \r\nне разместили свое объявление на оки-токи, то переходите скорее на сайт: https://oki-toki.com/ \r\nи добро пожаловать на международную доску бесплатных объявлений Оки-Токи где все для людей!', '2019-06-13 13:10:08', '2019-06-13 13:10:08'),
(257, 'Kornelijus', '868261005', 'zylekornelijus@gmail.com', 'Sveiki Domina butų kainos .', '2019-06-16 04:47:01', '2019-06-16 04:47:01'),
(267, 'ContactForm', '375627528', 'raphaekemirrinia@gmail.com', 'Good day!  klemiskesnamai.lt \r\n \r\nWe advance \r\n \r\nSending your business proposition through the Contact us form which can be found on the sites in the contact section. Feedback forms are filled in by our software and the captcha is solved. The profit of this method is that messages sent through feedback forms are whitelisted. This technique improve the odds that your message will be read. \r\n \r\nOur database contains more than 25 million sites around the world to which we can send your message. \r\n \r\nThe cost of one million messages 49 USD \r\n \r\nFREE TEST mailing of 50,000 messages to any country of your choice. \r\n \r\n \r\nThis message is automatically generated to use our contacts for communication. \r\n \r\n \r\n \r\nContact us. \r\nTelegram - @FeedbackFormEU \r\nSkype  FeedbackForm2019 \r\nEmail - FeedbackForm@make-success.com \r\nWhatsApp - +44 7598 509161', '2019-06-16 17:48:11', '2019-06-16 17:48:11'),
(268, 'Julius', '-', 'JULIUS.KAS.28@GMAIL.COM', 'Laba diena, prašau atsiųsti butų kainas, domina visi. Atvykti į ofisą neturiu laiką..', '2019-06-19 02:06:59', '2019-06-19 02:06:59'),
(276, 'Anthonynut', '267128458', 'gulfsrv94@gmail.com', 'Hello!, klemiskesnamai.lt \r\n \r\nOur patron want to invest in your sector for good yield. \r\n \r\nPlease contact us for more information on  +973 650 09688 or mh@indobsc.com \r\n \r\nBest regards \r\nMr. Mat Hernandez', '2019-06-28 06:50:42', '2019-06-28 06:50:42'),
(283, 'Gedas', 'nesvarbu', 'labasg@gmail.com', 'Sveiki , ieskom 3 kambariu buto/ kotedzo. Domina kaina.', '2019-08-04 13:58:09', '2019-08-04 13:58:09'),
(293, 'Jasontub', '81698517978', 'pagalba@skyhost.lt', 'Sveiki, pranesame dziugia zinia! \r\nNuo siol skyhost teikia savo paslaugas ir Lietuvoje! Musu naujas duomenu \r\ncentras yra isikures Kaune, tad garantuojame spartu rysi tarp Jusu ir \r\nserverio. Isbandyti svetainiu talpinima galite visiskai nemokamai. Musu \r\nteikiamos paslaugos : \r\nSvetainiu talpinimas, nuo 0.00€/men \r\nReseller hostingas, nuo 2.99€/men \r\nSSL sertifikatai, nuo 2.99€/<>men] \r\nLaukiame Jusu apsilankant http://www.skyhost.lt/', '2019-08-09 11:32:35', '2019-08-09 11:32:35'),
(294, 'AustinAppaX', '87442473259', 'support@monkeydigital.co', 'Dropped in website’s rankings? Try our new Slow Link building Service. \r\nWe will run a slow & steady link building campaign for 7 days and send you a report with 140 live Social posts \r\n \r\nMore info and more variations in posts: \r\nhttps://monkeydigital.co/product/daily-social-posting-service/ \r\n \r\nThanks and regards \r\nMike \r\nmonkeydigital.co@gmail.com', '2019-08-17 03:08:39', '2019-08-17 03:08:39'),
(295, 'Kennethmer', '86313241428', 'abb_ala@hotmail.com', 'Hey What we secure here is , a agreeableoffers  http://parroughrera.gq/k1zw', '2019-08-20 11:16:52', '2019-08-20 11:16:52'),
(296, 'WilliamDaw', '83452683489', 'ghilm@bluewin.ch', 'Here is  an urgentoffers recompense you. http://benbilasimp.cf/5raz', '2019-08-22 15:43:49', '2019-08-22 15:43:49'),
(297, 'Matruinia', '89647682454', 'mattant@belan.website', 'Malegra 150 El Cialis Es Malo Walmart Drug Prices Without Insurance  <a href=http://cial40mg.com>cialis for sale</a> My Escrow Drugs Buy 60 Pills Anafranil Fast Shipping', '2019-08-25 08:48:28', '2019-08-25 08:48:28'),
(298, 'BrianNoipt', '84617545958', 'emailreps@inbox.lv', 'Sveiki, mēs varam izstrādāt gan logo dizainus, gan \r\nmājaslapas. Palīdzēsim ar mājaslapas vai logo dizaina pareizu \r\nizmantošanu. Hosts 6 mēn. par brīvu. Mājaslapas izstrāde no 150e, logo \r\ndizains no 50e. Varat izlasīt vairāk https://cana.lv', '2019-08-29 10:13:17', '2019-08-29 10:13:17'),
(299, 'RonaldBed', '82412559432', 'adri.carlson@gmail.com', 'Look at a seemlyput up for sale in place of you. http://maresolo.tk/kotnn', '2019-09-01 17:08:42', '2019-09-01 17:08:42'),
(300, 'Arvydas', '+37065908899', 'arvydasv18@gmail.com', 'Laba diena, kokia kaina buto ?', '2019-09-02 05:07:45', '2019-09-02 05:07:45'),
(302, 'Carltonpaymn', '85185531316', 'quickchain50@gmail.com', 'Profit +10% after 2 days \r\nThe minimum amount for donation is 0.0025 BTC. \r\nMaximum donation amount is 10 BTC. \r\n \r\nRef bonus 3 levels: 5%,3%,1% paying next day after donation \r\nhttps://quickchain.cc/', '2019-09-11 04:40:59', '2019-09-11 04:40:59'),
(304, 'LesLounny', '87446767624', 'lesBoyday@suda2.pw', 'Cheap Effexor Xr Online Buy Fincar 5mg Cheap Buy Cephalexin 500mg Capsules  <a href=http://cialusa.com>cialis vs viagra</a> Top Canadian Pharma Companies Antibiotics Fast Delivery To Uk', '2019-09-21 05:52:45', '2019-09-21 05:52:45'),
(306, 'Mikekeype', '84839554826', 'noreplyJirlWeni@gmail.com', 'When you order 1000 backlinks with this service you get 1000 unique domains, Only receive 1 backlinks from each domain. All domains come with DA above 15-20 and with actual page high PA values. Simple yet very effective service to improve your linkbase and SEO metrics. \r\n \r\nOrder this great service from here today: \r\nhttps://monkeydigital.co/product/unique-domains-backlinks/ \r\n \r\nMultiple offers available \r\n \r\nthanks and regards \r\nMike \r\nmonkeydigital.co@gmail.com', '2019-09-30 21:15:44', '2019-09-30 21:15:44'),
(307, 'Juliomaf', '88726247391', 'cloudhosting@cyberservices.com', 'Hi , \r\nFor everything you do online, you need a web hosting for your website, blog, application or landing page. \r\nBecause customers hate waiting and the site speed is also a search engines ranking factor,  it needs to be very fast! \r\nBut why paying huge amounts month after month, when you can get 5(yes, five!) Years of Blazing-Fast Web Hosting  for less than the price of one?!? \r\n \r\nCheck out this review to find out more: https://5cloudhost.customerreviews.biz  \r\nBest regards, \r\nMO24H Community', '2019-10-07 05:32:01', '2019-10-07 05:32:01'),
(308, 'Gabriele', '37064323597', 'gabriele.vaiciunaite.95@gmail.com', 'Laba diena,\r\ndomina butų ir kotedžų kainos 3 kambarių. Taip pat domina kainų skirtumas su lauko terasa ir be.\r\n\r\nDėkoju,\r\nGabrielė', '2019-10-08 09:20:37', '2019-10-08 09:20:37'),
(311, 'KelRICS', '83392943747', 'kelFabs@delays.space', 'Amoxicillin 250mg Capsules For Cats Cialis Schwul  <a href=http://ciali5mg.com>cialis 40 mg</a> Bupropion No Prescription', '2019-10-10 08:55:05', '2019-10-10 08:55:05'),
(312, 'Vkontakte', '89335787118', 'i-netrabota@mail.ru', 'Здравствуйте! \r\n \r\nПоздравляем Вас с победой в акции -  \"Vkontakte e-mail\". \r\nНаша система выбрала Ваш email c вашего сайта  http://klemiskesnamai.lt среди миллионов других участников. \r\n \r\nВы уже являетесь обладателем одного из наших главных призов, в размере до 10 000 дол. , техники от компании Apple или Автомобиля BMW. \r\n \r\nДля определения какой приза, перейдите на официальную страницу акции \"Vkontakte e-mail\" по ссылке: \r\n \r\n \r\nhttp://vk.com@0X52922C6D/Nc1p0T \r\n \r\nУдачи Вам! \r\nС уважением, Vkontakte', '2019-10-18 03:14:26', '2019-10-18 03:14:26'),
(313, 'Google e-mail', '89789985626', 'maria_arkhangel@mail.ru', 'Здравствуйте! \r\n \r\nПоздравляем Вас с победой в  -  \"Google e-mail\". \r\nCистема выбрала  email c вашего сайта  http://klemiskesnamai.lt среди миллионов других сайтов! \r\n \r\nВы  являетесь обладателем  призов, в размере до 10 000 дол. , техники от компании Apple и автомобиля BMW. \r\n \r\nДля определения приза, перейдите на официальную страницу \"Google e-mail\" по ссылке: \r\n \r\nhttps://drive.google.com/file/d/1xiX_GoHZ_bpNISipUYSlYAbhTURn4wwH/preview \r\n \r\nУдачи Вам! \r\nС уважением, Google e-mail', '2019-10-20 03:27:04', '2019-10-20 03:27:04'),
(314, 'Googlee', '84751992534', 'astarta-666@mail.ru', 'Здравствуйте! Поздравляем Вас с победой в - \"Google e-mail\". \r\n \r\nCистема выбрала email c вашего сайта http://klemiskesnamai.lt среди миллионов других сайтов! \r\n \r\nВы являетесь обладателем призов, в размере до 10 000 дол. , техники от компании Apple и автомобиля BMW. \r\n \r\nДля определения приза, перейдите на официальную страницу \"Google e-mail\" по ссылке: \r\n \r\nhttps://drive.google.com/file/d/1BpDs8GdSgLAwntdWEKYWNdWZTYOUqcrH/preview \r\n \r\nУдачи Вам! С уважением, Google e-mail', '2019-10-21 11:05:09', '2019-10-21 11:05:09'),
(315, 'Googlee', '86199885318', 'kosintseva.1959@mail.ru', 'Здравствуйте! Поздравляем Вас с победой в - \"Google e-mail\". \r\n \r\nCистема выбрала email c вашего сайта http://klemiskesnamai.lt среди миллионов других сайтов! \r\n \r\nВы являетесь обладателем призов, в размере до 10 000 дол. , техники от компании Apple и автомобиля BMW. \r\n \r\nДля определения приза, перейдите на официальную страницу \"Google e-mail\" по ссылке: \r\n \r\nhttps://drive.google.com/file/d/1EZq6M1QysOpGy4EwqnnaXscbFXIjAEVj/preview \r\n \r\nУдачи Вам! С уважением, Google e-mail', '2019-10-22 06:51:54', '2019-10-22 06:51:54'),
(316, 'Googlebonus', '81911961264', 'ferum123456@mail.ru', 'Поздравляем с победой в - \"Google bonus\". \r\n \r\nРобот выбрал Ваш email c вашего сайта http://klemiskesnamai.lt среди множества других сайтов! \r\n \r\nВы можете выиграть ценный приз, в размере до 10 000 дол. , техники  Apple и автомобиля BMW \r\n \r\nДля участия, перейдите на  страницу \"Google e-mail\" : \r\n \r\nhttps://drive.google.com/file/d/11b5jQHoNFRKSi-xpfwDN9Au27aXCiVIW/preview \r\n \r\nУдачи Вам! С уважением, Google e-mail', '2019-10-23 11:35:00', '2019-10-23 11:35:00'),
(317, 'JosephKic', '83826887321', 'af.antocrespo@consultant.com', 'Dear friend, \r\n \r\nMy names are Mr. Razali Rubin Nawawi, a Malaysian lawyer base in Kuala Lumpur - Malaysia. I have previously sent you an email regarding a transaction of US$9.2 Million left behind by my late client before his tragic death. \r\n \r\nHowever, I am contacting you once again because after going through your profile, I strongly believe that you will be in a better position to execute this business transaction with me. Please if you are interested to proceed with me, kindly respond to my email urgently for more detail. \r\n \r\nThis transaction is 100% risk free and I Look forward to your response. \r\n \r\nRegards, \r\nMr. Razali Rubin Nawawi \r\nEmail: info@razalinawawiassociates.com-my.com \r\nTelephone: 011 601 760 41 490', '2019-10-23 20:56:33', '2019-10-23 20:56:33'),
(318, 'bonus', '85669482278', 'plebuwugvkuieh@mail.ru', 'Поздравляем с победой в - \"Google bonus\". \r\n \r\nРобот выбрал Ваш email c вашего сайта http://klemiskesnamai.lt среди множества других сайтов! \r\n \r\nВы можете выиграть ценный приз, в размере до 10 000 дол. , техники  Apple и автомобиля BMW \r\n \r\nДля участия, перейдите на  страницу \"Google e-mail\" : \r\n \r\nhttps://drive.google.com/file/d/1cYMT82mnbKoMAzCLLDbh5ohh-wQuYjgA/preview \r\n \r\nУдачи Вам! С уважением, Google e-mail', '2019-10-24 19:48:35', '2019-10-24 19:48:35'),
(319, 'bonus', '89953719773', 'mironoff.serezh@mail.ru', 'Поздравляем с победой в - \"Google bonus\". \r\n \r\nРобот выбрал Ваш email c вашего сайта http://klemiskesnamai.lt среди множества других сайтов! \r\n \r\nВы можете выиграть ценный приз, в размере до 10 000 дол. , техники  Apple и автомобиля BMW \r\n \r\nДля участия, перейдите на  страницу \"Google e-mail\" : \r\n \r\nhttps://drive.google.com/file/d/1BfDVrUbAIPFY8N1zeR_3i-SHgjFUG6KW/preview \r\n \r\nУдачи Вам! С уважением, Google e-mail', '2019-10-25 23:28:03', '2019-10-25 23:28:03'),
(320, 'Kevinprurf', '83277874238', 'rodgerred@outlook.com', 'hi there \r\nI have just checked klemiskesnamai.lt for the ranking keywords and to see your SEO metrics and found that you website could use a boost. \r\n \r\nWe will improve your SEO metrics and ranks organically and safely, using only whitehat methods \r\n \r\nPlease check our pricelist here, we offer SEO at cheap rates. \r\nhttps://www.hilkom-digital.de/cheap-seo-packages/ \r\n \r\nStart boosting your business sales and leads with us, today! \r\n \r\nregards \r\nHilkom Digital Team \r\nsupport@hilkom-digital.de', '2019-10-26 18:36:52', '2019-10-26 18:36:52'),
(321, 'Googleemaill', '88477526285', 'invaider70@mail.ru', 'Поздравляем с победой \"Google e-mail\" \r\n \r\nРобот выбрал Ваш email c вашего сайта http://klemiskesnamai.lt среди множества других сайтов! \r\n \r\nВы можете выиграть ценный приз, в размере до 500 000h. , телефонов Apple и авто BMW. \r\n \r\nДля участия, перейдите на  страницу \"Google e-mail\" : \r\n \r\nhttps://drive.google.com/file/d/1FNxjNR0ARDZAETJsjhaA929S8A1ka2BS/preview \r\n \r\nУдачи Вам! С уважением, Google e-mail', '2019-10-26 22:15:32', '2019-10-26 22:15:32'),
(322, 'Googleemaill', '85718686625', 'ur.ra@mail.ru', 'Поздравляем с победой \"Google e-mail\" \r\n \r\nРобот выбрал Ваш email c вашего сайта http://klemiskesnamai.lt среди множества других сайтов! \r\n \r\nВы можете выиграть ценный приз, в размере до 500 000h. , телефонов Apple и авто BMW. \r\n \r\nДля участия, перейдите на  страницу \"Google e-mail\" : \r\n \r\nhttps://drive.google.com/file/d/1CZm7_vSmgCC4xBW3LAu60Xnc7ATUWPb0/preview \r\n \r\nУдачи Вам! С уважением, Google e-mail', '2019-10-28 03:06:00', '2019-10-28 03:06:00'),
(323, 'Googleemaill', '84787663575', 'anastasiya-yasinkaya91@mail.ru', 'Поздравляем с победой \"Google e-mail\" \r\n \r\nРобот выбрал Ваш email c вашего сайта http://klemiskesnamai.lt среди множества других сайтов! \r\n \r\nВы можете выиграть ценный приз, в размере до 500 000h. , телефонов Apple и авто BMW. \r\n \r\nДля участия, перейдите на  страницу \"Google e-mail\" : \r\n \r\nhttps://drive.google.com/file/d/1uNmxDvgtP5Unym5bH9SwLju3yrbP7pJX/preview \r\n \r\nУдачи Вам! С уважением, Google e-mail', '2019-10-29 03:57:15', '2019-10-29 03:57:15'),
(324, 'Robertskend', '85667231524', 'robertFiery@gmail.com', 'Do you know that the cryptocurrency market is the most profitable at the moment? \r\nYou\'ve probably heard that many people have become multimillionaires thanks to Bitcoin and other blockchain community projects. \r\n \r\nDid you know that interactions within the blockchain community provide each project participant with a profit + 10% of personal turnover and this happens every 2 days. \r\n \r\nDo you know that you have such an opportunity? \r\nBecome a part of the community and earn on the back of cryptocurrencies! \r\nRegistration: Website: \r\nhttps://www.crypto-mmm.com/?source=btce', '2019-10-30 11:28:29', '2019-10-30 11:28:29'),
(325, 'Googleemail', '83714149963', 'spiriadidi@mail.ru', 'Поздравляем с победой \"Google e-mail\" \r\n \r\nРобот выбрал Ваш email c вашего сайта http://klemiskesnamai.lt среди множества других сайтов! \r\n \r\nВы можете выиграть ценный приз, в размере до 500 000h. , телефонов Apple и авто BMW. \r\n \r\nДля участия, перейдите на  страницу \"Google e-mail\" : \r\n \r\nhttps://drive.google.com/file/d/1LO9wLG6LuoH6PU2D8nlKAnRXDUgZpRsg/preview \r\n \r\nУдачи Вам! С уважением, Google e-mail', '2019-10-31 08:31:41', '2019-10-31 08:31:41'),
(326, 'Googleemail', '82394369632', 'vasileva0773@mail.ru', 'Поздравляем с победой \"Google e-mail\" \r\n \r\nРобот выбрал Ваш email c вашего сайта http://klemiskesnamai.lt среди множества других сайтов! \r\n \r\nВы можете выиграть ценный приз, в размере до 500 000h. , телефонов Apple и авто BMW. \r\n \r\nДля участия, перейдите на  страницу \"Google e-mail\" : \r\n \r\nhttps://drive.google.com/file/d/1dN4SugoDHn2Men1sYMJN5soo4tqeus4r/preview \r\n \r\nУдачи Вам! С уважением, Google e-mail', '2019-11-03 03:35:03', '2019-11-03 03:35:03'),
(327, 'Googleemail', '81937657694', 'vovnyano4ka@mail.ru', 'Поздравляем с победой \"Google e-mail\" \r\n \r\nРобот выбрал Ваш email c вашего сайта http://klemiskesnamai.lt среди множества других сайтов! \r\n \r\nВы можете выиграть ценный приз, в размере до 500 000h. , телефонов Apple и авто BMW. \r\n \r\nДля участия, перейдите на  страницу \"Google e-mail\" : \r\n \r\nhttps://drive.google.com/file/d/1FeM89DZncvVHfy34cQiq_zHS9hMR1LtK/preview \r\n \r\nУдачи Вам! С уважением, Google e-mail', '2019-11-05 15:13:59', '2019-11-05 15:13:59'),
(329, 'JessieAdani', '86725584363', 'info2@revlight.com.sg', 'Dear Sir/mdm, \r\n \r\nAre you satisfied with your current CCTV on quality and service? Tired \r\nof cameras that always broke down easily? \r\n \r\nDon\'t worry, we manufacture High-Definition Security Surveillance \r\nSystems for Residential & Commercial uses. All our cameras are metal \r\nweatherproof and comes with sony sensor for maximum quality. \r\nIPcam video quality: https://youtu.be/VPG82dnXfWY \r\n \r\n+65 6678-6557 \r\nEmail: sales@revlightsecurity.com \r\nW: http://www.revlightsecurity.com/ \r\n \r\nHave a nice day! :) \r\n \r\nregards, \r\nJessie Chang \r\n7 Temasek Boulevard, Level 32, Suntec Tower One, Singapore \r\n038987', '2019-11-06 06:31:49', '2019-11-06 06:31:49'),
(330, 'Google', '88271826347', 'octavia@bk.ru', 'Здравствуйте! Уважаемый пользователь \r\n \r\nПримите участие в опросе от Google \r\n \r\nВремя от времени мы выбираем несколько пользователей , чтобы дать им возможность получать ценные подарки от наших партнеров и спонсоров. Это наш способ поблагодарить вас за выбор \r\n \r\nВаш сайт klemiskesnamai.lt выбран для опроса \r\n \r\nПРОЙТИ ОПРОС по ссылке \r\n \r\nhttps://drive.google.com/file/d/1ixq72p61b5NcFQVF-r0l8rFS638uRB_e/preview', '2019-11-07 04:05:30', '2019-11-07 04:05:30'),
(331, 'Zilvinas', '860088123', 'zdarbinis@yahoo.com', 'Sveiki, domina butas 2 kambariu, ar jau pastatyti namai, kvadrato kaina?\r\n\r\nAciu\r\n\r\nZilvinas', '2019-11-13 15:34:11', '2019-11-13 15:34:11'),
(335, 'WinfredJal', '86612369918', 'anthonyhom@gmail.com', 'Today El Dorado is number 1 in the list of investment blockchain projects! \r\nThe innovative program provides an opportunity to participate in short-term investment in the cryptocurrency market.   \r\n \r\nThe minimum investment amount is 0.0025 BTC   \r\nMinimum profit is 10%   \r\nThe investment period is not more than 48 hours. \r\nRe-investment is possible. \r\n \r\nRegistration is available on the official website: \r\nhttp://bit.ly/2CSQIj8', '2019-11-17 16:04:50', '2019-11-17 16:04:50'),
(336, 'Davidhom', '84635764219', 'busteritern@gmail.com', 'Take part in the survey from TELEGRAM and get money from sponsors \r\nhttps://online2019.com/', '2019-11-18 00:42:06', '2019-11-18 00:42:06'),
(337, 'Aaronjar', '85645314462', 'inbox557@glmux.com', 'I am sorry for off-topic, I\'m considering about building an instructive website as a student. Will possibly commence with publishing interesting facts just like\"Wearing headphones for just an hour will increase the bacteria in your ear by 700 times.\"Please let me know if  you know where I can find some related facts like here\r\n \r\nhttp://menmaninmant1983.edublogs.org\r\nhttps://buyanessays23.yolasite.com/\r\nhttps://prowritingaiddiscountcode.blogspot.com/\r\nhttp://prenegkewen1982.edublogs.org\r\nhttps://buyanessay12.yolasite.com/', '2019-11-25 08:03:14', '2019-11-25 08:03:14'),
(339, 'RicardoMop', '82724266352', 'lankstinukas.lt@gmail.com', 'Sveiki, \r\nsiūlome reklamos paslaugas: \r\n1)	Google/Facebook Ads \r\n2)	Fizinė reklama (skrajutės, lankstinukai bei platinimas) \r\nTaip pat dirbame atliekame programavimo darbus, specializuojamės verslo valdymo sistemų diegime. \r\nIlgametė patirtis, kokybės garantija. \r\nSiūlome pasikonsultuoti nemokamai.  \r\nLaukiame Jūsų atsakymo. \r\n--- \r\nPagarbiai \r\nDeimantas \r\n+370 653 12865 \r\ninfo@lankstinukas.lt', '2019-12-04 17:05:15', '2019-12-04 17:05:15'),
(340, 'Stephenhox', '83926616834', 'stephenMal@gmail.com', 'hi there \r\nI have just checked klemiskesnamai.lt for the ranking keywords and to see your SEO metrics and found that you website could use a boost. \r\n \r\nWe will improve your SEO metrics and ranks organically and safely, using only whitehat methods \r\n \r\nPlease check our pricelist here, we offer SEO at cheap rates. \r\nhttps://www.hilkom-digital.de/cheap-seo-packages/ \r\n \r\nStart boosting your business sales and leads with us, today! \r\n \r\nregards \r\nHilkom Digital Team \r\nsupport@hilkom-digital.de', '2019-12-06 13:05:16', '2019-12-06 13:05:16'),
(344, 'Promo-Bonus', '+79123456789', 'susictane1982@mail.ru', 'Доброго времени суток! \r\n \r\nВсем игровым представляем возможность испытать удачу в новом онлайн казино Париматч Россия (PM Casino), с помощью \"Бездепозитного бонуса за регистрацию\" в игровом автомате Book Of Ra (Книжки). \r\n \r\nБездеп 77 фриспинов в Book Of Ra можно получить по этой ссылке https://bitly.su/TQdKGa', '2019-12-23 20:41:48', '2019-12-23 20:41:48'),
(345, 'RolandPal', '82971889565', 'jackob.james@yandex.ru', 'Hello! \r\n \r\nDo you know how to spend working hours with benefit? \r\n \r\nYou can grow bitcoins by 1.1% per day! \r\nIt takes 1 minute to start, quicker than a cup of coffee \r\n \r\nTry http://satoshigen2020.website \r\n \r\nPowered by Blockchain.', '2019-12-25 15:45:07', '2019-12-25 15:45:07'),
(347, 'HyperMailk', '85313351513', 'no-replyhed@gmail.com', 'Increase ranks and visibility for klemiskesnamai.lt with a monthly SEO plan that is built uniquely for your website \r\n \r\nIncrease SEO metrics and ranks while receiving complete reports on monthly basis \r\n \r\nCheck out our plans \r\nhttps://googlealexarank.com/index.php/seo-packages/ \r\n \r\nthanks and regards \r\nTop SEO Experts', '2020-01-23 20:50:36', '2020-01-23 20:50:36'),
(348, 'Aromaopt', '+79123456789', 'kingliteende1983@mail.ru', 'Здравствуйте! \r\nНаша компания специализируется на оптовых продажах в сфере автомобильных ароматизатор воздуха. На рынке более 10 лет.  Мы представляем следующие бренды: \r\n- Caribi Air Fresheners \r\n- Areon \r\n- Contex \r\n- Aroma Top Line \r\n- Little trees \r\n- Dr. Marcus \r\n- Eikosha \r\n \r\nКроме того, имеется большой выбор различной продукции в сфере автоаксессуаров. \r\nЕсли Вы заинтересованы в сотрудничестве, свяжитесь с нами, вышлем Вам коммерческое предложение! \r\nE-mail: aromaopt24@bk.ru', '2020-02-06 19:14:40', '2020-02-06 19:14:40'),
(349, 'Raimonda', '07848393373', 'raimondamemkute@gmail.com', 'Laba diena, norejau paklausti kokia kotedzu ir butu (3 kambariu) kainos, su pilna apdaila ir daline?\r\nDekoju', '2020-02-12 07:35:06', '2020-02-12 07:35:06'),
(352, 'Donaldboill', '87612959291', 'ktmb200@gmail.com', 'We’re a Vilnius web design and web development agency, providing fresh, creative digital services to businesses who want to grow online. Focusing on results, we use our technical skill and industry insight to help you meet your digital goals. Whether that’s lowering your bounce rate with interactive web design or bringing brand new traffic and income streams to your website. Talk to us about your project to get started. \r\nWebsite: http://www.konstruma.site/', '2020-02-14 11:40:38', '2020-02-14 11:40:38'),
(353, 'Jeromesar', '81651997726', 'no-reply@hilkom-digital.de', 'hi there \r\nI have just checked klemiskesnamai.lt for the ranking keywords and seen that your SEO metrics could use a boost. \r\n \r\nWe will improve your SEO metrics and ranks organically and safely, using only whitehat methods, while providing monthly reports and outstanding support. \r\n \r\nPlease check our pricelist here, we offer SEO at cheap rates. \r\nhttps://www.hilkom-digital.de/cheap-seo-packages/ \r\n \r\nStart increasing your sales and leads with us, today! \r\n \r\nregards \r\nHilkom Digital Team \r\nsupport@hilkom-digital.de', '2020-02-20 23:21:48', '2020-02-20 23:21:48'),
(354, 'JeremyErync', '88488698754', 'director@seosite.lt', 'Sveiki, \r\nNorėtumėme Jums pasiūlyti efektyvesnes SEO paslaugas nei šiuo metu. Atsižvelgdami į naujus agoritmo pokyčius turime efektyvius vidinės optimizacijos, seo straipsnių ir mėnesinius paketus.  Pilnas mūsų paslaugų aprašymas: http://seosite.lt/ \r\nTaip pat galime atvesti didelius vartotojų srautus (iš paieškos, fb reklamų ir kitų sistemų). \r\nJei įdomu  - susiskambinkite arba parašykite man director@seosite.lt \r\nGediminas, SEOSITE', '2020-03-12 10:35:26', '2020-03-12 10:35:26'),
(355, 'WilliamTielf', '83574424938', 'no-reply@ghostdigital.co', 'Increase your klemiskesnamai.lt ranks with quality web2.0 Article links. \r\nGet 500 permanent web2.0 for only $39. \r\n \r\nMore info about our new service: \r\nhttps://www.ghostdigital.co/web2/', '2020-03-20 12:12:22', '2020-03-20 12:12:22'),
(358, 'vadronov', '82856995535', 'vadronov@ukr.net', 'http://www.fc-lubertsy.ru/championat.html', '2020-04-04 17:11:37', '2020-04-04 17:11:37'),
(359, 'JamesNum', '86359312647', 'coronavaccine@hotmail.com', 'COVID-19 outbreak: airplanes grounded, borders closed, businesses shut, citizens quarantined, political power seized, democracy undermined. \r\nAll this, if it is not stopped shortly, can lead to chaos and unrests. \r\nCurrently http://ST-lF.NET focus on raising awareness of the social impact that radically politicized approach to handling CoronaVirus Pandemic will have on the younger generations. \r\nYour support is needed to reduce the destructive impact the lock-down brings to bear on the younger generation. \r\nEvery 1$ makes a difference. \r\nPlease, take a moment to watch our presentation video and review our campaigns http://ST-lF.NET', '2020-04-13 02:07:02', '2020-04-13 02:07:02'),
(361, 'RolandreW', '82978922854', 'zilvinasglebas2020@gmail.com', 'Dear Sir / Madam \r\nCollaboration.center is the first FREE platform in the United Kingdom, which is offering free direct contact with major UK retailers for the manufacturers, suppliers, and wholesalers. \r\nIf you are thinking to sell your products within the United Kingdom or even expand your sales and find new retailers who are well known in the country, then our free internet platform www.collaboration.center is the perfect place for you to start. \r\nThere is no registration so you won\'t receive any unwanted mail just direct reply from retailers you select. \r\nTake your chance and use it straight away while it\'s free ( limited time only ) \r\n \r\nCollaboration Center Team \r\nhttps://collaboration.center/ \r\n \r\nEmail: hello@collaboration.center', '2020-05-11 19:44:18', '2020-05-11 19:44:18'),
(362, 'YOZAWA KEN', '87852522147', 'avatoniebtea@rediffmail.com', 'Did yоu knоw thаt it is pоssiblе tо sеnd businеss оffеr аbsоlutеly lеgаl? \r\nWе tеndеr а nеw lеgаl mеthоd оf sеnding rеquеst thrоugh соntасt fоrms. Suсh fоrms аrе lосаtеd оn mаny sitеs. \r\nWhеn suсh соmmеrсiаl оffеrs аrе sеnt, nо pеrsоnаl dаtа is usеd, аnd mеssаgеs аrе sеnt tо fоrms spесifiсаlly dеsignеd tо rесеivе mеssаgеs аnd аppеаls. \r\nаlsо, mеssаgеs sеnt thrоugh соmmuniсаtiоn Fоrms dо nоt gеt intо spаm bесаusе suсh mеssаgеs аrе соnsidеrеd impоrtаnt. \r\nWе оffеr yоu tо tеst оur sеrviсе fоr frее. Wе will sеnd up tо 50,000 mеssаgеs fоr yоu. \r\nThе соst оf sеnding оnе milliоn mеssаgеs is 90 USD. \r\n \r\nThis mеssаgе is сrеаtеd аutоmаtiсаlly. Plеаsе usе thе соntасt dеtаils bеlоw tо соntасt us. \r\n \r\n \r\nhttp://1-0x.com/2020tokyo/', '2020-05-15 07:27:53', '2020-05-15 07:27:53'),
(363, 'Mr. Mike Liu', '85185787974', 'mikeliu4commercialfinance@gmail.com', 'Dear Sir/Madam, \r\n \r\nThis is a consultancy and brokerage Firm specializing in Growth Financial Loan and Equity Funding \r\nInvestments. We specialize in investments in all Private and public sectors in a broad range of areas \r\nwithin our Financial Investment Services. We are experts in financial and operational management, due \r\ndiligence and capital planning in all markets and industries. \r\n \r\nOur Investors wishes to invest in any viable Project presented by your Management after reviews on \r\nyour Business Project Presentation Plan. We look forward to your Swift response. \r\n \r\nRegards, \r\nMr. Mike Liu \r\nCommercial Finance Brokers Ltd. \r\nEmail: mikeliu4commercialfinance@gmail.com', '2020-05-19 13:12:51', '2020-05-19 13:12:51');
INSERT INTO `mails` (`id`, `name`, `tel`, `email`, `text`, `created_at`, `updated_at`) VALUES
(365, 'Michaelnax', '83332451693', 'colbrctr@gmail.com', 'Dear Sir / Madam \r\nCollaboration.center is the first FREE platform in the United Kingdom, which is offering free direct contact with major UK retailers for the manufacturers, suppliers, and wholesalers. \r\nIf you are thinking to sell your products within the United Kingdom or even expand your sales and find new retailers who are well known in the country, then our free internet platform www.collaboration.center is the perfect place for you to start. \r\nThere is no registration so you won\'t receive any unwanted mail just direct reply from retailers you select. \r\nTake your chance and use it straight away while it\'s free ( limited time only ) \r\n \r\nCollaboration Center Team \r\nhttps://collaboration.center \r\n \r\nEmail: hello@collaboration.center', '2020-05-24 10:26:14', '2020-05-24 10:26:14'),
(366, 'JoshuaVep', '89875689871', 'no-replykemirrinia@gmail.com', 'Gооd dаy!  klemiskesnamai.lt \r\n \r\nDid yоu knоw thаt it is pоssiblе tо sеnd businеss оffеr fully lеgitimаtе wаy? \r\nWе prеsеntаtiоn а nеw lеgаl wаy оf sеnding rеquеst thrоugh fееdbасk fоrms. Suсh fоrms аrе lосаtеd оn mаny sitеs. \r\nWhеn suсh businеss prоpоsаls аrе sеnt, nо pеrsоnаl dаtа is usеd, аnd mеssаgеs аrе sеnt tо fоrms spесifiсаlly dеsignеd tо rесеivе mеssаgеs аnd аppеаls. \r\nаlsо, mеssаgеs sеnt thrоugh соntасt Fоrms dо nоt gеt intо spаm bесаusе suсh mеssаgеs аrе соnsidеrеd impоrtаnt. \r\nWе оffеr yоu tо tеst оur sеrviсе fоr frее. Wе will sеnd up tо 50,000 mеssаgеs fоr yоu. \r\nThе соst оf sеnding оnе milliоn mеssаgеs is 49 USD. \r\n \r\nThis mеssаgе is сrеаtеd аutоmаtiсаlly. Plеаsе usе thе соntасt dеtаils bеlоw tо соntасt us. \r\n \r\nContact us. \r\nTelegram - @FeedbackFormEU \r\nSkype  FeedbackForm2019 \r\nWhatsApp - +375259112693 \r\nEmail feedbackform@make-success.com', '2020-05-31 22:51:25', '2020-05-31 22:51:25'),
(367, 'Kotryna', '-', 'kotre10@gmail.com', 'Sveiki, noreciau suzinoti dvieju kambariu buto kaina orentuotais langais i vakarus.', '2020-06-01 16:13:20', '2020-06-01 16:13:20'),
(373, 'Romas', '+37061228401', 'romusvanauskus@gmail.com', 'Sveiki, \r\nDomina kainos už kv.m. tiek butų tiek kotedžų.\r\nBene svarbiausias klausimas būtų:\r\n Ar pardavimas vyksta tik per bankus, o gal yra galimybė, kad įmonė parduoda  lizingu be tarpininkaujančio banko.\r\n\r\nPagarbiai,\r\nRomas', '2020-06-04 08:35:39', '2020-06-04 08:35:39'),
(381, 'cialis generic', '87216168522', 'napadom@cbd-7.com', 'cialis baby\r\n  cialis tadalafil nhs cost\r\n <a href=\"http://cialisbng.com\">cialis cost\r\n</a> - cialis for bph\r\n 20 mg cialis', '2020-06-05 03:19:44', '2020-06-05 03:19:44'),
(382, 'Josephfut', '86374357434', 'atrixxtrix@gmail.com', 'Dear Sir/mdm, \r\n \r\nHow are you? \r\n \r\nWe supply medical products: \r\n \r\nMedical masks \r\nDrager, makrite, honeywell N95 \r\n3M N95 1860, 9502, 9501, 8210 \r\n3ply medical, KN95, FFP2, FFP3, N95 masks \r\nFace shield \r\nNitrile/vinyl/latex gloves \r\nIsolation/surgical gown \r\nProtective PPE/Overalls \r\nIR non-contact thermometers/oral thermometers \r\nsanitizer dispenser \r\nCrystal tomato \r\n \r\nHuman body thermal cameras \r\nfor Body Temperature Measurement up to accuracy of ±0.1?C \r\n \r\nWhatsapp: +65 87695655 \r\nTelegram: cctv_hub \r\nSkype: cctvhub \r\nEmail: sales@thecctvhub.com \r\nW: http://www.thecctvhub.com/ \r\n \r\nIf you do not wish to receive email from us again, please let us know by replying. \r\n \r\nregards, \r\nCCTV HUB', '2020-06-05 14:33:26', '2020-06-05 14:33:26'),
(383, 'Mike Williams', '89692729515', 'marketing@digitalsy.org.uk', 'hi there \r\nI have just checked klemiskesnamai.lt for the ranking keywords and seen that your SEO metrics could use a boost. \r\n \r\nWe will improve your SEO metrics and ranks organically and safely, using only whitehat methods, while providing monthly reports and outstanding support. \r\n \r\nPlease check our pricelist here, we offer result driven SEO services. \r\nhttps://digitalsy.org.uk/seo-pricing/ \r\n \r\nStart increasing your sales and leads with us, today! \r\n \r\nregards \r\nDIGITALSY Team \r\nsupport@digitalsy.org.uk', '2020-06-25 08:20:40', '2020-06-25 08:20:40'),
(384, 'KomalerovE', '87726689751', 'no-replyDyend@gmail.com', 'Greetings, I reached to your website while searching for something on internet. But I am writing as I was wondering about the payment method currently offered by you to your customers while having such great website? \r\n \r\n \r\nI work for https://amald.com/ and we can offer credit card and various local payment methods (eNets, Net Banking, Alipay, CUP, SEPA, SOFORT..etc) to accept online payments on your websites. \r\n \r\nOur pricing start with 1.5% for Local Payments and 2.5% for \r\ncredit card payments, Which typically economic from other competitor. \r\n \r\nEmail me  on info@amald.com; I will send you further information and joining process. \r\n \r\n \r\nRegards, \r\nKomal', '2020-06-26 16:54:39', '2020-06-26 16:54:39'),
(386, 'John Bowen', '84645956442', 'johnbowen6531@gmail.com', 'We’re Best Amsterdam Escorts for a reason. Not only are we the most reliable and affordable escort service in Amsterdam, but we offer the greatest selection of ladies and a great variety of fantasies. \r\nBooking with us is easy. Your information is always secure. And the girl of your dreams always arrives. \r\nAnd you can always depend on the discretion of our agency and our escorts. \r\nYour satisfaction is our greatest goal and we work hard to ensure you have the ultimate and most enjoyable encounter. \r\nBest Amsterdam Escorts offer the types of sexual encounters you won’t forget. Don’t believe us? \r\nCheck out our packages for some of our escort’s creative fantasies! \r\nSo why not book today? \r\nCheck out our gallery of beautiful women and learn more about each or let us choose one based on your likes and desires. \r\nOrder you escort on line right below or call us at 0031 649 555 722 \r\n \r\nhttps://amsterdamescort1.com/', '2020-07-07 19:04:09', '2020-07-07 19:04:09'),
(387, 'David Floyd', '87315189953', 'tinalim.idlabels@hotmail.com', 'Good Day, \r\n \r\nI am  David Floyd in charge of purchase and sales in D & D Industries. \r\nWe are interested in doing a business with your company. \r\nOur client is in need of your product please get back to me with your business terms.So i can place my demand. \r\n \r\nYour early reply is highly appreciated. Contact us through E-mail:   sales@danddindustrustires.com \r\n \r\nBest regards \r\n \r\nDavid Floyd \r\nD & D Industries, Inc \r\nE-mail: sales@danddindustrustires.com', '2020-07-08 12:54:14', '2020-07-08 12:54:14'),
(388, 'Donatas', '+37062290708', 'liutikaster@gmail.com', 'Laba diena,\r\nIeškau naujos statybos buto, domina Jūsų projektas Klemiškės namuose. Kokios kainos būtų už kvadratinį metrą su pilna apdaila?\r\nJei galima, prašyčiau atsakyti el. paštu.', '2020-07-09 09:04:33', '2020-07-09 09:04:33'),
(391, 'Elainetilla', '87164942727', 'mailersmoney11231@gmail.com', 'Hello \r\n \r\nIm looking for investor for my email marketing business. \r\nI own 270 million email database with 92% valid emails. Im looking for investor who invest in server infrastructure to send it. Im planning to run infrastructure to send like 10 million emails per day on daily basis, and increase every week by add more servers. \r\nPotential earnings are $100-$200 depend on country per million sended messages \r\nI have knowledge about email marketing and team which is needed to handle whitelisting. \r\n \r\nInvestment: $2000 on first run, after you see results you can invest more. \r\nYou control all investment, all servers, software will be with your access. \r\n \r\nIf you are interested about partnership please send email on: \r\nmailermasters@gmail.com', '2020-07-16 23:46:15', '2020-07-16 23:46:15'),
(392, 'Mike Ralphs', '83155629344', 'no-replyNoumn@google.com', 'Gооd dаy! \r\nIf you want to get ahead of your competition, have a higher Domain Authority score. Its just simple as that. \r\nWith our service you get Domain Authority above 50 points in just 30 days. \r\n \r\nThis service is guaranteed \r\n \r\nFor more information, check our service here \r\nhttps://www.monkeydigital.co/Get-Guaranteed-Domain-Authority-50/ \r\n \r\nthank you \r\nMike Ralphs\r\n \r\nMonkey Digital \r\nsupport@monkeydigital.co', '2020-07-27 23:19:05', '2020-07-27 23:19:05'),
(393, 'MichaelVip', '85875997322', 'ignatovdormidont2823@yandex.ru', '#Hookahmagic \r\nМы всегда с Вами и стараемся нести только позитив и радость. \r\nИщите Нас в соцсетях,подписывайтесь и будьте в курсе последних топовых событий. \r\nСтрого 18+ \r\n \r\nКакой кальян купить новичку? \r\nЕсли это первая покупка, то лучше начать с более простых моделей. Это изделия со средней высотой (70 см) и одной насадкой. Количество труб влияет на работу устройства. Это будет трудная задача. \r\n \r\nОчень важно обращать внимание на материал шахты. Чем он прочнее, тем дольше прибор прослужит. Срок службы устройства минимум на 10 лет. \r\n \r\nhttps://h-magic.su/bonche \r\nРекомендуется обращать внимание на внутренний диаметр шахты. Он должен быть минимум 12 см. \r\n \r\nМожно рассмотреть также электронные изделия. Они компактные и простые в использовании. Безопасный дым. Его можно курить (парить) даже в общественных местах. Что касается его вкусовых качеств – они ничем не уступают традиционным устройствам. Какой электронный кальян купить лучше? Самый распространенный гаджет – площадь Sturbuzz.', '2020-08-04 03:25:37', '2020-08-04 03:25:37'),
(394, 'Dalibor Harald', '88425546414', 'daliborharald02@gmail.com', 'Dear \r\n \r\nMy name is Dalibor Harald, Thank you for your time, my company offers project financing/Joint Ventures Partnership and lending services, do you have any projects that require funding/ Joint Ventures Partnership at the moment? We are ready to work with you on a more transparent approach. \r\n \r\nBest regards, \r\n \r\nDalibor Harald \r\nPrincipal Partner \r\nE-mail: daliborharald01@gmail.com', '2020-08-08 08:45:31', '2020-08-08 08:45:31'),
(397, 'Jimmy Scowley', '86368873128', 'jimmyscowley@gmail.com', 'Dear Sir/mdm, \r\n \r\nOur company Resinscales is looking for distributors and resellers for its unique product: ready-made tank models from the popular massively multiplayer online game - World of Tanks. \r\n \r\nSuch models are designed for fans of the game WoT and collectors of military models. \r\n \r\nWhat makes our tank models stand out? \r\n \r\n- We are focusing on tanks not manfactured by any companies, therefore we have no competitors \r\n- Accurately made in 1/35 scale \r\n- Very high accuracy of details and colors \r\n- The price of the model tank is the same as the production cost \r\n \r\nIf you are interested to be our distributor/reseller then please let us know from the contacts below. \r\n \r\nhttps://www.resinscales.com/ \r\nhttps://www.facebook.com/resinscales.models/ \r\ncontact@resinscales.com \r\n \r\nIgnore this message if it had been wrongly sent to you.', '2020-08-19 17:39:34', '2020-08-19 17:39:34'),
(398, 'Georgemox', '89611898459', 'kornelijignatov4568@yandex.ru', '#Hookahmagic \r\nМы всегда с Вами и стараемся нести только позитив и радость. \r\nИщите Нас в соцсетях,подписывайтесь и будьте в курсе последних топовых событий. \r\nСтрого 18+ \r\n \r\nКальянный бренд Фараон давно завоевал сердца ценителей кальянной культуры вариативностью моделей кальянов, \r\nприемлемым качеством и низкой ценовой политикой. Именно эти факторы играют главную роль в истории его успеха. Не упускайте очевидную выгоду и вы! Заказывайте кальян Pharaon (Фараон) 2014 Сlick в интернет-магазине HookahMagic и оформляйте доставку в любой регион РФ. Мы гарантируем быструю доставку и высокое качество предоставляемой продукции. \r\n \r\nhttps://h-magic.su/pharaon \r\nУдачных вам покупок!', '2020-08-19 21:25:45', '2020-08-19 21:25:45'),
(399, 'Evaldas', '+447879613289', 'venta@hotmail.co.uk', 'Sveiki\r\nNorečiau pasiteirauti ,kokia kaina būtų 2kambariu su virtuve buto kaina,nesvarbu kokiame name ir aukšte?\r\nAčiū \r\nSu visa pagarba\r\nEvaldas', '2020-08-23 08:06:32', '2020-08-23 08:06:32'),
(402, 'Kennethwaymn', '86318995779', 'naummarkin5154@yandex.ru', 'Welcome \r\n \r\nhttps://ali.ski/uLd58F \r\n \r\ngold \r\nsilver \r\nbijouterie \r\n \r\nhttps://ali.ski/7QPMW \r\n \r\n“Отличный сервис с понятной структурой. Попробовала впервые, \r\nно разобралась практически сразу: все функции упорядочены, \r\nудобный интерфейс, нет ничего лишнего. Всем советую!” \r\nhttps://fas.st/5gN-e', '2020-08-31 02:54:16', '2020-08-31 02:54:16'),
(403, 'bFSMgXrZs', '8697756671', 'attersondavid7@gmail.com', 'rgZKvydcXBL', '2020-08-31 13:03:50', '2020-08-31 13:03:50'),
(404, 'Beleza Medica', '84661744583', 'sales@belezamedica.com', 'Sveiki, \r\n \r\nSiūlome įsigyti vienkartinių aspaugos nuo COVID-19 priemonių didmeninėmis kainomis. Gaminame bei prekiaujame vienkartinėmis trisluoksnėmis vaido kaukėmis, respiratoriais, medicininias chalatais, kombinezonais ir kostiumais, vienkartinėmis pirštinėmis iš nitrilo bei vinilo, apsaugos kepurėlemis bei antbačiais iš neaustinio pluošto. Nemokamas pristatymas arba atsiėmimas vietoje Vilniuje. Galimi didmeniniai ir mažmeniniai užsakymai. Plačiau apie mus http://www.belezamedica.com/  Užsakymai sales@belezamedica.com', '2020-09-03 05:17:08', '2020-09-03 05:17:08'),
(405, 'ina isimceva', '+37067485585', 'Incikum@mail.ru', 'duomina', '2020-09-05 11:11:34', '2020-09-05 11:11:34'),
(422, 'Kristina', '07951052931', 'kristinaljcc@yahoo.co.uk', 'Sveiki,\r\n\r\nNoreciau pasiteiraut del namuku ar butu Klemiskej.Kokios kainos ?ar su pilna apdaila?\r\n\r\nDekoju.\r\nPagarbiai\r\n\r\nKristina', '2020-09-06 09:02:08', '2020-09-06 09:02:08'),
(426, 'Justinelave', '88671268242', 'starostindamir4291@yandex.ru', 'Не спам,а подарок... \r\n \r\nhttp://offeramazon.ru/nikon', '2020-09-08 06:37:59', '2020-09-08 06:37:59'),
(427, 'Surbhi Verma', '85939117257', 'realsurbhi@yahoo.com', 'Dear Sir \r\n \r\nGreetings ! \r\n \r\nWhy crawl?  When you can fly. Add wings to your website with the online payment Solution. \r\n \r\nLeap ahead from your competitors and the secret to success no more secret. \r\n \r\nLast month my colleague Komal contacted you for the Payment gateway Solution for your online business, I would like to check if would be interested to proceed with same. \r\n \r\nI can offer some exciting rates. \r\n \r\nOur company https://amald.com/  offer credit card and various local payment methods (eNets, Net Banking, Alipay, CUP, SEPA, SOFORT..etc) to accept online payments on your websites. \r\n \r\nOur pricing starts from  1.5% for Local Payments and 2.5% for credit card payments, which is  typically economic from other competitor. \r\n \r\nEmail me  on  info@amald.com ; I will help you to proceed swiftly \r\nRegards \r\n \r\nSurbhi Verma.', '2020-09-12 04:05:41', '2020-09-12 04:05:41'),
(429, 'ElzaPew', '89814589849', 'zilbalkae@gmail.com', 'Bionica - อาหารคีโตที่มีประสิทธิภาพและการลดน้ำหนักที่ซับซ้อนในแคปซูล ช่วยลดน้ำหนักได้ 12 กิโลใน 13 วัน \r\n \r\nผลิตภัณฑ์เสริมอาหาร Bionica - สูตรลดความอ้วนใหม่ที่มีประสิทธิภาพสูงซึ่งเรียกว่า\" นักปั้น \"ของร่างกาย นวัตกรรมลดความอ้วนสูตรใหม่ Bionika ประกอบด้วยสารออกฤทธิ์ทางชีวภาพที่ซับซ้อนจากแหล่งกำเนิดของพืชซึ่งช่วยกระตุ้นกระบวนการเมตาบอลิซึมของเซลล์ องค์ประกอบที่สมดุลของ เม็ด อย่างมีประสิทธิภาพ ช่วย ควบคุมความหิว \r\n \r\nในช่วง แรก  ของปี 2020 โดยใช้แคปซูล Bionika ผู้ชาย 6341 คนและผู้หญิง 4125 คนสามารถลดน้ำหนักได้ (สถิติจากเว็บไซต์ทางการของผู้ผลิต) \r\n \r\nผลิตภัณฑ์สำหรับการลดน้ำหนักอย่างรวดเร็วนี้มีการพูดคุยกันในเว็บไซต์และฟอรัมยอดนิยม: [url=https://www.farmaciainrete.it/prodotto/cartijoint-slim-32-cpr/]ยาลดน้ำหนักอย่างรวดเร็ว Bionika คำอธิบายสำหรับผู้ใช้เว็บไซต์ farmaciainrete.it[/url] 8654b69  \r\n \r\nบทความโดยละเอียดเกี่ยวกับการรับส่วนลด 26% บนเว็บไซต์ของผู้ผลิตและบนหน้า Facebook:[url=https://www.facebook.com/Alyonarom/posts/954691168351845]Bionica สำหรับการลดน้ำหนัก[/url]', '2020-09-22 23:06:46', '2020-09-22 23:06:46'),
(430, 'yImLqvhbSkpRGJn', '6720070536', 'womizesvb@gmail.com', 'jPWVRwBTUmQYxf', '2020-09-27 02:59:09', '2020-09-27 02:59:09'),
(432, 'Lara Panday', '85273677829', 'keronabeo@gmail.com', 'Greeting, \r\n \r\nI am a Researcher at Pharmaceuticals, one of the leading Bio-pharmaceutical companies here in England. My objective of this email is to discuss a viable business opportunity that will be exceptionally beneficial to you and I.I am looking for a reliable business associate in your region to represent my company in sourcing some of our basic raw material used in the development/manufacturing high quality anti-viral vaccines, cancer treatments and various life saving pharmaceutical products. \r\n \r\n \r\nI look forward to hearing from you sooner if you can be my partner. \r\nReply me here: pandaylara@gmail.com \r\n \r\nRegards, \r\nLara Panday', '2020-10-07 15:25:47', '2020-10-07 15:25:47'),
(434, 'jepwLGFzEtxTS', '7775790982', 'meiginrimi@gmail.com', 'mOkGViseJcEAo', '2020-10-11 13:15:29', '2020-10-11 13:15:29'),
(436, 'Glebas Limited', '87519833473', 'glebaslimited@hotmail.com', 'Dear Sir/Madam \r\n \r\nGlebas Limited is UK based import & export specialists. Our office \r\nis located in London United Kingdom. \r\n \r\nWe would like to introduce our very good quality washable masks to protect from COVID-19. \r\nAlso we have them in stock so delivery can be arranged at any time without any delay. \r\n \r\nStarting price of the Masks only 0,60 EURO EXW \r\n \r\nIf you find it interesting please come back to us via email: sales@glebas.co.uk \r\n \r\nSo we can provide pictures and current stock followed with the samples of the Masks. \r\n \r\nBest Regards \r\n \r\nGlebas Limited \r\n7 Carew Road \r\nLondon \r\nUnited Kingdom \r\n \r\nPhone: +44 744 872 7593 \r\nFax: +44 744 872 7595 \r\n \r\nEmail: sales@glebas.co.uk \r\n \r\nCompany reg number: 12395045 \r\nVAT Number: GB 340 047 834', '2020-10-15 00:22:20', '2020-10-15 00:22:20'),
(437, 'dVuzrpIxjQfPGDS', '8858122947', 'oughlesedrx@gmail.com', 'cuPViEFpGhftyYm', '2020-10-16 19:49:18', '2020-10-16 19:49:18'),
(439, 'Antonio    Carvalho', '84777615853', 'carvalhoadvogadosp1@gmail.com', 'Dear    Sir/Madam, \r\n \r\nI am a lawyer  from Lisbon, Portugal. \r\n \r\nA private attorney to the late Mrs. Anna,  She and his family died in an accident without a will. Now the bank contacted me as his private attorney, to present a beneficiary. Since you have the same surname  and come for the same country, i want to present your name to the bank. let the bank transfer to you the funds. We will share it 50/50. \r\n \r\nEvery legal formality will be handled by our law firm.  i will obtain all legal inheritance documents, for successful release of the fund to you without any hindrance. \r\n \r\nIts very important. its for our mutual  benefits. \r\n \r\nSend to me your full complete details below if you are interested to follow up with this transaction below. \r\n \r\nRegards  and  God  bless. \r\n \r\nAdvocate    Antonio    Carvalho \r\nReply  To:   carvalhoadvogadosp@gmail.com', '2020-10-28 07:49:12', '2020-10-28 07:49:12'),
(441, 'Timothyhow', '83332235241', 'swisslyft@gmail.com', 'Schützen Sie Sich! ZERTIFIZIERTE CHIRURGISCHE MASKEN, Qualitä und Fabrik Preise. Protégez-vous! MASQUES CHIRURGICAUX CERTIFIÉS! Prix d\'usine Livraison   - Lieferung: 48h Europe \r\nhttp://medecco.net/ \r\nhttp://maximarkt.store \r\n \r\n \r\nProtect yourself! CERTIFIED SURGICAL MASKS! Top Quality & Factory prices Schützen Sie Sich! ZERTIFIZIERTE CHIRURGISCHE MASKEN, Qualitä und Fabrik Preise. Protégez-vous! MASQUES CHIRURGICAUX CERTIFIÉS! Prix d\'usine,      Quick delivery – Livraison rapide - Schnelle Lieferung: \r\nhttp://medecco.net/ \r\nhttp://maximarkt.store', '2020-11-02 04:10:51', '2020-11-02 04:10:51'),
(443, 'uODVGKevSF', '9292980376', 'shanonjefferson5@gmail.com', 'DEcehuzfNpjlKb', '2020-11-07 11:56:11', '2020-11-07 11:56:11'),
(445, 'rtCYFkMSTdO', '8460330880', 'senkachiganna@gmail.com', 'XYzNZGeQtcm', '2020-11-13 08:41:38', '2020-11-13 08:41:38'),
(447, 'VmDCSdHW', '9166895964', 'conletzrenel2019@gmail.com', 'qYJvdTyutonE', '2020-11-24 13:32:30', '2020-11-24 13:32:30'),
(450, 'James Lambert', '85993481678', 'jlam73000@gmail.com', 'Good day \r\n \r\nI`m seeking for a reputable company/individual to partner with in a manner it would benefit both parties. The project is worth $24 Million so if interested, kindly contact me through this email jl543675da@naver.com for clarification. \r\n \r\nI await your response. \r\n \r\nThanks, \r\n \r\nJames Lambert', '2020-11-25 08:02:32', '2020-11-25 08:02:32'),
(452, 'gSVkIceuE', '9432107091', 'mushichigirurihigama@gmail.com', 'BSEOrPceQFhgA', '2020-11-30 13:29:04', '2020-11-30 13:29:04'),
(454, 'Melvin Kelsey', '88966387358', 'melvin.a.kelsey@gmail.com', 'Dear Sir / Madam \r\n \r\nJohn Lewis PLC is a British well-known retail store with over 40 stores all over the United Kingdom,furnished with European products. \r\nWe are looking for new Suppliers and would like to ask you the information required to become one of your regular distributors? \r\n \r\nPlease, we would appreciate if you could send us your stock list availability via email?. \r\nIndeed we are interested in your products, we would like to know if you can provide them. \r\n \r\nKind Regards \r\n \r\nJohn Lewis PLC \r\nMelvin Kelsey \r\nSenior Executive Purchase \r\n \r\n171 Victoria Street, London \r\nUnited Kingdom SW1E 5NN \r\nPhone: +44 33 3303 4178 \r\nEmail: melvin-kelsey@johnlewispartnerships.com \r\nWebsite: http://www.johnlewis.com', '2020-12-03 05:06:31', '2020-12-03 05:06:31'),
(456, 'Peter Mason', '89996734836', 'no-replyloard@gmail.com', 'Gооd dаy! \r\n \r\nDo you have issues ranking your website locally? \r\n \r\nWith our Google Maps citations strategy, we are able to rank you in top 5 in the Google Local Search for specific keywords. \r\nThe more Citations you build with us, the more keywords you`ll start ranking for \r\n \r\nMore details here: \r\nhttps://speed-seo.net/product/google-maps-citations/ \r\n \r\nthank you \r\nSpeed SEO Digital \r\nsupport@speed-seo.net', '2020-12-04 09:43:38', '2020-12-04 09:43:38'),
(457, 'James Green', '82341778528', 'no-reply@google.com', 'Gооd dаy! \r\nI have just checked klemiskesnamai.lt for the ranking keywords and seen that your SEO metrics could use a boost. \r\n \r\nWe will improve your SEO metrics and ranks organically and safely, using only whitehat methods, while providing monthly reports and outstanding support. \r\n \r\nPlease check our pricelist here, we offer SEO at cheap rates. \r\nhttps://www.hilkom-digital.de/cheap-seo-packages/ \r\n \r\nStart increasing your sales and leads with us, today! \r\n \r\nregards \r\nHilkom Digital Team \r\nsupport@hilkom-digital.de', '2020-12-08 12:22:19', '2020-12-08 12:22:19'),
(458, 'PfSgVcnvAwbByz', '6489629735', 'yariakakeko@gmail.com', 'WCODxRkwarzHKgFb', '2020-12-10 03:52:54', '2020-12-10 03:52:54'),
(460, 'xUYicLuv', '2446700804', 'scottdarlene317@gmail.com', 'aKFkGREUA', '2020-12-16 18:15:14', '2020-12-16 18:15:14'),
(462, 'HenryGuaph', '89036073213', 'abc@yahoo.co.in', 'Nebereikia ieškoti darbo. Darbas internete. \r\nNuoroda - http://365sekretov.ru/redirect.php?action=url&goto=hdredtube3.mobi%2Fbtsmart', '2020-12-20 07:33:05', '2020-12-20 07:33:05'),
(464, 'WIyDcLQTn', '8035317232', 'christopherroberts6977@gmail.com', 'alvYVJGSkhUpsyIq', '2020-12-25 08:06:40', '2020-12-25 08:06:40');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_02_23_081251_create_butais_table', 1),
(4, '2018_02_26_073514_pirmasa', 1),
(5, '2018_02_26_085327_pirmasb', 1),
(6, '2018_02_26_085423_pirmasc', 1),
(7, '2018_02_26_085441_antrasa', 1),
(8, '2018_02_26_085450_antrasb', 1),
(9, '2018_02_26_085458_antrasc', 1),
(10, '2018_02_26_085511_treciasa', 1),
(11, '2018_02_26_085523_treciasb', 1),
(12, '2018_02_26_085533_treciasc', 1),
(13, '2018_02_26_085550_ketvirtasa', 1),
(14, '2018_02_26_085559_ketvirtasb', 1),
(15, '2018_02_26_085618_ketvirtasc', 1),
(16, '2018_02_27_144519_kotedzai', 1),
(17, '2018_03_13_143322_create_mails_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pirmasa`
--

CREATE TABLE `pirmasa` (
  `id` int(10) UNSIGNED NOT NULL,
  `namo_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `auksto_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `buto_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kambariai` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cords` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plotas` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kryptis` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kaina` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apdaila` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `statusas` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pirmasa`
--

INSERT INTO `pirmasa` (`id`, `namo_id`, `auksto_id`, `buto_id`, `image`, `kambariai`, `cords`, `plotas`, `kryptis`, `kaina`, `apdaila`, `statusas`, `created_at`, `updated_at`) VALUES
(1, '1', '1', '1', '1auksto1.jpg', '', 'M 16.367511,598.86905 H 434.64835 L 436.46697,20.55032 H 14.548899 Z', '', '', '', '', 0, '2018-03-01 22:00:00', '2018-04-23 16:44:27'),
(2, '1', '1', '2', '1auksto2.jpg', '', 'M 436.46697,420.64504 H 927.4923 L 929.31092,18.731707 436.46697,20.55032 Z', '', '', '', '', 0, '2018-03-01 22:00:00', '2018-03-30 07:23:31'),
(3, '1', '1', '3', '1auksto3.jpg', '', 'm 927.4923,420.64504 v 180.04262 l 416.4622,-3.63722 1.8186,-574.681508 -416.46218,-3.637225 z', '', '', '', '', 0, '2018-03-01 22:00:00', '2018-03-21 11:18:06');

-- --------------------------------------------------------

--
-- Table structure for table `pirmasb`
--

CREATE TABLE `pirmasb` (
  `id` int(10) UNSIGNED NOT NULL,
  `namo_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `auksto_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `buto_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kambariai` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cords` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plotas` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kryptis` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kaina` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apdaila` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `statusas` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pirmasb`
--

INSERT INTO `pirmasb` (`id`, `namo_id`, `auksto_id`, `buto_id`, `image`, `kambariai`, `cords`, `plotas`, `kryptis`, `kaina`, `apdaila`, `statusas`, `created_at`, `updated_at`) VALUES
(1, '1', '2', '4', '2auksto1.jpg', '', 'M 52.739758,700.71134 H 445.56003 L 443.74142,35.099219 56.376983,33.280606 Z', '', '', '', '', 0, '2018-03-08 22:00:00', '2018-03-30 07:23:33'),
(2, '1', '2', '5', '2auksto2.jpg', '', 'm 443.74142,35.099219 456.4717,1.818612 -3.63723,432.829739 H 441.9228 Z', '', '', '', '', 0, '2018-03-08 22:00:00', '2018-03-21 11:18:01'),
(3, '1', '2', '6', '2auksto3.jpg', '', 'M 900.21312,36.917831 1283.9403,35.099219 V 697.07412 L 896.57589,695.25551 V 469.74757 Z', '', '', '', '', 0, '2018-03-08 22:00:00', '2018-03-21 11:17:31');

-- --------------------------------------------------------

--
-- Table structure for table `pirmasc`
--

CREATE TABLE `pirmasc` (
  `id` int(10) UNSIGNED NOT NULL,
  `namo_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `auksto_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `buto_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kambariai` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cords` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plotas` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kryptis` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kaina` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apdaila` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `statusas` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pirmasc`
--

INSERT INTO `pirmasc` (`id`, `namo_id`, `auksto_id`, `buto_id`, `image`, `kambariai`, `cords`, `plotas`, `kryptis`, `kaina`, `apdaila`, `statusas`, `created_at`, `updated_at`) VALUES
(1, '1', '3', '7', '2auksto1.jpg', '', 'M 52.739758,700.71134 H 445.56003 L 443.74142,35.099219 56.376983,33.280606 Z', '', '', '', '', 0, '2018-03-08 22:00:00', '2018-03-30 07:23:36'),
(2, '1', '3', '8', '2auksto2.jpg', '', 'm 443.74142,35.099219 456.4717,1.818612 -3.63723,432.829739 H 441.9228 Z', '', '', '', '', 0, '2018-03-08 22:00:00', '2018-03-21 11:17:26'),
(3, '1', '3', '9', '2auksto3.jpg', '', 'M 900.21312,36.917831 1283.9403,35.099219 V 697.07412 L 896.57589,695.25551 V 469.74757 Z', '', '', '', '', 0, '2018-03-08 22:00:00', '2018-03-30 07:23:37');

-- --------------------------------------------------------

--
-- Table structure for table `treciasa`
--

CREATE TABLE `treciasa` (
  `id` int(10) UNSIGNED NOT NULL,
  `namo_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `auksto_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `buto_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kambariai` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cords` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plotas` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kryptis` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kaina` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apdaila` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `statusas` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `treciasa`
--

INSERT INTO `treciasa` (`id`, `namo_id`, `auksto_id`, `buto_id`, `image`, `kambariai`, `cords`, `plotas`, `kryptis`, `kaina`, `apdaila`, `statusas`, `created_at`, `updated_at`) VALUES
(1, '3', '1', '1', '1auksto1.jpg', '', 'M 16.367511,598.86905 H 434.64835 L 436.46697,20.55032 H 14.548899 Z', '', '', '', '', 0, '2018-03-08 22:00:00', '2018-03-08 22:00:00'),
(2, '3', '1', '2', '1auksto2.jpg', '', 'M 436.46697,420.64504 H 927.4923 L 929.31092,18.731707 436.46697,20.55032 Z', '', '', '', '', 0, '2018-03-08 22:00:00', '2018-03-21 10:26:47'),
(3, '3', '1', '3', '1auksto3.jpg', '', 'm 927.4923,420.64504 v 180.04262 l 416.4622,-3.63722 1.8186,-574.681508 -416.46218,-3.637225 z', '', '', '', '', 0, '2018-03-08 22:00:00', '2018-03-30 07:23:56');

-- --------------------------------------------------------

--
-- Table structure for table `treciasb`
--

CREATE TABLE `treciasb` (
  `id` int(10) UNSIGNED NOT NULL,
  `namo_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `auksto_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `buto_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kambariai` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cords` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plotas` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kryptis` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kaina` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apdaila` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `statusas` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `treciasb`
--

INSERT INTO `treciasb` (`id`, `namo_id`, `auksto_id`, `buto_id`, `image`, `kambariai`, `cords`, `plotas`, `kryptis`, `kaina`, `apdaila`, `statusas`, `created_at`, `updated_at`) VALUES
(1, '3', '2', '4', '2auksto1.jpg', '', 'M 52.739758,700.71134 H 445.56003 L 443.74142,35.099219 56.376983,33.280606 Z', '', '', '', '', 0, '2018-03-08 22:00:00', '2018-03-08 22:00:00'),
(2, '3', '2', '5', '2auksto2.jpg', '', 'm 443.74142,35.099219 456.4717,1.818612 -3.63723,432.829739 H 441.9228 Z', '', '', '', '', 0, '2018-03-08 22:00:00', '2018-03-08 22:00:00'),
(3, '3', '2', '6', '2auksto3.jpg', '', 'M 900.21312,36.917831 1283.9403,35.099219 V 697.07412 L 896.57589,695.25551 V 469.74757 Z', '', '', '', '', 0, '2018-03-08 22:00:00', '2018-03-08 22:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `treciasc`
--

CREATE TABLE `treciasc` (
  `id` int(10) UNSIGNED NOT NULL,
  `namo_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `auksto_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `buto_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kambariai` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cords` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plotas` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kryptis` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kaina` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apdaila` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `statusas` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `treciasc`
--

INSERT INTO `treciasc` (`id`, `namo_id`, `auksto_id`, `buto_id`, `image`, `kambariai`, `cords`, `plotas`, `kryptis`, `kaina`, `apdaila`, `statusas`, `created_at`, `updated_at`) VALUES
(1, '3', '3', '7', '2auksto1.jpg', '', 'M 52.739758,700.71134 H 445.56003 L 443.74142,35.099219 56.376983,33.280606 Z', '', '', '', '', 0, '2018-03-08 22:00:00', '2018-03-08 22:00:00'),
(2, '3', '3', '8', '2auksto2.jpg', '', 'm 443.74142,35.099219 456.4717,1.818612 -3.63723,432.829739 H 441.9228 Z', '', '', '', '', 0, '2018-03-08 22:00:00', '2018-03-08 22:00:00'),
(3, '3', '3', '9', '2auksto3.jpg', '', 'M 900.21312,36.917831 1283.9403,35.099219 V 697.07412 L 896.57589,695.25551 V 469.74757 Z', '', '', '', '', 0, '2018-03-08 22:00:00', '2018-03-08 22:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'test', 'test@test.com', '$2y$10$CReWMOrpyxqRJGrdSjYs4O7/.v/G6.R.VgdZFyq.SXtmj448h5nh2', 'vC7sNRDSPSFAi8wMe4YreyWFWZHQ2oi4YirL132yUwTPbNkgLocmqtWvmuMf', '2018-03-29 05:10:55', '2018-03-29 05:10:55'),
(2, 'Admin', 'info@klemiskesnamai.lt', '$2y$10$z9rCTQ14Po.0CB5COryleOZ0ini3JGLCfVlCpx9bXPiBprAGmSVNy', 'SLNlIoTzjmQmoAI0udw4rGMJpLt5kuK8oaCeboQSzIvQEp4NmH2238FsSGbh', '2018-04-06 04:31:06', '2018-04-06 04:31:06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `antrasa`
--
ALTER TABLE `antrasa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `antrasb`
--
ALTER TABLE `antrasb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `antrasc`
--
ALTER TABLE `antrasc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `butais`
--
ALTER TABLE `butais`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ketvirtasa`
--
ALTER TABLE `ketvirtasa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ketvirtasb`
--
ALTER TABLE `ketvirtasb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ketvirtasc`
--
ALTER TABLE `ketvirtasc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kotedzai`
--
ALTER TABLE `kotedzai`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mails`
--
ALTER TABLE `mails`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mails_email_unique` (`email`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `pirmasa`
--
ALTER TABLE `pirmasa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pirmasb`
--
ALTER TABLE `pirmasb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pirmasc`
--
ALTER TABLE `pirmasc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `treciasa`
--
ALTER TABLE `treciasa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `treciasb`
--
ALTER TABLE `treciasb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `treciasc`
--
ALTER TABLE `treciasc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `antrasa`
--
ALTER TABLE `antrasa`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `antrasb`
--
ALTER TABLE `antrasb`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `antrasc`
--
ALTER TABLE `antrasc`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `butais`
--
ALTER TABLE `butais`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ketvirtasa`
--
ALTER TABLE `ketvirtasa`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ketvirtasb`
--
ALTER TABLE `ketvirtasb`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ketvirtasc`
--
ALTER TABLE `ketvirtasc`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `kotedzai`
--
ALTER TABLE `kotedzai`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `mails`
--
ALTER TABLE `mails`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=471;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `pirmasa`
--
ALTER TABLE `pirmasa`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pirmasb`
--
ALTER TABLE `pirmasb`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pirmasc`
--
ALTER TABLE `pirmasc`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `treciasa`
--
ALTER TABLE `treciasa`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `treciasb`
--
ALTER TABLE `treciasb`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `treciasc`
--
ALTER TABLE `treciasc`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;