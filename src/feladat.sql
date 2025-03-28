-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: localhost
-- Létrehozás ideje: 2024. Dec 04. 22:47
-- Kiszolgáló verziója: 10.4.28-MariaDB
-- PHP verzió: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `feladat`
--
CREATE DATABASE IF NOT EXISTS `feladat` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `feladat`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `belepes`
--

DROP TABLE IF EXISTS `belepes`;
CREATE TABLE `belepes` (
  `id` bigint(255) NOT NULL,
  `nezoid` int(11) NOT NULL,
  `meccsid` int(11) NOT NULL,
  `idopont` varchar(255) NOT NULL,
  `nezo` varbinary(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `belepes`
--

INSERT INTO `belepes` (`id`, `nezoid`, `meccsid`, `idopont`, `nezo`) VALUES
(5, 1, 16, '15:45', NULL),
(6, 1, 17, '13:22', NULL),
(33, 5, 12, '13:51', NULL),
(34, 5, 15, '14:20', NULL),
(35, 5, 16, '15:31', NULL),
(36, 5, 17, '14:24', NULL),
(37, 5, 19, '14:42', NULL),
(48, 7, 12, '13:41', NULL),
(49, 7, 16, '16:03', NULL),
(50, 7, 17, '13:22', NULL),
(51, 7, 19, '15:22', NULL),
(53, 8, 15, '14:54', NULL),
(54, 8, 16, '15:15', NULL),
(55, 8, 17, '13:39', NULL),
(57, 9, 15, '14:25', NULL),
(58, 9, 17, '13:41', NULL),
(61, 10, 12, '13:25', NULL),
(62, 10, 15, '14:49', NULL),
(63, 10, 16, '15:26', NULL),
(64, 10, 17, '13:12', NULL),
(65, 10, 19, '15:03', NULL),
(68, 11, 12, '13:20', NULL),
(69, 11, 15, '14:20', NULL),
(70, 11, 16, '15:57', NULL),
(71, 11, 17, '13:03', NULL),
(72, 11, 18, '16:14', NULL),
(73, 11, 19, '15:32', NULL),
(76, 12, 12, '13:18', NULL),
(77, 12, 15, '14:47', NULL),
(78, 12, 16, '15:11', NULL),
(79, 12, 17, '13:26', NULL),
(80, 12, 18, '16:39', NULL),
(81, 12, 19, '15:05', NULL),
(83, 13, 12, '13:39', NULL),
(84, 13, 15, '14:09', NULL),
(85, 13, 17, '13:43', NULL),
(86, 13, 18, '16:30', NULL),
(87, 13, 19, '14:35', NULL),
(90, 14, 12, '13:47', NULL),
(91, 14, 15, '15:23', NULL),
(92, 14, 16, '15:16', NULL),
(93, 14, 17, '13:47', NULL),
(94, 14, 19, '15:26', NULL),
(96, 15, 16, '15:47', NULL),
(97, 15, 18, '16:51', NULL),
(98, 15, 19, '14:54', NULL),
(102, 16, 12, '13:06', NULL),
(103, 16, 15, '15:25', NULL),
(104, 16, 16, '15:13', NULL),
(105, 16, 17, '13:09', NULL),
(106, 16, 18, '16:02', NULL),
(107, 16, 19, '15:13', NULL),
(110, 17, 12, '14:11', NULL),
(111, 17, 15, '14:58', NULL),
(112, 17, 17, '13:30', NULL),
(113, 17, 18, '17:05', NULL),
(117, 18, 12, '13:48', NULL),
(118, 18, 16, '15:23', NULL),
(119, 18, 17, '13:36', NULL),
(120, 18, 18, '16:52', NULL),
(131, 20, 15, '14:43', NULL),
(132, 20, 17, '13:13', NULL),
(133, 20, 18, '16:31', NULL),
(134, 20, 19, '15:44', NULL),
(153, 23, 15, '14:59', NULL),
(154, 23, 16, '15:47', NULL),
(155, 23, 17, '13:22', NULL),
(156, 23, 19, '15:25', NULL),
(161, 25, 12, '13:08', NULL),
(162, 25, 15, '15:13', NULL),
(163, 25, 16, '15:14', NULL),
(164, 25, 17, '13:38', NULL),
(165, 25, 18, '16:14', NULL),
(169, 26, 17, '13:54', NULL),
(170, 26, 18, '16:36', NULL),
(171, 26, 19, '14:37', NULL),
(180, 28, 15, '14:45', NULL),
(181, 28, 18, '16:26', NULL),
(182, 28, 19, '14:42', NULL),
(186, 29, 12, '13:56', NULL),
(187, 29, 15, '14:16', NULL),
(188, 29, 16, '15:27', NULL),
(189, 29, 17, '13:20', NULL),
(190, 29, 18, '16:06', NULL),
(191, 29, 19, '15:10', NULL),
(195, 30, 12, '14:25', NULL),
(196, 30, 15, '14:35', NULL),
(197, 30, 17, '13:36', NULL),
(198, 30, 18, '16:12', NULL),
(199, 30, 19, '15:21', NULL),
(201, 31, 12, '13:16', NULL),
(202, 31, 15, '14:21', NULL),
(203, 31, 16, '15:18', NULL),
(204, 31, 17, '13:21', NULL),
(205, 31, 18, '16:41', NULL),
(206, 31, 19, '15:03', NULL),
(210, 32, 12, '13:05', NULL),
(211, 32, 16, '15:53', NULL),
(212, 32, 17, '13:35', NULL),
(213, 32, 19, '15:09', NULL),
(216, 33, 12, '13:18', NULL),
(217, 33, 15, '14:19', NULL),
(218, 33, 16, '15:27', NULL),
(219, 33, 17, '14:01', NULL),
(223, 34, 17, '13:40', NULL),
(224, 34, 19, '14:34', NULL),
(226, 35, 12, '13:37', NULL),
(227, 35, 15, '14:53', NULL),
(228, 35, 16, '15:36', NULL),
(229, 35, 19, '15:01', NULL),
(233, 36, 16, '15:33', NULL),
(234, 36, 17, '13:08', NULL),
(235, 36, 18, '16:06', NULL),
(236, 36, 19, '14:57', NULL),
(240, 37, 12, '13:07', NULL),
(241, 37, 15, '14:50', NULL),
(242, 37, 16, '15:48', NULL),
(243, 37, 18, '16:44', NULL),
(244, 37, 19, '14:51', NULL),
(248, 38, 12, '13:58', NULL),
(249, 38, 16, '15:08', NULL),
(250, 38, 17, '13:34', NULL),
(251, 38, 18, '16:39', NULL),
(255, 39, 15, '14:09', NULL),
(256, 39, 17, '13:22', NULL),
(257, 39, 18, '16:13', NULL),
(258, 39, 19, '14:30', NULL),
(260, 40, 15, '14:40', NULL),
(261, 40, 17, '13:31', NULL),
(262, 40, 18, '16:21', NULL),
(264, 41, 12, '13:43', NULL),
(265, 41, 15, '14:23', NULL),
(266, 41, 17, '14:08', NULL),
(267, 41, 18, '16:51', NULL),
(268, 41, 19, '14:38', NULL),
(272, 42, 12, '13:55', NULL),
(273, 42, 15, '14:19', NULL),
(274, 42, 16, '15:13', NULL),
(275, 42, 17, '13:13', NULL),
(276, 42, 18, '16:36', NULL),
(277, 42, 19, '14:33', NULL),
(279, 43, 12, '13:27', NULL),
(280, 43, 15, '14:19', NULL),
(281, 43, 17, '14:14', NULL),
(285, 44, 12, '13:43', NULL),
(286, 44, 15, '14:06', NULL),
(287, 44, 16, '15:28', NULL),
(288, 44, 17, '13:50', NULL),
(289, 44, 18, '16:04', NULL),
(292, 45, 12, '13:01', NULL),
(293, 45, 15, '15:00', NULL),
(294, 45, 17, '14:02', NULL),
(295, 45, 18, '16:34', NULL),
(296, 45, 19, '14:56', NULL),
(298, 46, 15, '14:47', NULL),
(299, 46, 16, '15:22', NULL),
(300, 46, 17, '13:38', NULL),
(301, 46, 19, '15:04', NULL),
(304, 47, 12, '14:00', NULL),
(305, 47, 16, '15:32', NULL),
(306, 47, 18, '16:42', NULL),
(307, 47, 19, '15:56', NULL),
(309, 48, 12, '13:41', NULL),
(310, 48, 15, '14:18', NULL),
(311, 48, 18, '16:21', NULL),
(312, 48, 19, '14:38', NULL),
(315, 49, 12, '13:15', NULL),
(316, 49, 15, '14:36', NULL),
(317, 49, 17, '13:57', NULL),
(321, 50, 12, '13:01', NULL),
(322, 50, 16, '15:03', NULL),
(323, 50, 18, '16:56', NULL),
(326, 51, 19, '15:20', NULL),
(328, 52, 12, '13:10', NULL),
(329, 52, 16, '16:27', NULL),
(330, 52, 17, '13:12', NULL),
(331, 52, 18, '16:53', NULL),
(332, 52, 19, '15:06', NULL),
(336, 53, 16, '15:03', NULL),
(337, 53, 17, '13:56', NULL),
(341, 54, 12, '13:05', NULL),
(342, 54, 15, '14:30', NULL),
(343, 54, 16, '15:25', NULL),
(344, 54, 17, '13:23', NULL),
(345, 54, 19, '15:16', NULL),
(349, 55, 12, '14:03', NULL),
(350, 55, 15, '14:20', NULL),
(351, 55, 16, '15:59', NULL),
(352, 55, 17, '13:33', NULL),
(353, 55, 18, '16:49', NULL),
(354, 55, 19, '14:34', NULL),
(357, 56, 12, '14:09', NULL),
(358, 56, 15, '14:05', NULL),
(359, 56, 16, '15:37', NULL),
(360, 56, 17, '14:19', NULL),
(361, 56, 18, '16:25', NULL),
(362, 56, 19, '14:47', NULL),
(363, 57, 12, '13:39', NULL),
(364, 57, 15, '14:22', NULL),
(365, 57, 16, '15:03', NULL),
(366, 57, 17, '13:54', NULL),
(367, 57, 18, '16:02', NULL),
(371, 58, 15, '14:20', NULL),
(372, 58, 16, '15:05', NULL),
(373, 58, 19, '14:50', NULL),
(376, 59, 12, '13:13', NULL),
(377, 59, 15, '14:07', NULL),
(378, 59, 16, '15:46', NULL),
(379, 59, 19, '15:06', NULL),
(382, 60, 12, '13:27', NULL),
(383, 60, 15, '14:22', NULL),
(384, 60, 16, '15:04', NULL),
(385, 60, 17, '13:03', NULL),
(386, 60, 18, '17:23', NULL),
(387, 60, 19, '15:14', NULL),
(391, 61, 16, '15:20', NULL),
(392, 61, 17, '13:01', NULL),
(393, 61, 18, '16:24', NULL),
(394, 61, 19, '15:42', NULL),
(397, 62, 12, '13:04', NULL),
(398, 62, 15, '14:40', NULL),
(399, 62, 16, '15:04', NULL),
(402, 63, 17, '13:20', NULL),
(406, 64, 12, '13:50', NULL),
(407, 64, 15, '14:53', NULL),
(408, 64, 16, '15:53', NULL),
(409, 64, 17, '13:35', NULL),
(410, 64, 18, '16:23', NULL),
(413, 65, 12, '13:15', NULL),
(414, 65, 17, '13:44', NULL),
(415, 65, 18, '16:14', NULL),
(416, 65, 19, '15:26', NULL),
(419, 67, 15, '14:00', NULL),
(420, 67, 16, '15:44', NULL),
(421, 67, 17, '14:26', NULL),
(422, 67, 18, '16:44', NULL),
(423, 67, 19, '15:14', NULL),
(427, 68, 12, '13:31', NULL),
(428, 68, 15, '14:06', NULL),
(429, 68, 16, '15:10', NULL),
(430, 68, 17, '14:02', NULL),
(431, 68, 18, '17:09', NULL),
(432, 68, 19, '15:55', NULL),
(436, 69, 12, '13:35', NULL),
(437, 69, 15, '14:28', NULL),
(438, 69, 16, '15:11', NULL),
(439, 69, 17, '13:40', NULL),
(440, 69, 18, '16:04', NULL),
(444, 70, 16, '15:58', NULL),
(445, 70, 17, '13:13', NULL),
(446, 70, 19, '14:55', NULL),
(449, 71, 12, '13:21', NULL),
(450, 71, 15, '14:33', NULL),
(451, 71, 16, '15:36', NULL),
(452, 71, 18, '16:29', NULL),
(455, 72, 15, '14:23', NULL),
(456, 72, 17, '13:09', NULL),
(457, 72, 18, '17:10', NULL),
(458, 72, 19, '14:36', NULL),
(461, 73, 12, '13:51', NULL),
(462, 73, 17, '13:55', NULL),
(463, 73, 18, '17:00', NULL),
(464, 73, 19, '15:05', NULL),
(467, 74, 16, '15:54', NULL),
(468, 74, 17, '13:05', NULL),
(470, 75, 15, '14:29', NULL),
(471, 75, 17, '13:57', NULL),
(472, 75, 18, '16:45', NULL),
(473, 75, 19, '15:43', NULL),
(474, 76, 12, '13:30', NULL),
(475, 76, 15, '15:00', NULL),
(476, 76, 16, '15:25', NULL),
(477, 76, 17, '13:23', NULL),
(478, 76, 18, '17:15', NULL),
(479, 76, 19, '15:14', NULL),
(482, 77, 12, '13:12', NULL),
(483, 77, 16, '15:42', NULL),
(484, 77, 18, '16:29', NULL),
(485, 77, 19, '14:44', NULL),
(488, 78, 12, '13:08', NULL),
(489, 78, 15, '14:41', NULL),
(490, 78, 17, '13:38', NULL),
(491, 78, 19, '15:13', NULL),
(494, 79, 12, '14:19', NULL),
(495, 79, 15, '14:29', NULL),
(496, 79, 16, '15:35', NULL),
(497, 79, 18, '17:23', NULL),
(499, 80, 12, '13:14', NULL),
(500, 80, 15, '14:39', NULL),
(501, 80, 16, '15:58', NULL),
(502, 80, 17, '13:04', NULL),
(503, 80, 18, '16:19', NULL),
(504, 80, 19, '14:54', NULL),
(508, 81, 12, '13:11', NULL),
(509, 81, 15, '14:42', NULL),
(510, 81, 16, '15:12', NULL),
(511, 81, 17, '13:06', NULL),
(512, 81, 18, '16:05', NULL),
(513, 81, 19, '14:34', NULL),
(515, 82, 16, '15:50', NULL),
(516, 82, 17, '13:33', NULL),
(517, 82, 19, '15:29', NULL),
(521, 83, 12, '14:06', NULL),
(522, 83, 16, '15:44', NULL),
(523, 83, 17, '13:24', NULL),
(524, 83, 18, '16:17', NULL),
(528, 84, 15, '14:06', NULL),
(529, 84, 16, '15:11', NULL),
(530, 84, 17, '13:16', NULL),
(531, 84, 18, '16:18', NULL),
(532, 84, 19, '15:37', NULL),
(534, 85, 12, '13:02', NULL),
(535, 85, 15, '14:56', NULL),
(536, 85, 16, '15:15', NULL),
(537, 85, 17, '13:01', NULL),
(538, 85, 19, '14:35', NULL),
(541, 86, 12, '13:43', NULL),
(542, 86, 15, '14:20', NULL),
(543, 86, 16, '15:00', NULL),
(544, 86, 17, '13:55', NULL),
(545, 86, 18, '16:46', NULL),
(547, 87, 16, '15:44', NULL),
(548, 87, 17, '13:15', NULL),
(549, 87, 18, '16:38', NULL),
(550, 87, 19, '15:20', NULL),
(552, 88, 12, '14:18', NULL),
(553, 88, 15, '14:44', NULL),
(554, 88, 17, '13:45', NULL),
(555, 88, 18, '17:03', NULL),
(558, 89, 16, '15:29', NULL),
(559, 89, 18, '16:36', NULL),
(561, 90, 12, '13:23', NULL),
(562, 90, 15, '14:13', NULL),
(563, 90, 16, '15:16', NULL),
(564, 90, 17, '14:21', NULL),
(565, 90, 18, '16:14', NULL),
(566, 90, 19, '14:47', NULL),
(569, 91, 12, '13:06', NULL),
(570, 91, 15, '14:59', NULL),
(571, 91, 16, '15:13', NULL),
(572, 91, 17, '13:49', NULL),
(573, 91, 18, '16:16', NULL),
(576, 92, 15, '14:41', NULL),
(579, 93, 15, '14:47', NULL),
(580, 93, 16, '15:02', NULL),
(581, 93, 17, '13:22', NULL),
(582, 93, 18, '16:01', NULL),
(583, 93, 19, '15:25', NULL),
(587, 94, 12, '13:31', NULL),
(588, 94, 15, '14:36', NULL),
(589, 94, 16, '15:33', NULL),
(590, 94, 17, '13:40', NULL),
(591, 94, 18, '16:58', NULL),
(592, 94, 19, '15:13', NULL),
(595, 95, 12, '13:12', NULL),
(596, 95, 15, '14:33', NULL),
(597, 95, 16, '15:07', NULL),
(598, 95, 18, '16:17', NULL),
(599, 95, 19, '14:34', NULL),
(602, 96, 12, '13:13', NULL),
(603, 96, 15, '15:14', NULL),
(604, 96, 16, '15:08', NULL),
(605, 96, 17, '13:12', NULL),
(606, 96, 18, '16:59', NULL),
(607, 96, 19, '14:58', NULL),
(610, 97, 12, '13:12', NULL),
(611, 97, 16, '15:26', NULL),
(612, 97, 17, '13:21', NULL),
(613, 97, 18, '16:16', NULL),
(614, 97, 19, '15:20', NULL),
(616, 98, 16, '15:28', NULL),
(619, 99, 12, '13:46', NULL),
(620, 99, 15, '14:28', NULL),
(621, 99, 16, '15:18', NULL),
(622, 99, 17, '13:52', NULL),
(623, 99, 19, '15:12', NULL),
(624, 100, 12, '13:59', NULL),
(625, 100, 15, '14:58', NULL),
(626, 100, 16, '15:41', NULL),
(627, 100, 18, '16:38', NULL),
(628, 100, 19, '14:37', NULL),
(632, 101, 15, '14:20', NULL),
(633, 101, 16, '15:21', NULL),
(634, 101, 18, '16:21', NULL),
(635, 101, 19, '15:09', NULL),
(638, 102, 12, '13:55', NULL),
(639, 102, 15, '14:28', NULL),
(640, 102, 16, '15:23', NULL),
(641, 102, 18, '16:13', NULL),
(644, 103, 12, '13:29', NULL),
(645, 103, 17, '13:23', NULL),
(647, 104, 12, '13:39', NULL),
(648, 104, 15, '14:56', NULL),
(649, 104, 16, '15:18', NULL),
(650, 104, 17, '13:35', NULL),
(651, 104, 18, '16:19', NULL),
(652, 104, 19, '14:32', NULL),
(655, 105, 12, '13:00', NULL),
(656, 105, 16, '15:59', NULL),
(657, 105, 17, '14:16', NULL),
(658, 105, 18, '16:01', NULL),
(660, 106, 12, '13:27', NULL),
(661, 106, 15, '14:44', NULL),
(662, 106, 16, '15:30', NULL),
(663, 106, 18, '16:29', NULL),
(667, 107, 12, '14:23', NULL),
(668, 107, 15, '14:02', NULL),
(669, 107, 16, '15:48', NULL),
(670, 107, 17, '13:12', NULL),
(671, 107, 18, '16:12', NULL),
(672, 107, 19, '15:55', NULL),
(675, 108, 12, '13:16', NULL),
(676, 108, 15, '15:00', NULL),
(677, 108, 16, '15:46', NULL),
(678, 108, 17, '13:37', NULL),
(679, 108, 19, '15:09', NULL),
(682, 109, 15, '14:55', NULL),
(683, 109, 16, '15:06', NULL),
(684, 109, 17, '13:36', NULL),
(685, 109, 18, '16:41', NULL),
(689, 110, 15, '15:19', NULL),
(691, 111, 16, '15:09', NULL),
(692, 111, 17, '13:39', NULL),
(693, 111, 18, '16:53', NULL),
(694, 111, 19, '15:23', NULL),
(697, 112, 12, '13:18', NULL),
(698, 112, 15, '15:13', NULL),
(699, 112, 16, '16:22', NULL),
(700, 112, 17, '13:14', NULL),
(701, 112, 18, '16:26', NULL),
(702, 112, 19, '15:15', NULL),
(705, 113, 15, '14:42', NULL),
(706, 113, 16, '15:44', NULL),
(707, 113, 17, '13:41', NULL),
(708, 113, 18, '16:36', NULL),
(709, 113, 19, '15:32', NULL),
(711, 114, 12, '13:09', NULL),
(712, 114, 15, '14:43', NULL),
(713, 114, 17, '13:27', NULL),
(714, 114, 18, '16:39', NULL),
(715, 115, 12, '14:05', NULL),
(716, 115, 16, '15:46', NULL),
(717, 115, 17, '13:29', NULL),
(718, 115, 18, '16:18', NULL),
(719, 115, 19, '15:15', NULL),
(722, 116, 16, '15:59', NULL),
(723, 116, 17, '14:24', NULL),
(724, 116, 18, '16:06', NULL),
(725, 116, 19, '14:37', NULL),
(727, 117, 12, '13:11', NULL),
(728, 117, 16, '15:49', NULL),
(729, 117, 17, '14:21', NULL),
(732, 118, 12, '13:23', NULL),
(733, 118, 15, '14:01', NULL),
(734, 118, 16, '15:07', NULL),
(735, 118, 18, '16:27', NULL),
(737, 119, 12, '13:45', NULL),
(738, 119, 16, '15:04', NULL),
(739, 119, 18, '16:51', NULL),
(740, 119, 19, '14:36', NULL),
(744, 120, 12, '13:55', NULL),
(745, 120, 15, '15:03', NULL),
(746, 120, 16, '15:35', NULL),
(747, 120, 17, '13:03', NULL),
(748, 120, 18, '16:39', NULL),
(749, 120, 19, '14:39', NULL),
(752, 121, 12, '13:16', NULL),
(753, 121, 15, '15:16', NULL),
(754, 121, 16, '16:07', NULL),
(755, 121, 17, '13:37', NULL),
(758, 122, 12, '13:50', NULL),
(759, 122, 15, '14:27', NULL),
(760, 122, 16, '16:26', NULL),
(761, 122, 17, '13:18', NULL),
(762, 122, 18, '16:10', NULL),
(764, 123, 16, '15:09', NULL),
(765, 123, 17, '13:16', NULL),
(766, 123, 18, '16:54', NULL),
(767, 123, 19, '15:35', NULL),
(771, 124, 15, '14:48', NULL),
(772, 124, 17, '13:01', NULL),
(773, 124, 18, '16:42', NULL),
(774, 124, 19, '14:32', NULL),
(778, 125, 12, '13:03', NULL),
(779, 125, 16, '15:37', NULL),
(780, 125, 17, '13:48', NULL),
(781, 125, 18, '16:36', NULL),
(785, 126, 12, '13:55', NULL),
(786, 126, 15, '14:20', NULL),
(787, 126, 16, '15:39', NULL),
(788, 126, 17, '13:50', NULL),
(789, 126, 18, '16:52', NULL),
(792, 127, 12, '13:32', NULL),
(793, 127, 15, '14:42', NULL),
(794, 127, 16, '15:09', NULL),
(795, 127, 17, '13:21', NULL),
(796, 127, 18, '16:23', NULL),
(800, 128, 12, '13:27', NULL),
(801, 128, 18, '16:52', NULL),
(804, 129, 12, '13:52', NULL),
(805, 129, 15, '14:33', NULL),
(806, 129, 16, '15:11', NULL),
(807, 129, 17, '13:18', NULL),
(808, 129, 18, '16:57', NULL),
(811, 130, 17, '13:46', NULL),
(813, 131, 15, '15:04', NULL),
(814, 131, 16, '15:26', NULL),
(815, 131, 17, '13:15', NULL),
(816, 131, 18, '16:49', NULL),
(817, 131, 19, '14:39', NULL),
(819, 132, 15, '14:19', NULL),
(820, 132, 18, '16:19', NULL),
(821, 132, 19, '14:39', NULL),
(825, 133, 12, '13:48', NULL),
(826, 133, 15, '14:59', NULL),
(827, 133, 16, '15:43', NULL),
(828, 133, 17, '13:51', NULL),
(829, 133, 18, '16:49', NULL),
(830, 133, 19, '15:12', NULL),
(834, 134, 12, '13:20', NULL),
(835, 134, 15, '14:30', NULL),
(836, 134, 16, '15:55', NULL),
(837, 134, 17, '13:58', NULL),
(838, 134, 19, '14:58', NULL),
(841, 135, 12, '13:13', NULL),
(842, 135, 16, '15:06', NULL),
(843, 135, 17, '13:02', NULL),
(844, 135, 19, '14:51', NULL),
(847, 136, 12, '13:33', NULL),
(848, 136, 15, '14:35', NULL),
(849, 136, 16, '15:12', NULL),
(850, 136, 17, '13:51', NULL),
(851, 136, 18, '17:04', NULL),
(852, 136, 19, '15:18', NULL),
(856, 137, 12, '13:00', NULL),
(857, 137, 15, '14:47', NULL),
(858, 137, 16, '15:03', NULL),
(859, 137, 17, '13:07', NULL),
(860, 137, 18, '16:31', NULL),
(861, 137, 19, '15:17', NULL),
(865, 138, 12, '13:34', NULL),
(866, 138, 17, '14:10', NULL),
(867, 138, 19, '14:42', NULL),
(870, 139, 12, '13:33', NULL),
(871, 139, 15, '14:57', NULL),
(872, 139, 16, '15:25', NULL),
(873, 139, 17, '13:35', NULL),
(874, 139, 18, '16:35', NULL),
(875, 139, 19, '14:41', NULL),
(878, 140, 12, '13:44', NULL),
(879, 140, 15, '14:21', NULL),
(880, 140, 16, '16:24', NULL),
(881, 140, 18, '16:47', NULL),
(882, 140, 19, '15:54', NULL),
(883, 141, 15, '14:42', NULL),
(884, 141, 16, '15:29', NULL),
(885, 141, 18, '16:39', NULL),
(888, 142, 15, '14:18', NULL),
(889, 142, 16, '15:13', NULL),
(890, 142, 17, '13:39', NULL),
(891, 142, 18, '16:40', NULL),
(894, 143, 17, '13:44', NULL),
(895, 143, 19, '14:36', NULL),
(898, 144, 12, '13:48', NULL),
(899, 144, 15, '14:52', NULL),
(900, 144, 16, '15:23', NULL),
(901, 144, 17, '13:30', NULL),
(902, 144, 19, '15:08', NULL),
(905, 145, 12, '13:21', NULL),
(906, 145, 15, '15:18', NULL),
(907, 145, 18, '16:45', NULL),
(911, 146, 12, '13:56', NULL),
(912, 146, 15, '14:29', NULL),
(913, 146, 16, '15:07', NULL),
(914, 146, 17, '13:35', NULL),
(915, 146, 18, '16:20', NULL),
(916, 146, 19, '14:31', NULL),
(919, 147, 12, '13:32', NULL),
(920, 147, 15, '15:17', NULL),
(921, 147, 16, '16:03', NULL),
(922, 147, 18, '16:13', NULL),
(923, 147, 19, '14:54', NULL),
(926, 148, 12, '13:26', NULL),
(927, 148, 15, '14:29', NULL),
(928, 148, 17, '13:37', NULL),
(929, 148, 18, '17:17', NULL),
(930, 148, 19, '15:08', NULL),
(934, 149, 12, '13:48', NULL),
(935, 149, 15, '14:24', NULL),
(936, 149, 18, '16:27', NULL),
(937, 149, 19, '15:28', NULL),
(939, 150, 12, '13:26', NULL),
(940, 150, 15, '14:48', NULL),
(941, 150, 16, '15:07', NULL),
(942, 150, 17, '13:02', NULL),
(943, 150, 18, '17:18', NULL),
(946, 151, 16, '15:25', NULL),
(947, 151, 17, '13:21', NULL),
(948, 151, 19, '14:41', NULL),
(952, 152, 12, '13:15', NULL),
(953, 152, 15, '14:10', NULL),
(954, 152, 16, '15:13', NULL),
(955, 152, 17, '13:23', NULL),
(956, 152, 18, '17:19', NULL),
(958, 153, 12, '13:48', NULL),
(959, 153, 15, '14:43', NULL),
(960, 153, 16, '15:19', NULL),
(961, 153, 17, '13:15', NULL),
(964, 154, 12, '13:32', NULL),
(965, 154, 15, '14:40', NULL),
(966, 154, 16, '15:52', NULL),
(967, 154, 18, '16:06', NULL),
(968, 154, 19, '14:58', NULL),
(971, 155, 12, '13:58', NULL),
(972, 155, 19, '15:20', NULL),
(975, 156, 12, '13:06', NULL),
(976, 156, 15, '14:49', NULL),
(977, 156, 16, '15:59', NULL),
(978, 156, 17, '13:48', NULL),
(979, 156, 18, '16:18', NULL),
(980, 156, 19, '15:13', NULL),
(983, 157, 12, '14:18', NULL),
(984, 157, 15, '14:52', NULL),
(985, 157, 16, '16:15', NULL),
(988, 158, 16, '15:12', NULL),
(989, 158, 18, '16:44', NULL),
(993, 159, 12, '13:35', NULL),
(994, 159, 15, '14:04', NULL),
(995, 159, 16, '15:03', NULL),
(996, 159, 17, '13:15', NULL),
(997, 159, 18, '16:46', NULL),
(998, 159, 19, '14:53', NULL),
(1000, 160, 15, '14:21', NULL),
(1001, 160, 16, '15:53', NULL),
(1002, 160, 17, '13:27', NULL),
(1003, 160, 18, '16:21', NULL),
(1007, 161, 12, '13:06', NULL),
(1008, 161, 15, '14:11', NULL),
(1009, 161, 17, '13:21', NULL),
(1010, 161, 19, '15:02', NULL),
(1013, 162, 12, '13:20', NULL),
(1014, 162, 17, '13:50', NULL),
(1015, 162, 18, '16:17', NULL),
(1017, 163, 12, '13:05', NULL),
(1018, 163, 15, '14:06', NULL),
(1019, 163, 19, '15:16', NULL),
(1022, 164, 15, '14:04', NULL),
(1023, 164, 17, '13:11', NULL),
(1024, 164, 19, '14:47', NULL),
(1026, 165, 15, '14:13', NULL),
(1027, 165, 16, '15:03', NULL),
(1028, 165, 17, '13:06', NULL),
(1029, 165, 18, '16:00', NULL),
(1032, 166, 12, '13:19', NULL),
(1033, 166, 16, '15:47', NULL),
(1034, 166, 17, '14:16', NULL),
(1035, 166, 18, '16:40', NULL),
(1038, 167, 12, '14:01', NULL),
(1039, 167, 15, '14:32', NULL),
(1040, 167, 16, '15:13', NULL),
(1041, 167, 17, '13:34', NULL),
(1042, 167, 18, '16:11', NULL),
(1046, 168, 12, '13:57', NULL),
(1047, 168, 15, '14:11', NULL),
(1048, 168, 16, '15:11', NULL),
(1049, 168, 17, '13:28', NULL),
(1050, 168, 19, '15:01', NULL),
(1053, 169, 12, '13:06', NULL),
(1054, 169, 15, '14:55', NULL),
(1055, 169, 16, '15:17', NULL),
(1056, 169, 17, '13:11', NULL),
(1057, 169, 18, '17:16', NULL),
(1058, 169, 19, '14:51', NULL),
(1060, 170, 12, '13:34', NULL),
(1061, 170, 15, '14:50', NULL),
(1062, 170, 16, '15:10', NULL),
(1063, 170, 18, '16:46', NULL),
(1064, 170, 19, '14:44', NULL),
(1067, 171, 12, '13:49', NULL),
(1068, 171, 17, '13:58', NULL),
(1069, 171, 18, '16:08', NULL),
(1070, 171, 19, '15:12', NULL),
(1074, 172, 12, '13:53', NULL),
(1075, 172, 15, '14:19', NULL),
(1076, 172, 16, '15:39', NULL),
(1077, 172, 17, '13:45', NULL),
(1078, 172, 18, '16:52', NULL),
(1079, 172, 19, '15:24', NULL),
(1081, 173, 12, '13:24', NULL),
(1082, 173, 15, '14:32', NULL),
(1083, 173, 16, '15:43', NULL),
(1084, 173, 17, '13:12', NULL),
(1085, 173, 19, '15:40', NULL),
(1089, 174, 12, '14:05', NULL),
(1090, 174, 15, '15:01', NULL),
(1091, 174, 17, '13:54', NULL),
(1092, 174, 18, '17:14', NULL),
(1093, 174, 19, '14:33', NULL),
(1097, 175, 12, '13:50', NULL),
(1098, 175, 15, '14:43', NULL),
(1099, 175, 16, '15:18', NULL),
(1100, 175, 17, '13:49', NULL),
(1101, 175, 18, '16:33', NULL),
(1102, 175, 19, '15:19', NULL),
(1105, 176, 15, '14:56', NULL),
(1106, 176, 17, '13:06', NULL),
(1107, 176, 18, '16:14', NULL),
(1108, 176, 19, '15:28', NULL),
(1111, 177, 15, '14:23', NULL),
(1112, 177, 16, '15:42', NULL),
(1113, 177, 17, '13:11', NULL),
(1114, 177, 18, '16:10', NULL),
(1117, 178, 12, '14:28', NULL),
(1118, 178, 16, '15:33', NULL),
(1119, 178, 17, '13:26', NULL),
(1123, 179, 12, '13:32', NULL),
(1124, 179, 15, '14:26', NULL),
(1125, 179, 16, '15:49', NULL),
(1126, 179, 17, '14:29', NULL),
(1127, 179, 18, '16:22', NULL),
(1129, 180, 16, '15:25', NULL),
(1130, 180, 18, '16:22', NULL),
(1134, 181, 12, '13:23', NULL),
(1135, 181, 15, '15:05', NULL),
(1136, 181, 16, '15:25', NULL),
(1137, 181, 17, '13:40', NULL),
(1138, 181, 18, '16:01', NULL),
(1140, 182, 15, '14:48', NULL),
(1141, 182, 16, '15:16', NULL),
(1142, 182, 18, '16:48', NULL),
(1143, 182, 19, '14:46', NULL),
(1146, 183, 12, '13:46', NULL),
(1147, 183, 15, '14:02', NULL),
(1148, 183, 16, '15:20', NULL),
(1149, 183, 17, '13:06', NULL),
(1152, 184, 12, '14:09', NULL),
(1153, 184, 16, '15:55', NULL),
(1154, 184, 18, '16:46', NULL),
(1155, 184, 19, '15:11', NULL),
(1159, 185, 12, '13:02', NULL),
(1160, 185, 15, '14:19', NULL),
(1161, 185, 16, '15:02', NULL),
(1162, 185, 17, '13:49', NULL),
(1163, 185, 18, '17:18', NULL),
(1164, 185, 19, '15:06', NULL),
(1168, 186, 12, '13:26', NULL),
(1169, 186, 15, '14:14', NULL),
(1170, 186, 17, '13:04', NULL),
(1171, 186, 18, '16:59', NULL),
(1172, 186, 19, '15:09', NULL),
(1176, 187, 12, '13:57', NULL),
(1177, 187, 16, '16:13', NULL),
(1178, 187, 17, '13:20', NULL),
(1179, 187, 19, '15:04', NULL),
(1182, 188, 12, '13:44', NULL),
(1183, 188, 15, '14:59', NULL),
(1184, 188, 16, '15:11', NULL),
(1185, 188, 17, '13:28', NULL),
(1186, 188, 18, '16:54', NULL),
(1187, 188, 19, '15:43', NULL),
(1190, 189, 12, '13:00', NULL),
(1191, 189, 15, '14:39', NULL),
(1192, 189, 16, '15:26', NULL),
(1193, 189, 17, '13:00', NULL),
(1194, 189, 18, '17:10', NULL),
(1198, 190, 15, '14:47', NULL),
(1199, 190, 18, '16:07', NULL),
(1200, 190, 19, '15:14', NULL);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `meccs`
--

DROP TABLE IF EXISTS `meccs`;
CREATE TABLE `meccs` (
  `id` int(11) NOT NULL,
  `datum` varchar(255) NOT NULL,
  `kezdes` varchar(255) NOT NULL,
  `belepo` int(11) NOT NULL,
  `tipus` varchar(255) NOT NULL,
  `belepesek` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `meccs`
--

INSERT INTO `meccs` (`id`, `datum`, `kezdes`, `belepo`, `tipus`, `belepesek`) VALUES
(12, '2018-10-06', '14:00', 1000, 'bajnoki', 0),
(15, '2018-09-26', '15:00', 500, 'kupa', 0),
(16, '2019-05-04', '16:00', 500, 'bajnoki', 0),
(17, '2018-10-24', '14:00', 1000, 'kupa', 0),
(18, '2018-08-11', '17:00', 500, 'bajnoki', 0),
(19, '2019-04-06', '15:30', 500, 'bajnoki', 0),
(20, '2019-06-01', '16:00', 800, 'bajnoki', 0),
(21, '2019-06-15', '18:00', 600, 'barátságos', 0),
(22, '2019-07-10', '17:00', 300, 'kupa', 0),
(23, '2019-08-05', '16:30', 700, 'bajnoki', 0),
(24, '2019-09-01', '15:00', 400, 'barátságos', 0),
(25, '2019-09-14', '17:00', 500, 'bajnoki', 0),
(26, '2019-10-03', '16:00', 600, 'bajnoki', 0),
(27, '2019-10-19', '15:30', 500, 'bajnoki', 0),
(28, '2019-11-02', '13:00', 1000, 'kupa', 0),
(29, '2019-11-23', '14:30', 400, 'bajnoki', 0),
(30, '2019-12-07', '14:00', 700, 'bajnoki', 0),
(31, '2020-02-12', '13:30', 600, 'barátságos', 0),
(32, '2020-03-10', '15:00', 800, 'bajnoki', 0),
(33, '2020-04-18', '16:00', 900, 'bajnoki', 0),
(34, '2020-05-24', '17:00', 300, 'kupa', 0),
(35, '2020-06-14', '18:00', 400, 'bajnoki', 0),
(36, '2020-07-05', '16:30', 600, 'barátságos', 0),
(37, '2020-08-22', '14:00', 1000, 'kupa', 0),
(38, '2020-09-12', '15:30', 500, 'bajnoki', 0),
(39, '2020-10-03', '17:00', 800, 'bajnoki', 0),
(40, '2020-11-15', '16:00', 400, 'barátságos', 0),
(42, '2023-12-13', '15:00', 5000, 'Foci', NULL),
(43, '2023-12-12', '15:00', 6000, 'Foci', NULL);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `message`
--

DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `id` bigint(20) NOT NULL,
  `content` varchar(255) DEFAULT NULL,
  `sender` varchar(255) DEFAULT NULL,
  `sent_at` datetime(6) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `message`
--

INSERT INTO `message` (`id`, `content`, `sender`, `sent_at`, `role`) VALUES
(4, 'Hello, this is a test message!', 'KaszVik', '2024-12-04 20:58:49.000000', 'USER'),
(5, 'asd', 'user', '2024-12-04 21:38:30.000000', 'USER'),
(6, 'Üzenet a usertől', 'user', '2024-12-04 21:41:55.000000', 'USER'),
(7, 'Hello, this is a test message!', 'KaszVik', '2024-12-04 21:47:52.000000', 'USER'),
(8, 'Üzenet szöveg CURL', 'KaszVik', '2024-12-04 22:04:41.000000', 'USER');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `nezo`
--

DROP TABLE IF EXISTS `nezo`;
CREATE TABLE `nezo` (
  `id` int(11) NOT NULL,
  `nev` varchar(255) NOT NULL,
  `ferfi` int(11) NOT NULL,
  `berletes` int(11) NOT NULL,
  `belepesek` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `nezo`
--

INSERT INTO `nezo` (`id`, `nev`, `ferfi`, `berletes`, `belepesek`) VALUES
(1, 'Cigány János', -1, 0, 0),
(5, 'Réti Dániel', -1, -1, 0),
(7, 'Elek Miklós', -1, 0, 0),
(8, 'Balázs Domonkos', -1, 0, 0),
(9, 'Tóth Ákos', -1, -1, 0),
(10, 'Sári Péter', -1, 0, 0),
(11, 'Kiss Dorina', 0, -1, 0),
(12, 'Csuka Beáta', 0, 0, 0),
(13, 'Kun Tamás', -1, -1, 0),
(14, 'Zsolczai Balázs', -1, -1, 0),
(15, 'Bertók Dániel', -1, -1, 0),
(16, 'Fehér Orsolya', 0, -1, 0),
(17, 'Márton Hunor', -1, 0, 0),
(18, 'Vass András', -1, 0, 0),
(20, 'Kónya Barbara', 0, 0, 0),
(23, 'Oláh Soma', -1, 0, 0),
(25, 'Csáki Márton', -1, 0, 0),
(26, 'Deák István', -1, 0, 0),
(28, 'Bogdándi Dávid', -1, -1, 0),
(29, 'Szolga Ádám', -1, 0, 0),
(30, 'Molnár Márton', -1, -1, 0),
(31, 'Árva Ákos', -1, 0, 0),
(32, 'Schiss Bence', -1, -1, 0),
(33, 'Szűcs Kornél', -1, 0, 0),
(34, 'Barta Tamás', -1, 0, 0),
(35, 'Kincses Kristóf', -1, 0, 0),
(36, 'Meleg Dániel', -1, -1, 0),
(37, 'Kispál Péter', -1, 0, 0),
(38, 'Csonka József', -1, 0, 0),
(39, 'Janka Csanád', -1, 0, 0),
(40, 'Moldován Tamás', -1, 0, 0),
(41, 'Kovács Szilárd', -1, 0, 0),
(42, 'Papp Viola', 0, 0, 0),
(43, 'Csank János', -1, 0, 0),
(44, 'Szolnoki Martin', -1, 0, 0),
(45, 'Boldizsár Tas', -1, -1, 0),
(46, 'Péter Gábor', -1, -1, 0),
(47, 'Mészáros Réka', 0, 0, 0),
(48, 'Pásztor Nándor', -1, 0, 0),
(49, 'Hegyközi Martin', -1, 0, 0),
(50, 'Nagy Máté', -1, -1, 0),
(51, 'Lengyel Ádám', -1, 0, 0),
(52, 'Gyémánt Péter', -1, 0, 0),
(53, 'Kun Dániel', -1, 0, 0),
(54, 'Vlocskó Gábor', -1, 0, 0),
(55, 'Farkas Barnabás', -1, 0, 0),
(56, 'Vastag Tibor', -1, 0, 0),
(57, 'Pless Gergő', -1, 0, 0),
(58, 'Molnár Ádám', -1, 0, 0),
(59, 'Borbás Géza', -1, 0, 0),
(60, 'Kisteleki Igor', -1, 0, 0),
(61, 'Bodó Bence', -1, -1, 0),
(62, 'Nagy Balázs', -1, -1, 0),
(63, 'Berti Gergely', -1, 0, 0),
(64, 'Sebők Dániel', -1, 0, 0),
(65, 'Máté Martin', -1, 0, 0),
(66, 'Kovács Norbert', -1, 0, 0),
(67, 'Motyovszki Márk', -1, 0, 0),
(68, 'Gyapjas László', -1, -1, 0),
(69, 'Varga Melitta', 0, 0, 0),
(70, 'Csala Ádám', -1, 0, 0),
(71, 'Peregi Petra', 0, 0, 0),
(72, 'Lajkó Réka', 0, 0, 0),
(73, 'Gyimóth Patrik', -1, 0, 0),
(74, 'Horváth Ferenc', -1, 0, 0),
(75, 'Juhász Viktor', -1, -1, 0),
(76, 'Mészáros Réka', 0, 0, 0),
(77, 'Hegedű Fanni', 0, 0, 0),
(78, 'Kárpáti Ádám', -1, 0, 0),
(79, 'Pataki Gábor', -1, 0, 0),
(80, 'Tombácz Miklós', -1, 0, 0),
(81, 'Nyári Péter', -1, 0, 0),
(82, 'Kis Beáta', 0, 0, 0),
(83, 'Pék Roland', -1, 0, 0),
(84, 'Bodza Tamás', -1, 0, 0),
(85, 'Takács Márkó', -1, -1, 0),
(86, 'Kiss Márton', -1, 0, 0),
(87, 'Nagy Petra', 0, -1, 0),
(88, 'Kertész András', -1, 0, 0),
(89, 'Gárgyán Patrik', -1, 0, 0),
(90, 'Kamarás Attila', -1, 0, 0),
(91, 'Nyilas Ákos', -1, 0, 0),
(92, 'Balassa Viktor', -1, 0, 0),
(93, 'Koncz Béla', -1, 0, 0),
(94, 'Helle Ágnes', 0, 0, 0),
(95, 'Sári Zsófia', 0, 0, 0),
(96, 'Boldog Dániel', -1, 0, 0),
(97, 'Kovács Bence', -1, 0, 0),
(98, 'Illés László', -1, 0, 0),
(99, 'Reszegi Béla', -1, 0, 0),
(100, 'Hajdú Zília', 0, 0, 0),
(101, 'Nagy Ákos', -1, 0, 0),
(102, 'Juhász Ákos', -1, -1, 0),
(103, 'Bitó Bálint', -1, 0, 0),
(104, 'Pannonhalmi Martin', -1, -1, 0),
(105, 'Kónya Patrik', -1, 0, 0),
(106, 'Nagy Zsombor', -1, -1, 0),
(107, 'Lenkei Tamás', -1, 0, 0),
(108, 'Iván Gedeon', -1, 0, 0),
(109, 'Dancs György', -1, 0, 0),
(110, 'Kondász Ferenc', -1, 0, 0),
(111, 'Kiss Dóra', 0, 0, 0),
(112, 'Lukács Tamás', -1, -1, 0),
(113, 'Szalai Máté', -1, 0, 0),
(114, 'Jak Balázs', -1, -1, 0),
(115, 'Jónás László', -1, 0, 0),
(116, 'Fröhlich Zsombor', -1, 0, 0),
(117, 'Árpás Soma', -1, 0, 0),
(118, 'Tomka Máté', -1, -1, 0),
(119, 'Kertész Szilvia', 0, 0, 0),
(120, 'Heller Szabolcs', -1, 0, 0),
(121, 'Vőneki Milán', -1, 0, 0),
(122, 'Varga Boldizsár', -1, 0, 0),
(123, 'Földesi Tamás', -1, 0, 0),
(124, 'Vezsi Attila', -1, -1, 0),
(125, 'Móricz Zsolt', -1, 0, 0),
(126, 'Fekete István', -1, 0, 0),
(127, 'Sárközi Dávid', -1, 0, 0),
(128, 'Pintér Kálmán', -1, 0, 0),
(129, 'Tornyi Ágnes', 0, 0, 0),
(130, 'Mikó Viktor', -1, 0, 0),
(131, 'Bódis Róbert', -1, -1, 0),
(132, 'Erdei Máté', -1, 0, 0),
(133, 'Zelenka Gábor', -1, 0, 0),
(134, 'Fazekas Gabriella', 0, 0, 0),
(135, 'Tóth Richárd', -1, 0, 0),
(136, 'György Antal', -1, 0, 0),
(137, 'Sándor Nóra', 0, 0, 0),
(138, 'Barta Mária', 0, 0, 0),
(139, 'Czirják Tibor', -1, -1, 0),
(140, 'Hódos Gergő', -1, 0, 0),
(141, 'Németh László', -1, 0, 0),
(142, 'Varga Krisztina', 0, 0, 0),
(143, 'Gősi János', -1, 0, 0),
(144, 'Keresztes Bálint', -1, 0, 0),
(145, 'György Gábor', -1, 0, 0),
(146, 'Körmendi Ildikó', 0, 0, 0),
(147, 'Farkas Zoltán', -1, 0, 0),
(148, 'Harsányi András', -1, 0, 0),
(149, 'Szekeres Péter', -1, 0, 0),
(150, 'Papp Zsófia', 0, 0, 0),
(151, 'Szilágyi Júlia', 0, 0, 0),
(152, 'Jakab Péter', -1, 0, 0),
(153, 'Sárközi Gábor', -1, 0, 0),
(154, 'Bakó Attila', -1, 0, 0),
(155, 'Főnix László', -1, 0, 0),
(156, 'Farkas Valéria', 0, 0, 0),
(157, 'Jakab László', -1, -1, 0),
(158, 'Zánkai Kristóf', -1, 0, 0),
(159, 'Sárközi Ágnes', 0, 0, 0),
(160, 'Németh Gabriella', 0, 0, 0),
(161, 'Béres Gábor', -1, 0, 0),
(162, 'Bagi László', -1, 0, 0),
(163, 'Kovács Renátó', -1, 0, 0),
(164, 'Barcza Alíz', 0, 0, 0),
(165, 'Szilágyi Ferenc', -1, 0, 0),
(166, 'Szilvási Anna', 0, 0, 0),
(167, 'Bartha Gábor', -1, 0, 0),
(168, 'Pázmány Zoltán', -1, 0, 0),
(169, 'Németh Gábor', -1, 0, 0),
(170, 'Varga Pál', -1, 0, 0),
(171, 'Sipos András', -1, 0, 0),
(172, 'Sipos Katalin', 0, 0, 0),
(173, 'Boros Péter', -1, 0, 0),
(174, 'Bányai Klára', 0, 0, 0),
(175, 'Pálfy Máté', -1, 0, 0),
(176, 'Juhász Eszter', 0, 0, 0),
(177, 'Szőke Ádám', -1, 0, 0),
(178, 'Horváth Katalin', 0, 0, 0),
(179, 'Németh Zoltán', -1, 0, 0),
(180, 'Fekete Zsuzsanna', 0, 0, 0),
(181, 'Tóth Ferenc', -1, 0, 0),
(182, 'Kovács Flóra', 0, 0, 0),
(183, 'Zoltán László', -1, 0, 0),
(184, 'Bódy Mónika', 0, 0, 0),
(185, 'Rózsa István', -1, 0, 0),
(186, 'Rácz Bálint', -1, 0, 0),
(187, 'Kovács Ágnes', 0, 0, 0),
(188, 'Császár Emil', -1, 0, 0),
(189, 'Mórocz Károly', -1, 0, 0),
(190, 'Tóth Réka', 0, 0, 0),
(194, 'x', -1, -1, 0);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` bigint(20) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `security_code` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `user`
--

INSERT INTO `user` (`id`, `password`, `role`, `username`, `security_code`) VALUES
(2, '$2a$10$bW8SfpDfDXA2powf/yg2Curbt/21KzNJhftry3nhCio8Gh4Z30rrq', 'USER', '1', ''),
(3, '$2a$10$uYGBDMhLxRVQ2aoMsCdbquPMQ85tJIoyh4MvWDCdffTgKrIOTkCzW', 'ADMIN', 'KaszVik', 'admin_honey_role'),
(4, '$2a$10$TfDWbI7825hPdTZu1KhMS.06TpTxDVmTdD.wCNNfTXciW5u9b9Aae', 'USER', 'user', '');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `belepes`
--
ALTER TABLE `belepes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nezozd` (`nezoid`,`meccsid`),
  ADD KEY `belepes_meccs_fk` (`meccsid`);

--
-- A tábla indexei `meccs`
--
ALTER TABLE `meccs`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `nezo`
--
ALTER TABLE `nezo`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `belepes`
--
ALTER TABLE `belepes`
  MODIFY `id` bigint(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1201;

--
-- AUTO_INCREMENT a táblához `meccs`
--
ALTER TABLE `meccs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT a táblához `message`
--
ALTER TABLE `message`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT a táblához `nezo`
--
ALTER TABLE `nezo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=195;

--
-- AUTO_INCREMENT a táblához `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `belepes`
--
ALTER TABLE `belepes`
  ADD CONSTRAINT `belepes_ibfk_1` FOREIGN KEY (`nezoid`) REFERENCES `nezo` (`id`),
  ADD CONSTRAINT `belepes_meccs_fk` FOREIGN KEY (`meccsid`) REFERENCES `meccs` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
