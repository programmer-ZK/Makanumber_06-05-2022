-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 21, 2022 at 12:31 PM
-- Server version: 8.0.28
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `numberma_makan`
--

-- --------------------------------------------------------

--
-- Table structure for table `activations`
--

CREATE TABLE `activations` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `code` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activations`
--

INSERT INTO `activations` (`id`, `user_id`, `code`, `completed`, `completed_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'JVEVccHIalHLwIL41uMnOJDfC0p59ohS', 1, '2019-11-15 04:53:30', '2019-11-15 04:53:30', '2019-11-15 04:53:30'),
(39, 65, 'lBpEFf5GQ6B6N2oIDcMXg1f9ZWwcwvG6', 1, '2022-03-29 04:47:05', '2022-03-29 04:47:05', '2022-03-29 04:47:05'),
(41, 67, 'PgRpWAgbSgOuEjcTU48a7zrxtR8bDUff', 1, '2022-03-30 09:47:11', '2022-03-30 09:47:11', '2022-03-30 09:47:11'),
(64, 85, 'PoeyhbZfoaybeYauaec9dlcRsIMv6wnH', 1, '2022-04-08 11:00:02', '2022-04-08 11:00:02', '2022-04-08 11:00:02'),
(65, 86, 'Z4DvGnXT1aV5TYcLheuGzM98D0BOt417', 1, '2022-04-11 09:15:30', '2022-04-11 09:15:30', '2022-04-11 09:15:30'),
(66, 87, NULL, 1, '2022-04-12 09:57:27', '2022-04-12 09:57:27', '2022-04-12 09:57:27'),
(67, 88, NULL, 1, '2022-04-14 17:15:57', '2022-04-14 17:15:57', '2022-04-14 17:15:57'),
(68, 89, NULL, 1, '2022-04-14 18:21:18', '2022-04-14 18:21:18', '2022-04-14 18:21:18'),
(69, 90, NULL, 1, '2022-04-16 10:32:40', '2022-04-16 10:32:40', '2022-04-16 10:32:40'),
(70, 91, NULL, 1, '2022-04-18 08:55:04', '2022-04-18 08:55:04', '2022-04-18 08:55:04'),
(71, 92, NULL, 1, '2022-04-18 08:59:45', '2022-04-18 08:59:45', '2022-04-18 08:59:45'),
(72, 93, NULL, 1, '2022-04-18 10:08:55', '2022-04-18 10:08:55', '2022-04-18 10:08:55'),
(73, 94, NULL, 1, '2022-04-19 00:40:42', '2022-04-19 00:40:42', '2022-04-19 00:40:42'),
(74, 97, '3zO0ypJhREzDg731bYwuxLqSB9EUNzyl', 1, '2022-04-19 09:27:28', '2022-04-19 09:27:28', '2022-04-19 09:27:28'),
(75, 98, 'BWQ41UlSll9XSf4wTADYApotrWW171Sv', 1, '2022-04-19 09:32:39', '2022-04-19 09:32:39', '2022-04-19 09:32:39'),
(76, 99, 'ykL8bFAqIsVfYAIFyZQNxXdkGSkCLH2p', 1, '2022-04-19 09:34:17', '2022-04-19 09:34:17', '2022-04-19 09:34:17'),
(77, 101, 'i8MTqgxTcuXiT5Gdq1qvMwCbYzDHFTb2', 1, '2022-04-19 09:36:10', '2022-04-19 09:36:10', '2022-04-19 09:36:10'),
(78, 102, NULL, 1, '2022-04-19 11:44:02', '2022-04-19 11:44:02', '2022-04-19 11:44:02'),
(79, 104, 'qGdbymZwJ0ScZYauFqR434FDYFlcLXZR', 1, '2022-04-20 06:15:47', '2022-04-20 06:15:47', '2022-04-20 06:15:47'),
(80, 105, 'd7TFJyq9NLvLW0wdkY9nq69EVXPV9Ceq', 1, '2022-04-21 09:34:51', '2022-04-21 09:34:51', '2022-04-21 09:34:51');

-- --------------------------------------------------------

--
-- Table structure for table `advertisement`
--

CREATE TABLE `advertisement` (
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `advertisement`
--

INSERT INTO `advertisement` (`image`) VALUES
('1644997636.jpeg'),
('1644998521.jpg'),
('1644999503.jpeg'),
('1645000014.jpg'),
('1645000024.jpeg'),
('1645005597.jpg'),
('1645005613.jpeg'),
('1645436424.jpg'),
('1649766984.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `audit_histories`
--

CREATE TABLE `audit_histories` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `module` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `action` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(39) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_user` int UNSIGNED NOT NULL,
  `reference_id` int UNSIGNED NOT NULL,
  `reference_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `audit_histories`
--

INSERT INTO `audit_histories` (`id`, `user_id`, `module`, `request`, `action`, `user_agent`, `ip_address`, `reference_user`, `reference_id`, `reference_name`, `type`, `created_at`, `updated_at`) VALUES
(1, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.62', '127.0.0.1', 0, 1, 'System Admin', 'info', '2022-01-18 09:05:12', '2022-01-18 09:05:12'),
(2, 1, 'of the system', '[]', 'logged out', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.62', '127.0.0.1', 1, 1, 'System Admin', 'info', '2022-01-18 10:55:33', '2022-01-18 10:55:33'),
(3, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.62', '127.0.0.1', 0, 1, 'System Admin', 'info', '2022-01-18 10:56:15', '2022-01-18 10:56:15'),
(4, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '39.41.153.27', 0, 1, 'System Admin', 'info', '2022-01-18 11:41:57', '2022-01-18 11:41:57'),
(5, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Linux; Android 9; INE-LX1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.87 Mobile Safari/537.36', '39.41.153.27', 0, 1, 'System Admin', 'info', '2022-01-18 11:45:03', '2022-01-18 11:45:03'),
(6, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '103.154.65.250', 0, 1, 'System Admin', 'info', '2022-01-18 11:46:08', '2022-01-18 11:46:08'),
(7, 1, 'user', '{\"_token\":\"TUfHucJbJROaJ4UaFSrroAMRs5jCnmoj69JvXqg0\",\"first_name\":\"System\",\"last_name\":\"Admin\",\"username\":\"odn1\",\"email\":\"admin@odn.com\",\"submit\":\"submit\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '103.154.65.250', 1, 1, 'System Admin', 'primary', '2022-01-18 11:57:04', '2022-01-18 11:57:04'),
(8, 1, 'page', '{\"_token\":\"TUfHucJbJROaJ4UaFSrroAMRs5jCnmoj69JvXqg0\",\"name\":\"Terms & Conditions\",\"slug\":\"terms-conditions\",\"slug_id\":\"190\",\"model\":\"Botble\\\\Page\\\\Models\\\\Page\",\"description\":\"Copyrights and other intellectual property rights to all text, images, audio, software and other content on this site are owned by Makanumber and its affiliates. Users are allowed to view the contents of the website, cite the contents by printing, downloading the hard disk and distributing it to others for non-commercial purposes.\",\"is_featured\":\"0\",\"content\":\"<p style=\\\"text-align:justify;\\\"><span style=\\\"font-family:Arial, Helvetica, sans-serif;font-size:16px;\\\"><span>Access to and use of the Makanumber website is subject to the following terms, conditions, and relevant laws of Pakistan.<\\/span><\\/span><span style=\\\"font-size:16px;\\\"><span>&nbsp;<\\/span><\\/span><\\/p><h4 style=\\\"text-align:justify;\\\"><span style=\\\"font-family:Arial, Helvetica, sans-serif;font-size:18px;\\\"><span><strong>1. Copyright<\\/strong><\\/span><\\/span><span style=\\\"font-size:18px;\\\"><span>&nbsp;<\\/span><\\/span><\\/h4><p style=\\\"text-align:justify;\\\"><span style=\\\"font-family:Arial, Helvetica, sans-serif;font-size:16px;\\\"><span>Copyrights and other intellectual property rights to all text, images, audio, software and other content on this site are owned by Makanumber and its affiliates. Users are allowed to view the contents of the website, cite the contents by printing, downloading the hard disk and distributing it to others for non-commercial purposes, providing information or personal purposes. Any content from this site may not be used for sale or distribution for profit, nor may it be edited or included in any other publication or website.<\\/span><\\/span><span style=\\\"font-size:16px;\\\"><span>&nbsp;<\\/span><\\/span><\\/p><h4 style=\\\"text-align:justify;\\\"><span style=\\\"font-family:Arial, Helvetica, sans-serif;font-size:18px;\\\"><span><strong>2. Content<\\/strong><\\/span><\\/span><span style=\\\"font-size:18px;\\\"><span>&nbsp;<\\/span><\\/span><\\/h4><p style=\\\"text-align:justify;\\\"><span style=\\\"font-family:Arial, Helvetica, sans-serif;font-size:16px;\\\"><span>The information on this website is compiled with great confidence but for general information research purposes only. While we endeavor to maintain updated and accurate information, we make no representations or warranties in any manner regarding completeness, accuracy, reliability, appropriateness or availability in relation to web site, or related information, product, service, or image within the website for any purpose.&nbsp;<\\/span><\\/span><\\/p><p style=\\\"text-align:justify;\\\"><span style=\\\"font-family:Arial, Helvetica, sans-serif;font-size:16px;\\\"><span>Makanumber and its employees, managers, and agents are not responsible for any loss, damage or expense incurred as a result of accessing and using this website and the sites. The web is connected to it, including but not limited to, loss of profits, direct or indirect losses. We are also not responsible, or jointly responsible, if the site is temporarily inaccessible due to technical issues beyond our control. Any comments, suggestions, images, ideas and other information or materials that users submit to us through this site will become our exclusive property, including the right to may arise in the future associated with us.<\\/span><\\/span><span style=\\\"font-size:16px;\\\"><span>&nbsp;<\\/span><\\/span><\\/p><p style=\\\"text-align:center;\\\"><img class=\\\"image_resized\\\" style=\\\"width:90%;\\\" src=\\\"https:\\/\\/flex-home.botble.com\\/storage\\/general\\/copyright.jpg\\\" alt=\\\"\\\"><span style=\\\"font-size:16px;\\\"><span>&nbsp;<\\/span><\\/span><\\/p><h4 style=\\\"text-align:justify;\\\"><span style=\\\"font-family:Arial, Helvetica, sans-serif;font-size:18px;\\\"><span><strong>3. Note on&nbsp;connected sites<\\/strong><\\/span><\\/span><span style=\\\"font-size:18px;\\\"><span>&nbsp;<\\/span><\\/span><\\/h4><p style=\\\"text-align:justify;\\\"><span style=\\\"font-family:Arial, Helvetica, sans-serif;font-size:16px;\\\"><span>At many points in the website, users can get links to other websites related to a specific aspect. This does not mean that we are related to the websites or companies that own these websites. Although we intend to connect users to sites of interest, we are not responsible or jointly responsible for our employees, managers, or representatives. with other websites and information contained therein.<\\/span><\\/span><span style=\\\"font-size:16px;\\\"><span>&nbsp;<\\/span><\\/span><\\/p>\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\",\"template\":\"default\",\"image\":null}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '103.154.65.250', 1, 5, 'Terms & Conditions', 'primary', '2022-01-18 12:16:04', '2022-01-18 12:16:04'),
(9, 1, 'page', '{\"_token\":\"TUfHucJbJROaJ4UaFSrroAMRs5jCnmoj69JvXqg0\",\"name\":\"Cookie Policy\",\"slug\":\"cookie-policy\",\"slug_id\":\"191\",\"model\":\"Botble\\\\Page\\\\Models\\\\Page\",\"description\":null,\"is_featured\":\"0\",\"content\":\"<h3>EU Cookie Consent<\\/h3><p>To use this website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.<\\/p><h4>&nbsp;<\\/h4>\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\",\"template\":\"default\",\"image\":null}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '103.154.65.250', 1, 6, 'Cookie Policy', 'primary', '2022-01-18 12:19:50', '2022-01-18 12:19:50'),
(10, 1, 'page', '{\"_token\":\"TUfHucJbJROaJ4UaFSrroAMRs5jCnmoj69JvXqg0\",\"name\":\"About us\",\"slug\":\"about-us\",\"slug_id\":\"188\",\"model\":\"Botble\\\\Page\\\\Models\\\\Page\",\"description\":\"Makanumber is constantly connecting between buyers and sellers in the field.\",\"is_featured\":\"0\",\"content\":\"<h4><span style=\\\"font-size:18px;\\\"><b><span><strong>1. COMPANY<\\/strong><\\/span><\\/b><\\/span><span style=\\\"font-family:Arial, Helvetica, sans-serif;font-size:18px;\\\"><span><strong> PROFILE<\\/strong><\\/span><\\/span><span style=\\\"font-size:18px;\\\"><span>&nbsp;<\\/span><\\/span><\\/h4><p>&nbsp;<\\/p>\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\",\"template\":\"default\",\"image\":null}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '103.154.65.250', 1, 3, 'About us', 'primary', '2022-01-18 12:20:08', '2022-01-18 12:20:08'),
(11, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.2 Safari/605.1.15', '154.192.10.42', 0, 1, 'System Admin', 'info', '2022-01-18 12:58:18', '2022-01-18 12:58:18'),
(12, 1, 'of the system', '[]', 'logged out', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.2 Safari/605.1.15', '154.192.10.42', 1, 1, 'System Admin', 'info', '2022-01-18 13:16:46', '2022-01-18 13:16:46'),
(13, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '39.41.137.15', 0, 1, 'System Admin', 'info', '2022-01-19 00:32:52', '2022-01-19 00:32:52');

-- --------------------------------------------------------

--
-- Table structure for table `careers`
--

CREATE TABLE `careers` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `salary` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `careers`
--

INSERT INTO `careers` (`id`, `name`, `location`, `salary`, `content`, `status`, `created_at`, `updated_at`, `description`) VALUES
(1, 'Sales Manager (Up to 2600$)', 'Ho Chi Minh, Viet Nam', '1300$ - 2600$', '<p><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>BENEFITS FOR YOU</strong></span></span></p>\r\n\r\n<p><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">- Applicants receive a salary from 1300 USD to 2600 USD<br />\r\n- Fully enjoy the regimes according to Vietnam&#39;s Labor Law: Social insurance, health insurance, unemployment insurance<br />\r\n- Trained to improve expertise and capacity in suitable positions.</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>JOB DESCRIPTION</strong></span></span></p>\r\n\r\n<p><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">- Coordinate with the Investment Department in organizing the collection, analysis, evaluation of market information and submitting proposals for planning the project&#39;s products and investment cooperation plans (if any);<br />\r\n- Acting as a focal point of exploitation and trading with customers, managing trading floors and distributors;<br />\r\n- Checking and approving the selection of sales units, management units for exploitation, operation and investment cooperation;<br />\r\n- Leading the negotiation and management of contracts with customers, sales units, management of exploitation, operation and investment cooperation;<br />\r\n- Prepare and submit a price approval for the sale, lease, and cooperation prices of all real estate projects;<br />\r\n- Develop sales plans, sales policies, support and promotions;<br />\r\n- Coordinate with member companies (Project Management Board) to collect and hand over product records (technical documents, red books, sales contracts ...) to hand over customers;<br />\r\n- Deploy customer support activities;</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>JOB REQUIREMENTS</strong></span></span></p>\r\n\r\n<p><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">- Preferred age: 30-35<br />\r\n- University degree in Business Administration, Economics, or related industries.<br />\r\n- Over 03 years of experience in assuming the position of Real Estate Business City<br />\r\n- Priority with a certificate of real estate broker, certificate of real estate trading floor management<br />\r\n- Good planning, operating, and control skills<br />\r\n- Good communication, negotiation and problem-solving skills</span></span></p>', 'published', '2019-11-30 19:43:10', '2019-11-30 19:46:53', NULL),
(2, 'Trưởng Phòng Kinh Doanh ( Lương lên tới 60tr)', 'Ho Chi Minh, Viet Nam', '30,000,000 VND-60,000,000 VND', '<p><span style=\"font-size:16px;\"><strong><span style=\"font-family:Arial,Helvetica,sans-serif;\">C&Aacute;C PH&Uacute;C LỢI D&Agrave;NH CHO BẠN</span></strong></span></p>\r\n\r\n<p><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">- Ứng vi&ecirc;n được hưởng mức lương từ 30.000.000 VND đến 60.000.000 VND</span></span></p>\r\n\r\n<p><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">- Được hưởng đầy đủ c&aacute;c chế độ theo Luật lao động Việt Nam: BHXH, BHYT, BHTN</span></span></p>\r\n\r\n<p><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">- Được đ&agrave;o tạo n&acirc;ng cao chuy&ecirc;n m&ocirc;n, năng lực tại c&aacute;c vị tr&iacute; ph&ugrave; hợp</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:16px;\"><strong><span style=\"font-family:Arial,Helvetica,sans-serif;\">M&Ocirc; TẢ C&Ocirc;NG VIỆC</span></strong></span></p>\r\n\r\n<p><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">- Phối hợp với ph&ograve;ng Đầu tư tổ chức thu thập, ph&acirc;n t&iacute;ch, đ&aacute;nh gi&aacute; th&ocirc;ng tin thị trường v&agrave; tr&igrave;nh đề xuất hoạch định c&aacute;c sản phẩm của dự &aacute;n, c&aacute;c phương &aacute;n hợp t&aacute;c đầu tư (nếu c&oacute;);<br />\r\n- Đầu mối khai th&aacute;c v&agrave; giao dịch với kh&aacute;ch h&agrave;ng, quản l&yacute; c&aacute;c s&agrave;n giao dịch, c&aacute;c nh&agrave; ph&acirc;n phối b&aacute;n h&agrave;ng;<br />\r\n- Kiểm tra, tr&igrave;nh duyệt lựa chọn c&aacute;c đơn vị b&aacute;n h&agrave;ng, đơn vị quản l&yacute; khai th&aacute;c, vận h&agrave;nh v&agrave; hợp t&aacute;c đầu tư;<br />\r\n- Chủ tr&igrave; đ&agrave;m ph&aacute;n v&agrave; quản l&yacute; c&aacute;c hợp đồng với kh&aacute;ch h&agrave;ng, c&aacute;c đơn vị b&aacute;n h&agrave;ng, quản l&yacute; khai th&aacute;c, vận h&agrave;nh v&agrave; hợp t&aacute;c đầu tư;<br />\r\n- Lập, tr&igrave;nh duyệt gi&aacute; b&aacute;n, gi&aacute; thu&ecirc;, gi&aacute; hợp t&aacute;c c&aacute;c sản phẩm của to&agrave;n bộ c&aacute;c dự &aacute;n bất động sản;<br />\r\n- X&acirc;y dựng kế hoạch b&aacute;n h&agrave;ng, ch&iacute;nh s&aacute;ch b&aacute;n h&agrave;ng, hỗ trợ v&agrave; khuyến mại;<br />\r\n- Phối hợp với c&ocirc;ng ty th&agrave;nh vi&ecirc;n (Ban quản l&yacute; dự &aacute;n) tập hợp v&agrave; b&agrave;n giao hồ sơ sản phẩm (hồ sơ kỹ thuật, sổ đỏ, hợp đồng mua b&aacute;n&hellip;) b&agrave;n giao kh&aacute;ch h&agrave;ng;<br />\r\n- Triển khai c&aacute;c hoạt động hỗ trợ kh&aacute;ch h&agrave;ng;</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:16px;\"><strong><span style=\"font-family:Arial,Helvetica,sans-serif;\">Y&Ecirc;U CẦU C&Ocirc;NG VIỆC</span></strong></span></p>\r\n\r\n<p><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">- Độ tuổi ưu ti&ecirc;n: 30-35<br />\r\n- Tốt nghiệp Đại học c&aacute;c ng&agrave;nh Quản trị kinh doanh, Kinh tế, hoặc c&aacute;c ng&agrave;nh nghề c&oacute; li&ecirc;n quan.<br />\r\n- Tr&ecirc;n 03 năm kinh nghiệm đảm nhận vị tr&iacute; TP kinh doanh Bất Động Sản<br />\r\n- Ưu ti&ecirc;n c&oacute; chứng chỉ m&ocirc;i giới BĐS, chứng chỉ quản l&yacute; s&agrave;n GD BĐS<br />\r\n- Kỹ năng lập kế hoạch, điều h&agrave;nh, v&agrave; kiểm so&aacute;t c&ocirc;ng việc tốt<br />\r\n- Kỹ năng giao tiếp, đ&agrave;m ph&aacute;n, giải quyết vấn đề tốt</span></span></p>', 'published', '2019-11-30 19:49:07', '2019-11-30 19:49:29', NULL),
(3, 'Senior Real Estate Consultant Demo', 'Ho Chi Minh, Viet Nam', 'From 1500$', '<p><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>BENEFITS FOR YOU</strong></span></span></p>\r\n\r\n<p><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">- Basic salary 500$&nbsp;/ month.<br />\r\n- Access to diverse sources of goods and opportunities from reputable investors.<br />\r\n- Retrospective salary policy up to 2400$-7000$&nbsp;/ year.<br />\r\n- Commission of 22-50% and a commission 1000$ / successful transaction in the month.<br />\r\n- Effective bonus 0.6-3% of annual revenue.<br />\r\n- A place to build your personal brand in a standard and different way.<br />\r\n- Attend seminars on real estate every 6 months.<br />\r\n- Participate in the course on negotiation skills (Win - Win), language of sales (Language of Sales), customer mind marketing (SOI), customer conversion from social networks (Go Social)<br />\r\n- Unlimited promotion opportunities.<br />\r\n- Working with professional space and modern open office design.<br />\r\n- Welfare policy, domestic and foreign tourism ...<br />\r\n- Decentralized, democratic, financial transparency, considering brokerage is a business partner.<br />\r\n- Environmentally friendly, is the place where brokers are connected with regular activities</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>JOB DESCRIPTION</strong></span></span></p>\r\n\r\n<p><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">- Quantity: 30 employees<br />\r\n- Find and exploit potential customers for real estate products valued from 2000 USD / m2 in the high-end and luxury segment;<br />\r\n- Deploying activities to find customers, coordinate with teams to realize sales targets<br />\r\n- Advise customers on information related to products and projects of the Company;</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>JOB REQUIREMENTS</strong></span></span></p>\r\n\r\n<p><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">- Graduating from college or higher<br />\r\n- Good appearance, male height from 1.68m, female from 1.58m. Age from 22-35 years old<br />\r\n- Priority to candidates who know foreign languages ​​and have 1 year or more experience in the field of real estate, banking and finance.<br />\r\n- Have financial goals, work and life.<br />\r\n- Desire to achieve big goals.<br />\r\n- Diligent, persistent, honest.</span></span></p>', 'published', '2019-11-30 19:52:42', '2021-01-03 17:26:17', NULL),
(4, 'Chuyên Viên Tư Vấn Bất Động Sản Cao Cấp', 'Ho Chi Minh, Viet Nam', 'Từ 30,000,000 VND', '<p><span style=\"font-size:16px;\"><strong><span style=\"font-family:Arial,Helvetica,sans-serif;\">C&Aacute;C PH&Uacute;C LỢI D&Agrave;NH CHO BẠN</span></strong></span></p>\r\n\r\n<p><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">- Lương cơ bản 10 triệu/th&aacute;ng.<br />\r\n- Tiếp cận nguồn h&agrave;ng đa dạng v&agrave; cơ hội từ c&aacute;c chủ đầu tư uy t&iacute;n.<br />\r\n- Ch&iacute;nh s&aacute;ch hồi tố lương l&ecirc;n đến 48-144 triệu/năm.<br />\r\n- Hoa hồng 22-50% v&agrave; được tạm ứng hoa hồng 20 triệu/ giao dịch th&agrave;nh c&ocirc;ng trong th&aacute;ng.<br />\r\n- Thưởng hiệu quả 0.6-3% doanh thu năm.<br />\r\n- Nơi x&acirc;y dựng thương hiệu c&aacute; nh&acirc;n một c&aacute;ch chuẩn mực v&agrave; kh&aacute;c biệt.<br />\r\n- Được tham dự c&aacute;c chuy&ecirc;n đề về bất động sản 6 th&aacute;ng 1 lần.<br />\r\n- Được tham dự kh&oacute;a học về kỹ năng đ&agrave;m ph&aacute;n (Win - Win), ng&ocirc;n ngữ b&aacute;n h&agrave;ng (Language of Sales), marketing chiếm t&acirc;m tr&iacute; kh&aacute;ch h&agrave;ng (SOI), chuyển đổi kh&aacute;ch h&agrave;ng từ mạng x&atilde; hội (Go Social)<br />\r\n- Cơ hội thăng tiến kh&ocirc;ng giới hạn.<br />\r\n- Được l&agrave;m việc với kh&ocirc;ng gian chuy&ecirc;n nghiệp v&agrave; thiết kế văn ph&ograve;ng mở hiện đại.<br />\r\n- Ch&iacute;nh s&aacute;ch ph&uacute;c lợi, du lịch trong v&agrave; ngo&agrave;i nước...<br />\r\n- Ph&acirc;n quyền, d&acirc;n chủ, minh bạch t&agrave;i ch&iacute;nh, xem m&ocirc;i giới l&agrave; đối t&aacute;c kinh doanh.<br />\r\n- M&ocirc;i trường th&acirc;n thiện, l&agrave; nơi kết nối m&ocirc;i giới với c&aacute;c hoạt động được tổ chức thường xuy&ecirc;n</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:16px;\"><strong><span style=\"font-family:Arial,Helvetica,sans-serif;\">M&Ocirc; TẢ C&Ocirc;NG VIỆC</span></strong></span></p>\r\n\r\n<p><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">- Số lượng: 30 nh&acirc;n vi&ecirc;n<br />\r\n- T&igrave;m kiếm v&agrave; khai th&aacute;c nguồn kh&aacute;ch h&agrave;ng tiềm năng cho c&aacute;c sản phẩm bất động sản c&oacute; gi&aacute; trị từ 2000 USD/m2 thuộc ph&acirc;n kh&uacute;c cao cấp, hạng sang ;<br />\r\n- Triển khai c&aacute;c hoạt động t&igrave;m kiếm kh&aacute;ch h&agrave;ng, phối hợp với đội nh&oacute;m để thực hiện chỉ ti&ecirc;u doanh số<br />\r\n- Tư vấn cho kh&aacute;ch h&agrave;ng c&aacute;c th&ocirc;ng tin li&ecirc;n quan đến sản phẩm, dự &aacute;n của C&ocirc;ng ty;</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:16px;\"><strong><span style=\"font-family:Arial,Helvetica,sans-serif;\">Y&Ecirc;U CẦU C&Ocirc;NG VIỆC</span></strong></span></p>\r\n\r\n<p><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">- Tốt nghiệp Cao đẳng trở l&ecirc;n<br />\r\n- Ngoại h&igrave;nh ưu nh&igrave;n, nam cao từ 1,68m, nữ từ 1,58m. Độ tuổi từ 22- 35 tuổi<br />\r\n- Ưu ti&ecirc;n ứng vi&ecirc;n biết ngoại ngữ v&agrave; c&oacute; kinh nghiệm 1 năm trở l&ecirc;n trong lĩnh vực BĐS, ng&acirc;n h&agrave;ng, t&agrave;i ch&iacute;nh.<br />\r\n- C&oacute; mục ti&ecirc;u về t&agrave;i ch&iacute;nh, c&ocirc;ng việc v&agrave; cuộc sống.<br />\r\n- Kh&aacute;t khao đạt được c&aacute;c mục ti&ecirc;u lớn.<br />\r\n- Si&ecirc;ng năng, ki&ecirc;n tr&igrave;, trung thực.</span></span></p>', 'published', '2019-11-30 19:56:50', '2019-11-30 19:56:50', NULL),
(5, 'Ads cun', 'aaa', 'bbb', '<p>ddd</p>', 'published', '2021-01-03 17:26:32', '2021-01-03 17:26:42', 'ccc');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int UNSIGNED NOT NULL DEFAULT '0',
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` int NOT NULL,
  `author_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `icon` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_featured` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `parent_id`, `description`, `status`, `author_id`, `author_type`, `icon`, `order`, `is_featured`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 'News', 0, NULL, 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 1, '2019-11-18 02:33:35', '2019-11-18 02:33:35'),
(2, 'House architecture', 0, NULL, 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 0, '2019-11-21 07:49:25', '2019-11-21 07:49:25'),
(3, 'Kiến trúc nhà', 0, NULL, 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 0, '2019-11-21 07:49:35', '2019-11-21 07:49:35'),
(4, 'House design', 0, NULL, 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 0, '2019-11-21 07:50:02', '2019-11-21 07:50:02'),
(5, 'Thiết kế nhà', 0, NULL, 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 0, '2019-11-21 07:50:17', '2019-11-21 07:50:17'),
(6, 'Building materials', 0, NULL, 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 0, '2019-11-21 07:50:36', '2019-11-21 07:50:36'),
(7, 'Vật liệu xây dựng', 0, NULL, 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 0, '2019-11-21 07:50:58', '2019-11-21 07:50:58'),
(8, 'Tin tức', 0, NULL, 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 1, '2019-11-22 01:26:08', '2019-11-22 01:26:08');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `state_id` int UNSIGNED NOT NULL,
  `country_id` int UNSIGNED NOT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `is_featured` tinyint NOT NULL DEFAULT '0',
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `record_id` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`, `state_id`, `country_id`, `order`, `is_default`, `is_featured`, `image`, `status`, `created_at`, `updated_at`, `slug`, `record_id`) VALUES
(1, 'Al Nahda (Dubai)', 1, 1, 0, 0, 1, 'cities/los-angeles-winter-2016.jpg', 'published', '2019-11-18 08:18:42', '2022-02-18 04:30:32', 'Al Nahda (Dubai)', NULL),
(2, 'Bur Dubai', 1, 1, 0, 0, 1, 'cities/oaklandnightskylineandlakemerritt.jpg', 'published', '2019-11-18 08:23:14', '2022-02-18 04:29:55', 'Bur Dubai', NULL),
(3, 'Business Bay', 1, 1, 0, 0, 1, 'cities/2009-0726-ca-bakersfield-truxtontower.jpg', 'published', '2019-11-18 08:26:54', '2022-02-18 04:29:08', 'Business Bay', NULL),
(4, 'Downtown Dubai', 1, 1, 0, 0, 1, 'cities/castillo-de-disneyland.jpg', 'published', '2019-11-18 08:27:57', '2022-02-18 04:28:26', 'Downtown Dubai', NULL),
(5, 'Dubai Marina', 1, 1, 0, 0, 1, 'cities/goldengatebridge-001.jpg', 'published', '2019-11-18 08:29:18', '2022-02-18 04:27:45', 'Dubai Marina', NULL),
(6, 'Jumeirah Village Circle', 1, 1, 0, 1, 1, NULL, 'published', '2022-02-08 04:39:46', '2022-02-18 04:26:11', 'Jumeirah Village Circle', NULL),
(7, 'Arjan', 1, 1, 0, 0, 0, NULL, 'published', '2022-02-18 04:31:15', '2022-02-18 04:31:15', 'Arjan', NULL),
(8, 'Al Barsha', 1, 1, 0, 0, 0, NULL, 'published', '2022-02-18 04:31:58', '2022-02-18 04:31:58', 'Al Barsha', NULL),
(9, 'Palm Jumeirah', 1, 1, 0, 0, 0, NULL, 'published', '2022-02-18 04:32:51', '2022-02-18 04:32:51', 'Palm Jumeirah', NULL),
(11, 'Deira', 1, 1, 0, 0, 0, NULL, 'published', '2022-02-18 04:35:03', '2022-02-18 04:35:03', 'Deira', NULL),
(12, 'Mirdif', 1, 1, 0, 0, 0, NULL, 'published', '2022-02-18 04:36:16', '2022-02-18 04:36:16', 'Mirdif', NULL),
(13, 'Al Reem Island', 3, 1, 0, 0, 0, NULL, 'published', '2022-02-18 04:39:59', '2022-02-18 04:39:59', 'Al Reem Island', NULL),
(14, 'Al Raha Beach', 3, 1, 0, 0, 0, NULL, 'published', '2022-02-18 04:40:41', '2022-02-18 04:40:41', 'Al Raha Beach', NULL),
(15, 'Mohammed Bin Zayed City', 3, 1, 0, 0, 0, NULL, 'published', '2022-02-18 04:41:21', '2022-02-18 04:41:21', 'Mohammed Bin Zayed City', NULL),
(16, 'Khalifa City A', 3, 1, 0, 0, 0, NULL, 'published', '2022-02-18 04:42:14', '2022-02-18 04:42:14', 'Khalifa City A', NULL),
(17, 'Yas Island', 3, 1, 0, 0, 0, NULL, 'published', '2022-02-18 04:42:50', '2022-02-18 04:42:50', 'Yas Island', NULL),
(18, 'Al Khalidiyah', 3, 1, 0, 0, 0, NULL, 'published', '2022-02-18 04:43:24', '2022-02-18 04:43:24', 'Al Khalidiyah', NULL),
(19, 'Al Reef', 3, 1, 0, 0, 0, NULL, 'published', '2022-02-18 04:44:02', '2022-02-18 04:44:02', 'Al Reef', NULL),
(20, 'Saadiyat Island', 3, 1, 0, 0, 0, NULL, 'published', '2022-02-18 04:44:53', '2022-02-18 04:44:53', 'Saadiyat Island', NULL),
(21, 'Al Shamkha', 3, 1, 0, 0, 0, NULL, 'published', '2022-02-18 04:45:24', '2022-02-18 04:45:24', 'Al Shamkha', NULL),
(22, 'Tourist Club Area (TCA)', 3, 1, 0, 0, 0, NULL, 'published', '2022-02-18 04:46:33', '2022-02-18 04:46:33', 'Tourist Club Area (TCA)', NULL),
(23, 'Corniche Road', 3, 1, 0, 0, 0, NULL, 'published', '2022-02-18 04:47:07', '2022-02-18 04:47:07', 'Corniche Road', NULL),
(24, 'Muwaileh', 4, 1, 0, 0, 0, NULL, 'published', '2022-02-18 04:47:09', '2022-02-18 04:47:51', 'Muwaileh', NULL),
(25, 'Al Nahda', 4, 1, 0, 0, 0, NULL, 'published', '2022-02-18 04:49:30', '2022-02-18 04:49:30', 'Al Nahda', NULL),
(26, 'Muwailih Commercial', 4, 1, 0, 0, 0, NULL, 'published', '2022-02-18 04:49:31', '2022-02-18 04:50:02', 'Muwailih Commercial', NULL),
(27, 'Al Taawun', 4, 1, 0, 0, 0, NULL, 'published', '2022-02-18 04:51:20', '2022-02-18 04:51:20', 'Al Taawun', NULL),
(28, 'Al Majaz', 4, 1, 0, 0, 0, NULL, 'published', '2022-02-18 04:52:21', '2022-02-18 04:52:21', 'Al Majaz', NULL),
(29, 'Al Khan', 4, 1, 0, 0, 0, NULL, 'published', '2022-02-18 04:52:59', '2022-02-18 04:52:59', 'Al Khan', NULL),
(30, 'Al Qasimia', 4, 1, 0, 0, 0, NULL, 'published', '2022-02-18 06:02:06', '2022-02-18 06:02:06', 'Al Qasimia', NULL),
(31, 'Abu Shagara', 4, 1, 0, 0, 0, NULL, 'published', '2022-02-18 06:02:42', '2022-02-18 06:02:42', 'Abu Shagara', NULL),
(32, 'Al Mamzar', 4, 1, 0, 0, 0, NULL, 'published', '2022-02-18 06:03:18', '2022-02-18 06:03:18', 'Al Mamzar', NULL),
(33, 'Al Tai', 4, 1, 0, 0, 0, NULL, 'published', '2022-02-18 06:03:52', '2022-02-18 06:03:52', 'Al Tai', NULL),
(34, 'Bu Tina', 4, 1, 0, 0, 0, NULL, 'published', '2022-02-18 06:04:25', '2022-02-18 06:04:25', 'Bu Tina', NULL),
(35, 'Al Nuaimiya', 5, 1, 0, 0, 0, NULL, 'published', '2022-02-18 06:05:08', '2022-02-18 06:05:08', 'Al Nuaimiya', NULL),
(36, 'Al Rashidiya', 5, 1, 0, 0, 0, NULL, 'published', '2022-02-18 06:05:40', '2022-02-18 06:05:40', 'Al Rashidiya', NULL),
(37, 'Al Rawda', 5, 1, 0, 0, 0, NULL, 'published', '2022-02-18 06:06:11', '2022-02-18 06:06:11', 'Al Rawda', NULL),
(38, 'Ajman Downtown', 5, 1, 0, 0, 0, NULL, 'published', '2022-02-18 06:06:40', '2022-02-18 06:06:40', 'Ajman Downtown', NULL),
(39, 'Al Mowaihat', 5, 1, 0, 0, 0, NULL, 'published', '2022-02-18 06:07:13', '2022-02-18 06:07:13', 'Al Mowaihat', NULL),
(40, 'Al Sawan', 5, 1, 0, 0, 0, NULL, 'published', '2022-02-18 06:07:42', '2022-02-18 06:07:42', 'Al Sawan', NULL),
(41, 'Al Jurf', 5, 1, 0, 0, 0, NULL, 'published', '2022-02-18 06:08:13', '2022-02-18 06:08:13', 'Al Jurf', NULL),
(42, 'Emirates City', 5, 1, 0, 0, 0, NULL, 'published', '2022-02-18 06:08:41', '2022-02-18 06:08:41', 'Emirates City', NULL),
(43, 'Corniche Ajman', 5, 1, 0, 0, 0, NULL, 'published', '2022-02-18 06:09:09', '2022-02-18 06:09:09', 'Corniche Ajman', NULL),
(44, 'Garden City', 5, 1, 0, 0, 0, NULL, 'published', '2022-02-18 06:09:37', '2022-02-18 06:09:37', 'Garden City', NULL),
(45, 'Al Hamidiyah', 5, 1, 0, 0, 0, NULL, 'published', '2022-02-18 06:10:04', '2022-02-18 06:10:04', 'Al Hamidiyah', NULL),
(46, 'Al Hamra Village', 7, 1, 0, 0, 0, NULL, 'published', '2022-02-18 06:10:43', '2022-02-18 06:10:43', 'Al Hamra Village', NULL),
(47, 'Mina Al Arab', 7, 1, 0, 0, 0, NULL, 'published', '2022-02-18 06:11:11', '2022-02-18 06:11:11', 'Mina Al Arab', NULL),
(48, 'Al Marjan Island', 7, 1, 0, 0, 0, NULL, 'published', '2022-02-18 06:11:38', '2022-02-18 06:11:38', 'Al Marjan Island', NULL),
(49, 'Al Seer', 7, 1, 0, 0, 0, NULL, 'published', '2022-02-18 06:12:05', '2022-02-18 06:12:05', 'Al Seer', NULL),
(50, 'Dafan Al Nakheel', 7, 1, 0, 0, 0, NULL, 'published', '2022-02-18 06:12:37', '2022-02-18 06:12:37', 'Dafan Al Nakheel', NULL),
(51, 'Al Qusaidat', 7, 1, 0, 0, 0, NULL, 'published', '2022-02-18 06:13:03', '2022-02-18 06:13:03', 'Al Qusaidat', NULL),
(52, 'Al Mairid', 7, 1, 0, 0, 0, NULL, 'published', '2022-02-18 06:13:29', '2022-02-18 06:13:29', 'Al Mairid', NULL),
(53, 'Al Nakheel', 7, 1, 0, 0, 0, NULL, 'published', '2022-02-18 06:13:57', '2022-02-18 06:13:57', 'Al Nakheel', NULL),
(54, 'Khuzam', 7, 1, 0, 0, 0, NULL, 'published', '2022-02-18 06:14:28', '2022-02-18 06:14:28', 'Khuzam', NULL),
(55, 'Rak City', 7, 1, 0, 0, 0, NULL, 'published', '2022-02-18 06:14:54', '2022-02-18 06:14:54', 'Rak City', NULL),
(56, 'Al Dhait', 7, 1, 0, 0, 0, NULL, 'published', '2022-02-18 06:15:20', '2022-02-18 06:15:20', 'Al Dhait', NULL),
(57, 'Al Jimi', 6, 1, 0, 0, 0, NULL, 'published', '2022-02-18 06:15:55', '2022-02-18 06:15:55', 'Al Jimi', NULL),
(58, 'Al Muwaiji', 6, 1, 0, 0, 0, NULL, 'published', '2022-02-18 06:16:28', '2022-02-18 06:16:28', 'Al Muwaiji', NULL),
(59, 'Asharej', 6, 1, 0, 0, 0, NULL, 'published', '2022-02-18 06:17:00', '2022-02-18 06:17:00', 'Asharej', NULL),
(60, 'Al Khabisi', 6, 1, 0, 0, 0, NULL, 'published', '2022-02-18 06:17:30', '2022-02-18 06:17:30', 'Al Khabisi', NULL),
(61, 'Al Towayya', 6, 1, 0, 0, 0, NULL, 'published', '2022-02-18 06:17:56', '2022-02-18 06:17:56', 'Al Towayya', NULL),
(62, 'Zakher', 6, 1, 0, 0, 0, NULL, 'published', '2022-02-18 06:18:28', '2022-02-18 06:18:28', 'Zakher', NULL),
(63, 'Al Hili', 6, 1, 0, 0, 0, NULL, 'published', '2022-02-18 06:18:58', '2022-02-18 06:18:58', 'Al Hili', NULL),
(64, 'Al Sorooj', 6, 1, 0, 0, 0, NULL, 'published', '2022-02-18 06:19:25', '2022-02-18 06:19:25', 'Al Sorooj', NULL),
(65, 'Al Marakhaniya', 6, 1, 0, 0, 0, NULL, 'published', '2022-02-18 06:19:53', '2022-02-18 06:19:53', 'Al Marakhaniya', NULL),
(66, 'Al Mutarad', 6, 1, 0, 0, 0, NULL, 'published', '2022-02-18 06:20:21', '2022-02-18 06:20:21', 'Al Mutarad', NULL),
(67, 'Al Jahili', 6, 1, 0, 0, 0, NULL, 'published', '2022-02-18 06:20:46', '2022-02-18 06:20:46', 'Al Jahili', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `address`, `subject`, `content`, `status`, `created_at`, `updated_at`) VALUES
(3, 'MichaelCer', 'chubenkodaniiaz+177q@mail.ru', NULL, NULL, NULL, 'makanumber.com uriefeodeighrkfldjiijofofjmvkdnsisdiehiusfiajfhweiuioidjsjsbfiadjasifaijdfifijsaaiwghifadja', 'read', '2022-03-26 14:24:14', '2022-03-31 12:36:45'),
(4, 'Orville Hoinville', 'orville', NULL, NULL, NULL, 'It is with sad regret to inform you DataList.biz is shutting down on 31 March 2022. \r\n\r\nWe have made available databases per country for all companies available.. \r\n\r\nYou can view our samples and download databases instantly on our website DataList.biz', 'read', '2022-03-28 16:42:48', '2022-03-31 12:36:45'),
(5, 'Zeeshan Khan', 'zeeshan@octopusdigitalnetwork.com', NULL, NULL, NULL, 'hello, world!', 'read', '2022-03-31 12:16:34', '2022-03-31 12:36:45'),
(6, 'Zeeshan Khan', 'zeeshan@octopusdigitalnetwork.com', NULL, NULL, NULL, 'hello, world!', 'read', '2022-03-31 12:17:30', '2022-03-31 12:36:45'),
(7, 'Zeeshan Khan', 'zk27159@gmail.com', NULL, NULL, NULL, 'hello, world!', 'read', '2022-03-31 12:17:47', '2022-03-31 12:36:45'),
(8, 'Zeeshan Khan', 'zk27159@gmail.com', NULL, NULL, NULL, 'hello, world!', 'read', '2022-03-31 12:21:32', '2022-03-31 12:36:45'),
(9, 'Zeeshan Khan', 'zk27159@gmail.com', NULL, NULL, NULL, 'hello, world!', 'read', '2022-03-31 12:21:51', '2022-03-31 12:36:45'),
(10, 'Zeeshan Khan', 'zk27159@gmail.com', NULL, NULL, NULL, 'hello, world!', 'read', '2022-03-31 12:35:56', '2022-03-31 12:36:45'),
(11, 'Zeeshan Khan', 'zk27159@gmail.com', NULL, NULL, NULL, 'xzdfbhd', 'unread', '2022-04-04 07:09:48', '2022-04-04 07:09:48'),
(12, 'Zeeshan Khan', 'zk27159@gmail.com', NULL, NULL, NULL, 'xzdfbhd', 'unread', '2022-04-04 07:15:39', '2022-04-04 07:15:39'),
(13, 'Zeeshan Khan', 'zk27159@gmail.com', NULL, NULL, NULL, 'xzdfbhd', 'unread', '2022-04-04 07:25:10', '2022-04-04 07:25:10'),
(14, 'Zeeshan Khan', 'zk27159@gmail.com', NULL, NULL, NULL, 'xzdfbhd', 'unread', '2022-04-04 07:26:38', '2022-04-04 07:26:38'),
(15, 'Zeeshan Khan', 'zk27159@gmail.com', NULL, NULL, NULL, 'xzdfbhd', 'unread', '2022-04-04 07:26:51', '2022-04-04 07:26:51'),
(16, 'Zeeshan Khan', 'zk27159@gmail.com', NULL, NULL, NULL, 'a\\faf', 'unread', '2022-04-04 08:39:54', '2022-04-04 08:39:54'),
(17, 'Zeeshan Khan', 'zk27159@gmail.com', NULL, NULL, NULL, 'zhrg', 'unread', '2022-04-05 07:48:58', '2022-04-05 07:48:58'),
(18, 'Zeeshan Khan', 'zk27159@gmail.com', NULL, NULL, NULL, 'afssaf', 'unread', '2022-04-05 11:23:27', '2022-04-05 11:23:27'),
(19, 'Zeeshan Khan', 'zk27159@gmail.com', NULL, NULL, NULL, 'gdfhb', 'unread', '2022-04-07 11:24:43', '2022-04-07 11:24:43'),
(20, 'Zeeshan Khan', 'zk27159@gmail.com', NULL, NULL, NULL, 'dfvdas', 'unread', '2022-04-07 11:27:30', '2022-04-07 11:27:30'),
(21, 'Zeeshan Khan', 'zk27159@gmail.com', NULL, NULL, NULL, 'asdasc', 'unread', '2022-04-07 11:34:15', '2022-04-07 11:34:15'),
(22, 'Zeeshan Khan', 'zk27159@gmail.com', NULL, NULL, NULL, 'db dfsg', 'unread', '2022-04-07 11:42:37', '2022-04-07 11:42:37'),
(23, 'Zeeshan Khan', 'zk27159@gmail.com', NULL, NULL, NULL, 'sfafa', 'unread', '2022-04-07 11:45:39', '2022-04-07 11:45:39'),
(24, 'Zeeshan Khan', 'zk27159@gmail.com', NULL, NULL, NULL, 'dfasf', 'unread', '2022-04-07 11:51:26', '2022-04-07 11:51:26'),
(25, 'Zeeshan Khan', 'zk27159@gmail.com', NULL, NULL, NULL, 'asdad', 'unread', '2022-04-07 11:54:39', '2022-04-07 11:54:39'),
(26, 'Zeeshan Khan', 'zk27159@gmail.com', NULL, NULL, NULL, 'something something', 'unread', '2022-04-08 07:59:35', '2022-04-08 07:59:35'),
(27, 'Zeeshan Khan', 'zk27159@gmail.com', NULL, NULL, NULL, 'Buying, Selling, Renting a property is an uphill battle but do not stress it, we have got your back. Whether you are planning to buy, sell or rent, we can help you move forward, to experience the most unprecedented services along with enormous numbers of options according to your choice and preference because home is not just a place. IT’S A FEELING!', 'unread', '2022-04-08 08:03:02', '2022-04-08 08:03:02'),
(28, 'asdf', 'zk27159@gmail.com', NULL, NULL, NULL, 'asf', 'unread', '2022-04-11 07:10:59', '2022-04-11 07:10:59');

-- --------------------------------------------------------

--
-- Table structure for table `contact_replies`
--

CREATE TABLE `contact_replies` (
  `id` int UNSIGNED NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `nationality`, `order`, `is_default`, `status`, `created_at`, `updated_at`) VALUES
(1, 'United Arab Emirates', 'UAE', 0, 0, 'published', '2019-11-18 08:17:29', '2022-02-18 02:09:10'),
(2, 'Pakistan', 'Pakistani', 0, 1, 'published', '2022-02-08 04:39:04', '2022-02-08 04:39:04');

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_widgets`
--

CREATE TABLE `dashboard_widgets` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dashboard_widgets`
--

INSERT INTO `dashboard_widgets` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'widget_total_pages', '2019-11-15 04:57:40', '2019-11-15 04:57:40'),
(2, 'widget_total_users', '2019-11-15 04:57:40', '2019-11-15 04:57:40'),
(4, 'widget_total_themes', '2019-11-15 04:57:40', '2019-11-15 04:57:40'),
(5, 'widget_audit_logs', '2019-11-15 18:54:50', '2019-11-15 18:54:50'),
(6, 'widget_posts_recent', '2019-11-15 18:54:50', '2019-11-15 18:54:50'),
(7, 'widget_analytics_general', '2019-11-15 18:54:50', '2019-11-15 18:54:50'),
(8, 'widget_analytics_page', '2019-11-15 18:54:50', '2019-11-15 18:54:50'),
(9, 'widget_analytics_browser', '2019-11-15 18:54:50', '2019-11-15 18:54:50'),
(10, 'widget_analytics_referrer', '2019-11-15 18:54:50', '2019-11-15 18:54:50'),
(13, 'widget_total_plugins', '2022-01-19 01:33:29', '2022-01-19 01:33:29');

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_widget_settings`
--

CREATE TABLE `dashboard_widget_settings` (
  `id` int UNSIGNED NOT NULL,
  `settings` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `user_id` int UNSIGNED NOT NULL,
  `widget_id` int UNSIGNED NOT NULL,
  `order` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dashboard_widget_settings`
--

INSERT INTO `dashboard_widget_settings` (`id`, `settings`, `user_id`, `widget_id`, `order`, `status`, `created_at`, `updated_at`) VALUES
(1, '{\"0\":1,\"state\":\"collapse\"}', 1, 7, 0, 1, '2019-11-26 02:40:58', '2022-03-04 14:40:40'),
(2, '2', 1, 5, 101, 0, '2019-11-26 02:40:58', '2022-01-19 01:34:35'),
(3, '3', 1, 6, 102, 0, '2019-11-26 02:40:58', '2022-01-19 02:15:05'),
(4, '{\"0\":4,\"state\":\"collapse\"}', 1, 8, 1, 1, '2019-11-26 02:40:58', '2022-03-04 14:40:42'),
(5, '{\"0\":5,\"state\":\"collapse\"}', 1, 9, 2, 1, '2019-11-26 02:40:58', '2022-03-04 14:40:45'),
(6, '{\"0\":6,\"state\":\"collapse\"}', 1, 10, 3, 1, '2019-11-26 02:40:58', '2022-03-29 11:08:52'),
(7, '7', 1, 1, 0, 1, '2022-01-19 01:34:34', '2022-01-19 01:34:34'),
(8, '8', 1, 2, 0, 1, '2022-01-19 01:34:34', '2022-01-19 01:34:35'),
(9, '9', 1, 4, 0, 1, '2022-01-19 01:34:35', '2022-01-19 01:34:35'),
(10, NULL, 1, 13, 109, 0, '2022-01-19 01:34:35', '2022-01-19 01:34:35');

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint NOT NULL,
  `letter` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `funds` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_sale` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `documents`
--

INSERT INTO `documents` (`id`, `user_id`, `letter`, `funds`, `home_sale`) VALUES
(12, 5, '1645619508.pdf', '1645274262.pdf', '1645267263.pdf'),
(13, 50, '1646482844.pdf', '1646482857.pdf', '1646482942.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `lang_id` int UNSIGNED NOT NULL,
  `lang_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_locale` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_flag` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_is_default` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `lang_order` int NOT NULL DEFAULT '0',
  `lang_is_rtl` tinyint UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`lang_id`, `lang_name`, `lang_locale`, `lang_code`, `lang_flag`, `lang_is_default`, `lang_order`, `lang_is_rtl`) VALUES
(1, 'English', 'en', 'en_US', 'us', 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `language_meta`
--

CREATE TABLE `language_meta` (
  `lang_meta_id` int UNSIGNED NOT NULL,
  `reference_id` int UNSIGNED NOT NULL,
  `lang_meta_code` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `reference_type` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_meta_origin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `language_meta`
--

INSERT INTO `language_meta` (`lang_meta_id`, `reference_id`, `lang_meta_code`, `reference_type`, `lang_meta_origin`) VALUES
(7, 1, 'en_US', 'Botble\\RealEstate\\Models\\PropertyFeature', '13cf1f003e0c62806dd7ad26f048b91d'),
(8, 2, 'en_US', 'Botble\\RealEstate\\Models\\PropertyFeature', 'f2356c699c6653bffaff97dd9387717d'),
(12, 3, 'en_US', 'Botble\\RealEstate\\Models\\PropertyFeature', 'e8c67bae0a5f47fa54a4a76a875daf3f'),
(13, 4, 'en_US', 'Botble\\RealEstate\\Models\\PropertyFeature', 'd57fa54aad5abc3f0caec4fb0e4e0907'),
(14, 5, 'en_US', 'Botble\\RealEstate\\Models\\PropertyFeature', '2d253e85c0394609682b9dbe77705bdb'),
(17, 6, 'en_US', 'Botble\\RealEstate\\Models\\PropertyFeature', '150d1429049e27e62396ed759719ada4'),
(18, 7, 'en_US', 'Botble\\RealEstate\\Models\\PropertyFeature', 'a7dd32dd31e9b85768892b17c4b6283b'),
(19, 8, 'en_US', 'Botble\\RealEstate\\Models\\PropertyFeature', 'bc3b21d633995dfaaa528eeb34b804ca'),
(22, 1, 'en_US', 'Botble\\RealEstate\\Models\\Investor', 'b55b725e9ba113942275849272e2969b'),
(23, 2, 'en_US', 'Botble\\RealEstate\\Models\\Investor', '8b391f8d425ee376f0378860cbc205ae'),
(24, 3, 'en_US', 'Botble\\RealEstate\\Models\\Investor', 'c9199634afef0d21b9ed76f0438c1d92'),
(25, 4, 'en_US', 'Botble\\RealEstate\\Models\\Investor', 'ae7c96e8601ae6be06b85cb1b035498d'),
(26, 5, 'en_US', 'Botble\\RealEstate\\Models\\Investor', '12f47dc443a0c4c9ed8dd3f48e43ef24'),
(27, 6, 'en_US', 'Botble\\RealEstate\\Models\\Investor', '35466099783edd979365b6d42380217a'),
(28, 7, 'en_US', 'Botble\\RealEstate\\Models\\Investor', '0f2d227a5e8b165455e69574d168d628'),
(29, 8, 'en_US', 'Botble\\RealEstate\\Models\\Investor', '9c7f8c61383d7ea76f817fcd2224363f'),
(30, 9, 'en_US', 'Botble\\RealEstate\\Models\\Investor', 'a714f38063f2a21302b72ca0c9ebf69d'),
(31, 10, 'en_US', 'Botble\\RealEstate\\Models\\Investor', '3752c23672cc11767202d85776490354'),
(32, 11, 'en_US', 'Botble\\RealEstate\\Models\\Investor', '33ba5096310a9bb0d2cbed1ebab2f00e'),
(33, 12, 'en_US', 'Botble\\RealEstate\\Models\\Investor', 'b9df16fdbc60e5d1d446560fa55780ad'),
(34, 13, 'en_US', 'Botble\\RealEstate\\Models\\Investor', 'aa340b8dd1304e49d7b6e3be7bb939cb'),
(35, 14, 'en_US', 'Botble\\RealEstate\\Models\\Investor', '0dc7c295282a2e338f97f9ac56d3e707'),
(36, 15, 'en_US', 'Botble\\RealEstate\\Models\\Investor', '7e37f52d065e2ac7f71cec27528ff1a7'),
(38, 8, 'en_US', 'Botble\\RealEstate\\Models\\Property', 'ccf2b58508febe22dae3fe588d1f7f36'),
(42, 1, 'en_US', 'Botble\\Blog\\Models\\Category', '8804d947c9dfc67caa38c6d758c533fb'),
(44, 1, 'en_US', 'Botble\\Blog\\Models\\Post', '3034c8b36dad04a9618bdcdc69180371'),
(45, 1, 'en_US', 'Botble\\Blog\\Models\\Tag', 'cb81f9780b7fcdcb490a2dc412bf2dc8'),
(46, 2, 'en_US', 'Botble\\Blog\\Models\\Post', '6fd6f18d826fcd7ac743126287d55207'),
(47, 2, 'en_US', 'Botble\\Blog\\Models\\Tag', 'b1f1b44f1eb59e622269e868a16d4ead'),
(48, 3, 'en_US', 'Botble\\Blog\\Models\\Post', 'ec03adaaea66669a5e1bfaed629064e7'),
(49, 4, 'en_US', 'Botble\\Blog\\Models\\Post', '918b57465f9da91a7af4d3a35aa8f696'),
(50, 3, 'en_US', 'Botble\\Blog\\Models\\Tag', '3facfab60703e4bb17ce679a63d04d6e'),
(60, 1, 'en_US', 'Botble\\Location\\Models\\Country', 'd3ec07a0e1406ee80d3d859777b7b403'),
(61, 1, 'en_US', 'Botble\\Location\\Models\\State', 'f8416c3653b14061d905348dad9577c6'),
(62, 1, 'en_US', 'Botble\\Location\\Models\\City', 'df3764fba83146dcf2a3dae1d4abffa8'),
(63, 2, 'en_US', 'Botble\\Location\\Models\\City', '61291cff6bb4da3bd0aaba956100e568'),
(64, 3, 'en_US', 'Botble\\Location\\Models\\City', '0da803b1790ee6927eb6c477a3a500f5'),
(65, 4, 'en_US', 'Botble\\Location\\Models\\City', '89e6959f3cb7f50f9b864818156fea61'),
(66, 5, 'en_US', 'Botble\\Location\\Models\\City', '63f5769d3fdefb7c291ab281762685c1'),
(67, 8, 'en_US', 'Botble\\RealEstate\\Models\\Feature', 'c09bc25d9cac53fcd354de939c7f8fae'),
(68, 7, 'en_US', 'Botble\\RealEstate\\Models\\Feature', 'd1b060fd0e6aa2e4f835e5c2f8bf90b9'),
(69, 6, 'en_US', 'Botble\\RealEstate\\Models\\Feature', '537595c55d88eb72832a869fd9527c9d'),
(70, 5, 'en_US', 'Botble\\RealEstate\\Models\\Feature', 'b2ca2731181c95b88a0e07086d249e9b'),
(71, 4, 'en_US', 'Botble\\RealEstate\\Models\\Feature', 'f16c14be9c2c35b834804c4aaf532e4d'),
(72, 3, 'en_US', 'Botble\\RealEstate\\Models\\Feature', '627860eba0af8ba4ca8c5e3dba813e76'),
(73, 2, 'en_US', 'Botble\\RealEstate\\Models\\Feature', '4daead6cb916d9ee6d0abf535757c12d'),
(74, 1, 'en_US', 'Botble\\RealEstate\\Models\\Feature', '945456922bc6901572ccfeaf1754647c'),
(75, 9, 'vi', 'Botble\\RealEstate\\Models\\Feature', 'c09bc25d9cac53fcd354de939c7f8fae'),
(76, 10, 'vi', 'Botble\\RealEstate\\Models\\Feature', 'd1b060fd0e6aa2e4f835e5c2f8bf90b9'),
(77, 11, 'vi', 'Botble\\RealEstate\\Models\\Feature', '537595c55d88eb72832a869fd9527c9d'),
(78, 12, 'vi', 'Botble\\RealEstate\\Models\\Feature', 'b2ca2731181c95b88a0e07086d249e9b'),
(79, 13, 'vi', 'Botble\\RealEstate\\Models\\Feature', 'f16c14be9c2c35b834804c4aaf532e4d'),
(80, 14, 'vi', 'Botble\\RealEstate\\Models\\Feature', '627860eba0af8ba4ca8c5e3dba813e76'),
(81, 15, 'vi', 'Botble\\RealEstate\\Models\\Feature', '4daead6cb916d9ee6d0abf535757c12d'),
(82, 16, 'vi', 'Botble\\RealEstate\\Models\\Feature', '945456922bc6901572ccfeaf1754647c'),
(83, 16, 'vi', 'Botble\\RealEstate\\Models\\Investor', '7e37f52d065e2ac7f71cec27528ff1a7'),
(84, 17, 'vi', 'Botble\\RealEstate\\Models\\Investor', '0dc7c295282a2e338f97f9ac56d3e707'),
(85, 18, 'vi', 'Botble\\RealEstate\\Models\\Investor', 'aa340b8dd1304e49d7b6e3be7bb939cb'),
(86, 19, 'vi', 'Botble\\RealEstate\\Models\\Investor', 'b9df16fdbc60e5d1d446560fa55780ad'),
(87, 20, 'vi', 'Botble\\RealEstate\\Models\\Investor', '33ba5096310a9bb0d2cbed1ebab2f00e'),
(88, 21, 'vi', 'Botble\\RealEstate\\Models\\Investor', '3752c23672cc11767202d85776490354'),
(89, 22, 'vi', 'Botble\\RealEstate\\Models\\Investor', 'a714f38063f2a21302b72ca0c9ebf69d'),
(90, 23, 'vi', 'Botble\\RealEstate\\Models\\Investor', '9c7f8c61383d7ea76f817fcd2224363f'),
(91, 24, 'vi', 'Botble\\RealEstate\\Models\\Investor', '0f2d227a5e8b165455e69574d168d628'),
(92, 25, 'vi', 'Botble\\RealEstate\\Models\\Investor', '35466099783edd979365b6d42380217a'),
(93, 26, 'vi', 'Botble\\RealEstate\\Models\\Investor', '12f47dc443a0c4c9ed8dd3f48e43ef24'),
(94, 27, 'vi', 'Botble\\RealEstate\\Models\\Investor', 'ae7c96e8601ae6be06b85cb1b035498d'),
(96, 29, 'vi', 'Botble\\RealEstate\\Models\\Investor', 'c9199634afef0d21b9ed76f0438c1d92'),
(97, 30, 'vi', 'Botble\\RealEstate\\Models\\Investor', '8b391f8d425ee376f0378860cbc205ae'),
(98, 31, 'vi', 'Botble\\RealEstate\\Models\\Investor', 'b55b725e9ba113942275849272e2969b'),
(99, 7, 'vi', 'Botble\\RealEstate\\Models\\Project', '56e4bdd055bc0b01d9fdc5efdbee6166'),
(100, 8, 'vi', 'Botble\\RealEstate\\Models\\Project', 'b8c605675ac073dd9d5b3572087a2445'),
(101, 9, 'vi', 'Botble\\RealEstate\\Models\\Project', '1631e995fd3df41119f30d9608085dae'),
(102, 10, 'vi', 'Botble\\RealEstate\\Models\\Project', 'e6f78da435a49ddb8497a027537ad6f5'),
(103, 11, 'vi', 'Botble\\RealEstate\\Models\\Project', 'e10e38c14cc5ba56f403049c9f003285'),
(104, 12, 'vi', 'Botble\\RealEstate\\Models\\Project', '0f0ae4af74e088ea71a1456a71084118'),
(105, 18, 'vi', 'Botble\\RealEstate\\Models\\Property', '404601a719bd38c609172d77df408ba1'),
(106, 19, 'vi', 'Botble\\RealEstate\\Models\\Property', '9fd22570b6527cea3f74256bc5beeade'),
(107, 20, 'vi', 'Botble\\RealEstate\\Models\\Property', '657ce80dc667a53aed03ea05f3977ff0'),
(108, 21, 'vi', 'Botble\\RealEstate\\Models\\Property', '6be7679ead5366a6369167210fd247a0'),
(109, 22, 'vi', 'Botble\\RealEstate\\Models\\Property', 'ac45379b9b6134531a834400a7d9175c'),
(113, 23, 'vi', 'Botble\\RealEstate\\Models\\Property', '976a11dca6f828f42ef579a8b3671b56'),
(114, 24, 'vi', 'Botble\\RealEstate\\Models\\Property', '141e080b1eff418e2977b5efdbfe799a'),
(115, 25, 'vi', 'Botble\\RealEstate\\Models\\Property', 'ccf2b58508febe22dae3fe588d1f7f36'),
(116, 26, 'vi', 'Botble\\RealEstate\\Models\\Property', '18e0c764a6457fa1677a1710cc219337'),
(118, 27, 'vi', 'Botble\\RealEstate\\Models\\Property', '2c9217b2ce21882234bfaf9222893fc9'),
(122, 2, 'en_US', 'Botble\\Blog\\Models\\Category', '6675f12d6ce53d9ed753a54bca8d67b0'),
(123, 3, 'vi', 'Botble\\Blog\\Models\\Category', '6675f12d6ce53d9ed753a54bca8d67b0'),
(124, 4, 'en_US', 'Botble\\Blog\\Models\\Category', '745e79e10f12a0f66d19ae3b4dad987a'),
(125, 5, 'vi', 'Botble\\Blog\\Models\\Category', '745e79e10f12a0f66d19ae3b4dad987a'),
(126, 6, 'en_US', 'Botble\\Blog\\Models\\Category', 'f1ba0f3404bb5b827cfaa552a6894c0f'),
(127, 7, 'vi', 'Botble\\Blog\\Models\\Category', 'f1ba0f3404bb5b827cfaa552a6894c0f'),
(128, 28, 'vi', 'Botble\\RealEstate\\Models\\Property', 'dad4f25ae76974a87d59084f82dae01b'),
(129, 29, 'vi', 'Botble\\RealEstate\\Models\\Property', '4be0c322dda4d57a9ae43c4bb5b7b608'),
(130, 30, 'vi', 'Botble\\RealEstate\\Models\\Property', 'cb46b75d51f5b9ca4f7ea650ae885169'),
(131, 31, 'vi', 'Botble\\RealEstate\\Models\\Property', '702833126d23884c8fa5f965b7fa3870'),
(132, 32, 'vi', 'Botble\\RealEstate\\Models\\Property', '73a8f9e2401b54cca959e1a0a5fb9c9e'),
(133, 33, 'vi', 'Botble\\RealEstate\\Models\\Property', '4aba3c5a608665c657affb7c59fce1e5'),
(134, 34, 'vi', 'Botble\\RealEstate\\Models\\Property', '417317c4e6d4e390e19b87986cc52aa0'),
(135, 8, 'vi', 'Botble\\Blog\\Models\\Category', '8804d947c9dfc67caa38c6d758c533fb'),
(136, 5, 'vi', 'Botble\\Blog\\Models\\Post', '3034c8b36dad04a9618bdcdc69180371'),
(137, 6, 'vi', 'Botble\\Blog\\Models\\Post', '6fd6f18d826fcd7ac743126287d55207'),
(138, 7, 'vi', 'Botble\\Blog\\Models\\Post', 'ec03adaaea66669a5e1bfaed629064e7'),
(139, 8, 'vi', 'Botble\\Blog\\Models\\Post', '918b57465f9da91a7af4d3a35aa8f696'),
(144, 1, 'en_US', 'Botble\\Career\\Models\\Career', '09e2cc1ea05bd7c9dd60cfd54725975c'),
(145, 2, 'vi', 'Botble\\Career\\Models\\Career', '09e2cc1ea05bd7c9dd60cfd54725975c'),
(146, 3, 'en_US', 'Botble\\Career\\Models\\Career', 'dcd6eb9e2a31b96825a0c519101c098e'),
(147, 4, 'vi', 'Botble\\Career\\Models\\Career', 'dcd6eb9e2a31b96825a0c519101c098e'),
(161, 1, 'en_US', 'Botble\\RealEstate\\Models\\Facility', '4c9e7a0ee9344da781f8f10481e0335b'),
(162, 2, 'en_US', 'Botble\\RealEstate\\Models\\Facility', '3dd78243e38a8bc41c7e8cd908af82d7'),
(163, 3, 'en_US', 'Botble\\RealEstate\\Models\\Facility', '1c2ee66999173592cc8569b72e004387'),
(164, 4, 'en_US', 'Botble\\RealEstate\\Models\\Facility', '202f330c763b2c793965c07fbca0ebc8'),
(165, 5, 'en_US', 'Botble\\RealEstate\\Models\\Facility', 'f21d7f6838d1ac489dd07bdd2152d089'),
(166, 6, 'en_US', 'Botble\\RealEstate\\Models\\Facility', '213f9bb1d92be72bf70a1f989d93cbcf'),
(167, 7, 'en_US', 'Botble\\RealEstate\\Models\\Facility', '83a092c92af08ffca16e3b0f2c7aebeb'),
(168, 8, 'en_US', 'Botble\\RealEstate\\Models\\Facility', '21a48678967dcbd7d28d6111de0b8add'),
(169, 9, 'en_US', 'Botble\\RealEstate\\Models\\Facility', 'd542823ce99de761331bf698fefa39ee'),
(170, 10, 'en_US', 'Botble\\RealEstate\\Models\\Facility', '693daebf15c3b74b003ce432cdb214de'),
(171, 11, 'en_US', 'Botble\\RealEstate\\Models\\Facility', '8cd328ddcbadeb5d8e3f7e166e06ee65'),
(194, 5, 'en_US', 'Botble\\Career\\Models\\Career', '9d36fac293afaacbe2deeaaccc00f346'),
(291, 1, 'en_US', 'Botble\\RealEstate\\Models\\Category', '5d5d4684367522c764a3bf2dd2cb2f4b'),
(292, 2, 'en_US', 'Botble\\RealEstate\\Models\\Category', 'a041e86cb0e705de7a1e730c769ea2da'),
(293, 3, 'en_US', 'Botble\\RealEstate\\Models\\Category', 'b575980187351ebf72abf18281b3377c'),
(294, 4, 'en_US', 'Botble\\RealEstate\\Models\\Category', '914c85970887f23b4e2eb633a6d0b679'),
(295, 5, 'en_US', 'Botble\\RealEstate\\Models\\Category', '90cf92a09eec78cfe1e3c88409efc634'),
(296, 6, 'en_US', 'Botble\\RealEstate\\Models\\Category', 'a6ff72080cd2a3241951d825ac7e13e0'),
(297, 1, 'en_US', 'Botble\\Page\\Models\\Page', '1865f73f3ac68d6d9feea10eb71769ee'),
(298, 2, 'en_US', 'Botble\\Page\\Models\\Page', 'a2d5a00f4a91b438d5609aa48a7918b7'),
(299, 3, 'en_US', 'Botble\\Page\\Models\\Page', 'cc4011f84845a571a78c51d7f166f523'),
(300, 4, 'en_US', 'Botble\\Page\\Models\\Page', '55f2c6c1ef080c25759312d1ec71072e'),
(301, 5, 'en_US', 'Botble\\Page\\Models\\Page', '70086a0b0ece23913a977e2282f19cfd'),
(302, 6, 'en_US', 'Botble\\Page\\Models\\Page', 'b3d600b4ef64e839b895bda57773ea55'),
(303, 7, 'vi', 'Botble\\Page\\Models\\Page', '1865f73f3ac68d6d9feea10eb71769ee'),
(304, 8, 'vi', 'Botble\\Page\\Models\\Page', 'a2d5a00f4a91b438d5609aa48a7918b7'),
(305, 9, 'vi', 'Botble\\Page\\Models\\Page', 'cc4011f84845a571a78c51d7f166f523'),
(306, 10, 'vi', 'Botble\\Page\\Models\\Page', '55f2c6c1ef080c25759312d1ec71072e'),
(307, 11, 'vi', 'Botble\\Page\\Models\\Page', '70086a0b0ece23913a977e2282f19cfd'),
(308, 12, 'vi', 'Botble\\Page\\Models\\Page', 'b3d600b4ef64e839b895bda57773ea55'),
(309, 1, 'en_US', 'Botble\\Menu\\Models\\MenuLocation', 'ea4bb7f1808c4f1736d7b7ed1286ae10'),
(310, 1, 'en_US', 'Botble\\Menu\\Models\\Menu', '8de4bcd9b0294defc73f2f48315362b2'),
(311, 2, 'en_US', 'Botble\\Menu\\Models\\Menu', '06c563c0895de348da020e73550b8e58'),
(312, 3, 'en_US', 'Botble\\Menu\\Models\\Menu', 'af33555f16636f7cd5921fb1d08ea668'),
(313, 4, 'en_US', 'Botble\\Menu\\Models\\Menu', 'b2d4abef57666caef053042cf86130aa'),
(314, 2, 'vi', 'Botble\\Menu\\Models\\MenuLocation', 'd38406c2db33d4454b86565a9d7cdaf5'),
(315, 5, 'vi', 'Botble\\Menu\\Models\\Menu', '8de4bcd9b0294defc73f2f48315362b2'),
(316, 6, 'vi', 'Botble\\Menu\\Models\\Menu', '06c563c0895de348da020e73550b8e58'),
(317, 7, 'vi', 'Botble\\Menu\\Models\\Menu', 'af33555f16636f7cd5921fb1d08ea668'),
(318, 8, 'vi', 'Botble\\Menu\\Models\\Menu', 'b2d4abef57666caef053042cf86130aa'),
(319, 9, 'en_US', 'Botble\\Blog\\Models\\Post', 'ad4e052b18f37ab5bb038760cb14fb1e'),
(320, 10, 'en_US', 'Botble\\Blog\\Models\\Post', '7e9baf39c5c29f31bb0d06d04a1c0ea1'),
(321, 11, 'en_US', 'Botble\\Blog\\Models\\Post', '297a670cfa3cbe2ccaecf98f839f759b'),
(322, 12, 'en_US', 'Botble\\Blog\\Models\\Post', '5679fe5640df77651a10cdf837f396ee'),
(323, 13, 'en_US', 'Botble\\Blog\\Models\\Post', '8196e2aaf75d1fc8a64b7343703d2878'),
(324, 14, 'en_US', 'Botble\\Blog\\Models\\Post', '974fa9522c40d35cf3bdcd8a7989d227'),
(325, 15, 'en_US', 'Botble\\Blog\\Models\\Post', 'cee1da113b7baafd0b0448d9cd50b5a5'),
(326, 16, 'en_US', 'Botble\\Blog\\Models\\Post', '1682ac96d28b0127596f9e079d208045'),
(327, 17, 'en_US', 'Botble\\Blog\\Models\\Post', '8c830776118764025c538ef66dc28554'),
(328, 18, 'en_US', 'Botble\\Blog\\Models\\Post', '70991de5edf42555e2ab39a865e317d0'),
(329, 19, 'en_US', 'Botble\\Blog\\Models\\Post', '75607f81ada2ab73d07f78141fa60aa7'),
(330, 20, 'en_US', 'Botble\\Blog\\Models\\Post', '2ee45f68451c11219a2a3201f9c154ff'),
(331, 21, 'en_US', 'Botble\\Blog\\Models\\Post', '88da5f3d0f516bbc1cb3676f60010bf1'),
(332, 22, 'en_US', 'Botble\\Blog\\Models\\Post', '275afb9427bb7b0208451b256ecabde3'),
(333, 23, 'en_US', 'Botble\\Blog\\Models\\Post', 'f84355148dd7a99d0762c0b3f82f2c13'),
(334, 24, 'en_US', 'Botble\\Blog\\Models\\Post', 'a37a8adcf1777bca81ea8e3ab27a7f7a'),
(335, 25, 'vi', 'Botble\\Blog\\Models\\Post', 'ad4e052b18f37ab5bb038760cb14fb1e'),
(336, 26, 'vi', 'Botble\\Blog\\Models\\Post', '7e9baf39c5c29f31bb0d06d04a1c0ea1'),
(337, 27, 'vi', 'Botble\\Blog\\Models\\Post', '297a670cfa3cbe2ccaecf98f839f759b'),
(338, 28, 'vi', 'Botble\\Blog\\Models\\Post', '5679fe5640df77651a10cdf837f396ee'),
(339, 29, 'vi', 'Botble\\Blog\\Models\\Post', '8196e2aaf75d1fc8a64b7343703d2878'),
(340, 30, 'vi', 'Botble\\Blog\\Models\\Post', '974fa9522c40d35cf3bdcd8a7989d227'),
(341, 31, 'vi', 'Botble\\Blog\\Models\\Post', 'cee1da113b7baafd0b0448d9cd50b5a5'),
(342, 32, 'vi', 'Botble\\Blog\\Models\\Post', '1682ac96d28b0127596f9e079d208045'),
(343, 33, 'vi', 'Botble\\Blog\\Models\\Post', '8c830776118764025c538ef66dc28554'),
(344, 34, 'vi', 'Botble\\Blog\\Models\\Post', '70991de5edf42555e2ab39a865e317d0'),
(345, 35, 'vi', 'Botble\\Blog\\Models\\Post', '75607f81ada2ab73d07f78141fa60aa7'),
(346, 36, 'vi', 'Botble\\Blog\\Models\\Post', '2ee45f68451c11219a2a3201f9c154ff'),
(347, 37, 'vi', 'Botble\\Blog\\Models\\Post', '88da5f3d0f516bbc1cb3676f60010bf1'),
(348, 38, 'vi', 'Botble\\Blog\\Models\\Post', '275afb9427bb7b0208451b256ecabde3'),
(349, 39, 'vi', 'Botble\\Blog\\Models\\Post', 'f84355148dd7a99d0762c0b3f82f2c13'),
(350, 40, 'vi', 'Botble\\Blog\\Models\\Post', 'a37a8adcf1777bca81ea8e3ab27a7f7a'),
(351, 4, 'en_US', 'Botble\\Blog\\Models\\Tag', '005b3ab30ce25363efed7f2e9b4a8546'),
(352, 5, 'en_US', 'Botble\\Blog\\Models\\Tag', 'b7301bb4bf4708f53755b7158b70c55c'),
(353, 6, 'en_US', 'Botble\\Blog\\Models\\Tag', '9c0d52f158204d6ba7c64a8a4f9700c0'),
(354, 7, 'en_US', 'Botble\\Blog\\Models\\Tag', '0c4823b66d7feefe32f1071ad17cc9cc'),
(355, 8, 'en_US', 'Botble\\Blog\\Models\\Tag', '2eaa60592ffaf84385cd8b1c804c64dd'),
(357, 35, 'en_US', 'Botble\\RealEstate\\Models\\Property', '7297154184a2514fa1d49ca103141bd8'),
(358, 36, 'en_US', 'Botble\\RealEstate\\Models\\Property', '93e4b86f481bc686b329d7e0d6b2b005'),
(359, 2, 'en_US', 'Botble\\Location\\Models\\Country', 'cdb362696b27e7384d604c93aea7988d'),
(360, 6, 'en_US', 'Botble\\Location\\Models\\City', 'f77da1d0e79a8473bd16f5d0148201a4'),
(361, 37, 'en_US', 'Botble\\RealEstate\\Models\\Property', 'ecd6e7bf3f763c5276cfa74328f38f86'),
(369, 46, 'en_US', 'Botble\\RealEstate\\Models\\Property', '6f93fe9f570837c216cf715a8e2f417b'),
(370, 42, 'en_US', 'Botble\\Blog\\Models\\Post', '350d68b885c7ccd8ef9dfe57328f33dd'),
(371, 2, 'en_US', 'Botble\\Location\\Models\\State', '07e8767df6c844a059fe96f693de05aa'),
(372, 3, 'en_US', 'Botble\\Location\\Models\\State', '0f612adf9b04cdbf62feb0d427fa26e4'),
(373, 4, 'en_US', 'Botble\\Location\\Models\\State', 'ad24808725dd3e2eac420edc261a3fd6'),
(374, 5, 'en_US', 'Botble\\Location\\Models\\State', '21ac74acb32bc6894552a8cbaed39612'),
(375, 6, 'en_US', 'Botble\\Location\\Models\\State', '691920fc2bd31e6b93f458f0d4d34320'),
(376, 7, 'en_US', 'Botble\\Location\\Models\\State', '0435f74352d990940ce49f828860a82f'),
(377, 7, 'en_US', 'Botble\\Location\\Models\\City', 'ccfd1b117097dcd2ddb86be68398cd40'),
(378, 8, 'en_US', 'Botble\\Location\\Models\\City', 'cb015b80cd10e637c6257e1b13eeaace'),
(379, 9, 'en_US', 'Botble\\Location\\Models\\City', 'abfbba556def68d48cba2a79fa3c32d9'),
(381, 11, 'en_US', 'Botble\\Location\\Models\\City', '24bcf2c90c0991f3f68f4dd3c7fd98ec'),
(382, 12, 'en_US', 'Botble\\Location\\Models\\City', '8edc43e97c1a97c627cf8d1a68260c5d'),
(383, 13, 'en_US', 'Botble\\Location\\Models\\City', '4955e147dc73b1a3d8fa4892408fe78f'),
(384, 14, 'en_US', 'Botble\\Location\\Models\\City', '4dd2956cf0c3138b9fb8d51d16f78cab'),
(385, 15, 'en_US', 'Botble\\Location\\Models\\City', '65caa4a83399d0558bcaf7e37ce4a89c'),
(386, 16, 'en_US', 'Botble\\Location\\Models\\City', '29d64faa1bd8c9cb14665fc712606523'),
(387, 17, 'en_US', 'Botble\\Location\\Models\\City', '44f83b4ad07d126740d36005f3645462'),
(388, 18, 'en_US', 'Botble\\Location\\Models\\City', 'd50b7246ce2f9c15b67bf083cb76498a'),
(389, 19, 'en_US', 'Botble\\Location\\Models\\City', '2efa374cb38c51a2e02169f3bd6c4b08'),
(390, 20, 'en_US', 'Botble\\Location\\Models\\City', '1c7f0b5562457425900c73bcbcb4a9fd'),
(391, 21, 'en_US', 'Botble\\Location\\Models\\City', '1d4163747597153dec0a3aa418a3f4e1'),
(392, 22, 'en_US', 'Botble\\Location\\Models\\City', '02c9b432774eca8a06accc6b01829a19'),
(393, 23, 'en_US', 'Botble\\Location\\Models\\City', 'b389197b3f09ba0059327169e6daf392'),
(394, 24, 'en_US', 'Botble\\Location\\Models\\City', '42c473577a5e005652bac6378d1b6053'),
(395, 25, 'en_US', 'Botble\\Location\\Models\\City', '6f87c3b85b80d43a28cb53eb1c41d068'),
(396, 26, 'en_US', 'Botble\\Location\\Models\\City', '2c040198d847959c103524358bb903c0'),
(397, 27, 'en_US', 'Botble\\Location\\Models\\City', '8902007009ce6dc7b5ea2e32e7342689'),
(398, 28, 'en_US', 'Botble\\Location\\Models\\City', '2e93d11a55840d6ef22d84f71d3e75ba'),
(399, 29, 'en_US', 'Botble\\Location\\Models\\City', '0fff163f756d13ed0437143828ef52a4'),
(400, 30, 'en_US', 'Botble\\Location\\Models\\City', '333f0d78e051ef2ac413f6fc5d981557'),
(401, 31, 'en_US', 'Botble\\Location\\Models\\City', '5d6cc1754f8af2a9fb60aef5f360c359'),
(402, 32, 'en_US', 'Botble\\Location\\Models\\City', '17ba03b1c30192be509fe95ef952c856'),
(403, 33, 'en_US', 'Botble\\Location\\Models\\City', 'b6f761034b831df1ceb04d047820a0b5'),
(404, 34, 'en_US', 'Botble\\Location\\Models\\City', 'e7673afed311f5928a4dbd87093746bd'),
(405, 35, 'en_US', 'Botble\\Location\\Models\\City', 'bae86fc80c434c552baea997621f9a7e'),
(406, 36, 'en_US', 'Botble\\Location\\Models\\City', '041296d66bc229224475eb790a7e3c4e'),
(407, 37, 'en_US', 'Botble\\Location\\Models\\City', '4b220935f369acb74b91e0a3bcc5422c'),
(408, 38, 'en_US', 'Botble\\Location\\Models\\City', 'b4392d549c112358fe13655c5d150bf1'),
(409, 39, 'en_US', 'Botble\\Location\\Models\\City', 'eebfbd322119b95c773b64253bea2743'),
(410, 40, 'en_US', 'Botble\\Location\\Models\\City', 'e8d571c8e43c63f3d7d38bb545dd3318'),
(411, 41, 'en_US', 'Botble\\Location\\Models\\City', '65cf80edc14c1e08d8779b859a9fec2c'),
(412, 42, 'en_US', 'Botble\\Location\\Models\\City', '6a5f7f3abb4cc960ac34074b116e9e66'),
(413, 43, 'en_US', 'Botble\\Location\\Models\\City', '736384ccef4f887312db4c8d2b1bc449'),
(414, 44, 'en_US', 'Botble\\Location\\Models\\City', '6ffe1ab5e493550060aca0f4cdae3235'),
(415, 45, 'en_US', 'Botble\\Location\\Models\\City', '233c574cb68ab7e076ef7bae5432213f'),
(416, 46, 'en_US', 'Botble\\Location\\Models\\City', '9cbdc65d57278e9d201363368c567580'),
(417, 47, 'en_US', 'Botble\\Location\\Models\\City', '302931c93f32b44ca1795f8a4cf7b14b'),
(418, 48, 'en_US', 'Botble\\Location\\Models\\City', '504a2fed71c3f947a78f98d34564762b'),
(419, 49, 'en_US', 'Botble\\Location\\Models\\City', '5794ee247dd4fc015516dad4db8ad1b3'),
(420, 50, 'en_US', 'Botble\\Location\\Models\\City', 'e0c01be143bcd7edcfd359866e499f04'),
(421, 51, 'en_US', 'Botble\\Location\\Models\\City', '8abd036e904534c18f071a705e7c88eb'),
(422, 52, 'en_US', 'Botble\\Location\\Models\\City', 'ebf0220473f5db471e9af09e5e862ed3'),
(423, 53, 'en_US', 'Botble\\Location\\Models\\City', 'f8419a8d324fe92017c42eec986ff641'),
(424, 54, 'en_US', 'Botble\\Location\\Models\\City', '68f80a1561fdc951aef2640f3f03fa5f'),
(425, 55, 'en_US', 'Botble\\Location\\Models\\City', '87474ac960a55308ee977cdaa15f20ca'),
(426, 56, 'en_US', 'Botble\\Location\\Models\\City', '4d369ec260289bbd134500db60b96e67'),
(427, 57, 'en_US', 'Botble\\Location\\Models\\City', '4a5d836152b5581cb729bb0138b5dc3b'),
(428, 58, 'en_US', 'Botble\\Location\\Models\\City', '95feccc89a05557f6a3996f541c8bdc7'),
(429, 59, 'en_US', 'Botble\\Location\\Models\\City', '53a7c200cbdb84b8d22ec30015d7f13c'),
(430, 60, 'en_US', 'Botble\\Location\\Models\\City', '257cdcde603a211fd62c71ac096e1246'),
(431, 61, 'en_US', 'Botble\\Location\\Models\\City', 'ae4981a4fd0e82d10b033da05c13381c'),
(432, 62, 'en_US', 'Botble\\Location\\Models\\City', 'cae95bc3c0653e64d6075ad718990ba1'),
(433, 63, 'en_US', 'Botble\\Location\\Models\\City', '9a3c0d95d8c13c2c72660e11d445af9e'),
(434, 64, 'en_US', 'Botble\\Location\\Models\\City', 'bfbc9e8183d725a689683a4f39807b1c'),
(435, 65, 'en_US', 'Botble\\Location\\Models\\City', 'e20363f0a60a389e2d74467fcdba0f53'),
(436, 66, 'en_US', 'Botble\\Location\\Models\\City', 'c71f9c01d2f96eb5c34831f4fdb9a4ec'),
(437, 67, 'en_US', 'Botble\\Location\\Models\\City', '82a7212e1c497de2c03f91b665ecb70d'),
(438, 55, 'en_US', 'Botble\\RealEstate\\Models\\Property', '1e3cd39281b23bd6634d9c11baefb52d'),
(439, 58, 'en_US', 'Botble\\RealEstate\\Models\\Property', '55ae1996994ea4e5ca440365a681b231'),
(440, 65, 'en_US', 'Botble\\RealEstate\\Models\\Property', '4645e4aa4f3d179a4b3381bbebeb1b4c'),
(441, 66, 'en_US', 'Botble\\RealEstate\\Models\\Property', '01ada7dc0cb433779f5c610f58ba61ed'),
(442, 68, 'en_US', 'Botble\\RealEstate\\Models\\Property', 'b88f079c4eb4678ada0c985551f8cb3d'),
(443, 69, 'en_US', 'Botble\\RealEstate\\Models\\Property', '87165f49cf59b0d9693dfab037b8a477'),
(444, 70, 'en_US', 'Botble\\RealEstate\\Models\\Property', 'd0b90fd0e88fc869b3818d736df8ad16'),
(445, 71, 'en_US', 'Botble\\RealEstate\\Models\\Property', '6235c10c521b202a8741e7e272e0c1ab'),
(446, 72, 'en_US', 'Botble\\RealEstate\\Models\\Property', '9af69db78b2dbbcac3051da174ba3f67'),
(447, 73, 'en_US', 'Botble\\RealEstate\\Models\\Property', '0e2b46b85d8b5301f35bb267e85aacd0'),
(448, 74, 'en_US', 'Botble\\RealEstate\\Models\\Property', '0447ea7eee9d399d7c09dc5e2036c954'),
(449, 75, 'en_US', 'Botble\\RealEstate\\Models\\Property', 'cff0ba28a345fb413fe6239b8c2ddfe7'),
(450, 76, 'en_US', 'Botble\\RealEstate\\Models\\Property', '324611991f8f0608daccaf5c6170434d'),
(451, 77, 'en_US', 'Botble\\RealEstate\\Models\\Property', '80a50303284c87444e676922a729c59e'),
(452, 78, 'en_US', 'Botble\\RealEstate\\Models\\Property', '314a2ebce8b3ab91228793777255e461'),
(453, 82, 'en_US', 'Botble\\RealEstate\\Models\\Property', 'cc11b6a14e6804aaab85e9b269487fce'),
(454, 83, 'en_US', 'Botble\\RealEstate\\Models\\Property', '6e016e08faa90c815e6556321975ac31'),
(455, 84, 'en_US', 'Botble\\RealEstate\\Models\\Property', 'a459af38644982432e5317d7cc9fde73'),
(456, 85, 'en_US', 'Botble\\RealEstate\\Models\\Property', 'b5d800943fda878d6c1ba44f0440f425'),
(457, 80, 'en_US', 'Botble\\RealEstate\\Models\\Property', 'a822f1b13c1173646c388bcbcb874643'),
(458, 86, 'en_US', 'Botble\\RealEstate\\Models\\Property', 'c8c3244dec1743598ff12f0bc06a5c16'),
(459, 79, 'en_US', 'Botble\\RealEstate\\Models\\Property', 'bd79a20368fc8caa660c0ee3d67dccd9'),
(460, 81, 'en_US', 'Botble\\RealEstate\\Models\\Property', '7957ae30c3bb2754726182a297a2c07a'),
(461, 87, 'en_US', 'Botble\\RealEstate\\Models\\Property', '729afaaa84fe753aff5eb6e186819ac5'),
(462, 88, 'en_US', 'Botble\\RealEstate\\Models\\Property', 'd32c26723063b22088a4ecb3b38ca05d'),
(463, 94, 'en_US', 'Botble\\RealEstate\\Models\\Property', '6b1f4217f23612060778a87ac6beff55'),
(464, 95, 'en_US', 'Botble\\RealEstate\\Models\\Property', '193c61d2a7955c829eb3289ff6457e9e'),
(465, 96, 'en_US', 'Botble\\RealEstate\\Models\\Property', 'aa5f46da76bed32a7a9bb3434a9a011f'),
(466, 2977, 'en_US', 'Botble\\RealEstate\\Models\\Property', 'e7c7326bae0c4d8afb65b15f972aeb3c'),
(467, 2981, 'en_US', 'Botble\\RealEstate\\Models\\Property', '68db09007f2cc8055458a7cafa0f4bb4'),
(468, 2983, 'en_US', 'Botble\\RealEstate\\Models\\Property', '28f041a33777724969d8050195f39c27'),
(469, 2985, 'en_US', 'Botble\\RealEstate\\Models\\Property', 'cca067c25536ebbac04962892245c25b'),
(470, 2986, 'en_US', 'Botble\\RealEstate\\Models\\Property', '13cfaf3dfdc49cf2a20e0fd97087faa5'),
(471, 2987, 'en_US', 'Botble\\RealEstate\\Models\\Property', '2f71f807a34701048d1d44ab0e2cb680'),
(472, 2988, 'en_US', 'Botble\\RealEstate\\Models\\Property', '2fc064a00c1a381620c6b87a41533aa1'),
(473, 2990, 'en_US', 'Botble\\RealEstate\\Models\\Property', 'fcc47be204a2f8223b3456287ea7c770'),
(474, 2984, 'en_US', 'Botble\\RealEstate\\Models\\Property', 'b84bfd4bba3c3946a336800264452db4'),
(475, 3001, 'en_US', 'Botble\\RealEstate\\Models\\Property', '902fb15d9913df33124c54428e2c2b7e'),
(476, 3029, 'en_US', 'Botble\\RealEstate\\Models\\Property', '90e0491b6ec45d53edd558bb3a69188c'),
(479, 3032, 'en_US', 'Botble\\RealEstate\\Models\\Property', '35b457eed76659d4a23388354f08143a'),
(480, 3034, 'en_US', 'Botble\\RealEstate\\Models\\Property', 'acabe99ae49d81b14fff8c597b4895e5'),
(481, 3036, 'en_US', 'Botble\\RealEstate\\Models\\Property', '4b095cf13d6ae05ceb83801aa6c1319c'),
(482, 3037, 'en_US', 'Botble\\RealEstate\\Models\\Property', 'e8c2910fb81fd06c2514f043c9a667b3'),
(483, 3038, 'en_US', 'Botble\\RealEstate\\Models\\Property', 'fa480f44416a160a24cd0b166578777a');

-- --------------------------------------------------------

--
-- Table structure for table `media_files`
--

CREATE TABLE `media_files` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder_id` int UNSIGNED NOT NULL DEFAULT '0',
  `mime_type` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int NOT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media_files`
--

INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`) VALUES
(899, 0, '1', 45, 'image/jpeg', 11752, 'accounts/1.jpg', '[]', '2021-06-11 20:56:45', '2021-06-11 20:56:45', NULL),
(900, 0, '10', 45, 'image/jpeg', 27814, 'accounts/10.jpg', '[]', '2021-06-11 20:56:45', '2021-06-11 20:56:45', NULL),
(901, 0, '2', 45, 'image/jpeg', 19005, 'accounts/2.jpg', '[]', '2021-06-11 20:56:45', '2021-06-11 20:56:45', NULL),
(902, 0, '3', 45, 'image/jpeg', 20400, 'accounts/3.jpg', '[]', '2021-06-11 20:56:45', '2021-06-11 20:56:45', NULL),
(903, 0, '4', 45, 'image/jpeg', 26819, 'accounts/4.jpg', '[]', '2021-06-11 20:56:45', '2021-06-11 20:56:45', NULL),
(904, 0, '5', 45, 'image/jpeg', 14367, 'accounts/5.jpg', '[]', '2021-06-11 20:56:45', '2021-06-11 20:56:45', NULL),
(905, 0, '6', 45, 'image/jpeg', 12367, 'accounts/6.jpg', '[]', '2021-06-11 20:56:45', '2021-06-11 20:56:45', NULL),
(906, 0, '7', 45, 'image/jpeg', 20652, 'accounts/7.jpg', '[]', '2021-06-11 20:56:45', '2021-06-11 20:56:45', NULL),
(907, 0, '8', 45, 'image/jpeg', 21164, 'accounts/8.jpg', '[]', '2021-06-11 20:56:45', '2021-06-11 20:56:45', NULL),
(908, 0, '9', 45, 'image/jpeg', 6084, 'accounts/9.jpg', '[]', '2021-06-11 20:56:45', '2021-06-11 20:56:45', NULL),
(910, 0, 'asset-3-at-3x', 47, 'image/png', 76833, 'general/asset-3-at-3x.png', '[]', '2021-06-11 20:56:49', '2021-06-11 20:56:49', NULL),
(911, 0, 'asset-4-at-3x', 47, 'image/png', 84067, 'general/asset-4-at-3x.png', '[]', '2021-06-11 20:56:49', '2021-06-11 20:56:49', NULL),
(912, 0, 'copyright', 47, 'image/jpeg', 128544, 'general/copyright.jpg', '[]', '2021-06-11 20:56:50', '2021-06-11 20:56:50', NULL),
(913, 0, 'termsconditions-pagedesktop', 47, 'image/jpeg', 185151, 'general/termsconditions-pagedesktop.jpg', '[]', '2021-06-11 20:56:50', '2021-06-11 20:56:50', NULL),
(914, 0, 'video-vi-pham-ban-quyen-bi-youtube-thang-tay-trung-tri', 47, 'image/jpeg', 63143, 'general/video-vi-pham-ban-quyen-bi-youtube-thang-tay-trung-tri.jpg', '[]', '2021-06-11 20:56:50', '2021-06-11 20:56:50', NULL),
(915, 0, 'vietnam-office-4', 47, 'image/jpeg', 214366, 'general/vietnam-office-4.jpg', '[]', '2021-06-11 20:56:50', '2021-06-11 20:56:50', NULL),
(916, 0, '1', 48, 'image/jpeg', 66997, 'news/1.jpg', '[]', '2021-06-11 20:56:51', '2021-06-11 20:56:51', NULL),
(917, 0, '10', 48, 'image/jpeg', 66858, 'news/10.jpg', '[]', '2021-06-11 20:56:51', '2021-06-11 20:56:51', NULL),
(918, 0, '11', 48, 'image/jpeg', 86492, 'news/11.jpg', '[]', '2021-06-11 20:56:51', '2021-06-11 20:56:51', NULL),
(919, 0, '12', 48, 'image/jpeg', 91376, 'news/12.jpg', '[]', '2021-06-11 20:56:51', '2021-06-11 20:56:51', NULL),
(920, 0, '13', 48, 'image/jpeg', 82991, 'news/13.jpg', '[]', '2021-06-11 20:56:51', '2021-06-11 20:56:51', NULL),
(921, 0, '14', 48, 'image/jpeg', 66997, 'news/14.jpg', '[]', '2021-06-11 20:56:52', '2021-06-11 20:56:52', NULL),
(922, 0, '15', 48, 'image/jpeg', 111450, 'news/15.jpg', '[]', '2021-06-11 20:56:52', '2021-06-11 20:56:52', NULL),
(923, 0, '16', 48, 'image/jpeg', 464807, 'news/16.jpg', '[]', '2021-06-11 20:56:52', '2021-06-11 20:56:52', NULL),
(924, 0, '2', 48, 'image/jpeg', 51884, 'news/2.jpg', '[]', '2021-06-11 20:56:53', '2021-06-11 20:56:53', NULL),
(925, 0, '3', 48, 'image/jpeg', 132835, 'news/3.jpg', '[]', '2021-06-11 20:56:53', '2021-06-11 20:56:53', NULL),
(926, 0, '4', 48, 'image/jpeg', 948302, 'news/4.jpg', '[]', '2021-06-11 20:56:53', '2021-06-11 20:56:53', NULL),
(927, 0, '5', 48, 'image/jpeg', 66858, 'news/5.jpg', '[]', '2021-06-11 20:56:53', '2021-06-11 20:56:53', NULL),
(928, 0, '6', 48, 'image/jpeg', 328317, 'news/6.jpg', '[]', '2021-06-11 20:56:54', '2021-06-11 20:56:54', NULL),
(929, 0, '7', 48, 'image/jpeg', 249538, 'news/7.jpg', '[]', '2021-06-11 20:56:54', '2021-06-11 20:56:54', NULL),
(930, 0, '8', 48, 'image/jpeg', 147871, 'news/8.jpg', '[]', '2021-06-11 20:56:54', '2021-06-11 20:56:54', NULL),
(931, 0, '9', 48, 'image/jpeg', 194815, 'news/9.jpg', '[]', '2021-06-11 20:56:54', '2021-06-11 20:56:54', NULL),
(932, 0, 'banner', 1, 'image/jpeg', 239032, 'banner/banner.jpg', '[]', '2021-06-11 20:56:55', '2021-06-11 20:56:55', NULL),
(933, 0, '2009-0726-ca-bakersfield-truxtontower', 49, 'image/jpeg', 686056, 'cities/2009-0726-ca-bakersfield-truxtontower.jpg', '[]', '2021-06-11 20:56:56', '2021-06-11 20:56:56', NULL),
(934, 0, 'castillo-de-disneyland', 49, 'image/jpeg', 412609, 'cities/castillo-de-disneyland.jpg', '[]', '2021-06-11 20:56:56', '2021-06-11 20:56:56', NULL),
(935, 0, 'goldengatebridge-001', 49, 'image/jpeg', 371864, 'cities/goldengatebridge-001.jpg', '[]', '2021-06-11 20:56:56', '2021-06-11 20:56:56', NULL),
(936, 0, 'los-angeles-winter-2016', 49, 'image/jpeg', 254681, 'cities/los-angeles-winter-2016.jpg', '[]', '2021-06-11 20:56:56', '2021-06-11 20:56:56', NULL),
(937, 0, 'oaklandnightskylineandlakemerritt', 49, 'image/jpeg', 433073, 'cities/oaklandnightskylineandlakemerritt.jpg', '[]', '2021-06-11 20:56:57', '2021-06-11 20:56:57', NULL),
(938, 0, 'favicon', 50, 'image/png', 3110, 'logo/favicon.png', '[]', '2021-06-11 20:56:57', '2021-06-11 20:56:57', NULL),
(939, 0, 'logo-white', 50, 'image/png', 18120, 'logo/logo-white.png', '[]', '2021-06-11 20:56:57', '2021-06-11 20:56:57', NULL),
(940, 0, 'logo', 50, 'image/png', 23910, 'logo/logo.png', '[]', '2021-06-11 20:56:57', '2021-06-11 20:56:57', NULL),
(941, 0, '1', 51, 'image/jpeg', 750839, 'projects/1.jpg', '[]', '2021-06-11 20:56:57', '2022-03-29 08:31:34', '2022-03-29 08:31:34'),
(942, 0, '11', 51, 'image/jpeg', 1729433, 'projects/11.jpg', '[]', '2021-06-11 20:56:58', '2022-03-29 08:31:34', '2022-03-29 08:31:34'),
(943, 0, '12', 51, 'image/jpeg', 942082, 'projects/12.jpg', '[]', '2021-06-11 20:56:58', '2022-03-29 08:31:34', '2022-03-29 08:31:34'),
(944, 0, '13', 51, 'image/jpeg', 562580, 'projects/13.jpg', '[]', '2021-06-11 20:56:59', '2022-03-29 08:31:34', '2022-03-29 08:31:34'),
(945, 0, '14', 51, 'image/jpeg', 1259051, 'projects/14.jpg', '[]', '2021-06-11 20:56:59', '2022-03-29 08:31:34', '2022-03-29 08:31:34'),
(946, 0, '2', 51, 'image/jpeg', 431985, 'projects/2.jpg', '[]', '2021-06-11 20:57:00', '2022-03-29 08:31:34', '2022-03-29 08:31:34'),
(947, 0, '21', 51, 'image/jpeg', 173885, 'projects/21.jpg', '[]', '2021-06-11 20:57:00', '2022-03-29 08:31:34', '2022-03-29 08:31:34'),
(948, 0, '22', 51, 'image/jpeg', 94488, 'projects/22.jpg', '[]', '2021-06-11 20:57:01', '2022-03-29 08:31:34', '2022-03-29 08:31:34'),
(949, 0, '23', 51, 'image/jpeg', 90740, 'projects/23.jpg', '[]', '2021-06-11 20:57:01', '2022-03-29 08:31:34', '2022-03-29 08:31:34'),
(950, 0, '24', 51, 'image/jpeg', 96624, 'projects/24.jpg', '[]', '2021-06-11 20:57:01', '2022-03-29 08:31:34', '2022-03-29 08:31:34'),
(951, 0, '25', 51, 'image/jpeg', 138699, 'projects/25.jpg', '[]', '2021-06-11 20:57:01', '2022-03-29 08:31:34', '2022-03-29 08:31:34'),
(952, 0, '26', 51, 'image/jpeg', 121747, 'projects/26.jpg', '[]', '2021-06-11 20:57:01', '2022-03-29 08:31:34', '2022-03-29 08:31:34'),
(953, 0, '3', 51, 'image/jpeg', 450933, 'projects/3.jpg', '[]', '2021-06-11 20:57:01', '2022-03-29 08:31:34', '2022-03-29 08:31:34'),
(954, 0, '5', 51, 'image/jpeg', 206027, 'projects/5.jpg', '[]', '2021-06-11 20:57:02', '2022-03-29 08:31:34', '2022-03-29 08:31:34'),
(955, 0, '1-1', 52, 'image/jpeg', 750839, 'properties/1-1.jpg', '[]', '2021-06-11 20:57:02', '2022-03-29 08:30:50', '2022-03-29 08:30:50'),
(956, 0, '1-2', 52, 'image/jpeg', 1587777, 'properties/1-2.jpg', '[]', '2021-06-11 20:57:03', '2022-03-29 08:30:50', '2022-03-29 08:30:50'),
(957, 0, '1-3', 52, 'image/jpeg', 646056, 'properties/1-3.jpg', '[]', '2021-06-11 20:57:03', '2022-03-29 08:30:50', '2022-03-29 08:30:50'),
(958, 0, '1', 52, 'image/jpeg', 80373, 'properties/1.jpg', '[]', '2021-06-11 20:57:04', '2022-03-29 08:30:50', '2022-03-29 08:30:50'),
(959, 0, '10-1', 52, 'image/jpeg', 198455, 'properties/10-1.jpg', '[]', '2021-06-11 20:57:04', '2022-03-29 08:30:50', '2022-03-29 08:30:50'),
(960, 0, '10', 52, 'image/jpeg', 255695, 'properties/10.jpg', '[]', '2021-06-11 20:57:04', '2022-03-29 08:30:50', '2022-03-29 08:30:50'),
(961, 0, '11-1', 52, 'image/jpeg', 127294, 'properties/11-1.jpg', '[]', '2021-06-11 20:57:04', '2022-03-29 08:30:50', '2022-03-29 08:30:50'),
(962, 0, '11', 52, 'image/jpeg', 79403, 'properties/11.jpg', '[]', '2021-06-11 20:57:04', '2022-03-29 08:30:50', '2022-03-29 08:30:50'),
(963, 0, '12', 52, 'image/jpeg', 86373, 'properties/12.jpg', '[]', '2021-06-11 20:57:05', '2022-03-29 08:30:50', '2022-03-29 08:30:50'),
(964, 0, '13', 52, 'image/jpeg', 82991, 'properties/13.jpg', '[]', '2021-06-11 20:57:05', '2022-03-29 08:30:50', '2022-03-29 08:30:50'),
(965, 0, '14', 52, 'image/jpeg', 66997, 'properties/14.jpg', '[]', '2021-06-11 20:57:05', '2022-03-29 08:30:50', '2022-03-29 08:30:50'),
(966, 0, '15', 52, 'image/jpeg', 111450, 'properties/15.jpg', '[]', '2021-06-11 20:57:06', '2022-03-29 08:30:50', '2022-03-29 08:30:50'),
(967, 0, '2-1', 52, 'image/jpeg', 431985, 'properties/2-1.jpg', '[]', '2021-06-11 20:57:06', '2022-03-29 08:30:50', '2022-03-29 08:30:50'),
(968, 0, '2-2', 52, 'image/jpeg', 260049, 'properties/2-2.jpg', '[]', '2021-06-11 20:57:06', '2022-03-29 08:30:50', '2022-03-29 08:30:50'),
(969, 0, '2-3', 52, 'image/jpeg', 684758, 'properties/2-3.jpg', '[]', '2021-06-11 20:57:07', '2022-03-29 08:30:50', '2022-03-29 08:30:50'),
(970, 0, '2', 52, 'image/jpeg', 93464, 'properties/2.jpg', '[]', '2021-06-11 20:57:07', '2022-03-29 08:30:50', '2022-03-29 08:30:50'),
(971, 0, '21', 52, 'image/jpeg', 85475, 'properties/21.jpg', '[]', '2021-06-11 20:57:07', '2022-03-29 08:30:01', '2022-03-29 08:30:01'),
(972, 0, '22-1', 52, 'image/jpeg', 94488, 'properties/22-1.jpg', '[]', '2021-06-11 20:57:07', '2022-03-29 08:30:16', '2022-03-29 08:30:16'),
(973, 0, '22', 52, 'image/jpeg', 713091, 'properties/22.jpg', '[]', '2021-06-11 20:57:07', '2022-03-29 08:30:16', '2022-03-29 08:30:16'),
(974, 0, '23', 52, 'image/jpeg', 111948, 'properties/23.jpg', '[]', '2021-06-11 20:57:07', '2022-03-29 08:30:16', '2022-03-29 08:30:16'),
(975, 0, '24-1', 52, 'image/jpeg', 96624, 'properties/24-1.jpg', '[]', '2021-06-11 20:57:08', '2022-03-29 08:30:16', '2022-03-29 08:30:16'),
(976, 0, '24', 52, 'image/jpeg', 69034, 'properties/24.jpg', '[]', '2021-06-11 20:57:08', '2022-03-29 08:30:16', '2022-03-29 08:30:16'),
(977, 0, '3-1', 52, 'image/jpeg', 450933, 'properties/3-1.jpg', '[]', '2021-06-11 20:57:08', '2022-03-29 08:30:16', '2022-03-29 08:30:16'),
(978, 0, '3-2', 52, 'image/jpeg', 124405, 'properties/3-2.jpg', '[]', '2021-06-11 20:57:08', '2022-03-29 08:30:16', '2022-03-29 08:30:16'),
(979, 0, '3-3', 52, 'image/jpeg', 762723, 'properties/3-3.jpg', '[]', '2021-06-11 20:57:08', '2022-03-29 08:30:16', '2022-03-29 08:30:16'),
(980, 0, '3', 52, 'image/jpeg', 70442, 'properties/3.jpg', '[]', '2021-06-11 20:57:09', '2022-03-29 08:30:16', '2022-03-29 08:30:16'),
(981, 0, '31', 52, 'image/jpeg', 33300, 'properties/31.jpg', '[]', '2021-06-11 20:57:09', '2022-03-29 08:30:16', '2022-03-29 08:30:16'),
(982, 0, '311', 52, 'image/jpeg', 22270, 'properties/311.jpg', '[]', '2021-06-11 20:57:09', '2022-03-29 08:30:16', '2022-03-29 08:30:16'),
(983, 0, '32', 52, 'image/jpeg', 18100, 'properties/32.jpg', '[]', '2021-06-11 20:57:09', '2022-03-29 08:30:16', '2022-03-29 08:30:16'),
(984, 0, '32223-43914-378', 52, 'image/jpeg', 716445, 'properties/32223-43914-378.jpg', '[]', '2021-06-11 20:57:09', '2022-03-29 08:30:16', '2022-03-29 08:30:16'),
(985, 0, '33', 52, 'image/jpeg', 21031, 'properties/33.jpg', '[]', '2021-06-11 20:57:09', '2022-03-29 08:30:16', '2022-03-29 08:30:16'),
(986, 0, '34', 52, 'image/jpeg', 19947, 'properties/34.jpg', '[]', '2021-06-11 20:57:09', '2022-03-29 08:30:16', '2022-03-29 08:30:16'),
(987, 0, '35', 52, 'image/jpeg', 24653, 'properties/35.jpg', '[]', '2021-06-11 20:57:10', '2022-03-29 08:30:16', '2022-03-29 08:30:16'),
(988, 0, '4-1', 52, 'image/jpeg', 433537, 'properties/4-1.jpg', '[]', '2021-06-11 20:57:10', '2022-03-29 08:30:16', '2022-03-29 08:30:16'),
(989, 0, '4-2', 52, 'image/jpeg', 642443, 'properties/4-2.jpg', '[]', '2021-06-11 20:57:10', '2022-03-29 08:30:16', '2022-03-29 08:30:16'),
(990, 0, '4', 52, 'image/jpeg', 96537, 'properties/4.jpg', '[]', '2021-06-11 20:57:11', '2022-03-29 08:30:16', '2022-03-29 08:30:16'),
(991, 0, '411', 52, 'image/jpeg', 29035, 'properties/411.jpg', '[]', '2021-06-11 20:57:11', '2022-03-29 08:30:16', '2022-03-29 08:30:16'),
(992, 0, '42', 52, 'image/jpeg', 24790, 'properties/42.jpg', '[]', '2021-06-11 20:57:11', '2022-03-29 08:30:16', '2022-03-29 08:30:16'),
(993, 0, '421834935dbc9ef3aaa42', 52, 'image/jpeg', 538188, 'properties/421834935dbc9ef3aaa42.jpg', '[]', '2021-06-11 20:57:11', '2022-03-29 08:30:16', '2022-03-29 08:30:16'),
(994, 0, '43', 52, 'image/jpeg', 20920, 'properties/43.jpg', '[]', '2021-06-11 20:57:11', '2022-03-29 08:30:16', '2022-03-29 08:30:16'),
(995, 0, '44', 52, 'image/jpeg', 17781, 'properties/44.jpg', '[]', '2021-06-11 20:57:11', '2022-03-29 08:30:16', '2022-03-29 08:30:16'),
(996, 0, '5-1', 52, 'image/jpeg', 86536, 'properties/5-1.jpg', '[]', '2021-06-11 20:57:11', '2022-03-29 08:30:16', '2022-03-29 08:30:16'),
(997, 0, '5-2', 52, 'image/jpeg', 656323, 'properties/5-2.jpg', '[]', '2021-06-11 20:57:12', '2022-03-29 08:30:16', '2022-03-29 08:30:16'),
(998, 0, '5', 52, 'image/jpeg', 206027, 'properties/5.jpg', '[]', '2021-06-11 20:57:12', '2022-03-29 08:30:16', '2022-03-29 08:30:16'),
(999, 0, '6-1', 52, 'image/jpeg', 252518, 'properties/6-1.jpg', '[]', '2021-06-11 20:57:12', '2022-03-29 08:30:16', '2022-03-29 08:30:16'),
(1000, 0, '6-2', 52, 'image/jpeg', 76855, 'properties/6-2.jpg', '[]', '2021-06-11 20:57:13', '2022-03-29 08:30:16', '2022-03-29 08:30:16'),
(1001, 0, '6', 52, 'image/jpeg', 51884, 'properties/6.jpg', '[]', '2021-06-11 20:57:13', '2022-03-29 08:30:16', '2022-03-29 08:30:16'),
(1002, 0, '7-1', 52, 'image/jpeg', 46086, 'properties/7-1.jpg', '[]', '2021-06-11 20:57:13', '2022-03-29 08:30:16', '2022-03-29 08:30:16'),
(1003, 0, '7-2', 52, 'image/jpeg', 172462, 'properties/7-2.jpg', '[]', '2021-06-11 20:57:13', '2022-03-29 08:30:16', '2022-03-29 08:30:16'),
(1004, 0, '7', 52, 'image/jpeg', 464807, 'properties/7.jpg', '[]', '2021-06-11 20:57:13', '2022-03-29 08:30:16', '2022-03-29 08:30:16'),
(1005, 0, '71', 52, 'image/jpeg', 127638, 'properties/71.jpg', '[]', '2021-06-11 20:57:14', '2022-03-29 08:30:16', '2022-03-29 08:30:16'),
(1006, 0, '72', 52, 'image/jpeg', 99746, 'properties/72.jpg', '[]', '2021-06-11 20:57:14', '2022-03-29 08:30:16', '2022-03-29 08:30:16'),
(1007, 0, '73', 52, 'image/jpeg', 99089, 'properties/73.jpg', '[]', '2021-06-11 20:57:15', '2022-03-29 08:30:16', '2022-03-29 08:30:16'),
(1008, 0, '74', 52, 'image/jpeg', 108268, 'properties/74.jpg', '[]', '2021-06-11 20:57:15', '2022-03-29 08:30:16', '2022-03-29 08:30:16'),
(1009, 0, '75', 52, 'image/jpeg', 144040, 'properties/75.jpg', '[]', '2021-06-11 20:57:15', '2022-03-29 08:30:16', '2022-03-29 08:30:16'),
(1010, 0, '78', 52, 'image/jpeg', 132835, 'properties/78.jpg', '[]', '2021-06-11 20:57:15', '2022-03-29 08:30:16', '2022-03-29 08:30:16'),
(1011, 0, '79', 52, 'image/jpeg', 128490, 'properties/79.jpg', '[]', '2021-06-11 20:57:15', '2022-03-29 08:30:16', '2022-03-29 08:30:16'),
(1012, 0, '8-1', 52, 'image/jpeg', 35774, 'properties/8-1.jpg', '[]', '2021-06-11 20:57:16', '2022-03-29 08:30:01', '2022-03-29 08:30:01'),
(1013, 0, '8-2', 52, 'image/jpeg', 116324, 'properties/8-2.jpg', '[]', '2021-06-11 20:57:16', '2022-03-29 08:29:51', '2022-03-29 08:29:51'),
(1014, 0, '8', 52, 'image/jpeg', 542999, 'properties/8.jpg', '[]', '2021-06-11 20:57:16', '2022-03-29 08:29:51', '2022-03-29 08:29:51'),
(1015, 0, '9-1', 52, 'image/jpeg', 82701, 'properties/9-1.jpg', '[]', '2021-06-11 20:57:17', '2022-03-29 08:29:51', '2022-03-29 08:29:51'),
(1016, 0, '9', 52, 'image/jpeg', 98602, 'properties/9.jpg', '[]', '2021-06-11 20:57:17', '2022-03-29 08:29:51', '2022-03-29 08:29:51'),
(1017, 0, 'a1-1', 52, 'image/jpeg', 244411, 'properties/a1-1.jpg', '[]', '2021-06-11 20:57:17', '2022-03-29 08:29:51', '2022-03-29 08:29:51'),
(1018, 0, 'a1-2', 52, 'image/jpeg', 213475, 'properties/a1-2.jpg', '[]', '2021-06-11 20:57:17', '2022-03-29 08:29:51', '2022-03-29 08:29:51'),
(1019, 0, 'a1', 52, 'image/jpeg', 104460, 'properties/a1.jpg', '[]', '2021-06-11 20:57:18', '2022-03-29 08:29:51', '2022-03-29 08:29:51'),
(1020, 0, 'a10', 52, 'image/jpeg', 135558, 'properties/a10.jpg', '[]', '2021-06-11 20:57:18', '2022-03-29 08:29:51', '2022-03-29 08:29:51'),
(1021, 0, 'a2-1', 52, 'image/jpeg', 58090, 'properties/a2-1.jpg', '[]', '2021-06-11 20:57:18', '2022-03-29 08:29:51', '2022-03-29 08:29:51'),
(1022, 0, 'a2-2', 52, 'image/jpeg', 110869, 'properties/a2-2.jpg', '[]', '2021-06-11 20:57:18', '2022-03-29 08:29:51', '2022-03-29 08:29:51'),
(1023, 0, 'a2', 52, 'image/jpeg', 79585, 'properties/a2.jpg', '[]', '2021-06-11 20:57:19', '2022-03-29 08:29:51', '2022-03-29 08:29:51'),
(1024, 0, 'a3-1', 52, 'image/jpeg', 103281, 'properties/a3-1.jpg', '[]', '2021-06-11 20:57:19', '2022-03-29 08:29:51', '2022-03-29 08:29:51'),
(1025, 0, 'a3-2', 52, 'image/jpeg', 180354, 'properties/a3-2.jpg', '[]', '2021-06-11 20:57:19', '2022-03-29 08:29:51', '2022-03-29 08:29:51'),
(1026, 0, 'a3', 52, 'image/jpeg', 182143, 'properties/a3.jpg', '[]', '2021-06-11 20:57:19', '2022-03-29 08:29:51', '2022-03-29 08:29:51'),
(1027, 0, 'a4-1', 52, 'image/jpeg', 93023, 'properties/a4-1.jpg', '[]', '2021-06-11 20:57:20', '2022-03-29 08:29:51', '2022-03-29 08:29:51'),
(1028, 0, 'a4-2', 52, 'image/jpeg', 91918, 'properties/a4-2.jpg', '[]', '2021-06-11 20:57:20', '2022-03-29 08:29:51', '2022-03-29 08:29:51'),
(1029, 0, 'a4', 52, 'image/jpeg', 79498, 'properties/a4.jpg', '[]', '2021-06-11 20:57:20', '2022-03-29 08:29:51', '2022-03-29 08:29:51'),
(1030, 0, 'a5-1', 52, 'image/jpeg', 184906, 'properties/a5-1.jpg', '[]', '2021-06-11 20:57:21', '2022-03-29 08:29:51', '2022-03-29 08:29:51'),
(1031, 0, 'a5', 52, 'image/jpeg', 116582, 'properties/a5.jpg', '[]', '2021-06-11 20:57:21', '2022-03-29 08:29:51', '2022-03-29 08:29:51'),
(1032, 0, 'a6-1', 52, 'image/jpeg', 581176, 'properties/a6-1.jpg', '[]', '2021-06-11 20:57:21', '2022-03-29 08:29:51', '2022-03-29 08:29:51'),
(1033, 0, 'a6', 52, 'image/jpeg', 82219, 'properties/a6.jpg', '[]', '2021-06-11 20:57:21', '2022-03-29 08:29:51', '2022-03-29 08:29:51'),
(1034, 0, 'a7', 52, 'image/jpeg', 436253, 'properties/a7.jpg', '[]', '2021-06-11 20:57:22', '2022-03-29 08:29:51', '2022-03-29 08:29:51'),
(1035, 0, 'a8', 52, 'image/jpeg', 220787, 'properties/a8.jpg', '[]', '2021-06-11 20:57:22', '2022-03-29 08:29:51', '2022-03-29 08:29:51'),
(1036, 0, 'a9', 52, 'image/jpeg', 174424, 'properties/a9.jpg', '[]', '2021-06-11 20:57:22', '2022-03-29 08:29:51', '2022-03-29 08:29:51'),
(1037, 0, 'b1', 52, 'image/jpeg', 169643, 'properties/b1.jpg', '[]', '2021-06-11 20:57:23', '2022-03-29 08:29:51', '2022-03-29 08:29:51'),
(1038, 0, 'b2', 52, 'image/jpeg', 92903, 'properties/b2.jpg', '[]', '2021-06-11 20:57:23', '2022-03-29 08:29:51', '2022-03-29 08:29:51'),
(1039, 0, 'b3', 52, 'image/jpeg', 130884, 'properties/b3.jpg', '[]', '2021-06-11 20:57:23', '2022-03-29 08:29:51', '2022-03-29 08:29:51'),
(1040, 0, 'b4-1', 52, 'image/jpeg', 151288, 'properties/b4-1.jpg', '[]', '2021-06-11 20:57:23', '2022-03-29 08:29:51', '2022-03-29 08:29:51'),
(1041, 0, 'b4', 52, 'image/jpeg', 101182, 'properties/b4.jpg', '[]', '2021-06-11 20:57:24', '2022-03-29 08:29:51', '2022-03-29 08:29:51'),
(1042, 0, 'b5-1', 52, 'image/jpeg', 136853, 'properties/b5-1.jpg', '[]', '2021-06-11 20:57:24', '2022-03-29 08:29:51', '2022-03-29 08:29:51'),
(1043, 0, 'b5', 52, 'image/jpeg', 69849, 'properties/b5.jpg', '[]', '2021-06-11 20:57:24', '2022-03-29 08:29:51', '2022-03-29 08:29:51'),
(1044, 0, 'b6', 52, 'image/jpeg', 104434, 'properties/b6.jpg', '[]', '2021-06-11 20:57:24', '2022-03-29 08:29:51', '2022-03-29 08:29:51'),
(1045, 0, 'download', 52, 'image/jpeg', 10833, 'properties/download.jpg', '[]', '2021-06-11 20:57:25', '2022-03-29 08:29:51', '2022-03-29 08:29:51'),
(1046, 0, 'e1', 52, 'image/jpeg', 1105244, 'properties/e1.jpg', '[]', '2021-06-11 20:57:25', '2022-03-29 08:29:51', '2022-03-29 08:29:51'),
(1047, 0, 'e2', 52, 'image/jpeg', 1062944, 'properties/e2.jpg', '[]', '2021-06-11 20:57:25', '2022-03-29 08:29:51', '2022-03-29 08:29:51'),
(1048, 0, 'e3', 52, 'image/jpeg', 1113759, 'properties/e3.jpg', '[]', '2021-06-11 20:57:26', '2022-03-29 08:29:51', '2022-03-29 08:29:51'),
(1049, 0, 'e4', 52, 'image/jpeg', 1003508, 'properties/e4.jpg', '[]', '2021-06-11 20:57:26', '2022-03-29 08:29:51', '2022-03-29 08:29:51'),
(1050, 0, 'e5', 52, 'image/jpeg', 948302, 'properties/e5.jpg', '[]', '2021-06-11 20:57:26', '2022-03-29 08:29:51', '2022-03-29 08:29:51'),
(1051, 0, 'e7', 52, 'image/jpeg', 916078, 'properties/e7.jpg', '[]', '2021-06-11 20:57:27', '2022-03-29 08:29:51', '2022-03-29 08:29:51'),
(1052, 0, 'e8', 52, 'image/jpeg', 820972, 'properties/e8.jpg', '[]', '2021-06-11 20:57:27', '2022-03-29 08:29:51', '2022-03-29 08:29:51'),
(1053, 0, 'p1', 52, 'image/jpeg', 198758, 'properties/p1.jpg', '[]', '2021-06-11 20:57:28', '2022-03-29 08:29:39', '2022-03-29 08:29:39'),
(1054, 0, 'p2', 52, 'image/jpeg', 427643, 'properties/p2.jpg', '[]', '2021-06-11 20:57:28', '2022-03-29 08:29:39', '2022-03-29 08:29:39'),
(1055, 0, 'property-video-thumb', 52, 'image/jpeg', 26909, 'properties/property-video-thumb.jpg', '[]', '2021-06-11 20:57:29', '2022-03-29 08:29:39', '2022-03-29 08:29:39'),
(1056, 0, 'q1', 52, 'image/jpeg', 458500, 'properties/q1.jpg', '[]', '2021-06-11 20:57:29', '2022-03-29 08:29:39', '2022-03-29 08:29:39'),
(1057, 0, 'q2', 52, 'image/jpeg', 233211, 'properties/q2.jpg', '[]', '2021-06-11 20:57:29', '2022-03-29 08:29:39', '2022-03-29 08:29:39'),
(1058, 0, 'q3', 52, 'image/jpeg', 328317, 'properties/q3.jpg', '[]', '2021-06-11 20:57:29', '2022-03-29 08:29:39', '2022-03-29 08:29:39'),
(1059, 0, 'q6', 52, 'image/jpeg', 249538, 'properties/q6.jpg', '[]', '2021-06-11 20:57:30', '2022-03-29 08:29:39', '2022-03-29 08:29:39'),
(1060, 0, 'q7', 52, 'image/jpeg', 147871, 'properties/q7.jpg', '[]', '2021-06-11 20:57:30', '2022-03-29 08:29:39', '2022-03-29 08:29:39'),
(1061, 0, 'q8', 52, 'image/jpeg', 194815, 'properties/q8.jpg', '[]', '2021-06-11 20:57:30', '2022-03-29 08:29:39', '2022-03-29 08:29:39'),
(1062, 0, 't1', 52, 'image/jpeg', 66858, 'properties/t1.jpg', '[]', '2021-06-11 20:57:31', '2022-03-29 08:29:39', '2022-03-29 08:29:39'),
(1063, 0, 't2', 52, 'image/jpeg', 86492, 'properties/t2.jpg', '[]', '2021-06-11 20:57:31', '2022-03-29 08:29:39', '2022-03-29 08:29:39'),
(1064, 0, 't3', 52, 'image/jpeg', 91376, 'properties/t3.jpg', '[]', '2021-06-11 20:57:31', '2022-03-29 08:29:39', '2022-03-29 08:29:39'),
(1065, 0, 't4', 52, 'image/jpeg', 77280, 'properties/t4.jpg', '[]', '2021-06-11 20:57:31', '2022-03-29 08:29:39', '2022-03-29 08:29:39'),
(1066, 0, 't5', 52, 'image/jpeg', 94036, 'properties/t5.jpg', '[]', '2021-06-11 20:57:31', '2022-03-29 08:29:39', '2022-03-29 08:29:39'),
(1067, 0, 'wp1a', 52, 'image/jpeg', 168494, 'properties/wp1a.jpg', '[]', '2021-06-11 20:57:31', '2022-03-29 08:29:39', '2022-03-29 08:29:39'),
(1068, 0, 'avatar', 53, 'image/jpeg', 151486, 'users/avatar.jpg', '[]', '2021-06-11 20:57:32', '2021-06-11 20:57:32', NULL),
(1069, 1, 'techneeq', 0, 'image/png', 3625, 'techneeq.png', '[]', '2022-01-18 10:47:43', '2022-02-28 14:47:19', '2022-02-28 14:47:19'),
(1070, 1, 'LOGO-web', 0, 'image/png', 55151, 'logo-web.png', '[]', '2022-01-18 10:54:43', '2022-01-18 10:54:43', NULL),
(1071, 1, 'gulberg-greens-maps-plots-oy3nzga02n5olz2gwjfp11bsdkwbzcob1hue0tmuls', 0, 'image/jpeg', 115890, 'gulberg-greens-maps-plots-oy3nzga02n5olz2gwjfp11bsdkwbzcob1hue0tmuls.jpg', '[]', '2022-01-19 02:59:31', '2022-01-19 02:59:31', NULL),
(1072, 1, 'Eighteen-Islamabad', 0, 'image/jpeg', 77027, 'eighteen-islamabad.jpg', '[]', '2022-01-19 03:04:20', '2022-01-19 03:04:20', NULL),
(1073, 1, 'Bahria_Enclave_Entrance', 0, 'image/jpeg', 5368964, 'bahria-enclave-entrance.jpg', '[]', '2022-01-19 03:10:14', '2022-01-19 03:10:14', NULL),
(1074, 1, 'PVC-WEB_PVC-isl', 0, 'image/jpeg', 94057, 'pvc-web-pvc-isl.jpg', '[]', '2022-01-19 03:14:36', '2022-01-19 03:14:36', NULL),
(1075, 1, 'TAJ-RESIDENCRE', 0, 'image/png', 842319, 'taj-residencre.png', '[]', '2022-01-19 03:17:12', '2022-01-19 03:17:12', NULL),
(1076, 1, 'gallery5', 51, 'image/jpeg', 177800, 'projects/gallery5.jpg', '[]', '2022-02-03 00:34:12', '2022-03-29 08:31:34', '2022-03-29 08:31:34'),
(1077, 1, '9_roomType15624', 51, 'image/jpeg', 49590, 'projects/9-roomtype15624.jpg', '[]', '2022-02-03 00:35:00', '2022-03-29 08:31:34', '2022-03-29 08:31:34'),
(1078, 1, 'mre-ex2', 51, 'image/jpeg', 493988, 'projects/mre-ex2.jpeg', '[]', '2022-02-03 00:35:45', '2022-03-29 08:31:34', '2022-03-29 08:31:34'),
(1079, 1, '5c48b84f2bdd7f557a0c5255', 52, 'image/webp', 42526, 'properties/5c48b84f2bdd7f557a0c5255.webp', '[]', '2022-02-03 02:49:54', '2022-03-29 08:29:39', '2022-03-29 08:29:39'),
(1080, 1, 'Luxury-Apartment', 52, 'image/jpeg', 111016, 'properties/luxury-apartment.jpg', '[]', '2022-02-03 02:58:13', '2022-03-29 08:29:39', '2022-03-29 08:29:39'),
(1081, 1, 'd1a285c1b0c9d6d03ccfdef63ac7379b', 52, 'image/jpeg', 46848, 'properties/d1a285c1b0c9d6d03ccfdef63ac7379b.jpg', '[]', '2022-02-03 03:00:19', '2022-03-29 08:29:39', '2022-03-29 08:29:39'),
(1082, 1, 'osaka', 52, 'image/jpeg', 48438, 'properties/osaka.jpg', '[]', '2022-02-04 06:48:06', '2022-03-29 08:29:39', '2022-03-29 08:29:39'),
(1083, 1, 'bermuda-dunes-banner3', 52, 'image/jpeg', 392203, 'properties/bermuda-dunes-banner3.jpg', '[]', '2022-02-04 06:50:02', '2022-03-29 08:29:39', '2022-03-29 08:29:39'),
(1084, 1, '5139-Seneca-Drive-Dallas-Texas-French-Chateau-Home-Classical-Architecture_1', 52, 'image/jpeg', 404643, 'properties/5139-seneca-drive-dallas-texas-french-chateau-home-classical-architecture-1.jpg', '[]', '2022-02-04 06:52:03', '2022-03-29 08:29:39', '2022-03-29 08:29:39'),
(1085, 5, 'gallery5', 53, 'image/jpeg', 177800, 'users/gallery5.jpg', '[]', '2022-02-09 00:28:42', '2022-02-09 00:28:42', NULL),
(1086, 15, 'deluxe1', 53, 'image/jpeg', 289627, 'users/deluxe1.jpeg', '[]', '2022-02-11 08:01:38', '2022-02-11 08:01:38', NULL),
(1087, 1, 'MURREE_delux_single1', 53, 'image/jpeg', 309117, 'users/murree-delux-single1.jpeg', '[]', '2022-02-15 02:42:25', '2022-02-15 02:42:25', NULL),
(1088, 1, 'AHL-img-1', 53, 'image/webp', 57122, 'users/ahl-img-1.webp', '[]', '2022-02-17 08:23:02', '2022-02-17 08:23:02', NULL),
(1089, 1, 'makanumber-UAE-logo-w', 0, 'image/png', 25306, 'makanumber-uae-logo-w.png', '[]', '2022-02-21 11:22:49', '2022-02-21 11:22:49', NULL),
(1090, 1, 'Makanumber-Icon', 0, 'image/png', 34915, 'makanumber-icon.png', '[]', '2022-02-21 12:56:54', '2022-02-21 12:56:54', NULL),
(1091, 1, 'screencapture-makanumber-properties-image-testing-prop-2022-03-22-16_44_37', 52, 'image/png', 866953, 'properties/screencapture-makanumber-properties-image-testing-prop-2022-03-22-16-44-37.png', '[]', '2022-03-26 11:38:32', '2022-03-26 14:52:50', '2022-03-26 14:52:50'),
(1092, 1, 'New on chessy - Copy', 52, 'image/jpeg', 85794, 'properties/new-on-chessy-copy.jpg', '[]', '2022-03-26 13:16:20', '2022-03-26 14:53:00', '2022-03-26 14:53:00'),
(1093, 1, 'New on chessy', 52, 'image/jpeg', 85794, 'properties/new-on-chessy.jpg', '[]', '2022-03-26 13:16:20', '2022-03-26 14:53:00', '2022-03-26 14:53:00'),
(1094, 1, 'easy market grid - Copy', 52, 'image/jpeg', 78304, 'properties/easy-market-grid-copy.jpg', '[]', '2022-03-26 13:16:21', '2022-03-26 14:53:00', '2022-03-26 14:53:00'),
(1095, 1, 'easy market grid', 52, 'image/jpeg', 78304, 'properties/easy-market-grid.jpg', '[]', '2022-03-26 13:16:22', '2022-03-26 14:53:00', '2022-03-26 14:53:00'),
(1096, 1, 'coin-icon - Copy', 52, 'image/png', 8069, 'properties/coin-icon-copy.png', '[]', '2022-03-26 13:16:22', '2022-03-26 14:53:00', '2022-03-26 14:53:00'),
(1097, 1, 'coin-icon', 52, 'image/png', 8069, 'properties/coin-icon.png', '[]', '2022-03-26 13:16:23', '2022-03-26 14:53:00', '2022-03-26 14:53:00'),
(1098, 1, 'goodservice - Copy', 52, 'image/png', 112221, 'properties/goodservice-copy.png', '[]', '2022-03-26 13:16:23', '2022-03-26 14:53:00', '2022-03-26 14:53:00'),
(1099, 1, 'goodservice', 52, 'image/png', 112221, 'properties/goodservice.png', '[]', '2022-03-26 13:16:25', '2022-03-26 14:53:00', '2022-03-26 14:53:00'),
(1100, 1, 'download (3)', 52, 'image/png', 601269, 'properties/download-3.png', '[]', '2022-03-26 13:20:20', '2022-03-29 08:29:39', '2022-03-29 08:29:39'),
(1101, 1, '1648306261', 52, 'image/png', 112221, 'properties/1648306261.png', '[]', '2022-03-26 14:52:37', '2022-03-29 08:29:39', '2022-03-29 08:29:39'),
(1102, 1, '127.0.0.1_8000_properties_asfasfvxdfgb (1)', 52, 'image/png', 368804, 'properties/127001-8000-properties-asfasfvxdfgb-1.png', '[]', '2022-03-29 13:12:58', '2022-03-29 13:12:58', NULL),
(1103, 1, '1648306261 (1)', 52, 'image/png', 112221, 'properties/1648306261-1.png', '[]', '2022-04-04 09:06:24', '2022-04-04 09:06:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `media_folders`
--

CREATE TABLE `media_folders` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media_folders`
--

INSERT INTO `media_folders` (`id`, `user_id`, `name`, `slug`, `parent_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Banners', 'banner', 0, '2019-11-16 02:00:43', '2019-11-16 02:00:50', NULL),
(45, 0, 'accounts', 'accounts', 0, '2021-06-11 20:56:45', '2021-06-11 20:56:45', NULL),
(47, 0, 'general', 'general', 0, '2021-06-11 20:56:49', '2021-06-11 20:56:49', NULL),
(48, 0, 'news', 'news', 0, '2021-06-11 20:56:51', '2021-06-11 20:56:51', NULL),
(49, 0, 'cities', 'cities', 0, '2021-06-11 20:56:56', '2021-06-11 20:56:56', NULL),
(50, 0, 'logo', 'logo', 0, '2021-06-11 20:56:57', '2021-06-11 20:56:57', NULL),
(51, 0, 'projects', 'projects', 0, '2021-06-11 20:56:57', '2021-06-11 20:56:57', NULL),
(52, 0, 'properties', 'properties', 0, '2021-06-11 20:57:02', '2021-06-11 20:57:02', NULL),
(53, 0, 'users', 'users', 0, '2021-06-11 20:57:32', '2021-06-11 20:57:32', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `media_settings`
--

CREATE TABLE `media_settings` (
  `id` int UNSIGNED NOT NULL,
  `key` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `media_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Main menu', 'main-menu', 'published', '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(2, 'About', 'about', 'published', '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(3, 'More information', 'more-information', 'published', '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(4, 'News', 'news', 'published', '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(5, 'Menu chính', 'menu-chinh', 'published', '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(6, 'Về chúng tôi', 've-chung-toi', 'published', '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(7, 'Thông tin thêm', 'thong-tin-them', 'published', '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(8, 'Tin tức', 'tin-tuc', 'published', '2021-06-11 20:56:49', '2021-06-11 20:56:49');

-- --------------------------------------------------------

--
-- Table structure for table `menu_locations`
--

CREATE TABLE `menu_locations` (
  `id` int UNSIGNED NOT NULL,
  `menu_id` int UNSIGNED NOT NULL,
  `location` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_locations`
--

INSERT INTO `menu_locations` (`id`, `menu_id`, `location`, `created_at`, `updated_at`) VALUES
(1, 1, 'main-menu', '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(2, 5, 'main-menu', '2021-06-11 20:56:49', '2021-06-11 20:56:49');

-- --------------------------------------------------------

--
-- Table structure for table `menu_nodes`
--

CREATE TABLE `menu_nodes` (
  `id` int UNSIGNED NOT NULL,
  `menu_id` int UNSIGNED NOT NULL,
  `parent_id` int UNSIGNED NOT NULL DEFAULT '0',
  `reference_id` int UNSIGNED DEFAULT '0',
  `reference_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_font` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css_class` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `has_child` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_nodes`
--

INSERT INTO `menu_nodes` (`id`, `menu_id`, `parent_id`, `reference_id`, `reference_type`, `url`, `icon_font`, `position`, `title`, `css_class`, `target`, `has_child`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 0, NULL, '/projects', NULL, 0, 'Projects', NULL, '_self', 0, '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(2, 1, 0, 0, NULL, '/properties', NULL, 0, 'Properties', NULL, '_self', 0, '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(3, 1, 0, 0, NULL, '/agents', NULL, 0, 'Agents', NULL, '_self', 0, '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(4, 1, 0, 2, 'Botble\\Page\\Models\\Page', '/news', NULL, 0, 'News', NULL, '_self', 0, '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(5, 1, 0, 0, NULL, '/careers', NULL, 0, 'Careers', NULL, '_self', 0, '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(6, 1, 0, 4, 'Botble\\Page\\Models\\Page', '/contact', NULL, 0, 'Contact', NULL, '_self', 0, '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(7, 2, 0, 3, 'Botble\\Page\\Models\\Page', '/about-us', NULL, 0, 'About us', NULL, '_self', 0, '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(8, 2, 0, 4, 'Botble\\Page\\Models\\Page', '/contact', NULL, 0, 'Contact us', NULL, '_self', 0, '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(9, 2, 0, 0, NULL, '/careers', NULL, 0, 'Careers', NULL, '_self', 0, '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(10, 2, 0, 5, 'Botble\\Page\\Models\\Page', '/terms-conditions', NULL, 0, 'Terms & Conditions', NULL, '_self', 0, '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(11, 3, 0, 0, NULL, '/projects', NULL, 0, 'All projects', NULL, '_self', 0, '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(12, 3, 0, 0, NULL, '/properties', NULL, 0, 'All properties', NULL, '_self', 0, '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(13, 3, 0, 0, NULL, '/properties?type=sale', NULL, 0, 'Houses for sale', NULL, '_self', 0, '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(14, 3, 0, 0, NULL, '/properties?type=rent', NULL, 0, 'Houses for rent', NULL, '_self', 0, '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(15, 4, 0, 2, 'Botble\\Page\\Models\\Page', '/news', NULL, 0, 'Latest news', NULL, '_self', 0, '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(16, 4, 0, 2, 'Botble\\Blog\\Models\\Category', '/news/house-architecture', NULL, 0, 'House architecture', NULL, '_self', 0, '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(17, 4, 0, 4, 'Botble\\Blog\\Models\\Category', '/news/house-design', NULL, 0, 'House design', NULL, '_self', 0, '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(18, 4, 0, 6, 'Botble\\Blog\\Models\\Category', '/news/building-materials', NULL, 0, 'Building materials', NULL, '_self', 0, '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(19, 5, 0, 0, NULL, '/projects', NULL, 0, 'Dự án', NULL, '_self', 0, '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(20, 5, 0, 0, NULL, '/properties', NULL, 0, 'Nhà - Căn Hộ', NULL, '_self', 0, '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(21, 5, 0, 0, NULL, '/agents', NULL, 0, 'Đại lý', NULL, '_self', 0, '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(22, 5, 0, 8, 'Botble\\Page\\Models\\Page', '/tin-tuc', NULL, 0, 'Tin tức', NULL, '_self', 0, '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(23, 5, 0, 0, NULL, '/careers', NULL, 0, 'Tuyển dụng', NULL, '_self', 0, '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(24, 5, 0, 10, 'Botble\\Page\\Models\\Page', '/lien-he', NULL, 0, 'Liên hệ', NULL, '_self', 0, '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(25, 6, 0, 9, 'Botble\\Page\\Models\\Page', '/ve-chung-toi', NULL, 0, 'Về chúng tôi', NULL, '_self', 0, '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(26, 6, 0, 10, 'Botble\\Page\\Models\\Page', '/lien-he', NULL, 0, 'Liên hệ', NULL, '_self', 0, '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(27, 6, 0, 0, NULL, '/careers', NULL, 0, 'Tuyển dụng', NULL, '_self', 0, '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(28, 6, 0, 11, 'Botble\\Page\\Models\\Page', '/dieu-khoan-va-quy-dinh', NULL, 0, 'Điều khoản và quy định', NULL, '_self', 0, '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(29, 7, 0, 0, NULL, '/projects', NULL, 0, 'Dự án', NULL, '_self', 0, '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(30, 7, 0, 0, NULL, '/properties', NULL, 0, 'Nhà - Căn hộ', NULL, '_self', 0, '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(31, 7, 0, 0, NULL, '/properties?type=sale', NULL, 0, 'Nhà bán', NULL, '_self', 0, '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(32, 7, 0, 0, NULL, '/properties?type=rent', NULL, 0, 'Nhà cho thuê', NULL, '_self', 0, '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(33, 8, 0, 2, 'Botble\\Page\\Models\\Page', '/news', NULL, 0, 'Tin tức mới nhất', NULL, '_self', 0, '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(34, 8, 0, 3, 'Botble\\Blog\\Models\\Category', '/news/kien-truc-nha', NULL, 0, 'Kiến trúc nhà', NULL, '_self', 0, '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(35, 8, 0, 5, 'Botble\\Blog\\Models\\Category', '/news/thiet-ke-nha', NULL, 0, 'Thiết kế nhà', NULL, '_self', 0, '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(36, 8, 0, 7, 'Botble\\Blog\\Models\\Category', '/news/vat-lieu-xay-dung', NULL, 0, 'Vật liệu xây dựng', NULL, '_self', 0, '2021-06-11 20:56:49', '2021-06-11 20:56:49');

-- --------------------------------------------------------

--
-- Table structure for table `meta_boxes`
--

CREATE TABLE `meta_boxes` (
  `id` int UNSIGNED NOT NULL,
  `reference_id` int UNSIGNED NOT NULL,
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `reference_type` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meta_boxes`
--

INSERT INTO `meta_boxes` (`id`, `reference_id`, `meta_key`, `meta_value`, `reference_type`, `created_at`, `updated_at`) VALUES
(5, 1, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\PropertyFeature', '2019-11-17 21:40:58', '2019-11-17 21:40:58'),
(6, 2, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\PropertyFeature', '2019-11-17 21:41:43', '2019-11-17 21:41:43'),
(16, 1, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Category', '2019-11-18 02:33:35', '2019-11-18 02:33:35'),
(19, 1, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Tag', '2019-11-18 02:51:35', '2019-11-18 02:51:35'),
(21, 2, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Tag', '2019-11-18 02:55:53', '2019-11-18 02:55:53'),
(24, 3, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Tag', '2019-11-18 03:07:27', '2019-11-18 03:07:27'),
(34, 7, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Project', '2019-11-21 01:54:36', '2019-11-21 01:54:36'),
(35, 8, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Project', '2019-11-21 02:28:09', '2019-11-21 02:28:09'),
(36, 9, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Project', '2019-11-21 02:40:25', '2019-11-21 02:40:25'),
(37, 10, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Project', '2019-11-21 02:58:55', '2019-11-21 02:58:55'),
(38, 11, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Project', '2019-11-21 03:16:25', '2019-11-21 03:16:25'),
(39, 12, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Project', '2019-11-21 03:25:22', '2019-11-21 03:25:22'),
(40, 18, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-21 05:51:54', '2019-11-21 05:51:54'),
(41, 19, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-21 06:03:11', '2019-11-21 06:03:11'),
(42, 20, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-21 06:12:15', '2019-11-21 06:12:15'),
(43, 21, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-21 06:26:59', '2019-11-21 06:26:59'),
(44, 22, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-21 06:56:50', '2019-11-21 06:56:50'),
(45, 23, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-21 07:18:36', '2019-11-21 07:18:36'),
(46, 24, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-21 07:26:48', '2019-11-21 07:26:48'),
(47, 25, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-21 07:34:38', '2019-11-21 07:34:38'),
(48, 26, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-21 07:40:46', '2019-11-21 07:40:46'),
(49, 27, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-21 07:45:34', '2019-11-21 07:45:34'),
(52, 2, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Category', '2019-11-21 07:49:25', '2019-11-21 07:49:25'),
(53, 3, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Category', '2019-11-21 07:49:35', '2019-11-21 07:49:35'),
(54, 4, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Category', '2019-11-21 07:50:02', '2019-11-21 07:50:02'),
(55, 5, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Category', '2019-11-21 07:50:17', '2019-11-21 07:50:17'),
(56, 6, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Category', '2019-11-21 07:50:36', '2019-11-21 07:50:36'),
(57, 7, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Category', '2019-11-21 07:50:58', '2019-11-21 07:50:58'),
(58, 28, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-21 19:53:17', '2019-11-21 19:53:17'),
(59, 29, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-21 19:59:16', '2019-11-21 19:59:16'),
(60, 30, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-22 00:29:01', '2019-11-22 00:29:01'),
(61, 31, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-22 00:42:28', '2019-11-22 00:42:28'),
(62, 32, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-22 00:47:18', '2019-11-22 00:47:18'),
(63, 33, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-22 00:57:15', '2019-11-22 00:57:15'),
(64, 34, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\RealEstate\\Models\\Property', '2019-11-22 01:06:09', '2019-11-22 01:06:09'),
(65, 8, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Category', '2019-11-22 01:26:08', '2019-11-22 01:26:08'),
(66, 5, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2019-11-22 01:26:31', '2019-11-22 01:26:31'),
(67, 6, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2019-11-22 01:29:45', '2019-11-22 01:29:45'),
(68, 7, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2019-11-22 01:33:23', '2019-11-22 01:33:23'),
(69, 8, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Blog\\Models\\Post', '2019-11-22 01:39:38', '2019-11-22 01:39:38'),
(74, 1, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Career\\Models\\Career', '2019-11-30 19:43:10', '2019-11-30 19:43:10'),
(75, 2, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Career\\Models\\Career', '2019-11-30 19:49:07', '2019-11-30 19:49:07'),
(76, 3, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Career\\Models\\Career', '2019-11-30 19:52:42', '2019-11-30 19:52:42'),
(77, 4, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Career\\Models\\Career', '2019-11-30 19:56:50', '2019-11-30 19:56:50'),
(79, 5, 'seo_meta', '[{\"seo_title\":null,\"seo_description\":null}]', 'Botble\\Career\\Models\\Career', '2021-01-03 17:26:32', '2021-01-03 17:26:32'),
(83, 8, 'video', '[{\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]', 'Botble\\RealEstate\\Models\\Property', '2021-04-29 20:46:36', '2022-02-04 06:48:15'),
(88, 18, 'video', '[{\"thumbnail\":\"\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]', 'Botble\\RealEstate\\Models\\Property', '2021-04-29 20:46:36', '2021-04-29 20:46:36'),
(89, 20, 'video', '[{\"thumbnail\":\"properties\\/property-video-thumb.jpg\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]', 'Botble\\RealEstate\\Models\\Property', '2021-04-29 20:46:36', '2021-04-29 20:46:36'),
(90, 22, 'video', '[{\"thumbnail\":\"\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]', 'Botble\\RealEstate\\Models\\Property', '2021-04-29 20:46:36', '2021-04-29 20:46:36'),
(91, 24, 'video', '[{\"thumbnail\":\"properties\\/property-video-thumb.jpg\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]', 'Botble\\RealEstate\\Models\\Property', '2021-04-29 20:46:36', '2021-04-29 20:46:36'),
(92, 26, 'video', '[{\"thumbnail\":\"\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]', 'Botble\\RealEstate\\Models\\Property', '2021-04-29 20:46:36', '2021-04-29 20:46:36'),
(93, 28, 'video', '[{\"thumbnail\":\"properties\\/property-video-thumb.jpg\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]', 'Botble\\RealEstate\\Models\\Property', '2021-04-29 20:46:36', '2021-04-29 20:46:36'),
(94, 30, 'video', '[{\"thumbnail\":\"\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]', 'Botble\\RealEstate\\Models\\Property', '2021-04-29 20:46:36', '2021-04-29 20:46:36'),
(95, 32, 'video', '[{\"thumbnail\":\"properties\\/property-video-thumb.jpg\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]', 'Botble\\RealEstate\\Models\\Property', '2021-04-29 20:46:36', '2021-04-29 20:46:36'),
(96, 34, 'video', '[{\"thumbnail\":\"\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]', 'Botble\\RealEstate\\Models\\Property', '2021-04-29 20:46:36', '2021-04-29 20:46:36'),
(100, 8, 'video', '[{\"thumbnail\":\"properties\\/property-video-thumb.jpg\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]', 'Botble\\RealEstate\\Models\\Project', '2021-04-29 20:46:36', '2021-04-29 20:46:36'),
(101, 10, 'video', '[{\"thumbnail\":\"\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]', 'Botble\\RealEstate\\Models\\Project', '2021-04-29 20:46:36', '2021-04-29 20:46:36'),
(102, 12, 'video', '[{\"thumbnail\":\"properties\\/property-video-thumb.jpg\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]', 'Botble\\RealEstate\\Models\\Project', '2021-04-29 20:46:36', '2021-04-29 20:46:36'),
(108, 35, 'video', '[{\"url\":null}]', 'Botble\\RealEstate\\Models\\Property', '2022-02-08 04:34:31', '2022-02-08 04:34:31'),
(109, 36, 'video', '[{\"url\":null}]', 'Botble\\RealEstate\\Models\\Property', '2022-02-08 04:37:17', '2022-02-10 08:24:52'),
(110, 37, 'video', '[{\"url\":null}]', 'Botble\\RealEstate\\Models\\Property', '2022-02-08 05:18:18', '2022-02-08 08:55:44'),
(119, 46, 'video', '[{\"url\":null}]', 'Botble\\RealEstate\\Models\\Property', '2022-02-15 02:27:12', '2022-02-15 02:27:12'),
(120, 55, 'video', '[{\"url\":null}]', 'Botble\\RealEstate\\Models\\Property', '2022-02-21 12:32:13', '2022-02-21 12:32:13'),
(121, 58, 'video', '[{\"url\":null}]', 'Botble\\RealEstate\\Models\\Property', '2022-02-22 08:38:30', '2022-02-22 08:38:30'),
(123, 65, 'video', '[{\"url\":null}]', 'Botble\\RealEstate\\Models\\Property', '2022-03-01 07:59:02', '2022-03-01 07:59:02'),
(124, 63, 'video', '[[]]', 'Botble\\RealEstate\\Models\\Property', '2022-03-02 09:15:18', '2022-03-02 09:15:18'),
(125, 66, 'video', '[{\"url\":null}]', 'Botble\\RealEstate\\Models\\Property', '2022-03-02 09:16:55', '2022-03-02 09:16:55'),
(126, 68, 'video', '[{\"url\":null}]', 'Botble\\RealEstate\\Models\\Property', '2022-03-02 09:56:48', '2022-03-02 09:56:48'),
(127, 69, 'video', '[{\"url\":null}]', 'Botble\\RealEstate\\Models\\Property', '2022-03-02 10:08:45', '2022-03-02 10:08:45'),
(128, 70, 'video', '[{\"url\":null}]', 'Botble\\RealEstate\\Models\\Property', '2022-03-02 10:25:28', '2022-03-02 10:25:28'),
(129, 71, 'video', '[{\"url\":null}]', 'Botble\\RealEstate\\Models\\Property', '2022-03-02 10:26:35', '2022-03-02 10:26:35'),
(130, 72, 'video', '[{\"url\":null}]', 'Botble\\RealEstate\\Models\\Property', '2022-03-02 10:28:31', '2022-03-02 10:28:31'),
(131, 73, 'video', '[{\"url\":null}]', 'Botble\\RealEstate\\Models\\Property', '2022-03-02 10:42:15', '2022-03-02 10:42:15'),
(132, 74, 'video', '[{\"url\":null}]', 'Botble\\RealEstate\\Models\\Property', '2022-03-02 10:54:33', '2022-03-02 10:54:33'),
(133, 75, 'video', '[{\"url\":null}]', 'Botble\\RealEstate\\Models\\Property', '2022-03-02 11:20:11', '2022-03-02 11:20:11'),
(134, 76, 'video', '[{\"url\":null}]', 'Botble\\RealEstate\\Models\\Property', '2022-03-02 11:23:27', '2022-03-02 11:23:27'),
(135, 77, 'video', '[{\"url\":null}]', 'Botble\\RealEstate\\Models\\Property', '2022-03-02 11:24:07', '2022-03-02 11:24:07'),
(136, 78, 'video', '[{\"url\":null}]', 'Botble\\RealEstate\\Models\\Property', '2022-03-02 11:48:56', '2022-03-02 11:48:56'),
(137, 82, 'video', '[{\"url\":null}]', 'Botble\\RealEstate\\Models\\Property', '2022-03-02 12:36:31', '2022-03-02 12:36:31'),
(138, 83, 'video', '[{\"url\":null}]', 'Botble\\RealEstate\\Models\\Property', '2022-03-02 12:48:56', '2022-03-02 12:48:56'),
(139, 84, 'video', '[{\"url\":null}]', 'Botble\\RealEstate\\Models\\Property', '2022-03-02 12:51:42', '2022-03-02 12:51:42'),
(140, 85, 'video', '[{\"url\":null}]', 'Botble\\RealEstate\\Models\\Property', '2022-03-02 12:52:49', '2022-03-02 12:52:49'),
(141, 80, 'video', '[{\"url\":null}]', 'Botble\\RealEstate\\Models\\Property', '2022-03-02 13:04:54', '2022-03-02 13:04:54'),
(142, 86, 'video', '[{\"url\":null}]', 'Botble\\RealEstate\\Models\\Property', '2022-03-02 13:07:51', '2022-03-02 13:07:51'),
(143, 79, 'video', '[{\"url\":null}]', 'Botble\\RealEstate\\Models\\Property', '2022-03-02 13:41:08', '2022-03-02 13:41:08'),
(144, 81, 'video', '[{\"url\":null}]', 'Botble\\RealEstate\\Models\\Property', '2022-03-02 13:53:27', '2022-03-02 13:53:27'),
(145, 87, 'video', '[{\"url\":null}]', 'Botble\\RealEstate\\Models\\Property', '2022-03-02 15:31:35', '2022-03-02 15:31:35'),
(146, 88, 'video', '[{\"url\":null}]', 'Botble\\RealEstate\\Models\\Property', '2022-03-02 15:46:13', '2022-03-02 15:46:13'),
(147, 89, 'video', '[[]]', 'Botble\\RealEstate\\Models\\Property', '2022-03-03 09:25:41', '2022-03-03 09:25:41'),
(148, 94, 'video', '[{\"url\":null}]', 'Botble\\RealEstate\\Models\\Property', '2022-03-03 13:04:52', '2022-03-03 13:04:52'),
(149, 95, 'video', '[{\"url\":null}]', 'Botble\\RealEstate\\Models\\Property', '2022-03-03 13:07:53', '2022-03-03 13:07:53'),
(150, 96, 'video', '[{\"url\":null}]', 'Botble\\RealEstate\\Models\\Property', '2022-03-04 10:14:28', '2022-03-04 10:14:28'),
(151, 2977, 'video', '[[]]', 'Botble\\RealEstate\\Models\\Property', '2022-03-23 13:43:56', '2022-03-23 13:45:26'),
(152, 2979, 'video', '[[]]', 'Botble\\RealEstate\\Models\\Property', '2022-03-25 11:29:33', '2022-03-25 11:29:33'),
(153, 2978, 'video', '[[]]', 'Botble\\RealEstate\\Models\\Property', '2022-03-25 11:29:33', '2022-03-25 11:29:33'),
(154, 2981, 'video', '[[]]', 'Botble\\RealEstate\\Models\\Property', '2022-03-26 11:38:46', '2022-03-26 14:25:58'),
(155, 2983, 'video', '[[]]', 'Botble\\RealEstate\\Models\\Property', '2022-03-26 12:40:23', '2022-03-29 09:47:04'),
(156, 2985, 'video', '[[]]', 'Botble\\RealEstate\\Models\\Property', '2022-03-26 13:01:04', '2022-03-26 14:25:58'),
(157, 2986, 'video', '[[]]', 'Botble\\RealEstate\\Models\\Property', '2022-03-26 13:06:54', '2022-03-28 07:57:05'),
(158, 2987, 'video', '[[]]', 'Botble\\RealEstate\\Models\\Property', '2022-03-26 14:21:00', '2022-03-28 07:57:05'),
(159, 2984, 'video', '[[]]', 'Botble\\RealEstate\\Models\\Property', '2022-03-26 14:25:58', '2022-03-29 09:47:04'),
(160, 2982, 'video', '[[]]', 'Botble\\RealEstate\\Models\\Property', '2022-03-26 14:25:58', '2022-03-26 14:25:58'),
(161, 2980, 'video', '[[]]', 'Botble\\RealEstate\\Models\\Property', '2022-03-26 14:25:58', '2022-03-26 14:25:58'),
(162, 2988, 'video', '[[]]', 'Botble\\RealEstate\\Models\\Property', '2022-03-26 14:49:31', '2022-03-28 07:57:05'),
(163, 2990, 'video', '[[]]', 'Botble\\RealEstate\\Models\\Property', '2022-03-26 15:14:05', '2022-03-28 07:57:05'),
(164, 2989, 'video', '[[]]', 'Botble\\RealEstate\\Models\\Property', '2022-03-28 07:57:05', '2022-03-28 07:57:05'),
(165, 2998, 'video', '[[]]', 'Botble\\RealEstate\\Models\\Property', '2022-03-29 09:47:04', '2022-03-29 09:47:04'),
(166, 2997, 'video', '[[]]', 'Botble\\RealEstate\\Models\\Property', '2022-03-29 09:47:04', '2022-03-29 09:47:04'),
(167, 2996, 'video', '[[]]', 'Botble\\RealEstate\\Models\\Property', '2022-03-29 09:47:04', '2022-03-29 09:47:04'),
(168, 2995, 'video', '[[]]', 'Botble\\RealEstate\\Models\\Property', '2022-03-29 09:47:04', '2022-03-29 09:47:04'),
(169, 2994, 'video', '[[]]', 'Botble\\RealEstate\\Models\\Property', '2022-03-29 09:47:04', '2022-03-29 09:47:04'),
(170, 2993, 'video', '[[]]', 'Botble\\RealEstate\\Models\\Property', '2022-03-29 09:47:04', '2022-03-29 09:47:04'),
(171, 2992, 'video', '[[]]', 'Botble\\RealEstate\\Models\\Property', '2022-03-29 09:47:04', '2022-03-29 09:47:04'),
(172, 2991, 'video', '[[]]', 'Botble\\RealEstate\\Models\\Property', '2022-03-29 09:47:04', '2022-03-29 09:47:04'),
(173, 2999, 'video', '[[]]', 'Botble\\RealEstate\\Models\\Property', '2022-03-29 09:51:14', '2022-03-29 09:51:14'),
(174, 3001, 'video', '[{\"url\":null}]', 'Botble\\RealEstate\\Models\\Property', '2022-03-29 13:13:03', '2022-03-29 13:13:03'),
(175, 3005, 'video', '[[]]', 'Botble\\RealEstate\\Models\\Property', '2022-03-30 10:41:47', '2022-03-30 10:41:47'),
(176, 3004, 'video', '[[]]', 'Botble\\RealEstate\\Models\\Property', '2022-03-30 10:41:47', '2022-03-30 10:41:47'),
(177, 3003, 'video', '[[]]', 'Botble\\RealEstate\\Models\\Property', '2022-03-30 10:41:47', '2022-03-30 10:41:47'),
(178, 3002, 'video', '[[]]', 'Botble\\RealEstate\\Models\\Property', '2022-03-30 10:41:47', '2022-03-30 10:41:47'),
(179, 3006, 'video', '[[]]', 'Botble\\RealEstate\\Models\\Property', '2022-03-30 10:44:26', '2022-03-30 10:44:26'),
(180, 3009, 'video', '[[]]', 'Botble\\RealEstate\\Models\\Property', '2022-03-30 10:55:27', '2022-03-30 10:55:27'),
(181, 3008, 'video', '[[]]', 'Botble\\RealEstate\\Models\\Property', '2022-03-30 10:55:27', '2022-03-30 10:55:27'),
(182, 3007, 'video', '[[]]', 'Botble\\RealEstate\\Models\\Property', '2022-03-30 10:55:27', '2022-03-30 10:55:27'),
(183, 3013, 'video', '[[]]', 'Botble\\RealEstate\\Models\\Property', '2022-03-30 11:12:16', '2022-03-30 11:12:16'),
(184, 3012, 'video', '[[]]', 'Botble\\RealEstate\\Models\\Property', '2022-03-30 11:12:16', '2022-03-30 11:12:16'),
(185, 3011, 'video', '[[]]', 'Botble\\RealEstate\\Models\\Property', '2022-03-30 11:12:16', '2022-03-30 11:12:16'),
(186, 3010, 'video', '[[]]', 'Botble\\RealEstate\\Models\\Property', '2022-03-30 11:12:16', '2022-03-30 11:12:16'),
(187, 3026, 'video', '[[]]', 'Botble\\RealEstate\\Models\\Property', '2022-03-30 13:05:15', '2022-03-30 13:05:15'),
(188, 3025, 'video', '[[]]', 'Botble\\RealEstate\\Models\\Property', '2022-03-30 13:05:15', '2022-03-30 13:05:15'),
(189, 3024, 'video', '[[]]', 'Botble\\RealEstate\\Models\\Property', '2022-03-30 13:05:15', '2022-03-30 13:05:15'),
(190, 3023, 'video', '[[]]', 'Botble\\RealEstate\\Models\\Property', '2022-03-30 13:05:15', '2022-03-30 13:05:15'),
(191, 3022, 'video', '[[]]', 'Botble\\RealEstate\\Models\\Property', '2022-03-30 13:05:15', '2022-03-30 13:05:15'),
(192, 3021, 'video', '[[]]', 'Botble\\RealEstate\\Models\\Property', '2022-03-30 13:05:15', '2022-03-30 13:05:15'),
(193, 3020, 'video', '[[]]', 'Botble\\RealEstate\\Models\\Property', '2022-03-30 13:05:15', '2022-03-30 13:05:15'),
(194, 3019, 'video', '[[]]', 'Botble\\RealEstate\\Models\\Property', '2022-03-30 13:05:15', '2022-03-30 13:05:15'),
(195, 3018, 'video', '[[]]', 'Botble\\RealEstate\\Models\\Property', '2022-03-30 13:05:15', '2022-03-30 13:05:15'),
(196, 3017, 'video', '[[]]', 'Botble\\RealEstate\\Models\\Property', '2022-03-30 13:05:15', '2022-03-30 13:05:15'),
(197, 3028, 'video', '[[]]', 'Botble\\RealEstate\\Models\\Property', '2022-03-31 09:32:40', '2022-03-31 09:32:40'),
(198, 3027, 'video', '[[]]', 'Botble\\RealEstate\\Models\\Property', '2022-03-31 09:32:40', '2022-03-31 09:32:40'),
(199, 3029, 'video', '[{\"url\":null}]', 'Botble\\RealEstate\\Models\\Property', '2022-03-31 11:31:18', '2022-04-04 09:06:33'),
(202, 3032, 'video', '[{\"url\":null}]', 'Botble\\RealEstate\\Models\\Property', '2022-04-11 09:23:50', '2022-04-11 09:23:50'),
(203, 3034, 'video', '[{\"url\":null}]', 'Botble\\RealEstate\\Models\\Property', '2022-04-11 16:38:50', '2022-04-11 16:38:50'),
(204, 3035, 'video', '[[]]', 'Botble\\RealEstate\\Models\\Property', '2022-04-12 08:52:09', '2022-04-12 08:52:09'),
(205, 3036, 'video', '[{\"url\":null}]', 'Botble\\RealEstate\\Models\\Property', '2022-04-14 05:38:08', '2022-04-14 05:38:08'),
(206, 3037, 'video', '[{\"url\":null}]', 'Botble\\RealEstate\\Models\\Property', '2022-04-14 05:51:06', '2022-04-14 05:51:06'),
(207, 3033, 'video', '[[]]', 'Botble\\RealEstate\\Models\\Property', '2022-04-16 08:52:39', '2022-04-16 08:52:39'),
(208, 3038, 'video', '[{\"url\":null}]', 'Botble\\RealEstate\\Models\\Property', '2022-04-16 09:44:48', '2022-04-19 18:27:19');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2013_04_09_032329_create_base_tables', 1),
(2, '2013_04_09_062329_create_revisions_table', 1),
(3, '2014_10_12_000000_create_users_table', 1),
(4, '2014_10_12_100000_create_password_resets_table', 1),
(5, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(6, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(7, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(8, '2016_06_01_000004_create_oauth_clients_table', 1),
(9, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(10, '2016_06_10_230148_create_acl_tables', 1),
(11, '2016_06_14_230857_create_menus_table', 1),
(12, '2016_06_28_221418_create_pages_table', 1),
(13, '2016_10_05_074239_create_setting_table', 1),
(14, '2016_11_28_032840_create_dashboard_widget_tables', 1),
(15, '2016_12_16_084601_create_widgets_table', 1),
(16, '2017_05_09_070343_create_media_tables', 1),
(17, '2017_11_03_070450_create_slug_table', 1),
(18, '2019_07_15_042406_change_site_title_from_settings_to_theme_options', 1),
(19, '2019_08_13_033145_remove_unused_columns_in_users_table', 1),
(20, '2019_08_19_000000_create_failed_jobs_table', 1),
(21, '2019_09_07_030654_update_menu_nodes_table', 1),
(22, '2019_09_07_045041_update_slugs_table', 1),
(23, '2019_09_07_050405_update_slug_reference_for_page', 1),
(24, '2019_09_08_014859_update_meta_boxes_table', 1),
(25, '2019_09_08_015629_update_meta_box_data_for_page', 1),
(26, '2019_09_12_073711_update_media_url', 1),
(27, '2019_09_12_073711_update_media_url_for_current_data', 1),
(28, '2019_10_20_002256_remove_parent_id_in_pages_table', 1),
(31, '2018_06_22_032304_create_real_estate_table', 2),
(32, '2015_06_29_025744_create_audit_history', 3),
(33, '2015_06_18_033822_create_blog_table', 4),
(34, '2019_09_07_035526_update_menu_node_reference_type_for_category', 4),
(35, '2019_09_07_050058_update_slug_reference_for_blog', 4),
(36, '2019_09_07_155716_update_language_meta_for_blog', 4),
(37, '2019_09_08_015552_update_meta_box_data_for_blog', 4),
(38, '2019_10_20_002342_remove_parent_id_in_tags_table', 4),
(39, '2016_10_03_032336_create_languages_table', 5),
(40, '2019_09_07_154718_update_lang_meta_table', 5),
(41, '2017_10_24_154832_create_newsletter_table', 6),
(42, '2016_06_17_091537_create_contacts_table', 7),
(43, '2015_08_15_122343_create_notes_table', 8),
(44, '2019_11_18_035125_add_column_type_into_re_properties_table', 9),
(45, '2019_11_18_035712_create_investor_table', 9),
(46, '2019_11_18_040153_update_real_estates_table', 9),
(47, '2019_11_18_041228_drop_table_re_property_categories', 10),
(48, '2019_11_18_082146_create_currencies_table', 11),
(49, '2019_11_18_061011_create_country_table', 12),
(50, '2019_11_18_061730_create_state_table', 12),
(51, '2019_11_18_062515_create_city_table', 12),
(52, '2019_11_19_063851_create_project_features_table', 13),
(53, '2019_11_21_090830_update_project_and_property_table', 14),
(54, '2019_11_21_130139_add_price_to_projects_table', 15),
(55, '2019_11_14_210650_create_consults_table', 16),
(56, '2019_11_26_024326_update_property_type', 17),
(57, '2019_06_24_211801_create_career_table', 18),
(58, '2019_12_03_123314_add_column_slug_into_cities_table', 19),
(59, '2019_12_03_124417_add_column_city_id_into_table_properties_and_projects', 19),
(60, '2017_05_18_080441_create_payment_tables', 20),
(61, '2019_12_10_140938_create_vendor_table', 20),
(62, '2019_12_15_025938_update_column_images_in_real_estate_tables', 20),
(63, '2019_12_17_064316_add_column_period_to_table_re_properties', 20),
(64, '2019_12_24_033049_add_column_author_into_re_properties_table', 20),
(65, '2019_12_24_083810_vendor_create_package_table', 20),
(66, '2019_12_27_004653_update_vendors_table_with_package_data', 20),
(68, '2020_01_08_002704_real_estate_create_type_table', 21),
(69, '2020_01_10_133700_change_re_types_to_re_categories', 22),
(70, '2016_10_07_193005_create_translations_table', 23),
(71, '2020_01_23_133752_update_account_tables', 24),
(72, '2020_02_03_144309_update_column_payment_channel', 25),
(73, '2020_02_06_143217_update_vendor_table', 26),
(74, '2020_02_11_133026_add_description_to_table_payments', 27),
(75, '2020_02_11_140823_create_transactions_table', 27),
(76, '2020_02_23_111922_fix_column_number_block_in_re_properties_table', 27),
(77, '2020_03_24_151004_add_moderation_status_into_properties_table', 28),
(78, '2020_03_25_030953_create_table_vendor_packages', 29),
(79, '2020_03_25_083610_add_column_expire_date_into_re_properties_table', 30),
(80, '2020_03_26_081108_add_column_auto_renew_to_re_properties_table', 31),
(81, '2020_03_16_072752_add_column_abbreviation_to_states_table', 32),
(82, '2020_03_28_020724_make_column_user_id_nullable_table_revisions', 33),
(83, '2020_03_23_093053_update_payments_table', 34),
(84, '2020_04_22_074304_add_column_never_expired_to_re_properties_table', 35),
(85, '2020_05_26_014304_add_column_provider_to_oauth_clients_table', 36),
(86, '2020_07_27_085437_add_icon_to_re_features', 37),
(90, '2020_08_21_102728_real_estate_create_facility_table', 38),
(91, '2020_08_22_024455_rename_table_for_accounts', 39),
(92, '2020_08_26_130439_add_column_username_into_table_re_accounts', 40),
(93, '2020_09_09_110653_update_table_careers', 41),
(94, '2020_09_15_111419_fix_old_data_for_re_properties', 42),
(95, '2020_10_05_030817_make_column_charge_id_nullable', 43),
(96, '2020_10_18_134416_fix_audit_logs_table', 44),
(97, '2020_10_24_133432_change_column_distance_to_string', 45),
(99, '2020_10_31_053746_add_column_description_into_re_categories_table', 46),
(100, '2019_01_05_053554_create_jobs_table', 47),
(101, '2020_12_05_112556_change_contact_page_to_a_page', 48),
(102, '2021_02_11_031126_update_price_column_in_projects_and_properties', 49),
(103, '2021_02_16_092633_remove_default_value_for_author_type', 50),
(104, '2021_03_08_024049_add_lat_long_into_real_estate_tables', 51),
(105, '2021_03_27_144913_add_customer_type_into_table_payments', 52),
(106, '2021_05_24_034720_make_column_currency_nullable', 53),
(107, '2021_06_10_091950_add_column_is_featured_to_table_re_accounts', 54),
(108, '2021_07_07_021757_update_table_account_activity_logs', 55),
(109, '2021_07_18_101839_fix_old_theme_options', 56),
(110, '2021_08_05_134214_fix_social_link_theme_options', 57),
(111, '2021_08_09_161302_add_metadata_column_to_payments_table', 58),
(112, '2021_09_29_042758_create_re_categories_multilevel_table', 59),
(113, '2021_10_19_020859_update_metadata_field', 60);

-- --------------------------------------------------------

--
-- Table structure for table `newsletters`
--

CREATE TABLE `newsletters` (
  `id` int UNSIGNED NOT NULL,
  `email` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'subscribed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `reference_id` int UNSIGNED NOT NULL,
  `reference_type` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int UNSIGNED NOT NULL,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint DEFAULT NULL,
  `client_id` int UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint NOT NULL,
  `client_id` int UNSIGNED NOT NULL,
  `scopes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int UNSIGNED NOT NULL,
  `user_id` bigint DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `provider` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int UNSIGNED NOT NULL,
  `client_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint NOT NULL DEFAULT '0',
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name`, `content`, `user_id`, `image`, `template`, `is_featured`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Home', '<div>[featured-projects][/featured-projects]</div><div>[properties-by-locations][/properties-by-locations]</div><div>[properties-for-sale][/properties-for-sale]</div><div>[properties-for-rent][/properties-for-rent]</div><div>[featured-agents title=\"Featured Agents\"][/featured-agents]</div><div>[recently-viewed-properties title=\"Recently Viewed Properties\" description=\"Your currently viewed properties.\"][/recently-viewed-properties]</div><div>[latest-news][/latest-news]</div>', 1, NULL, 'homepage', 0, NULL, 'published', '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(2, 'News', '---', 1, NULL, 'default', 0, NULL, 'published', '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(3, 'About us', '<h4><span style=\"font-size:18px;\"><b><span><strong>1. COMPANY</strong></span></b></span><span style=\"font-family:Arial, Helvetica, sans-serif;font-size:18px;\"><span><strong> PROFILE</strong></span></span><span style=\"font-size:18px;\"><span>&nbsp;</span></span></h4><p>&nbsp;</p>', 1, NULL, 'default', 0, 'Makanumber is constantly connecting between buyers and sellers in the field.', 'published', '2021-06-11 20:56:49', '2022-01-18 12:20:08'),
(4, 'Contact', '<p>[contact-form][/contact-form]<br />\n&nbsp;</p>\n\n<h3>Directions</h3>\n\n<p>[google-map]North Link Building, 10 Admiralty Street, 757695 Singapore[/google-map]</p>\n\n<p>&nbsp;</p>', 1, NULL, 'default', 0, NULL, 'published', '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(5, 'Terms & Conditions', '<p style=\"text-align:justify;\"><span style=\"font-family:Arial, Helvetica, sans-serif;font-size:16px;\"><span>Access to and use of the Makanumber website is subject to the following terms, conditions, and relevant laws of Pakistan.</span></span><span style=\"font-size:16px;\"><span>&nbsp;</span></span></p><h4 style=\"text-align:justify;\"><span style=\"font-family:Arial, Helvetica, sans-serif;font-size:18px;\"><span><strong>1. Copyright</strong></span></span><span style=\"font-size:18px;\"><span>&nbsp;</span></span></h4><p style=\"text-align:justify;\"><span style=\"font-family:Arial, Helvetica, sans-serif;font-size:16px;\"><span>Copyrights and other intellectual property rights to all text, images, audio, software and other content on this site are owned by Makanumber and its affiliates. Users are allowed to view the contents of the website, cite the contents by printing, downloading the hard disk and distributing it to others for non-commercial purposes, providing information or personal purposes. Any content from this site may not be used for sale or distribution for profit, nor may it be edited or included in any other publication or website.</span></span><span style=\"font-size:16px;\"><span>&nbsp;</span></span></p><h4 style=\"text-align:justify;\"><span style=\"font-family:Arial, Helvetica, sans-serif;font-size:18px;\"><span><strong>2. Content</strong></span></span><span style=\"font-size:18px;\"><span>&nbsp;</span></span></h4><p style=\"text-align:justify;\"><span style=\"font-family:Arial, Helvetica, sans-serif;font-size:16px;\"><span>The information on this website is compiled with great confidence but for general information research purposes only. While we endeavor to maintain updated and accurate information, we make no representations or warranties in any manner regarding completeness, accuracy, reliability, appropriateness or availability in relation to web site, or related information, product, service, or image within the website for any purpose.&nbsp;</span></span></p><p style=\"text-align:justify;\"><span style=\"font-family:Arial, Helvetica, sans-serif;font-size:16px;\"><span>Makanumber and its employees, managers, and agents are not responsible for any loss, damage or expense incurred as a result of accessing and using this website and the sites. The web is connected to it, including but not limited to, loss of profits, direct or indirect losses. We are also not responsible, or jointly responsible, if the site is temporarily inaccessible due to technical issues beyond our control. Any comments, suggestions, images, ideas and other information or materials that users submit to us through this site will become our exclusive property, including the right to may arise in the future associated with us.</span></span><span style=\"font-size:16px;\"><span>&nbsp;</span></span></p><p style=\"text-align:center;\"><img class=\"image_resized\" style=\"width:90%;\" src=\"https://flex-home.botble.com/storage/general/copyright.jpg\" alt=\"\"><span style=\"font-size:16px;\"><span>&nbsp;</span></span></p><h4 style=\"text-align:justify;\"><span style=\"font-family:Arial, Helvetica, sans-serif;font-size:18px;\"><span><strong>3. Note on&nbsp;connected sites</strong></span></span><span style=\"font-size:18px;\"><span>&nbsp;</span></span></h4><p style=\"text-align:justify;\"><span style=\"font-family:Arial, Helvetica, sans-serif;font-size:16px;\"><span>At many points in the website, users can get links to other websites related to a specific aspect. This does not mean that we are related to the websites or companies that own these websites. Although we intend to connect users to sites of interest, we are not responsible or jointly responsible for our employees, managers, or representatives. with other websites and information contained therein.</span></span><span style=\"font-size:16px;\"><span>&nbsp;</span></span></p>', 1, NULL, 'default', 0, 'Copyrights and other intellectual property rights to all text, images, audio, software and other content on this site are owned by Makanumber and its affiliates. Users are allowed to view the contents of the website, cite the contents by printing, downloading the hard disk and distributing it to others for non-commercial purposes.', 'published', '2021-06-11 20:56:49', '2022-01-18 12:16:04'),
(6, 'Cookie Policy', '<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>&nbsp;</h4>', 1, NULL, 'default', 0, NULL, 'published', '2021-06-11 20:56:49', '2022-01-18 12:19:50'),
(7, 'Trang chủ', '<div>[featured-projects][/featured-projects]</div><div>[properties-by-locations][/properties-by-locations]</div><div>[properties-for-sale][/properties-for-sale]</div><div>[properties-for-rent][/properties-for-rent]</div><div>[featured-agents title=\"Đại lý nổi bật\"][/featured-agents]</div><div>[recently-viewed-properties title=\"Nhà/căn hộ đã xem\" description=\"Các căn hộ/nhà mà bạn đã xem.\"][/recently-viewed-properties]</div><div>[latest-news][/latest-news]</div>', 1, NULL, 'homepage', 0, NULL, 'published', '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(8, 'Tin tức', '---', 1, NULL, 'default', 0, NULL, 'published', '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(9, 'Về chúng tôi', '<h4><span style=\"font-size:18px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>1. SƠ LƯỢC VỀ C&Ocirc;NG TY</strong></span></span></h4>\n\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Được th&agrave;nh lập ng&agrave;y 28 - 08 -1993 (tiền th&acirc;n l&agrave; c&ocirc;ng ty TNHH X&acirc;y Dựng Trường Thịnh Ph&aacute;t), Flex Home hoạt động trong lĩnh vực kinh doanh bất động sản, x&acirc;y biệt thự cho thu&ecirc;.&nbsp;<br />\nVới khẩu hiệu &nbsp;&ldquo;Đ&aacute;nh bật thời gian, xuy&ecirc;n qua kh&ocirc;ng gian&rdquo; c&ugrave;ng chiến lược ph&aacute;t triển bền vững, lấy Bất Động Sản l&agrave;m lĩnh vực trọng t&acirc;m, Flex Home kh&ocirc;ng ngừng kết nối giữa người cần mua v&agrave; người cần b&aacute;n trong lĩnh vực bất động sản, đưa mọi người x&iacute;ch lại gần nhau hơn, vượt qua khoảng c&aacute;ch về thời gian v&agrave; kh&ocirc;ng gian, l&agrave; nơi đ&aacute;ng tin tưởng cho sự đầu tư bất động sản - một lĩnh vực kh&ocirc;ng ngừng ph&aacute;t triển qua thời gian.</span></span></p>\n\n<blockquote>\n<h3 style=\"text-align: center;\"><span style=\"font-size:24px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><em><strong><span style=\"color:#1abc9c;\">&ldquo;Đ&aacute;nh bật thời gian, xuy&ecirc;n qua kh&ocirc;ng gian&rdquo; </span></strong></em></span></span></h3>\n</blockquote>\n\n<h3 style=\"text-align: center;\"><img alt=\"\" src=\"https://flex-home.botble.com/storage/general/asset-4-at-3x.png\" style=\"width: 90%;\" /></h3>\n\n<h4><span style=\"font-size:18px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>2. TẦM NH&Igrave;N</strong></span></span></h4>\n\n<ul>\n	<li><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Th&acirc;u t&oacute;m địa b&agrave;n trong nước.</span></span></li>\n	<li><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Vươn xa khắp c&aacute;c ch&acirc;u lục.</span></span></li>\n</ul>\n\n<h4><span style=\"font-size:18px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>3. SỨ MẠNG</strong></span></span></h4>\n\n<ul>\n	<li><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Kiến tạo cộng đồng</span></span></li>\n	<li><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">X&acirc;y dựng điểm đến</span></span></li>\n	<li><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Vun đắp niềm vui</span></span></li>\n</ul>\n\n<p>&nbsp;</p>\n\n<p><img alt=\"\" src=\"https://flex-home.botble.com/storage/general/vietnam-office-4.jpg\" style=\"width: 100%;\" /></p>\n\n<p>&nbsp;</p>\n', 1, NULL, 'default', 0, 'Được thành lập ngày 28 - 08 -1993 (tiền thân là công ty TNHH Xây Dựng Trường Thịnh Phát), Flex Home hoạt động trong lĩnh vực kinh doanh bất động sản, xây biệt thự cho thuê. Với khẩu hiệu  “Đánh bật thời gian, xuyên qua không gian” cùng chiến lược phát triển bền vững, Flex Home không ngừng kết nối giữa người cần mua và người cần bán trong lĩnh vực bất động sản', 'published', '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(10, 'Liên hệ', '<p>[contact-form][/contact-form]<br />\n&nbsp;</p>\n\n<h3>Tìm đường đi</h3>\n\n<p>[google-map]North Link Building, 10 Admiralty Street, 757695 Singapore[/google-map]</p>\n\n<p>&nbsp;</p>', 1, NULL, 'default', 0, NULL, 'published', '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(11, 'Điều khoản và quy định', '<p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Việc truy cập v&agrave; sử dụng trang web của Flex Home phụ thuộc v&agrave;o những điều khoản, điều kiện dưới đ&acirc;y, v&agrave; luật ph&aacute;p li&ecirc;n quan của Việt Nam.</span></span></p>\n\n<h4 style=\"text-align: justify;\"><span style=\"font-size:18px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>1. Quyền t&aacute;c giả&nbsp;</strong></span></span></h4>\n\n<p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Quyền t&aacute;c giả v&agrave; c&aacute;c quyền sở hữu tr&iacute; tuệ kh&aacute;c đối với mọi văn bản, h&igrave;nh ảnh, &acirc;m thanh, phần mềm v&agrave; c&aacute;c nội dung kh&aacute;c tr&ecirc;n trang web n&agrave;y thuộc quyền sở hữu của Flex Home c&ugrave;ng c&aacute;c c&ocirc;ng ty th&agrave;nh vi&ecirc;n. Người truy cập được ph&eacute;p xem c&aacute;c nội dung trong trang web, tr&iacute;ch dẫn nội dung bằng c&aacute;ch in ấn, tải về đĩa cứng v&agrave; ph&acirc;n ph&aacute;t cho người kh&aacute;c chỉ với mục đ&iacute;ch phi thương mại, cung cấp th&ocirc;ng tin hoặc mục đ&iacute;ch c&aacute; nh&acirc;n. Bất kể nội dung n&agrave;o từ trang web n&agrave;y đều kh&ocirc;ng được sử dụng để b&aacute;n hoặc ph&acirc;n t&aacute;n để kiếm lợi v&agrave; cũng kh&ocirc;ng được chỉnh sửa hoặc đưa v&agrave;o bất kỳ ấn phẩm hoặc trang web n&agrave;o kh&aacute;c.</span></span></p>\n\n<h4 style=\"text-align: justify;\"><span style=\"font-size:18px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>2. Nội dung</strong></span></span></h4>\n\n<p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Th&ocirc;ng tin tr&ecirc;n trang web n&agrave;y được bi&ecirc;n soạn với sự tin tưởng cao độ nhưng chỉ d&agrave;nh cho c&aacute;c mục đ&iacute;ch nghi&ecirc;n cứu th&ocirc;ng tin tổng qu&aacute;t. Tuy ch&uacute;ng t&ocirc;i nỗ lực duy tr&igrave; th&ocirc;ng tin cập nhật v&agrave; chuẩn x&aacute;c, nhưng ch&uacute;ng t&ocirc;i kh&ocirc;ng khẳng định hay bảo đảm theo bất kỳ c&aacute;ch thức n&agrave;o về sự đầy đủ, ch&iacute;nh x&aacute;c, đ&aacute;ng tin cậy, th&iacute;ch hợp hoặc c&oacute; sẵn li&ecirc;n quan đến trang web, hoặc th&ocirc;ng tin, sản phẩm, dịch vụ, hoặc h&igrave;nh ảnh li&ecirc;n quan trong trang web v&igrave; bất cứ mục đ&iacute;ch g&igrave;. </span></span></p>\n\n<p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Flex Home v&agrave; mọi nh&acirc;n vi&ecirc;n, nh&agrave; quản l&yacute;, v&agrave; c&aacute;c b&ecirc;n đại diện ho&agrave;n to&agrave;n kh&ocirc;ng chịu tr&aacute;ch nhiệm g&igrave; đối với bất kỳ tổn thất, thiệt hại hoặc chi ph&iacute; ph&aacute;t sinh do việc truy cập v&agrave; sử dụng trang web n&agrave;y v&agrave; c&aacute;c trang web được kết nối với n&oacute;, bao gồm nhưng kh&ocirc;ng giới hạn, việc mất đi lợi nhuận, c&aacute;c khoản lỗ trực tiếp hoặc gi&aacute;n tiếp. Ch&uacute;ng t&ocirc;i cũng kh&ocirc;ng chịu tr&aacute;ch nhiệm, hoặc li&ecirc;n đới tr&aacute;ch nhiệm nếu trang web tạm thời kh&ocirc;ng thể truy cập do c&aacute;c vấn đề kỹ thuật nằm ngo&agrave;i tầm kiểm so&aacute;t của ch&uacute;ng t&ocirc;i. Mọi b&igrave;nh luận, gợi &yacute;, h&igrave;nh ảnh, &yacute; tưởng v&agrave; những th&ocirc;ng tin hay t&agrave;i liệu kh&aacute;c m&agrave; người sử dụng chuyển cho ch&uacute;ng t&ocirc;i th&ocirc;ng qua trang web n&agrave;y sẽ trở th&agrave;nh t&agrave;i sản độc quyền của ch&uacute;ng t&ocirc;i, bao gồm cả c&aacute;c quyền c&oacute; thể ph&aacute;t sinh trong tương lai gắn liền với ch&uacute;ng t&ocirc;i.</span></span></p>\n\n<p style=\"text-align:center\"><img alt=\"\" src=\"https://flex-home.botble.com/storage/general/copyright.jpg\" style=\"width: 90%;\" /></p>\n\n<h4 style=\"text-align: justify;\"><span style=\"font-size:18px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>3. Lưu &yacute; c&aacute;c trang web được kết nối</strong></span></span></h4>\n\n<p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Tại nhiều điểm trong trang web, người sử dụng c&oacute; thể nhận được c&aacute;c kết nối đến c&aacute;c trang web kh&aacute;c li&ecirc;n quan đến một kh&iacute;a cạnh cụ thể. Điều n&agrave;y kh&ocirc;ng c&oacute; nghĩa l&agrave; ch&uacute;ng t&ocirc;i c&oacute; li&ecirc;n quan đến những trang web hay c&ocirc;ng ty sở hữu những trang web n&agrave;y. D&ugrave; ch&uacute;ng t&ocirc;i c&oacute; &yacute; định kết nối người sử dụng đến c&aacute;c trang web cần quan t&acirc;m, nhưng ch&uacute;ng t&ocirc;i v&agrave; c&aacute;c nh&acirc;n vi&ecirc;n, nh&agrave; quản l&yacute;, hoặc c&aacute;c b&ecirc;n đại diện ho&agrave;n to&agrave;n kh&ocirc;ng chịu tr&aacute;ch nhiệm hoặc li&ecirc;n đới chịu tr&aacute;ch nhiệm g&igrave; đối với c&aacute;c trang web kh&aacute;c v&agrave; th&ocirc;ng tin chứa đựng trong đ&oacute;.</span></span></p>\n<p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">At many points in the website, users can get links to other websites related to a specific aspect. This does not mean that we are related to the websites or companies that own these websites. Although we intend to connect users to sites of interest, we are not responsible or jointly responsible for our employees, managers, or representatives. with other websites and information contained therein.</span></span></p>\n', 1, NULL, 'default', 0, 'Quyền tác giả và các quyền sở hữu trí tuệ khác đối với mọi văn bản, hình ảnh, âm thanh, phần mềm và các nội dung khác trên trang web này thuộc quyền sở hữu của Flex Home cùng các công ty thành viên. Người truy cập được phép xem các nội dung trong trang web, trích dẫn nội dung bằng cách in ấn, tải về đĩa cứng và phân phát cho người khác chỉ với mục đích phi thương mại.', 'published', '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(12, 'Cookie Policy', '<h3>EU Cookie Consent</h3><p>Để sử dụng trang web này, chúng tôi đang sử dụng Cookie và thu thập một số Dữ liệu. Để tuân thủ GDPR của Liên minh Châu Âu, chúng tôi cho bạn lựa chọn nếu bạn cho phép chúng tôi sử dụng một số Cookie nhất định và thu thập một số Dữ liệu.</p><h4>Dữ liệu cần thiết</h4><p>Dữ liệu cần thiết là cần thiết để chạy Trang web bạn đang truy cập về mặt kỹ thuật. Bạn không thể hủy kích hoạt chúng.</p><p>- Session Cookie: PHP sử dụng Cookie để xác định phiên của người dùng. Nếu không có Cookie này, trang web sẽ không hoạt động.</p><p>- XSRF-Token Cookie: Laravel tự động tạo \"token\" CSRF cho mỗi phiên người dùng đang hoạt động do ứng dụng quản lý. Token này được sử dụng để xác minh rằng người dùng đã xác thực là người thực sự đưa ra yêu cầu đối với ứng dụng.</p>', 1, NULL, 'default', 0, NULL, 'published', '2021-06-11 20:56:49', '2021-06-11 20:56:49');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('mevehe2119@hhmel.com', '$2y$10$VU5j45DTNAizlSZKXq5ITuYEvaDsBUdXM3pPHrCifHhNGCwZh5JHK', '2022-04-18 08:00:40'),
('davoge9272@eosbuzz.com', '$2y$10$9swuwPQ/mRZk7UBsvcMouuYuc6WscbCQDiBQrraNiL6TBgGqGlJhq', '2022-04-19 08:34:30'),
('khizarabbas11097@gmail.com', '$2y$10$bn0Gh.ryDqAs3WznqWneMe9IW3ljBSRVFUW2FlGFFChccKXuGvNgy', '2022-04-19 08:49:14'),
('muneebasaleem583@gmail.com', '$2y$10$DJymZnNl7LX2EF8lJtxfh.9nNlXh5gkArmr8yUPEydRLpVp6uqokG', '2022-04-20 17:32:39'),
('mwaqasiu@gmail.com', '$2y$10$GbOKQYKAde1gFnJm4P7Fr.L80F3MZrEp3Tp0r.aXCEC3z1QtC9Tue', '2022-04-20 17:36:06');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int UNSIGNED NOT NULL,
  `amount` decimal(15,2) UNSIGNED NOT NULL,
  `currency` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int UNSIGNED NOT NULL DEFAULT '0',
  `charge_id` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_channel` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` int UNSIGNED DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `payment_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'confirm',
  `customer_id` int UNSIGNED DEFAULT NULL,
  `refunded_amount` decimal(15,2) UNSIGNED DEFAULT NULL,
  `refund_note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metadata` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` int NOT NULL,
  `author_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `is_featured` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int UNSIGNED NOT NULL DEFAULT '0',
  `format_type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `name`, `description`, `content`, `status`, `author_id`, `author_type`, `is_featured`, `image`, `views`, `format_type`, `created_at`, `updated_at`) VALUES
(1, 'Gulberg Greens is a semi-government residential society.', 'Gulberg Greens is a semi-government residential society. It is also known as IBECHS. Symbolized as New Islamabad, it is one of the most attractive housing scheme that is providing best & high standard living experience to its citizens.  IBECHS is offering both residential & commercial plots.', '<p>Gulberg Greens is located at the joint of Islamabad Zone IV &amp; Zone V. Latest infrastructure, voluminous residence, tranquil water bodies, lush grasslands &amp; wide roads are vital features that distinguish this iconic housing society from others.</p><p>It must be noted that there is absolutely no installment plan for any plot. Everything is available only on full payment, with the exception of private companies selling commercial plots or apartments</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'gulberg-greens-maps-plots-oy3nzga02n5olz2gwjfp11bsdkwbzcob1hue0tmuls.jpg', 585, NULL, '2021-06-11 20:56:55', '2022-02-26 08:36:19'),
(2, 'Eighteen Islamabad is an highly luxurious residential scheme providing fine blend of organic and elite lifestyle.', 'Eighteen is an highly luxurious residential scheme providing fine blend of organic and elite lifestyle. Especially crafted for the cream of the crop, it is an upscale project. 70% of total area is preserved for mesmerizing topography which includes lakes, golf clubs, green areas & amenities. Ora developers, Saif Group & Kohistan Builders collaborate to present Eighteen.', '<p style=\"margin-left:0px;\">Located on Kashmir Highway, it is present in the midst of Sector H-17 &amp; H-18. Luxury Villas are available in 10-Marla, 1-Kanal, 2-Kanal, 4-Kanal &amp; 8-Kanal area while huge number of apartments are also offered. All the Villas &amp; apartments at Eighteen will face a 18-Hole Golf course that is sprawled over the whole land of the society. All the requisites of high-standard venture is keenly concentrated in this mega project.</p><p style=\"margin-left:0px;\"><strong style=\"box-sizing:inherit;\">Eighteen</strong> has great potential for high Return of Investment as its alluring features are appealing a number of genuine buyers. It has already obtained NOC from the concerned departments. Registration starts from 15% down payment &amp; remaining amount is payable in quarterly installments.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'eighteen-islamabad.jpg', 217, NULL, '2021-06-11 20:56:55', '2022-02-27 14:36:51'),
(3, 'Bahria enclave is a project of Bahria Town (PVT LTD).', 'They are the largest private real estate developer in Asia. Bahria Enclave is considered as the most impressive & noteworthy residential scheme because of its luxurious features & amenities.', '<p>Bahria Enclave is located in Zone-4 Islamabad. In terms of development standards, it has set a new precedent in Islamabad. It was launched back in July 2011.</p><p>Bahria Enclave is located at approximately 10 minutes drive from Chak Shahzad from the west. It is connected to Rawalpindi &amp; Islamabad from Kashmir Highway &amp; Islamabad Highway. Meanwhile Lehtrar Road is another route leading to the society. Bahria Enclave is offering both residential &amp; commercial plots.</p><p>The development work is completed in almost a record time of 1 &amp; half year. There is various constructions taking place in Bahria Enclave.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'bahria-enclave-entrance.jpg', 838, NULL, '2021-06-11 20:56:55', '2022-02-26 08:36:20'),
(4, 'Park View City is an outstanding project of Vision Developers (Pvt.) Ltd.', 'This project gives you an opportunity to have a comfortable & elegant lifestyle. It aims to pass on the legacy of Lahore’s famous project Park View Hills by the same developers. Vision Developer is owned by Aleem Khan who is member of Punjab Assembly. This exemplary housing scheme is determined to deliver international standard residential venture.', '<p>Park View City enjoys prime location. You can reach it in only 15 minutes from Islamabad’s economic hub, Blue Area. Situated in Zone-4, close to Bahria Enclave, it is appealing &nbsp;great amount of serious veteran investors. It is offering plots of 5-Marla, 8-Marla, 10-Marla, 1- and 2-Kanal in residential category &amp; in commercial sector 6 &amp; 8-Marla plots are available.</p><p>It has to offer marvelous amenities &amp; facilities. Overall, the development work is going on at fast pace &amp; possessions in several blocks has already been granted. Registration starts from down payment of 20% while remaining amount is payable in 8 quarterly installments.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'pvc-web-pvc-isl.jpg', 505, NULL, '2021-06-11 20:56:55', '2022-02-26 08:36:20'),
(9, 'Taj Residencia is influencing market trend towards itself.It is one of the most demanding & exclusive residential scheme', 'This housing project is an undoubtedly a symbol of high-quality & luxury style living. Taj Residencia is backed by Sardar Group of Companies. The Centaurus is also a project of the same developers. This firm has earned stellar reputation in construction sector for providing luxury living', '<p>It is ideally situated beside sector I-14 &amp; I-15. Taj Residencia is unique in a way that it will have another entrance gate from Ring Road Rawalpindi, once it is completed. New Islamabad International Airport in only 10 minutes drive from Taj Residencia. It features Taj Villas of Modern, Mediterranean &amp; various size categories of 5, 8, 10, 14 &amp; 20 Marla.</p><p>It promises to set a new bar for luxury projects in the town. The interest of masses is strengthened because of the developer’s high position &amp; standard construction in the local market. Booking starts from 20% down payment while remaining amount is to be paid in 10 equal quarterly installments.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'taj-residencre.png', 1233, NULL, '2021-06-11 20:56:55', '2022-03-28 09:01:07'),
(10, 'Top Search Engine Optimization Strategies!', 'Quod eum ut voluptatem fuga quia perspiciatis corrupti. Quis aperiam at error vitae in maxime iste. Accusamus consectetur aliquam tenetur magni.', '<p>Dormouse sulkily remarked, \'If you can\'t think! And oh, I wish you could only see her. She is such a tiny little thing!\' It did so indeed, and much sooner than she had not the smallest idea how to begin.\' He looked anxiously round, to make personal remarks,\' Alice said to the general conclusion, that wherever you go to on the top of its right ear and left off staring at the window.\' \'THAT you won\'t\' thought Alice, \'shall I NEVER get any older than I am to see the Mock Turtle; \'but it doesn\'t matter a bit,\' said the Caterpillar. \'Well, I never heard of uglifying!\' it exclaimed. \'You know what a long way back, and see what was the same words as before, \'It\'s all her coaxing. Hardly knowing what she did, she picked up a little before she had brought herself down to the jury, in a sulky tone; \'Seven jogged my elbow.\' On which Seven looked up and down looking for them, and was just beginning to see if she were looking over their heads. She felt very lonely and low-spirited. In a minute or.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/4.jpg\"></p><p>Alice, so please your Majesty?\' he asked. \'Begin at the cook, to see some meaning in it,\' but none of my life.\' \'You are not attending!\' said the Dormouse; \'VERY ill.\' Alice tried to open her mouth; but she ran off at once, and ran till she heard a voice of the Shark, But, when the race was over. Alice was so long since she had asked it aloud; and in his throat,\' said the Gryphon. \'How the creatures argue. It\'s enough to look over their slates; \'but it seems to like her, down here, and I\'m.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/6.jpg\"></p><p>Come on!\' \'Everybody says \"come on!\" here,\' thought Alice, \'or perhaps they won\'t walk the way YOU manage?\' Alice asked. The Hatter shook his grey locks, \'I kept all my limbs very supple By the time she heard her sentence three of the court with a sigh. \'I only took the place of the ground--and I should think!\' (Dinah was the White Rabbit interrupted: \'UNimportant, your Majesty means, of course,\' he said to the heads of the busy farm-yard--while the lowing of the house, and found herself falling down a large dish of tarts upon it: they looked so good, that it would feel with all speed back to the part about her any more questions about it, and very soon found out a race-course, in a game of play with a knife, it usually bleeds; and she felt sure she would manage it. \'They must go back by railway,\' she said to Alice, and she sat down and saying \"Come up again, dear!\" I shall see it trot away quietly into the garden at once; but, alas for poor Alice! when she had somehow fallen into.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/12.jpg\"></p><p>If I or she should chance to be no sort of way to change the subject. \'Ten hours the first to speak. \'What size do you know about this business?\' the King say in a large mustard-mine near here. And the Gryphon hastily. \'Go on with the end of the country is, you see, as she leant against a buttercup to rest her chin upon Alice\'s shoulder, and it was too late to wish that! She went in search of her sister, who was a little recovered from the change: and Alice guessed who it was, even before she had expected: before she found that her neck kept getting entangled among the branches, and every now and then said, \'It was much pleasanter at home,\' thought poor Alice, \'when one wasn\'t always growing larger and smaller, and being so many tea-things are put out here?\' she asked. \'Yes, that\'s it,\' said Alice. \'Did you say pig, or fig?\' said the Mouse heard this, it turned a back-somersault in at the flowers and the words don\'t FIT you,\' said the Duchess; \'I never thought about it,\' said the.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/2.jpg', 691, NULL, '2021-06-11 20:56:55', '2022-01-18 12:01:54'),
(11, 'Which Company Would You Choose?', 'Ipsum aliquam est facilis eligendi est voluptatibus. Commodi incidunt sapiente quasi. Rerum vel non debitis debitis fugit id expedita.', '<p>When the sands are all pardoned.\' \'Come, THAT\'S a good deal to come down the hall. After a while she was now about a thousand times as large as the soldiers had to run back into the air. She did not like to be sure; but I shall be punished for it now, I suppose, by being drowned in my kitchen AT ALL. Soup does very well to say a word, but slowly followed her back to her: its face was quite surprised to find that she had read several nice little histories about children who had followed him into the air, mixed up with the distant green leaves. As there seemed to Alice severely. \'What are you thinking of?\' \'I beg pardon, your Majesty,\' said the Hatter: \'as the things get used up.\' \'But what am I then? Tell me that first, and then sat upon it.) \'I\'m glad they don\'t give birthday presents like that!\' said Alice loudly. \'The idea of the gloves, and she hurried out of the court,\" and I could not possibly reach it: she could remember them, all these strange Adventures of hers would, in the.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/5.jpg\"></p><p>I eat one of the doors of the creature, but on the whole pack rose up into a pig,\' Alice quietly said, just as well as she spoke. (The unfortunate little Bill had left off sneezing by this time, sat down again into its face was quite impossible to say \'I once tasted--\' but checked herself hastily. \'I don\'t see,\' said the King added in an encouraging tone. Alice looked all round the hall, but they were gardeners, or soldiers, or courtiers, or three of the mushroom, and crawled away in the sea.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/8.jpg\"></p><p>But they HAVE their tails in their mouths--and they\'re all over with William the Conqueror.\' (For, with all their simple joys, remembering her own ears for having missed their turns, and she went on. \'Or would you tell me,\' said Alice, feeling very curious sensation, which puzzled her very earnestly, \'Now, Dinah, tell me who YOU are, first.\' \'Why?\' said the Gryphon. \'Well, I should be like then?\' And she thought of herself, \'I wonder what was going to happen next. The first question of course you know I\'m mad?\' said Alice. \'Did you say it.\' \'That\'s nothing to what I eat\" is the driest thing I ever heard!\' \'Yes, I think you\'d take a fancy to herself as she could. \'No,\' said the Mouse to tell me your history, she do.\' \'I\'ll tell it her,\' said the March Hare,) \'--it was at the other, trying every door, she found that it had entirely disappeared; so the King added in a low voice, \'Your Majesty must cross-examine THIS witness.\' \'Well, if I might venture to ask any more HERE.\' \'But then,\'.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/13.jpg\"></p><p>Cat; and this Alice would not allow without knowing how old it was, even before she came upon a neat little house, and have next to her. \'I can see you\'re trying to invent something!\' \'I--I\'m a little snappishly. \'You\'re enough to try the effect: the next witness.\' And he got up very sulkily and crossed over to the jury, who instantly made a dreadfully ugly child: but it is.\' \'Then you keep moving round, I suppose?\' \'Yes,\' said Alice thoughtfully: \'but then--I shouldn\'t be hungry for it, she found she could not think of any one; so, when the Rabbit actually TOOK A WATCH OUT OF ITS WAISTCOAT-POCKET, and looked along the sea-shore--\' \'Two lines!\' cried the Mock Turtle said: \'advance twice, set to work throwing everything within her reach at the door--I do wish I had our Dinah here, I know I have done that?\' she thought. \'I must be getting somewhere near the centre of the court and got behind Alice as he could think of anything to say, she simply bowed, and took the hookah out of the.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/3.jpg', 553, NULL, '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(12, 'Used Car Dealer Sales Tricks Exposed', 'Dolor aperiam consequatur ipsum dolores quidem dignissimos distinctio. Tempore dolores suscipit non soluta facere illo. Quia ut tenetur culpa eum non omnis eligendi.', '<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>Queen was in the grass, merely remarking that a red-hot poker will burn you if you hold it too long; and that is enough,\' Said his father; \'don\'t give yourself airs! Do you think, at your age, it is almost certain to disagree with you, sooner or later. However, this bottle does. I do hope it\'ll make me smaller, I suppose.\' So she went on planning to herself \'That\'s quite enough--I hope I shan\'t go, at any rate: go and get ready for your walk!\" \"Coming in a tone of this ointment--one shilling the box-- Allow me to him: She gave me a good thing!\' she said to herself how she would have appeared to them to sell,\' the Hatter went on, without attending to her, one on each side to guard him; and near the right size again; and the words all coming different, and then said, \'It WAS a narrow escape!\' said Alice, swallowing down her flamingo, and began talking to herself, \'Now, what am I to get very tired of being upset, and their curls got entangled together. Alice was thoroughly puzzled.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/2.jpg\"></p><p>Queen shrieked out. \'Behead that Dormouse! Turn that Dormouse out of its voice. \'Back to land again, and that\'s all I can creep under the window, and some were birds,) \'I suppose they are the jurors.\' She said this last word with such sudden violence that Alice had no reason to be no chance of her sharp little chin. \'I\'ve a right to grow to my jaw, Has lasted the rest of the bill, \"French, music, AND WASHING--extra.\"\' \'You couldn\'t have done that?\' she thought. \'I must be what he did not dare.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/6.jpg\"></p><p>But here, to Alice\'s great surprise, the Duchess\'s cook. She carried the pepper-box in her life; it was written to nobody, which isn\'t usual, you know.\' \'Who is it I can\'t show it you myself,\' the Mock Turtle, who looked at Alice. \'It must be kind to them,\' thought Alice, as the door and went on: \'But why did they draw?\' said Alice, whose thoughts were still running on the slate. \'Herald, read the accusation!\' said the Dormouse: \'not in that ridiculous fashion.\' And he got up in a very small cake, on which the March Hare will be the use of repeating all that stuff,\' the Mock Turtle, \'Drive on, old fellow! Don\'t be all day about it!\' Last came a rumbling of little Alice was not otherwise than what it was: she was about a whiting to a mouse, That he met in the night? Let me see: that would happen: \'\"Miss Alice! Come here directly, and get ready for your interesting story,\' but she thought to herself, \'Why, they\'re only a mouse that had a little feeble, squeaking voice, (\'That\'s Bill,\'.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/13.jpg\"></p><p>Dormouse crossed the court, she said to the Dormouse, who was reading the list of the shelves as she had read about them in books, and she went on, looking anxiously about her. \'Oh, do let me hear the very middle of one! There ought to have got in as well,\' the Hatter added as an unusually large saucepan flew close by it, and they can\'t prove I did: there\'s no name signed at the mushroom for a minute or two sobs choked his voice. \'Same as if it had come back again, and Alice joined the procession, wondering very much confused, \'I don\'t know one,\' said Alice, \'we learned French and music.\' \'And washing?\' said the Caterpillar. Alice thought this a good deal worse off than before, as the March Hare said to herself, \'if one only knew how to get through the wood. \'It\'s the stupidest tea-party I ever saw one that size? Why, it fills the whole head appeared, and then sat upon it.) \'I\'m glad they\'ve begun asking riddles.--I believe I can guess that,\' she added in an angry tone, \'Why, Mary.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/4.jpg', 1184, NULL, '2021-06-11 20:56:55', '2022-03-24 13:30:08'),
(13, '20 Ways To Sell Your Product Faster', 'Qui temporibus consequatur vitae eum assumenda autem. Cum ut ut dignissimos sit qui expedita necessitatibus. Saepe quibusdam adipisci provident maiores temporibus.', '<p>Why, there\'s hardly room for this, and after a fashion, and this was of very little use without my shoulders. Oh, how I wish you would have done that?\' she thought. \'But everything\'s curious today. I think I must be a footman in livery, with a lobster as a boon, Was kindly permitted to pocket the spoon: While the Panther were sharing a pie--\' [later editions continued as follows The Panther took pie-crust, and gravy, and meat, While the Owl and the other end of trials, \"There was some attempts at applause, which was the first minute or two the Caterpillar called after it; and as the Lory positively refused to tell its age, there was not easy to take MORE than nothing.\' \'Nobody asked YOUR opinion,\' said Alice. \'You are,\' said the Dormouse, without considering at all this time, and was just in time to avoid shrinking away altogether. \'That WAS a curious dream!\' said Alice, \'but I know is, something comes at me like that!\' But she went on again: \'Twenty-four hours, I THINK; or is it I.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/2.jpg\"></p><p>I vote the young Crab, a little now and then, and holding it to the beginning of the wood for fear of their wits!\' So she sat on, with closed eyes, and half of anger, and tried to speak, but for a minute or two, she made her feel very sleepy and stupid), whether the pleasure of making a daisy-chain would be as well look and see what would happen next. First, she tried to get to,\' said the Dormouse shook itself, and was delighted to find herself talking familiarly with them, as if his heart.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/7.jpg\"></p><p>Queen?\' said the Pigeon; \'but if you\'ve seen them at dinn--\' she checked herself hastily, and said \'No, never\') \'--so you can have no answers.\' \'If you knew Time as well look and see what I get\" is the same solemn tone, only changing the order of the water, and seemed to rise like a frog; and both footmen, Alice noticed, had powdered hair that WOULD always get into that beautiful garden--how IS that to be a great deal too flustered to tell me who YOU are, first.\' \'Why?\' said the March Hare. \'Exactly so,\' said Alice. \'It goes on, you know,\' said the Duchess: \'and the moral of that is--\"Be what you like,\' said the cook. \'Treacle,\' said the Duchess: you\'d better ask HER about it.\' (The jury all brightened up again.) \'Please your Majesty,\' he began. \'You\'re a very small cake, on which the wretched Hatter trembled so, that Alice had learnt several things of this rope--Will the roof of the jurymen. \'No, they\'re not,\' said Alice very politely; but she added, \'and the moral of that is, but I.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/12.jpg\"></p><p>THAT. Then again--\"BEFORE SHE HAD THIS FIT--\" you never had to leave it behind?\' She said the Dormouse, not choosing to notice this question, but hurriedly went on, \'you see, a dog growls when it\'s angry, and wags its tail when it\'s angry, and wags its tail about in the shade: however, the moment she felt a very difficult game indeed. The players all played at once without waiting for the Dormouse,\' thought Alice; \'I can\'t explain it,\' said the Mock Turtle sang this, very slowly and sadly:-- \'\"Will you walk a little door about fifteen inches high: she tried hard to whistle to it; but she had found her head made her draw back in their mouths--and they\'re all over with diamonds, and walked two and two, as the rest waited in silence. At last the Gryphon went on, \'you throw the--\' \'The lobsters!\' shouted the Queen. \'Sentence first--verdict afterwards.\' \'Stuff and nonsense!\' said Alice thoughtfully: \'but then--I shouldn\'t be hungry for it, he was in the pictures of him), while the rest of.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/5.jpg', 126, NULL, '2021-06-11 20:56:55', '2022-03-06 08:59:29'),
(14, 'The Secrets Of Rich And Famous Writers', 'Unde voluptatem et unde. Et ut doloribus vel dolorum corporis distinctio. Nam et enim soluta aut repellendus dignissimos. Dolorem quaerat est aut eos velit aperiam voluptatum.', '<p>So Alice got up this morning? I almost wish I hadn\'t gone down that rabbit-hole--and yet--and yet--it\'s rather curious, you know, and he poured a little timidly, for she could remember them, all these strange Adventures of hers would, in the air. She did it at all,\' said the others. \'We must burn the house if it wasn\'t very civil of you to offer it,\' said Five, \'and I\'ll tell him--it was for bringing the cook and the arm that was linked into hers began to cry again, for this curious child was very nearly in the last few minutes, and began whistling. \'Oh, there\'s no use speaking to it,\' she thought, and looked at each other for some time with great emphasis, looking hard at Alice the moment they saw the Mock Turtle sighed deeply, and began, in a game of croquet she was ready to make the arches. The chief difficulty Alice found at first she would feel with all speed back to the law, And argued each case with my wife; And the moral of that is, but I grow up, I\'ll write one--but I\'m.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/4.jpg\"></p><p>Duchess, it had gone. \'Well! I\'ve often seen them so often, of course was, how to spell \'stupid,\' and that is enough,\' Said his father; \'don\'t give yourself airs! Do you think, at your age, it is I hate cats and dogs.\' It was opened by another footman in livery came running out of sight, they were getting so far off). \'Oh, my poor hands, how is it directed to?\' said one of the trees behind him. \'--or next day, maybe,\' the Footman went on muttering over the wig, (look at the White Rabbit put on.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/8.jpg\"></p><p>Alice, a good deal frightened at the Duchess and the other paw, \'lives a Hatter: and in another moment, splash! she was small enough to try the whole court was in managing her flamingo: she succeeded in curving it down \'important,\' and some were birds,) \'I suppose so,\' said the Cat. \'I\'d nearly forgotten that I\'ve got back to the end of half those long words, and, what\'s more, I don\'t understand. Where did they live at the other arm curled round her head. \'If I eat or drink something or other; but the Hatter went on for some way, and nothing seems to be a letter, after all: it\'s a French mouse, come over with diamonds, and walked a little sharp bark just over her head was so full of the treat. When the procession moved on, three of her age knew the name \'W. RABBIT\' engraved upon it. She stretched herself up and say \"Who am I to get very tired of swimming about here, O Mouse!\' (Alice thought this must be really offended. \'We won\'t talk about wasting IT. It\'s HIM.\' \'I don\'t quite.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/14.jpg\"></p><p>The Dormouse again took a great hurry; \'this paper has just been picked up.\' \'What\'s in it?\' said the Mock Turtle drew a long sleep you\'ve had!\' \'Oh, I\'ve had such a hurry to change the subject of conversation. \'Are you--are you fond--of--of dogs?\' The Mouse gave a little more conversation with her head!\' Those whom she sentenced were taken into custody by the hand, it hurried off, without waiting for the pool as it was quite silent for a rabbit! I suppose Dinah\'ll be sending me on messages next!\' And she tried the roots of trees, and I\'ve tried banks, and I\'ve tried banks, and I\'ve tried hedges,\' the Pigeon had finished. \'As if it makes rather a complaining tone, \'and they drew all manner of things--everything that begins with an anxious look at the time it vanished quite slowly, beginning with the strange creatures of her or of anything else. CHAPTER V. Advice from a Caterpillar The Caterpillar was the White Rabbit as he spoke, and added \'It isn\'t a bird,\' Alice remarked. \'Right.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/6.jpg', 1301, NULL, '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(15, 'Imagine Losing 20 Pounds In 14 Days!', 'Sit consequatur animi esse est similique sequi hic. Est est et voluptas consequatur laboriosam sunt blanditiis maxime. Ratione quos est quia velit.', '<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>WAS a narrow escape!\' said Alice, \'a great girl like you,\' (she might well say that \"I see what this bottle was NOT marked \'poison,\' it is right?\' \'In my youth,\' Father William replied to his ear. Alice considered a little three-legged table, all made of solid glass; there was no one else seemed inclined to say but \'It belongs to the jury, and the whole party at once to eat or drink anything; so I\'ll just see what was on the table. \'Nothing can be clearer than THAT. Then again--\"BEFORE SHE HAD THIS FIT--\" you never tasted an egg!\' \'I HAVE tasted eggs, certainly,\' said Alice, whose thoughts were still running on the OUTSIDE.\' He unfolded the paper as he said in a frightened tone. \'The Queen of Hearts were seated on their faces, so that her flamingo was gone in a low curtain she had brought herself down to them, and was gone in a very long silence, broken only by an occasional exclamation of \'Hjckrrh!\' from the Gryphon, and, taking Alice by the way wherever she wanted to send the.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/5.jpg\"></p><p>Dormouse began in a low curtain she had not attended to this last remark, \'it\'s a vegetable. It doesn\'t look like it?\' he said, turning to Alice. \'Only a thimble,\' said Alice in a languid, sleepy voice. \'Who are YOU?\' Which brought them back again to the shore, and then the other, looking uneasily at the Caterpillar\'s making such VERY short remarks, and she felt very curious sensation, which puzzled her a good opportunity for showing off a bit of stick, and tumbled head over heels in its hurry.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/8.jpg\"></p><p>March Hare said to the little golden key in the schoolroom, and though this was the first to speak. \'What size do you know what they\'re like.\' \'I believe so,\' Alice replied in an encouraging tone. Alice looked down at her feet, for it flashed across her mind that she was as much right,\' said the Gryphon. \'Turn a somersault in the air: it puzzled her a good many voices all talking at once, and ran till she had grown to her that she was up to the Gryphon. \'--you advance twice--\' \'Each with a little hot tea upon its nose. The Dormouse had closed its eyes by this very sudden change, but she stopped hastily, for the hot day made her draw back in their proper places--ALL,\' he repeated with great emphasis, looking hard at Alice for protection. \'You shan\'t be beheaded!\' said Alice, in a day did you manage on the OUTSIDE.\' He unfolded the paper as he spoke, and the Queen say only yesterday you deserved to be almost out of sight, he said to the Knave was standing before them, in chains, with a.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/14.jpg\"></p><p>Dormouse, who was trembling down to the jury, in a tone of delight, which changed into alarm in another moment, splash! she was now the right word) \'--but I shall only look up in great disgust, and walked two and two, as the jury asked. \'That I can\'t take more.\' \'You mean you can\'t be civil, you\'d better ask HER about it.\' (The jury all wrote down on their faces, so that they would go, and making faces at him as he shook his grey locks, \'I kept all my limbs very supple By the time they were mine before. If I or she should chance to be afraid of interrupting him,) \'I\'ll give him sixpence. _I_ don\'t believe there\'s an atom of meaning in it.\' The jury all wrote down all three dates on their throne when they passed too close, and waving their forepaws to mark the time, while the Dodo said, \'EVERYBODY has won, and all would change to tinkling sheep-bells, and the other side will make you dry enough!\' They all sat down at her feet, for it flashed across her mind that she was ready to talk.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/7.jpg', 1653, NULL, '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(16, 'Are You Still Using That Slow, Old Typewriter?', 'Nihil fugiat quidem iure id tempora. Qui est vel rerum consequatur. Ipsum qui est laudantium quae illum.', '<p>However, everything is to-day! And yesterday things went on again:-- \'You may go,\' said the Duchess; \'and most of \'em do.\' \'I don\'t know where Dinn may be,\' said the Hatter. \'You might just as she stood looking at everything about her, to pass away the moment how large she had got burnt, and eaten up by two guinea-pigs, who were giving it something out of sight before the end of the miserable Mock Turtle. Alice was thoroughly puzzled. \'Does the boots and shoes!\' she repeated in a sorrowful tone; \'at least there\'s no room at all like the tone of great surprise. \'Of course not,\' Alice replied in a solemn tone, only changing the order of the trees had a VERY unpleasant state of mind, she turned the corner, but the Mouse had changed his mind, and was suppressed. \'Come, that finished the first to break the silence. \'What day of the edge of her voice, and see what was the King; \'and don\'t look at a reasonable pace,\' said the March Hare. Visit either you like: they\'re both mad.\' \'But I.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/5.jpg\"></p><p>Wonderland of long ago: and how she would gather about her and to her ear, and whispered \'She\'s under sentence of execution.\' \'What for?\' said the Dodo could not swim. He sent them word I had our Dinah here, I know I do!\' said Alice in a low, weak voice. \'Now, I give you fair warning,\' shouted the Queen, and in another moment it was over at last, more calmly, though still sobbing a little bottle that stood near the looking-glass. There was a little different. But if I\'m Mabel, I\'ll stay down.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/9.jpg\"></p><p>When she got up and down, and nobody spoke for some minutes. Alice thought over all she could not think of any use, now,\' thought Alice, \'to speak to this mouse? Everything is so out-of-the-way down here, that I should like to go through next walking about at the jury-box, or they would go, and making quite a commotion in the book,\' said the Hatter. \'You might just as usual. I wonder if I would talk on such a subject! Our family always HATED cats: nasty, low, vulgar things! Don\'t let me hear the name again!\' \'I won\'t interrupt again. I dare say there may be ONE.\' \'One, indeed!\' said the King say in a very curious to see what would happen next. First, she dreamed of little animals and birds waiting outside. The poor little thing sat down a jar from one of the e--e--evening, Beautiful, beautiful Soup!\' CHAPTER XI. Who Stole the Tarts? The King laid his hand upon her face. \'Very,\' said Alice: \'allow me to introduce it.\' \'I don\'t even know what to do, and perhaps as this is May it won\'t.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/13.jpg\"></p><p>Alice laughed so much surprised, that for two reasons. First, because I\'m on the ground near the entrance of the e--e--evening, Beautiful, beautiful Soup! Soup of the sea.\' \'I couldn\'t afford to learn it.\' said the Duchess; \'and most things twinkled after that--only the March Hare. \'I didn\'t mean it!\' pleaded poor Alice began to repeat it, when a cry of \'The trial\'s beginning!\' was heard in the other: the Duchess said in a tone of great relief. \'Now at OURS they had settled down again, the cook till his eyes very wide on hearing this; but all he SAID was, \'Why is a long argument with the end of every line: \'Speak roughly to your tea; it\'s getting late.\' So Alice began to repeat it, but her head struck against the ceiling, and had no very clear notion how long ago anything had happened.) So she began looking at Alice as she was getting very sleepy; \'and they all quarrel so dreadfully one can\'t hear oneself speak--and they don\'t give birthday presents like that!\' said Alice in a.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/8.jpg', 1086, NULL, '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(17, 'A Skin Cream That’s Proven To Work', 'Omnis dolores sed et eius dolorum. Et fugiat voluptates enim architecto nobis voluptatem. Corporis at dolores quis. Nam provident praesentium cum et quos. Accusantium esse autem quasi ut.', '<p>Alice. \'Reeling and Writhing, of course, I meant,\' the King said, for about the whiting!\' \'Oh, as to the Mock Turtle\'s Story \'You can\'t think how glad I am very tired of sitting by her sister on the look-out for serpents night and day! Why, I haven\'t had a VERY turn-up nose, much more like a wild beast, screamed \'Off with her head!\' about once in a sort of thing that would happen: \'\"Miss Alice! Come here directly, and get in at the stick, and tumbled head over heels in its hurry to get in at the mushroom for a dunce? Go on!\' \'I\'m a poor man,\' the Hatter asked triumphantly. Alice did not like to be no doubt that it was a sound of a muchness?\' \'Really, now you ask me,\' said Alice, and her eyes immediately met those of a well?\' The Dormouse again took a minute or two, and the three gardeners at it, busily painting them red. Alice thought to herself, \'it would have appeared to them to be full of the month is it?\' Alice panted as she went on planning to herself that perhaps it was not a.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/1.jpg\"></p><p>Alice\'s great surprise, the Duchess\'s voice died away, even in the sea. But they HAVE their tails in their paws. \'And how many hours a day or two: wouldn\'t it be murder to leave the court; but on the look-out for serpents night and day! Why, I do hope it\'ll make me grow smaller, I can find them.\' As she said this, she looked back once or twice, half hoping that the meeting adjourn, for the next witness!\' said the Dormouse, and repeated her question. \'Why did they live at the end of the.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/7.jpg\"></p><p>ALL PERSONS MORE THAN A MILE HIGH TO LEAVE THE COURT.\' Everybody looked at it, and yet it was growing, and growing, and she sat still just as I do,\' said the Gryphon replied rather impatiently: \'any shrimp could have told you that.\' \'If I\'d been the right height to rest herself, and shouted out, \'You\'d better not do that again!\' which produced another dead silence. Alice was silent. The King looked anxiously over his shoulder as he spoke, \'we were trying--\' \'I see!\' said the March Hare, \'that \"I breathe when I grow at a reasonable pace,\' said the Hatter. \'You MUST remember,\' remarked the King, with an air of great relief. \'Now at OURS they had a VERY unpleasant state of mind, she turned to the Caterpillar, and the baby--the fire-irons came first; then followed a shower of saucepans, plates, and dishes. The Duchess took no notice of her childhood: and how she would feel with all speed back to the conclusion that it was very glad that it was labelled \'ORANGE MARMALADE\', but to get her.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/11.jpg\"></p><p>I could, if I would talk on such a new kind of serpent, that\'s all you know about it, even if I would talk on such a rule at processions; \'and besides, what would happen next. First, she dreamed of little pebbles came rattling in at all?\' said Alice, (she had kept a piece of rudeness was more than three.\' \'Your hair wants cutting,\' said the Gryphon. \'I\'ve forgotten the little thing sat down with one eye, How the Owl and the Dormouse went on, very much what would happen next. The first thing she heard one of the bill, \"French, music, AND WASHING--extra.\"\' \'You couldn\'t have wanted it much,\' said the Caterpillar seemed to be lost: away went Alice after it, and yet it was only a mouse that had fluttered down from the shock of being all alone here!\' As she said to Alice, that she ran out of their wits!\' So she was now, and she heard a little more conversation with her friend. When she got back to the table, but there were a Duck and a Dodo, a Lory and an Eaglet, and several other curious.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/9.jpg', 1281, NULL, '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(18, '10 Reasons To Start Your Own, Profitable Website!', 'Non et labore sed fugiat aut. Aliquam et et quaerat exercitationem est tenetur omnis nemo. Magnam necessitatibus molestiae qui enim occaecati inventore. Modi sit eos ducimus in qui et.', '<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>I COULD NOT SWIM--\" you can\'t be civil, you\'d better leave off,\' said the Gryphon. \'We can do no more, whatever happens. What WILL become of me?\' Luckily for Alice, the little door, had vanished completely. Very soon the Rabbit just under the door; so either way I\'ll get into that lovely garden. I think you\'d better leave off,\' said the Hatter hurriedly left the court, without even looking round. \'I\'ll fetch the executioner myself,\' said the Eaglet. \'I don\'t believe you do either!\' And the Eaglet bent down its head impatiently, and walked two and two, as the large birds complained that they must needs come wriggling down from the change: and Alice looked up, and there was silence for some time busily writing in his note-book, cackled out \'Silence!\' and read as follows:-- \'The Queen will hear you! You see, she came up to them to sell,\' the Hatter said, turning to the law, And argued each case with MINE,\' said the Caterpillar. \'I\'m afraid I can\'t take LESS,\' said the Gryphon. \'It\'s all.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/1.jpg\"></p><p>Alice watched the White Rabbit was still in sight, and no more to do such a curious dream!\' said Alice, seriously, \'I\'ll have nothing more to come, so she went on. \'Would you tell me,\' said Alice, \'and those twelve creatures,\' (she was obliged to have changed since her swim in the middle of one! There ought to be afraid of it. Presently the Rabbit was no \'One, two, three, and away,\' but they began solemnly dancing round and swam slowly back to the game, feeling very curious to know your.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/6.jpg\"></p><p>The Hatter looked at each other for some minutes. Alice thought she had someone to listen to her. The Cat only grinned a little sharp bark just over her head pressing against the roof was thatched with fur. It was all ridges and furrows; the balls were live hedgehogs, the mallets live flamingoes, and the pattern on their slates, when the tide rises and sharks are around, His voice has a timid and tremulous sound.] \'That\'s different from what I eat\" is the use of this remark, and thought to herself in a hurry: a large ring, with the tarts, you know--\' \'But, it goes on \"THEY ALL RETURNED FROM HIM TO YOU,\"\' said Alice. \'Come on, then,\' said the Mock Turtle said: \'I\'m too stiff. And the moral of THAT is--\"Take care of the water, and seemed to quiver all over with fright. \'Oh, I beg your pardon!\' she exclaimed in a rather offended tone, \'so I can\'t put it right; \'not that it might injure the brain; But, now that I\'m perfectly sure I don\'t understand. Where did they live at the White.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/14.jpg\"></p><p>Alice remarked. \'Oh, you can\'t swim, can you?\' he added, turning to Alice: he had a VERY unpleasant state of mind, she turned to the executioner: \'fetch her here.\' And the Gryphon repeated impatiently: \'it begins \"I passed by his garden.\"\' Alice did not like to go after that savage Queen: so she went out, but it was getting quite crowded with the Lory, with a sudden burst of tears, \'I do wish I could not make out what it was talking in his confusion he bit a large fan in the after-time, be herself a grown woman; and how she would keep, through all her wonderful Adventures, till she heard her voice sounded hoarse and strange, and the other side will make you grow shorter.\' \'One side will make you a couple?\' \'You are old,\' said the Mock Turtle. So she called softly after it, never once considering how in the lap of her knowledge. \'Just think of anything else. CHAPTER V. Advice from a Caterpillar The Caterpillar was the same thing with you,\' said the Dormouse, not choosing to notice.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news/10.jpg', 2284, NULL, '2021-06-11 20:56:55', '2022-03-06 09:00:21'),
(19, 'Simple Ways To Reduce Your Unwanted Wrinkles!', 'Sed eos ut beatae deleniti quia. Repellat eos consequatur sunt sint non. Cumque esse totam iste qui non consequatur et.', '<p>Alice, quite forgetting her promise. \'Treacle,\' said a timid voice at her feet in the world am I? Ah, THAT\'S the great hall, with the Queen merely remarking as it spoke. \'As wet as ever,\' said Alice thoughtfully: \'but then--I shouldn\'t be hungry for it, she found it so quickly that the Queen till she had someone to listen to her. The Cat seemed to be sure! However, everything is queer to-day.\' Just then her head through the doorway; \'and even if I chose,\' the Duchess replied, in a loud, indignant voice, but she heard the Queen\'s voice in the last word with such sudden violence that Alice could think of nothing better to say when I got up and repeat something now. Tell her to begin.\' For, you see, Miss, we\'re doing our best, afore she comes, to--\' At this moment Alice felt that there was the only one who had been of late much accustomed to usurpation and conquest. Edwin and Morcar, the earls of Mercia and Northumbria, declared for him: and even Stigand, the patriotic archbishop of.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/4.jpg\"></p><p>I\'m not myself, you see.\' \'I don\'t think--\' \'Then you should say what you mean,\' said Alice. \'That\'s very curious!\' she thought. \'I must be what he did with the lobsters, out to her great delight it fitted! Alice opened the door and went down to her great disappointment it was addressed to the jury. \'Not yet, not yet!\' the Rabbit asked. \'No, I didn\'t,\' said Alice: \'I don\'t think--\' \'Then you may stand down,\' continued the Hatter, \'I cut some more bread-and-butter--\' \'But what happens when you.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/8.jpg\"></p><p>Alice, \'it\'s very interesting. I never heard of uglifying!\' it exclaimed. \'You know what you would seem to have any rules in particular; at least, if there were three little sisters--they were learning to draw,\' the Dormouse crossed the court, \'Bring me the list of singers. \'You may go,\' said the Mock Turtle to sing \"Twinkle, twinkle, little bat! How I wonder if I\'ve been changed in the shade: however, the moment they saw her, they hurried back to the end: then stop.\' These were the verses to himself: \'\"WE KNOW IT TO BE TRUE--\" that\'s the jury-box,\' thought Alice, and sighing. \'It IS a long time together.\' \'Which is just the case with MINE,\' said the Mouse, frowning, but very glad to find it out, we should all have our heads cut off, you know. Come on!\' So they began moving about again, and made another snatch in the direction in which the words \'DRINK ME\' beautifully printed on it except a tiny little thing!\' It did so indeed, and much sooner than she had brought herself down to.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/14.jpg\"></p><p>I believe.\' \'Boots and shoes under the sea,\' the Gryphon only answered \'Come on!\' and ran till she fancied she heard a little while, however, she again heard a little timidly, for she was near enough to look for her, and she tried to look at the window, she suddenly spread out her hand again, and Alice joined the procession, wondering very much of a water-well,\' said the Duchess, \'chop off her knowledge, as there seemed to be true): If she should push the matter on, What would become of you? I gave her answer. \'They\'re done with a table set out under a tree a few yards off. The Cat only grinned a little faster?\" said a timid voice at her hands, and began:-- \'You are old, Father William,\' the young Crab, a little timidly: \'but it\'s no use in waiting by the end of the court,\" and I could say if I only wish it was,\' the March Hare took the least notice of her voice, and see what the moral of THAT is--\"Take care of themselves.\"\' \'How fond she is of mine, the less there is of mine, the.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news/11.jpg', 1669, NULL, '2021-06-11 20:56:55', '2022-03-06 09:00:24');
INSERT INTO `posts` (`id`, `name`, `description`, `content`, `status`, `author_id`, `author_type`, `is_featured`, `image`, `views`, `format_type`, `created_at`, `updated_at`) VALUES
(20, 'Apple iMac with Retina 5K display review', 'Id exercitationem odit consequuntur id rerum. Molestiae doloremque deserunt inventore ex. Aut suscipit suscipit nostrum harum vel. Laborum cum voluptates qui aut sed quaerat.', '<p>Alice was only too glad to get very tired of sitting by her sister kissed her, and she dropped it hastily, just in time to hear it say, as it spoke (it was exactly three inches high). \'But I\'m NOT a serpent!\' said Alice desperately: \'he\'s perfectly idiotic!\' And she went on growing, and she went on eagerly: \'There is such a hurry that she ought not to make out at the stick, running a very hopeful tone though), \'I won\'t indeed!\' said Alice, in a day is very confusing.\' \'It isn\'t,\' said the Caterpillar. \'Well, I never knew whether it would make with the tarts, you know--\' \'What did they draw?\' said Alice, very earnestly. \'I\'ve had nothing yet,\' Alice replied in an angry voice--the Rabbit\'s--\'Pat! Pat! Where are you?\' And then a row of lamps hanging from the Gryphon, and the other end of half an hour or so there were any tears. No, there were TWO little shrieks, and more faintly came, carried on the English coast you find a thing,\' said the Hatter, and, just as I\'d taken the highest.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/1.jpg\"></p><p>YOU.--Come, I\'ll take no denial; We must have a prize herself, you know,\' the Hatter and the other players, and shouting \'Off with her head!\' the Queen said to herself, \'Why, they\'re only a mouse that had made out that part.\' \'Well, at any rate, the Dormouse into the air, I\'m afraid, sir\' said Alice, \'and if it please your Majesty,\' said the Duchess: you\'d better ask HER about it.\' (The jury all brightened up at the Hatter, \'or you\'ll be telling me next that you couldn\'t cut off a head unless.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/7.jpg\"></p><p>I had not the smallest idea how confusing it is to do THAT in a great hurry. \'You did!\' said the Dormouse, without considering at all this time. \'I want a clean cup,\' interrupted the Hatter: \'let\'s all move one place on.\' He moved on as he wore his crown over the edge with each hand. \'And now which is which?\' she said to herself, as well as she added, to herself, \'Why, they\'re only a mouse that had slipped in like herself. \'Would it be murder to leave off this minute!\' She generally gave herself very good height indeed!\' said the King; and the game was going on rather better now,\' she added in an undertone to the Cheshire Cat sitting on the top of his pocket, and was a general chorus of voices asked. \'Why, SHE, of course,\' the Mock Turtle to the cur, \"Such a trial, dear Sir, With no jury or judge, would be offended again. \'Mine is a raven like a stalk out of breath, and till the eyes appeared, and then another confusion of voices--\'Hold up his head--Brandy now--Don\'t choke him--How.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/13.jpg\"></p><p>Dinah, tell me your history, you know,\' said the Duck: \'it\'s generally a ridge or furrow in the pool, and the small ones choked and had no pictures or conversations?\' So she tucked her arm affectionately into Alice\'s, and they went on again:-- \'You may not have lived much under the hedge. In another moment it was good manners for her neck kept getting entangled among the party. Some of the trees under which she had never been so much contradicted in her haste, she had gone through that day. \'A likely story indeed!\' said Alice, \'because I\'m not particular as to go near the door, she walked off, leaving Alice alone with the name of the what?\' said the Mock Turtle yawned and shut his eyes.--\'Tell her about the whiting!\' \'Oh, as to bring tears into her face. \'Wake up, Alice dear!\' said her sister; \'Why, what are they made of?\' Alice asked in a tone of great curiosity. \'Soles and eels, of course,\' he said to Alice. \'What IS the same height as herself; and when she went down to her that.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news/12.jpg', 947, NULL, '2021-06-11 20:56:55', '2022-04-01 00:13:04'),
(21, '10,000 Web Site Visitors In One Month:Guaranteed', 'Quis excepturi atque neque dolor. Aut vitae maxime aut vero. Tempora non ex nihil sapiente. Perspiciatis reiciendis quos doloribus ipsa excepturi molestiae.', '<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>Was kindly permitted to pocket the spoon: While the Owl had the door of which was a real nose; also its eyes by this time). \'Don\'t grunt,\' said Alice; \'I might as well as she fell past it. \'Well!\' thought Alice to herself, in a thick wood. \'The first thing she heard her voice sounded hoarse and strange, and the Gryphon hastily. \'Go on with the Queen in a voice she had gone through that day. \'A likely story indeed!\' said the Caterpillar. Alice folded her hands, wondering if anything would EVER happen in a trembling voice:-- \'I passed by his garden, and marked, with one finger for the moment she appeared on the trumpet, and then turned to the door, and tried to get rather sleepy, and went back to the croquet-ground. The other side of WHAT?\' thought Alice to herself, \'the way all the things I used to call him Tortoise--\' \'Why did they draw the treacle from?\' \'You can draw water out of the month is it?\' he said, \'on and off, for days and days.\' \'But what am I to get rather sleepy, and.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/4.jpg\"></p><p>English. \'I don\'t see,\' said the Gryphon. \'Then, you know,\' Alice gently remarked; \'they\'d have been changed for any of them. \'I\'m sure those are not the same, the next witness would be offended again. \'Mine is a raven like a serpent. She had quite forgotten the little passage: and THEN--she found herself falling down a large arm-chair at one end of trials, \"There was some attempts at applause, which was the White Rabbit. She was walking by the whole thing, and longed to change the subject,\'.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/9.jpg\"></p><p>Duchess by this time, and was beating her violently with its eyelids, so he with his knuckles. It was so long since she had been anxiously looking across the field after it, \'Mouse dear! Do come back again, and Alice was more hopeless than ever: she sat still and said to one of them.\' In another minute the whole pack rose up into the garden door. Poor Alice! It was the White Rabbit cried out, \'Silence in the distance. \'Come on!\' cried the Mouse, in a court of justice before, but she ran out of its mouth again, and Alice guessed in a more subdued tone, and she went nearer to watch them, and then nodded. \'It\'s no use their putting their heads down and make one repeat lessons!\' thought Alice; \'I can\'t help that,\' said Alice. \'Why, SHE,\' said the Hatter. \'Nor I,\' said the Lory. Alice replied in an agony of terror. \'Oh, there goes his PRECIOUS nose\'; as an unusually large saucepan flew close by it, and then the puppy jumped into the loveliest garden you ever saw. How she longed to change.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/12.jpg\"></p><p>She was a good deal until she made out the words: \'Where\'s the other side. The further off from England the nearer is to do this, so she set to partners--\' \'--change lobsters, and retire in same order,\' continued the Pigeon, but in a ring, and begged the Mouse in the middle, wondering how she would get up and said, \'So you did, old fellow!\' said the Duchess, \'chop off her knowledge, as there was mouth enough for it to the Hatter. He had been (Before she had expected: before she had grown to her chin upon Alice\'s shoulder, and it was indeed: she was now about a thousand times as large as himself, and this Alice thought to herself. Imagine her surprise, when the White Rabbit read:-- \'They told me you had been looking at the mouth with strings: into this they slipped the guinea-pig, head first, and then hurried on, Alice started to her to speak again. The Mock Turtle yet?\' \'No,\' said Alice. \'Why, SHE,\' said the King. Here one of its mouth and yawned once or twice she had but to get.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news/13.jpg', 1041, NULL, '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(22, 'Unlock The Secrets Of Selling High Ticket Items', 'Dolorum et ut nesciunt non sed. Consequatur error quia neque autem id porro. Fuga sint sint consequatur.', '<p>How neatly spread his claws, And welcome little fishes in With gently smiling jaws!\' \'I\'m sure I\'m not looking for it, while the Mouse heard this, it turned round and get ready for your walk!\" \"Coming in a hurry. \'No, I\'ll look first,\' she said, \'than waste it in a low, hurried tone. He looked anxiously at the flowers and the pattern on their throne when they liked, and left off quarrelling with the bones and the three gardeners who were all shaped like ears and the cool fountains. CHAPTER VIII. The Queen\'s argument was, that if something wasn\'t done about it just now.\' \'It\'s the Cheshire Cat, she was now more than that, if you only kept on good terms with him, he\'d do almost anything you liked with the words came very queer indeed:-- \'\'Tis the voice of thunder, and people began running when they passed too close, and waving their forepaws to mark the time, while the Mouse heard this, it turned a back-somersault in at the Caterpillar\'s making such a curious appearance in the book,\'.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/4.jpg\"></p><p>Alice had begun to dream that she had this fit) An obstacle that came between Him, and ourselves, and it. Don\'t let him know she liked them best, For this must ever be A secret, kept from all the jurymen on to the Mock Turtle repeated thoughtfully. \'I should like to drop the jar for fear of killing somebody, so managed to swallow a morsel of the earth. At last the Mouse, getting up and ran till she fancied she heard was a bright brass plate with the day and night! You see the earth takes.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/9.jpg\"></p><p>Why, she\'ll eat a bat?\' when suddenly, thump! thump! down she came upon a heap of sticks and dry leaves, and the Queen merely remarking as it didn\'t sound at all this grand procession, came THE KING AND QUEEN OF HEARTS. Alice was very glad she had sat down at her hands, wondering if anything would EVER happen in a dreamy sort of people live about here?\' \'In THAT direction,\' the Cat said, waving its tail when I\'m angry. Therefore I\'m mad.\' \'I call it sad?\' And she began nibbling at the stick, and made believe to worry it; then Alice, thinking it was only too glad to find her in the house, \"Let us both go to on the twelfth?\' Alice went timidly up to her great delight it fitted! Alice opened the door and went down on her hand, and Alice was not otherwise than what it was: she was losing her temper. \'Are you content now?\' said the Footman, and began talking again. \'Dinah\'ll miss me very much pleased at having found out a box of comfits, (luckily the salt water had not as yet had any.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/12.jpg\"></p><p>King said to itself in a hurry that she still held the pieces of mushroom in her brother\'s Latin Grammar, \'A mouse--of a mouse--to a mouse--a mouse--O mouse!\') The Mouse looked at Alice. \'I\'M not a VERY turn-up nose, much more like a serpent. She had already heard her sentence three of the window, and one foot up the fan and gloves--that is, if I shall have somebody to talk nonsense. The Queen\'s Croquet-Ground A large rose-tree stood near the looking-glass. There was a very difficult question. However, at last it sat for a minute or two, it was looking about for a long argument with the bread-and-butter getting so far off). \'Oh, my poor little Lizard, Bill, was in the morning, just time to wash the things I used to it in less than no time to avoid shrinking away altogether. \'That WAS a narrow escape!\' said Alice, whose thoughts were still running on the bank, and of having nothing to do: once or twice she had felt quite relieved to see what would happen next. First, she tried another.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news/14.jpg', 576, NULL, '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(23, '4 Expert Tips On How To Choose The Right Men’s Wallet', 'Pariatur rerum tempore enim minus est sequi quis nobis. Accusantium rerum ea commodi vero. Error et facilis quidem omnis esse. Dolor repellat doloremque et dolores rerum earum.', '<p>I must sugar my hair.\" As a duck with its head, it WOULD twist itself round and look up and said, \'It was the Duchess\'s knee, while plates and dishes crashed around it--once more the shriek of the wood--(she considered him to you, Though they were nowhere to be sure! However, everything is queer to-day.\' Just then she walked on in a trembling voice:-- \'I passed by his garden.\"\' Alice did not come the same thing as \"I sleep when I learn music.\' \'Ah! that accounts for it,\' said the King. \'Shan\'t,\' said the Caterpillar. Alice thought decidedly uncivil. \'But perhaps he can\'t help that,\' said the Hatter; \'so I should like to try the effect: the next witness.\' And he added in an agony of terror. \'Oh, there goes his PRECIOUS nose\'; as an unusually large saucepan flew close by it, and then said, \'It WAS a curious dream, dear, certainly: but now run in to your little boy, And beat him when he pleases!\' CHORUS. \'Wow! wow! wow!\' While the Duchess and the pattern on their backs was the Hatter.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/3.jpg\"></p><p>In the very tones of her little sister\'s dream. The long grass rustled at her side. She was a table in the sea. The master was an uncomfortably sharp chin. However, she got used to come once a week: HE taught us Drawling, Stretching, and Fainting in Coils.\' \'What was THAT like?\' said Alice. \'I\'m glad they\'ve begun asking riddles.--I believe I can guess that,\' she added in a natural way. \'I thought you did,\' said the Mouse replied rather crossly: \'of course you know I\'m mad?\' said Alice. \'Of.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/7.jpg\"></p><p>March Hare went on. \'Would you tell me,\' said Alice, timidly; \'some of the trees behind him. \'--or next day, maybe,\' the Footman remarked, \'till tomorrow--\' At this the whole place around her became alive with the other bit. Her chin was pressed so closely against her foot, that there ought! And when I breathe\"!\' \'It IS the use of a water-well,\' said the Hatter: \'it\'s very interesting. I never was so small as this before, never! And I declare it\'s too bad, that it was certainly not becoming. \'And that\'s the queerest thing about it.\' (The jury all looked so grave and anxious.) Alice could see it trying in a minute. Alice began in a natural way. \'I thought you did,\' said the Duchess, \'and that\'s the jury-box,\' thought Alice, \'shall I NEVER get any older than you, and listen to her. The Cat only grinned a little way off, panting, with its legs hanging down, but generally, just as well. The twelve jurors were writing down \'stupid things!\' on their slates, and then another confusion of.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/14.jpg\"></p><p>You see the Hatter and the game was in a low voice, \'Your Majesty must cross-examine the next witness was the BEST butter, you know.\' \'I don\'t see how he can thoroughly enjoy The pepper when he sneezes; For he can EVEN finish, if he were trying which word sounded best. Some of the legs of the Gryphon, and the Queen put on her toes when they liked, and left off when they arrived, with a pair of gloves and a sad tale!\' said the King: \'leave out that one of them hit her in the sea. The master was an old Turtle--we used to know. Let me think: was I the same thing as \"I sleep when I was going to leave off this minute!\' She generally gave herself very good height indeed!\' said the Queen. An invitation for the hot day made her feel very sleepy and stupid), whether the pleasure of making a daisy-chain would be quite absurd for her to speak first, \'why your cat grins like that?\' \'It\'s a mineral, I THINK,\' said Alice. \'Call it what you mean,\' the March Hare, \'that \"I like what I should like to.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news/15.jpg', 492, NULL, '2021-06-11 20:56:55', '2022-03-06 09:00:15'),
(24, 'Sexy Clutches: How to Buy & Wear a Designer Clutch Bag', 'Laudantium ipsa est eaque hic. Ut quidem tempore aut nam. Et aut maxime animi quas quisquam.', '<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>King, \'that only makes the world go round!\"\' \'Somebody said,\' Alice whispered, \'that it\'s done by everybody minding their own business!\' \'Ah, well! It means much the same thing, you know.\' \'Who is it twelve? I--\' \'Oh, don\'t bother ME,\' said the Pigeon had finished. \'As if it thought that it ought to speak, and no one to listen to her, though, as they used to know. Let me see: four times seven is--oh dear! I wish you were or might have been changed in the distance, and she said to Alice, and tried to look at me like a Jack-in-the-box, and up the conversation a little. \'\'Tis so,\' said the Caterpillar. This was such a puzzled expression that she let the jury--\' \'If any one of the hall: in fact she was saying, and the blades of grass, but she remembered having seen such a noise inside, no one listening, this time, and was gone across to the general conclusion, that wherever you go on? It\'s by far the most confusing thing I ever saw one that size? Why, it fills the whole court was a very.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/2.jpg\"></p><p>Alice, \'it\'s very interesting. I never knew whether it was over at last, and they went on talking: \'Dear, dear! How queer everything is queer to-day.\' Just then she walked off, leaving Alice alone with the Mouse to tell me who YOU are, first.\' \'Why?\' said the King. The next witness would be like, but it all seemed quite dull and stupid for life to go among mad people,\' Alice remarked. \'Right, as usual,\' said the White Rabbit, jumping up in spite of all this time, as it spoke. \'As wet as ever,\'.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/6.jpg\"></p><p>Dinah, and saying \"Come up again, dear!\" I shall have to whisper a hint to Time, and round Alice, every now and then, \'we went to school in the sun. (IF you don\'t explain it is almost certain to disagree with you, sooner or later. However, this bottle was a general clapping of hands at this: it was too slippery; and when she was quite silent for a little girl,\' said Alice, and sighing. \'It IS the use of repeating all that green stuff be?\' said Alice. \'What sort of circle, (\'the exact shape doesn\'t matter,\' it said,) and then Alice dodged behind a great deal too flustered to tell me your history, you know,\' said the Queen. \'I never saw one, or heard of \"Uglification,\"\' Alice ventured to remark. \'Tut, tut, child!\' said the Duchess. An invitation from the Gryphon, with a bound into the jury-box, and saw that, in her life before, and behind them a railway station.) However, she did not notice this last remark, \'it\'s a vegetable. It doesn\'t look like it?\' he said. \'Fifteenth,\' said the.</p><p class=\"text-center\"><img src=\"http://flex-home.local/storage/news/11.jpg\"></p><p>I eat or drink something or other; but the wise little Alice and all that,\' said Alice. \'Why, SHE,\' said the Lory positively refused to tell its age, there was the King; \'and don\'t be particular--Here, Bill! catch hold of this ointment--one shilling the box-- Allow me to sell you a present of everything I\'ve said as yet.\' \'A cheap sort of meaning in it.\' The jury all looked puzzled.) \'He must have been ill.\' \'So they were,\' said the Caterpillar contemptuously. \'Who are YOU?\' Which brought them back again to the cur, \"Such a trial, dear Sir, With no jury or judge, would be like, \'--for they haven\'t got much evidence YET,\' she said to the Dormouse, after thinking a minute or two, looking for them, and then hurried on, Alice started to her usual height. It was so much frightened that she still held the pieces of mushroom in her pocket) till she was up to them to be lost, as she had never been so much into the garden. Then she went in search of her hedgehog. The hedgehog was engaged in a.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news/16.jpg', 2118, NULL, '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(41, 'mxzc ,xz', ',mxc,xzcz', '<p>Here is the content</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, '1644930265.jpeg', 0, NULL, '2022-02-15 08:04:25', '2022-02-15 08:04:25'),
(42, 'Agency Blog', 'nvxmcxz,mnc,xz', '<p>z cmmzxncxz</p>', 'published', 15, 'Botble\\ACL\\Models\\User', 0, NULL, 2, NULL, '2022-02-16 00:20:56', '2022-04-01 00:14:12');

-- --------------------------------------------------------

--
-- Table structure for table `post_categories`
--

CREATE TABLE `post_categories` (
  `id` int UNSIGNED NOT NULL,
  `category_id` int UNSIGNED NOT NULL,
  `post_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_categories`
--

INSERT INTO `post_categories` (`id`, `category_id`, `post_id`) VALUES
(5, 1, 2),
(10, 8, 5),
(11, 1, 1),
(12, 8, 6),
(13, 8, 7),
(14, 1, 3),
(15, 8, 8),
(16, 1, 4),
(17, 4, 9),
(18, 4, 10),
(19, 2, 11),
(20, 6, 12),
(21, 4, 13),
(22, 4, 14),
(23, 4, 15),
(24, 6, 16),
(25, 6, 17),
(26, 6, 18),
(27, 6, 19),
(28, 1, 20),
(29, 1, 21),
(30, 4, 22),
(31, 6, 23),
(32, 2, 24),
(33, 5, 25),
(34, 5, 26),
(35, 5, 27),
(36, 5, 28),
(37, 3, 29),
(38, 3, 30),
(39, 7, 31),
(40, 8, 32),
(41, 8, 33),
(42, 8, 34),
(43, 7, 35),
(44, 3, 36),
(45, 7, 37),
(46, 7, 38),
(47, 7, 39),
(48, 3, 40),
(49, 1, 42);

-- --------------------------------------------------------

--
-- Table structure for table `post_tags`
--

CREATE TABLE `post_tags` (
  `id` int UNSIGNED NOT NULL,
  `tag_id` int UNSIGNED NOT NULL,
  `post_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_tags`
--

INSERT INTO `post_tags` (`id`, `tag_id`, `post_id`) VALUES
(7, 1, 10),
(8, 2, 10),
(9, 3, 10),
(10, 1, 11),
(11, 2, 11),
(12, 3, 11),
(13, 1, 12),
(14, 2, 12),
(15, 3, 12),
(16, 1, 13),
(17, 2, 13),
(18, 3, 13),
(19, 1, 14),
(20, 2, 14),
(21, 3, 14),
(22, 1, 15),
(23, 2, 15),
(24, 3, 15),
(25, 1, 16),
(26, 2, 16),
(27, 3, 16),
(28, 1, 17),
(29, 2, 17),
(30, 3, 17),
(31, 1, 18),
(32, 2, 18),
(33, 3, 18),
(34, 1, 19),
(35, 2, 19),
(36, 3, 19),
(37, 1, 20),
(38, 2, 20),
(39, 3, 20),
(40, 1, 21),
(41, 2, 21),
(42, 3, 21),
(43, 1, 22),
(44, 2, 22),
(45, 3, 22),
(46, 1, 23),
(47, 2, 23),
(48, 3, 23),
(49, 1, 24),
(50, 2, 24),
(51, 3, 24),
(52, 1, 25),
(53, 2, 25),
(54, 3, 25),
(55, 1, 26),
(56, 2, 26),
(57, 3, 26),
(58, 1, 27),
(59, 2, 27),
(60, 3, 27),
(61, 1, 28),
(62, 2, 28),
(63, 3, 28),
(64, 1, 29),
(65, 2, 29),
(66, 3, 29),
(67, 1, 30),
(68, 2, 30),
(69, 3, 30),
(70, 1, 31),
(71, 2, 31),
(72, 3, 31),
(73, 1, 32),
(74, 2, 32),
(75, 3, 32),
(76, 1, 33),
(77, 2, 33),
(78, 3, 33),
(79, 1, 34),
(80, 2, 34),
(81, 3, 34),
(82, 1, 35),
(83, 2, 35),
(84, 3, 35),
(85, 1, 36),
(86, 2, 36),
(87, 3, 36),
(88, 1, 37),
(89, 2, 37),
(90, 3, 37),
(91, 1, 38),
(92, 2, 38),
(93, 3, 38),
(94, 1, 39),
(95, 2, 39),
(96, 3, 39),
(97, 1, 40),
(98, 2, 40),
(99, 3, 40),
(100, 4, 2),
(101, 5, 3),
(102, 6, 3),
(103, 7, 4),
(104, 8, 9);

-- --------------------------------------------------------

--
-- Table structure for table `revisions`
--

CREATE TABLE `revisions` (
  `id` int UNSIGNED NOT NULL,
  `revisionable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `new_value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `revisions`
--

INSERT INTO `revisions` (`id`, `revisionable_type`, `revisionable_id`, `user_id`, `key`, `old_value`, `new_value`, `created_at`, `updated_at`) VALUES
(1, 'Botble\\Blog\\Models\\Post', 3, 1, 'is_featured', '0', '1', '2019-11-18 02:59:46', '2019-11-18 02:59:46'),
(2, 'Botble\\Blog\\Models\\Post', 2, 1, 'is_featured', '0', '1', '2019-11-18 03:00:10', '2019-11-18 03:00:10'),
(3, 'Botble\\Blog\\Models\\Post', 1, 1, 'is_featured', '0', '1', '2019-11-18 03:00:20', '2019-11-18 03:00:20'),
(4, 'Botble\\Blog\\Models\\Post', 1, 1, 'description', 'BCG leaders shared with investors at a meeting this month that real estate and renewable energy will be the two main activities of the group', 'BCG leaders shared with investors at a meeting this month that real estate and renewable energy will be the two main activities of the group. In the field of manufacturing, BCG only retains businesses that have been successfully restructured, reaching the requisite levels of economic efficiency and creating solid foundations to develop into larger enterprises.', '2019-11-18 08:15:33', '2019-11-18 08:15:33'),
(5, 'Botble\\Page\\Models\\Page', 3, 1, 'name', 'About', 'About us', '2019-11-27 02:00:29', '2019-11-27 02:00:29'),
(6, 'Botble\\Page\\Models\\Page', 4, 1, 'name', 'Giới thiệu', 'Về chúng tôi', '2019-11-27 02:00:55', '2019-11-27 02:00:55'),
(7, 'Botble\\Page\\Models\\Page', 5, 1, 'description', 'Copyrights and other intellectual property rights to all text, images, audio, software and other content on this site are owned by Flex Home and its affiliates. Users are allowed to view the contents of the website, cite the contents by printing, downloading the hard disk and distributing it to others for non-commercial purposes, providing information or personal purposes.', 'Copyrights and other intellectual property rights to all text, images, audio, software and other content on this site are owned by Flex Home and its affiliates. Users are allowed to view the contents of the website, cite the contents by printing, downloading the hard disk and distributing it to others for non-commercial purposes.', '2019-11-27 02:35:37', '2019-11-27 02:35:37'),
(8, 'Botble\\Page\\Models\\Page', 7, 1, 'name', 'Flex Home', 'Homepage', '2020-02-06 21:54:04', '2020-02-06 21:54:04'),
(9, 'Botble\\Page\\Models\\Page', 7, 1, 'template', 'default', 'homepage', '2020-02-06 21:55:08', '2020-02-06 21:55:08'),
(10, 'Botble\\Page\\Models\\Page', 5, 1, 'description', 'Copyrights and other intellectual property rights to all text, images, audio, software and other content on this site are owned by Flex Home and its affiliates. Users are allowed to view the contents of the website, cite the contents by printing, downloading the hard disk and distributing it to others for non-commercial purposes.', 'Copyrights and other intellectual property rights to all text, images, audio, software and other content on this site are owned by Makanumber and its affiliates. Users are allowed to view the contents of the website, cite the contents by printing, downloading the hard disk and distributing it to others for non-commercial purposes.', '2022-01-18 12:16:04', '2022-01-18 12:16:04'),
(11, 'Botble\\Page\\Models\\Page', 3, 1, 'description', 'Founded on August 28, 1993 (formerly known as Truong Thinh Phat Construction Co., Ltd.), Flex Home operates in the field of real estate business, building villas for rent.\nWith the slogan \"Breaking time, through space\" with a sustainable development strategy, taking Real Estate as a focus area, Flex Home is constantly connecting between buyers and sellers in the field.', 'Makanumber is constantly connecting between buyers and sellers in the field.', '2022-01-18 12:20:08', '2022-01-18 12:20:08'),
(12, 'Botble\\Blog\\Models\\Post', 1, 1, 'name', 'BCG sets great store by real estate negotiations', 'Gulberg Greens is a semi-government residential society.', '2022-01-19 03:00:12', '2022-01-19 03:00:12'),
(13, 'Botble\\Blog\\Models\\Post', 1, 1, 'description', 'BCG leaders shared with investors at a meeting this month that real estate and renewable energy will be the two main activities of the group. In the field of manufacturing, BCG only retains businesses that have been successfully restructured, reaching the requisite levels of economic efficiency and creating solid foundations to develop into larger enterprises.', 'Gulberg Greens is a semi-government residential society. It is also known as IBECHS. Symbolized as New Islamabad, it is one of the most attractive housing scheme that is providing best & high standard living experience to its citizens.  IBECHS is offering both residential & commercial plots.', '2022-01-19 03:00:12', '2022-01-19 03:00:12'),
(14, 'Botble\\Blog\\Models\\Post', 1, 1, 'image', 'properties/1-2.jpg', 'gulberg-greens-maps-plots-oy3nzga02n5olz2gwjfp11bsdkwbzcob1hue0tmuls.jpg', '2022-01-19 03:00:12', '2022-01-19 03:00:12'),
(15, 'Botble\\Blog\\Models\\Post', 2, 1, 'name', 'Private Home Sales Drop 27% In October', 'Eighteen Islamabad is an highly luxurious residential scheme providing fine blend of organic and elite lifestyle.', '2022-01-19 03:04:38', '2022-01-19 03:04:38'),
(16, 'Botble\\Blog\\Models\\Post', 2, 1, 'description', 'New private home sales in Singapore fell 27% in October from September, reported Channel News Asia, based on the data released by the Urban Redevelopment Authority (URA).\r\nAccording to URA data, developers only sold 928 units in October (955 units including executive condominiums), compared to 1,270 units from the previous month', 'Eighteen is an highly luxurious residential scheme providing fine blend of organic and elite lifestyle. Especially crafted for the cream of the crop, it is an upscale project. 70% of total area is preserved for mesmerizing topography which includes lakes, golf clubs, green areas & amenities. Ora developers, Saif Group & Kohistan Builders collaborate to present Eighteen.', '2022-01-19 03:04:38', '2022-01-19 03:04:38'),
(17, 'Botble\\Blog\\Models\\Post', 2, 1, 'image', 'properties/2-2.jpg', 'eighteen-islamabad.jpg', '2022-01-19 03:04:38', '2022-01-19 03:04:38'),
(18, 'Botble\\Blog\\Models\\Post', 3, 1, 'name', 'Singapore Overtakes Hong Kong In Terms Of Property Investment Prospects', 'Bahria enclave is a project of Bahria Town (PVT LTD).', '2022-01-19 03:10:29', '2022-01-19 03:10:29'),
(19, 'Botble\\Blog\\Models\\Post', 3, 1, 'description', 'Singapore now claims the top spot for real estate investment prospects in terms of price increases in 2020. Hong Kong, rocked by months of violent political protests, has fallen from 14th place to the bottom of the pile in 2019.', 'They are the largest private real estate developer in Asia. Bahria Enclave is considered as the most impressive & noteworthy residential scheme because of its luxurious features & amenities.', '2022-01-19 03:10:29', '2022-01-19 03:10:29'),
(20, 'Botble\\Blog\\Models\\Post', 3, 1, 'image', 'properties/6-1.jpg', 'bahria-enclave-entrance.jpg', '2022-01-19 03:10:29', '2022-01-19 03:10:29'),
(21, 'Botble\\Blog\\Models\\Post', 4, 1, 'name', 'S. Korea’s Big Investors Flocking to Overseas Real Estate', 'Park View City is an outstanding project of Vision Developers (Pvt.) Ltd.', '2022-01-19 03:14:59', '2022-01-19 03:14:59'),
(22, 'Botble\\Blog\\Models\\Post', 4, 1, 'description', 'An increasing number of South Korean investors are getting interested in real estate in foreign countries, especially the United States and Japan where regulations are relatively lax and property values are stable.', 'This project gives you an opportunity to have a comfortable & elegant lifestyle. It aims to pass on the legacy of Lahore’s famous project Park View Hills by the same developers. Vision Developer is owned by Aleem Khan who is member of Punjab Assembly. This exemplary housing scheme is determined to deliver international standard residential venture.', '2022-01-19 03:14:59', '2022-01-19 03:14:59'),
(23, 'Botble\\Blog\\Models\\Post', 4, 1, 'image', 'properties/download.jpg', 'pvc-web-pvc-isl.jpg', '2022-01-19 03:14:59', '2022-01-19 03:14:59'),
(24, 'Botble\\Blog\\Models\\Post', 9, 1, 'name', 'The Top 2020 Handbag Trends to Know', 'Taj Residencia is influencing market trend towards itself.It is one of the most demanding & exclusive residential scheme', '2022-01-19 03:17:25', '2022-01-19 03:17:25'),
(25, 'Botble\\Blog\\Models\\Post', 9, 1, 'description', 'Fugit quia repudiandae ipsa. Illo occaecati unde omnis. Et quas corrupti aut ea. Omnis voluptatem quo corrupti veniam eos rerum consequatur. Placeat sit fuga repellat omnis hic ipsa sunt.', 'This housing project is an undoubtedly a symbol of high-quality & luxury style living. Taj Residencia is backed by Sardar Group of Companies. The Centaurus is also a project of the same developers. This firm has earned stellar reputation in construction sector for providing luxury living', '2022-01-19 03:17:25', '2022-01-19 03:17:25'),
(26, 'Botble\\Blog\\Models\\Post', 9, 1, 'image', 'news/1.jpg', 'taj-residencre.png', '2022-01-19 03:17:25', '2022-01-19 03:17:25');

-- --------------------------------------------------------

--
-- Table structure for table `re_accounts`
--

CREATE TABLE `re_accounts` (
  `id` int UNSIGNED NOT NULL,
  `first_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `gender` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar_id` int UNSIGNED DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `email_verify_token` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `credits` int UNSIGNED DEFAULT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `re_account_activity_logs`
--

CREATE TABLE `re_account_activity_logs` (
  `id` int UNSIGNED NOT NULL,
  `action` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `reference_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(39) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `account_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `re_account_activity_logs`
--

INSERT INTO `re_account_activity_logs` (`id`, `action`, `user_agent`, `reference_url`, `reference_name`, `ip_address`, `created_at`, `updated_at`, `account_id`) VALUES
(1, 'your_property_updated_by_admin', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_2_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '/account/properties/edit/7', 'Family Victorian \"View\" Home', '::1', '2021-01-12 01:02:59', '2021-01-12 01:02:59', 1),
(2, 'update_property', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_2_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '/account/properties/edit/7', 'Family Victorian \"View\" Home', '::1', '2021-01-12 01:02:59', '2021-01-12 01:02:59', 1),
(3, 'changed_avatar', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_2_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '', NULL, '::1', '2021-01-12 01:03:46', '2021-01-12 01:03:46', 1);

-- --------------------------------------------------------

--
-- Table structure for table `re_account_packages`
--

CREATE TABLE `re_account_packages` (
  `id` bigint UNSIGNED NOT NULL,
  `package_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `account_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `re_account_password_resets`
--

CREATE TABLE `re_account_password_resets` (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `re_categories`
--

CREATE TABLE `re_categories` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` int UNSIGNED NOT NULL DEFAULT '0',
  `is_default` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `parent_id` int UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `re_categories`
--

INSERT INTO `re_categories` (`id`, `name`, `description`, `status`, `order`, `is_default`, `created_at`, `updated_at`, `parent_id`) VALUES
(1, 'Apartment', NULL, 'published', 0, 0, '2021-06-11 15:56:44', '2021-06-11 15:56:44', 0),
(2, 'Villa', NULL, 'published', 0, 0, '2021-06-11 15:56:44', '2021-06-11 15:56:44', 0),
(3, 'Residential Plot', NULL, 'published', 0, 0, '2021-06-11 15:56:44', '2022-03-14 08:43:24', 0),
(4, 'Industrial Land', NULL, 'published', 0, 0, '2021-06-11 15:56:44', '2022-03-14 08:44:01', 0),
(5, 'Commercial property', NULL, 'published', 0, 0, '2021-06-11 15:56:44', '2021-06-11 15:56:44', 0),
(6, 'Townhouse', NULL, 'published', 0, 0, '2022-03-12 07:47:13', '2022-03-12 07:47:13', 0),
(7, 'Residential Building', NULL, 'published', 0, 0, '2022-03-14 08:43:42', '2022-03-14 08:43:42', 0),
(8, 'Office', NULL, 'published', 0, 0, '2022-03-14 08:44:11', '2022-03-14 08:44:11', 0),
(9, 'Warehouse', NULL, 'published', 0, 0, '2022-03-14 08:44:20', '2022-03-14 08:44:20', 0),
(10, 'Shop', NULL, 'published', 0, 0, '2022-03-14 08:44:26', '2022-03-14 08:44:26', 0),
(11, 'Showroom', NULL, 'published', 0, 0, '2022-03-14 08:44:34', '2022-03-14 08:44:34', 0);

-- --------------------------------------------------------

--
-- Table structure for table `re_consults`
--

CREATE TABLE `re_consults` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_id` int UNSIGNED DEFAULT NULL,
  `property_id` int UNSIGNED DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `re_currencies`
--

CREATE TABLE `re_currencies` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_prefix_symbol` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `decimals` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `order` int UNSIGNED NOT NULL DEFAULT '0',
  `is_default` tinyint NOT NULL DEFAULT '0',
  `exchange_rate` double NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `re_currencies`
--

INSERT INTO `re_currencies` (`id`, `title`, `symbol`, `is_prefix_symbol`, `decimals`, `order`, `is_default`, `exchange_rate`, `created_at`, `updated_at`) VALUES
(1, 'AED', 'AED', 1, 0, 0, 1, 1, '2021-06-11 20:56:44', '2021-06-11 20:56:44'),
(2, 'PKR', 'RS', 0, 0, 1, 0, 23203, '2021-06-11 20:56:44', '2021-06-11 20:56:44');

-- --------------------------------------------------------

--
-- Table structure for table `re_facilities`
--

CREATE TABLE `re_facilities` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `re_facilities`
--

INSERT INTO `re_facilities` (`id`, `name`, `icon`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Hospital', 'far fa-hospital', 'published', '2021-06-11 20:56:44', '2021-06-11 20:56:44'),
(2, 'Super Market', 'fas fa-cart-plus', 'published', '2021-06-11 20:56:44', '2021-06-11 20:56:44'),
(3, 'School', 'fas fa-school', 'published', '2021-06-11 20:56:44', '2021-06-11 20:56:44'),
(4, 'Entertainment', 'fas fa-hotel', 'published', '2021-06-11 20:56:44', '2021-06-11 20:56:44'),
(5, 'Pharmacy', 'fas fa-prescription-bottle-alt', 'published', '2021-06-11 20:56:44', '2021-06-11 20:56:44'),
(6, 'Airport', 'fas fa-plane-departure', 'published', '2021-06-11 20:56:44', '2021-06-11 20:56:44'),
(7, 'Railways', 'fas fa-subway', 'published', '2021-06-11 20:56:44', '2021-06-11 20:56:44'),
(8, 'Bus Stop', 'fas fa-bus', 'published', '2021-06-11 20:56:44', '2021-06-11 20:56:44'),
(9, 'Beach', 'fas fa-umbrella-beach', 'published', '2021-06-11 20:56:44', '2021-06-11 20:56:44'),
(10, 'Mall', 'fas fa-cart-plus', 'published', '2021-06-11 20:56:44', '2021-06-11 20:56:44'),
(11, 'Bank', 'fas fa-university', 'published', '2021-06-11 20:56:44', '2021-06-11 20:56:44');

-- --------------------------------------------------------

--
-- Table structure for table `re_facilities_distances`
--

CREATE TABLE `re_facilities_distances` (
  `id` int UNSIGNED NOT NULL,
  `facility_id` int UNSIGNED NOT NULL,
  `reference_id` int UNSIGNED NOT NULL,
  `reference_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `distance` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `re_facilities_distances`
--

INSERT INTO `re_facilities_distances` (`id`, `facility_id`, `reference_id`, `reference_type`, `distance`) VALUES
(4513, 1, 1, 'Botble\\RealEstate\\Models\\Property', '9km'),
(4514, 2, 1, 'Botble\\RealEstate\\Models\\Property', '8km'),
(4515, 3, 1, 'Botble\\RealEstate\\Models\\Property', '18km'),
(4516, 4, 1, 'Botble\\RealEstate\\Models\\Property', '15km'),
(4517, 5, 1, 'Botble\\RealEstate\\Models\\Property', '1km'),
(4518, 6, 1, 'Botble\\RealEstate\\Models\\Property', '12km'),
(4519, 7, 1, 'Botble\\RealEstate\\Models\\Property', '12km'),
(4520, 8, 1, 'Botble\\RealEstate\\Models\\Property', '12km'),
(4521, 9, 1, 'Botble\\RealEstate\\Models\\Property', '9km'),
(4522, 10, 1, 'Botble\\RealEstate\\Models\\Property', '14km'),
(4523, 11, 1, 'Botble\\RealEstate\\Models\\Property', '5km'),
(4524, 1, 2, 'Botble\\RealEstate\\Models\\Property', '12km'),
(4525, 2, 2, 'Botble\\RealEstate\\Models\\Property', '18km'),
(4526, 3, 2, 'Botble\\RealEstate\\Models\\Property', '1km'),
(4527, 4, 2, 'Botble\\RealEstate\\Models\\Property', '5km'),
(4528, 5, 2, 'Botble\\RealEstate\\Models\\Property', '9km'),
(4529, 6, 2, 'Botble\\RealEstate\\Models\\Property', '5km'),
(4530, 7, 2, 'Botble\\RealEstate\\Models\\Property', '4km'),
(4531, 8, 2, 'Botble\\RealEstate\\Models\\Property', '6km'),
(4532, 9, 2, 'Botble\\RealEstate\\Models\\Property', '7km'),
(4533, 10, 2, 'Botble\\RealEstate\\Models\\Property', '6km'),
(4534, 11, 2, 'Botble\\RealEstate\\Models\\Property', '15km'),
(4557, 1, 5, 'Botble\\RealEstate\\Models\\Property', '3km'),
(4558, 2, 5, 'Botble\\RealEstate\\Models\\Property', '2km'),
(4559, 3, 5, 'Botble\\RealEstate\\Models\\Property', '2km'),
(4560, 4, 5, 'Botble\\RealEstate\\Models\\Property', '18km'),
(4561, 5, 5, 'Botble\\RealEstate\\Models\\Property', '8km'),
(4562, 6, 5, 'Botble\\RealEstate\\Models\\Property', '4km'),
(4563, 7, 5, 'Botble\\RealEstate\\Models\\Property', '18km'),
(4564, 8, 5, 'Botble\\RealEstate\\Models\\Property', '8km'),
(4565, 9, 5, 'Botble\\RealEstate\\Models\\Property', '15km'),
(4566, 10, 5, 'Botble\\RealEstate\\Models\\Property', '5km'),
(4567, 11, 5, 'Botble\\RealEstate\\Models\\Property', '8km'),
(4568, 1, 6, 'Botble\\RealEstate\\Models\\Property', '13km'),
(4569, 2, 6, 'Botble\\RealEstate\\Models\\Property', '10km'),
(4570, 3, 6, 'Botble\\RealEstate\\Models\\Property', '14km'),
(4571, 4, 6, 'Botble\\RealEstate\\Models\\Property', '2km'),
(4572, 5, 6, 'Botble\\RealEstate\\Models\\Property', '3km'),
(4573, 6, 6, 'Botble\\RealEstate\\Models\\Property', '14km'),
(4574, 7, 6, 'Botble\\RealEstate\\Models\\Property', '14km'),
(4575, 8, 6, 'Botble\\RealEstate\\Models\\Property', '7km'),
(4576, 9, 6, 'Botble\\RealEstate\\Models\\Property', '6km'),
(4577, 10, 6, 'Botble\\RealEstate\\Models\\Property', '1km'),
(4578, 11, 6, 'Botble\\RealEstate\\Models\\Property', '15km'),
(4612, 1, 10, 'Botble\\RealEstate\\Models\\Property', '14km'),
(4613, 2, 10, 'Botble\\RealEstate\\Models\\Property', '14km'),
(4614, 3, 10, 'Botble\\RealEstate\\Models\\Property', '5km'),
(4615, 4, 10, 'Botble\\RealEstate\\Models\\Property', '18km'),
(4616, 5, 10, 'Botble\\RealEstate\\Models\\Property', '4km'),
(4617, 6, 10, 'Botble\\RealEstate\\Models\\Property', '17km'),
(4618, 7, 10, 'Botble\\RealEstate\\Models\\Property', '19km'),
(4619, 8, 10, 'Botble\\RealEstate\\Models\\Property', '8km'),
(4620, 9, 10, 'Botble\\RealEstate\\Models\\Property', '12km'),
(4621, 10, 10, 'Botble\\RealEstate\\Models\\Property', '12km'),
(4622, 11, 10, 'Botble\\RealEstate\\Models\\Property', '18km'),
(4623, 1, 11, 'Botble\\RealEstate\\Models\\Property', '7km'),
(4624, 2, 11, 'Botble\\RealEstate\\Models\\Property', '11km'),
(4625, 3, 11, 'Botble\\RealEstate\\Models\\Property', '12km'),
(4626, 4, 11, 'Botble\\RealEstate\\Models\\Property', '13km'),
(4627, 5, 11, 'Botble\\RealEstate\\Models\\Property', '14km'),
(4628, 6, 11, 'Botble\\RealEstate\\Models\\Property', '6km'),
(4629, 7, 11, 'Botble\\RealEstate\\Models\\Property', '13km'),
(4630, 8, 11, 'Botble\\RealEstate\\Models\\Property', '6km'),
(4631, 9, 11, 'Botble\\RealEstate\\Models\\Property', '8km'),
(4632, 10, 11, 'Botble\\RealEstate\\Models\\Property', '7km'),
(4633, 11, 11, 'Botble\\RealEstate\\Models\\Property', '8km'),
(4634, 1, 12, 'Botble\\RealEstate\\Models\\Property', '6km'),
(4635, 2, 12, 'Botble\\RealEstate\\Models\\Property', '7km'),
(4636, 3, 12, 'Botble\\RealEstate\\Models\\Property', '15km'),
(4637, 4, 12, 'Botble\\RealEstate\\Models\\Property', '10km'),
(4638, 5, 12, 'Botble\\RealEstate\\Models\\Property', '14km'),
(4639, 6, 12, 'Botble\\RealEstate\\Models\\Property', '1km'),
(4640, 7, 12, 'Botble\\RealEstate\\Models\\Property', '11km'),
(4641, 8, 12, 'Botble\\RealEstate\\Models\\Property', '11km'),
(4642, 9, 12, 'Botble\\RealEstate\\Models\\Property', '10km'),
(4643, 10, 12, 'Botble\\RealEstate\\Models\\Property', '9km'),
(4644, 11, 12, 'Botble\\RealEstate\\Models\\Property', '6km'),
(4667, 1, 15, 'Botble\\RealEstate\\Models\\Property', '7km'),
(4668, 2, 15, 'Botble\\RealEstate\\Models\\Property', '18km'),
(4669, 3, 15, 'Botble\\RealEstate\\Models\\Property', '8km'),
(4670, 4, 15, 'Botble\\RealEstate\\Models\\Property', '15km'),
(4671, 5, 15, 'Botble\\RealEstate\\Models\\Property', '2km'),
(4672, 6, 15, 'Botble\\RealEstate\\Models\\Property', '19km'),
(4673, 7, 15, 'Botble\\RealEstate\\Models\\Property', '4km'),
(4674, 8, 15, 'Botble\\RealEstate\\Models\\Property', '2km'),
(4675, 9, 15, 'Botble\\RealEstate\\Models\\Property', '14km'),
(4676, 10, 15, 'Botble\\RealEstate\\Models\\Property', '16km'),
(4677, 11, 15, 'Botble\\RealEstate\\Models\\Property', '12km'),
(4678, 1, 16, 'Botble\\RealEstate\\Models\\Property', '11km'),
(4679, 2, 16, 'Botble\\RealEstate\\Models\\Property', '16km'),
(4680, 3, 16, 'Botble\\RealEstate\\Models\\Property', '13km'),
(4681, 4, 16, 'Botble\\RealEstate\\Models\\Property', '11km'),
(4682, 5, 16, 'Botble\\RealEstate\\Models\\Property', '20km'),
(4683, 6, 16, 'Botble\\RealEstate\\Models\\Property', '20km'),
(4684, 7, 16, 'Botble\\RealEstate\\Models\\Property', '1km'),
(4685, 8, 16, 'Botble\\RealEstate\\Models\\Property', '5km'),
(4686, 9, 16, 'Botble\\RealEstate\\Models\\Property', '8km'),
(4687, 10, 16, 'Botble\\RealEstate\\Models\\Property', '5km'),
(4688, 11, 16, 'Botble\\RealEstate\\Models\\Property', '8km'),
(4700, 1, 18, 'Botble\\RealEstate\\Models\\Property', '3km'),
(4701, 2, 18, 'Botble\\RealEstate\\Models\\Property', '3km'),
(4702, 3, 18, 'Botble\\RealEstate\\Models\\Property', '10km'),
(4703, 4, 18, 'Botble\\RealEstate\\Models\\Property', '5km'),
(4704, 5, 18, 'Botble\\RealEstate\\Models\\Property', '7km'),
(4705, 6, 18, 'Botble\\RealEstate\\Models\\Property', '6km'),
(4706, 7, 18, 'Botble\\RealEstate\\Models\\Property', '1km'),
(4707, 8, 18, 'Botble\\RealEstate\\Models\\Property', '13km'),
(4708, 9, 18, 'Botble\\RealEstate\\Models\\Property', '5km'),
(4709, 10, 18, 'Botble\\RealEstate\\Models\\Property', '1km'),
(4710, 11, 18, 'Botble\\RealEstate\\Models\\Property', '3km'),
(4711, 1, 19, 'Botble\\RealEstate\\Models\\Property', '7km'),
(4712, 2, 19, 'Botble\\RealEstate\\Models\\Property', '8km'),
(4713, 3, 19, 'Botble\\RealEstate\\Models\\Property', '2km'),
(4714, 4, 19, 'Botble\\RealEstate\\Models\\Property', '4km'),
(4715, 5, 19, 'Botble\\RealEstate\\Models\\Property', '11km'),
(4716, 6, 19, 'Botble\\RealEstate\\Models\\Property', '14km'),
(4717, 7, 19, 'Botble\\RealEstate\\Models\\Property', '11km'),
(4718, 8, 19, 'Botble\\RealEstate\\Models\\Property', '18km'),
(4719, 9, 19, 'Botble\\RealEstate\\Models\\Property', '4km'),
(4720, 10, 19, 'Botble\\RealEstate\\Models\\Property', '1km'),
(4721, 11, 19, 'Botble\\RealEstate\\Models\\Property', '12km'),
(4722, 1, 20, 'Botble\\RealEstate\\Models\\Property', '1km'),
(4723, 2, 20, 'Botble\\RealEstate\\Models\\Property', '2km'),
(4724, 3, 20, 'Botble\\RealEstate\\Models\\Property', '15km'),
(4725, 4, 20, 'Botble\\RealEstate\\Models\\Property', '4km'),
(4726, 5, 20, 'Botble\\RealEstate\\Models\\Property', '4km'),
(4727, 6, 20, 'Botble\\RealEstate\\Models\\Property', '18km'),
(4728, 7, 20, 'Botble\\RealEstate\\Models\\Property', '11km'),
(4729, 8, 20, 'Botble\\RealEstate\\Models\\Property', '9km'),
(4730, 9, 20, 'Botble\\RealEstate\\Models\\Property', '15km'),
(4731, 10, 20, 'Botble\\RealEstate\\Models\\Property', '4km'),
(4732, 11, 20, 'Botble\\RealEstate\\Models\\Property', '11km'),
(4733, 1, 21, 'Botble\\RealEstate\\Models\\Property', '1km'),
(4734, 2, 21, 'Botble\\RealEstate\\Models\\Property', '1km'),
(4735, 3, 21, 'Botble\\RealEstate\\Models\\Property', '2km'),
(4736, 4, 21, 'Botble\\RealEstate\\Models\\Property', '19km'),
(4737, 5, 21, 'Botble\\RealEstate\\Models\\Property', '5km'),
(4738, 6, 21, 'Botble\\RealEstate\\Models\\Property', '11km'),
(4739, 7, 21, 'Botble\\RealEstate\\Models\\Property', '10km'),
(4740, 8, 21, 'Botble\\RealEstate\\Models\\Property', '4km'),
(4741, 9, 21, 'Botble\\RealEstate\\Models\\Property', '7km'),
(4742, 10, 21, 'Botble\\RealEstate\\Models\\Property', '5km'),
(4743, 11, 21, 'Botble\\RealEstate\\Models\\Property', '10km'),
(4744, 1, 22, 'Botble\\RealEstate\\Models\\Property', '16km'),
(4745, 2, 22, 'Botble\\RealEstate\\Models\\Property', '6km'),
(4746, 3, 22, 'Botble\\RealEstate\\Models\\Property', '4km'),
(4747, 4, 22, 'Botble\\RealEstate\\Models\\Property', '4km'),
(4748, 5, 22, 'Botble\\RealEstate\\Models\\Property', '13km'),
(4749, 6, 22, 'Botble\\RealEstate\\Models\\Property', '16km'),
(4750, 7, 22, 'Botble\\RealEstate\\Models\\Property', '5km'),
(4751, 8, 22, 'Botble\\RealEstate\\Models\\Property', '8km'),
(4752, 9, 22, 'Botble\\RealEstate\\Models\\Property', '18km'),
(4753, 10, 22, 'Botble\\RealEstate\\Models\\Property', '10km'),
(4754, 11, 22, 'Botble\\RealEstate\\Models\\Property', '8km'),
(4755, 1, 23, 'Botble\\RealEstate\\Models\\Property', '5km'),
(4756, 2, 23, 'Botble\\RealEstate\\Models\\Property', '1km'),
(4757, 3, 23, 'Botble\\RealEstate\\Models\\Property', '12km'),
(4758, 4, 23, 'Botble\\RealEstate\\Models\\Property', '1km'),
(4759, 5, 23, 'Botble\\RealEstate\\Models\\Property', '6km'),
(4760, 6, 23, 'Botble\\RealEstate\\Models\\Property', '12km'),
(4761, 7, 23, 'Botble\\RealEstate\\Models\\Property', '15km'),
(4762, 8, 23, 'Botble\\RealEstate\\Models\\Property', '1km'),
(4763, 9, 23, 'Botble\\RealEstate\\Models\\Property', '14km'),
(4764, 10, 23, 'Botble\\RealEstate\\Models\\Property', '3km'),
(4765, 11, 23, 'Botble\\RealEstate\\Models\\Property', '8km'),
(4766, 1, 24, 'Botble\\RealEstate\\Models\\Property', '3km'),
(4767, 2, 24, 'Botble\\RealEstate\\Models\\Property', '15km'),
(4768, 3, 24, 'Botble\\RealEstate\\Models\\Property', '1km'),
(4769, 4, 24, 'Botble\\RealEstate\\Models\\Property', '7km'),
(4770, 5, 24, 'Botble\\RealEstate\\Models\\Property', '4km'),
(4771, 6, 24, 'Botble\\RealEstate\\Models\\Property', '4km'),
(4772, 7, 24, 'Botble\\RealEstate\\Models\\Property', '4km'),
(4773, 8, 24, 'Botble\\RealEstate\\Models\\Property', '20km'),
(4774, 9, 24, 'Botble\\RealEstate\\Models\\Property', '4km'),
(4775, 10, 24, 'Botble\\RealEstate\\Models\\Property', '16km'),
(4776, 11, 24, 'Botble\\RealEstate\\Models\\Property', '7km'),
(4777, 1, 25, 'Botble\\RealEstate\\Models\\Property', '7km'),
(4778, 2, 25, 'Botble\\RealEstate\\Models\\Property', '8km'),
(4779, 3, 25, 'Botble\\RealEstate\\Models\\Property', '4km'),
(4780, 4, 25, 'Botble\\RealEstate\\Models\\Property', '20km'),
(4781, 5, 25, 'Botble\\RealEstate\\Models\\Property', '2km'),
(4782, 6, 25, 'Botble\\RealEstate\\Models\\Property', '6km'),
(4783, 7, 25, 'Botble\\RealEstate\\Models\\Property', '18km'),
(4784, 8, 25, 'Botble\\RealEstate\\Models\\Property', '7km'),
(4785, 9, 25, 'Botble\\RealEstate\\Models\\Property', '13km'),
(4786, 10, 25, 'Botble\\RealEstate\\Models\\Property', '20km'),
(4787, 11, 25, 'Botble\\RealEstate\\Models\\Property', '10km'),
(4788, 1, 26, 'Botble\\RealEstate\\Models\\Property', '20km'),
(4789, 2, 26, 'Botble\\RealEstate\\Models\\Property', '19km'),
(4790, 3, 26, 'Botble\\RealEstate\\Models\\Property', '18km'),
(4791, 4, 26, 'Botble\\RealEstate\\Models\\Property', '8km'),
(4792, 5, 26, 'Botble\\RealEstate\\Models\\Property', '8km'),
(4793, 6, 26, 'Botble\\RealEstate\\Models\\Property', '12km'),
(4794, 7, 26, 'Botble\\RealEstate\\Models\\Property', '2km'),
(4795, 8, 26, 'Botble\\RealEstate\\Models\\Property', '20km'),
(4796, 9, 26, 'Botble\\RealEstate\\Models\\Property', '20km'),
(4797, 10, 26, 'Botble\\RealEstate\\Models\\Property', '4km'),
(4798, 11, 26, 'Botble\\RealEstate\\Models\\Property', '16km'),
(4799, 1, 27, 'Botble\\RealEstate\\Models\\Property', '19km'),
(4800, 2, 27, 'Botble\\RealEstate\\Models\\Property', '14km'),
(4801, 3, 27, 'Botble\\RealEstate\\Models\\Property', '12km'),
(4802, 4, 27, 'Botble\\RealEstate\\Models\\Property', '11km'),
(4803, 5, 27, 'Botble\\RealEstate\\Models\\Property', '4km'),
(4804, 6, 27, 'Botble\\RealEstate\\Models\\Property', '12km'),
(4805, 7, 27, 'Botble\\RealEstate\\Models\\Property', '2km'),
(4806, 8, 27, 'Botble\\RealEstate\\Models\\Property', '10km'),
(4807, 9, 27, 'Botble\\RealEstate\\Models\\Property', '3km'),
(4808, 10, 27, 'Botble\\RealEstate\\Models\\Property', '4km'),
(4809, 11, 27, 'Botble\\RealEstate\\Models\\Property', '2km'),
(4810, 1, 28, 'Botble\\RealEstate\\Models\\Property', '6km'),
(4811, 2, 28, 'Botble\\RealEstate\\Models\\Property', '7km'),
(4812, 3, 28, 'Botble\\RealEstate\\Models\\Property', '5km'),
(4813, 4, 28, 'Botble\\RealEstate\\Models\\Property', '13km'),
(4814, 5, 28, 'Botble\\RealEstate\\Models\\Property', '20km'),
(4815, 6, 28, 'Botble\\RealEstate\\Models\\Property', '5km'),
(4816, 7, 28, 'Botble\\RealEstate\\Models\\Property', '9km'),
(4817, 8, 28, 'Botble\\RealEstate\\Models\\Property', '10km'),
(4818, 9, 28, 'Botble\\RealEstate\\Models\\Property', '20km'),
(4819, 10, 28, 'Botble\\RealEstate\\Models\\Property', '20km'),
(4820, 11, 28, 'Botble\\RealEstate\\Models\\Property', '11km'),
(4821, 1, 29, 'Botble\\RealEstate\\Models\\Property', '4km'),
(4822, 2, 29, 'Botble\\RealEstate\\Models\\Property', '5km'),
(4823, 3, 29, 'Botble\\RealEstate\\Models\\Property', '6km'),
(4824, 4, 29, 'Botble\\RealEstate\\Models\\Property', '12km'),
(4825, 5, 29, 'Botble\\RealEstate\\Models\\Property', '20km'),
(4826, 6, 29, 'Botble\\RealEstate\\Models\\Property', '2km'),
(4827, 7, 29, 'Botble\\RealEstate\\Models\\Property', '19km'),
(4828, 8, 29, 'Botble\\RealEstate\\Models\\Property', '17km'),
(4829, 9, 29, 'Botble\\RealEstate\\Models\\Property', '1km'),
(4830, 10, 29, 'Botble\\RealEstate\\Models\\Property', '17km'),
(4831, 11, 29, 'Botble\\RealEstate\\Models\\Property', '6km'),
(4832, 1, 30, 'Botble\\RealEstate\\Models\\Property', '20km'),
(4833, 2, 30, 'Botble\\RealEstate\\Models\\Property', '7km'),
(4834, 3, 30, 'Botble\\RealEstate\\Models\\Property', '15km'),
(4835, 4, 30, 'Botble\\RealEstate\\Models\\Property', '9km'),
(4836, 5, 30, 'Botble\\RealEstate\\Models\\Property', '10km'),
(4837, 6, 30, 'Botble\\RealEstate\\Models\\Property', '17km'),
(4838, 7, 30, 'Botble\\RealEstate\\Models\\Property', '11km'),
(4839, 8, 30, 'Botble\\RealEstate\\Models\\Property', '7km'),
(4840, 9, 30, 'Botble\\RealEstate\\Models\\Property', '2km'),
(4841, 10, 30, 'Botble\\RealEstate\\Models\\Property', '6km'),
(4842, 11, 30, 'Botble\\RealEstate\\Models\\Property', '13km'),
(4843, 1, 31, 'Botble\\RealEstate\\Models\\Property', '17km'),
(4844, 2, 31, 'Botble\\RealEstate\\Models\\Property', '20km'),
(4845, 3, 31, 'Botble\\RealEstate\\Models\\Property', '6km'),
(4846, 4, 31, 'Botble\\RealEstate\\Models\\Property', '19km'),
(4847, 5, 31, 'Botble\\RealEstate\\Models\\Property', '6km'),
(4848, 6, 31, 'Botble\\RealEstate\\Models\\Property', '6km'),
(4849, 7, 31, 'Botble\\RealEstate\\Models\\Property', '18km'),
(4850, 8, 31, 'Botble\\RealEstate\\Models\\Property', '13km'),
(4851, 9, 31, 'Botble\\RealEstate\\Models\\Property', '9km'),
(4852, 10, 31, 'Botble\\RealEstate\\Models\\Property', '10km'),
(4853, 11, 31, 'Botble\\RealEstate\\Models\\Property', '15km'),
(4854, 1, 32, 'Botble\\RealEstate\\Models\\Property', '5km'),
(4855, 2, 32, 'Botble\\RealEstate\\Models\\Property', '14km'),
(4856, 3, 32, 'Botble\\RealEstate\\Models\\Property', '14km'),
(4857, 4, 32, 'Botble\\RealEstate\\Models\\Property', '12km'),
(4858, 5, 32, 'Botble\\RealEstate\\Models\\Property', '15km'),
(4859, 6, 32, 'Botble\\RealEstate\\Models\\Property', '10km'),
(4860, 7, 32, 'Botble\\RealEstate\\Models\\Property', '2km'),
(4861, 8, 32, 'Botble\\RealEstate\\Models\\Property', '10km'),
(4862, 9, 32, 'Botble\\RealEstate\\Models\\Property', '16km'),
(4863, 10, 32, 'Botble\\RealEstate\\Models\\Property', '7km'),
(4864, 11, 32, 'Botble\\RealEstate\\Models\\Property', '16km'),
(4865, 1, 33, 'Botble\\RealEstate\\Models\\Property', '3km'),
(4866, 2, 33, 'Botble\\RealEstate\\Models\\Property', '4km'),
(4867, 3, 33, 'Botble\\RealEstate\\Models\\Property', '12km'),
(4868, 4, 33, 'Botble\\RealEstate\\Models\\Property', '8km'),
(4869, 5, 33, 'Botble\\RealEstate\\Models\\Property', '15km'),
(4870, 6, 33, 'Botble\\RealEstate\\Models\\Property', '11km'),
(4871, 7, 33, 'Botble\\RealEstate\\Models\\Property', '19km'),
(4872, 8, 33, 'Botble\\RealEstate\\Models\\Property', '14km'),
(4873, 9, 33, 'Botble\\RealEstate\\Models\\Property', '11km'),
(4874, 10, 33, 'Botble\\RealEstate\\Models\\Property', '13km'),
(4875, 11, 33, 'Botble\\RealEstate\\Models\\Property', '5km'),
(4876, 1, 34, 'Botble\\RealEstate\\Models\\Property', '15km'),
(4877, 2, 34, 'Botble\\RealEstate\\Models\\Property', '17km'),
(4878, 3, 34, 'Botble\\RealEstate\\Models\\Property', '17km'),
(4879, 4, 34, 'Botble\\RealEstate\\Models\\Property', '1km'),
(4880, 5, 34, 'Botble\\RealEstate\\Models\\Property', '6km'),
(4881, 6, 34, 'Botble\\RealEstate\\Models\\Property', '17km'),
(4882, 7, 34, 'Botble\\RealEstate\\Models\\Property', '19km'),
(4883, 8, 34, 'Botble\\RealEstate\\Models\\Property', '12km'),
(4884, 9, 34, 'Botble\\RealEstate\\Models\\Property', '10km'),
(4885, 10, 34, 'Botble\\RealEstate\\Models\\Property', '10km'),
(4886, 11, 34, 'Botble\\RealEstate\\Models\\Property', '19km'),
(4889, 1, 14, 'Botble\\RealEstate\\Models\\Property', '1km'),
(4890, 2, 14, 'Botble\\RealEstate\\Models\\Property', '20km'),
(4891, 3, 14, 'Botble\\RealEstate\\Models\\Property', '7km'),
(4892, 4, 14, 'Botble\\RealEstate\\Models\\Property', '3km'),
(4893, 5, 14, 'Botble\\RealEstate\\Models\\Property', '16km'),
(4894, 6, 14, 'Botble\\RealEstate\\Models\\Property', '8km'),
(4895, 7, 14, 'Botble\\RealEstate\\Models\\Property', '4km'),
(4896, 8, 14, 'Botble\\RealEstate\\Models\\Property', '12km'),
(4897, 9, 14, 'Botble\\RealEstate\\Models\\Property', '6km'),
(4898, 10, 14, 'Botble\\RealEstate\\Models\\Property', '3km'),
(4899, 11, 14, 'Botble\\RealEstate\\Models\\Property', '12km'),
(4900, 1, 13, 'Botble\\RealEstate\\Models\\Property', '9km'),
(4901, 2, 13, 'Botble\\RealEstate\\Models\\Property', '11km'),
(4902, 3, 13, 'Botble\\RealEstate\\Models\\Property', '14km'),
(4903, 4, 13, 'Botble\\RealEstate\\Models\\Property', '6km'),
(4904, 5, 13, 'Botble\\RealEstate\\Models\\Property', '16km'),
(4905, 6, 13, 'Botble\\RealEstate\\Models\\Property', '7km'),
(4906, 7, 13, 'Botble\\RealEstate\\Models\\Property', '8km'),
(4907, 8, 13, 'Botble\\RealEstate\\Models\\Property', '15km'),
(4908, 9, 13, 'Botble\\RealEstate\\Models\\Property', '11km'),
(4909, 10, 13, 'Botble\\RealEstate\\Models\\Property', '12km'),
(4910, 11, 13, 'Botble\\RealEstate\\Models\\Property', '10km'),
(4922, 1, 9, 'Botble\\RealEstate\\Models\\Property', '4km'),
(4923, 2, 9, 'Botble\\RealEstate\\Models\\Property', '19km'),
(4924, 3, 9, 'Botble\\RealEstate\\Models\\Property', '18km'),
(4925, 4, 9, 'Botble\\RealEstate\\Models\\Property', '20km'),
(4926, 5, 9, 'Botble\\RealEstate\\Models\\Property', '20km'),
(4927, 6, 9, 'Botble\\RealEstate\\Models\\Property', '8km'),
(4928, 7, 9, 'Botble\\RealEstate\\Models\\Property', '2km'),
(4929, 8, 9, 'Botble\\RealEstate\\Models\\Property', '9km'),
(4930, 9, 9, 'Botble\\RealEstate\\Models\\Property', '14km'),
(4931, 10, 9, 'Botble\\RealEstate\\Models\\Property', '12km'),
(4932, 11, 9, 'Botble\\RealEstate\\Models\\Property', '3km'),
(4944, 1, 4, 'Botble\\RealEstate\\Models\\Property', '6km'),
(4945, 2, 4, 'Botble\\RealEstate\\Models\\Property', '10km'),
(4946, 3, 4, 'Botble\\RealEstate\\Models\\Property', '10km'),
(4947, 4, 4, 'Botble\\RealEstate\\Models\\Property', '2km'),
(4948, 5, 4, 'Botble\\RealEstate\\Models\\Property', '11km'),
(4949, 6, 4, 'Botble\\RealEstate\\Models\\Property', '5km'),
(4950, 7, 4, 'Botble\\RealEstate\\Models\\Property', '11km'),
(4951, 8, 4, 'Botble\\RealEstate\\Models\\Property', '12km'),
(4952, 9, 4, 'Botble\\RealEstate\\Models\\Property', '20km'),
(4953, 10, 4, 'Botble\\RealEstate\\Models\\Property', '5km'),
(4954, 11, 4, 'Botble\\RealEstate\\Models\\Property', '17km'),
(4968, 6, 5, 'Botble\\RealEstate\\Models\\Project', '1.25'),
(4969, 2, 5, 'Botble\\RealEstate\\Models\\Project', '0.25'),
(5014, 1, 3, 'Botble\\RealEstate\\Models\\Property', '14km'),
(5015, 2, 3, 'Botble\\RealEstate\\Models\\Property', '9km'),
(5016, 3, 3, 'Botble\\RealEstate\\Models\\Property', '10km'),
(5017, 4, 3, 'Botble\\RealEstate\\Models\\Property', '15km'),
(5018, 5, 3, 'Botble\\RealEstate\\Models\\Property', '1km'),
(5019, 6, 3, 'Botble\\RealEstate\\Models\\Property', '20km'),
(5020, 7, 3, 'Botble\\RealEstate\\Models\\Property', '2km'),
(5021, 8, 3, 'Botble\\RealEstate\\Models\\Property', '18km'),
(5022, 9, 3, 'Botble\\RealEstate\\Models\\Property', '8km'),
(5023, 10, 3, 'Botble\\RealEstate\\Models\\Property', '18km'),
(5024, 11, 3, 'Botble\\RealEstate\\Models\\Property', '12km'),
(5025, 1, 8, 'Botble\\RealEstate\\Models\\Property', '8km'),
(5026, 2, 8, 'Botble\\RealEstate\\Models\\Property', '11km'),
(5027, 3, 8, 'Botble\\RealEstate\\Models\\Property', '1km'),
(5028, 4, 8, 'Botble\\RealEstate\\Models\\Property', '15km'),
(5029, 5, 8, 'Botble\\RealEstate\\Models\\Property', '19km'),
(5030, 6, 8, 'Botble\\RealEstate\\Models\\Property', '18km'),
(5031, 7, 8, 'Botble\\RealEstate\\Models\\Property', '2km'),
(5032, 8, 8, 'Botble\\RealEstate\\Models\\Property', '13km'),
(5033, 9, 8, 'Botble\\RealEstate\\Models\\Property', '19km'),
(5034, 10, 8, 'Botble\\RealEstate\\Models\\Property', '2km'),
(5035, 11, 8, 'Botble\\RealEstate\\Models\\Property', '18km'),
(5036, 1, 17, 'Botble\\RealEstate\\Models\\Property', '12km'),
(5037, 2, 17, 'Botble\\RealEstate\\Models\\Property', '10km'),
(5038, 3, 17, 'Botble\\RealEstate\\Models\\Property', '17km'),
(5039, 4, 17, 'Botble\\RealEstate\\Models\\Property', '10km'),
(5040, 5, 17, 'Botble\\RealEstate\\Models\\Property', '11km'),
(5041, 6, 17, 'Botble\\RealEstate\\Models\\Property', '2km'),
(5042, 7, 17, 'Botble\\RealEstate\\Models\\Property', '14km'),
(5043, 8, 17, 'Botble\\RealEstate\\Models\\Property', '14km'),
(5044, 9, 17, 'Botble\\RealEstate\\Models\\Property', '10km'),
(5045, 10, 17, 'Botble\\RealEstate\\Models\\Property', '11km'),
(5046, 11, 17, 'Botble\\RealEstate\\Models\\Property', '6km'),
(5047, 2, 39, 'Botble\\RealEstate\\Models\\Property', NULL),
(5070, 1, 7, 'Botble\\RealEstate\\Models\\Property', '18km'),
(5071, 2, 7, 'Botble\\RealEstate\\Models\\Property', '1km'),
(5072, 3, 7, 'Botble\\RealEstate\\Models\\Property', '3km'),
(5073, 4, 7, 'Botble\\RealEstate\\Models\\Property', '7km'),
(5074, 5, 7, 'Botble\\RealEstate\\Models\\Property', '4km'),
(5075, 6, 7, 'Botble\\RealEstate\\Models\\Property', '11km'),
(5076, 7, 7, 'Botble\\RealEstate\\Models\\Property', '19km'),
(5077, 8, 7, 'Botble\\RealEstate\\Models\\Property', '12km'),
(5078, 9, 7, 'Botble\\RealEstate\\Models\\Property', '9km'),
(5079, 10, 7, 'Botble\\RealEstate\\Models\\Property', '2km'),
(5080, 11, 7, 'Botble\\RealEstate\\Models\\Property', '7km');

-- --------------------------------------------------------

--
-- Table structure for table `re_features`
--

CREATE TABLE `re_features` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `icon` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `re_features`
--

INSERT INTO `re_features` (`id`, `name`, `status`, `icon`) VALUES
(1, 'Wifi', 'published', 'fas fa-wifi'),
(2, 'Swimming pool', 'published', 'fas fa-swimmer'),
(3, 'Balcony', 'published', NULL),
(4, 'Terrace', 'published', NULL),
(5, 'Parking', 'published', 'fas fa-parking'),
(6, 'Garden', 'published', NULL),
(7, 'Security', 'published', 'fas fa-user-secret'),
(8, 'Fitness center', 'published', 'fas fa-dumbbell'),
(9, 'Trung tâm thể hình', 'published', 'fas fa-dumbbell'),
(10, 'Bảo vệ', 'published', 'fas fa-user-secret'),
(11, 'Sân vườn', 'published', NULL),
(12, 'Bãi đỗ xe', 'published', 'fas fa-parking'),
(13, 'Hàng rào', 'published', NULL),
(14, 'Ban công', 'published', NULL),
(15, 'Hồ bơi', 'published', 'fas fa-swimmer'),
(16, 'Wifi', 'published', 'fas fa-wifi');

-- --------------------------------------------------------

--
-- Table structure for table `re_investors`
--

CREATE TABLE `re_investors` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `re_investors`
--

INSERT INTO `re_investors` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'National Pension Service', 'published', '2019-11-18 01:16:23', '2019-11-18 01:16:23'),
(2, 'Generali', 'published', '2019-11-18 01:16:47', '2019-11-18 01:16:47'),
(3, 'Temasek', 'published', '2019-11-18 01:16:57', '2019-11-18 01:16:57'),
(4, 'China Investment Corporation', 'published', '2019-11-18 01:17:11', '2019-11-18 01:17:11'),
(5, 'Government Pension Fund Global', 'published', '2019-11-18 01:17:35', '2019-11-18 01:17:35'),
(6, 'PSP Investments', 'published', '2019-11-18 01:17:47', '2019-11-18 01:17:47'),
(7, 'MEAG Munich ERGO', 'published', '2019-11-18 01:17:57', '2019-11-18 01:17:57'),
(8, 'HOOPP', 'published', '2019-11-18 01:18:08', '2019-11-18 01:18:08'),
(9, 'BT Group', 'published', '2019-11-18 01:18:21', '2019-11-18 01:18:21'),
(10, 'Ping An', 'published', '2019-11-18 01:18:32', '2019-11-18 01:18:32'),
(11, 'New Jersey Division of Investment', 'published', '2019-11-18 01:18:45', '2019-11-18 01:18:45'),
(12, 'New York City ERS', 'published', '2019-11-18 01:18:57', '2019-11-18 01:18:57'),
(13, 'State Super', 'published', '2019-11-18 01:19:10', '2019-11-18 01:19:10'),
(14, 'Shinkong', 'published', '2019-11-18 01:19:20', '2019-11-18 01:19:20'),
(15, 'Rest Super', 'published', '2019-11-18 01:19:31', '2019-11-18 01:19:31'),
(16, 'Rest Super', 'published', '2019-11-21 01:50:47', '2019-11-21 01:50:47'),
(17, 'Shinkong', 'published', '2019-11-21 01:51:03', '2019-11-21 01:51:03'),
(18, 'State Super', 'published', '2019-11-21 01:51:21', '2019-11-21 01:51:21'),
(19, 'New York City ERS', 'published', '2019-11-21 01:51:33', '2019-11-21 01:51:33'),
(20, 'New Jersey Division of Investment', 'published', '2019-11-21 01:51:51', '2019-11-21 01:51:51'),
(21, 'Ping An', 'published', '2019-11-21 01:52:04', '2019-11-21 01:52:04'),
(22, 'BT Group', 'published', '2019-11-21 01:52:16', '2019-11-21 01:52:16'),
(23, 'HOOPP', 'published', '2019-11-21 01:52:28', '2019-11-21 01:52:28'),
(24, 'MEAG Munich ERGO', 'published', '2019-11-21 01:52:47', '2019-11-21 01:52:47'),
(25, 'PSP Investments', 'published', '2019-11-21 01:52:57', '2019-11-21 01:52:57'),
(26, 'Government Pension Fund Global', 'published', '2019-11-21 01:53:18', '2019-11-21 01:53:18'),
(27, 'China Investment Corporation', 'published', '2019-11-21 01:53:33', '2019-11-21 01:53:33'),
(29, 'Temasek', 'published', '2019-11-21 01:53:48', '2019-11-21 01:53:48'),
(30, 'Generali', 'published', '2019-11-21 01:54:01', '2019-11-21 01:54:01'),
(31, 'National Pension Service', 'published', '2019-11-21 01:54:14', '2019-11-21 01:54:14');

-- --------------------------------------------------------

--
-- Table structure for table `re_packages`
--

CREATE TABLE `re_packages` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(15,2) UNSIGNED NOT NULL,
  `currency_id` int UNSIGNED NOT NULL,
  `number_of_listings` int UNSIGNED NOT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `percent_save` int UNSIGNED NOT NULL DEFAULT '0',
  `account_limit` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `re_packages`
--

INSERT INTO `re_packages` (`id`, `name`, `price`, `currency_id`, `number_of_listings`, `order`, `is_default`, `status`, `created_at`, `updated_at`, `percent_save`, `account_limit`) VALUES
(1, 'Free First Post', 0.00, 1, 1, 0, 0, 'published', '2022-01-15 20:56:45', '2022-01-15 20:56:45', 0, 1),
(2, 'Single Post', 250.00, 1, 1, 0, 1, 'published', '2022-01-15 20:56:45', '2022-01-15 20:56:45', 0, NULL),
(3, '5 Posts', 1000.00, 1, 5, 0, 0, 'published', '2022-01-15 20:56:45', '2022-01-15 20:56:45', 20, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `re_projects`
--

CREATE TABLE `re_projects` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `images` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number_block` smallint UNSIGNED DEFAULT NULL,
  `number_floor` smallint DEFAULT NULL,
  `number_flat` smallint DEFAULT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT '0',
  `date_finish` date DEFAULT NULL,
  `date_sell` date DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'selling',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `investor_id` int UNSIGNED NOT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price_from` decimal(15,0) DEFAULT NULL,
  `price_to` decimal(15,0) DEFAULT NULL,
  `currency_id` int UNSIGNED DEFAULT NULL,
  `city_id` int UNSIGNED DEFAULT NULL,
  `author_id` int DEFAULT NULL,
  `author_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `latitude` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `re_projects`
--

INSERT INTO `re_projects` (`id`, `name`, `content`, `images`, `location`, `number_block`, `number_floor`, `number_flat`, `is_featured`, `date_finish`, `date_sell`, `status`, `created_at`, `updated_at`, `investor_id`, `description`, `price_from`, `price_to`, `currency_id`, `city_id`, `author_id`, `author_type`, `latitude`, `longitude`) VALUES
(7, 'Căn hộ Walnut Park', '<p>Mở b&aacute;n&nbsp;v&agrave; cho thu&ecirc;!</p>\r\n\r\n<p>Walnut Park tọa lạc tại vị tr&iacute; thuận tiện tr&ecirc;n Đại lộ Bắc Lamar đối diện C&ocirc;ng vi&ecirc;n Th&agrave;nh phố Walnut Creek rộng 293 mẫu v&agrave; ngay ph&iacute;a nam của Yager Lane gần nhiều cửa h&agrave;ng v&agrave; nh&agrave; h&agrave;ng. Chỉ c&oacute; 11 dặm từ trung t&acirc;m th&agrave;nh phố Austin, khu căn hộ&nbsp;n&agrave;y gồm c&aacute;c khu&ocirc;n vi&ecirc;n nhiều c&acirc;y cối gi&aacute;p Walnut Creek v&agrave; những quang cảnh tuyệt vời. Ngo&agrave;i c&aacute;c tiện nghi spa của khu nghỉ m&aacute;t, nội thất được x&acirc;y dựng v&agrave; thiết kế theo th&ocirc;ng số kỹ thuật của nh&agrave; chung cư với c&aacute;c t&iacute;nh năng tiết kiệm năng lượng, chi tiết tuyệt đẹp v&agrave; ho&agrave;n thiện n&acirc;ng cấp.</p>', '[\"projects\\/1.jpg\",\"projects\\/5.jpg\",\"projects\\/3.jpg\",\"projects\\/2.jpg\"]', 'Austin, Texas 78753, USA', 4, 2, 50, 1, '2019-11-10', '2019-03-11', 'selling', '2022-01-16 01:54:36', '2022-01-15 20:56:44', 19, 'Walnut Park tọa lạc tại vị trí thuận tiện trên Đại lộ Bắc Lamar đối diện Công viên Thành phố Walnut Creek rộng 293 mẫu và ngay phía nam của Yager Lane gần nhiều cửa hàng và nhà hàng. Chỉ có 11 dặm từ trung tâm thành phố Austin, khu căn hộ này gồm các khuôn viên nhiều cây cối giáp Walnut Creek và những quang cảnh tuyệt vời', NULL, NULL, 2, 3, 1, 'Botble\\ACL\\Models\\User', '42.673907', '-75.856372'),
(8, 'Dự án Osaka Heights', '<p>Osaka Heights l&agrave; một khu căn hộ nghệ thuật được chế t&aacute;c với sự sang trọng, tiện nghi v&agrave; đẳng cấp.<br />\r\nC&aacute;c căn hộ lớn hơn tạo th&ecirc;m một tầm cao mới cho cuộc sống của người d&acirc;n ở thủ đ&ocirc; Colombo, Sri Lanka.<br />\r\nĐược tạo ra bởi một nh&oacute;m c&aacute;c nh&agrave; tư vấn quốc tế, Osaka Heights l&agrave; tất cả về thiết kế hiện đại v&agrave; sự ch&uacute; &yacute; to&agrave;n diện đến từng chi tiết trong thực hiện. V&igrave; vậy việc sở hữu một căn hộ cao cấp tại Sri Lanka, Osaka Heights l&agrave; lựa chọn tốt nhất. Nền tảng của Osaka Heights được đặt bởi c&aacute;c chuy&ecirc;n gia l&agrave;nh nghề, những người nắm bắt ho&agrave;n to&agrave;n tầm nh&igrave;n của bạn. C&ocirc;ng tr&igrave;nh được x&acirc;y dựng theo lối sống thanh lịch, chất lượng v&agrave; đẳng cấp.<br />\r\nC&aacute;c ng&ocirc;i nh&agrave; đi k&egrave;m với tất cả c&aacute;c tiện nghi v&agrave; tiện nghi thoải m&aacute;i cho một cuộc sống cao cấp. Từ g&oacute;c nh&igrave;n to&agrave;n cảnh, hồ bơi tr&ecirc;n s&acirc;n thượng v&agrave; ban c&ocirc;ng sinh th&aacute;i c&oacute; cảnh quan, vẻ đẹp sẽ gặp bạn ở mọi bước ch&acirc;n ở Osaka Heights. Tạo ra một kh&ocirc;ng gian ri&ecirc;ng biệt, Osaka Heights mang đến cho bạn lợi thế chia sẻ kh&ocirc;ng gian với những người c&oacute; c&ugrave;ng đẳng cấp. Một lối sống n&acirc;ng cao tự nhi&ecirc;n, l&agrave;m cho Osaka Heights trở th&agrave;nh một trong những địa chỉ được t&igrave;m kiếm nhiều nhất ở Colombo.</p>', '[\"projects\\/21.jpg\",\"projects\\/24.jpg\",\"projects\\/23.jpg\",\"projects\\/25.jpg\",\"projects\\/26.jpg\",\"projects\\/22.jpg\"]', 'Kirulapone, Colombo 06, Colombo, Sri Lanka', 1, 15, 450, 1, '2019-08-09', '2019-08-10', 'selling', '2022-01-16 02:28:09', '2022-01-15 20:56:44', 29, 'Các ngôi nhà đi kèm với tất cả các tiện nghi và tiện nghi thoải mái cho một cuộc sống cao cấp. Từ góc nhìn toàn cảnh, hồ bơi trên sân thượng và ban công sinh thái có cảnh quan, vẻ đẹp sẽ gặp bạn ở mọi bước chân ở Osaka Heights. Tạo ra một không gian riêng biệt, Osaka Heights mang đến cho bạn lợi thế chia sẻ không gian với những người có cùng đẳng cấp.', NULL, NULL, 2, 5, NULL, 'Botble\\ACL\\Models\\User', '42.78666', '-74.804759'),
(9, 'Thiên đường Mimaroba', '<p>Tại sao bạn n&ecirc;n mua một ng&ocirc;i nh&agrave; từ dự &aacute;n n&agrave;y?<br />\r\n1. Một ng&ocirc;i nh&agrave; m&ugrave;a h&egrave; ở trung t&acirc;m th&agrave;nh phố.<br />\r\n2. X&oacute;a bỏ ranh giới giữa bạn v&agrave; biển, bạn sẽ được bao quanh bởi biển xanh.<br />\r\n3. Mọi thứ giống như bạn đ&atilde; tưởng tượng - từ hồ bơi v&ocirc; cực, vườn thiền, nh&agrave; h&agrave;ng chuy&ecirc;n phục vụ người s&agrave;nh ăn đến c&aacute;c s&acirc;n chơi theo chủ đề đang chờ bạn.<br />\r\n4. Một thiết kế độc đ&aacute;o l&agrave;m cho sự sang trọng trở th&agrave;nh một th&oacute;i quen, một loạt c&aacute;c lựa chọn kế hoạch căn hộ.<br />\r\n5. T&ugrave;y chọn thanh to&aacute;n hợp l&yacute;, gi&aacute; cả phải chăng trong khu vực độc quyền nhất của Istanbul.<br />\r\nMimaroba ở khu vực b&atilde;i biển hiện đại c&aacute;ch xa sự nhộn nhịp của Istanbul. Mục đ&iacute;ch của dự &aacute;n l&agrave; tạo cảm gi&aacute;c sống động cho chủ nh&agrave; một c&aacute;ch s&acirc;u sắc nhất. Trong dự &aacute;n n&agrave;y, bạn c&oacute; thể tận hưởng một cuộc sống với biển v&agrave; bạn c&oacute; thể c&oacute; một kỳ nghỉ trong 12 th&aacute;ng với c&aacute;c hoạt động v&agrave; tiện &iacute;ch x&atilde; hội.</p>', '[\"projects\\/13.jpg\",\"projects\\/12.jpg\",\"projects\\/11.jpg\",\"projects\\/14.jpg\"]', 'Texas, USA', 2, 16, 327, 1, '2020-06-09', '2019-09-10', 'selling', '2022-01-16 02:40:25', '2022-01-15 20:56:44', 16, 'Một ngôi nhà mùa hè ở trung tâm thành phố. Xóa bỏ ranh giới giữa bạn và biển, bạn sẽ được bao quanh bởi biển xanh. Mọi thứ giống như bạn đã tưởng tượng - từ hồ bơi vô cực, vườn thiền, nhà hàng chuyên phục vụ người sành ăn đến các sân chơi theo chủ đề đang chờ bạn. Một thiết kế độc đáo làm cho sự sang trọng trở thành một thói quen, một loạt các lựa chọn kế hoạch căn hộ.', NULL, NULL, 2, 4, NULL, 'Botble\\ACL\\Models\\User', '43.904647', '-75.973175'),
(10, 'Khu biệt thự Aegean', '<p>Biệt thự Aegean tr&ocirc;ng giống như thị trấn Aegean v&agrave; l&agrave; một trong những khu biệt thự được đ&aacute;nh gi&aacute; cao nhất trong khu vực. Một diện t&iacute;ch rất lớn với diện t&iacute;ch 312.000m2 chỉ c&oacute; 144 biệt thự. Mỗi biệt thự vườn độc lập với nhau v&agrave; bảo vệ cuộc sống ri&ecirc;ng tư. C&oacute; 400 c&acirc;y &ocirc; liu trưởng th&agrave;nh trong cảnh quan khu vực chung. Tăng cường mối quan hệ l&aacute;ng giềng với c&aacute;c điểm chia sẻ chung như rạp chiếu phim ngo&agrave;i trời, c&agrave; ph&ecirc; l&agrave;ng, chợ. Tăng động lực sống với 2,5km đi bộ v&agrave; đi xe đạp, s&acirc;n tennis v&agrave; thảm hoạt động.</p>\r\n\r\n<h4><strong>Tại sao bạn n&ecirc;n mua ng&ocirc;i nh&agrave; từ dự &aacute;n n&agrave;y?</strong></h4>\r\n\r\n<p><br />\r\n1. Thiết kế kiến tr&uacute;c tự nhi&ecirc;n.<br />\r\n2. Tỷ lệ quản l&yacute; cao nhất trong khu vực<br />\r\n3. Khu vực chia sẻ chung như rạp chiếu phim ngo&agrave;i trời v&agrave; qu&aacute;n c&agrave; ph&ecirc; l&agrave;ng.<br />\r\n4. Đường đi bộ v&agrave; đi xe đạp 2,5km.<br />\r\n5. C&aacute;c khu vườn được t&aacute;ch ra v&agrave; hữu &iacute;ch.</p>', '[\"properties\\/a5-1.jpg\",\"properties\\/a6-1.jpg\",\"properties\\/a7.jpg\",\"properties\\/a8.jpg\",\"properties\\/a10.jpg\",\"properties\\/a9.jpg\"]', 'Büyükçekmece, İstanbul, Turkey', 5, 2, 144, 1, '2020-06-09', '2020-10-04', 'selling', '2022-01-16 02:58:55', '2022-01-15 20:56:44', 20, 'Một diện tích rất lớn với diện tích 312.000m2 chỉ có 144 biệt thự. Mỗi biệt thự vườn độc lập với nhau và bảo vệ cuộc sống riêng tư. Có 400 cây ô liu trưởng thành trong cảnh quan khu vực chung. Tăng cường mối quan hệ láng giềng với các điểm chia sẻ chung như rạp chiếu phim ngoài trời, cà phê làng, chợ.', NULL, NULL, 2, 4, NULL, 'Botble\\ACL\\Models\\User', '43.594023', '-76.209103'),
(11, 'Chung cư rừng Aydos', '<p>Dự &aacute;n, mang đến cơ hội duy nhất cho những ai muốn chuyển đến ng&ocirc;i nh&agrave; mới của họ, l&agrave; dự &aacute;n nh&agrave; ở thuận lợi nhất của địa điểm với c&aacute;c t&ugrave;y chọn thanh to&aacute;n dễ d&agrave;ng theo ng&acirc;n s&aacute;ch của bạn. Trong ng&ocirc;i nh&agrave; mới của bạn, bạn sẽ c&oacute; một cuộc sống trong khu chung cư với tỷ lệ lấp đầy 90% l&agrave; kh&ocirc;ng kh&iacute; trong l&agrave;nh của Rừng Aydos với 3.700 m2, mang lại c&aacute;c hoạt động th&uacute; vị cho đ&ocirc;i ch&acirc;n của bạn, v&agrave; c&ograve;n nhiều điều nữa đang chờ đợi bạn. Bạn sẽ sống một cuộc sống với thi&ecirc;n nhi&ecirc;n nhờ hồ nh&acirc;n tạo v&agrave; c&acirc;y anh đ&agrave;o trong dự &aacute;n cũng như cảnh quan của Rừng Aydos. V&agrave; bởi v&igrave; kết nối dễ d&agrave;ng với c&aacute;c con đường ch&iacute;nh, bạn c&oacute; thể dễ d&agrave;ng đến c&aacute;c trung t&acirc;m quan trọng của Istanbul.</p>\r\n\r\n<h4><strong>Tại sao bạn n&ecirc;n mua ng&ocirc;i nh&agrave; từ dự &aacute;n n&agrave;y?</strong></h4>\r\n\r\n<p>1. Sẵn s&agrave;ng giao nh&agrave;.<br />\r\n2. 82% diện t&iacute;ch l&agrave; cảnh quan.<br />\r\n3. Rừng Aydos nằm ngay cạnh dự &aacute;n.<br />\r\n4. Đ&atilde; b&agrave;n giao hơn 90% dự &aacute;n.<br />\r\n5. Dễ vận chuyển.</p>', '[\"properties\\/q1.jpg\",\"properties\\/q2.jpg\",\"properties\\/q8.jpg\",\"properties\\/q7.jpg\",\"properties\\/q3.jpg\",\"properties\\/q6.jpg\"]', 'Sancaktepe/İstanbul, Turkey', 4, 18, 1394, 1, '2019-10-30', '2019-07-21', 'selling', '2022-01-16 03:16:25', '2022-01-15 20:56:44', 30, 'Bạn sẽ có một cuộc sống trong khu chung cư với tỷ lệ lấp đầy 90% là không khí trong lành của Rừng Aydos với 3.700 m2, mang lại các hoạt động thú vị cho đôi chân của bạn, và còn nhiều điều nữa đang chờ đợi bạn. Bạn sẽ sống một cuộc sống với thiên nhiên nhờ hồ nhân tạo và cây anh đào trong dự án cũng như cảnh quan của Rừng Aydos.', NULL, NULL, 2, 4, NULL, 'Botble\\ACL\\Models\\User', '43.311198', '-75.231811'),
(12, 'Khu chung cư The Avila', '<p>Một dự &aacute;n đặc biệt s&acirc;u sắc giữa lịch sử v&agrave; Istanbul. Ở trung t&acirc;m của b&aacute;n đảo lịch sử.&nbsp;<br />\r\nMột thẩm mỹ vượt thời gian l&agrave;m phong ph&uacute; trong c&aacute;c chi tiết ho&agrave;n hảo.</p>\r\n\r\n<h4><strong>Tại sao bạn n&ecirc;n mua một ng&ocirc;i nh&agrave; từ dự &aacute;n n&agrave;y?</strong></h4>\r\n\r\n<p>1. Trong b&aacute;n đảo lịch sử, c&oacute; một khu vực rất đặc biệt, nơi bạn sẽ kh&ocirc;ng bao giờ t&igrave;m thấy một khu vực tương tự.<br />\r\n2. Cảnh biển độc đ&aacute;o với kết cấu lịch sử của Istanbul.<br />\r\n3. Trong cuộc sống th&agrave;nh phố nhộn nhịp, ở giữa mọi khả năng giao th&ocirc;ng.<br />\r\n4. 1 + 1 đến 6 + 1 rất đặc biệt, ph&ugrave; hợp với mọi nhu cầu căn hộ g&aacute;c x&eacute;p<br />\r\n5. Khu vực cảnh quan rộng lớn, qu&aacute;n c&agrave; ph&ecirc;, cơ hội mua sắm.</p>', '[\"properties\\/e1.jpg\",\"properties\\/e2.jpg\",\"properties\\/e3.jpg\",\"properties\\/e4.jpg\",\"properties\\/e5.jpg\",\"properties\\/e7.jpg\",\"properties\\/e8.jpg\"]', 'Singapore Island, Singapore', 2, 4, 125, 1, '2019-11-19', '2019-03-11', 'selling', '2022-01-16 03:25:22', '2022-01-15 20:56:44', 21, 'Trong bán đảo lịch sử, có một khu vực rất đặc biệt, nơi bạn sẽ không bao giờ tìm thấy một khu vực tương tự. Cảnh biển độc đáo với kết cấu lịch sử của Istanbul. Trong cuộc sống thành phố nhộn nhịp, ở giữa mọi khả năng giao thông. Khu vực cảnh quan rộng lớn, quán cà phê, cơ hội mua sắm.', NULL, NULL, 2, 1, NULL, 'Botble\\ACL\\Models\\User', '43.296416', '-76.508096');

-- --------------------------------------------------------

--
-- Table structure for table `re_project_categories`
--

CREATE TABLE `re_project_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `project_id` int UNSIGNED NOT NULL,
  `category_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `re_project_categories`
--

INSERT INTO `re_project_categories` (`id`, `project_id`, `category_id`) VALUES
(7, 7, 6),
(8, 8, 6),
(9, 9, 4),
(10, 10, 5),
(11, 11, 2),
(12, 12, 6);

-- --------------------------------------------------------

--
-- Table structure for table `re_project_features`
--

CREATE TABLE `re_project_features` (
  `project_id` int UNSIGNED NOT NULL,
  `feature_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `re_project_features`
--

INSERT INTO `re_project_features` (`project_id`, `feature_id`) VALUES
(2, 1),
(2, 2),
(2, 3),
(2, 5),
(2, 7),
(2, 8),
(1, 1),
(1, 2),
(1, 4),
(1, 5),
(1, 7),
(7, 10),
(7, 12),
(7, 13),
(7, 15),
(7, 16),
(8, 9),
(8, 10),
(8, 12),
(8, 14),
(8, 15),
(8, 16),
(3, 1),
(3, 2),
(3, 3),
(3, 5),
(3, 7),
(9, 10),
(9, 12),
(9, 14),
(9, 15),
(9, 16),
(4, 1),
(4, 4),
(4, 5),
(4, 6),
(4, 7),
(10, 10),
(10, 11),
(10, 12),
(10, 13),
(10, 16),
(5, 1),
(5, 3),
(5, 5),
(5, 6),
(5, 7),
(5, 8),
(11, 9),
(11, 10),
(11, 11),
(11, 12),
(11, 14),
(11, 16),
(6, 1),
(6, 3),
(6, 5),
(6, 6),
(6, 7),
(12, 10),
(12, 11),
(12, 12),
(12, 14),
(12, 16),
(13, 5),
(13, 4);

-- --------------------------------------------------------

--
-- Table structure for table `re_properties`
--

CREATE TABLE `re_properties` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `images` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `video` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `project_id` int UNSIGNED NOT NULL DEFAULT '0',
  `number_bedroom` smallint UNSIGNED DEFAULT NULL,
  `number_bathroom` smallint UNSIGNED DEFAULT NULL,
  `number_floor` smallint UNSIGNED DEFAULT NULL,
  `maidroom` int NOT NULL DEFAULT '0',
  `parking_space` int NOT NULL DEFAULT '0',
  `covered_parking` int NOT NULL DEFAULT '0',
  `furnished` int NOT NULL DEFAULT '0',
  `developer` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year_built` int DEFAULT NULL,
  `square` int DEFAULT NULL,
  `price` decimal(15,2) DEFAULT NULL,
  `price_unit` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT '0',
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'selling',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'sale',
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_id` int UNSIGNED DEFAULT NULL,
  `city_id` int UNSIGNED DEFAULT NULL,
  `period` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'month',
  `author_id` int DEFAULT NULL,
  `author_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `moderation_status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `expire_date` date DEFAULT NULL,
  `auto_renew` tinyint(1) NOT NULL DEFAULT '0',
  `never_expired` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `re_properties`
--

INSERT INTO `re_properties` (`id`, `name`, `content`, `location`, `images`, `video`, `project_id`, `number_bedroom`, `number_bathroom`, `number_floor`, `maidroom`, `parking_space`, `covered_parking`, `furnished`, `developer`, `year_built`, `square`, `price`, `price_unit`, `is_featured`, `status`, `created_at`, `updated_at`, `type`, `description`, `currency_id`, `city_id`, `period`, `author_id`, `author_name`, `author_type`, `moderation_status`, `expire_date`, `auto_renew`, `never_expired`, `latitude`, `longitude`) VALUES
(3002, '987 Cantebury Drive', 'Content', NULL, '[\"\\/properties\\/150743368.jpg\"]', NULL, 2, 3, 2, NULL, 0, 2, 0, 0, 'Dubai co.', 2018, 860, '78000.00', '', 1, 'selling', '2022-03-30 10:27:58', '2022-03-30 10:41:47', 'sale', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras et dui vestibulum, bibendum purus sit amet, vulputate mauris. Ut adipiscing gravida tincidunt. Duis euismod placerat rhoncus. Phasellus mollis imperdiet placerat. Sed ac turpis nisl. Mauris at ante mauris. Aliquam posuere fermentum lorem, a aliquam mauris rutrum a. Curabitur sit amet pretium lectus, nec consequat orci.', 1, 14, 'month', 1, 'System Admin', 'Botble\\RealEstate\\Models\\Account', 'approved', '2022-04-29', 0, '1', NULL, NULL),
(3003, '987 Cantebury Drive', 'Content', NULL, '[\"\\/properties\\/1025219547.jpg\"]', NULL, 2, 3, 2, NULL, 0, 2, 0, 0, 'Dubai co.', 2018, 860, '78000.00', '', 1, 'selling', '2022-03-30 10:30:45', '2022-03-30 10:41:47', 'sale', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras et dui vestibulum, bibendum purus sit amet, vulputate mauris. Ut adipiscing gravida tincidunt. Duis euismod placerat rhoncus. Phasellus mollis imperdiet placerat. Sed ac turpis nisl. Mauris at ante mauris. Aliquam posuere fermentum lorem, a aliquam mauris rutrum a. Curabitur sit amet pretium lectus, nec consequat orci.', 1, 19, 'month', 1, 'System Admin', 'Botble\\RealEstate\\Models\\Account', 'approved', '2022-04-29', 0, '1', NULL, NULL),
(3004, '987 Cantebury Drive', 'Content', NULL, '[\"\\/properties\\/828193423.jpg\"]', NULL, 2, 3, 2, NULL, 0, 2, 0, 0, 'Dubai co.', 2015, 860, '78000.00', '', 1, 'selling', '2022-03-30 10:32:42', '2022-03-30 10:41:47', 'sale', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras et dui vestibulum, bibendum purus sit amet, vulputate mauris. Ut adipiscing gravida tincidunt. Duis euismod placerat rhoncus. Phasellus mollis imperdiet placerat. Sed ac turpis nisl. Mauris at ante mauris. Aliquam posuere fermentum lorem, a aliquam mauris rutrum a. Curabitur sit amet pretium lectus, nec consequat orci.', 1, 1, 'month', 1, 'System Admin', 'Botble\\RealEstate\\Models\\Account', 'approved', '2022-04-29', 0, '1', NULL, NULL),
(3005, '987 Cantebury Drive', 'Content', NULL, '[\"\\/properties\\/2055676024.jpg\"]', NULL, 2, 3, 2, NULL, 0, 2, 0, 0, 'Dubai co.', 2014, 860, '78000.00', '', 1, 'selling', '2022-03-30 10:34:39', '2022-03-30 10:41:47', 'sale', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras et dui vestibulum, bibendum purus sit amet, vulputate mauris. Ut adipiscing gravida tincidunt. Duis euismod placerat rhoncus. Phasellus mollis imperdiet placerat. Sed ac turpis nisl. Mauris at ante mauris. Aliquam posuere fermentum lorem, a aliquam mauris rutrum a. Curabitur sit amet pretium lectus, nec consequat orci.', 1, 4, 'month', 1, 'System Admin', 'Botble\\RealEstate\\Models\\Account', 'approved', '2022-04-29', 0, '1', NULL, NULL),
(3006, 'annat Graynight Mood In Siver Colony, London', 'Content', NULL, '[\"\\/properties\\/282228465.jpg\"]', NULL, 1, 3, 2, NULL, 0, 1, 0, 0, 'Dubai co.', 2017, 4240, '7600.00', '', 1, 'selling', '2022-03-30 10:43:49', '2022-03-30 10:44:26', 'rent', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use', 1, 16, 'month', 1, 'System Admin', 'Botble\\RealEstate\\Models\\Account', 'approved', '2022-04-29', 0, '1', NULL, NULL),
(3007, 'Jannat Graynight Mood', 'Content', NULL, '[\"\\/properties\\/935827245.jpg\"]', NULL, 1, 3, 2, NULL, 0, 1, 0, 0, 'Dubai co.', 2015, 4240, '7600.00', '', 1, 'selling', '2022-03-30 10:48:02', '2022-03-30 10:55:27', 'rent', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sur', 1, 2, 'month', 1, 'System Admin', 'Botble\\RealEstate\\Models\\Account', 'approved', '2022-04-29', 0, '1', NULL, NULL),
(3008, 'Shivangi Preet', 'Content', NULL, '[\"\\/properties\\/2109376967.jpg\"]', NULL, 1, 3, 2, NULL, 0, 1, 0, 0, 'Dubai co.', 2013, 4240, '7600.00', '', 1, 'selling', '2022-03-30 10:50:20', '2022-03-30 10:55:27', 'rent', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to', 1, 18, 'month', 1, 'System Admin', 'Botble\\RealEstate\\Models\\Account', 'approved', '2022-04-29', 0, '1', NULL, NULL),
(3009, 'Lilac Cottage', 'Content', NULL, '[\"\\/properties\\/410193140.jpg\"]', NULL, 1, 3, 2, NULL, 0, 1, 0, 0, 'Dubai co.', 2014, 4240, '7600.00', '', 1, 'selling', '2022-03-30 10:54:37', '2022-03-30 10:55:27', 'rent', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomise', 1, 11, 'month', 1, 'System Admin', 'Botble\\RealEstate\\Models\\Account', 'approved', '2022-04-29', 0, '1', NULL, NULL),
(3010, 'Beeches', 'Content', NULL, '[\"\\/properties\\/492207976.jpg\"]', NULL, 1, 3, 2, NULL, 0, 1, 0, 0, 'Dubai co.', 2019, 4240, '7600.00', '', 1, 'selling', '2022-03-30 10:56:57', '2022-03-30 11:12:16', 'rent', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsu', 1, 11, 'month', 1, 'System Admin', 'Botble\\RealEstate\\Models\\Account', 'approved', '2022-04-29', 0, '1', NULL, NULL),
(3011, 'Ivy House', 'Content', NULL, '[\"\\/properties\\/1942784312.jpg\"]', NULL, 1, 3, 2, NULL, 0, 1, 0, 0, 'Dubai co.', 2016, 4240, '7600.00', '', 1, 'selling', '2022-03-30 10:58:42', '2022-03-30 11:12:16', 'rent', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generator', 1, 13, 'month', 1, 'System Admin', 'Botble\\RealEstate\\Models\\Account', 'approved', '2022-04-29', 0, '1', NULL, NULL),
(3012, 'Lakeside', 'Content', NULL, '[\"\\/properties\\/455398051.jpg\"]', NULL, 1, 3, 2, NULL, 0, 1, 0, 0, 'Dubai co.', 2013, 4240, '7600.00', '', 1, 'selling', '2022-03-30 11:00:11', '2022-03-30 11:12:16', 'rent', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, yo', 1, 1, 'month', 1, 'System Admin', 'Botble\\RealEstate\\Models\\Account', 'approved', '2022-04-29', 0, '1', NULL, NULL),
(3013, 'Sunnyside', 'Content', NULL, '[\"\\/properties\\/151818444.jpg\"]', NULL, 1, 3, 2, NULL, 0, 1, 0, 0, 'Dubai co.', 2019, 4240, '7600.00', '', 1, 'selling', '2022-03-30 11:02:31', '2022-03-30 11:12:16', 'rent', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised wor', 1, 6, 'month', 1, 'System Admin', 'Botble\\RealEstate\\Models\\Account', 'approved', '2022-04-29', 0, '1', NULL, NULL),
(3014, '369 exceptional properties', 'Content', NULL, '[\"\\/properties\\/1143347438.jpg\"]', NULL, 1, 4, 4, NULL, 0, 1, 0, 0, 'Dubai co.', 2017, 205, '1800000.00', '', 1, 'selling', '2022-03-30 12:38:37', '2022-03-30 12:38:37', 'rent', 'Located in one of the most prestigious Belle Époque Palaces of Nice, this spacious apartment offers a living area of 205 m² and a huge terrace', 1, 4, 'month', 1, 'System Admin', 'Botble\\RealEstate\\Models\\Account', 'pending', '2022-04-29', 0, '1', NULL, NULL),
(3015, 'SUD AZUR PROPERTIES', 'Content', NULL, '[\"\\/properties\\/1383108094.jpg\"]', NULL, 1, 3, 3, NULL, 0, 1, 0, 0, 'Dubai co.', 2007, 180, '2950000.00', '', 1, 'selling', '2022-03-30 12:40:53', '2022-03-30 12:40:53', 'sale', 'The Sud Azur agency exclusively offers this superb contemporary villa of 180 m2, on the seafront, located in Cap de Nice.\r\nExceptional location on 585 m2 of land, breathtaking and unobstructed sea view. The villa is quiet, facing south-east,', 1, 14, 'month', 1, 'System Admin', 'Botble\\RealEstate\\Models\\Account', 'pending', '2022-04-29', 0, '1', NULL, NULL),
(3016, 'NICE PROPERTIES MASSENA', 'Content', NULL, '[\"\\/properties\\/1409141828.jpg\"]', NULL, 1, 4, 4, NULL, 0, 1, 0, 0, 'Dubai co.', 2011, 124, '940000.00', '', 1, 'selling', '2022-03-30 12:42:24', '2022-03-30 12:42:24', 'sale', 'NICE MON BORON : In a quiet residential area. In a secure residence with swimming pool ans park. Beautiful 4 room apartment of 125sqm with sunny 138sqm private garden offering city and sea views. Large living room, indepen', 1, 15, 'month', 1, 'System Admin', 'Botble\\RealEstate\\Models\\Account', 'pending', '2022-04-29', 0, '1', NULL, NULL),
(3017, 'WRETMAN ESTATE & CONSULTING', 'Content', NULL, '[\"\\/properties\\/1262432852.jpg\"]', NULL, 1, 3, 2, NULL, 0, 1, 0, 0, 'Dubai co.', 2013, 57, '344000.00', '', 1, 'selling', '2022-03-30 12:44:44', '2022-03-30 13:05:15', 'sale', 'New Haussmann-style project on 3 floors, with aluminum facade and Parisian roofs, makes this building a place with a strong identity. Located between Liberation and Jean Médecin in Nice. 4 new apartments from 2-bedroom \r\n in quiet and with a modern interior and living room that opens up to terraces', 1, 12, 'month', 1, 'System Admin', 'Botble\\RealEstate\\Models\\Account', 'approved', '2022-04-29', 0, '1', NULL, NULL),
(3018, 'LA PORTE FRANCHE SARL JR IMMO LPF', 'Content', NULL, '[\"\\/properties\\/1757756264.jpg\"]', NULL, 2, 10, 8, NULL, 0, 4, 0, 0, 'Dubai co.', 2015, 640, '3570000.00', '', 1, 'selling', '2022-03-30 12:47:10', '2022-03-30 13:05:15', 'sale', 'Incredible property in the Nice hinterland. Steeped in history this former 13th century Templar farm of more than 600 m2 is established on 26 ha of land. It has four housing units: The Maison de Maitre', 1, 2, 'month', 1, 'System Admin', 'Botble\\RealEstate\\Models\\Account', 'approved', '2022-04-29', 0, '1', NULL, NULL),
(3019, 'SESAM\' IMMOBILIER', 'Content', NULL, '[\"\\/properties\\/1825198163.jpg\"]', NULL, 1, 4, 3, NULL, 0, 1, 0, 0, 'Dubai co.', 2019, 139, '870000.00', '', 1, 'selling', '2022-03-30 12:49:17', '2022-03-30 13:05:15', 'sale', 'In a georgeous secure Art Deco Palace with caretaker, nice 3/4 bedrooms apartment of 139m² on a high floor.\r\nExcellent condition, refined decoration, parquet point of Hungary and moldings. Little terrace South offering an unobstructed view', 1, 8, 'month', 1, 'System Admin', 'Botble\\RealEstate\\Models\\Account', 'approved', '2022-04-29', 0, '1', NULL, NULL),
(3020, 'ESPACES ATYPIQUES NICE-CANNES', 'Content', NULL, '[\"\\/properties\\/1582005100.jpg\"]', NULL, 1, 5, 4, NULL, 0, 2, 0, 0, 'Dubai co.', 2015, 135, '425000.00', '', 1, 'selling', '2022-03-30 12:50:50', '2022-03-30 13:05:15', 'sale', 'Located in a wooded and secure condominium in La Trinité, this renovated apartment of 135 sqm takes place on the third and last floor, with 44 sqm of exterior. Rounded in shape, the central fireplace with el', 1, 5, 'month', 1, 'System Admin', 'Botble\\RealEstate\\Models\\Account', 'approved', '2022-04-29', 0, '1', NULL, NULL),
(3021, 'CENTURY 21 LAFAGE TRANSACTIONS - LE PORT', 'Content', NULL, '[\"\\/properties\\/419475866.jpg\"]', NULL, 1, 4, 3, NULL, 0, 2, 0, 0, 'Dubai co.', 2016, 85, '330000.00', '', 1, 'selling', '2022-03-30 12:52:39', '2022-03-30 13:05:15', 'sale', 'NICE ST AUGUSTIN: Located in a secure residence with garden in the immediate vicinity of the airport, a 3 bedroom apartment on the 3rd floor in a building with lift. It consists of an entrance, a living / dining room,', 1, 14, 'month', 1, 'System Admin', 'Botble\\RealEstate\\Models\\Account', 'approved', '2022-04-29', 0, '1', NULL, NULL),
(3022, 'CENTURY 21 LAFAGE TRANSACTIONS NICE CORVESY', 'Content', NULL, '[\"\\/properties\\/1778586714.jpg\"]', NULL, 1, 5, 3, NULL, 0, 1, 0, 0, 'Dubai co.', 2017, 132, '945000.00', '', 1, 'selling', '2022-03-30 12:54:16', '2022-03-30 13:05:15', 'sale', 'NICE CENTER FOCH - DUBOUCHAGE : 4 bedrooms apartment of 132 sqm with a terrace of 8 sqm in a magnificent Belle Epoque building close to the city center of Nice, shops and all amenities.', 1, 3, 'month', 1, 'System Admin', 'Botble\\RealEstate\\Models\\Account', 'approved', '2022-04-29', 0, '1', NULL, NULL),
(3023, 'AGENCE DUMAS', 'Content', NULL, '[\"\\/properties\\/645711770.jpg\"]', NULL, 1, 3, 2, NULL, 0, 1, 0, 0, 'Dubai co.', 2012, 58, '249000.00', '', 1, 'selling', '2022-03-30 12:56:38', '2022-03-30 13:05:15', 'sale', 'NICE - VIEILLE-VILLE: 2 bedrooms apartment of 56 m² in duplex, on the top floor of a Nice building.\r\nLocated a few meters from', 1, 11, 'month', 1, 'System Admin', 'Botble\\RealEstate\\Models\\Account', 'approved', '2022-04-29', 0, '1', NULL, NULL),
(3024, 'CÔTE D\'AZUR SOTHEBY\'S INTERNATIONAL REALTY', 'Content', NULL, '[\"\\/properties\\/1950764404.jpg\"]', NULL, 6, 6, 4, NULL, 0, 2, 0, 0, 'Dubai co.', 2020, 200, '3500000.00', '', 1, 'selling', '2022-03-30 12:58:44', '2022-03-30 13:05:15', 'sale', 'Apartment of 200 m2 in a gated residence with swimming pool : 4 bedrooms + terrace 114 m2 offering panoramic views of the sea and Nice. Parking places.', 1, 12, 'month', 1, 'System Admin', 'Botble\\RealEstate\\Models\\Account', 'approved', '2022-04-29', 0, '1', NULL, NULL),
(3025, 'NICE PROPERTIES OPÉRA', 'Content', NULL, '[\"\\/properties\\/1882509653.jpg\"]', NULL, 1, 4, 3, NULL, 0, 1, 0, 0, 'Dubai co.', 2011, 236, '3300000.00', '', 1, 'selling', '2022-03-30 13:01:39', '2022-03-30 13:05:15', 'sale', 'In the iconic building \"Le Palais Caïs de Pierlas\", exceptional apartment of 177 m2 requiring complete renovation but benefit', 1, 19, 'month', 1, 'System Admin', 'Botble\\RealEstate\\Models\\Account', 'approved', '2022-04-29', 0, '1', NULL, NULL),
(3026, 'NICE PROPERTIES OPÉRA', 'Content', NULL, '[\"\\/properties\\/1710524259.jpg\"]', NULL, 1, 2, 1, NULL, 0, 1, 0, 0, 'Dubai co.', 2018, 69, '2150000.00', '', 1, 'selling', '2022-03-30 13:03:09', '2022-03-30 13:05:15', 'sale', 'In an early 20th-C. villa, superb apartment of 156 m2 opening out to a terrace of 55 m2 facing S/W and offering an enchanting vi', 1, 4, 'month', 1, 'System Admin', 'Botble\\RealEstate\\Models\\Account', 'approved', '2022-04-29', 0, '1', NULL, NULL),
(3027, 'HAUSSMANN REAL ESTATE', 'Content', NULL, '[\"\\/properties\\/1147043255.jpg\"]', NULL, 1, 3, 2, NULL, 0, 1, 0, 0, 'Dubai co.', 2019, 112, '1290000.00', '', 1, 'selling', '2022-03-30 13:06:35', '2022-03-31 09:32:40', 'sale', 'Apartment of 112 m2, refurbished as new, on an upper floor, with a terrace of 32 m2. Living room of 60 m2 with a double lounge and equipped kitchen, en-suite bedroom with walk-in closet and bathroom, 2nd bedroom w', 1, 14, 'month', 1, 'System Admin', 'Botble\\RealEstate\\Models\\Account', 'approved', '2022-04-29', 0, '1', NULL, NULL),
(3028, 'BARNES BEAULIEU', 'Content', NULL, '[\"\\/properties\\/139795921.jpg\"]', NULL, 2, 10, 8, NULL, 0, 5, 0, 0, 'Dubai co.', 2019, 550, '3900000.00', '', 1, 'selling', '2022-03-30 13:09:39', '2022-03-31 09:32:40', 'sale', 'Sole agent. In grounds of 1,590 m2, this villa offers a main entrance, a spacious lounge with a large terrace, a fully equipped kitchen, a dining-room with hearth, a master bedroom + 5 more en-suite bedrooms. The prope', 1, 2, 'month', 1, 'System Admin', 'Botble\\RealEstate\\Models\\Account', 'approved', '2022-04-29', 0, '1', NULL, NULL),
(3029, 'Dubai La Violeta', '<p>Content</p>', NULL, '[\"properties\\/1648306261-1.png\"]', NULL, 0, 45, 45, NULL, 0, 45, 0, 0, 'Dubai co.', 5464, 34643, '2134655.00', '', 1, 'selling', '2022-03-31 11:30:38', '2022-04-04 09:06:33', 'sale', 'zhryhrn zeyhrth', 1, 1, 'month', 71, 'Zeeshan Admin', 'Botble\\RealEstate\\Models\\Account', 'approved', '2022-04-30', 0, '1', NULL, NULL),
(3032, 'Palm21 Jumerirah Icon12', '<p>Content</p>', NULL, '[\"\\/properties\\/1576082572.jpg\",\"\\/properties\\/875388813.jpg\",\"\\/properties\\/1863486962.png\",\"\\/properties\\/529391735.svg\",\"\\/properties\\/624709994.png\"]', NULL, 0, 22, 22, NULL, 1, 2, 1, 1, 'Dubai Properties', 32342, 23323, '234235.00', '', 1, 'selling', '2022-04-11 09:23:06', '2022-04-11 09:23:50', 'sale', 'arf dgsfdjsgh', 1, 1, 'month', 1, 'System Admin', 'Botble\\RealEstate\\Models\\Account', 'approved', '2022-05-11', 0, '1', NULL, NULL),
(3033, 'qwraerhg', 'Content', NULL, '[\"\\/properties\\/723122337.jpg\",\"\\/properties\\/561638292.jpg\",\"\\/properties\\/1468404989.png\",\"\\/properties\\/2015332249.svg\",\"\\/properties\\/1889302664.png\"]', NULL, 1, 234, 23, NULL, 0, 234, 0, 0, '23r f v z', 323432, 453, '235235.00', '', 1, 'selling', '2022-04-11 09:50:51', '2022-04-16 08:52:39', 'sale', 'werhrnargvb', 1, 1, 'month', 86, 'Zeeshan Khan', 'Botble\\RealEstate\\Models\\Account', 'approved', '2022-05-11', 0, '1', NULL, NULL),
(3034, 'Ajman One Tower', '<p>Content</p>', 'testing updated', '[\"\\/properties\\/646217140.jpg\",\"\\/properties\\/538859781.jpg\",\"\\/properties\\/1830300205.jpg\",\"\\/properties\\/1180395043.jpg\",\"\\/properties\\/1761071590.jpg\",\"\\/properties\\/83504149.jpg\"]', '1649698593.mp4', 0, 5, 4, NULL, 1, 4, 1, 1, 'Aqaar', 2018, 3500, '850000.00', '', 1, 'selling', '2022-04-11 16:36:33', '2022-04-15 18:06:44', 'sale', 'Best for Investment', 1, 1, 'month', 65, 'Ali Ahmed Faruqui', 'Botble\\RealEstate\\Models\\Account', 'approved', '2022-05-11', 0, '1', NULL, NULL),
(3035, 'adfhertfggsd', 'Content', NULL, '[\"\\/properties\\/1199903534.jpg\",\"\\/properties\\/1394444765.jpg\",\"\\/properties\\/2088695543.png\",\"\\/properties\\/206688713.svg\",\"\\/properties\\/887346767.png\"]', NULL, 1, 345, 43, NULL, 1, 34, 0, 0, '34tg df', 4354354, 4562345, '2534.00', '', 1, 'selling', '2022-04-12 08:51:12', '2022-04-12 08:52:09', 'sale', 'awer gveeeeeeeeefb', 1, 1, 'month', 1, 'System Admin', 'Botble\\RealEstate\\Models\\Account', 'approved', '2022-05-12', 0, '1', NULL, NULL),
(3036, 'Aqaar', '<p>Content</p>', NULL, '[\"\\/properties\\/605072249.webp\",\"\\/properties\\/1851126333.webp\",\"\\/properties\\/597339356.webp\",\"\\/properties\\/67206643.webp\",\"\\/properties\\/1567409741.webp\",\"\\/properties\\/1064081601.webp\"]', '1649917907.mp4', 0, 5, 5, NULL, 1, 5, 1, 1, 'Emaar', 2019, 3500, '850000.00', '', 1, 'selling', '2022-04-14 05:31:47', '2022-04-14 05:38:08', 'sale', 'Ideal for Investment', 1, 1, 'month', 65, 'Ali Ahmed Faruqui', 'Botble\\RealEstate\\Models\\Account', 'approved', '2022-05-14', 0, '1', NULL, NULL),
(3037, 'Plaza One', '<p>Content</p>', NULL, '[\"taj-residencre.png\"]', NULL, 0, 5, 5, NULL, 1, 12, 0, 0, 'Marian Webser', 2022, 5000, '85000000.00', '', 1, 'selling', '2022-04-14 05:50:10', '2022-04-20 09:07:32', 'sale', 'Best for Investment', 1, 4, 'month', 65, 'Ali Ahmed Faruqui', 'Botble\\RealEstate\\Models\\Account', 'approved', '2022-05-14', 0, '1', NULL, NULL),
(3038, 'Bussiness Bay', '<p>Content</p>', NULL, '[\"taj-residencre.png\",\"\\/properties\\/1609442675.png\",\"\\/properties\\/73686300.jpg\",\"\\/properties\\/1800465389.png\",\"\\/properties\\/355273984.jpg\",\"\\/properties\\/1159848410.png\",\"\\/properties\\/1539310.png\",\"\\/properties\\/1596486641.png\",\"\\/properties\\/1396415394.png\"]', NULL, 0, 44, 44, NULL, 1, 4, 1, 1, '3244', 4444, 433444, '223533.00', '', 1, 'selling', '2022-04-16 09:43:27', '2022-04-19 18:27:19', 'sale', 'sdgatejteh', 1, 1, 'month', 90, 'Zeeshan Khan', 'Botble\\RealEstate\\Models\\Account', 'approved', '2022-05-16', 0, '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `re_property_categories`
--

CREATE TABLE `re_property_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `property_id` int UNSIGNED NOT NULL,
  `category_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `re_property_categories`
--

INSERT INTO `re_property_categories` (`id`, `property_id`, `category_id`) VALUES
(117, 3002, 2),
(118, 3003, 2),
(119, 3004, 2),
(120, 3005, 2),
(121, 3006, 1),
(122, 3007, 1),
(123, 3008, 1),
(124, 3009, 1),
(125, 3010, 1),
(126, 3011, 1),
(127, 3012, 1),
(128, 3013, 1),
(129, 3014, 1),
(130, 3015, 1),
(131, 3016, 1),
(132, 3017, 1),
(133, 3018, 2),
(134, 3019, 1),
(135, 3020, 1),
(136, 3021, 1),
(137, 3022, 1),
(138, 3023, 1),
(139, 3024, 6),
(140, 3025, 1),
(141, 3026, 1),
(142, 3027, 1),
(143, 3028, 2),
(144, 3029, 1),
(148, 3032, 1),
(149, 3033, 1),
(151, 3035, 1),
(152, 3036, 2),
(153, 3037, 1),
(154, 3034, 1),
(155, 3038, 1);

-- --------------------------------------------------------

--
-- Table structure for table `re_property_features`
--

CREATE TABLE `re_property_features` (
  `property_id` int UNSIGNED NOT NULL,
  `feature_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `re_tags`
--

CREATE TABLE `re_tags` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `re_tags_items`
--

CREATE TABLE `re_tags_items` (
  `tag_id` int UNSIGNED NOT NULL,
  `item_id` int UNSIGNED NOT NULL,
  `type` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int UNSIGNED NOT NULL,
  `slug` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `created_by` int UNSIGNED NOT NULL,
  `updated_by` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `slug`, `name`, `permissions`, `description`, `is_default`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(2, 'agency', 'Agency', '{\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"categories.index\":true,\"categories.create\":true,\"categories.edit\":true,\"categories.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"facility.index\":true,\"facility.create\":true,\"facility.edit\":true,\"facility.destroy\":true,\"investor.index\":true,\"investor.create\":true,\"investor.edit\":true,\"investor.destroy\":true,\"plugin.location\":true,\"country.index\":true,\"country.create\":true,\"country.edit\":true,\"country.destroy\":true,\"state.index\":true,\"state.create\":true,\"state.edit\":true,\"state.destroy\":true,\"city.index\":true,\"city.create\":true,\"city.edit\":true,\"property.index\":true,\"property.create\":true,\"property.edit\":true,\"property.destroy\":true,\"property_feature.index\":true,\"property_feature.create\":true,\"property_feature.edit\":true,\"property_feature.destroy\":true}', 'Agency description', 1, 1, 1, '2022-02-08 01:04:06', '2022-03-04 07:26:55'),
(3, 'member', 'Member', '', 'Here description will come', 0, 1, 1, '2022-02-18 06:24:50', '2022-03-04 08:10:49');

-- --------------------------------------------------------

--
-- Table structure for table `role_users`
--

CREATE TABLE `role_users` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `role_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_users`
--

INSERT INTO `role_users` (`id`, `user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(17, 58, 3, '2022-03-03 13:49:34', '2022-03-03 13:49:34'),
(24, 65, 3, '2022-03-29 04:46:12', '2022-03-29 04:46:12'),
(26, 67, 2, '2022-03-29 10:52:00', '2022-03-29 10:52:00'),
(27, 71, 3, '2022-03-29 11:46:48', '2022-03-29 11:46:48'),
(28, 72, 3, '2022-04-08 08:24:47', '2022-04-08 08:24:47'),
(29, 73, 3, '2022-04-08 08:26:55', '2022-04-08 08:26:55'),
(30, 74, 2, '2022-04-08 08:28:49', '2022-04-08 08:28:49'),
(31, 75, 3, '2022-04-08 08:35:27', '2022-04-08 08:35:27'),
(32, 76, 3, '2022-04-08 09:29:59', '2022-04-08 09:29:59'),
(33, 77, 3, '2022-04-08 09:56:18', '2022-04-08 09:56:18'),
(34, 78, 3, '2022-04-08 09:58:42', '2022-04-08 09:58:42'),
(35, 79, 3, '2022-04-08 10:05:35', '2022-04-08 10:05:35'),
(36, 80, 3, '2022-04-08 10:09:40', '2022-04-08 10:09:40'),
(37, 81, 3, '2022-04-08 10:22:20', '2022-04-08 10:22:20'),
(47, 85, 2, '2022-04-08 11:00:35', '2022-04-08 11:00:35'),
(48, 86, 3, '2022-04-11 09:10:40', '2022-04-11 09:10:40'),
(49, 87, 3, '2022-04-12 08:57:05', '2022-04-12 08:57:05'),
(51, 89, 3, '2022-04-14 17:19:47', '2022-04-14 17:19:47'),
(52, 90, 3, '2022-04-16 09:32:12', '2022-04-16 09:32:12'),
(53, 91, 2, '2022-04-18 07:54:40', '2022-04-18 07:54:40'),
(54, 92, 3, '2022-04-18 07:59:05', '2022-04-18 07:59:05'),
(55, 93, 3, '2022-04-18 09:08:22', '2022-04-18 09:08:22'),
(56, 94, 3, '2022-04-18 23:39:25', '2022-04-18 23:39:25'),
(57, 95, 3, '2022-04-19 08:35:55', '2022-04-19 08:35:55'),
(58, 96, 2, '2022-04-19 08:40:14', '2022-04-19 08:40:14'),
(61, 97, 2, '2022-04-19 09:30:48', '2022-04-19 09:30:48'),
(62, 98, 2, '2022-04-19 09:32:09', '2022-04-19 09:32:09'),
(63, 99, 3, '2022-04-19 09:33:43', '2022-04-19 09:33:43'),
(64, 100, 2, '2022-04-19 09:35:13', '2022-04-19 09:35:13'),
(65, 101, 3, '2022-04-19 09:35:37', '2022-04-19 09:35:37'),
(66, 102, 2, '2022-04-19 10:43:51', '2022-04-19 10:43:51'),
(67, 103, 3, '2022-04-19 11:47:08', '2022-04-19 11:47:08'),
(70, 104, 2, '2022-04-20 07:23:43', '2022-04-20 07:23:43'),
(71, 105, 3, '2022-04-21 09:33:18', '2022-04-21 09:33:18');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int UNSIGNED NOT NULL,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(11, 'admin_email', '[]', NULL, NULL),
(12, 'time_zone', 'UTC', NULL, NULL),
(13, 'enable_send_error_reporting_via_email', '0', NULL, NULL),
(16, 'admin_title', 'Makanumber', NULL, NULL),
(17, 'rich_editor', 'ckeditor', NULL, NULL),
(18, 'default_admin_theme', 'default', NULL, NULL),
(19, 'enable_change_admin_theme', '1', NULL, NULL),
(20, 'enable_multi_language_in_admin', '1', NULL, NULL),
(21, 'enable_cache', '0', NULL, NULL),
(22, 'cache_time', '10', NULL, NULL),
(23, 'cache_admin_menu_enable', '0', NULL, NULL),
(24, 'optimize_page_speed_enable', '0', NULL, NULL),
(27, 'cache_time_site_map', '3600', NULL, NULL),
(28, 'show_admin_bar', '1', NULL, NULL),
(29, 'theme-flex-home-site_title', 'Makanumber', NULL, NULL),
(30, 'theme-flex-home-show_site_name', '0', NULL, NULL),
(33, 'theme-flex-home-copyright', '© 2022 Makanumber', NULL, NULL),
(36, 'theme-flex-home-home_banner', 'banner/banner.jpg', NULL, NULL),
(37, 'theme-flex-home-logo', 'logo/logo.png', NULL, NULL),
(40, 'theme-flex-home-facebook', 'https://www.facebook.com', NULL, NULL),
(41, 'theme-flex-home-youtube', 'https://youtube.com', NULL, NULL),
(44, 'theme-flex-home-hotline', '18006268', NULL, NULL),
(45, 'theme-flex-home-address', 'North Link Building, 10 Admiralty Street, 757695 Singapore', NULL, NULL),
(46, 'theme-flex-home-email', 'contact@makanumber.com', NULL, NULL),
(49, 'theme-flex-home-logo_white', 'logo/logo-white.png', NULL, NULL),
(50, 'membership_authorization_at', '2022-04-19 01:43:11', NULL, NULL),
(56, 'enable_captcha', '0', NULL, NULL),
(57, 'captcha_site_key', 'no-captcha-site-key', NULL, NULL),
(58, 'captcha_secret', 'no-captcha-secret', NULL, NULL),
(65, 'store_weight_unit', 'g', NULL, NULL),
(66, 'store_width_height_unit', 'cm', NULL, NULL),
(67, 'currencies_is_default', '0', NULL, NULL),
(68, 'language_hide_default', '1', NULL, NULL),
(69, 'language_display', 'all', NULL, NULL),
(70, 'language_switcher_display', 'list', NULL, NULL),
(71, 'language_hide_languages', '[]', NULL, NULL),
(72, 'language_show_default_item_if_current_version_not_existed', '1', NULL, NULL),
(73, 'theme-flex-home-seo_title', 'Flex Home', NULL, NULL),
(85, 'theme-flex-home-vi-site_title', 'Flex Home - Trang thông tin mua bán Bất Động Sản', NULL, NULL),
(86, 'theme-flex-home-vi-show_site_name', '0', NULL, NULL),
(87, 'theme-flex-home-vi-seo_title', 'Flex Home - Trang thông tin mua bán Bất Động Sản', NULL, NULL),
(89, 'theme-flex-home-vi-home_banner', 'banner/banner.jpg', NULL, NULL),
(90, 'theme-flex-home-vi-copyright', '© 2020 Flex Home là một sản phẩm về lĩnh vực bất động sản của Botble Team', NULL, NULL),
(91, 'theme-flex-home-vi-hotline', '18006268', NULL, NULL),
(92, 'theme-flex-home-vi-address', 'Tòa nhà North Link, Đường 10 Admiralty, 757695 Singapore', NULL, NULL),
(93, 'theme-flex-home-vi-email', 'contact@flex-home.com', NULL, NULL),
(95, 'theme-flex-home-vi-logo', 'logo/logo.png', NULL, NULL),
(96, 'theme-flex-home-vi-logo_white', 'logo/logo-white.png', NULL, NULL),
(104, 'theme-flex-home-vi-facebook', 'https://www.facebook.com', NULL, NULL),
(105, 'theme-flex-home-vi-youtube', 'https://youtube.com', NULL, NULL),
(133, 'theme-flex-home-favicon', 'logo/favicon.png', NULL, NULL),
(143, 'theme-flex-home-vi-favicon', 'logo/favicon.png', NULL, NULL),
(148, 'theme-flex-home-seo_description', 'Find your favorite homes at Flex Home', NULL, NULL),
(149, 'theme-flex-home-about-us', 'Founded on August 28, 1993 (formerly known as Truong Thinh Phat Construction Co., Ltd.), Flex Home operates in the field of real estate business, building villas for rent.\n\nSlogan \"Breaking time, through space\".', NULL, NULL),
(150, 'theme-flex-home-home_project_description', 'We make the best choices with the hottest and most prestigious projects, please visit the details below to find out more', NULL, NULL),
(151, 'theme-flex-home-home_description_for_properties_by_locations', 'Each place is a good choice, it will help you make the right decision, do not miss the opportunity to discover our wonderful properties.', NULL, NULL),
(152, 'theme-flex-home-home_description_for_news', 'Below is the latest real estate news we get regularly updated from reliable sources.', NULL, NULL),
(153, 'theme-flex-home-vi-seo_description', 'Tìm ngôi nhà yêu thích tại FlexHome', NULL, NULL),
(154, 'theme-flex-home-vi-about-us', 'Được thành lập ngày 28 - 08 -1993 (tiền thân là công ty TNHH Xây Dựng Trường Thịnh Phát), Flex Home hoạt động trong lĩnh vực kinh doanh bất động sản, xây biệt thự cho thuê. \nPhương châm  “Đánh bật thời gian, xuyên qua không gian\"', NULL, NULL),
(155, 'theme-flex-home-vi-home_project_description', 'Chúng tôi đưa ra những lựa chọn tốt nhất với những dự án hot và uy tín bậc nhất hiện nay, hãy truy cập vào thông tin chi tiết bên dưới để tìm hiểu thêm nhé.', NULL, NULL),
(156, 'theme-flex-home-vi-home_description_for_properties_by_locations', 'Mỗi căn hộ là một lựa chọn tốt, nó sẽ giúp bạn đưa ra quyết định đúng đắn, đừng bỏ lỡ cơ hội khám phá những căn hộ tuyệt vời của chúng tôi.', NULL, NULL),
(157, 'theme-flex-home-vi-home_description_for_news', 'Bên dưới đây là những tin tức mới nhất về lĩnh vực bất động sản được chúng tôi cập nhật thường xuyên từ những nguồn tin đáng tin cậy.', NULL, NULL),
(167, 'theme-flex-home-primary_font', 'Nunito Sans', NULL, NULL),
(168, 'theme-flex-home-twitter', '', NULL, NULL),
(169, 'theme-flex-home-number_of_featured_projects', '4', NULL, NULL),
(170, 'theme-flex-home-number_of_featured_cities', '10', NULL, NULL),
(171, 'theme-flex-home-number_of_properties_for_sell', '8', NULL, NULL),
(172, 'theme-flex-home-number_of_properties_for_rent', '8', NULL, NULL),
(173, 'theme-flex-home-number_of_projects_per_page', '12', NULL, NULL),
(174, 'theme-flex-home-number_of_properties_per_page', '12', NULL, NULL),
(175, 'theme-flex-home-number_of_related_projects', '8', NULL, NULL),
(176, 'theme-flex-home-number_of_related_properties', '8', NULL, NULL),
(177, 'theme-flex-home-properties_description', 'Each place is a good choice, it will help you make the right decision, do not miss the opportunity to discover our wonderful properties.', NULL, NULL),
(178, 'theme-flex-home-home_description_for_properties_for_sale', 'Below is a list of properties that are currently up for sale', NULL, NULL),
(179, 'theme-flex-home-home_description_for_properties_for_rent', 'Below is a detailed price list of each property for rent', NULL, NULL),
(196, 'theme-flex-home-number_of_properties_for_sale', '8', NULL, NULL),
(197, 'theme-flex-home-home_banner_description', 'Find your favorite homes at Flex Home', NULL, NULL),
(198, 'theme-flex-home-home_description_for_projects_by_locations', '', NULL, NULL),
(199, 'theme-flex-home-vi-primary_font', 'Nunito Sans', NULL, NULL),
(200, 'theme-flex-home-vi-twitter', '', NULL, NULL),
(201, 'theme-flex-home-vi-number_of_featured_projects', '4', NULL, NULL),
(202, 'theme-flex-home-vi-number_of_featured_cities', '10', NULL, NULL),
(203, 'theme-flex-home-vi-number_of_properties_for_sale', '8', NULL, NULL),
(204, 'theme-flex-home-vi-number_of_properties_for_rent', '8', NULL, NULL),
(205, 'theme-flex-home-vi-number_of_projects_per_page', '12', NULL, NULL),
(206, 'theme-flex-home-vi-number_of_properties_per_page', '12', NULL, NULL),
(207, 'theme-flex-home-vi-number_of_related_projects', '8', NULL, NULL),
(208, 'theme-flex-home-vi-number_of_related_properties', '8', NULL, NULL),
(209, 'theme-flex-home-vi-home_banner_description', 'Tìm ngôi nhà yêu thích tại FlexHome', NULL, NULL),
(210, 'theme-flex-home-vi-properties_description', '', NULL, NULL),
(211, 'theme-flex-home-vi-home_description_for_projects_by_locations', '', NULL, NULL),
(212, 'theme-flex-home-vi-home_description_for_properties_for_sale', '', NULL, NULL),
(213, 'theme-flex-home-vi-home_description_for_properties_for_rent', '', NULL, NULL),
(214, 'payment_cod_name', 'Cash on delivery (COD)', NULL, NULL),
(216, 'payment_cod_status', '1', NULL, NULL),
(217, 'payment_bank_transfer_name', 'Bank transfer', NULL, NULL),
(219, 'payment_bank_transfer_status', '1', NULL, NULL),
(220, 'theme-flex-home-vi-seo_og_image', '', NULL, NULL),
(221, 'theme-flex-home-vi-primary_color', '#1D5F6F', NULL, NULL),
(222, 'theme-flex-home-vi-primary_color_hover', '#063A5D', NULL, NULL),
(224, 'theme-flex-home-vi-number_of_posts_in_a_category', '12', NULL, NULL),
(225, 'theme-flex-home-vi-number_of_posts_in_a_tag', '12', NULL, NULL),
(227, 'theme-flex-home-vi-cookie_consent_enable', 'yes', NULL, NULL),
(229, 'theme-flex-home-vi-cookie_consent_button_text', 'Allow cookies', NULL, NULL),
(230, 'theme-flex-home-seo_og_image', '', NULL, NULL),
(231, 'theme-flex-home-primary_color', '#1D5F6F', NULL, NULL),
(232, 'theme-flex-home-primary_color_hover', '#063A5D', NULL, NULL),
(234, 'theme-flex-home-number_of_posts_in_a_category', '12', NULL, NULL),
(235, 'theme-flex-home-number_of_posts_in_a_tag', '12', NULL, NULL),
(237, 'theme-flex-home-cookie_consent_enable', 'yes', NULL, NULL),
(239, 'theme-flex-home-cookie_consent_button_text', 'Allow cookies', NULL, NULL),
(270, 'activated_plugins', '[\"language\",\"backup\",\"blog\",\"captcha\",\"career\",\"contact\",\"cookie-consent\",\"location\",\"payment\",\"paystack\",\"razorpay\",\"real-estate\",\"rss-feed\",\"social-login\",\"sslcommerz\",\"analytics\"]', NULL, NULL),
(283, 'permalink-botble-blog-models-post', 'news', NULL, NULL),
(284, 'permalink-botble-blog-models-category', 'news', NULL, NULL),
(285, 'theme', 'flex-home', NULL, NULL),
(286, 'admin_logo', 'makanumber-uae-logo-w.png', NULL, NULL),
(287, 'admin_favicon', 'makanumber-icon.png', NULL, NULL),
(288, 'theme-flex-home-cookie_consent_message', 'Your experience on this site will be improved by allowing cookies ', NULL, NULL),
(289, 'theme-flex-home-cookie_consent_learn_more_url', 'http://flex-home.local/cookie-policy', NULL, NULL),
(290, 'theme-flex-home-cookie_consent_learn_more_text', 'Cookie Policy', NULL, NULL),
(291, 'theme-flex-home-homepage_id', '1', NULL, NULL),
(292, 'theme-flex-home-blog_page_id', '2', NULL, NULL),
(293, 'theme-flex-home-vi-cookie_consent_message', 'Trải nghiệm của bạn trên trang web này sẽ được cải thiện bằng cách cho phép cookie ', NULL, NULL),
(294, 'theme-flex-home-vi-cookie_consent_learn_more_url', 'http://flex-home.local/cookie-policy', NULL, NULL),
(295, 'theme-flex-home-vi-cookie_consent_learn_more_text', 'Cookie Policy', NULL, NULL),
(296, 'theme-flex-home-vi-homepage_id', '7', NULL, NULL),
(297, 'theme-flex-home-vi-blog_page_id', '8', NULL, NULL),
(298, 'theme-flex-home-social_links', '[[{\"key\":\"social-name\",\"value\":\"Facebook\"},{\"key\":\"social-icon\",\"value\":\"fab fa-facebook-f\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.facebook.com\"}],[{\"key\":\"social-name\",\"value\":\"Twitter\"},{\"key\":\"social-icon\",\"value\":\"fab fa-twitter\"},{\"key\":\"social-url\",\"value\":\"\"}],[{\"key\":\"social-name\",\"value\":\"Youtube\"},{\"key\":\"social-icon\",\"value\":\"fab fa-youtube\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/youtube.com\"}]]', NULL, NULL),
(299, 'locale_direction', 'ltr', NULL, NULL),
(300, 'login_screen_backgrounds', '{\"1\":\"makanumber-uae-logo-w.png\"}', NULL, NULL),
(301, 'google_site_verification', '', NULL, NULL),
(302, 'google_analytics', '', NULL, NULL),
(303, 'analytics_view_id', '', NULL, NULL),
(304, 'analytics_service_account_credentials', '', NULL, NULL),
(305, 'captcha_type', 'v2', NULL, NULL),
(306, 'captcha_hide_badge', '0', NULL, NULL),
(307, 'locale', 'en', NULL, NULL),
(308, 'admin_locale_direction', 'ltr', NULL, NULL),
(309, 'email_driver', 'sendmail', NULL, NULL),
(310, 'email_port', '', NULL, NULL),
(311, 'email_host', '', NULL, NULL),
(312, 'email_username', 'admin01', NULL, NULL),
(313, 'email_password', '159357', NULL, NULL),
(314, 'email_encryption', '', NULL, NULL),
(315, 'email_mail_gun_domain', '', NULL, NULL),
(316, 'email_mail_gun_secret', '', NULL, NULL),
(317, 'email_mail_gun_endpoint', 'api.mailgun.net', NULL, NULL),
(318, 'email_ses_key', '', NULL, NULL),
(319, 'email_ses_secret', '', NULL, NULL),
(320, 'email_ses_region', 'us-east-1', NULL, NULL),
(321, 'email_postmark_token', '', NULL, NULL),
(322, 'email_sendmail_path', '/usr/sbin/sendmail -bs', NULL, NULL),
(323, 'email_log_channel', 'mail', NULL, NULL),
(324, 'email_from_name', 'Noreply', NULL, NULL),
(325, 'email_from_address', 'noreply@makanumber.com', NULL, NULL),
(326, 'using_queue_to_send_mail', '0', NULL, NULL),
(327, 'plugins_real-estate_notice_status', '1', NULL, NULL),
(328, 'plugins_real-estate_new-pending-property_status', '0', NULL, NULL),
(329, 'plugins_real-estate_account-registered_status', '0', NULL, NULL),
(330, 'plugins_real-estate_payment-receipt_status', '0', NULL, NULL),
(331, 'plugins_real-estate_free-credit-claimed_status', '0', NULL, NULL),
(332, 'plugins_real-estate_payment-received_status', '0', NULL, NULL),
(333, 'plugins_contact_notice_status', '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `slugs`
--

CREATE TABLE `slugs` (
  `id` int UNSIGNED NOT NULL,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` int UNSIGNED NOT NULL,
  `reference_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slugs`
--

INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES
(5, 'wifi', 1, 'Botble\\RealEstate\\Models\\PropertyFeature', '', '2019-11-17 21:40:58', '2019-11-17 21:40:58'),
(6, 'swimming-pool', 2, 'Botble\\RealEstate\\Models\\PropertyFeature', '', '2019-11-17 21:41:43', '2019-11-17 21:41:43'),
(12, 'osaka-heights-apartment', 8, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-18 01:49:36', '2019-11-18 01:49:36'),
(16, 'category-news', 1, 'Botble\\Blog\\Models\\Category', 'news', '2019-11-18 02:33:35', '2021-06-11 20:56:49'),
(18, 'bcg-sets-great-store-by-real-estate-negotiations', 1, 'Botble\\Blog\\Models\\Post', 'news', '2019-11-18 02:51:35', '2021-06-11 20:56:49'),
(19, 'bcg-sets-great-store', 1, 'Botble\\Blog\\Models\\Tag', 'tag', '2019-11-18 02:51:35', '2019-11-18 02:51:35'),
(20, 'private-home-sales-drop-27-in-october', 2, 'Botble\\Blog\\Models\\Post', 'news', '2019-11-18 02:55:53', '2021-06-11 20:56:49'),
(21, 'private-home-sales', 2, 'Botble\\Blog\\Models\\Tag', 'tag', '2019-11-18 02:55:53', '2019-11-18 02:55:53'),
(22, 'singapore-overtakes-hong-kong-in-terms-of-property-investment-prospects', 3, 'Botble\\Blog\\Models\\Post', 'news', '2019-11-18 02:59:01', '2021-06-11 20:56:49'),
(23, 's-koreas-big-investors-flocking-to-overseas-real-estate', 4, 'Botble\\Blog\\Models\\Post', 'news', '2019-11-18 03:07:27', '2021-06-11 20:56:49'),
(24, 'south-korean-investors', 3, 'Botble\\Blog\\Models\\Tag', 'tag', '2019-11-18 03:07:27', '2019-11-18 03:07:27'),
(34, 'can-ho-walnut-park', 7, 'Botble\\RealEstate\\Models\\Project', 'projects', '2019-11-21 01:54:36', '2019-11-21 01:54:36'),
(35, '1574328489', 8, 'Botble\\RealEstate\\Models\\Project', 'projects', '2019-11-21 02:28:09', '2019-11-21 02:28:09'),
(36, 'thien-duong-mimaroba', 9, 'Botble\\RealEstate\\Models\\Project', 'projects', '2019-11-21 02:40:25', '2019-11-21 02:40:25'),
(37, 'khu-biet-thu-aegean', 10, 'Botble\\RealEstate\\Models\\Project', 'projects', '2019-11-21 02:58:55', '2019-11-21 02:58:55'),
(38, 'chung-cu-rung-aydos', 11, 'Botble\\RealEstate\\Models\\Project', 'projects', '2019-11-21 03:16:25', '2019-11-21 03:16:25'),
(39, 'khu-chung-cu-the-avila', 12, 'Botble\\RealEstate\\Models\\Project', 'projects', '2019-11-21 03:25:22', '2019-11-21 03:25:22'),
(40, 'ban-biet-thu-3-phong-ngu-calpe-alicante', 18, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-21 05:51:54', '2019-11-21 05:51:54'),
(41, 'ban-nha-tai-johannesburg-south-africa', 19, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-21 06:03:12', '2019-11-21 06:03:12'),
(42, 'nha-phong-cach-phap', 20, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-21 06:12:15', '2019-11-21 06:12:15'),
(43, 'nha-ban-tai', 21, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-21 06:26:59', '2019-11-21 06:26:59'),
(44, 'can-ho-walnut-park', 22, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-21 06:56:50', '2019-11-21 06:56:50'),
(45, 'cho-thue-nha-cao-cap-5-phong-ngu', 23, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-21 07:18:36', '2019-11-21 07:18:36'),
(46, 'cho-thue-nha-view-dep', 24, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-21 07:26:48', '2019-11-21 07:26:48'),
(47, 'ban-can-ho-osaka-heights', 25, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-21 07:34:38', '2019-11-21 07:34:38'),
(48, 'nha-chinh-chu', 26, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-21 07:40:46', '2019-11-21 07:40:46'),
(49, 'cho-thue-nha-tren-duong-thompsons', 27, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-21 07:45:34', '2019-11-21 07:45:34'),
(52, 'house-architecture', 2, 'Botble\\Blog\\Models\\Category', 'news', '2019-11-21 07:49:25', '2021-06-11 20:56:49'),
(53, 'kien-truc-nha', 3, 'Botble\\Blog\\Models\\Category', 'news', '2019-11-21 07:49:35', '2021-06-11 20:56:49'),
(54, 'house-design', 4, 'Botble\\Blog\\Models\\Category', 'news', '2019-11-21 07:50:02', '2021-06-11 20:56:49'),
(55, 'thiet-ke-nha', 5, 'Botble\\Blog\\Models\\Category', 'news', '2019-11-21 07:50:17', '2021-06-11 20:56:49'),
(56, 'building-materials', 6, 'Botble\\Blog\\Models\\Category', 'news', '2019-11-21 07:50:36', '2021-06-11 20:56:49'),
(57, 'vat-lieu-xay-dung', 7, 'Botble\\Blog\\Models\\Category', 'news', '2019-11-21 07:50:58', '2021-06-11 20:56:49'),
(58, 'can-ho-1-phong-ngu-hoan-toan-moi-o-vi-tri-hang-nhat', 28, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-21 19:53:17', '2019-11-21 19:53:17'),
(59, 'nha-cao-cap-thanh-lich', 29, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-21 19:59:16', '2019-11-21 19:59:16'),
(60, 'can-ban-can-ho-cao-cap-tai-singapore', 30, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-22 00:29:01', '2019-11-22 00:29:01'),
(61, 'can-ho-cao-cap-5-phong-can-ban-tai-kuala-lumpur', 31, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-22 00:42:28', '2019-11-22 00:42:28'),
(62, 'nha-ompound-pejaten-barat-kemang', 32, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-22 00:47:18', '2019-11-22 00:47:18'),
(63, 'can-ho-muiderstraatweg-o-diemen', 33, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-22 00:57:15', '2019-11-22 00:57:15'),
(64, 'can-ho-dep-cho-thue-o-berlin', 34, 'Botble\\RealEstate\\Models\\Property', 'properties', '2019-11-22 01:06:09', '2019-11-22 01:06:09'),
(65, 'tin-tuc-1', 8, 'Botble\\Blog\\Models\\Category', 'news', '2019-11-22 01:26:08', '2021-06-11 20:56:49'),
(66, 'bcg-thiet-lap-cua-hang-tuyet-voi-bang-cac-cuoc-dam-phan-bat-dong-san', 5, 'Botble\\Blog\\Models\\Post', 'news', '2019-11-22 01:26:31', '2021-06-11 20:56:49'),
(67, 'doanh-so-ban-nha-rieng-giam-27-trong-thang-10', 6, 'Botble\\Blog\\Models\\Post', 'news', '2019-11-22 01:29:45', '2021-06-11 20:56:49'),
(68, 'singapore-vuot-qua-hong-kong-ve-trien-vong-dau-tu-bat-dong-san', 7, 'Botble\\Blog\\Models\\Post', 'news', '2019-11-22 01:33:23', '2021-06-11 20:56:49'),
(69, 'cac-nha-dau-tu-lon-han-quoc-do-xo-vao-bat-dong-san-o-nuoc-ngoai', 8, 'Botble\\Blog\\Models\\Post', 'news', '2019-11-22 01:39:38', '2021-06-11 20:56:49'),
(74, 'sales-manager-real-estate', 1, 'Botble\\Career\\Models\\Career', 'careers', '2019-11-30 19:43:10', '2019-11-30 19:43:10'),
(75, 'truong-phong-kinh-doanh-luong-len-toi', 2, 'Botble\\Career\\Models\\Career', 'careers', '2019-11-30 19:49:07', '2019-11-30 19:49:07'),
(76, 'senior-real-estate-consultant', 3, 'Botble\\Career\\Models\\Career', 'careers', '2019-11-30 19:52:42', '2019-11-30 19:52:42'),
(77, 'chuyen-vien-tu-van-bat-dong-san-cao-cap', 4, 'Botble\\Career\\Models\\Career', 'careers', '2019-11-30 19:56:50', '2019-11-30 19:56:50'),
(113, 'ads', 5, 'Botble\\Career\\Models\\Career', 'careers', '2021-01-03 17:26:32', '2021-01-03 17:26:32'),
(180, 'apartment', 1, 'Botble\\RealEstate\\Models\\Category', 'property-category', '2021-06-11 20:56:44', '2021-06-11 20:56:44'),
(181, 'villa', 2, 'Botble\\RealEstate\\Models\\Category', 'property-category', '2021-06-11 20:56:44', '2021-06-11 20:56:44'),
(182, 'condo', 3, 'Botble\\RealEstate\\Models\\Category', 'property-category', '2021-06-11 20:56:44', '2021-06-11 20:56:44'),
(183, 'house', 4, 'Botble\\RealEstate\\Models\\Category', 'property-category', '2021-06-11 20:56:44', '2021-06-11 20:56:44'),
(184, 'land', 5, 'Botble\\RealEstate\\Models\\Category', 'property-category', '2021-06-11 20:56:44', '2021-06-11 20:56:44'),
(185, 'commercial-property', 6, 'Botble\\RealEstate\\Models\\Category', 'property-category', '2021-06-11 20:56:44', '2021-06-11 20:56:44'),
(186, 'home', 1, 'Botble\\Page\\Models\\Page', '', '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(187, 'news', 2, 'Botble\\Page\\Models\\Page', '', '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(188, 'about-us', 3, 'Botble\\Page\\Models\\Page', '', '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(189, 'contact', 4, 'Botble\\Page\\Models\\Page', '', '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(190, 'terms-conditions', 5, 'Botble\\Page\\Models\\Page', '', '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(191, 'cookie-policy', 6, 'Botble\\Page\\Models\\Page', '', '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(192, 'trang-chu', 7, 'Botble\\Page\\Models\\Page', '', '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(193, 'tin-tuc', 8, 'Botble\\Page\\Models\\Page', '', '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(194, 've-chung-toi', 9, 'Botble\\Page\\Models\\Page', '', '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(195, 'lien-he', 10, 'Botble\\Page\\Models\\Page', '', '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(196, 'dieu-khoan-va-quy-dinh', 11, 'Botble\\Page\\Models\\Page', '', '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(197, 'cookie-policy', 12, 'Botble\\Page\\Models\\Page', '', '2021-06-11 20:56:49', '2021-06-11 20:56:49'),
(198, 'the-top-2020-handbag-trends-to-know', 9, 'Botble\\Blog\\Models\\Post', '', '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(199, 'top-search-engine-optimization-strategies', 10, 'Botble\\Blog\\Models\\Post', '', '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(200, 'which-company-would-you-choose', 11, 'Botble\\Blog\\Models\\Post', '', '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(201, 'used-car-dealer-sales-tricks-exposed', 12, 'Botble\\Blog\\Models\\Post', '', '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(202, '20-ways-to-sell-your-product-faster', 13, 'Botble\\Blog\\Models\\Post', '', '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(203, 'the-secrets-of-rich-and-famous-writers', 14, 'Botble\\Blog\\Models\\Post', '', '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(204, 'imagine-losing-20-pounds-in-14-days', 15, 'Botble\\Blog\\Models\\Post', '', '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(205, 'are-you-still-using-that-slow-old-typewriter', 16, 'Botble\\Blog\\Models\\Post', '', '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(206, 'a-skin-cream-thats-proven-to-work', 17, 'Botble\\Blog\\Models\\Post', '', '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(207, '10-reasons-to-start-your-own-profitable-website', 18, 'Botble\\Blog\\Models\\Post', '', '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(208, 'simple-ways-to-reduce-your-unwanted-wrinkles', 19, 'Botble\\Blog\\Models\\Post', '', '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(209, 'apple-imac-with-retina-5k-display-review', 20, 'Botble\\Blog\\Models\\Post', '', '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(210, '10000-web-site-visitors-in-one-monthguaranteed', 21, 'Botble\\Blog\\Models\\Post', '', '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(211, 'unlock-the-secrets-of-selling-high-ticket-items', 22, 'Botble\\Blog\\Models\\Post', '', '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(212, '4-expert-tips-on-how-to-choose-the-right-mens-wallet', 23, 'Botble\\Blog\\Models\\Post', '', '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(213, 'sexy-clutches-how-to-buy-wear-a-designer-clutch-bag', 24, 'Botble\\Blog\\Models\\Post', '', '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(214, 'xu-huong-tui-xach-hang-dau-nam-2020-can-biet', 25, 'Botble\\Blog\\Models\\Post', '', '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(215, 'cac-chien-luoc-toi-uu-hoa-cong-cu-tim-kiem-hang-dau', 26, 'Botble\\Blog\\Models\\Post', '', '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(216, 'ban-se-chon-cong-ty-nao', 27, 'Botble\\Blog\\Models\\Post', '', '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(217, 'lo-ra-cac-thu-doan-ban-hang-cua-dai-ly-o-to-da-qua-su-dung', 28, 'Botble\\Blog\\Models\\Post', '', '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(218, '20-cach-ban-san-pham-nhanh-hon', 29, 'Botble\\Blog\\Models\\Post', '', '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(219, 'bi-mat-cua-nhung-nha-van-giau-co-va-noi-tieng', 30, 'Botble\\Blog\\Models\\Post', '', '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(220, 'hay-tuong-tuong-ban-giam-20-bang-anh-trong-14-ngay', 31, 'Botble\\Blog\\Models\\Post', '', '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(221, 'ban-van-dang-su-dung-may-danh-chu-cu-cham-do', 32, 'Botble\\Blog\\Models\\Post', '', '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(222, 'mot-loai-kem-duong-da-da-duoc-chung-minh-hieu-qua', 33, 'Botble\\Blog\\Models\\Post', '', '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(223, '10-ly-do-de-bat-dau-trang-web-co-loi-nhuan-cua-rieng-ban', 34, 'Botble\\Blog\\Models\\Post', '', '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(224, 'nhung-cach-don-gian-de-giam-nep-nhan-khong-mong-muon-cua-ban', 35, 'Botble\\Blog\\Models\\Post', '', '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(225, 'danh-gia-apple-imac-voi-man-hinh-retina-5k', 36, 'Botble\\Blog\\Models\\Post', '', '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(226, '10000-khach-truy-cap-trang-web-trong-mot-thang-duoc-dam-bao', 37, 'Botble\\Blog\\Models\\Post', '', '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(227, 'mo-khoa-bi-mat-ban-duoc-ve-cao', 38, 'Botble\\Blog\\Models\\Post', '', '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(228, '4-loi-khuyen-cua-chuyen-gia-ve-cach-chon-vi-nam-phu-hop', 39, 'Botble\\Blog\\Models\\Post', '', '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(229, 'sexy-clutches-cach-mua-deo-tui-clutch-thiet-ke', 40, 'Botble\\Blog\\Models\\Post', '', '2021-06-11 20:56:55', '2021-06-11 20:56:55'),
(230, 'eighteen-islamabad', 4, 'Botble\\Blog\\Models\\Tag', 'tag', '2022-01-19 03:04:38', '2022-01-19 03:04:38'),
(231, 'bahria', 5, 'Botble\\Blog\\Models\\Tag', 'tag', '2022-01-19 03:10:30', '2022-01-19 03:10:30'),
(232, 'bahria-enclave', 6, 'Botble\\Blog\\Models\\Tag', 'tag', '2022-01-19 03:10:30', '2022-01-19 03:10:30'),
(233, 'park-view-city', 7, 'Botble\\Blog\\Models\\Tag', 'tag', '2022-01-19 03:14:59', '2022-01-19 03:14:59'),
(234, 'taj-residencia', 8, 'Botble\\Blog\\Models\\Tag', 'tag', '2022-01-19 03:17:25', '2022-01-19 03:17:25'),
(236, 'css', 35, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-02-08 04:34:31', '2022-02-08 04:34:31'),
(237, 'sam-kiani', 36, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-02-08 04:37:17', '2022-02-08 04:37:17'),
(238, 'test', 37, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-02-08 05:18:18', '2022-02-08 05:18:18'),
(246, 'mzxbcmxzbcm', 46, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-02-15 02:27:13', '2022-02-15 02:27:13'),
(247, 'agency-blog', 42, 'Botble\\Blog\\Models\\Post', 'news', '2022-02-16 00:20:56', '2022-02-16 00:20:56'),
(248, '.$request->prop_name.', 40, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-02-21 12:15:30', '2022-02-21 12:15:30'),
(249, 'house-for-sale', 40, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-02-21 12:19:14', '2022-02-21 12:19:14'),
(250, 'home-for-sale', 55, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-02-21 12:32:13', '2022-02-21 12:32:13'),
(251, 'slug-testing-here', 40, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-02-21 12:36:54', '2022-02-21 12:36:54'),
(252, 'test-property-new', 58, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-02-22 08:38:30', '2022-02-22 08:38:30'),
(253, '3-tables', 59, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-02-22 08:54:14', '2022-02-22 08:54:14'),
(254, 'testing-property', 60, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-02-25 07:30:14', '2022-02-25 07:30:14'),
(255, 'house-for-sale', 61, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-02-28 06:42:49', '2022-02-28 06:42:49'),
(256, 'ajman-one-towers', 62, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-02-28 16:37:59', '2022-02-28 16:37:59'),
(257, 'ajman-one-towers', 63, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-02-28 16:43:18', '2022-02-28 16:43:18'),
(258, 'test', 64, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-03-01 07:56:17', '2022-03-01 07:56:17'),
(259, 'test-1', 65, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-03-01 07:59:02', '2022-03-01 07:59:02'),
(260, 'tetsng', 66, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-03-02 09:16:55', '2022-03-02 09:16:55'),
(261, 'kuch-b', 67, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-03-02 09:20:40', '2022-03-02 09:20:40'),
(262, 'testing', 68, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-03-02 09:56:48', '2022-03-02 09:56:48'),
(263, 'image-tetsing', 69, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-03-02 10:08:45', '2022-03-02 10:08:45'),
(264, 'xzmczx', 70, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-03-02 10:25:28', '2022-03-02 10:25:28'),
(265, 'xmzcbma', 71, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-03-02 10:26:35', '2022-03-02 10:26:35'),
(266, 'nmzbmc', 72, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-03-02 10:28:31', '2022-03-02 10:28:31'),
(267, 'xzbcmz', 73, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-03-02 10:42:15', '2022-03-02 10:42:15'),
(268, 'jckjdsks', 74, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-03-02 10:54:33', '2022-03-02 10:54:33'),
(269, 'zmxcmxzn', 75, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-03-02 11:20:11', '2022-03-02 11:20:11'),
(270, 'jcxzzx', 76, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-03-02 11:23:27', '2022-03-02 11:23:27'),
(271, 'mzxmcxz', 77, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-03-02 11:24:07', '2022-03-02 11:24:07'),
(272, 'dashboard-prop', 78, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-03-02 11:48:56', '2022-03-02 11:48:56'),
(273, 'user-property', 79, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-03-02 11:50:38', '2022-03-02 11:50:38'),
(274, 'second-test-prop', 80, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-03-02 11:55:54', '2022-03-02 11:55:54'),
(275, 'house-for-sale', 81, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-03-02 12:26:28', '2022-03-02 12:26:28'),
(276, 'property', 82, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-03-02 12:33:32', '2022-03-02 12:33:32'),
(277, 'prop', 83, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-03-02 12:46:39', '2022-03-02 12:46:39'),
(278, 'mcxznz', 84, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-03-02 12:51:42', '2022-03-02 12:51:42'),
(279, 'mxzczx', 85, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-03-02 12:52:49', '2022-03-02 12:52:49'),
(280, 'user-test-property', 86, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-03-02 13:07:09', '2022-03-02 13:07:09'),
(281, 'testtttt', 87, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-03-02 15:29:43', '2022-03-02 15:29:43'),
(282, 'asdfasdf', 88, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-03-02 15:45:26', '2022-03-02 15:45:26'),
(283, 'proper-name-will-be-here', 89, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-03-03 09:24:52', '2022-03-03 09:24:52'),
(284, 'nmxcmbzmjz', 90, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-03-03 12:24:24', '2022-03-03 12:24:24'),
(285, 'nmbmn', 91, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-03-03 12:52:07', '2022-03-03 12:52:07'),
(286, 'tetsing-property-images', 92, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-03-03 12:55:13', '2022-03-03 12:55:13'),
(287, 'nxz-nmz', 93, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-03-03 13:01:01', '2022-03-03 13:01:01'),
(288, 'slug-testing-here', 94, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-03-03 13:03:17', '2022-03-03 13:03:17'),
(289, 'hahhaha', 95, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-03-03 13:07:20', '2022-03-03 13:07:20'),
(290, 'image-testing-prop', 96, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-03-04 10:11:40', '2022-03-04 10:11:40'),
(291, 'palm-jumerirah-icon', 2977, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-03-23 13:43:24', '2022-03-23 13:43:24'),
(292, 'al-rawda', 2978, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-03-24 12:47:44', '2022-03-24 12:47:44'),
(293, 'downtown', 2979, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-03-24 18:19:51', '2022-03-24 18:19:51'),
(294, 'al-rawda', 2981, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-03-26 11:38:46', '2022-03-26 14:25:58'),
(295, 'qwraerhgetgw', 2983, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-03-26 12:21:50', '2022-03-28 07:58:09'),
(296, 'dvbefaesf', 2984, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-03-26 12:23:38', '2022-03-29 09:47:04'),
(297, 'qwraerhg', 2985, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-03-26 12:40:14', '2022-03-26 12:40:14'),
(298, 'afdagfvawjtgafs', 2986, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-03-26 13:04:06', '2022-03-26 14:27:53'),
(299, 'afdagfvawjtg', 2987, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-03-26 14:17:54', '2022-03-26 14:17:54'),
(300, 'downtown', 2982, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-03-26 14:25:58', '2022-03-26 14:25:58'),
(301, 'palm-jumerirah-icon', 2980, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-03-26 14:25:58', '2022-03-26 14:25:58'),
(302, 'ayjgf', 2988, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-03-26 14:46:58', '2022-03-26 14:46:58'),
(303, 'ayjgf', 2989, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-03-26 14:51:01', '2022-03-26 14:51:01'),
(304, 'ayjgf', 2990, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-03-26 15:05:45', '2022-03-26 15:05:45'),
(305, 'rtkj', 2991, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-03-28 08:17:47', '2022-03-28 08:17:47'),
(306, 'zdfhtae-b', 2992, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-03-29 08:25:17', '2022-03-29 08:25:17'),
(307, 'zdfhtae-b', 2993, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-03-29 08:33:18', '2022-03-29 08:33:18'),
(308, 'wetwgwbw', 2994, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-03-29 08:41:31', '2022-03-29 08:41:31'),
(309, 'wetwgwbw', 2995, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-03-29 09:08:33', '2022-03-29 09:08:33'),
(310, 'zsdyg', 2996, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-03-29 09:10:28', '2022-03-29 09:10:28'),
(311, 'avwetbg', 2997, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-03-29 09:39:14', '2022-03-29 09:39:14'),
(312, '32v3tf', 2998, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-03-29 09:41:04', '2022-03-29 09:41:04'),
(313, 'bybnhgng', 2999, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-03-29 09:50:23', '2022-03-29 09:50:23'),
(314, 'ahbsdrg', 3000, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-03-29 09:58:00', '2022-03-29 09:58:00'),
(315, 'gbvawe4w34', 3001, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-03-29 12:42:07', '2022-03-29 12:42:07'),
(316, '987-cantebury-drive', 3002, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-03-30 10:27:58', '2022-03-30 10:27:58'),
(317, '987-cantebury-drive', 3003, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-03-30 10:30:45', '2022-03-30 10:30:45'),
(318, '987-cantebury-drive', 3004, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-03-30 10:32:42', '2022-03-30 10:32:42'),
(319, '987-cantebury-drive', 3005, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-03-30 10:34:39', '2022-03-30 10:34:39'),
(320, 'annat-graynight-mood-in-siver-colony-london', 3006, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-03-30 10:43:49', '2022-03-30 10:43:49'),
(321, 'jannat-graynight-mood', 3007, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-03-30 10:48:02', '2022-03-30 10:48:02'),
(322, 'shivangi-preet', 3008, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-03-30 10:50:20', '2022-03-30 10:50:20'),
(323, 'lilac-cottage', 3009, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-03-30 10:54:37', '2022-03-30 10:54:37'),
(324, 'beeches', 3010, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-03-30 10:56:57', '2022-03-30 10:56:57'),
(325, 'ivy-house', 3011, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-03-30 10:58:42', '2022-03-30 10:58:42'),
(326, 'lakeside', 3012, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-03-30 11:00:11', '2022-03-30 11:00:11'),
(327, 'sunnyside', 3013, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-03-30 11:02:31', '2022-03-30 11:02:31'),
(328, '369-exceptional-properties', 3014, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-03-30 12:38:37', '2022-03-30 12:38:37'),
(329, 'sud-azur-properties', 3015, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-03-30 12:40:53', '2022-03-30 12:40:53'),
(330, 'nice-properties-massena', 3016, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-03-30 12:42:24', '2022-03-30 12:42:24'),
(331, 'wretman-estate-consulting', 3017, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-03-30 12:44:44', '2022-03-30 12:44:44'),
(332, 'la-porte-franche-sarl-jr-immo-lpf', 3018, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-03-30 12:47:10', '2022-03-30 12:47:10'),
(333, 'sesam-immobilier', 3019, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-03-30 12:49:17', '2022-03-30 12:49:17'),
(334, 'espaces-atypiques-nice-cannes', 3020, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-03-30 12:50:50', '2022-03-30 12:50:50'),
(335, 'century-21-lafage-transactions-le-port', 3021, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-03-30 12:52:39', '2022-03-30 12:52:39'),
(336, 'century-21-lafage-transactions-nice-corvesy', 3022, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-03-30 12:54:16', '2022-03-30 12:54:16'),
(337, 'agence-dumas', 3023, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-03-30 12:56:38', '2022-03-30 12:56:38'),
(338, 'cote-dazur-sothebys-international-realty', 3024, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-03-30 12:58:44', '2022-03-30 12:58:44'),
(339, 'nice-properties-opera', 3025, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-03-30 13:01:39', '2022-03-30 13:01:39'),
(340, 'nice-properties-opera', 3026, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-03-30 13:03:09', '2022-03-30 13:03:09'),
(341, 'haussmann-real-estate', 3027, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-03-30 13:06:35', '2022-03-30 13:06:35'),
(342, 'barnes-beaulieu', 3028, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-03-30 13:09:39', '2022-03-30 13:09:39'),
(343, 'dubai-la-violeta', 3029, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-03-31 11:30:38', '2022-03-31 11:30:38'),
(346, 'palm21-jumerirah-icon12', 3032, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-04-11 09:23:06', '2022-04-11 09:23:06'),
(347, 'qwraerhg', 3033, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-04-11 09:50:51', '2022-04-11 09:50:51'),
(348, 'ajman-one-tower', 3034, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-04-11 16:36:33', '2022-04-15 18:05:58'),
(349, 'adfhertfggsd', 3035, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-04-12 08:51:12', '2022-04-12 08:51:12'),
(350, 'aqaar', 3036, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-04-14 05:31:47', '2022-04-14 05:31:47'),
(351, 'plaza-one', 3037, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-04-14 05:50:10', '2022-04-14 05:50:10'),
(352, 'bussiness-bay', 3038, 'Botble\\RealEstate\\Models\\Property', 'properties', '2022-04-16 09:43:27', '2022-04-16 09:43:27');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` int UNSIGNED NOT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `abbreviation` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `name`, `country_id`, `order`, `is_default`, `status`, `created_at`, `updated_at`, `abbreviation`) VALUES
(1, 'Dubai', 1, 0, 0, 'published', '2019-11-18 08:17:57', '2022-02-18 02:09:51', NULL),
(2, 'Umm al Quwain', 1, 0, 0, 'published', '2022-02-18 02:24:47', '2022-02-28 14:44:34', NULL),
(3, 'Abu Dhabi & Al Ain', 1, 0, 0, 'published', '2022-02-18 02:25:16', '2022-02-28 14:46:39', NULL),
(4, 'Sharjah', 1, 0, 0, 'published', '2022-02-18 02:25:43', '2022-02-18 02:25:43', NULL),
(5, 'Ajman', 1, 0, 0, 'published', '2022-02-18 02:26:10', '2022-02-18 02:26:10', NULL),
(6, 'Fujairah', 1, 0, 0, 'published', '2022-02-18 02:26:33', '2022-02-28 14:46:02', NULL),
(7, 'Ras al Khaimah', 1, 0, 0, 'published', '2022-02-18 02:26:50', '2022-02-28 14:44:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subscription`
--

CREATE TABLE `subscription` (
  `id` int UNSIGNED NOT NULL,
  `pkg_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `days` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `images` int DEFAULT NULL,
  `status` int DEFAULT NULL,
  `user_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscription`
--

INSERT INTO `subscription` (`id`, `pkg_name`, `price`, `days`, `images`, `status`, `user_id`) VALUES
(8, '5 Posts', '1000', '5', NULL, 1, 5),
(13, 'Free First Post', '0', '1', NULL, 1, 33),
(14, 'Free First Post', '0', '1', NULL, 1, 40),
(15, 'Single Post', '250', '1', NULL, 1, 43),
(16, 'Free First Post', '0', '1', NULL, 1, 52),
(17, 'Free First Post', '0', '1', NULL, 1, 55),
(18, 'Free First Post', '0', '1', NULL, 1, 56),
(19, 'Free First Post', '0', '1', NULL, 1, 57),
(20, 'Free First Post', '0', '1', NULL, 1, 58),
(21, 'Free First Post', '0', '1', NULL, 1, 59),
(22, 'Free First Post', '0', '1', NULL, 1, 60),
(23, 'Free First Post', '0', '1', NULL, 1, 61),
(24, 'Free First Post', '0', '1', NULL, 1, 62),
(25, 'Free First Post', '0', '1', NULL, 1, 63),
(26, 'Free First Post', '0', '1', NULL, 1, 64),
(27, 'Free First Post', '0', '1', NULL, 1, 65),
(28, 'Free First Post', '0', '1', NULL, 1, 67),
(29, 'Free First Post', '0', '1', NULL, 1, 71),
(30, 'Free First Post', '0', '1', NULL, 1, 72),
(31, 'Free First Post', '0', '1', NULL, 1, 73),
(32, 'Free First Post', '0', '1', NULL, 1, 74),
(33, 'Free First Post', '0', '1', NULL, 1, 75),
(34, 'Free First Post', '0', '1', NULL, 1, 76),
(35, 'Free First Post', '0', '1', NULL, 1, 77),
(36, 'Free First Post', '0', '1', NULL, 1, 78),
(37, 'Free First Post', '0', '1', NULL, 1, 79),
(38, 'Free First Post', '0', '1', NULL, 1, 80),
(39, 'Free First Post', '0', '1', NULL, 1, 81),
(40, 'Free First Post', '0', '1', NULL, 1, 82),
(41, 'Free First Post', '0', '1', NULL, 1, 83),
(42, 'Free First Post', '0', '1', NULL, 1, 84),
(43, 'Free First Post', '0', '1', NULL, 1, 85),
(44, 'Free First Post', '0', '1', NULL, 1, 86),
(45, 'Free First Post', '0', '1', NULL, 1, 87),
(46, 'Free First Post', '0', '1', NULL, 1, 88),
(47, 'Free First Post', '0', '1', NULL, 1, 89),
(48, 'Free First Post', '0', '1', NULL, 1, 90),
(49, 'Free First Post', '0', '1', NULL, 1, 91),
(50, 'Free First Post', '0', '1', NULL, 1, 92),
(51, 'Free First Post', '0', '1', NULL, 1, 93),
(52, 'Free First Post', '0', '1', NULL, 1, 94),
(53, 'Free First Post', '0', '1', NULL, 1, 95),
(54, 'Free First Post', '0', '1', NULL, 1, 96),
(55, 'Free First Post', '0', '1', NULL, 1, 97),
(56, 'Free First Post', '0', '1', NULL, 1, 98),
(57, 'Free First Post', '0', '1', NULL, 1, 99),
(58, 'Free First Post', '0', '1', NULL, 1, 100),
(59, 'Free First Post', '0', '1', NULL, 1, 101),
(60, 'Free First Post', '0', '1', NULL, 1, 102),
(61, 'Free First Post', '0', '1', NULL, 1, 103),
(62, 'Free First Post', '0', '1', NULL, 1, 104),
(63, 'Free First Post', '0', '1', NULL, 1, 105);

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` int NOT NULL,
  `author_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `author_id`, `author_type`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'BCG sets great store', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2019-11-18 02:51:35', '2019-11-18 02:51:35'),
(2, 'Private Home Sales', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2019-11-18 02:55:53', '2019-11-18 02:55:53'),
(3, 'South Korean investors', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2019-11-18 03:07:27', '2019-11-18 03:07:27'),
(4, 'Eighteen Islamabad', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2022-01-19 03:04:38', '2022-01-19 03:04:38'),
(5, 'Bahria', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2022-01-19 03:10:29', '2022-01-19 03:10:29'),
(6, 'Bahria Enclave', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2022-01-19 03:10:30', '2022-01-19 03:10:30'),
(7, 'Park View City', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2022-01-19 03:14:59', '2022-01-19 03:14:59'),
(8, 'Taj Residencia', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2022-01-19 03:17:25', '2022-01-19 03:17:25');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int UNSIGNED NOT NULL,
  `credits` int UNSIGNED NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `account_id` bigint UNSIGNED DEFAULT NULL,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'add',
  `payment_id` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int UNSIGNED NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `locale` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 0, 'en', 'auth', 'failed', 'These credentials do not match our records.', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(2, 0, 'en', 'auth', 'password', 'The provided password is incorrect.', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(3, 0, 'en', 'auth', 'throttle', 'Too many login attempts. Please try again in :seconds seconds.', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(4, 0, 'en', 'pagination', 'previous', '&laquo; Previous', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(5, 0, 'en', 'pagination', 'next', 'Next &raquo;', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(6, 0, 'en', 'passwords', 'reset', 'Your password has been reset!', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(7, 0, 'en', 'passwords', 'sent', 'We have emailed your password reset link!', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(8, 0, 'en', 'passwords', 'throttled', 'Please wait before retrying.', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(9, 0, 'en', 'passwords', 'token', 'This password reset token is invalid.', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(10, 0, 'en', 'passwords', 'user', 'We can\'t find a user with that email address.', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(11, 0, 'en', 'validation', 'accepted', 'The :attribute must be accepted.', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(12, 0, 'en', 'validation', 'accepted_if', 'The :attribute must be accepted when :other is :value.', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(13, 0, 'en', 'validation', 'active_url', 'The :attribute is not a valid URL.', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(14, 0, 'en', 'validation', 'after', 'The :attribute must be a date after :date.', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(15, 0, 'en', 'validation', 'after_or_equal', 'The :attribute must be a date after or equal to :date.', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(16, 0, 'en', 'validation', 'alpha', 'The :attribute must only contain letters.', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(17, 0, 'en', 'validation', 'alpha_dash', 'The :attribute must only contain letters, numbers, dashes and underscores.', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(18, 0, 'en', 'validation', 'alpha_num', 'The :attribute must only contain letters and numbers.', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(19, 0, 'en', 'validation', 'array', 'The :attribute must be an array.', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(20, 0, 'en', 'validation', 'before', 'The :attribute must be a date before :date.', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(21, 0, 'en', 'validation', 'before_or_equal', 'The :attribute must be a date before or equal to :date.', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(22, 0, 'en', 'validation', 'between.numeric', 'The :attribute must be between :min and :max.', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(23, 0, 'en', 'validation', 'between.file', 'The :attribute must be between :min and :max kilobytes.', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(24, 0, 'en', 'validation', 'between.string', 'The :attribute must be between :min and :max characters.', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(25, 0, 'en', 'validation', 'between.array', 'The :attribute must have between :min and :max items.', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(26, 0, 'en', 'validation', 'boolean', 'The :attribute field must be true or false.', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(27, 0, 'en', 'validation', 'confirmed', 'The :attribute confirmation does not match.', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(28, 0, 'en', 'validation', 'current_password', 'The password is incorrect.', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(29, 0, 'en', 'validation', 'date', 'The :attribute is not a valid date.', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(30, 0, 'en', 'validation', 'date_equals', 'The :attribute must be a date equal to :date.', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(31, 0, 'en', 'validation', 'date_format', 'The :attribute does not match the format :format.', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(32, 0, 'en', 'validation', 'different', 'The :attribute and :other must be different.', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(33, 0, 'en', 'validation', 'digits', 'The :attribute must be :digits digits.', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(34, 0, 'en', 'validation', 'digits_between', 'The :attribute must be between :min and :max digits.', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(35, 0, 'en', 'validation', 'dimensions', 'The :attribute has invalid image dimensions.', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(36, 0, 'en', 'validation', 'distinct', 'The :attribute field has a duplicate value.', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(37, 0, 'en', 'validation', 'email', 'The :attribute must be a valid email address.', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(38, 0, 'en', 'validation', 'ends_with', 'The :attribute must end with one of the following: :values.', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(39, 0, 'en', 'validation', 'exists', 'The selected :attribute is invalid.', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(40, 0, 'en', 'validation', 'file', 'The :attribute must be a file.', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(41, 0, 'en', 'validation', 'filled', 'The :attribute field must have a value.', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(42, 0, 'en', 'validation', 'gt.numeric', 'The :attribute must be greater than :value.', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(43, 0, 'en', 'validation', 'gt.file', 'The :attribute must be greater than :value kilobytes.', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(44, 0, 'en', 'validation', 'gt.string', 'The :attribute must be greater than :value characters.', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(45, 0, 'en', 'validation', 'gt.array', 'The :attribute must have more than :value items.', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(46, 0, 'en', 'validation', 'gte.numeric', 'The :attribute must be greater than or equal to :value.', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(47, 0, 'en', 'validation', 'gte.file', 'The :attribute must be greater than or equal to :value kilobytes.', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(48, 0, 'en', 'validation', 'gte.string', 'The :attribute must be greater than or equal to :value characters.', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(49, 0, 'en', 'validation', 'gte.array', 'The :attribute must have :value items or more.', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(50, 0, 'en', 'validation', 'image', 'The :attribute must be an image.', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(51, 0, 'en', 'validation', 'in', 'The selected :attribute is invalid.', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(52, 0, 'en', 'validation', 'in_array', 'The :attribute field does not exist in :other.', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(53, 0, 'en', 'validation', 'integer', 'The :attribute must be an integer.', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(54, 0, 'en', 'validation', 'ip', 'The :attribute must be a valid IP address.', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(55, 0, 'en', 'validation', 'ipv4', 'The :attribute must be a valid IPv4 address.', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(56, 0, 'en', 'validation', 'ipv6', 'The :attribute must be a valid IPv6 address.', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(57, 0, 'en', 'validation', 'json', 'The :attribute must be a valid JSON string.', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(58, 0, 'en', 'validation', 'lt.numeric', 'The :attribute must be less than :value.', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(59, 0, 'en', 'validation', 'lt.file', 'The :attribute must be less than :value kilobytes.', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(60, 0, 'en', 'validation', 'lt.string', 'The :attribute must be less than :value characters.', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(61, 0, 'en', 'validation', 'lt.array', 'The :attribute must have less than :value items.', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(62, 0, 'en', 'validation', 'lte.numeric', 'The :attribute must be less than or equal to :value.', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(63, 0, 'en', 'validation', 'lte.file', 'The :attribute must be less than or equal to :value kilobytes.', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(64, 0, 'en', 'validation', 'lte.string', 'The :attribute must be less than or equal to :value characters.', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(65, 0, 'en', 'validation', 'lte.array', 'The :attribute must not have more than :value items.', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(66, 0, 'en', 'validation', 'max.numeric', 'The :attribute must not be greater than :max.', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(67, 0, 'en', 'validation', 'max.file', 'The :attribute must not be greater than :max kilobytes.', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(68, 0, 'en', 'validation', 'max.string', 'The :attribute must not be greater than :max characters.', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(69, 0, 'en', 'validation', 'max.array', 'The :attribute must not have more than :max items.', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(70, 0, 'en', 'validation', 'mimes', 'The :attribute must be a file of type: :values.', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(71, 0, 'en', 'validation', 'mimetypes', 'The :attribute must be a file of type: :values.', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(72, 0, 'en', 'validation', 'min.numeric', 'The :attribute must be at least :min.', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(73, 0, 'en', 'validation', 'min.file', 'The :attribute must be at least :min kilobytes.', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(74, 0, 'en', 'validation', 'min.string', 'The :attribute must be at least :min characters.', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(75, 0, 'en', 'validation', 'min.array', 'The :attribute must have at least :min items.', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(76, 0, 'en', 'validation', 'multiple_of', 'The :attribute must be a multiple of :value.', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(77, 0, 'en', 'validation', 'not_in', 'The selected :attribute is invalid.', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(78, 0, 'en', 'validation', 'not_regex', 'The :attribute format is invalid.', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(79, 0, 'en', 'validation', 'numeric', 'The :attribute must be a number.', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(80, 0, 'en', 'validation', 'password', 'The password is incorrect.', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(81, 0, 'en', 'validation', 'present', 'The :attribute field must be present.', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(82, 0, 'en', 'validation', 'regex', 'The :attribute format is invalid.', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(83, 0, 'en', 'validation', 'required', 'The :attribute field is required.', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(84, 0, 'en', 'validation', 'required_if', 'The :attribute field is required when :other is :value.', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(85, 0, 'en', 'validation', 'required_unless', 'The :attribute field is required unless :other is in :values.', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(86, 0, 'en', 'validation', 'required_with', 'The :attribute field is required when :values is present.', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(87, 0, 'en', 'validation', 'required_with_all', 'The :attribute field is required when :values are present.', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(88, 0, 'en', 'validation', 'required_without', 'The :attribute field is required when :values is not present.', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(89, 0, 'en', 'validation', 'required_without_all', 'The :attribute field is required when none of :values are present.', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(90, 0, 'en', 'validation', 'prohibited', 'The :attribute field is prohibited.', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(91, 0, 'en', 'validation', 'prohibited_if', 'The :attribute field is prohibited when :other is :value.', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(92, 0, 'en', 'validation', 'prohibited_unless', 'The :attribute field is prohibited unless :other is in :values.', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(93, 0, 'en', 'validation', 'prohibits', 'The :attribute field prohibits :other from being present.', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(94, 0, 'en', 'validation', 'same', 'The :attribute and :other must match.', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(95, 0, 'en', 'validation', 'size.numeric', 'The :attribute must be :size.', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(96, 0, 'en', 'validation', 'size.file', 'The :attribute must be :size kilobytes.', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(97, 0, 'en', 'validation', 'size.string', 'The :attribute must be :size characters.', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(98, 0, 'en', 'validation', 'size.array', 'The :attribute must contain :size items.', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(99, 0, 'en', 'validation', 'starts_with', 'The :attribute must start with one of the following: :values.', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(100, 0, 'en', 'validation', 'string', 'The :attribute must be a string.', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(101, 0, 'en', 'validation', 'timezone', 'The :attribute must be a valid timezone.', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(102, 0, 'en', 'validation', 'unique', 'The :attribute has already been taken.', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(103, 0, 'en', 'validation', 'uploaded', 'The :attribute failed to upload.', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(104, 0, 'en', 'validation', 'url', 'The :attribute must be a valid URL.', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(105, 0, 'en', 'validation', 'uuid', 'The :attribute must be a valid UUID.', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(106, 0, 'en', 'validation', 'custom.attribute-name.rule-name', 'custom-message', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(107, 0, 'en', 'core/acl/api', 'api_clients', 'API Clients', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(108, 0, 'en', 'core/acl/api', 'create_new_client', 'Create new client', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(109, 0, 'en', 'core/acl/api', 'create_new_client_success', 'Create new client successfully!', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(110, 0, 'en', 'core/acl/api', 'edit_client', 'Edit client \":name\"', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(111, 0, 'en', 'core/acl/api', 'edit_client_success', 'Updated client successfully!', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(112, 0, 'en', 'core/acl/api', 'delete_success', 'Deleted client successfully!', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(113, 0, 'en', 'core/acl/api', 'confirm_delete_title', 'Confirm delete client \":name\"', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(114, 0, 'en', 'core/acl/api', 'confirm_delete_description', 'Do you really want to delete client \":name\"?', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(115, 0, 'en', 'core/acl/api', 'cancel_delete', 'No', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(116, 0, 'en', 'core/acl/api', 'continue_delete', 'Yes, let\'s delete it!', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(117, 0, 'en', 'core/acl/api', 'name', 'Name', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(118, 0, 'en', 'core/acl/api', 'cancel', 'Cancel', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(119, 0, 'en', 'core/acl/api', 'save', 'Save', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(120, 0, 'en', 'core/acl/api', 'edit', 'Edit', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(121, 0, 'en', 'core/acl/api', 'delete', 'Delete', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(122, 0, 'en', 'core/acl/api', 'client_id', 'Client ID', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(123, 0, 'en', 'core/acl/api', 'secret', 'Secret', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(124, 0, 'en', 'core/acl/auth', 'login.username', 'Email/Username', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(125, 0, 'en', 'core/acl/auth', 'login.email', 'Email', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(126, 0, 'en', 'core/acl/auth', 'login.password', 'Password', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(127, 0, 'en', 'core/acl/auth', 'login.title', 'User Login', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(128, 0, 'en', 'core/acl/auth', 'login.remember', 'Remember me?', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(129, 0, 'en', 'core/acl/auth', 'login.login', 'Sign in', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(130, 0, 'en', 'core/acl/auth', 'login.placeholder.username', 'Please enter your username', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(131, 0, 'en', 'core/acl/auth', 'login.placeholder.email', 'Please enter your email', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(132, 0, 'en', 'core/acl/auth', 'login.success', 'Login successfully!', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(133, 0, 'en', 'core/acl/auth', 'login.fail', 'Wrong username or password.', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(134, 0, 'en', 'core/acl/auth', 'login.not_active', 'Your account has not been activated yet!', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(135, 0, 'en', 'core/acl/auth', 'login.banned', 'This account is banned.', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(136, 0, 'en', 'core/acl/auth', 'login.logout_success', 'Logout successfully!', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(137, 0, 'en', 'core/acl/auth', 'login.dont_have_account', 'You don\'t have account on this system, please contact administrator for more information!', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(138, 0, 'en', 'core/acl/auth', 'forgot_password.title', 'Forgot Password', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(139, 0, 'en', 'core/acl/auth', 'forgot_password.message', '<p>Have you forgotten your password?</p><p>Please enter your email account. System will send a email with active link to reset your password.</p>', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(140, 0, 'en', 'core/acl/auth', 'forgot_password.submit', 'Submit', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(141, 0, 'en', 'core/acl/auth', 'reset.new_password', 'New password', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(142, 0, 'en', 'core/acl/auth', 'reset.password_confirmation', 'Confirm new password', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(143, 0, 'en', 'core/acl/auth', 'reset.email', 'Email', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(144, 0, 'en', 'core/acl/auth', 'reset.title', 'Reset your password', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(145, 0, 'en', 'core/acl/auth', 'reset.update', 'Update', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(146, 0, 'en', 'core/acl/auth', 'reset.wrong_token', 'This link is invalid or expired. Please try using reset form again.', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(147, 0, 'en', 'core/acl/auth', 'reset.user_not_found', 'This username is not exist.', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(148, 0, 'en', 'core/acl/auth', 'reset.success', 'Reset password successfully!', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(149, 0, 'en', 'core/acl/auth', 'reset.fail', 'Token is invalid, the reset password link has been expired!', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(150, 0, 'en', 'core/acl/auth', 'reset.reset.title', 'Email reset password', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(151, 0, 'en', 'core/acl/auth', 'reset.send.success', 'A email was sent to your email account. Please check and complete this action.', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(152, 0, 'en', 'core/acl/auth', 'reset.send.fail', 'Can not send email in this time. Please try again later.', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(153, 0, 'en', 'core/acl/auth', 'reset.new-password', 'New password', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(154, 0, 'en', 'core/acl/auth', 'email.reminder.title', 'Email reset password', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(155, 0, 'en', 'core/acl/auth', 'password_confirmation', 'Password confirm', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(156, 0, 'en', 'core/acl/auth', 'failed', 'Failed', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(157, 0, 'en', 'core/acl/auth', 'throttle', 'Throttle', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(158, 0, 'en', 'core/acl/auth', 'not_member', 'Not a member yet?', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(159, 0, 'en', 'core/acl/auth', 'register_now', 'Register now', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(160, 0, 'en', 'core/acl/auth', 'lost_your_password', 'Lost your password?', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(161, 0, 'en', 'core/acl/auth', 'login_title', 'Admin', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(162, 0, 'en', 'core/acl/auth', 'login_via_social', 'Login with social networks', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(163, 0, 'en', 'core/acl/auth', 'back_to_login', 'Back to login page', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(164, 0, 'en', 'core/acl/auth', 'sign_in_below', 'Sign In Below', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(165, 0, 'en', 'core/acl/auth', 'languages', 'Languages', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(166, 0, 'en', 'core/acl/auth', 'reset_password', 'Reset Password', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(167, 0, 'en', 'core/acl/auth', 'settings.email.title', 'ACL', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(168, 0, 'en', 'core/acl/auth', 'settings.email.description', 'ACL email configuration', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(169, 0, 'en', 'core/acl/permissions', 'notices.role_in_use', 'Cannot delete this role, it is still in use!', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(170, 0, 'en', 'core/acl/permissions', 'notices.role_delete_belong_user', 'You are not able to delete this role; it belongs to someone else!', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(171, 0, 'en', 'core/acl/permissions', 'notices.role_edit_belong_user', 'You are not able to edit this role; it belongs to someone else!', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(172, 0, 'en', 'core/acl/permissions', 'notices.delete_global_role', 'You are not allowed to delete global roles!', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(173, 0, 'en', 'core/acl/permissions', 'notices.delete_success', 'The selected role was deleted successfully!', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(174, 0, 'en', 'core/acl/permissions', 'notices.modified_success', 'The selected role was modified successfully!', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(175, 0, 'en', 'core/acl/permissions', 'notices.create_success', 'The new role was successfully created', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(176, 0, 'en', 'core/acl/permissions', 'notices.duplicated_success', 'The selected role was duplicated successfully', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(177, 0, 'en', 'core/acl/permissions', 'notices.no_select', 'Please select at least one record to take this action!', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(178, 0, 'en', 'core/acl/permissions', 'notices.not_found', 'Role not found', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(179, 0, 'en', 'core/acl/permissions', 'name', 'Name', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(180, 0, 'en', 'core/acl/permissions', 'current_role', 'Current Role', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(181, 0, 'en', 'core/acl/permissions', 'no_role_assigned', 'No role assigned', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(182, 0, 'en', 'core/acl/permissions', 'role_assigned', 'Assigned Role', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(183, 0, 'en', 'core/acl/permissions', 'create_role', 'Create New Role', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(184, 0, 'en', 'core/acl/permissions', 'role_name', 'Name', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(185, 0, 'en', 'core/acl/permissions', 'role_description', 'Description', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(186, 0, 'en', 'core/acl/permissions', 'permission_flags', 'Permission Flags', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(187, 0, 'en', 'core/acl/permissions', 'cancel', 'Cancel', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(188, 0, 'en', 'core/acl/permissions', 'reset', 'Reset', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(189, 0, 'en', 'core/acl/permissions', 'save', 'Save', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(190, 0, 'en', 'core/acl/permissions', 'global_role_msg', 'This is a global role and cannot be modified.  You can use the Duplicate button to make a copy of this role that you can then modify.', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(191, 0, 'en', 'core/acl/permissions', 'details', 'Details', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(192, 0, 'en', 'core/acl/permissions', 'duplicate', 'Duplicate', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(193, 0, 'en', 'core/acl/permissions', 'all', 'All Permissions', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(194, 0, 'en', 'core/acl/permissions', 'list_role', 'List Roles', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(195, 0, 'en', 'core/acl/permissions', 'created_on', 'Created On', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(196, 0, 'en', 'core/acl/permissions', 'created_by', 'Created By', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(197, 0, 'en', 'core/acl/permissions', 'actions', 'Actions', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(198, 0, 'en', 'core/acl/permissions', 'role_in_use', 'Cannot delete this role, it is still in use!', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(199, 0, 'en', 'core/acl/permissions', 'role_delete_belong_user', 'You are not able to delete this role; it belongs to someone else!', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(200, 0, 'en', 'core/acl/permissions', 'delete_global_role', 'Can not delete global role', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(201, 0, 'en', 'core/acl/permissions', 'delete_success', 'Delete role successfully', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(202, 0, 'en', 'core/acl/permissions', 'no_select', 'Please select at least one role to take this action!', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(203, 0, 'en', 'core/acl/permissions', 'not_found', 'No role found!', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(204, 0, 'en', 'core/acl/permissions', 'role_edit_belong_user', 'You are not able to edit this role; it belongs to someone else!', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(205, 0, 'en', 'core/acl/permissions', 'modified_success', 'Modified successfully', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(206, 0, 'en', 'core/acl/permissions', 'create_success', 'Create successfully', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(207, 0, 'en', 'core/acl/permissions', 'duplicated_success', 'Duplicated successfully', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(208, 0, 'en', 'core/acl/permissions', 'options', 'Options', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(209, 0, 'en', 'core/acl/permissions', 'access_denied_message', 'You are not allowed to do this action', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(210, 0, 'en', 'core/acl/permissions', 'roles', 'Roles', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(211, 0, 'en', 'core/acl/permissions', 'role_permission', 'Roles and Permissions', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(212, 0, 'en', 'core/acl/permissions', 'user_management', 'User Management', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(213, 0, 'en', 'core/acl/permissions', 'super_user_management', 'Super User Management', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(214, 0, 'en', 'core/acl/permissions', 'action_unauthorized', 'This action is unauthorized.', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(215, 0, 'en', 'core/acl/reminders', 'password', 'Passwords must be at least six characters and match the confirmation.', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(216, 0, 'en', 'core/acl/reminders', 'user', 'We can\'t find a user with that e-mail address.', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(217, 0, 'en', 'core/acl/reminders', 'token', 'This password reset token is invalid.', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(218, 0, 'en', 'core/acl/reminders', 'sent', 'Password reminder sent!', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(219, 0, 'en', 'core/acl/reminders', 'reset', 'Password has been reset!', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(220, 0, 'en', 'core/acl/users', 'delete_user_logged_in', 'Can\'t delete this user. This user is logged on!', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(221, 0, 'en', 'core/acl/users', 'no_select', 'Please select at least one record to take this action!', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(222, 0, 'en', 'core/acl/users', 'lock_user_logged_in', 'Can\'t lock this user. This user is logged on!', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(223, 0, 'en', 'core/acl/users', 'update_success', 'Update status successfully!', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(224, 0, 'en', 'core/acl/users', 'save_setting_failed', 'Something went wrong when save your setting', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(225, 0, 'en', 'core/acl/users', 'not_found', 'User not found', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(226, 0, 'en', 'core/acl/users', 'email_exist', 'That email address already belongs to an existing account', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(227, 0, 'en', 'core/acl/users', 'username_exist', 'That username address already belongs to an existing account', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(228, 0, 'en', 'core/acl/users', 'update_profile_success', 'Your profile changes were successfully saved', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(229, 0, 'en', 'core/acl/users', 'password_update_success', 'Password successfully changed', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(230, 0, 'en', 'core/acl/users', 'current_password_not_valid', 'Current password is not valid', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(231, 0, 'en', 'core/acl/users', 'user_exist_in', 'User is already a member', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(232, 0, 'en', 'core/acl/users', 'email', 'Email', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(233, 0, 'en', 'core/acl/users', 'role', 'Role', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(234, 0, 'en', 'core/acl/users', 'username', 'Username', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(235, 0, 'en', 'core/acl/users', 'last_name', 'Last Name', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(236, 0, 'en', 'core/acl/users', 'first_name', 'First Name', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(237, 0, 'en', 'core/acl/users', 'message', 'Message', '2021-10-18 20:09:23', '2021-10-18 20:09:49'),
(238, 0, 'en', 'core/acl/users', 'cancel_btn', 'Cancel', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(239, 0, 'en', 'core/acl/users', 'change_password', 'Change password', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(240, 0, 'en', 'core/acl/users', 'current_password', 'Current password', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(241, 0, 'en', 'core/acl/users', 'new_password', 'New Password', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(242, 0, 'en', 'core/acl/users', 'confirm_new_password', 'Confirm New Password', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(243, 0, 'en', 'core/acl/users', 'password', 'Password', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(244, 0, 'en', 'core/acl/users', 'save', 'Save', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(245, 0, 'en', 'core/acl/users', 'cannot_delete', 'User could not be deleted', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(246, 0, 'en', 'core/acl/users', 'deleted', 'User deleted', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(247, 0, 'en', 'core/acl/users', 'last_login', 'Last Login', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(248, 0, 'en', 'core/acl/users', 'error_update_profile_image', 'Error when update profile image', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(249, 0, 'en', 'core/acl/users', 'email_reminder_template', '<h3>Hello :name</h3><p>The system has received a request to restore the password for your account, to complete this task please click the link below.</p><p><a href=\":link\">Reset password now</a></p><p>If not you ask recover password, please ignore this email.</p><p>This email is valid for 60 minutes after receiving the email.</p>', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(250, 0, 'en', 'core/acl/users', 'change_profile_image', 'Change Profile Image', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(251, 0, 'en', 'core/acl/users', 'new_image', 'New Image', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(252, 0, 'en', 'core/acl/users', 'loading', 'Loading', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(253, 0, 'en', 'core/acl/users', 'close', 'Close', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(254, 0, 'en', 'core/acl/users', 'update', 'Update', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(255, 0, 'en', 'core/acl/users', 'read_image_failed', 'Failed to read the image file', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(256, 0, 'en', 'core/acl/users', 'users', 'Users', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(257, 0, 'en', 'core/acl/users', 'update_avatar_success', 'Update profile image successfully!', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(258, 0, 'en', 'core/acl/users', 'info.title', 'User profile', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(259, 0, 'en', 'core/acl/users', 'info.first_name', 'First Name', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(260, 0, 'en', 'core/acl/users', 'info.last_name', 'Last Name', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(261, 0, 'en', 'core/acl/users', 'info.email', 'Email', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(262, 0, 'en', 'core/acl/users', 'info.second_email', 'Secondary Email', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(263, 0, 'en', 'core/acl/users', 'info.address', 'Address', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(264, 0, 'en', 'core/acl/users', 'info.second_address', 'Secondary Address', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(265, 0, 'en', 'core/acl/users', 'info.birth_day', 'Date of birth', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(266, 0, 'en', 'core/acl/users', 'info.job', 'Job Position', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(267, 0, 'en', 'core/acl/users', 'info.mobile_number', 'Mobile Number', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(268, 0, 'en', 'core/acl/users', 'info.second_mobile_number', 'Secondary Phone', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(269, 0, 'en', 'core/acl/users', 'info.interes', 'Interests', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(270, 0, 'en', 'core/acl/users', 'info.about', 'About', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(271, 0, 'en', 'core/acl/users', 'gender.title', 'Gender', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(272, 0, 'en', 'core/acl/users', 'gender.male', 'Male', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(273, 0, 'en', 'core/acl/users', 'gender.female', 'Female', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(274, 0, 'en', 'core/acl/users', 'total_users', 'Total users', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(275, 0, 'en', 'core/acl/users', 'statuses.activated', 'Activated', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(276, 0, 'en', 'core/acl/users', 'statuses.deactivated', 'Deactivated', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(277, 0, 'en', 'core/acl/users', 'make_super', 'Make super', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(278, 0, 'en', 'core/acl/users', 'remove_super', 'Remove super', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(279, 0, 'en', 'core/acl/users', 'is_super', 'Is super?', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(280, 0, 'en', 'core/acl/users', 'email_placeholder', 'Ex: example@gmail.com', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(281, 0, 'en', 'core/acl/users', 'password_confirmation', 'Re-type password', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(282, 0, 'en', 'core/acl/users', 'select_role', 'Select role', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(283, 0, 'en', 'core/acl/users', 'create_new_user', 'Create a new user', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(284, 0, 'en', 'core/acl/users', 'cannot_delete_super_user', 'Permission denied. Cannot delete a super user!', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(285, 0, 'en', 'core/acl/users', 'assigned_role', 'Assigned Role', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(286, 0, 'en', 'core/acl/users', 'no_role_assigned', 'No role assigned', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(287, 0, 'en', 'core/acl/users', 'view_user_profile', 'View user\'s profile', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(288, 0, 'vi', 'core/acl/auth', 'login.username', 'Email/Tên truy cập', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(289, 0, 'vi', 'core/acl/auth', 'login.password', 'Mật khẩu', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(290, 0, 'vi', 'core/acl/auth', 'login.title', 'Đăng nhập vào quản trị', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(291, 0, 'vi', 'core/acl/auth', 'login.remember', 'Nhớ mật khẩu?', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(292, 0, 'vi', 'core/acl/auth', 'login.login', 'Đăng nhập', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(293, 0, 'vi', 'core/acl/auth', 'login.placeholder.username', 'Vui lòng nhập tên truy cập', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(294, 0, 'vi', 'core/acl/auth', 'login.placeholder.email', 'Vui lòng nhập email', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(295, 0, 'vi', 'core/acl/auth', 'login.success', 'Đăng nhập thành công!', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(296, 0, 'vi', 'core/acl/auth', 'login.fail', 'Sai tên truy cập hoặc mật khẩu.', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(297, 0, 'vi', 'core/acl/auth', 'login.not_active', 'Tài khoản của bạn chưa được kích hoạt!', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(298, 0, 'vi', 'core/acl/auth', 'login.banned', 'Tài khoản này đã bị khóa.', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(299, 0, 'vi', 'core/acl/auth', 'login.logout_success', 'Đăng xuất thành công!', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(300, 0, 'vi', 'core/acl/auth', 'login.dont_have_account', 'Bạn không có tài khoản trong hệ thống, vui lòng liên hệ quản trị viên!', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(301, 0, 'vi', 'core/acl/auth', 'login.email', 'Email', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(302, 0, 'vi', 'core/acl/auth', 'forgot_password.title', 'Quên mật khẩu', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(303, 0, 'vi', 'core/acl/auth', 'forgot_password.message', '<p>Quên mật khẩu?</p><p>Vui lòng nhập email đăng nhập tài khoản của bạn để hệ thống gửi liên kết khôi phục mật khẩu.</p>', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(304, 0, 'vi', 'core/acl/auth', 'forgot_password.submit', 'Hoàn tất', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(305, 0, 'vi', 'core/acl/auth', 'reset.new_password', 'Mật khẩu mới', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(306, 0, 'vi', 'core/acl/auth', 'reset.title', 'Khôi phục mật khẩu', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(307, 0, 'vi', 'core/acl/auth', 'reset.update', 'Cập nhật', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(308, 0, 'vi', 'core/acl/auth', 'reset.wrong_token', 'Liên kết này không chính xác hoặc đã hết hiệu lực, vui lòng yêu cầu khôi phục mật khẩu lại!', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(309, 0, 'vi', 'core/acl/auth', 'reset.user_not_found', 'Tên đăng nhập không tồn tại.', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(310, 0, 'vi', 'core/acl/auth', 'reset.success', 'Khôi phục mật khẩu thành công!', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(311, 0, 'vi', 'core/acl/auth', 'reset.fail', 'Token không hợp lệ hoặc liên kết khôi phục mật khẩu đã hết thời gian hiệu lực!', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(312, 0, 'vi', 'core/acl/auth', 'reset.reset.title', 'Email khôi phục mật khẩu', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(313, 0, 'vi', 'core/acl/auth', 'reset.send.success', 'Một email khôi phục mật khẩu đã được gửi tới email của bạn, vui lòng kiểm tra và hoàn tất yêu cầu.', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(314, 0, 'vi', 'core/acl/auth', 'reset.send.fail', 'Không thể gửi email trong lúc này. Vui lòng thực hiện lại sau.', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(315, 0, 'vi', 'core/acl/auth', 'reset.new-password', 'Mật khẩu mới', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(316, 0, 'vi', 'core/acl/auth', 'reset.email', 'Email', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(317, 0, 'vi', 'core/acl/auth', 'email.reminder.title', 'Email khôi phục mật khẩu', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(318, 0, 'vi', 'core/acl/auth', 'failed', 'Không thành công', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(319, 0, 'vi', 'core/acl/auth', 'throttle', 'Throttle', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(320, 0, 'vi', 'core/acl/auth', 'back_to_login', 'Quay lại trang đăng nhập', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(321, 0, 'vi', 'core/acl/auth', 'login_title', 'Đăng nhập vào quản trị', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(322, 0, 'vi', 'core/acl/auth', 'login_via_social', 'Đăng nhập thông qua mạng xã hội', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(323, 0, 'vi', 'core/acl/auth', 'lost_your_password', 'Quên mật khẩu?', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(324, 0, 'vi', 'core/acl/auth', 'not_member', 'Chưa là thành viên?', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(325, 0, 'vi', 'core/acl/auth', 'register_now', 'Đăng ký ngay', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(326, 0, 'vi', 'core/acl/permissions', 'notices.role_in_use', 'Không thể xóa quyền người dùng này vì nó đang được sử dụng!', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(327, 0, 'vi', 'core/acl/permissions', 'notices.role_delete_belong_user', 'Không thể xóa quyền hạn này vì nó thuộc về người khác!', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(328, 0, 'vi', 'core/acl/permissions', 'notices.role_edit_belong_user', 'Bạn không được phép sửa quyền này vì nó thuộc về người khác', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(329, 0, 'vi', 'core/acl/permissions', 'notices.delete_global_role', 'Bạn không thể xóa quyền người dùng hệ thống!', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(330, 0, 'vi', 'core/acl/permissions', 'notices.delete_success', 'Quyền người dùng đã được xóa!', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(331, 0, 'vi', 'core/acl/permissions', 'notices.modified_success', 'Quyền người dùng đã được cập nhật thành công!', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(332, 0, 'vi', 'core/acl/permissions', 'notices.create_success', 'Quyền người dùng mới đã được tạo thành công!', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(333, 0, 'vi', 'core/acl/permissions', 'notices.duplicated_success', 'Quyền người dùng đã được sao chép thành công!', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(334, 0, 'vi', 'core/acl/permissions', 'notices.no_select', 'Hãy chọn ít nhất một quyền người dùng để thực hiện hành động này!', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(335, 0, 'vi', 'core/acl/permissions', 'notices.not_found', 'Không tìm thấy quyền người dùng này', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(336, 0, 'vi', 'core/acl/permissions', 'name', 'Tên', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(337, 0, 'vi', 'core/acl/permissions', 'current_role', 'Quyền hiện tại', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(338, 0, 'vi', 'core/acl/permissions', 'no_role_assigned', 'Không có quyền hạn nào', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(339, 0, 'vi', 'core/acl/permissions', 'role_assigned', 'Quyền đã được gán', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(340, 0, 'vi', 'core/acl/permissions', 'create_role', 'Tạo quyền mới', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(341, 0, 'vi', 'core/acl/permissions', 'role_name', 'Tên', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(342, 0, 'vi', 'core/acl/permissions', 'role_description', 'Mô tả', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(343, 0, 'vi', 'core/acl/permissions', 'permission_flags', 'Cờ đánh dấu quyền hạn', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(344, 0, 'vi', 'core/acl/permissions', 'cancel', 'Hủy bỏ', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(345, 0, 'vi', 'core/acl/permissions', 'reset', 'Làm lại', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(346, 0, 'vi', 'core/acl/permissions', 'save', 'Lưu', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(347, 0, 'vi', 'core/acl/permissions', 'global_role_msg', 'Đây là một phân quyền toàn cục và không thể thay đổi.  Bạn có thể sử dụng nút \"Nhân bản\" để tạo một bản sao chép cho phân quyền này và chỉnh sửa.', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(348, 0, 'vi', 'core/acl/permissions', 'details', 'Chi tiết', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(349, 0, 'vi', 'core/acl/permissions', 'duplicate', 'Nhân bản', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(350, 0, 'vi', 'core/acl/permissions', 'all', 'Tất cả phân quyền', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(351, 0, 'vi', 'core/acl/permissions', 'list_role', 'Danh sách quyền', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(352, 0, 'vi', 'core/acl/permissions', 'created_on', 'Ngày tạo', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(353, 0, 'vi', 'core/acl/permissions', 'created_by', 'Được tạo bởi', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(354, 0, 'vi', 'core/acl/permissions', 'actions', 'Tác vụ', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(355, 0, 'vi', 'core/acl/permissions', 'create_success', 'Tạo thành công!', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(356, 0, 'vi', 'core/acl/permissions', 'delete_global_role', 'Không thể xóa quyền hệ thống', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(357, 0, 'vi', 'core/acl/permissions', 'delete_success', 'Xóa quyền thành công', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(358, 0, 'vi', 'core/acl/permissions', 'duplicated_success', 'Nhân bản thành công', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(359, 0, 'vi', 'core/acl/permissions', 'modified_success', 'Sửa thành công', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(360, 0, 'vi', 'core/acl/permissions', 'no_select', 'Hãy chọn ít nhất một quyền để thực hiện hành động này!', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(361, 0, 'vi', 'core/acl/permissions', 'not_found', 'Không tìm thấy quyền thành viên nào!', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(362, 0, 'vi', 'core/acl/permissions', 'options', 'Tùy chọn', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(363, 0, 'vi', 'core/acl/permissions', 'role_delete_belong_user', 'Không thể xóa quyền hạn này vì nó thuộc về người khác!', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(364, 0, 'vi', 'core/acl/permissions', 'role_edit_belong_user', 'Bạn không được phép sửa quyền này vì nó thuộc về người khác', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(365, 0, 'vi', 'core/acl/permissions', 'role_in_use', 'Không thể xóa quyền người dùng này vì nó đang được sử dụng!', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(366, 0, 'vi', 'core/acl/permissions', 'access_denied_message', 'Bạn không có quyền sử dụng chức năng này!', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(367, 0, 'vi', 'core/acl/permissions', 'roles', 'Quyền', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(368, 0, 'vi', 'core/acl/permissions', 'role_permission', 'Nhóm và phân quyền', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(369, 0, 'vi', 'core/acl/permissions', 'user_management', 'Quản lý người dùng hệ thống', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(370, 0, 'vi', 'core/acl/permissions', 'super_user_management', 'Quản lý người dùng cấp cao', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(371, 0, 'vi', 'core/acl/reminders', 'password', 'Mật khẩu phải ít nhất 6 kí tự và trùng khớp với mật khẩu xác nhận.', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(372, 0, 'vi', 'core/acl/reminders', 'user', 'Hệ thống không thể tìm thấy tài khoản với email này.', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(373, 0, 'vi', 'core/acl/reminders', 'token', 'Mã khôi phục mật khẩu này không hợp lệ.', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(374, 0, 'vi', 'core/acl/reminders', 'sent', 'Liên kết khôi phục mật khẩu đã được gửi!', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(375, 0, 'vi', 'core/acl/reminders', 'reset', 'Mật khẩu đã được thay đổi!', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(376, 0, 'vi', 'core/acl/users', 'delete_user_logged_in', 'Không thể xóa người dùng đang đăng nhập hệ thống!', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(377, 0, 'vi', 'core/acl/users', 'no_select', 'Hãy chọn ít nhất một trường để thực hiện hành động này!', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(378, 0, 'vi', 'core/acl/users', 'lock_user_logged_in', 'Không thể khóa người dùng đang đăng nhập hệ thống!', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(379, 0, 'vi', 'core/acl/users', 'update_success', 'Cập nhật trạng thái thành công!', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(380, 0, 'vi', 'core/acl/users', 'save_setting_failed', 'Có lỗi xảy ra trong quá trình lưu cài đặt của người dùng', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(381, 0, 'vi', 'core/acl/users', 'not_found', 'Không tìm thấy người dùng', '2021-10-18 20:09:24', '2021-10-18 20:09:49');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(382, 0, 'vi', 'core/acl/users', 'email_exist', 'Email này đã được sử dụng bởi người dùng khác trong hệ thống', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(383, 0, 'vi', 'core/acl/users', 'username_exist', 'Tên đăng nhập này đã được sử dụng bởi người dùng khác trong hệ thống', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(384, 0, 'vi', 'core/acl/users', 'update_profile_success', 'Thông tin tài khoản của bạn đã được cập nhật thành công', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(385, 0, 'vi', 'core/acl/users', 'password_update_success', 'Cập nhật mật khẩu thành công', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(386, 0, 'vi', 'core/acl/users', 'current_password_not_valid', 'Mật khẩu hiện tại không chính xác', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(387, 0, 'vi', 'core/acl/users', 'user_exist_in', 'Người dùng đã là thành viên', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(388, 0, 'vi', 'core/acl/users', 'email', 'Email', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(389, 0, 'vi', 'core/acl/users', 'username', 'Tên đăng nhập', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(390, 0, 'vi', 'core/acl/users', 'role', 'Phân quyền', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(391, 0, 'vi', 'core/acl/users', 'first_name', 'Họ', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(392, 0, 'vi', 'core/acl/users', 'last_name', 'Tên', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(393, 0, 'vi', 'core/acl/users', 'message', 'Thông điệp', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(394, 0, 'vi', 'core/acl/users', 'cancel_btn', 'Hủy bỏ', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(395, 0, 'vi', 'core/acl/users', 'password', 'Mật khẩu', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(396, 0, 'vi', 'core/acl/users', 'new_password', 'Mật khẩu mới', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(397, 0, 'vi', 'core/acl/users', 'save', 'Lưu', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(398, 0, 'vi', 'core/acl/users', 'confirm_new_password', 'Xác nhận mật khẩu mới', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(399, 0, 'vi', 'core/acl/users', 'deleted', 'Xóa thành viên thành công', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(400, 0, 'vi', 'core/acl/users', 'cannot_delete', 'Không thể xóa thành viên', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(401, 0, 'vi', 'core/acl/users', 'last_login', 'Lần cuối đăng nhập', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(402, 0, 'vi', 'core/acl/users', 'error_update_profile_image', 'Có lỗi trong quá trình đổi ảnh đại diện', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(403, 0, 'vi', 'core/acl/users', 'email_reminder_template', '<h3>Xin chào :name</h3><p>Hệ thống vừa nhận được yêu cầu khôi phục mật khẩu cho tài khoản của bạn, để hoàn tất tác vụ này vui lòng click vào đường link bên dưới.</p><p><a href=\":link\">Khôi phục mật khẩu</a></p><p>Nếu không phải bạn yêu cầu khôi phục mật khẩu, vui lòng bỏ qua email này.</p><p>Email này có giá trị trong vòng 60 phút kể từ lúc nhận được email.</p>', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(404, 0, 'vi', 'core/acl/users', 'change_profile_image', 'Thay đổi ảnh đại diện', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(405, 0, 'vi', 'core/acl/users', 'new_image', 'Ảnh mới', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(406, 0, 'vi', 'core/acl/users', 'loading', 'Đang tải', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(407, 0, 'vi', 'core/acl/users', 'close', 'Đóng', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(408, 0, 'vi', 'core/acl/users', 'update', 'Cập nhật', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(409, 0, 'vi', 'core/acl/users', 'read_image_failed', 'Không đọc được nội dung của hình ảnh', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(410, 0, 'vi', 'core/acl/users', 'update_avatar_success', 'Cập nhật ảnh đại diện thành công!', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(411, 0, 'vi', 'core/acl/users', 'users', 'Quản trị viên', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(412, 0, 'vi', 'core/acl/users', 'info.title', 'Thông tin người dùng', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(413, 0, 'vi', 'core/acl/users', 'info.first_name', 'Họ', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(414, 0, 'vi', 'core/acl/users', 'info.last_name', 'Tên', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(415, 0, 'vi', 'core/acl/users', 'info.email', 'Email', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(416, 0, 'vi', 'core/acl/users', 'info.second_email', 'Email dự phòng', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(417, 0, 'vi', 'core/acl/users', 'info.address', 'Địa chỉ', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(418, 0, 'vi', 'core/acl/users', 'info.second_address', 'Địa chỉ dự phòng', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(419, 0, 'vi', 'core/acl/users', 'info.birth_day', 'Ngày sinh', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(420, 0, 'vi', 'core/acl/users', 'info.job', 'Nghề nghiệp', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(421, 0, 'vi', 'core/acl/users', 'info.mobile_number', 'Số điện thoại di động', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(422, 0, 'vi', 'core/acl/users', 'info.second_mobile_number', 'Số điện thoại dự phòng', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(423, 0, 'vi', 'core/acl/users', 'info.interes', 'Sở thích', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(424, 0, 'vi', 'core/acl/users', 'info.about', 'Giới thiệu', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(425, 0, 'vi', 'core/acl/users', 'gender.title', 'Giới tính', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(426, 0, 'vi', 'core/acl/users', 'gender.male', 'nam', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(427, 0, 'vi', 'core/acl/users', 'gender.female', 'nữ', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(428, 0, 'vi', 'core/acl/users', 'change_password', 'Thay đổi mật khẩu', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(429, 0, 'vi', 'core/acl/users', 'current_password', 'Mật khẩu hiện tại', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(430, 0, 'en', 'core/base/base', 'yes', 'Yes', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(431, 0, 'en', 'core/base/base', 'no', 'No', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(432, 0, 'en', 'core/base/base', 'is_default', 'Is default?', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(433, 0, 'en', 'core/base/base', 'proc_close_disabled_error', 'Function proc_close() is disabled. Please contact your hosting provider to enable\n    it. Or you can add to .env: CAN_EXECUTE_COMMAND=false to disable this feature.', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(434, 0, 'en', 'core/base/base', 'email_template.header', 'Email template header', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(435, 0, 'en', 'core/base/base', 'email_template.footer', 'Email template footer', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(436, 0, 'en', 'core/base/base', 'email_template.site_title', 'Site title', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(437, 0, 'en', 'core/base/base', 'email_template.site_url', 'Site URL', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(438, 0, 'en', 'core/base/base', 'email_template.site_logo', 'Site Logo', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(439, 0, 'en', 'core/base/base', 'email_template.date_time', 'Current date time', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(440, 0, 'en', 'core/base/base', 'email_template.date_year', 'Current year', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(441, 0, 'en', 'core/base/base', 'email_template.site_admin_email', 'Site admin email', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(442, 0, 'en', 'core/base/base', 'change_image', 'Change image', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(443, 0, 'en', 'core/base/base', 'delete_image', 'Delete image', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(444, 0, 'en', 'core/base/base', 'preview_image', 'Preview image', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(445, 0, 'en', 'core/base/base', 'image', 'Image', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(446, 0, 'en', 'core/base/base', 'using_button', 'Using button', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(447, 0, 'en', 'core/base/base', 'select_image', 'Select image', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(448, 0, 'en', 'core/base/base', 'to_add_more_image', 'to add more images', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(449, 0, 'en', 'core/base/base', 'add_image', 'Add image', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(450, 0, 'en', 'core/base/base', 'tools', 'Tools', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(451, 0, 'en', 'core/base/cache', 'cache_management', 'Cache management', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(452, 0, 'en', 'core/base/cache', 'cache_commands', 'Clear cache commands', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(453, 0, 'en', 'core/base/cache', 'commands.clear_cms_cache.title', 'Clear all CMS cache', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(454, 0, 'en', 'core/base/cache', 'commands.clear_cms_cache.description', 'Clear CMS caching: database caching, static blocks... Run this command when you don\'t see the changes after updating data.', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(455, 0, 'en', 'core/base/cache', 'commands.clear_cms_cache.success_msg', 'Cache cleaned', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(456, 0, 'en', 'core/base/cache', 'commands.refresh_compiled_views.title', 'Refresh compiled views', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(457, 0, 'en', 'core/base/cache', 'commands.refresh_compiled_views.description', 'Clear compiled views to make views up to date.', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(458, 0, 'en', 'core/base/cache', 'commands.refresh_compiled_views.success_msg', 'Cache view refreshed', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(459, 0, 'en', 'core/base/cache', 'commands.clear_config_cache.title', 'Clear config cache', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(460, 0, 'en', 'core/base/cache', 'commands.clear_config_cache.description', 'You might need to refresh the config caching when you change something on production environment.', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(461, 0, 'en', 'core/base/cache', 'commands.clear_config_cache.success_msg', 'Config cache cleaned', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(462, 0, 'en', 'core/base/cache', 'commands.clear_route_cache.title', 'Clear route cache', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(463, 0, 'en', 'core/base/cache', 'commands.clear_route_cache.description', 'Clear cache routing.', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(464, 0, 'en', 'core/base/cache', 'commands.clear_route_cache.success_msg', 'The route cache has been cleaned', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(465, 0, 'en', 'core/base/cache', 'commands.clear_log.title', 'Clear log', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(466, 0, 'en', 'core/base/cache', 'commands.clear_log.description', 'Clear system log files', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(467, 0, 'en', 'core/base/cache', 'commands.clear_log.success_msg', 'The system log has been cleaned', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(468, 0, 'en', 'core/base/enums', 'statuses.draft', 'Draft', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(469, 0, 'en', 'core/base/enums', 'statuses.pending', 'Pending', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(470, 0, 'en', 'core/base/enums', 'statuses.published', 'Published', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(471, 0, 'en', 'core/base/errors', '401_title', 'Permission Denied', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(472, 0, 'en', 'core/base/errors', '401_msg', '<li>You have not been granted access to the section by the administrator.</li>\n	                <li>You may have the wrong account type.</li>\n	                <li>You are not authorized to view the requested resource.</li>\n	                <li>Your subscription may have expired.</li>', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(473, 0, 'en', 'core/base/errors', '404_title', 'Page could not be found', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(474, 0, 'en', 'core/base/errors', '404_msg', '<li>The page you requested does not exist.</li>\n	                <li>The link you clicked is no longer.</li>\n	                <li>The page may have moved to a new location.</li>\n	                <li>An error may have occurred.</li>\n	                <li>You are not authorized to view the requested resource.</li>', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(475, 0, 'en', 'core/base/errors', '500_title', 'Page could not be loaded', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(476, 0, 'en', 'core/base/errors', '500_msg', '<li>The page you requested does not exist.</li>\n	                <li>The link you clicked is no longer.</li>\n	                <li>The page may have moved to a new location.</li>\n	                <li>An error may have occurred.</li>\n	                <li>You are not authorized to view the requested resource.</li>', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(477, 0, 'en', 'core/base/errors', 'reasons', 'This may have occurred because of several reasons', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(478, 0, 'en', 'core/base/errors', 'try_again', 'Please try again in a few minutes, or alternatively return to the homepage by <a href=\"http://flex-home.local/admin\">clicking here</a>.', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(479, 0, 'en', 'core/base/errors', 'not_found', 'Not Found', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(480, 0, 'en', 'core/base/forms', 'choose_image', 'Choose image', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(481, 0, 'en', 'core/base/forms', 'actions', 'Actions', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(482, 0, 'en', 'core/base/forms', 'save', 'Save', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(483, 0, 'en', 'core/base/forms', 'save_and_continue', 'Save & Edit', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(484, 0, 'en', 'core/base/forms', 'image', 'Image', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(485, 0, 'en', 'core/base/forms', 'image_placeholder', 'Insert path of image or click upload button', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(486, 0, 'en', 'core/base/forms', 'create', 'Create', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(487, 0, 'en', 'core/base/forms', 'edit', 'Edit', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(488, 0, 'en', 'core/base/forms', 'permalink', 'Permalink', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(489, 0, 'en', 'core/base/forms', 'ok', 'OK', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(490, 0, 'en', 'core/base/forms', 'cancel', 'Cancel', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(491, 0, 'en', 'core/base/forms', 'character_remain', 'character(s) remain', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(492, 0, 'en', 'core/base/forms', 'template', 'Template', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(493, 0, 'en', 'core/base/forms', 'choose_file', 'Choose file', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(494, 0, 'en', 'core/base/forms', 'file', 'File', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(495, 0, 'en', 'core/base/forms', 'content', 'Content', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(496, 0, 'en', 'core/base/forms', 'description', 'Description', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(497, 0, 'en', 'core/base/forms', 'name', 'Name', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(498, 0, 'en', 'core/base/forms', 'slug', 'Slug', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(499, 0, 'en', 'core/base/forms', 'title', 'Title', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(500, 0, 'en', 'core/base/forms', 'value', 'Value', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(501, 0, 'en', 'core/base/forms', 'name_placeholder', 'Name', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(502, 0, 'en', 'core/base/forms', 'alias_placeholder', 'Alias', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(503, 0, 'en', 'core/base/forms', 'description_placeholder', 'Short description', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(504, 0, 'en', 'core/base/forms', 'parent', 'Parent', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(505, 0, 'en', 'core/base/forms', 'icon', 'Icon', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(506, 0, 'en', 'core/base/forms', 'icon_placeholder', 'Ex: fa fa-home', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(507, 0, 'en', 'core/base/forms', 'order_by', 'Order by', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(508, 0, 'en', 'core/base/forms', 'order_by_placeholder', 'Order by', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(509, 0, 'en', 'core/base/forms', 'is_featured', 'Is featured?', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(510, 0, 'en', 'core/base/forms', 'is_default', 'Is default?', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(511, 0, 'en', 'core/base/forms', 'update', 'Update', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(512, 0, 'en', 'core/base/forms', 'publish', 'Publish', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(513, 0, 'en', 'core/base/forms', 'remove_image', 'Remove image', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(514, 0, 'en', 'core/base/forms', 'remove_file', 'Remove file', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(515, 0, 'en', 'core/base/forms', 'order', 'Order', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(516, 0, 'en', 'core/base/forms', 'alias', 'Alias', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(517, 0, 'en', 'core/base/forms', 'basic_information', 'Basic information', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(518, 0, 'en', 'core/base/forms', 'short_code', 'Shortcode', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(519, 0, 'en', 'core/base/forms', 'add_short_code', 'Add a shortcode', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(520, 0, 'en', 'core/base/forms', 'add', 'Add', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(521, 0, 'en', 'core/base/forms', 'link', 'Link', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(522, 0, 'en', 'core/base/forms', 'show_hide_editor', 'Show/Hide Editor', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(523, 0, 'en', 'core/base/forms', 'basic_info_title', 'Basic information', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(524, 0, 'en', 'core/base/forms', 'expand_all', 'Expand all', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(525, 0, 'en', 'core/base/forms', 'collapse_all', 'Collapse all', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(526, 0, 'en', 'core/base/forms', 'view_new_tab', 'Open in new tab', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(527, 0, 'en', 'core/base/layouts', 'platform_admin', 'Platform Administration', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(528, 0, 'en', 'core/base/layouts', 'dashboard', 'Dashboard', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(529, 0, 'en', 'core/base/layouts', 'widgets', 'Widgets', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(530, 0, 'en', 'core/base/layouts', 'plugins', 'Plugins', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(531, 0, 'en', 'core/base/layouts', 'settings', 'Settings', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(532, 0, 'en', 'core/base/layouts', 'setting_general', 'General', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(533, 0, 'en', 'core/base/layouts', 'setting_email', 'Email', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(534, 0, 'en', 'core/base/layouts', 'system_information', 'System information', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(535, 0, 'en', 'core/base/layouts', 'theme', 'Theme', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(536, 0, 'en', 'core/base/layouts', 'copyright', 'Copyright :year &copy; :company. Version: <span>:version</span>', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(537, 0, 'en', 'core/base/layouts', 'profile', 'Profile', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(538, 0, 'en', 'core/base/layouts', 'logout', 'Logout', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(539, 0, 'en', 'core/base/layouts', 'no_search_result', 'No results found, please try with different keywords.', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(540, 0, 'en', 'core/base/layouts', 'home', 'Home', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(541, 0, 'en', 'core/base/layouts', 'search', 'Search', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(542, 0, 'en', 'core/base/layouts', 'add_new', 'Add new', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(543, 0, 'en', 'core/base/layouts', 'n_a', 'N/A', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(544, 0, 'en', 'core/base/layouts', 'page_loaded_time', 'Page loaded in', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(545, 0, 'en', 'core/base/layouts', 'view_website', 'View website', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(546, 0, 'en', 'core/base/mail', 'send-fail', 'Send email failed', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(547, 0, 'en', 'core/base/notices', 'create_success_message', 'Created successfully', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(548, 0, 'en', 'core/base/notices', 'update_success_message', 'Updated successfully', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(549, 0, 'en', 'core/base/notices', 'delete_success_message', 'Deleted successfully', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(550, 0, 'en', 'core/base/notices', 'success_header', 'Success!', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(551, 0, 'en', 'core/base/notices', 'error_header', 'Error!', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(552, 0, 'en', 'core/base/notices', 'no_select', 'Please select at least one record to perform this action!', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(553, 0, 'en', 'core/base/notices', 'processing_request', 'We are processing your request.', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(554, 0, 'en', 'core/base/notices', 'error', 'Error!', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(555, 0, 'en', 'core/base/notices', 'success', 'Success!', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(556, 0, 'en', 'core/base/notices', 'info', 'Info!', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(557, 0, 'en', 'core/base/notices', 'enum.validate_message', 'The :attribute value you have entered is invalid.', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(558, 0, 'en', 'core/base/system', 'no_select', 'Please select at least one record to take this action!', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(559, 0, 'en', 'core/base/system', 'cannot_find_user', 'Unable to find specified user', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(560, 0, 'en', 'core/base/system', 'supper_revoked', 'Super user access revoked', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(561, 0, 'en', 'core/base/system', 'cannot_revoke_yourself', 'Can not revoke supper user access permission yourself!', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(562, 0, 'en', 'core/base/system', 'cant_remove_supper', 'You don\'t has permission to remove this super user', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(563, 0, 'en', 'core/base/system', 'cant_find_user_with_email', 'Unable to find user with specified email address', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(564, 0, 'en', 'core/base/system', 'supper_granted', 'Super user access granted', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(565, 0, 'en', 'core/base/system', 'delete_log_success', 'Delete log file successfully!', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(566, 0, 'en', 'core/base/system', 'get_member_success', 'Member list retrieved successfully', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(567, 0, 'en', 'core/base/system', 'error_occur', 'The following errors occurred', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(568, 0, 'en', 'core/base/system', 'user_management', 'User Management', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(569, 0, 'en', 'core/base/system', 'user_management_description', 'Manage users.', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(570, 0, 'en', 'core/base/system', 'role_and_permission', 'Roles and Permissions', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(571, 0, 'en', 'core/base/system', 'role_and_permission_description', 'Manage the available roles.', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(572, 0, 'en', 'core/base/system', 'user.list_super', 'List Super Users', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(573, 0, 'en', 'core/base/system', 'user.email', 'Email', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(574, 0, 'en', 'core/base/system', 'user.last_login', 'Last Login', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(575, 0, 'en', 'core/base/system', 'user.username', 'Username', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(576, 0, 'en', 'core/base/system', 'user.add_user', 'Add Super User', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(577, 0, 'en', 'core/base/system', 'user.cancel', 'Cancel', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(578, 0, 'en', 'core/base/system', 'user.create', 'Create', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(579, 0, 'en', 'core/base/system', 'options.features', 'Feature Access Control', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(580, 0, 'en', 'core/base/system', 'options.feature_description', 'Manage the available.', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(581, 0, 'en', 'core/base/system', 'options.manage_super', 'Super User Management', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(582, 0, 'en', 'core/base/system', 'options.manage_super_description', 'Add/remove super users.', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(583, 0, 'en', 'core/base/system', 'options.info', 'System information', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(584, 0, 'en', 'core/base/system', 'options.info_description', 'All information about current system configuration.', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(585, 0, 'en', 'core/base/system', 'info.title', 'System information', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(586, 0, 'en', 'core/base/system', 'info.cache', 'Cache', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(587, 0, 'en', 'core/base/system', 'info.locale', 'Active locale', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(588, 0, 'en', 'core/base/system', 'info.environment', 'Environment', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(589, 0, 'en', 'core/base/system', 'disabled_in_demo_mode', 'You cannot do it in demo mode!', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(590, 0, 'en', 'core/base/system', 'report_description', 'Please share this information for troubleshooting', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(591, 0, 'en', 'core/base/system', 'get_system_report', 'Get System Report', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(592, 0, 'en', 'core/base/system', 'system_environment', 'System Environment', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(593, 0, 'en', 'core/base/system', 'framework_version', 'Framework Version', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(594, 0, 'en', 'core/base/system', 'timezone', 'Timezone', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(595, 0, 'en', 'core/base/system', 'debug_mode', 'Debug Mode', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(596, 0, 'en', 'core/base/system', 'storage_dir_writable', 'Storage Dir Writable', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(597, 0, 'en', 'core/base/system', 'cache_dir_writable', 'Cache Dir Writable', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(598, 0, 'en', 'core/base/system', 'app_size', 'App Size', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(599, 0, 'en', 'core/base/system', 'server_environment', 'Server Environment', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(600, 0, 'en', 'core/base/system', 'php_version', 'PHP Version', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(601, 0, 'en', 'core/base/system', 'php_version_error', 'PHP must be >= :version', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(602, 0, 'en', 'core/base/system', 'server_software', 'Server Software', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(603, 0, 'en', 'core/base/system', 'server_os', 'Server OS', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(604, 0, 'en', 'core/base/system', 'database', 'Database', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(605, 0, 'en', 'core/base/system', 'ssl_installed', 'SSL Installed', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(606, 0, 'en', 'core/base/system', 'cache_driver', 'Cache Driver', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(607, 0, 'en', 'core/base/system', 'session_driver', 'Session Driver', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(608, 0, 'en', 'core/base/system', 'queue_connection', 'Queue Connection', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(609, 0, 'en', 'core/base/system', 'mbstring_ext', 'Mbstring Ext', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(610, 0, 'en', 'core/base/system', 'openssl_ext', 'OpenSSL Ext', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(611, 0, 'en', 'core/base/system', 'pdo_ext', 'PDO Ext', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(612, 0, 'en', 'core/base/system', 'curl_ext', 'CURL Ext', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(613, 0, 'en', 'core/base/system', 'exif_ext', 'Exif Ext', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(614, 0, 'en', 'core/base/system', 'file_info_ext', 'File info Ext', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(615, 0, 'en', 'core/base/system', 'tokenizer_ext', 'Tokenizer Ext', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(616, 0, 'en', 'core/base/system', 'extra_stats', 'Extra Stats', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(617, 0, 'en', 'core/base/system', 'installed_packages', 'Installed packages and their version numbers', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(618, 0, 'en', 'core/base/system', 'extra_information', 'Extra Information', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(619, 0, 'en', 'core/base/system', 'copy_report', 'Copy Report', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(620, 0, 'en', 'core/base/system', 'package_name', 'Package Name', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(621, 0, 'en', 'core/base/system', 'dependency_name', 'Dependency Name', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(622, 0, 'en', 'core/base/system', 'version', 'Version', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(623, 0, 'en', 'core/base/system', 'cms_version', 'CMS Version', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(624, 0, 'en', 'core/base/system', 'imagick_or_gd_ext', 'Imagick/GD Ext', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(625, 0, 'en', 'core/base/system', 'updater', 'System Updater', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(626, 0, 'en', 'core/base/tables', 'id', 'ID', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(627, 0, 'en', 'core/base/tables', 'name', 'Name', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(628, 0, 'en', 'core/base/tables', 'slug', 'Slug', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(629, 0, 'en', 'core/base/tables', 'title', 'Title', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(630, 0, 'en', 'core/base/tables', 'order_by', 'Order By', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(631, 0, 'en', 'core/base/tables', 'order', 'Order', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(632, 0, 'en', 'core/base/tables', 'status', 'Status', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(633, 0, 'en', 'core/base/tables', 'created_at', 'Created At', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(634, 0, 'en', 'core/base/tables', 'updated_at', 'Updated At', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(635, 0, 'en', 'core/base/tables', 'description', 'Description', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(636, 0, 'en', 'core/base/tables', 'operations', 'Operations', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(637, 0, 'en', 'core/base/tables', 'url', 'URL', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(638, 0, 'en', 'core/base/tables', 'author', 'Author', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(639, 0, 'en', 'core/base/tables', 'notes', 'Notes', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(640, 0, 'en', 'core/base/tables', 'column', 'Column', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(641, 0, 'en', 'core/base/tables', 'origin', 'Origin', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(642, 0, 'en', 'core/base/tables', 'after_change', 'After changes', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(643, 0, 'en', 'core/base/tables', 'views', 'Views', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(644, 0, 'en', 'core/base/tables', 'browser', 'Browser', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(645, 0, 'en', 'core/base/tables', 'session', 'Session', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(646, 0, 'en', 'core/base/tables', 'activated', 'activated', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(647, 0, 'en', 'core/base/tables', 'deactivated', 'deactivated', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(648, 0, 'en', 'core/base/tables', 'is_featured', 'Is featured', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(649, 0, 'en', 'core/base/tables', 'edit', 'Edit', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(650, 0, 'en', 'core/base/tables', 'delete', 'Delete', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(651, 0, 'en', 'core/base/tables', 'restore', 'Restore', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(652, 0, 'en', 'core/base/tables', 'activate', 'Activate', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(653, 0, 'en', 'core/base/tables', 'deactivate', 'Deactivate', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(654, 0, 'en', 'core/base/tables', 'excel', 'Excel', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(655, 0, 'en', 'core/base/tables', 'export', 'Export', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(656, 0, 'en', 'core/base/tables', 'csv', 'CSV', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(657, 0, 'en', 'core/base/tables', 'pdf', 'PDF', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(658, 0, 'en', 'core/base/tables', 'print', 'Print', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(659, 0, 'en', 'core/base/tables', 'reset', 'Reset', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(660, 0, 'en', 'core/base/tables', 'reload', 'Reload', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(661, 0, 'en', 'core/base/tables', 'display', 'Display', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(662, 0, 'en', 'core/base/tables', 'all', 'All', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(663, 0, 'en', 'core/base/tables', 'add_new', 'Add New', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(664, 0, 'en', 'core/base/tables', 'action', 'Actions', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(665, 0, 'en', 'core/base/tables', 'delete_entry', 'Delete', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(666, 0, 'en', 'core/base/tables', 'view', 'View Detail', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(667, 0, 'en', 'core/base/tables', 'save', 'Save', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(668, 0, 'en', 'core/base/tables', 'show_from', 'Show from', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(669, 0, 'en', 'core/base/tables', 'to', 'to', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(670, 0, 'en', 'core/base/tables', 'in', 'in', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(671, 0, 'en', 'core/base/tables', 'records', 'records', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(672, 0, 'en', 'core/base/tables', 'no_data', 'No data to display', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(673, 0, 'en', 'core/base/tables', 'no_record', 'No record', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(674, 0, 'en', 'core/base/tables', 'confirm_delete', 'Confirm delete', '2021-10-18 20:09:24', '2021-10-18 20:09:49'),
(675, 0, 'en', 'core/base/tables', 'confirm_delete_msg', 'Do you really want to delete this record?', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(676, 0, 'en', 'core/base/tables', 'confirm_delete_many_msg', 'Do you really want to delete selected record(s)?', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(677, 0, 'en', 'core/base/tables', 'cancel', 'Cancel', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(678, 0, 'en', 'core/base/tables', 'template', 'Template', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(679, 0, 'en', 'core/base/tables', 'email', 'Email', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(680, 0, 'en', 'core/base/tables', 'last_login', 'Last login', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(681, 0, 'en', 'core/base/tables', 'shortcode', 'Shortcode', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(682, 0, 'en', 'core/base/tables', 'image', 'Image', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(683, 0, 'en', 'core/base/tables', 'bulk_changes', 'Bulk changes', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(684, 0, 'en', 'core/base/tables', 'submit', 'Submit', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(685, 0, 'en', 'core/base/tables', 'please_select_record', 'Please select at least one record to perform this action!', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(686, 0, 'en', 'core/base/tabs', 'detail', 'Detail', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(687, 0, 'en', 'core/base/tabs', 'file', 'Files', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(688, 0, 'en', 'core/base/tabs', 'record_note', 'Record Note', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(689, 0, 'en', 'core/base/tabs', 'revision', 'Revision History', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(690, 0, 'vi', 'core/base/cache', 'cache_management', 'Quản lý bộ nhớ đệm', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(691, 0, 'vi', 'core/base/cache', 'cache_commands', 'Các lệnh xoá bộ nhớ đệm cơ bản', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(692, 0, 'vi', 'core/base/cache', 'commands.clear_cms_cache.title', 'Xóa tất cả bộ đệm hiện có của ứng dụng', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(693, 0, 'vi', 'core/base/cache', 'commands.clear_cms_cache.description', 'Xóa các bộ nhớ đệm của ứng dụng: cơ sở dữ liệu, nội dung tĩnh... Chạy lệnh này khi bạn thử cập nhật dữ liệu nhưng giao diện không thay đổi', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(694, 0, 'vi', 'core/base/cache', 'commands.clear_cms_cache.success_msg', 'Bộ đệm đã được xóa', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(695, 0, 'vi', 'core/base/cache', 'commands.refresh_compiled_views.title', 'Làm mới bộ đệm giao diện', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(696, 0, 'vi', 'core/base/cache', 'commands.refresh_compiled_views.description', 'Làm mới bộ đệm giao diện giúp phần giao diện luôn mới nhất', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(697, 0, 'vi', 'core/base/cache', 'commands.refresh_compiled_views.success_msg', 'Bộ đệm giao diện đã được làm mới', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(698, 0, 'vi', 'core/base/cache', 'commands.clear_config_cache.title', 'Xóa bộ nhớ đệm của phần cấu hình', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(699, 0, 'vi', 'core/base/cache', 'commands.clear_config_cache.description', 'Bạn cần làm mới bộ đệm cấu hình khi bạn tạo ra sự thay đổi nào đó ở môi trường thành phẩm.', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(700, 0, 'vi', 'core/base/cache', 'commands.clear_config_cache.success_msg', 'Bộ đệm cấu hình đã được xóa', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(701, 0, 'vi', 'core/base/cache', 'commands.clear_route_cache.title', 'Xoá cache đường dẫn', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(702, 0, 'vi', 'core/base/cache', 'commands.clear_route_cache.description', 'Cần thực hiện thao tác này khi thấy không xuất hiện đường dẫn mới.', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(703, 0, 'vi', 'core/base/cache', 'commands.clear_route_cache.success_msg', 'Bộ đệm điều hướng đã bị xóa', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(704, 0, 'vi', 'core/base/cache', 'commands.clear_log.description', 'Xoá lịch sử lỗi', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(705, 0, 'vi', 'core/base/cache', 'commands.clear_log.success_msg', 'Lịch sử lỗi đã được làm sạch', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(706, 0, 'vi', 'core/base/cache', 'commands.clear_log.title', 'Xoá lịch sử lỗi', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(707, 0, 'vi', 'core/base/enums', 'statuses.draft', 'Bản nháp', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(708, 0, 'vi', 'core/base/enums', 'statuses.pending', 'Đang chờ xử lý', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(709, 0, 'vi', 'core/base/errors', '401_title', 'Bạn không có quyền truy cập trang này', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(710, 0, 'vi', 'core/base/errors', '401_msg', '<li>Bạn không được cấp quyền truy cập bởi quản trị viên.</li>\n	                <li>Bạn sử dụng sai loại tài khoản.</li>\n	                <li>Bạn không được cấp quyền để có thể truy cập trang này</li>', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(711, 0, 'vi', 'core/base/errors', '404_title', 'Không tìm thấy trang yêu cầu', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(712, 0, 'vi', 'core/base/errors', '404_msg', '<li>Trang bạn yêu cầu không tồn tại.</li>\n	                <li>Liên kết bạn vừa nhấn không còn được sử dụng.</li>\n	                <li>Trang này có thể đã được chuyển sang vị trí khác.</li>\n	                <li>Có thể có lỗi xảy ra.</li>\n	                <li>Bạn không được cấp quyền để có thể truy cập trang này</li>', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(713, 0, 'vi', 'core/base/errors', '500_title', 'Không thể tải trang', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(714, 0, 'vi', 'core/base/errors', '500_msg', '<li>Trang bạn yêu cầu không tồn tại.</li>\n	                <li>Liên kết bạn vừa nhấn không còn được sử dụng.</li>\n	                <li>Trang này có thể đã được chuyển sang vị trí khác.</li>\n	                <li>Có thể có lỗi xảy ra.</li>\n	                <li>Bạn không được cấp quyền để có thể truy cập trang này</li>', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(715, 0, 'vi', 'core/base/errors', 'reasons', 'Điều này có thể xảy ra vì nhiều lý do.', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(716, 0, 'vi', 'core/base/errors', 'try_again', 'Vui lòng thử lại trong vài phút, hoặc quay trở lại trang chủ bằng cách <a href=\"http://cms.local/admin\"> nhấn vào đây </a>.', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(717, 0, 'vi', 'core/base/forms', 'choose_image', 'Chọn ảnh', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(718, 0, 'vi', 'core/base/forms', 'actions', 'Tác vụ', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(719, 0, 'vi', 'core/base/forms', 'save', 'Lưu', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(720, 0, 'vi', 'core/base/forms', 'save_and_continue', 'Lưu & chỉnh sửa', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(721, 0, 'vi', 'core/base/forms', 'image', 'Hình ảnh', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(722, 0, 'vi', 'core/base/forms', 'image_placeholder', 'Chèn đường dẫn hình ảnh hoặc nhấn nút để chọn hình', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(723, 0, 'vi', 'core/base/forms', 'create', 'Tạo mới', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(724, 0, 'vi', 'core/base/forms', 'edit', 'Sửa', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(725, 0, 'vi', 'core/base/forms', 'permalink', 'Đường dẫn', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(726, 0, 'vi', 'core/base/forms', 'ok', 'OK', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(727, 0, 'vi', 'core/base/forms', 'cancel', 'Hủy bỏ', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(728, 0, 'vi', 'core/base/forms', 'character_remain', 'kí tự còn lại', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(729, 0, 'vi', 'core/base/forms', 'template', 'Template', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(730, 0, 'vi', 'core/base/forms', 'choose_file', 'Chọn tập tin', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(731, 0, 'vi', 'core/base/forms', 'file', 'Tập tin', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(732, 0, 'vi', 'core/base/forms', 'content', 'Nội dung', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(733, 0, 'vi', 'core/base/forms', 'description', 'Mô tả', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(734, 0, 'vi', 'core/base/forms', 'name', 'Tên', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(735, 0, 'vi', 'core/base/forms', 'name_placeholder', 'Nhập tên', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(736, 0, 'vi', 'core/base/forms', 'description_placeholder', 'Mô tả ngắn', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(737, 0, 'vi', 'core/base/forms', 'parent', 'Cha', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(738, 0, 'vi', 'core/base/forms', 'icon', 'Biểu tượng', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(739, 0, 'vi', 'core/base/forms', 'order_by', 'Sắp xếp', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(740, 0, 'vi', 'core/base/forms', 'order_by_placeholder', 'Sắp xếp', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(741, 0, 'vi', 'core/base/forms', 'slug', 'Slug', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(742, 0, 'vi', 'core/base/forms', 'is_featured', 'Nổi bật?', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(743, 0, 'vi', 'core/base/forms', 'is_default', 'Mặc định?', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(744, 0, 'vi', 'core/base/forms', 'icon_placeholder', 'Ví dụ: fa fa-home', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(745, 0, 'vi', 'core/base/forms', 'update', 'Cập nhật', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(746, 0, 'vi', 'core/base/forms', 'publish', 'Xuất bản', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(747, 0, 'vi', 'core/base/forms', 'remove_image', 'Xoá ảnh', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(748, 0, 'vi', 'core/base/forms', 'add', 'Thêm', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(749, 0, 'vi', 'core/base/forms', 'add_short_code', 'Thêm shortcode', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(750, 0, 'vi', 'core/base/forms', 'alias', 'Mã thay thế', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(751, 0, 'vi', 'core/base/forms', 'alias_placeholder', 'Mã thay thế', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(752, 0, 'vi', 'core/base/forms', 'basic_information', 'Thông tin cơ bản', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(753, 0, 'vi', 'core/base/forms', 'link', 'Liên kết', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(754, 0, 'vi', 'core/base/forms', 'order', 'Thứ tự', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(755, 0, 'vi', 'core/base/forms', 'short_code', 'Shortcode', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(756, 0, 'vi', 'core/base/forms', 'title', 'Tiêu đề', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(757, 0, 'vi', 'core/base/forms', 'value', 'Giá trị', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(758, 0, 'vi', 'core/base/forms', 'show_hide_editor', 'Ẩn/Hiện trình soạn thảo', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(759, 0, 'vi', 'core/base/forms', 'basic_info_title', 'Thông tin cơ bản', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(760, 0, 'vi', 'core/base/layouts', 'platform_admin', 'Quản trị hệ thống', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(761, 0, 'vi', 'core/base/layouts', 'dashboard', 'Bảng điều khiển', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(762, 0, 'vi', 'core/base/layouts', 'widgets', 'Tiện ích', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(763, 0, 'vi', 'core/base/layouts', 'plugins', 'Tiện ích mở rộng', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(764, 0, 'vi', 'core/base/layouts', 'settings', 'Cài đặt', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(765, 0, 'vi', 'core/base/layouts', 'setting_general', 'Cơ bản', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(766, 0, 'vi', 'core/base/layouts', 'system_information', 'Thông tin hệ thống', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(767, 0, 'vi', 'core/base/layouts', 'theme', 'Giao diện', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(768, 0, 'vi', 'core/base/layouts', 'copyright', 'Bản quyền :year &copy; :company. Phiên bản: <span>:version</span>', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(769, 0, 'vi', 'core/base/layouts', 'profile', 'Thông tin cá nhân', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(770, 0, 'vi', 'core/base/layouts', 'logout', 'Đăng xuất', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(771, 0, 'vi', 'core/base/layouts', 'no_search_result', 'Không có kết quả tìm kiếm, hãy thử lại với từ khóa khác.', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(772, 0, 'vi', 'core/base/layouts', 'home', 'Trang chủ', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(773, 0, 'vi', 'core/base/layouts', 'search', 'Tìm kiếm', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(774, 0, 'vi', 'core/base/layouts', 'add_new', 'Thêm mới', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(775, 0, 'vi', 'core/base/layouts', 'n_a', 'N/A', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(776, 0, 'vi', 'core/base/layouts', 'page_loaded_time', 'Trang tải xong trong', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(777, 0, 'vi', 'core/base/layouts', 'view_website', 'Xem trang ngoài', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(778, 0, 'vi', 'core/base/layouts', 'setting_email', 'Email', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(779, 0, 'vi', 'core/base/mail', 'send-fail', 'Gửi email không thành công', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(780, 0, 'vi', 'core/base/notices', 'create_success_message', 'Tạo thành công', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(781, 0, 'vi', 'core/base/notices', 'update_success_message', 'Cập nhật thành công', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(782, 0, 'vi', 'core/base/notices', 'delete_success_message', 'Xóa thành công', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(783, 0, 'vi', 'core/base/notices', 'success_header', 'Thành công!', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(784, 0, 'vi', 'core/base/notices', 'error_header', 'Lỗi!', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(785, 0, 'vi', 'core/base/notices', 'no_select', 'Chọn ít nhất 1 trường để thực hiện hành động này!', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(786, 0, 'vi', 'core/base/notices', 'processing_request', 'Hệ thống đang xử lý yêu cầu.', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(787, 0, 'vi', 'core/base/notices', 'error', 'Lỗi!', '2021-10-18 20:09:25', '2021-10-18 20:09:49');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(788, 0, 'vi', 'core/base/notices', 'success', 'Thành công!', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(789, 0, 'vi', 'core/base/notices', 'info', 'Thông tin!', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(790, 0, 'vi', 'core/base/system', 'no_select', 'Hãy chọn ít nhất 1 trường để thực hiện hành động này!', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(791, 0, 'vi', 'core/base/system', 'cannot_find_user', 'Không thể tải được thông tin người dùng', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(792, 0, 'vi', 'core/base/system', 'supper_revoked', 'Quyền quản trị viên cao nhất đã được gỡ bỏ', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(793, 0, 'vi', 'core/base/system', 'cannot_revoke_yourself', 'Không thể gỡ bỏ quyền quản trị cấp cao của chính bạn!', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(794, 0, 'vi', 'core/base/system', 'cant_remove_supper', 'Bạn không có quyền xóa quản trị viên cấp cao', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(795, 0, 'vi', 'core/base/system', 'cant_find_user_with_email', 'Không thể tìm thấy người dùng với email này', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(796, 0, 'vi', 'core/base/system', 'supper_granted', 'Quyền quản trị cao nhất đã được gán', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(797, 0, 'vi', 'core/base/system', 'delete_log_success', 'Xóa tập tin log thành công!', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(798, 0, 'vi', 'core/base/system', 'get_member_success', 'Hiển thị danh sách thành viên thành công', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(799, 0, 'vi', 'core/base/system', 'error_occur', 'Có lỗi dưới đây', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(800, 0, 'vi', 'core/base/system', 'role_and_permission', 'Phân quyền hệ thống', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(801, 0, 'vi', 'core/base/system', 'role_and_permission_description', 'Quản lý những phân quyền trong hệ thống', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(802, 0, 'vi', 'core/base/system', 'user.list_super', 'Danh sách quản trị viên cấp cao', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(803, 0, 'vi', 'core/base/system', 'user.username', 'Tên đăng nhập', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(804, 0, 'vi', 'core/base/system', 'user.email', 'Email', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(805, 0, 'vi', 'core/base/system', 'user.last_login', 'Đăng nhập lần cuối	', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(806, 0, 'vi', 'core/base/system', 'user.add_user', 'Thêm quản trị viên cấp cao', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(807, 0, 'vi', 'core/base/system', 'user.cancel', 'Hủy bỏ', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(808, 0, 'vi', 'core/base/system', 'user.create', 'Thêm', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(809, 0, 'vi', 'core/base/system', 'options.features', 'Kiểm soát truy cập các tính năng', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(810, 0, 'vi', 'core/base/system', 'options.feature_description', 'Bật/tắt các tính năng.', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(811, 0, 'vi', 'core/base/system', 'options.manage_super', 'Quản lý quản trị viên cấp cao', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(812, 0, 'vi', 'core/base/system', 'options.manage_super_description', 'Thêm/xóa quản trị viên cấp cao', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(813, 0, 'vi', 'core/base/system', 'options.info', 'Thông tin hệ thống', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(814, 0, 'vi', 'core/base/system', 'options.info_description', 'Những thông tin về cấu hình hiện tại của hệ thống.', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(815, 0, 'vi', 'core/base/system', 'info.title', 'Thông tin hệ thống', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(816, 0, 'vi', 'core/base/system', 'info.cache', 'Bộ nhớ đệm', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(817, 0, 'vi', 'core/base/system', 'info.environment', 'Môi trường', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(818, 0, 'vi', 'core/base/system', 'info.locale', 'Ngôn ngữ hệ thống', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(819, 0, 'vi', 'core/base/system', 'user_management', 'Quản lý thành viên', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(820, 0, 'vi', 'core/base/system', 'user_management_description', 'Quản lý người dùng trong hệ thống', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(821, 0, 'vi', 'core/base/system', 'app_size', 'Kích thước ứng dụng', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(822, 0, 'vi', 'core/base/system', 'cache_dir_writable', 'Có thể ghi bộ nhớ đệm', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(823, 0, 'vi', 'core/base/system', 'cache_driver', 'Loại lưu trữ bộ nhớ đệm', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(824, 0, 'vi', 'core/base/system', 'copy_report', 'Sao chép báo cáo', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(825, 0, 'vi', 'core/base/system', 'curl_ext', 'CURL Ext', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(826, 0, 'vi', 'core/base/system', 'database', 'Hệ thống dữ liệu', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(827, 0, 'vi', 'core/base/system', 'debug_mode', 'Chế độ sửa lỗi', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(828, 0, 'vi', 'core/base/system', 'dependency_name', 'Tên gói', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(829, 0, 'vi', 'core/base/system', 'exif_ext', 'Exif Ext', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(830, 0, 'vi', 'core/base/system', 'extra_information', 'Thông tin mở rộng', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(831, 0, 'vi', 'core/base/system', 'extra_stats', 'Thống kê thêm', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(832, 0, 'vi', 'core/base/system', 'file_info_ext', 'File info Ext', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(833, 0, 'vi', 'core/base/system', 'framework_version', 'Phiên bản framework', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(834, 0, 'vi', 'core/base/system', 'get_system_report', 'Lấy thông tin hệ thống', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(835, 0, 'vi', 'core/base/system', 'installed_packages', 'Các gói đã cài đặt và phiên bản', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(836, 0, 'vi', 'core/base/system', 'mbstring_ext', 'Mbstring Ext', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(837, 0, 'vi', 'core/base/system', 'openssl_ext', 'OpenSSL Ext', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(838, 0, 'vi', 'core/base/system', 'package_name', 'Tên gói', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(839, 0, 'vi', 'core/base/system', 'pdo_ext', 'PDO Ext', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(840, 0, 'vi', 'core/base/system', 'php_version', 'Phiên bản PHP', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(841, 0, 'vi', 'core/base/system', 'report_description', 'Vui lòng chia sẻ thông tin này nhằm mục đích điều tra nguyên nhân gây lỗi', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(842, 0, 'vi', 'core/base/system', 'server_environment', 'Môi trường máy chủ', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(843, 0, 'vi', 'core/base/system', 'server_os', 'Hệ điều hành của máy chủ', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(844, 0, 'vi', 'core/base/system', 'server_software', 'Phần mềm', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(845, 0, 'vi', 'core/base/system', 'session_driver', 'Loại lưu trữ phiên làm việc', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(846, 0, 'vi', 'core/base/system', 'ssl_installed', 'Đã cài đặt chứng chỉ SSL', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(847, 0, 'vi', 'core/base/system', 'storage_dir_writable', 'Có thể lưu trữ dữ liệu tạm', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(848, 0, 'vi', 'core/base/system', 'system_environment', 'Môi trường hệ thống', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(849, 0, 'vi', 'core/base/system', 'timezone', 'Múi giờ', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(850, 0, 'vi', 'core/base/system', 'tokenizer_ext', 'Tokenizer Ext', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(851, 0, 'vi', 'core/base/system', 'version', 'Phiên bản', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(852, 0, 'vi', 'core/base/system', 'cms_version', 'Phiên bản CMS', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(853, 0, 'vi', 'core/base/tables', 'id', 'ID', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(854, 0, 'vi', 'core/base/tables', 'name', 'Tên', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(855, 0, 'vi', 'core/base/tables', 'order_by', 'Thứ tự', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(856, 0, 'vi', 'core/base/tables', 'status', 'Trạng thái', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(857, 0, 'vi', 'core/base/tables', 'created_at', 'Ngày tạo', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(858, 0, 'vi', 'core/base/tables', 'updated_at', 'Ngày cập nhật', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(859, 0, 'vi', 'core/base/tables', 'operations', 'Tác vụ', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(860, 0, 'vi', 'core/base/tables', 'url', 'URL', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(861, 0, 'vi', 'core/base/tables', 'author', 'Người tạo', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(862, 0, 'vi', 'core/base/tables', 'column', 'Cột', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(863, 0, 'vi', 'core/base/tables', 'origin', 'Bản cũ', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(864, 0, 'vi', 'core/base/tables', 'after_change', 'Sau khi thay đổi', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(865, 0, 'vi', 'core/base/tables', 'notes', 'Ghi chú', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(866, 0, 'vi', 'core/base/tables', 'activated', 'kích hoạt', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(867, 0, 'vi', 'core/base/tables', 'browser', 'Trình duyệt', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(868, 0, 'vi', 'core/base/tables', 'deactivated', 'hủy kích hoạt', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(869, 0, 'vi', 'core/base/tables', 'description', 'Mô tả', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(870, 0, 'vi', 'core/base/tables', 'session', 'Phiên', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(871, 0, 'vi', 'core/base/tables', 'views', 'Lượt xem', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(872, 0, 'vi', 'core/base/tables', 'restore', 'Khôi phục', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(873, 0, 'vi', 'core/base/tables', 'edit', 'Sửa', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(874, 0, 'vi', 'core/base/tables', 'delete', 'Xóa', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(875, 0, 'vi', 'core/base/tables', 'action', 'Hành động', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(876, 0, 'vi', 'core/base/tables', 'activate', 'Kích hoạt', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(877, 0, 'vi', 'core/base/tables', 'add_new', 'Thêm mới', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(878, 0, 'vi', 'core/base/tables', 'all', 'Tất cả', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(879, 0, 'vi', 'core/base/tables', 'cancel', 'Hủy bỏ', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(880, 0, 'vi', 'core/base/tables', 'confirm_delete', 'Xác nhận xóa', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(881, 0, 'vi', 'core/base/tables', 'confirm_delete_msg', 'Bạn có chắc chắn muốn xóa bản ghi này?', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(882, 0, 'vi', 'core/base/tables', 'csv', 'CSV', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(883, 0, 'vi', 'core/base/tables', 'deactivate', 'Hủy kích hoạt', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(884, 0, 'vi', 'core/base/tables', 'delete_entry', 'Xóa bản ghi', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(885, 0, 'vi', 'core/base/tables', 'display', 'Hiển thị', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(886, 0, 'vi', 'core/base/tables', 'excel', 'Excel', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(887, 0, 'vi', 'core/base/tables', 'export', 'Xuất bản', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(888, 0, 'vi', 'core/base/tables', 'in', 'trong tổng số', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(889, 0, 'vi', 'core/base/tables', 'no_data', 'Không có dữ liệu để hiển thị', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(890, 0, 'vi', 'core/base/tables', 'no_record', 'Không có dữ liệu', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(891, 0, 'vi', 'core/base/tables', 'pdf', 'PDF', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(892, 0, 'vi', 'core/base/tables', 'print', 'In', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(893, 0, 'vi', 'core/base/tables', 'records', 'bản ghi', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(894, 0, 'vi', 'core/base/tables', 'reload', 'Tải lại', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(895, 0, 'vi', 'core/base/tables', 'reset', 'Làm mới', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(896, 0, 'vi', 'core/base/tables', 'save', 'Lưu', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(897, 0, 'vi', 'core/base/tables', 'show_from', 'Hiển thị từ', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(898, 0, 'vi', 'core/base/tables', 'template', 'Giao diện', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(899, 0, 'vi', 'core/base/tables', 'to', 'đến', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(900, 0, 'vi', 'core/base/tables', 'view', 'Xem chi tiết', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(901, 0, 'vi', 'core/base/tables', 'email', 'Email', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(902, 0, 'vi', 'core/base/tables', 'image', 'Hình ảnh', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(903, 0, 'vi', 'core/base/tables', 'is_featured', 'Nổi bật', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(904, 0, 'vi', 'core/base/tables', 'last_login', 'Lần cuối đăng nhập', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(905, 0, 'vi', 'core/base/tables', 'order', 'Thứ tự', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(906, 0, 'vi', 'core/base/tables', 'shortcode', 'Shortcode', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(907, 0, 'vi', 'core/base/tables', 'slug', 'Slug', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(908, 0, 'vi', 'core/base/tables', 'title', 'Tiêu đề', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(909, 0, 'vi', 'core/base/tabs', 'detail', 'Chi tiết', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(910, 0, 'vi', 'core/base/tabs', 'file', 'Tập tin', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(911, 0, 'vi', 'core/base/tabs', 'record_note', 'Ghi chú', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(912, 0, 'vi', 'core/base/tabs', 'revision', 'Lịch sử thay đổi', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(913, 0, 'en', 'core/dashboard/dashboard', 'update_position_success', 'Update widget position successfully!', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(914, 0, 'en', 'core/dashboard/dashboard', 'hide_success', 'Update widget successfully!', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(915, 0, 'en', 'core/dashboard/dashboard', 'confirm_hide', 'Are you sure?', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(916, 0, 'en', 'core/dashboard/dashboard', 'hide_message', 'Do you really want to hide this widget? It will be disappear on Dashboard!', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(917, 0, 'en', 'core/dashboard/dashboard', 'confirm_hide_btn', 'Yes, hide this widget', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(918, 0, 'en', 'core/dashboard/dashboard', 'cancel_hide_btn', 'Cancel', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(919, 0, 'en', 'core/dashboard/dashboard', 'collapse_expand', 'Collapse/Expand', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(920, 0, 'en', 'core/dashboard/dashboard', 'hide', 'Hide', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(921, 0, 'en', 'core/dashboard/dashboard', 'reload', 'Reload', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(922, 0, 'en', 'core/dashboard/dashboard', 'save_setting_success', 'Save widget settings successfully!', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(923, 0, 'en', 'core/dashboard/dashboard', 'widget_not_exists', 'Widget is not exits!', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(924, 0, 'en', 'core/dashboard/dashboard', 'manage_widgets', 'Manage Widgets', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(925, 0, 'en', 'core/dashboard/dashboard', 'fullscreen', 'Full screen', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(926, 0, 'en', 'core/dashboard/dashboard', 'title', 'Dashboard', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(927, 0, 'vi', 'core/dashboard/dashboard', 'cancel_hide_btn', 'Hủy bỏ', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(928, 0, 'vi', 'core/dashboard/dashboard', 'collapse_expand', 'Mở rộng', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(929, 0, 'vi', 'core/dashboard/dashboard', 'confirm_hide', 'Bạn có chắc?', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(930, 0, 'vi', 'core/dashboard/dashboard', 'confirm_hide_btn', 'Vâng, ẩn tiện ích này', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(931, 0, 'vi', 'core/dashboard/dashboard', 'hide', 'Ẩn', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(932, 0, 'vi', 'core/dashboard/dashboard', 'hide_message', 'Bạn có chắc chắn muốn ẩn tiện ích này? Nó sẽ không được hiển thị trên trang chủ nữa!', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(933, 0, 'vi', 'core/dashboard/dashboard', 'hide_success', 'Ẩn tiện ích thành công!', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(934, 0, 'vi', 'core/dashboard/dashboard', 'manage_widgets', 'Quản lý tiện ích', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(935, 0, 'vi', 'core/dashboard/dashboard', 'reload', 'Làm mới', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(936, 0, 'vi', 'core/dashboard/dashboard', 'save_setting_success', 'Lưu tiện ích thành công', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(937, 0, 'vi', 'core/dashboard/dashboard', 'update_position_success', 'Cập nhật vị trí tiện ích thành công!', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(938, 0, 'vi', 'core/dashboard/dashboard', 'widget_not_exists', 'Tiện ích này không tồn tại!', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(939, 0, 'vi', 'core/dashboard/dashboard', 'fullscreen', 'Toàn màn hình', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(940, 0, 'vi', 'core/dashboard/dashboard', 'title', 'Trang quản trị', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(941, 0, 'en', 'core/media/media', 'filter', 'Filter', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(942, 0, 'en', 'core/media/media', 'everything', 'Everything', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(943, 0, 'en', 'core/media/media', 'image', 'Image', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(944, 0, 'en', 'core/media/media', 'video', 'Video', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(945, 0, 'en', 'core/media/media', 'document', 'Document', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(946, 0, 'en', 'core/media/media', 'view_in', 'View in', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(947, 0, 'en', 'core/media/media', 'all_media', 'All media', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(948, 0, 'en', 'core/media/media', 'trash', 'Trash', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(949, 0, 'en', 'core/media/media', 'recent', 'Recent', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(950, 0, 'en', 'core/media/media', 'favorites', 'Favorites', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(951, 0, 'en', 'core/media/media', 'upload', 'Upload', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(952, 0, 'en', 'core/media/media', 'create_folder', 'Create folder', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(953, 0, 'en', 'core/media/media', 'refresh', 'Refresh', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(954, 0, 'en', 'core/media/media', 'empty_trash', 'Empty trash', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(955, 0, 'en', 'core/media/media', 'search_file_and_folder', 'Search file and folder', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(956, 0, 'en', 'core/media/media', 'sort', 'Sort', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(957, 0, 'en', 'core/media/media', 'file_name_asc', 'File name - ASC', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(958, 0, 'en', 'core/media/media', 'file_name_desc', 'File name - DESC', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(959, 0, 'en', 'core/media/media', 'uploaded_date_asc', 'Uploaded date - ASC', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(960, 0, 'en', 'core/media/media', 'uploaded_date_desc', 'Uploaded date - DESC', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(961, 0, 'en', 'core/media/media', 'size_asc', 'Size - ASC', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(962, 0, 'en', 'core/media/media', 'size_desc', 'Size - DESC', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(963, 0, 'en', 'core/media/media', 'actions', 'Actions', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(964, 0, 'en', 'core/media/media', 'nothing_is_selected', 'Nothing is selected', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(965, 0, 'en', 'core/media/media', 'insert', 'Insert', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(966, 0, 'en', 'core/media/media', 'folder_name', 'Folder name', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(967, 0, 'en', 'core/media/media', 'create', 'Create', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(968, 0, 'en', 'core/media/media', 'rename', 'Rename', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(969, 0, 'en', 'core/media/media', 'close', 'Close', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(970, 0, 'en', 'core/media/media', 'save_changes', 'Save changes', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(971, 0, 'en', 'core/media/media', 'move_to_trash', 'Move items to trash', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(972, 0, 'en', 'core/media/media', 'confirm_trash', 'Are you sure you want to move these items to trash?', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(973, 0, 'en', 'core/media/media', 'confirm', 'Confirm', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(974, 0, 'en', 'core/media/media', 'confirm_delete', 'Delete item(s)', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(975, 0, 'en', 'core/media/media', 'confirm_delete_description', 'Your request cannot rollback. Are you sure you wanna delete these items?', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(976, 0, 'en', 'core/media/media', 'empty_trash_title', 'Empty trash', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(977, 0, 'en', 'core/media/media', 'empty_trash_description', 'Your request cannot rollback. Are you sure you wanna remove all items in trash?', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(978, 0, 'en', 'core/media/media', 'up_level', 'Up one level', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(979, 0, 'en', 'core/media/media', 'upload_progress', 'Upload progress', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(980, 0, 'en', 'core/media/media', 'folder_created', 'Folder is created successfully!', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(981, 0, 'en', 'core/media/media', 'gallery', 'Media gallery', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(982, 0, 'en', 'core/media/media', 'trash_error', 'Error when delete selected item(s)', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(983, 0, 'en', 'core/media/media', 'trash_success', 'Moved selected item(s) to trash successfully!', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(984, 0, 'en', 'core/media/media', 'restore_error', 'Error when restore selected item(s)', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(985, 0, 'en', 'core/media/media', 'restore_success', 'Restore selected item(s) successfully!', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(986, 0, 'en', 'core/media/media', 'copy_success', 'Copied selected item(s) successfully!', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(987, 0, 'en', 'core/media/media', 'delete_success', 'Deleted selected item(s) successfully!', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(988, 0, 'en', 'core/media/media', 'favorite_success', 'Favorite selected item(s) successfully!', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(989, 0, 'en', 'core/media/media', 'remove_favorite_success', 'Remove selected item(s) from favorites successfully!', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(990, 0, 'en', 'core/media/media', 'rename_error', 'Error when rename item(s)', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(991, 0, 'en', 'core/media/media', 'rename_success', 'Rename selected item(s) successfully!', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(992, 0, 'en', 'core/media/media', 'empty_trash_success', 'Empty trash successfully!', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(993, 0, 'en', 'core/media/media', 'invalid_action', 'Invalid action!', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(994, 0, 'en', 'core/media/media', 'file_not_exists', 'File is not exists!', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(995, 0, 'en', 'core/media/media', 'download_file_error', 'Error when downloading files!', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(996, 0, 'en', 'core/media/media', 'missing_zip_archive_extension', 'Please enable ZipArchive extension to download file!', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(997, 0, 'en', 'core/media/media', 'can_not_download_file', 'Can not download this file!', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(998, 0, 'en', 'core/media/media', 'invalid_request', 'Invalid request!', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(999, 0, 'en', 'core/media/media', 'add_success', 'Add item successfully!', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(1000, 0, 'en', 'core/media/media', 'file_too_big', 'File too big. Max file upload is :size bytes', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(1001, 0, 'en', 'core/media/media', 'can_not_detect_file_type', 'File type is not allowed or can not detect file type!', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(1002, 0, 'en', 'core/media/media', 'upload_failed', 'The file is NOT uploaded completely. The server allows max upload file size is :size . Please check your file size OR try to upload again in case of having network errors', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(1003, 0, 'en', 'core/media/media', 'menu_name', 'Media', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(1004, 0, 'en', 'core/media/media', 'add', 'Add media', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(1005, 0, 'en', 'core/media/media', 'javascript.name', 'Name', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(1006, 0, 'en', 'core/media/media', 'javascript.url', 'URL', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(1007, 0, 'en', 'core/media/media', 'javascript.full_url', 'Full URL', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(1008, 0, 'en', 'core/media/media', 'javascript.size', 'Size', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(1009, 0, 'en', 'core/media/media', 'javascript.mime_type', 'Type', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(1010, 0, 'en', 'core/media/media', 'javascript.created_at', 'Uploaded at', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(1011, 0, 'en', 'core/media/media', 'javascript.updated_at', 'Modified at', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(1012, 0, 'en', 'core/media/media', 'javascript.nothing_selected', 'Nothing is selected', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(1013, 0, 'en', 'core/media/media', 'javascript.visit_link', 'Open link', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(1014, 0, 'en', 'core/media/media', 'javascript.no_item.all_media.icon', 'fas fa-cloud-upload-alt', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(1015, 0, 'en', 'core/media/media', 'javascript.no_item.all_media.title', 'Drop files and folders here', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(1016, 0, 'en', 'core/media/media', 'javascript.no_item.all_media.message', 'Or use the upload button above', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(1017, 0, 'en', 'core/media/media', 'javascript.no_item.trash.icon', 'fas fa-trash-alt', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(1018, 0, 'en', 'core/media/media', 'javascript.no_item.trash.title', 'There is nothing in your trash currently', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(1019, 0, 'en', 'core/media/media', 'javascript.no_item.trash.message', 'Delete files to move them to trash automatically. Delete files from trash to remove them permanently', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(1020, 0, 'en', 'core/media/media', 'javascript.no_item.favorites.icon', 'fas fa-star', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(1021, 0, 'en', 'core/media/media', 'javascript.no_item.favorites.title', 'You have not added anything to your favorites yet', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(1022, 0, 'en', 'core/media/media', 'javascript.no_item.favorites.message', 'Add files to favorites to easily find them later', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(1023, 0, 'en', 'core/media/media', 'javascript.no_item.recent.icon', 'far fa-clock', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(1024, 0, 'en', 'core/media/media', 'javascript.no_item.recent.title', 'You did not opened anything yet', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(1025, 0, 'en', 'core/media/media', 'javascript.no_item.recent.message', 'All recent files that you opened will be appeared here', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(1026, 0, 'en', 'core/media/media', 'javascript.no_item.default.icon', 'fas fa-sync', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(1027, 0, 'en', 'core/media/media', 'javascript.no_item.default.title', 'No items', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(1028, 0, 'en', 'core/media/media', 'javascript.no_item.default.message', 'This directory has no item', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(1029, 0, 'en', 'core/media/media', 'javascript.clipboard.success', 'These file links has been copied to clipboard', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(1030, 0, 'en', 'core/media/media', 'javascript.message.error_header', 'Error', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(1031, 0, 'en', 'core/media/media', 'javascript.message.success_header', 'Success', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(1032, 0, 'en', 'core/media/media', 'javascript.download.error', 'No files selected or cannot download these files', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(1033, 0, 'en', 'core/media/media', 'javascript.actions_list.basic.preview', 'Preview', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(1034, 0, 'en', 'core/media/media', 'javascript.actions_list.file.copy_link', 'Copy link', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(1035, 0, 'en', 'core/media/media', 'javascript.actions_list.file.rename', 'Rename', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(1036, 0, 'en', 'core/media/media', 'javascript.actions_list.file.make_copy', 'Make a copy', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(1037, 0, 'en', 'core/media/media', 'javascript.actions_list.user.favorite', 'Add to favorite', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(1038, 0, 'en', 'core/media/media', 'javascript.actions_list.user.remove_favorite', 'Remove favorite', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(1039, 0, 'en', 'core/media/media', 'javascript.actions_list.other.download', 'Download', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(1040, 0, 'en', 'core/media/media', 'javascript.actions_list.other.trash', 'Move to trash', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(1041, 0, 'en', 'core/media/media', 'javascript.actions_list.other.delete', 'Delete permanently', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(1042, 0, 'en', 'core/media/media', 'javascript.actions_list.other.restore', 'Restore', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(1043, 0, 'en', 'core/media/media', 'name_invalid', 'The folder name has invalid character(s).', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(1044, 0, 'en', 'core/media/media', 'url_invalid', 'Please provide a valid URL', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(1045, 0, 'en', 'core/media/media', 'path_invalid', 'Please provide a valid path', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(1046, 0, 'en', 'core/media/media', 'download_link', 'Download', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(1047, 0, 'en', 'core/media/media', 'url', 'URL', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(1048, 0, 'en', 'core/media/media', 'download_explain', 'Enter one URL per line.', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(1049, 0, 'en', 'core/media/media', 'downloading', 'Downloading...', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(1050, 0, 'vi', 'core/media/media', 'filter', 'Lọc', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(1051, 0, 'vi', 'core/media/media', 'everything', 'Tất cả', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(1052, 0, 'vi', 'core/media/media', 'image', 'Hình ảnh', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(1053, 0, 'vi', 'core/media/media', 'video', 'Phim', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(1054, 0, 'vi', 'core/media/media', 'document', 'Tài liệu', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(1055, 0, 'vi', 'core/media/media', 'view_in', 'Chế độ xem', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(1056, 0, 'vi', 'core/media/media', 'all_media', 'Tất cả tập tin', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(1057, 0, 'vi', 'core/media/media', 'trash', 'Thùng rác', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(1058, 0, 'vi', 'core/media/media', 'recent', 'Gần đây', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(1059, 0, 'vi', 'core/media/media', 'favorites', 'Được gắn dấu sao', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(1060, 0, 'vi', 'core/media/media', 'upload', 'Tải lên', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(1061, 0, 'vi', 'core/media/media', 'create_folder', 'Tạo thư mục', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(1062, 0, 'vi', 'core/media/media', 'refresh', 'Làm mới', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(1063, 0, 'vi', 'core/media/media', 'empty_trash', 'Dọn thùng rác', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(1064, 0, 'vi', 'core/media/media', 'search_file_and_folder', 'Tìm kiếm tập tin và thư mục', '2021-10-18 20:09:25', '2021-10-18 20:09:49'),
(1065, 0, 'vi', 'core/media/media', 'sort', 'Sắp xếp', '2021-10-18 20:09:26', '2021-10-18 20:09:49'),
(1066, 0, 'vi', 'core/media/media', 'file_name_asc', 'Tên tập tin - ASC', '2021-10-18 20:09:26', '2021-10-18 20:09:49'),
(1067, 0, 'vi', 'core/media/media', 'file_name_desc', 'Tên tập tin - DESC', '2021-10-18 20:09:26', '2021-10-18 20:09:49'),
(1068, 0, 'vi', 'core/media/media', 'uploaded_date_asc', 'Ngày tải lên - ASC', '2021-10-18 20:09:26', '2021-10-18 20:09:49'),
(1069, 0, 'vi', 'core/media/media', 'uploaded_date_desc', 'Ngày tải lên - DESC', '2021-10-18 20:09:26', '2021-10-18 20:09:49'),
(1070, 0, 'vi', 'core/media/media', 'size_asc', 'Kích thước - ASC', '2021-10-18 20:09:26', '2021-10-18 20:09:49'),
(1071, 0, 'vi', 'core/media/media', 'size_desc', 'Kích thước - DESC', '2021-10-18 20:09:26', '2021-10-18 20:09:49'),
(1072, 0, 'vi', 'core/media/media', 'actions', 'Hành động', '2021-10-18 20:09:26', '2021-10-18 20:09:49'),
(1073, 0, 'vi', 'core/media/media', 'nothing_is_selected', 'Không có tập tin nào được chọn', '2021-10-18 20:09:26', '2021-10-18 20:09:49'),
(1074, 0, 'vi', 'core/media/media', 'insert', 'Chèn', '2021-10-18 20:09:26', '2021-10-18 20:09:49'),
(1075, 0, 'vi', 'core/media/media', 'folder_name', 'Tên thư mục', '2021-10-18 20:09:26', '2021-10-18 20:09:49'),
(1076, 0, 'vi', 'core/media/media', 'create', 'Tạo', '2021-10-18 20:09:26', '2021-10-18 20:09:49'),
(1077, 0, 'vi', 'core/media/media', 'rename', 'Đổi tên', '2021-10-18 20:09:26', '2021-10-18 20:09:49'),
(1078, 0, 'vi', 'core/media/media', 'close', 'Đóng', '2021-10-18 20:09:26', '2021-10-18 20:09:49'),
(1079, 0, 'vi', 'core/media/media', 'save_changes', 'Lưu thay đổi', '2021-10-18 20:09:26', '2021-10-18 20:09:49'),
(1080, 0, 'vi', 'core/media/media', 'move_to_trash', 'Đưa vào thùng rác', '2021-10-18 20:09:26', '2021-10-18 20:09:49'),
(1081, 0, 'vi', 'core/media/media', 'confirm_trash', 'Bạn có chắc chắn muốn bỏ những tập tin này vào thùng rác?', '2021-10-18 20:09:26', '2021-10-18 20:09:49'),
(1082, 0, 'vi', 'core/media/media', 'confirm', 'Xác nhận', '2021-10-18 20:09:26', '2021-10-18 20:09:49'),
(1083, 0, 'vi', 'core/media/media', 'confirm_delete', 'Xóa tập tin', '2021-10-18 20:09:26', '2021-10-18 20:09:49'),
(1084, 0, 'vi', 'core/media/media', 'confirm_delete_description', 'Hành động này không thể khôi phục. Bạn có chắc chắn muốn xóa các tập tin này?', '2021-10-18 20:09:26', '2021-10-18 20:09:49'),
(1085, 0, 'vi', 'core/media/media', 'empty_trash_title', 'Dọn sạch thùng rác', '2021-10-18 20:09:26', '2021-10-18 20:09:49'),
(1086, 0, 'vi', 'core/media/media', 'empty_trash_description', 'Hành động này không thể khôi phục. Bạn có chắc chắn muốn dọn sạch thùng rác?', '2021-10-18 20:09:26', '2021-10-18 20:09:49'),
(1087, 0, 'vi', 'core/media/media', 'up_level', 'Quay lại một cấp', '2021-10-18 20:09:26', '2021-10-18 20:09:49'),
(1088, 0, 'vi', 'core/media/media', 'upload_progress', 'Tiến trình tải lên', '2021-10-18 20:09:26', '2021-10-18 20:09:49'),
(1089, 0, 'vi', 'core/media/media', 'folder_created', 'Tạo thư mục thành công!', '2021-10-18 20:09:26', '2021-10-18 20:09:49'),
(1090, 0, 'vi', 'core/media/media', 'gallery', 'Thư viện tập tin', '2021-10-18 20:09:26', '2021-10-18 20:09:49'),
(1091, 0, 'vi', 'core/media/media', 'trash_error', 'Có lỗi khi xóa tập tin/thư mục', '2021-10-18 20:09:26', '2021-10-18 20:09:49'),
(1092, 0, 'vi', 'core/media/media', 'trash_success', 'Xóa tập tin/thư mục thành công!', '2021-10-18 20:09:26', '2021-10-18 20:09:49'),
(1093, 0, 'vi', 'core/media/media', 'restore_error', 'Có lỗi trong quá trình khôi phục', '2021-10-18 20:09:26', '2021-10-18 20:09:49'),
(1094, 0, 'vi', 'core/media/media', 'restore_success', 'Khôi phục thành công!', '2021-10-18 20:09:26', '2021-10-18 20:09:49'),
(1095, 0, 'vi', 'core/media/media', 'copy_success', 'Sao chép thành công!', '2021-10-18 20:09:26', '2021-10-18 20:09:49'),
(1096, 0, 'vi', 'core/media/media', 'delete_success', 'Xóa thành công!', '2021-10-18 20:09:26', '2021-10-18 20:09:49'),
(1097, 0, 'vi', 'core/media/media', 'favorite_success', 'Thêm dấu sao thành công!', '2021-10-18 20:09:26', '2021-10-18 20:09:49'),
(1098, 0, 'vi', 'core/media/media', 'remove_favorite_success', 'Bỏ dấu sao thành công!', '2021-10-18 20:09:26', '2021-10-18 20:09:49'),
(1099, 0, 'vi', 'core/media/media', 'rename_error', 'Có lỗi trong quá trình đổi tên', '2021-10-18 20:09:26', '2021-10-18 20:09:49'),
(1100, 0, 'vi', 'core/media/media', 'rename_success', 'Đổi tên thành công!', '2021-10-18 20:09:26', '2021-10-18 20:09:49'),
(1101, 0, 'vi', 'core/media/media', 'invalid_action', 'Hành động không hợp lệ!', '2021-10-18 20:09:26', '2021-10-18 20:09:49'),
(1102, 0, 'vi', 'core/media/media', 'file_not_exists', 'Tập tin không tồn tại!', '2021-10-18 20:09:26', '2021-10-18 20:09:49'),
(1103, 0, 'vi', 'core/media/media', 'download_file_error', 'Có lỗi trong quá trình tải xuống tập tin!', '2021-10-18 20:09:26', '2021-10-18 20:09:49'),
(1104, 0, 'vi', 'core/media/media', 'missing_zip_archive_extension', 'Hãy bật ZipArchive extension để tải tập tin!', '2021-10-18 20:09:26', '2021-10-18 20:09:49'),
(1105, 0, 'vi', 'core/media/media', 'can_not_download_file', 'Không thể tải tập tin!', '2021-10-18 20:09:26', '2021-10-18 20:09:49'),
(1106, 0, 'vi', 'core/media/media', 'invalid_request', 'Yêu cầu không hợp lệ!', '2021-10-18 20:09:26', '2021-10-18 20:09:49'),
(1107, 0, 'vi', 'core/media/media', 'add_success', 'Thêm thành công!', '2021-10-18 20:09:26', '2021-10-18 20:09:49'),
(1108, 0, 'vi', 'core/media/media', 'file_too_big', 'Tập tin quá lớn. Giới hạn tải lên là :size bytes', '2021-10-18 20:09:26', '2021-10-18 20:09:49'),
(1109, 0, 'vi', 'core/media/media', 'can_not_detect_file_type', 'Loại tập tin không hợp lệ hoặc không thể xác định loại tập tin!', '2021-10-18 20:09:26', '2021-10-18 20:09:49'),
(1110, 0, 'vi', 'core/media/media', 'upload_failed', 'The file is NOT uploaded completely. The server allows max upload file size is :size . Please check your file size OR try to upload again in case of having network errors', '2021-10-18 20:09:26', '2021-10-18 20:09:49'),
(1111, 0, 'vi', 'core/media/media', 'menu_name', 'Quản lý tập tin', '2021-10-18 20:09:26', '2021-10-18 20:09:49'),
(1112, 0, 'vi', 'core/media/media', 'add', 'Thêm tập tin', '2021-10-18 20:09:26', '2021-10-18 20:09:49'),
(1113, 0, 'vi', 'core/media/media', 'javascript.name', 'Tên', '2021-10-18 20:09:26', '2021-10-18 20:09:49'),
(1114, 0, 'vi', 'core/media/media', 'javascript.url', 'Đường dẫn', '2021-10-18 20:09:26', '2021-10-18 20:09:49'),
(1115, 0, 'vi', 'core/media/media', 'javascript.full_url', 'Đường dẫn tuyệt đối', '2021-10-18 20:09:26', '2021-10-18 20:09:49'),
(1116, 0, 'vi', 'core/media/media', 'javascript.size', 'Kích thước', '2021-10-18 20:09:26', '2021-10-18 20:09:49'),
(1117, 0, 'vi', 'core/media/media', 'javascript.mime_type', 'Loại', '2021-10-18 20:09:26', '2021-10-18 20:09:49'),
(1118, 0, 'vi', 'core/media/media', 'javascript.created_at', 'Được tải lên lúc', '2021-10-18 20:09:26', '2021-10-18 20:09:49'),
(1119, 0, 'vi', 'core/media/media', 'javascript.updated_at', 'Được chỉnh sửa lúc', '2021-10-18 20:09:26', '2021-10-18 20:09:49'),
(1120, 0, 'vi', 'core/media/media', 'javascript.nothing_selected', 'Bạn chưa chọn tập tin nào', '2021-10-18 20:09:26', '2021-10-18 20:09:49'),
(1121, 0, 'vi', 'core/media/media', 'javascript.visit_link', 'Mở liên kết', '2021-10-18 20:09:26', '2021-10-18 20:09:49'),
(1122, 0, 'vi', 'core/media/media', 'javascript.no_item.all_media.icon', 'fas fa-cloud-upload-alt', '2021-10-18 20:09:26', '2021-10-18 20:09:49'),
(1123, 0, 'vi', 'core/media/media', 'javascript.no_item.all_media.title', 'Bạn có thể kéo thả tập tin vào đây để tải lên', '2021-10-18 20:09:26', '2021-10-18 20:09:49'),
(1124, 0, 'vi', 'core/media/media', 'javascript.no_item.all_media.message', 'Hoặc có thể bấm nút Tải lên ở phía trên', '2021-10-18 20:09:26', '2021-10-18 20:09:49'),
(1125, 0, 'vi', 'core/media/media', 'javascript.no_item.trash.icon', 'fas fa-trash-alt', '2021-10-18 20:09:26', '2021-10-18 20:09:49'),
(1126, 0, 'vi', 'core/media/media', 'javascript.no_item.trash.title', 'Hiện tại không có tập tin nào trong thùng rác', '2021-10-18 20:09:26', '2021-10-18 20:09:49'),
(1127, 0, 'vi', 'core/media/media', 'javascript.no_item.trash.message', 'Xóa tập tin sẽ đem tập tin lưu vào thùng rác. Xóa tập tin trong thùng rác sẽ xóa vĩnh viễn.', '2021-10-18 20:09:26', '2021-10-18 20:09:49'),
(1128, 0, 'vi', 'core/media/media', 'javascript.no_item.favorites.icon', 'fas fa-star', '2021-10-18 20:09:26', '2021-10-18 20:09:49'),
(1129, 0, 'vi', 'core/media/media', 'javascript.no_item.favorites.title', 'Bạn chưa đặt tập tin nào vào mục yêu thích', '2021-10-18 20:09:26', '2021-10-18 20:09:49'),
(1130, 0, 'vi', 'core/media/media', 'javascript.no_item.favorites.message', 'Thêm tập tin vào mục yêu thích để tìm kiếm chúng dễ dàng sau này.', '2021-10-18 20:09:26', '2021-10-18 20:09:49'),
(1131, 0, 'vi', 'core/media/media', 'javascript.no_item.recent.icon', 'far fa-clock', '2021-10-18 20:09:26', '2021-10-18 20:09:49'),
(1132, 0, 'vi', 'core/media/media', 'javascript.no_item.recent.title', 'Bạn chưa mở tập tin nào.', '2021-10-18 20:09:26', '2021-10-18 20:09:49'),
(1133, 0, 'vi', 'core/media/media', 'javascript.no_item.recent.message', 'Mục này hiển thị các tập tin bạn đã xem gần đây.', '2021-10-18 20:09:26', '2021-10-18 20:09:49'),
(1134, 0, 'vi', 'core/media/media', 'javascript.no_item.default.icon', 'fas fa-sync', '2021-10-18 20:09:26', '2021-10-18 20:09:49'),
(1135, 0, 'vi', 'core/media/media', 'javascript.no_item.default.title', 'Thư mục trống', '2021-10-18 20:09:26', '2021-10-18 20:09:49'),
(1136, 0, 'vi', 'core/media/media', 'javascript.no_item.default.message', 'Thư mục này chưa có tập tin nào', '2021-10-18 20:09:26', '2021-10-18 20:09:49'),
(1137, 0, 'vi', 'core/media/media', 'javascript.clipboard.success', 'Đường dẫn của các tập tin đã được sao chép vào clipboard', '2021-10-18 20:09:26', '2021-10-18 20:09:49'),
(1138, 0, 'vi', 'core/media/media', 'javascript.message.error_header', 'Lỗi', '2021-10-18 20:09:26', '2021-10-18 20:09:49'),
(1139, 0, 'vi', 'core/media/media', 'javascript.message.success_header', 'Thành công', '2021-10-18 20:09:26', '2021-10-18 20:09:49'),
(1140, 0, 'vi', 'core/media/media', 'javascript.download.error', 'Bạn chưa chọn tập tin nào hoặc tập tin này không cho phép tải về', '2021-10-18 20:09:26', '2021-10-18 20:09:49'),
(1141, 0, 'vi', 'core/media/media', 'javascript.actions_list.basic.preview', 'Xem trước', '2021-10-18 20:09:26', '2021-10-18 20:09:49'),
(1142, 0, 'vi', 'core/media/media', 'javascript.actions_list.file.copy_link', 'Sao chép đường dẫn', '2021-10-18 20:09:26', '2021-10-18 20:09:49'),
(1143, 0, 'vi', 'core/media/media', 'javascript.actions_list.file.rename', 'Đổi tên', '2021-10-18 20:09:26', '2021-10-18 20:09:49'),
(1144, 0, 'vi', 'core/media/media', 'javascript.actions_list.file.make_copy', 'Nhân bản', '2021-10-18 20:09:26', '2021-10-18 20:09:49'),
(1145, 0, 'vi', 'core/media/media', 'javascript.actions_list.user.favorite', 'Yêu thích', '2021-10-18 20:09:26', '2021-10-18 20:09:49'),
(1146, 0, 'vi', 'core/media/media', 'javascript.actions_list.user.remove_favorite', 'Xóa khỏi mục yêu thích', '2021-10-18 20:09:26', '2021-10-18 20:09:49'),
(1147, 0, 'vi', 'core/media/media', 'javascript.actions_list.other.download', 'Tải xuống', '2021-10-18 20:09:26', '2021-10-18 20:09:49'),
(1148, 0, 'vi', 'core/media/media', 'javascript.actions_list.other.trash', 'Chuyển vào thùng rác', '2021-10-18 20:09:26', '2021-10-18 20:09:49'),
(1149, 0, 'vi', 'core/media/media', 'javascript.actions_list.other.delete', 'Xóa hoàn toàn', '2021-10-18 20:09:26', '2021-10-18 20:09:49'),
(1150, 0, 'vi', 'core/media/media', 'javascript.actions_list.other.restore', 'Khôi phục', '2021-10-18 20:09:26', '2021-10-18 20:09:49'),
(1151, 0, 'vi', 'core/media/media', 'empty_trash_success', 'Dọn sạch thùng rác thành công', '2021-10-18 20:09:26', '2021-10-18 20:09:49'),
(1152, 0, 'vi', 'core/media/media', 'name_invalid', 'Tên thư mục chứa ký tự không hợp lệ', '2021-10-18 20:09:26', '2021-10-18 20:09:49'),
(1153, 0, 'en', 'core/setting/setting', 'title', 'Settings', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1154, 0, 'en', 'core/setting/setting', 'email_setting_title', 'Email settings', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1155, 0, 'en', 'core/setting/setting', 'general.theme', 'Theme', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1156, 0, 'en', 'core/setting/setting', 'general.description', 'Setting site information', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1157, 0, 'en', 'core/setting/setting', 'general.title', 'General', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1158, 0, 'en', 'core/setting/setting', 'general.general_block', 'General Information', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1159, 0, 'en', 'core/setting/setting', 'general.rich_editor', 'Rich Editor', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1160, 0, 'en', 'core/setting/setting', 'general.site_title', 'Site title', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1161, 0, 'en', 'core/setting/setting', 'general.admin_email', 'Admin Email', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1162, 0, 'en', 'core/setting/setting', 'general.seo_block', 'SEO Configuration', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1163, 0, 'en', 'core/setting/setting', 'general.seo_title', 'SEO Title', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1164, 0, 'en', 'core/setting/setting', 'general.seo_description', 'SEO Description', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1165, 0, 'en', 'core/setting/setting', 'general.webmaster_tools_block', 'Google Webmaster Tools', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1166, 0, 'en', 'core/setting/setting', 'general.google_site_verification', 'Google site verification', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1167, 0, 'en', 'core/setting/setting', 'general.placeholder.site_title', 'Site Title (maximum 120 characters)', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1168, 0, 'en', 'core/setting/setting', 'general.placeholder.admin_email', 'Admin Email', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1169, 0, 'en', 'core/setting/setting', 'general.placeholder.seo_title', 'SEO Title (maximum 120 characters)', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1170, 0, 'en', 'core/setting/setting', 'general.placeholder.seo_description', 'SEO Description (maximum 120 characters)', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1171, 0, 'en', 'core/setting/setting', 'general.placeholder.google_analytics', 'Google Analytics', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1172, 0, 'en', 'core/setting/setting', 'general.placeholder.google_site_verification', 'Google Site Verification', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1173, 0, 'en', 'core/setting/setting', 'general.cache_admin_menu', 'Cache admin menu?', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1174, 0, 'en', 'core/setting/setting', 'general.enable_send_error_reporting_via_email', 'Enable to send error reporting via email?', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1175, 0, 'en', 'core/setting/setting', 'general.time_zone', 'Timezone', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1176, 0, 'en', 'core/setting/setting', 'general.default_admin_theme', 'Default admin theme', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1177, 0, 'en', 'core/setting/setting', 'general.enable_change_admin_theme', 'Enable change admin theme?', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1178, 0, 'en', 'core/setting/setting', 'general.enable', 'Enable', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1179, 0, 'en', 'core/setting/setting', 'general.disable', 'Disable', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1180, 0, 'en', 'core/setting/setting', 'general.enable_cache', 'Enable cache?', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1181, 0, 'en', 'core/setting/setting', 'general.cache_time', 'Cache time (minutes)', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1182, 0, 'en', 'core/setting/setting', 'general.cache_time_site_map', 'Cache Time Site map', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1183, 0, 'en', 'core/setting/setting', 'general.admin_logo', 'Admin logo', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1184, 0, 'en', 'core/setting/setting', 'general.admin_favicon', 'Admin favicon', '2021-10-18 20:09:26', '2021-10-18 20:09:50');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1185, 0, 'en', 'core/setting/setting', 'general.admin_title', 'Admin title', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1186, 0, 'en', 'core/setting/setting', 'general.admin_title_placeholder', 'Title show to tab of browser', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1187, 0, 'en', 'core/setting/setting', 'general.cache_block', 'Cache', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1188, 0, 'en', 'core/setting/setting', 'general.admin_appearance_title', 'Admin appearance', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1189, 0, 'en', 'core/setting/setting', 'general.admin_appearance_description', 'Setting admin appearance such as editor, language...', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1190, 0, 'en', 'core/setting/setting', 'general.seo_block_description', 'Setting site title, site meta description, site keyword for optimize SEO', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1191, 0, 'en', 'core/setting/setting', 'general.webmaster_tools_description', 'Google Webmaster Tools (GWT) is free software that helps you manage the technical side of your website', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1192, 0, 'en', 'core/setting/setting', 'general.cache_description', 'Config cache for system for optimize speed', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1193, 0, 'en', 'core/setting/setting', 'general.yes', 'Yes', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1194, 0, 'en', 'core/setting/setting', 'general.no', 'No', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1195, 0, 'en', 'core/setting/setting', 'general.show_on_front', 'Your homepage displays', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1196, 0, 'en', 'core/setting/setting', 'general.select', '— Select —', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1197, 0, 'en', 'core/setting/setting', 'general.show_site_name', 'Show site name after page title, separate with \"-\"?', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1198, 0, 'en', 'core/setting/setting', 'general.locale', 'Site language', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1199, 0, 'en', 'core/setting/setting', 'general.locale_direction', 'Front site language direction', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1200, 0, 'en', 'core/setting/setting', 'general.admin_locale_direction', 'Admin language direction', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1201, 0, 'en', 'core/setting/setting', 'general.admin_login_screen_backgrounds', 'Login screen backgrounds (~1366x768)', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1202, 0, 'en', 'core/setting/setting', 'email.subject', 'Subject', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1203, 0, 'en', 'core/setting/setting', 'email.content', 'Content', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1204, 0, 'en', 'core/setting/setting', 'email.title', 'Setting for email template', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1205, 0, 'en', 'core/setting/setting', 'email.description', 'Email template using HTML & system variables.', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1206, 0, 'en', 'core/setting/setting', 'email.reset_to_default', 'Reset to default', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1207, 0, 'en', 'core/setting/setting', 'email.back', 'Back to settings', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1208, 0, 'en', 'core/setting/setting', 'email.reset_success', 'Reset back to default successfully', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1209, 0, 'en', 'core/setting/setting', 'email.confirm_reset', 'Confirm reset email template?', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1210, 0, 'en', 'core/setting/setting', 'email.confirm_message', 'Do you really want to reset this email template to default?', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1211, 0, 'en', 'core/setting/setting', 'email.continue', 'Continue', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1212, 0, 'en', 'core/setting/setting', 'email.sender_name', 'Sender name', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1213, 0, 'en', 'core/setting/setting', 'email.sender_name_placeholder', 'Name', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1214, 0, 'en', 'core/setting/setting', 'email.sender_email', 'Sender email', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1215, 0, 'en', 'core/setting/setting', 'email.mailer', 'Mailer', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1216, 0, 'en', 'core/setting/setting', 'email.port', 'Port', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1217, 0, 'en', 'core/setting/setting', 'email.port_placeholder', 'Ex: 587', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1218, 0, 'en', 'core/setting/setting', 'email.host', 'Host', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1219, 0, 'en', 'core/setting/setting', 'email.host_placeholder', 'Ex: smtp.gmail.com', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1220, 0, 'en', 'core/setting/setting', 'email.username', 'Username', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1221, 0, 'en', 'core/setting/setting', 'email.username_placeholder', 'Username to login to mail server', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1222, 0, 'en', 'core/setting/setting', 'email.password', 'Password', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1223, 0, 'en', 'core/setting/setting', 'email.password_placeholder', 'Password to login to mail server', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1224, 0, 'en', 'core/setting/setting', 'email.encryption', 'Encryption', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1225, 0, 'en', 'core/setting/setting', 'email.mail_gun_domain', 'Domain', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1226, 0, 'en', 'core/setting/setting', 'email.mail_gun_domain_placeholder', 'Domain', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1227, 0, 'en', 'core/setting/setting', 'email.mail_gun_secret', 'Secret', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1228, 0, 'en', 'core/setting/setting', 'email.mail_gun_secret_placeholder', 'Secret', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1229, 0, 'en', 'core/setting/setting', 'email.mail_gun_endpoint', 'Endpoint', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1230, 0, 'en', 'core/setting/setting', 'email.mail_gun_endpoint_placeholder', 'Endpoint', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1231, 0, 'en', 'core/setting/setting', 'email.log_channel', 'Log channel', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1232, 0, 'en', 'core/setting/setting', 'email.sendmail_path', 'Sendmail Path', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1233, 0, 'en', 'core/setting/setting', 'email.encryption_placeholder', 'Encryption: ssl or tls', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1234, 0, 'en', 'core/setting/setting', 'email.ses_key', 'Key', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1235, 0, 'en', 'core/setting/setting', 'email.ses_key_placeholder', 'Key', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1236, 0, 'en', 'core/setting/setting', 'email.ses_secret', 'Secret', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1237, 0, 'en', 'core/setting/setting', 'email.ses_secret_placeholder', 'Secret', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1238, 0, 'en', 'core/setting/setting', 'email.ses_region', 'Region', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1239, 0, 'en', 'core/setting/setting', 'email.ses_region_placeholder', 'Region', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1240, 0, 'en', 'core/setting/setting', 'email.postmark_token', 'Token', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1241, 0, 'en', 'core/setting/setting', 'email.postmark_token_placeholder', 'Token', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1242, 0, 'en', 'core/setting/setting', 'email.template_title', 'Email templates', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1243, 0, 'en', 'core/setting/setting', 'email.template_description', 'Base templates for all emails', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1244, 0, 'en', 'core/setting/setting', 'email.template_header', 'Email template header', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1245, 0, 'en', 'core/setting/setting', 'email.template_header_description', 'Template for header of emails', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1246, 0, 'en', 'core/setting/setting', 'email.template_footer', 'Email template footer', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1247, 0, 'en', 'core/setting/setting', 'email.template_footer_description', 'Template for footer of emails', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1248, 0, 'en', 'core/setting/setting', 'email.default', 'Default', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1249, 0, 'en', 'core/setting/setting', 'email.using_queue_to_send_mail', 'Using queue job to send emails (Must to setup Queue first https://laravel.com/docs/queues#supervisor-configuration)', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1250, 0, 'en', 'core/setting/setting', 'media.title', 'Media', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1251, 0, 'en', 'core/setting/setting', 'media.driver', 'Driver', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1252, 0, 'en', 'core/setting/setting', 'media.description', 'Settings for media', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1253, 0, 'en', 'core/setting/setting', 'media.aws_access_key_id', 'AWS Access Key ID', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1254, 0, 'en', 'core/setting/setting', 'media.aws_secret_key', 'AWS Secret Key', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1255, 0, 'en', 'core/setting/setting', 'media.aws_default_region', 'AWS Default Region', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1256, 0, 'en', 'core/setting/setting', 'media.aws_bucket', 'AWS Bucket', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1257, 0, 'en', 'core/setting/setting', 'media.aws_url', 'AWS URL', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1258, 0, 'en', 'core/setting/setting', 'media.do_spaces_access_key_id', 'DO Spaces Access Key ID', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1259, 0, 'en', 'core/setting/setting', 'media.do_spaces_secret_key', 'DO Spaces Secret Key', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1260, 0, 'en', 'core/setting/setting', 'media.do_spaces_default_region', 'DO Spaces Default Region', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1261, 0, 'en', 'core/setting/setting', 'media.do_spaces_bucket', 'DO Spaces Bucket', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1262, 0, 'en', 'core/setting/setting', 'media.do_spaces_endpoint', 'DO Spaces Endpoint', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1263, 0, 'en', 'core/setting/setting', 'media.do_spaces_cdn_enabled', 'Is DO Spaces CDN enabled?', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1264, 0, 'en', 'core/setting/setting', 'media.media_do_spaces_cdn_custom_domain', 'Do Spaces CDN custom domain', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1265, 0, 'en', 'core/setting/setting', 'media.media_do_spaces_cdn_custom_domain_placeholder', 'https://your-custom-domain.com', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1266, 0, 'en', 'core/setting/setting', 'media.wasabi_access_key_id', 'Wasabi Access Key ID', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1267, 0, 'en', 'core/setting/setting', 'media.wasabi_secret_key', 'Wasabi Secret Key', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1268, 0, 'en', 'core/setting/setting', 'media.wasabi_default_region', 'Wasabi Default Region', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1269, 0, 'en', 'core/setting/setting', 'media.wasabi_bucket', 'Wasabi Bucket', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1270, 0, 'en', 'core/setting/setting', 'media.wasabi_root', 'Wasabi Root', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1271, 0, 'en', 'core/setting/setting', 'media.default_placeholder_image', 'Default placeholder image', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1272, 0, 'en', 'core/setting/setting', 'media.enable_chunk', 'Enable chunk size upload?', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1273, 0, 'en', 'core/setting/setting', 'media.chunk_size', 'Chunk size (Bytes)', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1274, 0, 'en', 'core/setting/setting', 'media.chunk_size_placeholder', 'Default: 1048576 ~ 1MB', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1275, 0, 'en', 'core/setting/setting', 'media.max_file_size', 'Chunk max file size (MB)', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1276, 0, 'en', 'core/setting/setting', 'media.max_file_size_placeholder', 'Default: 1048576 ~ 1GB', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1277, 0, 'en', 'core/setting/setting', 'media.enable_watermark', 'Enable watermark?', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1278, 0, 'en', 'core/setting/setting', 'media.watermark_source', 'Watermark image', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1279, 0, 'en', 'core/setting/setting', 'media.watermark_size', 'Size of watermark (%)', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1280, 0, 'en', 'core/setting/setting', 'media.watermark_size_placeholder', 'Default: 10 (%)', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1281, 0, 'en', 'core/setting/setting', 'media.watermark_opacity', 'Watermark Opacity (%)', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1282, 0, 'en', 'core/setting/setting', 'media.watermark_opacity_placeholder', 'Default: 70 (%)', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1283, 0, 'en', 'core/setting/setting', 'media.watermark_position', 'Watermark position', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1284, 0, 'en', 'core/setting/setting', 'media.watermark_position_x', 'Watermark position X', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1285, 0, 'en', 'core/setting/setting', 'media.watermark_position_y', 'Watermark position Y', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1286, 0, 'en', 'core/setting/setting', 'media.watermark_position_top_left', 'Top left', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1287, 0, 'en', 'core/setting/setting', 'media.watermark_position_top_right', 'Top right', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1288, 0, 'en', 'core/setting/setting', 'media.watermark_position_bottom_left', 'Bottom left', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1289, 0, 'en', 'core/setting/setting', 'media.watermark_position_bottom_right', 'Bottom right', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1290, 0, 'en', 'core/setting/setting', 'media.watermark_position_center', 'Center', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1291, 0, 'en', 'core/setting/setting', 'media.turn_off_automatic_url_translation_into_latin', 'Turn off automatic URL translation into Latin?', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1292, 0, 'en', 'core/setting/setting', 'media.bunnycdn_hostname', 'Hostname', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1293, 0, 'en', 'core/setting/setting', 'media.bunnycdn_zone', 'Zone Name (The name of your storage zone)', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1294, 0, 'en', 'core/setting/setting', 'media.bunnycdn_key', 'FTP & API Access Password (The storage zone API Access Password)', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1295, 0, 'en', 'core/setting/setting', 'media.bunnycdn_region', 'Region (The storage zone region)', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1296, 0, 'en', 'core/setting/setting', 'license.purchase_code', 'Purchase code', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1297, 0, 'en', 'core/setting/setting', 'license.buyer', 'Buyer', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1298, 0, 'en', 'core/setting/setting', 'field_type_not_exists', 'This field type does not exist', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1299, 0, 'en', 'core/setting/setting', 'save_settings', 'Save settings', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1300, 0, 'en', 'core/setting/setting', 'template', 'Template', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1301, 0, 'en', 'core/setting/setting', 'description', 'Description', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1302, 0, 'en', 'core/setting/setting', 'enable', 'Enable', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1303, 0, 'en', 'core/setting/setting', 'send', 'Send', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1304, 0, 'en', 'core/setting/setting', 'test_email_description', 'To send test email, please make sure you are updated configuration to send mail!', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1305, 0, 'en', 'core/setting/setting', 'test_email_input_placeholder', 'Enter the email which you want to send test email.', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1306, 0, 'en', 'core/setting/setting', 'test_email_modal_title', 'Send a test email', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1307, 0, 'en', 'core/setting/setting', 'test_send_mail', 'Send test mail', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1308, 0, 'en', 'core/setting/setting', 'test_email_send_success', 'Send email successfully!', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1309, 0, 'en', 'core/setting/setting', 'locale_direction_ltr', 'Left to Right', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1310, 0, 'en', 'core/setting/setting', 'locale_direction_rtl', 'Right to Left', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1311, 0, 'en', 'core/setting/setting', 'saving', 'Saving...', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1312, 0, 'en', 'core/setting/setting', 'emails_warning', 'You can add up to :count emails', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1313, 0, 'en', 'core/setting/setting', 'email_add_more', 'Add more', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1314, 0, 'vi', 'core/setting/setting', 'title', 'Cài đặt', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1315, 0, 'vi', 'core/setting/setting', 'general.theme', 'Giao diện', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1316, 0, 'vi', 'core/setting/setting', 'general.description', 'Cấu hình những thông tin cài đặt website.', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1317, 0, 'vi', 'core/setting/setting', 'general.title', 'Thông tin chung', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1318, 0, 'vi', 'core/setting/setting', 'general.general_block', 'Thông tin chung', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1319, 0, 'vi', 'core/setting/setting', 'general.site_title', 'Tên trang', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1320, 0, 'vi', 'core/setting/setting', 'general.admin_email', 'Email quản trị viên', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1321, 0, 'vi', 'core/setting/setting', 'general.seo_block', 'Cấu hình SEO', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1322, 0, 'vi', 'core/setting/setting', 'general.seo_title', 'Tiêu đề SEO', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1323, 0, 'vi', 'core/setting/setting', 'general.seo_description', 'Mô tả SEO', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1324, 0, 'vi', 'core/setting/setting', 'general.webmaster_tools_block', 'Google Webmaster Tools', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1325, 0, 'vi', 'core/setting/setting', 'general.google_site_verification', 'Google site verification', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1326, 0, 'vi', 'core/setting/setting', 'general.placeholder.site_title', 'Tên trang (tối đa 120 kí tự)', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1327, 0, 'vi', 'core/setting/setting', 'general.placeholder.admin_email', 'Admin Email', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1328, 0, 'vi', 'core/setting/setting', 'general.placeholder.google_analytics', 'Ví dụ: UA-42767940-2', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1329, 0, 'vi', 'core/setting/setting', 'general.placeholder.google_site_verification', 'Mã xác nhận trang web dùng cho Google Webmaster Tool', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1330, 0, 'vi', 'core/setting/setting', 'general.placeholder.seo_title', 'Tiêu đề SEO (tối đa 120 kí tự)', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1331, 0, 'vi', 'core/setting/setting', 'general.placeholder.seo_description', 'Mô tả SEO (tối đa 120 kí tự)', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1332, 0, 'vi', 'core/setting/setting', 'general.enable_change_admin_theme', 'Cho phép thay đổi giao diện quản trị?', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1333, 0, 'vi', 'core/setting/setting', 'general.enable', 'Bật', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1334, 0, 'vi', 'core/setting/setting', 'general.disable', 'Tắt', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1335, 0, 'vi', 'core/setting/setting', 'general.enable_cache', 'Bật bộ nhớ đệm?', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1336, 0, 'vi', 'core/setting/setting', 'general.cache_time', 'Thời gian lưu bộ nhớ đệm', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1337, 0, 'vi', 'core/setting/setting', 'general.cache_time_site_map', 'Thời gian lưu sơ đồ trang trong bộ nhớ đệm', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1338, 0, 'vi', 'core/setting/setting', 'general.admin_logo', 'Logo trang quản trị', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1339, 0, 'vi', 'core/setting/setting', 'general.admin_title', 'Tiêu đề trang quản trị', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1340, 0, 'vi', 'core/setting/setting', 'general.admin_title_placeholder', 'Tiêu đề hiển thị trên thẻ trình duyệt', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1341, 0, 'vi', 'core/setting/setting', 'general.rich_editor', 'Bộ soạn thảo văn bản', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1342, 0, 'vi', 'core/setting/setting', 'general.cache_block', 'Bộ nhớ đệm', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1343, 0, 'vi', 'core/setting/setting', 'general.yes', 'Bật', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1344, 0, 'vi', 'core/setting/setting', 'general.no', 'Tắt', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1345, 0, 'vi', 'core/setting/setting', 'email.subject', 'Tiêu đề', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1346, 0, 'vi', 'core/setting/setting', 'email.content', 'Nội dung', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1347, 0, 'vi', 'core/setting/setting', 'email.title', 'Cấu hình email template', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1348, 0, 'vi', 'core/setting/setting', 'email.description', 'Cấu trúc file template sử dụng HTML và các biến trong hệ thống.', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1349, 0, 'vi', 'core/setting/setting', 'email.reset_to_default', 'Khôi phục về mặc định', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1350, 0, 'vi', 'core/setting/setting', 'email.back', 'Trở lại trang cài đặt', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1351, 0, 'vi', 'core/setting/setting', 'email.reset_success', 'Khôi phục mặc định thành công', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1352, 0, 'vi', 'core/setting/setting', 'email.confirm_reset', 'Xác nhận khôi phục mặc định?', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1353, 0, 'vi', 'core/setting/setting', 'email.confirm_message', 'Bạn có chắc chắn muốn khôi phục về bản mặc định?', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1354, 0, 'vi', 'core/setting/setting', 'email.continue', 'Tiếp tục', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1355, 0, 'vi', 'core/setting/setting', 'email.sender_name', 'Tên người gửi', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1356, 0, 'vi', 'core/setting/setting', 'email.sender_name_placeholder', 'Tên', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1357, 0, 'vi', 'core/setting/setting', 'email.sender_email', 'Email của người gửi', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1358, 0, 'vi', 'core/setting/setting', 'email.port', 'Cổng', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1359, 0, 'vi', 'core/setting/setting', 'email.port_placeholder', 'Ví dụ: 587', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1360, 0, 'vi', 'core/setting/setting', 'email.host', 'Máy chủ', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1361, 0, 'vi', 'core/setting/setting', 'email.host_placeholder', 'Ví dụ: smtp.gmail.com', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1362, 0, 'vi', 'core/setting/setting', 'email.username', 'Tên đăng nhập', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1363, 0, 'vi', 'core/setting/setting', 'email.username_placeholder', 'Tên đăng nhập vào máy chủ mail', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1364, 0, 'vi', 'core/setting/setting', 'email.password', 'Mật khẩu', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1365, 0, 'vi', 'core/setting/setting', 'email.password_placeholder', 'Mật khẩu đăng nhập vào máy chủ mail', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1366, 0, 'vi', 'core/setting/setting', 'email.encryption', 'Mã hoá', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1367, 0, 'vi', 'core/setting/setting', 'email.mail_gun_domain', 'Tên miền', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1368, 0, 'vi', 'core/setting/setting', 'email.mail_gun_domain_placeholder', 'Tên miền', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1369, 0, 'vi', 'core/setting/setting', 'email.mail_gun_secret', 'Chuỗi bí mật', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1370, 0, 'vi', 'core/setting/setting', 'email.mail_gun_secret_placeholder', 'Chuỗi bí mật', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1371, 0, 'vi', 'core/setting/setting', 'email.template_title', 'Mẫu giao diện email', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1372, 0, 'vi', 'core/setting/setting', 'email.template_description', 'Giao diện mặc định cho tất cả email', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1373, 0, 'vi', 'core/setting/setting', 'email.template_header', 'Mẫu cho phần trên của email', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1374, 0, 'vi', 'core/setting/setting', 'email.template_header_description', 'Phần trên của tất cả email', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1375, 0, 'vi', 'core/setting/setting', 'email.template_footer', 'Mẫu cho phần dưới của email', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1376, 0, 'vi', 'core/setting/setting', 'email.template_footer_description', 'Phần dưới của tất cả email', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1377, 0, 'vi', 'core/setting/setting', 'save_settings', 'Lưu cài đặt', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1378, 0, 'vi', 'core/setting/setting', 'template', 'Mẫu', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1379, 0, 'vi', 'core/setting/setting', 'description', 'Mô tả', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1380, 0, 'vi', 'core/setting/setting', 'enable', 'Bật', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1381, 0, 'vi', 'core/setting/setting', 'test_send_mail', 'Gửi thử nghiệm', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1382, 0, 'en', 'core/table/general', 'operations', 'Operations', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1383, 0, 'en', 'core/table/general', 'loading_data', 'Loading data from server', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1384, 0, 'en', 'core/table/general', 'display', 'Display', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1385, 0, 'en', 'core/table/general', 'all', 'All', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1386, 0, 'en', 'core/table/general', 'edit_entry', 'Edit', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1387, 0, 'en', 'core/table/general', 'delete_entry', 'Delete', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1388, 0, 'en', 'core/table/general', 'show_from', 'Showing from', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1389, 0, 'en', 'core/table/general', 'to', 'to', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1390, 0, 'en', 'core/table/general', 'in', 'in', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1391, 0, 'en', 'core/table/general', 'records', 'records', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1392, 0, 'en', 'core/table/general', 'no_data', 'No data to display', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1393, 0, 'en', 'core/table/general', 'no_record', 'No record', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1394, 0, 'en', 'core/table/general', 'loading', 'Loading data from server', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1395, 0, 'en', 'core/table/general', 'confirm_delete', 'Confirm delete', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1396, 0, 'en', 'core/table/general', 'confirm_delete_msg', 'Do you really want to delete this record?', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1397, 0, 'en', 'core/table/general', 'cancel', 'Cancel', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1398, 0, 'en', 'core/table/general', 'delete', 'Delete', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1399, 0, 'en', 'core/table/general', 'close', 'Close', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1400, 0, 'en', 'core/table/general', 'contains', 'Contains', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1401, 0, 'en', 'core/table/general', 'is_equal_to', 'Is equal to', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1402, 0, 'en', 'core/table/general', 'greater_than', 'Greater than', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1403, 0, 'en', 'core/table/general', 'less_than', 'Less than', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1404, 0, 'en', 'core/table/general', 'value', 'Value', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1405, 0, 'en', 'core/table/general', 'select_field', 'Select field', '2021-10-18 20:09:26', '2021-10-18 20:09:50'),
(1406, 0, 'en', 'core/table/general', 'reset', 'Reset', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1407, 0, 'en', 'core/table/general', 'add_additional_filter', 'Add additional filter', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1408, 0, 'en', 'core/table/general', 'apply', 'Apply', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1409, 0, 'en', 'core/table/general', 'filters', 'Filters', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1410, 0, 'en', 'core/table/general', 'bulk_change', 'Bulk changes', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1411, 0, 'en', 'core/table/general', 'select_option', 'Select option', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1412, 0, 'en', 'core/table/general', 'bulk_actions', 'Bulk Actions', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1413, 0, 'en', 'core/table/general', 'save_bulk_change_success', 'Update data for selected record(s) successfully!', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1414, 0, 'en', 'core/table/general', 'please_select_record', 'Please select at least one record to perform this action!', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1415, 0, 'en', 'core/table/general', 'filtered', '(filtered from _MAX_ total records)', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1416, 0, 'en', 'core/table/general', 'search', 'Search...', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1417, 0, 'en', 'core/table/table', 'operations', 'Operations', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1418, 0, 'en', 'core/table/table', 'loading_data', 'Loading data from server', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1419, 0, 'en', 'core/table/table', 'display', 'Display', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1420, 0, 'en', 'core/table/table', 'all', 'All', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1421, 0, 'en', 'core/table/table', 'edit_entry', 'Edit', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1422, 0, 'en', 'core/table/table', 'delete_entry', 'Delete', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1423, 0, 'en', 'core/table/table', 'show_from', 'Showing from', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1424, 0, 'en', 'core/table/table', 'to', 'to', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1425, 0, 'en', 'core/table/table', 'in', 'in', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1426, 0, 'en', 'core/table/table', 'records', 'records', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1427, 0, 'en', 'core/table/table', 'no_data', 'No data to display', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1428, 0, 'en', 'core/table/table', 'no_record', 'No record', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1429, 0, 'en', 'core/table/table', 'loading', 'Loading data from server', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1430, 0, 'en', 'core/table/table', 'confirm_delete', 'Confirm delete', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1431, 0, 'en', 'core/table/table', 'confirm_delete_msg', 'Do you really want to delete this record?', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1432, 0, 'en', 'core/table/table', 'cancel', 'Cancel', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1433, 0, 'en', 'core/table/table', 'delete', 'Delete', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1434, 0, 'en', 'core/table/table', 'close', 'Close', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1435, 0, 'en', 'core/table/table', 'contains', 'Contains', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1436, 0, 'en', 'core/table/table', 'is_equal_to', 'Is equal to', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1437, 0, 'en', 'core/table/table', 'greater_than', 'Greater than', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1438, 0, 'en', 'core/table/table', 'less_than', 'Less than', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1439, 0, 'en', 'core/table/table', 'value', 'Value', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1440, 0, 'en', 'core/table/table', 'select_field', 'Select field', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1441, 0, 'en', 'core/table/table', 'reset', 'Reset', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1442, 0, 'en', 'core/table/table', 'add_additional_filter', 'Add additional filter', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1443, 0, 'en', 'core/table/table', 'apply', 'Apply', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1444, 0, 'en', 'core/table/table', 'filters', 'Filters', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1445, 0, 'en', 'core/table/table', 'bulk_change', 'Bulk changes', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1446, 0, 'en', 'core/table/table', 'select_option', 'Select option', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1447, 0, 'en', 'core/table/table', 'bulk_actions', 'Bulk Actions', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1448, 0, 'en', 'core/table/table', 'save_bulk_change_success', 'Update data for selected record(s) successfully!', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1449, 0, 'en', 'core/table/table', 'please_select_record', 'Please select at least one record to perform this action!', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1450, 0, 'en', 'core/table/table', 'filtered', '(filtered from _MAX_ total records)', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1451, 0, 'en', 'core/table/table', 'search', 'Search...', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1452, 0, 'vi', 'core/table/general', 'operations', 'Hành động', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1453, 0, 'vi', 'core/table/general', 'loading_data', 'Đang tải dữ liệu từ hệ thống', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1454, 0, 'vi', 'core/table/general', 'display', 'Hiển thị', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1455, 0, 'vi', 'core/table/general', 'all', 'Tất cả', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1456, 0, 'vi', 'core/table/general', 'edit_entry', 'Sửa', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1457, 0, 'vi', 'core/table/general', 'delete_entry', 'Xoá', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1458, 0, 'vi', 'core/table/general', 'show_from', 'Hiển thị từ', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1459, 0, 'vi', 'core/table/general', 'to', 'đến', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1460, 0, 'vi', 'core/table/general', 'in', 'trong tổng số', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1461, 0, 'vi', 'core/table/general', 'records', 'bản ghi', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1462, 0, 'vi', 'core/table/general', 'no_data', 'Không có dữ liệu để hiển thị', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1463, 0, 'vi', 'core/table/general', 'no_record', 'không có bản ghi nào', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1464, 0, 'vi', 'core/table/general', 'loading', 'Đang tải dữ liệu từ hệ thống', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1465, 0, 'vi', 'core/table/general', 'confirm_delete', 'Xác nhận xoá', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1466, 0, 'vi', 'core/table/general', 'confirm_delete_msg', 'Bạn có chắc chắn muốn xoá bản ghi này?', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1467, 0, 'vi', 'core/table/general', 'cancel', 'Huỷ bỏ', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1468, 0, 'vi', 'core/table/general', 'delete', 'Xoá', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1469, 0, 'vi', 'core/table/general', 'close', 'Đóng', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1470, 0, 'vi', 'core/table/general', 'is_equal_to', 'Bằng với', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1471, 0, 'vi', 'core/table/general', 'greater_than', 'Lớn hơn', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1472, 0, 'vi', 'core/table/general', 'less_than', 'Nhỏ hơn', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1473, 0, 'vi', 'core/table/general', 'value', 'Giá trị', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1474, 0, 'vi', 'core/table/general', 'select_field', 'Chọn trường', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1475, 0, 'vi', 'core/table/general', 'reset', 'Làm mới', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1476, 0, 'vi', 'core/table/general', 'add_additional_filter', 'Thêm bộ lọc', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1477, 0, 'vi', 'core/table/general', 'apply', 'Áp dụng', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1478, 0, 'vi', 'core/table/general', 'select_option', 'Lựa chọn', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1479, 0, 'vi', 'core/table/general', 'filters', 'Lọc dữ liệu', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1480, 0, 'vi', 'core/table/general', 'bulk_change', 'Thay đổi hàng loạt', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1481, 0, 'vi', 'core/table/general', 'bulk_actions', 'Hành động', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1482, 0, 'vi', 'core/table/general', 'contains', 'Bao gồm', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1483, 0, 'vi', 'core/table/general', 'filtered', '(đã được lọc từ _MAX_ bản ghi)', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1484, 0, 'en', 'packages/menu/menu', 'name', 'Menus', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1485, 0, 'en', 'packages/menu/menu', 'key_name', 'Menu name (key: :key)', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1486, 0, 'en', 'packages/menu/menu', 'basic_info', 'Basic information', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1487, 0, 'en', 'packages/menu/menu', 'add_to_menu', 'Add to menu', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1488, 0, 'en', 'packages/menu/menu', 'custom_link', 'Custom link', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1489, 0, 'en', 'packages/menu/menu', 'add_link', 'Add link', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1490, 0, 'en', 'packages/menu/menu', 'structure', 'Menu structure', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1491, 0, 'en', 'packages/menu/menu', 'remove', 'Remove', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1492, 0, 'en', 'packages/menu/menu', 'cancel', 'Cancel', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1493, 0, 'en', 'packages/menu/menu', 'title', 'Title', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1494, 0, 'en', 'packages/menu/menu', 'icon', 'Icon', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1495, 0, 'en', 'packages/menu/menu', 'url', 'URL', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1496, 0, 'en', 'packages/menu/menu', 'target', 'Target', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1497, 0, 'en', 'packages/menu/menu', 'css_class', 'CSS class', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1498, 0, 'en', 'packages/menu/menu', 'self_open_link', 'Open link directly', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1499, 0, 'en', 'packages/menu/menu', 'blank_open_link', 'Open link in new tab', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1500, 0, 'en', 'packages/menu/menu', 'create', 'Create menu', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1501, 0, 'en', 'packages/menu/menu', 'edit', 'Edit menu', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1502, 0, 'en', 'packages/menu/menu', 'menu_settings', 'Menu settings', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1503, 0, 'en', 'packages/menu/menu', 'display_location', 'Display location', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1504, 0, 'vi', 'packages/menu/menu', 'name', 'Menu', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1505, 0, 'vi', 'packages/menu/menu', 'cancel', 'Hủy bỏ', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1506, 0, 'vi', 'packages/menu/menu', 'add_link', 'Thêm liên kết', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1507, 0, 'vi', 'packages/menu/menu', 'add_to_menu', 'Thêm vào trình đơn', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1508, 0, 'vi', 'packages/menu/menu', 'basic_info', 'Thông tin cơ bản', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1509, 0, 'vi', 'packages/menu/menu', 'blank_open_link', 'Mở liên kết trong tab mới', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1510, 0, 'vi', 'packages/menu/menu', 'css_class', 'CSS class', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1511, 0, 'vi', 'packages/menu/menu', 'custom_link', 'Liên kết tùy chọn', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1512, 0, 'vi', 'packages/menu/menu', 'icon', 'Biểu tượng', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1513, 0, 'vi', 'packages/menu/menu', 'key_name', 'Tên menu (key::key)', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1514, 0, 'vi', 'packages/menu/menu', 'remove', 'Xóa', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1515, 0, 'vi', 'packages/menu/menu', 'self_open_link', 'Mở liên kết trong tab hiện tại', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1516, 0, 'vi', 'packages/menu/menu', 'structure', 'Cấu trúc trình đơn', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1517, 0, 'vi', 'packages/menu/menu', 'target', 'Target', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1518, 0, 'vi', 'packages/menu/menu', 'title', 'Tiêu đề', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1519, 0, 'vi', 'packages/menu/menu', 'url', 'URL', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1520, 0, 'vi', 'packages/menu/menu', 'create', 'Tạo trình đơn', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1521, 0, 'vi', 'packages/menu/menu', 'edit', 'Sửa trình đơn', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1522, 0, 'en', 'packages/page/pages', 'create', 'Create new page', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1523, 0, 'en', 'packages/page/pages', 'edit', 'Edit page', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1524, 0, 'en', 'packages/page/pages', 'form.name', 'Name', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1525, 0, 'en', 'packages/page/pages', 'form.name_placeholder', 'Page\'s name (Maximum 120 characters)', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1526, 0, 'en', 'packages/page/pages', 'form.content', 'Content', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1527, 0, 'en', 'packages/page/pages', 'form.note', 'Note content', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1528, 0, 'en', 'packages/page/pages', 'notices.no_select', 'Please select at least one record to take this action!', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1529, 0, 'en', 'packages/page/pages', 'notices.update_success_message', 'Update successfully', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1530, 0, 'en', 'packages/page/pages', 'cannot_delete', 'Page could not be deleted', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1531, 0, 'en', 'packages/page/pages', 'deleted', 'Page deleted', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1532, 0, 'en', 'packages/page/pages', 'pages', 'Pages', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1533, 0, 'en', 'packages/page/pages', 'menu', 'Pages', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1534, 0, 'en', 'packages/page/pages', 'menu_name', 'Pages', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1535, 0, 'en', 'packages/page/pages', 'edit_this_page', 'Edit this page', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1536, 0, 'en', 'packages/page/pages', 'total_pages', 'Total pages', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1537, 0, 'en', 'packages/page/pages', 'settings.show_on_front', 'Your homepage displays', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1538, 0, 'en', 'packages/page/pages', 'settings.select', '— Select —', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1539, 0, 'en', 'packages/page/pages', 'front_page', 'Front Page', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1540, 0, 'vi', 'packages/page/pages', 'create', 'Thêm trang', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1541, 0, 'vi', 'packages/page/pages', 'edit', 'Sửa trang', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1542, 0, 'vi', 'packages/page/pages', 'form.name', 'Tiêu đề trang', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1543, 0, 'vi', 'packages/page/pages', 'form.note', 'Nội dung ghi chú', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1544, 0, 'vi', 'packages/page/pages', 'form.name_placeholder', 'Tên trang (tối đa 120 kí tự)', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1545, 0, 'vi', 'packages/page/pages', 'form.content', 'Nội dung', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1546, 0, 'vi', 'packages/page/pages', 'notices.no_select', 'Chọn ít nhất 1 trang để thực hiện hành động này!', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1547, 0, 'vi', 'packages/page/pages', 'notices.update_success_message', 'Cập nhật thành công', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1548, 0, 'vi', 'packages/page/pages', 'deleted', 'Xóa trang thành công', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1549, 0, 'vi', 'packages/page/pages', 'cannot_delete', 'Không thể xóa trang', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1550, 0, 'vi', 'packages/page/pages', 'menu', 'Trang', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1551, 0, 'vi', 'packages/page/pages', 'menu_name', 'Trang', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1552, 0, 'vi', 'packages/page/pages', 'edit_this_page', 'Sửa trang này', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1553, 0, 'vi', 'packages/page/pages', 'pages', 'Trang', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1554, 0, 'en', 'packages/plugin-management/plugin', 'enabled', 'Enabled', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1555, 0, 'en', 'packages/plugin-management/plugin', 'deactivated', 'Deactivated', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1556, 0, 'en', 'packages/plugin-management/plugin', 'activated', 'Activated', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1557, 0, 'en', 'packages/plugin-management/plugin', 'activate', 'Activate', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1558, 0, 'en', 'packages/plugin-management/plugin', 'deactivate', 'Deactivate', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1559, 0, 'en', 'packages/plugin-management/plugin', 'author', 'By', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1560, 0, 'en', 'packages/plugin-management/plugin', 'update_plugin_status_success', 'Update plugin successfully', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1561, 0, 'en', 'packages/plugin-management/plugin', 'plugins', 'Plugins', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1562, 0, 'en', 'packages/plugin-management/plugin', 'missing_required_plugins', 'Please activate plugin(s): :plugins before activate this plugin!', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1563, 0, 'en', 'packages/plugin-management/plugin', 'remove', 'Remove', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1564, 0, 'en', 'packages/plugin-management/plugin', 'remove_plugin_success', 'Remove plugin successfully!', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1565, 0, 'en', 'packages/plugin-management/plugin', 'remove_plugin', 'Remove plugin', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1566, 0, 'en', 'packages/plugin-management/plugin', 'remove_plugin_confirm_message', 'Do you really want to remove this plugin?', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1567, 0, 'en', 'packages/plugin-management/plugin', 'remove_plugin_confirm_yes', 'Yes, remove it!', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1568, 0, 'en', 'packages/plugin-management/plugin', 'total_plugins', 'Total plugins', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1569, 0, 'en', 'packages/plugin-management/plugin', 'invalid_plugin', 'This plugin is not a valid plugin, please check it again!', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1570, 0, 'en', 'packages/plugin-management/plugin', 'version', 'Version', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1571, 0, 'en', 'packages/plugin-management/plugin', 'invalid_json', 'Invalid plugin.json!', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1572, 0, 'en', 'packages/plugin-management/plugin', 'activate_success', 'Activate plugin successfully!', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1573, 0, 'en', 'packages/plugin-management/plugin', 'activated_already', 'This plugin is activated already!', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1574, 0, 'en', 'packages/plugin-management/plugin', 'plugin_not_exist', 'This plugin is not exists.', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1575, 0, 'en', 'packages/plugin-management/plugin', 'missing_json_file', 'Missing file plugin.json!', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1576, 0, 'en', 'packages/plugin-management/plugin', 'plugin_invalid', 'Plugin is valid!', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1577, 0, 'en', 'packages/plugin-management/plugin', 'published_assets_success', 'Publish assets for plugin :name successfully!', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1578, 0, 'en', 'packages/plugin-management/plugin', 'plugin_removed', 'Plugin has been removed!', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1579, 0, 'en', 'packages/plugin-management/plugin', 'deactivated_success', 'Deactivate plugin successfully!', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1580, 0, 'en', 'packages/plugin-management/plugin', 'deactivated_already', 'This plugin is deactivated already!', '2021-10-18 20:09:27', '2021-10-18 20:09:50');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1581, 0, 'en', 'packages/plugin-management/plugin', 'folder_is_not_writeable', 'Cannot write files! Folder :name is not writable. Please chmod to make it writable!', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1582, 0, 'en', 'packages/plugin-management/plugin', 'plugin_is_not_ready', 'Plugin :name is not ready to use', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1583, 0, 'vi', 'packages/plugin-management/plugin', 'activate', 'Kích hoạt', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1584, 0, 'vi', 'packages/plugin-management/plugin', 'author', 'Tác giả', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1585, 0, 'vi', 'packages/plugin-management/plugin', 'version', 'Phiên bản', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1586, 0, 'vi', 'packages/plugin-management/plugin', 'activated', 'Đã kích hoạt', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1587, 0, 'vi', 'packages/plugin-management/plugin', 'deactivate', 'Hủy kích hoạt', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1588, 0, 'vi', 'packages/plugin-management/plugin', 'deactivated', 'Đã vô hiệu', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1589, 0, 'vi', 'packages/plugin-management/plugin', 'enabled', 'Kích hoạt', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1590, 0, 'vi', 'packages/plugin-management/plugin', 'invalid_plugin', 'Gói mở rộng không hợp lệ', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1591, 0, 'vi', 'packages/plugin-management/plugin', 'update_plugin_status_success', 'Cập nhật trạng thái gói mở rộng thành công', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1592, 0, 'vi', 'packages/plugin-management/plugin', 'missing_required_plugins', 'Vui lòng kích hoạt các tiện ích mở rộng :plugins trước khi kích hoạt tiện ích này', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1593, 0, 'vi', 'packages/plugin-management/plugin', 'plugins', 'Tiện ích mở rộng', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1594, 0, 'en', 'packages/seo-helper/seo-helper', 'meta_box_header', 'Search Engine Optimize', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1595, 0, 'en', 'packages/seo-helper/seo-helper', 'edit_seo_meta', 'Edit SEO meta', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1596, 0, 'en', 'packages/seo-helper/seo-helper', 'default_description', 'Setup meta title & description to make your site easy to discovered on search engines such as Google', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1597, 0, 'en', 'packages/seo-helper/seo-helper', 'seo_title', 'SEO Title', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1598, 0, 'en', 'packages/seo-helper/seo-helper', 'seo_description', 'SEO description', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1599, 0, 'vi', 'packages/seo-helper/seo-helper', 'meta_box_header', 'Tối ưu hoá bộ máy tìm kiếm (SEO)', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1600, 0, 'vi', 'packages/seo-helper/seo-helper', 'edit_seo_meta', 'Chỉnh sửa SEO', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1601, 0, 'vi', 'packages/seo-helper/seo-helper', 'default_description', 'Thiết lập các thẻ mô tả giúp người dùng dễ dàng tìm thấy trên công cụ tìm kiếm như Google.', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1602, 0, 'vi', 'packages/seo-helper/seo-helper', 'seo_title', 'Tiêu đề trang', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1603, 0, 'vi', 'packages/seo-helper/seo-helper', 'seo_description', 'Mô tả trang', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1604, 0, 'en', 'packages/slug/slug', 'permalink_settings', 'Permalink', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1605, 0, 'en', 'packages/slug/slug', 'settings.title', 'Permalink settings', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1606, 0, 'en', 'packages/slug/slug', 'settings.description', 'Manage permalink for all modules.', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1607, 0, 'en', 'packages/slug/slug', 'settings.preview', 'Preview', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1608, 0, 'en', 'packages/slug/slug', 'settings.turn_off_automatic_url_translation_into_latin', 'Turn off automatic URL translation into Latin?', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1609, 0, 'en', 'packages/slug/slug', 'preview', 'Preview', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1610, 0, 'en', 'packages/theme/theme', 'name', 'Themes', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1611, 0, 'en', 'packages/theme/theme', 'theme', 'Theme', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1612, 0, 'en', 'packages/theme/theme', 'author', 'Author', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1613, 0, 'en', 'packages/theme/theme', 'version', 'Version', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1614, 0, 'en', 'packages/theme/theme', 'description', 'Description', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1615, 0, 'en', 'packages/theme/theme', 'active_success', 'Activate theme :name successfully!', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1616, 0, 'en', 'packages/theme/theme', 'active', 'Active', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1617, 0, 'en', 'packages/theme/theme', 'activated', 'Activated', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1618, 0, 'en', 'packages/theme/theme', 'appearance', 'Appearance', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1619, 0, 'en', 'packages/theme/theme', 'theme_options', 'Theme options', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1620, 0, 'en', 'packages/theme/theme', 'save_changes', 'Save Changes', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1621, 0, 'en', 'packages/theme/theme', 'developer_mode', 'Developer Mode Enabled', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1622, 0, 'en', 'packages/theme/theme', 'custom_css', 'Custom CSS', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1623, 0, 'en', 'packages/theme/theme', 'custom_js', 'Custom JS', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1624, 0, 'en', 'packages/theme/theme', 'custom_header_js', 'Header JS', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1625, 0, 'en', 'packages/theme/theme', 'custom_header_js_placeholder', 'JS in header of page, wrap it inside &#x3C;script&#x3E;&#x3C;/script&#x3E;', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1626, 0, 'en', 'packages/theme/theme', 'custom_body_js', 'Body JS', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1627, 0, 'en', 'packages/theme/theme', 'custom_body_js_placeholder', 'JS in body of page, wrap it inside &#x3C;script&#x3E;&#x3C;/script&#x3E;', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1628, 0, 'en', 'packages/theme/theme', 'custom_footer_js', 'Footer JS', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1629, 0, 'en', 'packages/theme/theme', 'custom_footer_js_placeholder', 'JS in footer of page, wrap it inside &#x3C;script&#x3E;&#x3C;/script&#x3E;', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1630, 0, 'en', 'packages/theme/theme', 'remove_theme_success', 'Remove theme successfully!', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1631, 0, 'en', 'packages/theme/theme', 'theme_is_not_existed', 'This theme is not existed!', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1632, 0, 'en', 'packages/theme/theme', 'remove', 'Remove', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1633, 0, 'en', 'packages/theme/theme', 'remove_theme', 'Remove theme', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1634, 0, 'en', 'packages/theme/theme', 'remove_theme_confirm_message', 'Do you really want to remove this theme?', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1635, 0, 'en', 'packages/theme/theme', 'remove_theme_confirm_yes', 'Yes, remove it!', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1636, 0, 'en', 'packages/theme/theme', 'total_themes', 'Total themes', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1637, 0, 'en', 'packages/theme/theme', 'show_admin_bar', 'Show admin bar (When admin logged in, still show admin bar in website)?', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1638, 0, 'en', 'packages/theme/theme', 'settings.title', 'Theme', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1639, 0, 'en', 'packages/theme/theme', 'settings.description', 'Setting for theme', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1640, 0, 'en', 'packages/theme/theme', 'add_new', 'Add new', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1641, 0, 'en', 'packages/theme/theme', 'theme_activated_already', 'Theme \":name\" is activated already!', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1642, 0, 'en', 'packages/theme/theme', 'missing_json_file', 'Missing file theme.json!', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1643, 0, 'en', 'packages/theme/theme', 'theme_invalid', 'Theme is valid!', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1644, 0, 'en', 'packages/theme/theme', 'published_assets_success', 'Publish assets for :themes successfully!', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1645, 0, 'en', 'packages/theme/theme', 'cannot_remove_theme', 'Cannot remove activated theme, please activate another theme before removing \":name\"!', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1646, 0, 'en', 'packages/theme/theme', 'theme_deleted', 'Theme \":name\" has been destroyed.', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1647, 0, 'en', 'packages/theme/theme', 'removed_assets', 'Remove assets of a theme :name successfully!', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1648, 0, 'en', 'packages/theme/theme', 'update_custom_css_success', 'Update custom CSS successfully!', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1649, 0, 'en', 'packages/theme/theme', 'update_custom_js_success', 'Update custom JS successfully!', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1650, 0, 'en', 'packages/theme/theme', 'go_to_dashboard', 'Go to dashboard', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1651, 0, 'en', 'packages/theme/theme', 'custom_css_placeholder', 'Using Ctrl + Space to autocomplete.', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1652, 0, 'en', 'packages/theme/theme', 'theme_option_general', 'General', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1653, 0, 'en', 'packages/theme/theme', 'theme_option_general_description', 'General settings', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1654, 0, 'en', 'packages/theme/theme', 'theme_option_seo_open_graph_image', 'SEO default Open Graph image', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1655, 0, 'en', 'packages/theme/theme', 'theme_option_logo', 'Logo', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1656, 0, 'en', 'packages/theme/theme', 'theme_option_favicon', 'Favicon', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1657, 0, 'en', 'packages/theme/theme', 'folder_is_not_writeable', 'Cannot write files! Folder :name is not writable. Please chmod to make it writable!', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1658, 0, 'vi', 'packages/theme/theme', 'activated', 'Đã kích hoạt', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1659, 0, 'vi', 'packages/theme/theme', 'active', 'Kích hoạt', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1660, 0, 'vi', 'packages/theme/theme', 'active_success', 'Kích hoạt giao diện thành công!', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1661, 0, 'vi', 'packages/theme/theme', 'author', 'Tác giả', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1662, 0, 'vi', 'packages/theme/theme', 'description', 'Mô tả', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1663, 0, 'vi', 'packages/theme/theme', 'theme', 'Giao diện', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1664, 0, 'vi', 'packages/theme/theme', 'theme_options', 'Tuỳ chọn giao diện', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1665, 0, 'vi', 'packages/theme/theme', 'version', 'Phiên bản', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1666, 0, 'vi', 'packages/theme/theme', 'save_changes', 'Lưu thay đổi', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1667, 0, 'vi', 'packages/theme/theme', 'developer_mode', 'Đang kích hoạt chế độ thử nghiệm', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1668, 0, 'vi', 'packages/theme/theme', 'custom_css', 'Tuỳ chỉnh CSS', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1669, 0, 'en', 'packages/widget/global', 'name', 'Widgets', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1670, 0, 'en', 'packages/widget/global', 'create', 'New widget', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1671, 0, 'en', 'packages/widget/global', 'edit', 'Edit widget', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1672, 0, 'en', 'packages/widget/global', 'delete', 'Delete', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1673, 0, 'en', 'packages/widget/global', 'available', 'Available Widgets', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1674, 0, 'en', 'packages/widget/global', 'instruction', 'To activate a widget drag it to a sidebar or click on it. To deactivate a widget and delete its settings, drag it back.', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1675, 0, 'en', 'packages/widget/global', 'number_tag_display', 'Number tags will be display', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1676, 0, 'en', 'packages/widget/global', 'number_post_display', 'Number posts will be display', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1677, 0, 'en', 'packages/widget/global', 'select_menu', 'Select Menu', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1678, 0, 'en', 'packages/widget/global', 'widget_text', 'Text', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1679, 0, 'en', 'packages/widget/global', 'widget_text_description', 'Arbitrary text or HTML.', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1680, 0, 'en', 'packages/widget/global', 'widget_recent_post', 'Recent Posts', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1681, 0, 'en', 'packages/widget/global', 'widget_recent_post_description', 'Recent posts widget.', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1682, 0, 'en', 'packages/widget/global', 'widget_custom_menu', 'Custom Menu', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1683, 0, 'en', 'packages/widget/global', 'widget_custom_menu_description', 'Add a custom menu to your widget area.', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1684, 0, 'en', 'packages/widget/global', 'widget_tag', 'Tags', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1685, 0, 'en', 'packages/widget/global', 'widget_tag_description', 'Popular tags', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1686, 0, 'en', 'packages/widget/global', 'save_success', 'Save widget successfully!', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1687, 0, 'en', 'packages/widget/global', 'delete_success', 'Delete widget successfully!', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1688, 0, 'en', 'packages/widget/widget', 'name', 'Widgets', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1689, 0, 'en', 'packages/widget/widget', 'create', 'New widget', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1690, 0, 'en', 'packages/widget/widget', 'edit', 'Edit widget', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1691, 0, 'en', 'packages/widget/widget', 'delete', 'Delete', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1692, 0, 'en', 'packages/widget/widget', 'available', 'Available Widgets', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1693, 0, 'en', 'packages/widget/widget', 'instruction', 'To activate a widget drag it to a sidebar or click on it. To deactivate a widget and delete its settings, drag it back.', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1694, 0, 'en', 'packages/widget/widget', 'number_tag_display', 'Number tags will be display', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1695, 0, 'en', 'packages/widget/widget', 'number_post_display', 'Number posts will be display', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1696, 0, 'en', 'packages/widget/widget', 'select_menu', 'Select Menu', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1697, 0, 'en', 'packages/widget/widget', 'widget_text', 'Text', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1698, 0, 'en', 'packages/widget/widget', 'widget_text_description', 'Arbitrary text or HTML.', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1699, 0, 'en', 'packages/widget/widget', 'widget_recent_post', 'Recent Posts', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1700, 0, 'en', 'packages/widget/widget', 'widget_recent_post_description', 'Recent posts widget.', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1701, 0, 'en', 'packages/widget/widget', 'widget_custom_menu', 'Custom Menu', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1702, 0, 'en', 'packages/widget/widget', 'widget_custom_menu_description', 'Add a custom menu to your widget area.', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1703, 0, 'en', 'packages/widget/widget', 'widget_tag', 'Tags', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1704, 0, 'en', 'packages/widget/widget', 'widget_tag_description', 'Popular tags', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1705, 0, 'en', 'packages/widget/widget', 'save_success', 'Save widget successfully!', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1706, 0, 'en', 'packages/widget/widget', 'delete_success', 'Delete widget successfully!', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1707, 0, 'en', 'packages/widget/widget', 'primary_sidebar_name', 'Primary sidebar', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1708, 0, 'en', 'packages/widget/widget', 'primary_sidebar_description', 'Primary sidebar section', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1709, 0, 'vi', 'packages/widget/global', 'name', 'Widgets', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1710, 0, 'vi', 'packages/widget/global', 'create', 'New widget', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1711, 0, 'vi', 'packages/widget/global', 'edit', 'Edit widget', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1712, 0, 'vi', 'packages/widget/global', 'available', 'Tiện ích có sẵn', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1713, 0, 'vi', 'packages/widget/global', 'delete', 'Xóa', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1714, 0, 'vi', 'packages/widget/global', 'instruction', 'Để kích hoạt tiện ích, hãy kéo nó vào sidebar hoặc nhấn vào nó. Để hủy kích hoạt tiện ích và xóa các thiết lập của tiện ích, kéo nó quay trở lại.', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1715, 0, 'vi', 'packages/widget/global', 'number_post_display', 'Số bài viết sẽ hiển thị', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1716, 0, 'vi', 'packages/widget/global', 'number_tag_display', 'Số thẻ sẽ hiển thị', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1717, 0, 'vi', 'packages/widget/global', 'select_menu', 'Lựa chọn trình đơn', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1718, 0, 'vi', 'packages/widget/global', 'widget_custom_menu', 'Menu tùy chỉnh', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1719, 0, 'vi', 'packages/widget/global', 'widget_custom_menu_description', 'Thêm menu tùy chỉnh vào khu vực tiện ích của bạn', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1720, 0, 'vi', 'packages/widget/global', 'widget_recent_post', 'Bài viết gần đây', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1721, 0, 'vi', 'packages/widget/global', 'widget_recent_post_description', 'Tiện ích bài viết gần đây', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1722, 0, 'vi', 'packages/widget/global', 'widget_tag', 'Thẻ', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1723, 0, 'vi', 'packages/widget/global', 'widget_tag_description', 'Thẻ phổ biến, sử dụng nhiều', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1724, 0, 'vi', 'packages/widget/global', 'widget_text', 'Văn bản', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1725, 0, 'vi', 'packages/widget/global', 'widget_text_description', 'Văn bản tùy ý hoặc HTML.', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1726, 0, 'vi', 'packages/widget/global', 'delete_success', 'Xoá tiện ích thành công', '2021-10-18 20:09:27', '2021-10-18 20:09:50'),
(1727, 0, 'vi', 'packages/widget/global', 'save_success', 'Lưu tiện ích thành công!', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1728, 0, 'en', 'plugins/analytics/analytics', 'sessions', 'Sessions', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1729, 0, 'en', 'plugins/analytics/analytics', 'visitors', 'Visitors', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1730, 0, 'en', 'plugins/analytics/analytics', 'pageviews', 'Pageviews', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1731, 0, 'en', 'plugins/analytics/analytics', 'bounce_rate', 'Bounce Rate', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1732, 0, 'en', 'plugins/analytics/analytics', 'page_session', 'Pages/Session', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1733, 0, 'en', 'plugins/analytics/analytics', 'avg_duration', 'Avg. Duration', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1734, 0, 'en', 'plugins/analytics/analytics', 'percent_new_session', 'Percent new session', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1735, 0, 'en', 'plugins/analytics/analytics', 'new_users', 'New visitors', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1736, 0, 'en', 'plugins/analytics/analytics', 'visits', 'visits', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1737, 0, 'en', 'plugins/analytics/analytics', 'views', 'views', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1738, 0, 'en', 'plugins/analytics/analytics', 'view_id_not_specified', 'You must provide a valid view id. The document here: <a href=\"https://docs.botble.com/cms/:version/plugin-analytics\" target=\"_blank\">https://docs.botble.com/cms/:version/plugin-analytics</a>', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1739, 0, 'en', 'plugins/analytics/analytics', 'credential_is_not_valid', 'Analytics credentials is not valid. The document here: <a href=\"https://docs.botble.com/cms/:version/plugin-analytics\" target=\"_blank\">https://docs.botble.com/cms/:version/plugin-analytics</a>', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1740, 0, 'en', 'plugins/analytics/analytics', 'start_date_can_not_before_end_date', 'Start date :start_date cannot be after end date :end_date', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1741, 0, 'en', 'plugins/analytics/analytics', 'wrong_configuration', 'To view analytics you\'ll need to get a google analytics client id and add it to your settings. <br /> You also need JSON credential data. <br /> The document here: <a href=\"https://docs.botble.com/cms/:version/plugin-analytics\" target=\"_blank\">https://docs.botble.com/cms/:version/plugin-analytics</a>', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1742, 0, 'en', 'plugins/analytics/analytics', 'settings.title', 'Google Analytics', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1743, 0, 'en', 'plugins/analytics/analytics', 'settings.description', 'Config Credentials for Google Analytics', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1744, 0, 'en', 'plugins/analytics/analytics', 'settings.tracking_code', 'Tracking ID', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1745, 0, 'en', 'plugins/analytics/analytics', 'settings.tracking_code_placeholder', 'Example: GA-12586526-8', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1746, 0, 'en', 'plugins/analytics/analytics', 'settings.view_id', 'View ID', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1747, 0, 'en', 'plugins/analytics/analytics', 'settings.view_id_description', 'Google Analytics View ID', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1748, 0, 'en', 'plugins/analytics/analytics', 'settings.json_credential', 'Service Account Credentials', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1749, 0, 'en', 'plugins/analytics/analytics', 'settings.json_credential_description', 'Service Account Credentials', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1750, 0, 'en', 'plugins/analytics/analytics', 'widget_analytics_page', 'Top Most Visit Pages', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1751, 0, 'en', 'plugins/analytics/analytics', 'widget_analytics_browser', 'Top Browsers', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1752, 0, 'en', 'plugins/analytics/analytics', 'widget_analytics_referrer', 'Top Referrers', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1753, 0, 'en', 'plugins/analytics/analytics', 'widget_analytics_general', 'Site Analytics', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1754, 0, 'vi', 'plugins/analytics/analytics', 'avg_duration', 'Trung bình', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1755, 0, 'vi', 'plugins/analytics/analytics', 'bounce_rate', 'Tỉ lệ thoát', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1756, 0, 'vi', 'plugins/analytics/analytics', 'page_session', 'Trang/Phiên', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1757, 0, 'vi', 'plugins/analytics/analytics', 'pageviews', 'Lượt xem', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1758, 0, 'vi', 'plugins/analytics/analytics', 'sessions', 'Phiên', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1759, 0, 'vi', 'plugins/analytics/analytics', 'views', 'lượt xem', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1760, 0, 'vi', 'plugins/analytics/analytics', 'visitors', 'Người truy cập', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1761, 0, 'vi', 'plugins/analytics/analytics', 'visits', 'lượt ghé thăm', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1762, 0, 'vi', 'plugins/analytics/analytics', 'credential_is_not_valid', 'Thông tin cài đặt không hợp lệ. Tài liệu hướng dẫn tại đây: <a href=\"http://docs.botble.com/cms/:version/analytics\" target=\"_blank\">http://docs.botble.com/cms/:version/analytics</a>', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1763, 0, 'vi', 'plugins/analytics/analytics', 'new_users', 'Lượt khách mới', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1764, 0, 'vi', 'plugins/analytics/analytics', 'percent_new_session', 'Tỉ lệ khách mới', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1765, 0, 'vi', 'plugins/analytics/analytics', 'start_date_can_not_before_end_date', 'Ngày bắt đầu :start_date không thể sau ngày kết thúc :end_date', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1766, 0, 'vi', 'plugins/analytics/analytics', 'view_id_not_specified', 'Bạn phải cung cấp View ID hợp lê. Tài liệu hướng dẫn tại đây: <a href=\"http://docs.botble.com/cms/:version/analytics\" target=\"_blank\">http://docs.botble.com/cms/:version/analytics</a>', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1767, 0, 'vi', 'plugins/analytics/analytics', 'wrong_configuration', 'Để xem dữ liệu thống kê Google Analytics, bạn cần lấy thông tin Client ID và thêm nó vào trong phần cài đặt. Bạn cũng cần thông tin xác thực dạng JSON. Tài liệu hướng dẫn tại đây: <a href=\"http://docs.botble.com/cms/:version/analytics\" target=\"_blank\">http://docs.botble.com/cms/:version/analytics</a>', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1768, 0, 'vi', 'plugins/analytics/analytics', 'settings.title', 'Google Analytics', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1769, 0, 'vi', 'plugins/analytics/analytics', 'settings.description', 'Config Credentials for Google Analytics', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1770, 0, 'vi', 'plugins/analytics/analytics', 'settings.tracking_code', 'Tracking Code', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1771, 0, 'vi', 'plugins/analytics/analytics', 'settings.tracking_code_placeholder', 'Example: GA-12586526-8', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1772, 0, 'vi', 'plugins/analytics/analytics', 'settings.view_id', 'View ID', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1773, 0, 'vi', 'plugins/analytics/analytics', 'settings.view_id_description', 'Google Analytics View ID', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1774, 0, 'vi', 'plugins/analytics/analytics', 'settings.json_credential', 'Service Account Credentials', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1775, 0, 'vi', 'plugins/analytics/analytics', 'settings.json_credential_description', 'Service Account Credentials', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1776, 0, 'vi', 'plugins/analytics/analytics', 'widget_analytics_browser', 'Trình duyệt truy cập nhiều', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1777, 0, 'vi', 'plugins/analytics/analytics', 'widget_analytics_general', 'Thống kê truy cập', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1778, 0, 'vi', 'plugins/analytics/analytics', 'widget_analytics_page', 'Trang được xem nhiều nhất', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1779, 0, 'vi', 'plugins/analytics/analytics', 'widget_analytics_referrer', 'Trang giới thiệu nhiều', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1780, 0, 'en', 'plugins/audit-log/history', 'name', 'Activities Logs', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1781, 0, 'en', 'plugins/audit-log/history', 'created', 'created', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1782, 0, 'en', 'plugins/audit-log/history', 'updated', 'updated', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1783, 0, 'en', 'plugins/audit-log/history', 'deleted', 'deleted', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1784, 0, 'en', 'plugins/audit-log/history', 'logged in', 'logged in', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1785, 0, 'en', 'plugins/audit-log/history', 'logged out', 'logged out', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1786, 0, 'en', 'plugins/audit-log/history', 'changed password', 'changed password', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1787, 0, 'en', 'plugins/audit-log/history', 'updated profile', 'updated profile', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1788, 0, 'en', 'plugins/audit-log/history', 'attached', 'attached', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1789, 0, 'en', 'plugins/audit-log/history', 'shared', 'shared', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1790, 0, 'en', 'plugins/audit-log/history', 'to the system', 'to the system', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1791, 0, 'en', 'plugins/audit-log/history', 'of the system', 'of the system', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1792, 0, 'en', 'plugins/audit-log/history', 'menu', 'menu', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1793, 0, 'en', 'plugins/audit-log/history', 'post', 'post', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1794, 0, 'en', 'plugins/audit-log/history', 'page', 'page', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1795, 0, 'en', 'plugins/audit-log/history', 'category', 'category', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1796, 0, 'en', 'plugins/audit-log/history', 'tag', 'tag', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1797, 0, 'en', 'plugins/audit-log/history', 'user', 'user', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1798, 0, 'en', 'plugins/audit-log/history', 'contact', 'contact', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1799, 0, 'en', 'plugins/audit-log/history', 'backup', 'backup', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1800, 0, 'en', 'plugins/audit-log/history', 'custom-field', 'custom field', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1801, 0, 'en', 'plugins/audit-log/history', 'widget_audit_logs', 'Activities Logs', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1802, 0, 'en', 'plugins/audit-log/history', 'action', 'Action', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1803, 0, 'en', 'plugins/audit-log/history', 'user_agent', 'User Agent', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1804, 0, 'en', 'plugins/audit-log/history', 'system', 'System', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1805, 0, 'en', 'plugins/audit-log/history', 'delete_all', 'Delete all records', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1806, 0, 'vi', 'plugins/audit-log/history', 'name', 'Lịch sử hoạt động', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1807, 0, 'vi', 'plugins/audit-log/history', 'created', ' đã tạo', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1808, 0, 'vi', 'plugins/audit-log/history', 'updated', ' đã cập nhật', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1809, 0, 'vi', 'plugins/audit-log/history', 'deleted', ' đã xóa', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1810, 0, 'vi', 'plugins/audit-log/history', 'attached', 'đính kèm', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1811, 0, 'vi', 'plugins/audit-log/history', 'backup', 'sao lưu', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1812, 0, 'vi', 'plugins/audit-log/history', 'category', 'danh mục', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1813, 0, 'vi', 'plugins/audit-log/history', 'changed password', 'thay đổi mật khẩu', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1814, 0, 'vi', 'plugins/audit-log/history', 'contact', 'liên hệ', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1815, 0, 'vi', 'plugins/audit-log/history', 'custom-field', 'khung mở rộng', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1816, 0, 'vi', 'plugins/audit-log/history', 'logged in', 'đăng nhập', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1817, 0, 'vi', 'plugins/audit-log/history', 'logged out', 'đăng xuất', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1818, 0, 'vi', 'plugins/audit-log/history', 'menu', 'trình đơn', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1819, 0, 'vi', 'plugins/audit-log/history', 'of the system', 'khỏi hệ thống', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1820, 0, 'vi', 'plugins/audit-log/history', 'page', 'trang', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1821, 0, 'vi', 'plugins/audit-log/history', 'post', 'bài viết', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1822, 0, 'vi', 'plugins/audit-log/history', 'shared', 'đã chia sẻ', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1823, 0, 'vi', 'plugins/audit-log/history', 'tag', 'thẻ', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1824, 0, 'vi', 'plugins/audit-log/history', 'to the system', 'vào hệ thống', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1825, 0, 'vi', 'plugins/audit-log/history', 'updated profile', 'cập nhật tài khoản', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1826, 0, 'vi', 'plugins/audit-log/history', 'user', 'thành viên', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1827, 0, 'vi', 'plugins/audit-log/history', 'widget_audit_logs', 'Lịch sử hoạt động', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1828, 0, 'en', 'plugins/backup/backup', 'name', 'Backup', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1829, 0, 'en', 'plugins/backup/backup', 'backup_description', 'Backup database and uploads folder.', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1830, 0, 'en', 'plugins/backup/backup', 'create_backup_success', 'Created backup successfully!', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1831, 0, 'en', 'plugins/backup/backup', 'delete_backup_success', 'Delete backup successfully!', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1832, 0, 'en', 'plugins/backup/backup', 'restore_backup_success', 'Restore backup successfully!', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1833, 0, 'en', 'plugins/backup/backup', 'generate_btn', 'Generate backup', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1834, 0, 'en', 'plugins/backup/backup', 'create', 'Create a backup', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1835, 0, 'en', 'plugins/backup/backup', 'restore', 'Restore a backup', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1836, 0, 'en', 'plugins/backup/backup', 'create_btn', 'Create', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1837, 0, 'en', 'plugins/backup/backup', 'restore_btn', 'Restore', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1838, 0, 'en', 'plugins/backup/backup', 'restore_confirm_msg', 'Do you really want to restore this revision?', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1839, 0, 'en', 'plugins/backup/backup', 'download_uploads_folder', 'Download backup of uploads folder', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1840, 0, 'en', 'plugins/backup/backup', 'download_database', 'Download backup of database', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1841, 0, 'en', 'plugins/backup/backup', 'restore_tooltip', 'Restore this backup', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1842, 0, 'en', 'plugins/backup/backup', 'demo_alert', 'Hi guest, if you see demo site is destroyed, please help me <a href=\":link\">go here</a> and restore demo site to the latest revision! Thank you so much!', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1843, 0, 'en', 'plugins/backup/backup', 'menu_name', 'Backups', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1844, 0, 'en', 'plugins/backup/backup', 'size', 'Size', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1845, 0, 'en', 'plugins/backup/backup', 'no_backups', 'There is no backup now!', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1846, 0, 'en', 'plugins/backup/backup', 'proc_open_disabled_error', 'Function <strong>proc_open()</strong> has been disabled so the system cannot backup the database. Please contact your hosting provider to enable it.', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1847, 0, 'en', 'plugins/backup/backup', 'database_backup_not_existed', 'Backup database is not existed!', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1848, 0, 'en', 'plugins/backup/backup', 'uploads_folder_backup_not_existed', 'Backup uploads folder is not existed!', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1849, 0, 'en', 'plugins/backup/backup', 'important_message1', 'This is a simple backup feature, it is a solution for you if your site has < 1GB data and can be used for quickly backup your site.', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1850, 0, 'en', 'plugins/backup/backup', 'important_message2', 'If you have more than 1GB images/files in local storage, you should use backup feature of your hosting or VPS.', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1851, 0, 'en', 'plugins/backup/backup', 'important_message3', 'To backup your database, function <strong>proc_open()</strong> or <strong>system()</strong> must be enabled. Contact your hosting provider to enable it if it is disabled.', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1852, 0, 'vi', 'plugins/backup/backup', 'backup_description', 'Sao lưu cơ sở dữ liệu và thư mục /uploads', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1853, 0, 'vi', 'plugins/backup/backup', 'create', 'Tạo bản sao lưu', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1854, 0, 'vi', 'plugins/backup/backup', 'create_backup_success', 'Tạo bản sao lưu thành công!', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1855, 0, 'vi', 'plugins/backup/backup', 'create_btn', 'Tạo', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1856, 0, 'vi', 'plugins/backup/backup', 'delete_backup_success', 'Xóa bản sao lưu thành công!', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1857, 0, 'vi', 'plugins/backup/backup', 'generate_btn', 'Tạo sao lưu', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1858, 0, 'vi', 'plugins/backup/backup', 'name', 'Sao lưu', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1859, 0, 'vi', 'plugins/backup/backup', 'restore', 'Khôi phục bản sao lưu', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1860, 0, 'vi', 'plugins/backup/backup', 'restore_backup_success', 'Khôi phục bản sao lưu thành công', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1861, 0, 'vi', 'plugins/backup/backup', 'restore_btn', 'Khôi phục', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1862, 0, 'vi', 'plugins/backup/backup', 'restore_confirm_msg', 'Bạn có chắc chắn muốn khôi phục hệ thống về thời điểm tạo bản sao lưu này?', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1863, 0, 'vi', 'plugins/backup/backup', 'restore_tooltip', 'Khôi phục bản sao lưu này', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1864, 0, 'vi', 'plugins/backup/backup', 'download_database', 'Tải về bản sao lưu CSDL', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1865, 0, 'vi', 'plugins/backup/backup', 'download_uploads_folder', 'Tải về bản sao lưu thư mục uploads', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1866, 0, 'vi', 'plugins/backup/backup', 'menu_name', 'Sao lưu', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1867, 0, 'vi', 'plugins/backup/backup', 'demo_alert', 'Chào khách, nếu bạn thấy trang demo bị phá hoại, hãy tới <a href=\":link\">trang sao lưu</a> và khôi phục bản sao lưu cuối cùng. Cảm ơn bạn nhiều!', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1868, 0, 'en', 'plugins/blog/base', 'menu_name', 'Blog', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1869, 0, 'en', 'plugins/blog/base', 'blog_page', 'Blog Page', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1870, 0, 'en', 'plugins/blog/base', 'select', '-- Select --', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1871, 0, 'en', 'plugins/blog/base', 'blog_page_id', 'Blog page', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1872, 0, 'en', 'plugins/blog/base', 'number_posts_per_page', 'Number posts per page', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1873, 0, 'en', 'plugins/blog/base', 'write_some_tags', 'Write some tags', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1874, 0, 'en', 'plugins/blog/base', 'short_code_name', 'Blog posts', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1875, 0, 'en', 'plugins/blog/base', 'short_code_description', 'Add blog posts', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1876, 0, 'en', 'plugins/blog/base', 'number_posts_per_page_in_category', 'Number of posts per page in a category', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1877, 0, 'en', 'plugins/blog/base', 'number_posts_per_page_in_tag', 'Number of posts per page in a tag', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1878, 0, 'en', 'plugins/blog/categories', 'create', 'Create new category', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1879, 0, 'en', 'plugins/blog/categories', 'edit', 'Edit category', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1880, 0, 'en', 'plugins/blog/categories', 'menu', 'Categories', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1881, 0, 'en', 'plugins/blog/categories', 'edit_this_category', 'Edit this category', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1882, 0, 'en', 'plugins/blog/categories', 'menu_name', 'Categories', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1883, 0, 'en', 'plugins/blog/categories', 'none', 'None', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1884, 0, 'en', 'plugins/blog/categories', 'total_posts', 'Total posts: :total', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1885, 0, 'en', 'plugins/blog/member', 'dob', 'Born :date', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1886, 0, 'en', 'plugins/blog/member', 'draft_posts', 'Draft Posts', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1887, 0, 'en', 'plugins/blog/member', 'pending_posts', 'Pending Posts', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1888, 0, 'en', 'plugins/blog/member', 'published_posts', 'Published Posts', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1889, 0, 'en', 'plugins/blog/member', 'posts', 'Posts', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1890, 0, 'en', 'plugins/blog/member', 'write_post', 'Write a post', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1891, 0, 'en', 'plugins/blog/posts', 'create', 'Create new post', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1892, 0, 'en', 'plugins/blog/posts', 'edit', 'Edit post', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1893, 0, 'en', 'plugins/blog/posts', 'form.name', 'Name', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1894, 0, 'en', 'plugins/blog/posts', 'form.name_placeholder', 'Post\'s name (Maximum :c characters)', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1895, 0, 'en', 'plugins/blog/posts', 'form.description', 'Description', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1896, 0, 'en', 'plugins/blog/posts', 'form.description_placeholder', 'Short description for post (Maximum :c characters)', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1897, 0, 'en', 'plugins/blog/posts', 'form.categories', 'Categories', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1898, 0, 'en', 'plugins/blog/posts', 'form.tags', 'Tags', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1899, 0, 'en', 'plugins/blog/posts', 'form.tags_placeholder', 'Tags', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1900, 0, 'en', 'plugins/blog/posts', 'form.content', 'Content', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1901, 0, 'en', 'plugins/blog/posts', 'form.is_featured', 'Is featured?', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1902, 0, 'en', 'plugins/blog/posts', 'form.note', 'Note content', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1903, 0, 'en', 'plugins/blog/posts', 'form.format_type', 'Format', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1904, 0, 'en', 'plugins/blog/posts', 'cannot_delete', 'Post could not be deleted', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1905, 0, 'en', 'plugins/blog/posts', 'post_deleted', 'Post deleted', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1906, 0, 'en', 'plugins/blog/posts', 'posts', 'Posts', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1907, 0, 'en', 'plugins/blog/posts', 'post', 'Post', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1908, 0, 'en', 'plugins/blog/posts', 'edit_this_post', 'Edit this post', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1909, 0, 'en', 'plugins/blog/posts', 'no_new_post_now', 'There is no new post now!', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1910, 0, 'en', 'plugins/blog/posts', 'menu_name', 'Posts', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1911, 0, 'en', 'plugins/blog/posts', 'widget_posts_recent', 'Recent Posts', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1912, 0, 'en', 'plugins/blog/posts', 'categories', 'Categories', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1913, 0, 'en', 'plugins/blog/posts', 'category', 'Category', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1914, 0, 'en', 'plugins/blog/posts', 'author', 'Author', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1915, 0, 'en', 'plugins/blog/settings', 'select', '-- Select --', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1916, 0, 'en', 'plugins/blog/settings', 'blog_page_id', 'Blog page', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1917, 0, 'en', 'plugins/blog/tags', 'form.name', 'Name', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1918, 0, 'en', 'plugins/blog/tags', 'form.name_placeholder', 'Tag\'s name (Maximum 120 characters)', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1919, 0, 'en', 'plugins/blog/tags', 'form.description', 'Description', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1920, 0, 'en', 'plugins/blog/tags', 'form.description_placeholder', 'Short description for tag (Maximum 400 characters)', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1921, 0, 'en', 'plugins/blog/tags', 'form.categories', 'Categories', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1922, 0, 'en', 'plugins/blog/tags', 'notices.no_select', 'Please select at least one tag to take this action!', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1923, 0, 'en', 'plugins/blog/tags', 'create', 'Create new tag', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1924, 0, 'en', 'plugins/blog/tags', 'edit', 'Edit tag', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1925, 0, 'en', 'plugins/blog/tags', 'cannot_delete', 'Tag could not be deleted', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1926, 0, 'en', 'plugins/blog/tags', 'deleted', 'Tag deleted', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1927, 0, 'en', 'plugins/blog/tags', 'menu', 'Tags', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1928, 0, 'en', 'plugins/blog/tags', 'edit_this_tag', 'Edit this tag', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1929, 0, 'en', 'plugins/blog/tags', 'menu_name', 'Tags', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1930, 0, 'vi', 'plugins/blog/base', 'menu_name', 'Blog', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1931, 0, 'vi', 'plugins/blog/categories', 'create', 'Thêm danh mục mới', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1932, 0, 'vi', 'plugins/blog/categories', 'edit', 'Sửa danh mục', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1933, 0, 'vi', 'plugins/blog/categories', 'menu_name', 'Danh mục', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1934, 0, 'vi', 'plugins/blog/categories', 'edit_this_category', 'Sửa danh mục này', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1935, 0, 'vi', 'plugins/blog/categories', 'menu', 'Danh mục', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1936, 0, 'vi', 'plugins/blog/posts', 'create', 'Thêm bài viết', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1937, 0, 'vi', 'plugins/blog/posts', 'edit', 'Sửa bài viết', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1938, 0, 'vi', 'plugins/blog/posts', 'form.name', 'Tên', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1939, 0, 'vi', 'plugins/blog/posts', 'form.name_placeholder', 'Tên bài viết (Tối đa 120 kí tự)', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1940, 0, 'vi', 'plugins/blog/posts', 'form.description', 'Mô tả', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1941, 0, 'vi', 'plugins/blog/posts', 'form.description_placeholder', 'Mô tả ngắn cho bài viết (Tối đa 400 kí tự)', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1942, 0, 'vi', 'plugins/blog/posts', 'form.categories', 'Chuyên mục', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1943, 0, 'vi', 'plugins/blog/posts', 'form.tags', 'Từ khóa', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1944, 0, 'vi', 'plugins/blog/posts', 'form.tags_placeholder', 'Thêm từ khóa', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1945, 0, 'vi', 'plugins/blog/posts', 'form.content', 'Nội dung', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1946, 0, 'vi', 'plugins/blog/posts', 'form.note', 'Nội dung ghi chú', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1947, 0, 'vi', 'plugins/blog/posts', 'form.format_type', 'Định dạng', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1948, 0, 'vi', 'plugins/blog/posts', 'post_deleted', 'Xóa bài viết thành công', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1949, 0, 'vi', 'plugins/blog/posts', 'cannot_delete', 'Không thể xóa bài viết', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1950, 0, 'vi', 'plugins/blog/posts', 'menu_name', 'Bài viết', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1951, 0, 'vi', 'plugins/blog/posts', 'edit_this_post', 'Sửa bài viết này', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1952, 0, 'vi', 'plugins/blog/posts', 'no_new_post_now', 'Hiện tại không có bài viết mới!', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1953, 0, 'vi', 'plugins/blog/posts', 'posts', 'Bài viết', '2021-10-18 20:09:28', '2021-10-18 20:09:50');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1954, 0, 'vi', 'plugins/blog/posts', 'widget_posts_recent', 'Bài viết gần đây', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1955, 0, 'vi', 'plugins/blog/posts', 'author', 'Tác giả', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1956, 0, 'vi', 'plugins/blog/tags', 'create', 'Thêm thẻ mới', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1957, 0, 'vi', 'plugins/blog/tags', 'edit', 'Sửa thẻ', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1958, 0, 'vi', 'plugins/blog/tags', 'form.name', 'Tên', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1959, 0, 'vi', 'plugins/blog/tags', 'form.name_placeholder', 'Tên thẻ (Tối đa 120 kí tự)', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1960, 0, 'vi', 'plugins/blog/tags', 'form.description', 'Mô tả', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1961, 0, 'vi', 'plugins/blog/tags', 'form.description_placeholder', 'Mô tả ngắn cho tag (Tối đa 400 kí tự)', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1962, 0, 'vi', 'plugins/blog/tags', 'form.categories', 'Chuyên mục', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1963, 0, 'vi', 'plugins/blog/tags', 'notices.no_select', 'Chọn ít nhất 1 bài viết để thực hiện hành động này!', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1964, 0, 'vi', 'plugins/blog/tags', 'cannot_delete', 'Không thể xóa thẻ', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1965, 0, 'vi', 'plugins/blog/tags', 'deleted', 'Xóa thẻ thành công', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1966, 0, 'vi', 'plugins/blog/tags', 'menu_name', 'Thẻ', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1967, 0, 'vi', 'plugins/blog/tags', 'edit_this_tag', 'Sửa thẻ này', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1968, 0, 'vi', 'plugins/blog/tags', 'menu', 'Thẻ', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1969, 0, 'en', 'plugins/captcha/captcha', 'settings.title', 'Captcha', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1970, 0, 'en', 'plugins/captcha/captcha', 'settings.description', 'Settings for Google Captcha', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1971, 0, 'en', 'plugins/captcha/captcha', 'settings.captcha_site_key', 'Captcha Site Key', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1972, 0, 'en', 'plugins/captcha/captcha', 'settings.captcha_secret', 'Captcha Secret', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1973, 0, 'en', 'plugins/captcha/captcha', 'settings.enable_captcha', 'Enable Captcha?', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1974, 0, 'en', 'plugins/captcha/captcha', 'settings.helper', 'Go here to get credentials https://www.google.com/recaptcha/admin#list.', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1975, 0, 'en', 'plugins/captcha/captcha', 'settings.hide_badge', 'Hide recaptcha badge (for v3)', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1976, 0, 'en', 'plugins/captcha/captcha', 'settings.type', 'Type', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1977, 0, 'en', 'plugins/captcha/captcha', 'settings.v2_description', 'V2 (Verify requests with a challenge)', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1978, 0, 'en', 'plugins/captcha/captcha', 'settings.v3_description', 'V3 (Verify requests with a score)', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1979, 0, 'en', 'plugins/captcha/captcha', 'failed_validate', 'Failed to validate the captcha.', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1980, 0, 'en', 'plugins/career/career', 'name', 'Careers', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1981, 0, 'en', 'plugins/career/career', 'create', 'New career', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1982, 0, 'en', 'plugins/career/career', 'edit', 'Edit career', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1983, 0, 'en', 'plugins/career/career', 'location', 'Location', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1984, 0, 'en', 'plugins/career/career', 'salary', 'Salary', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1985, 0, 'vi', 'plugins/career/career', 'name', 'Tuyển dụng', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1986, 0, 'vi', 'plugins/career/career', 'create', 'Thêm tin tuyển dụng', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1987, 0, 'vi', 'plugins/career/career', 'edit', 'Sửa tin tuyển dụng', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1988, 0, 'vi', 'plugins/career/career', 'location', 'Địa điểm', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1989, 0, 'vi', 'plugins/career/career', 'salary', 'Mức lương', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1990, 0, 'en', 'plugins/contact/contact', 'menu', 'Contact', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1991, 0, 'en', 'plugins/contact/contact', 'edit', 'View contact', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1992, 0, 'en', 'plugins/contact/contact', 'tables.phone', 'Phone', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1993, 0, 'en', 'plugins/contact/contact', 'tables.email', 'Email', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1994, 0, 'en', 'plugins/contact/contact', 'tables.full_name', 'Full Name', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1995, 0, 'en', 'plugins/contact/contact', 'tables.time', 'Time', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1996, 0, 'en', 'plugins/contact/contact', 'tables.address', 'Address', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1997, 0, 'en', 'plugins/contact/contact', 'tables.subject', 'Subject', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1998, 0, 'en', 'plugins/contact/contact', 'tables.content', 'Content', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(1999, 0, 'en', 'plugins/contact/contact', 'contact_information', 'Contact information', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(2000, 0, 'en', 'plugins/contact/contact', 'replies', 'Replies', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(2001, 0, 'en', 'plugins/contact/contact', 'email.header', 'Email', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(2002, 0, 'en', 'plugins/contact/contact', 'email.title', 'New contact from your site', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(2003, 0, 'en', 'plugins/contact/contact', 'form.name.required', 'Name is required', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(2004, 0, 'en', 'plugins/contact/contact', 'form.email.required', 'Email is required', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(2005, 0, 'en', 'plugins/contact/contact', 'form.email.email', 'The email address is not valid', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(2006, 0, 'en', 'plugins/contact/contact', 'form.content.required', 'Content is required', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(2007, 0, 'en', 'plugins/contact/contact', 'contact_sent_from', 'This contact information sent from', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(2008, 0, 'en', 'plugins/contact/contact', 'sender', 'Sender', '2021-10-18 20:09:28', '2021-10-18 20:09:50'),
(2009, 0, 'en', 'plugins/contact/contact', 'sender_email', 'Email', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2010, 0, 'en', 'plugins/contact/contact', 'sender_address', 'Address', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2011, 0, 'en', 'plugins/contact/contact', 'sender_phone', 'Phone', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2012, 0, 'en', 'plugins/contact/contact', 'message_content', 'Message content', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2013, 0, 'en', 'plugins/contact/contact', 'sent_from', 'Email sent from', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2014, 0, 'en', 'plugins/contact/contact', 'form_name', 'Name', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2015, 0, 'en', 'plugins/contact/contact', 'form_email', 'Email', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2016, 0, 'en', 'plugins/contact/contact', 'form_address', 'Address', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2017, 0, 'en', 'plugins/contact/contact', 'form_subject', 'Subject', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2018, 0, 'en', 'plugins/contact/contact', 'form_phone', 'Phone', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2019, 0, 'en', 'plugins/contact/contact', 'form_message', 'Message', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2020, 0, 'en', 'plugins/contact/contact', 'required_field', 'The field with (<span style=\"color: red\">*</span>) is required.', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2021, 0, 'en', 'plugins/contact/contact', 'send_btn', 'Send message', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2022, 0, 'en', 'plugins/contact/contact', 'new_msg_notice', 'You have <span class=\"bold\">:count</span> New Messages', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2023, 0, 'en', 'plugins/contact/contact', 'view_all', 'View all', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2024, 0, 'en', 'plugins/contact/contact', 'statuses.read', 'Read', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2025, 0, 'en', 'plugins/contact/contact', 'statuses.unread', 'Unread', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2026, 0, 'en', 'plugins/contact/contact', 'phone', 'Phone', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2027, 0, 'en', 'plugins/contact/contact', 'address', 'Address', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2028, 0, 'en', 'plugins/contact/contact', 'message', 'Message', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2029, 0, 'en', 'plugins/contact/contact', 'settings.email.title', 'Contact', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2030, 0, 'en', 'plugins/contact/contact', 'settings.email.description', 'Contact email configuration', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2031, 0, 'en', 'plugins/contact/contact', 'settings.email.templates.notice_title', 'Send notice to administrator', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2032, 0, 'en', 'plugins/contact/contact', 'settings.email.templates.notice_description', 'Email template to send notice to administrator when system get new contact', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2033, 0, 'en', 'plugins/contact/contact', 'no_reply', 'No reply yet!', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2034, 0, 'en', 'plugins/contact/contact', 'reply', 'Reply', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2035, 0, 'en', 'plugins/contact/contact', 'send', 'Send', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2036, 0, 'en', 'plugins/contact/contact', 'shortcode_name', 'Contact form', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2037, 0, 'en', 'plugins/contact/contact', 'shortcode_description', 'Add a contact form', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2038, 0, 'en', 'plugins/contact/contact', 'shortcode_content_description', 'Add shortcode [contact-form][/contact-form] to editor?', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2039, 0, 'en', 'plugins/contact/contact', 'message_sent_success', 'Message sent successfully!', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2040, 0, 'vi', 'plugins/contact/contact', 'menu', 'Liên hệ', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2041, 0, 'vi', 'plugins/contact/contact', 'edit', 'Xem liên hệ', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2042, 0, 'vi', 'plugins/contact/contact', 'tables.phone', 'Điện thoại', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2043, 0, 'vi', 'plugins/contact/contact', 'tables.email', 'Email', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2044, 0, 'vi', 'plugins/contact/contact', 'tables.full_name', 'Họ tên', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2045, 0, 'vi', 'plugins/contact/contact', 'tables.time', 'Thời gian', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2046, 0, 'vi', 'plugins/contact/contact', 'tables.address', 'Địa địa chỉ', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2047, 0, 'vi', 'plugins/contact/contact', 'tables.subject', 'Tiêu đề', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2048, 0, 'vi', 'plugins/contact/contact', 'tables.content', 'Nội dung', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2049, 0, 'vi', 'plugins/contact/contact', 'contact_information', 'Thông tin liên hệ', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2050, 0, 'vi', 'plugins/contact/contact', 'email.title', 'Thông tin liên hệ mới', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2051, 0, 'vi', 'plugins/contact/contact', 'email.header', 'Email', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2052, 0, 'vi', 'plugins/contact/contact', 'form.name.required', 'Tên là bắt buộc', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2053, 0, 'vi', 'plugins/contact/contact', 'form.email.required', 'Email là bắt buộc', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2054, 0, 'vi', 'plugins/contact/contact', 'form.email.email', 'Địa chỉ email không hợp lệ', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2055, 0, 'vi', 'plugins/contact/contact', 'form.content.required', 'Nội dung là bắt buộc', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2056, 0, 'vi', 'plugins/contact/contact', 'contact_sent_from', 'Liên hệ này được gửi từ', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2057, 0, 'vi', 'plugins/contact/contact', 'form_address', 'Địa chỉ', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2058, 0, 'vi', 'plugins/contact/contact', 'form_email', 'Thư điện tử', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2059, 0, 'vi', 'plugins/contact/contact', 'form_message', 'Thông điệp', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2060, 0, 'vi', 'plugins/contact/contact', 'form_name', 'Họ tên', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2061, 0, 'vi', 'plugins/contact/contact', 'form_phone', 'Số điện thoại', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2062, 0, 'vi', 'plugins/contact/contact', 'message_content', 'Nội dung thông điệp', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2063, 0, 'vi', 'plugins/contact/contact', 'required_field', 'Những trường có dấu (<span style=\"color: red\">*</span>) là bắt buộc.', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2064, 0, 'vi', 'plugins/contact/contact', 'send_btn', 'Gửi tin nhắn', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2065, 0, 'vi', 'plugins/contact/contact', 'sender', 'Người gửi', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2066, 0, 'vi', 'plugins/contact/contact', 'sender_address', 'Địa chỉ', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2067, 0, 'vi', 'plugins/contact/contact', 'sender_email', 'Thư điện tử', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2068, 0, 'vi', 'plugins/contact/contact', 'sender_phone', 'Số điện thoại', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2069, 0, 'vi', 'plugins/contact/contact', 'sent_from', 'Thư được gửi từ', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2070, 0, 'vi', 'plugins/contact/contact', 'address', 'Địa chỉ', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2071, 0, 'vi', 'plugins/contact/contact', 'message', 'Liên hệ', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2072, 0, 'vi', 'plugins/contact/contact', 'new_msg_notice', 'Bạn có <span class=\"bold\">:count</span> tin nhắn mới', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2073, 0, 'vi', 'plugins/contact/contact', 'phone', 'Điện thoại', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2074, 0, 'vi', 'plugins/contact/contact', 'statuses.read', 'Đã đọc', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2075, 0, 'vi', 'plugins/contact/contact', 'statuses.unread', 'Chưa đọc', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2076, 0, 'vi', 'plugins/contact/contact', 'view_all', 'Xem tất cả', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2077, 0, 'vi', 'plugins/contact/contact', 'settings.email.title', 'Liên hệ', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2078, 0, 'vi', 'plugins/contact/contact', 'settings.email.description', 'Cấu hình thông tin cho mục liên hệ', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2079, 0, 'vi', 'plugins/contact/contact', 'settings.email.templates.notice_title', 'Thông báo tới admin', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2080, 0, 'vi', 'plugins/contact/contact', 'settings.email.templates.notice_description', 'Mẫu nội dung email gửi tới admin khi có liên hệ mới', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2081, 0, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.name', 'Cookie Consent', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2082, 0, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.description', 'Cookie consent settings', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2083, 0, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.enable', 'Enable cookie consent?', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2084, 0, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.message', 'Message', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2085, 0, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.button_text', 'Button text', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2086, 0, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.max_width', 'Max width (px)', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2087, 0, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.background_color', 'Background color', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2088, 0, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.text_color', 'Text color', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2089, 0, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.learn_more_url', 'Learn more URL', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2090, 0, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.learn_more_text', 'Learn more text', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2091, 0, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.style', 'Style', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2092, 0, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.full_width', 'Full width', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2093, 0, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.minimal', 'Minimal', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2094, 0, 'en', 'plugins/cookie-consent/cookie-consent', 'message', 'Your experience on this site will be improved by allowing cookies.', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2095, 0, 'en', 'plugins/cookie-consent/cookie-consent', 'button_text', 'Allow cookies', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2096, 0, 'en', 'plugins/language/language', 'name', 'Languages', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2097, 0, 'en', 'plugins/language/language', 'choose_language', 'Choose a language', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2098, 0, 'en', 'plugins/language/language', 'select_language', 'Select language', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2099, 0, 'en', 'plugins/language/language', 'choose_language_helper', 'You can choose a language in the list or directly edit it below.', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2100, 0, 'en', 'plugins/language/language', 'language_name', 'Language name', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2101, 0, 'en', 'plugins/language/language', 'language_name_helper', 'The name is how it is displayed on your site (for example: English).', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2102, 0, 'en', 'plugins/language/language', 'locale', 'Locale', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2103, 0, 'en', 'plugins/language/language', 'locale_helper', 'Laravel Locale for the language (for example: <code>en</code>).', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2104, 0, 'en', 'plugins/language/language', 'language_code', 'Language code', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2105, 0, 'en', 'plugins/language/language', 'language_code_helper', 'Language code - preferably 2-letters ISO 639-1 (for example: en)', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2106, 0, 'en', 'plugins/language/language', 'text_direction', 'Text direction', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2107, 0, 'en', 'plugins/language/language', 'text_direction_helper', 'Choose the text direction for the language', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2108, 0, 'en', 'plugins/language/language', 'left_to_right', 'Left to right', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2109, 0, 'en', 'plugins/language/language', 'right_to_left', 'Right to left', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2110, 0, 'en', 'plugins/language/language', 'flag', 'Flag', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2111, 0, 'en', 'plugins/language/language', 'flag_helper', 'Choose a flag for the language.', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2112, 0, 'en', 'plugins/language/language', 'order', 'Order', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2113, 0, 'en', 'plugins/language/language', 'order_helper', 'Position of the language in the language switcher', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2114, 0, 'en', 'plugins/language/language', 'add_new_language', 'Add new language', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2115, 0, 'en', 'plugins/language/language', 'code', 'Code', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2116, 0, 'en', 'plugins/language/language', 'default_language', 'Is default?', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2117, 0, 'en', 'plugins/language/language', 'actions', 'Actions', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2118, 0, 'en', 'plugins/language/language', 'translations', 'Translations', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2119, 0, 'en', 'plugins/language/language', 'edit', 'Edit', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2120, 0, 'en', 'plugins/language/language', 'edit_tooltip', 'Edit this language', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2121, 0, 'en', 'plugins/language/language', 'delete', 'Delete', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2122, 0, 'en', 'plugins/language/language', 'delete_tooltip', 'Delete this language and all its associated data', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2123, 0, 'en', 'plugins/language/language', 'choose_default_language', 'Choose :language as default language', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2124, 0, 'en', 'plugins/language/language', 'current_language', 'Current record\'s language', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2125, 0, 'en', 'plugins/language/language', 'edit_related', 'Edit related language for this record', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2126, 0, 'en', 'plugins/language/language', 'add_language_for_item', 'Add other language version for this record', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2127, 0, 'en', 'plugins/language/language', 'settings', 'Settings', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2128, 0, 'en', 'plugins/language/language', 'language_hide_default', 'Hide default language from URL?', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2129, 0, 'en', 'plugins/language/language', 'language_display_flag_only', 'Flag only', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2130, 0, 'en', 'plugins/language/language', 'language_display_name_only', 'Name only', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2131, 0, 'en', 'plugins/language/language', 'language_display_all', 'Display all flag and name', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2132, 0, 'en', 'plugins/language/language', 'language_display', 'Language display', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2133, 0, 'en', 'plugins/language/language', 'switcher_display', 'Switcher language display', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2134, 0, 'en', 'plugins/language/language', 'language_switcher_display_dropdown', 'Dropdown', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2135, 0, 'en', 'plugins/language/language', 'language_switcher_display_list', 'List', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2136, 0, 'en', 'plugins/language/language', 'current_language_edit_notification', 'You are editing \"<strong class=\"current_language_text\">:language</strong>\" version', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2137, 0, 'en', 'plugins/language/language', 'confirm-change-language', 'Confirm change language', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2138, 0, 'en', 'plugins/language/language', 'confirm-change-language-message', 'Do you really want to change language to \"<strong class=\"change_to_language_text\"></strong>\" ? This action will be override \"<strong class=\"change_to_language_text\"></strong>\" version if it\'s existed!', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2139, 0, 'en', 'plugins/language/language', 'confirm-change-language-btn', 'Confirm change', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2140, 0, 'en', 'plugins/language/language', 'hide_languages', 'Hide languages', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2141, 0, 'en', 'plugins/language/language', 'hide_languages_description', 'You can completely hide content in specific languages from visitors and search engines, but still view it yourself. This allows reviewing translations that are in progress.', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2142, 0, 'en', 'plugins/language/language', 'hide_languages_helper_display_hidden', '{0} All languages are currently displayed.|{1} :language is currently hidden to visitors.|[2, Inf] :language are currently hidden to visitors.', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2143, 0, 'en', 'plugins/language/language', 'show_all', 'Show all', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2144, 0, 'en', 'plugins/language/language', 'change_language', 'Language', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2145, 0, 'en', 'plugins/language/language', 'language_show_default_item_if_current_version_not_existed', 'Show item in default language if it is not existed in current language', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2146, 0, 'en', 'plugins/language/language', 'select_flag', 'Select a flag...', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2147, 0, 'en', 'plugins/language/language', 'delete_confirmation_message', 'Do you really want to delete this language? It also deletes all items in this language and cannot rollback!', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2148, 0, 'en', 'plugins/language/language', 'added_already', 'This language was added already!', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2149, 0, 'vi', 'plugins/language/language', 'name', 'Ngôn ngữ', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2150, 0, 'vi', 'plugins/language/language', 'choose_language', 'Chọn một ngôn ngữ', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2151, 0, 'vi', 'plugins/language/language', 'select_language', 'Chọn ngôn ngữ', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2152, 0, 'vi', 'plugins/language/language', 'choose_language_helper', 'Bạn có thể chọn 1 ngôn ngữ trong danh sách hoặc nhập trực tiếp nội dung xuống các mục dưới', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2153, 0, 'vi', 'plugins/language/language', 'locale', 'Locale', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2154, 0, 'vi', 'plugins/language/language', 'locale_helper', 'Laravel Locale cho ngôn ngữ này (ví dụ: <code>en</code>). Bạn sẽ cần tạo trong <code>/resources/lang/en</code> nếu nó không có sẵn cho ngôn ngữ này.', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2155, 0, 'vi', 'plugins/language/language', 'language_code', 'Mã ngôn ngữ', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2156, 0, 'vi', 'plugins/language/language', 'language_code_helper', 'Mã ngôn ngữ - ưu tiên dạng 2-kí tự theo chuẩn ISO 639-1 (ví dụ: en)', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2157, 0, 'vi', 'plugins/language/language', 'text_direction', 'Hướng viết chữ', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2158, 0, 'vi', 'plugins/language/language', 'text_direction_helper', 'Chọn hướng viết chữ cho ngôn ngữ này', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2159, 0, 'vi', 'plugins/language/language', 'left_to_right', 'Trái qua phải', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2160, 0, 'vi', 'plugins/language/language', 'right_to_left', 'Phải qua trái', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2161, 0, 'vi', 'plugins/language/language', 'flag', 'Cờ', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2162, 0, 'vi', 'plugins/language/language', 'flag_helper', 'Chọn 1 cờ cho ngôn ngữ này', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2163, 0, 'vi', 'plugins/language/language', 'order', 'Sắp xếp', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2164, 0, 'vi', 'plugins/language/language', 'order_helper', 'Vị trí của ngôn ngữ hiển thị trong mục chuyển đổi ngôn ngữ', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2165, 0, 'vi', 'plugins/language/language', 'add_new_language', 'Thêm ngôn ngữ mới', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2166, 0, 'vi', 'plugins/language/language', 'code', 'Mã', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2167, 0, 'vi', 'plugins/language/language', 'default_language', 'Ngôn ngữ mặc định', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2168, 0, 'vi', 'plugins/language/language', 'actions', 'Hành động', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2169, 0, 'vi', 'plugins/language/language', 'translations', 'Dịch', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2170, 0, 'vi', 'plugins/language/language', 'edit', 'Sửa', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2171, 0, 'vi', 'plugins/language/language', 'edit_tooltip', 'Sửa ngôn ngữ này', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2172, 0, 'vi', 'plugins/language/language', 'delete', 'Xóa', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2173, 0, 'vi', 'plugins/language/language', 'delete_tooltip', 'Xóa ngôn ngữ này và các dữ liệu liên quan', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2174, 0, 'vi', 'plugins/language/language', 'choose_default_language', 'Chọn :language làm ngôn ngữ mặc định', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2175, 0, 'vi', 'plugins/language/language', 'add_language_for_item', 'Thêm ngôn ngữ khác cho bản ghi này', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2176, 0, 'vi', 'plugins/language/language', 'current_language', 'Ngôn ngữ hiện tại của bản ghi', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2177, 0, 'vi', 'plugins/language/language', 'edit_related', 'Sửa bản ngôn ngữ khác của bản ghi này', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2178, 0, 'vi', 'plugins/language/language', 'confirm-change-language', 'Xác nhận thay đổi ngôn ngữ', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2179, 0, 'vi', 'plugins/language/language', 'confirm-change-language-btn', 'Xác nhận thay đổi', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2180, 0, 'vi', 'plugins/language/language', 'confirm-change-language-message', 'Bạn có chắc chắn muốn thay đổi ngôn ngữ sang tiếng \"<strong class=\"change_to_language_text\"></strong>\" ? Điều này sẽ ghi đè bản ghi tiếng \"<strong class=\"change_to_language_text\"></strong>\" nếu nó đã tồn tại!', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2181, 0, 'vi', 'plugins/language/language', 'current_language_edit_notification', 'Bạn đang chỉnh sửa phiên bản tiếng \"<strong class=\"current_language_text\">:language</strong>\"', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2182, 0, 'vi', 'plugins/language/language', 'hide_languages', 'Ẩn ngôn ngữ', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2183, 0, 'vi', 'plugins/language/language', 'hide_languages_description', 'Bạn có thể hoàn toàn ẩn ngôn ngữ cụ thể đối với người truy cập và công cụ tìm kiếm, nhưng sẽ vẫn hiển thị trong trang quản trị. Điều này cho phép bạn biết những ngôn ngữ nào đang được xử lý.', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2184, 0, 'vi', 'plugins/language/language', 'hide_languages_helper_display_hidden', '{0} Tất cả ngôn ngữ đang được hiển thị.|{1} :language đang bị ẩn đối với người truy cập.|[2, Inf]  :language đang bị ẩn đối với người truy cập.', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2185, 0, 'vi', 'plugins/language/language', 'language_display', 'Hiển thị ngôn ngữ', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2186, 0, 'vi', 'plugins/language/language', 'language_display_all', 'Hiển thị cả cờ và tên ngôn ngữ', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2187, 0, 'vi', 'plugins/language/language', 'language_display_flag_only', 'Chỉ hiển thị cờ', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2188, 0, 'vi', 'plugins/language/language', 'language_display_name_only', 'Chỉ hiển thị tên', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2189, 0, 'vi', 'plugins/language/language', 'language_hide_default', 'Ẩn ngôn ngữ mặc định trên URL', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2190, 0, 'vi', 'plugins/language/language', 'language_switcher_display_dropdown', 'Dropdown', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2191, 0, 'vi', 'plugins/language/language', 'language_switcher_display_list', 'Danh sách', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2192, 0, 'vi', 'plugins/language/language', 'settings', 'Cài đặt', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2193, 0, 'vi', 'plugins/language/language', 'switcher_display', 'Hiển thị bộ chuyển đổi ngôn ngữ', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2194, 0, 'vi', 'plugins/language/language', 'change_language', 'Ngôn ngữ', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2195, 0, 'vi', 'plugins/language/language', 'show_all', 'Hiển thị tất cả', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2196, 0, 'en', 'plugins/location/city', 'name', 'Cities', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2197, 0, 'en', 'plugins/location/city', 'create', 'New city', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2198, 0, 'en', 'plugins/location/city', 'edit', 'Edit city', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2199, 0, 'en', 'plugins/location/city', 'state', 'State', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2200, 0, 'en', 'plugins/location/city', 'select_state', 'Select a state...', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2201, 0, 'en', 'plugins/location/city', 'select_city', 'Select a city...', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2202, 0, 'en', 'plugins/location/city', 'country', 'Country', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2203, 0, 'en', 'plugins/location/city', 'select_country', 'Select a country...', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2204, 0, 'en', 'plugins/location/city', 'city', 'City', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2205, 0, 'en', 'plugins/location/country', 'name', 'Countries', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2206, 0, 'en', 'plugins/location/country', 'create', 'New country', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2207, 0, 'en', 'plugins/location/country', 'edit', 'Edit country', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2208, 0, 'en', 'plugins/location/country', 'nationality', 'Nationality', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2209, 0, 'en', 'plugins/location/location', 'name', 'Locations', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2210, 0, 'en', 'plugins/location/location', 'create', 'New location', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2211, 0, 'en', 'plugins/location/location', 'edit', 'Edit location', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2212, 0, 'en', 'plugins/location/location', 'all_states', 'All states', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2213, 0, 'en', 'plugins/location/location', 'abbreviation', 'Abbreviation', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2214, 0, 'en', 'plugins/location/location', 'abbreviation_placeholder', 'E.g: CA', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2215, 0, 'en', 'plugins/location/state', 'name', 'States', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2216, 0, 'en', 'plugins/location/state', 'create', 'New state', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2217, 0, 'en', 'plugins/location/state', 'edit', 'Edit state', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2218, 0, 'en', 'plugins/location/state', 'country', 'Country', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2219, 0, 'en', 'plugins/location/state', 'select_country', 'Select a country...', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2220, 0, 'en', 'plugins/location/state', 'state', 'State', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2221, 0, 'vi', 'plugins/location/city', 'name', 'Quận/huyện', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2222, 0, 'vi', 'plugins/location/city', 'create', 'Thêm quận/huyện', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2223, 0, 'vi', 'plugins/location/city', 'edit', 'Sửa quận/huyện', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2224, 0, 'vi', 'plugins/location/city', 'state', 'Tỉnh', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2225, 0, 'vi', 'plugins/location/city', 'select_state', 'Lựa chọn tỉnh/thành phố...', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2226, 0, 'vi', 'plugins/location/city', 'select_city', 'Lựa chọn quận/huyện...', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2227, 0, 'vi', 'plugins/location/city', 'country', 'Quốc gia', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2228, 0, 'vi', 'plugins/location/city', 'select_country', 'Lựa chọn quốc gia...', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2229, 0, 'vi', 'plugins/location/city', 'city', 'Quận/huyện', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2230, 0, 'vi', 'plugins/location/country', 'name', 'Quốc gia', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2231, 0, 'vi', 'plugins/location/country', 'create', 'Thêm quốc gia', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2232, 0, 'vi', 'plugins/location/country', 'edit', 'Sửa quốc gia', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2233, 0, 'vi', 'plugins/location/country', 'nationality', 'Quốc tịch', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2234, 0, 'vi', 'plugins/location/location', 'name', 'Địa điểm', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2235, 0, 'vi', 'plugins/location/location', 'create', 'Thêm địa điểm', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2236, 0, 'vi', 'plugins/location/location', 'edit', 'Sửa địa điểm', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2237, 0, 'vi', 'plugins/location/location', 'all_states', 'Tất cả tỉnh thành', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2238, 0, 'vi', 'plugins/location/state', 'name', 'Tỉnh/thành phố', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2239, 0, 'vi', 'plugins/location/state', 'create', 'Thêm tỉnh/thành phố', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2240, 0, 'vi', 'plugins/location/state', 'edit', 'Sửa tỉnh/thành phố', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2241, 0, 'vi', 'plugins/location/state', 'country', 'Quốc gia', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2242, 0, 'vi', 'plugins/location/state', 'select_country', 'Lựa chọn quốc gia...', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2243, 0, 'vi', 'plugins/location/state', 'state', 'Tỉnh/thành phố', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2244, 0, 'en', 'plugins/payment/payment', 'payments', 'Payments', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2245, 0, 'en', 'plugins/payment/payment', 'checkout_success', 'Checkout successfully!', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2246, 0, 'en', 'plugins/payment/payment', 'view_payment', 'View payment #', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2247, 0, 'en', 'plugins/payment/payment', 'charge_id', 'Charge ID', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2248, 0, 'en', 'plugins/payment/payment', 'amount', 'Amount', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2249, 0, 'en', 'plugins/payment/payment', 'currency', 'Currency', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2250, 0, 'en', 'plugins/payment/payment', 'user', 'User', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2251, 0, 'en', 'plugins/payment/payment', 'stripe', 'Stripe', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2252, 0, 'en', 'plugins/payment/payment', 'paypal', 'PayPal', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2253, 0, 'en', 'plugins/payment/payment', 'action', 'Action', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2254, 0, 'en', 'plugins/payment/payment', 'payment_via_card', 'Payment via card', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2255, 0, 'en', 'plugins/payment/payment', 'card_number', 'Card number', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2256, 0, 'en', 'plugins/payment/payment', 'full_name', 'Full name', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2257, 0, 'en', 'plugins/payment/payment', 'payment_via_paypal', 'Fast and safe online payment via PayPal.', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2258, 0, 'en', 'plugins/payment/payment', 'mm_yy', 'MM/YY', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2259, 0, 'en', 'plugins/payment/payment', 'cvc', 'CVC', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2260, 0, 'en', 'plugins/payment/payment', 'details', 'Details', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2261, 0, 'en', 'plugins/payment/payment', 'payer_name', 'Payer Name', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2262, 0, 'en', 'plugins/payment/payment', 'email', 'Email', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2263, 0, 'en', 'plugins/payment/payment', 'phone', 'Phone', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2264, 0, 'en', 'plugins/payment/payment', 'country', 'Country', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2265, 0, 'en', 'plugins/payment/payment', 'shipping_address', 'Shipping Address', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2266, 0, 'en', 'plugins/payment/payment', 'payment_details', 'Payment Details', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2267, 0, 'en', 'plugins/payment/payment', 'card', 'Card', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2268, 0, 'en', 'plugins/payment/payment', 'address', 'Address', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2269, 0, 'en', 'plugins/payment/payment', 'could_not_get_stripe_token', 'Could not get Stripe token to make a charge.', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2270, 0, 'en', 'plugins/payment/payment', 'payment_id', 'Payment ID', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2271, 0, 'en', 'plugins/payment/payment', 'payment_methods', 'Payment methods', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2272, 0, 'en', 'plugins/payment/payment', 'transactions', 'Transactions', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2273, 0, 'en', 'plugins/payment/payment', 'payment_methods_description', 'Setup payment methods for website', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2274, 0, 'en', 'plugins/payment/payment', 'paypal_description', 'Customer can buy product and pay directly via PayPal', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2275, 0, 'en', 'plugins/payment/payment', 'use', 'Use', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2276, 0, 'en', 'plugins/payment/payment', 'stripe_description', 'Customer can buy product and pay directly using Visa, Credit card via Stripe', '2021-10-18 20:09:29', '2021-10-18 20:09:50'),
(2277, 0, 'en', 'plugins/payment/payment', 'edit', 'Edit', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2278, 0, 'en', 'plugins/payment/payment', 'settings', 'Settings', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2279, 0, 'en', 'plugins/payment/payment', 'activate', 'Activate', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2280, 0, 'en', 'plugins/payment/payment', 'deactivate', 'Deactivate', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2281, 0, 'en', 'plugins/payment/payment', 'update', 'Update', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2282, 0, 'en', 'plugins/payment/payment', 'configuration_instruction', 'Configuration instruction for :name', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2283, 0, 'en', 'plugins/payment/payment', 'configuration_requirement', 'To use :name, you need', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2284, 0, 'en', 'plugins/payment/payment', 'service_registration', 'Register with :name', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2285, 0, 'en', 'plugins/payment/payment', 'after_service_registration_msg', 'After registration at :name, you will have Client ID, Client Secret', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2286, 0, 'en', 'plugins/payment/payment', 'enter_client_id_and_secret', 'Enter Client ID, Secret into the box in right hand', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2287, 0, 'en', 'plugins/payment/payment', 'method_name', 'Method name', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2288, 0, 'en', 'plugins/payment/payment', 'please_provide_information', 'Please provide information', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2289, 0, 'en', 'plugins/payment/payment', 'client_id', 'Client ID', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2290, 0, 'en', 'plugins/payment/payment', 'client_secret', 'Client Secret', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2291, 0, 'en', 'plugins/payment/payment', 'secret', 'Secret', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2292, 0, 'en', 'plugins/payment/payment', 'stripe_key', 'Stripe Public Key', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2293, 0, 'en', 'plugins/payment/payment', 'stripe_secret', 'Stripe Private Key', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2294, 0, 'en', 'plugins/payment/payment', 'stripe_after_service_registration_msg', 'After registration at :name, you will have Public, Secret keys', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2295, 0, 'en', 'plugins/payment/payment', 'stripe_enter_client_id_and_secret', 'Enter Public, Secret keys into the box in right hand', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2296, 0, 'en', 'plugins/payment/payment', 'pay_online_via', 'Pay online via :name', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2297, 0, 'en', 'plugins/payment/payment', 'sandbox_mode', 'Sandbox mode', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2298, 0, 'en', 'plugins/payment/payment', 'deactivate_payment_method', 'Deactivate payment method', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2299, 0, 'en', 'plugins/payment/payment', 'deactivate_payment_method_description', 'Do you really want to deactivate this payment method?', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2300, 0, 'en', 'plugins/payment/payment', 'agree', 'Agree', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2301, 0, 'en', 'plugins/payment/payment', 'name', 'Payments', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2302, 0, 'en', 'plugins/payment/payment', 'create', 'New payment', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2303, 0, 'en', 'plugins/payment/payment', 'go_back', 'Go back', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2304, 0, 'en', 'plugins/payment/payment', 'information', 'Information', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2305, 0, 'en', 'plugins/payment/payment', 'methods.paypal', 'PayPal', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2306, 0, 'en', 'plugins/payment/payment', 'methods.stripe', 'Stripe', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2307, 0, 'en', 'plugins/payment/payment', 'methods.cod', 'Cash on delivery (COD)', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2308, 0, 'en', 'plugins/payment/payment', 'methods.bank_transfer', 'Bank transfer', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2309, 0, 'en', 'plugins/payment/payment', 'statuses.pending', 'Pending', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2310, 0, 'en', 'plugins/payment/payment', 'statuses.completed', 'Completed', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2311, 0, 'en', 'plugins/payment/payment', 'statuses.refunding', 'Refunding', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2312, 0, 'en', 'plugins/payment/payment', 'statuses.refunded', 'Refunded', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2313, 0, 'en', 'plugins/payment/payment', 'statuses.fraud', 'Fraud', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2314, 0, 'en', 'plugins/payment/payment', 'statuses.failed', 'Failed', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2315, 0, 'en', 'plugins/payment/payment', 'payment_methods_instruction', 'Guide customers to pay directly. You can choose to pay by delivery or bank transfer', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2316, 0, 'en', 'plugins/payment/payment', 'payment_method_description', 'Payment guide - (Displayed on the notice of successful purchase and payment page)', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2317, 0, 'en', 'plugins/payment/payment', 'payment_via_cod', 'Cash on delivery (COD)', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2318, 0, 'en', 'plugins/payment/payment', 'payment_via_bank_transfer', 'Bank transfer', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2319, 0, 'en', 'plugins/payment/payment', 'payment_pending', 'Checkout successfully. Your payment is pending and will be checked by our staff.', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2320, 0, 'en', 'plugins/payment/payment', 'created_at', 'Created At', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2321, 0, 'en', 'plugins/payment/payment', 'payment_channel', 'Payment Channel', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2322, 0, 'en', 'plugins/payment/payment', 'total', 'Total', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2323, 0, 'en', 'plugins/payment/payment', 'status', 'Status', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2324, 0, 'en', 'plugins/payment/payment', 'default_payment_method', 'Default payment method', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2325, 0, 'en', 'plugins/payment/payment', 'turn_off_success', 'Turn off payment method successfully!', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2326, 0, 'en', 'plugins/payment/payment', 'saved_payment_method_success', 'Saved payment method successfully!', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2327, 0, 'en', 'plugins/payment/payment', 'saved_payment_settings_success', 'Saved payment settings successfully!', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2328, 0, 'en', 'plugins/payment/payment', 'payment_name', 'Name', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2329, 0, 'en', 'plugins/payment/payment', 'callback_url', 'Callback URL', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2330, 0, 'en', 'plugins/payment/payment', 'return_url', 'Return URL', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2331, 0, 'en', 'plugins/payment/payment', 'payment_not_found', 'Payment not found!', '2021-10-18 20:09:30', '2021-10-18 20:09:50');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(2332, 0, 'en', 'plugins/payment/payment', 'refunds.title', 'Refunds', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2333, 0, 'en', 'plugins/payment/payment', 'refunds.id', 'ID', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2334, 0, 'en', 'plugins/payment/payment', 'refunds.breakdowns', 'Breakdowns', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2335, 0, 'en', 'plugins/payment/payment', 'refunds.gross_amount', 'Gross amount', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2336, 0, 'en', 'plugins/payment/payment', 'refunds.paypal_fee', 'PayPal fee', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2337, 0, 'en', 'plugins/payment/payment', 'refunds.net_amount', 'Net amount', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2338, 0, 'en', 'plugins/payment/payment', 'refunds.total_refunded_amount', 'Total refunded amount', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2339, 0, 'en', 'plugins/payment/payment', 'refunds.create_time', 'Create time', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2340, 0, 'en', 'plugins/payment/payment', 'refunds.update_time', 'Update time', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2341, 0, 'en', 'plugins/payment/payment', 'refunds.status', 'Status', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2342, 0, 'en', 'plugins/payment/payment', 'refunds.description', 'Description', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2343, 0, 'en', 'plugins/payment/payment', 'refunds.refunded_at', 'Refunded at', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2344, 0, 'en', 'plugins/payment/payment', 'refunds.error_message', 'Error message', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2345, 0, 'en', 'plugins/payment/payment', 'view_response_source', 'View response source', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2346, 0, 'en', 'plugins/payment/payment', 'status_is_not_completed', 'Status is not COMPLETED', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2347, 0, 'en', 'plugins/payment/payment', 'cannot_found_capture_id', 'Can not found capture id with payment detail', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2348, 0, 'en', 'plugins/payment/payment', 'amount_refunded', 'Amount refunded', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2349, 0, 'en', 'plugins/payment/payment', 'amount_remaining', 'Amount remaining', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2350, 0, 'en', 'plugins/payment/payment', 'paid_at', 'Paid At', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2351, 0, 'en', 'plugins/payment/payment', 'invalid_settings', 'Settings for :name are invalid!', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2352, 0, 'en', 'plugins/payment/payment', 'view_transaction', 'Transaction \":charge_id\"', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2353, 0, 'vi', 'plugins/payment/payment', 'payments', 'Thanh toán', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2354, 0, 'vi', 'plugins/payment/payment', 'checkout_success', 'Thanh toán thành công!', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2355, 0, 'vi', 'plugins/payment/payment', 'view_payment', 'Xem thanh toán #', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2356, 0, 'vi', 'plugins/payment/payment', 'charge_id', 'Mã thanh toán', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2357, 0, 'vi', 'plugins/payment/payment', 'amount', 'Số tiền', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2358, 0, 'vi', 'plugins/payment/payment', 'currency', 'Loại tiền tệ', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2359, 0, 'vi', 'plugins/payment/payment', 'user', 'Người dùng', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2360, 0, 'vi', 'plugins/payment/payment', 'stripe', 'Stripe', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2361, 0, 'vi', 'plugins/payment/payment', 'paypal', 'PayPal', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2362, 0, 'vi', 'plugins/payment/payment', 'action', 'Hành động', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2363, 0, 'vi', 'plugins/payment/payment', 'payment_via_card', 'Thanh toán qua thẻ', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2364, 0, 'vi', 'plugins/payment/payment', 'card_number', 'Số thẻ', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2365, 0, 'vi', 'plugins/payment/payment', 'full_name', 'Họ tên', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2366, 0, 'vi', 'plugins/payment/payment', 'payment_via_paypal', 'Thanh toán qua PayPal', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2367, 0, 'vi', 'plugins/payment/payment', 'mm_yy', 'MM/YY', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2368, 0, 'vi', 'plugins/payment/payment', 'cvc', 'CVC', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2369, 0, 'vi', 'plugins/payment/payment', 'details', 'Chi tiết', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2370, 0, 'vi', 'plugins/payment/payment', 'payer_name', 'Tên người mua', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2371, 0, 'vi', 'plugins/payment/payment', 'email', 'Email', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2372, 0, 'vi', 'plugins/payment/payment', 'phone', 'Điện thoại', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2373, 0, 'vi', 'plugins/payment/payment', 'country', 'Quốc gia', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2374, 0, 'vi', 'plugins/payment/payment', 'shipping_address', 'Địa chỉ giao hàng', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2375, 0, 'vi', 'plugins/payment/payment', 'payment_details', 'Chi tiết thanh toán', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2376, 0, 'vi', 'plugins/payment/payment', 'card', 'Thẻ', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2377, 0, 'vi', 'plugins/payment/payment', 'address', 'Địa chỉ', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2378, 0, 'vi', 'plugins/payment/payment', 'could_not_get_stripe_token', 'Không thể lấy mã Stripe để thanh toán.', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2379, 0, 'vi', 'plugins/payment/payment', 'payment_id', 'Mã thanh toán', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2380, 0, 'vi', 'plugins/payment/payment', 'payment_methods', 'Phương thức thanh toán', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2381, 0, 'vi', 'plugins/payment/payment', 'transactions', 'Lịch sử giao dịch', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2382, 0, 'vi', 'plugins/payment/payment', 'payment_methods_description', 'Cài đặt các phương thức thanh toán cho website', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2383, 0, 'vi', 'plugins/payment/payment', 'paypal_description', 'Khách hàng có thể mua hàng và thanh toán trực tiếp thông qua cổng thanh toán PayPal', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2384, 0, 'vi', 'plugins/payment/payment', 'use', 'Dùng', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2385, 0, 'vi', 'plugins/payment/payment', 'stripe_description', 'Khách hàng có thể mua hàng và thanh toán bằng Visa, Credit card thông qua cổng thanh toán Stripe', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2386, 0, 'vi', 'plugins/payment/payment', 'edit', 'Chỉnh sửa', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2387, 0, 'vi', 'plugins/payment/payment', 'settings', 'Cài đặt', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2388, 0, 'vi', 'plugins/payment/payment', 'activate', 'Kích hoạt', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2389, 0, 'vi', 'plugins/payment/payment', 'deactivate', 'Huỷ kích hoạt', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2390, 0, 'vi', 'plugins/payment/payment', 'update', 'Cập nhật', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2391, 0, 'vi', 'plugins/payment/payment', 'configuration_instruction', 'Hướng dẫn cấu hình :name', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2392, 0, 'vi', 'plugins/payment/payment', 'configuration_requirement', 'Để sử dụng :name bạn cần', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2393, 0, 'vi', 'plugins/payment/payment', 'service_registration', 'Đăng ký dịch vụ với :name', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2394, 0, 'vi', 'plugins/payment/payment', 'after_service_registration_msg', 'Sau khi hoàn tất các bước đăng ký tại :name, bạn sẽ có các thông số Client ID, Client Secret', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2395, 0, 'vi', 'plugins/payment/payment', 'enter_client_id_and_secret', 'Nhập các thông số Client ID, Secret vào ô bên phải', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2396, 0, 'vi', 'plugins/payment/payment', 'method_name', 'Tên phương thức', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2397, 0, 'vi', 'plugins/payment/payment', 'please_provide_information', 'Xin vui lòng cung cấp thông tin', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2398, 0, 'vi', 'plugins/payment/payment', 'client_id', 'Client ID', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2399, 0, 'vi', 'plugins/payment/payment', 'client_secret', 'Client Secret', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2400, 0, 'vi', 'plugins/payment/payment', 'stripe_key', 'Stripe Key', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2401, 0, 'vi', 'plugins/payment/payment', 'stripe_secret', 'Stripe Secret', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2402, 0, 'vi', 'plugins/payment/payment', 'stripe_after_service_registration_msg', 'After registration at :name, you will have Public, Secret keys', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2403, 0, 'vi', 'plugins/payment/payment', 'stripe_enter_client_id_and_secret', 'Enter Public, Secret keys into the box in right hand', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2404, 0, 'vi', 'plugins/payment/payment', 'secret', 'Secret', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2405, 0, 'vi', 'plugins/payment/payment', 'pay_online_via', 'Thanh toán online qua :name', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2406, 0, 'vi', 'plugins/payment/payment', 'sandbox_mode', 'Chế độ thử nghiệm', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2407, 0, 'vi', 'plugins/payment/payment', 'deactivate_payment_method', 'Huỷ kích hoạt phương thức', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2408, 0, 'vi', 'plugins/payment/payment', 'deactivate_payment_method_description', 'Bạn có chắc chắn muốn huỷ phương thức thành toán này?', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2409, 0, 'vi', 'plugins/payment/payment', 'agree', 'Đồng ý', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2410, 0, 'vi', 'plugins/payment/payment', 'name', 'Thanh toán', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2411, 0, 'vi', 'plugins/payment/payment', 'create', 'Thêm thanh toán mới', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2412, 0, 'vi', 'plugins/payment/payment', 'go_back', 'Trở lại', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2413, 0, 'vi', 'plugins/payment/payment', 'information', 'Thông tin', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2414, 0, 'vi', 'plugins/payment/payment', 'methods.paypal', 'PayPal', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2415, 0, 'vi', 'plugins/payment/payment', 'methods.stripe', 'Stripe', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2416, 0, 'vi', 'plugins/payment/payment', 'methods.cod', 'Thanh toán khi giao hàng (COD)', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2417, 0, 'vi', 'plugins/payment/payment', 'methods.bank_transfer', 'Chuyển khoản qua ngân hàng', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2418, 0, 'vi', 'plugins/payment/payment', 'statuses.pending', 'Chưa hoàn tất', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2419, 0, 'vi', 'plugins/payment/payment', 'statuses.completed', 'Đã hoàn thành', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2420, 0, 'vi', 'plugins/payment/payment', 'statuses.refunding', 'Đang hoàn tiền', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2421, 0, 'vi', 'plugins/payment/payment', 'statuses.refunded', 'Đã hoàn tiền', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2422, 0, 'vi', 'plugins/payment/payment', 'statuses.fraud', 'Gian lận', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2423, 0, 'vi', 'plugins/payment/payment', 'statuses.failed', 'Thất bại', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2424, 0, 'vi', 'plugins/payment/payment', 'payment_methods_instruction', 'Hướng dẫn khách hàng thanh toán trực tiếp. Có thể chọn thanh toán khi giao hàng hoặc chuyển khoản', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2425, 0, 'vi', 'plugins/payment/payment', 'payment_method_description', 'Hướng dẫn thanh toán – (Hiển thị ở trang thông báo mua hàng thành công và trang thanh toán)', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2426, 0, 'vi', 'plugins/payment/payment', 'payment_via_cod', 'Thanh toán khi nhận hàng (COD)', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2427, 0, 'vi', 'plugins/payment/payment', 'payment_via_bank_transfer', 'Chuyển khoản qua ngân hàng', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2428, 0, 'vi', 'plugins/payment/payment', 'payment_pending', 'Thực hiện thành công. Thanh toán của bạn đang được xử lý và sẽ được xác nhận bởi nhân viên.', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2429, 0, 'vi', 'plugins/payment/payment', 'created_at', 'Ngày tạo', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2430, 0, 'vi', 'plugins/payment/payment', 'payment_channel', 'Phương thức thanh toán', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2431, 0, 'vi', 'plugins/payment/payment', 'total', 'Tổng cộng', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2432, 0, 'vi', 'plugins/payment/payment', 'status', 'Trạng thái', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2433, 0, 'vi', 'plugins/payment/payment', 'default_payment_method', 'Phương thức thanh toán mặc định', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2434, 0, 'en', 'plugins/real-estate/account-property', 'draft_properties', 'Draft Properties', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2435, 0, 'en', 'plugins/real-estate/account-property', 'pending_properties', 'Pending Properties', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2436, 0, 'en', 'plugins/real-estate/account-property', 'published_properties', 'Published Properties', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2437, 0, 'en', 'plugins/real-estate/account-property', 'properties', 'Properties', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2438, 0, 'en', 'plugins/real-estate/account-property', 'write_property', 'Write a property', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2439, 0, 'en', 'plugins/real-estate/account', 'create', 'New account', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2440, 0, 'en', 'plugins/real-estate/account', 'edit', 'Edit account \":name\"', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2441, 0, 'en', 'plugins/real-estate/account', 'name', 'Accounts', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2442, 0, 'en', 'plugins/real-estate/account', 'form.email', 'Email', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2443, 0, 'en', 'plugins/real-estate/account', 'form.password', 'Password', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2444, 0, 'en', 'plugins/real-estate/account', 'form.password_confirmation', 'Password confirmation', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2445, 0, 'en', 'plugins/real-estate/account', 'form.change_password', 'Change password?', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2446, 0, 'en', 'plugins/real-estate/account', 'forgot_password', 'Forgot password', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2447, 0, 'en', 'plugins/real-estate/account', 'login', 'Login', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2448, 0, 'en', 'plugins/real-estate/account', 'buy_credits', 'Buy credits', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2449, 0, 'en', 'plugins/real-estate/account', 'credits', 'credits', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2450, 0, 'en', 'plugins/real-estate/account', 'account_settings', 'Account settings', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2451, 0, 'en', 'plugins/real-estate/account', 'update_profile_success', 'Update profile successfully!', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2452, 0, 'en', 'plugins/real-estate/account', 'security', 'Security', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2453, 0, 'en', 'plugins/real-estate/account', 'packages', 'Packages', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2454, 0, 'en', 'plugins/real-estate/account', 'transactions', 'Transactions', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2455, 0, 'en', 'plugins/real-estate/account', 'subscribe_package', 'Subscribe package \":name\"', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2456, 0, 'en', 'plugins/real-estate/account', 'first_name', 'First Name', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2457, 0, 'en', 'plugins/real-estate/account', 'last_name', 'Last Name', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2458, 0, 'en', 'plugins/real-estate/account', 'username', 'Username', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2459, 0, 'en', 'plugins/real-estate/account', 'username_placeholder', 'Ex: john_smith', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2460, 0, 'en', 'plugins/real-estate/account', 'phone', 'Phone', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2461, 0, 'en', 'plugins/real-estate/account', 'phone_placeholder', 'Phone', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2462, 0, 'en', 'plugins/real-estate/account', 'email_placeholder', 'Ex: example@gmail.com', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2463, 0, 'en', 'plugins/real-estate/account', 'dob', 'Date of birth', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2464, 0, 'en', 'plugins/real-estate/category', 'name', 'Categories', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2465, 0, 'en', 'plugins/real-estate/category', 'create', 'New category', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2466, 0, 'en', 'plugins/real-estate/category', 'edit', 'Edit category', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2467, 0, 'en', 'plugins/real-estate/category', 'menu', 'Property categories', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2468, 0, 'en', 'plugins/real-estate/category', 'none', 'None', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2469, 0, 'en', 'plugins/real-estate/category', 'total_properties', 'Total properties', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2470, 0, 'en', 'plugins/real-estate/category', 'total_projects', 'Total projects', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2471, 0, 'en', 'plugins/real-estate/category', 'is_default', 'Is default', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2472, 0, 'en', 'plugins/real-estate/consult', 'name', 'Consults', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2473, 0, 'en', 'plugins/real-estate/consult', 'edit', 'View consult', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2474, 0, 'en', 'plugins/real-estate/consult', 'statuses.read', 'Read', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2475, 0, 'en', 'plugins/real-estate/consult', 'statuses.unread', 'Unread', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2476, 0, 'en', 'plugins/real-estate/consult', 'phone', 'Phone', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2477, 0, 'en', 'plugins/real-estate/consult', 'content', 'Details', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2478, 0, 'en', 'plugins/real-estate/consult', 'consult_information', 'Consult information', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2479, 0, 'en', 'plugins/real-estate/consult', 'email.header', 'Email', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2480, 0, 'en', 'plugins/real-estate/consult', 'email.title', 'New consult from your site', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2481, 0, 'en', 'plugins/real-estate/consult', 'email.success', 'Send consult successfully!', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2482, 0, 'en', 'plugins/real-estate/consult', 'email.failed', 'Can\'t send request on this time, please try again later!', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2483, 0, 'en', 'plugins/real-estate/consult', 'form.name.required', 'Name is required', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2484, 0, 'en', 'plugins/real-estate/consult', 'form.email.required', 'Email is required', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2485, 0, 'en', 'plugins/real-estate/consult', 'form.email.email', 'The email address is not valid', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2486, 0, 'en', 'plugins/real-estate/consult', 'form.content.required', 'Content is required', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2487, 0, 'en', 'plugins/real-estate/consult', 'form.g-recaptcha-response.required', 'Please confirm you are not a robot before sending the message.', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2488, 0, 'en', 'plugins/real-estate/consult', 'form.g-recaptcha-response.captcha', 'You are not confirm robot yet.', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2489, 0, 'en', 'plugins/real-estate/consult', 'consult_sent_from', 'This consult information sent from', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2490, 0, 'en', 'plugins/real-estate/consult', 'time', 'Time', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2491, 0, 'en', 'plugins/real-estate/consult', 'consult_id', 'Consult ID', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2492, 0, 'en', 'plugins/real-estate/consult', 'form_name', 'Name', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2493, 0, 'en', 'plugins/real-estate/consult', 'form_email', 'Email', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2494, 0, 'en', 'plugins/real-estate/consult', 'form_phone', 'Phone', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2495, 0, 'en', 'plugins/real-estate/consult', 'mark_as_read', 'Mark as read', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2496, 0, 'en', 'plugins/real-estate/consult', 'mark_as_unread', 'Mark as unread', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2497, 0, 'en', 'plugins/real-estate/consult', 'new_consult_notice', 'You have <span class=\"bold\">:count</span> New Consults', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2498, 0, 'en', 'plugins/real-estate/consult', 'view_all', 'View all', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2499, 0, 'en', 'plugins/real-estate/consult', 'project', 'Project', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2500, 0, 'en', 'plugins/real-estate/consult', 'property', 'Property', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2501, 0, 'en', 'plugins/real-estate/currency', 'currencies', 'Currencies', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2502, 0, 'en', 'plugins/real-estate/currency', 'setting_description', 'List of currencies using on website', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2503, 0, 'en', 'plugins/real-estate/currency', 'name', 'Name', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2504, 0, 'en', 'plugins/real-estate/currency', 'symbol', 'Symbol', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2505, 0, 'en', 'plugins/real-estate/currency', 'number_of_decimals', 'Number of decimals', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2506, 0, 'en', 'plugins/real-estate/currency', 'exchange_rate', 'Exchange rate', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2507, 0, 'en', 'plugins/real-estate/currency', 'is_prefix_symbol', 'Position of symbol', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2508, 0, 'en', 'plugins/real-estate/currency', 'is_default', 'Is default?', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2509, 0, 'en', 'plugins/real-estate/currency', 'remove', 'Remove', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2510, 0, 'en', 'plugins/real-estate/currency', 'new_currency', 'Add a new currency', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2511, 0, 'en', 'plugins/real-estate/currency', 'save_settings', 'Save settings', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2512, 0, 'en', 'plugins/real-estate/currency', 'before_number', 'Before number', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2513, 0, 'en', 'plugins/real-estate/currency', 'after_number', 'After number', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2514, 0, 'en', 'plugins/real-estate/currency', 'require_at_least_one_currency', 'The system requires at least one currency!', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2515, 0, 'en', 'plugins/real-estate/dashboard', 'joined_on', 'Joined :date', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2516, 0, 'en', 'plugins/real-estate/dashboard', 'dob', 'Born :date', '2021-10-18 20:09:30', '2021-10-18 20:09:50'),
(2517, 0, 'en', 'plugins/real-estate/dashboard', 'email', 'Email', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2518, 0, 'en', 'plugins/real-estate/dashboard', 'username', 'Username', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2519, 0, 'en', 'plugins/real-estate/dashboard', 'email_or_username', 'Email/Username', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2520, 0, 'en', 'plugins/real-estate/dashboard', 'password', 'Password', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2521, 0, 'en', 'plugins/real-estate/dashboard', 'password-confirmation', 'Confirm Password', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2522, 0, 'en', 'plugins/real-estate/dashboard', 'remember-me', 'Remember Me', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2523, 0, 'en', 'plugins/real-estate/dashboard', 'login-title', 'Login', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2524, 0, 'en', 'plugins/real-estate/dashboard', 'login-cta', 'Login', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2525, 0, 'en', 'plugins/real-estate/dashboard', 'register-title', 'Register', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2526, 0, 'en', 'plugins/real-estate/dashboard', 'register-cta', 'Register', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2527, 0, 'en', 'plugins/real-estate/dashboard', 'forgot-password-cta', 'Forgot Your Password?', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2528, 0, 'en', 'plugins/real-estate/dashboard', 'name', 'Name', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2529, 0, 'en', 'plugins/real-estate/dashboard', 'reset-password-title', 'Reset Password', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2530, 0, 'en', 'plugins/real-estate/dashboard', 'reset-password-cta', 'Reset Password', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2531, 0, 'en', 'plugins/real-estate/dashboard', 'cancel-link', 'Cancel', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2532, 0, 'en', 'plugins/real-estate/dashboard', 'logout-cta', 'Logout', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2533, 0, 'en', 'plugins/real-estate/dashboard', 'header_profile_link', 'Profile', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2534, 0, 'en', 'plugins/real-estate/dashboard', 'header_settings_link', 'Settings', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2535, 0, 'en', 'plugins/real-estate/dashboard', 'header_logout_link', 'Logout', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2536, 0, 'en', 'plugins/real-estate/dashboard', 'unknown_state', 'Unknown', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2537, 0, 'en', 'plugins/real-estate/dashboard', 'close', 'Close', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2538, 0, 'en', 'plugins/real-estate/dashboard', 'save', 'Save', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2539, 0, 'en', 'plugins/real-estate/dashboard', 'loading', 'Loading...', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2540, 0, 'en', 'plugins/real-estate/dashboard', 'new_image', 'New image', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2541, 0, 'en', 'plugins/real-estate/dashboard', 'change_profile_image', 'Change avatar', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2542, 0, 'en', 'plugins/real-estate/dashboard', 'save_cropped_image_failed', 'Save cropped image failed!', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2543, 0, 'en', 'plugins/real-estate/dashboard', 'failed_to_crop_image', 'Failed to crop image', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2544, 0, 'en', 'plugins/real-estate/dashboard', 'failed_to_load_data', 'Failed to load data', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2545, 0, 'en', 'plugins/real-estate/dashboard', 'read_image_failed', 'Read image failed', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2546, 0, 'en', 'plugins/real-estate/dashboard', 'update_avatar_success', 'Update avatar successfully!', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2547, 0, 'en', 'plugins/real-estate/dashboard', 'change_avatar_description', 'Click on image to change avatar', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2548, 0, 'en', 'plugins/real-estate/dashboard', 'notices.error', 'Error!', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2549, 0, 'en', 'plugins/real-estate/dashboard', 'notices.success', 'Success!', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2550, 0, 'en', 'plugins/real-estate/dashboard', 'sidebar_title', 'Personal settings', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2551, 0, 'en', 'plugins/real-estate/dashboard', 'sidebar_information', 'Account Information', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2552, 0, 'en', 'plugins/real-estate/dashboard', 'sidebar_security', 'Security', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2553, 0, 'en', 'plugins/real-estate/dashboard', 'sidebar_packages', 'Packages', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2554, 0, 'en', 'plugins/real-estate/dashboard', 'sidebar_transactions', 'Transactions', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2555, 0, 'en', 'plugins/real-estate/dashboard', 'account_field_title', 'Account Information', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2556, 0, 'en', 'plugins/real-estate/dashboard', 'profile-picture', 'Profile picture', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2557, 0, 'en', 'plugins/real-estate/dashboard', 'uploading', 'Uploading...', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2558, 0, 'en', 'plugins/real-estate/dashboard', 'phone', 'Phone', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2559, 0, 'en', 'plugins/real-estate/dashboard', 'first_name', 'First name', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2560, 0, 'en', 'plugins/real-estate/dashboard', 'last_name', 'Last name', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2561, 0, 'en', 'plugins/real-estate/dashboard', 'description', 'Short description', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2562, 0, 'en', 'plugins/real-estate/dashboard', 'description_placeholder', 'Tell something about yourself...', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2563, 0, 'en', 'plugins/real-estate/dashboard', 'verified', 'Verified', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2564, 0, 'en', 'plugins/real-estate/dashboard', 'verify_require_desc', 'Please verify email by link we sent to you.', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2565, 0, 'en', 'plugins/real-estate/dashboard', 'birthday', 'Birthday', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2566, 0, 'en', 'plugins/real-estate/dashboard', 'year_lc', 'year', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2567, 0, 'en', 'plugins/real-estate/dashboard', 'month_lc', 'month', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2568, 0, 'en', 'plugins/real-estate/dashboard', 'day_lc', 'day', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2569, 0, 'en', 'plugins/real-estate/dashboard', 'gender', 'Gender', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2570, 0, 'en', 'plugins/real-estate/dashboard', 'gender_male', 'Male', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2571, 0, 'en', 'plugins/real-estate/dashboard', 'gender_female', 'Female', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2572, 0, 'en', 'plugins/real-estate/dashboard', 'gender_other', 'Other', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2573, 0, 'en', 'plugins/real-estate/dashboard', 'security_title', 'Security', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2574, 0, 'en', 'plugins/real-estate/dashboard', 'packages_title', 'Packages', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2575, 0, 'en', 'plugins/real-estate/dashboard', 'transactions_title', 'Transactions', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2576, 0, 'en', 'plugins/real-estate/dashboard', 'current_password', 'Current password', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2577, 0, 'en', 'plugins/real-estate/dashboard', 'password_new', 'New password', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2578, 0, 'en', 'plugins/real-estate/dashboard', 'password_new_confirmation', 'Confirmation password', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2579, 0, 'en', 'plugins/real-estate/dashboard', 'password_update_btn', 'Update password', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2580, 0, 'en', 'plugins/real-estate/dashboard', 'activity_logs', 'Activity Logs', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2581, 0, 'en', 'plugins/real-estate/dashboard', 'oops', 'Oops!', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2582, 0, 'en', 'plugins/real-estate/dashboard', 'no_activity_logs', 'You have no activity logs yet', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2583, 0, 'en', 'plugins/real-estate/dashboard', 'actions.create_property', 'You have created property \":name\"', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2584, 0, 'en', 'plugins/real-estate/dashboard', 'actions.update_property', 'You have updated property \":name\"', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2585, 0, 'en', 'plugins/real-estate/dashboard', 'actions.delete_property', 'You have deleted property \":name\"', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2586, 0, 'en', 'plugins/real-estate/dashboard', 'actions.update_setting', 'You have updated your settings', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2587, 0, 'en', 'plugins/real-estate/dashboard', 'actions.update_security', 'You have updated your security settings', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2588, 0, 'en', 'plugins/real-estate/dashboard', 'actions.your_property_updated_by_admin', 'Your property \":name\" is updated by administrator', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2589, 0, 'en', 'plugins/real-estate/dashboard', 'actions.changed_avatar', 'You have changed your avatar', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2590, 0, 'en', 'plugins/real-estate/dashboard', 'load_more', 'Load more', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2591, 0, 'en', 'plugins/real-estate/dashboard', 'loading_more', 'Loading...', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2592, 0, 'en', 'plugins/real-estate/dashboard', 'back-to-login', 'Back to login page', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2593, 0, 'en', 'plugins/real-estate/dashboard', 'no_transactions', 'No transactions', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2594, 0, 'en', 'plugins/real-estate/dashboard', 'approved_properties', 'Approved properties', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2595, 0, 'en', 'plugins/real-estate/dashboard', 'pending_approve_properties', 'Pending approve properties', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2596, 0, 'en', 'plugins/real-estate/dashboard', 'rejected_properties', 'Rejected properties', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2597, 0, 'en', 'plugins/real-estate/dashboard', 'your_credits', 'Your Credits', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2598, 0, 'en', 'plugins/real-estate/dashboard', 'credits', 'credits', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2599, 0, 'en', 'plugins/real-estate/dashboard', 'per_post', 'per post', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2600, 0, 'en', 'plugins/real-estate/dashboard', 'free', 'Free', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2601, 0, 'en', 'plugins/real-estate/dashboard', 'posts', 'post(s)', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2602, 0, 'en', 'plugins/real-estate/dashboard', 'total', 'Total', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2603, 0, 'en', 'plugins/real-estate/dashboard', 'purchase', 'Purchase', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2604, 0, 'en', 'plugins/real-estate/dashboard', 'select_facility', 'Select facility', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2605, 0, 'en', 'plugins/real-estate/dashboard', 'distance', 'Distance (Km)', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2606, 0, 'en', 'plugins/real-estate/dashboard', 'add_new', 'Add new', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2607, 0, 'en', 'plugins/real-estate/dashboard', 'resend', 'Resend', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2608, 0, 'en', 'plugins/real-estate/facility', 'name', 'Facilities', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2609, 0, 'en', 'plugins/real-estate/facility', 'create', 'New facility', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2610, 0, 'en', 'plugins/real-estate/facility', 'edit', 'Edit facility', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2611, 0, 'en', 'plugins/real-estate/feature', 'name', 'Features', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2612, 0, 'en', 'plugins/real-estate/feature', 'create', 'New feature', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2613, 0, 'en', 'plugins/real-estate/feature', 'edit', 'Edit feature', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2614, 0, 'en', 'plugins/real-estate/feature', 'messages.request.name_required', 'Name is required', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2615, 0, 'en', 'plugins/real-estate/feature', 'form.help_block', 'Property feature information', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2616, 0, 'en', 'plugins/real-estate/feature', 'form.name', 'Title', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2617, 0, 'en', 'plugins/real-estate/feature', 'form.icon', 'Icon', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2618, 0, 'en', 'plugins/real-estate/investor', 'name', 'Investors', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2619, 0, 'en', 'plugins/real-estate/investor', 'create', 'New investor', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2620, 0, 'en', 'plugins/real-estate/investor', 'edit', 'Edit investor', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2621, 0, 'en', 'plugins/real-estate/package', 'name', 'Packages', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2622, 0, 'en', 'plugins/real-estate/package', 'create', 'New package', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2623, 0, 'en', 'plugins/real-estate/package', 'edit', 'Edit package', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2624, 0, 'en', 'plugins/real-estate/package', 'price', 'Price', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2625, 0, 'en', 'plugins/real-estate/package', 'currency', 'Currency', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2626, 0, 'en', 'plugins/real-estate/package', 'percent_save', 'Percent save', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2627, 0, 'en', 'plugins/real-estate/package', 'number_of_listings', 'Number of listings', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2628, 0, 'en', 'plugins/real-estate/package', 'add_credit_success', 'Add credit successfully!', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2629, 0, 'en', 'plugins/real-estate/package', 'setup_payment_methods', 'Please setup payment methods (PayPal, Stripe, COD, Bank transfer)', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2630, 0, 'en', 'plugins/real-estate/package', 'add_credit_warning', 'Please add your credit to create your own posts here:', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2631, 0, 'en', 'plugins/real-estate/package', 'add_credit', 'Add credit', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2632, 0, 'en', 'plugins/real-estate/package', 'account_limit', 'Limit purchase by account', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2633, 0, 'en', 'plugins/real-estate/package', 'account_limit_placeholder', 'An account can purchase x times', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2634, 0, 'en', 'plugins/real-estate/package', 'subscribe_package', 'Subscribe package', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2635, 0, 'en', 'plugins/real-estate/package', 'add_credit_alert', 'Please add your credit to create your own posts.', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2636, 0, 'en', 'plugins/real-estate/project', 'name', 'Projects', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2637, 0, 'en', 'plugins/real-estate/project', 'create', 'New project', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2638, 0, 'en', 'plugins/real-estate/project', 'edit', 'Edit project', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2639, 0, 'en', 'plugins/real-estate/project', 'form.general_info', 'General information', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2640, 0, 'en', 'plugins/real-estate/project', 'form.name', 'Name', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2641, 0, 'en', 'plugins/real-estate/project', 'form.description', 'Description', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2642, 0, 'en', 'plugins/real-estate/project', 'form.basic_info', 'Basic information', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2643, 0, 'en', 'plugins/real-estate/project', 'form.location', 'Location', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2644, 0, 'en', 'plugins/real-estate/project', 'form.investor', 'Investor', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2645, 0, 'en', 'plugins/real-estate/project', 'form.number_block', 'Number blocks', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2646, 0, 'en', 'plugins/real-estate/project', 'form.number_floor', 'Number floors', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2647, 0, 'en', 'plugins/real-estate/project', 'form.number_flat', 'Number flats', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2648, 0, 'en', 'plugins/real-estate/project', 'form.date_finish', 'Finish date', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2649, 0, 'en', 'plugins/real-estate/project', 'form.date_sell', 'Open sell date', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2650, 0, 'en', 'plugins/real-estate/project', 'form.images', 'Images', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2651, 0, 'en', 'plugins/real-estate/project', 'form.price_from', 'Lowest price', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2652, 0, 'en', 'plugins/real-estate/project', 'form.price_to', 'Max price', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2653, 0, 'en', 'plugins/real-estate/project', 'form.currency', 'Currency', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2654, 0, 'en', 'plugins/real-estate/project', 'form.city', 'City', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2655, 0, 'en', 'plugins/real-estate/project', 'form.category', 'Category', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2656, 0, 'en', 'plugins/real-estate/project', 'form.latitude', 'Latitude', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2657, 0, 'en', 'plugins/real-estate/project', 'form.latitude_helper', 'Go here to get Latitude from address.', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2658, 0, 'en', 'plugins/real-estate/project', 'form.longitude', 'Longitude', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2659, 0, 'en', 'plugins/real-estate/project', 'form.longitude_helper', 'Go here to get Longitude from address.', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2660, 0, 'en', 'plugins/real-estate/project', 'form.categories', 'Categories', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2661, 0, 'en', 'plugins/real-estate/project', 'statuses.not_available', 'Not available', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2662, 0, 'en', 'plugins/real-estate/project', 'statuses.pre_sale', 'Preparing selling', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2663, 0, 'en', 'plugins/real-estate/project', 'statuses.selling', 'Selling', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2664, 0, 'en', 'plugins/real-estate/project', 'statuses.sold', 'Sold', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2665, 0, 'en', 'plugins/real-estate/project', 'statuses.building', 'Building', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2666, 0, 'en', 'plugins/real-estate/project', 'distance_key', 'Distance key between facilities', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2667, 0, 'en', 'plugins/real-estate/project', 'select_investor', 'Select an investor...', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2668, 0, 'en', 'plugins/real-estate/property', 'name', 'Properties', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2669, 0, 'en', 'plugins/real-estate/property', 'create', 'New property', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2670, 0, 'en', 'plugins/real-estate/property', 'edit', 'Edit property', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2671, 0, 'en', 'plugins/real-estate/property', 'form.main_info', 'General information', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2672, 0, 'en', 'plugins/real-estate/property', 'form.basic_info', 'Basic information', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2673, 0, 'en', 'plugins/real-estate/property', 'form.name', 'Title', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2674, 0, 'en', 'plugins/real-estate/property', 'form.type', 'Type', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2675, 0, 'en', 'plugins/real-estate/property', 'form.images', 'Images', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2676, 0, 'en', 'plugins/real-estate/property', 'form.location', 'Property location', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2677, 0, 'en', 'plugins/real-estate/property', 'form.number_bedroom', 'Number bedrooms', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2678, 0, 'en', 'plugins/real-estate/property', 'form.number_bathroom', 'Number bathrooms', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2679, 0, 'en', 'plugins/real-estate/property', 'form.number_floor', 'Number floors', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2680, 0, 'en', 'plugins/real-estate/property', 'form.square', 'Square :unit', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2681, 0, 'en', 'plugins/real-estate/property', 'form.price', 'Price', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2682, 0, 'en', 'plugins/real-estate/property', 'form.features', 'Features', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2683, 0, 'en', 'plugins/real-estate/property', 'form.project', 'Project', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2684, 0, 'en', 'plugins/real-estate/property', 'form.date', 'Date information', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2685, 0, 'en', 'plugins/real-estate/property', 'form.currency', 'Currency', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2686, 0, 'en', 'plugins/real-estate/property', 'form.city', 'City', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2687, 0, 'en', 'plugins/real-estate/property', 'form.period', 'Period', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2688, 0, 'en', 'plugins/real-estate/property', 'form.category', 'Category', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2689, 0, 'en', 'plugins/real-estate/property', 'form.latitude', 'Latitude', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2690, 0, 'en', 'plugins/real-estate/property', 'form.latitude_helper', 'Go here to get Latitude from address.', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2691, 0, 'en', 'plugins/real-estate/property', 'form.longitude', 'Longitude', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2692, 0, 'en', 'plugins/real-estate/property', 'form.longitude_helper', 'Go here to get Longitude from address.', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2693, 0, 'en', 'plugins/real-estate/property', 'form.categories', 'Categories', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2694, 0, 'en', 'plugins/real-estate/property', 'statuses.not_available', 'Not available', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2695, 0, 'en', 'plugins/real-estate/property', 'statuses.pre_sale', 'Preparing selling', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2696, 0, 'en', 'plugins/real-estate/property', 'statuses.selling', 'Selling', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2697, 0, 'en', 'plugins/real-estate/property', 'statuses.sold', 'Sold', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2698, 0, 'en', 'plugins/real-estate/property', 'statuses.renting', 'Renting', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2699, 0, 'en', 'plugins/real-estate/property', 'statuses.rented', 'Rented', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2700, 0, 'en', 'plugins/real-estate/property', 'statuses.building', 'Building', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2701, 0, 'en', 'plugins/real-estate/property', 'types.sale', 'Sale', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2702, 0, 'en', 'plugins/real-estate/property', 'types.rent', 'Rent', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2703, 0, 'en', 'plugins/real-estate/property', 'periods.day', 'Day', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2704, 0, 'en', 'plugins/real-estate/property', 'periods.month', 'Month', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2705, 0, 'en', 'plugins/real-estate/property', 'periods.year', 'Year', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2706, 0, 'en', 'plugins/real-estate/property', 'moderation_status', 'Moderation status', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2707, 0, 'en', 'plugins/real-estate/property', 'moderation-statuses.pending', 'Pending', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2708, 0, 'en', 'plugins/real-estate/property', 'moderation-statuses.approved', 'Approved', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2709, 0, 'en', 'plugins/real-estate/property', 'moderation-statuses.rejected', 'Rejected', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2710, 0, 'en', 'plugins/real-estate/property', 'renew_notice', 'Renew automatically (you will be charged again in :days days)?', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2711, 0, 'en', 'plugins/real-estate/property', 'distance_key', 'Distance key between facilities', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2712, 0, 'en', 'plugins/real-estate/property', 'never_expired', 'Never expired?', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2713, 0, 'en', 'plugins/real-estate/property', 'select_project', 'Select a project...', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2714, 0, 'en', 'plugins/real-estate/property', 'account', 'Account', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2715, 0, 'en', 'plugins/real-estate/property', 'select_account', 'Select an account..', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2716, 0, 'en', 'plugins/real-estate/property', 'expire_date', 'Expire date', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2717, 0, 'en', 'plugins/real-estate/property', 'never_expired_label', 'Never expired', '2021-10-18 20:09:31', '2021-10-18 20:09:50');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(2718, 0, 'en', 'plugins/real-estate/real-estate', 'name', 'Real Estate', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2719, 0, 'en', 'plugins/real-estate/real-estate', 'settings', 'Settings', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2720, 0, 'en', 'plugins/real-estate/settings', 'title', 'Accounts', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2721, 0, 'en', 'plugins/real-estate/settings', 'description', 'Settings for members', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2722, 0, 'en', 'plugins/real-estate/settings', 'verify_account_email', 'Verify account\'s email?', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2723, 0, 'en', 'plugins/real-estate/settings', 'square_unit', 'Unit of square', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2724, 0, 'en', 'plugins/real-estate/settings', 'square_unit_none', 'None', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2725, 0, 'en', 'plugins/real-estate/settings', 'square_unit_meter', 'Square Meter(m²)', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2726, 0, 'en', 'plugins/real-estate/settings', 'square_unit_feet', 'Square Feet(ft2)', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2727, 0, 'en', 'plugins/real-estate/settings', 'general', 'General settings', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2728, 0, 'en', 'plugins/real-estate/settings', 'general_description', 'Basic settings for Real Estate', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2729, 0, 'en', 'plugins/real-estate/settings', 'real_estate_convert_money_to_text_enabled', 'Convert money to text if it is too big?', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2730, 0, 'en', 'plugins/real-estate/settings', 'thousands_separator', 'Thousands separator', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2731, 0, 'en', 'plugins/real-estate/settings', 'decimal_separator', 'Decimal separator', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2732, 0, 'en', 'plugins/real-estate/settings', 'separator_period', 'Period (.)', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2733, 0, 'en', 'plugins/real-estate/settings', 'separator_comma', 'Comma (,)', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2734, 0, 'en', 'plugins/real-estate/settings', 'separator_space', 'Space ( )', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2735, 0, 'en', 'plugins/real-estate/settings', 'real_estate_enabled_register', 'Allow visitors to register account and post their properties?', '2021-10-18 20:09:31', '2021-10-18 20:09:50'),
(2736, 0, 'en', 'plugins/real-estate/settings', 'email.title', 'Real Estate', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2737, 0, 'en', 'plugins/real-estate/settings', 'email.description', 'Real estate email configuration', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2738, 0, 'en', 'plugins/real-estate/settings', 'property_expired_after_days', 'Property Expired Time (days)', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2739, 0, 'en', 'plugins/real-estate/settings', 'enable_post_approval', 'Enable post approval?', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2740, 0, 'en', 'plugins/real-estate/transaction', 'types.add', 'Add', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2741, 0, 'en', 'plugins/real-estate/transaction', 'types.remove', 'Remove', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2742, 0, 'vi', 'plugins/real-estate/account-property', 'draft_properties', 'Bài đăng nháp', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2743, 0, 'vi', 'plugins/real-estate/account-property', 'pending_properties', 'Tin đang xét duyệt', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2744, 0, 'vi', 'plugins/real-estate/account-property', 'published_properties', 'Tin đã được xuất bản', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2745, 0, 'vi', 'plugins/real-estate/account-property', 'properties', 'Tin bất động sản', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2746, 0, 'vi', 'plugins/real-estate/account-property', 'write_property', 'Đăng bài', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2747, 0, 'vi', 'plugins/real-estate/account', 'create', 'Thêm tài khoản', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2748, 0, 'vi', 'plugins/real-estate/account', 'edit', 'Sửa tài khoản', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2749, 0, 'vi', 'plugins/real-estate/account', 'name', 'Tài khoản', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2750, 0, 'vi', 'plugins/real-estate/account', 'form.email', 'Email', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2751, 0, 'vi', 'plugins/real-estate/account', 'form.password', 'Mật khẩu', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2752, 0, 'vi', 'plugins/real-estate/account', 'form.password_confirmation', 'Xác nhận mật khẩu', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2753, 0, 'vi', 'plugins/real-estate/account', 'form.change_password', 'Đổi mật khẩu', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2754, 0, 'vi', 'plugins/real-estate/account', 'forgot_password', 'Quên mật khẩu', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2755, 0, 'vi', 'plugins/real-estate/account', 'login', 'Đăng nhập', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2756, 0, 'vi', 'plugins/real-estate/account', 'buy_credits', 'Mua tín dụng', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2757, 0, 'vi', 'plugins/real-estate/account', 'credits', 'tín dụng', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2758, 0, 'vi', 'plugins/real-estate/account', 'account_settings', 'Cài đặt tài khoản', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2759, 0, 'vi', 'plugins/real-estate/account', 'update_profile_success', 'Cập nhật thông tin tài khoản thành công!', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2760, 0, 'vi', 'plugins/real-estate/account', 'security', 'Bảo mật', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2761, 0, 'vi', 'plugins/real-estate/account', 'packages', 'Gói', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2762, 0, 'vi', 'plugins/real-estate/account', 'transactions', 'Giao dịch', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2763, 0, 'vi', 'plugins/real-estate/account', 'subscribe_package', 'Đăng ký gói \":name\"', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2764, 0, 'vi', 'plugins/real-estate/category', 'name', 'Categories', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2765, 0, 'vi', 'plugins/real-estate/category', 'create', 'New category', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2766, 0, 'vi', 'plugins/real-estate/category', 'edit', 'Edit category', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2767, 0, 'vi', 'plugins/real-estate/consult', 'name', 'Tư vấn', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2768, 0, 'vi', 'plugins/real-estate/consult', 'edit', 'Xem tư vấn', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2769, 0, 'vi', 'plugins/real-estate/consult', 'statuses.read', 'Đã đọc', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2770, 0, 'vi', 'plugins/real-estate/consult', 'statuses.unread', 'Chưa đọc', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2771, 0, 'vi', 'plugins/real-estate/consult', 'phone', 'Điện thoại', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2772, 0, 'vi', 'plugins/real-estate/consult', 'content', 'Chi tiết', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2773, 0, 'vi', 'plugins/real-estate/consult', 'consult_information', 'Nội dung yêu cầu tư vấn', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2774, 0, 'vi', 'plugins/real-estate/consult', 'email.header', 'Email', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2775, 0, 'vi', 'plugins/real-estate/consult', 'email.title', 'Yêu cầu tư vấn mới', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2776, 0, 'vi', 'plugins/real-estate/consult', 'email.success', 'Gửi yêu cầu tư vấn thành công!', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2777, 0, 'vi', 'plugins/real-estate/consult', 'email.failed', 'Gửi yêu cầu tư vấn thất bại, vui lòng thử lại sau!', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2778, 0, 'vi', 'plugins/real-estate/consult', 'form.name.required', 'Tên là bắt buộc', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2779, 0, 'vi', 'plugins/real-estate/consult', 'form.email.required', 'Email là bắt buộc', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2780, 0, 'vi', 'plugins/real-estate/consult', 'form.email.email', 'Địa chỉ email không hợp lệ', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2781, 0, 'vi', 'plugins/real-estate/consult', 'form.content.required', 'Nội dung là bắt buộc', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2782, 0, 'vi', 'plugins/real-estate/consult', 'form.g-recaptcha-response.required', 'Hãy xác minh không phải là robot trước khi gửi tin nhắn.', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2783, 0, 'vi', 'plugins/real-estate/consult', 'form.g-recaptcha-response.captcha', 'Bạn chưa xác minh không phải là robot thành công.', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2784, 0, 'vi', 'plugins/real-estate/consult', 'consult_sent_from', 'Yêu cầu tư vấn này được gửi từ', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2785, 0, 'vi', 'plugins/real-estate/consult', 'time', 'Thời gian', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2786, 0, 'vi', 'plugins/real-estate/consult', 'consult_id', 'Mã yêu cầu tư vấn', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2787, 0, 'vi', 'plugins/real-estate/consult', 'form_name', 'Tên', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2788, 0, 'vi', 'plugins/real-estate/consult', 'form_email', 'Email', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2789, 0, 'vi', 'plugins/real-estate/consult', 'form_phone', 'Điện thoại', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2790, 0, 'vi', 'plugins/real-estate/consult', 'mark_as_read', 'Đánh dấu đã đọc', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2791, 0, 'vi', 'plugins/real-estate/consult', 'mark_as_unread', 'Đánh dấu chưa đọc', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2792, 0, 'vi', 'plugins/real-estate/consult', 'new_consult_notice', 'Bạn có <span class=\"bold\">:count</span> yêu cầu tư vấn mới', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2793, 0, 'vi', 'plugins/real-estate/consult', 'view_all', 'Xem tất cả', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2794, 0, 'vi', 'plugins/real-estate/consult', 'project', 'Dự án', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2795, 0, 'vi', 'plugins/real-estate/consult', 'property', 'Nhà ở - Căn hộ', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2796, 0, 'vi', 'plugins/real-estate/currency', 'currencies', 'Tiền tệ', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2797, 0, 'vi', 'plugins/real-estate/currency', 'setting_description', 'Các loại tiền tệ được sử dụng trên website.', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2798, 0, 'vi', 'plugins/real-estate/currency', 'name', 'Tên', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2799, 0, 'vi', 'plugins/real-estate/currency', 'symbol', 'Ký hiệu', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2800, 0, 'vi', 'plugins/real-estate/currency', 'number_of_decimals', 'Số thập phân', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2801, 0, 'vi', 'plugins/real-estate/currency', 'exchange_rate', 'Tỷ giá', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2802, 0, 'vi', 'plugins/real-estate/currency', 'is_prefix_symbol', 'Vị trí ký hiệu', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2803, 0, 'vi', 'plugins/real-estate/currency', 'is_default', 'Mặc định?', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2804, 0, 'vi', 'plugins/real-estate/currency', 'remove', 'Xoá', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2805, 0, 'vi', 'plugins/real-estate/currency', 'new_currency', 'Thêm tiền tệ mới', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2806, 0, 'vi', 'plugins/real-estate/currency', 'save_settings', 'Lưu cài đặt', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2807, 0, 'vi', 'plugins/real-estate/currency', 'before_number', 'Trước số', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2808, 0, 'vi', 'plugins/real-estate/currency', 'after_number', 'Sau số', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2809, 0, 'vi', 'plugins/real-estate/dashboard', 'joined_on', 'Tham gia từ :date', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2810, 0, 'vi', 'plugins/real-estate/dashboard', 'dob', 'Ngày sinh :date', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2811, 0, 'vi', 'plugins/real-estate/dashboard', 'email', 'Email', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2812, 0, 'vi', 'plugins/real-estate/dashboard', 'email_or_username', 'Email/Tên đăng nhập', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2813, 0, 'vi', 'plugins/real-estate/dashboard', 'password', 'Mật khẩu', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2814, 0, 'vi', 'plugins/real-estate/dashboard', 'password-confirmation', 'Xác nhận mật khẩu', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2815, 0, 'vi', 'plugins/real-estate/dashboard', 'remember-me', 'Ghi nhớ tài khoản', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2816, 0, 'vi', 'plugins/real-estate/dashboard', 'login-title', 'Đăng nhập', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2817, 0, 'vi', 'plugins/real-estate/dashboard', 'login-cta', 'Đăng nhập', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2818, 0, 'vi', 'plugins/real-estate/dashboard', 'register-title', 'Đăng ký', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2819, 0, 'vi', 'plugins/real-estate/dashboard', 'register-cta', 'Đăng ký', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2820, 0, 'vi', 'plugins/real-estate/dashboard', 'forgot-password-cta', 'Quên mật khẩu?', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2821, 0, 'vi', 'plugins/real-estate/dashboard', 'name', 'Tên', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2822, 0, 'vi', 'plugins/real-estate/dashboard', 'reset-password-title', 'Khôi phục mật khẩu', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2823, 0, 'vi', 'plugins/real-estate/dashboard', 'reset-password-cta', 'Khôi phục mật khẩu', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2824, 0, 'vi', 'plugins/real-estate/dashboard', 'cancel-link', 'Hủy bỏ', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2825, 0, 'vi', 'plugins/real-estate/dashboard', 'logout-cta', 'Đăng xuất', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2826, 0, 'vi', 'plugins/real-estate/dashboard', 'header_profile_link', 'Tài khoản', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2827, 0, 'vi', 'plugins/real-estate/dashboard', 'header_settings_link', 'Cài đặt', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2828, 0, 'vi', 'plugins/real-estate/dashboard', 'header_logout_link', 'Đăng xuất', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2829, 0, 'vi', 'plugins/real-estate/dashboard', 'unknown_state', 'Không xác nhận được', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2830, 0, 'vi', 'plugins/real-estate/dashboard', 'close', 'Đóng', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2831, 0, 'vi', 'plugins/real-estate/dashboard', 'save', 'Lưu', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2832, 0, 'vi', 'plugins/real-estate/dashboard', 'loading', 'Đang tải...', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2833, 0, 'vi', 'plugins/real-estate/dashboard', 'new_image', 'Ảnh mới', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2834, 0, 'vi', 'plugins/real-estate/dashboard', 'change_profile_image', 'Đổi ảnh đại diện', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2835, 0, 'vi', 'plugins/real-estate/dashboard', 'save_cropped_image_failed', 'Lưu hình ảnh không thành công!', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2836, 0, 'vi', 'plugins/real-estate/dashboard', 'failed_to_crop_image', 'Có lỗi trong quá trình xử lý ảnh', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2837, 0, 'vi', 'plugins/real-estate/dashboard', 'failed_to_load_data', 'Lỗi tải dữ liệu', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2838, 0, 'vi', 'plugins/real-estate/dashboard', 'read_image_failed', 'Đọc hình ảnh thất bại', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2839, 0, 'vi', 'plugins/real-estate/dashboard', 'update_avatar_success', 'Cập nhật ảnh đại diện thành công!', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2840, 0, 'vi', 'plugins/real-estate/dashboard', 'change_avatar_description', 'Click lên ảnh để chỉnh sửa ảnh đại diện', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2841, 0, 'vi', 'plugins/real-estate/dashboard', 'notices.error', 'Lỗi!', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2842, 0, 'vi', 'plugins/real-estate/dashboard', 'notices.success', 'Thành công!', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2843, 0, 'vi', 'plugins/real-estate/dashboard', 'sidebar_title', 'Cài đặt cá nhân', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2844, 0, 'vi', 'plugins/real-estate/dashboard', 'sidebar_information', 'Thông tin tài khoản', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2845, 0, 'vi', 'plugins/real-estate/dashboard', 'sidebar_security', 'Bảo mật', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2846, 0, 'vi', 'plugins/real-estate/dashboard', 'sidebar_packages', 'Gói', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2847, 0, 'vi', 'plugins/real-estate/dashboard', 'sidebar_transactions', 'Giao dịch', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2848, 0, 'vi', 'plugins/real-estate/dashboard', 'account_field_title', 'Thông tin tài khoản', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2849, 0, 'vi', 'plugins/real-estate/dashboard', 'profile-picture', 'Ảnh đại diện', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2850, 0, 'vi', 'plugins/real-estate/dashboard', 'uploading', 'Đang tải lên...', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2851, 0, 'vi', 'plugins/real-estate/dashboard', 'phone', 'Điện thoại', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2852, 0, 'vi', 'plugins/real-estate/dashboard', 'first_name', 'Họ', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2853, 0, 'vi', 'plugins/real-estate/dashboard', 'last_name', 'Tên', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2854, 0, 'vi', 'plugins/real-estate/dashboard', 'description', 'Mô tả ngắn', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2855, 0, 'vi', 'plugins/real-estate/dashboard', 'description_placeholder', 'Mô tả đôi chút về bạn...', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2856, 0, 'vi', 'plugins/real-estate/dashboard', 'verified', 'Đã xác thực', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2857, 0, 'vi', 'plugins/real-estate/dashboard', 'verify_require_desc', 'Vui lòng xác nhận email theo liên kết chúng tôi đã gửi cho bạn.', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2858, 0, 'vi', 'plugins/real-estate/dashboard', 'birthday', 'Ngày sinh', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2859, 0, 'vi', 'plugins/real-estate/dashboard', 'year_lc', 'năm', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2860, 0, 'vi', 'plugins/real-estate/dashboard', 'month_lc', 'tháng', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2861, 0, 'vi', 'plugins/real-estate/dashboard', 'day_lc', 'ngày', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2862, 0, 'vi', 'plugins/real-estate/dashboard', 'gender', 'Giới tính', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2863, 0, 'vi', 'plugins/real-estate/dashboard', 'gender_male', 'Nam', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2864, 0, 'vi', 'plugins/real-estate/dashboard', 'gender_female', 'Nữ', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2865, 0, 'vi', 'plugins/real-estate/dashboard', 'gender_other', 'Khác', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2866, 0, 'vi', 'plugins/real-estate/dashboard', 'security_title', 'Bảo mật', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2867, 0, 'vi', 'plugins/real-estate/dashboard', 'packages_title', 'Gói', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2868, 0, 'vi', 'plugins/real-estate/dashboard', 'transactions_title', 'Giao dịch', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2869, 0, 'vi', 'plugins/real-estate/dashboard', 'current_password', 'Mật khẩu hiện tại', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2870, 0, 'vi', 'plugins/real-estate/dashboard', 'password_new', 'Mật khẩu mới', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2871, 0, 'vi', 'plugins/real-estate/dashboard', 'password_new_confirmation', 'Xác nhận mật khẩu', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2872, 0, 'vi', 'plugins/real-estate/dashboard', 'password_update_btn', 'Cập nhật mật khẩu', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2873, 0, 'vi', 'plugins/real-estate/dashboard', 'activity_logs', 'Lịch sử hoạt động', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2874, 0, 'vi', 'plugins/real-estate/dashboard', 'oops', 'Oops!', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2875, 0, 'vi', 'plugins/real-estate/dashboard', 'no_activity_logs', 'Chưa có hoạt động nào cả', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2876, 0, 'vi', 'plugins/real-estate/dashboard', 'actions.create_property', 'Tạo thành công \":name\"', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2877, 0, 'vi', 'plugins/real-estate/dashboard', 'actions.update_property', 'Cập nhật thành công \":name\"', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2878, 0, 'vi', 'plugins/real-estate/dashboard', 'actions.delete_property', 'Xóa thành công \":name\"', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2879, 0, 'vi', 'plugins/real-estate/dashboard', 'actions.update_setting', 'Cập nhật cài đặt thành công', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2880, 0, 'vi', 'plugins/real-estate/dashboard', 'actions.update_security', 'Cập nhật cài đặt thành công', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2881, 0, 'vi', 'plugins/real-estate/dashboard', 'actions.your_property_updated_by_admin', 'Tin \":name\" đã được cập nhật bởi quản trị viên', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2882, 0, 'vi', 'plugins/real-estate/dashboard', 'actions.changed_avatar', 'Đổi ảnh đại diện thành công', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2883, 0, 'vi', 'plugins/real-estate/dashboard', 'load_more', 'Tải thêm', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2884, 0, 'vi', 'plugins/real-estate/dashboard', 'loading_more', 'Đang tải...', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2885, 0, 'vi', 'plugins/real-estate/dashboard', 'back-to-login', 'Trở lại trang đăng nhập', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2886, 0, 'vi', 'plugins/real-estate/dashboard', 'no_transactions', 'Chưa có giao dịch', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2887, 0, 'vi', 'plugins/real-estate/dashboard', 'approved_properties', 'Tin đã được duyệt', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2888, 0, 'vi', 'plugins/real-estate/dashboard', 'pending_approve_properties', 'Các tin đang chờ xét duyệt', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2889, 0, 'vi', 'plugins/real-estate/dashboard', 'rejected_properties', 'Các tin đã bị từ chối', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2890, 0, 'vi', 'plugins/real-estate/dashboard', 'your_credits', 'Tín dụng của bạn', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2891, 0, 'vi', 'plugins/real-estate/dashboard', 'add_new', 'Thêm mới', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2892, 0, 'vi', 'plugins/real-estate/dashboard', 'credits', 'tín dụng', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2893, 0, 'vi', 'plugins/real-estate/dashboard', 'distance', 'Khoảng cách(km)', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2894, 0, 'vi', 'plugins/real-estate/dashboard', 'free', 'Miễn phí', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2895, 0, 'vi', 'plugins/real-estate/dashboard', 'per_post', 'trên mỗi tin', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2896, 0, 'vi', 'plugins/real-estate/dashboard', 'posts', 'tin', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2897, 0, 'vi', 'plugins/real-estate/dashboard', 'purchase', 'Mua', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2898, 0, 'vi', 'plugins/real-estate/dashboard', 'select_facility', 'Lựa chọn tiện ích', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2899, 0, 'vi', 'plugins/real-estate/dashboard', 'total', 'Tổng cộng', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2900, 0, 'vi', 'plugins/real-estate/facility', 'name', 'Facilities', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2901, 0, 'vi', 'plugins/real-estate/facility', 'create', 'New facility', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2902, 0, 'vi', 'plugins/real-estate/facility', 'edit', 'Edit facility', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2903, 0, 'vi', 'plugins/real-estate/feature', 'name', 'Tiện ích', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2904, 0, 'vi', 'plugins/real-estate/feature', 'create', 'Thêm tiện ích', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2905, 0, 'vi', 'plugins/real-estate/feature', 'edit', 'Sửa tiện ích', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2906, 0, 'vi', 'plugins/real-estate/feature', 'messages.request.name_required', 'Tên là thông tin bắt buộc', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2907, 0, 'vi', 'plugins/real-estate/feature', 'form.help_block', 'Thông tin về các tiện ích', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2908, 0, 'vi', 'plugins/real-estate/feature', 'form.name', 'Tiêu đề', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2909, 0, 'vi', 'plugins/real-estate/investor', 'name', 'Nhà đầu tư', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2910, 0, 'vi', 'plugins/real-estate/investor', 'create', 'Thêm nhà đầu tư', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2911, 0, 'vi', 'plugins/real-estate/investor', 'edit', 'Sửa nhà đầu tư', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2912, 0, 'vi', 'plugins/real-estate/package', 'name', 'Gói', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2913, 0, 'vi', 'plugins/real-estate/package', 'create', 'Thêm gói', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2914, 0, 'vi', 'plugins/real-estate/package', 'edit', 'Sửa gói', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2915, 0, 'vi', 'plugins/real-estate/package', 'price', 'Giá', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2916, 0, 'vi', 'plugins/real-estate/package', 'currency', 'Tiền tệ', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2917, 0, 'vi', 'plugins/real-estate/package', 'percent_save', 'Phần trăm tiết kiệm', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2918, 0, 'vi', 'plugins/real-estate/package', 'number_of_listings', 'Số tin đăng', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2919, 0, 'vi', 'plugins/real-estate/package', 'add_credit_success', 'Thêm tín dụng thành công!', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2920, 0, 'vi', 'plugins/real-estate/package', 'setup_payment_methods', 'Vui lòng thiết lập phương thức thanh toán (PayPal, Stripe, COD, Bank transfer)', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2921, 0, 'vi', 'plugins/real-estate/package', 'add_credit_warning', 'Vui lòng thêm tín dụng để đăng tin của bạn tại đây', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2922, 0, 'vi', 'plugins/real-estate/package', 'add_credit', 'Thêm tín dụng', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2923, 0, 'vi', 'plugins/real-estate/package', 'account_limit', 'Giới hạn số gói có thể mua theo tài khoản', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2924, 0, 'vi', 'plugins/real-estate/package', 'account_limit_placeholder', 'Mỗi tài khoản có thể mua x lần', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2925, 0, 'vi', 'plugins/real-estate/package', 'subscribe_package', 'Đăng ký tin', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2926, 0, 'vi', 'plugins/real-estate/project', 'name', 'Dự án', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2927, 0, 'vi', 'plugins/real-estate/project', 'create', 'Thêm dự án', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2928, 0, 'vi', 'plugins/real-estate/project', 'edit', 'Sửa', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2929, 0, 'vi', 'plugins/real-estate/project', 'form.general_info', 'Thông tin chung', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2930, 0, 'vi', 'plugins/real-estate/project', 'form.name', 'Tên dự án', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2931, 0, 'vi', 'plugins/real-estate/project', 'form.description', 'Mô tả', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2932, 0, 'vi', 'plugins/real-estate/project', 'form.basic_info', 'Thông tin cơ bản', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2933, 0, 'vi', 'plugins/real-estate/project', 'form.location', 'Địa chỉ', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2934, 0, 'vi', 'plugins/real-estate/project', 'form.investor', 'Chủ đầu tư', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2935, 0, 'vi', 'plugins/real-estate/project', 'form.number_block', 'Số block', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2936, 0, 'vi', 'plugins/real-estate/project', 'form.number_floor', 'Số tầng', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2937, 0, 'vi', 'plugins/real-estate/project', 'form.number_flat', 'Số căn hộ', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2938, 0, 'vi', 'plugins/real-estate/project', 'form.date_finish', 'Ngày hoàn thành', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2939, 0, 'vi', 'plugins/real-estate/project', 'form.date_sell', 'Ngày mở bán', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2940, 0, 'vi', 'plugins/real-estate/project', 'form.images', 'Hình ảnh', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2941, 0, 'vi', 'plugins/real-estate/project', 'form.price_from', 'Giá thấp nhất', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2942, 0, 'vi', 'plugins/real-estate/project', 'form.price_to', 'Giá cao nhất', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2943, 0, 'vi', 'plugins/real-estate/project', 'form.currency', 'Loại tiền', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2944, 0, 'vi', 'plugins/real-estate/project', 'form.city', 'Thành phố', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2945, 0, 'vi', 'plugins/real-estate/project', 'form.category', 'Loại dự án', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2946, 0, 'vi', 'plugins/real-estate/project', 'statuses.not_available', 'Không khả dụng', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2947, 0, 'vi', 'plugins/real-estate/project', 'statuses.pre_sale', 'Chuẩn bị mở bán', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2948, 0, 'vi', 'plugins/real-estate/project', 'statuses.selling', 'Đang bán', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2949, 0, 'vi', 'plugins/real-estate/project', 'statuses.sold', 'Đã bán', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2950, 0, 'vi', 'plugins/real-estate/project', 'statuses.building', 'Đang xây dựng', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2951, 0, 'vi', 'plugins/real-estate/property', 'name', 'Nhà - Căn hộ', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2952, 0, 'vi', 'plugins/real-estate/property', 'create', 'Thêm mới', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2953, 0, 'vi', 'plugins/real-estate/property', 'edit', 'Sửa', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2954, 0, 'vi', 'plugins/real-estate/property', 'form.main_info', 'Thông tin', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2955, 0, 'vi', 'plugins/real-estate/property', 'form.basic_info', 'Thông tin cơ bản', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2956, 0, 'vi', 'plugins/real-estate/property', 'form.name', 'Tiêu đề', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2957, 0, 'vi', 'plugins/real-estate/property', 'form.type', 'Loại', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2958, 0, 'vi', 'plugins/real-estate/property', 'form.images', 'Hình ảnh', '2021-10-18 20:09:32', '2021-10-18 20:09:50'),
(2959, 0, 'vi', 'plugins/real-estate/property', 'form.location', 'Địa chỉ', '2021-10-18 20:09:33', '2021-10-18 20:09:50'),
(2960, 0, 'vi', 'plugins/real-estate/property', 'form.number_bedroom', 'Số phòng ngủ', '2021-10-18 20:09:33', '2021-10-18 20:09:50'),
(2961, 0, 'vi', 'plugins/real-estate/property', 'form.number_bathroom', 'Số phòng tắm', '2021-10-18 20:09:33', '2021-10-18 20:09:50'),
(2962, 0, 'vi', 'plugins/real-estate/property', 'form.number_floor', 'Số tầng', '2021-10-18 20:09:33', '2021-10-18 20:09:50'),
(2963, 0, 'vi', 'plugins/real-estate/property', 'form.square', 'Diện tích (m2)', '2021-10-18 20:09:33', '2021-10-18 20:09:50'),
(2964, 0, 'vi', 'plugins/real-estate/property', 'form.price', 'Giá', '2021-10-18 20:09:33', '2021-10-18 20:09:50'),
(2965, 0, 'vi', 'plugins/real-estate/property', 'form.features', 'Tiện ích', '2021-10-18 20:09:33', '2021-10-18 20:09:50'),
(2966, 0, 'vi', 'plugins/real-estate/property', 'form.project', 'Dự án', '2021-10-18 20:09:33', '2021-10-18 20:09:50'),
(2967, 0, 'vi', 'plugins/real-estate/property', 'form.date', 'Thông tin thời gian', '2021-10-18 20:09:33', '2021-10-18 20:09:50'),
(2968, 0, 'vi', 'plugins/real-estate/property', 'form.currency', 'Loại tiền', '2021-10-18 20:09:33', '2021-10-18 20:09:50'),
(2969, 0, 'vi', 'plugins/real-estate/property', 'form.city', 'Thành phố', '2021-10-18 20:09:33', '2021-10-18 20:09:50'),
(2970, 0, 'vi', 'plugins/real-estate/property', 'form.period', 'Chu kỳ', '2021-10-18 20:09:33', '2021-10-18 20:09:50'),
(2971, 0, 'vi', 'plugins/real-estate/property', 'form.category', 'Loại nhà', '2021-10-18 20:09:33', '2021-10-18 20:09:50'),
(2972, 0, 'vi', 'plugins/real-estate/property', 'statuses.not_available', 'Không khả dụng', '2021-10-18 20:09:33', '2021-10-18 20:09:50'),
(2973, 0, 'vi', 'plugins/real-estate/property', 'statuses.pre_sale', 'Chuẩn bị mở bán', '2021-10-18 20:09:33', '2021-10-18 20:09:50'),
(2974, 0, 'vi', 'plugins/real-estate/property', 'statuses.selling', 'Đang bán', '2021-10-18 20:09:33', '2021-10-18 20:09:50'),
(2975, 0, 'vi', 'plugins/real-estate/property', 'statuses.sold', 'Đã bán', '2021-10-18 20:09:33', '2021-10-18 20:09:50'),
(2976, 0, 'vi', 'plugins/real-estate/property', 'statuses.renting', 'Đang mở thuê', '2021-10-18 20:09:33', '2021-10-18 20:09:50'),
(2977, 0, 'vi', 'plugins/real-estate/property', 'statuses.rented', 'Đã cho thuê', '2021-10-18 20:09:33', '2021-10-18 20:09:50'),
(2978, 0, 'vi', 'plugins/real-estate/property', 'statuses.building', 'Đang xây dựng', '2021-10-18 20:09:33', '2021-10-18 20:09:50'),
(2979, 0, 'vi', 'plugins/real-estate/property', 'types.sale', 'Nhà bán', '2021-10-18 20:09:33', '2021-10-18 20:09:50'),
(2980, 0, 'vi', 'plugins/real-estate/property', 'types.rent', 'Nhà cho thuê', '2021-10-18 20:09:33', '2021-10-18 20:09:50'),
(2981, 0, 'vi', 'plugins/real-estate/property', 'periods.day', 'Ngày', '2021-10-18 20:09:33', '2021-10-18 20:09:50'),
(2982, 0, 'vi', 'plugins/real-estate/property', 'periods.month', 'Tháng', '2021-10-18 20:09:33', '2021-10-18 20:09:50'),
(2983, 0, 'vi', 'plugins/real-estate/property', 'periods.year', 'Năm', '2021-10-18 20:09:33', '2021-10-18 20:09:50'),
(2984, 0, 'vi', 'plugins/real-estate/property', 'moderation_status', 'Trạng thái kiểm duyệt', '2021-10-18 20:09:33', '2021-10-18 20:09:50'),
(2985, 0, 'vi', 'plugins/real-estate/property', 'expire_date', 'Ngày hết hạn', '2021-10-18 20:09:33', '2021-10-18 20:09:50'),
(2986, 0, 'vi', 'plugins/real-estate/real-estate', 'name', 'Bất động sản', '2021-10-18 20:09:33', '2021-10-18 20:09:50'),
(2987, 0, 'vi', 'plugins/real-estate/real-estate', 'settings', 'Cài đặt', '2021-10-18 20:09:33', '2021-10-18 20:09:50'),
(2988, 0, 'vi', 'plugins/real-estate/settings', 'title', 'Accounts', '2021-10-18 20:09:33', '2021-10-18 20:09:50'),
(2989, 0, 'vi', 'plugins/real-estate/settings', 'description', 'Settings for members', '2021-10-18 20:09:33', '2021-10-18 20:09:50'),
(2990, 0, 'vi', 'plugins/real-estate/settings', 'verify_account_email', 'Verify account\'s email?', '2021-10-18 20:09:33', '2021-10-18 20:09:50'),
(2991, 0, 'en', 'plugins/social-login/social-login', 'settings.title', 'Social Login settings', '2021-10-18 20:09:33', '2021-10-18 20:09:50'),
(2992, 0, 'en', 'plugins/social-login/social-login', 'settings.description', 'Configure social login options', '2021-10-18 20:09:33', '2021-10-18 20:09:50'),
(2993, 0, 'en', 'plugins/social-login/social-login', 'settings.facebook.title', 'Facebook login settings', '2021-10-18 20:09:33', '2021-10-18 20:09:50'),
(2994, 0, 'en', 'plugins/social-login/social-login', 'settings.facebook.description', 'Enable/disable & configure app credentials for Facebook login', '2021-10-18 20:09:33', '2021-10-18 20:09:50'),
(2995, 0, 'en', 'plugins/social-login/social-login', 'settings.facebook.app_id', 'App ID', '2021-10-18 20:09:33', '2021-10-18 20:09:50'),
(2996, 0, 'en', 'plugins/social-login/social-login', 'settings.facebook.app_secret', 'App Secret', '2021-10-18 20:09:33', '2021-10-18 20:09:50'),
(2997, 0, 'en', 'plugins/social-login/social-login', 'settings.facebook.helper', 'Please go to https://developers.facebook.com to create new app update App ID, App Secret. A Valid OAuth Redirect URIs is :callback', '2021-10-18 20:09:33', '2021-10-18 20:09:50'),
(2998, 0, 'en', 'plugins/social-login/social-login', 'settings.google.title', 'Google login settings', '2021-10-18 20:09:33', '2021-10-18 20:09:50'),
(2999, 0, 'en', 'plugins/social-login/social-login', 'settings.google.description', 'Enable/disable & configure app credentials for Google login', '2021-10-18 20:09:33', '2021-10-18 20:09:50'),
(3000, 0, 'en', 'plugins/social-login/social-login', 'settings.google.app_id', 'App ID', '2021-10-18 20:09:33', '2021-10-18 20:09:50'),
(3001, 0, 'en', 'plugins/social-login/social-login', 'settings.google.app_secret', 'App Secret', '2021-10-18 20:09:33', '2021-10-18 20:09:50'),
(3002, 0, 'en', 'plugins/social-login/social-login', 'settings.google.helper', 'Please go to https://console.developers.google.com/apis/dashboard to create new app update App ID, App Secret. Callback URL is :callback', '2021-10-18 20:09:33', '2021-10-18 20:09:50'),
(3003, 0, 'en', 'plugins/social-login/social-login', 'settings.github.title', 'Github login settings', '2021-10-18 20:09:33', '2021-10-18 20:09:50'),
(3004, 0, 'en', 'plugins/social-login/social-login', 'settings.github.description', 'Enable/disable & configure app credentials for Github login', '2021-10-18 20:09:33', '2021-10-18 20:09:50'),
(3005, 0, 'en', 'plugins/social-login/social-login', 'settings.github.app_id', 'App ID', '2021-10-18 20:09:33', '2021-10-18 20:09:50'),
(3006, 0, 'en', 'plugins/social-login/social-login', 'settings.github.app_secret', 'App Secret', '2021-10-18 20:09:33', '2021-10-18 20:09:50'),
(3007, 0, 'en', 'plugins/social-login/social-login', 'settings.github.helper', 'Please go to https://github.com/settings/developers to create new app update App ID, App Secret. Callback URL is :callback', '2021-10-18 20:09:33', '2021-10-18 20:09:50'),
(3008, 0, 'en', 'plugins/social-login/social-login', 'settings.linkedin.title', 'Linkedin login settings', '2021-10-18 20:09:33', '2021-10-18 20:09:50'),
(3009, 0, 'en', 'plugins/social-login/social-login', 'settings.linkedin.description', 'Enable/disable & configure app credentials for Linkedin login', '2021-10-18 20:09:33', '2021-10-18 20:09:50'),
(3010, 0, 'en', 'plugins/social-login/social-login', 'settings.linkedin.app_id', 'App ID', '2021-10-18 20:09:33', '2021-10-18 20:09:50'),
(3011, 0, 'en', 'plugins/social-login/social-login', 'settings.linkedin.app_secret', 'App Secret', '2021-10-18 20:09:33', '2021-10-18 20:09:50'),
(3012, 0, 'en', 'plugins/social-login/social-login', 'settings.linkedin.helper', 'Please go to https://www.linkedin.com/developers/apps/new to create new app update App ID, App Secret. Callback URL is :callback', '2021-10-18 20:09:33', '2021-10-18 20:09:50'),
(3013, 0, 'en', 'plugins/social-login/social-login', 'settings.enable', 'Enable?', '2021-10-18 20:09:33', '2021-10-18 20:09:50'),
(3014, 0, 'en', 'plugins/social-login/social-login', 'menu', 'Social Login', '2021-10-18 20:09:33', '2021-10-18 20:09:50'),
(3015, 0, 'en', 'plugins/translation/translation', 'translations', 'Translations', '2021-10-18 20:09:33', '2021-10-18 20:09:50'),
(3016, 0, 'en', 'plugins/translation/translation', 'translations_description', 'Translate all words in system.', '2021-10-18 20:09:33', '2021-10-18 20:09:50'),
(3017, 0, 'en', 'plugins/translation/translation', 'export_warning', 'Warning, translations are not visible until they are exported back to the resources/lang file, using \'php artisan cms:translations:export\' command or publish button.', '2021-10-18 20:09:33', '2021-10-18 20:09:50'),
(3018, 0, 'en', 'plugins/translation/translation', 'import_done', 'Done importing, processed :counter items! Reload this page to refresh the groups!', '2021-10-18 20:09:33', '2021-10-18 20:09:50'),
(3019, 0, 'en', 'plugins/translation/translation', 'translation_manager', 'Translations Manager', '2021-10-18 20:09:33', '2021-10-18 20:09:50'),
(3020, 0, 'en', 'plugins/translation/translation', 'done_publishing', 'Done publishing the translations for group', '2021-10-18 20:09:33', '2021-10-18 20:09:50'),
(3021, 0, 'en', 'plugins/translation/translation', 'append_translation', 'Append new translations', '2021-10-18 20:09:33', '2021-10-18 20:09:50'),
(3022, 0, 'en', 'plugins/translation/translation', 'replace_translation', 'Replace existing translations', '2021-10-18 20:09:33', '2021-10-18 20:09:50'),
(3023, 0, 'en', 'plugins/translation/translation', 'import_group', 'Import group', '2021-10-18 20:09:33', '2021-10-18 20:09:50'),
(3024, 0, 'en', 'plugins/translation/translation', 'confirm_publish_group', 'Are you sure you want to publish the translations group \":group\"? This will overwrite existing language files.', '2021-10-18 20:09:33', '2021-10-18 20:09:50'),
(3025, 0, 'en', 'plugins/translation/translation', 'publish_translations', 'Publish translations', '2021-10-18 20:09:33', '2021-10-18 20:09:50'),
(3026, 0, 'en', 'plugins/translation/translation', 'back', 'Back', '2021-10-18 20:09:33', '2021-10-18 20:09:50'),
(3027, 0, 'en', 'plugins/translation/translation', 'edit_title', 'Enter translation', '2021-10-18 20:09:33', '2021-10-18 20:09:50'),
(3028, 0, 'en', 'plugins/translation/translation', 'choose_group_msg', 'Choose a group to display the group translations. If no groups are visible, make sure you have imported the translations.', '2021-10-18 20:09:33', '2021-10-18 20:09:50'),
(3029, 0, 'en', 'plugins/translation/translation', 'choose_a_group', 'Choose a group', '2021-10-18 20:09:33', '2021-10-18 20:09:50'),
(3030, 0, 'en', 'plugins/translation/translation', 'locales', 'Locales', '2021-10-18 20:09:33', '2021-10-18 20:09:50'),
(3031, 0, 'en', 'plugins/translation/translation', 'theme-translations', 'Theme translations', '2021-10-18 20:09:33', '2021-10-18 20:09:50'),
(3032, 0, 'en', 'plugins/translation/translation', 'admin-translations', 'Other translations', '2021-10-18 20:09:33', '2021-10-18 20:09:50'),
(3033, 0, 'en', 'plugins/translation/translation', 'translate_from', 'Translate from', '2021-10-18 20:09:33', '2021-10-18 20:09:50'),
(3034, 0, 'en', 'plugins/translation/translation', 'to', 'to', '2021-10-18 20:09:33', '2021-10-18 20:09:50'),
(3035, 0, 'en', 'plugins/translation/translation', 'no_other_languages', 'No other language to translate!', '2021-10-18 20:09:33', '2021-10-18 20:09:50'),
(3036, 0, 'en', 'plugins/translation/translation', 'edit', 'Edit', '2021-10-18 20:09:33', '2021-10-18 20:09:50'),
(3037, 0, 'en', 'plugins/translation/translation', 'locale', 'Locale', '2021-10-18 20:09:33', '2021-10-18 20:09:50'),
(3038, 0, 'en', 'plugins/translation/translation', 'locale_placeholder', 'Ex: en', '2021-10-18 20:09:33', '2021-10-18 20:09:50'),
(3039, 0, 'en', 'plugins/translation/translation', 'name', 'Name', '2021-10-18 20:09:33', '2021-10-18 20:09:50'),
(3040, 0, 'en', 'plugins/translation/translation', 'default_locale', 'Default locale?', '2021-10-18 20:09:33', '2021-10-18 20:09:50'),
(3041, 0, 'en', 'plugins/translation/translation', 'actions', 'Actions', '2021-10-18 20:09:33', '2021-10-18 20:09:50'),
(3042, 0, 'en', 'plugins/translation/translation', 'choose_language', 'Choose language', '2021-10-18 20:09:33', '2021-10-18 20:09:50'),
(3043, 0, 'en', 'plugins/translation/translation', 'add_new_language', 'Add new language', '2021-10-18 20:09:33', '2021-10-18 20:09:50'),
(3044, 0, 'en', 'plugins/translation/translation', 'select_language', 'Select language', '2021-10-18 20:09:33', '2021-10-18 20:09:50'),
(3045, 0, 'en', 'plugins/translation/translation', 'flag', 'Flag', '2021-10-18 20:09:33', '2021-10-18 20:09:50'),
(3046, 0, 'en', 'plugins/translation/translation', 'folder_is_not_writeable', 'Cannot write files! Folder /resources/lang is not writable. Please chmod to make it writable!', '2021-10-18 20:09:33', '2021-10-18 20:09:50'),
(3047, 0, 'en', 'plugins/translation/translation', 'delete', 'Delete', '2021-10-18 20:09:33', '2021-10-18 20:09:50'),
(3048, 0, 'en', 'plugins/translation/translation', 'confirm_delete_message', 'Do you really want to delete this locale? It will delete all files/folders for this local in /resources/lang!', '2021-10-18 20:09:33', '2021-10-18 20:09:50'),
(3049, 0, 'en', 'plugins/translation/translation', 'download', 'Download', '2021-10-18 20:09:33', '2021-10-18 20:09:50'),
(3050, 0, 'en', 'plugins/translation/translation', 'select_locale', 'Select locale', '2021-10-18 20:09:33', '2021-10-18 20:09:50'),
(3051, 0, 'vi', 'auth', 'failed', 'Không tìm thấy thông tin đăng nhập hợp lệ.', '2021-10-18 20:09:33', '2021-10-18 20:09:49'),
(3052, 0, 'vi', 'auth', 'throttle', 'Đăng nhập không đúng quá nhiều lần. Vui lòng thử lại sau :seconds giây.', '2021-10-18 20:09:33', '2021-10-18 20:09:49'),
(3053, 0, 'vi', 'auth', 'password', 'Mật khẩu không chính xác', '2021-10-18 20:09:33', '2021-10-18 20:09:49'),
(3054, 0, 'vi', 'pagination', 'previous', '&laquo; Trước', '2021-10-18 20:09:33', '2021-10-18 20:09:49'),
(3055, 0, 'vi', 'pagination', 'next', 'Sau &raquo;', '2021-10-18 20:09:33', '2021-10-18 20:09:49'),
(3056, 0, 'vi', 'passwords', 'reset', 'Mật khẩu đã được cập nhật!', '2021-10-18 20:09:33', '2021-10-18 20:09:49'),
(3057, 0, 'vi', 'passwords', 'sent', 'Chúng tôi đã gửi cho bạn đường dẫn thay đổi mật khẩu!', '2021-10-18 20:09:33', '2021-10-18 20:09:49'),
(3058, 0, 'vi', 'passwords', 'token', 'Mã xác nhận mật khẩu không hợp lệ.', '2021-10-18 20:09:33', '2021-10-18 20:09:49'),
(3059, 0, 'vi', 'passwords', 'user', 'Không tìm thấy thành viên với địa chỉ email này.', '2021-10-18 20:09:33', '2021-10-18 20:09:49'),
(3060, 0, 'vi', 'validation', 'accepted', 'Trường :attribute phải được chấp nhận.', '2021-10-18 20:09:33', '2021-10-18 20:09:49'),
(3061, 0, 'vi', 'validation', 'active_url', 'Trường :attribute không phải là một URL hợp lệ.', '2021-10-18 20:09:33', '2021-10-18 20:09:49'),
(3062, 0, 'vi', 'validation', 'after', 'Trường :attribute phải là một ngày sau ngày :date.', '2021-10-18 20:09:33', '2021-10-18 20:09:49'),
(3063, 0, 'vi', 'validation', 'after_or_equal', 'Trường :attribute phải là thời gian bắt đầu sau hoặc đúng bằng :date.', '2021-10-18 20:09:33', '2021-10-18 20:09:49'),
(3064, 0, 'vi', 'validation', 'alpha', 'Trường :attribute chỉ có thể chứa các chữ cái.', '2021-10-18 20:09:33', '2021-10-18 20:09:49'),
(3065, 0, 'vi', 'validation', 'alpha_dash', 'Trường :attribute chỉ có thể chứa chữ cái, số và dấu gạch ngang.', '2021-10-18 20:09:33', '2021-10-18 20:09:49'),
(3066, 0, 'vi', 'validation', 'alpha_num', 'Trường :attribute chỉ có thể chứa chữ cái và số.', '2021-10-18 20:09:33', '2021-10-18 20:09:49'),
(3067, 0, 'vi', 'validation', 'array', 'Trường :attribute phải là dạng mảng.', '2021-10-18 20:09:33', '2021-10-18 20:09:49'),
(3068, 0, 'vi', 'validation', 'before', 'Trường :attribute phải là một ngày trước ngày :date.', '2021-10-18 20:09:33', '2021-10-18 20:09:49'),
(3069, 0, 'vi', 'validation', 'before_or_equal', 'Trường :attribute phải là thời gian bắt đầu trước hoặc đúng bằng :date.', '2021-10-18 20:09:33', '2021-10-18 20:09:49'),
(3070, 0, 'vi', 'validation', 'between.array', 'Trường :attribute phải có từ :min - :max phần tử.', '2021-10-18 20:09:33', '2021-10-18 20:09:49'),
(3071, 0, 'vi', 'validation', 'between.file', 'Dung lượng tập tin trong trường :attribute phải từ :min - :max kB.', '2021-10-18 20:09:33', '2021-10-18 20:09:49'),
(3072, 0, 'vi', 'validation', 'between.numeric', 'Trường :attribute phải nằm trong khoảng :min - :max.', '2021-10-18 20:09:33', '2021-10-18 20:09:49'),
(3073, 0, 'vi', 'validation', 'between.string', 'Trường :attribute phải từ :min - :max kí tự.', '2021-10-18 20:09:33', '2021-10-18 20:09:49'),
(3074, 0, 'vi', 'validation', 'boolean', 'Trường :attribute phải là true hoặc false.', '2021-10-18 20:09:33', '2021-10-18 20:09:49'),
(3075, 0, 'vi', 'validation', 'confirmed', 'Giá trị xác nhận trong trường :attribute không khớp.', '2021-10-18 20:09:33', '2021-10-18 20:09:49'),
(3076, 0, 'vi', 'validation', 'date', 'Trường :attribute không phải là định dạng của ngày-tháng.', '2021-10-18 20:09:33', '2021-10-18 20:09:49'),
(3077, 0, 'vi', 'validation', 'date_equals', 'Trường :attribute phải là một ngày bằng với :date.', '2021-10-18 20:09:33', '2021-10-18 20:09:49'),
(3078, 0, 'vi', 'validation', 'date_format', 'Trường :attribute không giống với định dạng :format.', '2021-10-18 20:09:33', '2021-10-18 20:09:49'),
(3079, 0, 'vi', 'validation', 'different', 'Trường :attribute và :other phải khác nhau.', '2021-10-18 20:09:33', '2021-10-18 20:09:49'),
(3080, 0, 'vi', 'validation', 'digits', 'Độ dài của trường :attribute phải gồm :digits chữ số.', '2021-10-18 20:09:33', '2021-10-18 20:09:49'),
(3081, 0, 'vi', 'validation', 'digits_between', 'Độ dài của trường :attribute phải nằm trong khoảng :min and :max chữ số.', '2021-10-18 20:09:33', '2021-10-18 20:09:49'),
(3082, 0, 'vi', 'validation', 'dimensions', 'Trường :attribute có kích thước không hợp lệ.', '2021-10-18 20:09:33', '2021-10-18 20:09:49'),
(3083, 0, 'vi', 'validation', 'distinct', 'Trường :attribute có giá trị trùng lặp.', '2021-10-18 20:09:33', '2021-10-18 20:09:49'),
(3084, 0, 'vi', 'validation', 'email', 'Trường :attribute phải là một địa chỉ email hợp lệ.', '2021-10-18 20:09:33', '2021-10-18 20:09:49'),
(3085, 0, 'vi', 'validation', 'ends_with', 'Trường :attribute phải kết thúc bằng một trong những giá trị sau: :values', '2021-10-18 20:09:33', '2021-10-18 20:09:49'),
(3086, 0, 'vi', 'validation', 'exists', 'Giá trị đã chọn trong trường :attribute không hợp lệ.', '2021-10-18 20:09:33', '2021-10-18 20:09:49'),
(3087, 0, 'vi', 'validation', 'file', 'Trường :attribute phải là một tệp tin.', '2021-10-18 20:09:33', '2021-10-18 20:09:49'),
(3088, 0, 'vi', 'validation', 'filled', 'Trường :attribute không được bỏ trống.', '2021-10-18 20:09:33', '2021-10-18 20:09:49'),
(3089, 0, 'vi', 'validation', 'gt.array', 'Mảng :attribute phải có nhiều hơn :value phần tử.', '2021-10-18 20:09:33', '2021-10-18 20:09:49');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(3090, 0, 'vi', 'validation', 'gt.file', 'Dung lượng trường :attribute phải lớn hơn :value kilobytes.', '2021-10-18 20:09:33', '2021-10-18 20:09:49'),
(3091, 0, 'vi', 'validation', 'gt.numeric', 'Giá trị trường :attribute phải lớn hơn :value.', '2021-10-18 20:09:33', '2021-10-18 20:09:49'),
(3092, 0, 'vi', 'validation', 'gt.string', 'Độ dài trường :attribute phải nhiều hơn :value kí tự.', '2021-10-18 20:09:33', '2021-10-18 20:09:49'),
(3093, 0, 'vi', 'validation', 'gte.array', 'Mảng :attribute phải có ít nhất :value phần tử.', '2021-10-18 20:09:33', '2021-10-18 20:09:49'),
(3094, 0, 'vi', 'validation', 'gte.file', 'Dung lượng trường :attribute phải lớn hơn hoặc bằng :value kilobytes.', '2021-10-18 20:09:33', '2021-10-18 20:09:49'),
(3095, 0, 'vi', 'validation', 'gte.numeric', 'Giá trị trường :attribute phải lớn hơn hoặc bằng :value.', '2021-10-18 20:09:33', '2021-10-18 20:09:49'),
(3096, 0, 'vi', 'validation', 'gte.string', 'Độ dài trường :attribute phải lớn hơn hoặc bằng :value kí tự.', '2021-10-18 20:09:33', '2021-10-18 20:09:49'),
(3097, 0, 'vi', 'validation', 'image', 'Trường :attribute phải là định dạng hình ảnh.', '2021-10-18 20:09:33', '2021-10-18 20:09:49'),
(3098, 0, 'vi', 'validation', 'in', 'Giá trị đã chọn trong trường :attribute không hợp lệ.', '2021-10-18 20:09:33', '2021-10-18 20:09:49'),
(3099, 0, 'vi', 'validation', 'in_array', 'Trường :attribute phải thuộc tập cho phép: :other.', '2021-10-18 20:09:33', '2021-10-18 20:09:49'),
(3100, 0, 'vi', 'validation', 'integer', 'Trường :attribute phải là một số nguyên.', '2021-10-18 20:09:33', '2021-10-18 20:09:49'),
(3101, 0, 'vi', 'validation', 'ip', 'Trường :attribute phải là một địa chỉ IP.', '2021-10-18 20:09:33', '2021-10-18 20:09:49'),
(3102, 0, 'vi', 'validation', 'ipv4', 'Trường :attribute phải là một địa chỉ IPv4.', '2021-10-18 20:09:33', '2021-10-18 20:09:49'),
(3103, 0, 'vi', 'validation', 'ipv6', 'Trường :attribute phải là một địa chỉ IPv6.', '2021-10-18 20:09:33', '2021-10-18 20:09:49'),
(3104, 0, 'vi', 'validation', 'json', 'Trường :attribute phải là một chuỗi JSON.', '2021-10-18 20:09:33', '2021-10-18 20:09:49'),
(3105, 0, 'vi', 'validation', 'lt.array', 'Mảng :attribute phải có ít hơn :value phần tử.', '2021-10-18 20:09:33', '2021-10-18 20:09:49'),
(3106, 0, 'vi', 'validation', 'lt.file', 'Dung lượng trường :attribute phải nhỏ hơn :value kilobytes.', '2021-10-18 20:09:33', '2021-10-18 20:09:49'),
(3107, 0, 'vi', 'validation', 'lt.numeric', 'Giá trị trường :attribute phải nhỏ hơn :value.', '2021-10-18 20:09:33', '2021-10-18 20:09:49'),
(3108, 0, 'vi', 'validation', 'lt.string', 'Độ dài trường :attribute phải nhỏ hơn :value kí tự.', '2021-10-18 20:09:33', '2021-10-18 20:09:49'),
(3109, 0, 'vi', 'validation', 'lte.array', 'Mảng :attribute không được có nhiều hơn :value phần tử.', '2021-10-18 20:09:33', '2021-10-18 20:09:49'),
(3110, 0, 'vi', 'validation', 'lte.file', 'Dung lượng trường :attribute phải nhỏ hơn hoặc bằng :value kilobytes.', '2021-10-18 20:09:33', '2021-10-18 20:09:49'),
(3111, 0, 'vi', 'validation', 'lte.numeric', 'Giá trị trường :attribute phải nhỏ hơn hoặc bằng :value.', '2021-10-18 20:09:33', '2021-10-18 20:09:49'),
(3112, 0, 'vi', 'validation', 'lte.string', 'Độ dài trường :attribute phải nhỏ hơn hoặc bằng :value kí tự.', '2021-10-18 20:09:33', '2021-10-18 20:09:49'),
(3113, 0, 'vi', 'validation', 'max.array', 'Trường :attribute không được lớn hơn :max phần tử.', '2021-10-18 20:09:33', '2021-10-18 20:09:49'),
(3114, 0, 'vi', 'validation', 'max.file', 'Dung lượng tập tin trong trường :attribute không được lớn hơn :max kB.', '2021-10-18 20:09:33', '2021-10-18 20:09:49'),
(3115, 0, 'vi', 'validation', 'max.numeric', 'Trường :attribute không được lớn hơn :max.', '2021-10-18 20:09:33', '2021-10-18 20:09:49'),
(3116, 0, 'vi', 'validation', 'max.string', 'Trường :attribute không được lớn hơn :max kí tự.', '2021-10-18 20:09:33', '2021-10-18 20:09:49'),
(3117, 0, 'vi', 'validation', 'mimes', 'Trường :attribute phải là một tập tin có định dạng: :values.', '2021-10-18 20:09:33', '2021-10-18 20:09:49'),
(3118, 0, 'vi', 'validation', 'mimetypes', 'Trường :attribute phải là một tập tin có định dạng: :values.', '2021-10-18 20:09:33', '2021-10-18 20:09:49'),
(3119, 0, 'vi', 'validation', 'min.array', 'Trường :attribute phải có tối thiểu :min phần tử.', '2021-10-18 20:09:33', '2021-10-18 20:09:49'),
(3120, 0, 'vi', 'validation', 'min.file', 'Dung lượng tập tin trong trường :attribute phải tối thiểu :min kB.', '2021-10-18 20:09:33', '2021-10-18 20:09:49'),
(3121, 0, 'vi', 'validation', 'min.numeric', 'Trường :attribute phải tối thiểu là :min.', '2021-10-18 20:09:33', '2021-10-18 20:09:49'),
(3122, 0, 'vi', 'validation', 'min.string', 'Trường :attribute phải có tối thiểu :min kí tự.', '2021-10-18 20:09:33', '2021-10-18 20:09:49'),
(3123, 0, 'vi', 'validation', 'multiple_of', 'Trường :attribute phải là bội số của :value', '2021-10-18 20:09:33', '2021-10-18 20:09:49'),
(3124, 0, 'vi', 'validation', 'not_in', 'Giá trị đã chọn trong trường :attribute không hợp lệ.', '2021-10-18 20:09:33', '2021-10-18 20:09:49'),
(3125, 0, 'vi', 'validation', 'not_regex', 'Trường :attribute có định dạng không hợp lệ.', '2021-10-18 20:09:33', '2021-10-18 20:09:49'),
(3126, 0, 'vi', 'validation', 'numeric', 'Trường :attribute phải là một số.', '2021-10-18 20:09:33', '2021-10-18 20:09:49'),
(3127, 0, 'vi', 'validation', 'password', 'Mật khẩu không đúng.', '2021-10-18 20:09:33', '2021-10-18 20:09:49'),
(3128, 0, 'vi', 'validation', 'present', 'Trường :attribute phải được cung cấp.', '2021-10-18 20:09:33', '2021-10-18 20:09:49'),
(3129, 0, 'vi', 'validation', 'prohibited', 'Trường :attribute bị cấm.', '2021-10-18 20:09:33', '2021-10-18 20:09:49'),
(3130, 0, 'vi', 'validation', 'prohibited_if', 'Trường :attribute bị cấm khi :other là :value.', '2021-10-18 20:09:33', '2021-10-18 20:09:49'),
(3131, 0, 'vi', 'validation', 'prohibited_unless', 'Trường :attribute bị cấm trừ khi :other là một trong :values.', '2021-10-18 20:09:33', '2021-10-18 20:09:49'),
(3132, 0, 'vi', 'validation', 'regex', 'Trường :attribute có định dạng không hợp lệ.', '2021-10-18 20:09:33', '2021-10-18 20:09:49'),
(3133, 0, 'vi', 'validation', 'required', 'Trường :attribute không được bỏ trống.', '2021-10-18 20:09:33', '2021-10-18 20:09:49'),
(3134, 0, 'vi', 'validation', 'required_if', 'Trường :attribute không được bỏ trống khi trường :other là :value.', '2021-10-18 20:09:33', '2021-10-18 20:09:49'),
(3135, 0, 'vi', 'validation', 'required_unless', 'Trường :attribute không được bỏ trống trừ khi :other là :values.', '2021-10-18 20:09:33', '2021-10-18 20:09:49'),
(3136, 0, 'vi', 'validation', 'required_with', 'Trường :attribute không được bỏ trống khi một trong :values có giá trị.', '2021-10-18 20:09:33', '2021-10-18 20:09:49'),
(3137, 0, 'vi', 'validation', 'required_with_all', 'Trường :attribute không được bỏ trống khi tất cả :values có giá trị.', '2021-10-18 20:09:33', '2021-10-18 20:09:49'),
(3138, 0, 'vi', 'validation', 'required_without', 'Trường :attribute không được bỏ trống khi một trong :values không có giá trị.', '2021-10-18 20:09:33', '2021-10-18 20:09:49'),
(3139, 0, 'vi', 'validation', 'required_without_all', 'Trường :attribute không được bỏ trống khi tất cả :values không có giá trị.', '2021-10-18 20:09:33', '2021-10-18 20:09:49'),
(3140, 0, 'vi', 'validation', 'same', 'Trường :attribute và :other phải giống nhau.', '2021-10-18 20:09:33', '2021-10-18 20:09:49'),
(3141, 0, 'vi', 'validation', 'size.array', 'Trường :attribute phải chứa :size phần tử.', '2021-10-18 20:09:33', '2021-10-18 20:09:49'),
(3142, 0, 'vi', 'validation', 'size.file', 'Dung lượng tập tin trong trường :attribute phải bằng :size kB.', '2021-10-18 20:09:33', '2021-10-18 20:09:49'),
(3143, 0, 'vi', 'validation', 'size.numeric', 'Trường :attribute phải bằng :size.', '2021-10-18 20:09:33', '2021-10-18 20:09:49'),
(3144, 0, 'vi', 'validation', 'size.string', 'Trường :attribute phải chứa :size kí tự.', '2021-10-18 20:09:33', '2021-10-18 20:09:49'),
(3145, 0, 'vi', 'validation', 'starts_with', 'Trường :attribute phải được bắt đầu bằng một trong những giá trị sau: :values', '2021-10-18 20:09:33', '2021-10-18 20:09:49'),
(3146, 0, 'vi', 'validation', 'string', 'Trường :attribute phải là một chuỗi kí tự.', '2021-10-18 20:09:33', '2021-10-18 20:09:49'),
(3147, 0, 'vi', 'validation', 'timezone', 'Trường :attribute phải là một múi giờ hợp lệ.', '2021-10-18 20:09:33', '2021-10-18 20:09:49'),
(3148, 0, 'vi', 'validation', 'unique', 'Trường :attribute đã có trong cơ sở dữ liệu.', '2021-10-18 20:09:33', '2021-10-18 20:09:49'),
(3149, 0, 'vi', 'validation', 'uploaded', 'Trường :attribute tải lên thất bại.', '2021-10-18 20:09:33', '2021-10-18 20:09:49'),
(3150, 0, 'vi', 'validation', 'url', 'Trường :attribute không giống với định dạng một URL.', '2021-10-18 20:09:33', '2021-10-18 20:09:49'),
(3151, 0, 'vi', 'validation', 'uuid', 'Trường :attribute phải là một chuỗi UUID hợp lệ.', '2021-10-18 20:09:33', '2021-10-18 20:09:49'),
(3152, 0, 'vi', 'validation', 'custom.attribute-name.rule-name', 'custom-message', '2021-10-18 20:09:33', '2021-10-18 20:09:49');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permissions` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  `first_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT '0',
  `documents` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `manage_supers` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `permissions`, `last_login`, `first_name`, `last_name`, `username`, `phone`, `avatar_id`, `super_user`, `documents`, `manage_supers`) VALUES
(1, 'admin@odn.com', NULL, '$2y$10$KgoSOMzybWZRhFlWztjor.eorottkCvC2iqXdBhnnt9qCWiLNtQii', 'FnbKDoktsBvC6EvO5icKbQQIAuswbJM0642PC0QsO3OnzRtp3MwpipRPISW7', '2021-06-11 20:56:49', '2022-04-21 09:34:26', NULL, '2022-04-21 09:34:26', 'System', 'Admin', 'admin01', NULL, NULL, 1, NULL, 1),
(65, 'aliahmedfaruqui@hotmail.com', NULL, '$2y$10$yhIvKyZ3gDZiNfLQZYzFDuSdgleUh0FzaVuXhRiPhiTlExopurTFu', 'Fg6oE6v57IEaU6Ad3BHkTah62erxGSjgPi8yuJ9BulHdLZCMSPgS6zYofrZk', '2022-03-29 04:46:12', '2022-04-14 05:41:49', NULL, '2022-04-14 05:41:49', 'Ali Ahmed', 'Faruqui', 'aliahmed786', '0556115824', NULL, 0, NULL, 0),
(87, 'khizarabbas11097@gmail.com', NULL, '$2y$10$AlsMBIaK0UuwQKmJHtObY.wqQMtka7RY0cEOzbDLgmDynGdxpZkfq', 'wf0TKbPMxF9ADVTdg3MS6bgGa8mgRiV257uD43XvoT7uiP3J84JoiXkzNfAi', '2022-04-12 08:57:05', '2022-04-16 06:11:05', NULL, NULL, 'khizar', 'abbas', 'khizar11097', '03362103138', NULL, 0, NULL, 0),
(89, 'mwaqasiu@gmail.com', NULL, '$2y$10$r1eGMQ/jpCYIa9kge57/AuY42ADaBKMkauIPMZhZcu9r8/5JKBjgu', '6jhIP7Gaxwo2x1zuKULZMMLOQaOkkyb91LdEbhBBsFPMZMUkyzmmttlhQ3pJC', '2022-04-14 17:19:47', '2022-04-14 17:19:47', NULL, NULL, 'Tatum Tate', 'Victoria Velez', 'Timon Mcneil', '+1 (908) 935-9634', NULL, 0, NULL, 0),
(91, 'davoge9272@eosbuzz.com', NULL, '$2y$10$93QrfWK/llLm7KVH7r7JpemdMkR0wX0.NHYP25m5LRyvdf0Xf7fmm', '316778t6YhJ8Pe1rXx7DHxM75TdAzP1pTxNIh2263K7vIT9c0mgpsTaa61cF', '2022-04-18 07:54:40', '2022-04-18 07:55:16', NULL, '2022-04-18 07:55:16', 'Test', 'Order', 'eosbuzzcom', '0000000000', NULL, 0, NULL, 0),
(92, 'mevehe2119@hhmel.com', NULL, '$2y$10$5Jj1qUvjN3t3LddGJSbmzuBXvTEoLQLuSb9HJl4t/05JjPaMoBWLm', 's3dz3x30lCxIzIJt2aKKg47rxscCnaMDJVSW5GVpmbfEJAMTlxyE6tDm0H6NL', '2022-04-18 07:59:05', '2022-04-18 07:59:05', NULL, NULL, 'Test', 'Order', 'hhmel', '0000000000', NULL, 0, NULL, 0),
(94, 'muneebasaleem583@gmail.com', NULL, '$2y$10$TzmSVjBowwrSOSck9ZEiP.bCAujppwR9Fw61mWZhEK53MeuoR.HEm', 'dnpKXj7GEaK0PGbUFlr6CPQCGE7n3bt9gjsmGl54CdwQbIni9jo29bKcRpbB5', '2022-04-18 23:39:25', '2022-04-18 23:39:25', NULL, NULL, 'Muneeba', 'Saleem', 'Rachel Zain', '030639723876', NULL, 0, NULL, 0),
(95, 'vikevec569@3dinews.com', NULL, '$2y$10$16GI10UoL1Wlr/xuieVjd.zgHRH5jtLS.O5hRJN1lxweS.xU0sWRu', 'TPYkqj7cOKWVZZNhx0D5aWnjZ9xJuCTEX2bLfXZxKMrNhSGpdcCQjEhGMm1Mt', '2022-04-19 08:35:55', '2022-04-19 08:35:55', NULL, NULL, 'vike', 'evec', 'vikevec569', '0000000000', NULL, 0, NULL, 0),
(96, 'yidabeb986@carsik.com', NULL, '$2y$10$apCd9v.syTqdg1y3i2gdIO42WATgD8ncKAErgKUN6kvsrugKfCx9m', 'ajxWT1Je617Ap6WzARJyht2dMrLXmRYDnfxc5ibw1vEJPuVyX18VGcqMgbfNK', '2022-04-19 08:40:14', '2022-04-19 08:40:14', NULL, NULL, 'yida', 'beb', 'yidabeb986', '0000000000', NULL, 0, NULL, 0),
(105, 'zk27159@gmail.com', NULL, '$2y$10$f.qJAp8gnMOHiev9kY48/eJeviEFeg11OQIGYVl7eTSB0bDjOsmNS', 'IIvRTJX3bbawrFeBxdbHE9RC0XDKVYyeQHM9Xl713Vvro0SlJgVjhFf2DbMx', '2022-04-21 09:33:18', '2022-04-21 09:36:20', NULL, NULL, 'Zeeshan', 'Khan', '@gmail.com', '03482594781', NULL, 0, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_meta`
--

CREATE TABLE `user_meta` (
  `id` int UNSIGNED NOT NULL,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_meta`
--

INSERT INTO `user_meta` (`id`, `key`, `value`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'admin-locale', 'en', 1, '2019-11-17 20:19:14', '2019-11-30 19:25:04'),
(2, 'admin-theme', 'default', 1, '2022-01-18 13:05:00', '2022-02-03 14:24:46');

-- --------------------------------------------------------

--
-- Table structure for table `widgets`
--

CREATE TABLE `widgets` (
  `id` int UNSIGNED NOT NULL,
  `widget_id` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sidebar_id` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `widgets`
--

INSERT INTO `widgets` (`id`, `widget_id`, `sidebar_id`, `theme`, `position`, `data`, `created_at`, `updated_at`) VALUES
(20, 'CustomMenuWidget', 'footer_sidebar', 'flex-home', 0, '{\"id\":\"CustomMenuWidget\",\"name\":\"About\",\"menu_id\":\"about\"}', '2019-11-17 22:09:57', '2019-11-17 22:09:57'),
(21, 'CustomMenuWidget', 'footer_sidebar', 'flex-home', 1, '{\"id\":\"CustomMenuWidget\",\"name\":\"More information\",\"menu_id\":\"more-information\"}', '2019-11-17 22:09:57', '2019-11-17 22:09:57'),
(22, 'CustomMenuWidget', 'footer_sidebar', 'flex-home', 2, '{\"id\":\"CustomMenuWidget\",\"name\":\"News\",\"menu_id\":\"news\"}', '2019-11-17 22:09:57', '2019-11-17 22:09:57'),
(24, 'CategoriesWidget', 'primary_sidebar', 'flex-home', 0, '{\"id\":\"CategoriesWidget\",\"name\":\"Categories\"}', '2019-11-18 03:50:44', '2019-11-18 03:50:44'),
(25, 'RecentPostsWidget', 'primary_sidebar', 'flex-home', 1, '{\"id\":\"RecentPostsWidget\",\"name\":\"Recent posts\",\"number_display\":\"5\"}', '2019-11-18 03:50:45', '2019-11-18 03:50:45'),
(30, 'CategoriesWidget', 'primary_sidebar', 'flex-home-vi', 0, '{\"id\":\"CategoriesWidget\",\"name\":\"Chuy\\u00ean m\\u1ee5c\"}', '2019-11-21 07:53:12', '2019-11-21 07:53:12'),
(31, 'RecentPostsWidget', 'primary_sidebar', 'flex-home-vi', 1, '{\"id\":\"RecentPostsWidget\",\"name\":\"B\\u00e0i vi\\u1ebft m\\u1edbi nh\\u1ea5t\",\"number_display\":\"5\"}', '2019-11-21 07:53:12', '2019-11-21 07:53:12'),
(41, 'CustomMenuWidget', 'footer_sidebar', 'flex-home-vi', 0, '{\"id\":\"CustomMenuWidget\",\"name\":\"Gi\\u1edbi thi\\u1ec7u\",\"menu_id\":\"ve-chung-toi\"}', '2019-11-21 07:53:51', '2019-11-21 07:53:51'),
(42, 'CustomMenuWidget', 'footer_sidebar', 'flex-home-vi', 1, '{\"id\":\"CustomMenuWidget\",\"name\":\" Th\\u00f4ng tin th\\u00eam\",\"menu_id\":\"thong-tin-them\"}', '2019-11-21 07:53:51', '2019-11-21 07:53:51'),
(43, 'CustomMenuWidget', 'footer_sidebar', 'flex-home-vi', 2, '{\"id\":\"CustomMenuWidget\",\"name\":\"Tin t\\u1ee9c\",\"menu_id\":\"tin-tuc\"}', '2019-11-21 07:53:51', '2019-11-21 07:53:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activations`
--
ALTER TABLE `activations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activations_user_id_index` (`user_id`);

--
-- Indexes for table `audit_histories`
--
ALTER TABLE `audit_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `audit_histories_user_id_index` (`user_id`),
  ADD KEY `audit_histories_module_index` (`module`);

--
-- Indexes for table `careers`
--
ALTER TABLE `careers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cities_slug_unique` (`slug`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_replies`
--
ALTER TABLE `contact_replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dashboard_widgets`
--
ALTER TABLE `dashboard_widgets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dashboard_widget_settings`
--
ALTER TABLE `dashboard_widget_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dashboard_widget_settings_user_id_index` (`user_id`),
  ADD KEY `dashboard_widget_settings_widget_id_index` (`widget_id`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`lang_id`);

--
-- Indexes for table `language_meta`
--
ALTER TABLE `language_meta`
  ADD PRIMARY KEY (`lang_meta_id`),
  ADD KEY `language_meta_lang_meta_content_id_index` (`reference_id`);

--
-- Indexes for table `media_files`
--
ALTER TABLE `media_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_files_user_id_index` (`user_id`);

--
-- Indexes for table `media_folders`
--
ALTER TABLE `media_folders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_folders_user_id_index` (`user_id`);

--
-- Indexes for table `media_settings`
--
ALTER TABLE `media_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_slug_unique` (`slug`);

--
-- Indexes for table `menu_locations`
--
ALTER TABLE `menu_locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_nodes`
--
ALTER TABLE `menu_nodes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_nodes_menu_id_index` (`menu_id`),
  ADD KEY `menu_nodes_parent_id_index` (`parent_id`),
  ADD KEY `menu_nodes_related_id_index` (`reference_id`);

--
-- Indexes for table `meta_boxes`
--
ALTER TABLE `meta_boxes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meta_boxes_content_id_index` (`reference_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notes_user_id_index` (`user_id`),
  ADD KEY `notes_reference_id_index` (`reference_id`),
  ADD KEY `notes_created_by_index` (`created_by`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_categories`
--
ALTER TABLE `post_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_tags`
--
ALTER TABLE `post_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `revisions`
--
ALTER TABLE `revisions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`);

--
-- Indexes for table `re_accounts`
--
ALTER TABLE `re_accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `vendors_email_unique` (`email`),
  ADD UNIQUE KEY `re_accounts_username_unique` (`username`);

--
-- Indexes for table `re_account_activity_logs`
--
ALTER TABLE `re_account_activity_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `re_account_packages`
--
ALTER TABLE `re_account_packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `re_account_password_resets`
--
ALTER TABLE `re_account_password_resets`
  ADD KEY `vendor_password_resets_email_index` (`email`),
  ADD KEY `vendor_password_resets_token_index` (`token`);

--
-- Indexes for table `re_categories`
--
ALTER TABLE `re_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `re_consults`
--
ALTER TABLE `re_consults`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `re_currencies`
--
ALTER TABLE `re_currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `re_facilities`
--
ALTER TABLE `re_facilities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `re_facilities_distances`
--
ALTER TABLE `re_facilities_distances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `re_features`
--
ALTER TABLE `re_features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `re_investors`
--
ALTER TABLE `re_investors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `re_packages`
--
ALTER TABLE `re_packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `re_projects`
--
ALTER TABLE `re_projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `re_project_categories`
--
ALTER TABLE `re_project_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `re_properties`
--
ALTER TABLE `re_properties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `re_property_categories`
--
ALTER TABLE `re_property_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `re_tags`
--
ALTER TABLE `re_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_slug_unique` (`slug`),
  ADD KEY `roles_created_by_index` (`created_by`),
  ADD KEY `roles_updated_by_index` (`updated_by`);

--
-- Indexes for table `role_users`
--
ALTER TABLE `role_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_users_user_id_index` (`user_id`),
  ADD KEY `role_users_role_id_index` (`role_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slugs`
--
ALTER TABLE `slugs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscription`
--
ALTER TABLE `subscription`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `user_meta`
--
ALTER TABLE `user_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_meta_user_id_index` (`user_id`);

--
-- Indexes for table `widgets`
--
ALTER TABLE `widgets`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activations`
--
ALTER TABLE `activations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `audit_histories`
--
ALTER TABLE `audit_histories`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `careers`
--
ALTER TABLE `careers`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `contact_replies`
--
ALTER TABLE `contact_replies`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `dashboard_widgets`
--
ALTER TABLE `dashboard_widgets`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `dashboard_widget_settings`
--
ALTER TABLE `dashboard_widget_settings`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `lang_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `language_meta`
--
ALTER TABLE `language_meta`
  MODIFY `lang_meta_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=484;

--
-- AUTO_INCREMENT for table `media_files`
--
ALTER TABLE `media_files`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1104;

--
-- AUTO_INCREMENT for table `media_folders`
--
ALTER TABLE `media_folders`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `media_settings`
--
ALTER TABLE `media_settings`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `menu_locations`
--
ALTER TABLE `menu_locations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `menu_nodes`
--
ALTER TABLE `menu_nodes`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `meta_boxes`
--
ALTER TABLE `meta_boxes`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=209;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT for table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `post_categories`
--
ALTER TABLE `post_categories`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `post_tags`
--
ALTER TABLE `post_tags`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `revisions`
--
ALTER TABLE `revisions`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `re_accounts`
--
ALTER TABLE `re_accounts`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `re_account_activity_logs`
--
ALTER TABLE `re_account_activity_logs`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `re_account_packages`
--
ALTER TABLE `re_account_packages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `re_categories`
--
ALTER TABLE `re_categories`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `re_consults`
--
ALTER TABLE `re_consults`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `re_currencies`
--
ALTER TABLE `re_currencies`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `re_facilities`
--
ALTER TABLE `re_facilities`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `re_facilities_distances`
--
ALTER TABLE `re_facilities_distances`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5081;

--
-- AUTO_INCREMENT for table `re_features`
--
ALTER TABLE `re_features`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `re_investors`
--
ALTER TABLE `re_investors`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `re_packages`
--
ALTER TABLE `re_packages`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `re_projects`
--
ALTER TABLE `re_projects`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `re_project_categories`
--
ALTER TABLE `re_project_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `re_properties`
--
ALTER TABLE `re_properties`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3039;

--
-- AUTO_INCREMENT for table `re_property_categories`
--
ALTER TABLE `re_property_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=156;

--
-- AUTO_INCREMENT for table `re_tags`
--
ALTER TABLE `re_tags`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `role_users`
--
ALTER TABLE `role_users`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=334;

--
-- AUTO_INCREMENT for table `slugs`
--
ALTER TABLE `slugs`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=353;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `subscription`
--
ALTER TABLE `subscription`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3153;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `user_meta`
--
ALTER TABLE `user_meta`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `widgets`
--
ALTER TABLE `widgets`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
