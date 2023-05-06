-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 06, 2023 at 04:35 PM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `redacre`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2023-05-03 07:03:00', '2023-05-03 07:03:00', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://en.gravatar.com/\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=MyISAM AUTO_INCREMENT=733 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://redacre.test', 'yes'),
(2, 'home', 'http://redacre.test', 'yes'),
(3, 'blogname', 'Red Acre Test Website', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'smot1@inbox.lv', 'yes'),
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
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:94:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=12&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:1;s:27:\"wp-super-cache/wp-cache.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'redacre', 'yes'),
(41, 'stylesheet', 'redacre', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '53496', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '0', 'yes'),
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
(76, 'widget_categories', 'a:0:{}', 'yes'),
(77, 'widget_text', 'a:0:{}', 'yes'),
(78, 'widget_rss', 'a:0:{}', 'yes'),
(79, 'uninstall_plugins', 'a:2:{s:27:\"wp-super-cache/wp-cache.php\";s:22:\"wpsupercache_uninstall\";s:35:\"litespeed-cache/litespeed-cache.php\";s:47:\"LiteSpeed\\Activation::uninstall_litespeed_cache\";}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '12', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1698649380', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '53496', 'yes'),
(100, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'user_count', '1', 'no'),
(103, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(191, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(213, 'options_socials_1_icon', '139', 'no'),
(214, '_options_socials_1_icon', 'field_6452baad42684', 'no'),
(215, 'options_socials_2_social_url', 'a:3:{s:5:\"title\";s:19:\"Find us on Facebook\";s:3:\"url\";s:24:\"https://www.facebook.com\";s:6:\"target\";s:6:\"_blank\";}', 'no'),
(216, '_options_socials_2_social_url', 'field_6452b8c742683', 'no'),
(217, 'options_socials_2_icon', '140', 'no'),
(218, '_options_socials_2_icon', 'field_6452baad42684', 'no'),
(219, 'options_socials_3_social_url', 'a:3:{s:5:\"title\";s:19:\"Find us on LinkedIn\";s:3:\"url\";s:24:\"https://www.linkedin.com\";s:6:\"target\";s:6:\"_blank\";}', 'no'),
(220, '_options_socials_3_social_url', 'field_6452b8c742683', 'no'),
(221, 'options_socials_3_icon', '141', 'no'),
(222, '_options_socials_3_icon', 'field_6452baad42684', 'no'),
(223, 'options_socials', '4', 'no'),
(224, '_options_socials', 'field_6452b8b542682', 'no'),
(225, 'options_disclousure', 'RISK DISCLOSURE:*The services and information provided by The Bored Traders Club are not directed at citizens or residents in the USA. Additionally, they are not intended for distribution to or used by any individual in any jurisdiction where such distribution would be contrary to local law or regulation.', 'no'),
(226, '_options_disclousure', 'field_6452bb2b42685', 'no'),
(227, 'options_bottom_links_0_link', 'a:3:{s:5:\"title\";s:15:\"Risk Disclosure\";s:3:\"url\";s:36:\"http://redacre.test/risk-disclosure/\";s:6:\"target\";s:0:\"\";}', 'no'),
(228, '_options_bottom_links_0_link', 'field_6452bba242687', 'no'),
(229, 'options_bottom_links_1_link', 'a:3:{s:5:\"title\";s:18:\"Terms & Conditions\";s:3:\"url\";s:43:\"http://redacre.test/about/terms-conditions/\";s:6:\"target\";s:0:\"\";}', 'no'),
(230, '_options_bottom_links_1_link', 'field_6452bba242687', 'no'),
(231, 'options_bottom_links_2_link', 'a:3:{s:5:\"title\";s:14:\"Privacy Policy\";s:3:\"url\";s:41:\"http://redacre.test/about/privacy-policy/\";s:6:\"target\";s:0:\"\";}', 'no'),
(232, '_options_bottom_links_2_link', 'field_6452bba242687', 'no'),
(233, 'options_bottom_links', '3', 'no'),
(234, '_options_bottom_links', 'field_6452bb7942686', 'no'),
(236, 'options_column_1_title', '', 'no'),
(237, '_options_column_1_title', 'field_6452bda371a81', 'no'),
(238, 'options_column_1_links_0_link', 'a:3:{s:5:\"title\";s:8:\"Features\";s:3:\"url\";s:29:\"http://redacre.test/features/\";s:6:\"target\";s:0:\"\";}', 'no'),
(239, '_options_column_1_links_0_link', 'field_6452bd217ae10', 'no'),
(240, 'options_column_1_links_1_link', 'a:3:{s:5:\"title\";s:18:\"Products & Spreads\";s:3:\"url\";s:37:\"http://redacre.test/products-spreads/\";s:6:\"target\";s:0:\"\";}', 'no'),
(105, 'cron', 'a:12:{i:1683391133;a:1:{s:11:\"wp_cache_gc\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1683392580;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1683399780;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1683399796;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1683420199;a:1:{s:26:\"wp_cache_full_preload_hook\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1683442980;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1683442996;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1683443000;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1683470874;a:1:{s:13:\"wpseo-reindex\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1683474576;a:1:{s:31:\"wpseo_permalink_structure_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1683788580;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(106, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(121, 'recovery_keys', 'a:0:{}', 'yes'),
(122, 'https_detection_errors', 'a:1:{s:20:\"https_request_failed\";a:1:{i:0;s:21:\"HTTPS request failed.\";}}', 'yes'),
(408, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-6.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-6.2.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-6.2-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-6.2-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"6.2\";s:7:\"version\";s:3:\"6.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1683384460;s:15:\"version_checked\";s:3:\"6.2\";s:12:\"translations\";a:0:{}}', 'no'),
(409, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1683388114;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:27:\"wp-super-cache/wp-cache.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/wp-super-cache\";s:4:\"slug\";s:14:\"wp-super-cache\";s:6:\"plugin\";s:27:\"wp-super-cache/wp-cache.php\";s:11:\"new_version\";s:5:\"1.9.4\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/wp-super-cache/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/wp-super-cache.1.9.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/wp-super-cache/assets/icon-256x256.png?rev=1095422\";s:2:\"1x\";s:67:\"https://ps.w.org/wp-super-cache/assets/icon-128x128.png?rev=1095422\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/wp-super-cache/assets/banner-1544x500.png?rev=1082414\";s:2:\"1x\";s:69:\"https://ps.w.org/wp-super-cache/assets/banner-772x250.png?rev=1082414\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.9\";}s:24:\"wordpress-seo/wp-seo.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:27:\"w.org/plugins/wordpress-seo\";s:4:\"slug\";s:13:\"wordpress-seo\";s:6:\"plugin\";s:24:\"wordpress-seo/wp-seo.php\";s:11:\"new_version\";s:4:\"20.6\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/wordpress-seo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/wordpress-seo.20.6.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=2363699\";s:3:\"svg\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=2363699\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500.png?rev=2643727\";s:2:\"1x\";s:68:\"https://ps.w.org/wordpress-seo/assets/banner-772x250.png?rev=2643727\";}s:11:\"banners_rtl\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500-rtl.png?rev=2643727\";s:2:\"1x\";s:72:\"https://ps.w.org/wordpress-seo/assets/banner-772x250-rtl.png?rev=2643727\";}s:8:\"requires\";s:3:\"6.0\";}}s:7:\"checked\";a:3:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"6.1.5\";s:27:\"wp-super-cache/wp-cache.php\";s:5:\"1.9.4\";s:24:\"wordpress-seo/wp-seo.php\";s:4:\"20.6\";}}', 'no'),
(351, '_transient_timeout_acf_plugin_updates', '1683486196', 'no'),
(352, '_transient_acf_plugin_updates', 'a:4:{s:7:\"plugins\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";a:9:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"6.1.6\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:3:\"6.2\";s:7:\"package\";s:311:\"https://connect.advancedcustomfields.com/v2/plugins/download?token=eyJwIjoicHJvIiwiayI6ImIzSmtaWEpmYVdROU5qUTFNalY4ZEhsd1pUMWtaWFpsYkc5d1pYSjhaR0YwWlQweU1ERTFMVEE1TFRFNElERTBPakUxT2pJMSIsIndwX3VybCI6Imh0dHA6XC9cL3JlZGFjcmUudGVzdCIsIndwX3ZlcnNpb24iOiI2LjIiLCJwaHBfdmVyc2lvbiI6IjguMC4yNiIsImJsb2NrX2NvdW50IjoyfQ==\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}s:13:\"license_valid\";b:1;}}s:10:\"expiration\";i:172800;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"6.1.5\";}}', 'no'),
(241, '_options_column_1_links_1_link', 'field_6452bd217ae10', 'no'),
(242, 'options_column_1_links_2_link', 'a:3:{s:5:\"title\";s:13:\"Account Types\";s:3:\"url\";s:34:\"http://redacre.test/account-types/\";s:6:\"target\";s:0:\"\";}', 'no'),
(243, '_options_column_1_links_2_link', 'field_6452bd217ae10', 'no'),
(244, 'options_column_1_links_3_link', 'a:3:{s:5:\"title\";s:10:\"Metatrader\";s:3:\"url\";s:31:\"http://redacre.test/metatrader/\";s:6:\"target\";s:0:\"\";}', 'no'),
(396, '_site_transient_timeout_theme_roots', '1683385630', 'no'),
(397, '_site_transient_theme_roots', 'a:1:{s:7:\"redacre\";s:7:\"/themes\";}', 'no'),
(207, 'options_socials_0_social_url', 'a:3:{s:5:\"title\";s:20:\"Find us on Instagram\";s:3:\"url\";s:25:\"https://www.instagram.com\";s:6:\"target\";s:6:\"_blank\";}', 'no'),
(208, '_options_socials_0_social_url', 'field_6452b8c742683', 'no'),
(209, 'options_socials_0_icon', '138', 'no'),
(210, '_options_socials_0_icon', 'field_6452baad42684', 'no'),
(211, 'options_socials_1_social_url', 'a:3:{s:5:\"title\";s:18:\"Find us on Twitter\";s:3:\"url\";s:23:\"https://www.twitter.com\";s:6:\"target\";s:6:\"_blank\";}', 'no'),
(212, '_options_socials_1_social_url', 'field_6452b8c742683', 'no'),
(164, 'acf_pro_license', 'YToyOntzOjM6ImtleSI7czo3MjoiYjNKa1pYSmZhV1E5TmpRMU1qVjhkSGx3WlQxa1pYWmxiRzl3WlhKOFpHRjBaVDB5TURFMUxUQTVMVEU0SURFME9qRTFPakkxIjtzOjM6InVybCI7czoxOToiaHR0cDovL3JlZGFjcmUudGVzdCI7fQ==', 'yes'),
(251, '_options_column_1_links', 'field_6452bcec7ae0f', 'no'),
(252, 'options_column_2_title', '', 'no'),
(253, '_options_column_2_title', 'field_6452c8d74c20d', 'no'),
(254, 'options_column_2_links_0_link', 'a:3:{s:5:\"title\";s:17:\"Afilliate Program\";s:3:\"url\";s:38:\"http://redacre.test/afilliate-program/\";s:6:\"target\";s:0:\"\";}', 'no'),
(255, '_options_column_2_links_0_link', 'field_6452bf331e294', 'no'),
(256, 'options_column_2_links_1_link', 'a:3:{s:5:\"title\";s:13:\"PAMM Accounts\";s:3:\"url\";s:34:\"http://redacre.test/pamm-accounts/\";s:6:\"target\";s:0:\"\";}', 'no'),
(257, '_options_column_2_links_1_link', 'field_6452bf331e294', 'no'),
(258, 'options_column_2_links', '2', 'no'),
(259, '_options_column_2_links', 'field_6452bf331e293', 'no'),
(167, 'recovery_mode_email_last_sent', '1683098529', 'yes'),
(269, '_options_column_4_title', 'field_6452c9004c213', 'no'),
(154, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:14:\"smot1@inbox.lv\";s:7:\"version\";s:3:\"6.2\";s:9:\"timestamp\";i:1683097450;}', 'no'),
(260, 'options_column_3_title', '', 'no'),
(261, '_options_column_3_title', 'field_6452c8ee4c210', 'no'),
(262, 'options_column_3_links_0_link', 'a:3:{s:5:\"title\";s:3:\"FAQ\";s:3:\"url\";s:24:\"http://redacre.test/faq/\";s:6:\"target\";s:0:\"\";}', 'no'),
(263, '_options_column_3_links_0_link', 'field_6452bf481e296', 'no'),
(264, 'options_column_3_links_1_link', 'a:3:{s:5:\"title\";s:10:\"Contact Us\";s:3:\"url\";s:37:\"http://redacre.test/about/contact-us/\";s:6:\"target\";s:0:\"\";}', 'no'),
(265, '_options_column_3_links_1_link', 'field_6452bf481e296', 'no'),
(266, 'options_column_3_links', '2', 'no'),
(267, '_options_column_3_links', 'field_6452bf481e295', 'no'),
(133, '_site_transient_timeout_browser_d9c544d0aaddfd20c051a0811f2f382d', '1683702199', 'no'),
(134, '_site_transient_browser_d9c544d0aaddfd20c051a0811f2f382d', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"112.0.0.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(135, '_site_transient_timeout_php_check_c9dd5cfbc4fa9554c7110a759bca4ee5', '1683702199', 'no'),
(136, '_site_transient_php_check_c9dd5cfbc4fa9554c7110a759bca4ee5', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(312, 'options_column_5_title_title', 'About', 'no'),
(157, 'finished_updating_comment_type', '1', 'yes'),
(268, 'options_column_4_title', '', 'no'),
(137, 'can_compress_scripts', '1', 'no'),
(329, '_options_disclosure', 'field_6452bb2b42685', 'no'),
(366, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1683392487', 'no'),
(367, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'O:8:\"stdClass\":100:{s:11:\"woocommerce\";a:3:{s:4:\"name\";s:11:\"woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:5:\"count\";i:6081;}s:6:\"widget\";a:3:{s:4:\"name\";s:6:\"widget\";s:4:\"slug\";s:6:\"widget\";s:5:\"count\";i:4820;}s:4:\"post\";a:3:{s:4:\"name\";s:4:\"post\";s:4:\"slug\";s:4:\"post\";s:5:\"count\";i:2787;}s:5:\"admin\";a:3:{s:4:\"name\";s:5:\"admin\";s:4:\"slug\";s:5:\"admin\";s:5:\"count\";i:2673;}s:5:\"posts\";a:3:{s:4:\"name\";s:5:\"posts\";s:4:\"slug\";s:5:\"posts\";s:5:\"count\";i:2053;}s:9:\"shortcode\";a:3:{s:4:\"name\";s:9:\"shortcode\";s:4:\"slug\";s:9:\"shortcode\";s:5:\"count\";i:1917;}s:8:\"comments\";a:3:{s:4:\"name\";s:8:\"comments\";s:4:\"slug\";s:8:\"comments\";s:5:\"count\";i:1904;}s:3:\"seo\";a:3:{s:4:\"name\";s:3:\"seo\";s:4:\"slug\";s:3:\"seo\";s:5:\"count\";i:1640;}s:6:\"images\";a:3:{s:4:\"name\";s:6:\"images\";s:4:\"slug\";s:6:\"images\";s:5:\"count\";i:1566;}s:5:\"image\";a:3:{s:4:\"name\";s:5:\"image\";s:4:\"slug\";s:5:\"image\";s:5:\"count\";i:1555;}s:6:\"google\";a:3:{s:4:\"name\";s:6:\"google\";s:4:\"slug\";s:6:\"google\";s:5:\"count\";i:1549;}s:7:\"twitter\";a:3:{s:4:\"name\";s:7:\"twitter\";s:4:\"slug\";s:7:\"twitter\";s:5:\"count\";i:1515;}s:8:\"facebook\";a:3:{s:4:\"name\";s:8:\"facebook\";s:4:\"slug\";s:8:\"facebook\";s:5:\"count\";i:1504;}s:9:\"ecommerce\";a:3:{s:4:\"name\";s:9:\"ecommerce\";s:4:\"slug\";s:9:\"ecommerce\";s:5:\"count\";i:1485;}s:5:\"email\";a:3:{s:4:\"name\";s:5:\"email\";s:4:\"slug\";s:5:\"email\";s:5:\"count\";i:1365;}s:7:\"sidebar\";a:3:{s:4:\"name\";s:7:\"sidebar\";s:4:\"slug\";s:7:\"sidebar\";s:5:\"count\";i:1316;}s:7:\"gallery\";a:3:{s:4:\"name\";s:7:\"gallery\";s:4:\"slug\";s:7:\"gallery\";s:5:\"count\";i:1271;}s:4:\"page\";a:3:{s:4:\"name\";s:4:\"page\";s:4:\"slug\";s:4:\"page\";s:5:\"count\";i:1176;}s:6:\"social\";a:3:{s:4:\"name\";s:6:\"social\";s:4:\"slug\";s:6:\"social\";s:5:\"count\";i:1156;}s:5:\"login\";a:3:{s:4:\"name\";s:5:\"login\";s:4:\"slug\";s:5:\"login\";s:5:\"count\";i:1147;}s:8:\"security\";a:3:{s:4:\"name\";s:8:\"security\";s:4:\"slug\";s:8:\"security\";s:5:\"count\";i:1053;}s:10:\"e-commerce\";a:3:{s:4:\"name\";s:10:\"e-commerce\";s:4:\"slug\";s:10:\"e-commerce\";s:5:\"count\";i:1021;}s:5:\"video\";a:3:{s:4:\"name\";s:5:\"video\";s:4:\"slug\";s:5:\"video\";s:5:\"count\";i:998;}s:7:\"widgets\";a:3:{s:4:\"name\";s:7:\"widgets\";s:4:\"slug\";s:7:\"widgets\";s:5:\"count\";i:966;}s:5:\"links\";a:3:{s:4:\"name\";s:5:\"links\";s:4:\"slug\";s:5:\"links\";s:5:\"count\";i:903;}s:7:\"payment\";a:3:{s:4:\"name\";s:7:\"payment\";s:4:\"slug\";s:7:\"payment\";s:5:\"count\";i:891;}s:9:\"analytics\";a:3:{s:4:\"name\";s:9:\"analytics\";s:4:\"slug\";s:9:\"analytics\";s:5:\"count\";i:879;}s:4:\"spam\";a:3:{s:4:\"name\";s:4:\"spam\";s:4:\"slug\";s:4:\"spam\";s:5:\"count\";i:877;}s:4:\"form\";a:3:{s:4:\"name\";s:4:\"form\";s:4:\"slug\";s:4:\"form\";s:5:\"count\";i:876;}s:7:\"content\";a:3:{s:4:\"name\";s:7:\"content\";s:4:\"slug\";s:7:\"content\";s:5:\"count\";i:869;}s:6:\"slider\";a:3:{s:4:\"name\";s:6:\"slider\";s:4:\"slug\";s:6:\"slider\";s:5:\"count\";i:867;}s:9:\"gutenberg\";a:3:{s:4:\"name\";s:9:\"gutenberg\";s:4:\"slug\";s:9:\"gutenberg\";s:5:\"count\";i:828;}s:5:\"media\";a:3:{s:4:\"name\";s:5:\"media\";s:4:\"slug\";s:5:\"media\";s:5:\"count\";i:795;}s:5:\"block\";a:3:{s:4:\"name\";s:5:\"block\";s:4:\"slug\";s:5:\"block\";s:5:\"count\";i:794;}s:10:\"buddypress\";a:3:{s:4:\"name\";s:10:\"buddypress\";s:4:\"slug\";s:10:\"buddypress\";s:5:\"count\";i:781;}s:6:\"search\";a:3:{s:4:\"name\";s:6:\"search\";s:4:\"slug\";s:6:\"search\";s:5:\"count\";i:778;}s:15:\"payment-gateway\";a:3:{s:4:\"name\";s:15:\"payment gateway\";s:4:\"slug\";s:15:\"payment-gateway\";s:5:\"count\";i:769;}s:6:\"editor\";a:3:{s:4:\"name\";s:6:\"editor\";s:4:\"slug\";s:6:\"editor\";s:5:\"count\";i:766;}s:9:\"elementor\";a:3:{s:4:\"name\";s:9:\"elementor\";s:4:\"slug\";s:9:\"elementor\";s:5:\"count\";i:735;}s:3:\"rss\";a:3:{s:4:\"name\";s:3:\"rss\";s:4:\"slug\";s:3:\"rss\";s:5:\"count\";i:732;}s:5:\"pages\";a:3:{s:4:\"name\";s:5:\"pages\";s:4:\"slug\";s:5:\"pages\";s:5:\"count\";i:730;}s:12:\"contact-form\";a:3:{s:4:\"name\";s:12:\"contact form\";s:4:\"slug\";s:12:\"contact-form\";s:5:\"count\";i:727;}s:4:\"menu\";a:3:{s:4:\"name\";s:4:\"menu\";s:4:\"slug\";s:4:\"menu\";s:5:\"count\";i:723;}s:5:\"embed\";a:3:{s:4:\"name\";s:5:\"embed\";s:4:\"slug\";s:5:\"embed\";s:5:\"count\";i:688;}s:4:\"feed\";a:3:{s:4:\"name\";s:4:\"feed\";s:4:\"slug\";s:4:\"feed\";s:5:\"count\";i:686;}s:8:\"category\";a:3:{s:4:\"name\";s:8:\"category\";s:4:\"slug\";s:8:\"category\";s:5:\"count\";i:685;}s:4:\"ajax\";a:3:{s:4:\"name\";s:4:\"ajax\";s:4:\"slug\";s:4:\"ajax\";s:5:\"count\";i:674;}s:6:\"jquery\";a:3:{s:4:\"name\";s:6:\"jquery\";s:4:\"slug\";s:6:\"jquery\";s:5:\"count\";i:666;}s:7:\"youtube\";a:3:{s:4:\"name\";s:7:\"youtube\";s:4:\"slug\";s:7:\"youtube\";s:5:\"count\";i:632;}s:3:\"css\";a:3:{s:4:\"name\";s:3:\"css\";s:4:\"slug\";s:3:\"css\";s:5:\"count\";i:622;}s:9:\"affiliate\";a:3:{s:4:\"name\";s:9:\"affiliate\";s:4:\"slug\";s:9:\"affiliate\";s:5:\"count\";i:616;}s:3:\"api\";a:3:{s:4:\"name\";s:3:\"api\";s:4:\"slug\";s:3:\"api\";s:5:\"count\";i:610;}s:4:\"link\";a:3:{s:4:\"name\";s:4:\"link\";s:4:\"slug\";s:4:\"link\";s:5:\"count\";i:608;}s:10:\"javascript\";a:3:{s:4:\"name\";s:10:\"javascript\";s:4:\"slug\";s:10:\"javascript\";s:5:\"count\";i:607;}s:7:\"contact\";a:3:{s:4:\"name\";s:7:\"contact\";s:4:\"slug\";s:7:\"contact\";s:5:\"count\";i:599;}s:9:\"dashboard\";a:3:{s:4:\"name\";s:9:\"dashboard\";s:4:\"slug\";s:9:\"dashboard\";s:5:\"count\";i:593;}s:5:\"share\";a:3:{s:4:\"name\";s:5:\"share\";s:4:\"slug\";s:5:\"share\";s:5:\"count\";i:592;}s:10:\"responsive\";a:3:{s:4:\"name\";s:10:\"responsive\";s:4:\"slug\";s:10:\"responsive\";s:5:\"count\";i:590;}s:5:\"theme\";a:3:{s:4:\"name\";s:5:\"theme\";s:4:\"slug\";s:5:\"theme\";s:5:\"count\";i:578;}s:3:\"ads\";a:3:{s:4:\"name\";s:3:\"ads\";s:4:\"slug\";s:3:\"ads\";s:5:\"count\";i:570;}s:7:\"comment\";a:3:{s:4:\"name\";s:7:\"comment\";s:4:\"slug\";s:7:\"comment\";s:5:\"count\";i:568;}s:6:\"custom\";a:3:{s:4:\"name\";s:6:\"custom\";s:4:\"slug\";s:6:\"custom\";s:5:\"count\";i:567;}s:8:\"shipping\";a:3:{s:4:\"name\";s:8:\"shipping\";s:4:\"slug\";s:8:\"shipping\";s:5:\"count\";i:566;}s:4:\"chat\";a:3:{s:4:\"name\";s:4:\"chat\";s:4:\"slug\";s:4:\"chat\";s:5:\"count\";i:555;}s:9:\"marketing\";a:3:{s:4:\"name\";s:9:\"marketing\";s:4:\"slug\";s:9:\"marketing\";s:5:\"count\";i:554;}s:6:\"events\";a:3:{s:4:\"name\";s:6:\"events\";s:4:\"slug\";s:6:\"events\";s:5:\"count\";i:541;}s:10:\"categories\";a:3:{s:4:\"name\";s:10:\"categories\";s:4:\"slug\";s:10:\"categories\";s:5:\"count\";i:540;}s:14:\"contact-form-7\";a:3:{s:4:\"name\";s:14:\"contact form 7\";s:4:\"slug\";s:14:\"contact-form-7\";s:5:\"count\";i:532;}s:4:\"user\";a:3:{s:4:\"name\";s:4:\"user\";s:4:\"slug\";s:4:\"user\";s:5:\"count\";i:531;}s:6:\"button\";a:3:{s:4:\"name\";s:6:\"button\";s:4:\"slug\";s:6:\"button\";s:5:\"count\";i:530;}s:5:\"forms\";a:3:{s:4:\"name\";s:5:\"forms\";s:4:\"slug\";s:5:\"forms\";s:5:\"count\";i:527;}s:5:\"popup\";a:3:{s:4:\"name\";s:5:\"popup\";s:4:\"slug\";s:5:\"popup\";s:5:\"count\";i:518;}s:5:\"users\";a:3:{s:4:\"name\";s:5:\"users\";s:4:\"slug\";s:5:\"users\";s:5:\"count\";i:513;}s:6:\"mobile\";a:3:{s:4:\"name\";s:6:\"mobile\";s:4:\"slug\";s:6:\"mobile\";s:5:\"count\";i:510;}s:4:\"tags\";a:3:{s:4:\"name\";s:4:\"tags\";s:4:\"slug\";s:4:\"tags\";s:5:\"count\";i:508;}s:8:\"calendar\";a:3:{s:4:\"name\";s:8:\"calendar\";s:4:\"slug\";s:8:\"calendar\";s:5:\"count\";i:505;}s:11:\"performance\";a:3:{s:4:\"name\";s:11:\"performance\";s:4:\"slug\";s:11:\"performance\";s:5:\"count\";i:483;}s:10:\"newsletter\";a:3:{s:4:\"name\";s:10:\"newsletter\";s:4:\"slug\";s:10:\"newsletter\";s:5:\"count\";i:475;}s:6:\"blocks\";a:3:{s:4:\"name\";s:6:\"blocks\";s:4:\"slug\";s:6:\"blocks\";s:5:\"count\";i:475;}s:10:\"navigation\";a:3:{s:4:\"name\";s:10:\"navigation\";s:4:\"slug\";s:10:\"navigation\";s:5:\"count\";i:467;}s:9:\"slideshow\";a:3:{s:4:\"name\";s:9:\"slideshow\";s:4:\"slug\";s:9:\"slideshow\";s:5:\"count\";i:449;}s:5:\"photo\";a:3:{s:4:\"name\";s:5:\"photo\";s:4:\"slug\";s:5:\"photo\";s:5:\"count\";i:448;}s:5:\"stats\";a:3:{s:4:\"name\";s:5:\"stats\";s:4:\"slug\";s:5:\"stats\";s:5:\"count\";i:448;}s:10:\"statistics\";a:3:{s:4:\"name\";s:10:\"statistics\";s:4:\"slug\";s:10:\"statistics\";s:5:\"count\";i:437;}s:12:\"social-media\";a:3:{s:4:\"name\";s:12:\"social media\";s:4:\"slug\";s:12:\"social-media\";s:5:\"count\";i:433;}s:6:\"photos\";a:3:{s:4:\"name\";s:6:\"photos\";s:4:\"slug\";s:6:\"photos\";s:5:\"count\";i:426;}s:8:\"redirect\";a:3:{s:4:\"name\";s:8:\"redirect\";s:4:\"slug\";s:8:\"redirect\";s:5:\"count\";i:426;}s:12:\"notification\";a:3:{s:4:\"name\";s:12:\"notification\";s:4:\"slug\";s:12:\"notification\";s:5:\"count\";i:425;}s:7:\"gateway\";a:3:{s:4:\"name\";s:7:\"gateway\";s:4:\"slug\";s:7:\"gateway\";s:5:\"count\";i:421;}s:6:\"import\";a:3:{s:4:\"name\";s:6:\"import\";s:4:\"slug\";s:6:\"import\";s:5:\"count\";i:420;}s:8:\"tracking\";a:3:{s:4:\"name\";s:8:\"tracking\";s:4:\"slug\";s:8:\"tracking\";s:5:\"count\";i:420;}s:4:\"news\";a:3:{s:4:\"name\";s:4:\"news\";s:4:\"slug\";s:4:\"news\";s:5:\"count\";i:420;}s:8:\"payments\";a:3:{s:4:\"name\";s:8:\"payments\";s:4:\"slug\";s:8:\"payments\";s:5:\"count\";i:418;}s:10:\"shortcodes\";a:3:{s:4:\"name\";s:10:\"shortcodes\";s:4:\"slug\";s:10:\"shortcodes\";s:5:\"count\";i:412;}s:4:\"code\";a:3:{s:4:\"name\";s:4:\"code\";s:4:\"slug\";s:4:\"code\";s:5:\"count\";i:407;}s:7:\"plugins\";a:3:{s:4:\"name\";s:7:\"plugins\";s:4:\"slug\";s:7:\"plugins\";s:5:\"count\";i:398;}s:9:\"multisite\";a:3:{s:4:\"name\";s:9:\"multisite\";s:4:\"slug\";s:9:\"multisite\";s:5:\"count\";i:395;}s:5:\"cache\";a:3:{s:4:\"name\";s:5:\"cache\";s:4:\"slug\";s:5:\"cache\";s:5:\"count\";i:394;}s:8:\"checkout\";a:3:{s:4:\"name\";s:8:\"checkout\";s:4:\"slug\";s:8:\"checkout\";s:5:\"count\";i:392;}s:4:\"meta\";a:3:{s:4:\"name\";s:4:\"meta\";s:4:\"slug\";s:4:\"meta\";s:5:\"count\";i:391;}}', 'no'),
(401, 'wp_super_cache_index_detected', '3', 'no'),
(412, 'litespeed.purge.queue', '-1', 'yes'),
(413, 'litespeed.purge.queue2', '-1', 'yes'),
(414, 'litespeed.cloud._summary', '{\"curr_request.ver\":0,\"last_request.ver\":1683387621,\"news.utime\":1683384470,\"curr_request.news\":0,\"last_request.news\":1683384470,\"token\":\"4E8C23A3CF5B895CD562DDFF71D96D80\",\"token_ts\":1683384866}', 'yes'),
(376, 'wpsupercache_start', '1683381754', 'yes'),
(377, 'wpsupercache_count', '0', 'yes'),
(379, 'ossdl_off_blog_url', 'http://redacre.test', 'yes'),
(380, 'ossdl_off_cdn_url', 'http://cdn.redacre.test', 'yes'),
(381, 'ossdl_off_include_dirs', 'wp-content,wp-includes', 'yes'),
(382, 'ossdl_off_exclude', '.php', 'yes'),
(383, 'ossdl_cname', '', 'yes'),
(384, 'supercache_stats', 'a:3:{s:9:\"generated\";i:1683381782;s:10:\"supercache\";a:5:{s:7:\"expired\";i:0;s:6:\"cached\";i:0;s:5:\"fsize\";i:0;s:11:\"cached_list\";a:0:{}s:12:\"expired_list\";a:0:{}}s:7:\"wpcache\";a:5:{s:7:\"expired\";i:0;s:6:\"cached\";i:0;s:5:\"fsize\";i:0;s:11:\"cached_list\";a:0:{}s:12:\"expired_list\";a:0:{}}}', 'yes'),
(385, 'wpsupercache_gc_time', '1683390533', 'yes'),
(392, 'wpsc_feed_list', 'a:8:{i:0;b:0;i:1;s:133:\"C:\\Users\\Toms\\Desktop\\Projects\\redacre\\wp\\wp-content/cache/supercache/redacre.test/feed/wp-cache-8fa4d403ed741166503d0443c463a468.php\";i:2;s:142:\"C:\\Users\\Toms\\Desktop\\Projects\\redacre\\wp\\wp-content/cache/supercache/redacre.test/comments/feed/wp-cache-d4403ffe2f3fed1f2ea0336959299fbd.php\";i:3;s:142:\"C:\\Users\\Toms\\Desktop\\Projects\\redacre\\wp\\wp-content/cache/supercache/redacre.test/comments/feed/wp-cache-d4403ffe2f3fed1f2ea0336959299fbd.php\";i:4;s:142:\"C:\\Users\\Toms\\Desktop\\Projects\\redacre\\wp\\wp-content/cache/supercache/redacre.test/comments/feed/wp-cache-de6ee5739a90e4971198b19a7a26ab3c.php\";i:5;s:133:\"C:\\Users\\Toms\\Desktop\\Projects\\redacre\\wp\\wp-content/cache/supercache/redacre.test/feed/wp-cache-e532b6ab1dbe3f31e9c28574b7932f1a.php\";i:6;s:133:\"C:\\Users\\Toms\\Desktop\\Projects\\redacre\\wp\\wp-content/cache/supercache/redacre.test/feed/wp-cache-e532b6ab1dbe3f31e9c28574b7932f1a.php\";i:7;s:142:\"C:\\Users\\Toms\\Desktop\\Projects\\redacre\\wp\\wp-content/cache/supercache/redacre.test/comments/feed/wp-cache-de6ee5739a90e4971198b19a7a26ab3c.php\";}', 'yes'),
(393, 'ossdl_https', '0', 'yes'),
(411, 'litespeed.conf.__activation', '-1', 'yes'),
(415, 'litespeed.conf._version', '5.4', 'yes'),
(410, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1683384461;s:7:\"checked\";a:1:{s:7:\"redacre\";s:5:\"1.0.0\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(614, 'wpseo_titles', 'a:110:{s:17:\"forcerewritetitle\";b:0;s:9:\"separator\";s:7:\"sc-dash\";s:16:\"title-home-wpseo\";s:42:\"%%sitename%% %%page%% %%sep%% %%sitedesc%%\";s:18:\"title-author-wpseo\";s:41:\"%%name%%, Author at %%sitename%% %%page%%\";s:19:\"title-archive-wpseo\";s:38:\"%%date%% %%page%% %%sep%% %%sitename%%\";s:18:\"title-search-wpseo\";s:63:\"You searched for %%searchphrase%% %%page%% %%sep%% %%sitename%%\";s:15:\"title-404-wpseo\";s:35:\"Page not found %%sep%% %%sitename%%\";s:25:\"social-title-author-wpseo\";s:8:\"%%name%%\";s:26:\"social-title-archive-wpseo\";s:8:\"%%date%%\";s:31:\"social-description-author-wpseo\";s:0:\"\";s:32:\"social-description-archive-wpseo\";s:0:\"\";s:29:\"social-image-url-author-wpseo\";s:0:\"\";s:30:\"social-image-url-archive-wpseo\";s:0:\"\";s:28:\"social-image-id-author-wpseo\";i:0;s:29:\"social-image-id-archive-wpseo\";i:0;s:19:\"metadesc-home-wpseo\";s:0:\"\";s:21:\"metadesc-author-wpseo\";s:0:\"\";s:22:\"metadesc-archive-wpseo\";s:0:\"\";s:9:\"rssbefore\";s:0:\"\";s:8:\"rssafter\";s:53:\"The post %%POSTLINK%% appeared first on %%BLOGLINK%%.\";s:20:\"noindex-author-wpseo\";b:0;s:28:\"noindex-author-noposts-wpseo\";b:1;s:21:\"noindex-archive-wpseo\";b:1;s:14:\"disable-author\";b:0;s:12:\"disable-date\";b:0;s:19:\"disable-post_format\";b:0;s:18:\"disable-attachment\";b:1;s:20:\"breadcrumbs-404crumb\";s:25:\"Error 404: Page not found\";s:29:\"breadcrumbs-display-blog-page\";b:1;s:20:\"breadcrumbs-boldlast\";b:0;s:25:\"breadcrumbs-archiveprefix\";s:12:\"Archives for\";s:18:\"breadcrumbs-enable\";b:1;s:16:\"breadcrumbs-home\";s:4:\"Home\";s:18:\"breadcrumbs-prefix\";s:0:\"\";s:24:\"breadcrumbs-searchprefix\";s:16:\"You searched for\";s:15:\"breadcrumbs-sep\";s:2:\"»\";s:12:\"website_name\";s:0:\"\";s:11:\"person_name\";s:0:\"\";s:11:\"person_logo\";s:0:\"\";s:22:\"alternate_website_name\";s:0:\"\";s:12:\"company_logo\";s:55:\"http://redacre.test/wp-content/uploads/2023/05/hero.svg\";s:12:\"company_name\";s:0:\"\";s:22:\"company_alternate_name\";s:0:\"\";s:17:\"company_or_person\";s:7:\"company\";s:25:\"company_or_person_user_id\";i:0;s:17:\"stripcategorybase\";b:0;s:26:\"open_graph_frontpage_title\";s:12:\"%%sitename%%\";s:25:\"open_graph_frontpage_desc\";s:0:\"\";s:26:\"open_graph_frontpage_image\";s:0:\"\";s:10:\"title-post\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-post\";s:0:\"\";s:12:\"noindex-post\";b:0;s:23:\"display-metabox-pt-post\";b:1;s:23:\"post_types-post-maintax\";i:0;s:21:\"schema-page-type-post\";s:7:\"WebPage\";s:24:\"schema-article-type-post\";s:7:\"Article\";s:17:\"social-title-post\";s:9:\"%%title%%\";s:23:\"social-description-post\";s:0:\"\";s:21:\"social-image-url-post\";s:0:\"\";s:20:\"social-image-id-post\";i:0;s:10:\"title-page\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-page\";s:0:\"\";s:12:\"noindex-page\";b:0;s:23:\"display-metabox-pt-page\";b:1;s:23:\"post_types-page-maintax\";i:0;s:21:\"schema-page-type-page\";s:7:\"WebPage\";s:24:\"schema-article-type-page\";s:4:\"None\";s:17:\"social-title-page\";s:9:\"%%title%%\";s:23:\"social-description-page\";s:0:\"\";s:21:\"social-image-url-page\";s:0:\"\";s:20:\"social-image-id-page\";i:0;s:16:\"title-attachment\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:19:\"metadesc-attachment\";s:0:\"\";s:18:\"noindex-attachment\";b:0;s:29:\"display-metabox-pt-attachment\";b:1;s:29:\"post_types-attachment-maintax\";i:0;s:27:\"schema-page-type-attachment\";s:7:\"WebPage\";s:30:\"schema-article-type-attachment\";s:4:\"None\";s:18:\"title-tax-category\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-category\";s:0:\"\";s:28:\"display-metabox-tax-category\";b:1;s:20:\"noindex-tax-category\";b:0;s:25:\"social-title-tax-category\";s:23:\"%%term_title%% Archives\";s:31:\"social-description-tax-category\";s:0:\"\";s:29:\"social-image-url-tax-category\";s:0:\"\";s:28:\"social-image-id-tax-category\";i:0;s:26:\"taxonomy-category-ptparent\";i:0;s:18:\"title-tax-post_tag\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-post_tag\";s:0:\"\";s:28:\"display-metabox-tax-post_tag\";b:1;s:20:\"noindex-tax-post_tag\";b:0;s:25:\"social-title-tax-post_tag\";s:23:\"%%term_title%% Archives\";s:31:\"social-description-tax-post_tag\";s:0:\"\";s:29:\"social-image-url-tax-post_tag\";s:0:\"\";s:28:\"social-image-id-tax-post_tag\";i:0;s:26:\"taxonomy-post_tag-ptparent\";i:0;s:21:\"title-tax-post_format\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:24:\"metadesc-tax-post_format\";s:0:\"\";s:31:\"display-metabox-tax-post_format\";b:1;s:23:\"noindex-tax-post_format\";b:1;s:28:\"social-title-tax-post_format\";s:23:\"%%term_title%% Archives\";s:34:\"social-description-tax-post_format\";s:0:\"\";s:32:\"social-image-url-tax-post_format\";s:0:\"\";s:31:\"social-image-id-tax-post_format\";i:0;s:29:\"taxonomy-post_format-ptparent\";i:0;s:14:\"person_logo_id\";i:0;s:15:\"company_logo_id\";i:154;s:17:\"company_logo_meta\";a:8:{s:3:\"url\";s:55:\"http://redacre.test/wp-content/uploads/2023/05/hero.svg\";s:5:\"width\";i:1;s:6:\"height\";i:1;s:4:\"size\";s:4:\"full\";s:2:\"id\";i:154;s:3:\"alt\";s:4:\"Hero\";s:6:\"pixels\";i:1;s:4:\"type\";s:13:\"image/svg+xml\";}s:16:\"person_logo_meta\";b:0;s:29:\"open_graph_frontpage_image_id\";i:0;}', 'yes'),
(615, 'wpseo_social', 'a:20:{s:13:\"facebook_site\";s:29:\"https://www.facebook.com/test\";s:13:\"instagram_url\";s:0:\"\";s:12:\"linkedin_url\";s:0:\"\";s:11:\"myspace_url\";s:0:\"\";s:16:\"og_default_image\";s:0:\"\";s:19:\"og_default_image_id\";s:0:\"\";s:18:\"og_frontpage_title\";s:0:\"\";s:17:\"og_frontpage_desc\";s:0:\"\";s:18:\"og_frontpage_image\";s:0:\"\";s:21:\"og_frontpage_image_id\";s:0:\"\";s:9:\"opengraph\";b:1;s:13:\"pinterest_url\";s:0:\"\";s:15:\"pinterestverify\";s:0:\"\";s:7:\"twitter\";b:1;s:12:\"twitter_site\";s:4:\"test\";s:17:\"twitter_card_type\";s:19:\"summary_large_image\";s:11:\"youtube_url\";s:0:\"\";s:13:\"wikipedia_url\";s:0:\"\";s:17:\"other_social_urls\";a:0:{}s:12:\"mastodon_url\";s:0:\"\";}', 'yes'),
(644, '_transient_wpseo_total_unindexed_posts', '0', 'no'),
(645, '_transient_timeout_wpseo_total_unindexed_terms', '1683470991', 'no'),
(646, '_transient_wpseo_total_unindexed_terms', '0', 'no'),
(639, '_transient_timeout_wpseo_unindexed_post_link_count', '1683470991', 'no'),
(640, '_transient_wpseo_unindexed_post_link_count', '0', 'no'),
(641, '_transient_timeout_wpseo_unindexed_term_link_count', '1683470991', 'no'),
(642, '_transient_wpseo_unindexed_term_link_count', '0', 'no'),
(643, '_transient_timeout_wpseo_total_unindexed_posts', '1683470991', 'no'),
(623, '_transient_timeout_wpseo_total_unindexed_post_type_archives', '1683470874', 'no'),
(624, '_transient_wpseo_total_unindexed_post_type_archives', '0', 'no'),
(625, '_transient_timeout_wpseo_total_unindexed_general_items', '1683470890', 'no'),
(626, '_transient_wpseo_total_unindexed_general_items', '0', 'no'),
(722, '_transient_timeout_wpseo_total_unindexed_posts_limited', '1683389010', 'no'),
(723, '_transient_wpseo_total_unindexed_posts_limited', '0', 'no'),
(724, '_transient_timeout_wpseo_total_unindexed_terms_limited', '1683389010', 'no'),
(725, '_transient_wpseo_total_unindexed_terms_limited', '0', 'no'),
(631, '_transient_timeout_yoast_beacon_session_data', '1683384785', 'no'),
(632, '_transient_yoast_beacon_session_data', 'a:12:{s:4:\"name\";s:0:\"\";s:5:\"email\";s:14:\"smot1@inbox.lv\";s:9:\"Languages\";s:38:\"Site locale: en_US, user locale: en_US\";s:9:\"Server IP\";s:3:\"::1\";s:11:\"PHP Version\";s:6:\"8.0.26\";s:12:\"cURL Version\";s:22:\"7.76.1 (SSL Support 1)\";s:13:\"Memory limits\";s:47:\"Server memory limit: 256M, WP_MEMORY_LIMIT: 40M\";s:17:\"WordPress Version\";s:19:\"6.2 (multisite: no)\";s:12:\"Active theme\";s:80:\"redacre (Version 1.0.0, https://www.linkedin.com/in/toms-e%C5%A1mits-968257109/)\";s:14:\"Active plugins\";s:258:\"Advanced Custom Fields PRO (Version 6.1.5 [update available], https://www.advancedcustomfields.com) | LiteSpeed Cache (Version 5.4, https://www.litespeedtech.com/products/cache-plugins/wordpress-acceleration) | Yoast SEO (Version 20.6, https://yoa.st/1uj) | \";s:20:\"Must-use and dropins\";s:32:\"Must-Use plugins: 1, Drop-ins: 0\";s:17:\"Indexables status\";s:61:\"Indexing completed: no, latest indexing reason: first_install\";}', 'no'),
(647, 'litespeed.crawler.bypass_list', '[]', 'yes'),
(651, 'litespeed.avatar._summary', '{\"curr_request\":0,\"last_spent\":0,\"last_request\":1683384664}', 'yes'),
(648, 'litespeed.preset._summary', '{\"preset\":\"aggressive\",\"preset_timestamp\":1683387050}', 'yes'),
(697, 'litespeed.optimize.timestamp_purge_css', '1683387617', 'yes'),
(698, 'litespeed.css._summary', '[]', 'yes'),
(716, '_transient_wpseo-statistics-totals', 'a:1:{i:1;a:2:{s:6:\"scores\";a:1:{i:0;a:4:{s:8:\"seo_rank\";s:2:\"na\";s:5:\"label\";s:48:\"Posts <strong>without</strong> a focus keyphrase\";s:5:\"count\";i:1;s:4:\"link\";s:96:\"http://redacre.test/wp-admin/edit.php?post_status=publish&#038;post_type=post&#038;seo_filter=na\";}}s:8:\"division\";a:5:{s:3:\"bad\";i:0;s:2:\"ok\";i:0;s:4:\"good\";i:0;s:2:\"na\";i:1;s:7:\"noindex\";i:0;}}}', 'no'),
(158, 'recently_activated', 'a:3:{s:34:\"advanced-custom-fields-pro/acf.php\";i:1683390791;s:24:\"wordpress-seo/wp-seo.php\";i:1683388114;s:35:\"litespeed-cache/litespeed-cache.php\";i:1683387617;}', 'yes'),
(159, 'acf_version', '6.1.5', 'yes'),
(160, 'theme_mods_twentytwentythree', 'a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1683098329;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(161, 'current_theme', 'pacific', 'yes'),
(162, 'theme_mods_redacre', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:2;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(163, 'theme_switched', '', 'yes'),
(715, '_transient_timeout_wpseo-statistics-totals', '1683473622', 'no'),
(713, '_site_transient_timeout_available_translations', '1683398008', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(714, '_site_transient_available_translations', 'a:130:{s:2:\"af\";a:8:{s:8:\"language\";s:2:\"af\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-05-13 15:59:22\";s:12:\"english_name\";s:9:\"Afrikaans\";s:11:\"native_name\";s:9:\"Afrikaans\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8-beta/af.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"af\";i:2;s:3:\"afr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Gaan voort\";}}s:2:\"am\";a:8:{s:8:\"language\";s:2:\"am\";s:7:\"version\";s:5:\"6.0.3\";s:7:\"updated\";s:19:\"2022-09-29 20:43:49\";s:12:\"english_name\";s:7:\"Amharic\";s:11:\"native_name\";s:12:\"አማርኛ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.0.3/am.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"am\";i:2;s:3:\"amh\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"ቀጥል\";}}s:3:\"arg\";a:8:{s:8:\"language\";s:3:\"arg\";s:7:\"version\";s:8:\"6.2-beta\";s:7:\"updated\";s:19:\"2022-09-22 16:46:56\";s:12:\"english_name\";s:9:\"Aragonese\";s:11:\"native_name\";s:9:\"Aragonés\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/6.2-beta/arg.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"an\";i:2;s:3:\"arg\";i:3;s:3:\"arg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continar\";}}s:2:\"ar\";a:8:{s:8:\"language\";s:2:\"ar\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2023-04-02 03:21:35\";s:12:\"english_name\";s:6:\"Arabic\";s:11:\"native_name\";s:14:\"العربية\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/6.2/ar.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:2;s:3:\"ara\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"متابعة\";}}s:3:\"ary\";a:8:{s:8:\"language\";s:3:\"ary\";s:7:\"version\";s:6:\"4.8.21\";s:7:\"updated\";s:19:\"2017-01-26 15:42:35\";s:12:\"english_name\";s:15:\"Moroccan Arabic\";s:11:\"native_name\";s:31:\"العربية المغربية\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.8.21/ary.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:3;s:3:\"ary\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:2:\"as\";a:8:{s:8:\"language\";s:2:\"as\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2023-05-05 16:21:02\";s:12:\"english_name\";s:8:\"Assamese\";s:11:\"native_name\";s:21:\"অসমীয়া\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/6.2/as.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"as\";i:2;s:3:\"asm\";i:3;s:3:\"asm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:3:\"azb\";a:8:{s:8:\"language\";s:3:\"azb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-12 20:34:31\";s:12:\"english_name\";s:17:\"South Azerbaijani\";s:11:\"native_name\";s:29:\"گؤنئی آذربایجان\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/azb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:3;s:3:\"azb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"az\";a:8:{s:8:\"language\";s:2:\"az\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-06 00:09:27\";s:12:\"english_name\";s:11:\"Azerbaijani\";s:11:\"native_name\";s:16:\"Azərbaycan dili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/az.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:2;s:3:\"aze\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Davam\";}}s:3:\"bel\";a:8:{s:8:\"language\";s:3:\"bel\";s:7:\"version\";s:6:\"4.9.22\";s:7:\"updated\";s:19:\"2019-10-29 07:54:22\";s:12:\"english_name\";s:10:\"Belarusian\";s:11:\"native_name\";s:29:\"Беларуская мова\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.9.22/bel.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"be\";i:2;s:3:\"bel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Працягнуць\";}}s:5:\"bg_BG\";a:8:{s:8:\"language\";s:5:\"bg_BG\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2023-04-27 11:17:23\";s:12:\"english_name\";s:9:\"Bulgarian\";s:11:\"native_name\";s:18:\"Български\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2/bg_BG.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bg\";i:2;s:3:\"bul\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Напред\";}}s:5:\"bn_BD\";a:8:{s:8:\"language\";s:5:\"bn_BD\";s:7:\"version\";s:6:\"5.4.12\";s:7:\"updated\";s:19:\"2020-10-31 08:48:37\";s:12:\"english_name\";s:20:\"Bengali (Bangladesh)\";s:11:\"native_name\";s:15:\"বাংলা\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.4.12/bn_BD.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"bn\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:23:\"এগিয়ে চল.\";}}s:2:\"bo\";a:8:{s:8:\"language\";s:2:\"bo\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2020-10-30 03:24:38\";s:12:\"english_name\";s:7:\"Tibetan\";s:11:\"native_name\";s:21:\"བོད་ཡིག\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8-beta/bo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bo\";i:2;s:3:\"tib\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:33:\"མུ་མཐུད་དུ།\";}}s:5:\"bs_BA\";a:8:{s:8:\"language\";s:5:\"bs_BA\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2023-02-22 20:45:53\";s:12:\"english_name\";s:7:\"Bosnian\";s:11:\"native_name\";s:8:\"Bosanski\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2/bs_BA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bs\";i:2;s:3:\"bos\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:2:\"ca\";a:8:{s:8:\"language\";s:2:\"ca\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2023-03-30 16:46:59\";s:12:\"english_name\";s:7:\"Catalan\";s:11:\"native_name\";s:7:\"Català\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/6.2/ca.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ca\";i:2;s:3:\"cat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:3:\"ceb\";a:8:{s:8:\"language\";s:3:\"ceb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-02 17:25:51\";s:12:\"english_name\";s:7:\"Cebuano\";s:11:\"native_name\";s:7:\"Cebuano\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/ceb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"ceb\";i:3;s:3:\"ceb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Padayun\";}}s:5:\"cs_CZ\";a:8:{s:8:\"language\";s:5:\"cs_CZ\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2023-05-01 20:12:09\";s:12:\"english_name\";s:5:\"Czech\";s:11:\"native_name\";s:9:\"Čeština\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2/cs_CZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cs\";i:2;s:3:\"ces\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Pokračovat\";}}s:2:\"cy\";a:8:{s:8:\"language\";s:2:\"cy\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2023-03-29 09:00:46\";s:12:\"english_name\";s:5:\"Welsh\";s:11:\"native_name\";s:7:\"Cymraeg\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/6.2/cy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cy\";i:2;s:3:\"cym\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Parhau\";}}s:5:\"da_DK\";a:8:{s:8:\"language\";s:5:\"da_DK\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2023-04-25 08:06:58\";s:12:\"english_name\";s:6:\"Danish\";s:11:\"native_name\";s:5:\"Dansk\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2/da_DK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"da\";i:2;s:3:\"dan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsæt\";}}s:12:\"de_DE_formal\";a:8:{s:8:\"language\";s:12:\"de_DE_formal\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2023-04-10 00:05:59\";s:12:\"english_name\";s:15:\"German (Formal)\";s:11:\"native_name\";s:13:\"Deutsch (Sie)\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/translation/core/6.2/de_DE_formal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_DE\";a:8:{s:8:\"language\";s:5:\"de_DE\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2023-04-02 19:47:35\";s:12:\"english_name\";s:6:\"German\";s:11:\"native_name\";s:7:\"Deutsch\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2/de_DE.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_CH\";a:8:{s:8:\"language\";s:5:\"de_CH\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2023-03-28 07:37:41\";s:12:\"english_name\";s:20:\"German (Switzerland)\";s:11:\"native_name\";s:17:\"Deutsch (Schweiz)\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2/de_CH.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:14:\"de_CH_informal\";a:8:{s:8:\"language\";s:14:\"de_CH_informal\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2023-03-28 07:33:50\";s:12:\"english_name\";s:30:\"German (Switzerland, Informal)\";s:11:\"native_name\";s:21:\"Deutsch (Schweiz, Du)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/6.2/de_CH_informal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_AT\";a:8:{s:8:\"language\";s:5:\"de_AT\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2023-03-29 21:14:35\";s:12:\"english_name\";s:16:\"German (Austria)\";s:11:\"native_name\";s:21:\"Deutsch (Österreich)\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2/de_AT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:3:\"dsb\";a:8:{s:8:\"language\";s:3:\"dsb\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2022-07-16 12:13:09\";s:12:\"english_name\";s:13:\"Lower Sorbian\";s:11:\"native_name\";s:16:\"Dolnoserbšćina\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/translation/core/6.2/dsb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"dsb\";i:3;s:3:\"dsb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Dalej\";}}s:3:\"dzo\";a:8:{s:8:\"language\";s:3:\"dzo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-06-29 08:59:03\";s:12:\"english_name\";s:8:\"Dzongkha\";s:11:\"native_name\";s:18:\"རྫོང་ཁ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/dzo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"dz\";i:2;s:3:\"dzo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"el\";a:8:{s:8:\"language\";s:2:\"el\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2023-05-01 09:15:36\";s:12:\"english_name\";s:5:\"Greek\";s:11:\"native_name\";s:16:\"Ελληνικά\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/6.2/el.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"el\";i:2;s:3:\"ell\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Συνέχεια\";}}s:5:\"en_CA\";a:8:{s:8:\"language\";s:5:\"en_CA\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2023-04-07 21:00:17\";s:12:\"english_name\";s:16:\"English (Canada)\";s:11:\"native_name\";s:16:\"English (Canada)\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2/en_CA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_GB\";a:8:{s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2023-04-19 10:51:23\";s:12:\"english_name\";s:12:\"English (UK)\";s:11:\"native_name\";s:12:\"English (UK)\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2/en_GB.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_ZA\";a:8:{s:8:\"language\";s:5:\"en_ZA\";s:7:\"version\";s:5:\"6.0.3\";s:7:\"updated\";s:19:\"2021-12-24 12:36:39\";s:12:\"english_name\";s:22:\"English (South Africa)\";s:11:\"native_name\";s:22:\"English (South Africa)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.0.3/en_ZA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_NZ\";a:8:{s:8:\"language\";s:5:\"en_NZ\";s:7:\"version\";s:5:\"6.0.3\";s:7:\"updated\";s:19:\"2022-04-01 22:35:34\";s:12:\"english_name\";s:21:\"English (New Zealand)\";s:11:\"native_name\";s:21:\"English (New Zealand)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.0.3/en_NZ.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_AU\";a:8:{s:8:\"language\";s:5:\"en_AU\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2023-04-18 07:25:08\";s:12:\"english_name\";s:19:\"English (Australia)\";s:11:\"native_name\";s:19:\"English (Australia)\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2/en_AU.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"eo\";a:8:{s:8:\"language\";s:2:\"eo\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2023-04-20 04:54:08\";s:12:\"english_name\";s:9:\"Esperanto\";s:11:\"native_name\";s:9:\"Esperanto\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/6.2/eo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eo\";i:2;s:3:\"epo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Daŭrigi\";}}s:5:\"es_AR\";a:8:{s:8:\"language\";s:5:\"es_AR\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2023-04-04 07:22:04\";s:12:\"english_name\";s:19:\"Spanish (Argentina)\";s:11:\"native_name\";s:21:\"Español de Argentina\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2/es_AR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CR\";a:8:{s:8:\"language\";s:5:\"es_CR\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2023-03-15 19:52:49\";s:12:\"english_name\";s:20:\"Spanish (Costa Rica)\";s:11:\"native_name\";s:22:\"Español de Costa Rica\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2/es_CR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_VE\";a:8:{s:8:\"language\";s:5:\"es_VE\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2023-02-22 17:37:32\";s:12:\"english_name\";s:19:\"Spanish (Venezuela)\";s:11:\"native_name\";s:21:\"Español de Venezuela\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2/es_VE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CO\";a:8:{s:8:\"language\";s:5:\"es_CO\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2023-03-14 22:16:37\";s:12:\"english_name\";s:18:\"Spanish (Colombia)\";s:11:\"native_name\";s:20:\"Español de Colombia\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2/es_CO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_ES\";a:8:{s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2023-04-25 15:10:18\";s:12:\"english_name\";s:15:\"Spanish (Spain)\";s:11:\"native_name\";s:8:\"Español\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2/es_ES.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PE\";a:8:{s:8:\"language\";s:5:\"es_PE\";s:7:\"version\";s:5:\"5.8.6\";s:7:\"updated\";s:19:\"2021-10-04 20:53:18\";s:12:\"english_name\";s:14:\"Spanish (Peru)\";s:11:\"native_name\";s:17:\"Español de Perú\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.6/es_PE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_DO\";a:8:{s:8:\"language\";s:5:\"es_DO\";s:7:\"version\";s:5:\"5.8.6\";s:7:\"updated\";s:19:\"2021-10-08 14:32:50\";s:12:\"english_name\";s:28:\"Spanish (Dominican Republic)\";s:11:\"native_name\";s:33:\"Español de República Dominicana\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.6/es_DO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CL\";a:8:{s:8:\"language\";s:5:\"es_CL\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-06-14 16:02:22\";s:12:\"english_name\";s:15:\"Spanish (Chile)\";s:11:\"native_name\";s:17:\"Español de Chile\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/es_CL.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_UY\";a:8:{s:8:\"language\";s:5:\"es_UY\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-03-31 18:33:26\";s:12:\"english_name\";s:17:\"Spanish (Uruguay)\";s:11:\"native_name\";s:19:\"Español de Uruguay\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/es_UY.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PR\";a:8:{s:8:\"language\";s:5:\"es_PR\";s:7:\"version\";s:6:\"5.4.12\";s:7:\"updated\";s:19:\"2020-04-29 15:36:59\";s:12:\"english_name\";s:21:\"Spanish (Puerto Rico)\";s:11:\"native_name\";s:23:\"Español de Puerto Rico\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.4.12/es_PR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_MX\";a:8:{s:8:\"language\";s:5:\"es_MX\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2023-04-11 17:42:00\";s:12:\"english_name\";s:16:\"Spanish (Mexico)\";s:11:\"native_name\";s:19:\"Español de México\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2/es_MX.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_GT\";a:8:{s:8:\"language\";s:5:\"es_GT\";s:7:\"version\";s:6:\"5.2.17\";s:7:\"updated\";s:19:\"2019-03-02 06:35:01\";s:12:\"english_name\";s:19:\"Spanish (Guatemala)\";s:11:\"native_name\";s:21:\"Español de Guatemala\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.2.17/es_GT.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_EC\";a:8:{s:8:\"language\";s:5:\"es_EC\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2023-04-21 13:32:10\";s:12:\"english_name\";s:17:\"Spanish (Ecuador)\";s:11:\"native_name\";s:19:\"Español de Ecuador\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2/es_EC.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"et\";a:8:{s:8:\"language\";s:2:\"et\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2020-08-12 08:38:59\";s:12:\"english_name\";s:8:\"Estonian\";s:11:\"native_name\";s:5:\"Eesti\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8-beta/et.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"et\";i:2;s:3:\"est\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Jätka\";}}s:2:\"eu\";a:8:{s:8:\"language\";s:2:\"eu\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2023-05-05 11:38:06\";s:12:\"english_name\";s:6:\"Basque\";s:11:\"native_name\";s:7:\"Euskara\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/6.2/eu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eu\";i:2;s:3:\"eus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Jarraitu\";}}s:5:\"fa_IR\";a:8:{s:8:\"language\";s:5:\"fa_IR\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2023-04-05 06:53:02\";s:12:\"english_name\";s:7:\"Persian\";s:11:\"native_name\";s:10:\"فارسی\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2/fa_IR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"fa_AF\";a:8:{s:8:\"language\";s:5:\"fa_AF\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2023-04-13 11:28:33\";s:12:\"english_name\";s:21:\"Persian (Afghanistan)\";s:11:\"native_name\";s:31:\"(فارسی (افغانستان\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2/fa_AF.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:2:\"fi\";a:8:{s:8:\"language\";s:2:\"fi\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2023-03-29 07:54:36\";s:12:\"english_name\";s:7:\"Finnish\";s:11:\"native_name\";s:5:\"Suomi\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/6.2/fi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fi\";i:2;s:3:\"fin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Jatka\";}}s:5:\"fr_FR\";a:8:{s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2023-04-27 07:33:05\";s:12:\"english_name\";s:15:\"French (France)\";s:11:\"native_name\";s:9:\"Français\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2/fr_FR.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"fr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_CA\";a:8:{s:8:\"language\";s:5:\"fr_CA\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2023-05-03 19:01:43\";s:12:\"english_name\";s:15:\"French (Canada)\";s:11:\"native_name\";s:19:\"Français du Canada\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2/fr_CA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_BE\";a:8:{s:8:\"language\";s:5:\"fr_BE\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-02-22 13:54:46\";s:12:\"english_name\";s:16:\"French (Belgium)\";s:11:\"native_name\";s:21:\"Français de Belgique\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/fr_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:3:\"fur\";a:8:{s:8:\"language\";s:3:\"fur\";s:7:\"version\";s:6:\"4.8.21\";s:7:\"updated\";s:19:\"2023-04-30 13:56:46\";s:12:\"english_name\";s:8:\"Friulian\";s:11:\"native_name\";s:8:\"Friulian\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.8.21/fur.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"fur\";i:3;s:3:\"fur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"fy\";a:8:{s:8:\"language\";s:2:\"fy\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2022-12-25 12:53:23\";s:12:\"english_name\";s:7:\"Frisian\";s:11:\"native_name\";s:5:\"Frysk\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/6.2/fy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fy\";i:2;s:3:\"fry\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Trochgean\";}}s:2:\"gd\";a:8:{s:8:\"language\";s:2:\"gd\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-08-23 17:41:37\";s:12:\"english_name\";s:15:\"Scottish Gaelic\";s:11:\"native_name\";s:9:\"Gàidhlig\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/gd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"gd\";i:2;s:3:\"gla\";i:3;s:3:\"gla\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"Lean air adhart\";}}s:5:\"gl_ES\";a:8:{s:8:\"language\";s:5:\"gl_ES\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2023-05-03 15:46:14\";s:12:\"english_name\";s:8:\"Galician\";s:11:\"native_name\";s:6:\"Galego\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2/gl_ES.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gl\";i:2;s:3:\"glg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"gu\";a:8:{s:8:\"language\";s:2:\"gu\";s:7:\"version\";s:6:\"4.9.22\";s:7:\"updated\";s:19:\"2018-09-14 12:33:48\";s:12:\"english_name\";s:8:\"Gujarati\";s:11:\"native_name\";s:21:\"ગુજરાતી\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.22/gu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gu\";i:2;s:3:\"guj\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:31:\"ચાલુ રાખવું\";}}s:3:\"haz\";a:8:{s:8:\"language\";s:3:\"haz\";s:7:\"version\";s:6:\"4.4.29\";s:7:\"updated\";s:19:\"2015-12-05 00:59:09\";s:12:\"english_name\";s:8:\"Hazaragi\";s:11:\"native_name\";s:15:\"هزاره گی\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.4.29/haz.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"haz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"he_IL\";a:8:{s:8:\"language\";s:5:\"he_IL\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2023-03-14 21:14:16\";s:12:\"english_name\";s:6:\"Hebrew\";s:11:\"native_name\";s:16:\"עִבְרִית\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2/he_IL.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"he\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"המשך\";}}s:5:\"hi_IN\";a:8:{s:8:\"language\";s:5:\"hi_IN\";s:7:\"version\";s:6:\"5.4.12\";s:7:\"updated\";s:19:\"2020-11-06 12:34:38\";s:12:\"english_name\";s:5:\"Hindi\";s:11:\"native_name\";s:18:\"हिन्दी\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.4.12/hi_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hi\";i:2;s:3:\"hin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"जारी रखें\";}}s:2:\"hr\";a:8:{s:8:\"language\";s:2:\"hr\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2023-04-17 11:08:02\";s:12:\"english_name\";s:8:\"Croatian\";s:11:\"native_name\";s:8:\"Hrvatski\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/6.2/hr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hr\";i:2;s:3:\"hrv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:3:\"hsb\";a:8:{s:8:\"language\";s:3:\"hsb\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2023-02-22 17:37:32\";s:12:\"english_name\";s:13:\"Upper Sorbian\";s:11:\"native_name\";s:17:\"Hornjoserbšćina\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/translation/core/6.2/hsb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"hsb\";i:3;s:3:\"hsb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:4:\"Dale\";}}s:5:\"hu_HU\";a:8:{s:8:\"language\";s:5:\"hu_HU\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2023-05-04 08:00:13\";s:12:\"english_name\";s:9:\"Hungarian\";s:11:\"native_name\";s:6:\"Magyar\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2/hu_HU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hu\";i:2;s:3:\"hun\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Folytatás\";}}s:2:\"hy\";a:8:{s:8:\"language\";s:2:\"hy\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-03 16:21:10\";s:12:\"english_name\";s:8:\"Armenian\";s:11:\"native_name\";s:14:\"Հայերեն\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/hy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hy\";i:2;s:3:\"hye\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Շարունակել\";}}s:5:\"id_ID\";a:8:{s:8:\"language\";s:5:\"id_ID\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2023-04-08 23:10:42\";s:12:\"english_name\";s:10:\"Indonesian\";s:11:\"native_name\";s:16:\"Bahasa Indonesia\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2/id_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"id\";i:2;s:3:\"ind\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Lanjutkan\";}}s:5:\"is_IS\";a:8:{s:8:\"language\";s:5:\"is_IS\";s:7:\"version\";s:6:\"4.9.22\";s:7:\"updated\";s:19:\"2018-12-11 10:40:02\";s:12:\"english_name\";s:9:\"Icelandic\";s:11:\"native_name\";s:9:\"Íslenska\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.22/is_IS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"is\";i:2;s:3:\"isl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Áfram\";}}s:5:\"it_IT\";a:8:{s:8:\"language\";s:5:\"it_IT\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2023-05-06 13:26:56\";s:12:\"english_name\";s:7:\"Italian\";s:11:\"native_name\";s:8:\"Italiano\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2/it_IT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"it\";i:2;s:3:\"ita\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:2:\"ja\";a:8:{s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2023-03-30 13:21:15\";s:12:\"english_name\";s:8:\"Japanese\";s:11:\"native_name\";s:9:\"日本語\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/6.2/ja.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"ja\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"次へ\";}}s:5:\"jv_ID\";a:8:{s:8:\"language\";s:5:\"jv_ID\";s:7:\"version\";s:6:\"4.9.22\";s:7:\"updated\";s:19:\"2019-02-16 23:58:56\";s:12:\"english_name\";s:8:\"Javanese\";s:11:\"native_name\";s:9:\"Basa Jawa\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.22/jv_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"jv\";i:2;s:3:\"jav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Nerusaké\";}}s:5:\"ka_GE\";a:8:{s:8:\"language\";s:5:\"ka_GE\";s:7:\"version\";s:5:\"6.0.3\";s:7:\"updated\";s:19:\"2022-10-24 08:01:09\";s:12:\"english_name\";s:8:\"Georgian\";s:11:\"native_name\";s:21:\"ქართული\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.0.3/ka_GE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ka\";i:2;s:3:\"kat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"გაგრძელება\";}}s:3:\"kab\";a:8:{s:8:\"language\";s:3:\"kab\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2023-04-28 12:09:00\";s:12:\"english_name\";s:6:\"Kabyle\";s:11:\"native_name\";s:9:\"Taqbaylit\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/translation/core/6.2/kab.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"kab\";i:3;s:3:\"kab\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Kemmel\";}}s:2:\"kk\";a:8:{s:8:\"language\";s:2:\"kk\";s:7:\"version\";s:6:\"4.9.22\";s:7:\"updated\";s:19:\"2018-07-10 11:35:44\";s:12:\"english_name\";s:6:\"Kazakh\";s:11:\"native_name\";s:19:\"Қазақ тілі\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.22/kk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kk\";i:2;s:3:\"kaz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Жалғастыру\";}}s:2:\"km\";a:8:{s:8:\"language\";s:2:\"km\";s:7:\"version\";s:6:\"5.2.17\";s:7:\"updated\";s:19:\"2019-06-10 16:18:28\";s:12:\"english_name\";s:5:\"Khmer\";s:11:\"native_name\";s:27:\"ភាសាខ្មែរ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.2.17/km.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"km\";i:2;s:3:\"khm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"បន្ត\";}}s:2:\"kn\";a:8:{s:8:\"language\";s:2:\"kn\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2022-10-20 17:15:28\";s:12:\"english_name\";s:7:\"Kannada\";s:11:\"native_name\";s:15:\"ಕನ್ನಡ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.1.1/kn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kn\";i:2;s:3:\"kan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"ಮುಂದುವರಿಸು\";}}s:5:\"ko_KR\";a:8:{s:8:\"language\";s:5:\"ko_KR\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2023-03-30 09:50:37\";s:12:\"english_name\";s:6:\"Korean\";s:11:\"native_name\";s:9:\"한국어\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2/ko_KR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ko\";i:2;s:3:\"kor\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"계속\";}}s:3:\"ckb\";a:8:{s:8:\"language\";s:3:\"ckb\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2023-04-24 16:15:49\";s:12:\"english_name\";s:16:\"Kurdish (Sorani)\";s:11:\"native_name\";s:13:\"كوردی‎\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/translation/core/6.2/ckb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ku\";i:3;s:3:\"ckb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"به‌رده‌وام به‌\";}}s:2:\"lo\";a:8:{s:8:\"language\";s:2:\"lo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 09:59:23\";s:12:\"english_name\";s:3:\"Lao\";s:11:\"native_name\";s:21:\"ພາສາລາວ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/lo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lo\";i:2;s:3:\"lao\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"ຕໍ່​ໄປ\";}}s:5:\"lt_LT\";a:8:{s:8:\"language\";s:5:\"lt_LT\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2022-11-24 03:51:58\";s:12:\"english_name\";s:10:\"Lithuanian\";s:11:\"native_name\";s:15:\"Lietuvių kalba\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.1.1/lt_LT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lt\";i:2;s:3:\"lit\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Tęsti\";}}s:2:\"lv\";a:8:{s:8:\"language\";s:2:\"lv\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2023-04-02 00:14:51\";s:12:\"english_name\";s:7:\"Latvian\";s:11:\"native_name\";s:16:\"Latviešu valoda\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/6.2/lv.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lv\";i:2;s:3:\"lav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Turpināt\";}}s:5:\"mk_MK\";a:8:{s:8:\"language\";s:5:\"mk_MK\";s:7:\"version\";s:5:\"6.0.3\";s:7:\"updated\";s:19:\"2022-10-01 09:23:52\";s:12:\"english_name\";s:10:\"Macedonian\";s:11:\"native_name\";s:31:\"Македонски јазик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.0.3/mk_MK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mk\";i:2;s:3:\"mkd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Продолжи\";}}s:5:\"ml_IN\";a:8:{s:8:\"language\";s:5:\"ml_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:43:32\";s:12:\"english_name\";s:9:\"Malayalam\";s:11:\"native_name\";s:18:\"മലയാളം\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ml_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ml\";i:2;s:3:\"mal\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"തുടരുക\";}}s:2:\"mn\";a:8:{s:8:\"language\";s:2:\"mn\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2023-03-09 01:41:47\";s:12:\"english_name\";s:9:\"Mongolian\";s:11:\"native_name\";s:12:\"Монгол\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/6.2/mn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mn\";i:2;s:3:\"mon\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"mr\";a:8:{s:8:\"language\";s:2:\"mr\";s:7:\"version\";s:6:\"4.9.22\";s:7:\"updated\";s:19:\"2019-11-22 15:32:08\";s:12:\"english_name\";s:7:\"Marathi\";s:11:\"native_name\";s:15:\"मराठी\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.22/mr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mr\";i:2;s:3:\"mar\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"सुरु ठेवा\";}}s:5:\"ms_MY\";a:8:{s:8:\"language\";s:5:\"ms_MY\";s:7:\"version\";s:6:\"5.5.11\";s:7:\"updated\";s:19:\"2022-03-11 13:52:22\";s:12:\"english_name\";s:5:\"Malay\";s:11:\"native_name\";s:13:\"Bahasa Melayu\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.5.11/ms_MY.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ms\";i:2;s:3:\"msa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Teruskan\";}}s:5:\"my_MM\";a:8:{s:8:\"language\";s:5:\"my_MM\";s:7:\"version\";s:6:\"4.2.34\";s:7:\"updated\";s:19:\"2017-12-26 11:57:10\";s:12:\"english_name\";s:17:\"Myanmar (Burmese)\";s:11:\"native_name\";s:15:\"ဗမာစာ\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.2.34/my_MM.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"my\";i:2;s:3:\"mya\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:54:\"ဆက်လက်လုပ်ဆောင်ပါ။\";}}s:5:\"nb_NO\";a:8:{s:8:\"language\";s:5:\"nb_NO\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2023-03-28 17:21:06\";s:12:\"english_name\";s:19:\"Norwegian (Bokmål)\";s:11:\"native_name\";s:13:\"Norsk bokmål\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2/nb_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nb\";i:2;s:3:\"nob\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsett\";}}s:5:\"ne_NP\";a:8:{s:8:\"language\";s:5:\"ne_NP\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2023-04-03 04:46:20\";s:12:\"english_name\";s:6:\"Nepali\";s:11:\"native_name\";s:18:\"नेपाली\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2/ne_NP.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ne\";i:2;s:3:\"nep\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:43:\"जारी राख्नुहोस्\";}}s:5:\"nl_NL\";a:8:{s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2023-03-30 10:02:03\";s:12:\"english_name\";s:5:\"Dutch\";s:11:\"native_name\";s:10:\"Nederlands\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2/nl_NL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:12:\"nl_NL_formal\";a:8:{s:8:\"language\";s:12:\"nl_NL_formal\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2023-02-22 21:20:14\";s:12:\"english_name\";s:14:\"Dutch (Formal)\";s:11:\"native_name\";s:20:\"Nederlands (Formeel)\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/translation/core/6.2/nl_NL_formal.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_BE\";a:8:{s:8:\"language\";s:5:\"nl_BE\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2023-05-05 08:07:47\";s:12:\"english_name\";s:15:\"Dutch (Belgium)\";s:11:\"native_name\";s:20:\"Nederlands (België)\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2/nl_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nn_NO\";a:8:{s:8:\"language\";s:5:\"nn_NO\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-03-18 10:59:16\";s:12:\"english_name\";s:19:\"Norwegian (Nynorsk)\";s:11:\"native_name\";s:13:\"Norsk nynorsk\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/nn_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nn\";i:2;s:3:\"nno\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Hald fram\";}}s:3:\"oci\";a:8:{s:8:\"language\";s:3:\"oci\";s:7:\"version\";s:6:\"4.8.21\";s:7:\"updated\";s:19:\"2017-08-25 10:03:08\";s:12:\"english_name\";s:7:\"Occitan\";s:11:\"native_name\";s:7:\"Occitan\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.8.21/oci.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"oc\";i:2;s:3:\"oci\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Contunhar\";}}s:5:\"pa_IN\";a:8:{s:8:\"language\";s:5:\"pa_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-16 05:19:43\";s:12:\"english_name\";s:15:\"Panjabi (India)\";s:11:\"native_name\";s:18:\"ਪੰਜਾਬੀ\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/pa_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pa\";i:2;s:3:\"pan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"ਜਾਰੀ ਰੱਖੋ\";}}s:5:\"pl_PL\";a:8:{s:8:\"language\";s:5:\"pl_PL\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2023-05-04 17:18:27\";s:12:\"english_name\";s:6:\"Polish\";s:11:\"native_name\";s:6:\"Polski\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2/pl_PL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pl\";i:2;s:3:\"pol\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Kontynuuj\";}}s:2:\"ps\";a:8:{s:8:\"language\";s:2:\"ps\";s:7:\"version\";s:6:\"4.3.30\";s:7:\"updated\";s:19:\"2015-12-02 21:41:29\";s:12:\"english_name\";s:6:\"Pashto\";s:11:\"native_name\";s:8:\"پښتو\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.3.30/ps.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ps\";i:2;s:3:\"pus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"دوام ورکړه\";}}s:5:\"pt_AO\";a:8:{s:8:\"language\";s:5:\"pt_AO\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2022-10-01 12:16:29\";s:12:\"english_name\";s:19:\"Portuguese (Angola)\";s:11:\"native_name\";s:20:\"Português de Angola\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2/pt_AO.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_BR\";a:8:{s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2023-03-29 21:22:43\";s:12:\"english_name\";s:19:\"Portuguese (Brazil)\";s:11:\"native_name\";s:20:\"Português do Brasil\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2/pt_BR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pt\";i:2;s:3:\"por\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:10:\"pt_PT_ao90\";a:8:{s:8:\"language\";s:10:\"pt_PT_ao90\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2023-03-30 23:24:56\";s:12:\"english_name\";s:27:\"Portuguese (Portugal, AO90)\";s:11:\"native_name\";s:17:\"Português (AO90)\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/6.2/pt_PT_ao90.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_PT\";a:8:{s:8:\"language\";s:5:\"pt_PT\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2023-04-21 10:51:56\";s:12:\"english_name\";s:21:\"Portuguese (Portugal)\";s:11:\"native_name\";s:10:\"Português\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2/pt_PT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:3:\"rhg\";a:8:{s:8:\"language\";s:3:\"rhg\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-16 13:03:18\";s:12:\"english_name\";s:8:\"Rohingya\";s:11:\"native_name\";s:8:\"Ruáinga\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/rhg.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"rhg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"ro_RO\";a:8:{s:8:\"language\";s:5:\"ro_RO\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2023-04-22 15:57:02\";s:12:\"english_name\";s:8:\"Romanian\";s:11:\"native_name\";s:8:\"Română\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2/ro_RO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ro\";i:2;s:3:\"ron\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuă\";}}s:5:\"ru_RU\";a:8:{s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2023-05-04 09:31:17\";s:12:\"english_name\";s:7:\"Russian\";s:11:\"native_name\";s:14:\"Русский\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2/ru_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ru\";i:2;s:3:\"rus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продолжить\";}}s:3:\"sah\";a:8:{s:8:\"language\";s:3:\"sah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-21 02:06:41\";s:12:\"english_name\";s:5:\"Sakha\";s:11:\"native_name\";s:14:\"Сахалыы\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/sah.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"sah\";i:3;s:3:\"sah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Салҕаа\";}}s:3:\"snd\";a:8:{s:8:\"language\";s:3:\"snd\";s:7:\"version\";s:6:\"5.4.12\";s:7:\"updated\";s:19:\"2020-07-07 01:53:37\";s:12:\"english_name\";s:6:\"Sindhi\";s:11:\"native_name\";s:8:\"سنڌي\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/5.4.12/snd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"sd\";i:2;s:3:\"snd\";i:3;s:3:\"snd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"اڳتي هلو\";}}s:5:\"si_LK\";a:8:{s:8:\"language\";s:5:\"si_LK\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 06:00:52\";s:12:\"english_name\";s:7:\"Sinhala\";s:11:\"native_name\";s:15:\"සිංහල\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/si_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"si\";i:2;s:3:\"sin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:44:\"දිගටම කරගෙන යන්න\";}}s:5:\"sk_SK\";a:8:{s:8:\"language\";s:5:\"sk_SK\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2023-05-01 06:30:14\";s:12:\"english_name\";s:6:\"Slovak\";s:11:\"native_name\";s:11:\"Slovenčina\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2/sk_SK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sk\";i:2;s:3:\"slk\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Pokračovať\";}}s:3:\"skr\";a:8:{s:8:\"language\";s:3:\"skr\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2023-04-03 08:30:58\";s:12:\"english_name\";s:7:\"Saraiki\";s:11:\"native_name\";s:14:\"سرائیکی\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/translation/core/6.2/skr.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"skr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"جاری رکھو\";}}s:5:\"sl_SI\";a:8:{s:8:\"language\";s:5:\"sl_SI\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2022-11-11 12:48:55\";s:12:\"english_name\";s:9:\"Slovenian\";s:11:\"native_name\";s:13:\"Slovenščina\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2/sl_SI.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sl\";i:2;s:3:\"slv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Nadaljuj\";}}s:2:\"sq\";a:8:{s:8:\"language\";s:2:\"sq\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2023-04-19 12:09:33\";s:12:\"english_name\";s:8:\"Albanian\";s:11:\"native_name\";s:5:\"Shqip\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/6.2/sq.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sq\";i:2;s:3:\"sqi\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Vazhdo\";}}s:5:\"sr_RS\";a:8:{s:8:\"language\";s:5:\"sr_RS\";s:7:\"version\";s:5:\"5.8.6\";s:7:\"updated\";s:19:\"2021-08-01 21:21:06\";s:12:\"english_name\";s:7:\"Serbian\";s:11:\"native_name\";s:23:\"Српски језик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.6/sr_RS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sr\";i:2;s:3:\"srp\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:14:\"Настави\";}}s:5:\"sv_SE\";a:8:{s:8:\"language\";s:5:\"sv_SE\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2023-05-05 19:57:26\";s:12:\"english_name\";s:7:\"Swedish\";s:11:\"native_name\";s:7:\"Svenska\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2/sv_SE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sv\";i:2;s:3:\"swe\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Fortsätt\";}}s:2:\"sw\";a:8:{s:8:\"language\";s:2:\"sw\";s:7:\"version\";s:6:\"5.3.14\";s:7:\"updated\";s:19:\"2019-10-13 15:35:35\";s:12:\"english_name\";s:7:\"Swahili\";s:11:\"native_name\";s:9:\"Kiswahili\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.3.14/sw.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sw\";i:2;s:3:\"swa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Endelea\";}}s:3:\"szl\";a:8:{s:8:\"language\";s:3:\"szl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-24 19:58:14\";s:12:\"english_name\";s:8:\"Silesian\";s:11:\"native_name\";s:17:\"Ślōnskŏ gŏdka\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/szl.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"szl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:13:\"Kōntynuować\";}}s:5:\"ta_IN\";a:8:{s:8:\"language\";s:5:\"ta_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:22:47\";s:12:\"english_name\";s:5:\"Tamil\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ta_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"தொடரவும்\";}}s:5:\"ta_LK\";a:8:{s:8:\"language\";s:5:\"ta_LK\";s:7:\"version\";s:6:\"4.2.34\";s:7:\"updated\";s:19:\"2015-12-03 01:07:44\";s:12:\"english_name\";s:17:\"Tamil (Sri Lanka)\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.2.34/ta_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"தொடர்க\";}}s:2:\"te\";a:8:{s:8:\"language\";s:2:\"te\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:47:39\";s:12:\"english_name\";s:6:\"Telugu\";s:11:\"native_name\";s:18:\"తెలుగు\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/te.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"te\";i:2;s:3:\"tel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"కొనసాగించు\";}}s:2:\"th\";a:8:{s:8:\"language\";s:2:\"th\";s:7:\"version\";s:5:\"5.8.6\";s:7:\"updated\";s:19:\"2022-06-08 04:30:30\";s:12:\"english_name\";s:4:\"Thai\";s:11:\"native_name\";s:9:\"ไทย\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.8.6/th.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"th\";i:2;s:3:\"tha\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"ต่อไป\";}}s:2:\"tl\";a:8:{s:8:\"language\";s:2:\"tl\";s:7:\"version\";s:6:\"4.8.21\";s:7:\"updated\";s:19:\"2017-09-30 09:04:29\";s:12:\"english_name\";s:7:\"Tagalog\";s:11:\"native_name\";s:7:\"Tagalog\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.21/tl.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tl\";i:2;s:3:\"tgl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Magpatuloy\";}}s:5:\"tr_TR\";a:8:{s:8:\"language\";s:5:\"tr_TR\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2023-03-28 20:25:07\";s:12:\"english_name\";s:7:\"Turkish\";s:11:\"native_name\";s:8:\"Türkçe\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2/tr_TR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tr\";i:2;s:3:\"tur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Devam\";}}s:5:\"tt_RU\";a:8:{s:8:\"language\";s:5:\"tt_RU\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-20 20:20:50\";s:12:\"english_name\";s:5:\"Tatar\";s:11:\"native_name\";s:19:\"Татар теле\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/tt_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tt\";i:2;s:3:\"tat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"дәвам итү\";}}s:3:\"tah\";a:8:{s:8:\"language\";s:3:\"tah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-06 18:39:39\";s:12:\"english_name\";s:8:\"Tahitian\";s:11:\"native_name\";s:10:\"Reo Tahiti\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/tah.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"ty\";i:2;s:3:\"tah\";i:3;s:3:\"tah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"ug_CN\";a:8:{s:8:\"language\";s:5:\"ug_CN\";s:7:\"version\";s:6:\"4.9.22\";s:7:\"updated\";s:19:\"2021-07-03 18:41:33\";s:12:\"english_name\";s:6:\"Uighur\";s:11:\"native_name\";s:16:\"ئۇيغۇرچە\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.22/ug_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ug\";i:2;s:3:\"uig\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:26:\"داۋاملاشتۇرۇش\";}}s:2:\"uk\";a:8:{s:8:\"language\";s:2:\"uk\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2023-03-04 10:46:30\";s:12:\"english_name\";s:9:\"Ukrainian\";s:11:\"native_name\";s:20:\"Українська\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.1.1/uk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uk\";i:2;s:3:\"ukr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продовжити\";}}s:2:\"ur\";a:8:{s:8:\"language\";s:2:\"ur\";s:7:\"version\";s:6:\"5.4.12\";s:7:\"updated\";s:19:\"2020-04-09 11:17:33\";s:12:\"english_name\";s:4:\"Urdu\";s:11:\"native_name\";s:8:\"اردو\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.4.12/ur.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ur\";i:2;s:3:\"urd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"جاری رکھیں\";}}s:5:\"uz_UZ\";a:8:{s:8:\"language\";s:5:\"uz_UZ\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-02-28 12:02:22\";s:12:\"english_name\";s:5:\"Uzbek\";s:11:\"native_name\";s:11:\"O‘zbekcha\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/uz_UZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uz\";i:2;s:3:\"uzb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Davom etish\";}}s:2:\"vi\";a:8:{s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2023-03-10 01:15:33\";s:12:\"english_name\";s:10:\"Vietnamese\";s:11:\"native_name\";s:14:\"Tiếng Việt\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/6.2/vi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"vi\";i:2;s:3:\"vie\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Tiếp tục\";}}s:5:\"zh_HK\";a:8:{s:8:\"language\";s:5:\"zh_HK\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2022-07-15 15:25:03\";s:12:\"english_name\";s:19:\"Chinese (Hong Kong)\";s:11:\"native_name\";s:12:\"香港中文\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2/zh_HK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_TW\";a:8:{s:8:\"language\";s:5:\"zh_TW\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2023-05-05 06:10:48\";s:12:\"english_name\";s:16:\"Chinese (Taiwan)\";s:11:\"native_name\";s:12:\"繁體中文\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2/zh_TW.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_CN\";a:8:{s:8:\"language\";s:5:\"zh_CN\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2023-04-23 22:48:55\";s:12:\"english_name\";s:15:\"Chinese (China)\";s:11:\"native_name\";s:12:\"简体中文\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2/zh_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"继续\";}}}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(416, 'litespeed.conf.hash', '6aaKyix2rqb1S2nTnYASWy5D1zVFelVk', 'yes'),
(417, 'litespeed.conf.auto_upgrade', '', 'yes'),
(418, 'litespeed.conf.api_key', '', 'yes'),
(419, 'litespeed.conf.server_ip', '', 'yes'),
(420, 'litespeed.conf.guest', '1', 'yes'),
(421, 'litespeed.conf.guest_optm', '1', 'yes'),
(422, 'litespeed.conf.news', '1', 'yes'),
(423, 'litespeed.conf.guest_uas', '[\"Lighthouse\",\"GTmetrix\",\"Google\",\"Pingdom\",\"bot\",\"PTST\",\"HeadlessChrome\"]', 'yes'),
(424, 'litespeed.conf.guest_ips', '[\"208.70.247.157\",\"172.255.48.130\",\"172.255.48.131\",\"172.255.48.132\",\"172.255.48.133\",\"172.255.48.134\",\"172.255.48.135\",\"172.255.48.136\",\"172.255.48.137\",\"172.255.48.138\",\"172.255.48.139\",\"172.255.48.140\",\"172.255.48.141\",\"172.255.48.142\",\"172.255.48.143\",\"172.255.48.144\",\"172.255.48.145\",\"172.255.48.146\",\"172.255.48.147\",\"52.229.122.240\",\"104.214.72.101\",\"13.66.7.11\",\"13.85.24.83\",\"13.85.24.90\",\"13.85.82.26\",\"40.74.242.253\",\"40.74.243.13\",\"40.74.243.176\",\"104.214.48.247\",\"157.55.189.189\",\"104.214.110.135\",\"70.37.83.240\",\"65.52.36.250\",\"13.78.216.56\",\"52.162.212.163\",\"23.96.34.105\",\"65.52.113.236\",\"172.255.61.34\",\"172.255.61.35\",\"172.255.61.36\",\"172.255.61.37\",\"172.255.61.38\",\"172.255.61.39\",\"172.255.61.40\",\"104.41.2.19\",\"191.235.98.164\",\"191.235.99.221\",\"191.232.194.51\",\"52.237.235.185\",\"52.237.250.73\",\"52.237.236.145\",\"104.211.143.8\",\"104.211.165.53\",\"52.172.14.87\",\"40.83.89.214\",\"52.175.57.81\",\"20.188.63.151\",\"20.52.36.49\",\"52.246.165.153\",\"51.144.102.233\",\"13.76.97.224\",\"102.133.169.66\",\"52.231.199.170\",\"13.53.162.7\",\"40.123.218.94\"]', 'yes'),
(425, 'litespeed.conf.cache', '1', 'yes'),
(426, 'litespeed.conf.cache-priv', '1', 'yes'),
(427, 'litespeed.conf.cache-commenter', '1', 'yes'),
(428, 'litespeed.conf.cache-rest', '1', 'yes'),
(429, 'litespeed.conf.cache-page_login', '1', 'yes'),
(430, 'litespeed.conf.cache-favicon', '1', 'yes'),
(431, 'litespeed.conf.cache-resources', '1', 'yes'),
(432, 'litespeed.conf.cache-mobile', '1', 'yes'),
(433, 'litespeed.conf.cache-mobile_rules', '[\"Mobile\",\"Android\",\"Silk\\/\",\"Kindle\",\"BlackBerry\",\"Opera Mini\",\"Opera Mobi\"]', 'yes'),
(434, 'litespeed.conf.cache-browser', '1', 'yes'),
(435, 'litespeed.conf.cache-exc_useragents', '[]', 'yes'),
(436, 'litespeed.conf.cache-exc_cookies', '[]', 'yes'),
(437, 'litespeed.conf.cache-exc_qs', '[]', 'yes'),
(438, 'litespeed.conf.cache-exc_cat', '[]', 'yes'),
(439, 'litespeed.conf.cache-exc_tag', '[]', 'yes'),
(440, 'litespeed.conf.cache-force_uri', '[]', 'yes'),
(441, 'litespeed.conf.cache-force_pub_uri', '[]', 'yes'),
(442, 'litespeed.conf.cache-priv_uri', '[]', 'yes'),
(443, 'litespeed.conf.cache-exc', '[]', 'yes'),
(444, 'litespeed.conf.cache-exc_roles', '[]', 'yes'),
(445, 'litespeed.conf.cache-drop_qs', '[\"fbclid\",\"gclid\",\"utm*\",\"_ga\"]', 'yes'),
(446, 'litespeed.conf.cache-ttl_pub', '604800', 'yes'),
(447, 'litespeed.conf.cache-ttl_priv', '1800', 'yes'),
(448, 'litespeed.conf.cache-ttl_frontpage', '604800', 'yes'),
(449, 'litespeed.conf.cache-ttl_feed', '604800', 'yes'),
(450, 'litespeed.conf.cache-ttl_rest', '604800', 'yes'),
(451, 'litespeed.conf.cache-ttl_browser', '31557600', 'yes'),
(452, 'litespeed.conf.cache-ttl_status', '[\"404 3600\",\"500 600\"]', 'yes'),
(453, 'litespeed.conf.cache-login_cookie', '', 'yes'),
(454, 'litespeed.conf.cache-vary_group', '{\"administrator\":\"99\",\"author\":\"0\",\"contributor\":\"0\",\"editor\":\"0\",\"subscriber\":\"0\",\"wpseo_editor\":\"0\",\"wpseo_manager\":\"0\"}', 'yes'),
(455, 'litespeed.conf.purge-upgrade', '1', 'yes'),
(456, 'litespeed.conf.purge-stale', '', 'yes'),
(457, 'litespeed.conf.purge-post_all', '', 'yes'),
(458, 'litespeed.conf.purge-post_f', '1', 'yes'),
(459, 'litespeed.conf.purge-post_h', '1', 'yes'),
(460, 'litespeed.conf.purge-post_p', '1', 'yes'),
(461, 'litespeed.conf.purge-post_pwrp', '1', 'yes'),
(462, 'litespeed.conf.purge-post_a', '1', 'yes'),
(463, 'litespeed.conf.purge-post_y', '', 'yes'),
(464, 'litespeed.conf.purge-post_m', '1', 'yes'),
(465, 'litespeed.conf.purge-post_d', '', 'yes'),
(466, 'litespeed.conf.purge-post_t', '1', 'yes'),
(467, 'litespeed.conf.purge-post_pt', '1', 'yes'),
(468, 'litespeed.conf.purge-timed_urls', '[]', 'yes'),
(469, 'litespeed.conf.purge-timed_urls_time', '', 'yes'),
(470, 'litespeed.conf.purge-hook_all', '[\"switch_theme\",\"wp_create_nav_menu\",\"wp_update_nav_menu\",\"wp_delete_nav_menu\",\"create_term\",\"edit_terms\",\"delete_term\",\"add_link\",\"edit_link\",\"delete_link\"]', 'yes'),
(471, 'litespeed.conf.esi', '', 'yes'),
(472, 'litespeed.conf.esi-cache_admbar', '1', 'yes'),
(473, 'litespeed.conf.esi-cache_commform', '1', 'yes'),
(474, 'litespeed.conf.esi-nonce', '[\"stats_nonce\",\"subscribe_nonce\"]', 'yes'),
(475, 'litespeed.conf.util-instant_click', '', 'yes'),
(476, 'litespeed.conf.util-no_https_vary', '', 'yes'),
(477, 'litespeed.conf.debug-disable_all', '', 'yes'),
(478, 'litespeed.conf.debug', '', 'yes'),
(479, 'litespeed.conf.debug-ips', '[\"127.0.0.1\"]', 'yes'),
(480, 'litespeed.conf.debug-level', '', 'yes'),
(481, 'litespeed.conf.debug-filesize', '3', 'yes'),
(482, 'litespeed.conf.debug-cookie', '', 'yes'),
(483, 'litespeed.conf.debug-collaps_qs', '', 'yes'),
(484, 'litespeed.conf.debug-inc', '[]', 'yes'),
(485, 'litespeed.conf.debug-exc', '[]', 'yes'),
(486, 'litespeed.conf.debug-exc_strings', '[]', 'yes'),
(487, 'litespeed.conf.db_optm-revisions_max', '0', 'yes'),
(488, 'litespeed.conf.db_optm-revisions_age', '0', 'yes'),
(489, 'litespeed.conf.optm-css_min', '1', 'yes'),
(490, 'litespeed.conf.optm-css_comb', '1', 'yes'),
(491, 'litespeed.conf.optm-css_comb_ext_inl', '1', 'yes'),
(492, 'litespeed.conf.optm-ucss', '1', 'yes'),
(493, 'litespeed.conf.optm-ucss_inline', '1', 'yes'),
(494, 'litespeed.conf.optm-ucss_whitelist', '[]', 'yes'),
(495, 'litespeed.conf.optm-ucss_file_exc_inline', '[]', 'yes'),
(496, 'litespeed.conf.optm-ucss_exc', '[]', 'yes'),
(497, 'litespeed.conf.optm-css_exc', '[]', 'yes'),
(498, 'litespeed.conf.optm-js_min', '1', 'yes'),
(499, 'litespeed.conf.optm-js_comb', '1', 'yes'),
(500, 'litespeed.conf.optm-js_comb_ext_inl', '', 'yes'),
(501, 'litespeed.conf.optm-js_exc', '[\"jquery.js\",\"jquery.min.js\"]', 'yes'),
(502, 'litespeed.conf.optm-html_min', '1', 'yes'),
(503, 'litespeed.conf.optm-html_lazy', '[]', 'yes'),
(504, 'litespeed.conf.optm-qs_rm', '1', 'yes'),
(505, 'litespeed.conf.optm-ggfonts_rm', '', 'yes'),
(506, 'litespeed.conf.optm-css_async', '1', 'yes'),
(507, 'litespeed.conf.optm-ccss_per_url', '1', 'yes'),
(508, 'litespeed.conf.optm-ccss_sep_posttype', '[\"page\"]', 'yes'),
(509, 'litespeed.conf.optm-ccss_sep_uri', '[]', 'yes'),
(510, 'litespeed.conf.optm-css_async_inline', '1', 'yes'),
(511, 'litespeed.conf.optm-css_font_display', '1', 'yes'),
(512, 'litespeed.conf.optm-js_defer', '1', 'yes'),
(513, 'litespeed.conf.optm-emoji_rm', '1', 'yes'),
(514, 'litespeed.conf.optm-noscript_rm', '1', 'yes'),
(515, 'litespeed.conf.optm-ggfonts_async', '', 'yes'),
(516, 'litespeed.conf.optm-exc_roles', '[]', 'yes'),
(517, 'litespeed.conf.optm-ccss_con', '', 'yes'),
(518, 'litespeed.conf.optm-js_defer_exc', '[\"jquery.js\",\"jquery.min.js\",\"gtm.js\",\"analytics.js\"]', 'yes'),
(519, 'litespeed.conf.optm-gm_js_exc', '[]', 'yes'),
(520, 'litespeed.conf.optm-dns_prefetch', '[]', 'yes'),
(521, 'litespeed.conf.optm-dns_prefetch_ctrl', '1', 'yes'),
(522, 'litespeed.conf.optm-exc', '[]', 'yes'),
(523, 'litespeed.conf.optm-guest_only', '1', 'yes'),
(524, 'litespeed.conf.object', '', 'yes'),
(525, 'litespeed.conf.object-kind', '', 'yes'),
(526, 'litespeed.conf.object-host', 'localhost', 'yes'),
(527, 'litespeed.conf.object-port', '11211', 'yes'),
(528, 'litespeed.conf.object-life', '360', 'yes'),
(529, 'litespeed.conf.object-persistent', '1', 'yes'),
(530, 'litespeed.conf.object-admin', '1', 'yes'),
(531, 'litespeed.conf.object-transients', '1', 'yes'),
(532, 'litespeed.conf.object-db_id', '0', 'yes'),
(533, 'litespeed.conf.object-user', '', 'yes'),
(534, 'litespeed.conf.object-pswd', '', 'yes'),
(535, 'litespeed.conf.object-global_groups', '[\"users\",\"userlogins\",\"useremail\",\"userslugs\",\"usermeta\",\"user_meta\",\"site-transient\",\"site-options\",\"site-lookup\",\"site-details\",\"blog-lookup\",\"blog-details\",\"blog-id-cache\",\"rss\",\"global-posts\",\"global-cache-test\"]', 'yes'),
(536, 'litespeed.conf.object-non_persistent_groups', '[\"comment\",\"counts\",\"plugins\",\"wc_session_id\"]', 'yes'),
(537, 'litespeed.conf.discuss-avatar_cache', '1', 'yes'),
(538, 'litespeed.conf.discuss-avatar_cron', '1', 'yes'),
(539, 'litespeed.conf.discuss-avatar_cache_ttl', '604800', 'yes'),
(540, 'litespeed.conf.optm-localize', '', 'yes'),
(541, 'litespeed.conf.optm-localize_domains', '[\"### Popular scripts ###\",\"https:\\/\\/platform.twitter.com\\/widgets.js\",\"https:\\/\\/connect.facebook.net\\/en_US\\/fbevents.js\"]', 'yes'),
(542, 'litespeed.conf.media-lazy', '', 'yes'),
(543, 'litespeed.conf.media-lazy_placeholder', '', 'yes'),
(544, 'litespeed.conf.media-placeholder_resp', '', 'yes'),
(545, 'litespeed.conf.media-placeholder_resp_color', '#cfd4db', 'yes'),
(546, 'litespeed.conf.media-placeholder_resp_svg', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"{width}\" height=\"{height}\" viewBox=\"0 0 {width} {height}\"><rect width=\"100%\" height=\"100%\" style=\"fill:{color};fill-opacity: 0.1;\"/></svg>', 'yes'),
(547, 'litespeed.conf.media-lqip', '', 'yes'),
(548, 'litespeed.conf.media-lqip_qual', '4', 'yes'),
(549, 'litespeed.conf.media-lqip_min_w', '150', 'yes'),
(550, 'litespeed.conf.media-lqip_min_h', '150', 'yes'),
(551, 'litespeed.conf.media-placeholder_resp_async', '1', 'yes'),
(552, 'litespeed.conf.media-iframe_lazy', '1', 'yes'),
(553, 'litespeed.conf.media-add_missing_sizes', '', 'yes'),
(554, 'litespeed.conf.media-lazy_exc', '[]', 'yes'),
(555, 'litespeed.conf.media-lazy_cls_exc', '[\"wmu-preview-img\"]', 'yes'),
(556, 'litespeed.conf.media-lazy_parent_cls_exc', '[]', 'yes'),
(557, 'litespeed.conf.media-iframe_lazy_cls_exc', '[]', 'yes'),
(558, 'litespeed.conf.media-iframe_lazy_parent_cls_exc', '[]', 'yes'),
(559, 'litespeed.conf.media-lazy_uri_exc', '[]', 'yes'),
(560, 'litespeed.conf.media-lqip_exc', '[]', 'yes'),
(561, 'litespeed.conf.media-vpi', '', 'yes'),
(562, 'litespeed.conf.media-vpi_cron', '', 'yes'),
(563, 'litespeed.conf.img_optm-auto', '1', 'yes'),
(564, 'litespeed.conf.img_optm-cron', '1', 'yes'),
(565, 'litespeed.conf.img_optm-ori', '1', 'yes'),
(566, 'litespeed.conf.img_optm-rm_bkup', '', 'yes'),
(567, 'litespeed.conf.img_optm-webp', '1', 'yes'),
(568, 'litespeed.conf.img_optm-lossless', '', 'yes'),
(569, 'litespeed.conf.img_optm-exif', '', 'yes'),
(570, 'litespeed.conf.img_optm-webp_attr', '[\"img.src\",\"div.data-thumb\",\"img.data-src\",\"img.data-lazyload\",\"div.data-large_image\",\"img.retina_logo_url\",\"div.data-parallax-image\",\"div.data-vc-parallax-image\",\"video.poster\"]', 'yes'),
(571, 'litespeed.conf.img_optm-webp_replace_srcset', '1', 'yes'),
(572, 'litespeed.conf.img_optm-jpg_quality', '82', 'yes'),
(573, 'litespeed.conf.crawler', '', 'yes'),
(574, 'litespeed.conf.crawler-usleep', '500', 'yes'),
(575, 'litespeed.conf.crawler-run_duration', '400', 'yes'),
(576, 'litespeed.conf.crawler-run_interval', '600', 'yes'),
(577, 'litespeed.conf.crawler-crawl_interval', '302400', 'yes'),
(578, 'litespeed.conf.crawler-threads', '3', 'yes'),
(579, 'litespeed.conf.crawler-timeout', '30', 'yes'),
(580, 'litespeed.conf.crawler-load_limit', '1', 'yes'),
(581, 'litespeed.conf.crawler-sitemap', '', 'yes'),
(582, 'litespeed.conf.crawler-drop_domain', '1', 'yes'),
(583, 'litespeed.conf.crawler-map_timeout', '120', 'yes'),
(584, 'litespeed.conf.crawler-roles', '[]', 'yes'),
(585, 'litespeed.conf.crawler-cookies', '[]', 'yes'),
(586, 'litespeed.conf.misc-heartbeat_front', '', 'yes'),
(587, 'litespeed.conf.misc-heartbeat_front_ttl', '60', 'yes'),
(588, 'litespeed.conf.misc-heartbeat_back', '', 'yes'),
(589, 'litespeed.conf.misc-heartbeat_back_ttl', '60', 'yes'),
(590, 'litespeed.conf.misc-heartbeat_editor', '', 'yes'),
(591, 'litespeed.conf.misc-heartbeat_editor_ttl', '15', 'yes'),
(592, 'litespeed.conf.cdn', '', 'yes'),
(593, 'litespeed.conf.cdn-ori', '[]', 'yes'),
(594, 'litespeed.conf.cdn-ori_dir', '[\"wp-content\",\"wp-includes\"]', 'yes'),
(595, 'litespeed.conf.cdn-exc', '[]', 'yes'),
(596, 'litespeed.conf.cdn-quic', '', 'yes'),
(597, 'litespeed.conf.cdn-cloudflare', '', 'yes'),
(598, 'litespeed.conf.cdn-cloudflare_email', '', 'yes'),
(599, 'litespeed.conf.cdn-cloudflare_key', '', 'yes'),
(600, 'litespeed.conf.cdn-cloudflare_name', '', 'yes'),
(601, 'litespeed.conf.cdn-cloudflare_zone', '', 'yes'),
(602, 'litespeed.conf.cdn-mapping', '[{\"url\":\"\",\"inc_img\":\"1\",\"inc_css\":\"1\",\"inc_js\":\"1\",\"filetype\":[\".aac\",\".css\",\".eot\",\".gif\",\".jpeg\",\".jpg\",\".js\",\".less\",\".mp3\",\".mp4\",\".ogg\",\".otf\",\".pdf\",\".png\",\".svg\",\".ttf\",\".webp\",\".woff\",\".woff2\"]}]', 'yes'),
(603, 'litespeed.conf.cdn-attr', '[\".src\",\".data-src\",\".href\",\".poster\",\"source.srcset\"]', 'yes'),
(604, 'litespeed.conf.qc-token', '', 'yes'),
(605, 'litespeed.conf.qc-nameservers', '', 'yes'),
(607, 'litespeed.gui.lscwp_whm_install', '-1', 'yes'),
(608, 'litespeed.gui.dismiss', '-1', 'yes'),
(609, 'litespeed.gui._summary', '{\"new_version\":1683989270,\"score\":1684594070}', 'yes'),
(610, 'litespeed.data.upgrading', '-1', 'yes'),
(611, 'litespeed.admin_display.messages', '[\"<div class=\\\"litespeed_icon notice notice-success is-dismissible\\\"><p>All QUIC.cloud service queues have been cleared.<\\/p><\\/div>\",\"<div class=\\\"litespeed_icon notice notice-success is-dismissible\\\"><p>Purged all caches successfully.<\\/p><\\/div>\"]', 'yes'),
(612, 'yoast_migrations_free', 'a:1:{s:7:\"version\";s:4:\"20.6\";}', 'yes'),
(613, 'wpseo', 'a:101:{s:8:\"tracking\";b:0;s:16:\"toggled_tracking\";b:0;s:22:\"license_server_version\";b:0;s:15:\"ms_defaults_set\";b:0;s:40:\"ignore_search_engines_discouraged_notice\";b:0;s:19:\"indexing_first_time\";b:0;s:16:\"indexing_started\";b:0;s:15:\"indexing_reason\";s:0:\"\";s:29:\"indexables_indexing_completed\";b:1;s:13:\"index_now_key\";s:0:\"\";s:7:\"version\";s:4:\"20.6\";s:16:\"previous_version\";s:0:\"\";s:20:\"disableadvanced_meta\";b:1;s:30:\"enable_headless_rest_endpoints\";b:1;s:17:\"ryte_indexability\";b:0;s:11:\"baiduverify\";s:0:\"\";s:12:\"googleverify\";s:0:\"\";s:8:\"msverify\";s:0:\"\";s:12:\"yandexverify\";s:0:\"\";s:9:\"site_type\";s:0:\"\";s:20:\"has_multiple_authors\";s:0:\"\";s:16:\"environment_type\";s:0:\"\";s:23:\"content_analysis_active\";b:1;s:23:\"keyword_analysis_active\";b:1;s:34:\"inclusive_language_analysis_active\";b:0;s:21:\"enable_admin_bar_menu\";b:1;s:26:\"enable_cornerstone_content\";b:1;s:18:\"enable_xml_sitemap\";b:1;s:24:\"enable_text_link_counter\";b:1;s:16:\"enable_index_now\";b:1;s:22:\"show_onboarding_notice\";b:1;s:18:\"first_activated_on\";i:1683384474;s:13:\"myyoast-oauth\";b:0;s:26:\"semrush_integration_active\";b:1;s:14:\"semrush_tokens\";a:0:{}s:20:\"semrush_country_code\";s:2:\"us\";s:19:\"permalink_structure\";s:0:\"\";s:8:\"home_url\";s:0:\"\";s:18:\"dynamic_permalinks\";b:0;s:17:\"category_base_url\";s:0:\"\";s:12:\"tag_base_url\";s:0:\"\";s:21:\"custom_taxonomy_slugs\";a:0:{}s:29:\"enable_enhanced_slack_sharing\";b:1;s:25:\"zapier_integration_active\";b:0;s:19:\"zapier_subscription\";a:0:{}s:14:\"zapier_api_key\";s:0:\"\";s:23:\"enable_metabox_insights\";b:1;s:23:\"enable_link_suggestions\";b:1;s:26:\"algolia_integration_active\";b:0;s:14:\"import_cursors\";a:0:{}s:13:\"workouts_data\";a:1:{s:13:\"configuration\";a:1:{s:13:\"finishedSteps\";a:0:{}}}s:28:\"configuration_finished_steps\";a:3:{i:0;s:18:\"siteRepresentation\";i:1;s:14:\"socialProfiles\";i:2;s:19:\"personalPreferences\";}s:36:\"dismiss_configuration_workout_notice\";b:0;s:34:\"dismiss_premium_deactivated_notice\";b:0;s:34:\"dismiss_old_premium_version_notice\";s:0:\"\";s:19:\"importing_completed\";a:0:{}s:26:\"wincher_integration_active\";b:1;s:14:\"wincher_tokens\";a:0:{}s:36:\"wincher_automatically_add_keyphrases\";b:0;s:18:\"wincher_website_id\";s:0:\"\";s:28:\"wordproof_integration_active\";b:0;s:29:\"wordproof_integration_changed\";b:0;s:18:\"first_time_install\";b:0;s:34:\"should_redirect_after_install_free\";b:0;s:34:\"activation_redirect_timestamp_free\";i:1683384474;s:18:\"remove_feed_global\";b:0;s:27:\"remove_feed_global_comments\";b:0;s:25:\"remove_feed_post_comments\";b:0;s:19:\"remove_feed_authors\";b:0;s:22:\"remove_feed_categories\";b:0;s:16:\"remove_feed_tags\";b:0;s:29:\"remove_feed_custom_taxonomies\";b:0;s:22:\"remove_feed_post_types\";b:0;s:18:\"remove_feed_search\";b:0;s:21:\"remove_atom_rdf_feeds\";b:0;s:17:\"remove_shortlinks\";b:0;s:21:\"remove_rest_api_links\";b:0;s:20:\"remove_rsd_wlw_links\";b:0;s:19:\"remove_oembed_links\";b:0;s:16:\"remove_generator\";b:0;s:20:\"remove_emoji_scripts\";b:0;s:24:\"remove_powered_by_header\";b:0;s:22:\"remove_pingback_header\";b:0;s:28:\"clean_campaign_tracking_urls\";b:0;s:16:\"clean_permalinks\";b:0;s:32:\"clean_permalinks_extra_variables\";s:0:\"\";s:14:\"search_cleanup\";b:0;s:20:\"search_cleanup_emoji\";b:0;s:23:\"search_cleanup_patterns\";b:0;s:22:\"search_character_limit\";i:50;s:20:\"deny_search_crawling\";b:0;s:21:\"deny_wp_json_crawling\";b:0;s:27:\"redirect_search_pretty_urls\";b:0;s:29:\"least_readability_ignore_list\";a:0:{}s:27:\"least_seo_score_ignore_list\";a:0:{}s:23:\"most_linked_ignore_list\";a:0:{}s:24:\"least_linked_ignore_list\";a:0:{}s:28:\"indexables_page_reading_list\";a:5:{i:0;b:0;i:1;b:0;i:2;b:0;i:3;b:0;i:4;b:0;}s:25:\"indexables_overview_state\";s:21:\"dashboard-not-visited\";s:28:\"last_known_public_post_types\";a:3:{i:0;s:4:\"post\";i:1;s:4:\"page\";i:2;s:10:\"attachment\";}s:28:\"last_known_public_taxonomies\";a:3:{i:0;s:8:\"category\";i:1;s:8:\"post_tag\";i:2;s:11:\"post_format\";}}', 'yes'),
(183, 'options_logo', '28', 'no'),
(184, '_options_logo', 'field_64523a185e0e0', 'no'),
(245, '_options_column_1_links_3_link', 'field_6452bd217ae10', 'no'),
(246, 'options_column_1_links_4_link', 'a:3:{s:5:\"title\";s:12:\"Demo Account\";s:3:\"url\";s:33:\"http://redacre.test/demo-account/\";s:6:\"target\";s:0:\"\";}', 'no'),
(247, '_options_column_1_links_4_link', 'field_6452bd217ae10', 'no'),
(248, 'options_column_1_links_5_link', 'a:3:{s:5:\"title\";s:15:\"Funded Accounts\";s:3:\"url\";s:36:\"http://redacre.test/funded-accounts/\";s:6:\"target\";s:0:\"\";}', 'no'),
(249, '_options_column_1_links_5_link', 'field_6452bd217ae10', 'no'),
(250, 'options_column_1_links', '6', 'no'),
(270, 'options_column_4_links_0_link', 'a:3:{s:5:\"title\";s:9:\"Education\";s:3:\"url\";s:30:\"http://redacre.test/education/\";s:6:\"target\";s:0:\"\";}', 'no'),
(271, '_options_column_4_links_0_link', 'field_6452bf5a1e298', 'no'),
(272, 'options_column_4_links_1_link', 'a:3:{s:5:\"title\";s:4:\"News\";s:3:\"url\";s:25:\"http://redacre.test/news/\";s:6:\"target\";s:0:\"\";}', 'no'),
(273, '_options_column_4_links_1_link', 'field_6452bf5a1e298', 'no'),
(274, 'options_column_4_links', '2', 'no'),
(275, '_options_column_4_links', 'field_6452bf5a1e297', 'no'),
(276, 'options_column_5_title', '', 'no'),
(277, '_options_column_5_title', 'field_6452c9164c216', 'no'),
(278, 'options_column_5_links_0_link', 'a:3:{s:5:\"title\";s:8:\"About Us\";s:3:\"url\";s:26:\"http://redacre.test/about/\";s:6:\"target\";s:0:\"\";}', 'no'),
(279, '_options_column_5_links_0_link', 'field_6452bf6c1e29a', 'no'),
(280, 'options_column_5_links', '1', 'no'),
(281, '_options_column_5_links', 'field_6452bf6c1e299', 'no'),
(282, 'options_column_6_title', '', 'no'),
(283, '_options_column_6_title', 'field_6452c92a4c219', 'no'),
(284, 'options_column_6_links_0_link', 'a:3:{s:5:\"title\";s:19:\"Economic Calculator\";s:3:\"url\";s:40:\"http://redacre.test/economic-calculator/\";s:6:\"target\";s:0:\"\";}', 'no'),
(285, '_options_column_6_links_0_link', 'field_6452bf7f1e29c', 'no'),
(286, 'options_column_6_links_1_link', 'a:3:{s:5:\"title\";s:17:\"Forex Calculators\";s:3:\"url\";s:38:\"http://redacre.test/forex-calculators/\";s:6:\"target\";s:0:\"\";}', 'no'),
(287, '_options_column_6_links_1_link', 'field_6452bf7f1e29c', 'no'),
(288, 'options_column_6_links_2_link', 'a:3:{s:5:\"title\";s:19:\"Interest Calculator\";s:3:\"url\";s:40:\"http://redacre.test/interest-calculator/\";s:6:\"target\";s:0:\"\";}', 'no'),
(289, '_options_column_6_links_2_link', 'field_6452bf7f1e29c', 'no'),
(290, 'options_column_6_links_3_link', 'a:3:{s:5:\"title\";s:17:\"Educational Blogs\";s:3:\"url\";s:38:\"http://redacre.test/educational-blogs/\";s:6:\"target\";s:0:\"\";}', 'no'),
(291, '_options_column_6_links_3_link', 'field_6452bf7f1e29c', 'no'),
(292, 'options_column_6_links', '4', 'no'),
(293, '_options_column_6_links', 'field_6452bf7f1e29b', 'no'),
(294, 'options_column_1_title_tag', 'h4', 'no'),
(295, '_options_column_1_title_tag', 'field_6452c2dd01c0c', 'no'),
(296, 'options_column_1_title_', 'Trading', 'no'),
(297, '_options_column_1_title_', 'field_6452c30c01c0d', 'no'),
(298, 'options_column_1_title_title', 'Trading', 'no'),
(299, '_options_column_1_title_title', 'field_6452c30c01c0d', 'no'),
(300, 'options_column_2_title_title', 'Affiliate', 'no'),
(301, '_options_column_2_title_title', 'field_6452c8d74c20e', 'no'),
(302, 'options_column_2_title_tag', 'h4', 'no'),
(303, '_options_column_2_title_tag', 'field_6452c8d74c20f', 'no'),
(304, 'options_column_3_title_title', 'Help', 'no'),
(305, '_options_column_3_title_title', 'field_6452c8ee4c211', 'no'),
(306, 'options_column_3_title_tag', 'h4', 'no'),
(307, '_options_column_3_title_tag', 'field_6452c8ee4c212', 'no'),
(308, 'options_column_4_title_title', 'Learn', 'no'),
(309, '_options_column_4_title_title', 'field_6452c9004c214', 'no'),
(310, 'options_column_4_title_tag', 'h4', 'no'),
(311, '_options_column_4_title_tag', 'field_6452c9004c215', 'no'),
(313, '_options_column_5_title_title', 'field_6452c9164c217', 'no'),
(314, 'options_column_5_title_tag', 'h4', 'no'),
(315, '_options_column_5_title_tag', 'field_6452c9164c218', 'no'),
(316, 'options_column_6_title_title', 'Resources ', 'no'),
(317, '_options_column_6_title_title', 'field_6452c92a4c21a', 'no'),
(318, 'options_column_6_title_tag', 'h4', 'no'),
(319, '_options_column_6_title_tag', 'field_6452c92a4c21b', 'no'),
(328, 'options_disclosure', 'RISK DISCLOSURE:*The services and information provided by The Bored Traders Club are not directed at citizens or residents in the USA. Additionally, they are not intended for distribution to or used by any individual in any jurisdiction where such distribution would be contrary to local law or regulation.', 'no'),
(324, '_transient_health-check-site-status-result', '{\"good\":15,\"recommended\":6,\"critical\":0}', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=173 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(13, 11, '_edit_lock', '1683105541:1'),
(14, 12, '_edit_lock', '1683382147:1'),
(15, 14, '_edit_lock', '1683127509:1'),
(9, 7, '_edit_lock', '1683105501:1'),
(10, 8, '_edit_lock', '1683102392:1'),
(11, 9, '_edit_lock', '1683105668:1'),
(12, 10, '_edit_lock', '1683105530:1'),
(16, 16, '_edit_lock', '1683108952:1'),
(17, 18, '_edit_lock', '1683108965:1'),
(18, 20, '_edit_lock', '1683108974:1'),
(19, 22, '_edit_lock', '1683110356:1'),
(20, 24, '_edit_last', '1'),
(21, 24, '_edit_lock', '1683288903:1'),
(22, 28, '_wp_attached_file', '2023/05/logo.svg'),
(23, 28, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:1611;}'),
(24, 28, '_wp_attachment_image_alt', 'Red Acre Logo'),
(84, 43, '_menu_item_menu_item_parent', '31'),
(83, 43, '_menu_item_type', 'post_type'),
(82, 41, '_edit_lock', '1683127685:1'),
(81, 39, '_edit_lock', '1683127679:1'),
(80, 37, '_edit_lock', '1683127674:1'),
(79, 35, '_edit_lock', '1683127664:1'),
(34, 30, '_menu_item_type', 'post_type'),
(35, 30, '_menu_item_menu_item_parent', '0'),
(36, 30, '_menu_item_object_id', '14'),
(37, 30, '_menu_item_object', 'page'),
(38, 30, '_menu_item_target', ''),
(39, 30, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(40, 30, '_menu_item_xfn', ''),
(41, 30, '_menu_item_url', ''),
(88, 43, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(43, 31, '_menu_item_type', 'post_type'),
(44, 31, '_menu_item_menu_item_parent', '0'),
(45, 31, '_menu_item_object_id', '16'),
(46, 31, '_menu_item_object', 'page'),
(47, 31, '_menu_item_target', ''),
(48, 31, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(49, 31, '_menu_item_xfn', ''),
(50, 31, '_menu_item_url', ''),
(87, 43, '_menu_item_target', ''),
(52, 32, '_menu_item_type', 'post_type'),
(53, 32, '_menu_item_menu_item_parent', '0'),
(54, 32, '_menu_item_object_id', '22'),
(55, 32, '_menu_item_object', 'page'),
(56, 32, '_menu_item_target', ''),
(57, 32, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(58, 32, '_menu_item_xfn', ''),
(59, 32, '_menu_item_url', ''),
(86, 43, '_menu_item_object', 'page'),
(61, 33, '_menu_item_type', 'post_type'),
(62, 33, '_menu_item_menu_item_parent', '0'),
(63, 33, '_menu_item_object_id', '20'),
(64, 33, '_menu_item_object', 'page'),
(65, 33, '_menu_item_target', ''),
(66, 33, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(67, 33, '_menu_item_xfn', ''),
(68, 33, '_menu_item_url', ''),
(85, 43, '_menu_item_object_id', '41'),
(70, 34, '_menu_item_type', 'post_type'),
(71, 34, '_menu_item_menu_item_parent', '0'),
(72, 34, '_menu_item_object_id', '18'),
(73, 34, '_menu_item_object', 'page'),
(74, 34, '_menu_item_target', ''),
(75, 34, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(76, 34, '_menu_item_xfn', ''),
(77, 34, '_menu_item_url', ''),
(89, 43, '_menu_item_xfn', ''),
(90, 43, '_menu_item_url', ''),
(119, 35, '_edit_last', '1'),
(92, 44, '_menu_item_type', 'post_type'),
(93, 44, '_menu_item_menu_item_parent', '30'),
(94, 44, '_menu_item_object_id', '39'),
(95, 44, '_menu_item_object', 'page'),
(96, 44, '_menu_item_target', ''),
(97, 44, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(98, 44, '_menu_item_xfn', ''),
(99, 44, '_menu_item_url', ''),
(120, 37, '_edit_last', '1'),
(101, 45, '_menu_item_type', 'post_type'),
(102, 45, '_menu_item_menu_item_parent', '30'),
(103, 45, '_menu_item_object_id', '37'),
(104, 45, '_menu_item_object', 'page'),
(105, 45, '_menu_item_target', ''),
(106, 45, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(107, 45, '_menu_item_xfn', ''),
(108, 45, '_menu_item_url', ''),
(121, 39, '_edit_last', '1'),
(110, 46, '_menu_item_type', 'post_type'),
(111, 46, '_menu_item_menu_item_parent', '30'),
(112, 46, '_menu_item_object_id', '35'),
(113, 46, '_menu_item_object', 'page'),
(114, 46, '_menu_item_target', ''),
(115, 46, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(116, 46, '_menu_item_xfn', ''),
(117, 46, '_menu_item_url', ''),
(122, 41, '_edit_last', '1'),
(123, 47, '_edit_lock', '1683142375:1'),
(124, 49, '_edit_lock', '1683142381:1'),
(125, 51, '_edit_lock', '1683142389:1'),
(126, 53, '_edit_lock', '1683142395:1'),
(127, 55, '_edit_lock', '1683142402:1'),
(128, 57, '_edit_lock', '1683142412:1'),
(129, 59, '_edit_lock', '1683142437:1'),
(130, 61, '_edit_lock', '1683142444:1'),
(131, 62, '_edit_lock', '1683142511:1'),
(132, 64, '_edit_lock', '1683142522:1'),
(133, 66, '_edit_lock', '1683142538:1'),
(134, 68, '_edit_lock', '1683142548:1'),
(135, 70, '_edit_lock', '1683142554:1'),
(136, 72, '_edit_lock', '1683142563:1'),
(137, 74, '_edit_lock', '1683142571:1'),
(138, 76, '_edit_lock', '1683142587:1'),
(139, 78, '_edit_lock', '1683142591:1'),
(140, 138, '_wp_attached_file', '2023/05/instagram.svg'),
(141, 138, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:1904;}'),
(142, 138, '_wp_attachment_image_alt', 'Instagram'),
(143, 139, '_wp_attached_file', '2023/05/twitter.svg'),
(144, 139, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:1276;}'),
(145, 139, '_wp_attachment_image_alt', 'Twitter'),
(146, 140, '_wp_attached_file', '2023/05/facebook.svg'),
(147, 140, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:852;}'),
(148, 140, '_wp_attachment_image_alt', 'Facebook'),
(149, 141, '_wp_attached_file', '2023/05/linkedin.svg'),
(150, 141, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:801;}'),
(151, 141, '_wp_attachment_image_alt', 'LinkedIn'),
(152, 143, '_edit_last', '1'),
(153, 143, '_edit_lock', '1683308018:1'),
(158, 154, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:191112;}'),
(157, 154, '_wp_attached_file', '2023/05/hero.svg'),
(159, 154, '_wp_attachment_image_alt', 'Hero'),
(160, 157, '_edit_last', '1'),
(161, 157, '_edit_lock', '1683382003:1'),
(162, 167, '_wp_attached_file', '2023/05/slider-pink.svg'),
(163, 167, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:1602;}'),
(164, 168, '_wp_attached_file', '2023/05/slider-purple.svg'),
(165, 168, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:1608;}'),
(166, 169, '_wp_attached_file', '2023/05/slider-green.svg'),
(167, 169, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:1614;}'),
(168, 167, '_wp_attachment_image_alt', 'Slider Pink'),
(169, 168, '_wp_attachment_image_alt', 'Slider Purple'),
(170, 169, '_wp_attachment_image_alt', 'Slider Green');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_author` bigint UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=MyISAM AUTO_INCREMENT=173 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2023-05-03 07:03:00', '2023-05-03 07:03:00', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2023-05-03 07:03:00', '2023-05-03 07:03:00', '', 0, 'http://redacre.test/?p=1', 0, 'post', '', 1),
(87, 1, '2023-05-03 20:00:01', '2023-05-03 20:00:01', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Footer column (1)', 'footer_column_1', 'publish', 'closed', 'closed', '', 'field_6452bc927ae09', '', '', '2023-05-03 20:00:01', '2023-05-03 20:00:01', '', 24, 'http://redacre.test/?post_type=acf-field&p=87', 6, 'acf-field', '', 0),
(81, 1, '2023-05-03 19:53:27', '2023-05-03 19:53:27', 'a:13:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"table\";s:10:\"pagination\";i:0;s:3:\"min\";s:0:\"\";s:3:\"max\";i:4;s:9:\"collapsed\";s:0:\"\";s:12:\"button_label\";s:7:\"Add Row\";s:13:\"rows_per_page\";i:20;}', 'Socials', 'socials', 'publish', 'closed', 'closed', '', 'field_6452b8b542682', '', '', '2023-05-04 16:42:51', '2023-05-04 16:42:51', '', 24, 'http://redacre.test/?post_type=acf-field&#038;p=81', 3, 'acf-field', '', 0),
(82, 1, '2023-05-03 19:53:27', '2023-05-03 19:53:27', 'a:7:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";}', 'Social url', 'social_url', 'publish', 'closed', 'closed', '', 'field_6452b8c742683', '', '', '2023-05-03 19:53:27', '2023-05-03 19:53:27', '', 81, 'http://redacre.test/?post_type=acf-field&p=82', 0, 'acf-field', '', 0),
(83, 1, '2023-05-03 19:53:27', '2023-05-03 19:53:27', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'Icon', 'icon', 'publish', 'closed', 'closed', '', 'field_6452baad42684', '', '', '2023-05-04 16:42:51', '2023-05-04 16:42:51', '', 81, 'http://redacre.test/?post_type=acf-field&#038;p=83', 1, 'acf-field', '', 0),
(46, 1, '2023-05-03 15:42:24', '2023-05-03 12:40:16', ' ', '', '', 'publish', 'closed', 'closed', '', '46', '', '', '2023-05-03 15:42:24', '2023-05-03 15:42:24', '', 14, 'http://redacre.test/?p=46', 2, 'nav_menu_item', '', 0),
(47, 1, '2023-05-03 19:35:18', '2023-05-03 19:35:18', '', 'Features', '', 'publish', 'closed', 'closed', '', 'features', '', '', '2023-05-03 19:35:18', '2023-05-03 19:35:18', '', 0, 'http://redacre.test/?page_id=47', 0, 'page', '', 0),
(48, 1, '2023-05-03 19:35:18', '2023-05-03 19:35:18', '', 'Features', '', 'inherit', 'closed', 'closed', '', '47-revision-v1', '', '', '2023-05-03 19:35:18', '2023-05-03 19:35:18', '', 47, 'http://redacre.test/?p=48', 0, 'revision', '', 0),
(49, 1, '2023-05-03 19:35:25', '2023-05-03 19:35:25', '', 'Products &amp; Spreads', '', 'publish', 'closed', 'closed', '', 'products-spreads', '', '', '2023-05-03 19:35:25', '2023-05-03 19:35:25', '', 0, 'http://redacre.test/?page_id=49', 0, 'page', '', 0),
(50, 1, '2023-05-03 19:35:25', '2023-05-03 19:35:25', '', 'Products &amp; Spreads', '', 'inherit', 'closed', 'closed', '', '49-revision-v1', '', '', '2023-05-03 19:35:25', '2023-05-03 19:35:25', '', 49, 'http://redacre.test/?p=50', 0, 'revision', '', 0),
(51, 1, '2023-05-03 19:35:33', '2023-05-03 19:35:33', '', 'Account Types', '', 'publish', 'closed', 'closed', '', 'account-types', '', '', '2023-05-03 19:35:33', '2023-05-03 19:35:33', '', 0, 'http://redacre.test/?page_id=51', 0, 'page', '', 0),
(52, 1, '2023-05-03 19:35:33', '2023-05-03 19:35:33', '', 'Account Types', '', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2023-05-03 19:35:33', '2023-05-03 19:35:33', '', 51, 'http://redacre.test/?p=52', 0, 'revision', '', 0),
(53, 1, '2023-05-03 19:35:39', '2023-05-03 19:35:39', '', 'Metatrader', '', 'publish', 'closed', 'closed', '', 'metatrader', '', '', '2023-05-03 19:35:39', '2023-05-03 19:35:39', '', 0, 'http://redacre.test/?page_id=53', 0, 'page', '', 0),
(54, 1, '2023-05-03 19:35:39', '2023-05-03 19:35:39', '', 'Metatrader', '', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2023-05-03 19:35:39', '2023-05-03 19:35:39', '', 53, 'http://redacre.test/?p=54', 0, 'revision', '', 0),
(55, 1, '2023-05-03 19:35:46', '2023-05-03 19:35:46', '', 'Demo Account', '', 'publish', 'closed', 'closed', '', 'demo-account', '', '', '2023-05-03 19:35:46', '2023-05-03 19:35:46', '', 0, 'http://redacre.test/?page_id=55', 0, 'page', '', 0),
(56, 1, '2023-05-03 19:35:46', '2023-05-03 19:35:46', '', 'Demo Account', '', 'inherit', 'closed', 'closed', '', '55-revision-v1', '', '', '2023-05-03 19:35:46', '2023-05-03 19:35:46', '', 55, 'http://redacre.test/?p=56', 0, 'revision', '', 0),
(57, 1, '2023-05-03 19:35:53', '2023-05-03 19:35:53', '', 'Funded Accounts', '', 'publish', 'closed', 'closed', '', 'funded-accounts', '', '', '2023-05-03 19:35:53', '2023-05-03 19:35:53', '', 0, 'http://redacre.test/?page_id=57', 0, 'page', '', 0),
(58, 1, '2023-05-03 19:35:53', '2023-05-03 19:35:53', '', 'Funded Accounts', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2023-05-03 19:35:53', '2023-05-03 19:35:53', '', 57, 'http://redacre.test/?p=58', 0, 'revision', '', 0),
(59, 1, '2023-05-03 19:36:01', '2023-05-03 19:36:01', '', 'Afilliate Program', '', 'publish', 'closed', 'closed', '', 'afilliate-program', '', '', '2023-05-03 19:36:01', '2023-05-03 19:36:01', '', 0, 'http://redacre.test/?page_id=59', 0, 'page', '', 0),
(60, 1, '2023-05-03 19:36:01', '2023-05-03 19:36:01', '', 'Afilliate Program', '', 'inherit', 'closed', 'closed', '', '59-revision-v1', '', '', '2023-05-03 19:36:01', '2023-05-03 19:36:01', '', 59, 'http://redacre.test/?p=60', 0, 'revision', '', 0),
(61, 1, '2023-05-03 19:36:23', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-05-03 19:36:23', '0000-00-00 00:00:00', '', 0, 'http://redacre.test/?page_id=61', 0, 'page', '', 0),
(62, 1, '2023-05-03 19:36:40', '2023-05-03 19:36:40', '', 'PAMM Accounts', '', 'publish', 'closed', 'closed', '', 'pamm-accounts', '', '', '2023-05-03 19:36:40', '2023-05-03 19:36:40', '', 0, 'http://redacre.test/?page_id=62', 0, 'page', '', 0),
(63, 1, '2023-05-03 19:36:40', '2023-05-03 19:36:40', '', 'PAMM Accounts', '', 'inherit', 'closed', 'closed', '', '62-revision-v1', '', '', '2023-05-03 19:36:40', '2023-05-03 19:36:40', '', 62, 'http://redacre.test/?p=63', 0, 'revision', '', 0),
(64, 1, '2023-05-03 19:37:46', '2023-05-03 19:37:46', '', 'FAQ', '', 'publish', 'closed', 'closed', '', 'faq', '', '', '2023-05-03 19:37:46', '2023-05-03 19:37:46', '', 0, 'http://redacre.test/?page_id=64', 0, 'page', '', 0),
(65, 1, '2023-05-03 19:37:46', '2023-05-03 19:37:46', '', 'FAQ', '', 'inherit', 'closed', 'closed', '', '64-revision-v1', '', '', '2023-05-03 19:37:46', '2023-05-03 19:37:46', '', 64, 'http://redacre.test/?p=65', 0, 'revision', '', 0),
(66, 1, '2023-05-03 19:37:59', '2023-05-03 19:37:59', '', 'Education', '', 'publish', 'closed', 'closed', '', 'education', '', '', '2023-05-03 19:37:59', '2023-05-03 19:37:59', '', 0, 'http://redacre.test/?page_id=66', 0, 'page', '', 0),
(67, 1, '2023-05-03 19:37:59', '2023-05-03 19:37:59', '', 'Education', '', 'inherit', 'closed', 'closed', '', '66-revision-v1', '', '', '2023-05-03 19:37:59', '2023-05-03 19:37:59', '', 66, 'http://redacre.test/?p=67', 0, 'revision', '', 0),
(68, 1, '2023-05-03 19:38:05', '2023-05-03 19:38:05', '', 'News', '', 'publish', 'closed', 'closed', '', 'news', '', '', '2023-05-03 19:38:05', '2023-05-03 19:38:05', '', 0, 'http://redacre.test/?page_id=68', 0, 'page', '', 0),
(69, 1, '2023-05-03 19:38:05', '2023-05-03 19:38:05', '', 'News', '', 'inherit', 'closed', 'closed', '', '68-revision-v1', '', '', '2023-05-03 19:38:05', '2023-05-03 19:38:05', '', 68, 'http://redacre.test/?p=69', 0, 'revision', '', 0),
(70, 1, '2023-05-03 19:38:16', '2023-05-03 19:38:16', '', 'Economic Calculator', '', 'publish', 'closed', 'closed', '', 'economic-calculator', '', '', '2023-05-03 19:38:16', '2023-05-03 19:38:16', '', 0, 'http://redacre.test/?page_id=70', 0, 'page', '', 0),
(71, 1, '2023-05-03 19:38:16', '2023-05-03 19:38:16', '', 'Economic Calculator', '', 'inherit', 'closed', 'closed', '', '70-revision-v1', '', '', '2023-05-03 19:38:16', '2023-05-03 19:38:16', '', 70, 'http://redacre.test/?p=71', 0, 'revision', '', 0),
(72, 1, '2023-05-03 19:38:23', '2023-05-03 19:38:23', '', 'Forex Calculators', '', 'publish', 'closed', 'closed', '', 'forex-calculators', '', '', '2023-05-03 19:38:23', '2023-05-03 19:38:23', '', 0, 'http://redacre.test/?page_id=72', 0, 'page', '', 0),
(73, 1, '2023-05-03 19:38:23', '2023-05-03 19:38:23', '', 'Forex Calculators', '', 'inherit', 'closed', 'closed', '', '72-revision-v1', '', '', '2023-05-03 19:38:23', '2023-05-03 19:38:23', '', 72, 'http://redacre.test/?p=73', 0, 'revision', '', 0),
(74, 1, '2023-05-03 19:38:30', '2023-05-03 19:38:30', '', 'Interest Calculator', '', 'publish', 'closed', 'closed', '', 'interest-calculator', '', '', '2023-05-03 19:38:30', '2023-05-03 19:38:30', '', 0, 'http://redacre.test/?page_id=74', 0, 'page', '', 0),
(75, 1, '2023-05-03 19:38:30', '2023-05-03 19:38:30', '', 'Interest Calculator', '', 'inherit', 'closed', 'closed', '', '74-revision-v1', '', '', '2023-05-03 19:38:30', '2023-05-03 19:38:30', '', 74, 'http://redacre.test/?p=75', 0, 'revision', '', 0),
(76, 1, '2023-05-03 19:38:38', '2023-05-03 19:38:38', '', 'Educational Blogs', '', 'publish', 'closed', 'closed', '', 'educational-blogs', '', '', '2023-05-03 19:38:38', '2023-05-03 19:38:38', '', 0, 'http://redacre.test/?page_id=76', 0, 'page', '', 0),
(77, 1, '2023-05-03 19:38:38', '2023-05-03 19:38:38', '', 'Educational Blogs', '', 'inherit', 'closed', 'closed', '', '76-revision-v1', '', '', '2023-05-03 19:38:38', '2023-05-03 19:38:38', '', 76, 'http://redacre.test/?p=77', 0, 'revision', '', 0),
(78, 1, '2023-05-03 19:38:54', '2023-05-03 19:38:54', '', 'Risk Disclosure', '', 'publish', 'closed', 'closed', '', 'risk-disclosure', '', '', '2023-05-03 19:38:54', '2023-05-03 19:38:54', '', 0, 'http://redacre.test/?page_id=78', 0, 'page', '', 0),
(79, 1, '2023-05-03 19:38:54', '2023-05-03 19:38:54', '', 'Risk Disclosure', '', 'inherit', 'closed', 'closed', '', '78-revision-v1', '', '', '2023-05-03 19:38:54', '2023-05-03 19:38:54', '', 78, 'http://redacre.test/?p=79', 0, 'revision', '', 0),
(4, 1, '2023-05-03 07:03:20', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-05-03 07:03:20', '0000-00-00 00:00:00', '', 0, 'http://redacre.test/?p=4', 0, 'post', '', 0),
(7, 1, '2023-05-03 08:28:51', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-05-03 08:28:51', '0000-00-00 00:00:00', '', 0, 'http://redacre.test/?page_id=7', 0, 'page', '', 0),
(8, 1, '2023-05-03 08:28:52', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-05-03 08:28:52', '0000-00-00 00:00:00', '', 0, 'http://redacre.test/?page_id=8', 0, 'page', '', 0),
(9, 1, '2023-05-03 09:19:06', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-05-03 09:19:06', '0000-00-00 00:00:00', '', 0, 'http://redacre.test/?page_id=9', 0, 'page', '', 0),
(10, 1, '2023-05-03 09:21:13', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-05-03 09:21:13', '0000-00-00 00:00:00', '', 0, 'http://redacre.test/?page_id=10', 0, 'page', '', 0),
(11, 1, '2023-05-03 09:21:15', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-05-03 09:21:15', '0000-00-00 00:00:00', '', 0, 'http://redacre.test/?page_id=11', 0, 'page', '', 0),
(12, 1, '2023-05-03 10:17:54', '2023-05-03 10:17:54', '<!-- wp:acf/hero {\"name\":\"acf/hero\",\"data\":{\"header_title\":\"Tighter Spreads \\u0026 Faster Execution\",\"_header_title\":\"field_6454f46bab35e\",\"header_tag\":\"h3\",\"_header_tag\":\"field_6454f475ab35f\",\"header\":\"\",\"_header\":\"field_6454f45bab35d\",\"content\":\"With Forex Bros you trade with the best in the biz! With quality execution and some of the best trading conditions in the industry, your trading experience will be none other than epic.\\r\\n\\u003cul\\u003e\\r\\n \\t\\u003cli\\u003eNo dealing desk or requotes\\u003c/li\\u003e\\r\\n \\t\\u003cli\\u003eCommissions as low as $0\\u003c/li\\u003e\\r\\n\\u003c/ul\\u003e\",\"_content\":\"field_6454f3de32a4e\",\"image\":154,\"_image\":\"field_6454f40f32a4f\"},\"mode\":\"preview\"} /-->\n\n<!-- wp:acf/tools {\"name\":\"acf/tools\",\"data\":{\"header_title\":\"Tools to Compliment Your Trading\",\"_header_title\":\"field_64553ea633951\",\"header_tag\":\"h4\",\"_header_tag\":\"field_64553eac33952\",\"header\":\"\",\"_header\":\"field_64553e8433950\",\"text\":\"Access news \\u0026 economic calendar, technical indicators \\u0026 charts, Forex Calculators, educational resources and many more tools to help you excel.\",\"_text\":\"field_64553edb7d6c3\",\"slider_0_image\":169,\"_slider_0_image\":\"field_64553f2d7d6c5\",\"slider_0_title\":\" Economic Calendar\",\"_slider_0_title\":\"field_64553f457d6c6\",\"slider_0_text\":\"Access all major events \\u0026 economic news that impact financial markets.\",\"_slider_0_text\":\"field_64553f577d6c7\",\"slider_1_image\":168,\"_slider_1_image\":\"field_64553f2d7d6c5\",\"slider_1_title\":\"Trading Calculators\",\"_slider_1_title\":\"field_64553f457d6c6\",\"slider_1_text\":\"Make trading calculations in real-time \\u0026 forecast the potential growth of your account.\",\"_slider_1_text\":\"field_64553f577d6c7\",\"slider_2_image\":167,\"_slider_2_image\":\"field_64553f2d7d6c5\",\"slider_2_title\":\"Educational Resources\",\"_slider_2_title\":\"field_64553f457d6c6\",\"slider_2_text\":\"From top tips \\u0026 trading psychology to more ways to earn, we make learning more fun.\",\"_slider_2_text\":\"field_64553f577d6c7\",\"slider\":3,\"_slider\":\"field_64553f227d6c4\"},\"mode\":\"preview\"} /-->', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2023-05-05 17:43:46', '2023-05-05 17:43:46', '', 0, 'http://redacre.test/?page_id=12', 0, 'page', '', 0),
(13, 1, '2023-05-03 10:17:54', '2023-05-03 10:17:54', '', 'Home', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2023-05-03 10:17:54', '2023-05-03 10:17:54', '', 12, 'http://redacre.test/?p=13', 0, 'revision', '', 0),
(14, 1, '2023-05-03 10:18:03', '2023-05-03 10:18:03', '', 'About', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2023-05-03 10:18:03', '2023-05-03 10:18:03', '', 0, 'http://redacre.test/?page_id=14', 0, 'page', '', 0),
(15, 1, '2023-05-03 10:18:03', '2023-05-03 10:18:03', '', 'About', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2023-05-03 10:18:03', '2023-05-03 10:18:03', '', 14, 'http://redacre.test/?p=15', 0, 'revision', '', 0),
(16, 1, '2023-05-03 10:18:13', '2023-05-03 10:18:13', '', 'Affiliates', '', 'publish', 'closed', 'closed', '', 'affiliates', '', '', '2023-05-03 10:18:13', '2023-05-03 10:18:13', '', 0, 'http://redacre.test/?page_id=16', 0, 'page', '', 0),
(17, 1, '2023-05-03 10:18:13', '2023-05-03 10:18:13', '', 'Affiliates', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2023-05-03 10:18:13', '2023-05-03 10:18:13', '', 16, 'http://redacre.test/?p=17', 0, 'revision', '', 0),
(18, 1, '2023-05-03 10:18:21', '2023-05-03 10:18:21', '', 'Trading', '', 'publish', 'closed', 'closed', '', 'trading', '', '', '2023-05-03 10:18:21', '2023-05-03 10:18:21', '', 0, 'http://redacre.test/?page_id=18', 0, 'page', '', 0),
(19, 1, '2023-05-03 10:18:21', '2023-05-03 10:18:21', '', 'Trading', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2023-05-03 10:18:21', '2023-05-03 10:18:21', '', 18, 'http://redacre.test/?p=19', 0, 'revision', '', 0),
(20, 1, '2023-05-03 10:18:34', '2023-05-03 10:18:34', '', 'Resources', '', 'publish', 'closed', 'closed', '', 'resources', '', '', '2023-05-03 10:18:34', '2023-05-03 10:18:34', '', 0, 'http://redacre.test/?page_id=20', 0, 'page', '', 0),
(21, 1, '2023-05-03 10:18:34', '2023-05-03 10:18:34', '', 'Resources', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2023-05-03 10:18:34', '2023-05-03 10:18:34', '', 20, 'http://redacre.test/?p=21', 0, 'revision', '', 0),
(22, 1, '2023-05-03 10:18:43', '2023-05-03 10:18:43', '', 'Markets', '', 'publish', 'closed', 'closed', '', 'markets', '', '', '2023-05-03 10:18:43', '2023-05-03 10:18:43', '', 0, 'http://redacre.test/?page_id=22', 0, 'page', '', 0),
(23, 1, '2023-05-03 10:18:43', '2023-05-03 10:18:43', '', 'Markets', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2023-05-03 10:18:43', '2023-05-03 10:18:43', '', 22, 'http://redacre.test/?p=23', 0, 'revision', '', 0),
(24, 1, '2023-05-03 10:39:50', '2023-05-03 10:39:50', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:14:\"theme-settings\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Theme Settings', 'theme-settings', 'publish', 'closed', 'closed', '', 'group_645239e4b63b3', '', '', '2023-05-04 17:25:39', '2023-05-04 17:25:39', '', 0, 'http://redacre.test/?post_type=acf-field-group&#038;p=24', 0, 'acf-field-group', '', 0),
(25, 1, '2023-05-03 10:39:50', '2023-05-03 10:39:50', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Header', 'header', 'publish', 'closed', 'closed', '', 'field_645239e5d3b68', '', '', '2023-05-03 10:40:50', '2023-05-03 10:40:50', '', 24, 'http://redacre.test/?post_type=acf-field&#038;p=25', 0, 'acf-field', '', 0),
(26, 1, '2023-05-03 10:40:50', '2023-05-03 10:40:50', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'Logo', 'logo', 'publish', 'closed', 'closed', '', 'field_64523a185e0e0', '', '', '2023-05-03 10:40:50', '2023-05-03 10:40:50', '', 24, 'http://redacre.test/?post_type=acf-field&p=26', 1, 'acf-field', '', 0),
(27, 1, '2023-05-03 10:40:50', '2023-05-03 10:40:50', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Footer', 'footer', 'publish', 'closed', 'closed', '', 'field_64523a0b5e0df', '', '', '2023-05-03 10:40:50', '2023-05-03 10:40:50', '', 24, 'http://redacre.test/?post_type=acf-field&p=27', 2, 'acf-field', '', 0),
(28, 1, '2023-05-03 10:48:36', '2023-05-03 10:48:36', '', 'Red Acre Logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2023-05-03 10:49:13', '2023-05-03 10:49:13', '', 0, 'http://redacre.test/wp-content/uploads/2023/05/logo.svg', 0, 'attachment', 'image/svg+xml', 0),
(35, 1, '2023-05-03 11:03:05', '2023-05-03 11:03:05', '', 'Who We Are', '', 'publish', 'closed', 'closed', '', 'who-we-are', '', '', '2023-05-03 15:27:44', '2023-05-03 15:27:44', '', 14, 'http://redacre.test/?page_id=35', 0, 'page', '', 0),
(30, 1, '2023-05-03 15:42:24', '2023-05-03 10:54:54', ' ', '', '', 'publish', 'closed', 'closed', '', '30', '', '', '2023-05-03 15:42:24', '2023-05-03 15:42:24', '', 0, 'http://redacre.test/?p=30', 1, 'nav_menu_item', '', 0),
(31, 1, '2023-05-03 15:42:24', '2023-05-03 10:54:54', ' ', '', '', 'publish', 'closed', 'closed', '', '31', '', '', '2023-05-03 15:42:24', '2023-05-03 15:42:24', '', 0, 'http://redacre.test/?p=31', 5, 'nav_menu_item', '', 0),
(32, 1, '2023-05-03 15:42:24', '2023-05-03 10:54:54', ' ', '', '', 'publish', 'closed', 'closed', '', '32', '', '', '2023-05-03 15:42:24', '2023-05-03 15:42:24', '', 0, 'http://redacre.test/?p=32', 9, 'nav_menu_item', '', 0),
(33, 1, '2023-05-03 15:42:24', '2023-05-03 10:54:54', ' ', '', '', 'publish', 'closed', 'closed', '', '33', '', '', '2023-05-03 15:42:24', '2023-05-03 15:42:24', '', 0, 'http://redacre.test/?p=33', 8, 'nav_menu_item', '', 0),
(34, 1, '2023-05-03 15:42:24', '2023-05-03 10:54:54', ' ', '', '', 'publish', 'closed', 'closed', '', '34', '', '', '2023-05-03 15:42:24', '2023-05-03 15:42:24', '', 0, 'http://redacre.test/?p=34', 7, 'nav_menu_item', '', 0),
(36, 1, '2023-05-03 11:03:05', '2023-05-03 11:03:05', '', 'Who We Are', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2023-05-03 11:03:05', '2023-05-03 11:03:05', '', 35, 'http://redacre.test/?p=36', 0, 'revision', '', 0),
(37, 1, '2023-05-03 11:03:18', '2023-05-03 11:03:18', '', 'Contact Us', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2023-05-03 15:27:54', '2023-05-03 15:27:54', '', 14, 'http://redacre.test/?page_id=37', 0, 'page', '', 0),
(38, 1, '2023-05-03 11:03:18', '2023-05-03 11:03:18', '', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2023-05-03 11:03:18', '2023-05-03 11:03:18', '', 37, 'http://redacre.test/?p=38', 0, 'revision', '', 0),
(39, 1, '2023-05-03 11:03:29', '2023-05-03 11:03:29', '', 'Terms &amp; Conditions', '', 'publish', 'closed', 'closed', '', 'terms-conditions', '', '', '2023-05-03 15:27:59', '2023-05-03 15:27:59', '', 14, 'http://redacre.test/?page_id=39', 0, 'page', '', 0),
(40, 1, '2023-05-03 11:03:29', '2023-05-03 11:03:29', '', 'Terms &amp; Conditions', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2023-05-03 11:03:29', '2023-05-03 11:03:29', '', 39, 'http://redacre.test/?p=40', 0, 'revision', '', 0),
(41, 1, '2023-05-03 11:03:38', '2023-05-03 11:03:38', '', 'Privacy Policy', '', 'publish', 'closed', 'closed', '', 'privacy-policy', '', '', '2023-05-03 15:28:05', '2023-05-03 15:28:05', '', 14, 'http://redacre.test/?page_id=41', 0, 'page', '', 0),
(42, 1, '2023-05-03 11:03:38', '2023-05-03 11:03:38', '', 'Privacy Policy', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2023-05-03 11:03:38', '2023-05-03 11:03:38', '', 41, 'http://redacre.test/?p=42', 0, 'revision', '', 0),
(43, 1, '2023-05-03 15:42:24', '2023-05-03 12:40:16', ' ', '', '', 'publish', 'closed', 'closed', '', '43', '', '', '2023-05-03 15:42:24', '2023-05-03 15:42:24', '', 14, 'http://redacre.test/?p=43', 6, 'nav_menu_item', '', 0),
(44, 1, '2023-05-03 15:42:24', '2023-05-03 12:40:16', ' ', '', '', 'publish', 'closed', 'closed', '', '44', '', '', '2023-05-03 15:42:24', '2023-05-03 15:42:24', '', 14, 'http://redacre.test/?p=44', 4, 'nav_menu_item', '', 0),
(45, 1, '2023-05-03 15:42:24', '2023-05-03 12:40:16', ' ', '', '', 'publish', 'closed', 'closed', '', '45', '', '', '2023-05-03 15:42:24', '2023-05-03 15:42:24', '', 14, 'http://redacre.test/?p=45', 3, 'nav_menu_item', '', 0),
(84, 1, '2023-05-03 19:53:27', '2023-05-03 19:53:27', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Disclosure', 'disclosure', 'publish', 'closed', 'closed', '', 'field_6452bb2b42685', '', '', '2023-05-04 17:25:39', '2023-05-04 17:25:39', '', 24, 'http://redacre.test/?post_type=acf-field&#038;p=84', 4, 'acf-field', '', 0),
(85, 1, '2023-05-03 19:53:27', '2023-05-03 19:53:27', 'a:13:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"table\";s:10:\"pagination\";i:0;s:3:\"min\";s:0:\"\";s:3:\"max\";i:3;s:9:\"collapsed\";s:0:\"\";s:12:\"button_label\";s:7:\"Add Row\";s:13:\"rows_per_page\";i:20;}', 'Bottom Links', 'bottom_links', 'publish', 'closed', 'closed', '', 'field_6452bb7942686', '', '', '2023-05-03 19:54:15', '2023-05-03 19:54:15', '', 24, 'http://redacre.test/?post_type=acf-field&#038;p=85', 5, 'acf-field', '', 0),
(86, 1, '2023-05-03 19:53:27', '2023-05-03 19:53:27', 'a:7:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";}', 'Link', 'link', 'publish', 'closed', 'closed', '', 'field_6452bba242687', '', '', '2023-05-03 19:53:27', '2023-05-03 19:53:27', '', 85, 'http://redacre.test/?post_type=acf-field&p=86', 0, 'acf-field', '', 0),
(88, 1, '2023-05-03 20:00:01', '2023-05-03 20:00:01', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Footer column (2)', 'footer_column_2', 'publish', 'closed', 'closed', '', 'field_6452bca27ae0a', '', '', '2023-05-03 20:51:05', '2023-05-03 20:51:05', '', 24, 'http://redacre.test/?post_type=acf-field&#038;p=88', 9, 'acf-field', '', 0),
(89, 1, '2023-05-03 20:00:01', '2023-05-03 20:00:01', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Footer column (3)', 'footer_column_3', 'publish', 'closed', 'closed', '', 'field_6452bca47ae0b', '', '', '2023-05-03 20:51:05', '2023-05-03 20:51:05', '', 24, 'http://redacre.test/?post_type=acf-field&#038;p=89', 12, 'acf-field', '', 0),
(90, 1, '2023-05-03 20:00:01', '2023-05-03 20:00:01', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Footer column (4)', 'footer_column_4', 'publish', 'closed', 'closed', '', 'field_6452bca77ae0c', '', '', '2023-05-03 20:51:05', '2023-05-03 20:51:05', '', 24, 'http://redacre.test/?post_type=acf-field&#038;p=90', 15, 'acf-field', '', 0),
(91, 1, '2023-05-03 20:00:01', '2023-05-03 20:00:01', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Footer column (5)', 'footer_column_5', 'publish', 'closed', 'closed', '', 'field_6452bca97ae0d', '', '', '2023-05-03 20:51:05', '2023-05-03 20:51:05', '', 24, 'http://redacre.test/?post_type=acf-field&#038;p=91', 18, 'acf-field', '', 0),
(92, 1, '2023-05-03 20:00:01', '2023-05-03 20:00:01', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Footer column (6)', 'footer_column_6', 'publish', 'closed', 'closed', '', 'field_6452bcb27ae0e', '', '', '2023-05-03 20:51:05', '2023-05-03 20:51:05', '', 24, 'http://redacre.test/?post_type=acf-field&#038;p=92', 21, 'acf-field', '', 0),
(93, 1, '2023-05-03 20:00:01', '2023-05-03 20:00:01', 'a:13:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"table\";s:10:\"pagination\";i:0;s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:9:\"collapsed\";s:0:\"\";s:12:\"button_label\";s:7:\"Add Row\";s:13:\"rows_per_page\";i:20;}', 'Column (1) Links', 'column_1_links', 'publish', 'closed', 'closed', '', 'field_6452bcec7ae0f', '', '', '2023-05-03 20:51:05', '2023-05-03 20:51:05', '', 24, 'http://redacre.test/?post_type=acf-field&#038;p=93', 8, 'acf-field', '', 0),
(94, 1, '2023-05-03 20:00:01', '2023-05-03 20:00:01', 'a:7:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";}', 'Link', 'link', 'publish', 'closed', 'closed', '', 'field_6452bd217ae10', '', '', '2023-05-03 20:00:01', '2023-05-03 20:00:01', '', 93, 'http://redacre.test/?post_type=acf-field&p=94', 0, 'acf-field', '', 0),
(129, 1, '2023-05-03 20:51:05', '2023-05-03 20:51:05', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Column (4) title', 'column_4_title', 'publish', 'closed', 'closed', '', 'field_6452c9004c213', '', '', '2023-05-03 20:51:05', '2023-05-03 20:51:05', '', 24, 'http://redacre.test/?post_type=acf-field&p=129', 16, 'acf-field', '', 0),
(127, 1, '2023-05-03 20:51:05', '2023-05-03 20:51:05', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Title', 'title', 'publish', 'closed', 'closed', '', 'field_6452c8ee4c211', '', '', '2023-05-03 20:51:05', '2023-05-03 20:51:05', '', 126, 'http://redacre.test/?post_type=acf-field&p=127', 0, 'acf-field', '', 0),
(128, 1, '2023-05-03 20:51:05', '2023-05-03 20:51:05', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:12:\"button_group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:6:{s:2:\"h1\";s:2:\"H1\";s:2:\"h2\";s:2:\"H2\";s:2:\"h3\";s:2:\"H3\";s:2:\"h4\";s:2:\"H4\";s:2:\"h5\";s:2:\"H5\";s:2:\"h6\";s:2:\"H6\";}s:13:\"default_value\";s:2:\"h4\";s:13:\"return_format\";s:0:\"\";s:10:\"allow_null\";i:0;s:6:\"layout\";s:0:\"\";}', 'Tag', 'tag', 'publish', 'closed', 'closed', '', 'field_6452c8ee4c212', '', '', '2023-05-03 20:51:05', '2023-05-03 20:51:05', '', 126, 'http://redacre.test/?post_type=acf-field&p=128', 1, 'acf-field', '', 0),
(126, 1, '2023-05-03 20:51:05', '2023-05-03 20:51:05', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Column (3) title', 'column_3_title', 'publish', 'closed', 'closed', '', 'field_6452c8ee4c210', '', '', '2023-05-03 20:51:05', '2023-05-03 20:51:05', '', 24, 'http://redacre.test/?post_type=acf-field&p=126', 13, 'acf-field', '', 0),
(124, 1, '2023-05-03 20:51:05', '2023-05-03 20:51:05', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Title', 'title', 'publish', 'closed', 'closed', '', 'field_6452c8d74c20e', '', '', '2023-05-03 20:51:05', '2023-05-03 20:51:05', '', 123, 'http://redacre.test/?post_type=acf-field&p=124', 0, 'acf-field', '', 0),
(122, 1, '2023-05-03 20:24:47', '2023-05-03 20:24:47', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Title', 'title', 'publish', 'closed', 'closed', '', 'field_6452c30c01c0d', '', '', '2023-05-03 20:26:40', '2023-05-03 20:26:40', '', 100, 'http://redacre.test/?post_type=acf-field&#038;p=122', 0, 'acf-field', '', 0),
(111, 1, '2023-05-03 20:09:53', '2023-05-03 20:09:53', 'a:13:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"table\";s:10:\"pagination\";i:0;s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:9:\"collapsed\";s:0:\"\";s:12:\"button_label\";s:7:\"Add Row\";s:13:\"rows_per_page\";i:20;}', 'Column (2) Links', 'column_2_links', 'publish', 'closed', 'closed', '', 'field_6452bf331e293', '', '', '2023-05-03 20:51:05', '2023-05-03 20:51:05', '', 24, 'http://redacre.test/?post_type=acf-field&#038;p=111', 11, 'acf-field', '', 0),
(100, 1, '2023-05-03 20:01:53', '2023-05-03 20:01:53', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Column (1) title', 'column_1_title', 'publish', 'closed', 'closed', '', 'field_6452bda371a81', '', '', '2023-05-03 20:24:47', '2023-05-03 20:24:47', '', 24, 'http://redacre.test/?post_type=acf-field&#038;p=100', 7, 'acf-field', '', 0),
(121, 1, '2023-05-03 20:24:47', '2023-05-03 20:24:47', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:12:\"button_group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:6:{s:2:\"h1\";s:2:\"H1\";s:2:\"h2\";s:2:\"H2\";s:2:\"h3\";s:2:\"H3\";s:2:\"h4\";s:2:\"H4\";s:2:\"h5\";s:2:\"H5\";s:2:\"h6\";s:2:\"H6\";}s:13:\"default_value\";s:2:\"h4\";s:13:\"return_format\";s:5:\"value\";s:10:\"allow_null\";i:0;s:6:\"layout\";s:10:\"horizontal\";}', 'Tag', 'tag', 'publish', 'closed', 'closed', '', 'field_6452c2dd01c0c', '', '', '2023-05-03 20:26:40', '2023-05-03 20:26:40', '', 100, 'http://redacre.test/?post_type=acf-field&#038;p=121', 1, 'acf-field', '', 0),
(145, 1, '2023-05-05 12:19:06', '2023-05-05 12:19:06', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'Image', 'image', 'publish', 'closed', 'closed', '', 'field_6454f40f32a4f', '', '', '2023-05-05 12:20:19', '2023-05-05 12:20:19', '', 143, 'http://redacre.test/?post_type=acf-field&#038;p=145', 2, 'acf-field', '', 0),
(144, 1, '2023-05-05 12:19:06', '2023-05-05 12:19:06', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Content', 'content', 'publish', 'closed', 'closed', '', 'field_6454f3de32a4e', '', '', '2023-05-05 12:20:19', '2023-05-05 12:20:19', '', 143, 'http://redacre.test/?post_type=acf-field&#038;p=144', 1, 'acf-field', '', 0),
(141, 1, '2023-05-04 16:45:30', '2023-05-04 16:45:30', '', 'LinkedIn', '', 'inherit', 'open', 'closed', '', 'linkedin', '', '', '2023-05-04 16:45:38', '2023-05-04 16:45:38', '', 0, 'http://redacre.test/wp-content/uploads/2023/05/linkedin.svg', 0, 'attachment', 'image/svg+xml', 0),
(142, 1, '2023-05-05 12:17:25', '2023-05-05 12:17:25', '<!-- wp:acf/hero {\"name\":\"acf/hero\",\"data\":[],\"mode\":\"preview\"} /-->', 'Home', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2023-05-05 12:17:25', '2023-05-05 12:17:25', '', 12, 'http://redacre.test/?p=142', 0, 'revision', '', 0),
(143, 1, '2023-05-05 12:19:06', '2023-05-05 12:19:06', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:5:\"block\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:8:\"acf/hero\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Hero - Block', 'hero-block', 'publish', 'closed', 'closed', '', 'group_6454f3de628f3', '', '', '2023-05-05 12:21:26', '2023-05-05 12:21:26', '', 0, 'http://redacre.test/?post_type=acf-field-group&#038;p=143', 0, 'acf-field-group', '', 0),
(139, 1, '2023-05-04 16:45:02', '2023-05-04 16:45:02', '', 'Twitter', '', 'inherit', 'open', 'closed', '', 'twitter', '', '', '2023-05-04 16:45:12', '2023-05-04 16:45:12', '', 0, 'http://redacre.test/wp-content/uploads/2023/05/twitter.svg', 0, 'attachment', 'image/svg+xml', 0),
(140, 1, '2023-05-04 16:45:17', '2023-05-04 16:45:17', '', 'Facebook', '', 'inherit', 'open', 'closed', '', 'facebook', '', '', '2023-05-04 16:45:25', '2023-05-04 16:45:25', '', 0, 'http://redacre.test/wp-content/uploads/2023/05/facebook.svg', 0, 'attachment', 'image/svg+xml', 0),
(125, 1, '2023-05-03 20:51:05', '2023-05-03 20:51:05', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:12:\"button_group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:6:{s:2:\"h1\";s:2:\"H1\";s:2:\"h2\";s:2:\"H2\";s:2:\"h3\";s:2:\"H3\";s:2:\"h4\";s:2:\"H4\";s:2:\"h5\";s:2:\"H5\";s:2:\"h6\";s:2:\"H6\";}s:13:\"default_value\";s:2:\"h4\";s:13:\"return_format\";s:0:\"\";s:10:\"allow_null\";i:0;s:6:\"layout\";s:0:\"\";}', 'Tag', 'tag', 'publish', 'closed', 'closed', '', 'field_6452c8d74c20f', '', '', '2023-05-03 20:51:05', '2023-05-03 20:51:05', '', 123, 'http://redacre.test/?post_type=acf-field&p=125', 1, 'acf-field', '', 0),
(123, 1, '2023-05-03 20:51:05', '2023-05-03 20:51:05', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Column (2) title', 'column_2_title', 'publish', 'closed', 'closed', '', 'field_6452c8d74c20d', '', '', '2023-05-03 20:51:05', '2023-05-03 20:51:05', '', 24, 'http://redacre.test/?post_type=acf-field&p=123', 10, 'acf-field', '', 0),
(112, 1, '2023-05-03 20:09:53', '2023-05-03 20:09:53', 'a:7:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:0:\"\";}', 'Link', 'link', 'publish', 'closed', 'closed', '', 'field_6452bf331e294', '', '', '2023-05-03 20:09:53', '2023-05-03 20:09:53', '', 111, 'http://redacre.test/?post_type=acf-field&p=112', 0, 'acf-field', '', 0),
(113, 1, '2023-05-03 20:09:53', '2023-05-03 20:09:53', 'a:13:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"table\";s:10:\"pagination\";i:0;s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:9:\"collapsed\";s:0:\"\";s:12:\"button_label\";s:7:\"Add Row\";s:13:\"rows_per_page\";i:20;}', 'Column (3) Links', 'column_3_links', 'publish', 'closed', 'closed', '', 'field_6452bf481e295', '', '', '2023-05-03 20:51:05', '2023-05-03 20:51:05', '', 24, 'http://redacre.test/?post_type=acf-field&#038;p=113', 14, 'acf-field', '', 0),
(114, 1, '2023-05-03 20:09:53', '2023-05-03 20:09:53', 'a:7:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:0:\"\";}', 'Link', 'link', 'publish', 'closed', 'closed', '', 'field_6452bf481e296', '', '', '2023-05-03 20:09:53', '2023-05-03 20:09:53', '', 113, 'http://redacre.test/?post_type=acf-field&p=114', 0, 'acf-field', '', 0),
(115, 1, '2023-05-03 20:09:53', '2023-05-03 20:09:53', 'a:13:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"table\";s:10:\"pagination\";i:0;s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:9:\"collapsed\";s:0:\"\";s:12:\"button_label\";s:7:\"Add Row\";s:13:\"rows_per_page\";i:20;}', 'Column (4) Links', 'column_4_links', 'publish', 'closed', 'closed', '', 'field_6452bf5a1e297', '', '', '2023-05-03 20:51:05', '2023-05-03 20:51:05', '', 24, 'http://redacre.test/?post_type=acf-field&#038;p=115', 17, 'acf-field', '', 0),
(116, 1, '2023-05-03 20:09:53', '2023-05-03 20:09:53', 'a:7:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:0:\"\";}', 'Link', 'link', 'publish', 'closed', 'closed', '', 'field_6452bf5a1e298', '', '', '2023-05-03 20:09:53', '2023-05-03 20:09:53', '', 115, 'http://redacre.test/?post_type=acf-field&p=116', 0, 'acf-field', '', 0),
(117, 1, '2023-05-03 20:09:53', '2023-05-03 20:09:53', 'a:13:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"table\";s:10:\"pagination\";i:0;s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:9:\"collapsed\";s:0:\"\";s:12:\"button_label\";s:7:\"Add Row\";s:13:\"rows_per_page\";i:20;}', 'Column (5) Links', 'column_5_links', 'publish', 'closed', 'closed', '', 'field_6452bf6c1e299', '', '', '2023-05-03 20:51:05', '2023-05-03 20:51:05', '', 24, 'http://redacre.test/?post_type=acf-field&#038;p=117', 20, 'acf-field', '', 0),
(118, 1, '2023-05-03 20:09:53', '2023-05-03 20:09:53', 'a:7:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:0:\"\";}', 'Link', 'link', 'publish', 'closed', 'closed', '', 'field_6452bf6c1e29a', '', '', '2023-05-03 20:09:53', '2023-05-03 20:09:53', '', 117, 'http://redacre.test/?post_type=acf-field&p=118', 0, 'acf-field', '', 0),
(138, 1, '2023-05-04 16:44:42', '2023-05-04 16:44:42', '', 'Instagram', '', 'inherit', 'open', 'closed', '', 'instagram', '', '', '2023-05-04 16:44:53', '2023-05-04 16:44:53', '', 0, 'http://redacre.test/wp-content/uploads/2023/05/instagram.svg', 0, 'attachment', 'image/svg+xml', 0),
(119, 1, '2023-05-03 20:09:53', '2023-05-03 20:09:53', 'a:13:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"table\";s:10:\"pagination\";i:0;s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:9:\"collapsed\";s:0:\"\";s:12:\"button_label\";s:7:\"Add Row\";s:13:\"rows_per_page\";i:20;}', 'Column (6) Links', 'column_6_links', 'publish', 'closed', 'closed', '', 'field_6452bf7f1e29b', '', '', '2023-05-03 20:51:05', '2023-05-03 20:51:05', '', 24, 'http://redacre.test/?post_type=acf-field&#038;p=119', 23, 'acf-field', '', 0),
(120, 1, '2023-05-03 20:09:53', '2023-05-03 20:09:53', 'a:7:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";}', 'Link', 'link', 'publish', 'closed', 'closed', '', 'field_6452bf7f1e29c', '', '', '2023-05-03 20:09:53', '2023-05-03 20:09:53', '', 119, 'http://redacre.test/?post_type=acf-field&p=120', 0, 'acf-field', '', 0),
(130, 1, '2023-05-03 20:51:05', '2023-05-03 20:51:05', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Title', 'title', 'publish', 'closed', 'closed', '', 'field_6452c9004c214', '', '', '2023-05-03 20:51:05', '2023-05-03 20:51:05', '', 129, 'http://redacre.test/?post_type=acf-field&p=130', 0, 'acf-field', '', 0),
(131, 1, '2023-05-03 20:51:05', '2023-05-03 20:51:05', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:12:\"button_group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:6:{s:2:\"h1\";s:2:\"H1\";s:2:\"h2\";s:2:\"H2\";s:2:\"h3\";s:2:\"H3\";s:2:\"h4\";s:2:\"H4\";s:2:\"h5\";s:2:\"H5\";s:2:\"h6\";s:2:\"H6\";}s:13:\"default_value\";s:2:\"h4\";s:13:\"return_format\";s:0:\"\";s:10:\"allow_null\";i:0;s:6:\"layout\";s:0:\"\";}', 'Tag', 'tag', 'publish', 'closed', 'closed', '', 'field_6452c9004c215', '', '', '2023-05-03 20:51:05', '2023-05-03 20:51:05', '', 129, 'http://redacre.test/?post_type=acf-field&p=131', 1, 'acf-field', '', 0),
(132, 1, '2023-05-03 20:51:05', '2023-05-03 20:51:05', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Column (5) title', 'column_5_title', 'publish', 'closed', 'closed', '', 'field_6452c9164c216', '', '', '2023-05-03 20:51:05', '2023-05-03 20:51:05', '', 24, 'http://redacre.test/?post_type=acf-field&p=132', 19, 'acf-field', '', 0),
(133, 1, '2023-05-03 20:51:05', '2023-05-03 20:51:05', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Title', 'title', 'publish', 'closed', 'closed', '', 'field_6452c9164c217', '', '', '2023-05-03 20:51:05', '2023-05-03 20:51:05', '', 132, 'http://redacre.test/?post_type=acf-field&p=133', 0, 'acf-field', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(134, 1, '2023-05-03 20:51:05', '2023-05-03 20:51:05', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:12:\"button_group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:6:{s:2:\"h1\";s:2:\"H1\";s:2:\"h2\";s:2:\"H2\";s:2:\"h3\";s:2:\"H3\";s:2:\"h4\";s:2:\"H4\";s:2:\"h5\";s:2:\"H5\";s:2:\"h6\";s:2:\"H6\";}s:13:\"default_value\";s:2:\"h4\";s:13:\"return_format\";s:0:\"\";s:10:\"allow_null\";i:0;s:6:\"layout\";s:0:\"\";}', 'Tag', 'tag', 'publish', 'closed', 'closed', '', 'field_6452c9164c218', '', '', '2023-05-03 20:51:05', '2023-05-03 20:51:05', '', 132, 'http://redacre.test/?post_type=acf-field&p=134', 1, 'acf-field', '', 0),
(135, 1, '2023-05-03 20:51:05', '2023-05-03 20:51:05', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Column (6) title', 'column_6_title', 'publish', 'closed', 'closed', '', 'field_6452c92a4c219', '', '', '2023-05-03 20:51:05', '2023-05-03 20:51:05', '', 24, 'http://redacre.test/?post_type=acf-field&p=135', 22, 'acf-field', '', 0),
(136, 1, '2023-05-03 20:51:05', '2023-05-03 20:51:05', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Title', 'title', 'publish', 'closed', 'closed', '', 'field_6452c92a4c21a', '', '', '2023-05-03 20:51:05', '2023-05-03 20:51:05', '', 135, 'http://redacre.test/?post_type=acf-field&p=136', 0, 'acf-field', '', 0),
(137, 1, '2023-05-03 20:51:05', '2023-05-03 20:51:05', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:12:\"button_group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:6:{s:2:\"h1\";s:2:\"H1\";s:2:\"h2\";s:2:\"H2\";s:2:\"h3\";s:2:\"H3\";s:2:\"h4\";s:2:\"H4\";s:2:\"h5\";s:2:\"H5\";s:2:\"h6\";s:2:\"H6\";}s:13:\"default_value\";s:2:\"h4\";s:13:\"return_format\";s:5:\"value\";s:10:\"allow_null\";i:0;s:6:\"layout\";s:10:\"horizontal\";}', 'Tag', 'tag', 'publish', 'closed', 'closed', '', 'field_6452c92a4c21b', '', '', '2023-05-03 20:51:05', '2023-05-03 20:51:05', '', 135, 'http://redacre.test/?post_type=acf-field&p=137', 1, 'acf-field', '', 0),
(147, 1, '2023-05-05 12:20:19', '2023-05-05 12:20:19', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Header', 'header', 'publish', 'closed', 'closed', '', 'field_6454f45bab35d', '', '', '2023-05-05 12:20:19', '2023-05-05 12:20:19', '', 143, 'http://redacre.test/?post_type=acf-field&p=147', 0, 'acf-field', '', 0),
(148, 1, '2023-05-05 12:20:19', '2023-05-05 12:20:19', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Title', 'title', 'publish', 'closed', 'closed', '', 'field_6454f46bab35e', '', '', '2023-05-05 12:20:19', '2023-05-05 12:20:19', '', 147, 'http://redacre.test/?post_type=acf-field&p=148', 0, 'acf-field', '', 0),
(149, 1, '2023-05-05 12:20:19', '2023-05-05 12:20:19', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:12:\"button_group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:6:{s:2:\"h1\";s:2:\"H1\";s:2:\"h2\";s:2:\"H2\";s:2:\"h3\";s:2:\"H3\";s:2:\"h4\";s:2:\"H4\";s:2:\"h5\";s:2:\"H5\";s:2:\"h6\";s:2:\"H6\";}s:13:\"default_value\";s:2:\"h3\";s:13:\"return_format\";s:5:\"value\";s:10:\"allow_null\";i:0;s:6:\"layout\";s:10:\"horizontal\";}', 'Tag', 'tag', 'publish', 'closed', 'closed', '', 'field_6454f475ab35f', '', '', '2023-05-05 12:21:26', '2023-05-05 12:21:26', '', 147, 'http://redacre.test/?post_type=acf-field&#038;p=149', 1, 'acf-field', '', 0),
(150, 1, '2023-05-05 12:20:24', '2023-05-05 12:20:24', '<!-- wp:acf/hero {\"name\":\"acf/hero\",\"data\":{\"content\":\"Tighter Spreads \\u0026amp; Faster Execution\",\"_content\":\"field_6454f3de32a4e\",\"image\":\"\",\"_image\":\"field_6454f40f32a4f\"},\"mode\":\"preview\"} /-->', 'Home', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2023-05-05 12:20:24', '2023-05-05 12:20:24', '', 12, 'http://redacre.test/?p=150', 0, 'revision', '', 0),
(156, 1, '2023-05-05 17:27:54', '2023-05-05 17:27:54', '<!-- wp:acf/hero {\"name\":\"acf/hero\",\"data\":{\"header_title\":\"Tighter Spreads \\u0026 Faster Execution\",\"_header_title\":\"field_6454f46bab35e\",\"header_tag\":\"h3\",\"_header_tag\":\"field_6454f475ab35f\",\"header\":\"\",\"_header\":\"field_6454f45bab35d\",\"content\":\"With Forex Bros you trade with the best in the biz! With quality execution and some of the best trading conditions in the industry, your trading experience will be none other than epic.\\r\\n\\u003cul\\u003e\\r\\n \\t\\u003cli\\u003eNo dealing desk or requotes\\u003c/li\\u003e\\r\\n \\t\\u003cli\\u003eCommissions as low as $0\\u003c/li\\u003e\\r\\n\\u003c/ul\\u003e\",\"_content\":\"field_6454f3de32a4e\",\"image\":154,\"_image\":\"field_6454f40f32a4f\"},\"mode\":\"preview\"} /-->\n\n<!-- wp:acf/tools {\"name\":\"acf/tools\",\"data\":[],\"mode\":\"preview\"} /-->', 'Home', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2023-05-05 17:27:54', '2023-05-05 17:27:54', '', 12, 'http://redacre.test/?p=156', 0, 'revision', '', 0),
(154, 1, '2023-05-05 13:06:11', '2023-05-05 13:06:11', '', 'Hero', '', 'inherit', 'open', 'closed', '', 'hero', '', '', '2023-05-05 13:06:18', '2023-05-05 13:06:18', '', 12, 'http://redacre.test/wp-content/uploads/2023/05/hero.svg', 0, 'attachment', 'image/svg+xml', 0),
(153, 1, '2023-05-05 12:23:08', '2023-05-05 12:23:08', '<!-- wp:acf/hero {\"name\":\"acf/hero\",\"data\":{\"header_title\":\"Tighter Spreads \\u0026 Faster Execution\",\"_header_title\":\"field_6454f46bab35e\",\"header_tag\":\"h3\",\"_header_tag\":\"field_6454f475ab35f\",\"header\":\"\",\"_header\":\"field_6454f45bab35d\",\"content\":\"With Forex Bros you trade with the best in the biz! With quality execution and some of the best trading conditions in the industry, your trading experience will be none other than epic.\\r\\n\\u003cul\\u003e\\r\\n \\t\\u003cli\\u003eNo dealing desk or requotes\\u003c/li\\u003e\\r\\n \\t\\u003cli\\u003eCommissions as low as $0\\u003c/li\\u003e\\r\\n\\u003c/ul\\u003e\",\"_content\":\"field_6454f3de32a4e\",\"image\":152,\"_image\":\"field_6454f40f32a4f\"},\"mode\":\"preview\"} /-->', 'Home', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2023-05-05 12:23:08', '2023-05-05 12:23:08', '', 12, 'http://redacre.test/?p=153', 0, 'revision', '', 0),
(155, 1, '2023-05-05 13:06:19', '2023-05-05 13:06:19', '<!-- wp:acf/hero {\"name\":\"acf/hero\",\"data\":{\"header_title\":\"Tighter Spreads \\u0026 Faster Execution\",\"_header_title\":\"field_6454f46bab35e\",\"header_tag\":\"h3\",\"_header_tag\":\"field_6454f475ab35f\",\"header\":\"\",\"_header\":\"field_6454f45bab35d\",\"content\":\"With Forex Bros you trade with the best in the biz! With quality execution and some of the best trading conditions in the industry, your trading experience will be none other than epic.\\r\\n\\u003cul\\u003e\\r\\n \\t\\u003cli\\u003eNo dealing desk or requotes\\u003c/li\\u003e\\r\\n \\t\\u003cli\\u003eCommissions as low as $0\\u003c/li\\u003e\\r\\n\\u003c/ul\\u003e\",\"_content\":\"field_6454f3de32a4e\",\"image\":154,\"_image\":\"field_6454f40f32a4f\"},\"mode\":\"preview\"} /-->', 'Home', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2023-05-05 13:06:19', '2023-05-05 13:06:19', '', 12, 'http://redacre.test/?p=155', 0, 'revision', '', 0),
(157, 1, '2023-05-05 17:37:25', '2023-05-05 17:37:25', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:5:\"block\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:9:\"acf/tools\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Tools - Block', 'tools-block', 'publish', 'closed', 'closed', '', 'group_64553e8427436', '', '', '2023-05-05 17:42:59', '2023-05-05 17:42:59', '', 0, 'http://redacre.test/?post_type=acf-field-group&#038;p=157', 0, 'acf-field-group', '', 0),
(158, 1, '2023-05-05 17:37:25', '2023-05-05 17:37:25', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Header', 'header', 'publish', 'closed', 'closed', '', 'field_64553e8433950', '', '', '2023-05-05 17:37:25', '2023-05-05 17:37:25', '', 157, 'http://redacre.test/?post_type=acf-field&p=158', 0, 'acf-field', '', 0),
(159, 1, '2023-05-05 17:37:25', '2023-05-05 17:37:25', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Title', 'title', 'publish', 'closed', 'closed', '', 'field_64553ea633951', '', '', '2023-05-05 17:37:25', '2023-05-05 17:37:25', '', 158, 'http://redacre.test/?post_type=acf-field&p=159', 0, 'acf-field', '', 0),
(160, 1, '2023-05-05 17:37:25', '2023-05-05 17:37:25', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:12:\"button_group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:6:{s:2:\"h1\";s:2:\"H1\";s:2:\"h2\";s:2:\"H2\";s:2:\"h3\";s:2:\"H3\";s:2:\"h4\";s:2:\"H4\";s:2:\"h5\";s:2:\"H5\";s:2:\"h6\";s:2:\"H6\";}s:13:\"default_value\";s:2:\"h4\";s:13:\"return_format\";s:5:\"value\";s:10:\"allow_null\";i:0;s:6:\"layout\";s:10:\"horizontal\";}', 'Tag', 'tag', 'publish', 'closed', 'closed', '', 'field_64553eac33952', '', '', '2023-05-05 17:37:25', '2023-05-05 17:37:25', '', 158, 'http://redacre.test/?post_type=acf-field&p=160', 1, 'acf-field', '', 0),
(161, 1, '2023-05-05 17:40:02', '2023-05-05 17:40:02', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Text', 'text', 'publish', 'closed', 'closed', '', 'field_64553edb7d6c3', '', '', '2023-05-05 17:40:02', '2023-05-05 17:40:02', '', 157, 'http://redacre.test/?post_type=acf-field&p=161', 1, 'acf-field', '', 0),
(162, 1, '2023-05-05 17:40:02', '2023-05-05 17:40:02', 'a:13:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"pagination\";i:0;s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:9:\"collapsed\";s:0:\"\";s:12:\"button_label\";s:7:\"Add Row\";s:13:\"rows_per_page\";i:20;}', 'Slider', 'slider', 'publish', 'closed', 'closed', '', 'field_64553f227d6c4', '', '', '2023-05-05 17:42:59', '2023-05-05 17:42:59', '', 157, 'http://redacre.test/?post_type=acf-field&#038;p=162', 2, 'acf-field', '', 0),
(163, 1, '2023-05-05 17:40:02', '2023-05-05 17:40:02', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'Image', 'image', 'publish', 'closed', 'closed', '', 'field_64553f2d7d6c5', '', '', '2023-05-05 17:40:02', '2023-05-05 17:40:02', '', 162, 'http://redacre.test/?post_type=acf-field&p=163', 0, 'acf-field', '', 0),
(164, 1, '2023-05-05 17:40:02', '2023-05-05 17:40:02', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Title', 'title', 'publish', 'closed', 'closed', '', 'field_64553f457d6c6', '', '', '2023-05-05 17:40:02', '2023-05-05 17:40:02', '', 162, 'http://redacre.test/?post_type=acf-field&p=164', 1, 'acf-field', '', 0),
(165, 1, '2023-05-05 17:40:02', '2023-05-05 17:40:02', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";i:4;s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Text', 'text', 'publish', 'closed', 'closed', '', 'field_64553f577d6c7', '', '', '2023-05-05 17:40:02', '2023-05-05 17:40:02', '', 162, 'http://redacre.test/?post_type=acf-field&p=165', 2, 'acf-field', '', 0),
(171, 1, '2023-05-05 17:43:46', '2023-05-05 17:43:46', '<!-- wp:acf/hero {\"name\":\"acf/hero\",\"data\":{\"header_title\":\"Tighter Spreads \\u0026 Faster Execution\",\"_header_title\":\"field_6454f46bab35e\",\"header_tag\":\"h3\",\"_header_tag\":\"field_6454f475ab35f\",\"header\":\"\",\"_header\":\"field_6454f45bab35d\",\"content\":\"With Forex Bros you trade with the best in the biz! With quality execution and some of the best trading conditions in the industry, your trading experience will be none other than epic.\\r\\n\\u003cul\\u003e\\r\\n \\t\\u003cli\\u003eNo dealing desk or requotes\\u003c/li\\u003e\\r\\n \\t\\u003cli\\u003eCommissions as low as $0\\u003c/li\\u003e\\r\\n\\u003c/ul\\u003e\",\"_content\":\"field_6454f3de32a4e\",\"image\":154,\"_image\":\"field_6454f40f32a4f\"},\"mode\":\"preview\"} /-->\n\n<!-- wp:acf/tools {\"name\":\"acf/tools\",\"data\":{\"header_title\":\"Tools to Compliment Your Trading\",\"_header_title\":\"field_64553ea633951\",\"header_tag\":\"h4\",\"_header_tag\":\"field_64553eac33952\",\"header\":\"\",\"_header\":\"field_64553e8433950\",\"text\":\"Access news \\u0026 economic calendar, technical indicators \\u0026 charts, Forex Calculators, educational resources and many more tools to help you excel.\",\"_text\":\"field_64553edb7d6c3\",\"slider_0_image\":169,\"_slider_0_image\":\"field_64553f2d7d6c5\",\"slider_0_title\":\" Economic Calendar\",\"_slider_0_title\":\"field_64553f457d6c6\",\"slider_0_text\":\"Access all major events \\u0026 economic news that impact financial markets.\",\"_slider_0_text\":\"field_64553f577d6c7\",\"slider_1_image\":168,\"_slider_1_image\":\"field_64553f2d7d6c5\",\"slider_1_title\":\"Trading Calculators\",\"_slider_1_title\":\"field_64553f457d6c6\",\"slider_1_text\":\"Make trading calculations in real-time \\u0026 forecast the potential growth of your account.\",\"_slider_1_text\":\"field_64553f577d6c7\",\"slider_2_image\":167,\"_slider_2_image\":\"field_64553f2d7d6c5\",\"slider_2_title\":\"Educational Resources\",\"_slider_2_title\":\"field_64553f457d6c6\",\"slider_2_text\":\"From top tips \\u0026 trading psychology to more ways to earn, we make learning more fun.\",\"_slider_2_text\":\"field_64553f577d6c7\",\"slider\":3,\"_slider\":\"field_64553f227d6c4\"},\"mode\":\"preview\"} /-->', 'Home', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2023-05-05 17:43:46', '2023-05-05 17:43:46', '', 12, 'http://redacre.test/?p=171', 0, 'revision', '', 0),
(167, 1, '2023-05-05 17:41:51', '2023-05-05 17:41:51', '', 'Slider Pink', '', 'inherit', 'open', 'closed', '', 'slider-pink', '', '', '2023-05-05 17:42:02', '2023-05-05 17:42:02', '', 12, 'http://redacre.test/wp-content/uploads/2023/05/slider-pink.svg', 0, 'attachment', 'image/svg+xml', 0),
(168, 1, '2023-05-05 17:41:51', '2023-05-05 17:41:51', '', 'Slider Purple', '', 'inherit', 'open', 'closed', '', 'slider-purple', '', '', '2023-05-05 17:42:09', '2023-05-05 17:42:09', '', 12, 'http://redacre.test/wp-content/uploads/2023/05/slider-purple.svg', 0, 'attachment', 'image/svg+xml', 0),
(169, 1, '2023-05-05 17:41:51', '2023-05-05 17:41:51', '', 'Slider Green', '', 'inherit', 'open', 'closed', '', 'slider-green', '', '', '2023-05-05 17:42:16', '2023-05-05 17:42:16', '', 12, 'http://redacre.test/wp-content/uploads/2023/05/slider-green.svg', 0, 'attachment', 'image/svg+xml', 0),
(170, 1, '2023-05-05 17:42:47', '2023-05-05 17:42:47', '<!-- wp:acf/hero {\"name\":\"acf/hero\",\"data\":{\"header_title\":\"Tighter Spreads \\u0026 Faster Execution\",\"_header_title\":\"field_6454f46bab35e\",\"header_tag\":\"h3\",\"_header_tag\":\"field_6454f475ab35f\",\"header\":\"\",\"_header\":\"field_6454f45bab35d\",\"content\":\"With Forex Bros you trade with the best in the biz! With quality execution and some of the best trading conditions in the industry, your trading experience will be none other than epic.\\r\\n\\u003cul\\u003e\\r\\n \\t\\u003cli\\u003eNo dealing desk or requotes\\u003c/li\\u003e\\r\\n \\t\\u003cli\\u003eCommissions as low as $0\\u003c/li\\u003e\\r\\n\\u003c/ul\\u003e\",\"_content\":\"field_6454f3de32a4e\",\"image\":154,\"_image\":\"field_6454f40f32a4f\"},\"mode\":\"preview\"} /-->\n\n<!-- wp:acf/tools {\"name\":\"acf/tools\",\"data\":{\"header_title\":\"Tools to Compliment Your Trading\",\"_header_title\":\"field_64553ea633951\",\"header_tag\":\"h4\",\"_header_tag\":\"field_64553eac33952\",\"header\":\"\",\"_header\":\"field_64553e8433950\",\"text\":\"Access news \\u0026 economic calendar, technical indicators \\u0026 charts, Forex Calculators, educational resources and many more tools to help you excel.\",\"_text\":\"field_64553edb7d6c3\",\"slider_0_image\":169,\"_slider_0_image\":\"field_64553f2d7d6c5\",\"slider_0_title\":\" Economic Calendar\",\"_slider_0_title\":\"field_64553f457d6c6\",\"slider_0_text\":\"\",\"_slider_0_text\":\"field_64553f577d6c7\",\"slider\":1,\"_slider\":\"field_64553f227d6c4\"},\"mode\":\"preview\"} /-->', 'Home', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2023-05-05 17:42:47', '2023-05-05 17:42:47', '', 12, 'http://redacre.test/?p=170', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
CREATE TABLE IF NOT EXISTS `wp_termmeta` (
  `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `term_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Main menu', 'main-menu', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(46, 2, 0),
(30, 2, 0),
(31, 2, 0),
(32, 2, 0),
(33, 2, 0),
(34, 2, 0),
(45, 2, 0),
(44, 2, 0),
(43, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `term_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 9);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'redacre_admin'),
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
(30, 1, 'session_tokens', 'a:1:{s:64:\"ac817031a46ffda87f4d2b70c665b0a83818c6fdc45bba0cc8dfe2272a84f195\";a:4:{s:10:\"expiration\";i:1683563344;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36\";s:5:\"login\";i:1683390544;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(19, 1, 'wp_persisted_preferences', 'a:2:{s:14:\"core/edit-post\";a:3:{s:26:\"isComplementaryAreaVisible\";b:1;s:12:\"welcomeGuide\";b:0;s:10:\"openPanels\";a:2:{i:0;s:11:\"post-status\";i:1;s:15:\"page-attributes\";}}s:9:\"_modified\";s:24:\"2023-05-03T15:27:19.545Z\";}'),
(20, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce'),
(21, 1, 'wp_user-settings-time', '1683221035'),
(22, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(23, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(24, 1, 'nav_menu_recently_edited', '2'),
(25, 1, 'acf_user_settings', 'a:1:{s:15:\"show_field_keys\";s:1:\"1\";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'redacre_admin', '$P$B71W5KPVH.yiTIHf9SFnsKTsvPy0IB1', 'redacre_admin', 'smot1@inbox.lv', 'http://redacre.test', '2023-05-03 07:03:00', '', 0, 'redacre_admin');

-- --------------------------------------------------------

--
-- Table structure for table `wp_yoast_indexable`
--

DROP TABLE IF EXISTS `wp_yoast_indexable`;
CREATE TABLE IF NOT EXISTS `wp_yoast_indexable` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `permalink` longtext COLLATE utf8mb4_unicode_520_ci,
  `permalink_hash` varchar(40) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `object_id` bigint DEFAULT NULL,
  `object_type` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `object_sub_type` varchar(32) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `author_id` bigint DEFAULT NULL,
  `post_parent` bigint DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_520_ci,
  `description` mediumtext COLLATE utf8mb4_unicode_520_ci,
  `breadcrumb_title` text COLLATE utf8mb4_unicode_520_ci,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `is_public` tinyint(1) DEFAULT NULL,
  `is_protected` tinyint(1) DEFAULT '0',
  `has_public_posts` tinyint(1) DEFAULT NULL,
  `number_of_pages` int UNSIGNED DEFAULT NULL,
  `canonical` longtext COLLATE utf8mb4_unicode_520_ci,
  `primary_focus_keyword` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `primary_focus_keyword_score` int DEFAULT NULL,
  `readability_score` int DEFAULT NULL,
  `is_cornerstone` tinyint(1) DEFAULT '0',
  `is_robots_noindex` tinyint(1) DEFAULT '0',
  `is_robots_nofollow` tinyint(1) DEFAULT '0',
  `is_robots_noarchive` tinyint(1) DEFAULT '0',
  `is_robots_noimageindex` tinyint(1) DEFAULT '0',
  `is_robots_nosnippet` tinyint(1) DEFAULT '0',
  `twitter_title` text COLLATE utf8mb4_unicode_520_ci,
  `twitter_image` longtext COLLATE utf8mb4_unicode_520_ci,
  `twitter_description` longtext COLLATE utf8mb4_unicode_520_ci,
  `twitter_image_id` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `twitter_image_source` text COLLATE utf8mb4_unicode_520_ci,
  `open_graph_title` text COLLATE utf8mb4_unicode_520_ci,
  `open_graph_description` longtext COLLATE utf8mb4_unicode_520_ci,
  `open_graph_image` longtext COLLATE utf8mb4_unicode_520_ci,
  `open_graph_image_id` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `open_graph_image_source` text COLLATE utf8mb4_unicode_520_ci,
  `open_graph_image_meta` mediumtext COLLATE utf8mb4_unicode_520_ci,
  `link_count` int DEFAULT NULL,
  `incoming_link_count` int DEFAULT NULL,
  `prominent_words_version` int UNSIGNED DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `blog_id` bigint NOT NULL DEFAULT '1',
  `language` varchar(32) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `region` varchar(32) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `schema_page_type` varchar(64) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `schema_article_type` varchar(64) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `has_ancestors` tinyint(1) DEFAULT '0',
  `estimated_reading_time_minutes` int DEFAULT NULL,
  `version` int DEFAULT '1',
  `object_last_modified` datetime DEFAULT NULL,
  `object_published_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `object_type_and_sub_type` (`object_type`,`object_sub_type`),
  KEY `object_id_and_type` (`object_id`,`object_type`),
  KEY `permalink_hash_and_object_type` (`permalink_hash`,`object_type`),
  KEY `subpages` (`post_parent`,`object_type`,`post_status`,`object_id`),
  KEY `prominent_words` (`prominent_words_version`,`object_type`,`object_sub_type`,`post_status`),
  KEY `published_sitemap_index` (`object_published_at`,`is_robots_noindex`,`object_type`,`object_sub_type`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_yoast_indexable`
--

INSERT INTO `wp_yoast_indexable` (`id`, `permalink`, `permalink_hash`, `object_id`, `object_type`, `object_sub_type`, `author_id`, `post_parent`, `title`, `description`, `breadcrumb_title`, `post_status`, `is_public`, `is_protected`, `has_public_posts`, `number_of_pages`, `canonical`, `primary_focus_keyword`, `primary_focus_keyword_score`, `readability_score`, `is_cornerstone`, `is_robots_noindex`, `is_robots_nofollow`, `is_robots_noarchive`, `is_robots_noimageindex`, `is_robots_nosnippet`, `twitter_title`, `twitter_image`, `twitter_description`, `twitter_image_id`, `twitter_image_source`, `open_graph_title`, `open_graph_description`, `open_graph_image`, `open_graph_image_id`, `open_graph_image_source`, `open_graph_image_meta`, `link_count`, `incoming_link_count`, `prominent_words_version`, `created_at`, `updated_at`, `blog_id`, `language`, `region`, `schema_page_type`, `schema_article_type`, `has_ancestors`, `estimated_reading_time_minutes`, `version`, `object_last_modified`, `object_published_at`) VALUES
(1, 'http://redacre.test/category/uncategorized/', '43:8655ddf743435f8919d04e5d1859108b', 1, 'term', 'category', NULL, NULL, NULL, NULL, 'Uncategorized', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-05-06 14:48:09', '2023-05-06 11:48:11', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-05-03 07:03:00', '2023-05-03 07:03:00'),
(2, 'http://redacre.test/', '20:243d85390788dc8cb3542408bb3afc21', 12, 'post', 'page', 1, 0, NULL, NULL, 'Home', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-05-06 14:48:10', '2023-05-06 11:48:10', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-05-05 17:43:46', '2023-05-03 10:17:54'),
(3, 'http://redacre.test/author/redacre_admin/', '41:2a64ad2dbad31d08c9b14ba838340e64', 1, 'user', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'https://2.gravatar.com/avatar/ba32fcce98a3e6f21d98cc4a7db1f261?s=500&d=mm&r=g', NULL, NULL, 'gravatar-image', NULL, NULL, 'https://2.gravatar.com/avatar/ba32fcce98a3e6f21d98cc4a7db1f261?s=500&d=mm&r=g', NULL, 'gravatar-image', NULL, NULL, NULL, NULL, '2023-05-06 14:48:10', '2023-05-06 11:48:10', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-05-05 17:43:46', '2023-05-03 07:03:00'),
(4, 'http://redacre.test/about/', '26:537976ebab4ff7a8ffa91082827ec24a', 14, 'post', 'page', 1, 0, NULL, NULL, 'About', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-05-06 14:48:10', '2023-05-06 11:48:10', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-05-03 10:18:03', '2023-05-03 10:18:03'),
(5, 'http://redacre.test/affiliates/', '31:c5a25c3c7bb316b377eabf76833f95b3', 16, 'post', 'page', 1, 0, NULL, NULL, 'Affiliates', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-05-06 14:48:10', '2023-05-06 11:48:10', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-05-03 10:18:13', '2023-05-03 10:18:13'),
(6, 'http://redacre.test/trading/', '28:1d9e0ae9c43794f4788c7d060eaa859b', 18, 'post', 'page', 1, 0, NULL, NULL, 'Trading', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-05-06 14:48:10', '2023-05-06 11:48:10', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-05-03 10:18:21', '2023-05-03 10:18:21'),
(7, 'http://redacre.test/resources/', '30:810fc55e34bc52e1ce2b6fa2c45c8e90', 20, 'post', 'page', 1, 0, NULL, NULL, 'Resources', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-05-06 14:48:10', '2023-05-06 11:48:10', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-05-03 10:18:34', '2023-05-03 10:18:34'),
(8, 'http://redacre.test/markets/', '28:4515cce44714d649f22e7d4ce64d7a8c', 22, 'post', 'page', 1, 0, NULL, NULL, 'Markets', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-05-06 14:48:10', '2023-05-06 11:48:11', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-05-03 10:18:43', '2023-05-03 10:18:43'),
(9, 'http://redacre.test/about/who-we-are/', '37:767e60c28a9dcc28f579d36fdc962f67', 35, 'post', 'page', 1, 14, NULL, NULL, 'Who We Are', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-05-06 14:48:10', '2023-05-06 11:48:11', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-05-03 15:27:44', '2023-05-03 11:03:05'),
(10, 'http://redacre.test/about/contact-us/', '37:c15f5dc7366be8d475b5a462dd05c0ca', 37, 'post', 'page', 1, 14, NULL, NULL, 'Contact Us', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-05-06 14:48:10', '2023-05-06 11:48:11', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-05-03 15:27:54', '2023-05-03 11:03:18'),
(11, 'http://redacre.test/about/terms-conditions/', '43:1d9ccd5038ec49b023dda2085fe4f124', 39, 'post', 'page', 1, 14, NULL, NULL, 'Terms &amp; Conditions', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-05-06 14:48:10', '2023-05-06 11:48:11', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-05-03 15:27:59', '2023-05-03 11:03:29'),
(12, 'http://redacre.test/about/privacy-policy/', '41:7ea75f09b18e96310d8686c1197a89b9', 41, 'post', 'page', 1, 14, NULL, NULL, 'Privacy Policy', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-05-06 14:48:10', '2023-05-06 11:48:11', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-05-03 15:28:05', '2023-05-03 11:03:38'),
(13, 'http://redacre.test/features/', '29:6665e60b8b887bf2a0c8d7ae925e8a8b', 47, 'post', 'page', 1, 0, NULL, NULL, 'Features', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-05-06 14:48:10', '2023-05-06 11:48:11', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-05-03 19:35:18', '2023-05-03 19:35:18'),
(14, 'http://redacre.test/products-spreads/', '37:5cd6b46598522cdf6b54070545c8865d', 49, 'post', 'page', 1, 0, NULL, NULL, 'Products &amp; Spreads', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-05-06 14:48:10', '2023-05-06 11:48:11', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-05-03 19:35:25', '2023-05-03 19:35:25'),
(15, 'http://redacre.test/account-types/', '34:b23f70f9739710a3b411d6cdc212eaf4', 51, 'post', 'page', 1, 0, NULL, NULL, 'Account Types', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-05-06 14:48:10', '2023-05-06 11:48:11', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-05-03 19:35:33', '2023-05-03 19:35:33'),
(16, 'http://redacre.test/metatrader/', '31:d4c792cd00a1a67a3cfa5caf0465e21e', 53, 'post', 'page', 1, 0, NULL, NULL, 'Metatrader', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-05-06 14:48:10', '2023-05-06 11:48:11', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-05-03 19:35:39', '2023-05-03 19:35:39'),
(17, 'http://redacre.test/demo-account/', '33:356ab449b643b639ab6c912004b9e634', 55, 'post', 'page', 1, 0, NULL, NULL, 'Demo Account', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-05-06 14:48:10', '2023-05-06 11:48:11', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-05-03 19:35:46', '2023-05-03 19:35:46'),
(18, 'http://redacre.test/funded-accounts/', '36:14c3de5e1ced8dda9a6c7206cd5484b7', 57, 'post', 'page', 1, 0, NULL, NULL, 'Funded Accounts', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-05-06 14:48:10', '2023-05-06 11:48:11', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-05-03 19:35:53', '2023-05-03 19:35:53'),
(19, 'http://redacre.test/afilliate-program/', '38:7b291ddefee26b8d1a88252417686260', 59, 'post', 'page', 1, 0, NULL, NULL, 'Afilliate Program', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-05-06 14:48:10', '2023-05-06 11:48:11', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-05-03 19:36:01', '2023-05-03 19:36:01'),
(20, 'http://redacre.test/pamm-accounts/', '34:a05b4f74619621d799de3d699ffe6765', 62, 'post', 'page', 1, 0, NULL, NULL, 'PAMM Accounts', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-05-06 14:48:10', '2023-05-06 11:48:11', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-05-03 19:36:40', '2023-05-03 19:36:40'),
(21, 'http://redacre.test/faq/', '24:ad66e4e571206f013f0e693b5ff6a47c', 64, 'post', 'page', 1, 0, NULL, NULL, 'FAQ', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-05-06 14:48:10', '2023-05-06 11:48:11', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-05-03 19:37:46', '2023-05-03 19:37:46'),
(22, 'http://redacre.test/education/', '30:05e0c46d53532dab9c1287fcc43a97b1', 66, 'post', 'page', 1, 0, NULL, NULL, 'Education', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-05-06 14:48:10', '2023-05-06 11:48:11', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-05-03 19:37:59', '2023-05-03 19:37:59'),
(23, 'http://redacre.test/news/', '25:0d74427309a1baa4f2e916800918e309', 68, 'post', 'page', 1, 0, NULL, NULL, 'News', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-05-06 14:48:10', '2023-05-06 11:48:11', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-05-03 19:38:05', '2023-05-03 19:38:05'),
(24, 'http://redacre.test/economic-calculator/', '40:6987fafdeb9111a3b964454c39686569', 70, 'post', 'page', 1, 0, NULL, NULL, 'Economic Calculator', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-05-06 14:48:10', '2023-05-06 11:48:11', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-05-03 19:38:16', '2023-05-03 19:38:16'),
(25, 'http://redacre.test/forex-calculators/', '38:4af3145705c31b83d5c94cdd81b9fecc', 72, 'post', 'page', 1, 0, NULL, NULL, 'Forex Calculators', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-05-06 14:48:10', '2023-05-06 11:48:11', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-05-03 19:38:23', '2023-05-03 19:38:23'),
(26, 'http://redacre.test/interest-calculator/', '40:eb394255033d789619d5dd1ac2f6c41e', 74, 'post', 'page', 1, 0, NULL, NULL, 'Interest Calculator', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-05-06 14:48:10', '2023-05-06 11:48:11', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-05-03 19:38:30', '2023-05-03 19:38:30'),
(27, 'http://redacre.test/educational-blogs/', '38:c7cfda742c8541a52fc27448b56e8569', 76, 'post', 'page', 1, 0, NULL, NULL, 'Educational Blogs', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-05-06 14:48:10', '2023-05-06 11:48:11', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-05-03 19:38:38', '2023-05-03 19:38:38'),
(28, 'http://redacre.test/risk-disclosure/', '36:6e7eec8ca66ca4e6ed17b74908563fdd', 78, 'post', 'page', 1, 0, NULL, NULL, 'Risk Disclosure', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-05-06 14:48:10', '2023-05-06 11:48:11', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-05-03 19:38:54', '2023-05-03 19:38:54'),
(29, 'http://redacre.test/hello-world/', '32:0e4ad41dd93766027dac133b627e1449', 1, 'post', 'post', 1, 0, NULL, NULL, 'Hello world!', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-05-06 14:48:10', '2023-05-06 11:48:11', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-05-03 07:03:00', '2023-05-03 07:03:00'),
(30, NULL, NULL, NULL, 'system-page', '404', NULL, NULL, 'Page not found %%sep%% %%sitename%%', NULL, 'Error 404: Page not found', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-06 14:48:10', '2023-05-06 11:48:10', 1, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL),
(31, NULL, NULL, NULL, 'system-page', 'search-result', NULL, NULL, 'You searched for %%searchphrase%% %%page%% %%sep%% %%sitename%%', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-06 14:48:10', '2023-05-06 11:48:10', 1, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL),
(32, NULL, NULL, NULL, 'date-archive', NULL, NULL, NULL, '%%date%% %%page%% %%sep%% %%sitename%%', '', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-06 14:48:10', '2023-05-06 11:48:10', 1, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL),
(33, 'http://redacre.test/', '20:243d85390788dc8cb3542408bb3afc21', NULL, 'home-page', NULL, NULL, NULL, '%%sitename%% %%page%% %%sep%% %%sitedesc%%', '', 'Home', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, '%%sitename%%', '', '', '0', NULL, NULL, NULL, NULL, NULL, '2023-05-06 14:50:11', '2023-05-06 11:50:11', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-05-03 07:03:00', '2023-05-03 07:03:00');

-- --------------------------------------------------------

--
-- Table structure for table `wp_yoast_indexable_hierarchy`
--

DROP TABLE IF EXISTS `wp_yoast_indexable_hierarchy`;
CREATE TABLE IF NOT EXISTS `wp_yoast_indexable_hierarchy` (
  `indexable_id` int UNSIGNED NOT NULL,
  `ancestor_id` int UNSIGNED NOT NULL,
  `depth` int UNSIGNED DEFAULT NULL,
  `blog_id` bigint NOT NULL DEFAULT '1',
  PRIMARY KEY (`indexable_id`,`ancestor_id`),
  KEY `indexable_id` (`indexable_id`),
  KEY `ancestor_id` (`ancestor_id`),
  KEY `depth` (`depth`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_yoast_indexable_hierarchy`
--

INSERT INTO `wp_yoast_indexable_hierarchy` (`indexable_id`, `ancestor_id`, `depth`, `blog_id`) VALUES
(1, 0, 0, 1),
(2, 0, 0, 1),
(4, 0, 0, 1),
(5, 0, 0, 1),
(6, 0, 0, 1),
(7, 0, 0, 1),
(8, 0, 0, 1),
(9, 4, 1, 1),
(10, 4, 1, 1),
(11, 4, 1, 1),
(12, 4, 1, 1),
(13, 0, 0, 1),
(14, 0, 0, 1),
(15, 0, 0, 1),
(16, 0, 0, 1),
(17, 0, 0, 1),
(18, 0, 0, 1),
(19, 0, 0, 1),
(20, 0, 0, 1),
(21, 0, 0, 1),
(22, 0, 0, 1),
(23, 0, 0, 1),
(24, 0, 0, 1),
(25, 0, 0, 1),
(26, 0, 0, 1),
(27, 0, 0, 1),
(28, 0, 0, 1),
(29, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_yoast_migrations`
--

DROP TABLE IF EXISTS `wp_yoast_migrations`;
CREATE TABLE IF NOT EXISTS `wp_yoast_migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `version` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `wp_yoast_migrations_version` (`version`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_yoast_migrations`
--

INSERT INTO `wp_yoast_migrations` (`id`, `version`) VALUES
(1, '20171228151840'),
(2, '20171228151841'),
(3, '20190529075038'),
(4, '20191011111109'),
(5, '20200408101900'),
(6, '20200420073606'),
(7, '20200428123747'),
(8, '20200428194858'),
(9, '20200429105310'),
(10, '20200430075614'),
(11, '20200430150130'),
(12, '20200507054848'),
(13, '20200513133401'),
(14, '20200609154515'),
(15, '20200616130143'),
(16, '20200617122511'),
(17, '20200702141921'),
(18, '20200728095334'),
(19, '20201202144329'),
(20, '20201216124002'),
(21, '20201216141134'),
(22, '20210817092415'),
(23, '20211020091404');

-- --------------------------------------------------------

--
-- Table structure for table `wp_yoast_primary_term`
--

DROP TABLE IF EXISTS `wp_yoast_primary_term`;
CREATE TABLE IF NOT EXISTS `wp_yoast_primary_term` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_id` bigint DEFAULT NULL,
  `term_id` bigint DEFAULT NULL,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `blog_id` bigint NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `post_taxonomy` (`post_id`,`taxonomy`),
  KEY `post_term` (`post_id`,`term_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_yoast_seo_links`
--

DROP TABLE IF EXISTS `wp_yoast_seo_links`;
CREATE TABLE IF NOT EXISTS `wp_yoast_seo_links` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `url` varchar(255) DEFAULT NULL,
  `post_id` bigint UNSIGNED DEFAULT NULL,
  `target_post_id` bigint UNSIGNED DEFAULT NULL,
  `type` varchar(8) DEFAULT NULL,
  `indexable_id` int UNSIGNED DEFAULT NULL,
  `target_indexable_id` int UNSIGNED DEFAULT NULL,
  `height` int UNSIGNED DEFAULT NULL,
  `width` int UNSIGNED DEFAULT NULL,
  `size` int UNSIGNED DEFAULT NULL,
  `language` varchar(32) DEFAULT NULL,
  `region` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `link_direction` (`post_id`,`type`),
  KEY `indexable_link_direction` (`indexable_id`,`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
