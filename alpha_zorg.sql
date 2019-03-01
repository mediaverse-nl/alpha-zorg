-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Gegenereerd op: 01 mrt 2019 om 03:02
-- Serverversie: 5.7.21
-- PHP-versie: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `alpha_zorg`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_slug_unique` (`slug`),
  KEY `categories_parent_id_foreign` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Gegevens worden geëxporteerd voor tabel `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Category 1', 'category-1', '2019-02-26 09:41:21', '2019-02-26 09:41:21'),
(2, NULL, 1, 'Category 2', 'category-2', '2019-02-26 09:41:21', '2019-02-26 09:41:21');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `data_rows`
--

DROP TABLE IF EXISTS `data_rows`;
CREATE TABLE IF NOT EXISTS `data_rows` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `data_rows_data_type_id_foreign` (`data_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Gegevens worden geëxporteerd voor tabel `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'locale', 'text', 'Locale', 0, 1, 1, 1, 1, 0, NULL, 12),
(12, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(13, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(14, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(15, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(16, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(17, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(18, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(19, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(20, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(21, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(22, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(23, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(24, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(25, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(26, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 4),
(27, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(28, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, NULL, 6),
(29, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(30, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(31, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, NULL, 2),
(32, 5, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, NULL, 3),
(33, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 4),
(34, 5, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 5),
(35, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 6),
(36, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(37, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(38, 5, 'meta_description', 'text_area', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 9),
(39, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 10),
(40, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(41, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 12),
(42, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 13),
(43, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, NULL, 14),
(44, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, NULL, 15),
(45, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(46, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, NULL, 2),
(47, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 3),
(48, 6, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 4),
(49, 6, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 5),
(50, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(51, 6, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 7),
(52, 6, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 8),
(53, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(54, 6, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, NULL, 10),
(55, 6, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, NULL, 11),
(56, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, NULL, 12);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `data_types`
--

DROP TABLE IF EXISTS `data_types`;
CREATE TABLE IF NOT EXISTS `data_types` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `data_types_name_unique` (`name`),
  UNIQUE KEY `data_types_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Gegevens worden geëxporteerd voor tabel `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', '', '', 1, 0, NULL, '2019-02-26 09:41:19', '2019-02-26 09:41:19'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2019-02-26 09:41:19', '2019-02-26 09:41:19'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, NULL, '2019-02-26 09:41:19', '2019-02-26 09:41:19'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2019-02-26 09:41:21', '2019-02-26 09:41:21'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2019-02-26 09:41:22', '2019-02-26 09:41:22'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2019-02-26 09:41:22', '2019-02-26 09:41:22');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `menus`
--

DROP TABLE IF EXISTS `menus`;
CREATE TABLE IF NOT EXISTS `menus` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Gegevens worden geëxporteerd voor tabel `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2019-02-26 09:41:20', '2019-02-26 09:41:20'),
(2, 'main', '2019-02-26 10:13:42', '2019-02-26 10:13:42');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `menu_items`
--

DROP TABLE IF EXISTS `menu_items`;
CREATE TABLE IF NOT EXISTS `menu_items` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `menu_items_menu_id_foreign` (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Gegevens worden geëxporteerd voor tabel `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2019-02-26 09:41:20', '2019-02-26 09:41:20', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 5, '2019-02-26 09:41:20', '2019-02-26 09:41:20', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2019-02-26 09:41:20', '2019-02-26 09:41:20', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2019-02-26 09:41:20', '2019-02-26 09:41:20', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 9, '2019-02-26 09:41:20', '2019-02-26 09:41:20', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 10, '2019-02-26 09:41:20', '2019-02-26 09:41:20', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 11, '2019-02-26 09:41:20', '2019-02-26 09:41:20', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 12, '2019-02-26 09:41:20', '2019-02-26 09:41:20', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 13, '2019-02-26 09:41:20', '2019-02-26 09:41:20', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 14, '2019-02-26 09:41:20', '2019-02-26 09:41:20', 'voyager.settings.index', NULL),
(11, 1, 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 8, '2019-02-26 09:41:21', '2019-02-26 09:41:21', 'voyager.categories.index', NULL),
(12, 1, 'Posts', '', '_self', 'voyager-news', NULL, NULL, 6, '2019-02-26 09:41:22', '2019-02-26 09:41:22', 'voyager.posts.index', NULL),
(13, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 7, '2019-02-26 09:41:22', '2019-02-26 09:41:22', 'voyager.pages.index', NULL),
(14, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 13, '2019-02-26 09:41:22', '2019-02-26 09:41:22', 'voyager.hooks', NULL),
(15, 2, 'Contact', 'contact', '_self', NULL, '#000000', NULL, 4, '2019-02-26 10:16:05', '2019-02-28 16:24:22', NULL, ''),
(16, 2, 'Home', '/', '_self', NULL, '#000000', NULL, 1, '2019-02-26 11:26:59', '2019-02-28 14:24:29', NULL, ''),
(17, 2, 'Over Ons', '#', '_self', NULL, '#000000', NULL, 2, '2019-02-26 12:49:09', '2019-02-28 23:52:49', NULL, ''),
(18, 2, 'Voor Wie', 'voor-wie', '_self', NULL, '#000000', 17, 2, '2019-02-26 12:50:27', '2019-02-28 14:36:16', NULL, ''),
(19, 2, 'Ambulante Begeleiding', 'ambulante-begeleiding', '_self', NULL, '#000000', 24, 2, '2019-02-27 15:50:04', '2019-02-28 14:37:09', NULL, ''),
(20, 2, 'Woonbegeleiding', 'woonbegeleiding', '_self', NULL, '#000000', 24, 3, '2019-02-27 15:50:36', '2019-02-28 14:37:25', NULL, ''),
(21, 2, 'Thuiszorg en Advies', 'thuiszorg-en-advies', '_self', NULL, '#000000', 24, 4, '2019-02-27 15:51:14', '2019-02-28 14:37:44', NULL, ''),
(22, 2, 'Aanmelden', 'aanmelden', '_self', NULL, '#000000', 24, 5, '2019-02-27 15:51:46', '2019-02-28 14:37:58', NULL, ''),
(23, 2, 'Documenten', 'documenten', '_self', NULL, '#000000', 17, 3, '2019-02-27 15:52:28', '2019-02-28 14:36:31', NULL, ''),
(24, 2, 'Diensten', '#', '_self', NULL, '#000000', NULL, 3, '2019-02-28 14:04:40', '2019-02-28 14:38:11', NULL, ''),
(25, 2, 'Organisatie', 'organisatie', '_self', NULL, '#000000', 17, 1, '2019-02-28 14:05:24', '2019-02-28 14:36:03', NULL, '');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Gegevens worden geëxporteerd voor tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2016_01_01_000000_create_pages_table', 2),
(24, '2016_01_01_000000_create_posts_table', 2),
(25, '2016_02_15_204651_create_categories_table', 2),
(26, '2017_04_11_000000_alter_post_nullable_fields_table', 2);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `pages`
--

DROP TABLE IF EXISTS `pages`;
CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `author_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8_unicode_ci,
  `body` text COLLATE utf8_unicode_ci,
  `image` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8_unicode_ci,
  `meta_keywords` text COLLATE utf8_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pages_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Gegevens worden geëxporteerd voor tabel `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(2, 1, 'Organisatie', 'test', '<p><span style=\"box-sizing: border-box; font-weight: bold;\">Alpha Zorg &amp; Advies</span></p>\r\n<p>&nbsp;</p>\r\n<p><span style=\"box-sizing: border-box; font-weight: bold;\">Visie:</span></p>\r\n<p>Wij willen&nbsp;jongeren helpen bij het ontdekken van hun ware identiteit waardoor zij weer het leven in perspectief&nbsp;kunnen zien<br style=\"box-sizing: border-box;\" />en vanuit&nbsp;hun&nbsp;kracht te gaan werken.</p>\r\n<p>&nbsp;</p>\r\n<p><span style=\"box-sizing: border-box; font-weight: bold;\">Missie</span></p>\r\n<p>Het leven in perspectief zien.</p>\r\n<p>&nbsp;</p>\r\n<p><span style=\"box-sizing: border-box; font-weight: bold;\">Hiervoor hanteren wij&nbsp;5 pijlers:</span></p>\r\n<ul>\r\n<li>Aandacht:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Geef aandacht aan jezelf, jouw passie&nbsp;en de wereld om&nbsp;je heen, hierdoor vergroot jouw zelfbeeld.</li>\r\n<li>Liefde:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Leer&nbsp;lief te hebben, door jezelf te&nbsp;accepteren zoals&nbsp;je bent.</li>\r\n<li>Praktijk:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Zet in praktijk dat wat&nbsp;je leert, hierdoor&nbsp;ontwikkelt&nbsp;je een nieuwe houding.</li>\r\n<li>Hervormen:&nbsp;&nbsp;&nbsp; Door&nbsp;je nieuwe&nbsp;denkwijze in praktijk&nbsp;te zetten, ga&nbsp;je jezelf&nbsp;anders opstellen, waardoor jouw&nbsp;levensstijl ook&nbsp;kunt gaan&nbsp;veranderen.</li>\r\n<li>Aansturing:&nbsp;&nbsp;&nbsp;&nbsp; Eenmaal&nbsp;als je&nbsp;nieuw&nbsp;inzicht verkregen hebt, zul&nbsp;je zelfredzaamheid ontwikkelen en&nbsp;nieuwe richting aan&nbsp;je leven geven.</li>\r\n</ul>', 'pages\\February2019\\3prl45erPApPi0zFj4WU.jpg', 'organisatie', 'test', 'test', 'ACTIVE', '2019-02-28 14:18:13', '2019-02-28 23:16:53'),
(3, 1, 'Contact', 'test tetest', '<p>test&nbsp;</p>', NULL, 'contact', 'test', 'test', 'ACTIVE', '2019-02-28 16:26:47', '2019-02-28 16:26:47'),
(4, 1, 'Voor wie?', 'test', '<p><span style=\"box-sizing: border-box; font-weight: bold;\">Onze doelgroep</span></p>\r\n<p>Wij bieden begeleiding en zorg aan iedereen vanaf 17 jaar die zelfstandig wil wonen en leven&nbsp;maar vanwege een beperking&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br style=\"box-sizing: border-box;\" />ondersteuning kan gebruiken. Om tot een succesvol traject te komen is het belangrijk dat de jongeren en volwassenen&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br style=\"box-sizing: border-box;\" />gemotiveerd zijn en geholpen willen worden!&nbsp;&nbsp;</p>', 'pages\\March2019\\MXA4cG8wwyJ9hnr9SlLG.png', 'voor-wie', 'test', 'test', 'ACTIVE', '2019-02-28 23:12:32', '2019-03-01 01:03:52'),
(5, 1, 'Documenten', 'test', '<p>Algemene voorwaarden</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>Privacyreglement</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>Klachtenreglement</p>', NULL, 'documenten', 'test', 'test', 'ACTIVE', '2019-02-28 23:15:47', '2019-02-28 23:15:47'),
(6, 1, 'Ambulante Begeleiding', 'test', '<p>Met ambulante begeleiding bieden wij begeleiding aan kinderen en volwassenen met gedrags-, ASS, ADHD, ADD, ODD, Pdd-Nos en/of andere licht psychiatrische problematiek. Samen met de client stellen wij een begeleidingsplan op waarin wij de zorgvraag zullen vastleggen,&nbsp;als ook de daarop toegespitste begeleiding en ondersteuning. Aan de hand van&nbsp;de afgesproken aanpak zullen wij de begeleidingstraject starten.</p>', NULL, 'ambulante-begeleiding', 'test', 'test', 'ACTIVE', '2019-02-28 23:23:21', '2019-02-28 23:24:39'),
(7, 1, 'Woonbegeleiding', 'test', '<p>Wij bieden zorg en begeleiding aan mensen jongeren vanaf 17 jaar. Die geen 24 uur begeleiding meer nodig hebben bij het wonen.&nbsp;De jongere&nbsp;zelfstandig, maar heeft wel een&nbsp;hulpvraag waar hij of zij begeleiding bij nodig heeft. Binnen begeleid wonen hebben de mensen een eigen studio /appartement die&nbsp;zij in mogen richten naar eigen wens. Bij begeleid wonen krijg&nbsp;men een mentor, die de mensen&nbsp;helpt&nbsp;bij de hulpvraag.</p>', NULL, 'woonbegeleiding', 'test', 'test', 'ACTIVE', '2019-02-28 23:30:21', '2019-02-28 23:30:21'),
(8, 1, 'Thuiszorg en Advies', 'test', '<p>Alpha Zorg biedt Thuiszorg bij u thuis. Als organisatie willen wij het verschil&nbsp;maken door u kwaliteit en aandacht te bieden.<br style=\"box-sizing: border-box;\" />U&nbsp;kunt denken&nbsp;verpleegkundige hulp bij&nbsp;ziekte of verzorging na een ziekenhuisopname. Ook ondersteunen wij u wanneer u moeite krijgt bij het uitvoeren van de dagelijkse huishoudelijke taken.</p>\r\n<p>In de zorg&nbsp;hebben we te maken met verschillende culturen, als organisatie zijn wij gespecialiseerd in het omgaan met de&nbsp;Caribische cultuur.<br style=\"box-sizing: border-box;\" />Wij&nbsp;adviseren organisaties en instellingen die in hun dagelijkse fungeren geconfronteerd worden met identiteitsgebonden problematieken.</p>', NULL, 'thuiszorg-en-advies', 'test', 'test', 'ACTIVE', '2019-02-28 23:31:34', '2019-02-28 23:31:34'),
(9, 1, 'Aanmelden', 'Aanmelden kunt u zelf doen of door iemand aan ons worden doorverwezen. Na het eerste contact gaan we graag een kennismakingsgesprek met u aan, om na te gaan of onze werkwijze bij u past. Na het ontvangen van u informatie, kunnen wij na gaan of wij u passende zorg kunnen aanbieden. Zijn alle gegevens compleet, dan word je uitgenodigd voor een intake gesprek. Tijdens dit gesprek worden jouw hulpvraag, doelen en wensen besproken en kijken we hoe we jou het beste kunnen ondersteunen.', '<p>&nbsp;</p>\r\n<p><span style=\"box-sizing: border-box; font-weight: bold;\">Voor meer informatie en of vragen? Bel of mail ons dan voor het maken van een afspraak.</span></p>\r\n<p>Alpha Zorg &amp; Advies<br style=\"box-sizing: border-box;\" />Daalakkersweg 2-96<br style=\"box-sizing: border-box;\" />5641 JA Eindhoven</p>\r\n<p>T:+31(06) 48482449</p>\r\n<p>Of mail ons via&nbsp;<a style=\"box-sizing: border-box; background-color: transparent; color: #0fa2d5; text-decoration-line: none; transition: all 0.3s ease-in-out 0s;\" href=\"http://alpha-zorg.nl/contact\">http://alpha-zorg.nl/contact</a></p>', NULL, 'aanmelden', 'test', 'test', 'ACTIVE', '2019-02-28 23:32:28', '2019-02-28 23:34:12'),
(10, 1, 'Home', 'test', '<p>Alpha Zorg &amp; Advies biedt zorg en advies in de vorm van ambulante begeleiding en woonbegeleiding aan&nbsp;jongeren&nbsp;vanaf 17 jaar, die door&nbsp;gedrags- en/of ontwikkelingsstoornis&nbsp;ondersteuning nodig hebben in hun dagelijks leven. Wij bieden begeleiding in &eacute;&eacute;n van onze woningen of in eigen woonomgeving.<br style=\"box-sizing: border-box;\" />Hiernaast bieden wij ook ondersteuning aan ouders omtrent de zorg van hun kind,dit&nbsp;in het kader van de jeugdwet.</p>\r\n<p>Bij ons staat de&nbsp;jongere centraal, want iedereen&nbsp;is uniek en verdient daarom ook een unieke aanpak.<br style=\"box-sizing: border-box;\" />Dit doen we door een begeleidingstraject te bieden waarbij de&nbsp;componenten:<br style=\"box-sizing: border-box;\" />Aandacht, Liefde, Praktiseren, Hervormen en Aansturing&nbsp;een&nbsp;basis zullen vormen.Hierover vertellen wij meer bij het kopje:Organisatie.<br style=\"box-sizing: border-box;\" />Wij stemmen af op uw wensen en de mogelijkheden die wij te bieden hebben. Ieder mens is waardevol en verdient een oprechte en eerlijke kans om te groeien en zich verder te ontplooien.&nbsp;&nbsp;</p>\r\n<p>Als professional staan wij&nbsp;voor u klaar om u te adviseren, ondersteunen en begeleiden naar een leven&nbsp;met perspectief.</p>\r\n<p><span style=\"box-sizing: border-box; font-weight: bold;\">Samen staan wij sterk. Een helpende hand richting een betere morgen!</span></p>', NULL, '/', 'test', 'test', 'ACTIVE', '2019-03-01 01:10:01', '2019-03-01 01:10:50');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `permissions`
--

DROP TABLE IF EXISTS `permissions`;
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permissions_key_index` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Gegevens worden geëxporteerd voor tabel `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2019-02-26 09:41:20', '2019-02-26 09:41:20'),
(2, 'browse_bread', NULL, '2019-02-26 09:41:20', '2019-02-26 09:41:20'),
(3, 'browse_database', NULL, '2019-02-26 09:41:20', '2019-02-26 09:41:20'),
(4, 'browse_media', NULL, '2019-02-26 09:41:20', '2019-02-26 09:41:20'),
(5, 'browse_compass', NULL, '2019-02-26 09:41:20', '2019-02-26 09:41:20'),
(6, 'browse_menus', 'menus', '2019-02-26 09:41:20', '2019-02-26 09:41:20'),
(7, 'read_menus', 'menus', '2019-02-26 09:41:20', '2019-02-26 09:41:20'),
(8, 'edit_menus', 'menus', '2019-02-26 09:41:20', '2019-02-26 09:41:20'),
(9, 'add_menus', 'menus', '2019-02-26 09:41:20', '2019-02-26 09:41:20'),
(10, 'delete_menus', 'menus', '2019-02-26 09:41:20', '2019-02-26 09:41:20'),
(11, 'browse_roles', 'roles', '2019-02-26 09:41:20', '2019-02-26 09:41:20'),
(12, 'read_roles', 'roles', '2019-02-26 09:41:20', '2019-02-26 09:41:20'),
(13, 'edit_roles', 'roles', '2019-02-26 09:41:20', '2019-02-26 09:41:20'),
(14, 'add_roles', 'roles', '2019-02-26 09:41:20', '2019-02-26 09:41:20'),
(15, 'delete_roles', 'roles', '2019-02-26 09:41:20', '2019-02-26 09:41:20'),
(16, 'browse_users', 'users', '2019-02-26 09:41:20', '2019-02-26 09:41:20'),
(17, 'read_users', 'users', '2019-02-26 09:41:20', '2019-02-26 09:41:20'),
(18, 'edit_users', 'users', '2019-02-26 09:41:20', '2019-02-26 09:41:20'),
(19, 'add_users', 'users', '2019-02-26 09:41:20', '2019-02-26 09:41:20'),
(20, 'delete_users', 'users', '2019-02-26 09:41:20', '2019-02-26 09:41:20'),
(21, 'browse_settings', 'settings', '2019-02-26 09:41:20', '2019-02-26 09:41:20'),
(22, 'read_settings', 'settings', '2019-02-26 09:41:20', '2019-02-26 09:41:20'),
(23, 'edit_settings', 'settings', '2019-02-26 09:41:20', '2019-02-26 09:41:20'),
(24, 'add_settings', 'settings', '2019-02-26 09:41:20', '2019-02-26 09:41:20'),
(25, 'delete_settings', 'settings', '2019-02-26 09:41:20', '2019-02-26 09:41:20'),
(26, 'browse_categories', 'categories', '2019-02-26 09:41:21', '2019-02-26 09:41:21'),
(27, 'read_categories', 'categories', '2019-02-26 09:41:21', '2019-02-26 09:41:21'),
(28, 'edit_categories', 'categories', '2019-02-26 09:41:21', '2019-02-26 09:41:21'),
(29, 'add_categories', 'categories', '2019-02-26 09:41:21', '2019-02-26 09:41:21'),
(30, 'delete_categories', 'categories', '2019-02-26 09:41:21', '2019-02-26 09:41:21'),
(31, 'browse_posts', 'posts', '2019-02-26 09:41:22', '2019-02-26 09:41:22'),
(32, 'read_posts', 'posts', '2019-02-26 09:41:22', '2019-02-26 09:41:22'),
(33, 'edit_posts', 'posts', '2019-02-26 09:41:22', '2019-02-26 09:41:22'),
(34, 'add_posts', 'posts', '2019-02-26 09:41:22', '2019-02-26 09:41:22'),
(35, 'delete_posts', 'posts', '2019-02-26 09:41:22', '2019-02-26 09:41:22'),
(36, 'browse_pages', 'pages', '2019-02-26 09:41:22', '2019-02-26 09:41:22'),
(37, 'read_pages', 'pages', '2019-02-26 09:41:22', '2019-02-26 09:41:22'),
(38, 'edit_pages', 'pages', '2019-02-26 09:41:22', '2019-02-26 09:41:22'),
(39, 'add_pages', 'pages', '2019-02-26 09:41:22', '2019-02-26 09:41:22'),
(40, 'delete_pages', 'pages', '2019-02-26 09:41:22', '2019-02-26 09:41:22'),
(41, 'browse_hooks', NULL, '2019-02-26 09:41:22', '2019-02-26 09:41:22');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `permission_role`
--

DROP TABLE IF EXISTS `permission_role`;
CREATE TABLE IF NOT EXISTS `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_permission_id_index` (`permission_id`),
  KEY `permission_role_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Gegevens worden geëxporteerd voor tabel `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `seo_title` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8_unicode_ci,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8_unicode_ci,
  `meta_keywords` text COLLATE utf8_unicode_ci,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `posts_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Gegevens worden geëxporteerd voor tabel `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-02-26 09:41:22', '2019-02-26 09:41:22'),
(2, 0, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-02-26 09:41:22', '2019-02-26 09:41:22'),
(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-02-26 09:41:22', '2019-02-26 09:41:22'),
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-02-26 09:41:22', '2019-02-26 09:41:22');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Gegevens worden geëxporteerd voor tabel `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2019-02-26 09:41:20', '2019-02-26 09:41:20'),
(2, 'user', 'Normal User', '2019-02-26 09:41:20', '2019-02-26 09:41:20');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci,
  `details` text COLLATE utf8_unicode_ci,
  `type` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Gegevens worden geëxporteerd voor tabel `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Alpha Zorg', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', NULL, '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', NULL, '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', 'settings\\February2019\\dfjXM6MyRwK4IDIjHHZW.gif', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin'),
(12, 'site.banner', 'Site Banner', 'settings\\March2019\\fAcK4ev3xz9FEnDhJ0td.jpg', NULL, 'image', 6, 'Site'),
(13, 'site.privacy', 'Privacy Beleid', '', NULL, 'file', 7, 'Site'),
(14, 'site.terms', 'Algemene Voorwaarden', '', NULL, 'file', 8, 'Site'),
(16, 'site.adres', 'Site Adres', NULL, NULL, 'text', 9, 'Site'),
(17, 'site.email', 'Site Email', NULL, NULL, 'text', 10, 'Site'),
(18, 'site.telefoon', 'Site Telefoon', NULL, NULL, 'text', 11, 'Site'),
(19, 'site.facebook', 'Site Facebook', NULL, NULL, 'text', 12, 'Site'),
(20, 'site.twitter', 'Site Twitter', NULL, NULL, 'text', 13, 'Site'),
(21, 'site.default.image', 'Site Standart Foto', 'settings\\March2019\\r6dJxUGSxGIm3YIA1lkD.jpg', NULL, 'image', 14, 'Site');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `translations`
--

DROP TABLE IF EXISTS `translations`;
CREATE TABLE IF NOT EXISTS `translations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `table_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Gegevens worden geëxporteerd voor tabel `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2019-02-26 09:41:22', '2019-02-26 09:41:22'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2019-02-26 09:41:22', '2019-02-26 09:41:22'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2019-02-26 09:41:22', '2019-02-26 09:41:22'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2019-02-26 09:41:22', '2019-02-26 09:41:22'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2019-02-26 09:41:22', '2019-02-26 09:41:22'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2019-02-26 09:41:22', '2019-02-26 09:41:22'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2019-02-26 09:41:22', '2019-02-26 09:41:22'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2019-02-26 09:41:22', '2019-02-26 09:41:22'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2019-02-26 09:41:22', '2019-02-26 09:41:22'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2019-02-26 09:41:22', '2019-02-26 09:41:22'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2019-02-26 09:41:22', '2019-02-26 09:41:22'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2019-02-26 09:41:22', '2019-02-26 09:41:22'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2019-02-26 09:41:22', '2019-02-26 09:41:22'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2019-02-26 09:41:22', '2019-02-26 09:41:22'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2019-02-26 09:41:22', '2019-02-26 09:41:22'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2019-02-26 09:41:22', '2019-02-26 09:41:22'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2019-02-26 09:41:22', '2019-02-26 09:41:22'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2019-02-26 09:41:22', '2019-02-26 09:41:22'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2019-02-26 09:41:22', '2019-02-26 09:41:22'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2019-02-26 09:41:22', '2019-02-26 09:41:22'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2019-02-26 09:41:22', '2019-02-26 09:41:22'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2019-02-26 09:41:22', '2019-02-26 09:41:22'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2019-02-26 09:41:22', '2019-02-26 09:41:22'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2019-02-26 09:41:22', '2019-02-26 09:41:22'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2019-02-26 09:41:22', '2019-02-26 09:41:22'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2019-02-26 09:41:22', '2019-02-26 09:41:22'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2019-02-26 09:41:22', '2019-02-26 09:41:22'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2019-02-26 09:41:22', '2019-02-26 09:41:22'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2019-02-26 09:41:22', '2019-02-26 09:41:22'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2019-02-26 09:41:22', '2019-02-26 09:41:22');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8_unicode_ci DEFAULT 'users/default.png',
  `password` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_role_id_foreign` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Gegevens worden geëxporteerd voor tabel `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users\\February2019\\8gXmGaTYwMHa3EHozcuU.jpg', '$2y$10$vTgeOnWFUeDQ1/AH22Oahe.38E0V37HJF9/7l3c1yF2A778o4Vr6m', 'AOqAsOIQvPYGsQUM3OkxcXbSuH4iLTKlNPQOgxbbZ9y0Cxo9GrQFKb86z5wV', '{\"locale\":\"nl\"}', '2019-02-26 09:41:22', '2019-02-27 15:56:14');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
CREATE TABLE IF NOT EXISTS `user_roles` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `user_roles_user_id_index` (`user_id`),
  KEY `user_roles_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Beperkingen voor geëxporteerde tabellen
--

--
-- Beperkingen voor tabel `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Beperkingen voor tabel `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Beperkingen voor tabel `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Beperkingen voor tabel `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
