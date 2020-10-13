-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 13, 2020 at 05:50 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `weebiz`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2020-10-08 00:19:41', '2020-10-08 00:19:41', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

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
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
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
(1, 'siteurl', 'http://localhost/weebiz', 'yes'),
(2, 'home', 'http://localhost/weebiz', 'yes'),
(3, 'blogname', 'Weebiz', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'nzmikejp@gmail.com', 'yes'),
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
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:109:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:35:\"service/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"service/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"service/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"service/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"service/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"service/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"service/([^/]+)/embed/?$\";s:40:\"index.php?service=$matches[1]&embed=true\";s:28:\"service/([^/]+)/trackback/?$\";s:34:\"index.php?service=$matches[1]&tb=1\";s:36:\"service/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?service=$matches[1]&paged=$matches[2]\";s:43:\"service/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?service=$matches[1]&cpage=$matches[2]\";s:32:\"service/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?service=$matches[1]&page=$matches[2]\";s:24:\"service/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"service/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"service/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"service/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"service/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"service/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=7&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:30:\"advanced-custom-fields/acf.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'weebiz', 'yes'),
(41, 'stylesheet', 'weebiz', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '48748', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:0:{}', 'yes'),
(78, 'widget_rss', 'a:0:{}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '7', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1617668381', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'initial_db_version', '48748', 'yes'),
(96, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(97, 'fresh_site', '0', 'yes'),
(98, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(104, 'cron', 'a:7:{i:1602562781;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1602591581;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1602634781;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1602634792;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1602634795;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1602807581;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(105, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'nonce_key', 'EA/M;F41B3O.[}Ryke!tBJmj~fp~R<],;3Z{#nr=r^B6oCb4)8J^v2Tg%dXpx|u6', 'no'),
(112, 'nonce_salt', '-atcSCc70QfQ9-NGMsfR2rXT/$=wuK1[z<Xl^.oxDAfE-PItobX|p0#P&;B:D<:|', 'no'),
(113, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'recovery_keys', 'a:1:{s:22:\"LnWb3E3jhkp28WFZl1MMxp\";a:2:{s:10:\"hashed_key\";s:34:\"$P$BQNykAsWPA1JFQtzCCdXSgu7iUiDmi/\";s:10:\"created_at\";i:1602545883;}}', 'yes'),
(118, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.5.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.5.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.5.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.5.1-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.5.1\";s:7:\"version\";s:5:\"5.5.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1602548488;s:15:\"version_checked\";s:5:\"5.5.1\";s:12:\"translations\";a:0:{}}', 'no'),
(120, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1602548489;s:7:\"checked\";a:3:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"5.9.1\";s:19:\"akismet/akismet.php\";s:5:\"4.1.6\";s:9:\"hello.php\";s:5:\"1.7.2\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"5.9.1\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.9.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.6\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(121, 'theme_mods_twentytwenty', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:0:{}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1602118033;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(124, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1602545643;s:7:\"checked\";a:4:{s:14:\"twentynineteen\";s:3:\"1.7\";s:15:\"twentyseventeen\";s:3:\"2.4\";s:12:\"twentytwenty\";s:3:\"1.5\";s:6:\"weebiz\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:3:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"1.7\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.1.7.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentyseventeen\";a:6:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"2.4\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.2.4.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.5.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}}s:12:\"translations\";a:0:{}}', 'no'),
(125, 'auth_key', '|$@,/@}%1wD]<^*:cr?#ZrQL3{c ^8WYtT&S)(w:{0,Xr]W6`JaIIV&O6vnbub)x', 'no'),
(126, 'auth_salt', 'WU %;%C<i;:zM<(yHiVr<lMEz8I1=tB=*c{hR/{n!J^gpZurhiH3R:rADA*$GB}9', 'no'),
(127, 'logged_in_key', 'J&7[j=i*4v=&#l Q|Nk|01j^y8H5ey`_{l(}zIPBdw~=]TitGuZo~XFlKA(rsl/]', 'no'),
(128, 'logged_in_salt', 'kPpb7~b-GTGEXu{)1x:4Z.bc,Xo_gNi+;sxKxq.r6O$s>R;5qGtVz31AMoI o!0P', 'no'),
(129, '_site_transient_timeout_browser_fd8d93e207340eab9a94f702d435cbd4', '1602721194', 'no'),
(130, '_site_transient_browser_fd8d93e207340eab9a94f702d435cbd4', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"86.0.4240.75\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(131, '_site_transient_timeout_php_check_b1f7d17548e7b3eac5214a006719f44e', '1602721195', 'no'),
(132, '_site_transient_php_check_b1f7d17548e7b3eac5214a006719f44e', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(134, 'can_compress_scripts', '1', 'no'),
(149, 'finished_updating_comment_type', '1', 'yes'),
(152, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(164, 'current_theme', 'Weebiz', 'yes'),
(165, 'theme_mods_weebiz', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:9:\"main-menu\";i:2;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(166, 'theme_switched', '', 'yes'),
(176, '_transient_health-check-site-status-result', '{\"good\":\"10\",\"recommended\":\"10\",\"critical\":\"0\"}', 'yes'),
(228, 'recently_activated', 'a:0:{}', 'yes'),
(229, 'acf_version', '5.9.1', 'yes'),
(246, 'recovery_mode_email_last_sent', '1602545883', 'yes'),
(249, '_site_transient_timeout_theme_roots', '1602550289', 'no'),
(250, '_site_transient_theme_roots', 'a:4:{s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:6:\"weebiz\";s:7:\"/themes\";}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_edit_lock', '1602116617:1'),
(4, 7, '_edit_lock', '1602546640:1'),
(5, 9, '_edit_lock', '1602203431:1'),
(6, 11, '_edit_lock', '1602471201:1'),
(7, 3, '_wp_trash_meta_status', 'draft'),
(8, 3, '_wp_trash_meta_time', '1602116851'),
(9, 3, '_wp_desired_post_slug', 'privacy-policy'),
(10, 2, '_wp_trash_meta_status', 'publish'),
(11, 2, '_wp_trash_meta_time', '1602116851'),
(12, 2, '_wp_desired_post_slug', 'sample-page'),
(13, 15, '_menu_item_type', 'post_type'),
(14, 15, '_menu_item_menu_item_parent', '0'),
(15, 15, '_menu_item_object_id', '11'),
(16, 15, '_menu_item_object', 'page'),
(17, 15, '_menu_item_target', ''),
(18, 15, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(19, 15, '_menu_item_xfn', ''),
(20, 15, '_menu_item_url', ''),
(22, 16, '_menu_item_type', 'post_type'),
(23, 16, '_menu_item_menu_item_parent', '0'),
(24, 16, '_menu_item_object_id', '9'),
(25, 16, '_menu_item_object', 'page'),
(26, 16, '_menu_item_target', ''),
(27, 16, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(28, 16, '_menu_item_xfn', ''),
(29, 16, '_menu_item_url', ''),
(31, 17, '_menu_item_type', 'post_type'),
(32, 17, '_menu_item_menu_item_parent', '0'),
(33, 17, '_menu_item_object_id', '7'),
(34, 17, '_menu_item_object', 'page'),
(35, 17, '_menu_item_target', ''),
(36, 17, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(37, 17, '_menu_item_xfn', ''),
(38, 17, '_menu_item_url', ''),
(40, 18, '_menu_item_type', 'post_type'),
(41, 18, '_menu_item_menu_item_parent', '0'),
(42, 18, '_menu_item_object_id', '5'),
(43, 18, '_menu_item_object', 'page'),
(44, 18, '_menu_item_target', ''),
(45, 18, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(46, 18, '_menu_item_xfn', ''),
(47, 18, '_menu_item_url', ''),
(49, 19, '_edit_last', '1'),
(50, 19, '_edit_lock', '1602471224:1'),
(51, 22, '_edit_last', '1'),
(52, 22, '_edit_lock', '1602464758:1'),
(53, 23, '_wp_attached_file', '2020/10/img1.jpg'),
(54, 23, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:355;s:6:\"height\";i:236;s:4:\"file\";s:16:\"2020/10/img1.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"img1-300x199.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:199;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"img1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(55, 22, 'summary', 'Because of our experience and background we are able to quickly work through the possibilities and ramifications for your business and then put the desired actions into place in a highly effective manner.'),
(56, 22, '_summary', 'field_5f83a81d96ded'),
(57, 22, 'photo', '23'),
(58, 22, '_photo', 'field_5f83a83896dee'),
(59, 25, '_edit_last', '1'),
(60, 25, '_edit_lock', '1602464837:1'),
(61, 25, 'summary', 'User experience (UX) design is the process design teams use to create products that provide meaningful and relevant experiences to users. This involves the design of the entire process of acquiring and integrating the product, including aspects of branding, design, usability and function.'),
(62, 25, '_summary', 'field_5f83a81d96ded'),
(63, 25, 'photo', '27'),
(64, 25, '_photo', 'field_5f83a83896dee'),
(65, 27, '_wp_attached_file', '2020/10/1_hp-yfKsmzsj711iLbM8eEw.jpeg'),
(66, 27, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1050;s:6:\"height\";i:720;s:4:\"file\";s:37:\"2020/10/1_hp-yfKsmzsj711iLbM8eEw.jpeg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:37:\"1_hp-yfKsmzsj711iLbM8eEw-300x206.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:206;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:38:\"1_hp-yfKsmzsj711iLbM8eEw-1024x702.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:702;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:37:\"1_hp-yfKsmzsj711iLbM8eEw-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:37:\"1_hp-yfKsmzsj711iLbM8eEw-768x527.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:527;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(67, 28, '_edit_last', '1'),
(68, 28, '_edit_lock', '1602465230:1'),
(69, 29, '_wp_attached_file', '2020/10/react.png'),
(70, 29, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:168;s:4:\"file\";s:17:\"2020/10/react.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"react-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(71, 30, '_wp_attached_file', '2020/10/react-1.png'),
(72, 30, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:168;s:4:\"file\";s:19:\"2020/10/react-1.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"react-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(73, 28, 'summary', 'React JS is a JavaScript library used in web development to build interactive elements on websites. But if you’re not familiar with JavaScript or JavaScript libraries, that’s not a helpful definition. So let’s take a step back and deal with those terms first.'),
(74, 28, '_summary', 'field_5f83a81d96ded'),
(75, 28, 'photo', '29'),
(76, 28, '_photo', 'field_5f83a83896dee'),
(86, 32, '_edit_last', '1'),
(87, 32, '_edit_lock', '1602474194:1'),
(88, 35, '_edit_last', '1'),
(89, 35, '_edit_lock', '1602474245:1'),
(90, 35, 'content', ''),
(91, 35, '_content', 'field_5f83c8edb2cee'),
(92, 35, 'icon', 'fa fa-cubes'),
(93, 35, '_icon', 'field_5f83c912b2cef'),
(94, 36, '_edit_last', '1'),
(95, 36, '_edit_lock', '1602545962:1'),
(96, 36, 'icon', 'fa fa-diamond'),
(97, 36, '_icon', 'field_5f83c912b2cef'),
(98, 37, '_edit_last', '1'),
(99, 37, '_edit_lock', '1602474071:1'),
(100, 37, 'icon', 'fa fa-cogs'),
(101, 37, '_icon', 'field_5f83c912b2cef'),
(102, 41, '_edit_last', '1'),
(103, 41, '_edit_lock', '1602557592:1'),
(104, 43, '_edit_last', '1'),
(105, 43, '_edit_lock', '1602557944:1'),
(106, 43, 'url', 'a:3:{s:5:\"title\";s:8:\"See more\";s:3:\"url\";s:23:\"https://www.google.com/\";s:6:\"target\";s:0:\"\";}'),
(107, 43, '_url', 'field_5f84f551969bb'),
(108, 44, '_edit_last', '1'),
(109, 44, '_edit_lock', '1602557926:1'),
(110, 44, 'url', 'a:3:{s:5:\"title\";s:12:\"More to come\";s:3:\"url\";s:23:\"https://www.google.com/\";s:6:\"target\";s:0:\"\";}'),
(111, 44, '_url', 'field_5f84f551969bb'),
(112, 45, '_edit_last', '1'),
(113, 45, '_edit_lock', '1602559402:1'),
(114, 45, 'url', 'a:3:{s:5:\"title\";s:15:\"This is the end\";s:3:\"url\";s:23:\"https://www.google.com/\";s:6:\"target\";s:0:\"\";}'),
(115, 45, '_url', 'field_5f84f551969bb'),
(118, 45, 'photo', '50'),
(119, 45, '_photo', 'field_5f85165d2d64d'),
(120, 48, '_wp_attached_file', '2020/10/bg-2.jpg'),
(121, 48, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:600;s:4:\"file\";s:16:\"2020/10/bg-2.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"bg-2-300x94.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:94;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:17:\"bg-2-1024x320.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:320;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"bg-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"bg-2-768x240.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:240;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:17:\"bg-2-1536x480.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(122, 49, '_wp_attached_file', '2020/10/bg-1.jpg'),
(123, 49, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:600;s:4:\"file\";s:16:\"2020/10/bg-1.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"bg-1-300x94.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:94;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:17:\"bg-1-1024x320.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:320;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"bg-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"bg-1-768x240.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:240;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:17:\"bg-1-1536x480.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(124, 50, '_wp_attached_file', '2020/10/bg-3.jpg'),
(125, 50, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:600;s:4:\"file\";s:16:\"2020/10/bg-3.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"bg-3-300x94.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:94;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:17:\"bg-3-1024x320.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:320;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"bg-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"bg-3-768x240.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:240;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:17:\"bg-3-1536x480.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(126, 44, 'photo', '48'),
(127, 44, '_photo', 'field_5f85165d2d64d'),
(128, 43, 'photo', '49'),
(129, 43, '_photo', 'field_5f85165d2d64d'),
(130, 52, '_edit_last', '1'),
(131, 52, '_edit_lock', '1602560431:1'),
(132, 58, '_edit_last', '1'),
(133, 58, '_edit_lock', '1602560396:1'),
(134, 59, '_wp_attached_file', '2020/10/team-01.jpg'),
(135, 59, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:497;s:6:\"height\";i:600;s:4:\"file\";s:19:\"2020/10/team-01.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"team-01-249x300.jpg\";s:5:\"width\";i:249;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"team-01-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(136, 58, 'photo', '59'),
(137, 58, '_photo', 'field_5f851e570a2bb'),
(138, 58, 'details', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'),
(139, 58, '_details', 'field_5f851e740a2bc'),
(140, 58, 'name', 'Sarah Smith'),
(141, 58, '_name', 'field_5f851e9e0a2bd'),
(142, 58, 'position', 'Founder & CEO'),
(143, 58, '_position', 'field_5f851ebf0a2be'),
(144, 60, '_edit_last', '1'),
(145, 60, '_edit_lock', '1602560667:1'),
(146, 61, '_wp_attached_file', '2020/10/team-02.jpg'),
(147, 61, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:497;s:6:\"height\";i:600;s:4:\"file\";s:19:\"2020/10/team-02.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"team-02-249x300.jpg\";s:5:\"width\";i:249;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"team-02-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(148, 62, '_wp_attached_file', '2020/10/team-03.jpg'),
(149, 62, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:497;s:6:\"height\";i:600;s:4:\"file\";s:19:\"2020/10/team-03.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"team-03-249x300.jpg\";s:5:\"width\";i:249;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"team-03-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(150, 63, '_wp_attached_file', '2020/10/team-04.jpg'),
(151, 63, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:497;s:6:\"height\";i:600;s:4:\"file\";s:19:\"2020/10/team-04.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"team-04-249x300.jpg\";s:5:\"width\";i:249;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"team-04-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(152, 64, '_wp_attached_file', '2020/10/team-05.jpg'),
(153, 64, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:370;s:6:\"height\";i:370;s:4:\"file\";s:19:\"2020/10/team-05.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"team-05-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"team-05-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(154, 65, '_wp_attached_file', '2020/10/team-06.jpg'),
(155, 65, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:390;s:6:\"height\";i:390;s:4:\"file\";s:19:\"2020/10/team-06.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"team-06-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"team-06-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(156, 66, '_wp_attached_file', '2020/10/team-07.jpg'),
(157, 66, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:390;s:6:\"height\";i:390;s:4:\"file\";s:19:\"2020/10/team-07.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"team-07-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"team-07-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(158, 67, '_wp_attached_file', '2020/10/team-08.jpg'),
(159, 67, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:390;s:6:\"height\";i:390;s:4:\"file\";s:19:\"2020/10/team-08.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"team-08-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"team-08-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(160, 68, '_wp_attached_file', '2020/10/team-09.jpg'),
(161, 68, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:390;s:6:\"height\";i:390;s:4:\"file\";s:19:\"2020/10/team-09.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"team-09-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"team-09-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(162, 60, 'photo', '61'),
(163, 60, '_photo', 'field_5f851e570a2bb'),
(164, 60, 'position', 'Creative Studio Head'),
(165, 60, '_position', 'field_5f851ebf0a2be');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
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
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2020-10-08 00:19:41', '2020-10-08 00:19:41', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2020-10-08 00:19:41', '2020-10-08 00:19:41', '', 0, 'http://localhost/weebiz/?p=1', 0, 'post', '', 1),
(2, 1, '2020-10-08 00:19:41', '2020-10-08 00:19:41', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/weebiz/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2020-10-08 00:27:31', '2020-10-08 00:27:31', '', 0, 'http://localhost/weebiz/?page_id=2', 0, 'page', '', 0),
(3, 1, '2020-10-08 00:19:41', '2020-10-08 00:19:41', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://localhost/weebiz.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'trash', 'closed', 'open', '', 'privacy-policy__trashed', '', '', '2020-10-08 00:27:31', '2020-10-08 00:27:31', '', 0, 'http://localhost/weebiz/?page_id=3', 0, 'page', '', 0),
(4, 1, '2020-10-08 00:19:55', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-10-08 00:19:55', '0000-00-00 00:00:00', '', 0, 'http://localhost/weebiz/?p=4', 0, 'post', '', 0),
(5, 1, '2020-10-08 00:26:07', '2020-10-08 00:26:07', '<!-- wp:paragraph -->\n<p>This is a contact page</p>\n<!-- /wp:paragraph -->', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2020-10-08 00:26:07', '2020-10-08 00:26:07', '', 0, 'http://localhost/weebiz/?page_id=5', 0, 'page', '', 0),
(6, 1, '2020-10-08 00:26:07', '2020-10-08 00:26:07', '<!-- wp:paragraph -->\n<p>This is a contact page</p>\n<!-- /wp:paragraph -->', 'Contact', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2020-10-08 00:26:07', '2020-10-08 00:26:07', '', 5, 'http://localhost/weebiz/index.php/2020/10/08/5-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2020-10-08 00:26:26', '2020-10-08 00:26:26', '<!-- wp:paragraph {\"align\":\"center\"} -->\n<p class=\"has-text-align-center\">This is a home page</p>\n<!-- /wp:paragraph -->', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2020-10-12 23:53:02', '2020-10-12 23:53:02', '', 0, 'http://localhost/weebiz/?page_id=7', 0, 'page', '', 0),
(8, 1, '2020-10-08 00:26:26', '2020-10-08 00:26:26', '<!-- wp:paragraph -->\n<p>This is a home page</p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2020-10-08 00:26:26', '2020-10-08 00:26:26', '', 7, 'http://localhost/weebiz/index.php/2020/10/08/7-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2020-10-08 00:26:59', '2020-10-08 00:26:59', '<!-- wp:paragraph -->\n<p>This is a portfolio page</p>\n<!-- /wp:paragraph -->', 'Portfolio', '', 'publish', 'closed', 'closed', '', 'portfolio', '', '', '2020-10-08 00:26:59', '2020-10-08 00:26:59', '', 0, 'http://localhost/weebiz/?page_id=9', 0, 'page', '', 0),
(10, 1, '2020-10-08 00:26:59', '2020-10-08 00:26:59', '<!-- wp:paragraph -->\n<p>This is a portfolio page</p>\n<!-- /wp:paragraph -->', 'Portfolio', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2020-10-08 00:26:59', '2020-10-08 00:26:59', '', 9, 'http://localhost/weebiz/index.php/2020/10/08/9-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2020-10-08 00:27:20', '2020-10-08 00:27:20', '<!-- wp:paragraph -->\n<p>This is a services page</p>\n<!-- /wp:paragraph -->', 'Services', '', 'publish', 'closed', 'closed', '', 'services', '', '', '2020-10-08 00:27:20', '2020-10-08 00:27:20', '', 0, 'http://localhost/weebiz/?page_id=11', 0, 'page', '', 0),
(12, 1, '2020-10-08 00:27:20', '2020-10-08 00:27:20', '<!-- wp:paragraph -->\n<p>This is a services page</p>\n<!-- /wp:paragraph -->', 'Services', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2020-10-08 00:27:20', '2020-10-08 00:27:20', '', 11, 'http://localhost/weebiz/index.php/2020/10/08/11-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2020-10-08 00:27:31', '2020-10-08 00:27:31', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://localhost/weebiz.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2020-10-08 00:27:31', '2020-10-08 00:27:31', '', 3, 'http://localhost/weebiz/index.php/2020/10/08/3-revision-v1/', 0, 'revision', '', 0),
(14, 1, '2020-10-08 00:27:31', '2020-10-08 00:27:31', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/weebiz/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2020-10-08 00:27:31', '2020-10-08 00:27:31', '', 2, 'http://localhost/weebiz/index.php/2020/10/08/2-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2020-10-08 00:28:11', '2020-10-08 00:28:11', ' ', '', '', 'publish', 'closed', 'closed', '', '15', '', '', '2020-10-08 02:39:47', '2020-10-08 02:39:47', '', 0, 'http://localhost/weebiz/?p=15', 3, 'nav_menu_item', '', 0),
(16, 1, '2020-10-08 00:28:11', '2020-10-08 00:28:11', ' ', '', '', 'publish', 'closed', 'closed', '', '16', '', '', '2020-10-08 02:39:47', '2020-10-08 02:39:47', '', 0, 'http://localhost/weebiz/?p=16', 2, 'nav_menu_item', '', 0),
(17, 1, '2020-10-08 00:28:11', '2020-10-08 00:28:11', ' ', '', '', 'publish', 'closed', 'closed', '', '17', '', '', '2020-10-08 02:39:47', '2020-10-08 02:39:47', '', 0, 'http://localhost/weebiz/?p=17', 1, 'nav_menu_item', '', 0),
(18, 1, '2020-10-08 00:28:11', '2020-10-08 00:28:11', ' ', '', '', 'publish', 'closed', 'closed', '', '18', '', '', '2020-10-08 02:39:47', '2020-10-08 02:39:47', '', 0, 'http://localhost/weebiz/?p=18', 4, 'nav_menu_item', '', 0),
(19, 1, '2020-10-12 00:52:40', '2020-10-12 00:52:40', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"service\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Service Group', 'service-group', 'publish', 'closed', 'closed', '', 'group_5f83a80b9a54c', '', '', '2020-10-12 00:52:40', '2020-10-12 00:52:40', '', 0, 'http://localhost/weebiz/?post_type=acf-field-group&#038;p=19', 0, 'acf-field-group', '', 0),
(20, 1, '2020-10-12 00:52:40', '2020-10-12 00:52:40', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Summary', 'summary', 'publish', 'closed', 'closed', '', 'field_5f83a81d96ded', '', '', '2020-10-12 00:52:40', '2020-10-12 00:52:40', '', 19, 'http://localhost/weebiz/?post_type=acf-field&p=20', 0, 'acf-field', '', 0),
(21, 1, '2020-10-12 00:52:40', '2020-10-12 00:52:40', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Photo', 'photo', 'publish', 'closed', 'closed', '', 'field_5f83a83896dee', '', '', '2020-10-12 00:52:40', '2020-10-12 00:52:40', '', 19, 'http://localhost/weebiz/?post_type=acf-field&p=21', 1, 'acf-field', '', 0),
(22, 1, '2020-10-12 01:05:18', '2020-10-12 01:05:18', 'Because of our experience and background, we are able to quickly work through the possibilities and ramifications for your business and then put the desired actions into place in a highly effective manner.\r\n\r\n\"Right from the start, Alex was excellent at working out what we needed and how we could rationalise our processes to make things more efficient. In any project, the support is as important, if not more so than the development and the Netinsites team have been fantastic.\"Chris Curlett Secretary/Treasurer of the New Zealand Shareholders Association\r\n\r\n&nbsp;', 'Consulting', '', 'publish', 'closed', 'closed', '', 'consulting', '', '', '2020-10-12 01:05:18', '2020-10-12 01:05:18', '', 0, 'http://localhost/weebiz/?post_type=service&#038;p=22', 0, 'service', '', 0),
(23, 1, '2020-10-12 00:58:54', '2020-10-12 00:58:54', '', 'img1', '', 'inherit', 'open', 'closed', '', 'img1', '', '', '2020-10-12 00:58:54', '2020-10-12 00:58:54', '', 22, 'http://localhost/weebiz/wp-content/uploads/2020/10/img1.jpg', 0, 'attachment', 'image/jpeg', 0),
(24, 1, '2020-10-12 01:05:22', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-10-12 01:05:22', '0000-00-00 00:00:00', '', 0, 'http://localhost/weebiz/?post_type=service&p=24', 0, 'service', '', 0),
(25, 1, '2020-10-12 01:08:05', '2020-10-12 01:08:05', '<h2 class=\"out-top-medium\">What is User Experience (UX) Design?</h2>\r\n<div class=\"rteContent rteContent--headingSpacing\">\r\n\r\nUser experience (UX) design is the process design teams use to create products that provide meaningful and relevant experiences to users. This involves the design of the entire process of acquiring and integrating the product, including aspects of branding, design, usability and function.\r\n\r\n</div>', 'UX Design', '', 'publish', 'closed', 'closed', '', 'ux-design', '', '', '2020-10-12 01:09:38', '2020-10-12 01:09:38', '', 0, 'http://localhost/weebiz/?post_type=service&#038;p=25', 0, 'service', '', 0),
(26, 1, '2020-10-12 01:09:24', '2020-10-12 01:09:24', '<h2 class=\"out-top-medium\">What is User Experience (UX) Design?</h2>\n<div class=\"rteContent rteContent--headingSpacing\">\n\nUser experience (UX) design is the process design teams use to create products that provide meaningful and relevant experiences to users. This involves the design of the entire process of acquiring and integrating the product, including aspects of branding, design, usability and function.\n\n</div>', 'UX Design', '', 'inherit', 'closed', 'closed', '', '25-autosave-v1', '', '', '2020-10-12 01:09:24', '2020-10-12 01:09:24', '', 25, 'http://localhost/weebiz/25-autosave-v1/', 0, 'revision', '', 0),
(27, 1, '2020-10-12 01:09:32', '2020-10-12 01:09:32', '', '1_hp-yfKsmzsj711iLbM8eEw', '', 'inherit', 'open', 'closed', '', '1_hp-yfksmzsj711ilbm8eew', '', '', '2020-10-12 01:09:32', '2020-10-12 01:09:32', '', 25, 'http://localhost/weebiz/wp-content/uploads/2020/10/1_hp-yfKsmzsj711iLbM8eEw.jpeg', 0, 'attachment', 'image/jpeg', 0),
(28, 1, '2020-10-12 01:12:51', '2020-10-12 01:12:51', '<h2>What is React JS?</h2>\r\nReact JS is a JavaScript library used in web development to build interactive elements on websites. But if you’re not familiar with JavaScript or JavaScript libraries, that’s not a helpful definition. So let’s take a step back and deal with those terms first.\r\n<h3 id=\"javascript\">WHAT IS JAVASCRIPT?</h3>\r\nYou can read all about JavaScript in our complete Tech 101 JavaScript guide, but here’s the TLDR:\r\n<ul>\r\n 	<li>JavaScript (or JS) is a scripting language used to create and control dynamic web content.</li>\r\n 	<li>Dynamic web content includes things like animated graphics, photo slideshows, and interactive forms.</li>\r\n 	<li>Anytime you visit a website where things move, refresh, or otherwise change on your screen without requiring you to manually reload a web page, there’s a very good chance JS is the language making it happen.</li>\r\n</ul>\r\nOr try this one-sentence definition: JavaScript is a super important coding language used to add animated and interactive features to websites or web applications (on top of the basic, static structures created by languages like HTML and CSS).', 'React Development', '', 'publish', 'closed', 'closed', '', 'react-development', '', '', '2020-10-12 01:14:47', '2020-10-12 01:14:47', '', 0, 'http://localhost/weebiz/?post_type=service&#038;p=28', 0, 'service', '', 0),
(29, 1, '2020-10-12 01:11:06', '2020-10-12 01:11:06', '', 'react', '', 'inherit', 'open', 'closed', '', 'react', '', '', '2020-10-12 01:11:06', '2020-10-12 01:11:06', '', 28, 'http://localhost/weebiz/wp-content/uploads/2020/10/react.png', 0, 'attachment', 'image/png', 0),
(30, 1, '2020-10-12 01:12:28', '2020-10-12 01:12:28', '', 'react', '', 'inherit', 'open', 'closed', '', 'react-2', '', '', '2020-10-12 01:12:28', '2020-10-12 01:12:28', '', 28, 'http://localhost/weebiz/wp-content/uploads/2020/10/react-1.png', 0, 'attachment', 'image/png', 0),
(32, 1, '2020-10-12 03:11:15', '2020-10-12 03:11:15', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"feature\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Features Group', 'features-group', 'publish', 'closed', 'closed', '', 'group_5f83c8a74bdc9', '', '', '2020-10-12 03:38:54', '2020-10-12 03:38:54', '', 0, 'http://localhost/weebiz/?post_type=acf-field-group&#038;p=32', 0, 'acf-field-group', '', 0),
(34, 1, '2020-10-12 03:11:15', '2020-10-12 03:11:15', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:11:\"fa fa-cubes\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Icon', 'icon', 'publish', 'closed', 'closed', '', 'field_5f83c912b2cef', '', '', '2020-10-12 03:38:54', '2020-10-12 03:38:54', '', 32, 'http://localhost/weebiz/?post_type=acf-field&#038;p=34', 0, 'acf-field', '', 0),
(35, 1, '2020-10-12 03:33:34', '2020-10-12 03:33:34', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et magna aliqua.', '100+ Components', '', 'publish', 'closed', 'closed', '', '100-components', '', '', '2020-10-12 03:46:02', '2020-10-12 03:46:02', '', 0, 'http://localhost/weebiz/?post_type=feature&#038;p=35', 0, 'feature', '', 0),
(36, 1, '2020-10-12 03:42:12', '2020-10-12 03:42:12', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et magna aliqua.', 'Clean Design', '', 'publish', 'closed', 'closed', '', 'clean-design', '', '', '2020-10-12 03:42:12', '2020-10-12 03:42:12', '', 0, 'http://localhost/weebiz/?post_type=feature&#038;p=36', 0, 'feature', '', 0),
(37, 1, '2020-10-12 03:42:44', '2020-10-12 03:42:44', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et magna aliqua.', 'Easy to Customize', '', 'publish', 'closed', 'closed', '', 'easy-to-customize', '', '', '2020-10-12 03:42:44', '2020-10-12 03:42:44', '', 0, 'http://localhost/weebiz/?post_type=feature&#038;p=37', 0, 'feature', '', 0),
(38, 1, '2020-10-12 23:41:47', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-10-12 23:41:47', '0000-00-00 00:00:00', '', 0, 'http://localhost/weebiz/?post_type=feature&p=38', 0, 'feature', '', 0),
(39, 1, '2020-10-12 23:41:53', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-10-12 23:41:53', '0000-00-00 00:00:00', '', 0, 'http://localhost/weebiz/?post_type=feature&p=39', 0, 'feature', '', 0),
(40, 1, '2020-10-12 23:53:02', '2020-10-12 23:53:02', '<!-- wp:paragraph {\"align\":\"center\"} -->\n<p class=\"has-text-align-center\">This is a home page</p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2020-10-12 23:53:02', '2020-10-12 23:53:02', '', 7, 'http://localhost/weebiz/7-revision-v1/', 0, 'revision', '', 0),
(41, 1, '2020-10-13 00:32:25', '2020-10-13 00:32:25', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"slide\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Slide Group', 'slide-group', 'publish', 'closed', 'closed', '', 'group_5f84f54394c7c', '', '', '2020-10-13 02:53:03', '2020-10-13 02:53:03', '', 0, 'http://localhost/weebiz/?post_type=acf-field-group&#038;p=41', 0, 'acf-field-group', '', 0),
(42, 1, '2020-10-13 00:32:25', '2020-10-13 00:32:25', 'a:6:{s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";}', 'URL', 'url', 'publish', 'closed', 'closed', '', 'field_5f84f551969bb', '', '', '2020-10-13 00:39:43', '2020-10-13 00:39:43', '', 41, 'http://localhost/weebiz/?post_type=acf-field&#038;p=42', 0, 'acf-field', '', 0),
(43, 1, '2020-10-13 00:37:44', '2020-10-13 00:37:44', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit\r\nCurabitur ultricies nisi Nam eget dui. Etiam rhoncus', 'Helium - Bootstrap 4 UI Kit', '', 'publish', 'closed', 'closed', '', 'helium-bootstrap-4-ui-kit', '', '', '2020-10-13 03:01:25', '2020-10-13 03:01:25', '', 0, 'http://localhost/weebiz/?post_type=slide&#038;p=43', 0, 'slide', '', 0),
(44, 1, '2020-10-13 00:42:41', '2020-10-13 00:42:41', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit\r\nCurabitur ultricies nisi Nam eget dui. Etiam rhoncus', 'Cutting-edge Features', '', 'publish', 'closed', 'closed', '', 'cutting-edge-features', '', '', '2020-10-13 03:01:08', '2020-10-13 03:01:08', '', 0, 'http://localhost/weebiz/?post_type=slide&#038;p=44', 0, 'slide', '', 0),
(45, 1, '2020-10-13 00:43:32', '2020-10-13 00:43:32', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit\r\nCurabitur ultricies nisi Nam eget dui. Etiam rhoncus', '100+ UI Blocks & Components', '', 'publish', 'closed', 'closed', '', '100-ui-blocks-components', '', '', '2020-10-13 03:01:37', '2020-10-13 03:01:37', '', 0, 'http://localhost/weebiz/?post_type=slide&#038;p=45', 0, 'slide', '', 0),
(46, 1, '2020-10-13 02:53:03', '2020-10-13 02:53:03', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Photo', 'photo', 'publish', 'closed', 'closed', '', 'field_5f85165d2d64d', '', '', '2020-10-13 02:53:03', '2020-10-13 02:53:03', '', 41, 'http://localhost/weebiz/?post_type=acf-field&p=46', 1, 'acf-field', '', 0),
(48, 1, '2020-10-13 02:59:57', '2020-10-13 02:59:57', '', 'bg-2', '', 'inherit', 'open', 'closed', '', 'bg-2', '', '', '2020-10-13 03:01:08', '2020-10-13 03:01:08', '', 44, 'http://localhost/weebiz/wp-content/uploads/2020/10/bg-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(49, 1, '2020-10-13 02:59:57', '2020-10-13 02:59:57', '', 'bg-1', '', 'inherit', 'open', 'closed', '', 'bg-1', '', '', '2020-10-13 03:00:56', '2020-10-13 03:00:56', '', 45, 'http://localhost/weebiz/wp-content/uploads/2020/10/bg-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(50, 1, '2020-10-13 02:59:58', '2020-10-13 02:59:58', '', 'bg-3', '', 'inherit', 'open', 'closed', '', 'bg-3', '', '', '2020-10-13 03:00:45', '2020-10-13 03:00:45', '', 45, 'http://localhost/weebiz/wp-content/uploads/2020/10/bg-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(51, 1, '2020-10-13 03:25:50', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-10-13 03:25:50', '0000-00-00 00:00:00', '', 0, 'http://localhost/weebiz/?post_type=profile&p=51', 0, 'profile', '', 0),
(52, 1, '2020-10-13 03:28:26', '2020-10-13 03:28:26', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"profile\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Profile Group', 'profile-group', 'publish', 'closed', 'closed', '', 'group_5f851e4b6844d', '', '', '2020-10-13 03:42:44', '2020-10-13 03:42:44', '', 0, 'http://localhost/weebiz/?post_type=acf-field-group&#038;p=52', 0, 'acf-field-group', '', 0),
(53, 1, '2020-10-13 03:28:26', '2020-10-13 03:28:26', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Photo', 'photo', 'publish', 'closed', 'closed', '', 'field_5f851e570a2bb', '', '', '2020-10-13 03:28:26', '2020-10-13 03:28:26', '', 52, 'http://localhost/weebiz/?post_type=acf-field&p=53', 0, 'acf-field', '', 0),
(56, 1, '2020-10-13 03:28:26', '2020-10-13 03:28:26', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Position', 'position', 'publish', 'closed', 'closed', '', 'field_5f851ebf0a2be', '', '', '2020-10-13 03:42:44', '2020-10-13 03:42:44', '', 52, 'http://localhost/weebiz/?post_type=acf-field&#038;p=56', 1, 'acf-field', '', 0),
(58, 1, '2020-10-13 03:37:12', '2020-10-13 03:37:12', '<div>\r\n<div>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</div>\r\n</div>', 'Sarah Smith', '', 'publish', 'closed', 'closed', '', 'sarah-smith', '', '', '2020-10-13 03:37:46', '2020-10-13 03:37:46', '', 0, 'http://localhost/weebiz/?post_type=profile&#038;p=58', 0, 'profile', '', 0),
(59, 1, '2020-10-13 03:36:30', '2020-10-13 03:36:30', '', 'team-01', '', 'inherit', 'open', 'closed', '', 'team-01', '', '', '2020-10-13 03:36:30', '2020-10-13 03:36:30', '', 58, 'http://localhost/weebiz/wp-content/uploads/2020/10/team-01.jpg', 0, 'attachment', 'image/jpeg', 0),
(60, 1, '2020-10-13 03:44:27', '2020-10-13 03:44:27', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Sommer Christian', '', 'publish', 'closed', 'closed', '', 'sommer-christian', '', '', '2020-10-13 03:44:27', '2020-10-13 03:44:27', '', 0, 'http://localhost/weebiz/?post_type=profile&#038;p=60', 0, 'profile', '', 0),
(61, 1, '2020-10-13 03:44:04', '2020-10-13 03:44:04', '', 'team-02', '', 'inherit', 'open', 'closed', '', 'team-02', '', '', '2020-10-13 03:44:04', '2020-10-13 03:44:04', '', 60, 'http://localhost/weebiz/wp-content/uploads/2020/10/team-02.jpg', 0, 'attachment', 'image/jpeg', 0),
(62, 1, '2020-10-13 03:44:05', '2020-10-13 03:44:05', '', 'team-03', '', 'inherit', 'open', 'closed', '', 'team-03', '', '', '2020-10-13 03:44:05', '2020-10-13 03:44:05', '', 60, 'http://localhost/weebiz/wp-content/uploads/2020/10/team-03.jpg', 0, 'attachment', 'image/jpeg', 0),
(63, 1, '2020-10-13 03:44:05', '2020-10-13 03:44:05', '', 'team-04', '', 'inherit', 'open', 'closed', '', 'team-04', '', '', '2020-10-13 03:44:05', '2020-10-13 03:44:05', '', 60, 'http://localhost/weebiz/wp-content/uploads/2020/10/team-04.jpg', 0, 'attachment', 'image/jpeg', 0),
(64, 1, '2020-10-13 03:44:05', '2020-10-13 03:44:05', '', 'team-05', '', 'inherit', 'open', 'closed', '', 'team-05', '', '', '2020-10-13 03:44:05', '2020-10-13 03:44:05', '', 60, 'http://localhost/weebiz/wp-content/uploads/2020/10/team-05.jpg', 0, 'attachment', 'image/jpeg', 0),
(65, 1, '2020-10-13 03:44:05', '2020-10-13 03:44:05', '', 'team-06', '', 'inherit', 'open', 'closed', '', 'team-06', '', '', '2020-10-13 03:44:05', '2020-10-13 03:44:05', '', 60, 'http://localhost/weebiz/wp-content/uploads/2020/10/team-06.jpg', 0, 'attachment', 'image/jpeg', 0),
(66, 1, '2020-10-13 03:44:05', '2020-10-13 03:44:05', '', 'team-07', '', 'inherit', 'open', 'closed', '', 'team-07', '', '', '2020-10-13 03:44:05', '2020-10-13 03:44:05', '', 60, 'http://localhost/weebiz/wp-content/uploads/2020/10/team-07.jpg', 0, 'attachment', 'image/jpeg', 0),
(67, 1, '2020-10-13 03:44:06', '2020-10-13 03:44:06', '', 'team-08', '', 'inherit', 'open', 'closed', '', 'team-08', '', '', '2020-10-13 03:44:06', '2020-10-13 03:44:06', '', 60, 'http://localhost/weebiz/wp-content/uploads/2020/10/team-08.jpg', 0, 'attachment', 'image/jpeg', 0),
(68, 1, '2020-10-13 03:44:06', '2020-10-13 03:44:06', '', 'team-09', '', 'inherit', 'open', 'closed', '', 'team-09', '', '', '2020-10-13 03:44:06', '2020-10-13 03:44:06', '', 60, 'http://localhost/weebiz/wp-content/uploads/2020/10/team-09.jpg', 0, 'attachment', 'image/jpeg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'main', 'main', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(15, 2, 0),
(16, 2, 0),
(17, 2, 0),
(18, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 4);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
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
(16, 1, 'session_tokens', 'a:1:{s:64:\"6007b6959f8883ff6f739a8898aed1dab147bd692a33a0acf71671a93f189070\";a:4:{s:10:\"expiration\";i:1602635276;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36\";s:5:\"login\";i:1602462476;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(20, 1, 'nav_menu_recently_edited', '2'),
(21, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce'),
(22, 1, 'wp_user-settings-time', '1602465370');

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
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BS55JMazwI5tOOOYUSWWGN4PwdME8J1', 'admin', 'nzmikejp@gmail.com', 'http://localhost/weebiz', '2020-10-08 00:19:41', '', 0, 'admin');

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
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

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
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=254;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=166;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
