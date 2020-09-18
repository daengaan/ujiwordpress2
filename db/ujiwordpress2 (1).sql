-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 18, 2020 at 03:42 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ujiwordpress2`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Seorang Komentator WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2020-09-18 07:58:00', '2020-09-18 00:58:00', 'Hai, ini sebuah komentar.\nUntuk mulai memoderasi, mengedit, dan menghapus komentar, silakan kunjungi laman Komentar di dasbor.\nAvatar komentator diambil dari <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/ujiwordpress2', 'yes'),
(2, 'home', 'http://localhost/ujiwordpress2', 'yes'),
(3, 'blogname', 'Festival Iraw Tengkayu Tarakan', 'yes'),
(4, 'blogdescription', 'Tarakan Kota &quot;BAIS&quot; (Bersih, Aman, Indah, Sehat dan Sejahtera).', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'satebee07@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'j F Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/index.php/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:90:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:57:\"index.php/category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:52:\"index.php/category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:33:\"index.php/category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:45:\"index.php/category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:27:\"index.php/category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:54:\"index.php/tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:49:\"index.php/tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:30:\"index.php/tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:42:\"index.php/tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:24:\"index.php/tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:55:\"index.php/type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:50:\"index.php/type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:31:\"index.php/type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:43:\"index.php/type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:25:\"index.php/type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:42:\"index.php/feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:37:\"index.php/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:18:\"index.php/embed/?$\";s:21:\"index.php?&embed=true\";s:30:\"index.php/page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:37:\"index.php/comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=8&cpage=$matches[1]\";s:51:\"index.php/comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:46:\"index.php/comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:27:\"index.php/comments/embed/?$\";s:21:\"index.php?&embed=true\";s:54:\"index.php/search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:49:\"index.php/search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:30:\"index.php/search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:42:\"index.php/search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:24:\"index.php/search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:57:\"index.php/author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:52:\"index.php/author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:33:\"index.php/author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:45:\"index.php/author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:27:\"index.php/author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:79:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:74:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:55:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:67:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:49:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:66:\"index.php/([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:61:\"index.php/([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:42:\"index.php/([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:54:\"index.php/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:36:\"index.php/([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:53:\"index.php/([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:48:\"index.php/([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:29:\"index.php/([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:41:\"index.php/([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:23:\"index.php/([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:68:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:78:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:98:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:93:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:93:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:74:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:63:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:67:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:87:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:82:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:75:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:82:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:71:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:57:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:67:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:87:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:82:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:82:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:63:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:74:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:61:\"index.php/([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:48:\"index.php/([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:37:\"index.php/.?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"index.php/.?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"index.php/.?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"index.php/.?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"index.php/.?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"index.php/.?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"index.php/(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:30:\"index.php/(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:50:\"index.php/(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:45:\"index.php/(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:38:\"index.php/(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:45:\"index.php/(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:34:\"index.php/(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:0:{}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '7', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'twentyseventeen', 'yes'),
(41, 'stylesheet', 'twentyseventeen', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '44719', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:5:{i:2;a:4:{s:5:\"title\";s:12:\"Temukan Kami\";s:4:\"text\";s:175:\"<strong>Alamat</strong>\nJl. Jend. Sudirman 8\nJakarta Pusat, Jakarta 10110\n\n<strong>Jam Buka</strong>\nSenin&mdash;Jumat: 09:00&ndash;17:00\nSabtu &amp; Minggu: 11:00&ndash;15:00\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:3;a:4:{s:5:\"title\";s:17:\"Tentang Situs Ini\";s:4:\"text\";s:108:\"Ini bisa jadi ruang yang tepat untuk memperkenalkan diri dan situs Anda, atau menuliskan daftar penghargaan.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:4;a:4:{s:5:\"title\";s:12:\"Temukan Kami\";s:4:\"text\";s:175:\"<strong>Alamat</strong>\nJl. Jend. Sudirman 8\nJakarta Pusat, Jakarta 10110\n\n<strong>Jam Buka</strong>\nSenin&mdash;Jumat: 09:00&ndash;17:00\nSabtu &amp; Minggu: 11:00&ndash;15:00\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:5;a:4:{s:5:\"title\";s:17:\"Tentang Situs Ini\";s:4:\"text\";s:108:\"Ini bisa jadi ruang yang tepat untuk memperkenalkan diri dan situs Anda, atau menuliskan daftar penghargaan.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(84, 'page_on_front', '8', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '16', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'initial_db_version', '44719', 'yes'),
(94, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'WPLANG', 'id_ID', 'yes'),
(97, 'widget_search', 'a:4:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;i:3;a:1:{s:5:\"title\";s:4:\"Cari\";}i:4;a:1:{s:5:\"title\";s:4:\"Cari\";}}', 'yes'),
(98, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:5:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:6:\"text-2\";i:1;s:8:\"search-3\";i:2;s:6:\"text-3\";}s:9:\"sidebar-2\";a:1:{i:0;s:6:\"text-4\";}s:9:\"sidebar-3\";a:2:{i:0;s:6:\"text-5\";i:1;s:8:\"search-4\";}s:13:\"array_version\";i:3;}', 'yes'),
(103, 'cron', 'a:7:{i:1600394286;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1600433886;a:2:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1600433887;a:1:{s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1600477083;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1600477112;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1600477121;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(104, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'recovery_keys', 'a:0:{}', 'yes'),
(115, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:6:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/id_ID/wordpress-5.5.1.zip\";s:6:\"locale\";s:5:\"id_ID\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/id_ID/wordpress-5.5.1.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.5.1\";s:7:\"version\";s:5:\"5.5.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.5.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.5.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.5.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.5.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.5.1\";s:7:\"version\";s:5:\"5.5.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.5.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.5.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.5.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.5.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.5.1\";s:7:\"version\";s:5:\"5.5.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:3;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.4.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.4.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.4.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.4.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.4.2\";s:7:\"version\";s:5:\"5.4.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:4;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.4.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.4.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.3.4-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.3.4-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.3.4\";s:7:\"version\";s:5:\"5.3.4\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:5;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.7.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.7.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.2.7-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.2.7-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.2.7-partial-2.zip\";s:8:\"rollback\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.2.7-rollback-2.zip\";}s:7:\"current\";s:5:\"5.2.7\";s:7:\"version\";s:5:\"5.2.7\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:5:\"5.2.2\";s:9:\"new_files\";s:0:\"\";}}s:12:\"last_checked\";i:1600390714;s:15:\"version_checked\";s:5:\"5.2.2\";s:12:\"translations\";a:0:{}}', 'no'),
(116, 'theme_mods_twentynineteen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1600391726;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(117, 'auto_updater.lock', '1600390690', 'no'),
(122, 'core_updater.lock', '1600390700', 'no'),
(123, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1600390761;s:7:\"checked\";a:2:{s:19:\"akismet/akismet.php\";s:5:\"4.1.2\";s:9:\"hello.php\";s:5:\"1.7.2\";}s:8:\"response\";a:1:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.6\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.5.1\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:1:{i:0;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:7:\"akismet\";s:8:\"language\";s:5:\"id_ID\";s:7:\"version\";s:3:\"3.1\";s:7:\"updated\";s:19:\"2015-04-21 23:53:01\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/translation/plugin/akismet/3.1/id_ID.zip\";s:10:\"autoupdate\";b:1;}}s:9:\"no_update\";a:1:{s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(124, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1600390715;s:7:\"checked\";a:3:{s:14:\"twentynineteen\";s:3:\"1.4\";s:15:\"twentyseventeen\";s:3:\"2.2\";s:13:\"twentysixteen\";s:3:\"2.0\";}s:8:\"response\";a:3:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"1.7\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.1.7.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentyseventeen\";a:6:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"2.4\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.2.4.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:13:\"twentysixteen\";a:6:{s:5:\"theme\";s:13:\"twentysixteen\";s:11:\"new_version\";s:3:\"2.2\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentysixteen/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/twentysixteen.2.2.zip\";s:8:\"requires\";s:3:\"4.4\";s:12:\"requires_php\";s:5:\"5.2.4\";}}s:12:\"translations\";a:0:{}}', 'no'),
(125, '_site_transient_timeout_browser_4243c5bad934d66f978f6ee6e569fdad', '1600995518', 'no'),
(126, '_site_transient_browser_4243c5bad934d66f978f6ee6e569fdad', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"85.0.4183.102\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(127, '_site_transient_timeout_php_check_c6e81a88aa62f0eea87d84f96662ea28', '1600995519', 'no'),
(128, '_site_transient_php_check_c6e81a88aa62f0eea87d84f96662ea28', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(129, '_site_transient_timeout_community-events-d41d8cd98f00b204e9800998ecf8427e', '1600433966', 'no'),
(130, '_site_transient_community-events-d41d8cd98f00b204e9800998ecf8427e', 'a:3:{s:9:\"sandboxed\";b:0;s:8:\"location\";a:1:{s:2:\"ip\";b:0;}s:6:\"events\";a:1:{i:0;a:10:{s:4:\"type\";s:8:\"wordcamp\";s:5:\"title\";s:37:\"WordCamp Virginia Beach, Virginia, US\";s:3:\"url\";s:40:\"https://2020.virginiabeach.wordcamp.org/\";s:6:\"meetup\";N;s:10:\"meetup_url\";N;s:4:\"date\";s:19:\"2020-09-19 11:00:00\";s:8:\"end_date\";s:19:\"2020-09-19 11:00:00\";s:20:\"start_unix_timestamp\";i:1600527600;s:18:\"end_unix_timestamp\";i:1600527600;s:8:\"location\";a:4:{s:8:\"location\";s:6:\"Online\";s:7:\"country\";s:2:\"US\";s:8:\"latitude\";d:36.8529263;s:9:\"longitude\";d:-75.977985;}}}}', 'no'),
(131, '_transient_timeout_feed_9bbd59226dc36b9b26cd43f15694c5c3', '1600433972', 'no'),
(132, 'can_compress_scripts', '1', 'no'),
(133, 'current_theme', 'Twenty Seventeen', 'yes'),
(134, 'theme_mods_twentyseventeen', 'a:13:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:3:\"top\";i:2;s:6:\"social\";i:3;}s:18:\"custom_css_post_id\";i:-1;s:7:\"panel_1\";i:12;s:7:\"panel_2\";i:9;s:7:\"panel_3\";i:11;s:7:\"panel_4\";i:10;s:21:\"external_header_video\";s:43:\"https://www.youtube.com/watch?v=EEk-HuLktKE\";s:11:\"custom_logo\";i:15;s:11:\"page_layout\";s:10:\"two-column\";s:16:\"header_textcolor\";s:6:\"ffffff\";s:11:\"colorscheme\";s:4:\"dark\";s:12:\"header_image\";s:13:\"remove-header\";}', 'yes'),
(135, 'theme_switched', '', 'yes'),
(144, 'nav_menu_options', 'a:1:{s:8:\"auto_add\";a:0:{}}', 'yes'),
(147, '_site_transient_timeout_theme_roots', '1600394335', 'no'),
(148, '_site_transient_theme_roots', 'a:3:{s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(158, '_transient_is_multi_author', '0', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_wp_attached_file', '2020/09/espresso.jpg'),
(4, 5, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"file\";s:20:\"2020/09/espresso.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"espresso-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"espresso-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"espresso-768x461.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:461;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"espresso-1024x614.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:614;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:20:\"espresso-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(5, 5, '_starter_content_theme', 'twentyseventeen'),
(7, 6, '_wp_attached_file', '2020/09/sandwich.jpg'),
(8, 6, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"file\";s:20:\"2020/09/sandwich.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"sandwich-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"sandwich-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"sandwich-768x461.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:461;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"sandwich-1024x614.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:614;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:20:\"sandwich-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(9, 6, '_starter_content_theme', 'twentyseventeen'),
(11, 7, '_wp_attached_file', '2020/09/coffee.jpg'),
(12, 7, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"file\";s:18:\"2020/09/coffee.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"coffee-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"coffee-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"coffee-768x461.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:461;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"coffee-1024x614.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:614;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:18:\"coffee-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(13, 7, '_starter_content_theme', 'twentyseventeen'),
(16, 8, '_customize_changeset_uuid', 'b64b872f-419a-4776-be4c-d45b13b466ac'),
(17, 9, '_thumbnail_id', '43'),
(19, 9, '_customize_changeset_uuid', 'b64b872f-419a-4776-be4c-d45b13b466ac'),
(20, 10, '_thumbnail_id', '45'),
(22, 10, '_customize_changeset_uuid', 'b64b872f-419a-4776-be4c-d45b13b466ac'),
(26, 12, '_thumbnail_id', '41'),
(28, 12, '_customize_changeset_uuid', 'b64b872f-419a-4776-be4c-d45b13b466ac'),
(29, 13, '_edit_lock', '1600392021:1'),
(30, 14, '_wp_attached_file', '2020/09/Lambang_Kota_Tarakan.gif'),
(31, 14, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:382;s:6:\"height\";i:471;s:4:\"file\";s:32:\"2020/09/Lambang_Kota_Tarakan.gif\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"Lambang_Kota_Tarakan-150x150.gif\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/gif\";}s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"Lambang_Kota_Tarakan-243x300.gif\";s:5:\"width\";i:243;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/gif\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:32:\"Lambang_Kota_Tarakan-100x100.gif\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/gif\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(32, 15, '_wp_attached_file', '2020/09/cropped-Lambang_Kota_Tarakan.gif'),
(33, 15, '_wp_attachment_context', 'custom-logo'),
(34, 15, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:202;s:6:\"height\";i:250;s:4:\"file\";s:40:\"2020/09/cropped-Lambang_Kota_Tarakan.gif\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:40:\"cropped-Lambang_Kota_Tarakan-150x150.gif\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/gif\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:40:\"cropped-Lambang_Kota_Tarakan-100x100.gif\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/gif\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(35, 16, '_wp_attached_file', '2020/09/cropped-Lambang_Kota_Tarakan-1.gif'),
(36, 16, '_wp_attachment_context', 'site-icon'),
(37, 16, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:42:\"2020/09/cropped-Lambang_Kota_Tarakan-1.gif\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:42:\"cropped-Lambang_Kota_Tarakan-1-150x150.gif\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/gif\";}s:6:\"medium\";a:4:{s:4:\"file\";s:42:\"cropped-Lambang_Kota_Tarakan-1-300x300.gif\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/gif\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:42:\"cropped-Lambang_Kota_Tarakan-1-100x100.gif\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/gif\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:42:\"cropped-Lambang_Kota_Tarakan-1-270x270.gif\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/gif\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:42:\"cropped-Lambang_Kota_Tarakan-1-192x192.gif\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/gif\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:42:\"cropped-Lambang_Kota_Tarakan-1-180x180.gif\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/gif\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:40:\"cropped-Lambang_Kota_Tarakan-1-32x32.gif\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/gif\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(38, 22, '_menu_item_type', 'custom'),
(39, 22, '_menu_item_menu_item_parent', '0'),
(40, 22, '_menu_item_object_id', '22'),
(41, 22, '_menu_item_object', 'custom'),
(42, 22, '_menu_item_target', ''),
(43, 22, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(44, 22, '_menu_item_xfn', ''),
(45, 22, '_menu_item_url', 'http://localhost/ujiwordpress2/'),
(46, 23, '_menu_item_type', 'post_type'),
(47, 23, '_menu_item_menu_item_parent', '0'),
(48, 23, '_menu_item_object_id', '9'),
(49, 23, '_menu_item_object', 'page'),
(50, 23, '_menu_item_target', ''),
(51, 23, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(52, 23, '_menu_item_xfn', ''),
(53, 23, '_menu_item_url', ''),
(62, 25, '_menu_item_type', 'post_type'),
(63, 25, '_menu_item_menu_item_parent', '0'),
(64, 25, '_menu_item_object_id', '10'),
(65, 25, '_menu_item_object', 'page'),
(66, 25, '_menu_item_target', ''),
(67, 25, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(68, 25, '_menu_item_xfn', ''),
(69, 25, '_menu_item_url', ''),
(70, 26, '_menu_item_type', 'custom'),
(71, 26, '_menu_item_menu_item_parent', '0'),
(72, 26, '_menu_item_object_id', '26'),
(73, 26, '_menu_item_object', 'custom'),
(74, 26, '_menu_item_target', ''),
(75, 26, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(76, 26, '_menu_item_xfn', ''),
(77, 26, '_menu_item_url', 'https://www.yelp.com'),
(78, 27, '_menu_item_type', 'custom'),
(79, 27, '_menu_item_menu_item_parent', '0'),
(80, 27, '_menu_item_object_id', '27'),
(81, 27, '_menu_item_object', 'custom'),
(82, 27, '_menu_item_target', ''),
(83, 27, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(84, 27, '_menu_item_xfn', ''),
(85, 27, '_menu_item_url', 'https://www.facebook.com/wordpress'),
(86, 28, '_menu_item_type', 'custom'),
(87, 28, '_menu_item_menu_item_parent', '0'),
(88, 28, '_menu_item_object_id', '28'),
(89, 28, '_menu_item_object', 'custom'),
(90, 28, '_menu_item_target', ''),
(91, 28, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(92, 28, '_menu_item_xfn', ''),
(93, 28, '_menu_item_url', 'https://twitter.com/wordpress'),
(94, 29, '_menu_item_type', 'custom'),
(95, 29, '_menu_item_menu_item_parent', '0'),
(96, 29, '_menu_item_object_id', '29'),
(97, 29, '_menu_item_object', 'custom'),
(98, 29, '_menu_item_target', ''),
(99, 29, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(100, 29, '_menu_item_xfn', ''),
(101, 29, '_menu_item_url', 'https://www.instagram.com/explore/tags/wordcamp/'),
(102, 30, '_menu_item_type', 'custom'),
(103, 30, '_menu_item_menu_item_parent', '0'),
(104, 30, '_menu_item_object_id', '30'),
(105, 30, '_menu_item_object', 'custom'),
(106, 30, '_menu_item_target', ''),
(107, 30, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(108, 30, '_menu_item_xfn', ''),
(109, 30, '_menu_item_url', 'mailto:wordpress@example.com'),
(110, 13, '_wp_trash_meta_status', 'publish'),
(111, 13, '_wp_trash_meta_time', '1600392063'),
(112, 31, '_edit_lock', '1600392227:1'),
(113, 31, '_wp_trash_meta_status', 'publish'),
(114, 31, '_wp_trash_meta_time', '1600392256'),
(115, 32, '_wp_trash_meta_status', 'publish'),
(116, 32, '_wp_trash_meta_time', '1600392264'),
(117, 33, '_edit_lock', '1600392288:1'),
(118, 33, '_wp_trash_meta_status', 'publish'),
(119, 33, '_wp_trash_meta_time', '1600392307'),
(120, 12, '_edit_lock', '1600393053:1'),
(121, 8, '_edit_lock', '1600392961:1'),
(122, 9, '_edit_lock', '1600393101:1'),
(124, 10, '_edit_lock', '1600393223:1'),
(125, 39, '_wp_attached_file', '2020/09/20192712taakan.jpg'),
(126, 39, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:675;s:4:\"file\";s:26:\"2020/09/20192712taakan.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"20192712taakan-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"20192712taakan-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"20192712taakan-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:27:\"20192712taakan-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:26:\"20192712taakan-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"3.5\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:11:\"NIKON D3000\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1359528735\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"18\";s:3:\"iso\";s:3:\"100\";s:13:\"shutter_speed\";s:6:\"0.0025\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(127, 8, '_thumbnail_id', '39'),
(128, 41, '_wp_attached_file', '2020/09/iraw-tengkayu.jpg'),
(129, 41, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:640;s:6:\"height\";i:426;s:4:\"file\";s:25:\"2020/09/iraw-tengkayu.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"iraw-tengkayu-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"iraw-tengkayu-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:25:\"iraw-tengkayu-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(130, 43, '_wp_attached_file', '2020/09/timthumb.jpg'),
(131, 43, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:820;s:6:\"height\";i:471;s:4:\"file\";s:20:\"2020/09/timthumb.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"timthumb-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"timthumb-300x172.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:172;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"timthumb-768x441.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:441;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:20:\"timthumb-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(135, 45, '_wp_attached_file', '2020/09/hut-kota-tarakan-iraw-tengkayu-x-menjadi.jpg'),
(136, 45, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:700;s:6:\"height\";i:393;s:4:\"file\";s:52:\"2020/09/hut-kota-tarakan-iraw-tengkayu-x-menjadi.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:52:\"hut-kota-tarakan-iraw-tengkayu-x-menjadi-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:52:\"hut-kota-tarakan-iraw-tengkayu-x-menjadi-300x168.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:168;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:52:\"hut-kota-tarakan-iraw-tengkayu-x-menjadi-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2020-09-18 07:58:00', '2020-09-18 00:58:00', '<!-- wp:paragraph -->\n<p>Selamt datang di WordPress. Ini adalah pos pertama Anda. Sunting atau hapus, kemudian mulai menulis!</p>\n<!-- /wp:paragraph -->', 'Halo dunia!', '', 'publish', 'open', 'open', '', 'halo-dunia', '', '', '2020-09-18 07:58:00', '2020-09-18 00:58:00', '', 0, 'http://localhost/ujiwordpress2/?p=1', 0, 'post', '', 1),
(2, 1, '2020-09-18 07:58:00', '2020-09-18 00:58:00', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...atau seperti ini:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Sebagai pengguna baru WordPress, Anda harus membuka <a href=\"http://localhost/ujiwordpress2/wp-admin/\">dasbor Anda</a> untuk menghapus laman ini dan membuat laman-laman baru untuk konten Anda. Have fun!</p>\n<!-- /wp:paragraph -->', 'Laman Contoh', '', 'publish', 'closed', 'open', '', 'laman-contoh', '', '', '2020-09-18 07:58:00', '2020-09-18 00:58:00', '', 0, 'http://localhost/ujiwordpress2/?page_id=2', 0, 'page', '', 0),
(3, 1, '2020-09-18 07:58:00', '2020-09-18 00:58:00', '<!-- wp:heading --><h2>Siapa kami</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Alamat situs web kami adalah: http://localhost/ujiwordpress2.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Data pribadi apa yang kami kumpulkan dan mengapa kami mengumpulkannya</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Komentar</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Saat pengunjung meninggalkan komentar pada situs, kita mengumpulkan data yang ditampilkan pada form komentar, alamat IP pengunjung dan user agent browser untuk membantu pendeteksian spam.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>String anonim yang dibuat dari alamat email Anda (juga disebut hash) dapat diberikan ke layanan Gravatar untuk melihat apakah Anda menggunakannya. Kebijakan privasi layanan Gravatar tersedia di sini: https://automattic.com/privacy/. Setelah persetujuan atas komentar Anda, gambar profil Anda dapat dilihat oleh publik dalam konteks komentar Anda.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Jika Anda mengunggah gambar ke situs web, Anda harus menghindari mengunggah gambar dengan data lokasi tertanam (GPS EXIF) yang disertakan. Pengunjung ke situs web dapat mengunduh dan mengekstrak data lokasi apa pun dari gambar di situs web.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Formulir Kontak</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Jika Anda meninggalkan komentar di situs kami, Anda dapat memilih untuk menyimpan nama, alamat email, dan situs web Anda dalam cookie. Ini untuk kenyamanan Anda sehingga Anda tidak perlu mengisi detail Anda lagi ketika Anda meninggalkan komentar lain. Cookie ini akan bertahan selama satu tahun.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Saat Anda log masuk, kami akan menyiapkan beberapa cookie untuk menyimpan informasi log masuk Anda dan tampilan yang Anda pilih. Cookie log masuk berlaku selama dua hari, dan cookie pengaturan tampilan berlaku selama satu tahun. Jika Anda memilih &quot;Ingatkan Saya&quot;, log masuk anda akan bertahan selama dua minggu. Jika Anda log keluar dari akun, cookie log masuk akan dihapus.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Jika Anda menyunting atau menerbitkan artikel, cookie tambahan akan disimpan di browser Anda. Cookie ini tidak menyertakan data pribadi dan hanya menunjukkan ID posting dari artikel yang baru saja Anda sunting. Kadaluwarsa setelah 1 hari.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Konten yang disematkan dari situs web lain</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Artikel-artikel di dalam situs ini dapat menyertakan konten terembed (seperti video, gambar, artikel, dll). Konten terembed dari situs web lain akan berlaku sama dengan pengunjung yang mengunjungi situs web lain.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Situs-situs web ini dapat mengumpulkan data tentang Anda, menggunakan cookies, menanamkan pelacak dari pihak ketiga, dan memonitor interaksi Anda dengan muatan tertanam, termasuk menggunakannya untuk melacak interaksi Anda jika Anda memiliki sebuah akun dan masuk ke dalam situs web tersebut.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analitik</h3><!-- /wp:heading --><!-- wp:heading --><h2>Dengan siapa kami membagi data Anda</h2><!-- /wp:heading --><!-- wp:heading --><h2>Berapa lama kami menyimpan data Anda</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Jika Anda meninggalkan komentar, komentar dan metadatanya dipertahankan tanpa batas. Ini agar kami dapat mengenali dan menyetujui komentar tindak lanjut secara otomatis dan tidak menahannya dalam antrean moderasi.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Untuk pengguna yang mendaftar pada website kami (jika ada), kami juga menyimpan informasi pribadi yang mereka berikan dalam profil pengguna mereka. Semua pengguna dapat melihat, mengedit, atau menghapus informasi pribadi mereka kapan saja (kecuali mereka tidak dapat mengubah nama pengguna mereka). Administrator situs juga dapat melihat dan mengedit informasi tersebut.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Hak apa yang Anda miliki atas data ANda</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Jika anda mempunyai akun di situs ini, atau telah meninggalkan komentar, anda dapat meminta untuk mendapat data personal dalam file export dari kami, termasuk data yang anda berikan kepada kami. Anda juga dapat meminta kami menghapus data personal mengenai anda. Ini tidak termasuk data yang wajib kami simpan untuk keperluan administratif, hukum, atau keamanan.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Ke mana kami kirim data Anda</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Komentar pengunjung dapat diperiksa melalui layanan deteksi spam otomatis.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Informasi kontak Anda</h2><!-- /wp:heading --><!-- wp:heading --><h2>Informasi tambahan</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Bagaimana kami melindungi data Anda</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Apa prosedur kebocoran data yang kami miliki</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Pihak ketiga mana saja data yang kami terima berasal</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Apa pengambilan keputusan otomatis dan/atau profil yang kami lakukan dengan data pengguna</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Persyaratan pengungkapan regulasi industri</h3><!-- /wp:heading -->', 'Kebijakan Privasi', '', 'draft', 'closed', 'open', '', 'kebijakan-privasi', '', '', '2020-09-18 07:58:00', '2020-09-18 00:58:00', '', 0, 'http://localhost/ujiwordpress2/?page_id=3', 0, 'page', '', 0),
(4, 1, '2020-09-18 07:58:40', '0000-00-00 00:00:00', '', 'Konsep Otomatis', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-09-18 07:58:40', '0000-00-00 00:00:00', '', 0, 'http://localhost/ujiwordpress2/?p=4', 0, 'post', '', 0),
(5, 1, '2020-09-18 08:20:56', '2020-09-18 01:20:56', '', 'Espresso', '', 'inherit', 'open', 'closed', '', 'espresso', '', '', '2020-09-18 08:20:56', '2020-09-18 01:20:56', '', 0, 'http://localhost/ujiwordpress2/wp-content/uploads/2020/09/espresso.jpg', 0, 'attachment', 'image/jpeg', 0),
(6, 1, '2020-09-18 08:20:56', '2020-09-18 01:20:56', '', 'Sandwich', '', 'inherit', 'open', 'closed', '', 'sandwich', '', '', '2020-09-18 08:20:56', '2020-09-18 01:20:56', '', 0, 'http://localhost/ujiwordpress2/wp-content/uploads/2020/09/sandwich.jpg', 0, 'attachment', 'image/jpeg', 0),
(7, 1, '2020-09-18 08:20:56', '2020-09-18 01:20:56', '', 'Coffee', '', 'inherit', 'open', 'closed', '', 'coffee', '', '', '2020-09-18 08:20:56', '2020-09-18 01:20:56', '', 0, 'http://localhost/ujiwordpress2/wp-content/uploads/2020/09/coffee.jpg', 0, 'attachment', 'image/jpeg', 0),
(8, 1, '2020-09-18 08:20:56', '2020-09-18 01:20:56', 'Festival&nbsp;<b>Iraw Tengkayu</b>&nbsp;adalah upacara tradisional dan perlombaan yang diadakan oleh masyarakat Suku Tidung di Kota&nbsp;<b>Tarakan</b>, Provinsi Kalimantan Utara. Festival ini berupa upacara ritual menghanyutkan sesaji ke laut dan berbagai macam perlombaan.', 'Beranda', '', 'publish', 'closed', 'closed', '', 'beranda', '', '', '2020-09-18 08:36:04', '2020-09-18 01:36:04', '', 0, 'http://localhost/ujiwordpress2/?page_id=8', 0, 'page', '', 0),
(9, 1, '2020-09-18 08:20:56', '2020-09-18 01:20:56', 'Inti dari&nbsp;<a title=\"Festival\" href=\"https://id.wikipedia.org/wiki/Festival\">Festival</a>&nbsp;ini ialah ritual adat Parade&nbsp;<a class=\"new\" title=\"Padaw Tuju Dulung (halaman belum tersedia)\" href=\"https://id.wikipedia.org/w/index.php?title=Padaw_Tuju_Dulung&amp;action=edit&amp;redlink=1\">Padaw Tuju Dulung</a>&nbsp;yaitu&nbsp;<a title=\"Perahu\" href=\"https://id.wikipedia.org/wiki/Perahu\">perahu</a>&nbsp;hias yang diarak keliling kota. Pada bagian bawah perahu dipasang beberapa bilah&nbsp;<a title=\"Bambu\" href=\"https://id.wikipedia.org/wiki/Bambu\">bambu</a>&nbsp;yang digunakan oleh para pemuda untuk mengangkut Padaw Tuju Dulung. Padaw Tuju Dulung mempunyai 3 cabang yang disebut dengan&nbsp;<a class=\"mw-disambig\" title=\"Haluan\" href=\"https://id.wikipedia.org/wiki/Haluan\">haluan</a>. Haluan pada bagian tengah dibuat 3 tingkat. Sementara 2 haluan lainnya yang ada dikanan dan kiri perahu dibentuk menjadi 2 tingkat. Jika dihitung semua tingkat yang ada di masing-masing haluan, maka total ada 7. Angka 7 ini melambang jumlah hari dalam seminggu yang digunakan sebagai perlambangan perjalanan kehidupan manusia yang harinya berulang setiap seminggu sekali<sup id=\"cite_ref-adat_2-0\" class=\"reference\"></sup>.\n\nPadaw Tuju Dulung yang diangkut oleh para pemuda dicat dalam 3 warna yang berbeda, yaitu&nbsp;<a title=\"Kuning\" href=\"https://id.wikipedia.org/wiki/Kuning\">kuning</a>,&nbsp;<a title=\"Hijau\" href=\"https://id.wikipedia.org/wiki/Hijau\">hijau</a>, dan&nbsp;<a title=\"Merah\" href=\"https://id.wikipedia.org/wiki/Merah\">merah</a>. Bagian dari perahu paling atas mempunyai cat yang berwarna kuning. Dalam budaya Suku Tidung, warna kuning melambangkan kehormatan atau sesuatu yang ditinggikan. Oleh karena itulah warna kuning berada pada bagian tertinggi dari Padaw Tuju Dulung. Selain itu hanya satu tiang yang paling tinggi juga melambangkan bahwa satu penguasa tertinggi alam semesta yaitu Yang Maha Kuasa ALLAH SWT<sup id=\"cite_ref-adat_2-1\" class=\"reference\"></sup>.\n\nPada bagian tengah Padaw Tuju Dulung terpasang 5 buah tiang. Jumlah tiang yang ada sebanyak 5 buah merupakan perlambangan dari&nbsp;<a class=\"mw-redirect\" title=\"Shalat\" href=\"https://id.wikipedia.org/wiki/Shalat\">shalat</a>&nbsp;5 waktu yang dilakukan oleh Umat&nbsp;<a title=\"Islam\" href=\"https://id.wikipedia.org/wiki/Islam\">Islam</a>&nbsp;dalam seharinya. Tiang ini digunakan sebagai tempat untuk mengikat kain yang digunakan sebagai&nbsp;<a title=\"Atap\" href=\"https://id.wikipedia.org/wiki/Atap\">atap</a>.&nbsp;<a class=\"mw-disambig\" title=\"Kain\" href=\"https://id.wikipedia.org/wiki/Kain\">Kain</a>&nbsp;yang digunakan sebagai atap ini disebut dengan&nbsp;<a class=\"new\" title=\"Pari-pari (halaman belum tersedia)\" href=\"https://id.wikipedia.org/w/index.php?title=Pari-pari&amp;action=edit&amp;redlink=1\">pari-pari</a>. Tiang ini juga digunakan sebagai tempat untuk mengikat kain yang dihubungkan ke haluan perahu yang ada di kanan dan kiri<sup id=\"cite_ref-adat_2-2\" class=\"reference\"><a href=\"https://id.wikipedia.org/wiki/Festival_Iraw_Tengakayu#cite_note-adat-2\">[2]</a></sup><sup id=\"cite_ref-3\" class=\"reference\"><a href=\"https://id.wikipedia.org/wiki/Festival_Iraw_Tengakayu#cite_note-3\">[3]</a></sup><sup id=\"cite_ref-4\" class=\"reference\"><a href=\"https://id.wikipedia.org/wiki/Festival_Iraw_Tengakayu#cite_note-4\">[4]</a></sup>.\n\nPada bagian tengah perahu tepat di bawah pari-pari terdapat tempat yang mempunyai bentuk seperti&nbsp;<a title=\"Rumah\" href=\"https://id.wikipedia.org/wiki/Rumah\">rumah</a>. Tempat ini dilengkapi dengan atap bertingkat tiga yang disebut juga dengan nama&nbsp;<a class=\"new\" title=\"Meligay (halaman belum tersedia)\" href=\"https://id.wikipedia.org/w/index.php?title=Meligay&amp;action=edit&amp;redlink=1\">meligay</a>. Dimana di bawah meligay terdapat pintu pada keempat sisinya. Dibawah meligay inilah diletakkan sesaji yang berisi makanan yang selanjutnya akan dilepaskan di laut. Sesaji ini dalam masyarakat Tidung disebut&nbsp;<a title=\"Pakan\" href=\"https://id.wikipedia.org/wiki/Pakan\">pakan</a><sup id=\"cite_ref-adat_2-3\" class=\"reference\"></sup>.', 'Upacara', '', 'publish', 'closed', 'closed', '', 'tentang', '', '', '2020-09-18 08:38:34', '2020-09-18 01:38:34', '', 0, 'http://localhost/ujiwordpress2/?page_id=9', 0, 'page', '', 0),
(10, 1, '2020-09-18 08:20:56', '2020-09-18 01:20:56', 'Selain upacara ritual Padaw Tuju Dulung juga di meriahkan berbagai perlombaan, seperti:\n<ul>\n 	<li>Tarakan expo yang akan diperkenalkan seluruh budaya yang ada di kota Tarakan (Borneo). Beraneka ragam kreativitas dan produk-produk yang mencerminkan kota Tarakan di pamerkan di Tarakan expo ini</li>\n 	<li>parade musik akan diisi oleh grup-grup band asal bumi paguntaka dan luar tarakan untuk memperlihatkan kualitas mereka dalam bermusik. dan parade tari yang diramaikan oleh penari-penari lokal (Kota Tarakan) dan luar Kota Tarakan.</li>\n 	<li><a class=\"new\" title=\"Lomba Sumpit (halaman belum tersedia)\" href=\"https://id.wikipedia.org/w/index.php?title=Lomba_Sumpit&amp;action=edit&amp;redlink=1\">Lomba Sumpit</a>. Sumpit adalah senjata khas Suku Dayak yang juga salah satu suku asli Kota Tarakan, untuk melestarikan sumpit maka diadakan lomba sumpit. Peserta tidak hanya berasal dari Kota Tarakan akan tetapi berasal dari luar Kota Tarakan.</li>\n 	<li>Perahu atau Kapal hias, festifal makanan laut, Lari Maraton 10&nbsp;km, dan masih banyak lagi</li>\n</ul>', 'Perlombaan', '', 'publish', 'closed', 'closed', '', 'kontak', '', '', '2020-09-18 08:40:28', '2020-09-18 01:40:28', '', 0, 'http://localhost/ujiwordpress2/?page_id=10', 0, 'page', '', 0),
(12, 1, '2020-09-18 08:20:57', '2020-09-18 01:20:57', '<p>Iraw Tengkayu merupakan upacara turun temurun yang dilakukan oleh masyarakat suku Tidung,&nbsp;<a title=\"Kota Tarakan\" href=\"https://id.wikipedia.org/wiki/Kota_Tarakan\">Kota Tarakan</a>,&nbsp;<a class=\"mw-redirect\" title=\"Provinsi Kalimantan Utara\" href=\"https://id.wikipedia.org/wiki/Provinsi_Kalimantan_Utara\">Provinsi Kalimantan Utara</a>. Iraw Tengkayu itu sendiri mempunyai dua arti kata diambil dari Bahasa Tidung.&nbsp;<a class=\"new\" title=\"Iraw (halaman belum tersedia)\" href=\"https://id.wikipedia.org/w/index.php?title=Iraw&amp;action=edit&amp;redlink=1\">Iraw</a>&nbsp;yang berarti perayaan atau pesta, sedangkan&nbsp;<a class=\"new\" title=\"Tengkayu (halaman belum tersedia)\" href=\"https://id.wikipedia.org/w/index.php?title=Tengkayu&amp;action=edit&amp;redlink=1\">Tengkayu</a>&nbsp;adalah pulau kecil yang dikelilingi oleh laut, yang dimaksud pulau kecil disini adalah&nbsp;<a title=\"Pulau Tarakan\" href=\"https://id.wikipedia.org/wiki/Pulau_Tarakan\">Pulau Tarakan</a>.</p>\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Sejarah', '', 'publish', 'closed', 'closed', '', 'bagian-beranda', '', '', '2020-09-18 08:37:28', '2020-09-18 01:37:28', '', 0, 'http://localhost/ujiwordpress2/?page_id=12', 0, 'page', '', 0),
(13, 1, '2020-09-18 08:20:55', '2020-09-18 01:20:55', '{\n    \"widget_text[2]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjEyOiJUZW11a2FuIEthbWkiO3M6NDoidGV4dCI7czoxNzU6IjxzdHJvbmc+QWxhbWF0PC9zdHJvbmc+CkpsLiBKZW5kLiBTdWRpcm1hbiA4Ckpha2FydGEgUHVzYXQsIEpha2FydGEgMTAxMTAKCjxzdHJvbmc+SmFtIEJ1a2E8L3N0cm9uZz4KU2VuaW4mbWRhc2g7SnVtYXQ6IDA5OjAwJm5kYXNoOzE3OjAwClNhYnR1ICZhbXA7IE1pbmdndTogMTE6MDAmbmRhc2g7MTU6MDAiO3M6NjoiZmlsdGVyIjtiOjE7czo2OiJ2aXN1YWwiO2I6MTt9\",\n            \"title\": \"Temukan Kami\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"dae35b717efcd2824bb1ff61047b77ce\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-18 01:15:41\"\n    },\n    \"widget_search[3]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxOntzOjU6InRpdGxlIjtzOjQ6IkNhcmkiO30=\",\n            \"title\": \"Cari\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"a6af285fc47374ad9136f763b6c342fd\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-18 01:15:41\"\n    },\n    \"widget_text[3]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjE3OiJUZW50YW5nIFNpdHVzIEluaSI7czo0OiJ0ZXh0IjtzOjEwODoiSW5pIGJpc2EgamFkaSBydWFuZyB5YW5nIHRlcGF0IHVudHVrIG1lbXBlcmtlbmFsa2FuIGRpcmkgZGFuIHNpdHVzIEFuZGEsIGF0YXUgbWVudWxpc2thbiBkYWZ0YXIgcGVuZ2hhcmdhYW4uIjtzOjY6ImZpbHRlciI7YjoxO3M6NjoidmlzdWFsIjtiOjE7fQ==\",\n            \"title\": \"Tentang Situs Ini\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"f22bf41f3109a1b257b830c56e4c57f6\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-18 01:15:41\"\n    },\n    \"sidebars_widgets[sidebar-1]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-2\",\n            \"search-3\",\n            \"text-3\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-18 01:15:41\"\n    },\n    \"widget_text[4]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjEyOiJUZW11a2FuIEthbWkiO3M6NDoidGV4dCI7czoxNzU6IjxzdHJvbmc+QWxhbWF0PC9zdHJvbmc+CkpsLiBKZW5kLiBTdWRpcm1hbiA4Ckpha2FydGEgUHVzYXQsIEpha2FydGEgMTAxMTAKCjxzdHJvbmc+SmFtIEJ1a2E8L3N0cm9uZz4KU2VuaW4mbWRhc2g7SnVtYXQ6IDA5OjAwJm5kYXNoOzE3OjAwClNhYnR1ICZhbXA7IE1pbmdndTogMTE6MDAmbmRhc2g7MTU6MDAiO3M6NjoiZmlsdGVyIjtiOjE7czo2OiJ2aXN1YWwiO2I6MTt9\",\n            \"title\": \"Temukan Kami\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"dae35b717efcd2824bb1ff61047b77ce\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-18 01:15:41\"\n    },\n    \"sidebars_widgets[sidebar-2]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-4\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-18 01:15:41\"\n    },\n    \"widget_text[5]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjE3OiJUZW50YW5nIFNpdHVzIEluaSI7czo0OiJ0ZXh0IjtzOjEwODoiSW5pIGJpc2EgamFkaSBydWFuZyB5YW5nIHRlcGF0IHVudHVrIG1lbXBlcmtlbmFsa2FuIGRpcmkgZGFuIHNpdHVzIEFuZGEsIGF0YXUgbWVudWxpc2thbiBkYWZ0YXIgcGVuZ2hhcmdhYW4uIjtzOjY6ImZpbHRlciI7YjoxO3M6NjoidmlzdWFsIjtiOjE7fQ==\",\n            \"title\": \"Tentang Situs Ini\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"f22bf41f3109a1b257b830c56e4c57f6\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-18 01:15:41\"\n    },\n    \"widget_search[4]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxOntzOjU6InRpdGxlIjtzOjQ6IkNhcmkiO30=\",\n            \"title\": \"Cari\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"a6af285fc47374ad9136f763b6c342fd\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-18 01:15:41\"\n    },\n    \"sidebars_widgets[sidebar-3]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-5\",\n            \"search-4\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-18 01:15:41\"\n    },\n    \"nav_menus_created_posts\": {\n        \"starter_content\": true,\n        \"value\": [\n            5,\n            6,\n            7,\n            8,\n            9,\n            10,\n            11,\n            12\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-18 01:15:41\"\n    },\n    \"nav_menu[-1]\": {\n        \"value\": {\n            \"name\": \"Top Menu\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-18 01:20:55\"\n    },\n    \"nav_menu_item[-1]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 0,\n            \"type\": \"custom\",\n            \"title\": \"Beranda\",\n            \"url\": \"http://localhost/ujiwordpress2/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"Tautan Tersuai\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-18 01:20:55\"\n    },\n    \"nav_menu_item[-2]\": {\n        \"value\": {\n            \"object_id\": 9,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"post_type\",\n            \"title\": \"Tentang\",\n            \"url\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Tentang\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"Laman\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-18 01:20:55\"\n    },\n    \"nav_menu_item[-3]\": {\n        \"value\": {\n            \"object_id\": 11,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"post_type\",\n            \"title\": \"Blog\",\n            \"url\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Blog\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"Laman\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-18 01:20:55\"\n    },\n    \"nav_menu_item[-4]\": {\n        \"value\": {\n            \"object_id\": 10,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"post_type\",\n            \"title\": \"Kontak\",\n            \"url\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Kontak\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"Laman\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-18 01:20:55\"\n    },\n    \"twentyseventeen::nav_menu_locations[top]\": {\n        \"starter_content\": true,\n        \"value\": -1,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-18 01:15:41\"\n    },\n    \"nav_menu[-5]\": {\n        \"value\": {\n            \"name\": \"Social Links Menu\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-18 01:20:55\"\n    },\n    \"nav_menu_item[-5]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 0,\n            \"type\": \"custom\",\n            \"title\": \"Yelp\",\n            \"url\": \"https://www.yelp.com\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"Tautan Tersuai\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-18 01:20:55\"\n    },\n    \"nav_menu_item[-6]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"custom\",\n            \"title\": \"Facebook\",\n            \"url\": \"https://www.facebook.com/wordpress\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"Tautan Tersuai\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-18 01:20:55\"\n    },\n    \"nav_menu_item[-7]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"custom\",\n            \"title\": \"Twitter\",\n            \"url\": \"https://twitter.com/wordpress\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"Tautan Tersuai\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-18 01:20:55\"\n    },\n    \"nav_menu_item[-8]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"custom\",\n            \"title\": \"Instagram\",\n            \"url\": \"https://www.instagram.com/explore/tags/wordcamp/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"Tautan Tersuai\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-18 01:20:55\"\n    },\n    \"nav_menu_item[-9]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 4,\n            \"type\": \"custom\",\n            \"title\": \"Email\",\n            \"url\": \"mailto:wordpress@example.com\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"Tautan Tersuai\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-18 01:20:55\"\n    },\n    \"twentyseventeen::nav_menu_locations[social]\": {\n        \"starter_content\": true,\n        \"value\": -5,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-18 01:15:41\"\n    },\n    \"show_on_front\": {\n        \"starter_content\": true,\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-18 01:15:41\"\n    },\n    \"page_on_front\": {\n        \"starter_content\": true,\n        \"value\": 8,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-18 01:15:41\"\n    },\n    \"page_for_posts\": {\n        \"starter_content\": true,\n        \"value\": 11,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-18 01:15:41\"\n    },\n    \"twentyseventeen::panel_1\": {\n        \"starter_content\": true,\n        \"value\": 12,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-18 01:15:41\"\n    },\n    \"twentyseventeen::panel_2\": {\n        \"starter_content\": true,\n        \"value\": 9,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-18 01:15:41\"\n    },\n    \"twentyseventeen::panel_3\": {\n        \"starter_content\": true,\n        \"value\": 11,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-18 01:15:41\"\n    },\n    \"twentyseventeen::panel_4\": {\n        \"starter_content\": true,\n        \"value\": 10,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-18 01:15:41\"\n    },\n    \"blogname\": {\n        \"value\": \"Festival Iraw Tengkayu Tarakan\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-18 01:18:39\"\n    },\n    \"twentyseventeen::external_header_video\": {\n        \"value\": \"https://www.youtube.com/watch?v=EEk-HuLktKE\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-18 01:18:39\"\n    },\n    \"blogdescription\": {\n        \"value\": \"Tarakan Kota \\\"BAIS\\\" (Bersih, Aman, Indah, Sehat dan Sejahtera).\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-18 01:19:21\"\n    },\n    \"twentyseventeen::custom_logo\": {\n        \"value\": 15,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-18 01:20:21\"\n    },\n    \"site_icon\": {\n        \"value\": 16,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-18 01:20:55\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'b64b872f-419a-4776-be4c-d45b13b466ac', '', '', '2020-09-18 08:20:55', '2020-09-18 01:20:55', '', 0, 'http://localhost/ujiwordpress2/?p=13', 0, 'customize_changeset', '', 0),
(14, 1, '2020-09-18 08:20:05', '2020-09-18 01:20:05', '', 'Lambang_Kota_Tarakan', '', 'inherit', 'open', 'closed', '', 'lambang_kota_tarakan', '', '', '2020-09-18 08:20:05', '2020-09-18 01:20:05', '', 0, 'http://localhost/ujiwordpress2/wp-content/uploads/2020/09/Lambang_Kota_Tarakan.gif', 0, 'attachment', 'image/gif', 0),
(15, 1, '2020-09-18 08:20:17', '2020-09-18 01:20:17', 'http://localhost/ujiwordpress2/wp-content/uploads/2020/09/cropped-Lambang_Kota_Tarakan.gif', 'cropped-Lambang_Kota_Tarakan.gif', '', 'inherit', 'open', 'closed', '', 'cropped-lambang_kota_tarakan-gif', '', '', '2020-09-18 08:20:17', '2020-09-18 01:20:17', '', 0, 'http://localhost/ujiwordpress2/wp-content/uploads/2020/09/cropped-Lambang_Kota_Tarakan.gif', 0, 'attachment', 'image/gif', 0),
(16, 1, '2020-09-18 08:20:43', '2020-09-18 01:20:43', 'http://localhost/ujiwordpress2/wp-content/uploads/2020/09/cropped-Lambang_Kota_Tarakan-1.gif', 'cropped-Lambang_Kota_Tarakan-1.gif', '', 'inherit', 'open', 'closed', '', 'cropped-lambang_kota_tarakan-1-gif', '', '', '2020-09-18 08:20:43', '2020-09-18 01:20:43', '', 0, 'http://localhost/ujiwordpress2/wp-content/uploads/2020/09/cropped-Lambang_Kota_Tarakan-1.gif', 0, 'attachment', 'image/gif', 0),
(17, 1, '2020-09-18 08:20:56', '2020-09-18 01:20:56', 'Selamat datang di situs Anda! Ini adalah laman beranda yang akan dilihat oleh kebanyakan pengunjung saat pertama datang ke sini.', 'Beranda', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2020-09-18 08:20:56', '2020-09-18 01:20:56', '', 8, 'http://localhost/ujiwordpress2/index.php/2020/09/18/8-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2020-09-18 08:20:56', '2020-09-18 01:20:56', 'Mungkin Anda seorang seniman yang ingin memperkenalkan diri dan karya Anda di sini, atau barangkali Anda punya bisnis dengan sebuah misi yang ingin disampaikan.', 'Tentang', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2020-09-18 08:20:56', '2020-09-18 01:20:56', '', 9, 'http://localhost/ujiwordpress2/index.php/2020/09/18/9-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2020-09-18 08:20:56', '2020-09-18 01:20:56', 'Ini laman dengan informasi kontak dasar, seperti alamat dan nomor telepon. Anda juga bisa menggunakan plugin untuk menambahkan formulir kontak.', 'Kontak', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2020-09-18 08:20:56', '2020-09-18 01:20:56', '', 10, 'http://localhost/ujiwordpress2/index.php/2020/09/18/10-revision-v1/', 0, 'revision', '', 0),
(21, 1, '2020-09-18 08:20:57', '2020-09-18 01:20:57', 'Ini adalah contoh beranda. Beranda bisa merupakan laman lain selain beranda itu sendiri, termasuk laman yang menampilkan pos blog terbaru Anda.', 'Bagian Beranda', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2020-09-18 08:20:57', '2020-09-18 01:20:57', '', 12, 'http://localhost/ujiwordpress2/index.php/2020/09/18/12-revision-v1/', 0, 'revision', '', 0),
(22, 1, '2020-09-18 08:20:57', '2020-09-18 01:20:57', '', 'Beranda', '', 'publish', 'closed', 'closed', '', 'beranda', '', '', '2020-09-18 08:20:57', '2020-09-18 01:20:57', '', 0, 'http://localhost/ujiwordpress2/index.php/2020/09/18/beranda/', 0, 'nav_menu_item', '', 0),
(23, 1, '2020-09-18 08:20:58', '2020-09-18 01:20:58', ' ', '', '', 'publish', 'closed', 'closed', '', '23', '', '', '2020-09-18 08:20:58', '2020-09-18 01:20:58', '', 0, 'http://localhost/ujiwordpress2/index.php/2020/09/18/23/', 1, 'nav_menu_item', '', 0),
(25, 1, '2020-09-18 08:20:59', '2020-09-18 01:20:59', ' ', '', '', 'publish', 'closed', 'closed', '', '25', '', '', '2020-09-18 08:20:59', '2020-09-18 01:20:59', '', 0, 'http://localhost/ujiwordpress2/index.php/2020/09/18/25/', 3, 'nav_menu_item', '', 0),
(26, 1, '2020-09-18 08:21:00', '2020-09-18 01:21:00', '', 'Yelp', '', 'publish', 'closed', 'closed', '', 'yelp', '', '', '2020-09-18 08:21:00', '2020-09-18 01:21:00', '', 0, 'http://localhost/ujiwordpress2/index.php/2020/09/18/yelp/', 0, 'nav_menu_item', '', 0),
(27, 1, '2020-09-18 08:21:00', '2020-09-18 01:21:00', '', 'Facebook', '', 'publish', 'closed', 'closed', '', 'facebook', '', '', '2020-09-18 08:21:00', '2020-09-18 01:21:00', '', 0, 'http://localhost/ujiwordpress2/index.php/2020/09/18/facebook/', 1, 'nav_menu_item', '', 0),
(28, 1, '2020-09-18 08:21:01', '2020-09-18 01:21:01', '', 'Twitter', '', 'publish', 'closed', 'closed', '', 'twitter', '', '', '2020-09-18 08:21:01', '2020-09-18 01:21:01', '', 0, 'http://localhost/ujiwordpress2/index.php/2020/09/18/twitter/', 2, 'nav_menu_item', '', 0),
(29, 1, '2020-09-18 08:21:01', '2020-09-18 01:21:01', '', 'Instagram', '', 'publish', 'closed', 'closed', '', 'instagram', '', '', '2020-09-18 08:21:01', '2020-09-18 01:21:01', '', 0, 'http://localhost/ujiwordpress2/index.php/2020/09/18/instagram/', 3, 'nav_menu_item', '', 0),
(30, 1, '2020-09-18 08:21:02', '2020-09-18 01:21:02', '', 'Email', '', 'publish', 'closed', 'closed', '', 'email', '', '', '2020-09-18 08:21:02', '2020-09-18 01:21:02', '', 0, 'http://localhost/ujiwordpress2/index.php/2020/09/18/email/', 4, 'nav_menu_item', '', 0),
(31, 1, '2020-09-18 08:24:15', '2020-09-18 01:24:15', '{\n    \"twentyseventeen::page_layout\": {\n        \"value\": \"two-column\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-18 01:22:47\"\n    },\n    \"twentyseventeen::header_textcolor\": {\n        \"value\": \"#ffffff\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-18 01:24:15\"\n    },\n    \"twentyseventeen::colorscheme\": {\n        \"value\": \"light\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-18 01:23:47\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'cb170fa3-f6e7-4f8c-93d6-f003892c6ea5', '', '', '2020-09-18 08:24:15', '2020-09-18 01:24:15', '', 0, 'http://localhost/ujiwordpress2/?p=31', 0, 'customize_changeset', '', 0),
(32, 1, '2020-09-18 08:24:24', '2020-09-18 01:24:24', '{\n    \"twentyseventeen::colorscheme\": {\n        \"value\": \"dark\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-18 01:24:24\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'a5e3ba3a-901d-46b1-af7d-a24b65807278', '', '', '2020-09-18 08:24:24', '2020-09-18 01:24:24', '', 0, 'http://localhost/ujiwordpress2/index.php/2020/09/18/a5e3ba3a-901d-46b1-af7d-a24b65807278/', 0, 'customize_changeset', '', 0),
(33, 1, '2020-09-18 08:25:07', '2020-09-18 01:25:07', '{\n    \"twentyseventeen::header_image\": {\n        \"value\": \"remove-header\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-18 01:24:47\"\n    },\n    \"twentyseventeen::header_image_data\": {\n        \"value\": \"remove-header\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-18 01:24:47\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '8f62f7ff-7a2f-4dd8-8166-1666b9fefc95', '', '', '2020-09-18 08:25:07', '2020-09-18 01:25:07', '', 0, 'http://localhost/ujiwordpress2/?p=33', 0, 'customize_changeset', '', 0),
(34, 1, '2020-09-18 08:29:37', '2020-09-18 01:29:37', '<p>Festival <b>Iraw Tengkayu</b> adalah upacara tradisional dan perlombaan yang diadakan oleh masyarakat Suku Tidung di Kota <b>Tarakan</b>, Provinsi Kalimantan Utara. Festival ini berupa upacara ritual menghanyutkan sesaji ke laut dan berbagai macam perlombaan.</p>\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Bagian Beranda', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2020-09-18 08:29:37', '2020-09-18 01:29:37', '', 12, 'http://localhost/ujiwordpress2/index.php/2020/09/18/12-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2020-09-18 08:30:30', '2020-09-18 01:30:30', 'Festival <b>Iraw Tengkayu</b> adalah upacara tradisional dan perlombaan yang diadakan oleh masyarakat Suku Tidung di Kota <b>Tarakan</b>, Provinsi Kalimantan Utara. Festival ini berupa upacara ritual menghanyutkan sesaji ke laut dan berbagai macam perlombaan.', 'Beranda', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2020-09-18 08:30:30', '2020-09-18 01:30:30', '', 8, 'http://localhost/ujiwordpress2/index.php/2020/09/18/8-revision-v1/', 0, 'revision', '', 0),
(36, 1, '2020-09-18 08:32:11', '2020-09-18 01:32:11', '<p>Iraw Tengkayu merupakan upacara turun temurun yang dilakukan oleh masyarakat suku Tidung, <a title=\"Kota Tarakan\" href=\"https://id.wikipedia.org/wiki/Kota_Tarakan\">Kota Tarakan</a>, <a class=\"mw-redirect\" title=\"Provinsi Kalimantan Utara\" href=\"https://id.wikipedia.org/wiki/Provinsi_Kalimantan_Utara\">Provinsi Kalimantan Utara</a>. Iraw Tengkayu itu sendiri mempunyai dua arti kata diambil dari Bahasa Tidung. <a class=\"new\" title=\"Iraw (halaman belum tersedia)\" href=\"https://id.wikipedia.org/w/index.php?title=Iraw&amp;action=edit&amp;redlink=1\">Iraw</a> yang berarti perayaan atau pesta, sedangkan <a class=\"new\" title=\"Tengkayu (halaman belum tersedia)\" href=\"https://id.wikipedia.org/w/index.php?title=Tengkayu&amp;action=edit&amp;redlink=1\">Tengkayu</a> adalah pulau kecil yang dikelilingi oleh laut, yang dimaksud pulau kecil disini adalah <a title=\"Pulau Tarakan\" href=\"https://id.wikipedia.org/wiki/Pulau_Tarakan\">Pulau Tarakan</a>.</p>\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Sejarah', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2020-09-18 08:32:11', '2020-09-18 01:32:11', '', 12, 'http://localhost/ujiwordpress2/index.php/2020/09/18/12-revision-v1/', 0, 'revision', '', 0),
(37, 1, '2020-09-18 08:33:14', '2020-09-18 01:33:14', 'Inti dari <a title=\"Festival\" href=\"https://id.wikipedia.org/wiki/Festival\">Festival</a> ini ialah ritual adat Parade <a class=\"new\" title=\"Padaw Tuju Dulung (halaman belum tersedia)\" href=\"https://id.wikipedia.org/w/index.php?title=Padaw_Tuju_Dulung&amp;action=edit&amp;redlink=1\">Padaw Tuju Dulung</a> yaitu <a title=\"Perahu\" href=\"https://id.wikipedia.org/wiki/Perahu\">perahu</a> hias yang diarak keliling kota. Pada bagian bawah perahu dipasang beberapa bilah <a title=\"Bambu\" href=\"https://id.wikipedia.org/wiki/Bambu\">bambu</a> yang digunakan oleh para pemuda untuk mengangkut Padaw Tuju Dulung. Padaw Tuju Dulung mempunyai 3 cabang yang disebut dengan <a class=\"mw-disambig\" title=\"Haluan\" href=\"https://id.wikipedia.org/wiki/Haluan\">haluan</a>. Haluan pada bagian tengah dibuat 3 tingkat. Sementara 2 haluan lainnya yang ada dikanan dan kiri perahu dibentuk menjadi 2 tingkat. Jika dihitung semua tingkat yang ada di masing-masing haluan, maka total ada 7. Angka 7 ini melambang jumlah hari dalam seminggu yang digunakan sebagai perlambangan perjalanan kehidupan manusia yang harinya berulang setiap seminggu sekali<sup id=\"cite_ref-adat_2-0\" class=\"reference\"></sup>.\n\nPadaw Tuju Dulung yang diangkut oleh para pemuda dicat dalam 3 warna yang berbeda, yaitu <a title=\"Kuning\" href=\"https://id.wikipedia.org/wiki/Kuning\">kuning</a>, <a title=\"Hijau\" href=\"https://id.wikipedia.org/wiki/Hijau\">hijau</a>, dan <a title=\"Merah\" href=\"https://id.wikipedia.org/wiki/Merah\">merah</a>. Bagian dari perahu paling atas mempunyai cat yang berwarna kuning. Dalam budaya Suku Tidung, warna kuning melambangkan kehormatan atau sesuatu yang ditinggikan. Oleh karena itulah warna kuning berada pada bagian tertinggi dari Padaw Tuju Dulung. Selain itu hanya satu tiang yang paling tinggi juga melambangkan bahwa satu penguasa tertinggi alam semesta yaitu Yang Maha Kuasa ALLAH SWT<sup id=\"cite_ref-adat_2-1\" class=\"reference\"></sup>.\n\nPada bagian tengah Padaw Tuju Dulung terpasang 5 buah tiang. Jumlah tiang yang ada sebanyak 5 buah merupakan perlambangan dari <a class=\"mw-redirect\" title=\"Shalat\" href=\"https://id.wikipedia.org/wiki/Shalat\">shalat</a> 5 waktu yang dilakukan oleh Umat <a title=\"Islam\" href=\"https://id.wikipedia.org/wiki/Islam\">Islam</a> dalam seharinya. Tiang ini digunakan sebagai tempat untuk mengikat kain yang digunakan sebagai <a title=\"Atap\" href=\"https://id.wikipedia.org/wiki/Atap\">atap</a>. <a class=\"mw-disambig\" title=\"Kain\" href=\"https://id.wikipedia.org/wiki/Kain\">Kain</a> yang digunakan sebagai atap ini disebut dengan <a class=\"new\" title=\"Pari-pari (halaman belum tersedia)\" href=\"https://id.wikipedia.org/w/index.php?title=Pari-pari&amp;action=edit&amp;redlink=1\">pari-pari</a>. Tiang ini juga digunakan sebagai tempat untuk mengikat kain yang dihubungkan ke haluan perahu yang ada di kanan dan kiri<sup id=\"cite_ref-adat_2-2\" class=\"reference\"><a href=\"https://id.wikipedia.org/wiki/Festival_Iraw_Tengakayu#cite_note-adat-2\">[2]</a></sup><sup id=\"cite_ref-3\" class=\"reference\"><a href=\"https://id.wikipedia.org/wiki/Festival_Iraw_Tengakayu#cite_note-3\">[3]</a></sup><sup id=\"cite_ref-4\" class=\"reference\"><a href=\"https://id.wikipedia.org/wiki/Festival_Iraw_Tengakayu#cite_note-4\">[4]</a></sup>.\n\nPada bagian tengah perahu tepat di bawah pari-pari terdapat tempat yang mempunyai bentuk seperti <a title=\"Rumah\" href=\"https://id.wikipedia.org/wiki/Rumah\">rumah</a>. Tempat ini dilengkapi dengan atap bertingkat tiga yang disebut juga dengan nama <a class=\"new\" title=\"Meligay (halaman belum tersedia)\" href=\"https://id.wikipedia.org/w/index.php?title=Meligay&amp;action=edit&amp;redlink=1\">meligay</a>. Dimana di bawah meligay terdapat pintu pada keempat sisinya. Dibawah meligay inilah diletakkan sesaji yang berisi makanan yang selanjutnya akan dilepaskan di laut. Sesaji ini dalam masyarakat Tidung disebut <a title=\"Pakan\" href=\"https://id.wikipedia.org/wiki/Pakan\">pakan</a><sup id=\"cite_ref-adat_2-3\" class=\"reference\"></sup>.', 'Upacara', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2020-09-18 08:33:14', '2020-09-18 01:33:14', '', 9, 'http://localhost/ujiwordpress2/index.php/2020/09/18/9-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2020-09-18 08:34:54', '2020-09-18 01:34:54', 'Selain upacara ritual Padaw Tuju Dulung juga di meriahkan berbagai perlombaan, seperti:\n<ul>\n 	<li>Tarakan expo yang akan diperkenalkan seluruh budaya yang ada di kota Tarakan (Borneo). Beraneka ragam kreativitas dan produk-produk yang mencerminkan kota Tarakan di pamerkan di Tarakan expo ini</li>\n 	<li>parade musik akan diisi oleh grup-grup band asal bumi paguntaka dan luar tarakan untuk memperlihatkan kualitas mereka dalam bermusik. dan parade tari yang diramaikan oleh penari-penari lokal (Kota Tarakan) dan luar Kota Tarakan.</li>\n 	<li><a class=\"new\" title=\"Lomba Sumpit (halaman belum tersedia)\" href=\"https://id.wikipedia.org/w/index.php?title=Lomba_Sumpit&amp;action=edit&amp;redlink=1\">Lomba Sumpit</a>. Sumpit adalah senjata khas Suku Dayak yang juga salah satu suku asli Kota Tarakan, untuk melestarikan sumpit maka diadakan lomba sumpit. Peserta tidak hanya berasal dari Kota Tarakan akan tetapi berasal dari luar Kota Tarakan.</li>\n 	<li>Perahu atau Kapal hias, festifal makanan laut, Lari Maraton 10 km, dan masih banyak lagi</li>\n</ul>', 'Perlombaan', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2020-09-18 08:34:54', '2020-09-18 01:34:54', '', 10, 'http://localhost/ujiwordpress2/index.php/2020/09/18/10-revision-v1/', 0, 'revision', '', 0),
(39, 1, '2020-09-18 08:35:54', '2020-09-18 01:35:54', '', '20192712taakan', '', 'inherit', 'open', 'closed', '', '20192712taakan', '', '', '2020-09-18 08:35:54', '2020-09-18 01:35:54', '', 8, 'http://localhost/ujiwordpress2/wp-content/uploads/2020/09/20192712taakan.jpg', 0, 'attachment', 'image/jpeg', 0),
(40, 1, '2020-09-18 08:36:04', '2020-09-18 01:36:04', 'Festival&nbsp;<b>Iraw Tengkayu</b>&nbsp;adalah upacara tradisional dan perlombaan yang diadakan oleh masyarakat Suku Tidung di Kota&nbsp;<b>Tarakan</b>, Provinsi Kalimantan Utara. Festival ini berupa upacara ritual menghanyutkan sesaji ke laut dan berbagai macam perlombaan.', 'Beranda', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2020-09-18 08:36:04', '2020-09-18 01:36:04', '', 8, 'http://localhost/ujiwordpress2/index.php/2020/09/18/8-revision-v1/', 0, 'revision', '', 0),
(41, 1, '2020-09-18 08:37:23', '2020-09-18 01:37:23', '', 'iraw tengkayu', '', 'inherit', 'open', 'closed', '', 'iraw-tengkayu', '', '', '2020-09-18 08:37:23', '2020-09-18 01:37:23', '', 12, 'http://localhost/ujiwordpress2/wp-content/uploads/2020/09/iraw-tengkayu.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(42, 1, '2020-09-18 08:37:28', '2020-09-18 01:37:28', '<p>Iraw Tengkayu merupakan upacara turun temurun yang dilakukan oleh masyarakat suku Tidung,&nbsp;<a title=\"Kota Tarakan\" href=\"https://id.wikipedia.org/wiki/Kota_Tarakan\">Kota Tarakan</a>,&nbsp;<a class=\"mw-redirect\" title=\"Provinsi Kalimantan Utara\" href=\"https://id.wikipedia.org/wiki/Provinsi_Kalimantan_Utara\">Provinsi Kalimantan Utara</a>. Iraw Tengkayu itu sendiri mempunyai dua arti kata diambil dari Bahasa Tidung.&nbsp;<a class=\"new\" title=\"Iraw (halaman belum tersedia)\" href=\"https://id.wikipedia.org/w/index.php?title=Iraw&amp;action=edit&amp;redlink=1\">Iraw</a>&nbsp;yang berarti perayaan atau pesta, sedangkan&nbsp;<a class=\"new\" title=\"Tengkayu (halaman belum tersedia)\" href=\"https://id.wikipedia.org/w/index.php?title=Tengkayu&amp;action=edit&amp;redlink=1\">Tengkayu</a>&nbsp;adalah pulau kecil yang dikelilingi oleh laut, yang dimaksud pulau kecil disini adalah&nbsp;<a title=\"Pulau Tarakan\" href=\"https://id.wikipedia.org/wiki/Pulau_Tarakan\">Pulau Tarakan</a>.</p>\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Sejarah', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2020-09-18 08:37:28', '2020-09-18 01:37:28', '', 12, 'http://localhost/ujiwordpress2/index.php/2020/09/18/12-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2020-09-18 08:38:28', '2020-09-18 01:38:28', '', 'timthumb', '', 'inherit', 'open', 'closed', '', 'timthumb', '', '', '2020-09-18 08:38:28', '2020-09-18 01:38:28', '', 9, 'http://localhost/ujiwordpress2/wp-content/uploads/2020/09/timthumb.jpg', 0, 'attachment', 'image/jpeg', 0),
(44, 1, '2020-09-18 08:38:34', '2020-09-18 01:38:34', 'Inti dari&nbsp;<a title=\"Festival\" href=\"https://id.wikipedia.org/wiki/Festival\">Festival</a>&nbsp;ini ialah ritual adat Parade&nbsp;<a class=\"new\" title=\"Padaw Tuju Dulung (halaman belum tersedia)\" href=\"https://id.wikipedia.org/w/index.php?title=Padaw_Tuju_Dulung&amp;action=edit&amp;redlink=1\">Padaw Tuju Dulung</a>&nbsp;yaitu&nbsp;<a title=\"Perahu\" href=\"https://id.wikipedia.org/wiki/Perahu\">perahu</a>&nbsp;hias yang diarak keliling kota. Pada bagian bawah perahu dipasang beberapa bilah&nbsp;<a title=\"Bambu\" href=\"https://id.wikipedia.org/wiki/Bambu\">bambu</a>&nbsp;yang digunakan oleh para pemuda untuk mengangkut Padaw Tuju Dulung. Padaw Tuju Dulung mempunyai 3 cabang yang disebut dengan&nbsp;<a class=\"mw-disambig\" title=\"Haluan\" href=\"https://id.wikipedia.org/wiki/Haluan\">haluan</a>. Haluan pada bagian tengah dibuat 3 tingkat. Sementara 2 haluan lainnya yang ada dikanan dan kiri perahu dibentuk menjadi 2 tingkat. Jika dihitung semua tingkat yang ada di masing-masing haluan, maka total ada 7. Angka 7 ini melambang jumlah hari dalam seminggu yang digunakan sebagai perlambangan perjalanan kehidupan manusia yang harinya berulang setiap seminggu sekali<sup id=\"cite_ref-adat_2-0\" class=\"reference\"></sup>.\n\nPadaw Tuju Dulung yang diangkut oleh para pemuda dicat dalam 3 warna yang berbeda, yaitu&nbsp;<a title=\"Kuning\" href=\"https://id.wikipedia.org/wiki/Kuning\">kuning</a>,&nbsp;<a title=\"Hijau\" href=\"https://id.wikipedia.org/wiki/Hijau\">hijau</a>, dan&nbsp;<a title=\"Merah\" href=\"https://id.wikipedia.org/wiki/Merah\">merah</a>. Bagian dari perahu paling atas mempunyai cat yang berwarna kuning. Dalam budaya Suku Tidung, warna kuning melambangkan kehormatan atau sesuatu yang ditinggikan. Oleh karena itulah warna kuning berada pada bagian tertinggi dari Padaw Tuju Dulung. Selain itu hanya satu tiang yang paling tinggi juga melambangkan bahwa satu penguasa tertinggi alam semesta yaitu Yang Maha Kuasa ALLAH SWT<sup id=\"cite_ref-adat_2-1\" class=\"reference\"></sup>.\n\nPada bagian tengah Padaw Tuju Dulung terpasang 5 buah tiang. Jumlah tiang yang ada sebanyak 5 buah merupakan perlambangan dari&nbsp;<a class=\"mw-redirect\" title=\"Shalat\" href=\"https://id.wikipedia.org/wiki/Shalat\">shalat</a>&nbsp;5 waktu yang dilakukan oleh Umat&nbsp;<a title=\"Islam\" href=\"https://id.wikipedia.org/wiki/Islam\">Islam</a>&nbsp;dalam seharinya. Tiang ini digunakan sebagai tempat untuk mengikat kain yang digunakan sebagai&nbsp;<a title=\"Atap\" href=\"https://id.wikipedia.org/wiki/Atap\">atap</a>.&nbsp;<a class=\"mw-disambig\" title=\"Kain\" href=\"https://id.wikipedia.org/wiki/Kain\">Kain</a>&nbsp;yang digunakan sebagai atap ini disebut dengan&nbsp;<a class=\"new\" title=\"Pari-pari (halaman belum tersedia)\" href=\"https://id.wikipedia.org/w/index.php?title=Pari-pari&amp;action=edit&amp;redlink=1\">pari-pari</a>. Tiang ini juga digunakan sebagai tempat untuk mengikat kain yang dihubungkan ke haluan perahu yang ada di kanan dan kiri<sup id=\"cite_ref-adat_2-2\" class=\"reference\"><a href=\"https://id.wikipedia.org/wiki/Festival_Iraw_Tengakayu#cite_note-adat-2\">[2]</a></sup><sup id=\"cite_ref-3\" class=\"reference\"><a href=\"https://id.wikipedia.org/wiki/Festival_Iraw_Tengakayu#cite_note-3\">[3]</a></sup><sup id=\"cite_ref-4\" class=\"reference\"><a href=\"https://id.wikipedia.org/wiki/Festival_Iraw_Tengakayu#cite_note-4\">[4]</a></sup>.\n\nPada bagian tengah perahu tepat di bawah pari-pari terdapat tempat yang mempunyai bentuk seperti&nbsp;<a title=\"Rumah\" href=\"https://id.wikipedia.org/wiki/Rumah\">rumah</a>. Tempat ini dilengkapi dengan atap bertingkat tiga yang disebut juga dengan nama&nbsp;<a class=\"new\" title=\"Meligay (halaman belum tersedia)\" href=\"https://id.wikipedia.org/w/index.php?title=Meligay&amp;action=edit&amp;redlink=1\">meligay</a>. Dimana di bawah meligay terdapat pintu pada keempat sisinya. Dibawah meligay inilah diletakkan sesaji yang berisi makanan yang selanjutnya akan dilepaskan di laut. Sesaji ini dalam masyarakat Tidung disebut&nbsp;<a title=\"Pakan\" href=\"https://id.wikipedia.org/wiki/Pakan\">pakan</a><sup id=\"cite_ref-adat_2-3\" class=\"reference\"></sup>.', 'Upacara', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2020-09-18 08:38:34', '2020-09-18 01:38:34', '', 9, 'http://localhost/ujiwordpress2/index.php/2020/09/18/9-revision-v1/', 0, 'revision', '', 0),
(45, 1, '2020-09-18 08:40:25', '2020-09-18 01:40:25', '', 'hut-kota-tarakan-iraw-tengkayu-x-menjadi', '', 'inherit', 'open', 'closed', '', 'hut-kota-tarakan-iraw-tengkayu-x-menjadi', '', '', '2020-09-18 08:40:25', '2020-09-18 01:40:25', '', 10, 'http://localhost/ujiwordpress2/wp-content/uploads/2020/09/hut-kota-tarakan-iraw-tengkayu-x-menjadi.jpg', 0, 'attachment', 'image/jpeg', 0),
(46, 1, '2020-09-18 08:40:28', '2020-09-18 01:40:28', 'Selain upacara ritual Padaw Tuju Dulung juga di meriahkan berbagai perlombaan, seperti:\n<ul>\n 	<li>Tarakan expo yang akan diperkenalkan seluruh budaya yang ada di kota Tarakan (Borneo). Beraneka ragam kreativitas dan produk-produk yang mencerminkan kota Tarakan di pamerkan di Tarakan expo ini</li>\n 	<li>parade musik akan diisi oleh grup-grup band asal bumi paguntaka dan luar tarakan untuk memperlihatkan kualitas mereka dalam bermusik. dan parade tari yang diramaikan oleh penari-penari lokal (Kota Tarakan) dan luar Kota Tarakan.</li>\n 	<li><a class=\"new\" title=\"Lomba Sumpit (halaman belum tersedia)\" href=\"https://id.wikipedia.org/w/index.php?title=Lomba_Sumpit&amp;action=edit&amp;redlink=1\">Lomba Sumpit</a>. Sumpit adalah senjata khas Suku Dayak yang juga salah satu suku asli Kota Tarakan, untuk melestarikan sumpit maka diadakan lomba sumpit. Peserta tidak hanya berasal dari Kota Tarakan akan tetapi berasal dari luar Kota Tarakan.</li>\n 	<li>Perahu atau Kapal hias, festifal makanan laut, Lari Maraton 10&nbsp;km, dan masih banyak lagi</li>\n</ul>', 'Perlombaan', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2020-09-18 08:40:28', '2020-09-18 01:40:28', '', 10, 'http://localhost/ujiwordpress2/index.php/2020/09/18/10-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Tak Berkategori', 'tak-berkategori', 0),
(2, 'Top Menu', 'top-menu', 0),
(3, 'Social Links Menu', 'social-links-menu', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(22, 2, 0),
(23, 2, 0),
(25, 2, 0),
(26, 3, 0),
(27, 3, 0),
(28, 3, 0),
(29, 3, 0),
(30, 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 3),
(3, 3, 'nav_menu', '', 0, 5);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'satriaade'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"3b0bdbdf57cae265859ce3415fb048587b1c33ba4cc9f2170641d59749347187\";a:4:{s:10:\"expiration\";i:1601600311;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36\";s:5:\"login\";i:1600390711;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'wp_user-settings', 'libraryContent=browse'),
(19, 1, 'wp_user-settings-time', '1600392065');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'satriaade', '$P$B0SDFXI5IzVNR1pTvnocSicrTmpCcN0', 'satriaade', 'satebee07@gmail.com', '', '2020-09-18 00:57:59', '', 0, 'satriaade');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
