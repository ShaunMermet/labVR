-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 04, 2017 at 07:18 AM
-- Server version: 5.7.14
-- PHP Version: 7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `labvrdb`
--
CREATE DATABASE IF NOT EXISTS `labvrdb` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_520_ci;
USE `labvrdb`;

-- --------------------------------------------------------

--
-- Table structure for table `isvr_audio`
--

CREATE TABLE `isvr_audio` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `file_id` int(11) NOT NULL,
  `caption` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `duration` text COLLATE utf8_unicode_ci NOT NULL,
  `data` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `isvr_content`
--

CREATE TABLE `isvr_content` (
  `id` int(10) UNSIGNED NOT NULL,
  `space_id` int(11) NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `weight` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `uri` varchar(512) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `isvr_content`
--

INSERT INTO `isvr_content` (`id`, `space_id`, `key`, `weight`, `title`, `uri`, `created_at`, `updated_at`) VALUES
(28, 13, 'PLYModel', -1, 'Soybean august', '', '2017-07-03 21:07:43', '2017-07-03 21:07:43'),
(27, 10, 'SkyBox', -1, 'Skybox7', '', '2017-07-03 19:28:15', '2017-07-03 19:28:15'),
(24, 12, 'SkyBox', -1, 'Skybox2', '', '2017-07-03 19:26:14', '2017-07-03 19:27:21'),
(21, 11, 'PLYModel', -1, 'Soybean June', '', '2017-07-03 17:57:25', '2017-07-03 17:57:25'),
(25, 11, 'SkyBox', -1, 'Skybox1', '', '2017-07-03 19:26:44', '2017-07-03 19:26:44'),
(22, 12, 'PLYModel', -1, 'Soybean July', '', '2017-07-03 18:37:08', '2017-07-03 18:37:08'),
(26, 10, 'OBJModel', -1, 'Hokusou Hospital ground OBJ', '', '2017-07-03 19:28:00', '2017-07-03 19:28:00'),
(29, 13, 'SkyBox', -1, 'Skybox3', '', '2017-07-03 21:07:56', '2017-07-03 21:07:56'),
(30, 14, 'SkyBox', -1, 'Skybox4', '', '2017-07-03 21:14:46', '2017-07-03 21:14:46'),
(31, 14, 'PLYModel', -1, 'Soybean September', '', '2017-07-03 21:15:16', '2017-07-03 21:15:16'),
(32, 15, 'SkyBox', -1, 'Skybox5', '', '2017-07-03 21:20:49', '2017-07-03 21:20:49'),
(33, 15, 'PLYModel', -1, 'Soybean October', '', '2017-07-03 21:21:09', '2017-07-03 21:21:09'),
(34, 16, 'SkyBox', -1, 'Skybox6', '', '2017-07-03 21:24:26', '2017-07-03 21:24:26'),
(35, 16, 'PLYModel', -1, 'Soybean December', '', '2017-07-03 21:24:45', '2017-07-03 21:24:45');

-- --------------------------------------------------------

--
-- Table structure for table `isvr_fields`
--

CREATE TABLE `isvr_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `content_id` int(11) NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `data` text COLLATE utf8_unicode_ci NOT NULL,
  `meta_data` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `isvr_fields`
--

INSERT INTO `isvr_fields` (`id`, `content_id`, `key`, `type`, `data`, `meta_data`, `created_at`, `updated_at`) VALUES
(31, 30, 'SkyBox-item', 'image', '5', 'null', '2017-07-03 21:14:46', '2017-07-03 21:14:46'),
(29, 28, 'PLY-model', 'model3d', '27', '{"scale":"1.0 1.0 1.0","rotation":"270 0 0"}', '2017-07-03 21:07:43', '2017-07-03 21:08:36'),
(30, 29, 'SkyBox-item', 'image', '5', 'null', '2017-07-03 21:07:56', '2017-07-03 21:07:56'),
(26, 25, 'SkyBox-item', 'image', '5', 'null', '2017-07-03 19:26:44', '2017-07-03 19:26:44'),
(28, 27, 'SkyBox-item', 'image', '5', 'null', '2017-07-03 19:28:15', '2017-07-03 19:28:15'),
(24, 23, 'SkyBox-item', 'image', '3', 'null', '2017-07-03 18:37:23', '2017-07-03 18:37:23'),
(25, 24, 'SkyBox-item', 'image', '5', 'null', '2017-07-03 19:26:14', '2017-07-03 19:26:14'),
(21, 20, 'SkyBox-item', 'image', '3', 'null', '2017-07-03 17:55:47', '2017-07-03 17:55:47'),
(23, 22, 'PLY-model', 'model3d', '14', '{"scale":"1.0 1.0 1.0","rotation":"270 0 0"}', '2017-07-03 18:37:08', '2017-07-03 18:37:08'),
(22, 21, 'PLY-model', 'model3d', '10', '{"scale":"1.0 1.0 1.0","rotation":"270 0 0"}', '2017-07-03 17:57:25', '2017-07-03 17:57:25'),
(18, 17, 'SkyBox-item', 'image', '3', 'null', '2017-07-03 17:49:41', '2017-07-03 17:49:41'),
(27, 26, 'OBJ-model', 'model3d', '25', '{"scale":"1.0 1.0 1.0","rotation":"270 0 0"}', '2017-07-03 19:28:00', '2017-07-03 19:28:00'),
(32, 31, 'PLY-model', 'model3d', '29', '{"scale":"1.0 1.0 1.0","rotation":"270 0 0"}', '2017-07-03 21:15:16', '2017-07-03 21:15:16'),
(33, 32, 'SkyBox-item', 'image', '5', 'null', '2017-07-03 21:20:49', '2017-07-03 21:20:49'),
(35, 33, 'PLY-model', 'model3d', '30', '{"scale":"1.0 1.0 1.0","rotation":"270 0 0"}', '2017-07-03 21:22:16', '2017-07-03 21:22:16'),
(36, 34, 'SkyBox-item', 'image', '5', 'null', '2017-07-03 21:24:26', '2017-07-03 21:24:26'),
(37, 35, 'PLY-model', 'model3d', '31', '{"scale":"1.0 1.0 1.0","rotation":"270 0 0"}', '2017-07-03 21:24:45', '2017-07-03 21:24:45');

-- --------------------------------------------------------

--
-- Table structure for table `isvr_files`
--

CREATE TABLE `isvr_files` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `uri` varchar(512) COLLATE utf8_unicode_ci NOT NULL,
  `filemime` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `filesize` int(11) NOT NULL,
  `filename_orig` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `isvr_files`
--

INSERT INTO `isvr_files` (`id`, `user_id`, `filename`, `uri`, `filemime`, `filesize`, `filename_orig`, `created_at`, `updated_at`) VALUES
(39, 1, '5q1geiSxBifxumKzXmxfz3AqAJW0EwIMtB8X4k1m_preview.png', 'public/assets/user/model3d/OVNOLH9JzUvV4I0U4AJ86izM5H71KT/5q1geiSxBifxumKzXmxfz3AqAJW0EwIMtB8X4k1m_preview.png', 'image/png', 4971, '5q1geiSxBifxumKzXmxfz3AqAJW0EwIMtB8X4k1m_preview.png', '2017-07-03 17:53:03', '2017-07-03 17:53:03'),
(151, 1, 'O6D2q8v0ooGthM8FMyHt9js9gM7ccPT3TifiJWM4_preview.png', 'public/assets/user/model3d/Tph2QLr6XLTQ3DO0kIUvBvt5vE7BNQ/O6D2q8v0ooGthM8FMyHt9js9gM7ccPT3TifiJWM4_preview.png', 'image/png', 4729, 'O6D2q8v0ooGthM8FMyHt9js9gM7ccPT3TifiJWM4_preview.png', '2017-07-03 21:23:23', '2017-07-03 21:23:23'),
(150, 1, 'sjGIkPMw1nleU6xFPljLRx7zc4f2PykUEiyfTrUsCwdDSywzIUGQ2mNV3W5b.ply', 'public/assets/user/model3d/Tph2QLr6XLTQ3DO0kIUvBvt5vE7BNQ/sjGIkPMw1nleU6xFPljLRx7zc4f2PykUEiyfTrUsCwdDSywzIUGQ2mNV3W5b.ply', 'application/octet-stream', 11109945, 'soybean_tanashi_x5rgb15m_20161227_group1_densified_point_cloudgood3invertednorm.ply', '2017-07-03 21:23:16', '2017-07-03 21:23:16'),
(149, 1, 'YAhK8IqDeey8FTWWDPbjiRm5BDmFNL7PCRWFSKBi_preview.png', 'public/assets/user/model3d/3XZ3lZOLsGmS6syfxgjJD5JiSrViL7/YAhK8IqDeey8FTWWDPbjiRm5BDmFNL7PCRWFSKBi_preview.png', 'image/png', 5937, 'YAhK8IqDeey8FTWWDPbjiRm5BDmFNL7PCRWFSKBi_preview.png', '2017-07-03 21:18:59', '2017-07-03 21:18:59'),
(148, 1, 'Yh2gidvmLp5trCipiPVx5KgOaipUY8U7rsXgzkSgcrbHNdir3wpyHoVhCPcL.ply', 'public/assets/user/model3d/3XZ3lZOLsGmS6syfxgjJD5JiSrViL7/Yh2gidvmLp5trCipiPVx5KgOaipUY8U7rsXgzkSgcrbHNdir3wpyHoVhCPcL.ply', 'application/octet-stream', 9586360, 'soybean_tanashi_x5rgb15m_20161110_group1_densified_point_cloudnew2.ply', '2017-07-03 21:18:53', '2017-07-03 21:18:53'),
(143, 1, '2M2oO8DC5UetGzufZbAfOeO0g93rou9kemxCIo29_preview.png', 'public/assets/user/model3d/wXzdYlIVJbD1MsCxNsQagoUmBZprT1/2M2oO8DC5UetGzufZbAfOeO0g93rou9kemxCIo29_preview.png', 'image/png', 4792, '2M2oO8DC5UetGzufZbAfOeO0g93rou9kemxCIo29_preview.png', '2017-07-03 21:05:19', '2017-07-03 21:05:19'),
(139, 1, 'b3oNPnRVEUB1jWwyEcrY2Jqqro05l9HFF7zMEzJpcPHojZMRJNcTu5KxFcyb.jpg', 'public/assets/user/images/b3oNPnRVEUB1jWwyEcrY2Jqqro05l9HFF7zMEzJpcPHojZMRJNcTu5KxFcyb.jpg', 'image/jpeg', 676258, 'sky3b.jpg', '2017-07-03 19:25:38', '2017-07-03 19:25:38'),
(146, 1, 'lbaoktBQhTOOpAy2d5DqzKvkeynzW0eo09xmQkVC8ys6BnpP3gtzT729hiM4.ply', 'public/assets/user/model3d/DJbBBUrSrxSgiXdOZtRXcM8QERVYOE/lbaoktBQhTOOpAy2d5DqzKvkeynzW0eo09xmQkVC8ys6BnpP3gtzT729hiM4.ply', 'application/octet-stream', 8995206, 'soybean_tanashi_x5rgb15m_20160916_group1_densified_point_cloudcollapsedcentered.ply', '2017-07-03 21:13:27', '2017-07-03 21:13:27'),
(147, 1, 'YEqGEeO5WsFk3cHOR6K7pRIEtN4rjO1KkUPC9XZx_preview.png', 'public/assets/user/model3d/DJbBBUrSrxSgiXdOZtRXcM8QERVYOE/YEqGEeO5WsFk3cHOR6K7pRIEtN4rjO1KkUPC9XZx_preview.png', 'image/png', 5792, 'YEqGEeO5WsFk3cHOR6K7pRIEtN4rjO1KkUPC9XZx_preview.png', '2017-07-03 21:13:34', '2017-07-03 21:13:34'),
(142, 1, 'f3UMTq7FX4UVreAZlOhSIoNIHj3cx3eMTZ62CgxxVqdULokUxnoZyGKZchnp.ply', 'public/assets/user/model3d/wXzdYlIVJbD1MsCxNsQagoUmBZprT1/f3UMTq7FX4UVreAZlOhSIoNIHj3cx3eMTZ62CgxxVqdULokUxnoZyGKZchnp.ply', 'application/octet-stream', 3681101, 'soybean_tanashi_x5rgb15m_20160823_group1_densified_point_cloudpoisson1centered.ply', '2017-07-03 21:05:14', '2017-07-03 21:05:14'),
(46, 1, '0BRwaYNgd5XZUcAoTMqXH4dfxaMf76hFL6lYCwXAgSNp4w6q6zvgdheRwpQO.ply', 'public/assets/user/model3d/k4y5BwVXBfHgH3hjtJMyC1tauJXxGt/0BRwaYNgd5XZUcAoTMqXH4dfxaMf76hFL6lYCwXAgSNp4w6q6zvgdheRwpQO.ply', 'application/octet-stream', 9974111, 'soybean_tanashi_x5rgb15m_20160725_group1_densified_point_cloudcollapsedcentered.ply', '2017-07-03 18:35:28', '2017-07-03 18:35:28'),
(47, 1, 'h7IJOBfJ2Ixjqcw5IHJez2wHolIyZzNsbtPM1kvH_preview.png', 'public/assets/user/model3d/k4y5BwVXBfHgH3hjtJMyC1tauJXxGt/h7IJOBfJ2Ixjqcw5IHJez2wHolIyZzNsbtPM1kvH_preview.png', 'image/png', 5113, 'h7IJOBfJ2Ixjqcw5IHJez2wHolIyZzNsbtPM1kvH_preview.png', '2017-07-03 18:35:35', '2017-07-03 18:35:35'),
(38, 1, 'hmPS6ZtizvPF3KlxZBmf5hgeeIs1i4jDTbgT78gKpv2J4ENkH5RivKzuuiR1.ply', 'public/assets/user/model3d/OVNOLH9JzUvV4I0U4AJ86izM5H71KT/hmPS6ZtizvPF3KlxZBmf5hgeeIs1i4jDTbgT78gKpv2J4ENkH5RivKzuuiR1.ply', 'application/octet-stream', 9740693, 'soybean_tanashi_x5rgb15m_20160608_group1_densified_point_cloudcollapsed.ply', '2017-07-03 17:52:56', '2017-07-03 17:52:56'),
(138, 1, 'IXNvfvaJYDOcMCssNdPrzfoIz2q64eRcfRS5rIfE_preview.png', 'public/assets/user/model3d/R8CsznRy4q5DGQ6IR0uslbFY1wzAGk/IXNvfvaJYDOcMCssNdPrzfoIz2q64eRcfRS5rIfE_preview.png', 'image/png', 22844, 'IXNvfvaJYDOcMCssNdPrzfoIz2q64eRcfRS5rIfE_preview.png', '2017-07-03 19:23:53', '2017-07-03 19:23:53'),
(136, 1, 'odm_textured_model_material0007_map_kd.png', 'public/assets/user/model3d/R8CsznRy4q5DGQ6IR0uslbFY1wzAGk/odm_textured_model_material0007_map_kd.png', 'image/png', 8553574, 'odm_textured_model_material0007_map_kd.png', '2017-07-03 19:23:46', '2017-07-03 19:23:46'),
(137, 1, 'odm_textured_model_material0008_map_kd.png', 'public/assets/user/model3d/R8CsznRy4q5DGQ6IR0uslbFY1wzAGk/odm_textured_model_material0008_map_kd.png', 'image/png', 15403, 'odm_textured_model_material0008_map_kd.png', '2017-07-03 19:23:46', '2017-07-03 19:23:46'),
(135, 1, 'odm_textured_model_material0006_map_kd.png', 'public/assets/user/model3d/R8CsznRy4q5DGQ6IR0uslbFY1wzAGk/odm_textured_model_material0006_map_kd.png', 'image/png', 14338917, 'odm_textured_model_material0006_map_kd.png', '2017-07-03 19:23:46', '2017-07-03 19:23:46'),
(134, 1, 'odm_textured_model_material0005_map_kd.png', 'public/assets/user/model3d/R8CsznRy4q5DGQ6IR0uslbFY1wzAGk/odm_textured_model_material0005_map_kd.png', 'image/png', 14148434, 'odm_textured_model_material0005_map_kd.png', '2017-07-03 19:23:45', '2017-07-03 19:23:45'),
(133, 1, 'odm_textured_model_material0004_map_kd.png', 'public/assets/user/model3d/R8CsznRy4q5DGQ6IR0uslbFY1wzAGk/odm_textured_model_material0004_map_kd.png', 'image/png', 14136037, 'odm_textured_model_material0004_map_kd.png', '2017-07-03 19:23:45', '2017-07-03 19:23:45'),
(132, 1, 'odm_textured_model_material0003_map_kd.png', 'public/assets/user/model3d/R8CsznRy4q5DGQ6IR0uslbFY1wzAGk/odm_textured_model_material0003_map_kd.png', 'image/png', 14086081, 'odm_textured_model_material0003_map_kd.png', '2017-07-03 19:23:45', '2017-07-03 19:23:45'),
(131, 1, 'odm_textured_model_material0002_map_kd.png', 'public/assets/user/model3d/R8CsznRy4q5DGQ6IR0uslbFY1wzAGk/odm_textured_model_material0002_map_kd.png', 'image/png', 13305909, 'odm_textured_model_material0002_map_kd.png', '2017-07-03 19:23:44', '2017-07-03 19:23:44'),
(130, 1, 'odm_textured_model_material0001_map_kd.png', 'public/assets/user/model3d/R8CsznRy4q5DGQ6IR0uslbFY1wzAGk/odm_textured_model_material0001_map_kd.png', 'image/png', 12647221, 'odm_textured_model_material0001_map_kd.png', '2017-07-03 19:23:44', '2017-07-03 19:23:44'),
(129, 1, 'odm_textured_model_material0000_map_kd.png', 'public/assets/user/model3d/R8CsznRy4q5DGQ6IR0uslbFY1wzAGk/odm_textured_model_material0000_map_kd.png', 'image/png', 11771980, 'odm_textured_model_material0000_map_kd.png', '2017-07-03 19:23:44', '2017-07-03 19:23:44'),
(128, 1, '8DcmIloLcNSMYqgggD9LT0Mc9xFxg71pNDzZULaDUvbHOM9c1eBYo9UXX0k5.obj', 'public/assets/user/model3d/R8CsznRy4q5DGQ6IR0uslbFY1wzAGk/8DcmIloLcNSMYqgggD9LT0Mc9xFxg71pNDzZULaDUvbHOM9c1eBYo9UXX0k5.obj', 'application/octet-stream', 21150300, 'odm_textured_mode_centered2.obj', '2017-07-03 19:23:43', '2017-07-03 19:23:43'),
(127, 1, 'IGx5m9cBoD7AL5RmNU1jEkpP4jAahva7cjnFkT5CwQR7eTurFKzvlCQtoNNg.mtl', 'public/assets/user/model3d/R8CsznRy4q5DGQ6IR0uslbFY1wzAGk/IGx5m9cBoD7AL5RmNU1jEkpP4jAahva7cjnFkT5CwQR7eTurFKzvlCQtoNNg.mtl', 'application/octet-stream', 1865, 'odm_textured_mode_centered2.mtl', '2017-07-03 19:23:43', '2017-07-03 19:23:43');

-- --------------------------------------------------------

--
-- Table structure for table `isvr_images`
--

CREATE TABLE `isvr_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `file_id` int(11) NOT NULL,
  `caption` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `width` int(11) NOT NULL,
  `height` int(11) NOT NULL,
  `data` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `isvr_images`
--

INSERT INTO `isvr_images` (`id`, `user_id`, `file_id`, `caption`, `description`, `width`, `height`, `data`, `created_at`, `updated_at`) VALUES
(5, 1, 139, '', '', 2048, 512, '', '2017-07-03 19:25:38', '2017-07-03 19:25:38');

-- --------------------------------------------------------

--
-- Table structure for table `isvr_migrations`
--

CREATE TABLE `isvr_migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `isvr_migrations`
--

INSERT INTO `isvr_migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_01_18_221545_create_themes_table', 1),
('2016_01_27_025654_create_files_table', 1),
('2016_02_05_170754_create_spaces_table', 1),
('2016_03_14_010719_create_settings_table', 1),
('2016_06_29_160137_create_content_table', 1),
('2016_06_29_160145_create_fields_table', 1),
('2016_08_20_022325_create_images_table', 1),
('2016_09_21_204719_create_photospheres_table', 1),
('2016_09_25_164501_create_videospheres_table', 1),
('2016_09_25_164514_create_videos_table', 1),
('2016_09_25_164538_create_audio_table', 1),
('2016_10_04_155840_create_models_table', 1),
('2016_10_10_234117_create_textures_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `isvr_models`
--

CREATE TABLE `isvr_models` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `file_id_0` int(11) NOT NULL,
  `file_id_1` int(11) DEFAULT NULL,
  `file_id_preview` int(11) NOT NULL,
  `caption` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `data` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `isvr_models`
--

INSERT INTO `isvr_models` (`id`, `user_id`, `file_id_0`, `file_id_1`, `file_id_preview`, `caption`, `description`, `data`, `created_at`, `updated_at`) VALUES
(30, 1, 148, NULL, 149, '', 'From\nsoybean_tanashi_x5rgb15m_20161110_group1_densified_point_cloudNew2', '{"scale":"1.0 1.0 1.0","rotation":"270 0 0"}', '2017-07-03 21:18:53', '2017-07-03 21:21:42'),
(10, 1, 38, NULL, 39, '', 'From\nsoybean_tanashi_x5rgb15m_20160608_group1_densified_point_cloudCollapsed', '{"scale":"1.0 1.0 1.0","rotation":"270 0 0"}', '2017-07-03 17:52:57', '2017-07-03 17:56:28'),
(14, 1, 46, NULL, 47, '', '', '{"scale":"1.0 1.0 1.0","rotation":"270 0 0"}', '2017-07-03 18:35:28', '2017-07-03 18:36:02'),
(27, 1, 142, NULL, 143, '', 'From\nsoybean_tanashi_x5rgb15m_20160823_group1_densified_point_cloudPoisson1Centered', '{"scale":"1.0 1.0 1.0","rotation":"270 0 0"}', '2017-07-03 21:05:14', '2017-07-03 21:08:31'),
(25, 1, 127, 128, 138, '', '', '{"scale":"1.0 1.0 1.0","rotation":"270 0 0"}', '2017-07-03 19:23:43', '2017-07-03 19:24:21'),
(29, 1, 146, NULL, 147, '', 'From\nsoybean_tanashi_x5rgb15m_20160916_group1_densified_point_cloudCollapsedCentered', '{"scale":"1.0 1.0 1.0","rotation":"270 0 0"}', '2017-07-03 21:13:27', '2017-07-03 21:13:52'),
(31, 1, 150, NULL, 151, '', '', '{"scale":"1.0 1.0 1.0","rotation":"270 0 0"}', '2017-07-03 21:23:16', '2017-07-03 21:23:35');

-- --------------------------------------------------------

--
-- Table structure for table `isvr_password_resets`
--

CREATE TABLE `isvr_password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `isvr_password_resets`
--

INSERT INTO `isvr_password_resets` (`email`, `token`, `created_at`) VALUES
('shaun.mermet@enroutelab.com', '09725897296e2155a63ae4e1299f1bba6ec250b8147853e67eeedbacdb896209', '2017-07-02 18:16:00');

-- --------------------------------------------------------

--
-- Table structure for table `isvr_photospheres`
--

CREATE TABLE `isvr_photospheres` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `file_id` int(11) NOT NULL,
  `caption` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `width` int(11) NOT NULL,
  `height` int(11) NOT NULL,
  `data` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `isvr_settings`
--

CREATE TABLE `isvr_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `namespace` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `isvr_settings`
--

INSERT INTO `isvr_settings` (`id`, `user_id`, `namespace`, `key`, `value`) VALUES
(1, 1, 'system', 'site-title', 'LabVR'),
(2, 1, 'system', 'front-page-display', 'latest-spaces'),
(3, 1, 'system', 'origin-trial-token', '');

-- --------------------------------------------------------

--
-- Table structure for table `isvr_spaces`
--

CREATE TABLE `isvr_spaces` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `theme_id` int(11) NOT NULL,
  `uri` varchar(512) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `isvr_spaces`
--

INSERT INTO `isvr_spaces` (`id`, `user_id`, `theme_id`, `uri`, `title`, `status`, `created_at`, `updated_at`) VALUES
(15, 1, 7, '5', 'Soybean field October', 'published', '2017-07-03 21:20:34', '2017-07-03 21:27:04'),
(14, 1, 7, '4', 'Soybean field September', 'published', '2017-07-03 21:14:32', '2017-07-03 21:27:18'),
(13, 1, 7, '3', 'Soybean field August', 'published', '2017-07-03 21:07:30', '2017-07-03 21:27:32'),
(12, 1, 7, '2', 'Soybean field July', 'published', '2017-07-03 18:36:37', '2017-07-03 21:27:50'),
(10, 1, 7, '7', 'Hokusou Hospital ground', 'published', '2017-07-03 17:49:23', '2017-07-03 21:28:14'),
(11, 1, 7, '1', 'Soybean field June', 'published', '2017-07-03 17:54:59', '2017-07-03 21:28:00'),
(16, 1, 7, '6', 'Soybean field December', 'published', '2017-07-03 21:24:17', '2017-07-03 21:26:54');

-- --------------------------------------------------------

--
-- Table structure for table `isvr_textures`
--

CREATE TABLE `isvr_textures` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `model_id` int(11) DEFAULT NULL,
  `file_id` int(11) NOT NULL,
  `data` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `isvr_textures`
--

INSERT INTO `isvr_textures` (`id`, `user_id`, `model_id`, `file_id`, `data`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 2, '', '2017-07-02 16:49:20', '2017-07-02 16:49:20'),
(2, 1, 1, 3, '', '2017-07-02 16:49:20', '2017-07-02 16:49:20'),
(3, 1, 2, 5, '', '2017-07-02 16:53:09', '2017-07-02 16:53:09'),
(4, 1, 2, 6, '', '2017-07-02 16:53:09', '2017-07-02 16:53:09'),
(14, 1, 15, 49, '', '2017-07-03 18:43:48', '2017-07-03 18:43:48'),
(15, 1, 15, 50, '', '2017-07-03 18:43:48', '2017-07-03 18:43:48'),
(16, 1, 15, 51, '', '2017-07-03 18:43:48', '2017-07-03 18:43:48'),
(17, 1, 15, 52, '', '2017-07-03 18:43:49', '2017-07-03 18:43:49'),
(18, 1, 15, 53, '', '2017-07-03 18:43:49', '2017-07-03 18:43:49'),
(19, 1, 15, 54, '', '2017-07-03 18:43:49', '2017-07-03 18:43:49'),
(20, 1, 15, 55, '', '2017-07-03 18:43:50', '2017-07-03 18:43:50'),
(21, 1, 15, 56, '', '2017-07-03 18:43:50', '2017-07-03 18:43:50'),
(22, 1, 15, 57, '', '2017-07-03 18:43:50', '2017-07-03 18:43:50'),
(23, 1, 17, 60, '', '2017-07-03 18:50:38', '2017-07-03 18:50:38'),
(24, 1, 17, 61, '', '2017-07-03 18:50:38', '2017-07-03 18:50:38'),
(25, 1, 17, 62, '', '2017-07-03 18:50:38', '2017-07-03 18:50:38'),
(26, 1, 17, 63, '', '2017-07-03 18:50:39', '2017-07-03 18:50:39'),
(27, 1, 17, 64, '', '2017-07-03 18:50:39', '2017-07-03 18:50:39'),
(28, 1, 17, 65, '', '2017-07-03 18:50:40', '2017-07-03 18:50:40'),
(29, 1, 17, 66, '', '2017-07-03 18:50:40', '2017-07-03 18:50:40'),
(30, 1, 17, 67, '', '2017-07-03 18:50:40', '2017-07-03 18:50:40'),
(31, 1, 17, 68, '', '2017-07-03 18:50:41', '2017-07-03 18:50:41'),
(32, 1, 19, 71, '', '2017-07-03 18:54:22', '2017-07-03 18:54:22'),
(33, 1, 19, 72, '', '2017-07-03 18:54:22', '2017-07-03 18:54:22'),
(34, 1, 19, 73, '', '2017-07-03 18:54:22', '2017-07-03 18:54:22'),
(35, 1, 19, 74, '', '2017-07-03 18:54:23', '2017-07-03 18:54:23'),
(36, 1, 19, 75, '', '2017-07-03 18:54:23', '2017-07-03 18:54:23'),
(37, 1, 19, 76, '', '2017-07-03 18:54:23', '2017-07-03 18:54:23'),
(38, 1, 19, 77, '', '2017-07-03 18:54:24', '2017-07-03 18:54:24'),
(39, 1, 19, 78, '', '2017-07-03 18:54:24', '2017-07-03 18:54:24'),
(40, 1, 19, 79, '', '2017-07-03 18:54:24', '2017-07-03 18:54:24'),
(41, 1, 21, 82, '', '2017-07-03 18:58:46', '2017-07-03 18:58:46'),
(42, 1, 21, 83, '', '2017-07-03 18:58:47', '2017-07-03 18:58:47'),
(43, 1, 21, 84, '', '2017-07-03 18:58:47', '2017-07-03 18:58:47'),
(44, 1, 21, 85, '', '2017-07-03 18:58:48', '2017-07-03 18:58:48'),
(45, 1, 21, 86, '', '2017-07-03 18:58:48', '2017-07-03 18:58:48'),
(46, 1, 21, 87, '', '2017-07-03 18:58:49', '2017-07-03 18:58:49'),
(47, 1, 21, 88, '', '2017-07-03 18:58:49', '2017-07-03 18:58:49'),
(48, 1, 21, 89, '', '2017-07-03 18:58:50', '2017-07-03 18:58:50'),
(49, 1, 21, 90, '', '2017-07-03 18:58:50', '2017-07-03 18:58:50'),
(50, 1, 22, 93, '', '2017-07-03 19:01:05', '2017-07-03 19:01:05'),
(51, 1, 22, 94, '', '2017-07-03 19:01:06', '2017-07-03 19:01:06'),
(52, 1, 22, 95, '', '2017-07-03 19:01:06', '2017-07-03 19:01:06'),
(53, 1, 22, 96, '', '2017-07-03 19:01:06', '2017-07-03 19:01:06'),
(54, 1, 22, 97, '', '2017-07-03 19:01:07', '2017-07-03 19:01:07'),
(55, 1, 22, 98, '', '2017-07-03 19:01:07', '2017-07-03 19:01:07'),
(56, 1, 22, 99, '', '2017-07-03 19:01:07', '2017-07-03 19:01:07'),
(57, 1, 22, 100, '', '2017-07-03 19:01:08', '2017-07-03 19:01:08'),
(58, 1, 22, 101, '', '2017-07-03 19:01:08', '2017-07-03 19:01:08'),
(59, 1, 23, 105, '', '2017-07-03 19:02:47', '2017-07-03 19:02:47'),
(60, 1, 23, 106, '', '2017-07-03 19:02:48', '2017-07-03 19:02:48'),
(61, 1, 23, 107, '', '2017-07-03 19:02:49', '2017-07-03 19:02:49'),
(62, 1, 23, 108, '', '2017-07-03 19:02:49', '2017-07-03 19:02:49'),
(63, 1, 23, 109, '', '2017-07-03 19:02:50', '2017-07-03 19:02:50'),
(64, 1, 23, 110, '', '2017-07-03 19:02:51', '2017-07-03 19:02:51'),
(65, 1, 23, 111, '', '2017-07-03 19:02:51', '2017-07-03 19:02:51'),
(66, 1, 23, 112, '', '2017-07-03 19:02:52', '2017-07-03 19:02:52'),
(67, 1, 23, 113, '', '2017-07-03 19:02:53', '2017-07-03 19:02:53'),
(68, 1, 20, 117, '', '2017-07-03 19:04:41', '2017-07-03 19:04:41'),
(69, 1, 20, 118, '', '2017-07-03 19:04:42', '2017-07-03 19:04:42'),
(70, 1, 20, 119, '', '2017-07-03 19:04:42', '2017-07-03 19:04:42'),
(71, 1, 20, 120, '', '2017-07-03 19:04:43', '2017-07-03 19:04:43'),
(72, 1, 20, 121, '', '2017-07-03 19:04:43', '2017-07-03 19:04:43'),
(73, 1, 20, 122, '', '2017-07-03 19:04:43', '2017-07-03 19:04:43'),
(74, 1, 20, 123, '', '2017-07-03 19:04:44', '2017-07-03 19:04:44'),
(75, 1, 20, 124, '', '2017-07-03 19:04:44', '2017-07-03 19:04:44'),
(76, 1, 20, 125, '', '2017-07-03 19:04:45', '2017-07-03 19:04:45'),
(77, 1, 25, 129, '', '2017-07-03 19:23:44', '2017-07-03 19:23:44'),
(78, 1, 25, 130, '', '2017-07-03 19:23:44', '2017-07-03 19:23:44'),
(79, 1, 25, 131, '', '2017-07-03 19:23:44', '2017-07-03 19:23:44'),
(80, 1, 25, 132, '', '2017-07-03 19:23:45', '2017-07-03 19:23:45'),
(81, 1, 25, 133, '', '2017-07-03 19:23:45', '2017-07-03 19:23:45'),
(82, 1, 25, 134, '', '2017-07-03 19:23:45', '2017-07-03 19:23:45'),
(83, 1, 25, 135, '', '2017-07-03 19:23:46', '2017-07-03 19:23:46'),
(84, 1, 25, 136, '', '2017-07-03 19:23:46', '2017-07-03 19:23:46'),
(85, 1, 25, 137, '', '2017-07-03 19:23:46', '2017-07-03 19:23:46');

-- --------------------------------------------------------

--
-- Table structure for table `isvr_themes`
--

CREATE TABLE `isvr_themes` (
  `id` int(10) UNSIGNED NOT NULL,
  `root_dir` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `config` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `isvr_themes`
--

INSERT INTO `isvr_themes` (`id`, `root_dir`, `status`, `user_id`, `config`, `created_at`, `updated_at`) VALUES
(1, 'themes\\ideaspace-360', 'inactive', 1, '', '2017-07-02 16:46:17', '2017-07-03 17:21:57'),
(2, 'themes\\vr-view-360-image', 'inactive', 1, '{"#theme-name":"VR View 360 Image with Hotspot Navigation","#theme-key":"vr-view-360-image-hotspot","#theme-version":"1.0","#ideaspace-version":">=1.0.1","#theme-description":"Photo sphere viewer with navigation hotspots. Based on the \\"VR View for the Web\\" by Google.","#theme-author-name":"IdeaSpaceVR","#theme-author-email":"info@ideaspacevr.org","#theme-homepage":"https:\\/\\/www.ideaspacevr.org\\/themes","#theme-keywords":"photo sphere, gaze input navigation, mobile, 360, photography","#theme-compatibility":"Google Cardboard, Daydream, Oculus, Samsung Gear VR, no headset","#theme-view":"scene","#content-types":{"photo-spheres":{"#label":"Photo Spheres","#description":"Manage your photo spheres.","#max-values":"infinite","#fields":{"photo-sphere":{"#label":"Photo Sphere","#description":"Upload a photo sphere image.","#help":"Photo sphere image in equirectangular projection format.","#type":"photosphere","#required":false,"#file-extension":["jpg","png"]},"navigation-hotspots":{"#label":"Photo Sphere Navigation Hotspot","#description":"Add navigation hotspots moving from one photo sphere to the next.","#help":"","#type":"position","#maxnumber":10,"#required":false,"#content-type-reference":"photo-spheres","#field-reference":"photo-sphere"}}}}}', '2017-07-02 16:46:17', '2017-07-02 16:46:17'),
(3, 'themes\\vr-view-360-image-gallery', 'inactive', 1, '{"#theme-name":"VR View 360 Image Gallery","#theme-key":"vr-view-360-image-gallery","#theme-version":"1.0","#ideaspace-version":">=1.0.1","#theme-description":"Photo sphere gallery page. Based on the \\"VR View for the Web\\" by Google.","#theme-author-name":"IdeaSpaceVR","#theme-author-email":"info@ideaspacevr.org","#theme-homepage":"https:\\/\\/www.ideaspacevr.org\\/themes","#theme-keywords":"photo sphere, gaze input navigation, mobile, 360, photography, gallery","#theme-compatibility":"Google Cardboard, Daydream, Oculus, Samsung Gear VR, no headset","#theme-view":"scene","#content-types":{"photo-spheres":{"#label":"Photo Spheres","#description":"Manage your photo spheres.","#max-values":"infinite","#fields":{"photo-sphere-title":{"#label":"Photo Sphere Title","#description":"The photo sphere title is shown with the preview image.","#help":"The photo sphere title is shown with the preview image.","#type":"textfield","#required":true,"#maxlength":150,"#contentformat":"text"},"photo-sphere-preview":{"#label":"Photo Sphere Preview Image","#description":"Upload a preview image for your photo sphere image.","#help":"Upload a preview image for your photo sphere image. If you do not have an image at hand, it is generated from your photo sphere.","#type":"image","#required":false,"#file-extension":["jpg","png"]},"mono-stereo-select":{"#label":"360 Mono \\/ Stereo","#description":"Photo sphere is 360 mono or stereo.","#help":"Select if the photo sphere is 360 mono or stereo.","#type":"options-select","#required":true,"#options":{"mono":"360 Mono","stereo":"360 Stereo"}},"photo-sphere":{"#label":"Photo Sphere","#description":"Upload a photo sphere image.","#help":"Photo sphere image in equirectangular projection format.","#type":"photosphere","#required":true,"#file-extension":["jpg","png"]}}}}}', '2017-07-02 16:46:17', '2017-07-02 16:46:17'),
(4, 'themes\\vr-view-360-video', 'inactive', 1, '{"#theme-name":"VR View 360 Video with Hotspot Navigation","#theme-key":"vr-view-360-video-hotspot","#theme-version":"1.0","#ideaspace-version":">=1.0.1","#theme-description":"Video sphere viewer with navigation hotspots. Based on the \\"VR View for the Web\\" by Google.","#theme-author-name":"IdeaSpaceVR","#theme-author-email":"info@ideaspacevr.org","#theme-homepage":"https:\\/\\/www.ideaspacevr.org\\/themes","#theme-keywords":"video sphere, gaze input navigation, mobile, 360, video","#theme-compatibility":"Google Cardboard, Daydream, Oculus, Samsung Gear VR, no headset","#theme-view":"scene","#content-types":{"video-spheres":{"#label":"Video Spheres","#description":"Manage your video spheres.","#max-values":"infinite","#fields":{"video-sphere":{"#label":"Video Sphere","#description":"Upload a video sphere in equirectangular projection format.","#help":"Video sphere in equirectangular projection format.","#type":"videosphere","#required":false,"#file-extension":["mp4"]},"navigation-hotspots":{"#label":"Video Sphere Navigation Hotspot","#description":"Add navigation hotspots moving from one video sphere to the next.","#help":"","#type":"position","#maxnumber":10,"#required":false,"#content-type-reference":"video-spheres","#field-reference":"video-sphere"}}}}}', '2017-07-02 16:46:17', '2017-07-02 16:46:17'),
(5, 'themes\\vr-view-360-video-gallery', 'inactive', 1, '{"#theme-name":"VR View 360 Video Gallery","#theme-key":"vr-view-360-video-gallery","#theme-version":"1.0","#ideaspace-version":">=1.0.1","#theme-description":"Video sphere gallery page. Based on the \\"VR View for the Web\\" by Google.","#theme-author-name":"IdeaSpaceVR","#theme-author-email":"info@ideaspacevr.org","#theme-homepage":"https:\\/\\/www.ideaspacevr.org\\/themes","#theme-keywords":"video sphere, gaze input navigation, mobile, 360, gallery","#theme-compatibility":"Google Cardboard, Daydream, Oculus, Samsung Gear VR, no headset","#theme-view":"scene","#content-types":{"video-spheres":{"#label":"Video Spheres","#description":"Manage your video spheres.","#max-values":"infinite","#fields":{"video-sphere-title":{"#label":"Video Sphere Title","#description":"The video sphere title is shown with the preview image.","#help":"The video sphere title is shown with the preview image.","#type":"textfield","#required":true,"#maxlength":150,"#contentformat":"text"},"video-sphere-preview":{"#label":"Video Sphere Preview Image","#description":"Upload a preview image for your video.","#help":"Upload a preview image for your video. If you do not have an image at hand, it is generated from your photo sphere.","#type":"image","#required":true,"#file-extension":["jpg","png"]},"mono-stereo-select":{"#label":"360 Mono \\/ Stereo","#description":"Video is 360 mono or stereo.","#help":"Select if the video is 360 mono or stereo.","#type":"options-select","#required":true,"#options":{"mono":"360 Mono","stereo":"360 Stereo"}},"video-sphere":{"#label":"Video Sphere","#description":"Upload a video sphere in equirectangular projection format.","#help":"Video sphere in equirectangular projection format.","#type":"videosphere","#required":true,"#file-extension":["mp4"]}}}}}', '2017-07-02 16:46:17', '2017-07-02 16:46:17'),
(6, 'themes\\Starter-Theme-1.0.0', 'inactive', 1, '', '2017-07-02 18:48:40', '2017-07-03 17:21:56'),
(7, 'themes\\Models-Theme-1.0.0', 'active', 1, '{"#theme-name":"E-Lab 3DModel Theme","#theme-key":"E-Lab-3DModel-theme","#theme-version":"1.0","#ideaspace-version":">=1.0.0","#theme-description":"EnRouteLab 3D model theme","#theme-author-name":"E-Lab","#theme-author-email":"shaun.mermet@enroutelab.com","#theme-homepage":"https:\\/\\/www.ideaspacevr.org\\/themes","#theme-keywords":"3D theme, simple","#theme-compatibility":"Google Cardboard, Daydream, Oculus, Samsung Gear VR, no headset","#theme-view":"scene","#content-types":{"PLYModel":{"#label":"PLY-Models","#description":"Use some ply-models and view them in VR.","#max-values":"infinite","#fields":{"PLY-model":{"#label":"Write some text","#description":"Write some text","#help":"Write some text","#type":"model3d","#file-extension":["ply"],"#required":false}}},"OBJModel":{"#label":"OBJ-Models","#description":"Use some obj-models and view them in VR.","#max-values":"infinite","#fields":{"OBJ-model":{"#label":"Write some text","#description":"Write some text","#help":"Write some text","#type":"model3d","#file-extension":["obj"],"#required":false}}},"SkyBox":{"#label":"SkyBoxLabel","#description":"Skybox of the scene, Not Required","#max-values":"infinite","#fields":{"SkyBox-item":{"#type":"image","#label":"Skybox for the scene","#description":"Image used fo the Skybox","#required":false,"#file-extension":["jpg","png"],"#help":"Skybox helper"}}},"Floor":{"#label":"FloorLabel","#description":"Floor of the scene, Not Required","#max-values":"infinite","#fields":{"Floor-item":{"#type":"image","#label":"Floor for the scene","#description":"Image used fo the floor","#required":false,"#file-extension":["jpg","png"],"#help":"Floor helper"}}}}}', '2017-07-02 18:52:56', '2017-07-02 23:46:45');

-- --------------------------------------------------------

--
-- Table structure for table `isvr_users`
--

CREATE TABLE `isvr_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `isvr_users`
--

INSERT INTO `isvr_users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'AdminShISVR', 'shaun.mermet@enroutelab.com', '$2y$10$n88SZL6Fo2AZINTXRvYTmuX04slowPcyKSmmukG2BXZh7GhpzSuaa', 'I6NcsF8jdSDSdBmvuH8foX0mVZCQRjAE146MZhQkGFQal0Xt6TdvU5wj4Po5', '2017-07-02 16:39:41', '2017-07-03 21:28:39'),
(2, 'AdminKai', 'kai.yan@asdadasdgrtyr3342.com', '$2y$10$8/YkGFeXQJ2uTN2YwP5s.OzJzwvAadWd9S8tqWZXHXA4prYwahgd6', 'iRsn6ty6ZcGQtfXRgIdIYolnBDk66grLXbmJB0Mq3bFNnV1fQCKwhnqBw1zJ', '2017-07-02 16:39:41', '2017-07-02 18:46:03');

-- --------------------------------------------------------

--
-- Table structure for table `isvr_videos`
--

CREATE TABLE `isvr_videos` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `file_id` int(11) NOT NULL,
  `caption` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `duration` text COLLATE utf8_unicode_ci NOT NULL,
  `width` int(11) NOT NULL,
  `height` int(11) NOT NULL,
  `data` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `isvr_videospheres`
--

CREATE TABLE `isvr_videospheres` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `file_id` int(11) NOT NULL,
  `caption` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `duration` text COLLATE utf8_unicode_ci NOT NULL,
  `width` int(11) NOT NULL,
  `height` int(11) NOT NULL,
  `data` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `isvr_audio`
--
ALTER TABLE `isvr_audio`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `isvr_content`
--
ALTER TABLE `isvr_content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `isvr_fields`
--
ALTER TABLE `isvr_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `isvr_files`
--
ALTER TABLE `isvr_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `isvr_images`
--
ALTER TABLE `isvr_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `isvr_models`
--
ALTER TABLE `isvr_models`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `isvr_password_resets`
--
ALTER TABLE `isvr_password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `isvr_photospheres`
--
ALTER TABLE `isvr_photospheres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `isvr_settings`
--
ALTER TABLE `isvr_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `isvr_spaces`
--
ALTER TABLE `isvr_spaces`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `isvr_textures`
--
ALTER TABLE `isvr_textures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `isvr_themes`
--
ALTER TABLE `isvr_themes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `isvr_users`
--
ALTER TABLE `isvr_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `isvr_videos`
--
ALTER TABLE `isvr_videos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `isvr_videospheres`
--
ALTER TABLE `isvr_videospheres`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `isvr_audio`
--
ALTER TABLE `isvr_audio`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `isvr_content`
--
ALTER TABLE `isvr_content`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `isvr_fields`
--
ALTER TABLE `isvr_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `isvr_files`
--
ALTER TABLE `isvr_files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;
--
-- AUTO_INCREMENT for table `isvr_images`
--
ALTER TABLE `isvr_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `isvr_models`
--
ALTER TABLE `isvr_models`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `isvr_photospheres`
--
ALTER TABLE `isvr_photospheres`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `isvr_settings`
--
ALTER TABLE `isvr_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `isvr_spaces`
--
ALTER TABLE `isvr_spaces`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `isvr_textures`
--
ALTER TABLE `isvr_textures`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;
--
-- AUTO_INCREMENT for table `isvr_themes`
--
ALTER TABLE `isvr_themes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `isvr_users`
--
ALTER TABLE `isvr_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `isvr_videos`
--
ALTER TABLE `isvr_videos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `isvr_videospheres`
--
ALTER TABLE `isvr_videospheres`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
