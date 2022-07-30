-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 20, 2022 at 09:16 AM
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
-- Database: `webdip2021x032`
--

-- --------------------------------------------------------

--
-- Table structure for table `dnevnik_rada`
--

CREATE TABLE `dnevnik_rada` (
  `id dnevnik_rada` int(11) NOT NULL,
  `datum_vrijeme` datetime NOT NULL,
  `radnja` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_korisnik` int(11) DEFAULT NULL,
  `id_tip_zapisa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dnevnik_rada`
--

INSERT INTO `dnevnik_rada` (`id dnevnik_rada`, `datum_vrijeme`, `radnja`, `id_korisnik`, `id_tip_zapisa`) VALUES
(3, '2022-06-17 22:44:18', 'Korisnik DHehet123 se je registrirao', 7, 1),
(4, '2022-06-18 07:04:03', 'Korisnik Canzi se je registrirao', 8, 1),
(5, '2022-06-18 16:00:05', 'Korisnik canzi je blokiran', 8, 5),
(6, '2022-06-18 16:58:46', 'Korisnik dhehet123 se je uspješno prijavio', 7, 2),
(8, '2022-06-18 17:08:09', 'Korisnik maguire_MU se je pokušao prijaviti s blokiranim računom', 11, 2),
(9, '2022-06-18 17:08:51', 'Korisnik canzi se je pokušao prijaviti s blokiranim računom', 8, 2),
(10, '2022-06-18 17:09:57', 'Korisnik dhehet123 se je uspješno prijavio', 7, 2),
(11, '2022-06-18 17:33:10', 'Korisnik dhehet123 se je neuspješno prijavio', 7, 2),
(13, '2022-06-18 17:35:03', 'Korisnik dhehet123 se je neuspješno prijavio', 7, 2),
(14, '2022-06-18 17:35:24', 'Korisnik dhehet123 se je uspješno prijavio', 7, 2),
(15, '2022-06-18 17:47:23', 'Korisnik dhehet123 se je uspješno prijavio', 7, 2),
(16, '2022-06-18 17:49:00', 'Korisnik dhehet123 se je neuspješno prijavio', 7, 2),
(17, '2022-06-18 17:49:07', 'Korisnik dhehet123 se je uspješno prijavio', 7, 2),
(18, '2022-06-18 17:50:08', 'Korisnik dhehet123 se je uspješno prijavio', 7, 2),
(19, '2022-06-18 17:50:16', 'Korisnik DHehet123 se je odjavio', 7, 3),
(20, '2022-06-18 19:34:01', 'Korisnik Daddy012 se je registrirao', 12, 1),
(21, '2022-06-18 19:34:29', 'Korisnik Daddy012 se je uspješno prijavio', 12, 2),
(22, '2022-06-18 19:34:55', 'Korisnik Daddy012 se je odjavio', 12, 3),
(23, '2022-06-18 21:31:03', 'Korisnik c_east se je uspješno prijavio', 9, 2),
(24, '2022-06-18 22:16:14', 'Korisnik c_east se je odjavio', 9, 3),
(25, '2022-06-18 22:16:32', 'Korisnik c_east se je uspješno prijavio', 9, 2),
(26, '2022-06-18 22:17:52', 'Korisnik c_east se je odjavio', 9, 3),
(27, '2022-06-18 22:18:00', 'Korisnik c_east se je uspješno prijavio', 9, 2),
(29, '2022-06-19 00:28:34', 'Korisnik c_east je pomaknuo virtualno vrijeme', 9, 5),
(30, '2022-06-18 17:29:23', 'Korisnik c_east je pomaknuo virtualno vrijeme', 9, 5),
(31, '2022-06-18 17:31:19', 'Korisnik c_east je pomaknuo virtualno vrijeme', 9, 5),
(32, '2022-06-18 17:31:25', 'Korisnik c_east se je odjavio', 9, 3),
(33, '2022-06-18 22:32:58', 'Korisnik laputan-machine se je uspješno prijavio', 10, 2),
(34, '2022-06-18 17:34:10', 'Korisnik laputan-machine se je odjavio', 10, 3),
(35, '2022-06-19 12:48:45', 'Korisnik c_east se je neuspješno prijavio', 9, 2),
(36, '2022-06-19 12:49:13', 'Korisnik c_east se je uspješno prijavio', 9, 2),
(37, '2022-06-19 12:49:33', 'Korisnik c_east se je odjavio', 9, 3),
(38, '2022-06-19 12:49:43', 'Korisnik c_east se je uspješno prijavio', 9, 2),
(39, '2022-06-19 17:20:22', 'Korisnik c_east je pristupio skripti: index.php', 9, 5),
(40, '2022-06-19 17:20:29', 'Korisnik c_east se je odjavio', 9, 3),
(42, '2022-06-19 17:23:30', 'Korisnik c_east se je neuspješno prijavio', 9, 2),
(43, '2022-06-19 17:24:06', 'Korisnik Daddy012 se je uspješno prijavio', 12, 2),
(44, '2022-06-19 17:24:06', 'Korisnik Daddy012 je pristupio skripti: index.php', 12, 5),
(45, '2022-06-19 17:24:32', 'Korisnik Daddy012 se je odjavio', 12, 3),
(46, '2022-06-19 17:24:58', 'Korisnik canzi se je pokušao prijaviti s blokiranim računom', 8, 2),
(47, '2022-06-19 17:25:50', 'Korisnik vitoo se je registrirao', 13, 1),
(48, '2022-06-19 17:26:08', 'Korisnik vitoo se je uspješno prijavio', 13, 2),
(49, '2022-06-19 17:26:08', 'Korisnik vitoo je pristupio skripti: index.php', 13, 5),
(50, '2022-06-19 17:26:15', 'Korisnik vitoo je pristupio skripti: index.php', 13, 5),
(51, '2022-06-19 17:26:28', 'Korisnik vitoo je pristupio skripti: rang_lista.php', 13, 5),
(52, '2022-06-19 17:26:28', 'Korisnik vitoo je izvršio upit: SELECT', 13, 4),
(53, '2022-06-19 17:26:31', 'Korisnik vitoo je izvršio upit: SELECT', 13, 4),
(54, '2022-06-19 17:26:33', 'Korisnik vitoo je izvršio upit: SELECT', 13, 4),
(55, '2022-06-19 17:26:34', 'Korisnik vitoo je izvršio upit: SELECT', 13, 4),
(56, '2022-06-19 17:26:35', 'Korisnik vitoo je izvršio upit: SELECT', 13, 4),
(57, '2022-06-19 17:26:57', 'Korisnik vitoo se je odjavio', 13, 3),
(58, '2022-06-19 17:27:15', 'Korisnik c_east se je uspješno prijavio', 9, 2),
(59, '2022-06-19 17:27:15', 'Korisnik c_east je pristupio skripti: index.php', 9, 5),
(60, '2022-06-19 17:27:47', 'Korisnik c_east je pristupio skripti: dnevnik.php', 9, 5),
(61, '2022-06-19 17:27:47', 'Korisnik c_east je izvršio upit: SELECT', 9, 4),
(62, '2022-06-19 17:27:55', 'Korisnik c_east je izvršio upit: SELECT', 9, 4),
(63, '2022-06-19 17:28:00', 'Korisnik c_east je izvršio upit: SELECT', 9, 4),
(64, '2022-06-19 17:28:02', 'Korisnik c_east je izvršio upit: SELECT', 9, 4),
(65, '2022-06-19 17:28:23', 'Korisnik c_east je izvršio upit: SELECT', 9, 4),
(66, '2022-06-19 17:28:26', 'Korisnik c_east je izvršio upit: SELECT', 9, 4),
(67, '2022-06-19 17:28:26', 'Korisnik c_east je izvršio upit: SELECT', 9, 4),
(68, '2022-06-19 17:28:26', 'Korisnik c_east je izvršio upit: SELECT', 9, 4),
(69, '2022-06-19 17:28:29', 'Korisnik c_east je izvršio upit: SELECT', 9, 4),
(70, '2022-06-19 17:28:29', 'Korisnik c_east je izvršio upit: SELECT', 9, 4),
(71, '2022-06-19 17:28:30', 'Korisnik c_east je izvršio upit: SELECT', 9, 4),
(72, '2022-06-19 17:28:30', 'Korisnik c_east je izvršio upit: SELECT', 9, 4),
(73, '2022-06-19 17:28:30', 'Korisnik c_east je izvršio upit: SELECT', 9, 4),
(74, '2022-06-19 17:28:30', 'Korisnik c_east je izvršio upit: SELECT', 9, 4),
(75, '2022-06-19 17:28:30', 'Korisnik c_east je izvršio upit: SELECT', 9, 4),
(76, '2022-06-19 17:28:34', 'Korisnik c_east je izvršio upit: SELECT', 9, 4),
(77, '2022-06-19 17:28:34', 'Korisnik c_east je izvršio upit: SELECT', 9, 4),
(78, '2022-06-19 17:28:34', 'Korisnik c_east je izvršio upit: SELECT', 9, 4),
(79, '2022-06-19 17:28:34', 'Korisnik c_east je izvršio upit: SELECT', 9, 4),
(80, '2022-06-19 17:28:35', 'Korisnik c_east je izvršio upit: SELECT', 9, 4),
(81, '2022-06-19 17:28:35', 'Korisnik c_east je izvršio upit: SELECT', 9, 4),
(82, '2022-06-19 17:28:35', 'Korisnik c_east je izvršio upit: SELECT', 9, 4),
(83, '2022-06-19 17:28:36', 'Korisnik c_east je izvršio upit: SELECT', 9, 4),
(84, '2022-06-19 17:28:36', 'Korisnik c_east je izvršio upit: SELECT', 9, 4),
(85, '2022-06-19 17:28:36', 'Korisnik c_east je izvršio upit: SELECT', 9, 4),
(86, '2022-06-19 17:28:38', 'Korisnik c_east je izvršio upit: SELECT', 9, 4),
(87, '2022-06-19 17:28:38', 'Korisnik c_east je izvršio upit: SELECT', 9, 4),
(88, '2022-06-19 17:28:39', 'Korisnik c_east je izvršio upit: SELECT', 9, 4),
(89, '2022-06-19 17:28:40', 'Korisnik c_east je izvršio upit: SELECT', 9, 4),
(90, '2022-06-19 17:28:40', 'Korisnik c_east je izvršio upit: SELECT', 9, 4),
(91, '2022-06-19 17:28:40', 'Korisnik c_east je izvršio upit: SELECT', 9, 4),
(92, '2022-06-19 17:28:41', 'Korisnik c_east je izvršio upit: SELECT', 9, 4),
(93, '2022-06-19 17:28:41', 'Korisnik c_east je izvršio upit: SELECT', 9, 4),
(94, '2022-06-19 17:28:41', 'Korisnik c_east je izvršio upit: SELECT', 9, 4),
(95, '2022-06-19 17:28:41', 'Korisnik c_east je izvršio upit: SELECT', 9, 4),
(96, '2022-06-19 17:28:41', 'Korisnik c_east je izvršio upit: SELECT', 9, 4),
(97, '2022-06-19 17:28:41', 'Korisnik c_east je izvršio upit: SELECT', 9, 4),
(98, '2022-06-19 17:28:41', 'Korisnik c_east je izvršio upit: SELECT', 9, 4),
(99, '2022-06-19 17:28:42', 'Korisnik c_east je izvršio upit: SELECT', 9, 4),
(100, '2022-06-19 17:28:42', 'Korisnik c_east je izvršio upit: SELECT', 9, 4),
(101, '2022-06-19 17:28:42', 'Korisnik c_east je izvršio upit: SELECT', 9, 4),
(102, '2022-06-19 17:28:42', 'Korisnik c_east je izvršio upit: SELECT', 9, 4),
(103, '2022-06-19 17:28:43', 'Korisnik c_east je izvršio upit: SELECT', 9, 4),
(104, '2022-06-19 17:28:43', 'Korisnik c_east je izvršio upit: SELECT', 9, 4),
(105, '2022-06-19 17:28:43', 'Korisnik c_east je izvršio upit: SELECT', 9, 4),
(106, '2022-06-19 17:28:44', 'Korisnik c_east je izvršio upit: SELECT', 9, 4),
(107, '2022-06-19 17:28:45', 'Korisnik c_east je izvršio upit: SELECT', 9, 4),
(108, '2022-06-19 17:28:45', 'Korisnik c_east je izvršio upit: SELECT', 9, 4),
(109, '2022-06-19 17:28:45', 'Korisnik c_east je izvršio upit: SELECT', 9, 4),
(110, '2022-06-19 17:28:45', 'Korisnik c_east je izvršio upit: SELECT', 9, 4),
(111, '2022-06-19 17:28:45', 'Korisnik c_east je izvršio upit: SELECT', 9, 4),
(112, '2022-06-19 17:28:45', 'Korisnik c_east je izvršio upit: SELECT', 9, 4),
(113, '2022-06-19 17:28:48', 'Korisnik c_east je izvršio upit: SELECT', 9, 4),
(114, '2022-06-19 17:28:49', 'Korisnik c_east je izvršio upit: SELECT', 9, 4),
(115, '2022-06-19 17:28:51', 'Korisnik c_east je izvršio upit: SELECT', 9, 4),
(116, '2022-06-19 17:28:58', 'Korisnik c_east je izvršio upit: SELECT', 9, 4),
(117, '2022-06-19 17:29:04', 'Korisnik c_east je izvršio upit: SELECT', 9, 4),
(118, '2022-06-19 17:30:21', 'Korisnik c_east je izvršio upit: SELECT', 9, 4),
(119, '2022-06-19 17:30:29', 'Korisnik c_east je pristupio skripti: dnevnik.php', 9, 5),
(120, '2022-06-19 17:30:30', 'Korisnik c_east je izvršio upit: SELECT', 9, 4),
(121, '2022-06-19 17:30:31', 'Korisnik c_east je izvršio upit: SELECT', 9, 4),
(122, '2022-06-19 17:30:32', 'Korisnik c_east je izvršio upit: SELECT', 9, 4),
(123, '2022-06-19 17:30:36', 'Korisnik c_east je izvršio upit: SELECT', 9, 4),
(124, '2022-06-19 17:30:37', 'Korisnik c_east je izvršio upit: SELECT', 9, 4),
(125, '2022-06-19 17:30:40', 'Korisnik c_east je izvršio upit: SELECT', 9, 4),
(126, '2022-06-19 17:30:42', 'Korisnik c_east je izvršio upit: SELECT', 9, 4),
(127, '2022-06-19 17:30:55', 'Korisnik c_east je izvršio upit: SELECT', 9, 4),
(128, '2022-06-19 17:30:55', 'Korisnik c_east je izvršio upit: SELECT', 9, 4),
(129, '2022-06-19 17:30:56', 'Korisnik c_east je izvršio upit: SELECT', 9, 4),
(130, '2022-06-19 17:30:56', 'Korisnik c_east je izvršio upit: SELECT', 9, 4),
(131, '2022-06-19 17:30:56', 'Korisnik c_east je izvršio upit: SELECT', 9, 4),
(132, '2022-06-19 17:30:56', 'Korisnik c_east je izvršio upit: SELECT', 9, 4),
(133, '2022-06-19 17:30:56', 'Korisnik c_east je izvršio upit: SELECT', 9, 4),
(134, '2022-06-19 17:30:56', 'Korisnik c_east je izvršio upit: SELECT', 9, 4),
(135, '2022-06-19 17:30:56', 'Korisnik c_east je izvršio upit: SELECT', 9, 4),
(136, '2022-06-19 17:30:56', 'Korisnik c_east je izvršio upit: SELECT', 9, 4),
(137, '2022-06-19 17:31:01', 'Korisnik c_east je pristupio skripti: korisnici.php', 9, 5),
(138, '2022-06-19 17:31:01', 'Korisnik c_east je izvršio upit: SELECT', 9, 4),
(139, '2022-06-19 17:31:12', 'Korisnik c_east je izvršio upit: SELECT', 9, 4),
(140, '2022-06-19 17:31:12', 'Korisnik c_east je izvršio upit: SELECT', 9, 4),
(141, '2022-06-19 17:31:14', 'Korisnik c_east je izvršio upit: SELECT', 9, 4),
(142, '2022-06-19 17:31:14', 'Korisnik c_east je izvršio upit: SELECT', 9, 4),
(143, '2022-06-19 17:31:17', 'Korisnik c_east je izvršio upit: SELECT', 9, 4),
(144, '2022-06-19 17:31:17', 'Korisnik c_east je pristupio skripti: promijeni_vrijeme.php', 9, 5),
(145, '2022-06-19 17:31:23', 'Korisnik c_east je izvršio upit: SELECT', 9, 4),
(146, '2022-06-19 17:31:23', 'Korisnik c_east je pristupio skripti: promijeni_vrijeme.php', 9, 5),
(147, '2022-06-20 04:31:23', 'Korisnik c_east je izvršio upit: UPDATE', 9, 4),
(148, '2022-06-20 04:31:23', 'Korisnik c_east je izvršio upit: SELECT', 9, 4),
(149, '2022-06-20 04:31:23', 'Korisnik c_east je pomaknuo virtualno vrijeme', 9, 5),
(150, '2022-06-20 04:31:34', 'Korisnik c_east je izvršio upit: SELECT', 9, 4),
(151, '2022-06-20 04:31:34', 'Korisnik c_east je pristupio skripti: promijeni_vrijeme.php', 9, 5),
(152, '2022-06-19 23:31:34', 'Korisnik c_east je izvršio upit: UPDATE', 9, 4),
(153, '2022-06-19 23:31:34', 'Korisnik c_east je izvršio upit: SELECT', 9, 4),
(154, '2022-06-19 23:31:34', 'Korisnik c_east je pomaknuo virtualno vrijeme', 9, 5),
(155, '2022-06-19 23:31:38', 'Korisnik c_east je pristupio skripti: dnevnik.php', 9, 5),
(156, '2022-06-19 23:31:38', 'Korisnik c_east je izvršio upit: SELECT', 9, 4),
(157, '2022-06-19 23:31:42', 'Korisnik c_east je izvršio upit: SELECT', 9, 4),
(158, '2022-06-19 23:38:54', 'Korisnik c_east je izvršio upit: SELECT', 9, 4),
(159, '2022-06-19 23:38:54', 'Korisnik c_east je izvršio upit: SELECT', 9, 4),
(160, '2022-06-19 23:38:54', 'Korisnik c_east je izvršio upit: SELECT', 9, 4),
(161, '2022-06-19 23:38:55', 'Korisnik c_east je izvršio upit: SELECT', 9, 4),
(162, '2022-06-19 23:38:57', 'Korisnik c_east je izvršio upit: SELECT', 9, 4),
(163, '2022-06-19 23:38:58', 'Korisnik c_east je izvršio upit: SELECT', 9, 4),
(164, '2022-06-19 23:40:02', 'Korisnik c_east je pristupio skripti: dnevnik.php', 9, 5),
(165, '2022-06-19 23:40:02', 'Korisnik c_east je izvršio upit: SELECT', 9, 4),
(166, '2022-06-19 23:40:08', 'Korisnik c_east je izvršio upit: SELECT', 9, 4),
(167, '2022-06-19 23:40:12', 'Korisnik c_east je izvršio upit: SELECT', 9, 4),
(168, '2022-06-19 23:40:14', 'Korisnik c_east je izvršio upit: SELECT', 9, 4),
(169, '2022-06-19 23:41:04', 'Korisnik c_east je pristupio skripti: dnevnik.php', 9, 5),
(170, '2022-06-19 23:41:04', 'Korisnik c_east je izvršio upit: SELECT', 9, 4),
(171, '2022-06-19 23:41:09', 'Korisnik c_east je pristupio skripti: index.php', 9, 5),
(172, '2022-06-19 23:41:09', 'Korisnik c_east je pristupio skripti: dnevnik.php', 9, 5),
(173, '2022-06-19 23:41:09', 'Korisnik c_east je izvršio upit: SELECT', 9, 4),
(174, '2022-06-19 23:41:12', 'Korisnik c_east je izvršio upit: SELECT', 9, 4),
(175, '2022-06-19 23:41:12', 'Korisnik c_east je izvršio upit: SELECT', 9, 4),
(176, '2022-06-19 23:41:15', 'Korisnik c_east je izvršio upit: SELECT', 9, 4),
(177, '2022-06-19 23:42:27', 'Korisnik c_east je pristupio skripti: dnevnik.php', 9, 5),
(178, '2022-06-19 23:42:27', 'Korisnik c_east je izvršio upit: SELECT', 9, 4),
(179, '2022-06-19 23:42:29', 'Korisnik c_east je pristupio skripti: dnevnik.php', 9, 5),
(180, '2022-06-19 23:42:29', 'Korisnik c_east je izvršio upit: SELECT', 9, 4),
(181, '2022-06-19 23:42:33', 'Korisnik c_east je izvršio upit: SELECT', 9, 4),
(182, '2022-06-19 23:44:25', 'Korisnik c_east je pristupio skripti: dnevnik.php', 9, 5),
(183, '2022-06-19 23:44:32', 'Korisnik c_east je pristupio skripti: dnevnik.php', 9, 5),
(184, '2022-06-19 23:44:49', 'Korisnik c_east je pristupio skripti: dnevnik.php', 9, 5),
(185, '2022-06-19 23:45:48', 'Korisnik c_east je pristupio skripti: index.php', 9, 5),
(186, '2022-06-19 23:45:50', 'Korisnik c_east je pristupio skripti: dnevnik.php', 9, 5),
(187, '2022-06-19 23:48:12', 'Korisnik c_east je pristupio skripti: promijeni_vrijeme.php', 9, 5),
(188, '2022-06-19 23:48:19', 'Korisnik c_east je pristupio skripti: promijeni_vrijeme.php', 9, 5),
(189, '2022-06-20 00:48:19', 'Korisnik c_east je pomaknuo virtualno vrijeme', 9, 5),
(190, '2022-06-20 00:48:21', 'Korisnik c_east je pristupio skripti: dnevnik.php', 9, 5),
(191, '2022-06-20 00:53:01', 'Korisnik c_east je pristupio skripti: dnevnik.php', 9, 5),
(192, '2022-06-20 00:53:03', 'Korisnik c_east je pristupio skripti: index.php', 9, 5),
(193, '2022-06-20 00:53:05', 'Korisnik c_east je pristupio skripti: dnevnik.php', 9, 5),
(194, '2022-06-20 00:53:15', 'Korisnik c_east se je odjavio', 9, 3),
(195, '2022-06-20 03:27:18', 'Korisnik c_east se je uspješno prijavio', 9, 2),
(196, '2022-06-20 03:27:18', 'Korisnik c_east je pristupio skripti: index.php', 9, 5),
(197, '2022-06-20 03:29:23', 'Korisnik c_east je pristupio skripti: index.php', 9, 5),
(198, '2022-06-20 03:29:23', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(199, '2022-06-20 03:29:35', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(200, '2022-06-20 03:33:54', 'Korisnik c_east je pristupio skripti: dnevnik.php', 9, 5),
(201, '2022-06-20 03:33:57', 'Korisnik c_east je pristupio skripti: korisnici.php', 9, 5),
(202, '2022-06-20 03:34:17', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(203, '2022-06-20 03:34:23', 'Korisnik c_east je pristupio skripti: korisnici.php', 9, 5),
(204, '2022-06-20 03:34:27', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(205, '2022-06-20 03:34:44', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(206, '2022-06-20 03:38:32', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(207, '2022-06-20 03:39:31', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(208, '2022-06-20 03:39:32', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(209, '2022-06-20 03:39:35', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(210, '2022-06-20 03:39:37', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(211, '2022-06-20 03:39:39', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(212, '2022-06-20 03:39:42', 'Korisnik c_east je pristupio skripti: rang_lista.php', 9, 5),
(213, '2022-06-20 03:39:45', 'Korisnik c_east je pristupio skripti: korisnici.php', 9, 5),
(214, '2022-06-20 03:39:51', 'Korisnik c_east je pristupio skripti: promijeni_vrijeme.php', 9, 5),
(215, '2022-06-20 03:39:54', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(216, '2022-06-20 03:44:17', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(217, '2022-06-20 03:46:17', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(218, '2022-06-20 03:47:02', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(219, '2022-06-20 03:48:17', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(220, '2022-06-20 03:48:17', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(221, '2022-06-20 03:49:27', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(222, '2022-06-20 03:49:28', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(223, '2022-06-20 03:56:33', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(224, '2022-06-20 03:59:19', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(225, '2022-06-20 04:06:29', 'Korisnik c_east je pristupio skripti: dnevnik.php', 9, 5),
(226, '2022-06-20 04:06:53', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(227, '2022-06-20 04:24:48', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(228, '2022-06-20 04:45:24', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(229, '2022-06-20 04:46:39', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(230, '2022-06-20 04:46:40', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(231, '2022-06-20 04:47:09', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(232, '2022-06-20 04:47:12', 'Korisnik c_east je pristupio skripti: korisnici.php', 9, 5),
(233, '2022-06-20 04:47:27', 'Korisnik c_east je pristupio skripti: korisnici.php', 9, 5),
(234, '2022-06-20 04:48:47', 'Korisnik c_east je pristupio skripti: dnevnik.php', 9, 5),
(235, '2022-06-20 04:48:53', 'Korisnik c_east je pristupio skripti: korisnici.php', 9, 5),
(236, '2022-06-20 04:49:33', 'Korisnik c_east je pristupio skripti: korisnici.php', 9, 5),
(237, '2022-06-20 04:49:36', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(238, '2022-06-20 04:51:34', 'Korisnik c_east je pristupio skripti: korisnici.php', 9, 5),
(239, '2022-06-20 04:53:56', 'Korisnik c_east je pristupio skripti: korisnici.php', 9, 5),
(240, '2022-06-20 04:54:04', 'Korisnik c_east je pristupio skripti: dnevnik.php', 9, 5),
(241, '2022-06-20 04:54:10', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(242, '2022-06-20 04:54:51', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(243, '2022-06-20 05:03:49', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(244, '2022-06-20 05:04:13', 'Korisnik c_east je pristupio skripti: dnevnik.php', 9, 5),
(245, '2022-06-20 05:04:21', 'Korisnik c_east je pristupio skripti: korisnici.php', 9, 5),
(246, '2022-06-20 05:04:28', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(247, '2022-06-20 05:05:12', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(248, '2022-06-20 05:05:26', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(249, '2022-06-20 05:07:10', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(250, '2022-06-20 05:07:19', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(251, '2022-06-20 05:08:07', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(252, '2022-06-20 05:08:18', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(253, '2022-06-20 05:08:32', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(254, '2022-06-20 05:08:50', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(255, '2022-06-20 05:10:05', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(256, '2022-06-20 05:10:34', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(257, '2022-06-20 05:11:34', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(258, '2022-06-20 05:11:40', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(259, '2022-06-20 05:11:48', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(260, '2022-06-20 05:12:26', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(261, '2022-06-20 05:12:42', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(262, '2022-06-20 05:13:04', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(263, '2022-06-20 05:13:40', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(264, '2022-06-20 05:14:00', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(265, '2022-06-20 05:15:31', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(266, '2022-06-20 05:16:22', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(267, '2022-06-20 05:16:41', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(268, '2022-06-20 05:16:52', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(269, '2022-06-20 05:17:00', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(270, '2022-06-20 05:17:12', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(271, '2022-06-20 05:17:16', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(272, '2022-06-20 05:17:19', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(273, '2022-06-20 05:17:28', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(274, '2022-06-20 05:18:04', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(275, '2022-06-20 05:18:15', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(276, '2022-06-20 05:18:19', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(277, '2022-06-20 05:18:25', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(278, '2022-06-20 05:18:30', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(279, '2022-06-20 05:18:37', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(280, '2022-06-20 05:18:41', 'Korisnik c_east je pristupio skripti: promijeni_vrijeme.php', 9, 5),
(281, '2022-06-20 05:19:23', 'Korisnik c_east je pristupio skripti: promijeni_vrijeme.php', 9, 5),
(282, '2022-06-20 05:19:31', 'Korisnik c_east je pristupio skripti: promijeni_vrijeme.php', 9, 5),
(283, '2022-06-20 06:19:31', 'Korisnik c_east je pomaknuo virtualno vrijeme', 9, 5),
(284, '2022-06-20 06:19:37', 'Korisnik c_east je pristupio skripti: promijeni_vrijeme.php', 9, 5),
(285, '2022-06-20 04:19:37', 'Korisnik c_east je pomaknuo virtualno vrijeme', 9, 5),
(286, '2022-06-20 04:19:44', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(287, '2022-06-20 04:20:02', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(288, '2022-06-20 04:20:23', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(289, '2022-06-20 04:20:39', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(290, '2022-06-20 04:20:59', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(291, '2022-06-20 04:21:18', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(292, '2022-06-20 04:21:29', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(293, '2022-06-20 04:21:31', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(294, '2022-06-20 04:22:05', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(295, '2022-06-20 04:22:09', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(296, '2022-06-20 04:22:16', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(297, '2022-06-20 04:22:58', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(298, '2022-06-20 04:22:59', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(299, '2022-06-20 04:23:26', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(300, '2022-06-20 04:23:54', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(301, '2022-06-20 04:23:59', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(302, '2022-06-20 04:24:50', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(303, '2022-06-20 04:25:01', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(304, '2022-06-20 04:25:05', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(305, '2022-06-20 04:25:09', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(306, '2022-06-20 04:25:12', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(307, '2022-06-20 04:25:16', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(308, '2022-06-20 04:25:19', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(309, '2022-06-20 04:25:51', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(310, '2022-06-20 04:27:16', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(311, '2022-06-20 04:27:21', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(312, '2022-06-20 04:27:35', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(313, '2022-06-20 04:27:58', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(314, '2022-06-20 04:35:48', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(315, '2022-06-20 04:36:21', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(316, '2022-06-20 04:36:27', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(317, '2022-06-20 04:36:34', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(318, '2022-06-20 04:36:43', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(319, '2022-06-20 04:36:47', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(320, '2022-06-20 04:43:34', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(321, '2022-06-20 04:50:03', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(322, '2022-06-20 04:51:00', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(323, '2022-06-20 04:51:07', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(324, '2022-06-20 04:51:59', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(325, '2022-06-20 04:52:00', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(326, '2022-06-20 04:52:01', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(327, '2022-06-20 04:52:08', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(328, '2022-06-20 04:53:12', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(329, '2022-06-20 04:54:09', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(330, '2022-06-20 04:54:15', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(331, '2022-06-20 04:55:54', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(332, '2022-06-20 04:55:59', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(333, '2022-06-20 04:57:47', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(334, '2022-06-20 04:58:50', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(335, '2022-06-20 04:59:47', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(336, '2022-06-20 05:07:34', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(337, '2022-06-20 05:07:38', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(338, '2022-06-20 05:08:16', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(339, '2022-06-20 05:09:18', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(340, '2022-06-20 05:09:49', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(341, '2022-06-20 05:10:54', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(342, '2022-06-20 05:11:32', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(343, '2022-06-20 05:14:03', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(344, '2022-06-20 05:14:14', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(345, '2022-06-20 05:15:17', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(346, '2022-06-20 05:18:03', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(347, '2022-06-20 05:21:10', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(348, '2022-06-20 05:21:31', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(349, '2022-06-20 05:21:45', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(350, '2022-06-20 05:22:13', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(351, '2022-06-20 05:22:19', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(352, '2022-06-20 05:28:03', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(353, '2022-06-20 05:29:27', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(354, '2022-06-20 05:29:42', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(355, '2022-06-20 05:29:59', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(356, '2022-06-20 05:31:36', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(357, '2022-06-20 05:32:03', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(358, '2022-06-20 05:33:12', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(359, '2022-06-20 05:33:18', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(360, '2022-06-20 05:33:29', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(361, '2022-06-20 05:35:35', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(362, '2022-06-20 05:38:50', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(363, '2022-06-20 05:40:34', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(364, '2022-06-20 05:40:55', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(365, '2022-06-20 05:40:59', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(366, '2022-06-20 05:42:36', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(367, '2022-06-20 05:44:12', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(368, '2022-06-20 05:44:53', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(369, '2022-06-20 05:45:19', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(370, '2022-06-20 05:46:31', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(371, '2022-06-20 05:46:34', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(372, '2022-06-20 05:46:34', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(373, '2022-06-20 05:46:34', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(374, '2022-06-20 05:46:51', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(375, '2022-06-20 05:48:04', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(376, '2022-06-20 05:49:37', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(377, '2022-06-20 05:50:15', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(378, '2022-06-20 06:00:04', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(379, '2022-06-20 06:00:41', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(380, '2022-06-20 06:00:46', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(381, '2022-06-20 06:01:05', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(382, '2022-06-20 06:02:21', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(383, '2022-06-20 06:08:53', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(384, '2022-06-20 06:11:21', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(385, '2022-06-20 06:12:29', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(386, '2022-06-20 06:16:45', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(387, '2022-06-20 06:16:49', 'Korisnik c_east je pristupio skripti: rang_lista.php', 9, 5),
(388, '2022-06-20 06:16:52', 'Korisnik c_east je pristupio skripti: korisnici.php', 9, 5),
(389, '2022-06-20 06:16:54', 'Korisnik c_east je pristupio skripti: dnevnik.php', 9, 5),
(390, '2022-06-20 06:22:23', 'Korisnik c_east se je odjavio', 9, 3),
(391, '2022-06-20 06:22:49', 'Korisnik laputan-machine se je uspješno prijavio', 10, 2),
(392, '2022-06-20 06:22:49', 'Korisnik laputan-machine je pristupio skripti: index.php', 10, 5),
(393, '2022-06-20 06:22:59', 'Korisnik laputan-machine je pristupio skripti: index.php', 10, 5),
(394, '2022-06-20 06:24:43', 'Korisnik laputan-machine je pristupio skripti: namjestaj.php', 10, 5),
(395, '2022-06-20 06:25:43', 'Korisnik laputan-machine je pristupio skripti: namjestaj.php', 10, 5),
(396, '2022-06-20 06:26:11', 'Korisnik laputan-machine je pristupio skripti: rang_lista.php', 10, 5),
(397, '2022-06-20 06:29:28', 'Korisnik laputan-machine je pristupio skripti: rang_lista.php', 10, 5),
(398, '2022-06-20 06:29:30', 'Korisnik laputan-machine je pristupio skripti: namjestaj.php', 10, 5),
(399, '2022-06-20 06:30:20', 'Korisnik laputan-machine je pristupio skripti: namjestaj.php', 10, 5),
(400, '2022-06-20 06:30:28', 'Korisnik laputan-machine je pristupio skripti: namjestaj.php', 10, 5),
(401, '2022-06-20 06:31:32', 'Korisnik laputan-machine je pristupio skripti: namjestaj.php', 10, 5),
(402, '2022-06-20 06:31:47', 'Korisnik laputan-machine je pristupio skripti: namjestaj.php', 10, 5),
(403, '2022-06-20 06:36:32', 'Korisnik laputan-machine je pristupio skripti: namjestaj.php', 10, 5),
(404, '2022-06-20 06:39:08', 'Korisnik laputan-machine je pristupio skripti: namjestaj.php', 10, 5),
(405, '2022-06-20 06:39:18', 'Korisnik laputan-machine je pristupio skripti: namjestaj.php', 10, 5),
(406, '2022-06-20 06:39:31', 'Korisnik laputan-machine je pristupio skripti: namjestaj.php', 10, 5),
(407, '2022-06-20 06:41:30', 'Korisnik laputan-machine je pristupio skripti: namjestaj.php', 10, 5),
(408, '2022-06-20 06:41:38', 'Korisnik laputan-machine je pristupio skripti: namjestaj.php', 10, 5),
(409, '2022-06-20 06:42:32', 'Korisnik laputan-machine je pristupio skripti: namjestaj.php', 10, 5),
(410, '2022-06-20 06:42:53', 'Korisnik laputan-machine je pristupio skripti: namjestaj.php', 10, 5),
(411, '2022-06-20 06:42:58', 'Korisnik laputan-machine je pristupio skripti: namjestaj.php', 10, 5),
(412, '2022-06-20 06:43:19', 'Korisnik laputan-machine je pristupio skripti: namjestaj.php', 10, 5),
(413, '2022-06-20 06:44:17', 'Korisnik laputan-machine je pristupio skripti: namjestaj.php', 10, 5),
(414, '2022-06-20 06:45:14', 'Korisnik laputan-machine je pristupio skripti: namjestaj.php', 10, 5),
(415, '2022-06-20 06:45:15', 'Korisnik laputan-machine je pristupio skripti: namjestaj.php', 10, 5),
(416, '2022-06-20 07:01:26', 'Korisnik laputan-machine je pristupio skripti: namjestaj.php', 10, 5),
(417, '2022-06-20 07:03:22', 'Korisnik laputan-machine je pristupio skripti: namjestaj.php', 10, 5),
(418, '2022-06-20 07:03:57', 'Korisnik laputan-machine je pristupio skripti: namjestaj.php', 10, 5),
(419, '2022-06-20 07:04:19', 'Korisnik laputan-machine je pristupio skripti: rang_lista.php', 10, 5),
(420, '2022-06-20 07:04:27', 'Korisnik laputan-machine je pristupio skripti: namjestaj.php', 10, 5),
(421, '2022-06-20 07:04:56', 'Korisnik laputan-machine je pristupio skripti: rang_lista.php', 10, 5),
(422, '2022-06-20 07:04:58', 'Korisnik laputan-machine je pristupio skripti: namjestaj.php', 10, 5),
(423, '2022-06-20 07:05:24', 'Korisnik laputan-machine je pristupio skripti: namjestaj.php', 10, 5),
(424, '2022-06-20 07:05:45', 'Korisnik laputan-machine je pristupio skripti: namjestaj.php', 10, 5),
(425, '2022-06-20 07:06:30', 'Korisnik laputan-machine je pristupio skripti: namjestaj.php', 10, 5),
(426, '2022-06-20 07:06:44', 'Korisnik laputan-machine je pristupio skripti: namjestaj.php', 10, 5),
(427, '2022-06-20 07:08:13', 'Korisnik laputan-machine je pristupio skripti: namjestaj.php', 10, 5),
(428, '2022-06-20 07:08:15', 'Korisnik laputan-machine je pristupio skripti: namjestaj.php', 10, 5),
(429, '2022-06-20 07:08:36', 'Korisnik laputan-machine je pristupio skripti: namjestaj.php', 10, 5),
(430, '2022-06-20 07:08:37', 'Korisnik laputan-machine je pristupio skripti: namjestaj.php', 10, 5),
(431, '2022-06-20 07:08:38', 'Korisnik laputan-machine je pristupio skripti: namjestaj.php', 10, 5),
(432, '2022-06-20 07:09:28', 'Korisnik laputan-machine je pristupio skripti: namjestaj.php', 10, 5),
(433, '2022-06-20 07:11:44', 'Korisnik laputan-machine je pristupio skripti: namjestaj.php', 10, 5),
(434, '2022-06-20 07:12:46', 'Korisnik laputan-machine je pristupio skripti: namjestaj.php', 10, 5),
(435, '2022-06-20 07:13:13', 'Korisnik laputan-machine je pristupio skripti: namjestaj.php', 10, 5),
(436, '2022-06-20 07:13:18', 'Korisnik laputan-machine je pristupio skripti: namjestaj.php', 10, 5),
(437, '2022-06-20 07:13:38', 'Korisnik laputan-machine je pristupio skripti: namjestaj.php', 10, 5),
(438, '2022-06-20 07:13:57', 'Korisnik laputan-machine je pristupio skripti: namjestaj.php', 10, 5),
(439, '2022-06-20 07:14:02', 'Korisnik laputan-machine je pristupio skripti: namjestaj.php', 10, 5),
(440, '2022-06-20 07:14:03', 'Korisnik laputan-machine je pristupio skripti: namjestaj.php', 10, 5),
(441, '2022-06-20 07:25:09', 'Korisnik laputan-machine je pristupio skripti: namjestaj.php', 10, 5),
(442, '2022-06-20 07:33:54', 'Korisnik laputan-machine je pristupio skripti: namjestaj.php', 10, 5),
(443, '2022-06-20 07:37:07', 'Korisnik laputan-machine je pristupio skripti: namjestaj.php', 10, 5),
(444, '2022-06-20 07:37:54', 'Korisnik laputan-machine je pristupio skripti: namjestaj.php', 10, 5),
(445, '2022-06-20 07:39:36', 'Korisnik laputan-machine je pristupio skripti: namjestaj.php', 10, 5),
(446, '2022-06-20 07:40:56', 'Korisnik laputan-machine je pristupio skripti: namjestaj.php', 10, 5),
(447, '2022-06-20 07:41:08', 'Korisnik laputan-machine je pristupio skripti: namjestaj.php', 10, 5),
(448, '2022-06-20 07:45:35', 'Korisnik laputan-machine je pristupio skripti: namjestaj.php', 10, 5),
(449, '2022-06-20 07:45:38', 'Korisnik laputan-machine je pristupio skripti: namjestaj.php', 10, 5),
(450, '2022-06-20 07:46:34', 'Korisnik laputan-machine je pristupio skripti: namjestaj.php', 10, 5),
(451, '2022-06-20 07:48:01', 'Korisnik laputan-machine je pristupio skripti: namjestaj.php', 10, 5),
(452, '2022-06-20 07:48:01', 'Korisnik laputan-machine je pristupio skripti: namjestaj.php', 10, 5),
(453, '2022-06-20 07:49:01', 'Korisnik laputan-machine je pristupio skripti: namjestaj.php', 10, 5),
(454, '2022-06-20 07:50:21', 'Korisnik laputan-machine je pristupio skripti: namjestaj.php', 10, 5),
(455, '2022-06-20 07:54:26', 'Korisnik laputan-machine je pristupio skripti: namjestaj.php', 10, 5),
(456, '2022-06-20 07:55:27', 'Korisnik laputan-machine je pristupio skripti: namjestaj.php', 10, 5),
(457, '2022-06-20 08:03:21', 'Korisnik laputan-machine je pristupio skripti: namjestaj.php', 10, 5),
(458, '2022-06-20 08:29:08', 'Korisnik laputan-machine je pristupio skripti: namjestaj.php', 10, 5),
(459, '2022-06-20 08:31:41', 'Korisnik laputan-machine je pristupio skripti: namjestaj.php', 10, 5),
(460, '2022-06-20 08:37:22', 'Korisnik laputan-machine je pristupio skripti: namjestaj.php', 10, 5),
(461, '2022-06-20 08:37:23', 'Korisnik laputan-machine je pristupio skripti: namjestaj.php', 10, 5),
(462, '2022-06-20 08:38:26', 'Korisnik laputan-machine je pristupio skripti: namjestaj.php', 10, 5),
(463, '2022-06-20 08:38:27', 'Korisnik laputan-machine je pristupio skripti: namjestaj.php', 10, 5),
(464, '2022-06-20 08:39:05', 'Korisnik laputan-machine je pristupio skripti: namjestaj.php', 10, 5),
(465, '2022-06-20 08:39:06', 'Korisnik laputan-machine je pristupio skripti: namjestaj.php', 10, 5),
(466, '2022-06-20 08:39:06', 'Korisnik laputan-machine je pristupio skripti: namjestaj.php', 10, 5),
(467, '2022-06-20 08:39:06', 'Korisnik laputan-machine je pristupio skripti: namjestaj.php', 10, 5),
(468, '2022-06-20 08:39:06', 'Korisnik laputan-machine je pristupio skripti: namjestaj.php', 10, 5),
(469, '2022-06-20 08:39:09', 'Korisnik laputan-machine je pristupio skripti: namjestaj.php', 10, 5),
(470, '2022-06-20 08:42:17', 'Korisnik laputan-machine je pristupio skripti: namjestaj.php', 10, 5),
(471, '2022-06-20 08:42:18', 'Korisnik laputan-machine je pristupio skripti: namjestaj.php', 10, 5),
(472, '2022-06-20 08:42:18', 'Korisnik laputan-machine je pristupio skripti: namjestaj.php', 10, 5),
(473, '2022-06-20 08:42:18', 'Korisnik laputan-machine je pristupio skripti: namjestaj.php', 10, 5),
(474, '2022-06-20 08:42:18', 'Korisnik laputan-machine je pristupio skripti: namjestaj.php', 10, 5),
(475, '2022-06-20 08:43:26', 'Korisnik laputan-machine je pristupio skripti: namjestaj.php', 10, 5),
(476, '2022-06-20 08:43:48', 'Korisnik laputan-machine je pristupio skripti: namjestaj.php', 10, 5),
(477, '2022-06-20 08:43:49', 'Korisnik laputan-machine je pristupio skripti: namjestaj.php', 10, 5),
(478, '2022-06-20 08:45:43', 'Korisnik laputan-machine je pristupio skripti: namjestaj.php', 10, 5),
(479, '2022-06-20 08:45:44', 'Korisnik laputan-machine je pristupio skripti: namjestaj.php', 10, 5),
(480, '2022-06-20 08:47:13', 'Korisnik laputan-machine je pristupio skripti: namjestaj.php', 10, 5),
(481, '2022-06-20 08:51:32', 'Korisnik laputan-machine se je odjavio', 10, 3),
(482, '2022-06-20 08:51:41', 'Korisnik c_east se je uspješno prijavio', 9, 2),
(483, '2022-06-20 08:51:41', 'Korisnik c_east je pristupio skripti: index.php', 9, 5),
(484, '2022-06-20 08:51:45', 'Korisnik c_east je pristupio skripti: korisnici.php', 9, 5),
(485, '2022-06-20 08:51:50', 'Korisnik c_east je pristupio skripti: dnevnik.php', 9, 5),
(486, '2022-06-20 08:52:18', 'Korisnik c_east je pristupio skripti: namjestaj.php', 9, 5),
(487, '2022-06-20 08:52:34', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(488, '2022-06-20 08:52:39', 'Korisnik c_east je pristupio skripti: index.php', 9, 5),
(489, '2022-06-20 08:53:48', 'Korisnik c_east je pristupio skripti: index.php', 9, 5),
(490, '2022-06-20 08:53:49', 'Korisnik c_east je pristupio skripti: namjestaj.php', 9, 5),
(491, '2022-06-20 08:53:51', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(492, '2022-06-20 08:54:04', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(493, '2022-06-20 08:54:06', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(494, '2022-06-20 08:54:07', 'Korisnik c_east je pristupio skripti: rang_lista.php', 9, 5),
(495, '2022-06-20 08:54:09', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(496, '2022-06-20 08:54:10', 'Korisnik c_east je pristupio skripti: korisnici.php', 9, 5),
(497, '2022-06-20 08:54:11', 'Korisnik c_east je pristupio skripti: kategorije_namjestaja.php', 9, 5),
(498, '2022-06-20 08:54:12', 'Korisnik c_east je pristupio skripti: dnevnik.php', 9, 5),
(499, '2022-06-20 08:58:09', 'Korisnik c_east se je odjavio', 9, 3),
(500, '2022-06-20 08:58:28', 'Korisnik dhehet123 se je neuspješno prijavio', 7, 2),
(501, '2022-06-20 08:58:39', 'Korisnik dhehet123 se je uspješno prijavio', 7, 2),
(502, '2022-06-20 08:58:39', 'Korisnik DHehet123 je pristupio skripti: index.php', 7, 5),
(503, '2022-06-20 09:00:19', 'Korisnik DHehet123 je pristupio skripti: narudzba.php', 7, 5),
(504, '2022-06-20 09:00:53', 'Korisnik DHehet123 je pristupio skripti: narudzba.php', 7, 5),
(505, '2022-06-20 09:01:08', 'Korisnik DHehet123 je pristupio skripti: narudzba.php', 7, 5),
(506, '2022-06-20 09:12:05', 'Korisnik DHehet123 je pristupio skripti: narudzba.php', 7, 5),
(507, '2022-06-20 09:13:06', 'Korisnik DHehet123 je pristupio skripti: narudzba.php', 7, 5),
(508, '2022-06-20 09:20:44', 'Korisnik DHehet123 je pristupio skripti: narudzba.php', 7, 5),
(509, '2022-06-20 09:21:31', 'Korisnik DHehet123 je pristupio skripti: narudzba.php', 7, 5),
(510, '2022-06-20 09:21:32', 'Korisnik DHehet123 je pristupio skripti: narudzba.php', 7, 5),
(511, '2022-06-20 09:26:19', 'Korisnik DHehet123 je pristupio skripti: narudzba.php', 7, 5),
(512, '2022-06-20 09:26:33', 'Korisnik DHehet123 je pristupio skripti: narudzba.php', 7, 5),
(513, '2022-06-20 09:27:26', 'Korisnik DHehet123 je pristupio skripti: narudzba.php', 7, 5),
(514, '2022-06-20 09:28:16', 'Korisnik DHehet123 je pristupio skripti: narudzba.php', 7, 5),
(515, '2022-06-20 09:28:24', 'Korisnik DHehet123 je pristupio skripti: narudzba.php', 7, 5),
(516, '2022-06-20 09:30:00', 'Korisnik DHehet123 je pristupio skripti: narudzba.php', 7, 5),
(517, '2022-06-20 09:30:10', 'Korisnik DHehet123 je pristupio skripti: narudzba.php', 7, 5),
(518, '2022-06-20 09:30:26', 'Korisnik DHehet123 je pristupio skripti: narudzba.php', 7, 5),
(519, '2022-06-20 09:40:12', 'Korisnik DHehet123 je pristupio skripti: narudzba.php', 7, 5),
(520, '2022-06-20 09:40:14', 'Korisnik DHehet123 je pristupio skripti: narudzba.php', 7, 5),
(521, '2022-06-20 09:43:18', 'Korisnik DHehet123 je pristupio skripti: narudzba.php', 7, 5),
(522, '2022-06-20 09:44:11', 'Korisnik DHehet123 je pristupio skripti: narudzba.php', 7, 5),
(523, '2022-06-20 09:44:32', 'Korisnik DHehet123 je pristupio skripti: narudzba.php', 7, 5),
(524, '2022-06-20 09:45:08', 'Korisnik DHehet123 je pristupio skripti: narudzba.php', 7, 5),
(525, '2022-06-20 09:51:03', 'Korisnik DHehet123 je pristupio skripti: narudzba.php', 7, 5),
(526, '2022-06-20 09:51:03', 'Korisnik DHehet123 je pristupio skripti: narudzba.php', 7, 5),
(527, '2022-06-20 09:52:57', 'Korisnik DHehet123 je pristupio skripti: narudzba.php', 7, 5),
(528, '2022-06-20 09:52:58', 'Korisnik DHehet123 je pristupio skripti: narudzba.php', 7, 5),
(529, '2022-06-20 09:52:59', 'Korisnik DHehet123 je pristupio skripti: narudzba.php', 7, 5),
(530, '2022-06-20 09:52:59', 'Korisnik DHehet123 je pristupio skripti: narudzba.php', 7, 5),
(531, '2022-06-20 09:52:59', 'Korisnik DHehet123 je pristupio skripti: narudzba.php', 7, 5),
(532, '2022-06-20 09:53:10', 'Korisnik DHehet123 je pristupio skripti: narudzba.php', 7, 5),
(533, '2022-06-20 09:54:14', 'Korisnik DHehet123 je pristupio skripti: narudzba.php', 7, 5),
(534, '2022-06-20 09:54:15', 'Korisnik DHehet123 je pristupio skripti: narudzba.php', 7, 5),
(535, '2022-06-20 09:54:22', 'Korisnik DHehet123 je pristupio skripti: narudzba.php', 7, 5),
(536, '2022-06-20 09:54:23', 'Korisnik DHehet123 je pristupio skripti: narudzba.php', 7, 5),
(537, '2022-06-20 09:54:34', 'Korisnik DHehet123 je pristupio skripti: narudzba.php', 7, 5),
(538, '2022-06-20 09:55:25', 'Korisnik DHehet123 je pristupio skripti: narudzba.php', 7, 5),
(539, '2022-06-20 09:55:26', 'Korisnik DHehet123 je pristupio skripti: narudzba.php', 7, 5),
(540, '2022-06-20 09:55:47', 'Korisnik DHehet123 je pristupio skripti: narudzba.php', 7, 5),
(541, '2022-06-20 09:55:48', 'Korisnik DHehet123 je pristupio skripti: narudzba.php', 7, 5),
(542, '2022-06-20 09:55:54', 'Korisnik DHehet123 je pristupio skripti: narudzba.php', 7, 5),
(543, '2022-06-20 09:55:59', 'Korisnik DHehet123 je pristupio skripti: narudzba.php', 7, 5),
(544, '2022-06-20 09:56:01', 'Korisnik DHehet123 je pristupio skripti: narudzba.php', 7, 5),
(545, '2022-06-20 09:56:55', 'Korisnik DHehet123 je pristupio skripti: narudzba.php', 7, 5),
(546, '2022-06-20 09:58:05', 'Korisnik DHehet123 je pristupio skripti: narudzba.php', 7, 5),
(547, '2022-06-20 09:59:06', 'Korisnik DHehet123 je pristupio skripti: narudzba.php', 7, 5),
(548, '2022-06-20 10:01:34', 'Korisnik DHehet123 je pristupio skripti: narudzba.php', 7, 5),
(549, '2022-06-20 10:01:41', 'Korisnik DHehet123 je pristupio skripti: narudzba.php', 7, 5),
(550, '2022-06-20 10:01:42', 'Korisnik DHehet123 je pristupio skripti: narudzba.php', 7, 5),
(551, '2022-06-20 10:02:26', 'Korisnik DHehet123 je pristupio skripti: narudzba.php', 7, 5),
(552, '2022-06-20 10:02:29', 'Korisnik DHehet123 je pristupio skripti: narudzba.php', 7, 5),
(553, '2022-06-20 10:04:46', 'Korisnik DHehet123 je pristupio skripti: narudzba.php', 7, 5),
(554, '2022-06-20 10:05:01', 'Korisnik DHehet123 je pristupio skripti: narudzba.php', 7, 5),
(555, '2022-06-20 10:05:53', 'Korisnik DHehet123 je pristupio skripti: narudzba.php', 7, 5);
INSERT INTO `dnevnik_rada` (`id dnevnik_rada`, `datum_vrijeme`, `radnja`, `id_korisnik`, `id_tip_zapisa`) VALUES
(556, '2022-06-20 10:05:54', 'Korisnik DHehet123 je pristupio skripti: narudzba.php', 7, 5),
(557, '2022-06-20 10:06:22', 'Korisnik DHehet123 je pristupio skripti: narudzba.php', 7, 5),
(558, '2022-06-20 10:07:23', 'Korisnik DHehet123 se je odjavio', 7, 3),
(559, '2022-06-20 10:08:14', 'Korisnik vitoo se je uspješno prijavio', 13, 2),
(560, '2022-06-20 10:08:14', 'Korisnik vitoo je pristupio skripti: index.php', 13, 5),
(561, '2022-06-20 10:08:17', 'Korisnik vitoo je pristupio skripti: narudzba.php', 13, 5),
(562, '2022-06-20 10:08:21', 'Korisnik vitoo se je odjavio', 13, 3);

-- --------------------------------------------------------

--
-- Table structure for table `kategorija_namjestaja`
--

CREATE TABLE `kategorija_namjestaja` (
  `id_kategorija_namjestaja` int(11) NOT NULL,
  `naziv` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_popust` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategorija_namjestaja`
--

INSERT INTO `kategorija_namjestaja` (`id_kategorija_namjestaja`, `naziv`, `id_popust`) VALUES
(2, 'Stolica', NULL),
(3, 'Krevet', NULL),
(4, 'Stol', NULL),
(5, 'Fotelja', NULL),
(6, 'Ormar', NULL),
(7, 'Jastuk', NULL),
(8, 'Madrac', NULL),
(9, 'Tepih', NULL),
(10, 'Kutna garnitura', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `korisnik`
--

CREATE TABLE `korisnik` (
  `id_korisnik` int(11) NOT NULL,
  `ime` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prezime` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `korisnicko_ime` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lozinka` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lozinka_sha256` char(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sol` char(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobilni_broj` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `broj_neuspjesnih_prijava` int(11) NOT NULL,
  `uvjeti_koristenja` tinyint(4) NOT NULL,
  `aktivacijski_kod` int(6) DEFAULT NULL,
  `id_uloga_korisnika` int(11) NOT NULL,
  `id_status_korisnika` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `korisnik`
--

INSERT INTO `korisnik` (`id_korisnik`, `ime`, `prezime`, `korisnicko_ime`, `lozinka`, `lozinka_sha256`, `sol`, `email`, `mobilni_broj`, `broj_neuspjesnih_prijava`, `uvjeti_koristenja`, `aktivacijski_kod`, `id_uloga_korisnika`, `id_status_korisnika`) VALUES
(7, 'Dominik', 'Hehet', 'DHehet123', 'lozinka123WEB', 'bcfde0f8cc58fa90e52c18d0fa14a19d39b7148f2aaa4344ab6822b36383bafb', '9b17209ba67885f7c6b48512ef401ab540afc31b', 'dhehet@gmail.com', '099 111 2233', 0, 1, NULL, 1, 1),
(8, 'Lovro', 'Čanžar', 'Canzi', 'Pass123', '49ae7fd616d3685ca64a198392c31ba8c09c6beb378f1b41a1ea95931bea206f', '86a9bbaada64124cf0c34bb98367b7df104370b9', 'lcanzar@yahoo.com', '', 3, 1, NULL, 1, 2),
(9, 'Clint', 'Eastwood', 'c_east', 'fastestGun7', '266efa5d6233ed689ac55166e05b5a5b4d6b17c1d1809cc2db1ca9998961a2b7', '3f6983b7cf30bca05f19403e5ac3bd1173dc75ad', 'clinteastwood@gmail.com', NULL, 0, 1, NULL, 3, 1),
(10, 'Adam', 'Jensen', 'laputan-machine', 'AUGtri0451', 'ba1e8ff9aa1b049f807e1865e0854598e52b2cbf4b2e861164dcf6326bdce631', 'ccd8bd16e443cef5642bc50e0e987e24ca6e7093', 'adam.jensen@sarif.co', '098 145 2161', 0, 1, NULL, 2, 1),
(11, 'Harry', 'Maguire', 'maguire_MU', 'ManCB00', '6ac8605cc5b37ce4ddc9dc0164f18beba9b1eaf150cb9e4952ebd12530e693b5', '7fa51a0e60c613d895efffc326b466905d7c7141', 'harrymag@manunited.com', NULL, 3, 1, NULL, 1, 2),
(12, 'Ivan', 'Vručina', 'Daddy012', 'Mrvrucina1', '4dccb89c461ce55521729877f9d8bf7d83d8ded8fe18bd8cf2271c7080861a45', 'de006b6f5b6fa38c0de6cc5ffdedf2207f957545', 'ivan.vrucina123@hotmail.net', '', 0, 1, NULL, 1, 1),
(13, 'Vito', 'Obadić', 'vitoo', 'Vitach123', 'b527bb9955a3a3f6c405d1b68a7029c88d21c70ce439a236504d409961f1d0f0', '08de5260be669a6172f0773d7546e7782e346428', 'vitach@gmail.com', '099 451 6222', 0, 1, NULL, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `moderator_kategorije`
--

CREATE TABLE `moderator_kategorije` (
  `id_korisnik` int(11) NOT NULL,
  `id_kategorija_namjestaja` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `moderator_kategorije`
--

INSERT INTO `moderator_kategorije` (`id_korisnik`, `id_kategorija_namjestaja`) VALUES
(9, 6),
(12, 5),
(13, 4);

-- --------------------------------------------------------

--
-- Table structure for table `namjestaj`
--

CREATE TABLE `namjestaj` (
  `id_namjestaj` int(11) NOT NULL,
  `naziv` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cijena_HRK` decimal(7,2) NOT NULL,
  `sirina_cm` decimal(6,2) NOT NULL,
  `duzina_cm` decimal(6,2) NOT NULL,
  `visina_cm` decimal(6,2) NOT NULL,
  `boja` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stanje_zaliha` int(11) NOT NULL,
  `slika` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_kategorija_namjestaja` int(11) NOT NULL,
  `id_status_namjestaja` int(11) NOT NULL,
  `id_popust` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `namjestaj`
--

INSERT INTO `namjestaj` (`id_namjestaj`, `naziv`, `cijena_HRK`, `sirina_cm`, `duzina_cm`, `visina_cm`, `boja`, `stanje_zaliha`, `slika`, `id_kategorija_namjestaja`, `id_status_namjestaja`, `id_popust`) VALUES
(1, 'Krevet BDJ29', '7406.00', '145.00', '204.00', '85.50', 'Bijela', 6, NULL, 3, 1, NULL),
(2, 'Krevet BAAY5', '689.00', '95.00', '204.50', '80.50', 'Rivijera hrast', 4, NULL, 3, 1, NULL),
(3, 'Zidni krevet PR18', '7406.00', '177.00', '215.00', '158.00', ' Bijela', 1, NULL, 3, 1, NULL),
(4, 'Boxspring krevet S47516', '5207.00', '180.00', '210.00', '115.00', 'Bijela', 0, NULL, 3, 2, NULL),
(5, 'Stol H2396', '5573.00', '90.00', '160.00', '75.00', 'Crna', 4, NULL, 4, 1, NULL),
(6, 'Stol S47206', '1668.00', '90.00', '160.00', '78.00', 'Sonoma hrast', 8, NULL, 4, 1, NULL),
(7, 'Stol S46473', '886.00', '75.00', '125.00', '72.00', 'Prozirna', 3, NULL, 4, 1, NULL),
(8, 'Garderoba BFAE7', '1039.00', '80.00', '54.50', '189.00', 'Bijela', 0, NULL, 6, 2, NULL),
(9, 'Garderoba TND5', '1806.00', '90.00', '35.00', '190.00', 'Bijela', 2, NULL, 6, 1, NULL),
(10, 'Madrac MT269', '2125.00', '160.00', '200.00', '220.00', 'Bijela', 7, NULL, 8, 1, NULL),
(11, 'Madrac MT341', '1736.00', '160.00', '200.00', '140.00', 'Bijela', 0, NULL, 8, 2, NULL),
(12, 'Madrac PK269', '769.00', '90.00', '200.00', '12.00', 'Bijela', 4, NULL, 8, 1, NULL),
(13, 'Kutna garnitura MT596', '8378.00', '267.00', '203.00', '73.00', 'Crna', 3, NULL, 10, 1, NULL),
(14, 'Kutna garnitura RPA4', '8816.00', '250.00', '250.00', '100.00', 'Smeđa', 4, NULL, 10, 1, NULL),
(15, 'Kutna garnitura A829', '10231.00', '245.00', '163.00', '91.00', 'Svijetlo smeđa', 4, NULL, 10, 1, NULL),
(16, 'Kutna garnitura A828', '6219.00', '228.00', '142.00', '92.00', 'Smeđa', 2, NULL, 10, 1, NULL),
(17, 'Stolica H2908', '338.00', '42.00', '47.00', '98.00', 'Siva', 4, NULL, 2, 1, NULL),
(18, 'Stolica H2969', '482.00', '44.00', '56.00', '87.00', 'Tamno plava', 7, NULL, 2, 1, NULL),
(19, 'Stolica VG7039', '1291.00', '50.00', '60.00', '95.00', 'Smeđa', 2, NULL, 2, 1, NULL),
(20, 'Jastuk E135', '693.00', '142.00', '80.00', '40.00', 'Plava', 3, NULL, 7, 1, NULL),
(21, 'Jastuk VG6103', '112.00', '45.50', '46.50', '5.00', 'Crna', 0, NULL, 7, 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `narudzba`
--

CREATE TABLE `narudzba` (
  `broj_narudzbe` int(11) NOT NULL,
  `datum_vrijeme_kreiranja` datetime NOT NULL,
  `ukupna_cijena` decimal(8,2) NOT NULL,
  `datum_vrijeme_isporuke` datetime DEFAULT NULL,
  `id_status_narudzbe` int(11) NOT NULL,
  `id_korisnik` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `narudzba`
--

INSERT INTO `narudzba` (`broj_narudzbe`, `datum_vrijeme_kreiranja`, `ukupna_cijena`, `datum_vrijeme_isporuke`, `id_status_narudzbe`, `id_korisnik`) VALUES
(1, '2022-06-13 08:01:30', '4512.21', '2022-06-19 08:01:30', 3, 7),
(2, '2022-06-14 08:03:24', '1254.28', '2022-06-20 08:03:24', 3, 7),
(3, '2022-06-20 08:01:30', '4501.00', '1970-01-01 00:00:00', 1, 7),
(4, '2022-06-20 08:01:30', '15546.54', '1970-01-01 00:00:00', 2, 7),
(5, '2022-06-08 08:03:24', '600.48', '2022-06-17 08:03:24', 4, 7),
(6, '2022-06-15 08:09:00', '6456.98', '2022-06-12 08:09:00', 4, 7),
(7, '2022-06-20 08:08:37', '4661.56', '1970-01-01 00:00:00', 2, 7),
(8, '2022-06-20 08:08:37', '789.65', '1970-01-01 00:00:00', 1, 7),
(9, '2022-06-20 08:08:37', '12456.98', '2022-06-21 08:09:00', 3, 7);

-- --------------------------------------------------------

--
-- Table structure for table `pomak_vremena`
--

CREATE TABLE `pomak_vremena` (
  `id_pomak_vremena` tinyint(4) NOT NULL DEFAULT 1,
  `vrijednost_pomaka` int(11) DEFAULT NULL
) ;

--
-- Dumping data for table `pomak_vremena`
--

INSERT INTO `pomak_vremena` (`id_pomak_vremena`, `vrijednost_pomaka`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `popust`
--

CREATE TABLE `popust` (
  `id_popust` int(11) NOT NULL,
  `naziv` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `iznos` int(11) NOT NULL,
  `datum_vrijeme_pocetka` datetime DEFAULT NULL,
  `datum_vrijeme_zavrsetka` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `popust`
--

INSERT INTO `popust` (`id_popust`, `naziv`, `iznos`, `datum_vrijeme_pocetka`, `datum_vrijeme_zavrsetka`) VALUES
(1, 'Crni Petak', 40, NULL, NULL),
(2, 'Vikend', 5, NULL, NULL),
(3, 'Godišnjica', 50, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sadrzi`
--

CREATE TABLE `sadrzi` (
  `broj_narudzbe` int(11) NOT NULL,
  `id_namjestaj` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sastoji`
--

CREATE TABLE `sastoji` (
  `id_namjestaj` int(11) NOT NULL,
  `id_vrsta_materijala` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sastoji`
--

INSERT INTO `sastoji` (`id_namjestaj`, `id_vrsta_materijala`) VALUES
(1, 6),
(2, 6),
(3, 6),
(4, 2),
(4, 7),
(5, 8),
(6, 6),
(7, 9),
(8, 6),
(9, 6),
(10, 10),
(11, 11),
(12, 11),
(13, 12),
(14, 4),
(14, 12),
(15, 13),
(16, 6),
(16, 13),
(17, 8),
(18, 8),
(19, 7),
(20, 12),
(21, 12);

-- --------------------------------------------------------

--
-- Table structure for table `status_korisnika`
--

CREATE TABLE `status_korisnika` (
  `id_status_korisnika` int(11) NOT NULL,
  `naziv` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `status_korisnika`
--

INSERT INTO `status_korisnika` (`id_status_korisnika`, `naziv`) VALUES
(1, 'Ne blokiran'),
(2, 'Blokiran');

-- --------------------------------------------------------

--
-- Table structure for table `status_namjestaja`
--

CREATE TABLE `status_namjestaja` (
  `id_status_namjestaja` int(11) NOT NULL,
  `naziv` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `status_namjestaja`
--

INSERT INTO `status_namjestaja` (`id_status_namjestaja`, `naziv`) VALUES
(1, 'Dostupan'),
(2, 'Kupljen');

-- --------------------------------------------------------

--
-- Table structure for table `status_narudzbe`
--

CREATE TABLE `status_narudzbe` (
  `id_status_narudzbe` int(11) NOT NULL,
  `naziv` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `status_narudzbe`
--

INSERT INTO `status_narudzbe` (`id_status_narudzbe`, `naziv`) VALUES
(1, 'U obradi'),
(2, 'Naručena'),
(3, 'Dostava u tijeku'),
(4, 'Isporučena');

-- --------------------------------------------------------

--
-- Table structure for table `tip_zapisa`
--

CREATE TABLE `tip_zapisa` (
  `id_tip_zapisa` int(11) NOT NULL,
  `naziv` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tip_zapisa`
--

INSERT INTO `tip_zapisa` (`id_tip_zapisa`, `naziv`) VALUES
(1, 'Registracija'),
(2, 'Prijava'),
(3, 'Odjava'),
(4, 'Rad s bazom'),
(5, 'Ostale radnje');

-- --------------------------------------------------------

--
-- Table structure for table `uloga_korisnika`
--

CREATE TABLE `uloga_korisnika` (
  `id_uloga_korisnika` int(11) NOT NULL,
  `naziv` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `uloga_korisnika`
--

INSERT INTO `uloga_korisnika` (`id_uloga_korisnika`, `naziv`) VALUES
(1, 'Registrirani korisnik'),
(2, 'Moderator'),
(3, 'Administrator');

-- --------------------------------------------------------

--
-- Table structure for table `vrsta_materijala`
--

CREATE TABLE `vrsta_materijala` (
  `id_vrsta_materijala` int(11) NOT NULL,
  `naziv` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vrsta_materijala`
--

INSERT INTO `vrsta_materijala` (`id_vrsta_materijala`, `naziv`) VALUES
(1, 'Aluminij'),
(2, 'Drvo'),
(3, 'Keramika'),
(4, 'Plastika'),
(5, 'Željezo'),
(6, 'Iveral'),
(7, 'Eko koža'),
(8, 'Čelik'),
(9, 'Kaljeno staklo'),
(10, 'Opruge (madrac)'),
(11, ' Poliuretanska pjena'),
(12, 'Tkanina'),
(13, 'Poliester');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dnevnik_rada`
--
ALTER TABLE `dnevnik_rada`
  ADD PRIMARY KEY (`id dnevnik_rada`),
  ADD KEY `FK_dnevnik_rada_korisnik` (`id_korisnik`),
  ADD KEY `FK_dnevnik_rada_tip_zapisa` (`id_tip_zapisa`);

--
-- Indexes for table `kategorija_namjestaja`
--
ALTER TABLE `kategorija_namjestaja`
  ADD PRIMARY KEY (`id_kategorija_namjestaja`),
  ADD KEY `FK_popust_kategorija_namjestaja` (`id_popust`);

--
-- Indexes for table `korisnik`
--
ALTER TABLE `korisnik`
  ADD PRIMARY KEY (`id_korisnik`),
  ADD KEY `FK_uloga_korisnika_korisnik` (`id_uloga_korisnika`),
  ADD KEY `FK_status_korisnika_korisnik` (`id_status_korisnika`);

--
-- Indexes for table `moderator_kategorije`
--
ALTER TABLE `moderator_kategorije`
  ADD PRIMARY KEY (`id_korisnik`,`id_kategorija_namjestaja`),
  ADD KEY `FK_kategorija_namjestaja_korisnik` (`id_kategorija_namjestaja`);

--
-- Indexes for table `namjestaj`
--
ALTER TABLE `namjestaj`
  ADD PRIMARY KEY (`id_namjestaj`),
  ADD KEY `FK_namjestaj_status_namjestaja` (`id_status_namjestaja`),
  ADD KEY `FK_namjestaj_kategorija_namjestaja` (`id_kategorija_namjestaja`),
  ADD KEY `FK_namjestaj_popust` (`id_popust`);

--
-- Indexes for table `narudzba`
--
ALTER TABLE `narudzba`
  ADD PRIMARY KEY (`broj_narudzbe`),
  ADD KEY `FK_narudzba_status_narudzbe` (`id_status_narudzbe`),
  ADD KEY `FK_narudzba_korisnik` (`id_korisnik`);

--
-- Indexes for table `pomak_vremena`
--
ALTER TABLE `pomak_vremena`
  ADD PRIMARY KEY (`id_pomak_vremena`);

--
-- Indexes for table `popust`
--
ALTER TABLE `popust`
  ADD PRIMARY KEY (`id_popust`);

--
-- Indexes for table `sadrzi`
--
ALTER TABLE `sadrzi`
  ADD PRIMARY KEY (`broj_narudzbe`,`id_namjestaj`),
  ADD KEY `FK_namjestaj_sadrzi` (`id_namjestaj`);

--
-- Indexes for table `sastoji`
--
ALTER TABLE `sastoji`
  ADD PRIMARY KEY (`id_namjestaj`,`id_vrsta_materijala`),
  ADD KEY `FK_vrsta_materijala_sastoji` (`id_vrsta_materijala`);

--
-- Indexes for table `status_korisnika`
--
ALTER TABLE `status_korisnika`
  ADD PRIMARY KEY (`id_status_korisnika`);

--
-- Indexes for table `status_namjestaja`
--
ALTER TABLE `status_namjestaja`
  ADD PRIMARY KEY (`id_status_namjestaja`);

--
-- Indexes for table `status_narudzbe`
--
ALTER TABLE `status_narudzbe`
  ADD PRIMARY KEY (`id_status_narudzbe`);

--
-- Indexes for table `tip_zapisa`
--
ALTER TABLE `tip_zapisa`
  ADD PRIMARY KEY (`id_tip_zapisa`);

--
-- Indexes for table `uloga_korisnika`
--
ALTER TABLE `uloga_korisnika`
  ADD PRIMARY KEY (`id_uloga_korisnika`);

--
-- Indexes for table `vrsta_materijala`
--
ALTER TABLE `vrsta_materijala`
  ADD PRIMARY KEY (`id_vrsta_materijala`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dnevnik_rada`
--
ALTER TABLE `dnevnik_rada`
  MODIFY `id dnevnik_rada` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=563;

--
-- AUTO_INCREMENT for table `kategorija_namjestaja`
--
ALTER TABLE `kategorija_namjestaja`
  MODIFY `id_kategorija_namjestaja` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `korisnik`
--
ALTER TABLE `korisnik`
  MODIFY `id_korisnik` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `namjestaj`
--
ALTER TABLE `namjestaj`
  MODIFY `id_namjestaj` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `narudzba`
--
ALTER TABLE `narudzba`
  MODIFY `broj_narudzbe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `popust`
--
ALTER TABLE `popust`
  MODIFY `id_popust` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `status_korisnika`
--
ALTER TABLE `status_korisnika`
  MODIFY `id_status_korisnika` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `status_namjestaja`
--
ALTER TABLE `status_namjestaja`
  MODIFY `id_status_namjestaja` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `status_narudzbe`
--
ALTER TABLE `status_narudzbe`
  MODIFY `id_status_narudzbe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tip_zapisa`
--
ALTER TABLE `tip_zapisa`
  MODIFY `id_tip_zapisa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `uloga_korisnika`
--
ALTER TABLE `uloga_korisnika`
  MODIFY `id_uloga_korisnika` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `vrsta_materijala`
--
ALTER TABLE `vrsta_materijala`
  MODIFY `id_vrsta_materijala` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dnevnik_rada`
--
ALTER TABLE `dnevnik_rada`
  ADD CONSTRAINT `FK_dnevnik_rada_korisnik` FOREIGN KEY (`id_korisnik`) REFERENCES `korisnik` (`id_korisnik`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_dnevnik_rada_tip_zapisa` FOREIGN KEY (`id_tip_zapisa`) REFERENCES `tip_zapisa` (`id_tip_zapisa`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `kategorija_namjestaja`
--
ALTER TABLE `kategorija_namjestaja`
  ADD CONSTRAINT `FK_popust_kategorija_namjestaja` FOREIGN KEY (`id_popust`) REFERENCES `popust` (`id_popust`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `korisnik`
--
ALTER TABLE `korisnik`
  ADD CONSTRAINT `FK_status_korisnika_korisnik` FOREIGN KEY (`id_status_korisnika`) REFERENCES `status_korisnika` (`id_status_korisnika`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_uloga_korisnika_korisnik` FOREIGN KEY (`id_uloga_korisnika`) REFERENCES `uloga_korisnika` (`id_uloga_korisnika`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `moderator_kategorije`
--
ALTER TABLE `moderator_kategorije`
  ADD CONSTRAINT `FK_kategorija_namjestaja_korisnik` FOREIGN KEY (`id_kategorija_namjestaja`) REFERENCES `kategorija_namjestaja` (`id_kategorija_namjestaja`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_korisnik_moderator_kategorije` FOREIGN KEY (`id_korisnik`) REFERENCES `korisnik` (`id_korisnik`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `namjestaj`
--
ALTER TABLE `namjestaj`
  ADD CONSTRAINT `FK_namjestaj_kategorija_namjestaja` FOREIGN KEY (`id_kategorija_namjestaja`) REFERENCES `kategorija_namjestaja` (`id_kategorija_namjestaja`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_namjestaj_popust` FOREIGN KEY (`id_popust`) REFERENCES `popust` (`id_popust`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_namjestaj_status_namjestaja` FOREIGN KEY (`id_status_namjestaja`) REFERENCES `status_namjestaja` (`id_status_namjestaja`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `narudzba`
--
ALTER TABLE `narudzba`
  ADD CONSTRAINT `FK_narudzba_korisnik` FOREIGN KEY (`id_korisnik`) REFERENCES `korisnik` (`id_korisnik`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_narudzba_status_narudzbe` FOREIGN KEY (`id_status_narudzbe`) REFERENCES `status_narudzbe` (`id_status_narudzbe`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `sadrzi`
--
ALTER TABLE `sadrzi`
  ADD CONSTRAINT `FK_namjestaj_sadrzi` FOREIGN KEY (`id_namjestaj`) REFERENCES `namjestaj` (`id_namjestaj`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_narudzba_sadrzi` FOREIGN KEY (`broj_narudzbe`) REFERENCES `narudzba` (`broj_narudzbe`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `sastoji`
--
ALTER TABLE `sastoji`
  ADD CONSTRAINT `FK_namjestaj_sastoji` FOREIGN KEY (`id_namjestaj`) REFERENCES `namjestaj` (`id_namjestaj`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_vrsta_materijala_sastoji` FOREIGN KEY (`id_vrsta_materijala`) REFERENCES `vrsta_materijala` (`id_vrsta_materijala`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
