-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 01, 2024 at 11:29 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `scores`
--

-- --------------------------------------------------------

--
-- Table structure for table `main`
--

CREATE TABLE `main` (
  `id` int(11) NOT NULL,
  `totaltime` int(11) NOT NULL,
  `maxwpm` int(11) NOT NULL,
  `spiderspeed` int(11) NOT NULL,
  `maxdistance` int(11) NOT NULL,
  `errors` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `main`
--

INSERT INTO `main` (`id`, `totaltime`, `maxwpm`, `spiderspeed`, `maxdistance`, `errors`) VALUES
(100, 0, 0, 0, 0, 0),
(101, 0, 0, 0, 0, 0),
(102, 0, 0, 0, 0, 0),
(103, 0, 0, 0, 0, 0),
(104, 0, 0, 0, 0, 0),
(105, 0, 0, 0, 0, 0),
(106, 0, 0, 0, 0, 0),
(107, 0, 0, 0, 0, 0),
(108, 0, 0, 0, 0, 0),
(109, 0, 0, 0, 0, 0),
(110, 0, 0, 0, 0, 0),
(111, 0, 0, 0, 0, 0),
(112, 0, 0, 0, 0, 0),
(113, 0, 0, 0, 0, 0),
(114, 0, 0, 0, 0, 0),
(115, 0, 0, 0, 0, 0),
(116, 9, 24, 20, 104, 2),
(117, 0, 0, 0, 0, 0),
(118, 14, 60, 25, 150, 5),
(119, 9, 24, 20, 104, 2),
(120, 9, 24, 20, 104, 2),
(121, 9, 24, 20, 104, 2),
(122, 7, 12, 20, 92, 1),
(123, 7, 12, 20, 92, 1),
(124, 0, 0, 0, 0, 0),
(125, 0, 0, 0, 0, 0),
(126, 0, 0, 0, 0, 0),
(127, 0, 0, 0, 0, 0),
(128, 0, 0, 0, 0, 0),
(129, 0, 0, 0, 0, 0),
(130, 0, 0, 0, 0, 0),
(131, 0, 0, 0, 0, 0),
(132, 0, 0, 0, 0, 0),
(133, 0, 0, 0, 0, 0),
(134, 0, 0, 0, 0, 0),
(135, 0, 0, 0, 0, 0),
(136, 0, 0, 0, 0, 0),
(137, 0, 0, 0, 0, 0),
(138, 0, 0, 0, 0, 0),
(139, 0, 0, 0, 0, 0),
(140, 0, 0, 0, 0, 0),
(141, 0, 0, 0, 0, 0),
(142, 0, 0, 0, 0, 0),
(143, 0, 0, 0, 0, 0),
(144, 0, 0, 0, 0, 0),
(145, 0, 0, 0, 0, 0),
(146, 0, 0, 0, 0, 0),
(147, 42, 62, 40, 461, 19),
(148, 6, 24, 20, 74, 6),
(149, 11, 36, 25, 71, 16),
(150, 4, 12, 20, 77, 5),
(151, 8, 48, 20, 68, 7),
(152, 8, 48, 20, 72, 5),
(153, 6, 36, 20, 71, 9),
(154, 0, 0, 0, 0, 0),
(155, 38, 60, 35, 447, 36),
(156, 3, 0, 20, 35, 3),
(157, 5, 0, 20, 65, 1),
(158, 1, 0, 20, 0, 8),
(159, 122, 72, 80, 1406, 31),
(160, 2, 0, 20, 20, 4),
(161, 2, 0, 20, 20, 4),
(162, 0, 0, 0, 0, 0),
(163, 0, 0, 0, 0, 0),
(164, 0, 0, 0, 0, 0),
(165, 0, 0, 0, 0, 0),
(166, 0, 0, 0, 0, 0),
(167, 0, 0, 0, 0, 0),
(168, 0, 0, 0, 0, 0),
(169, 0, 0, 0, 0, 0),
(170, 0, 0, 0, 0, 0),
(171, 0, 0, 0, 0, 0),
(172, 0, 0, 0, 0, 0),
(173, 0, 0, 0, 0, 0),
(174, 0, 0, 0, 0, 0),
(175, 0, 0, 0, 0, 0),
(176, 0, 0, 0, 0, 0),
(177, 0, 0, 0, 0, 0),
(178, 0, 0, 0, 0, 0),
(179, 0, 0, 0, 0, 0),
(180, 0, 0, 0, 0, 0),
(181, 0, 0, 0, 0, 0),
(182, 0, 0, 0, 0, 0),
(183, 0, 0, 0, 0, 0),
(184, 0, 0, 0, 0, 0),
(185, 0, 0, 0, 0, 0),
(186, 0, 0, 0, 0, 0),
(187, 2, 0, 20, 50, 6),
(188, 0, 0, 0, 0, 0),
(189, 0, 0, 0, 0, 0),
(190, 0, 0, 0, 0, 0),
(191, 0, 0, 0, 0, 0),
(192, 0, 0, 0, 0, 0),
(193, 0, 0, 0, 0, 0),
(194, 0, 0, 0, 0, 0),
(195, 0, 0, 0, 0, 0),
(196, 0, 0, 0, 0, 0),
(197, 0, 0, 0, 0, 0),
(198, 0, 0, 0, 0, 0),
(199, 0, 0, 0, 0, 0),
(200, 0, 0, 0, 0, 0),
(201, 0, 0, 0, 0, 0),
(202, 0, 0, 0, 0, 0),
(203, 0, 0, 0, 0, 0),
(204, 0, 0, 0, 0, 0),
(205, 2, 0, 20, 35, 4),
(206, 0, 0, 0, 0, 0),
(207, 0, 0, 0, 0, 0),
(208, 0, 0, 0, 0, 0),
(209, 4, 0, 20, 50, 2),
(210, 4, 0, 20, 50, 2),
(211, 5, 0, 20, 65, 1),
(212, 2, 0, 20, 35, 8),
(213, 32, 50, 35, 259, 10),
(214, 0, 0, 0, 0, 0),
(215, 23, 60, 30, 226, 0),
(216, 0, 0, 0, 0, 0),
(217, 0, 0, 0, 0, 0),
(218, 2, 0, 20, 20, 4);

-- --------------------------------------------------------

--
-- Table structure for table `timeseries`
--

CREATE TABLE `timeseries` (
  `id` int(11) NOT NULL,
  `main_id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `wpm` int(11) NOT NULL,
  `spider` int(11) NOT NULL,
  `distance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `timeseries`
--

INSERT INTO `timeseries` (`id`, `main_id`, `time`, `wpm`, `spider`, `distance`) VALUES
(346, 103, 1, 72, 20, 152),
(347, 103, 2, 36, 20, 168),
(348, 103, 3, 24, 20, 172),
(349, 103, 4, 18, 20, 170),
(350, 103, 5, 14, 20, 164),
(351, 103, 6, 12, 20, 156),
(352, 103, 7, 10, 20, 146),
(353, 103, 8, 9, 20, 135),
(354, 103, 9, 8, 20, 123),
(355, 103, 10, 7, 25, 105),
(356, 103, 11, 7, 25, 87),
(357, 103, 12, 6, 25, 68),
(358, 103, 13, 6, 25, 49),
(359, 103, 14, 5, 25, 29),
(360, 103, 15, 5, 25, 9),
(361, 103, 16, 5, 25, 0),
(362, 104, 1, 96, 20, 176),
(363, 104, 2, 48, 20, 204),
(364, 104, 3, 32, 20, 216),
(365, 104, 4, 24, 20, 220),
(366, 104, 5, 19, 20, 219),
(367, 104, 6, 16, 20, 215),
(368, 104, 7, 14, 20, 209),
(369, 104, 8, 12, 20, 201),
(370, 104, 9, 11, 20, 192),
(371, 104, 10, 10, 25, 177),
(372, 104, 11, 9, 25, 161),
(373, 104, 12, 8, 25, 144),
(374, 104, 13, 7, 25, 126),
(375, 104, 14, 7, 25, 108),
(376, 104, 15, 6, 25, 89),
(377, 104, 16, 6, 25, 70),
(378, 104, 17, 6, 25, 51),
(379, 104, 18, 5, 25, 31),
(380, 104, 19, 5, 25, 11),
(381, 104, 20, 5, 30, 0),
(382, 109, 1, 72, 20, 152),
(383, 109, 2, 36, 20, 168),
(384, 109, 3, 24, 20, 172),
(385, 109, 4, 18, 20, 170),
(386, 109, 5, 14, 20, 164),
(387, 109, 6, 12, 20, 156),
(388, 109, 7, 10, 20, 146),
(389, 109, 8, 9, 20, 135),
(390, 109, 9, 8, 20, 123),
(391, 109, 10, 7, 25, 105),
(392, 109, 11, 7, 25, 87),
(393, 109, 12, 6, 25, 68),
(394, 109, 13, 6, 25, 49),
(395, 109, 14, 5, 25, 29),
(396, 109, 15, 5, 25, 9),
(397, 109, 16, 5, 25, 0),
(398, 110, 1, 36, 20, 116),
(399, 110, 2, 18, 20, 114),
(400, 110, 3, 12, 20, 106),
(401, 110, 4, 9, 20, 95),
(402, 110, 5, 7, 20, 82),
(403, 110, 6, 6, 20, 68),
(404, 110, 7, 5, 20, 53),
(405, 110, 8, 5, 20, 38),
(406, 110, 9, 4, 20, 22),
(407, 110, 10, 4, 25, 1),
(408, 110, 11, 3, 25, 0),
(409, 111, 1, 84, 20, 164),
(410, 111, 2, 42, 20, 186),
(411, 111, 3, 28, 20, 194),
(412, 111, 4, 21, 20, 195),
(413, 111, 5, 17, 20, 192),
(414, 111, 6, 14, 20, 186),
(415, 111, 7, 12, 20, 178),
(416, 111, 8, 11, 20, 169),
(417, 111, 9, 9, 20, 158),
(418, 111, 10, 8, 25, 141),
(419, 111, 11, 8, 25, 124),
(420, 111, 12, 7, 25, 106),
(421, 111, 13, 6, 25, 87),
(422, 111, 14, 6, 25, 68),
(423, 111, 15, 6, 25, 49),
(424, 111, 16, 5, 25, 29),
(425, 111, 17, 5, 25, 9),
(426, 111, 18, 5, 25, 0),
(427, 112, 1, 72, 20, 152),
(428, 112, 2, 36, 20, 168),
(429, 112, 3, 24, 20, 172),
(430, 112, 4, 18, 20, 170),
(431, 112, 5, 14, 20, 164),
(432, 112, 6, 12, 20, 156),
(433, 112, 7, 10, 20, 146),
(434, 112, 8, 9, 20, 135),
(435, 112, 9, 8, 20, 123),
(436, 112, 10, 7, 25, 105),
(437, 112, 11, 7, 25, 87),
(438, 112, 12, 6, 25, 68),
(439, 112, 13, 6, 25, 49),
(440, 112, 14, 5, 25, 29),
(441, 112, 15, 5, 25, 9),
(442, 112, 16, 5, 25, 0),
(443, 113, 1, 48, 20, 128),
(444, 113, 2, 24, 20, 132),
(445, 113, 3, 16, 20, 128),
(446, 113, 4, 12, 20, 120),
(447, 113, 5, 10, 20, 110),
(448, 113, 6, 8, 20, 98),
(449, 113, 7, 7, 20, 85),
(450, 113, 8, 6, 20, 71),
(451, 113, 9, 5, 20, 56),
(452, 113, 10, 5, 25, 36),
(453, 113, 11, 4, 25, 15),
(454, 113, 12, 4, 25, 0),
(455, 114, 1, 48, 20, 128),
(456, 114, 2, 24, 20, 132),
(457, 114, 3, 16, 20, 128),
(458, 114, 4, 12, 20, 120),
(459, 114, 5, 10, 20, 110),
(460, 114, 6, 8, 20, 98),
(461, 114, 7, 7, 20, 85),
(462, 114, 8, 6, 20, 71),
(463, 114, 9, 5, 20, 56),
(464, 114, 10, 5, 25, 36),
(465, 114, 11, 4, 25, 15),
(466, 114, 12, 4, 25, 0),
(467, 115, 1, 36, 20, 116),
(468, 115, 2, 18, 20, 114),
(469, 115, 3, 12, 20, 106),
(470, 115, 4, 9, 20, 95),
(471, 115, 5, 7, 20, 82),
(472, 115, 6, 6, 20, 68),
(473, 115, 7, 5, 20, 53),
(474, 115, 8, 5, 20, 38),
(475, 115, 9, 4, 20, 22),
(476, 115, 10, 4, 25, 1),
(477, 115, 11, 3, 25, 0),
(478, 116, 1, 24, 20, 104),
(479, 116, 2, 12, 20, 96),
(480, 116, 3, 8, 20, 84),
(481, 116, 4, 6, 20, 70),
(482, 116, 5, 5, 20, 55),
(483, 116, 6, 4, 20, 39),
(484, 116, 7, 3, 20, 22),
(485, 116, 8, 3, 20, 5),
(486, 116, 9, 3, 20, 0),
(487, 118, 1, 60, 20, 140),
(488, 118, 2, 30, 20, 150),
(489, 118, 3, 20, 20, 150),
(490, 118, 4, 15, 20, 145),
(491, 118, 5, 12, 20, 137),
(492, 118, 6, 10, 20, 127),
(493, 118, 7, 9, 20, 116),
(494, 118, 8, 8, 20, 104),
(495, 118, 9, 7, 20, 91),
(496, 118, 10, 6, 25, 72),
(497, 118, 11, 5, 25, 52),
(498, 118, 12, 5, 25, 32),
(499, 118, 13, 5, 25, 12),
(500, 118, 14, 4, 25, 0),
(501, 119, 1, 24, 20, 104),
(502, 119, 2, 12, 20, 96),
(503, 119, 3, 8, 20, 84),
(504, 119, 4, 6, 20, 70),
(505, 119, 5, 5, 20, 55),
(506, 119, 6, 4, 20, 39),
(507, 119, 7, 3, 20, 22),
(508, 119, 8, 3, 20, 5),
(509, 119, 9, 3, 20, 0),
(510, 120, 1, 24, 20, 104),
(511, 120, 2, 12, 20, 96),
(512, 120, 3, 8, 20, 84),
(513, 120, 4, 6, 20, 70),
(514, 120, 5, 5, 20, 55),
(515, 120, 6, 4, 20, 39),
(516, 120, 7, 3, 20, 22),
(517, 120, 8, 3, 20, 5),
(518, 120, 9, 3, 20, 0),
(519, 121, 1, 24, 20, 104),
(520, 121, 2, 12, 20, 96),
(521, 121, 3, 8, 20, 84),
(522, 121, 4, 6, 20, 70),
(523, 121, 5, 5, 20, 55),
(524, 121, 6, 4, 20, 39),
(525, 121, 7, 3, 20, 22),
(526, 121, 8, 3, 20, 5),
(527, 121, 9, 3, 20, 0),
(528, 122, 1, 12, 20, 92),
(529, 122, 2, 6, 20, 78),
(530, 122, 3, 4, 20, 62),
(531, 122, 4, 3, 20, 45),
(532, 122, 5, 2, 20, 27),
(533, 122, 6, 2, 20, 9),
(534, 122, 7, 2, 20, 0),
(535, 123, 1, 12, 20, 92),
(536, 123, 2, 6, 20, 78),
(537, 123, 3, 4, 20, 62),
(538, 123, 4, 3, 20, 45),
(539, 123, 5, 2, 20, 27),
(540, 123, 6, 2, 20, 9),
(541, 123, 7, 2, 20, 0),
(542, 147, 1, 36, 20, 116),
(543, 147, 2, 48, 20, 144),
(544, 147, 3, 60, 20, 184),
(545, 147, 4, 60, 20, 224),
(546, 147, 5, 60, 20, 264),
(547, 147, 6, 62, 20, 306),
(548, 147, 7, 58, 20, 344),
(549, 147, 8, 60, 20, 384),
(550, 147, 9, 56, 20, 390),
(551, 147, 10, 50, 25, 415),
(552, 147, 11, 46, 25, 436),
(553, 147, 12, 42, 25, 453),
(554, 147, 13, 40, 25, 453),
(555, 147, 14, 38, 25, 451),
(556, 147, 15, 35, 25, 461),
(557, 147, 16, 34, 25, 455),
(558, 147, 17, 32, 25, 447),
(559, 147, 18, 31, 25, 453),
(560, 147, 19, 30, 25, 443),
(561, 147, 20, 29, 30, 427),
(562, 147, 21, 27, 30, 424),
(563, 147, 22, 27, 30, 406),
(564, 147, 23, 26, 30, 387),
(565, 147, 24, 25, 30, 382),
(566, 147, 25, 24, 30, 376),
(567, 147, 26, 24, 30, 355),
(568, 147, 27, 23, 30, 348),
(569, 147, 28, 22, 30, 325),
(570, 147, 29, 22, 30, 317),
(571, 147, 30, 21, 35, 288),
(572, 147, 31, 21, 35, 274),
(573, 147, 32, 20, 35, 244),
(574, 147, 33, 20, 35, 229),
(575, 147, 34, 19, 35, 198),
(576, 147, 35, 19, 35, 167),
(577, 147, 36, 19, 35, 151),
(578, 147, 37, 18, 35, 119),
(579, 147, 38, 18, 35, 102),
(580, 147, 39, 18, 35, 70),
(581, 147, 40, 18, 40, 33),
(582, 147, 41, 18, 40, 11),
(583, 147, 42, 17, 40, 0),
(584, 148, 1, 24, 20, 74),
(585, 148, 2, 18, 20, 57),
(586, 148, 3, 20, 20, 27),
(587, 148, 4, 18, 20, 10),
(588, 148, 5, 14, 20, 4),
(589, 148, 6, 12, 20, 0),
(590, 149, 1, 36, 20, 71),
(591, 149, 2, 36, 20, 42),
(592, 149, 3, 36, 20, 16),
(593, 149, 4, 36, 20, 16),
(594, 149, 5, 29, 20, 25),
(595, 149, 6, 30, 20, 10),
(596, 149, 7, 27, 20, 7),
(597, 149, 8, 24, 20, 11),
(598, 149, 9, 21, 20, 12),
(599, 149, 10, 19, 25, 6),
(600, 149, 11, 19, 25, 0),
(601, 150, 1, 12, 20, 77),
(602, 150, 2, 12, 20, 54),
(603, 150, 3, 8, 20, 42),
(604, 150, 4, 15, 20, 0),
(605, 151, 1, 48, 20, 68),
(606, 151, 2, 30, 20, 63),
(607, 151, 3, 20, 20, 63),
(608, 151, 4, 15, 20, 58),
(609, 151, 5, 14, 20, 37),
(610, 151, 6, 12, 20, 29),
(611, 151, 7, 12, 20, 6),
(612, 151, 8, 11, 20, 0),
(613, 152, 1, 48, 20, 68),
(614, 152, 2, 24, 20, 72),
(615, 152, 3, 16, 20, 68),
(616, 152, 4, 12, 20, 60),
(617, 152, 5, 10, 20, 50),
(618, 152, 6, 8, 20, 38),
(619, 152, 7, 7, 20, 25),
(620, 152, 8, 8, 20, 0),
(621, 153, 1, 36, 20, 71),
(622, 153, 2, 30, 20, 51),
(623, 153, 3, 24, 20, 40),
(624, 153, 4, 21, 20, 26),
(625, 153, 5, 17, 20, 23),
(626, 153, 6, 18, 20, 0),
(627, 155, 1, 60, 20, 140),
(628, 155, 2, 54, 20, 174),
(629, 155, 3, 40, 20, 194),
(630, 155, 4, 45, 20, 219),
(631, 155, 5, 53, 20, 252),
(632, 155, 6, 48, 20, 280),
(633, 155, 7, 46, 20, 306),
(634, 155, 8, 42, 20, 328),
(635, 155, 9, 39, 20, 332),
(636, 155, 10, 35, 25, 342),
(637, 155, 11, 34, 25, 351),
(638, 155, 12, 33, 25, 359),
(639, 155, 13, 35, 25, 369),
(640, 155, 14, 36, 25, 380),
(641, 155, 15, 35, 25, 375),
(642, 155, 16, 33, 25, 383),
(643, 155, 17, 32, 25, 390),
(644, 155, 18, 31, 25, 396),
(645, 155, 19, 32, 25, 403),
(646, 155, 20, 34, 30, 407),
(647, 155, 21, 37, 30, 414),
(648, 155, 22, 37, 30, 421),
(649, 155, 23, 38, 30, 429),
(650, 155, 24, 39, 30, 438),
(651, 155, 25, 39, 30, 447),
(652, 155, 26, 38, 30, 425),
(653, 155, 27, 37, 30, 387),
(654, 155, 28, 36, 30, 333),
(655, 155, 29, 35, 30, 278),
(656, 155, 30, 34, 35, 277),
(657, 155, 31, 34, 35, 276),
(658, 155, 32, 34, 35, 275),
(659, 155, 33, 35, 35, 275),
(660, 155, 34, 35, 35, 275),
(661, 155, 35, 35, 35, 275),
(662, 155, 36, 35, 35, 275),
(663, 155, 37, 35, 35, 95),
(664, 155, 38, 35, 35, 0),
(665, 156, 1, 0, 20, 35),
(666, 156, 2, 0, 20, 15),
(667, 156, 3, 0, 20, 0),
(668, 157, 1, 0, 20, 65),
(669, 157, 2, 0, 20, 45),
(670, 157, 3, 0, 20, 25),
(671, 157, 4, 0, 20, 5),
(672, 157, 5, 0, 20, 0),
(673, 158, 1, 12, 20, 0),
(674, 159, 1, 36, 20, 116),
(675, 159, 2, 60, 20, 156),
(676, 159, 3, 68, 20, 204),
(677, 159, 4, 63, 20, 247),
(678, 159, 5, 67, 20, 294),
(679, 159, 6, 72, 20, 346),
(680, 159, 7, 69, 20, 395),
(681, 159, 8, 65, 20, 440),
(682, 159, 9, 68, 20, 488),
(683, 159, 10, 68, 25, 531),
(684, 159, 11, 62, 25, 568),
(685, 159, 12, 57, 25, 585),
(686, 159, 13, 54, 25, 614),
(687, 159, 14, 54, 25, 643),
(688, 159, 15, 55, 25, 673),
(689, 159, 16, 57, 25, 705),
(690, 159, 17, 59, 25, 739),
(691, 159, 18, 59, 25, 773),
(692, 159, 19, 59, 25, 792),
(693, 159, 20, 58, 30, 820),
(694, 159, 21, 58, 30, 848),
(695, 159, 22, 56, 30, 874),
(696, 159, 23, 55, 30, 899),
(697, 159, 24, 55, 30, 924),
(698, 159, 25, 55, 30, 949),
(699, 159, 26, 55, 30, 974),
(700, 159, 27, 53, 30, 997),
(701, 159, 28, 54, 30, 1021),
(702, 159, 29, 53, 30, 1044),
(703, 159, 30, 54, 35, 1063),
(704, 159, 31, 54, 35, 1082),
(705, 159, 32, 55, 35, 1102),
(706, 159, 33, 56, 35, 1123),
(707, 159, 34, 55, 35, 1143),
(708, 159, 35, 55, 35, 1163),
(709, 159, 36, 55, 35, 1183),
(710, 159, 37, 54, 35, 1202),
(711, 159, 38, 54, 35, 1221),
(712, 159, 39, 53, 35, 1239),
(713, 159, 40, 54, 40, 1253),
(714, 159, 41, 54, 40, 1267),
(715, 159, 42, 55, 40, 1282),
(716, 159, 43, 55, 40, 1297),
(717, 159, 44, 55, 40, 1312),
(718, 159, 45, 55, 40, 1312),
(719, 159, 46, 54, 40, 1326),
(720, 159, 47, 53, 40, 1324),
(721, 159, 48, 52, 40, 1336),
(722, 159, 49, 52, 40, 1348),
(723, 159, 50, 53, 45, 1356),
(724, 159, 51, 53, 45, 1364),
(725, 159, 52, 52, 45, 1371),
(726, 159, 53, 53, 45, 1379),
(727, 159, 54, 52, 45, 1386),
(728, 159, 55, 53, 45, 1394),
(729, 159, 56, 52, 45, 1401),
(730, 159, 57, 52, 45, 1393),
(731, 159, 58, 52, 45, 1400),
(732, 159, 59, 51, 45, 1406),
(733, 159, 60, 51, 50, 1392),
(734, 159, 61, 51, 50, 1393),
(735, 159, 62, 51, 50, 1394),
(736, 159, 63, 50, 50, 1394),
(737, 159, 64, 50, 50, 1379),
(738, 159, 65, 49, 50, 1378),
(739, 159, 66, 49, 50, 1377),
(740, 159, 67, 48, 50, 1360),
(741, 159, 68, 48, 50, 1358),
(742, 159, 69, 47, 50, 1355),
(743, 159, 70, 47, 55, 1347),
(744, 159, 71, 47, 55, 1339),
(745, 159, 72, 48, 55, 1332),
(746, 159, 73, 47, 55, 1324),
(747, 159, 74, 48, 55, 1317),
(748, 159, 75, 48, 55, 1310),
(749, 159, 76, 48, 55, 1303),
(750, 159, 77, 47, 55, 1280),
(751, 159, 78, 47, 55, 1272),
(752, 159, 79, 46, 55, 1233),
(753, 159, 80, 45, 60, 1218),
(754, 159, 81, 45, 60, 1203),
(755, 159, 82, 46, 60, 1189),
(756, 159, 83, 45, 60, 1174),
(757, 159, 84, 45, 60, 1159),
(758, 159, 85, 45, 60, 1144),
(759, 159, 86, 46, 60, 1130),
(760, 159, 87, 46, 60, 1116),
(761, 159, 88, 46, 60, 1102),
(762, 159, 89, 46, 60, 1088),
(763, 159, 90, 46, 65, 1069),
(764, 159, 91, 47, 65, 1051),
(765, 159, 92, 46, 65, 1032),
(766, 159, 93, 46, 65, 983),
(767, 159, 94, 46, 65, 964),
(768, 159, 95, 46, 65, 945),
(769, 159, 96, 46, 65, 926),
(770, 159, 97, 46, 65, 907),
(771, 159, 98, 46, 65, 873),
(772, 159, 99, 46, 65, 854),
(773, 159, 100, 46, 70, 800),
(774, 159, 101, 46, 70, 776),
(775, 159, 102, 46, 70, 752),
(776, 159, 103, 47, 70, 729),
(777, 159, 104, 47, 70, 706),
(778, 159, 105, 47, 70, 683),
(779, 159, 106, 47, 70, 660),
(780, 159, 107, 47, 70, 637),
(781, 159, 108, 47, 70, 614),
(782, 159, 109, 47, 70, 591),
(783, 159, 110, 47, 75, 548),
(784, 159, 111, 46, 75, 444),
(785, 159, 112, 46, 75, 355),
(786, 159, 113, 45, 75, 325),
(787, 159, 114, 45, 75, 295),
(788, 159, 115, 45, 75, 265),
(789, 159, 116, 45, 75, 235),
(790, 159, 117, 45, 75, 205),
(791, 159, 118, 45, 75, 175),
(792, 159, 119, 45, 75, 130),
(793, 159, 120, 45, 80, 50),
(794, 159, 121, 45, 80, 15),
(795, 159, 122, 44, 80, 0),
(796, 160, 1, 0, 20, 20),
(797, 160, 2, 0, 20, 0),
(798, 161, 1, 0, 20, 20),
(799, 161, 2, 0, 20, 0),
(800, 187, 1, 0, 20, 50),
(801, 187, 2, 0, 20, 0),
(802, 205, 1, 0, 20, 35),
(803, 205, 2, 0, 20, 0),
(804, 209, 1, 0, 20, 50),
(805, 209, 2, 0, 20, 30),
(806, 209, 3, 0, 20, 10),
(807, 209, 4, 0, 20, 0),
(808, 210, 1, 0, 20, 50),
(809, 210, 2, 0, 20, 30),
(810, 210, 3, 0, 20, 10),
(811, 210, 4, 0, 20, 0),
(812, 211, 1, 0, 20, 65),
(813, 211, 2, 0, 20, 45),
(814, 211, 3, 0, 20, 25),
(815, 211, 4, 0, 20, 5),
(816, 211, 5, 0, 20, 0),
(817, 212, 1, 0, 20, 35),
(818, 212, 2, 6, 20, 0),
(819, 213, 1, 24, 20, 89),
(820, 213, 2, 18, 20, 72),
(821, 213, 3, 40, 20, 92),
(822, 213, 4, 45, 20, 117),
(823, 213, 5, 50, 20, 147),
(824, 213, 6, 48, 20, 175),
(825, 213, 7, 46, 20, 201),
(826, 213, 8, 42, 20, 223),
(827, 213, 9, 37, 20, 240),
(828, 213, 10, 34, 25, 249),
(829, 213, 11, 31, 25, 255),
(830, 213, 12, 28, 25, 258),
(831, 213, 13, 26, 25, 259),
(832, 213, 14, 24, 25, 258),
(833, 213, 15, 22, 25, 255),
(834, 213, 16, 21, 25, 251),
(835, 213, 17, 20, 25, 246),
(836, 213, 18, 19, 25, 240),
(837, 213, 19, 18, 25, 233),
(838, 213, 20, 17, 30, 220),
(839, 213, 21, 18, 30, 208),
(840, 213, 22, 20, 30, 198),
(841, 213, 23, 20, 30, 188),
(842, 213, 24, 20, 30, 148),
(843, 213, 25, 20, 30, 138),
(844, 213, 26, 20, 30, 113),
(845, 213, 27, 19, 30, 87),
(846, 213, 28, 18, 30, 60),
(847, 213, 29, 19, 30, 49),
(848, 213, 30, 19, 35, 33),
(849, 213, 31, 19, 35, 2),
(850, 213, 32, 18, 35, 0),
(851, 215, 1, 48, 20, 128),
(852, 215, 2, 60, 20, 168),
(853, 215, 3, 48, 20, 196),
(854, 215, 4, 36, 20, 212),
(855, 215, 5, 29, 20, 221),
(856, 215, 6, 24, 20, 225),
(857, 215, 7, 21, 20, 226),
(858, 215, 8, 18, 20, 224),
(859, 215, 9, 16, 20, 220),
(860, 215, 10, 14, 25, 209),
(861, 215, 11, 13, 25, 197),
(862, 215, 12, 12, 25, 184),
(863, 215, 13, 11, 25, 170),
(864, 215, 14, 10, 25, 155),
(865, 215, 15, 10, 25, 140),
(866, 215, 16, 9, 25, 124),
(867, 215, 17, 8, 25, 107),
(868, 215, 18, 8, 25, 90),
(869, 215, 19, 8, 25, 73),
(870, 215, 20, 7, 30, 50),
(871, 215, 21, 7, 30, 27),
(872, 215, 22, 7, 30, 4),
(873, 215, 23, 6, 30, 0),
(874, 218, 1, 0, 20, 20),
(875, 218, 2, 0, 20, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `main`
--
ALTER TABLE `main`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `timeseries`
--
ALTER TABLE `timeseries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `series_id` (`main_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `main`
--
ALTER TABLE `main`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=219;

--
-- AUTO_INCREMENT for table `timeseries`
--
ALTER TABLE `timeseries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=876;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `timeseries`
--
ALTER TABLE `timeseries`
  ADD CONSTRAINT `timeseries_ibfk_1` FOREIGN KEY (`main_id`) REFERENCES `main` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
