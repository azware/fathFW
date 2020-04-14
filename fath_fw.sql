-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 22, 2019 at 10:12 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fath_fw`
--

-- --------------------------------------------------------

--
-- Table structure for table `fathm_sessions`
--

CREATE TABLE `fathm_sessions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `device_id` varchar(255) DEFAULT NULL,
  `is_blacklist` tinyint(4) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `updated_by` int(11) UNSIGNED DEFAULT NULL,
  `updated_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fath_controller`
--

CREATE TABLE `fath_controller` (
  `controller_id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  `controller_nama` varchar(100) NOT NULL,
  `created_by` int(11) UNSIGNED DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `updated_by` int(11) UNSIGNED DEFAULT NULL,
  `updated_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fath_controller`
--

INSERT INTO `fath_controller` (`controller_id`, `module_id`, `controller_nama`, `created_by`, `created_time`, `updated_by`, `updated_time`) VALUES
(1, 1, 'module', 1, '2017-03-29 11:20:42', NULL, NULL),
(2, 1, 'menu', 1, '2017-03-29 11:20:42', NULL, NULL),
(3, 1, 'user', 1, '2017-03-29 11:20:42', NULL, NULL),
(4, 1, 'group', 1, '2017-03-29 11:20:42', NULL, NULL),
(5, 1, 'change_group', 1, '2017-03-29 11:20:42', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `fath_css_icon`
--

CREATE TABLE `fath_css_icon` (
  `id` int(11) NOT NULL,
  `css_icon_kategori` varchar(50) DEFAULT NULL,
  `css_icon_nama` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fath_css_icon`
--

INSERT INTO `fath_css_icon` (`id`, `css_icon_kategori`, `css_icon_nama`) VALUES
(1, '41 New Icons in 4.7', 'fa-address-book-o'),
(2, '41 New Icons in 4.7', 'fa-address-card'),
(3, '41 New Icons in 4.7', 'fa-address-card-o'),
(4, '41 New Icons in 4.7', 'fa-bandcamp'),
(5, '41 New Icons in 4.7', 'fa-bath'),
(6, '41 New Icons in 4.7', 'fa-eercast'),
(7, '41 New Icons in 4.7', 'fa-envelope-open'),
(8, '41 New Icons in 4.7', 'fa-envelope-open-o'),
(9, '41 New Icons in 4.7', 'fa-etsy'),
(10, '41 New Icons in 4.7', 'fa-free-code-camp'),
(11, '41 New Icons in 4.7', 'fa-grav'),
(12, '41 New Icons in 4.7', 'fa-handshake-o'),
(13, '41 New Icons in 4.7', 'fa-id-badge'),
(14, '41 New Icons in 4.7', 'fa-id-card'),
(15, '41 New Icons in 4.7', 'fa-id-card-o'),
(16, '41 New Icons in 4.7', 'fa-imdb'),
(17, '41 New Icons in 4.7', 'fa-linode'),
(18, '41 New Icons in 4.7', 'fa-meetup'),
(19, '41 New Icons in 4.7', 'fa-microchip'),
(20, '41 New Icons in 4.7', 'fa-podcast'),
(21, '41 New Icons in 4.7', 'fa-quora'),
(22, '41 New Icons in 4.7', 'fa-ravelry'),
(23, '41 New Icons in 4.7', 'fa-shower'),
(24, '41 New Icons in 4.7', 'fa-snowflake-o'),
(25, '41 New Icons in 4.7', 'fa-superpowers'),
(26, '41 New Icons in 4.7', 'fa-telegram'),
(27, '41 New Icons in 4.7', 'fa-thermometer-empty'),
(28, '41 New Icons in 4.7', 'fa-thermometer-full'),
(29, '41 New Icons in 4.7', 'fa-thermometer-half'),
(30, '41 New Icons in 4.7', 'fa-thermometer-quarter'),
(31, '41 New Icons in 4.7', 'fa-thermometer-three-quarters'),
(32, '41 New Icons in 4.7', 'fa-user-circle'),
(33, '41 New Icons in 4.7', 'fa-user-circle-o'),
(34, '41 New Icons in 4.7', 'fa-user-o'),
(35, '41 New Icons in 4.7', 'fa-window-close'),
(36, '41 New Icons in 4.7', 'fa-window-close-o'),
(37, '41 New Icons in 4.7', 'fa-window-maximize'),
(38, '41 New Icons in 4.7', 'fa-window-minimize'),
(39, '41 New Icons in 4.7', 'fa-window-restore'),
(40, '41 New Icons in 4.7', 'fa-wpexplorer'),
(41, 'Accessibility Icons', 'fa-assistive-listening-systems'),
(42, 'Accessibility Icons', 'fa-audio-description'),
(43, 'Accessibility Icons', 'fa-blind'),
(44, 'Accessibility Icons', 'fa-braille'),
(45, 'Accessibility Icons', 'fa-cc'),
(46, 'Accessibility Icons', 'fa-deaf'),
(47, 'Accessibility Icons', 'fa-low-vision'),
(48, 'Accessibility Icons', 'fa-question-circle-o'),
(49, 'Accessibility Icons', 'fa-sign-language'),
(50, 'Accessibility Icons', 'fa-tty'),
(51, 'Accessibility Icons', 'fa-universal-access'),
(52, 'Accessibility Icons', 'fa-volume-control-phone'),
(53, 'Accessibility Icons', 'fa-wheelchair'),
(54, 'Accessibility Icons', 'fa-wheelchair-alt'),
(55, 'Brand Icons', 'fa-adn'),
(56, 'Brand Icons', 'fa-amazon'),
(57, 'Brand Icons', 'fa-android'),
(58, 'Brand Icons', 'fa-angellist'),
(59, 'Brand Icons', 'fa-apple'),
(60, 'Brand Icons', 'fa-bandcamp'),
(61, 'Brand Icons', 'fa-behance'),
(62, 'Brand Icons', 'fa-behance-square'),
(63, 'Brand Icons', 'fa-bitbucket'),
(64, 'Brand Icons', 'fa-bitbucket-square'),
(65, 'Brand Icons', 'fa-black-tie'),
(66, 'Brand Icons', 'fa-bluetooth'),
(67, 'Brand Icons', 'fa-bluetooth-b'),
(68, 'Brand Icons', 'fa-btc'),
(69, 'Brand Icons', 'fa-buysellads'),
(70, 'Brand Icons', 'fa-cc-amex'),
(71, 'Brand Icons', 'fa-cc-diners-club'),
(72, 'Brand Icons', 'fa-cc-discover'),
(73, 'Brand Icons', 'fa-cc-jcb'),
(74, 'Brand Icons', 'fa-cc-mastercard'),
(75, 'Brand Icons', 'fa-cc-paypal'),
(76, 'Brand Icons', 'fa-cc-stripe'),
(77, 'Brand Icons', 'fa-cc-visa'),
(78, 'Brand Icons', 'fa-chrome'),
(79, 'Brand Icons', 'fa-codepen'),
(80, 'Brand Icons', 'fa-codiepie'),
(81, 'Brand Icons', 'fa-connectdevelop'),
(82, 'Brand Icons', 'fa-contao'),
(83, 'Brand Icons', 'fa-css3'),
(84, 'Brand Icons', 'fa-dashcube'),
(85, 'Brand Icons', 'fa-delicious'),
(86, 'Brand Icons', 'fa-deviantart'),
(87, 'Brand Icons', 'fa-digg'),
(88, 'Brand Icons', 'fa-dribbble'),
(89, 'Brand Icons', 'fa-dropbox'),
(90, 'Brand Icons', 'fa-drupal'),
(91, 'Brand Icons', 'fa-edge'),
(92, 'Brand Icons', 'fa-eercast'),
(93, 'Brand Icons', 'fa-empire'),
(94, 'Brand Icons', 'fa-envira'),
(95, 'Brand Icons', 'fa-etsy'),
(96, 'Brand Icons', 'fa-expeditedssl'),
(97, 'Brand Icons', 'fa-facebook'),
(98, 'Brand Icons', 'fa-facebook-official'),
(99, 'Brand Icons', 'fa-facebook-square'),
(100, 'Brand Icons', 'fa-firefox'),
(101, 'Brand Icons', 'fa-first-order'),
(102, 'Brand Icons', 'fa-flickr'),
(103, 'Brand Icons', 'fa-font-awesome'),
(104, 'Brand Icons', 'fa-fonticons'),
(105, 'Brand Icons', 'fa-fort-awesome'),
(106, 'Brand Icons', 'fa-forumbee'),
(107, 'Brand Icons', 'fa-foursquare'),
(108, 'Brand Icons', 'fa-free-code-camp'),
(109, 'Brand Icons', 'fa-get-pocket'),
(110, 'Brand Icons', 'fa-gg'),
(111, 'Brand Icons', 'fa-gg-circle'),
(112, 'Brand Icons', 'fa-git'),
(113, 'Brand Icons', 'fa-git-square'),
(114, 'Brand Icons', 'fa-github'),
(115, 'Brand Icons', 'fa-github-alt'),
(116, 'Brand Icons', 'fa-github-square'),
(117, 'Brand Icons', 'fa-gitlab'),
(118, 'Brand Icons', 'fa-glide'),
(119, 'Brand Icons', 'fa-glide-g'),
(120, 'Brand Icons', 'fa-google'),
(121, 'Brand Icons', 'fa-google-plus'),
(122, 'Brand Icons', 'fa-google-plus-official'),
(123, 'Brand Icons', 'fa-google-plus-square'),
(124, 'Brand Icons', 'fa-google-wallet'),
(125, 'Brand Icons', 'fa-gratipay'),
(126, 'Brand Icons', 'fa-grav'),
(127, 'Brand Icons', 'fa-hacker-news'),
(128, 'Brand Icons', 'fa-houzz'),
(129, 'Brand Icons', 'fa-html5'),
(130, 'Brand Icons', 'fa-imdb'),
(131, 'Brand Icons', 'fa-instagram'),
(132, 'Brand Icons', 'fa-internet-explorer'),
(133, 'Brand Icons', 'fa-ioxhost'),
(134, 'Brand Icons', 'fa-joomla'),
(135, 'Brand Icons', 'fa-jsfiddle'),
(136, 'Brand Icons', 'fa-lastfm'),
(137, 'Brand Icons', 'fa-lastfm-square'),
(138, 'Brand Icons', 'fa-leanpub'),
(139, 'Brand Icons', 'fa-linkedin'),
(140, 'Brand Icons', 'fa-linkedin-square'),
(141, 'Brand Icons', 'fa-linode'),
(142, 'Brand Icons', 'fa-linux'),
(143, 'Brand Icons', 'fa-maxcdn'),
(144, 'Brand Icons', 'fa-meanpath'),
(145, 'Brand Icons', 'fa-medium'),
(146, 'Brand Icons', 'fa-meetup'),
(147, 'Brand Icons', 'fa-mixcloud'),
(148, 'Brand Icons', 'fa-modx'),
(149, 'Brand Icons', 'fa-odnoklassniki'),
(150, 'Brand Icons', 'fa-odnoklassniki-square'),
(151, 'Brand Icons', 'fa-opencart'),
(152, 'Brand Icons', 'fa-openid'),
(153, 'Brand Icons', 'fa-opera'),
(154, 'Brand Icons', 'fa-optin-monster'),
(155, 'Brand Icons', 'fa-pagelines'),
(156, 'Brand Icons', 'fa-paypal'),
(157, 'Brand Icons', 'fa-pied-piper'),
(158, 'Brand Icons', 'fa-pied-piper-alt'),
(159, 'Brand Icons', 'fa-pied-piper-pp'),
(160, 'Brand Icons', 'fa-pinterest'),
(161, 'Brand Icons', 'fa-pinterest-p'),
(162, 'Brand Icons', 'fa-pinterest-square'),
(163, 'Brand Icons', 'fa-product-hunt'),
(164, 'Brand Icons', 'fa-qq'),
(165, 'Brand Icons', 'fa-quora'),
(166, 'Brand Icons', 'fa-ravelry'),
(167, 'Brand Icons', 'fa-rebel'),
(168, 'Brand Icons', 'fa-reddit'),
(169, 'Brand Icons', 'fa-reddit-alien'),
(170, 'Brand Icons', 'fa-reddit-square'),
(171, 'Brand Icons', 'fa-renren'),
(172, 'Brand Icons', 'fa-safari'),
(173, 'Brand Icons', 'fa-scribd'),
(174, 'Brand Icons', 'fa-sellsy'),
(175, 'Brand Icons', 'fa-share-alt'),
(176, 'Brand Icons', 'fa-share-alt-square'),
(177, 'Brand Icons', 'fa-shirtsinbulk'),
(178, 'Brand Icons', 'fa-simplybuilt'),
(179, 'Brand Icons', 'fa-skyatlas'),
(180, 'Brand Icons', 'fa-skype'),
(181, 'Brand Icons', 'fa-slack'),
(182, 'Brand Icons', 'fa-slideshare'),
(183, 'Brand Icons', 'fa-snapchat'),
(184, 'Brand Icons', 'fa-snapchat-ghost'),
(185, 'Brand Icons', 'fa-snapchat-square'),
(186, 'Brand Icons', 'fa-soundcloud'),
(187, 'Brand Icons', 'fa-spotify'),
(188, 'Brand Icons', 'fa-stack-exchange'),
(189, 'Brand Icons', 'fa-stack-overflow'),
(190, 'Brand Icons', 'fa-steam'),
(191, 'Brand Icons', 'fa-steam-square'),
(192, 'Brand Icons', 'fa-stumbleupon'),
(193, 'Brand Icons', 'fa-stumbleupon-circle'),
(194, 'Brand Icons', 'fa-superpowers'),
(195, 'Brand Icons', 'fa-telegram'),
(196, 'Brand Icons', 'fa-tencent-weibo'),
(197, 'Brand Icons', 'fa-themeisle'),
(198, 'Brand Icons', 'fa-trello'),
(199, 'Brand Icons', 'fa-tripadvisor'),
(200, 'Brand Icons', 'fa-tumblr'),
(201, 'Brand Icons', 'fa-tumblr-square'),
(202, 'Brand Icons', 'fa-twitch'),
(203, 'Brand Icons', 'fa-twitter'),
(204, 'Brand Icons', 'fa-twitter-square'),
(205, 'Brand Icons', 'fa-usb'),
(206, 'Brand Icons', 'fa-viacoin'),
(207, 'Brand Icons', 'fa-viadeo'),
(208, 'Brand Icons', 'fa-viadeo-square'),
(209, 'Brand Icons', 'fa-vimeo'),
(210, 'Brand Icons', 'fa-vimeo-square'),
(211, 'Brand Icons', 'fa-vine'),
(212, 'Brand Icons', 'fa-vk'),
(213, 'Brand Icons', 'fa-weibo'),
(214, 'Brand Icons', 'fa-weixin'),
(215, 'Brand Icons', 'fa-whatsapp'),
(216, 'Brand Icons', 'fa-wikipedia-w'),
(217, 'Brand Icons', 'fa-windows'),
(218, 'Brand Icons', 'fa-wordpress'),
(219, 'Brand Icons', 'fa-wpbeginner'),
(220, 'Brand Icons', 'fa-wpexplorer'),
(221, 'Brand Icons', 'fa-wpforms'),
(222, 'Brand Icons', 'fa-xing'),
(223, 'Brand Icons', 'fa-xing-square'),
(224, 'Brand Icons', 'fa-y-combinator'),
(225, 'Brand Icons', 'fa-yahoo'),
(226, 'Brand Icons', 'fa-yelp'),
(227, 'Brand Icons', 'fa-yoast'),
(228, 'Brand Icons', 'fa-youtube'),
(229, 'Brand Icons', 'fa-youtube-play'),
(230, 'Brand Icons', 'fa-youtube-square'),
(231, 'Chart Icons', 'fa-bar-chart'),
(232, 'Chart Icons', 'fa-line-chart'),
(233, 'Chart Icons', 'fa-pie-chart'),
(234, 'Currency Icons', 'fa-btc'),
(235, 'Currency Icons', 'fa-eur'),
(236, 'Currency Icons', 'fa-gbp'),
(237, 'Currency Icons', 'fa-gg'),
(238, 'Currency Icons', 'fa-gg-circle'),
(239, 'Currency Icons', 'fa-ils'),
(240, 'Currency Icons', 'fa-inr'),
(241, 'Currency Icons', 'fa-jpy'),
(242, 'Currency Icons', 'fa-krw'),
(243, 'Currency Icons', 'fa-money'),
(244, 'Currency Icons', 'fa-rub'),
(245, 'Currency Icons', 'fa-try'),
(246, 'Currency Icons', 'fa-usd'),
(247, 'Directional Icons', 'fa-angle-double-left'),
(248, 'Directional Icons', 'fa-angle-double-right'),
(249, 'Directional Icons', 'fa-angle-double-up'),
(250, 'Directional Icons', 'fa-angle-down'),
(251, 'Directional Icons', 'fa-angle-left'),
(252, 'Directional Icons', 'fa-angle-right'),
(253, 'Directional Icons', 'fa-angle-up'),
(254, 'Directional Icons', 'fa-arrow-circle-down'),
(255, 'Directional Icons', 'fa-arrow-circle-left'),
(256, 'Directional Icons', 'fa-arrow-circle-o-down'),
(257, 'Directional Icons', 'fa-arrow-circle-o-left'),
(258, 'Directional Icons', 'fa-arrow-circle-o-right'),
(259, 'Directional Icons', 'fa-arrow-circle-o-up'),
(260, 'Directional Icons', 'fa-arrow-circle-right'),
(261, 'Directional Icons', 'fa-arrow-circle-up'),
(262, 'Directional Icons', 'fa-arrow-down'),
(263, 'Directional Icons', 'fa-arrow-left'),
(264, 'Directional Icons', 'fa-arrow-right'),
(265, 'Directional Icons', 'fa-arrow-up'),
(266, 'Directional Icons', 'fa-arrows'),
(267, 'Directional Icons', 'fa-arrows-alt'),
(268, 'Directional Icons', 'fa-arrows-h'),
(269, 'Directional Icons', 'fa-arrows-v'),
(270, 'Directional Icons', 'fa-caret-down'),
(271, 'Directional Icons', 'fa-caret-left'),
(272, 'Directional Icons', 'fa-caret-right'),
(273, 'Directional Icons', 'fa-caret-square-o-down'),
(274, 'Directional Icons', 'fa-caret-square-o-left'),
(275, 'Directional Icons', 'fa-caret-square-o-right'),
(276, 'Directional Icons', 'fa-caret-square-o-up'),
(277, 'Directional Icons', 'fa-caret-up'),
(278, 'Directional Icons', 'fa-chevron-circle-down'),
(279, 'Directional Icons', 'fa-chevron-circle-left'),
(280, 'Directional Icons', 'fa-chevron-circle-right'),
(281, 'Directional Icons', 'fa-chevron-circle-up'),
(282, 'Directional Icons', 'fa-chevron-down'),
(283, 'Directional Icons', 'fa-chevron-left'),
(284, 'Directional Icons', 'fa-chevron-right'),
(285, 'Directional Icons', 'fa-chevron-up'),
(286, 'Directional Icons', 'fa-exchange'),
(287, 'Directional Icons', 'fa-hand-o-down'),
(288, 'Directional Icons', 'fa-hand-o-left'),
(289, 'Directional Icons', 'fa-hand-o-right'),
(290, 'Directional Icons', 'fa-hand-o-up'),
(291, 'Directional Icons', 'fa-long-arrow-down'),
(292, 'Directional Icons', 'fa-long-arrow-left'),
(293, 'Directional Icons', 'fa-long-arrow-right'),
(294, 'Directional Icons', 'fa-long-arrow-up'),
(295, 'File Type Icons', 'fa-file-archive-o'),
(296, 'File Type Icons', 'fa-file-audio-o'),
(297, 'File Type Icons', 'fa-file-code-o'),
(298, 'File Type Icons', 'fa-file-excel-o'),
(299, 'File Type Icons', 'fa-file-image-o'),
(300, 'File Type Icons', 'fa-file-o'),
(301, 'File Type Icons', 'fa-file-pdf-o'),
(302, 'File Type Icons', 'fa-file-powerpoint-o'),
(303, 'File Type Icons', 'fa-file-text'),
(304, 'File Type Icons', 'fa-file-text-o'),
(305, 'File Type Icons', 'fa-file-video-o'),
(306, 'File Type Icons', 'fa-file-word-o'),
(307, 'Form Control Icons', 'fa-check-square-o'),
(308, 'Form Control Icons', 'fa-circle'),
(309, 'Form Control Icons', 'fa-circle-o'),
(310, 'Form Control Icons', 'fa-dot-circle-o'),
(311, 'Form Control Icons', 'fa-minus-square'),
(312, 'Form Control Icons', 'fa-minus-square-o'),
(313, 'Form Control Icons', 'fa-plus-square'),
(314, 'Form Control Icons', 'fa-plus-square-o'),
(315, 'Form Control Icons', 'fa-square'),
(316, 'Form Control Icons', 'fa-square-o'),
(317, 'Gender Icons', 'fa-mars'),
(318, 'Gender Icons', 'fa-mars-double'),
(319, 'Gender Icons', 'fa-mars-stroke'),
(320, 'Gender Icons', 'fa-mars-stroke-h'),
(321, 'Gender Icons', 'fa-mars-stroke-v'),
(322, 'Gender Icons', 'fa-mercury'),
(323, 'Gender Icons', 'fa-neuter'),
(324, 'Gender Icons', 'fa-transgender'),
(325, 'Gender Icons', 'fa-transgender-alt'),
(326, 'Gender Icons', 'fa-venus'),
(327, 'Gender Icons', 'fa-venus-double'),
(328, 'Gender Icons', 'fa-venus-mars'),
(329, 'Hand Icons', 'fa-hand-lizard-o'),
(330, 'Hand Icons', 'fa-hand-o-down'),
(331, 'Hand Icons', 'fa-hand-o-left'),
(332, 'Hand Icons', 'fa-hand-o-right'),
(333, 'Hand Icons', 'fa-hand-o-up'),
(334, 'Hand Icons', 'fa-hand-paper-o'),
(335, 'Hand Icons', 'fa-hand-peace-o'),
(336, 'Hand Icons', 'fa-hand-pointer-o'),
(337, 'Hand Icons', 'fa-hand-rock-o'),
(338, 'Hand Icons', 'fa-hand-scissors-o'),
(339, 'Hand Icons', 'fa-hand-spock-o'),
(340, 'Hand Icons', 'fa-thumbs-down'),
(341, 'Hand Icons', 'fa-thumbs-o-down'),
(342, 'Hand Icons', 'fa-thumbs-o-up'),
(343, 'Hand Icons', 'fa-thumbs-up'),
(344, 'Medical Icons', 'fa-h-square'),
(345, 'Medical Icons', 'fa-heart'),
(346, 'Medical Icons', 'fa-heart-o'),
(347, 'Medical Icons', 'fa-heartbeat'),
(348, 'Medical Icons', 'fa-hospital-o'),
(349, 'Medical Icons', 'fa-medkit'),
(350, 'Medical Icons', 'fa-plus-square'),
(351, 'Medical Icons', 'fa-stethoscope'),
(352, 'Medical Icons', 'fa-user-md'),
(353, 'Medical Icons', 'fa-wheelchair'),
(354, 'Medical Icons', 'fa-wheelchair-alt'),
(355, 'Payment Icons', 'fa-cc-diners-club'),
(356, 'Payment Icons', 'fa-cc-discover'),
(357, 'Payment Icons', 'fa-cc-jcb'),
(358, 'Payment Icons', 'fa-cc-mastercard'),
(359, 'Payment Icons', 'fa-cc-paypal'),
(360, 'Payment Icons', 'fa-cc-stripe'),
(361, 'Payment Icons', 'fa-cc-visa'),
(362, 'Payment Icons', 'fa-credit-card'),
(363, 'Payment Icons', 'fa-credit-card-alt'),
(364, 'Payment Icons', 'fa-google-wallet'),
(365, 'Payment Icons', 'fa-paypal'),
(366, 'Spinner Icons', 'fa-cog'),
(367, 'Spinner Icons', 'fa-refresh'),
(368, 'Spinner Icons', 'fa-spinner'),
(369, 'Text Editor Icons', 'fa-align-justify'),
(370, 'Text Editor Icons', 'fa-align-left'),
(371, 'Text Editor Icons', 'fa-align-right'),
(372, 'Text Editor Icons', 'fa-bold'),
(373, 'Text Editor Icons', 'fa-chain-broken'),
(374, 'Text Editor Icons', 'fa-clipboard'),
(375, 'Text Editor Icons', 'fa-columns'),
(376, 'Text Editor Icons', 'fa-eraser'),
(377, 'Text Editor Icons', 'fa-file'),
(378, 'Text Editor Icons', 'fa-file-o'),
(379, 'Text Editor Icons', 'fa-file-text'),
(380, 'Text Editor Icons', 'fa-file-text-o'),
(381, 'Text Editor Icons', 'fa-files-o'),
(382, 'Text Editor Icons', 'fa-floppy-o'),
(383, 'Text Editor Icons', 'fa-font'),
(384, 'Text Editor Icons', 'fa-header'),
(385, 'Text Editor Icons', 'fa-indent'),
(386, 'Text Editor Icons', 'fa-italic'),
(387, 'Text Editor Icons', 'fa-link'),
(388, 'Text Editor Icons', 'fa-list'),
(389, 'Text Editor Icons', 'fa-list-alt'),
(390, 'Text Editor Icons', 'fa-list-ol'),
(391, 'Text Editor Icons', 'fa-list-ul'),
(392, 'Text Editor Icons', 'fa-outdent'),
(393, 'Text Editor Icons', 'fa-paperclip'),
(394, 'Text Editor Icons', 'fa-paragraph'),
(395, 'Text Editor Icons', 'fa-repeat'),
(396, 'Text Editor Icons', 'fa-scissors'),
(397, 'Text Editor Icons', 'fa-strikethrough'),
(398, 'Text Editor Icons', 'fa-subscript'),
(399, 'Text Editor Icons', 'fa-superscript'),
(400, 'Text Editor Icons', 'fa-table'),
(401, 'Text Editor Icons', 'fa-text-height'),
(402, 'Text Editor Icons', 'fa-text-width'),
(403, 'Text Editor Icons', 'fa-th'),
(404, 'Text Editor Icons', 'fa-th-large'),
(405, 'Text Editor Icons', 'fa-th-list'),
(406, 'Text Editor Icons', 'fa-underline'),
(407, 'Text Editor Icons', 'fa-undo'),
(408, 'Transportation Icons', 'fa-bicycle'),
(409, 'Transportation Icons', 'fa-bus'),
(410, 'Transportation Icons', 'fa-car'),
(411, 'Transportation Icons', 'fa-fighter-jet'),
(412, 'Transportation Icons', 'fa-motorcycle'),
(413, 'Transportation Icons', 'fa-plane'),
(414, 'Transportation Icons', 'fa-rocket'),
(415, 'Transportation Icons', 'fa-ship'),
(416, 'Transportation Icons', 'fa-space-shuttle'),
(417, 'Transportation Icons', 'fa-subway'),
(418, 'Transportation Icons', 'fa-taxi'),
(419, 'Transportation Icons', 'fa-train'),
(420, 'Transportation Icons', 'fa-truck'),
(421, 'Transportation Icons', 'fa-wheelchair'),
(422, 'Transportation Icons', 'fa-wheelchair-alt'),
(423, 'Video Player Icons', 'fa-backward'),
(424, 'Video Player Icons', 'fa-compress'),
(425, 'Video Player Icons', 'fa-eject'),
(426, 'Video Player Icons', 'fa-expand'),
(427, 'Video Player Icons', 'fa-fast-backward'),
(428, 'Video Player Icons', 'fa-fast-forward'),
(429, 'Video Player Icons', 'fa-forward'),
(430, 'Video Player Icons', 'fa-pause'),
(431, 'Video Player Icons', 'fa-pause-circle'),
(432, 'Video Player Icons', 'fa-pause-circle-o'),
(433, 'Video Player Icons', 'fa-play'),
(434, 'Video Player Icons', 'fa-play-circle'),
(435, 'Video Player Icons', 'fa-play-circle-o'),
(436, 'Video Player Icons', 'fa-random'),
(437, 'Video Player Icons', 'fa-step-backward'),
(438, 'Video Player Icons', 'fa-step-forward'),
(439, 'Video Player Icons', 'fa-stop'),
(440, 'Video Player Icons', 'fa-stop-circle'),
(441, 'Video Player Icons', 'fa-stop-circle-o'),
(442, 'Video Player Icons', 'fa-youtube-play'),
(443, 'Web Application Icons', 'fa-address-book-o'),
(444, 'Web Application Icons', 'fa-address-card'),
(445, 'Web Application Icons', 'fa-address-card-o'),
(446, 'Web Application Icons', 'fa-adjust'),
(447, 'Web Application Icons', 'fa-american-sign-language-interpreting'),
(448, 'Web Application Icons', 'fa-anchor'),
(449, 'Web Application Icons', 'fa-archive'),
(450, 'Web Application Icons', 'fa-area-chart'),
(451, 'Web Application Icons', 'fa-arrows'),
(452, 'Web Application Icons', 'fa-arrows-h'),
(453, 'Web Application Icons', 'fa-arrows-v'),
(454, 'Web Application Icons', 'fa-assistive-listening-systems'),
(455, 'Web Application Icons', 'fa-asterisk'),
(456, 'Web Application Icons', 'fa-at'),
(457, 'Web Application Icons', 'fa-audio-description'),
(458, 'Web Application Icons', 'fa-balance-scale'),
(459, 'Web Application Icons', 'fa-ban'),
(460, 'Web Application Icons', 'fa-bar-chart'),
(461, 'Web Application Icons', 'fa-barcode'),
(462, 'Web Application Icons', 'fa-bars'),
(463, 'Web Application Icons', 'fa-bath'),
(464, 'Web Application Icons', 'fa-battery-empty'),
(465, 'Web Application Icons', 'fa-battery-full'),
(466, 'Web Application Icons', 'fa-battery-half'),
(467, 'Web Application Icons', 'fa-battery-quarter'),
(468, 'Web Application Icons', 'fa-battery-three-quarters'),
(469, 'Web Application Icons', 'fa-bed'),
(470, 'Web Application Icons', 'fa-beer'),
(471, 'Web Application Icons', 'fa-bell'),
(472, 'Web Application Icons', 'fa-bell-o'),
(473, 'Web Application Icons', 'fa-bell-slash'),
(474, 'Web Application Icons', 'fa-bell-slash-o'),
(475, 'Web Application Icons', 'fa-bicycle'),
(476, 'Web Application Icons', 'fa-binoculars'),
(477, 'Web Application Icons', 'fa-birthday-cake'),
(478, 'Web Application Icons', 'fa-blind'),
(479, 'Web Application Icons', 'fa-bluetooth'),
(480, 'Web Application Icons', 'fa-bluetooth-b'),
(481, 'Web Application Icons', 'fa-bolt'),
(482, 'Web Application Icons', 'fa-bomb'),
(483, 'Web Application Icons', 'fa-book'),
(484, 'Web Application Icons', 'fa-bookmark'),
(485, 'Web Application Icons', 'fa-bookmark-o'),
(486, 'Web Application Icons', 'fa-braille'),
(487, 'Web Application Icons', 'fa-briefcase'),
(488, 'Web Application Icons', 'fa-bug'),
(489, 'Web Application Icons', 'fa-building'),
(490, 'Web Application Icons', 'fa-building-o'),
(491, 'Web Application Icons', 'fa-bullhorn'),
(492, 'Web Application Icons', 'fa-bullseye'),
(493, 'Web Application Icons', 'fa-bus'),
(494, 'Web Application Icons', 'fa-calculator'),
(495, 'Web Application Icons', 'fa-calendar'),
(496, 'Web Application Icons', 'fa-calendar-check-o'),
(497, 'Web Application Icons', 'fa-calendar-minus-o'),
(498, 'Web Application Icons', 'fa-calendar-o'),
(499, 'Web Application Icons', 'fa-calendar-plus-o'),
(500, 'Web Application Icons', 'fa-calendar-times-o'),
(501, 'Web Application Icons', 'fa-camera'),
(502, 'Web Application Icons', 'fa-camera-retro'),
(503, 'Web Application Icons', 'fa-car'),
(504, 'Web Application Icons', 'fa-caret-square-o-down'),
(505, 'Web Application Icons', 'fa-caret-square-o-left'),
(506, 'Web Application Icons', 'fa-caret-square-o-right'),
(507, 'Web Application Icons', 'fa-caret-square-o-up'),
(508, 'Web Application Icons', 'fa-cart-arrow-down'),
(509, 'Web Application Icons', 'fa-cart-plus'),
(510, 'Web Application Icons', 'fa-cc'),
(511, 'Web Application Icons', 'fa-certificate'),
(512, 'Web Application Icons', 'fa-check'),
(513, 'Web Application Icons', 'fa-check-circle'),
(514, 'Web Application Icons', 'fa-check-circle-o'),
(515, 'Web Application Icons', 'fa-check-square'),
(516, 'Web Application Icons', 'fa-check-square-o'),
(517, 'Web Application Icons', 'fa-child'),
(518, 'Web Application Icons', 'fa-circle'),
(519, 'Web Application Icons', 'fa-circle-o'),
(520, 'Web Application Icons', 'fa-circle-o-notch'),
(521, 'Web Application Icons', 'fa-circle-thin'),
(522, 'Web Application Icons', 'fa-clock-o'),
(523, 'Web Application Icons', 'fa-clone'),
(524, 'Web Application Icons', 'fa-cloud'),
(525, 'Web Application Icons', 'fa-cloud-download'),
(526, 'Web Application Icons', 'fa-cloud-upload'),
(527, 'Web Application Icons', 'fa-code'),
(528, 'Web Application Icons', 'fa-code-fork'),
(529, 'Web Application Icons', 'fa-coffee'),
(530, 'Web Application Icons', 'fa-cog'),
(531, 'Web Application Icons', 'fa-cogs'),
(532, 'Web Application Icons', 'fa-comment'),
(533, 'Web Application Icons', 'fa-comment-o'),
(534, 'Web Application Icons', 'fa-commenting'),
(535, 'Web Application Icons', 'fa-commenting-o'),
(536, 'Web Application Icons', 'fa-comments'),
(537, 'Web Application Icons', 'fa-comments-o'),
(538, 'Web Application Icons', 'fa-compass'),
(539, 'Web Application Icons', 'fa-copyright'),
(540, 'Web Application Icons', 'fa-creative-commons'),
(541, 'Web Application Icons', 'fa-credit-card'),
(542, 'Web Application Icons', 'fa-credit-card-alt'),
(543, 'Web Application Icons', 'fa-crop'),
(544, 'Web Application Icons', 'fa-crosshairs'),
(545, 'Web Application Icons', 'fa-cube'),
(546, 'Web Application Icons', 'fa-cubes'),
(547, 'Web Application Icons', 'fa-cutlery'),
(548, 'Web Application Icons', 'fa-database'),
(549, 'Web Application Icons', 'fa-deaf'),
(550, 'Web Application Icons', 'fa-desktop'),
(551, 'Web Application Icons', 'fa-diamond'),
(552, 'Web Application Icons', 'fa-dot-circle-o'),
(553, 'Web Application Icons', 'fa-download'),
(554, 'Web Application Icons', 'fa-ellipsis-h'),
(555, 'Web Application Icons', 'fa-ellipsis-v'),
(556, 'Web Application Icons', 'fa-envelope'),
(557, 'Web Application Icons', 'fa-envelope-o'),
(558, 'Web Application Icons', 'fa-envelope-open'),
(559, 'Web Application Icons', 'fa-envelope-open-o'),
(560, 'Web Application Icons', 'fa-envelope-square'),
(561, 'Web Application Icons', 'fa-eraser'),
(562, 'Web Application Icons', 'fa-exchange'),
(563, 'Web Application Icons', 'fa-exclamation'),
(564, 'Web Application Icons', 'fa-exclamation-circle'),
(565, 'Web Application Icons', 'fa-exclamation-triangle'),
(566, 'Web Application Icons', 'fa-external-link'),
(567, 'Web Application Icons', 'fa-external-link-square'),
(568, 'Web Application Icons', 'fa-eye'),
(569, 'Web Application Icons', 'fa-eye-slash'),
(570, 'Web Application Icons', 'fa-eyedropper'),
(571, 'Web Application Icons', 'fa-fax'),
(572, 'Web Application Icons', 'fa-female'),
(573, 'Web Application Icons', 'fa-fighter-jet'),
(574, 'Web Application Icons', 'fa-file-archive-o'),
(575, 'Web Application Icons', 'fa-file-audio-o'),
(576, 'Web Application Icons', 'fa-file-code-o'),
(577, 'Web Application Icons', 'fa-file-excel-o'),
(578, 'Web Application Icons', 'fa-file-image-o'),
(579, 'Web Application Icons', 'fa-file-pdf-o'),
(580, 'Web Application Icons', 'fa-file-powerpoint-o'),
(581, 'Web Application Icons', 'fa-file-video-o'),
(582, 'Web Application Icons', 'fa-file-word-o'),
(583, 'Web Application Icons', 'fa-film'),
(584, 'Web Application Icons', 'fa-filter'),
(585, 'Web Application Icons', 'fa-fire'),
(586, 'Web Application Icons', 'fa-fire-extinguisher'),
(587, 'Web Application Icons', 'fa-flag'),
(588, 'Web Application Icons', 'fa-flag-checkered'),
(589, 'Web Application Icons', 'fa-flag-o'),
(590, 'Web Application Icons', 'fa-flask'),
(591, 'Web Application Icons', 'fa-folder'),
(592, 'Web Application Icons', 'fa-folder-o'),
(593, 'Web Application Icons', 'fa-folder-open'),
(594, 'Web Application Icons', 'fa-folder-open-o'),
(595, 'Web Application Icons', 'fa-frown-o'),
(596, 'Web Application Icons', 'fa-futbol-o'),
(597, 'Web Application Icons', 'fa-gamepad'),
(598, 'Web Application Icons', 'fa-gavel'),
(599, 'Web Application Icons', 'fa-gift'),
(600, 'Web Application Icons', 'fa-glass'),
(601, 'Web Application Icons', 'fa-globe'),
(602, 'Web Application Icons', 'fa-graduation-cap'),
(603, 'Web Application Icons', 'fa-hand-lizard-o'),
(604, 'Web Application Icons', 'fa-hand-paper-o'),
(605, 'Web Application Icons', 'fa-hand-peace-o'),
(606, 'Web Application Icons', 'fa-hand-pointer-o'),
(607, 'Web Application Icons', 'fa-hand-rock-o'),
(608, 'Web Application Icons', 'fa-hand-scissors-o'),
(609, 'Web Application Icons', 'fa-hand-spock-o'),
(610, 'Web Application Icons', 'fa-handshake-o'),
(611, 'Web Application Icons', 'fa-hashtag'),
(612, 'Web Application Icons', 'fa-hdd-o'),
(613, 'Web Application Icons', 'fa-headphones'),
(614, 'Web Application Icons', 'fa-heart'),
(615, 'Web Application Icons', 'fa-heart-o'),
(616, 'Web Application Icons', 'fa-heartbeat'),
(617, 'Web Application Icons', 'fa-history'),
(618, 'Web Application Icons', 'fa-home'),
(619, 'Web Application Icons', 'fa-hourglass'),
(620, 'Web Application Icons', 'fa-hourglass-end'),
(621, 'Web Application Icons', 'fa-hourglass-half'),
(622, 'Web Application Icons', 'fa-hourglass-o'),
(623, 'Web Application Icons', 'fa-hourglass-start'),
(624, 'Web Application Icons', 'fa-i-cursor'),
(625, 'Web Application Icons', 'fa-id-badge'),
(626, 'Web Application Icons', 'fa-id-card'),
(627, 'Web Application Icons', 'fa-id-card-o'),
(628, 'Web Application Icons', 'fa-inbox'),
(629, 'Web Application Icons', 'fa-industry'),
(630, 'Web Application Icons', 'fa-info'),
(631, 'Web Application Icons', 'fa-info-circle'),
(632, 'Web Application Icons', 'fa-key'),
(633, 'Web Application Icons', 'fa-keyboard-o'),
(634, 'Web Application Icons', 'fa-language'),
(635, 'Web Application Icons', 'fa-laptop'),
(636, 'Web Application Icons', 'fa-leaf'),
(637, 'Web Application Icons', 'fa-lemon-o'),
(638, 'Web Application Icons', 'fa-level-down'),
(639, 'Web Application Icons', 'fa-level-up'),
(640, 'Web Application Icons', 'fa-life-ring'),
(641, 'Web Application Icons', 'fa-lightbulb-o'),
(642, 'Web Application Icons', 'fa-line-chart'),
(643, 'Web Application Icons', 'fa-location-arrow'),
(644, 'Web Application Icons', 'fa-lock'),
(645, 'Web Application Icons', 'fa-low-vision'),
(646, 'Web Application Icons', 'fa-magic'),
(647, 'Web Application Icons', 'fa-magnet'),
(648, 'Web Application Icons', 'fa-male'),
(649, 'Web Application Icons', 'fa-map'),
(650, 'Web Application Icons', 'fa-map-marker'),
(651, 'Web Application Icons', 'fa-map-o'),
(652, 'Web Application Icons', 'fa-map-pin'),
(653, 'Web Application Icons', 'fa-map-signs'),
(654, 'Web Application Icons', 'fa-meh-o'),
(655, 'Web Application Icons', 'fa-microchip'),
(656, 'Web Application Icons', 'fa-microphone'),
(657, 'Web Application Icons', 'fa-microphone-slash'),
(658, 'Web Application Icons', 'fa-minus'),
(659, 'Web Application Icons', 'fa-minus-circle'),
(660, 'Web Application Icons', 'fa-minus-square'),
(661, 'Web Application Icons', 'fa-minus-square-o'),
(662, 'Web Application Icons', 'fa-mobile'),
(663, 'Web Application Icons', 'fa-money'),
(664, 'Web Application Icons', 'fa-moon-o'),
(665, 'Web Application Icons', 'fa-motorcycle'),
(666, 'Web Application Icons', 'fa-mouse-pointer'),
(667, 'Web Application Icons', 'fa-music'),
(668, 'Web Application Icons', 'fa-newspaper-o'),
(669, 'Web Application Icons', 'fa-object-group'),
(670, 'Web Application Icons', 'fa-object-ungroup'),
(671, 'Web Application Icons', 'fa-paint-brush'),
(672, 'Web Application Icons', 'fa-paper-plane'),
(673, 'Web Application Icons', 'fa-paper-plane-o'),
(674, 'Web Application Icons', 'fa-paw'),
(675, 'Web Application Icons', 'fa-pencil'),
(676, 'Web Application Icons', 'fa-pencil-square'),
(677, 'Web Application Icons', 'fa-pencil-square-o'),
(678, 'Web Application Icons', 'fa-percent'),
(679, 'Web Application Icons', 'fa-phone'),
(680, 'Web Application Icons', 'fa-phone-square'),
(681, 'Web Application Icons', 'fa-picture-o'),
(682, 'Web Application Icons', 'fa-pie-chart'),
(683, 'Web Application Icons', 'fa-plane'),
(684, 'Web Application Icons', 'fa-plug'),
(685, 'Web Application Icons', 'fa-plus'),
(686, 'Web Application Icons', 'fa-plus-circle'),
(687, 'Web Application Icons', 'fa-plus-square'),
(688, 'Web Application Icons', 'fa-plus-square-o'),
(689, 'Web Application Icons', 'fa-podcast'),
(690, 'Web Application Icons', 'fa-power-off'),
(691, 'Web Application Icons', 'fa-print'),
(692, 'Web Application Icons', 'fa-puzzle-piece'),
(693, 'Web Application Icons', 'fa-qrcode'),
(694, 'Web Application Icons', 'fa-question'),
(695, 'Web Application Icons', 'fa-question-circle'),
(696, 'Web Application Icons', 'fa-question-circle-o'),
(697, 'Web Application Icons', 'fa-quote-left'),
(698, 'Web Application Icons', 'fa-quote-right'),
(699, 'Web Application Icons', 'fa-random'),
(700, 'Web Application Icons', 'fa-recycle'),
(701, 'Web Application Icons', 'fa-refresh'),
(702, 'Web Application Icons', 'fa-registered'),
(703, 'Web Application Icons', 'fa-reply'),
(704, 'Web Application Icons', 'fa-reply-all'),
(705, 'Web Application Icons', 'fa-retweet'),
(706, 'Web Application Icons', 'fa-road'),
(707, 'Web Application Icons', 'fa-rocket'),
(708, 'Web Application Icons', 'fa-rss'),
(709, 'Web Application Icons', 'fa-rss-square'),
(710, 'Web Application Icons', 'fa-search'),
(711, 'Web Application Icons', 'fa-search-minus'),
(712, 'Web Application Icons', 'fa-search-plus'),
(713, 'Web Application Icons', 'fa-server'),
(714, 'Web Application Icons', 'fa-share'),
(715, 'Web Application Icons', 'fa-share-alt'),
(716, 'Web Application Icons', 'fa-share-alt-square'),
(717, 'Web Application Icons', 'fa-share-square'),
(718, 'Web Application Icons', 'fa-share-square-o'),
(719, 'Web Application Icons', 'fa-shield'),
(720, 'Web Application Icons', 'fa-ship'),
(721, 'Web Application Icons', 'fa-shopping-bag'),
(722, 'Web Application Icons', 'fa-shopping-basket'),
(723, 'Web Application Icons', 'fa-shopping-cart'),
(724, 'Web Application Icons', 'fa-shower'),
(725, 'Web Application Icons', 'fa-sign-in'),
(726, 'Web Application Icons', 'fa-sign-language'),
(727, 'Web Application Icons', 'fa-sign-out'),
(728, 'Web Application Icons', 'fa-signal'),
(729, 'Web Application Icons', 'fa-sitemap'),
(730, 'Web Application Icons', 'fa-sliders'),
(731, 'Web Application Icons', 'fa-smile-o'),
(732, 'Web Application Icons', 'fa-snowflake-o'),
(733, 'Web Application Icons', 'fa-sort'),
(734, 'Web Application Icons', 'fa-sort-alpha-asc'),
(735, 'Web Application Icons', 'fa-sort-alpha-desc'),
(736, 'Web Application Icons', 'fa-sort-amount-asc'),
(737, 'Web Application Icons', 'fa-sort-amount-desc'),
(738, 'Web Application Icons', 'fa-sort-asc'),
(739, 'Web Application Icons', 'fa-sort-desc'),
(740, 'Web Application Icons', 'fa-sort-numeric-asc'),
(741, 'Web Application Icons', 'fa-sort-numeric-desc'),
(742, 'Web Application Icons', 'fa-space-shuttle'),
(743, 'Web Application Icons', 'fa-spinner'),
(744, 'Web Application Icons', 'fa-spoon'),
(745, 'Web Application Icons', 'fa-square'),
(746, 'Web Application Icons', 'fa-square-o'),
(747, 'Web Application Icons', 'fa-star'),
(748, 'Web Application Icons', 'fa-star-half'),
(749, 'Web Application Icons', 'fa-star-half-o'),
(750, 'Web Application Icons', 'fa-star-o'),
(751, 'Web Application Icons', 'fa-sticky-note'),
(752, 'Web Application Icons', 'fa-sticky-note-o'),
(753, 'Web Application Icons', 'fa-street-view'),
(754, 'Web Application Icons', 'fa-suitcase'),
(755, 'Web Application Icons', 'fa-sun-o'),
(756, 'Web Application Icons', 'fa-tablet'),
(757, 'Web Application Icons', 'fa-tachometer'),
(758, 'Web Application Icons', 'fa-tag'),
(759, 'Web Application Icons', 'fa-tags'),
(760, 'Web Application Icons', 'fa-tasks'),
(761, 'Web Application Icons', 'fa-taxi'),
(762, 'Web Application Icons', 'fa-television'),
(763, 'Web Application Icons', 'fa-terminal'),
(764, 'Web Application Icons', 'fa-thermometer-empty'),
(765, 'Web Application Icons', 'fa-thermometer-full'),
(766, 'Web Application Icons', 'fa-thermometer-half'),
(767, 'Web Application Icons', 'fa-thermometer-quarter'),
(768, 'Web Application Icons', 'fa-thermometer-three-quarters'),
(769, 'Web Application Icons', 'fa-thumb-tack'),
(770, 'Web Application Icons', 'fa-thumbs-down'),
(771, 'Web Application Icons', 'fa-thumbs-o-down'),
(772, 'Web Application Icons', 'fa-thumbs-o-up'),
(773, 'Web Application Icons', 'fa-thumbs-up'),
(774, 'Web Application Icons', 'fa-ticket'),
(775, 'Web Application Icons', 'fa-times'),
(776, 'Web Application Icons', 'fa-times-circle'),
(777, 'Web Application Icons', 'fa-times-circle-o'),
(778, 'Web Application Icons', 'fa-tint'),
(779, 'Web Application Icons', 'fa-toggle-off'),
(780, 'Web Application Icons', 'fa-toggle-on'),
(781, 'Web Application Icons', 'fa-trademark'),
(782, 'Web Application Icons', 'fa-trash'),
(783, 'Web Application Icons', 'fa-trash-o'),
(784, 'Web Application Icons', 'fa-tree'),
(785, 'Web Application Icons', 'fa-trophy'),
(786, 'Web Application Icons', 'fa-truck'),
(787, 'Web Application Icons', 'fa-tty'),
(788, 'Web Application Icons', 'fa-umbrella'),
(789, 'Web Application Icons', 'fa-universal-access'),
(790, 'Web Application Icons', 'fa-university'),
(791, 'Web Application Icons', 'fa-unlock'),
(792, 'Web Application Icons', 'fa-unlock-alt'),
(793, 'Web Application Icons', 'fa-upload'),
(794, 'Web Application Icons', 'fa-user'),
(795, 'Web Application Icons', 'fa-user-circle'),
(796, 'Web Application Icons', 'fa-user-circle-o'),
(797, 'Web Application Icons', 'fa-user-o'),
(798, 'Web Application Icons', 'fa-user-plus'),
(799, 'Web Application Icons', 'fa-user-secret'),
(800, 'Web Application Icons', 'fa-user-times'),
(801, 'Web Application Icons', 'fa-users'),
(802, 'Web Application Icons', 'fa-video-camera'),
(803, 'Web Application Icons', 'fa-volume-control-phone'),
(804, 'Web Application Icons', 'fa-volume-down'),
(805, 'Web Application Icons', 'fa-volume-off'),
(806, 'Web Application Icons', 'fa-volume-up'),
(807, 'Web Application Icons', 'fa-wheelchair'),
(808, 'Web Application Icons', 'fa-wheelchair-alt'),
(809, 'Web Application Icons', 'fa-wifi'),
(810, 'Web Application Icons', 'fa-window-close'),
(811, 'Web Application Icons', 'fa-window-close-o'),
(812, 'Web Application Icons', 'fa-window-maximize'),
(813, 'Web Application Icons', 'fa-window-minimize'),
(814, 'Web Application Icons', 'fa-window-restore'),
(815, 'Web Application Icons', 'fa-wrench');

-- --------------------------------------------------------

--
-- Table structure for table `fath_group_menu`
--

CREATE TABLE `fath_group_menu` (
  `group_menu_id` tinyint(4) NOT NULL,
  `group_menu_nama` varchar(100) NOT NULL,
  `ket_group` varchar(200) NOT NULL COMMENT 'Keterangan group',
  `created_by` int(11) UNSIGNED DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `updated_by` int(11) UNSIGNED DEFAULT NULL,
  `updated_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fath_group_menu`
--

INSERT INTO `fath_group_menu` (`group_menu_id`, `group_menu_nama`, `ket_group`, `created_by`, `created_time`, `updated_by`, `updated_time`) VALUES
(1, 'Developer', '', 1, '2017-02-27 08:45:54', NULL, NULL),
(2, 'user', 'Grup user untuk login sebagai Admin Sistem ', 1, '2017-02-27 08:45:54', NULL, NULL),
(3, 'public', 'Grup publik untuk login sebagai user di Portal (jika ada)', 1, '2017-02-27 08:45:54', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `fath_group_menu_detil`
--

CREATE TABLE `fath_group_menu_detil` (
  `group_menu_detil_id` int(11) NOT NULL,
  `group_menu_id` tinyint(4) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `group_menu_detil_module_permissions` varchar(4) NOT NULL DEFAULT '',
  `created_by` int(11) UNSIGNED DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `updated_by` int(11) UNSIGNED DEFAULT NULL,
  `updated_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fath_group_menu_detil`
--

INSERT INTO `fath_group_menu_detil` (`group_menu_detil_id`, `group_menu_id`, `menu_id`, `group_menu_detil_module_permissions`, `created_by`, `created_time`, `updated_by`, `updated_time`) VALUES
(1, 1, 1, '', 1, '2017-02-27 08:45:54', NULL, NULL),
(2, 1, 4, 'crud', 1, '2017-02-27 08:45:54', NULL, NULL),
(3, 1, 5, 'crud', 1, '2017-02-27 08:45:54', NULL, NULL),
(4, 1, 3, 'crud', 1, '2017-02-27 08:45:54', NULL, NULL),
(5, 1, 2, 'crud', 1, '2017-02-27 08:45:54', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `fath_log_login`
--

CREATE TABLE `fath_log_login` (
  `log_login_id` bigint(20) NOT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `user_username` varchar(200) DEFAULT NULL,
  `user_agent` text,
  `created_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fath_log_login`
--

INSERT INTO `fath_log_login` (`log_login_id`, `user_id`, `user_username`, `user_agent`, `created_time`) VALUES
(1, 1, 'azzam', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', '2018-12-27 09:04:26'),
(2, 1, 'azzam', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', '2018-12-27 09:20:33'),
(3, 1, 'azzam', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', '2018-12-27 09:51:58'),
(4, 1, 'azzam', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', '2018-12-27 10:58:23'),
(5, 1, 'azzam', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '2018-12-27 20:47:50'),
(6, 1, 'azzam', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '2018-12-28 14:02:00');

-- --------------------------------------------------------

--
-- Table structure for table `fath_menu`
--

CREATE TABLE `fath_menu` (
  `menu_id` int(11) NOT NULL,
  `menu_parent_id` int(11) DEFAULT '0',
  `menu_nama` varchar(100) NOT NULL,
  `menu_sequence` tinyint(3) NOT NULL,
  `module_detil_id` int(11) DEFAULT NULL,
  `module_id` int(11) DEFAULT NULL,
  `controller_id` int(11) DEFAULT NULL,
  `menu_css_clip` varchar(50) DEFAULT NULL,
  `menu_label` varchar(15) DEFAULT NULL,
  `menu_css_label` varchar(50) DEFAULT NULL,
  `created_by` int(11) UNSIGNED DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `updated_by` int(11) UNSIGNED DEFAULT NULL,
  `updated_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fath_menu`
--

INSERT INTO `fath_menu` (`menu_id`, `menu_parent_id`, `menu_nama`, `menu_sequence`, `module_detil_id`, `module_id`, `controller_id`, `menu_css_clip`, `menu_label`, `menu_css_label`, `created_by`, `created_time`, `updated_by`, `updated_time`) VALUES
(1, 0, 'Pengaturan Admin', 5, NULL, NULL, NULL, 'fa-cog', NULL, NULL, 1, '2015-04-01 14:11:40', NULL, NULL),
(2, 1, 'User', 1, NULL, 1, 3, 'fa-user', NULL, NULL, 1, '2015-04-01 14:11:40', NULL, NULL),
(3, 1, 'Menu', 3, NULL, 1, 2, 'fa-tasks', NULL, NULL, 1, '2015-04-01 14:11:40', NULL, NULL),
(4, 1, 'Group', 4, NULL, 1, 4, 'fa-group', NULL, NULL, 1, '2015-04-01 14:11:40', NULL, NULL),
(5, 1, 'Module', 2, NULL, 1, 1, 'fa-maxcdn', NULL, NULL, 1, '2016-07-19 08:29:56', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `fath_module`
--

CREATE TABLE `fath_module` (
  `module_id` int(11) NOT NULL,
  `module_nama` varchar(100) NOT NULL,
  `created_by` int(11) UNSIGNED DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `updated_by` int(11) UNSIGNED DEFAULT NULL,
  `updated_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fath_module`
--

INSERT INTO `fath_module` (`module_id`, `module_nama`, `created_by`, `created_time`, `updated_by`, `updated_time`) VALUES
(1, 'fath', 1, '2016-07-19 08:12:52', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `fath_module_detil`
--

CREATE TABLE `fath_module_detil` (
  `module_detil_id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  `controller_id` int(11) NOT NULL,
  `module_detil_function` varchar(100) NOT NULL,
  `module_detil_title` varchar(100) DEFAULT NULL,
  `module_detil_page_css_clip` varchar(100) DEFAULT NULL,
  `module_detil_page_title` varchar(100) DEFAULT NULL,
  `module_detil_permissions` varchar(4) DEFAULT 'xrxx',
  `module_detil_is_ajax` tinyint(1) DEFAULT '0',
  `module_detil_keterangan` varchar(255) DEFAULT NULL,
  `created_by` int(11) UNSIGNED DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `updated_by` int(11) UNSIGNED DEFAULT NULL,
  `updated_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fath_module_detil`
--

INSERT INTO `fath_module_detil` (`module_detil_id`, `module_id`, `controller_id`, `module_detil_function`, `module_detil_title`, `module_detil_page_css_clip`, `module_detil_page_title`, `module_detil_permissions`, `module_detil_is_ajax`, `module_detil_keterangan`, `created_by`, `created_time`, `updated_by`, `updated_time`) VALUES
(1, 1, 1, 'update_module_proses', 'Ubah Module', 'fa-edit', 'Ubah Module', 'xrux', 0, NULL, 1, '2016-07-19 08:27:29', NULL, NULL),
(2, 1, 3, 'add_user', 'Tambah User', 'fa-plus-square', 'Tambah User', 'crxx', 1, NULL, 1, '2015-05-05 14:22:13', NULL, NULL),
(3, 1, 2, 'add_menu', 'Tambah Menu', 'fa-plus', 'Tambah menu', 'crxx', 1, NULL, 1, '2015-04-27 16:55:52', NULL, NULL),
(4, 1, 2, 'get_controller_by_moduleId', NULL, NULL, NULL, 'xrxx', NULL, NULL, 1, '2016-07-14 13:58:30', NULL, NULL),
(5, 1, 1, 'update_module', 'Ubah Module', 'fa-edit', 'Ubah Module', 'xrux', 0, NULL, 1, '2016-07-19 08:27:29', NULL, NULL),
(6, 1, 1, 'add_controller_proses', 'Tambah Controller', 'fa-plus-square', 'Tambah Controller', 'crxx', 0, NULL, 1, '2016-07-19 08:27:29', NULL, NULL),
(7, 1, 1, 'add_function', 'Tambah Function', 'fa-plus-square', 'Tambah Function', 'crxx', 0, NULL, 1, '2016-07-19 08:27:29', NULL, NULL),
(8, 1, 1, 'add_function_proses', 'Tambah Function', 'fa-plus-square', 'Tambah Function', 'crxx', 0, NULL, 1, '2016-07-19 08:27:29', NULL, NULL),
(9, 1, 1, 'add_module', 'Tambah Module', 'fa-plus-square', 'Tambah Module', 'crxx', 0, NULL, 1, '2016-07-19 08:27:29', NULL, NULL),
(10, 1, 3, 'view_user', 'Daftar User', 'fa-list', 'Daftar User', 'xrxx', 0, NULL, 1, '2015-05-05 14:21:24', NULL, NULL),
(11, 1, 2, 'delete_menu', 'Hapus Menu', NULL, NULL, 'xxxd', NULL, NULL, 1, '2015-04-29 14:05:16', NULL, NULL),
(12, 1, 1, 'view_controller', 'Daftar Controller', 'fa-list', 'Daftar Controller', 'xrxx', 0, NULL, 1, '2016-07-19 08:27:29', NULL, NULL),
(13, 1, 1, 'view_function', 'Daftar Function', 'fa-list', 'Daftar Function', 'xrxx', 0, NULL, 1, '2016-07-19 08:27:29', NULL, NULL),
(14, 1, 1, 'view_module', 'Daftar Module', 'fa-list', 'Daftar Module', 'xrxx', 0, NULL, 1, '2016-07-19 08:27:29', NULL, NULL),
(15, 1, 2, 'view_menu', 'Daftar Menu', 'fa-list', 'Daftar Menu', 'xrxx', 0, NULL, 1, '2015-04-22 11:38:20', NULL, NULL),
(16, 1, 2, 'get_function_by_controllerId', NULL, NULL, NULL, 'xrxx', NULL, NULL, 1, '2016-07-14 13:58:44', NULL, NULL),
(17, 1, 2, 'update_menu_proses', 'Ubah Menu', 'fa-edit', 'Ubah Menu', 'xrux', NULL, NULL, 1, '2016-07-14 13:58:10', NULL, NULL),
(18, 1, 2, 'add_menu_proses', 'Tambah Menu', 'fa-plus-square', 'Tambah Menu', 'crxx', NULL, NULL, 1, '2016-07-14 13:57:48', NULL, NULL),
(19, 1, 2, 'update_menu', 'Ubah Menu', 'fa-edit', 'Ubah Menu', 'xxux', 0, NULL, 1, '2015-04-29 14:19:30', NULL, NULL),
(20, 1, 1, 'add_module_proses', 'Tambah Module', 'fa-plus-square', 'Tambah Module', 'crxx', 0, NULL, 1, '2016-07-19 08:27:29', NULL, NULL),
(21, 1, 1, 'delete_controller', NULL, NULL, NULL, 'xrxd', 0, NULL, 1, '2016-07-19 08:27:29', NULL, NULL),
(22, 1, 1, 'delete_function', NULL, NULL, NULL, 'xrxd', 0, NULL, 1, '2016-07-19 08:27:29', NULL, NULL),
(23, 1, 4, 'update_group_proses', 'Ubah Group', 'fa-edit', 'Ubah Group', 'xrux', 0, NULL, 1, '2016-07-20 09:07:35', NULL, NULL),
(24, 1, 4, 'update_group', 'Ubah Group', 'fa-edit', 'Ubah Group', 'xrux', 0, NULL, 1, '2016-07-20 09:07:13', NULL, NULL),
(25, 1, 3, 'update_user_proses', 'Ubah User', 'fa-edit', 'Ubah User', 'xrux', 0, NULL, 1, '2015-05-05 14:23:57', NULL, NULL),
(26, 1, 3, 'delete_user', NULL, NULL, NULL, 'xxxd', 0, NULL, 1, '2015-05-05 14:24:34', NULL, NULL),
(27, 1, 3, 'validate_user', NULL, NULL, NULL, 'xrxx', 1, NULL, 1, '2015-12-17 14:59:34', NULL, NULL),
(28, 1, 4, 'add_group', 'Tambah Group', 'fa-plus-square', 'Tambah Group', 'crxx', 0, NULL, 1, '2016-07-20 09:05:53', NULL, NULL),
(29, 1, 4, 'delete_group', NULL, NULL, NULL, 'xxxd', 0, NULL, 1, '2016-07-20 09:06:47', NULL, NULL),
(30, 1, 5, 'view_change_group', 'Ganti Group', 'fa-group', 'Ganti Grup', 'xrxx', 0, NULL, 1, '2016-07-20 09:06:47', NULL, NULL),
(31, 1, 4, 'view_group', 'Daftar Group', 'fa-list', 'Daftar Group', 'xrxx', 0, NULL, 1, '2016-07-20 09:08:04', NULL, NULL),
(32, 1, 2, 'update_urutan_menu', NULL, NULL, NULL, 'xrux', 0, NULL, 1, '2016-07-24 17:53:26', NULL, NULL),
(33, 1, 4, 'add_group_proses', 'Tambah Group', 'fa-plus-square', 'Tambah Group', 'crxx', 0, NULL, 1, '2016-07-20 09:06:28', NULL, NULL),
(34, 1, 1, 'delete_module', NULL, NULL, NULL, 'xrxx', 0, NULL, 1, '2016-07-19 08:27:29', NULL, NULL),
(35, 1, 1, 'update_controller', 'Ubah Controller', 'fa-edit', 'Ubah Controller', 'xrux', 0, NULL, 1, '2016-07-19 08:27:29', NULL, NULL),
(36, 1, 1, 'update_controller_proses', 'Ubah Controller', 'fa-edit', 'Ubah Controller', 'xrux', 0, NULL, 1, '2016-07-19 08:27:29', NULL, NULL),
(37, 1, 1, 'update_function', 'Ubah Function', 'fa-edit', 'Ubah Function', 'xrux', 0, NULL, 1, '2016-07-19 08:27:29', NULL, NULL),
(38, 1, 1, 'update_function_proses', 'Ubah Function', 'fa-edit', 'Ubah Function', 'xrux', 0, NULL, 1, '2016-07-19 08:27:29', NULL, NULL),
(39, 1, 1, 'add_controller', 'Tambah Controller', 'fa-plus-square', 'Tambah Controller', 'crxx', 0, NULL, 1, '2016-07-19 08:27:29', NULL, NULL),
(40, 1, 3, 'add_user_proses', 'Tambah User', 'fa-plus-square', 'Tambah User', 'crxx', 0, NULL, 1, '2015-05-05 14:22:47', NULL, NULL),
(41, 1, 3, 'update_user', 'Ubah User', 'fa-edit', 'Ubah User', 'xrux', 0, NULL, 1, '2015-05-05 14:23:24', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `fath_my_product_modul`
--

CREATE TABLE `fath_my_product_modul` (
  `id_my_modul` int(11) NOT NULL COMMENT 'ID My Product Modul',
  `nama_modul` varchar(100) NOT NULL COMMENT 'Nama Modul di App',
  `prefix_modul` varchar(100) NOT NULL COMMENT 'Prefix / Nama depan per Modul di App',
  `ket_modul` varchar(200) NOT NULL COMMENT 'Ket Modul',
  `stat_modul` int(1) NOT NULL COMMENT 'Status Modul (1:aktif,2:non aktif)',
  `id_my` int(11) NOT NULL COMMENT 'ID tamu dari My Product',
  `created_by` int(11) NOT NULL,
  `created_time` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fath_my_project`
--

CREATE TABLE `fath_my_project` (
  `id_my` int(11) NOT NULL COMMENT 'ID My Product',
  `nama_app` varchar(200) NOT NULL COMMENT 'Nama Aplikasi',
  `ket_app` varchar(200) NOT NULL COMMENT 'Keterangan Aplikasi',
  `jumlah_modul_app` int(2) NOT NULL COMMENT 'Jumlah Modul dalam 1 App',
  `nama_db` varchar(100) NOT NULL COMMENT 'Nama database',
  `prefix` varchar(100) NOT NULL COMMENT 'Prefix / Kata depan di tabel db ini',
  `stat_app` int(1) NOT NULL COMMENT 'Status App Project (1:Aktif,2:Non Aktif)',
  `status_project` int(1) NOT NULL COMMENT 'Status project (1:Sudah selesai,2:Dalam pengerjaan, 3:Belum Dikerjakan, 4:Tidak dikerjakan)',
  `created_by` int(11) NOT NULL,
  `created_time` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fath_my_project`
--

INSERT INTO `fath_my_project` (`id_my`, `nama_app`, `ket_app`, `jumlah_modul_app`, `nama_db`, `prefix`, `stat_app`, `status_project`, `created_by`, `created_time`, `updated_by`, `updated_time`) VALUES
(1, 'Sistem Informasi Umroh', '', 1, 'fath_zamzam_solo', 'fath_z', 1, 2, 1, '2019-01-05 15:14:22', 1, '2019-01-05 15:14:22');

-- --------------------------------------------------------

--
-- Table structure for table `fath_sessions`
--

CREATE TABLE `fath_sessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fath_sessions`
--

INSERT INTO `fath_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('05cdrt1uf7cjja50k0l9r59fbj51m5ci', '::1', 1545799238, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353739393233383b6d79636170746368617c733a343a2236343039223b5f5f63695f766172737c613a313a7b733a393a226d7963617074636861223b733a333a226e6577223b7d),
('17mdnlf1dph1dbk8f7irasgfjblfg41b', '::1', 1545875163, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353837353136333b6d79636170746368617c733a343a2236303431223b5f5f63695f766172737c613a313a7b733a393a226d7963617074636861223b733a333a226e6577223b7d),
('1a91losr3cr51vb6nlju9ikrjahd8t03', '::1', 1545874572, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353837343537323b6d79636170746368617c733a343a2238323931223b5f5f63695f766172737c613a313a7b733a393a226d7963617074636861223b733a333a226e6577223b7d),
('32u99opkfvbvkvi740gp5mftb0h9c5b0', '::1', 1545804301, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353830343330313b6d79636170746368617c733a343a2235323037223b5f5f63695f766172737c613a313a7b733a393a226d7963617074636861223b733a333a226e6577223b7d),
('39haagco7rog2iqjbme14534usiepn1r', '::1', 1545803531, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353830333533313b6d79636170746368617c733a343a2235383232223b5f5f63695f766172737c613a313a7b733a393a226d7963617074636861223b733a333a226e6577223b7d),
('5pqoofsj3l9cn7qq74l9gi2bimc5sunn', '::1', 1545806614, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353830363631343b6d79636170746368617c733a343a2232303837223b5f5f63695f766172737c613a313a7b733a393a226d7963617074636861223b733a333a226e6577223b7d),
('74r7ljtes0ucdr1932idj9q9gcv9nq52', '::1', 1545804685, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353830343638353b6d79636170746368617c733a343a2234383534223b5f5f63695f766172737c613a313a7b733a393a226d7963617074636861223b733a333a226e6577223b7d),
('779r0h2t7i8d02ohm6ppevf74ataamgj', '::1', 1545885583, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353838353138323b5f666174685f5f757365725f69645f7c733a313a2231223b5f666174685f5f757365726e616d655f7c733a353a22617a7a616d223b5f666174685f5f696d675f7c4e3b5f666174685f5f756e69745f69645f7c4e3b5f666174685f5f67726f75705f6d656e755f69645f7c733a313a2231223b5f666174685f5f67726f75705f6d656e755f6e616d615f7c733a31303a22737570657261646d696e223b5f666174685f5f757365725f746970655f6e6f6d6f725f7c4e3b5f666174685f5f6e616d615f6c656e676b61705f7c733a393a224e616a6962204b756e223b5f666174685f5f656d61696c5f7c733a32323a22616e682e626c61636b6f6e6940676d61696c2e636f6d223b5f666174685f5f706c6174666f726d5f7c733a373a2262726f77736572223b),
('a0tgpmokjphri74qlmttpmnkg59ssl24', '::1', 1545879105, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353837393130353b6d79636170746368617c733a343a2236363138223b5f5f63695f766172737c613a313a7b733a393a226d7963617074636861223b733a333a226e6577223b7d),
('al2g3m8rqlfe0q89h584dhpmdan03jm1', '::1', 1545881186, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353838313138363b5f666174685f5f757365725f69645f7c733a313a2231223b5f666174685f5f757365726e616d655f7c733a353a22617a7a616d223b5f666174685f5f696d675f7c4e3b5f666174685f5f756e69745f69645f7c4e3b5f666174685f5f67726f75705f6d656e755f69645f7c733a313a2231223b5f666174685f5f67726f75705f6d656e755f6e616d615f7c733a31303a22737570657261646d696e223b5f666174685f5f757365725f746970655f6e6f6d6f725f7c4e3b5f666174685f5f6e616d615f6c656e676b61705f7c733a393a224e616a6962204b756e223b5f666174685f5f656d61696c5f7c733a32323a22616e682e626c61636b6f6e6940676d61696c2e636f6d223b5f666174685f5f706c6174666f726d5f7c733a373a2262726f77736572223b),
('d8tnth2fqcu2fogqvpo20hi1qsnkiu95', '::1', 1545882994, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353838323939343b5f666174685f5f757365725f69645f7c733a313a2231223b5f666174685f5f757365726e616d655f7c733a353a22617a7a616d223b5f666174685f5f696d675f7c4e3b5f666174685f5f756e69745f69645f7c4e3b5f666174685f5f67726f75705f6d656e755f69645f7c733a313a2231223b5f666174685f5f67726f75705f6d656e755f6e616d615f7c733a31303a22737570657261646d696e223b5f666174685f5f757365725f746970655f6e6f6d6f725f7c4e3b5f666174685f5f6e616d615f6c656e676b61705f7c733a393a224e616a6962204b756e223b5f666174685f5f656d61696c5f7c733a32323a22616e682e626c61636b6f6e6940676d61696c2e636f6d223b5f666174685f5f706c6174666f726d5f7c733a373a2262726f77736572223b),
('dqkealvgvpkp35f13itnr9km7gj5191v', '::1', 1545980528, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353938303531313b6d79636170746368617c733a343a2231313139223b5f5f63695f766172737c613a313a7b733a393a226d7963617074636861223b733a333a226e6577223b7d),
('f3aumnu8lqsfel5g7vtb8hb3ed4m2u3f', '::1', 1545876222, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353837363232323b6d79636170746368617c733a343a2234313536223b5f5f63695f766172737c613a313a7b733a393a226d7963617074636861223b733a333a226e6577223b7d),
('fnls7jj125r9la53iuh7c4ajahbp9dq2', '::1', 1545880723, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353838303732333b5f666174685f5f757365725f69645f7c733a313a2231223b5f666174685f5f757365726e616d655f7c733a353a22617a7a616d223b5f666174685f5f696d675f7c4e3b5f666174685f5f756e69745f69645f7c4e3b5f666174685f5f67726f75705f6d656e755f69645f7c733a313a2231223b5f666174685f5f67726f75705f6d656e755f6e616d615f7c733a31303a22737570657261646d696e223b5f666174685f5f757365725f746970655f6e6f6d6f725f7c4e3b5f666174685f5f6e616d615f6c656e676b61705f7c733a393a224e616a6962204b756e223b5f666174685f5f656d61696c5f7c733a32323a22616e682e626c61636b6f6e6940676d61696c2e636f6d223b5f666174685f5f706c6174666f726d5f7c733a373a2262726f77736572223b),
('g7lqbhgaor49qa6vbao9utqi8317tm9u', '::1', 1545805680, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353830353638303b6d79636170746368617c733a343a2232373432223b5f5f63695f766172737c613a313a7b733a393a226d7963617074636861223b733a333a226e6577223b7d),
('h43n1bp9ik87n6ebi6uvk30o4d5c2fu5', '::1', 1545803861, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353830333836313b6d79636170746368617c733a343a2234353533223b5f5f63695f766172737c613a313a7b733a393a226d7963617074636861223b733a333a226e6577223b7d),
('i02nhd53v8mf4thqrbrfefo86obsui9a', '::1', 1545876804, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353837363830343b5f5f757365725f69647c733a313a2231223b5f5f757365726e616d657c733a353a22617a7a616d223b5f5f696d677c4e3b5f5f756e69745f69647c4e3b5f5f67726f75705f6d656e755f69647c733a313a2231223b5f5f67726f75705f6d656e755f6e616d617c733a31303a22737570657261646d696e223b5f5f757365725f746970655f6e6f6d6f727c4e3b5f5f6e616d615f6c656e676b61707c733a393a224e616a6962204b756e223b5f5f656d61696c7c733a32323a22616e682e626c61636b6f6e6940676d61696c2e636f6d223b5f5f706c6174666f726d7c733a373a2262726f77736572223b),
('ioi1cl83nfo6l1a6viubp9j052fi40l1', '::1', 1545918480, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353931383435393b5f666174685f5f757365725f69645f7c733a313a2231223b5f666174685f5f757365726e616d655f7c733a353a22617a7a616d223b5f666174685f5f696d675f7c4e3b5f666174685f5f756e69745f69645f7c4e3b5f666174685f5f67726f75705f6d656e755f69645f7c733a313a2231223b5f666174685f5f67726f75705f6d656e755f6e616d615f7c733a31303a22737570657261646d696e223b5f666174685f5f757365725f746970655f6e6f6d6f725f7c4e3b5f666174685f5f6e616d615f6c656e676b61705f7c733a393a224e616a6962204b756e223b5f666174685f5f656d61696c5f7c733a32323a22616e682e626c61636b6f6e6940676d61696c2e636f6d223b5f666174685f5f706c6174666f726d5f7c733a373a2262726f77736572223b),
('jt8ckcsh17kul6p6alnj1m6ikpifpjuh', '::1', 1545814993, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353831343938323b6d79636170746368617c733a343a2235343233223b5f5f63695f766172737c613a313a7b733a393a226d7963617074636861223b733a333a226f6c64223b7d),
('kvuo3av2l2gt738b40tjk5sal7phoimk', '::1', 1545799545, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353739393534353b6d79636170746368617c733a343a2236343135223b5f5f63695f766172737c613a313a7b733a393a226d7963617074636861223b733a333a226e6577223b7d),
('ltl4ejebnstoals58dnj3p3t4toe43jd', '::1', 1545799849, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353739393834393b6d79636170746368617c733a343a2232333238223b5f5f63695f766172737c613a313a7b733a393a226d7963617074636861223b733a333a226e6577223b7d),
('m708j43bifat12nk3bbntm6ats3e89b1', '::1', 1545800247, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353830303234373b6d79636170746368617c733a343a2235383036223b5f5f63695f766172737c613a313a7b733a393a226d7963617074636861223b733a333a226e6577223b7d),
('n12la7pdc5g4stokoolbgmqdf1l5lq57', '::1', 1545882995, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353838323939343b5f666174685f5f757365725f69645f7c733a313a2231223b5f666174685f5f757365726e616d655f7c733a353a22617a7a616d223b5f666174685f5f696d675f7c4e3b5f666174685f5f756e69745f69645f7c4e3b5f666174685f5f67726f75705f6d656e755f69645f7c733a313a2231223b5f666174685f5f67726f75705f6d656e755f6e616d615f7c733a31303a22737570657261646d696e223b5f666174685f5f757365725f746970655f6e6f6d6f725f7c4e3b5f666174685f5f6e616d615f6c656e676b61705f7c733a393a224e616a6962204b756e223b5f666174685f5f656d61696c5f7c733a32323a22616e682e626c61636b6f6e6940676d61696c2e636f6d223b5f666174685f5f706c6174666f726d5f7c733a373a2262726f77736572223b),
('q06sauqiq6ac5akmf1n1nekdj43gdn3g', '::1', 1545877193, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353837373139333b6d79636170746368617c733a343a2234363437223b5f5f63695f766172737c613a313a7b733a393a226d7963617074636861223b733a333a226e6577223b7d),
('qo82uha5sqghf9d2bifa60t1hajmnopc', '::1', 1545806278, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353830363237383b6d79636170746368617c733a343a2234343337223b5f5f63695f766172737c613a313a7b733a393a226d7963617074636861223b733a333a226e6577223b7d),
('shlijk838b79k9somedsnr7shcl98csp', '::1', 1545874133, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353837343133333b6d79636170746368617c733a343a2235313637223b5f5f63695f766172737c613a313a7b733a393a226d7963617074636861223b733a333a226e6577223b7d),
('shpqe8j8gka0oqnvkkfta3kp0ms06o6n', '::1', 1545880154, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353838303135343b5f666174685f5f757365725f69645f7c733a313a2231223b5f666174685f5f757365726e616d655f7c733a353a22617a7a616d223b5f666174685f5f696d675f7c4e3b5f666174685f5f756e69745f69645f7c4e3b5f666174685f5f67726f75705f6d656e755f69645f7c733a313a2231223b5f666174685f5f67726f75705f6d656e755f6e616d615f7c733a31303a22737570657261646d696e223b5f666174685f5f757365725f746970655f6e6f6d6f725f7c4e3b5f666174685f5f6e616d615f6c656e676b61705f7c733a393a224e616a6962204b756e223b5f666174685f5f656d61696c5f7c733a32323a22616e682e626c61636b6f6e6940676d61696c2e636f6d223b5f666174685f5f706c6174666f726d5f7c733a373a2262726f77736572223b),
('t7a38dlgosn9ivnr0b2ku3qoeohc7hl5', '::1', 1545885182, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353838353138323b5f666174685f5f757365725f69645f7c733a313a2231223b5f666174685f5f757365726e616d655f7c733a353a22617a7a616d223b5f666174685f5f696d675f7c4e3b5f666174685f5f756e69745f69645f7c4e3b5f666174685f5f67726f75705f6d656e755f69645f7c733a313a2231223b5f666174685f5f67726f75705f6d656e755f6e616d615f7c733a31303a22737570657261646d696e223b5f666174685f5f757365725f746970655f6e6f6d6f725f7c4e3b5f666174685f5f6e616d615f6c656e676b61705f7c733a393a224e616a6962204b756e223b5f666174685f5f656d61696c5f7c733a32323a22616e682e626c61636b6f6e6940676d61696c2e636f6d223b5f666174685f5f706c6174666f726d5f7c733a373a2262726f77736572223b),
('u6mdrh8g5bmt8t6qbeght6odkipa6h7b', '::1', 1545814982, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534353831343938323b6d79636170746368617c733a343a2233313131223b5f5f63695f766172737c613a313a7b733a393a226d7963617074636861223b733a333a226e6577223b7d);

-- --------------------------------------------------------

--
-- Table structure for table `fath_user`
--

CREATE TABLE `fath_user` (
  `user_id` int(11) UNSIGNED NOT NULL,
  `group_menu_id` tinyint(4) DEFAULT NULL COMMENT 'primary group id',
  `user_username` varchar(100) NOT NULL,
  `user_password` varchar(100) DEFAULT NULL,
  `pass_awal` varchar(100) NOT NULL,
  `pass_now` varchar(100) NOT NULL,
  `user_email` varchar(100) DEFAULT NULL,
  `user_email_2` varchar(100) DEFAULT NULL,
  `user_image` varchar(255) DEFAULT NULL,
  `user_tipe_nomor` varchar(200) DEFAULT NULL,
  `user_is_default` enum('0','1') DEFAULT '0',
  `user_nama_lengkap` varchar(255) DEFAULT NULL,
  `user_unit_id` int(11) DEFAULT NULL,
  `user_is_aktif` enum('1','0') DEFAULT '1',
  `user_is_sso` enum('0','1') DEFAULT '0',
  `last_login` datetime DEFAULT NULL,
  `created_by` int(11) UNSIGNED DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `updated_by` int(11) UNSIGNED DEFAULT NULL,
  `updated_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fath_user`
--

INSERT INTO `fath_user` (`user_id`, `group_menu_id`, `user_username`, `user_password`, `pass_awal`, `pass_now`, `user_email`, `user_email_2`, `user_image`, `user_tipe_nomor`, `user_is_default`, `user_nama_lengkap`, `user_unit_id`, `user_is_aktif`, `user_is_sso`, `last_login`, `created_by`, `created_time`, `updated_by`, `updated_time`) VALUES
(1, 1, 'azzam', '6444e438af8b4587e9f4a497be8a08ff', '', '', 'anh.blackoni@gmail.com', NULL, NULL, NULL, '0', 'Najib Kun', NULL, '1', '0', NULL, 1, '2017-09-14 10:58:34', 1, '2017-11-24 14:38:51');

-- --------------------------------------------------------

--
-- Table structure for table `fath_user_access`
--

CREATE TABLE `fath_user_access` (
  `user_access_id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group_menu_id` tinyint(4) NOT NULL,
  `created_by` int(11) UNSIGNED DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `updated_by` int(11) UNSIGNED DEFAULT NULL,
  `updated_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fath_user_access`
--

INSERT INTO `fath_user_access` (`user_access_id`, `user_id`, `group_menu_id`, `created_by`, `created_time`, `updated_by`, `updated_time`) VALUES
(1, 1, 1, 1, '2017-02-27 08:45:54', NULL, NULL),
(2, 2, 1, 1, '2017-06-13 11:10:46', 1, '2017-06-13 11:10:46');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fathm_sessions`
--
ALTER TABLE `fathm_sessions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fath_controller`
--
ALTER TABLE `fath_controller`
  ADD PRIMARY KEY (`controller_id`);

--
-- Indexes for table `fath_css_icon`
--
ALTER TABLE `fath_css_icon`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fath_group_menu`
--
ALTER TABLE `fath_group_menu`
  ADD PRIMARY KEY (`group_menu_id`);

--
-- Indexes for table `fath_group_menu_detil`
--
ALTER TABLE `fath_group_menu_detil`
  ADD PRIMARY KEY (`group_menu_detil_id`);

--
-- Indexes for table `fath_log_login`
--
ALTER TABLE `fath_log_login`
  ADD PRIMARY KEY (`log_login_id`);

--
-- Indexes for table `fath_menu`
--
ALTER TABLE `fath_menu`
  ADD PRIMARY KEY (`menu_id`);

--
-- Indexes for table `fath_module`
--
ALTER TABLE `fath_module`
  ADD PRIMARY KEY (`module_id`);

--
-- Indexes for table `fath_module_detil`
--
ALTER TABLE `fath_module_detil`
  ADD PRIMARY KEY (`module_detil_id`);

--
-- Indexes for table `fath_my_product_modul`
--
ALTER TABLE `fath_my_product_modul`
  ADD PRIMARY KEY (`id_my_modul`);

--
-- Indexes for table `fath_my_project`
--
ALTER TABLE `fath_my_project`
  ADD PRIMARY KEY (`id_my`);

--
-- Indexes for table `fath_sessions`
--
ALTER TABLE `fath_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fath_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `fath_user`
--
ALTER TABLE `fath_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `fath_user_access`
--
ALTER TABLE `fath_user_access`
  ADD PRIMARY KEY (`user_access_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fathm_sessions`
--
ALTER TABLE `fathm_sessions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fath_controller`
--
ALTER TABLE `fath_controller`
  MODIFY `controller_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `fath_css_icon`
--
ALTER TABLE `fath_css_icon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=816;

--
-- AUTO_INCREMENT for table `fath_group_menu`
--
ALTER TABLE `fath_group_menu`
  MODIFY `group_menu_id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `fath_group_menu_detil`
--
ALTER TABLE `fath_group_menu_detil`
  MODIFY `group_menu_detil_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `fath_log_login`
--
ALTER TABLE `fath_log_login`
  MODIFY `log_login_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `fath_menu`
--
ALTER TABLE `fath_menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `fath_module`
--
ALTER TABLE `fath_module`
  MODIFY `module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `fath_module_detil`
--
ALTER TABLE `fath_module_detil`
  MODIFY `module_detil_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `fath_my_product_modul`
--
ALTER TABLE `fath_my_product_modul`
  MODIFY `id_my_modul` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID My Product Modul';

--
-- AUTO_INCREMENT for table `fath_my_project`
--
ALTER TABLE `fath_my_project`
  MODIFY `id_my` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID My Product', AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `fath_user`
--
ALTER TABLE `fath_user`
  MODIFY `user_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `fath_user_access`
--
ALTER TABLE `fath_user_access`
  MODIFY `user_access_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
