-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: May 30, 2018 at 10:00 AM
-- Server version: 5.6.38
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ehome_mysql`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add permission', 2, 'add_permission'),
(5, 'Can change permission', 2, 'change_permission'),
(6, 'Can delete permission', 2, 'delete_permission'),
(7, 'Can add group', 3, 'add_group'),
(8, 'Can change group', 3, 'change_group'),
(9, 'Can delete group', 3, 'delete_group'),
(10, 'Can add user', 4, 'add_user'),
(11, 'Can change user', 4, 'change_user'),
(12, 'Can delete user', 4, 'delete_user'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(19, 'Can add member', 7, 'add_member'),
(20, 'Can change member', 7, 'change_member'),
(21, 'Can delete member', 7, 'delete_member');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$100000$cFOMzfTkrrop$tvCp6btL+t8MdzYMPzMOi/W6JlAeLnUR4gBMLYkNrUU=', '2018-05-30 09:40:18.013046', 1, 'susmote', '', '', 'admin@susmote.com', 1, 1, '2018-05-17 05:20:05.908034'),
(2, 'pbkdf2_sha256$100000$UXtusZWbkn2J$RGNDx7oeUtgeXZBvC3n3EvvSePyMqsOOPajq5/QwY9Y=', NULL, 1, 'admin', '', '', 'susmote@vip.qq.com', 1, 1, '2018-05-17 05:31:50.101185');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2018-05-17 08:24:38.225244', '4', '4', 1, '[{\"added\": {}}]', 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'eh', 'member'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2018-05-17 05:15:26.526498'),
(2, 'auth', '0001_initial', '2018-05-17 05:15:30.856135'),
(3, 'admin', '0001_initial', '2018-05-17 05:15:31.266607'),
(4, 'admin', '0002_logentry_remove_auto_add', '2018-05-17 05:15:31.279876'),
(5, 'contenttypes', '0002_remove_content_type_name', '2018-05-17 05:15:31.558737'),
(6, 'auth', '0002_alter_permission_name_max_length', '2018-05-17 05:15:31.683817'),
(7, 'auth', '0003_alter_user_email_max_length', '2018-05-17 05:15:31.809101'),
(8, 'auth', '0004_alter_user_username_opts', '2018-05-17 05:15:31.822415'),
(9, 'auth', '0005_alter_user_last_login_null', '2018-05-17 05:15:31.942929'),
(10, 'auth', '0006_require_contenttypes_0002', '2018-05-17 05:15:31.946133'),
(11, 'auth', '0007_alter_validators_add_error_messages', '2018-05-17 05:15:31.971268'),
(12, 'auth', '0008_alter_user_username_max_length', '2018-05-17 05:15:32.082024'),
(13, 'auth', '0009_alter_user_last_name_max_length', '2018-05-17 05:15:32.226198'),
(14, 'eh', '0001_initial', '2018-05-17 05:28:26.714751'),
(15, 'sessions', '0001_initial', '2018-05-17 05:30:47.305714'),
(16, 'eh', '0002_auto_20180517_1349', '2018-05-17 05:49:36.805435');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('1v0dpkr5pal4xc8qfb2smgfh5hbd5zct', 'MWFhYzE4MjY4YmRkNDk0YjgwY2I4YWFhMGQzYjNlMjc2ZTlmYWI5Yzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhM2ZlNmU3ZDI0Y2VkNTU1MDNjYjEyNTVhZWQ0ZTM3NzY1NmFmNjgzIn0=', '2018-05-31 05:31:57.207971'),
('kxlkpse5wrtl5xpb0ylgn4aiki0avzoe', 'MWFhYzE4MjY4YmRkNDk0YjgwY2I4YWFhMGQzYjNlMjc2ZTlmYWI5Yzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhM2ZlNmU3ZDI0Y2VkNTU1MDNjYjEyNTVhZWQ0ZTM3NzY1NmFmNjgzIn0=', '2018-06-13 09:40:18.125143');

-- --------------------------------------------------------

--
-- Table structure for table `eh_blog_plugin_Blogs_prise`
--

CREATE TABLE `eh_blog_plugin_Blogs_prise` (
  `ID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL DEFAULT '0',
  `PostID` int(11) NOT NULL DEFAULT '0',
  `IP` varchar(15) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `eh_blog_plugin_Blogs_prise`
--

INSERT INTO `eh_blog_plugin_Blogs_prise` (`ID`, `UserID`, `PostID`, `IP`) VALUES
(1, 1, 1, '221.234.230.21'),
(2, 0, 0, '221.234.230.4'),
(3, 0, 13, '221.234.230.27');

-- --------------------------------------------------------

--
-- Table structure for table `eh_category`
--

CREATE TABLE `eh_category` (
  `cate_ID` int(11) NOT NULL,
  `cate_Name` varchar(255) NOT NULL DEFAULT '',
  `cate_Order` int(11) NOT NULL DEFAULT '0',
  `cate_Count` int(11) NOT NULL DEFAULT '0',
  `cate_Alias` varchar(255) NOT NULL DEFAULT '',
  `cate_Intro` text NOT NULL,
  `cate_RootID` int(11) NOT NULL DEFAULT '0',
  `cate_ParentID` int(11) NOT NULL DEFAULT '0',
  `cate_Template` varchar(50) NOT NULL DEFAULT '',
  `cate_LogTemplate` varchar(50) NOT NULL DEFAULT '',
  `cate_Meta` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `eh_category`
--

INSERT INTO `eh_category` (`cate_ID`, `cate_Name`, `cate_Order`, `cate_Count`, `cate_Alias`, `cate_Intro`, `cate_RootID`, `cate_ParentID`, `cate_Template`, `cate_LogTemplate`, `cate_Meta`) VALUES
(1, '未分类', 0, 4, 'uncategorized', '', 0, 0, '', '', ''),
(2, '校级新闻', 0, 0, 'campusenws', '', 0, 0, '', '', ''),
(3, '互联网新闻', 0, 2, 'internet', '', 0, 0, '', '', 'a:1:{s:13:\"Blogs_fltitle\";s:15:\"互联网新闻\";}');

-- --------------------------------------------------------

--
-- Table structure for table `eh_comment`
--

CREATE TABLE `eh_comment` (
  `comm_ID` int(11) NOT NULL,
  `comm_LogID` int(11) NOT NULL DEFAULT '0',
  `comm_IsChecking` tinyint(1) NOT NULL DEFAULT '0',
  `comm_RootID` int(11) NOT NULL DEFAULT '0',
  `comm_ParentID` int(11) NOT NULL DEFAULT '0',
  `comm_AuthorID` int(11) NOT NULL DEFAULT '0',
  `comm_Name` varchar(50) NOT NULL DEFAULT '',
  `comm_Email` varchar(50) NOT NULL DEFAULT '',
  `comm_HomePage` varchar(255) NOT NULL DEFAULT '',
  `comm_Content` text NOT NULL,
  `comm_PostTime` int(11) NOT NULL DEFAULT '0',
  `comm_IP` varchar(15) NOT NULL DEFAULT '',
  `comm_Agent` text NOT NULL,
  `comm_Meta` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `eh_comment`
--

INSERT INTO `eh_comment` (`comm_ID`, `comm_LogID`, `comm_IsChecking`, `comm_RootID`, `comm_ParentID`, `comm_AuthorID`, `comm_Name`, `comm_Email`, `comm_HomePage`, `comm_Content`, `comm_PostTime`, `comm_IP`, `comm_Agent`, `comm_Meta`) VALUES
(1, 13, 0, 0, 0, 0, 'susmote', '', '', '123456', 1526291910, '221.234.230.4', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_1 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Version/9.0 Mobile/13B143 Safari/601.1 wechatdevtools/1.02.1804251 MicroMessenger/6.5.7 Language/zh_CN webview/', 'a:2:{s:15:\"os_wxapp_status\";i:1;s:15:\"os_wxapp_avatar\";s:125:\"https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLxibscK2qolCy8BMDozTOehboFrWztTEoH1ICbhUF7H4s4MWicwZKM3yO8Ienm9aPkgmLD38AsCIlA/132\";}'),
(2, 13, 0, 0, 0, 0, 'susmote', '', '', 'sadfsa', 1526292749, '221.234.230.4', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_1 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Version/9.0 Mobile/13B143 Safari/601.1 wechatdevtools/1.02.1804251 MicroMessenger/6.5.7 Language/zh_CN webview/', 'a:2:{s:15:\"os_wxapp_status\";i:1;s:15:\"os_wxapp_avatar\";s:125:\"https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLxibscK2qolCy8BMDozTOehboFrWztTEoH1ICbhUF7H4s4MWicwZKM3yO8Ienm9aPkgmLD38AsCIlA/132\";}');

-- --------------------------------------------------------

--
-- Table structure for table `eh_config`
--

CREATE TABLE `eh_config` (
  `conf_ID` int(11) NOT NULL,
  `conf_Name` varchar(50) NOT NULL DEFAULT '',
  `conf_Value` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `eh_config`
--

INSERT INTO `eh_config` (`conf_ID`, `conf_Name`, `conf_Value`) VALUES
(1, 'system', 'a:120:{s:19:\"ZC_CLOSE_WHOLE_SITE\";b:0;s:13:\"ZC_CLOSE_SITE\";b:0;s:12:\"ZC_BLOG_HOST\";s:52:\"h|t|t|p|s|:|/|/|e|h|o|m|e|.|s|u|s|m|o|t|e|.|c|o|m|/|\";s:12:\"ZC_BLOG_NAME\";s:10:\"宿舍E家\";s:15:\"ZC_BLOG_SUBNAME\";s:30:\"武软计算机学院宿管会\";s:13:\"ZC_BLOG_THEME\";s:5:\"Blogs\";s:11:\"ZC_BLOG_CSS\";s:5:\"style\";s:17:\"ZC_BLOG_COPYRIGHT\";s:43:\"Copyright 2018 susmote.com Rights Reserved.\";s:16:\"ZC_BLOG_LANGUAGE\";s:5:\"zh-CN\";s:20:\"ZC_BLOG_LANGUAGEPACK\";s:5:\"zh-cn\";s:16:\"ZC_DATABASE_TYPE\";s:6:\"mysqli\";s:14:\"ZC_SQLITE_NAME\";s:0:\"\";s:13:\"ZC_SQLITE_PRE\";s:4:\"zbp_\";s:15:\"ZC_MYSQL_SERVER\";s:9:\"localhost\";s:17:\"ZC_MYSQL_USERNAME\";s:11:\"ehome_mysql\";s:17:\"ZC_MYSQL_PASSWORD\";s:16:\"j4zF8RdXnNYYpReQ\";s:13:\"ZC_MYSQL_NAME\";s:11:\"ehome_mysql\";s:16:\"ZC_MYSQL_CHARSET\";s:4:\"utf8\";s:12:\"ZC_MYSQL_PRE\";s:3:\"eh_\";s:15:\"ZC_MYSQL_ENGINE\";s:6:\"MyISAM\";s:13:\"ZC_MYSQL_PORT\";s:4:\"3306\";s:19:\"ZC_MYSQL_PERSISTENT\";b:0;s:15:\"ZC_PGSQL_SERVER\";s:9:\"localhost\";s:17:\"ZC_PGSQL_USERNAME\";s:8:\"postgres\";s:17:\"ZC_PGSQL_PASSWORD\";s:0:\"\";s:13:\"ZC_PGSQL_NAME\";s:0:\"\";s:16:\"ZC_PGSQL_CHARSET\";s:4:\"utf8\";s:12:\"ZC_PGSQL_PRE\";s:4:\"zbp_\";s:13:\"ZC_PGSQL_PORT\";s:4:\"5432\";s:19:\"ZC_PGSQL_PERSISTENT\";b:0;s:20:\"ZC_USING_PLUGIN_LIST\";s:107:\"AppCentre|Totoro|STACentre|Uplist|RegPage|2themes|os_wxapp_one|Neditor|dm_tools|IMGS|HK_Articles_Manger_Cat\";s:11:\"ZC_YUN_SITE\";s:0:\"\";s:13:\"ZC_BLOG_CLSID\";s:22:\"5af770949b6e3108413380\";s:17:\"ZC_TIME_ZONE_NAME\";s:13:\"Asia/Shanghai\";s:18:\"ZC_UPDATE_INFO_URL\";s:32:\"https://update.zblogcn.com/info/\";s:26:\"ZC_PERMANENT_DOMAIN_ENABLE\";b:1;s:28:\"ZC_PERMANENT_DOMAIN_REDIRECT\";b:1;s:30:\"ZC_PERMANENT_DOMAIN_WITH_ADMIN\";b:0;s:13:\"ZC_DEBUG_MODE\";s:0:\"\";s:20:\"ZC_DEBUG_MODE_STRICT\";b:0;s:21:\"ZC_DEBUG_MODE_WARNING\";b:1;s:18:\"ZC_DEBUG_LOG_ERROR\";b:0;s:15:\"ZC_BLOG_PRODUCT\";s:9:\"Z-BlogPHP\";s:15:\"ZC_BLOG_VERSION\";s:23:\"1.5.2 Zero Build 151935\";s:14:\"ZC_BLOG_COMMIT\";s:0:\"\";s:20:\"ZC_BLOG_PRODUCT_FULL\";s:20:\"Z-BlogPHP 1.5.2 Zero\";s:20:\"ZC_BLOG_PRODUCT_HTML\";s:93:\"<a href=\"http://www.zblogcn.com/\" title=\"RainbowSoft Z-BlogPHP\" target=\"_blank\">Z-BlogPHP</a>\";s:24:\"ZC_BLOG_PRODUCT_FULLHTML\";s:104:\"<a href=\"http://www.zblogcn.com/\" title=\"RainbowSoft Z-BlogPHP\" target=\"_blank\">Z-BlogPHP 1.5.2 Zero</a>\";s:18:\"ZC_COMMENT_TURNOFF\";b:0;s:24:\"ZC_COMMENT_VERIFY_ENABLE\";b:0;s:24:\"ZC_COMMENT_REVERSE_ORDER\";b:0;s:16:\"ZC_COMMENT_AUDIT\";b:0;s:20:\"ZC_VERIFYCODE_STRING\";s:30:\"ABCDEFGHKMNPRSTUVWXYZ123456789\";s:19:\"ZC_VERIFYCODE_WIDTH\";i:90;s:20:\"ZC_VERIFYCODE_HEIGHT\";i:30;s:18:\"ZC_VERIFYCODE_FONT\";s:26:\"zb_system/defend/arial.ttf\";s:16:\"ZC_DISPLAY_COUNT\";i:10;s:16:\"ZC_PAGEBAR_COUNT\";i:10;s:25:\"ZC_COMMENTS_DISPLAY_COUNT\";i:100;s:23:\"ZC_DISPLAY_SUBCATEGORYS\";b:1;s:13:\"ZC_RSS2_COUNT\";i:10;s:19:\"ZC_RSS_EXPORT_WHOLE\";b:1;s:15:\"ZC_MANAGE_COUNT\";i:50;s:21:\"ZC_EMOTICONS_FILENAME\";s:4:\"face\";s:21:\"ZC_EMOTICONS_FILETYPE\";s:11:\"png|gif|jpg\";s:21:\"ZC_EMOTICONS_FILESIZE\";s:2:\"16\";s:18:\"ZC_UPLOAD_FILETYPE\";s:198:\"jpg|gif|png|jpeg|bmp|psd|wmf|ico|rpm|deb|tar|gz|sit|7z|bz2|zip|rar|xml|xsl|svg|svgz|rtf|doc|docx|ppt|pptx|xls|xlsx|wps|chm|txt|pdf|mp3|mp4|avi|mpg|rm|ra|rmvb|mov|wmv|wma|swf|fla|torrent|apk|zba|gzba\";s:18:\"ZC_UPLOAD_FILESIZE\";i:5;s:15:\"ZC_USERNAME_MIN\";i:3;s:15:\"ZC_USERNAME_MAX\";i:50;s:15:\"ZC_PASSWORD_MIN\";i:8;s:15:\"ZC_PASSWORD_MAX\";i:20;s:12:\"ZC_EMAIL_MAX\";i:50;s:15:\"ZC_HOMEPAGE_MAX\";i:100;s:14:\"ZC_CONTENT_MAX\";i:1000;s:20:\"ZC_ARTICLE_TITLE_MAX\";i:100;s:20:\"ZC_CATEGORY_NAME_MAX\";i:50;s:16:\"ZC_TAGS_NAME_MAX\";i:50;s:18:\"ZC_MODULE_NAME_MAX\";i:50;s:22:\"ZC_ARTICLE_EXCERPT_MAX\";i:250;s:22:\"ZC_COMMENT_EXCERPT_MAX\";i:20;s:14:\"ZC_STATIC_MODE\";s:6:\"ACTIVE\";s:16:\"ZC_ARTICLE_REGEX\";s:18:\"{%host%}?id={%id%}\";s:13:\"ZC_PAGE_REGEX\";s:18:\"{%host%}?id={%id%}\";s:17:\"ZC_CATEGORY_REGEX\";s:34:\"{%host%}?cate={%id%}&page={%page%}\";s:15:\"ZC_AUTHOR_REGEX\";s:34:\"{%host%}?auth={%id%}&page={%page%}\";s:13:\"ZC_TAGS_REGEX\";s:34:\"{%host%}?tags={%id%}&page={%page%}\";s:13:\"ZC_DATE_REGEX\";s:36:\"{%host%}?date={%date%}&page={%page%}\";s:14:\"ZC_INDEX_REGEX\";s:22:\"{%host%}?page={%page%}\";s:18:\"ZC_ALIAS_BACK_ATTR\";s:4:\"Name\";s:15:\"ZC_SEARCH_COUNT\";i:20;s:15:\"ZC_SEARCH_REGEX\";s:40:\"{%host%}search.php?q={%q%}&page={%page%}\";s:25:\"ZC_INDEX_DEFAULT_TEMPLATE\";s:5:\"index\";s:24:\"ZC_POST_DEFAULT_TEMPLATE\";s:6:\"single\";s:16:\"ZC_SIDEBAR_ORDER\";s:74:\"tags|controlpanel|catalog|searchpanel|comments|archives|favorite|link|misc\";s:17:\"ZC_SIDEBAR2_ORDER\";s:0:\"\";s:17:\"ZC_SIDEBAR3_ORDER\";s:0:\"\";s:17:\"ZC_SIDEBAR4_ORDER\";s:0:\"\";s:17:\"ZC_SIDEBAR5_ORDER\";s:0:\"\";s:27:\"ZC_SYNTAXHIGHLIGHTER_ENABLE\";b:1;s:20:\"ZC_CODEMIRROR_ENABLE\";b:1;s:14:\"ZC_GZIP_ENABLE\";b:0;s:21:\"ZC_ADMIN_HTML5_ENABLE\";b:1;s:20:\"ZC_LOADMEMBERS_LEVEL\";i:0;s:15:\"ZC_LAST_VERSION\";s:6:\"151935\";s:20:\"ZC_HTTP_LASTMODIFIED\";b:0;s:23:\"ZC_MODULE_CATALOG_STYLE\";i:0;s:19:\"ZC_VIEWNUMS_TURNOFF\";b:0;s:20:\"ZC_LISTONTOP_TURNOFF\";b:0;s:20:\"ZC_RELATEDLIST_COUNT\";i:10;s:18:\"ZC_RUNINFO_DISPLAY\";b:1;s:30:\"ZC_POST_ALIAS_USE_ID_NOT_TITLE\";b:0;s:21:\"ZC_COMPATIBLE_ASP_URL\";b:1;s:13:\"ZC_LARGE_DATA\";b:0;s:16:\"ZC_JS_304_ENABLE\";b:0;s:20:\"ZC_VERSION_IN_HEADER\";b:1;s:22:\"ZC_ADDITIONAL_SECURITY\";b:1;s:16:\"ZC_XMLRPC_ENABLE\";b:1;s:22:\"ZC_XMLRPC_USE_WEBTOKEN\";b:0;s:14:\"ZC_NOW_VERSION\";s:6:\"151935\";}'),
(2, 'cache', 'a:16:{s:13:\"templates_md5\";s:32:\"cf3653687288408b44ca9c388c741ca6\";s:19:\"normal_article_nums\";s:1:\"2\";s:16:\"top_post_array_0\";s:6:\"a:0:{}\";s:16:\"all_comment_nums\";i:2;s:18:\"check_comment_nums\";i:0;s:19:\"normal_comment_nums\";i:2;s:16:\"reload_statistic\";s:907:\"<tr><td class=\'td20\'>当前用户</td><td class=\'td30\'><a href=\'../cmd.php?act=misc&type=vrs\' target=\'_blank\'>{$zbp->user->Name}</a></td><td class=\'td20\'>当前版本</td><td class=\'td30\'>{$zbp->version}</td></tr><tr><td class=\'td20\'>文章总数</td><td>2</td><td>分类总数</td><td>3</td></tr><tr><td class=\'td20\'>页面总数</td><td>1</td><td>标签总数</td><td>11</td></tr><tr><td class=\'td20\'>评论总数</td><td>2</td><td>浏览总数</td><td>119</td></tr><tr><td class=\'td20\'>当前主题 / 当前样式</td><td>{$zbp->theme}/{$zbp->style}</td><td>用户总数</td><td>2</td></tr><tr><td class=\'td20\'>XML-RPC协议地址</td><td>{#ZC_BLOG_HOST#}zb_system/xml-rpc/index.php</td><td>系统环境</td><td><a href=\'../cmd.php?act=misc&type=phpinfo\' target=\'_blank\'>{$system_environment}</a></td></tr><script type=\"text/javascript\">$(\'#statistic\').attr(\'title\',\'2018-05-15T22:18:58+08:00\');</script>\";s:21:\"reload_statistic_time\";i:1526482305;s:18:\"system_environment\";s:48:\"Linux; nginx1.12.2; PHP 5.4.45 x64; mysqli; curl\";s:16:\"all_article_nums\";s:1:\"2\";s:13:\"all_page_nums\";s:1:\"1\";s:17:\"all_category_nums\";s:1:\"3\";s:13:\"all_view_nums\";s:3:\"119\";s:12:\"all_tag_nums\";s:2:\"11\";s:17:\"reload_updateinfo\";s:650:\"<tr><td><p><a href=\"https://blog.zblogcn.com/2018/04/16/102/\" target=\"_blank\"><b>Z-BlogPHP 1.5.2 Zero发布 (2018-4-16)</b></a></p>\n<p><a href=\"https://blog.zblogcn.com/2018/02/12/99/\" target=\"_blank\">大吉大利，天天吃鸡——Z-Blog祝您2018新春快乐，应用中心红包活动开始了！ (2018-2-12)</a></p>\n<p><a href=\"https://bbs.zblogcn.com/thread-83785-1-1.html\" target=\"_blank\">2014年ASP版全新发布！Z-Blog 2.2 Prism Build 140101 发布了。(2014-01-02)</a></p>\n<p><a href=\"https://bbs.zblogcn.com/thread-77001-1-1.html\" target=\"_blank\">Z-Blog应用中心正式上线，欢迎开发者进驻。(2013-01-01)</a></p></td></tr>\";s:22:\"reload_updateinfo_time\";i:1526341499;}'),
(3, 'AppCentre', 'a:6:{s:12:\"enabledcheck\";i:1;s:9:\"checkbeta\";i:0;s:13:\"enabledevelop\";i:0;s:13:\"enablegzipapp\";i:0;s:13:\"lastchecktime\";i:1526459545;s:7:\"apptype\";s:4:\"free\";}'),
(4, 'WhitePage', 'a:5:{s:15:\"custom_pagetype\";s:1:\"5\";s:16:\"custom_pagewidth\";s:4:\"1200\";s:16:\"custom_headtitle\";s:6:\"center\";s:14:\"custom_bgcolor\";s:6:\"6699ff\";s:11:\"text_indent\";s:1:\"0\";}'),
(5, 'Blogs', 'a:32:{s:7:\"Version\";s:3:\"1.0\";s:11:\"cebianlanbj\";s:1:\"1\";s:11:\"cblbiaoqian\";s:1:\"3\";s:15:\"wenzhanglbytpbj\";s:1:\"1\";s:10:\"fanyeanniu\";s:1:\"3\";s:9:\"lianjiefu\";s:1:\"-\";s:8:\"Keywords\";s:116:\"武汉软件工程学院,宿舍E家,计算机学院,计算机学院宿舍E家,武软计算机学院,武软宿舍E家\";s:11:\"Description\";s:21:\"请填写站点描述\";s:8:\"xgwz_num\";s:1:\"8\";s:10:\"gonggaolan\";s:306:\"<li class=\"scrolltext-title\"><a href=\"https://ehome.susmote.com\" rel=\"bookmark\" target=\"_blank\">恭喜宿舍E家官方网站正式上线</a></li><li class=\"scrolltext-title\"><a href=\"https://www.susmote.com\" rel=\"bookmark\" target=\"_blank\">TexTec Inc. 旗下技术团队TexTecGo正式开源EHomeApp</a></li>\";s:11:\"youshangjue\";s:120:\"<li><a href=\"{#ZC_BLOG_HOST#}?id=2/\">在线留言</a></li><li><a href=\"https://www.susmote.com\">特克斯博客</a></li>\";s:11:\"zuoshangjue\";s:124:\"您好，欢迎访问光临宿舍E家  | <a href=\"{#ZC_BLOG_HOST#}zb_system/cmd.php?act=login\" target=\"_blank\">登录</a>\";s:14:\"chongfudianzan\";s:54:\"你已经点过一次了，可以了，谢谢！！！\";s:12:\"banquanxinxi\";s:206:\"© 2018 <a href=\"https://www.susmote.com/\" target=\"_blank\" rel=\"nofollow\">susmote.com</a> 版权所有   |    <a href=\"http://www.miitbeian.gov.cn/\" target=\"_blank\" rel=\"nofollow\">湘ICP备18002006号</a>\";s:12:\"yejiaoanniu1\";s:70:\"<a href=\"http://user.qzone.qq.com/\" target=\"_blank\">官方QQ空间</a>\";s:12:\"yejiaoanniu2\";s:71:\"<a href=\"http://weibo.com/weibo\" target=\"_blank\">官方新浪微博</a>\";s:15:\"yejiaoxiangguan\";s:968:\"<li><span class=\"post_spliter\">•</span><a href=\"https://www.susmote.com\" target=\"_blank\" rel=\"nofollow\">特克斯博客</a></li><li><span class=\"post_spliter\">•</span><a href=\"http://w3schools.susmote.com/\" target=\"_blank\" rel=\"nofollow\">W3schools</a></li><li><span class=\"post_spliter\">•</span><a href=\"http://jquery.susmote.com/\" target=\"_blank\" rel=\"nofollow\">JQuery中文手册</a></li><li><span class=\"post_spliter\">•</span><a href=\"http://nodejs.susmote.com/\" target=\"_blank\">NodeJs中文网</a></li><li><span class=\"post_spliter\">•</span><a href=\"https://www.aliyun.com\" target=\"_blank\">阿里云</a></li><li><span class=\"post_spliter\">•</span><a href=\"https://ai.baidu.com\" target=\"_blank\">百度AI</a></li><li><span class=\"post_spliter\">•</span><a href=\"https://www.bt.cn\" target=\"_blank\">宝塔面板</a></li><li><span class=\"post_spliter\">•</span><a href=\"https://developers.weixin.qq.com/home\" target=\"_blank\">微信开发者社区</a></li>\";s:8:\"hdpsz_dm\";s:733:\"<li><a target=\"_blank\" href=\"http://tech.sina.com.cn/mobile/n/n/2018-05-12/doc-ihamfahw7911262.shtml\"><img src=\"{#ZC_BLOG_HOST#}zb_users/upload/2018/05/20180516163552152645975263791.jpg\" alt=\"如何反击那些可恶的《复仇者联盟3：无限战争》剧透\" ></a><p class=\"slider-caption\">如何反击那些可恶的《复仇者联盟3：无限战争》剧透</p></li><li><a target=\"_blank\" href=\"http://tech.sina.com.cn/d/v/2018-05-11/doc-ihaichqz6661062.shtml\"><img src=\"{#ZC_BLOG_HOST#}zb_users/upload/2018/05/20180516163601152645976150187.png\" alt=\"科学大家| 科学可视化:带你发现科学背后的那些美\" ></a><p class=\"slider-caption\">科学大家| 科学可视化:带你发现科学背后的那些美</p></li>\";s:7:\"slsljan\";s:150:\"<li><a href=\"\">返回首页</a></li><li><a href=\"填写留言板地址\">留言反馈</a></li><li><a href=\"填写联系站长URL\">联系站长</a></li>\";s:14:\"custom_bgcolor\";s:6:\"0088cc\";s:11:\"cblzhwz_day\";s:0:\"\";s:9:\"zzbgzh_kg\";s:1:\"0\";s:9:\"liuyanban\";s:21:\"{#ZC_BLOG_HOST#}?id=2\";s:11:\"baidutongji\";s:0:\"\";s:10:\"yejiaoewdm\";s:0:\"\";s:11:\"zhutiseo_kg\";s:1:\"1\";s:7:\"wzlx_kg\";s:0:\"\";s:7:\"zxys_kg\";s:0:\"\";s:7:\"wzfx_kg\";s:1:\"1\";s:7:\"wzds_kg\";s:1:\"1\";s:7:\"wzdz_kg\";s:1:\"1\";s:8:\"hdpsz_kg\";s:1:\"1\";}'),
(19, 'os_wxapp_one', 'a:6:{s:5:\"appid\";s:18:\"wx727b3f51f030b4de\";s:6:\"secret\";s:32:\"ab92cb6c364dd3cdbfc742f098481c74\";s:6:\"filter\";s:0:\"\";s:10:\"filter_art\";s:0:\"\";s:4:\"tuis\";s:0:\"\";s:5:\"cates\";s:0:\"\";}'),
(18, 'IMGS', 'a:6:{s:7:\"version\";d:1;s:9:\"checkhost\";i:0;s:2:\"on\";i:1;s:8:\"otherurl\";s:0:\"\";s:9:\"changeurl\";i:0;s:16:\"CacheExternalUrl\";i:0;}'),
(7, 'RegPage', 'a:11:{s:11:\"rewrite_url\";s:9:\"/reg.html\";s:13:\"default_level\";i:5;s:8:\"open_reg\";i:1;s:15:\"loginpage_addon\";i:0;s:14:\"loginpage_text\";s:56:\"欢迎您注册本站账号,请点击链接完成注册.\";s:10:\"title_text\";s:12:\"会员注册\";s:11:\"only_one_ip\";i:0;s:15:\"disable_website\";s:1:\"1\";s:17:\"disable_validcode\";s:1:\"0\";s:11:\"readme_text\";s:0:\"\";s:10:\"only_on_ip\";i:0;}'),
(17, 'dm_tools', 'a:15:{s:7:\"version\";N;s:19:\"dm_tools_CodeMirror\";b:0;s:25:\"dm_tools_remoteimg_switch\";s:1:\"1\";s:24:\"dm_tools_autotags_switch\";b:0;s:25:\"dm_tools_autobaidu_switch\";b:0;s:15:\"dm_tools_autoso\";s:0:\"\";s:9:\"clist_cat\";s:0:\"\";s:5:\"clist\";s:0:\"\";s:15:\"x_head_outtitle\";s:0:\"\";s:14:\"x_head_intitle\";s:0:\"\";s:26:\"dm_tools_articleimg_xtitle\";s:1:\"2\";s:24:\"dm_tools_articleimg_xalt\";s:1:\"2\";s:27:\"dm_tools_articleimg_lasttxt\";s:8:\"第%d张\";s:18:\"dm_tools_xubb_list\";b:0;s:18:\"dm_tools_xubb_feed\";b:0;}'),
(9, '2themes', 'a:3:{s:7:\"version\";s:3:\"0.8\";s:5:\"theme\";s:7:\"um_blog\";s:3:\"css\";s:2:\"um\";}'),
(10, 'metro', 'a:5:{s:7:\"version\";s:3:\"1.0\";s:13:\"custom_layout\";s:1:\"r\";s:13:\"custom_bodybg\";s:78:\"#EEEEEE|{#ZC_BLOG_HOST#}zb_users/theme/metro/style/images/bg.jpg|repeat|2|top|\";s:11:\"custom_hdbg\";s:86:\"|{#ZC_BLOG_HOST#}zb_users/theme/metro/style/images/headbg.jpg|repeat  fixed|1|top|120|\";s:12:\"custom_color\";s:43:\"#5EAAE4| #A3D0F2| #222222| #333333| #FFFFFF\";}'),
(11, 'um_blog', 'a:7:{s:7:\"Version\";s:3:\"1.2\";s:2:\"bn\";s:5:\"false\";s:2:\"ms\";s:12:\"网站描述\";s:3:\"gjc\";s:15:\"网站关键词\";s:2:\"zs\";s:6:\"6699CC\";s:2:\"fs\";s:6:\"6EABE8\";s:4:\"logo\";s:68:\"{#ZC_BLOG_HOST#}zb_users/upload/2018/05/201805131526170716197744.png\";}'),
(16, 'Neditor', 'a:4:{s:10:\"fontfamily\";s:28:\"微软雅黑,Microsoft YaHei\";s:8:\"fontsize\";s:4:\"16px\";s:12:\"listimagenum\";s:2:\"10\";s:11:\"listfilenum\";s:2:\"10\";}'),
(20, 'Totoro', 'a:27:{s:23:\"SV_RULE_HYPERLINK_VALUE\";i:10;s:22:\"SV_RULE_INTERVAL_VALUE\";i:30;s:21:\"SV_RULE_BADWORD_VALUE\";i:50;s:19:\"SV_RULE_LEVEL_VALUE\";i:10;s:18:\"SV_RULE_NAME_VALUE\";i:45;s:20:\"SV_RULE_NUMBER_VALUE\";i:0;s:21:\"SV_RULE_SIMILAR_VALUE\";i:50;s:17:\"SV_RULE_CHINESESV\";i:150;s:26:\"SV_SETTING_REPLACE_KEYWORD\";s:2:\"**\";s:23:\"SV_SETTING_SV_THRESHOLD\";i:50;s:24:\"SV_SETTING_SV_THRESHOLD2\";i:150;s:17:\"SV_SETTING_KILLIP\";i:5;s:38:\"SIMILAR_CONFIG_SIMILAR_AUDIT_COMMCOUNT\";i:10;s:37:\"SIMILAR_CONFIG_SIMILAR_PASS_COMMCOUNT\";i:10;s:30:\"SIMILAR_CONFIG_SIMILAR_PERCENT\";i:80;s:19:\"BUILD_CONFIG_CONHXW\";b:1;s:23:\"BUILD_CONFIG_TRANTOSIMP\";b:1;s:24:\"BUILD_CONFIG_FILTERPUNCT\";b:1;s:23:\"BUILD_CONFIG_AUTOBANURL\";b:0;s:20:\"STRING_BACK_CHECKSTR\";s:81:\"Totoro大显神威！你的评论被怀疑是垃圾评论已经被提交审核。\";s:20:\"STRING_BACK_THROWSTR\";s:75:\"Totoro大显神威！你的评论被怀疑是垃圾评论已经被删除。\";s:21:\"STRING_BACK_KILLIPSTR\";s:62:\"Totoro大显神威！你的IP不合法不允许提交评论。\";s:23:\"BLACK_LIST_BADWORD_LIST\";s:4158:\"(推广|群发|广告|解密|赌博|包青天|广告|阿凡提|发贴|顶贴|(针孔|隐形|隐蔽式)摄像|干扰|顶帖|发帖|消声|遥控|解码|窃听|身份证生成|拦截|复制|监听|定位|消声|作弊|扩散|侦探|追杀)(机|器|软件|设备|系统)|(求|换|有偿|买|卖|出售)(肾|器官|眼角膜|血)|肾源|(假|毕业)(证|文凭|发票|币)|(手榴|人|麻醉|霰)弹|治疗(肿瘤|乙肝|性病|红斑狼疮)|重亚硒酸钠|(粘氯|原砷)酸|麻醉乙醚|原藜芦碱A|永伏虫|蝇毒|罂粟|银氰化钾|氯胺酮|因毒(硫磷|磷)|异氰酸(甲酯|苯酯)|异硫氰酸烯丙酯|乙酰(亚砷酸铜|替硫脲)|乙烯甲醇|乙酸(亚铊|铊|三乙基锡|三甲基锡|甲氧基乙基汞|汞)|乙硼烷|乙醇腈|乙撑亚胺|乙撑氯醇|伊皮恩|海洛因|一氧(化汞|化二氟)|一氯(乙醛|丙酮)|氧氯化磷|氧化(亚铊|铊|汞|二丁基锡)|烟碱|亚硝酰乙氧|亚硝酸乙酯|亚硒酸氢钠|亚硒酸钠|亚硒酸镁|亚硒酸二钠|亚硒酸|亚砷酸(钠|钾|酐)|冰毒|预测答案|考前预测|押题|代写论文|(提供|司考|级|传送|考中|短信)答案|(待|代|带|替|助)考|(包|顺利|保)过|考后付款|无线耳机|考试作弊|考前密卷|漏题|中特|一肖|报码|(合|香港)彩|彩宝|3D轮盘|liuhecai|一码|(皇家|俄罗斯)轮盘|赌具|特码|盗(号|qq|密码)|盗取(密码|qq)|嗑药|帮招人|社会混|拜大哥|电警棒|帮人怀孕|征兵计划|切腹|VE视觉|电鸡|仿真手枪|做炸弹|走私|陪聊|h(图|漫|网)|开苞|找(男|女)|口淫|卖身|元一夜|(男|女)奴|双(筒|桶)|看JJ|做台|厕奴|骚女|嫩逼|一夜激情|乱伦|泡友|富(姐|婆)|(足|群|茹)交|阴户|性(服务|伴侣|伙伴|交)|有偿(捐献|服务)|(有|无)码|包养|(犬|兽|幼)交|根浴|援交|小口径|性(虐|爱|息)|刻章|摇头丸|监听王|昏药|侦探设备|性奴|透视眼(睛|镜)|拍肩神|(失忆|催情|迷(幻|昏|奸)?|安定)(药|片|香)|游戏机破解|隐形耳机|银行卡复制设备|一卡多号|信用卡套现|消防[灭火]?枪|香港生子|土炮|胎盘|手机魔卡|容弹量|枪模|铅弹|汽(枪|狗|走表器)|气枪|气狗|伟哥|纽扣摄像机|免电灯|卖QQ号码|麻醉药|康生丹|警徽|记号扑克|激光(汽|气)|红床|狗友|反雷达测速|短信投票业务|电子狗导航手机|弹(种|夹)|(追|讨)债|车用电子狗|避孕|办理(证件|文凭)|斑蝥|暗访包|SIM卡复制器|BB(枪|弹)|雷管|弓弩|(电|长)狗|导爆索|爆炸物|爆破|左棍|婊子|换妻|成人片|淫(靡|水|兽)|阴(毛|蒂|道|唇)|小穴|缩阴|少妇自拍|(三级|色情|激情|黄色|小)(片|电影|视频|交友|电话)|肉棒|(情|奸)杀|裸照|乱伦|口交|禁(网|片)|春宫图|SM用品|自动群发|私家侦探服务|生意宝|商务(快车|短信)|慧聪|供应发票|发票代开|短信群发|短信猫|点金商务|士的宁|士的年|六合(采|彩)|乐透码|彩票|百乐二呓|百家乐|黄页|出租|求购|留学咨询|外挂|淘宝|群发|货到付款|汽车配件|推广联盟|劳务派遣|网络(兼职|赚钱)|(证件|婚庆|翻译|搬家|追债|债务)公司|手机(游戏|窃听|监听|铃声|图片)|三唑仑|奇迹世界|工作服|论文|铃声|彩(信|铃|票)|显示屏|投影仪|虚拟主机|(域名|专业)注册|营销|服务器托管|网站建设|(google|百度)排名|数据恢复|医院|性病|不孕不育|乳腺病|尖锐湿疣|皮肤病|减肥|瘦|3P|人兽|代孕|打炮|找小姐|刻章|乱伦|中出|楼凤|卖淫|荡妇|群交|幼女|18禁|伦理电影|(催情|蒙汗|蒙汉|春)药|情趣用品|成人.+?(电影|用品)|激情(视频|电影|影院)|爽片|性感美女|交友|怀孕|裸聊|制服诱惑|丝袜|长腿|寂寞女子|免费电影|双色球|福彩|体彩|6合彩|时时彩|双色球|咨询热线|股票|荐股|开股|私服|枪|警棒|警服|麻醉|诚招加盟|诚信经营|杀手|(游戏|金)币|群发|注册.+?公司|公司注册|发票|代开|淘宝|返利|团购|培训|折扣|(打包|试验|打标|破碎|灌装|升降|干燥|烘干)机|条码|标签纸|升降平台|地源热泵|风机盘管|二手(车|电脑)|手表|加盟|名表|特卖|证书|聊天室|分销\";s:23:\"BLACK_LIST_REPLACE_LIST\";s:0:\"\";s:24:\"BLACK_LIST_IPFILTER_LIST\";s:13:\"221.234.230.4\";s:9:\"THROW_INT\";i:0;s:9:\"CHECK_INT\";i:0;}');

-- --------------------------------------------------------

--
-- Table structure for table `eh_member`
--

CREATE TABLE `eh_member` (
  `mem_ID` int(11) NOT NULL,
  `mem_Guid` varchar(36) NOT NULL DEFAULT '',
  `mem_Level` tinyint(4) NOT NULL DEFAULT '0',
  `mem_Status` tinyint(4) NOT NULL DEFAULT '0',
  `mem_Name` varchar(50) NOT NULL DEFAULT '',
  `mem_Password` varchar(32) NOT NULL DEFAULT '',
  `mem_Email` varchar(50) NOT NULL DEFAULT '',
  `mem_HomePage` varchar(255) DEFAULT '',
  `mem_IP` varchar(15) DEFAULT '',
  `mem_PostTime` int(11) NOT NULL DEFAULT '0',
  `mem_Alias` varchar(50) NOT NULL DEFAULT '',
  `mem_Intro` text NOT NULL,
  `mem_Articles` int(11) NOT NULL DEFAULT '0',
  `mem_Pages` int(11) NOT NULL DEFAULT '0',
  `mem_Comments` int(11) NOT NULL DEFAULT '0',
  `mem_Uploads` int(11) NOT NULL DEFAULT '0',
  `mem_Template` varchar(50) NOT NULL DEFAULT '',
  `mem_Meta` longtext NOT NULL,
  `mem_Class` int(11) DEFAULT NULL,
  `mem_Studentid` int(11) DEFAULT NULL,
  `mem_Department` longtext,
  `mem_Major` longtext,
  `mem_Dormitory` int(11) DEFAULT NULL,
  `mem_Room` int(11) DEFAULT NULL,
  `mem_Teacher` longtext,
  `mem_Phonenumber` int(11) DEFAULT NULL,
  `mem_Gender` longtext,
  `mem_Qqnumber` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `eh_member`
--

INSERT INTO `eh_member` (`mem_ID`, `mem_Guid`, `mem_Level`, `mem_Status`, `mem_Name`, `mem_Password`, `mem_Email`, `mem_HomePage`, `mem_IP`, `mem_PostTime`, `mem_Alias`, `mem_Intro`, `mem_Articles`, `mem_Pages`, `mem_Comments`, `mem_Uploads`, `mem_Template`, `mem_Meta`, `mem_Class`, `mem_Studentid`, `mem_Department`, `mem_Major`, `mem_Dormitory`, `mem_Room`, `mem_Teacher`, `mem_Phonenumber`, `mem_Gender`, `mem_Qqnumber`) VALUES
(1, '5af770949baf1029856691', 1, 0, 'susmote', '8fbc6a8d3c53c95796097d94060cc223', 'null@null.com', '', '221.234.230.21', 1526165652, '', '', 5, 0, 0, 4, '', '', 0, 0, '', '', 0, 0, '', 0, '1', 0),
(3, '5af7b02f34725612992505', 2, 0, 'ehomeAdmin', 'f53b6c7d49602a48e6f663fb570e0e6d', 'ehome@susmote.com', '', '221.234.230.21', 0, '', '', 0, 0, 0, 0, '', '', NULL, 0, '', '', 0, 0, '', 0, '0', 0),
(4, '', 0, 0, '李斯特', '', '', '', '', 0, '', '', 0, 0, 0, 0, '', '', 1709, 2017030548, '计算机学院', '软件技术', 14, 508, '曾炜', 134875498, '男', 1600465559);

-- --------------------------------------------------------

--
-- Table structure for table `eh_module`
--

CREATE TABLE `eh_module` (
  `mod_ID` int(11) NOT NULL,
  `mod_Name` varchar(255) NOT NULL DEFAULT '',
  `mod_FileName` varchar(50) NOT NULL DEFAULT '',
  `mod_Content` text NOT NULL,
  `mod_SidebarID` int(11) NOT NULL DEFAULT '0',
  `mod_HtmlID` varchar(50) NOT NULL DEFAULT '',
  `mod_Type` varchar(5) NOT NULL DEFAULT '',
  `mod_MaxLi` int(11) NOT NULL DEFAULT '0',
  `mod_Source` varchar(50) NOT NULL DEFAULT '',
  `mod_IsHideTitle` tinyint(1) NOT NULL DEFAULT '0',
  `mod_Meta` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `eh_module`
--

INSERT INTO `eh_module` (`mod_ID`, `mod_Name`, `mod_FileName`, `mod_Content`, `mod_SidebarID`, `mod_HtmlID`, `mod_Type`, `mod_MaxLi`, `mod_Source`, `mod_IsHideTitle`, `mod_Meta`) VALUES
(1, '导航栏', 'navbar', '<li id=\"nvabar-item-index\"><a href=\"{#ZC_BLOG_HOST#}\">首页</a></li><li id=\"navbar-page-2\"><a href=\"{#ZC_BLOG_HOST#}?id=2\">留言本</a></li>', 0, 'divNavBar', 'ul', 0, 'system', 0, ''),
(2, '日历', 'calendar', '<table id=\"tbCalendar\">\r\n    <caption><a href=\"{#ZC_BLOG_HOST#}?date=2018-4\">«</a>&nbsp;&nbsp;&nbsp;<a href=\"{#ZC_BLOG_HOST#}?date=2018-5\">2018年5月</a>&nbsp;&nbsp;&nbsp;<a href=\"{#ZC_BLOG_HOST#}?date=2018-6\">»</a></caption>\r\n    <thead><tr> <th title=\"星期一\" scope=\"col\"><small>一</small></th> <th title=\"星期二\" scope=\"col\"><small>二</small></th> <th title=\"星期三\" scope=\"col\"><small>三</small></th> <th title=\"星期四\" scope=\"col\"><small>四</small></th> <th title=\"星期五\" scope=\"col\"><small>五</small></th> <th title=\"星期六\" scope=\"col\"><small>六</small></th> <th title=\"星期日\" scope=\"col\"><small>日</small></th></tr></thead>\r\n    <tbody>\r\n    <tr>\r\n<td class=\"pad\" colspan=\"1\"></td><td>1</td><td>2</td><td>3</td><td>4</td><td>5</td><td>6</td></tr><tr><td>7</td><td>8</td><td>9</td><td>10</td><td>11</td><td>12</td><td><a href=\"{#ZC_BLOG_HOST#}?date=2018-5-13\" title=\"2018-5-13 (2)\" target=\"_blank\">13</a></td></tr><tr><td>14</td><td>15</td><td>16</td><td>17</td><td>18</td><td>19</td><td>20</td></tr><tr><td>21</td><td>22</td><td>23</td><td>24</td><td>25</td><td>26</td><td>27</td></tr><tr><td>28</td><td>29</td><td>30</td><td>31</td><td class=\"pad\" colspan=\"2\"> </td>	</tr></tbody>\r\n</table>', 0, 'divCalendar', 'div', 0, 'system', 1, ''),
(3, '控制面板', 'controlpanel', '<span class=\"cp-hello\">您好，欢迎到访网站！</span><br/><span class=\"cp-login\"><a href=\"{#ZC_BLOG_HOST#}zb_system/cmd.php?act=login\">登录后台</a></span>&nbsp;&nbsp;<span class=\"cp-vrs\"><a href=\"{#ZC_BLOG_HOST#}zb_system/cmd.php?act=misc&amp;type=vrs\">查看权限</a></span>', 0, 'divContorPanel', 'div', 0, 'system', 0, ''),
(4, '网站分类', 'catalog', '<li><a href=\"{#ZC_BLOG_HOST#}?cate=1\">未分类</a></li>\r\n<li><a href=\"{#ZC_BLOG_HOST#}?cate=2\">校级新闻</a></li>\r\n<li><a href=\"{#ZC_BLOG_HOST#}?cate=3\">互联网新闻</a></li>\r\n', 0, 'divCatalog', 'ul', 0, 'system', 0, ''),
(5, '搜索', 'searchpanel', '<form name=\"search\" method=\"post\" action=\"{#ZC_BLOG_HOST#}zb_system/cmd.php?act=search\"><input type=\"text\" name=\"q\" size=\"11\" /> <input type=\"submit\" value=\"搜索\" /></form>', 0, 'divSearchPanel', 'div', 0, 'system', 0, ''),
(6, '最新留言', 'comments', '\n<div id=\"related-medias\"><ul class=\"media-list\">\n\n	</ul></div>\n', 0, 'divComments', 'ul', 0, 'system', 0, ''),
(7, '文章归档', 'archives', '<li><a href=\"{#ZC_BLOG_HOST#}?date=2018-5\">2018年5月 (2)</a></li>\r\n', 0, 'divArchives', 'ul', 0, 'system', 0, ''),
(8, '站点信息', 'statistics', '<li>文章总数:2</li>\r\n<li>页面总数:1</li>\r\n<li>分类总数:3</li>\r\n<li>标签总数:11</li>\r\n<li>评论总数:2</li>\r\n<li>浏览总数:119</li>\r\n', 0, 'divStatistics', 'ul', 0, 'system', 0, ''),
(9, '网站收藏', 'favorite', '<li><a href=\"http://app.zblogcn.com/\" target=\"_blank\">Z-Blog应用中心</a></li><li><a href=\"http://weibo.com/zblogcn\" target=\"_blank\">Z-Blog官方微博</a></li><li><a href=\"http://bbs.zblogcn.com/\" target=\"_blank\">ZBlogger社区</a></li>', 0, 'divFavorites', 'ul', 0, 'system', 0, ''),
(10, '友情链接', 'link', '<li><a href=\"https://github.com/zblogcn\" target=\"_blank\" title=\"Z-Blog on Github\">Z-Blog on Github</a></li><li><a href=\"https://zbloghost.cn/\" target=\"_blank\" title=\"Z-Blog官方主机\">Z-Blog主机</a></li>', 0, 'divLinkage', 'ul', 0, 'system', 0, ''),
(11, '图标汇集', 'misc', '<li><a href=\"http://www.zblogcn.com/\" target=\"_blank\"><img src=\"{#ZC_BLOG_HOST#}zb_system/image/logo/zblog.gif\" height=\"31\" width=\"88\" alt=\"RainbowSoft Studio Z-Blog\" /></a></li><li><a href=\"{#ZC_BLOG_HOST#}feed.php\" target=\"_blank\"><img src=\"{#ZC_BLOG_HOST#}zb_system/image/logo/rss.png\" height=\"31\" width=\"88\" alt=\"订阅本站的 RSS 2.0 新闻聚合\" /></a></li>', 0, 'divMisc', 'ul', 0, 'system', 1, ''),
(12, '作者列表', 'authors', '\n\n<ul id=\"divAuthors-1\">\n<li><a href=\"{#ZC_BLOG_HOST#}?auth=1\">susmote<span class=\"article-nums\"> (5)</span></a></li>\n<div class=\"clear\"></div>\n</ul>\n', 0, 'divAuthors', 'ul', 0, 'system', 0, ''),
(13, '最近发表', 'previous', '\r\n<div class=\"new_cat\" id=\"new_cat\"><ul>\r\n<li class=\"clr\"><a href=\"{#ZC_BLOG_HOST#}?id=13\"  title=\"详细揭秘：两年前的“5G投票”，联想究竟做了什么？\" target=\"_blank\"><div class=\"time\"><span class=\"r\">13</span>/<span class=\"y\">05月</span></div><div class=\"title\">详细揭秘：两年前的“5G投票”，联想究竟做了什么？</div></a></li>\r\n<li class=\"clr\"><a href=\"{#ZC_BLOG_HOST#}?id=12\"  title=\"遇害空姐父亲：遗憾凶手未被严惩 将追究滴滴责任\" target=\"_blank\"><div class=\"time\"><span class=\"r\">13</span>/<span class=\"y\">05月</span></div><div class=\"title\">遇害空姐父亲：遗憾凶手未被严惩 将追究滴滴责任</div></a></li>\r\n</ul></div>', 0, 'divPrevious', 'ul', 0, 'system', 0, ''),
(14, '标签列表', 'tags', '\r\n	\r\n<div id=\"tag_cloud_widget\">\r\n			<a href=\"{#ZC_BLOG_HOST#}?tags=8\" title=\"1个话题\" target=\"_blank\" rel=\"nofollow\">热议新闻</a>\r\n			<a href=\"{#ZC_BLOG_HOST#}?tags=7\" title=\"1个话题\" target=\"_blank\" rel=\"nofollow\">父亲</a>\r\n			<a href=\"{#ZC_BLOG_HOST#}?tags=6\" title=\"1个话题\" target=\"_blank\" rel=\"nofollow\">凶手</a>\r\n			<a href=\"{#ZC_BLOG_HOST#}?tags=5\" title=\"1个话题\" target=\"_blank\" rel=\"nofollow\">空姐</a>\r\n			<a href=\"{#ZC_BLOG_HOST#}?tags=9\" title=\"1个话题\" target=\"_blank\" rel=\"nofollow\">联想</a>\r\n			<a href=\"{#ZC_BLOG_HOST#}?tags=10\" title=\"1个话题\" target=\"_blank\" rel=\"nofollow\">华为</a>\r\n			<a href=\"{#ZC_BLOG_HOST#}?tags=11\" title=\"1个话题\" target=\"_blank\" rel=\"nofollow\">5G</a>\r\n			<a href=\"{#ZC_BLOG_HOST#}?tags=1\" title=\"0个话题\" target=\"_blank\" rel=\"nofollow\">新闻</a>\r\n			<a href=\"{#ZC_BLOG_HOST#}?tags=2\" title=\"0个话题\" target=\"_blank\" rel=\"nofollow\">学校综合</a>\r\n			<a href=\"{#ZC_BLOG_HOST#}?tags=3\" title=\"0个话题\" target=\"_blank\" rel=\"nofollow\">校宣传部</a>\r\n			<a href=\"{#ZC_BLOG_HOST#}?tags=4\" title=\"0个话题\" target=\"_blank\" rel=\"nofollow\">校内调研</a>\r\n	</div>\r\n', 0, 'divTags', 'ul', 0, 'system', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `eh_os_wxapp_one_swiper`
--

CREATE TABLE `eh_os_wxapp_one_swiper` (
  `wxapp_swiper_ID` int(11) NOT NULL,
  `wxapp_swiper_Related` varchar(255) NOT NULL DEFAULT '',
  `wxapp_swiper_Type` varchar(255) NOT NULL DEFAULT '',
  `wxapp_swiper_Imgurl` varchar(255) NOT NULL DEFAULT '',
  `wxapp_swiper_Order` int(11) NOT NULL DEFAULT '0',
  `wxapp_swiper_Status` int(11) NOT NULL DEFAULT '0',
  `wxapp_swiper_Meta` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eh_os_wxapp_session`
--

CREATE TABLE `eh_os_wxapp_session` (
  `wxapp_session_ID` int(11) NOT NULL,
  `wxapp_session_UID` int(11) NOT NULL DEFAULT '0',
  `wxapp_session_WXUID` int(11) NOT NULL DEFAULT '0',
  `wxapp_session_Token` varchar(255) NOT NULL DEFAULT '',
  `wxapp_session_UpdateTime` int(11) NOT NULL DEFAULT '0',
  `wxapp_session_Meta` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `eh_os_wxapp_session`
--

INSERT INTO `eh_os_wxapp_session` (`wxapp_session_ID`, `wxapp_session_UID`, `wxapp_session_WXUID`, `wxapp_session_Token`, `wxapp_session_UpdateTime`, `wxapp_session_Meta`) VALUES
(1, 0, 1, '9df1920b14c349c9', 1526291895, '');

-- --------------------------------------------------------

--
-- Table structure for table `eh_os_wxapp_users`
--

CREATE TABLE `eh_os_wxapp_users` (
  `wxapp_user_ID` int(11) NOT NULL,
  `wxapp_user_UID` int(11) NOT NULL DEFAULT '0',
  `wxapp_user_OpenID` varchar(255) NOT NULL DEFAULT '',
  `wxapp_user_SessionKey` varchar(255) NOT NULL DEFAULT '',
  `wxapp_user_UnionID` varchar(255) NOT NULL DEFAULT '',
  `wxapp_user_Nickname` varchar(255) NOT NULL DEFAULT '',
  `wxapp_user_Avatar` varchar(255) NOT NULL DEFAULT '',
  `wxapp_user_Lock` int(11) NOT NULL DEFAULT '0',
  `wxapp_user_UpdateTime` int(11) NOT NULL DEFAULT '0',
  `wxapp_user_Meta` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `eh_os_wxapp_users`
--

INSERT INTO `eh_os_wxapp_users` (`wxapp_user_ID`, `wxapp_user_UID`, `wxapp_user_OpenID`, `wxapp_user_SessionKey`, `wxapp_user_UnionID`, `wxapp_user_Nickname`, `wxapp_user_Avatar`, `wxapp_user_Lock`, `wxapp_user_UpdateTime`, `wxapp_user_Meta`) VALUES
(1, 0, 'o57SG5AViqMy-vPtUWoYmwx-k6JE', 'ZzOHmhLxuJtUt2jX/2Y2QA==', '', 'susmote', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLxibscK2qolCy8BMDozTOehboFrWztTEoH1ICbhUF7H4s4MWicwZKM3yO8Ienm9aPkgmLD38AsCIlA/132', 0, 1526291895, '');

-- --------------------------------------------------------

--
-- Table structure for table `eh_post`
--

CREATE TABLE `eh_post` (
  `log_ID` int(11) NOT NULL,
  `log_CateID` int(11) NOT NULL DEFAULT '0',
  `log_AuthorID` int(11) NOT NULL DEFAULT '0',
  `log_Tag` varchar(255) NOT NULL DEFAULT '',
  `log_Status` tinyint(4) NOT NULL DEFAULT '0',
  `log_Type` tinyint(4) NOT NULL DEFAULT '0',
  `log_Alias` varchar(255) NOT NULL DEFAULT '',
  `log_IsTop` int(11) NOT NULL DEFAULT '0',
  `log_IsLock` tinyint(1) NOT NULL DEFAULT '0',
  `log_Title` varchar(255) NOT NULL DEFAULT '',
  `log_Intro` text NOT NULL,
  `log_Content` longtext NOT NULL,
  `log_PostTime` int(11) NOT NULL DEFAULT '0',
  `log_CommNums` int(11) NOT NULL DEFAULT '0',
  `log_ViewNums` int(11) NOT NULL DEFAULT '0',
  `log_Template` varchar(50) NOT NULL DEFAULT '',
  `log_Meta` longtext NOT NULL,
  `log_images` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `eh_post`
--

INSERT INTO `eh_post` (`log_ID`, `log_CateID`, `log_AuthorID`, `log_Tag`, `log_Status`, `log_Type`, `log_Alias`, `log_IsTop`, `log_IsLock`, `log_Title`, `log_Intro`, `log_Content`, `log_PostTime`, `log_CommNums`, `log_ViewNums`, `log_Template`, `log_Meta`, `log_images`) VALUES
(2, 0, 1, '', 0, 1, '', 0, 0, '留言本', '', '这是一个留言本，是由程序自动生成的页面，您可以对其进行任意操作。', 1526165652, 0, 9, '', '', ''),
(13, 3, 1, '{9}{10}{11}', 0, 0, '', 0, 0, '详细揭秘：两年前的“5G投票”，联想究竟做了什么？', '　来源：微信公众号三易生活　　一件已经在2016年就被盖棺定论的事情，近日随着几篇知乎上的文章，再度吸引了大量“吃瓜群众”的关注，诸如“5G标准上，联想为什么不给华为投票”一类的“惊悚”标题，也成为了外界关注的源头。　　但是我们在详细阅读了这些文章之后，却发现作者有大量使用专有技术名词的情况下，有着“带节奏”的嫌疑。　　而在这篇文章的准备阶段，我们三易生活也专门联系了高通、华为、联想三方。截至发稿前，高通和华为并未就此事件进行回应，联想方面相关人士则表示，“希望业界不要在这个狭隘的层面上评价创新<!--autointro-->', '<p style=\"margin-top: 0px; margin-bottom: 30px; padding: 0px; text-size-adjust: 100%; font-family: &quot;Microsoft Yahei&quot;, 微软雅黑, &quot;STHeiti Light&quot;, 华文细黑, SimSun, 宋体, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal;\">　来源：微信公众号三易生活</p><p style=\"margin-top: 0px; margin-bottom: 30px; padding: 0px; text-size-adjust: 100%; font-family: &quot;Microsoft Yahei&quot;, 微软雅黑, &quot;STHeiti Light&quot;, 华文细黑, SimSun, 宋体, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal;\">　　一件已经在2016年就被盖棺定论的事情，近日随着几篇知乎上的文章，再度吸引了大量“吃瓜群众”的关注，诸如“5G标准上，联想为什么不给华为投票”一类的“惊悚”标题，也成为了外界关注的源头。</p><p style=\"margin-top: 0px; margin-bottom: 30px; padding: 0px; text-size-adjust: 100%; font-family: &quot;Microsoft Yahei&quot;, 微软雅黑, &quot;STHeiti Light&quot;, 华文细黑, SimSun, 宋体, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal;\">　　但是我们在详细阅读了这些文章之后，却发现作者有大量使用专有技术名词的情况下，有着“带节奏”的嫌疑。</p><p style=\"margin-top: 0px; margin-bottom: 30px; padding: 0px; text-size-adjust: 100%; font-family: &quot;Microsoft Yahei&quot;, 微软雅黑, &quot;STHeiti Light&quot;, 华文细黑, SimSun, 宋体, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal;\">　　而在这篇文章的准备阶段，我们三易生活也专门联系了<span id=\"usstock_QCOM\"><a href=\"http://stock.finance.sina.com.cn/usstock/quotes/QCOM.html\" class=\"keyword f_st\" target=\"_blank\" style=\"text-decoration-line: none; outline: 0px; -webkit-tap-highlight-color: transparent; color: rgb(73, 150, 199);\">高通</a></span><span id=\"quote_QCOM\"></span>、华为、联想三方。截至发稿前，高通和华为并未就此事件进行回应，联想方面相关人士则表示，“希望业界不要在这个狭隘的层面上评价创新技术”。</p><p style=\"margin-top: 0px; margin-bottom: 30px; padding: 0px; text-size-adjust: 100%; font-family: &quot;Microsoft Yahei&quot;, 微软雅黑, &quot;STHeiti Light&quot;, 华文细黑, SimSun, 宋体, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal;\">　　<strong>首先，3GPP不是霸权组织，更没有阴谋论</strong></p><p style=\"margin-top: 0px; margin-bottom: 30px; padding: 0px; text-size-adjust: 100%; font-family: &quot;Microsoft Yahei&quot;, 微软雅黑, &quot;STHeiti Light&quot;, 华文细黑, SimSun, 宋体, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal;\">　　首先，和某些“阴谋论者”的看法不同，5G标准的制定组织3GPP，在华为无线网络标准专利部部长万蕾博士（她同时也是华为5G标准Polar码方案主要贡献者之一）看来，是一个公正、透明、团结和技术性极强的组织。</p><p style=\"margin-top: 0px; margin-bottom: 30px; padding: 0px; text-size-adjust: 100%; font-family: &quot;Microsoft Yahei&quot;, 微软雅黑, &quot;STHeiti Light&quot;, 华文细黑, SimSun, 宋体, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal;\">　　万博士曾这样评价3GPP：“技术是没有国界的，3GPP之所以成功，就是归功于它的国际化，它的罗马论坛式的技术辩论是推动技术优化趋于完善的核心机制。衷心祝愿3GPP的全球化的民主精神源远流长……”</p><div class=\"img_wrapper\" style=\"text-align: center; font-family: &quot;Microsoft Yahei&quot;, 微软雅黑, &quot;STHeiti Light&quot;, 华文细黑, SimSun, 宋体, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal;\"><img src=\"{#ZC_BLOG_HOST#}zb_users/upload/2018/05/20180513090733_92672.jpg\" alt=\"\" style=\"border: 0px none; vertical-align: middle; display: block; margin: 0px auto; max-width: 640px;\"/><span class=\"img_descr\" style=\"line-height: 20px; padding: 6px 0px; font-size: 16px; margin: 5px auto; display: inline-block; zoom: 1; text-align: left;\"></span></div><p style=\"margin-top: 0px; margin-bottom: 30px; padding: 0px; text-size-adjust: 100%; font-family: &quot;Microsoft Yahei&quot;, 微软雅黑, &quot;STHeiti Light&quot;, 华文细黑, SimSun, 宋体, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal;\">　　作为这种“透明公开”的直接体现，3GPP每一次的会议都有详细的记录可供公开查询——当然，会议纪要是全英文的，而且动辄数万字之多。这确实给了一些人断章取义的机会，但作为一家合格的IT媒体，我们三易生活的编辑也是耐着性子仔仔细细地看完了2016年8月（第86次）、2016年10月（第86次b）和2016年11月（第87次）三次英文会议纪要……终于得以将整场事件以较为明晰的顺序，呈现在大家眼前。</p><p style=\"margin-top: 0px; margin-bottom: 30px; padding: 0px; text-size-adjust: 100%; font-family: &quot;Microsoft Yahei&quot;, 微软雅黑, &quot;STHeiti Light&quot;, 华文细黑, SimSun, 宋体, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal;\">　　<strong>2016年8月第一次会议：三种标准被提出，技术争论很激烈</strong></p><p style=\"margin-top: 0px; margin-bottom: 30px; padding: 0px; text-size-adjust: 100%; font-family: &quot;Microsoft Yahei&quot;, 微软雅黑, &quot;STHeiti Light&quot;, 华文细黑, SimSun, 宋体, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal;\">　　关于5G移动宽带 信道编码的三大标准，争论的源头来自于2016年8月的3GPP第86次会议。在这次大会上，LDPC、Polar和Turbo三种编码方案被正式提出。</p><div class=\"img_wrapper\" style=\"text-align: center; font-family: &quot;Microsoft Yahei&quot;, 微软雅黑, &quot;STHeiti Light&quot;, 华文细黑, SimSun, 宋体, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal;\"><img src=\"{#ZC_BLOG_HOST#}zb_users/upload/2018/05/20180513090733_18774.jpg\" alt=\"\" style=\"border: 0px none; vertical-align: middle; display: block; margin: 0px auto; max-width: 640px;\"/><span class=\"img_descr\" style=\"line-height: 20px; padding: 6px 0px; font-size: 16px; margin: 5px auto; display: inline-block; zoom: 1; text-align: left;\"></span></div><p style=\"margin-top: 0px; margin-bottom: 30px; padding: 0px; text-size-adjust: 100%; font-family: &quot;Microsoft Yahei&quot;, 微软雅黑, &quot;STHeiti Light&quot;, 华文细黑, SimSun, 宋体, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal;\">　　从官方会议纪要中，我们可以看到此时三大阵营的支持方和后来流传的并不一样。为了让大家看得更清楚，我们稍微统计了一下：</p><p style=\"margin-top: 0px; margin-bottom: 30px; padding: 0px; text-size-adjust: 100%; font-family: &quot;Microsoft Yahei&quot;, 微软雅黑, &quot;STHeiti Light&quot;, 华文细黑, SimSun, 宋体, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal;\">　　LDPC方案（第一次会议）：高通牵头，支持者包括三星、<span id=\"usstock_NOK\"><a href=\"http://stock.finance.sina.com.cn/usstock/quotes/NOK.html\" class=\"keyword f_st\" target=\"_blank\" style=\"text-decoration-line: none; outline: 0px; -webkit-tap-highlight-color: transparent; color: rgb(73, 150, 199);\">诺基亚</a></span><span id=\"quote_NOK\"></span>、中兴、联发科、<span id=\"usstock_INTC\"><a href=\"http://stock.finance.sina.com.cn/usstock/quotes/INTC.html\" class=\"keyword f_st\" target=\"_blank\" style=\"text-decoration-line: none; outline: 0px; -webkit-tap-highlight-color: transparent; color: rgb(73, 150, 199);\">英特尔</a></span><span id=\"quote_INTC\"></span>、夏普、vivo、OPPO、小米，以及美日韩的主要电信运营商。</p><p style=\"margin-top: 0px; margin-bottom: 30px; padding: 0px; text-size-adjust: 100%; font-family: &quot;Microsoft Yahei&quot;, 微软雅黑, &quot;STHeiti Light&quot;, 华文细黑, SimSun, 宋体, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal;\">　　Polar方案（第一次会议）：华为牵头，支持者包括华为海思、中国移动、<span id=\"usstock_CHU\"><a href=\"http://stock.finance.sina.com.cn/usstock/quotes/CHU.html\" class=\"keyword f_st\" target=\"_blank\" style=\"text-decoration-line: none; outline: 0px; -webkit-tap-highlight-color: transparent; color: rgb(73, 150, 199);\">中国联通</a></span><span id=\"quote_CHU\"></span>、展讯、以及少数欧洲和美国的电信运营商</p><p style=\"margin-top: 0px; margin-bottom: 30px; padding: 0px; text-size-adjust: 100%; font-family: &quot;Microsoft Yahei&quot;, 微软雅黑, &quot;STHeiti Light&quot;, 华文细黑, SimSun, 宋体, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal;\">　　Turbo方案（第一次会议）：LG牵头，支持者包括<span id=\"usstock_ERIC\"><a href=\"http://stock.finance.sina.com.cn/usstock/quotes/ERIC.html\" class=\"keyword f_st\" target=\"_blank\" style=\"text-decoration-line: none; outline: 0px; -webkit-tap-highlight-color: transparent; color: rgb(73, 150, 199);\">爱立信</a></span><span id=\"quote_ERIC\"></span>、NEC、法国橘子电信（这货在Turbo和Polar上两头下注）等少数代表</p><p style=\"margin-top: 0px; margin-bottom: 30px; padding: 0px; text-size-adjust: 100%; font-family: &quot;Microsoft Yahei&quot;, 微软雅黑, &quot;STHeiti Light&quot;, 华文细黑, SimSun, 宋体, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal;\">　　值得一提的是，很多人以为3G、4G时代是高通独霸天下，其实不然——3G、4G时代采用的反而是5G时代“小众”的Turbo编码方案，当时的LDPC还处于完善期，而Polar更是还在理论阶段……</p><p style=\"margin-top: 0px; margin-bottom: 30px; padding: 0px; text-size-adjust: 100%; font-family: &quot;Microsoft Yahei&quot;, 微软雅黑, &quot;STHeiti Light&quot;, 华文细黑, SimSun, 宋体, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal;\">　　在这场被很多媒体忽视了的第一次会议上，各方并没有进行表决。但却发生了非常热烈的技术讨论。</p><p style=\"margin-top: 0px; margin-bottom: 30px; padding: 0px; text-size-adjust: 100%; font-family: &quot;Microsoft Yahei&quot;, 微软雅黑, &quot;STHeiti Light&quot;, 华文细黑, SimSun, 宋体, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal;\">　　有趣的是，从3GPP的会议记录来看，实际上高通、三星、华为、中兴、LG等也都并非固执于自己的“阵地”，而是同时参与了多个方案的技术评估和讨论。这背后的原因，除了3GPP本身浓厚的技术氛围外，其实也因为在5G时代，大家基本上都是在技术和专利上“多方下注”。</p><p style=\"margin-top: 0px; margin-bottom: 30px; padding: 0px; text-size-adjust: 100%; font-family: &quot;Microsoft Yahei&quot;, 微软雅黑, &quot;STHeiti Light&quot;, 华文细黑, SimSun, 宋体, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal;\">　　比如高通既有LDPC的部分专利，也有Polar的部分专利，反之，华为主导Polar，也同样参与了LDAC的建设。“你中有我。我中有你”，并不像3G、4G时代那样存在着明确的专利墙或者独占情况。</p><p style=\"margin-top: 0px; margin-bottom: 30px; padding: 0px; text-size-adjust: 100%; font-family: &quot;Microsoft Yahei&quot;, 微软雅黑, &quot;STHeiti Light&quot;, 华文细黑, SimSun, 宋体, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal;\">　　<strong>2016年10月第二次会议：投票开始，联想出场？</strong></p><p style=\"margin-top: 0px; margin-bottom: 30px; padding: 0px; text-size-adjust: 100%; font-family: &quot;Microsoft Yahei&quot;, 微软雅黑, &quot;STHeiti Light&quot;, 华文细黑, SimSun, 宋体, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal;\">　　在这次的会议上，上次提出的三种5G编码方案的技术争论仍然在持续，但是和第一次会议相比，第二次会议发生了大量的“变故”。</p><div class=\"img_wrapper\" style=\"text-align: center; font-family: &quot;Microsoft Yahei&quot;, 微软雅黑, &quot;STHeiti Light&quot;, 华文细黑, SimSun, 宋体, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal;\"><img src=\"{#ZC_BLOG_HOST#}zb_users/upload/2018/05/20180513090733_49744.jpg\" alt=\"▲三个阵营相互“挑刺”的密密麻麻的记录……\" data-mcesrc=\"//n.sinaimg.cn/tech/crawl/775/w550h225/20180511/eIjD-hamfahw6595039.jpg\" data-mceselected=\"1\" data-link=\"\" style=\"border: 0px none; vertical-align: middle; display: block; margin: 0px auto; max-width: 640px;\"/><span class=\"img_descr\" style=\"line-height: 20px; padding: 6px 0px; font-size: 16px; margin: 5px auto; display: inline-block; zoom: 1; text-align: left;\">▲三个阵营相互“挑刺”的密密麻麻的记录……</span></div><p style=\"margin-top: 0px; margin-bottom: 30px; padding: 0px; text-size-adjust: 100%; font-family: &quot;Microsoft Yahei&quot;, 微软雅黑, &quot;STHeiti Light&quot;, 华文细黑, SimSun, 宋体, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal;\">　　其一，是三种方案的支持者开始相互攻讦，从单纯炫耀自身技术的先进性，变成了指责其他方案的技术短板，在这个过程中，LDPC的确在技术层面上占据了上风。</p><p style=\"margin-top: 0px; margin-bottom: 30px; padding: 0px; text-size-adjust: 100%; font-family: &quot;Microsoft Yahei&quot;, 微软雅黑, &quot;STHeiti Light&quot;, 华文细黑, SimSun, 宋体, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal;\">　　其二，是三种方案本身的支持者阵营发生了很大的改动，具体来说如下：</p><p style=\"margin-top: 0px; margin-bottom: 30px; padding: 0px; text-size-adjust: 100%; font-family: &quot;Microsoft Yahei&quot;, 微软雅黑, &quot;STHeiti Light&quot;, 华文细黑, SimSun, 宋体, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal;\">　　LDPC方案（第二次会议）：华为、高通、NTT、三星、爱立信、LG、NEC、<span id=\"usstock_SNE\"><a href=\"http://stock.finance.sina.com.cn/usstock/quotes/SNE.html\" class=\"keyword f_st\" target=\"_blank\" style=\"text-decoration-line: none; outline: 0px; -webkit-tap-highlight-color: transparent; color: rgb(73, 150, 199);\">索尼</a></span><span id=\"quote_SNE\"></span>都为之站台</p><p style=\"margin-top: 0px; margin-bottom: 30px; padding: 0px; text-size-adjust: 100%; font-family: &quot;Microsoft Yahei&quot;, 微软雅黑, &quot;STHeiti Light&quot;, 华文细黑, SimSun, 宋体, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal;\">　　Polar方案（第二次会议）：只剩下了华为、华为海思</p><p style=\"margin-top: 0px; margin-bottom: 30px; padding: 0px; text-size-adjust: 100%; font-family: &quot;Microsoft Yahei&quot;, 微软雅黑, &quot;STHeiti Light&quot;, 华文细黑, SimSun, 宋体, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal;\">　　Turbo方案（第二次会议）：已经基本没有支持者了</p><p style=\"margin-top: 0px; margin-bottom: 30px; padding: 0px; text-size-adjust: 100%; font-family: &quot;Microsoft Yahei&quot;, 微软雅黑, &quot;STHeiti Light&quot;, 华文细黑, SimSun, 宋体, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal;\">　　在各方唇枪舌剑一番之后，会议的议题就此发生了关键性的改变：从到底是要哪一种5G数据编码方案，变成了大家到底需要几种5G数据编码方案。而这一次，也正是在网上被传得神乎其神的“第一次投票”。</p><p style=\"margin-top: 0px; margin-bottom: 30px; padding: 0px; text-size-adjust: 100%; font-family: &quot;Microsoft Yahei&quot;, 微软雅黑, &quot;STHeiti Light&quot;, 华文细黑, SimSun, 宋体, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal;\">　　这个时候，各方阵营再次发生了奇怪的分裂：</p><div class=\"img_wrapper\" style=\"text-align: center; font-family: &quot;Microsoft Yahei&quot;, 微软雅黑, &quot;STHeiti Light&quot;, 华文细黑, SimSun, 宋体, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal;\"><img src=\"{#ZC_BLOG_HOST#}zb_users/upload/2018/05/20180513090734_87675.jpg\" alt=\"\" style=\"border: 0px none; vertical-align: middle; display: block; margin: 0px auto; max-width: 640px;\"/><span class=\"img_descr\" style=\"line-height: 20px; padding: 6px 0px; font-size: 16px; margin: 5px auto; display: inline-block; zoom: 1; text-align: left;\"></span></div><p style=\"margin-top: 0px; margin-bottom: 30px; padding: 0px; text-size-adjust: 100%; font-family: &quot;Microsoft Yahei&quot;, 微软雅黑, &quot;STHeiti Light&quot;, 华文细黑, SimSun, 宋体, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal;\">　　1.只需要LDPC：爱立信、索尼、夏普、诺基亚、三星、英特尔、高通、联想、富士通、<span id=\"usstock_MMI\"><a href=\"http://stock.finance.sina.com.cn/usstock/quotes/MMI.html\" class=\"keyword f_st\" target=\"_blank\" style=\"text-decoration-line: none; outline: 0px; -webkit-tap-highlight-color: transparent; color: rgb(73, 150, 199);\">摩托罗拉移动</a></span><span id=\"quote_MMI\"></span>，再加上几家日韩为主的电信运营商</p><p style=\"margin-top: 0px; margin-bottom: 30px; padding: 0px; text-size-adjust: 100%; font-family: &quot;Microsoft Yahei&quot;, 微软雅黑, &quot;STHeiti Light&quot;, 华文细黑, SimSun, 宋体, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal;\">　　2.只需要Polar：华为</p><p style=\"margin-top: 0px; margin-bottom: 30px; padding: 0px; text-size-adjust: 100%; font-family: &quot;Microsoft Yahei&quot;, 微软雅黑, &quot;STHeiti Light&quot;, 华文细黑, SimSun, 宋体, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal;\">　　3.需要LDPC，但也兼顾Turbo码：LG、IMT、NEC、富士通、法国橘子电信</p><p style=\"margin-top: 0px; margin-bottom: 30px; padding: 0px; text-size-adjust: 100%; font-family: &quot;Microsoft Yahei&quot;, 微软雅黑, &quot;STHeiti Light&quot;, 华文细黑, SimSun, 宋体, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal;\">　　4.需要LDPC，但也兼顾Polar码：中兴、联发科、努比亚、小米、OPPO、展讯、再加上其他几家。</p><p style=\"margin-top: 0px; margin-bottom: 30px; padding: 0px; text-size-adjust: 100%; font-family: &quot;Microsoft Yahei&quot;, 微软雅黑, &quot;STHeiti Light&quot;, 华文细黑, SimSun, 宋体, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal;\">　　由于“唯Polar派”只有华为一家，到了实际的投票阶段，华为主动弃权。此时阵营1和阵营4几乎旗鼓相当，最终的结果是两边暂时各让一步：初步决定在5G数据传输的“长码”部分使用LDPC，同时留下了一部分“短码”空间待定。至此，LDPC可说是小胜一场。</p><p style=\"margin-top: 0px; margin-bottom: 30px; padding: 0px; text-size-adjust: 100%; font-family: &quot;Microsoft Yahei&quot;, 微软雅黑, &quot;STHeiti Light&quot;, 华文细黑, SimSun, 宋体, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal;\">　　在这次的投票中，联想是否有表态支持LDPC？显然是有的，但是从整个阵营分部来看，这种表态对于投票结果是否有决定性影响呢？应该说，没有。至于为什么笔者敢肯定没有，大家只要知道3GPP的投票并不是“一人一票”，而是有权重的概念，应该就能明白了。</p><p style=\"margin-top: 0px; margin-bottom: 30px; padding: 0px; text-size-adjust: 100%; font-family: &quot;Microsoft Yahei&quot;, 微软雅黑, &quot;STHeiti Light&quot;, 华文细黑, SimSun, 宋体, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal;\">　　<strong>2016年11月第三次会议：尘埃落定，团结的胜利</strong></p><p style=\"margin-top: 0px; margin-bottom: 30px; padding: 0px; text-size-adjust: 100%; font-family: &quot;Microsoft Yahei&quot;, 微软雅黑, &quot;STHeiti Light&quot;, 华文细黑, SimSun, 宋体, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal;\">　　在上一次的会议中，已经决定了5G移动宽带的数据传输部分部分采用LDPC方案，从而留下了两件事待定，一是数据信道中，“剩下的部分”采用何种方案，另一点则是除了数据传输之外，用于网络控制的信道采用何种方案。</p><p style=\"margin-top: 0px; margin-bottom: 30px; padding: 0px; text-size-adjust: 100%; font-family: &quot;Microsoft Yahei&quot;, 微软雅黑, &quot;STHeiti Light&quot;, 华文细黑, SimSun, 宋体, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal;\">　　由于LDPC在前一次的会议中，已经拿下了5G移动宽带数据信道的大部分份额，因此，在剩余的“短码”部分，竞争就变得异常激烈了。这一次，除了没什么存在感的Turbo码阵营之外，LDPC和Polar码阵营都拉上了大量“盟友”，概括如下：</p><div class=\"img_wrapper\" style=\"text-align: center; font-family: &quot;Microsoft Yahei&quot;, 微软雅黑, &quot;STHeiti Light&quot;, 华文细黑, SimSun, 宋体, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal;\"><img src=\"{#ZC_BLOG_HOST#}zb_users/upload/2018/05/20180513090734_48708.jpg\" alt=\"\" style=\"border: 0px none; vertical-align: middle; display: block; margin: 0px auto; max-width: 640px;\"/><span class=\"img_descr\" style=\"line-height: 20px; padding: 6px 0px; font-size: 16px; margin: 5px auto; display: inline-block; zoom: 1; text-align: left;\"></span></div><p style=\"margin-top: 0px; margin-bottom: 30px; padding: 0px; text-size-adjust: 100%; font-family: &quot;Microsoft Yahei&quot;, 微软雅黑, &quot;STHeiti Light&quot;, 华文细黑, SimSun, 宋体, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal;\">　　LDPC方案（第三次会议）：三星、阿尔卡特朗讯、上海贝尔、爱立信、英特尔、三菱电子、摩托罗拉解决方案、NEC、诺基亚、KDDI、高通、夏普、SK电信、NTT Docomo、T-Mobile、Verizon……总共约33家</p><p style=\"margin-top: 0px; margin-bottom: 30px; padding: 0px; text-size-adjust: 100%; font-family: &quot;Microsoft Yahei&quot;, 微软雅黑, &quot;STHeiti Light&quot;, 华文细黑, SimSun, 宋体, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal;\">　　Polar方案（第三次会议）：华为、华为海思、宏碁、<span id=\"usstock_ADI\"><a href=\"http://stock.finance.sina.com.cn/usstock/quotes/ADI.html\" class=\"keyword f_st\" target=\"_blank\" style=\"text-decoration-line: none; outline: 0px; -webkit-tap-highlight-color: transparent; color: rgb(73, 150, 199);\">ADI</a></span><span id=\"quote_ADI\"></span>、贝尔移动、博通、中国移动、<span id=\"usstock_CHA\"><a href=\"http://stock.finance.sina.com.cn/usstock/quotes/CHA.html\" class=\"keyword f_st\" target=\"_blank\" style=\"text-decoration-line: none; outline: 0px; -webkit-tap-highlight-color: transparent; color: rgb(73, 150, 199);\">中国电信</a></span><span id=\"quote_CHA\"></span>、中国联通、联想、Marvell、联发科、摩托罗拉移动、努比亚、OPPO、东芝、vivo、小米、中兴……总共59家</p><p style=\"margin-top: 0px; margin-bottom: 30px; padding: 0px; text-size-adjust: 100%; font-family: &quot;Microsoft Yahei&quot;, 微软雅黑, &quot;STHeiti Light&quot;, 华文细黑, SimSun, 宋体, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal;\">　　可以看到，由华为主导的Polar方案这次明显是有备而来，而且联想也的确在这一轮投票给了华为没错。但是，由于Polar的支持者们所占的投票权重不够高，因此最终结果还是由LDPC码拿到了5G移动宽带数据信道的全部份额。</p><p style=\"margin-top: 0px; margin-bottom: 30px; padding: 0px; text-size-adjust: 100%; font-family: &quot;Microsoft Yahei&quot;, 微软雅黑, &quot;STHeiti Light&quot;, 华文细黑, SimSun, 宋体, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal;\">　　这样一来，Polar码唯一的希望就只剩下5G移动宽带控制信道一途。在最终的这一次表述和投票中，中国企业（包括联想以及其他的全球盟友们）展现了真正的团结。对于这段历史，来自中国台湾省的数名参会代表有着生动的描述：</p><div class=\"img_wrapper\" style=\"text-align: center; font-family: &quot;Microsoft Yahei&quot;, 微软雅黑, &quot;STHeiti Light&quot;, 华文细黑, SimSun, 宋体, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal;\"><img src=\"{#ZC_BLOG_HOST#}zb_users/upload/2018/05/20180513090734_21030.jpg\" alt=\"\" style=\"border: 0px none; vertical-align: middle; display: block; margin: 0px auto; max-width: 640px;\"/><span class=\"img_descr\" style=\"line-height: 20px; padding: 6px 0px; font-size: 16px; margin: 5px auto; display: inline-block; zoom: 1; text-align: left;\"></span></div><div class=\"img_wrapper\" style=\"text-align: center; font-family: &quot;Microsoft Yahei&quot;, 微软雅黑, &quot;STHeiti Light&quot;, 华文细黑, SimSun, 宋体, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal;\"><img src=\"{#ZC_BLOG_HOST#}zb_users/upload/2018/05/20180513090734_67498.jpg\" alt=\"\" style=\"border: 0px none; vertical-align: middle; display: block; margin: 0px auto; max-width: 640px;\"/><span class=\"img_descr\" style=\"line-height: 20px; padding: 6px 0px; font-size: 16px; margin: 5px auto; display: inline-block; zoom: 1; text-align: left;\"></span></div><p style=\"margin-top: 0px; margin-bottom: 30px; padding: 0px; text-size-adjust: 100%; font-family: &quot;Microsoft Yahei&quot;, 微软雅黑, &quot;STHeiti Light&quot;, 华文细黑, SimSun, 宋体, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal;\">　　其实，从技术上来讲，5G数据信道追求的是传输速率，主要都是大型封包，这一块LDPC的性能的确有明显优势（这也是为何第一次投票，LDPC极其顺利拿下数据信道长码部分的原因）。</p><p style=\"margin-top: 0px; margin-bottom: 30px; padding: 0px; text-size-adjust: 100%; font-family: &quot;Microsoft Yahei&quot;, 微软雅黑, &quot;STHeiti Light&quot;, 华文细黑, SimSun, 宋体, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal;\">　　而对于5G控制信道来说，本身传输的数据量小，比起速度更注重可靠性，就恰好是Polar码的拿手部分了。</p><p style=\"margin-top: 0px; margin-bottom: 30px; padding: 0px; text-size-adjust: 100%; font-family: &quot;Microsoft Yahei&quot;, 微软雅黑, &quot;STHeiti Light&quot;, 华文细黑, SimSun, 宋体, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal;\">　　最终，Polar码在本身有技术优势，加上中国厂商们的集体支持下，成功被确立为5G移动宽带控制信道的国际编码标准。</p><p style=\"margin-top: 0px; margin-bottom: 30px; padding: 0px; text-size-adjust: 100%; font-family: &quot;Microsoft Yahei&quot;, 微软雅黑, &quot;STHeiti Light&quot;, 华文细黑, SimSun, 宋体, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal;\">　　这，就是近日又被炒作起来的，2016年3GPP三场会议的完整过程。</p><p style=\"margin-top: 0px; margin-bottom: 30px; padding: 0px; text-size-adjust: 100%; font-family: &quot;Microsoft Yahei&quot;, 微软雅黑, &quot;STHeiti Light&quot;, 华文细黑, SimSun, 宋体, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal;\">　　<strong>关键问题来了，联想扮演了怎样的角色？</strong></p><p style=\"margin-top: 0px; margin-bottom: 30px; padding: 0px; text-size-adjust: 100%; font-family: &quot;Microsoft Yahei&quot;, 微软雅黑, &quot;STHeiti Light&quot;, 华文细黑, SimSun, 宋体, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal;\">　　用最简单的一句话概括的话，其实联想在整个三场会议中，基本上没起到什么作用。它并没有独自发表技术成果。也没有独自为某一个标准站台。</p><p style=\"margin-top: 0px; margin-bottom: 30px; padding: 0px; text-size-adjust: 100%; font-family: &quot;Microsoft Yahei&quot;, 微软雅黑, &quot;STHeiti Light&quot;, 华文细黑, SimSun, 宋体, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal;\">　　而从三次投票的结果来看，联想参加了全部的三次投票，在第一次投票（究竟一种还是多种编码制式）的时候投给了LDPC，之后的两次投票（数据信道短码制式、控制信道制式）中则全部投给了Polar。</p><p style=\"margin-top: 0px; margin-bottom: 30px; padding: 0px; text-size-adjust: 100%; font-family: &quot;Microsoft Yahei&quot;, 微软雅黑, &quot;STHeiti Light&quot;, 华文细黑, SimSun, 宋体, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal;\">　　总结一下就是：联想在大家都不看好Polar的时候，选了高通和华为当时都力挺的LDPC，而在中国企业团结起来支持Polar的时候，也跟着一起挺了一把华为。</p><div class=\"img_wrapper\" style=\"text-align: center; font-family: &quot;Microsoft Yahei&quot;, 微软雅黑, &quot;STHeiti Light&quot;, 华文细黑, SimSun, 宋体, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal;\"><img src=\"{#ZC_BLOG_HOST#}zb_users/upload/2018/05/20180513090734_73711.jpg\" alt=\"\" style=\"border: 0px none; vertical-align: middle; display: block; margin: 0px auto; max-width: 640px;\"/><span class=\"img_descr\" style=\"line-height: 20px; padding: 6px 0px; font-size: 16px; margin: 5px auto; display: inline-block; zoom: 1; text-align: left;\"></span></div><p style=\"margin-top: 0px; margin-bottom: 30px; padding: 0px; text-size-adjust: 100%; font-family: &quot;Microsoft Yahei&quot;, 微软雅黑, &quot;STHeiti Light&quot;, 华文细黑, SimSun, 宋体, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal;\">　　这个结果，其实就能看出和互联网上疯传的某些说法，其实是有着很大的差异的。</p><p style=\"margin-top: 0px; margin-bottom: 30px; padding: 0px; text-size-adjust: 100%; font-family: &quot;Microsoft Yahei&quot;, 微软雅黑, &quot;STHeiti Light&quot;, 华文细黑, SimSun, 宋体, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal;\">　　就在今日早间，联想官方发表了正式回应，主要表明两点：</p><p style=\"margin-top: 0px; margin-bottom: 30px; padding: 0px; text-size-adjust: 100%; font-family: &quot;Microsoft Yahei&quot;, 微软雅黑, &quot;STHeiti Light&quot;, 华文细黑, SimSun, 宋体, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal;\">　　① 联想及旗下的摩托罗拉移动，在相关投票上所投的都是赞成票；</p><p style=\"margin-top: 0px; margin-bottom: 30px; padding: 0px; text-size-adjust: 100%; font-family: &quot;Microsoft Yahei&quot;, 微软雅黑, &quot;STHeiti Light&quot;, 华文细黑, SimSun, 宋体, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal;\">　　② 联想一直支持中国5G技术的发展，并全力推动5G技术和相关产品的研发。</p><p style=\"margin-top: 0px; margin-bottom: 30px; padding: 0px; text-size-adjust: 100%; font-family: &quot;Microsoft Yahei&quot;, 微软雅黑, &quot;STHeiti Light&quot;, 华文细黑, SimSun, 宋体, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal;\">　　或许，比起单纯的diss联想或者旧事重提，这样的结论更加真实客观，无疑也更加有趣。</p><p><br/></p>', 1526173564, 2, 89, '', 'a:5:{s:10:\"Blogs_wzlx\";s:1:\"1\";s:12:\"Blogs_zuozhe\";s:18:\"新浪科技综合\";s:13:\"Blogs_laiyuan\";s:63:\"http://tech.sina.com.cn/it/2018-05-11/doc-ihamfahw6615192.shtml\";s:15:\"os_wxapp_images\";s:611:\"http://n.sinaimg.cn/tech/crawl/49/w550h299/20180511/Ohi7-hamfahw6594995.jpg,http://n.sinaimg.cn/tech/crawl/2/w550h252/20180511/uhzk-hamfahw6595018.jpg,http://n.sinaimg.cn/tech/crawl/775/w550h225/20180511/eIjD-hamfahw6595039.jpg,http://n.sinaimg.cn/tech/crawl/666/w550h116/20180511/kEx3-hamfahw6595062.jpg,http://n.sinaimg.cn/tech/crawl/52/w550h302/20180511/4SkE-hamfahw6595083.jpg,http://n.sinaimg.cn/tech/crawl/650/w550h100/20180511/SHWz-hamfahw6595117.jpg,http://n.sinaimg.cn/tech/crawl/704/w550h154/20180511/6IQ5-hamfahw6595137.jpg,http://n.sinaimg.cn/tech/crawl/116/w550h366/20180511/4eFN-hamfahw6595154.jpg\";s:21:\"os_wxapp_images_count\";i:8;}', '{#ZC_BLOG_HOST#}zb_users/upload/2018/05/20180513090733_92672.jpg|{#ZC_BLOG_HOST#}zb_users/upload/2018/05/20180513090733_18774.jpg|{#ZC_BLOG_HOST#}zb_users/upload/2018/05/20180513090733_49744.jpg|{#ZC_BLOG_HOST#}zb_users/upload/2018/05/20180513090734_87675.jpg|{#ZC_BLOG_HOST#}zb_users/upload/2018/05/20180513090734_48708.jpg|{#ZC_BLOG_HOST#}zb_users/upload/2018/05/20180513090734_21030.jpg|{#ZC_BLOG_HOST#}zb_users/upload/2018/05/20180513090734_67498.jpg|{#ZC_BLOG_HOST#}zb_users/upload/2018/05/20180513090734_73711.jpg'),
(12, 3, 1, '{5}{6}{7}{8}', 0, 0, '', 0, 0, '遇害空姐父亲：遗憾凶手未被严惩 将追究滴滴责任', '遇害空姐父亲空姐照片（图来自网络）　　5月12日上午，经过DNA样本坚定，确认当天凌晨在郑州西南三环一水渠内打捞上来的男尸即为杀害空姐李某珠的犯罪嫌疑人刘某华。北京青年报记者今日上午从遇害空姐李某珠父亲那里了解到，亲属们是在当天清早得知犯罪嫌疑人尸体已被发现，几位亲朋随后前去打捞现场查看，但李先生本人没有过去现场，“我不敢去现场，太恨这个凶手了，现在知道他已经死了，从内心里来说，很遗憾他没有能够得到法律的严惩，下一步，我要追究顺风车公司的责任。”（北青报记者张香梅 马金凤 实习生 付垚）<!--autointro-->', '<div class=\"img_wrapper\" style=\"text-align: center; font-family: &quot;Microsoft Yahei&quot;, 微软雅黑, &quot;STHeiti Light&quot;, 华文细黑, SimSun, 宋体, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal;\"><img src=\"{#ZC_BLOG_HOST#}zb_users/upload/2018/05/20180513085745_28009.jpg\" alt=\"遇害空姐父亲\" data-link=\"\" style=\"border: 0px none; vertical-align: middle; display: block; margin: 0px auto; max-width: 640px;\"/><span class=\"img_descr\" style=\"line-height: 20px; padding: 6px 0px; font-size: 16px; margin: 5px auto; display: inline-block; zoom: 1; text-align: left;\">遇害空姐父亲</span></div><div class=\"img_wrapper\" style=\"text-align: center; font-family: &quot;Microsoft Yahei&quot;, 微软雅黑, &quot;STHeiti Light&quot;, 华文细黑, SimSun, 宋体, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal;\"><img src=\"{#ZC_BLOG_HOST#}zb_users/upload/2018/05/20180513085745_20511.jpg\" alt=\"空姐照片(图来自网络)\" data-link=\"\" style=\"border: 0px none; vertical-align: middle; display: block; margin: 0px auto; max-width: 640px;\"/><span class=\"img_descr\" style=\"line-height: 20px; padding: 6px 0px; font-size: 16px; margin: 5px auto; display: inline-block; zoom: 1; text-align: left;\">空姐照片（图来自网络）</span></div><p style=\"margin-top: 0px; margin-bottom: 30px; padding: 0px; text-size-adjust: 100%; font-family: &quot;Microsoft Yahei&quot;, 微软雅黑, &quot;STHeiti Light&quot;, 华文细黑, SimSun, 宋体, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal;\">　　5月12日上午，经过DNA样本坚定，确认当天凌晨在郑州西南三环一水渠内打捞上来的男尸即为杀害空姐李某珠的犯罪嫌疑人刘某华。北京青年报记者今日上午从遇害空姐李某珠父亲那里了解到，亲属们是在当天清早得知犯罪嫌疑人尸体已被发现，几位亲朋随后前去打捞现场查看，但李先生本人没有过去现场，“我不敢去现场，太恨这个凶手了，现在知道他已经死了，从内心里来说，很遗憾他没有能够得到法律的严惩，下一步，我要追究顺风车公司的责任。”（北青报记者张香梅 马金凤 实习生 付垚）</p><p><br/></p>', 1526172889, 0, 24, '', 'a:5:{s:10:\"Blogs_wzlx\";s:1:\"2\";s:12:\"Blogs_zuozhe\";s:15:\"北京青年报\";s:13:\"Blogs_laiyuan\";s:62:\"http://tech.sina.com.cn/i/2018-05-12/doc-ihamfahw9773791.shtml\";s:15:\"os_wxapp_images\";s:129:\"{#ZC_BLOG_HOST#}zb_users/upload/2018/05/20180513085745_28009.jpg,{#ZC_BLOG_HOST#}zb_users/upload/2018/05/20180513085745_20511.jpg\";s:21:\"os_wxapp_images_count\";i:2;}', '{#ZC_BLOG_HOST#}zb_users/upload/2018/05/20180513085745_28009.jpg|{#ZC_BLOG_HOST#}zb_users/upload/2018/05/20180513085745_20511.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `eh_regpage`
--

CREATE TABLE `eh_regpage` (
  `reg_ID` int(11) NOT NULL,
  `reg_InviteCode` varchar(50) NOT NULL DEFAULT '',
  `reg_Level` int(11) NOT NULL DEFAULT '5',
  `reg_AuthorID` int(11) NOT NULL DEFAULT '0',
  `reg_IsUsed` tinyint(1) NOT NULL DEFAULT '0',
  `reg_Intro` longtext NOT NULL,
  `reg_IP` varchar(50) NOT NULL DEFAULT '',
  `reg_Time` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `eh_regpage`
--

INSERT INTO `eh_regpage` (`reg_ID`, `reg_InviteCode`, `reg_Level`, `reg_AuthorID`, `reg_IsUsed`, `reg_Intro`, `reg_IP`, `reg_Time`) VALUES
(1, '5af77f6ecb38b685667710', 5, 0, 0, '', '', 0),
(2, '5af77f6ecb4a6283084482', 5, 0, 0, '', '', 0),
(3, '5af77f6ecb55b226250759', 5, 0, 0, '', '', 0),
(4, '5af77f6ecb5f4752605060', 5, 0, 0, '', '', 0),
(5, '5af77f6ecb699722927006', 5, 0, 0, '', '', 0),
(6, '5af77f6ecb72f401643027', 5, 0, 0, '', '', 0),
(7, '5af77f6ecb7c0692828125', 5, 0, 0, '', '', 0),
(8, '5af77f6ecb850893415856', 5, 0, 0, '', '', 0),
(9, '5af77f6ecb8f1510479354', 5, 0, 0, '', '', 0),
(10, '5af77f6ecb981000970106', 5, 0, 0, '', '', 0),
(11, '5af77f6ecba0f023723824', 5, 0, 0, '', '', 0),
(12, '5af77f6ecbab4623542402', 5, 0, 0, '', '', 0),
(13, '5af77f6ecbb42790205046', 5, 0, 0, '', '', 0),
(14, '5af77f6ecbbce664525267', 5, 0, 0, '', '', 0),
(15, '5af77f6ecbc5b457878210', 5, 0, 0, '', '', 0),
(16, '5af77f6ecbcf3878366322', 5, 0, 0, '', '', 0),
(17, '5af77f6ecbd80886617012', 5, 0, 0, '', '', 0),
(18, '5af77f6ecbe0d624867960', 5, 0, 0, '', '', 0),
(19, '5af77f6ecbeba954304423', 5, 0, 0, '', '', 0),
(20, '5af77f6ecbf47975393825', 5, 0, 0, '', '', 0),
(21, '5af77f6ecbfd4315608311', 5, 0, 0, '', '', 0),
(22, '5af77f6ecc05f073123676', 5, 0, 0, '', '', 0),
(23, '5af77f6ecc0f7794148128', 5, 0, 0, '', '', 0),
(24, '5af77f6ecc183583806675', 5, 0, 0, '', '', 0),
(25, '5af77f6ecc20f446033755', 5, 0, 0, '', '', 0),
(26, '5af77f6ecc2ab942030684', 5, 0, 0, '', '', 0),
(27, '5af77f6ecc337319804123', 5, 0, 0, '', '', 0),
(28, '5af77f6ecc3c2111597969', 5, 0, 0, '', '', 0),
(29, '5af77f6ecc45e981093869', 5, 0, 0, '', '', 0),
(30, '5af77f6ecc4ec731031623', 5, 0, 0, '', '', 0),
(31, '5af77f6ecc577767969132', 5, 0, 0, '', '', 0),
(32, '5af77f6ecc602319797834', 5, 0, 0, '', '', 0),
(33, '5af77f6ecc69e243615289', 5, 0, 0, '', '', 0),
(34, '5af77f6ecc72a657197974', 5, 0, 0, '', '', 0),
(35, '5af77f6ecc7b5590756236', 5, 0, 0, '', '', 0),
(36, '5af77f6ecc84b826768563', 5, 0, 0, '', '', 0),
(37, '5af77f6ecc8da891816548', 5, 0, 0, '', '', 0),
(38, '5af77f6ecc96b943874595', 5, 0, 0, '', '', 0),
(39, '5af77f6ecca08532297442', 5, 0, 0, '', '', 0),
(40, '5af77f6ecca98222724797', 5, 0, 0, '', '', 0),
(41, '5af77f6eccb24311076353', 5, 0, 0, '', '', 0),
(42, '5af77f6eccbb0299854024', 5, 0, 0, '', '', 0),
(43, '5af77f6eccc45941890519', 5, 0, 0, '', '', 0),
(44, '5af77f6ecccd2716637636', 5, 0, 0, '', '', 0),
(45, '5af77f6eccd5d207827434', 5, 0, 0, '', '', 0),
(46, '5af77f6eccdf5135819593', 5, 0, 0, '', '', 0),
(47, '5af77f6eccedd632622336', 5, 0, 0, '', '', 0),
(48, '5af77f6eccf75296121675', 5, 0, 0, '', '', 0),
(49, '5af77f6ecd00d889420478', 5, 0, 0, '', '', 0),
(50, '5af77f6ecd09d200696684', 5, 0, 0, '', '', 0),
(51, '5af77f6ecd12a366118658', 5, 0, 0, '', '', 0),
(52, '5af77f6ecd1b5198613612', 5, 0, 0, '', '', 0),
(53, '5af77f6ecd251515351025', 5, 0, 0, '', '', 0),
(54, '5af77f6ecd2dc887314511', 5, 0, 0, '', '', 0),
(55, '5af77f6ecd367914366937', 5, 0, 0, '', '', 0),
(56, '5af77f6ecd402971606906', 5, 0, 0, '', '', 0),
(57, '5af77f6ecd490439320074', 5, 4, 0, '', '221.234.230.4', 1526279252),
(58, '5af77f6ecd521861354432', 5, 0, 0, '', '', 0),
(59, '5af77f6ecd5ac289985513', 5, 0, 0, '', '', 0),
(60, '5af77f6ecd647059257854', 5, 0, 0, '', '', 0),
(61, '5af77f6ecd6d4664381728', 5, 0, 0, '', '', 0),
(62, '5af77f6ecd75f549303536', 5, 0, 0, '', '', 0),
(63, '5af77f6ecd7f2780918004', 5, 0, 0, '', '', 0),
(64, '5af77f6ecd87f613814847', 5, 0, 0, '', '', 0),
(65, '5af77f6ecd90a370859895', 5, 0, 0, '', '', 0),
(66, '5af77f6ecd9a0669979045', 5, 0, 0, '', '', 0),
(67, '5af77f6ecda30408841476', 5, 0, 0, '', '', 0),
(68, '5af77f6ecdac1436950288', 5, 0, 0, '', '', 0),
(69, '5af77f6ecdb4d093897515', 5, 0, 0, '', '', 0),
(70, '5af77f6ecdbe4397552526', 5, 0, 0, '', '', 0),
(71, '5af77f6ecdc71510059178', 5, 0, 0, '', '', 0),
(72, '5af77f6ecdcfc379661349', 5, 0, 0, '', '', 0),
(73, '5af77f6ecdd92475679478', 5, 0, 0, '', '', 0),
(74, '5af77f6ecde22613165000', 5, 0, 0, '', '', 0),
(75, '5af77f6ecdead619240731', 5, 0, 0, '', '', 0),
(76, '5af77f6ecdf38096065935', 5, 0, 0, '', '', 0),
(77, '5af77f6ecdfd3571756370', 5, 0, 0, '', '', 0),
(78, '5af77f6ece05f726516622', 5, 0, 0, '', '', 0),
(79, '5af77f6ece0ea980520517', 5, 0, 0, '', '', 0),
(80, '5af77f6ece19d283000736', 5, 0, 0, '', '', 0),
(81, '5af77f6ece22e564469854', 5, 0, 0, '', '', 0),
(82, '5af77f6ece2ba585592859', 5, 0, 0, '', '', 0),
(83, '5af77f6ece346959403134', 5, 0, 0, '', '', 0),
(84, '5af77f6ece3dc980441663', 5, 0, 0, '', '', 0),
(85, '5af77f6ece468786843029', 5, 0, 0, '', '', 0),
(86, '5af77f6ece4f3011229723', 5, 0, 0, '', '', 0),
(87, '5af77f6ece594248417521', 5, 0, 0, '', '', 0),
(88, '5af77f6ece622951926482', 5, 0, 0, '', '', 0),
(89, '5af77f6ece6af840161522', 5, 0, 0, '', '', 0),
(90, '5af77f6ece73a854136289', 5, 0, 0, '', '', 0),
(91, '5af77f6ece7d1190656640', 5, 0, 0, '', '', 0),
(92, '5af77f6ece85e341449222', 5, 0, 0, '', '', 0),
(93, '5af77f6ece8e9302326332', 5, 0, 0, '', '', 0),
(94, '5af77f6ece982723283541', 5, 0, 0, '', '', 0),
(95, '5af77f6ecea0f780739377', 5, 0, 0, '', '', 0),
(96, '5af77f6ecea9b616791054', 5, 0, 0, '', '', 0),
(97, '5af77f6eceb2d529065594', 5, 0, 0, '', '', 0),
(98, '5af77f6ecebc3719943802', 5, 0, 0, '', '', 0),
(99, '5af77f6ecec4f140773521', 5, 0, 0, '', '', 0),
(100, '5af77f6ececdb316360247', 5, 0, 0, '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `eh_tag`
--

CREATE TABLE `eh_tag` (
  `tag_ID` int(11) NOT NULL,
  `tag_Name` varchar(255) NOT NULL DEFAULT '',
  `tag_Order` int(11) NOT NULL DEFAULT '0',
  `tag_Count` int(11) NOT NULL DEFAULT '0',
  `tag_Alias` varchar(255) NOT NULL DEFAULT '',
  `tag_Intro` text NOT NULL,
  `tag_Template` varchar(50) NOT NULL DEFAULT '',
  `tag_Meta` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `eh_tag`
--

INSERT INTO `eh_tag` (`tag_ID`, `tag_Name`, `tag_Order`, `tag_Count`, `tag_Alias`, `tag_Intro`, `tag_Template`, `tag_Meta`) VALUES
(1, '新闻', 0, 0, '', '', '', ''),
(2, '学校综合', 0, 0, '', '', '', ''),
(3, '校宣传部', 0, 0, '', '', '', ''),
(4, '校内调研', 0, 0, '', '', '', ''),
(8, '热议新闻', 0, 1, '', '', '', ''),
(7, '父亲', 0, 1, '', '', '', ''),
(6, '凶手', 0, 1, '', '', '', ''),
(5, '空姐', 0, 1, '', '', '', ''),
(9, '联想', 0, 1, '', '', '', ''),
(10, '华为', 0, 1, '', '', '', ''),
(11, '5G', 0, 1, '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `eh_upload`
--

CREATE TABLE `eh_upload` (
  `ul_ID` int(11) NOT NULL,
  `ul_AuthorID` int(11) NOT NULL DEFAULT '0',
  `ul_Size` int(11) NOT NULL DEFAULT '0',
  `ul_Name` varchar(255) NOT NULL DEFAULT '',
  `ul_SourceName` varchar(255) NOT NULL DEFAULT '',
  `ul_MimeType` varchar(50) NOT NULL DEFAULT '',
  `ul_PostTime` int(11) NOT NULL DEFAULT '0',
  `ul_DownNums` int(11) NOT NULL DEFAULT '0',
  `ul_LogID` int(11) NOT NULL DEFAULT '0',
  `ul_Intro` text NOT NULL,
  `ul_Meta` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `eh_upload`
--

INSERT INTO `eh_upload` (`ul_ID`, `ul_AuthorID`, `ul_Size`, `ul_Name`, `ul_SourceName`, `ul_MimeType`, `ul_PostTime`, `ul_DownNums`, `ul_LogID`, `ul_Intro`, `ul_Meta`) VALUES
(1, 1, 10247, '201805131526170646580546.png', '152617061349940.png', 'image/png', 1526170646, 0, 0, '', ''),
(2, 1, 10247, '201805131526170702264049.png', '152617061349940.png', 'image/png', 1526170702, 0, 0, '', ''),
(3, 1, 10247, '201805131526170716197744.png', '152617061349940.png', 'image/png', 1526170716, 0, 0, '', ''),
(37, 1, 176591, '20180516163601152645976150187.png', 'OBSo-hamfahw0601231.png', 'image/png', 1526459761, 0, 0, '', ''),
(36, 1, 39073, '20180516163552152645975263791.jpg', 'B1SO-hamfahw7985845.jpg', 'image/jpeg', 1526459752, 0, 0, '', ''),
(35, 1, 22407, '20180514095405152626284532074.jpg', 'QQ20180513-0.jpg', 'image/jpeg', 1526262845, 0, 0, '', ''),
(16, 1, 0, '20180513083750_93855.jpg', '20180513083750_93855.jpg', 'image/jpg', 1526171930, 0, 0, '大谋工具箱-远程图片本地化', ''),
(17, 1, 261, '20180513083825_69659.jpg', '20180513083825_69659.jpg', '', 1526171965, 0, 0, '', ''),
(18, 1, 261, '20180513083918_96992.jpg', '20180513083918_96992.jpg', '', 1526172018, 0, 0, '', ''),
(19, 1, 261, '20180513084121_45842.jpg', '20180513084121_45842.jpg', '', 1526172141, 0, 0, '', ''),
(20, 1, 261, '20180513084202_51518.jpg', '20180513084202_51518.jpg', '', 1526172182, 0, 0, '', ''),
(21, 1, 261, '20180513084521_44259.jpg', '20180513084521_44259.jpg', '', 1526172381, 0, 0, '', ''),
(22, 1, 43982, '20180513084736_44953.jpg', '20180513084736_44953.jpg', 'image/jpg', 1526172456, 0, 0, '大谋工具箱-远程图片本地化', ''),
(23, 1, 0, '20180513084642_52066.jpg', '20180513084642_52066.jpg', 'image/jpg', 1526172462, 0, 0, '大谋工具箱-远程图片本地化', ''),
(24, 1, 33299, '20180513085745_28009.jpg', '20180513085745_28009.jpg', 'image/jpg', 1526173065, 0, 0, '大谋工具箱-远程图片本地化', ''),
(25, 1, 22458, '20180513085745_20511.jpg', '20180513085745_20511.jpg', 'image/jpg', 1526173065, 0, 0, '大谋工具箱-远程图片本地化', ''),
(26, 1, 17361, '20180513090733_92672.jpg', '20180513090733_92672.jpg', 'image/jpg', 1526173653, 0, 0, '大谋工具箱-远程图片本地化', ''),
(27, 1, 29103, '20180513090733_18774.jpg', '20180513090733_18774.jpg', 'image/jpg', 1526173653, 0, 0, '大谋工具箱-远程图片本地化', ''),
(28, 1, 28486, '20180513090733_49744.jpg', '20180513090733_49744.jpg', 'image/jpg', 1526173654, 0, 0, '大谋工具箱-远程图片本地化', ''),
(29, 1, 11308, '20180513090734_87675.jpg', '20180513090734_87675.jpg', 'image/jpg', 1526173654, 0, 0, '大谋工具箱-远程图片本地化', ''),
(30, 1, 35182, '20180513090734_48708.jpg', '20180513090734_48708.jpg', 'image/jpg', 1526173654, 0, 0, '大谋工具箱-远程图片本地化', ''),
(31, 1, 14154, '20180513090734_21030.jpg', '20180513090734_21030.jpg', 'image/jpg', 1526173654, 0, 0, '大谋工具箱-远程图片本地化', ''),
(32, 1, 21266, '20180513090734_67498.jpg', '20180513090734_67498.jpg', 'image/jpg', 1526173654, 0, 0, '大谋工具箱-远程图片本地化', ''),
(33, 1, 29604, '20180513090734_73711.jpg', '20180513090734_73711.jpg', 'image/jpg', 1526173654, 0, 0, '大谋工具箱-远程图片本地化', ''),
(34, 1, 329417, '20180513093009152617500914576.png', 'QQ20180513-0.png', 'image/png', 1526175009, 0, 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `eh_wxapp_feedback`
--

CREATE TABLE `eh_wxapp_feedback` (
  `feedb_ID` int(11) NOT NULL COMMENT '反馈id',
  `feedb_Time` int(11) NOT NULL DEFAULT '0' COMMENT '反馈时间',
  `feedb_Content` text NOT NULL COMMENT '反馈内容',
  `feedb_Contact` text NOT NULL COMMENT '联系方式'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `eh_wxapp_feedback`
--

INSERT INTO `eh_wxapp_feedback` (`feedb_ID`, `feedb_Time`, `feedb_Content`, `feedb_Contact`) VALUES
(1, 0, '你号', '13487549879'),
(2, 0, '13487549879', '13487549879');

-- --------------------------------------------------------

--
-- Table structure for table `eh_wxapp_repair`
--

CREATE TABLE `eh_wxapp_repair` (
  `rpr_ID` int(11) NOT NULL COMMENT '报修申请ID',
  `rpr_Time` int(11) NOT NULL DEFAULT '0' COMMENT '报修时间',
  `rpr_Dormitory` int(4) NOT NULL COMMENT '报修楼栋',
  `rpr_Room` int(4) NOT NULL COMMENT '报修寝室',
  `rpr_Content` text NOT NULL COMMENT '报修内容',
  `rpr_Contact` text NOT NULL COMMENT '联系方式'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='报修表单';

--
-- Dumping data for table `eh_wxapp_repair`
--

INSERT INTO `eh_wxapp_repair` (`rpr_ID`, `rpr_Time`, `rpr_Dormitory`, `rpr_Room`, `rpr_Content`, `rpr_Contact`) VALUES
(1, 0, 0, 2147483647, '13487549879', '13487549879'),
(2, 0, 0, 113, '13487549879', '13487549879'),
(3, 0, 13, 113, '13487549879', '13487549879');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `eh_blog_plugin_Blogs_prise`
--
ALTER TABLE `eh_blog_plugin_Blogs_prise`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `eh_category`
--
ALTER TABLE `eh_category`
  ADD PRIMARY KEY (`cate_ID`),
  ADD KEY `eh_cate_Order` (`cate_Order`);

--
-- Indexes for table `eh_comment`
--
ALTER TABLE `eh_comment`
  ADD PRIMARY KEY (`comm_ID`),
  ADD KEY `eh_comm_LRI` (`comm_LogID`,`comm_RootID`,`comm_IsChecking`),
  ADD KEY `eh_comm_IsChecking` (`comm_IsChecking`);

--
-- Indexes for table `eh_config`
--
ALTER TABLE `eh_config`
  ADD PRIMARY KEY (`conf_ID`),
  ADD KEY `eh_conf_Name` (`conf_Name`);

--
-- Indexes for table `eh_member`
--
ALTER TABLE `eh_member`
  ADD PRIMARY KEY (`mem_ID`),
  ADD KEY `eh_mem_Name` (`mem_Name`),
  ADD KEY `eh_mem_Alias` (`mem_Alias`),
  ADD KEY `eh_mem_Level` (`mem_Level`);

--
-- Indexes for table `eh_module`
--
ALTER TABLE `eh_module`
  ADD PRIMARY KEY (`mod_ID`);

--
-- Indexes for table `eh_os_wxapp_one_swiper`
--
ALTER TABLE `eh_os_wxapp_one_swiper`
  ADD PRIMARY KEY (`wxapp_swiper_ID`);

--
-- Indexes for table `eh_os_wxapp_session`
--
ALTER TABLE `eh_os_wxapp_session`
  ADD PRIMARY KEY (`wxapp_session_ID`);

--
-- Indexes for table `eh_os_wxapp_users`
--
ALTER TABLE `eh_os_wxapp_users`
  ADD PRIMARY KEY (`wxapp_user_ID`);

--
-- Indexes for table `eh_post`
--
ALTER TABLE `eh_post`
  ADD PRIMARY KEY (`log_ID`),
  ADD KEY `eh_log_TPISC` (`log_Type`,`log_PostTime`,`log_IsTop`,`log_Status`,`log_CateID`),
  ADD KEY `eh_log_VTSC` (`log_ViewNums`,`log_Type`,`log_Status`,`log_CateID`);

--
-- Indexes for table `eh_regpage`
--
ALTER TABLE `eh_regpage`
  ADD PRIMARY KEY (`reg_ID`);

--
-- Indexes for table `eh_tag`
--
ALTER TABLE `eh_tag`
  ADD PRIMARY KEY (`tag_ID`);

--
-- Indexes for table `eh_upload`
--
ALTER TABLE `eh_upload`
  ADD PRIMARY KEY (`ul_ID`);

--
-- Indexes for table `eh_wxapp_feedback`
--
ALTER TABLE `eh_wxapp_feedback`
  ADD PRIMARY KEY (`feedb_ID`);

--
-- Indexes for table `eh_wxapp_repair`
--
ALTER TABLE `eh_wxapp_repair`
  ADD PRIMARY KEY (`rpr_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `eh_blog_plugin_Blogs_prise`
--
ALTER TABLE `eh_blog_plugin_Blogs_prise`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `eh_category`
--
ALTER TABLE `eh_category`
  MODIFY `cate_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `eh_comment`
--
ALTER TABLE `eh_comment`
  MODIFY `comm_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `eh_config`
--
ALTER TABLE `eh_config`
  MODIFY `conf_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `eh_member`
--
ALTER TABLE `eh_member`
  MODIFY `mem_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `eh_module`
--
ALTER TABLE `eh_module`
  MODIFY `mod_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `eh_os_wxapp_one_swiper`
--
ALTER TABLE `eh_os_wxapp_one_swiper`
  MODIFY `wxapp_swiper_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `eh_os_wxapp_session`
--
ALTER TABLE `eh_os_wxapp_session`
  MODIFY `wxapp_session_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `eh_os_wxapp_users`
--
ALTER TABLE `eh_os_wxapp_users`
  MODIFY `wxapp_user_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `eh_post`
--
ALTER TABLE `eh_post`
  MODIFY `log_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `eh_regpage`
--
ALTER TABLE `eh_regpage`
  MODIFY `reg_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `eh_tag`
--
ALTER TABLE `eh_tag`
  MODIFY `tag_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `eh_upload`
--
ALTER TABLE `eh_upload`
  MODIFY `ul_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `eh_wxapp_feedback`
--
ALTER TABLE `eh_wxapp_feedback`
  MODIFY `feedb_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '反馈id', AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `eh_wxapp_repair`
--
ALTER TABLE `eh_wxapp_repair`
  MODIFY `rpr_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '报修申请ID', AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
