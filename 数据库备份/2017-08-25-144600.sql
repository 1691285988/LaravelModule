-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2017-08-25 14:44:28
-- 服务器版本： 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel54`
--

-- --------------------------------------------------------

--
-- 表的结构 `admin_permissions`
--

CREATE TABLE `admin_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `admin_permissions`
--

INSERT INTO `admin_permissions` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'system', '系统管理', '2017-08-15 08:00:22', '2017-08-15 08:00:22'),
(2, 'post', '文章管理', '2017-08-15 08:01:07', '2017-08-15 08:01:07'),
(3, 'topic', '专题管理', '2017-08-15 09:21:19', '2017-08-15 09:21:19'),
(4, 'notice', '通知管理', '2017-08-15 09:21:43', '2017-08-15 09:21:43');

-- --------------------------------------------------------

--
-- 表的结构 `admin_permission_role`
--

CREATE TABLE `admin_permission_role` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `admin_permission_role`
--

INSERT INTO `admin_permission_role` (`id`, `permission_id`, `role_id`, `created_at`, `updated_at`) VALUES
(3, 2, 1, NULL, NULL),
(4, 1, 1, NULL, NULL),
(5, 3, 1, NULL, NULL),
(6, 4, 1, NULL, NULL),
(7, 2, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, '全权限管理员', '附上,全权限管理员', '2017-08-15 08:01:47', '2017-08-15 08:01:47'),
(2, '文章管理员', '附上,文章管理员', '2017-08-15 08:02:33', '2017-08-15 08:02:33');

-- --------------------------------------------------------

--
-- 表的结构 `admin_role_user`
--

CREATE TABLE `admin_role_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `admin_role_user`
--

INSERT INTO `admin_role_user` (`id`, `role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(3, 1, 1, NULL, NULL),
(4, 2, 2, NULL, NULL),
(5, 1, 2, NULL, NULL),
(6, 2, 22, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `admin_users`
--

INSERT INTO `admin_users` (`id`, `name`, `password`, `created_at`, `updated_at`) VALUES
(1, 'test1', '$2y$10$ikeNyR7tiO5GPjo5Y2srEO5YsfACuR5ZaCeoTVjuznWHDgm9PuiIG', '2017-08-13 13:44:44', '2017-08-13 13:44:44'),
(2, 'Alex Greenholt', '$2y$10$fABOVzF1jKAFfdMUNCnhxONvknDW7lvzCvmj9wN0bscvwrh.sFg2O', '2017-08-14 02:42:44', '2017-08-14 02:42:44'),
(3, 'Bradford Bogan', '$2y$10$fABOVzF1jKAFfdMUNCnhxONvknDW7lvzCvmj9wN0bscvwrh.sFg2O', '2017-08-14 02:42:44', '2017-08-14 02:42:44'),
(4, 'Russ Haag Jr.', '$2y$10$fABOVzF1jKAFfdMUNCnhxONvknDW7lvzCvmj9wN0bscvwrh.sFg2O', '2017-08-14 02:42:44', '2017-08-14 02:42:44'),
(5, 'Dr. Jacinthe Swift', '$2y$10$fABOVzF1jKAFfdMUNCnhxONvknDW7lvzCvmj9wN0bscvwrh.sFg2O', '2017-08-14 02:42:44', '2017-08-14 02:42:44'),
(6, 'Ms. Ophelia Heidenreich PhD', '$2y$10$fABOVzF1jKAFfdMUNCnhxONvknDW7lvzCvmj9wN0bscvwrh.sFg2O', '2017-08-14 02:42:44', '2017-08-14 02:42:44'),
(7, 'Nikita Klein', '$2y$10$fABOVzF1jKAFfdMUNCnhxONvknDW7lvzCvmj9wN0bscvwrh.sFg2O', '2017-08-14 02:42:44', '2017-08-14 02:42:44'),
(8, 'Mrs. Leslie O\'Conner', '$2y$10$fABOVzF1jKAFfdMUNCnhxONvknDW7lvzCvmj9wN0bscvwrh.sFg2O', '2017-08-14 02:42:44', '2017-08-14 02:42:44'),
(9, 'Abbey Weimann', '$2y$10$fABOVzF1jKAFfdMUNCnhxONvknDW7lvzCvmj9wN0bscvwrh.sFg2O', '2017-08-14 02:42:44', '2017-08-14 02:42:44'),
(10, 'Danny Bergnaum', '$2y$10$fABOVzF1jKAFfdMUNCnhxONvknDW7lvzCvmj9wN0bscvwrh.sFg2O', '2017-08-14 02:42:44', '2017-08-14 02:42:44'),
(11, 'Kory Turcotte', '$2y$10$fABOVzF1jKAFfdMUNCnhxONvknDW7lvzCvmj9wN0bscvwrh.sFg2O', '2017-08-14 02:42:44', '2017-08-14 02:42:44'),
(12, 'Ephraim Monahan', '$2y$10$fABOVzF1jKAFfdMUNCnhxONvknDW7lvzCvmj9wN0bscvwrh.sFg2O', '2017-08-14 02:42:44', '2017-08-14 02:42:44'),
(13, 'Miss Janet Kub', '$2y$10$fABOVzF1jKAFfdMUNCnhxONvknDW7lvzCvmj9wN0bscvwrh.sFg2O', '2017-08-14 02:42:44', '2017-08-14 02:42:44'),
(14, 'Prof. Herbert Langworth II', '$2y$10$fABOVzF1jKAFfdMUNCnhxONvknDW7lvzCvmj9wN0bscvwrh.sFg2O', '2017-08-14 02:42:44', '2017-08-14 02:42:44'),
(15, 'Pascale Schultz', '$2y$10$fABOVzF1jKAFfdMUNCnhxONvknDW7lvzCvmj9wN0bscvwrh.sFg2O', '2017-08-14 02:42:44', '2017-08-14 02:42:44'),
(16, 'Mrs. May Pacocha', '$2y$10$fABOVzF1jKAFfdMUNCnhxONvknDW7lvzCvmj9wN0bscvwrh.sFg2O', '2017-08-14 02:42:44', '2017-08-14 02:42:44'),
(17, 'Dr. Alexis Heathcote', '$2y$10$fABOVzF1jKAFfdMUNCnhxONvknDW7lvzCvmj9wN0bscvwrh.sFg2O', '2017-08-14 02:42:44', '2017-08-14 02:42:44'),
(18, 'Corene Wuckert', '$2y$10$fABOVzF1jKAFfdMUNCnhxONvknDW7lvzCvmj9wN0bscvwrh.sFg2O', '2017-08-14 02:42:44', '2017-08-14 02:42:44'),
(19, 'Mr. Victor Altenwerth', '$2y$10$fABOVzF1jKAFfdMUNCnhxONvknDW7lvzCvmj9wN0bscvwrh.sFg2O', '2017-08-14 02:42:44', '2017-08-14 02:42:44'),
(20, 'Fredrick Russel', '$2y$10$fABOVzF1jKAFfdMUNCnhxONvknDW7lvzCvmj9wN0bscvwrh.sFg2O', '2017-08-14 02:42:44', '2017-08-14 02:42:44'),
(21, 'Peter Orn', '$2y$10$fABOVzF1jKAFfdMUNCnhxONvknDW7lvzCvmj9wN0bscvwrh.sFg2O', '2017-08-14 02:42:44', '2017-08-14 02:42:44'),
(22, 'test2', '$2y$10$jsP6nVNjVQl2fkXzKZe07eIaNv.LInXNzEzC7FWQ6yv4TLv3GS0Ey', '2017-08-14 03:26:31', '2017-08-14 03:26:31'),
(23, 'test3', '$2y$10$KXY92dy3nx6m2Xqfn9ClMOhml92wo6LdkNDyPwoTrmgLIxWTZ5CnG', '2017-08-15 07:50:34', '2017-08-15 07:50:34'),
(24, 'test5', '$2y$10$cgNL56FfrCxlc/qEHkL4n.50PDGUQuxTw1X1lsPdysPjZZg.C7EEK', '2017-08-15 07:58:27', '2017-08-15 07:58:27');

-- --------------------------------------------------------

--
-- 表的结构 `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `post_id` int(11) NOT NULL DEFAULT '0',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `post_id`, `content`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '创传来利好凌乱', '2017-08-09 06:26:01', '2017-08-09 06:26:01'),
(2, 1, 1, '进出口打死俺看了弄咯', '2017-08-09 06:45:34', '2017-08-09 06:45:34'),
(3, 1, 1, 'dsfsdfds', '2017-08-09 13:12:34', '2017-08-09 13:12:34');

-- --------------------------------------------------------

--
-- 表的结构 `fans`
--

CREATE TABLE `fans` (
  `id` int(10) UNSIGNED NOT NULL,
  `fan_id` int(11) NOT NULL DEFAULT '0',
  `star_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `fans`
--

INSERT INTO `fans` (`id`, `fan_id`, `star_id`, `created_at`, `updated_at`) VALUES
(17, 1, 2, '2017-08-10 16:00:00', '2017-08-10 16:00:00'),
(19, 3, 1, '2017-08-10 16:00:00', '2017-08-10 16:00:00'),
(21, 1, 5, '2017-08-11 07:59:33', '2017-08-11 07:59:33');

-- --------------------------------------------------------

--
-- 表的结构 `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `jobs`
--

INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(1, 'default', '{\"displayName\":\"App\\\\Jobs\\\\FileAppendContent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"timeout\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\FileAppendContent\",\"command\":\"O:26:\\\"App\\\\Jobs\\\\FileAppendContent\\\":5:{s:7:\\\"content\\\";s:19:\\\"\\u7231\\u5947\\u827aVIP\\u4f1a\\u5458.\\\";s:6:\\\"\\u0000*\\u0000job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;}\"}}', 0, NULL, 1503389347, 1503389347),
(2, 'default', '{\"displayName\":\"App\\\\Jobs\\\\FileAppendContent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"timeout\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\FileAppendContent\",\"command\":\"O:26:\\\"App\\\\Jobs\\\\FileAppendContent\\\":5:{s:7:\\\"content\\\";s:19:\\\"\\u7231\\u5947\\u827aVIP\\u4f1a\\u5458.\\\";s:6:\\\"\\u0000*\\u0000job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;}\"}}', 0, NULL, 1503389358, 1503389358),
(3, 'default', '{\"displayName\":\"App\\\\Jobs\\\\FileAppendContent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"timeout\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\FileAppendContent\",\"command\":\"O:26:\\\"App\\\\Jobs\\\\FileAppendContent\\\":5:{s:7:\\\"content\\\";s:19:\\\"\\u7231\\u5947\\u827aVIP\\u4f1a\\u5458.\\\";s:6:\\\"\\u0000*\\u0000job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;}\"}}', 0, NULL, 1503389361, 1503389361),
(4, 'default', '{\"displayName\":\"App\\\\Jobs\\\\FileAppendContent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"timeout\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\FileAppendContent\",\"command\":\"O:26:\\\"App\\\\Jobs\\\\FileAppendContent\\\":5:{s:7:\\\"content\\\";s:19:\\\"\\u7231\\u5947\\u827aVIP\\u4f1a\\u5458.\\\";s:6:\\\"\\u0000*\\u0000job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;}\"}}', 0, NULL, 1503389362, 1503389362),
(5, 'default', '{\"displayName\":\"App\\\\Jobs\\\\FileAppendContent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"timeout\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\FileAppendContent\",\"command\":\"O:26:\\\"App\\\\Jobs\\\\FileAppendContent\\\":5:{s:7:\\\"content\\\";s:19:\\\"\\u7231\\u5947\\u827aVIP\\u4f1a\\u5458.\\\";s:6:\\\"\\u0000*\\u0000job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;}\"}}', 0, NULL, 1503389381, 1503389381),
(6, 'default', '{\"displayName\":\"App\\\\Jobs\\\\FileAppendContent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"timeout\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\FileAppendContent\",\"command\":\"O:26:\\\"App\\\\Jobs\\\\FileAppendContent\\\":5:{s:7:\\\"content\\\";s:19:\\\"\\u7231\\u5947\\u827aVIP\\u4f1a\\u5458.\\\";s:6:\\\"\\u0000*\\u0000job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;}\"}}', 0, NULL, 1503389389, 1503389389);

-- --------------------------------------------------------

--
-- 表的结构 `lessons`
--

CREATE TABLE `lessons` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `free` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_07_30_141107_create_posts_table', 1),
(4, '2017_08_09_101834_create_comments_table', 2),
(5, '2017_08_09_144729_create_zans_table', 3),
(6, '2017_08_10_142455_create_fans_table', 4),
(7, '2017_08_11_222848_create_topics_table', 5),
(8, '2017_08_11_222923_create_post_topics_table', 5),
(9, '2017_08_13_105446_create_admin_users_table', 6),
(10, '2017_08_14_131404_alter_posts_table', 7),
(11, '2017_08_15_102741_create_rbac_table', 8),
(12, '2017_08_16_091444_create_notice_table', 9),
(13, '2017_08_16_113115_create_jobs_table', 10),
(14, '2017_08_21_232821_create_tinyurls_table', 11),
(15, '2017_08_22_095850_alter_shortend_to_tinyurls_table', 12),
(16, '2017_08_22_103544_delete_shortend_to_tinyurls_table', 13),
(17, '2017_08_22_103752_alter_shortend_to_tinyurls_table_2', 14),
(18, '2017_08_25_143629_create_lesson_table', 15);

-- --------------------------------------------------------

--
-- 表的结构 `notices`
--

CREATE TABLE `notices` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `notices`
--

INSERT INTO `notices` (`id`, `title`, `content`, `created_at`, `updated_at`) VALUES
(2, '这是测试通知1', '测试通知1--内容', '2017-08-16 02:34:32', '2017-08-16 02:34:32'),
(3, '这是测试队列通知1', '这是测试队列通知1--内容详情', '2017-08-16 03:52:10', '2017-08-16 03:52:10'),
(4, 'dddddd', '基础上都ill绿绿绿', '2017-08-16 04:11:38', '2017-08-16 04:11:38'),
(5, '红男绿女', '123336655889', '2017-08-16 04:17:46', '2017-08-16 04:17:46');

-- --------------------------------------------------------

--
-- 表的结构 `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `posts`
--

INSERT INTO `posts` (`id`, `title`, `content`, `user_id`, `created_at`, `updated_at`, `status`) VALUES
(1, '13365大声道', '<p>速度速度所多</p>', 1, '2017-08-08 15:15:34', '2017-08-08 15:15:34', 0),
(2, 'Ipsum consequatur ut nostrum accusantium inventore est.', 'Autem et ut molestiae repellat et. Blanditiis quia vero tempora voluptatem mollitia commodi. Voluptatem perspiciatis ipsa vel voluptas. Voluptate saepe deleniti ut voluptatem. Mollitia sed molestiae minima dolorem. Iure vel maiores fuga odit error tempore. Nesciunt aperiam dicta perspiciatis maxime. Dolores est qui ad voluptatem. Soluta fugit ea veniam consequuntur temporibus quo aut dolores. Laudantium consectetur nihil quidem possimus pariatur earum voluptatem. Sequi ducimus nihil quisquam est. Debitis provident dolorem aut ad voluptate cumque. Nostrum nesciunt magnam enim quis. Maiores iure delectus ratione placeat.', 1, '2017-08-10 02:20:21', '2017-08-10 02:20:21', 0),
(3, 'Voluptates quia ex magnam aut consequatur minus magnam.', 'Consequuntur sint voluptatem dolore quas veritatis. In occaecati veritatis exercitationem. Ut maiores ea eligendi quaerat praesentium fugiat vitae animi. Rerum unde sit corporis culpa sed. Optio earum repellendus animi blanditiis commodi est. Consectetur maiores laboriosam vitae fugiat reprehenderit quam aperiam. Voluptatum maiores excepturi dolorem velit qui sint temporibus.', 1, '2017-08-10 02:20:22', '2017-08-10 02:20:22', 0),
(4, 'Non tempore provident vel ut libero debitis ipsam.', 'Sint occaecati ad sunt. Totam magni autem possimus est. Modi fuga ex similique error totam aliquid. Consectetur dolores porro porro ratione. Aliquam optio libero odit incidunt aut. Ad fugiat quod praesentium a provident quia dolor esse. Enim provident blanditiis fugiat aut. Explicabo autem ab vel unde omnis. Pariatur nesciunt dolor ratione aut labore aut.', 1, '2017-08-10 02:20:22', '2017-08-10 02:20:22', 0),
(5, 'Maxime dolor esse aliquam et.', 'Laboriosam qui non deserunt fugit tempore. Eum voluptates necessitatibus enim quia. Qui itaque incidunt nam quidem. A sunt recusandae quam quidem repudiandae dolor. Aliquid deleniti numquam molestias assumenda deleniti. Consequatur molestiae iste id magni sequi magni consequatur. Consequatur vitae quos provident magnam. Vel deserunt voluptas cupiditate. Rem dolor saepe veniam repellendus et cum.', 1, '2017-08-10 02:20:22', '2017-08-10 02:20:22', 0),
(6, 'Hic minus voluptatem corrupti deleniti enim.', 'Voluptatibus minima minus nemo eaque repellendus quidem. Voluptate tenetur veniam atque. Aperiam maiores asperiores placeat esse modi nostrum laudantium. Placeat molestias vitae dolorem qui. Delectus sit sit autem qui. Dolorem quasi nam sequi nisi aut nisi et. Quaerat mollitia itaque fugit quisquam et dolorem. Ut non dolores accusantium sed sit et consectetur.', 1, '2017-08-10 02:20:22', '2017-08-10 02:20:22', 0),
(7, 'Distinctio rerum fuga necessitatibus voluptatibus id dolores rem sunt.', 'Quisquam odit voluptatem animi minus sit. Voluptatem et illo hic neque sit voluptatibus blanditiis. Exercitationem ad impedit aut id dolor dolores. Quo ad vitae quis nihil tempora officia. Consequatur dolorem ducimus quia ratione. Minus id voluptatem nisi porro qui aut consequatur. Sed dolores molestias molestiae et vitae sapiente impedit. Fugit autem ut beatae. Et totam quo voluptas temporibus consequatur qui eveniet. Ipsa vel necessitatibus iusto tempora. Facilis assumenda et distinctio et quam commodi repellat. Exercitationem rerum excepturi voluptatem.', 1, '2017-08-10 02:20:22', '2017-08-10 02:20:22', 0),
(8, 'Id et iste non molestias qui vel.', 'Aut iste fugit delectus natus eos. Fuga pariatur quis est aut. Qui itaque ad qui non asperiores dolore minima consequatur. Modi voluptates rerum quos sunt. Qui aut assumenda numquam dolorum pariatur. Aut qui eaque distinctio inventore omnis consequatur. Asperiores hic maiores sed velit asperiores sit. Sequi omnis fugit totam aut repellendus. Sit rerum quaerat harum quos. Aut fuga eveniet ea totam aut. Eius et praesentium sed hic velit dolor maxime.', 1, '2017-08-10 02:20:22', '2017-08-10 02:20:22', 0),
(9, 'Officiis nemo repudiandae est illum sed accusantium molestiae.', 'Consequatur excepturi excepturi fugiat ut quas cum. Qui autem debitis quis qui. Maxime ducimus atque est modi commodi dolores. Qui eos eos ut voluptatem atque. Libero harum debitis voluptatem accusantium omnis et dolor. Libero molestiae deserunt velit atque officia aut esse. Et cum dicta laudantium maiores. Natus quisquam aliquid fuga asperiores qui dolor. Vero enim eos voluptate illum laboriosam aut. Tempore est maxime ipsa et ut repellendus iure.', 1, '2017-08-10 02:20:22', '2017-08-10 02:20:22', 0),
(10, 'Cum iusto voluptates repellat officia aut in veritatis ducimus.', 'Est eligendi quo illo quia cumque sapiente. Error maiores provident et necessitatibus. Culpa voluptate est magnam eum. Dicta eius placeat et quas voluptas dolor fuga. Sapiente earum doloremque atque ut necessitatibus nostrum sunt. In facere aut asperiores harum omnis. Sed labore fugit est fugiat.', 1, '2017-08-10 02:20:22', '2017-08-10 02:20:22', 0),
(11, 'Et et et aliquid.', 'Aut exercitationem quisquam est enim qui. Reiciendis et aut ad sit animi consectetur dolore. Omnis et expedita nam voluptatem. Quidem possimus iusto dolorum facilis dolore et voluptate quis. Qui quis quaerat officiis iure nisi velit. Voluptates blanditiis possimus ea fuga. Repellat sed quisquam et delectus eos perspiciatis quo. Et ut commodi qui et quod in. Eaque nulla illum vel reiciendis dignissimos. Saepe dicta ex mollitia laborum. Alias ea nobis quia eligendi eligendi veniam pariatur accusantium. Expedita vel omnis corrupti.', 1, '2017-08-10 02:20:22', '2017-08-10 02:20:22', 0),
(12, 'Praesentium debitis velit architecto ipsa.', 'Eos fugit neque odit magnam voluptas fugit quidem. Quia maxime eos omnis iste est. Vel quia dolor dicta non aliquid. Itaque aliquid qui aperiam delectus repellat reiciendis. Atque maiores tempore quidem. Iste deleniti sit suscipit. Eum et voluptatibus facilis quisquam ad qui. Consequuntur voluptatem illum numquam est est explicabo ad. Quibusdam soluta esse assumenda impedit modi et ullam.', 1, '2017-08-10 02:20:22', '2017-08-10 02:20:22', 0),
(13, 'Aut aliquid quo dolorem iste odio vel magnam.', 'Labore cupiditate quas id ducimus unde corrupti sed. Qui accusantium corrupti temporibus totam voluptas quo. Molestias nisi non voluptas. Totam corrupti maxime atque veniam at et. Dolores ea voluptatem vel excepturi amet. Ea ut iure aut. Atque enim officiis porro quibusdam. Dolorem quis eveniet amet dolore rem. Magnam aut magni rerum in quaerat possimus odit. Quibusdam velit quo sed non laudantium et rerum. Est est sint maiores qui quam esse pariatur. Eaque ad adipisci tenetur quasi non praesentium ipsam sint.', 1, '2017-08-10 02:20:23', '2017-08-10 02:20:23', 0),
(14, 'Neque nulla omnis inventore animi voluptate rerum quis.', 'Illum tenetur quia fugit itaque ad accusamus ea ut. Alias aperiam nisi asperiores mollitia ducimus ut numquam. Excepturi aliquam minus sit fugiat ducimus. Qui necessitatibus ab dignissimos illum excepturi iure ratione est. Corrupti consequatur deleniti praesentium quidem aut explicabo vel. Eos maxime consectetur odit cumque voluptatem dolor dolor labore. Quam ut illo dolor reprehenderit. Voluptas reprehenderit non sit voluptatem aspernatur. Quas porro veniam eveniet assumenda id. Reprehenderit ut qui repellat delectus expedita ea. Libero est ut reprehenderit eius omnis voluptatem facere. Ipsa ut quae quam dolorem ab. Dolorum aliquid voluptatem esse quod exercitationem at. Autem et et unde nisi.', 1, '2017-08-10 02:20:23', '2017-08-10 02:20:23', 0),
(15, 'Et dicta sunt nisi rerum aut doloribus magnam.', 'Corporis voluptatem ut consequatur ut odit sit. Corrupti perferendis aliquid qui facilis quod quidem. Ipsam velit placeat quaerat dolore rerum animi. Incidunt rerum ut id quidem dolor aut tenetur ad. Facere porro eum ut. Eaque distinctio optio repellendus est deleniti ipsam. Et dolorem recusandae autem sint maxime. Ut enim aspernatur totam aliquam. Doloribus laboriosam itaque et non eaque sint sequi enim. Neque odit dignissimos sequi.', 1, '2017-08-10 02:20:23', '2017-08-10 02:20:23', 0),
(16, 'Consequuntur et quis ea id.', 'Temporibus nihil aut nisi ducimus et quis. Quo est consequuntur voluptatem velit voluptatum. Quidem doloremque non nam aperiam nihil qui cumque dolor. Ut enim laborum explicabo ipsam ut ipsam. Consectetur et sint reprehenderit veritatis repudiandae maxime pariatur voluptatem. Tenetur similique id laborum et non cupiditate. Quidem ex ipsa facere voluptatem. Itaque fuga nam omnis quidem et adipisci. Inventore similique ea hic temporibus. Consequatur et qui aut et soluta dolorem nulla aut. Molestiae ad consequatur et eligendi vel qui dolor. Id nostrum beatae praesentium excepturi. Ea assumenda at adipisci ad.', 1, '2017-08-10 02:20:23', '2017-08-10 02:20:23', 0),
(17, 'Eveniet eos debitis delectus repudiandae voluptatem voluptatem amet.', 'Natus iusto at non voluptates. Illo minima dolor non tempore numquam necessitatibus. Ea officiis reprehenderit consequatur et. Autem commodi consequatur natus ut reiciendis ducimus. Explicabo nihil voluptate autem deserunt omnis dignissimos in. Qui voluptas rerum temporibus magni odit expedita. Nihil accusantium excepturi ab ipsam sunt. Fuga eum quidem autem quo minus odit eum. Accusamus autem magni est eos omnis necessitatibus pariatur. Molestiae quasi voluptas cupiditate reprehenderit rerum nam facere. Amet sint maxime molestias laboriosam. Corrupti nulla eveniet inventore totam odit. Qui eum quia repudiandae ipsum molestiae dolor.', 1, '2017-08-10 02:20:23', '2017-08-10 02:20:23', 0),
(18, 'Aut quam quibusdam optio.', 'Et qui optio quas non. Est aut quos veritatis ut minima aperiam. Et incidunt totam nemo necessitatibus necessitatibus voluptate. Natus occaecati magni temporibus ut et quo. Facere ut repudiandae qui et ipsa repellat ea. Eos exercitationem est cupiditate fuga repudiandae. Voluptatem eos consectetur eum commodi earum aut quis. Laborum iste est iste ipsa quos vitae. Et dignissimos illo consequatur. Corrupti sit neque nulla tempora aliquam. Eum facilis et ab qui. Totam sequi voluptas excepturi quae ut.', 1, '2017-08-10 02:20:23', '2017-08-10 02:20:23', 0),
(19, 'Exercitationem ipsam necessitatibus fugit minima soluta dolorem.', 'Rerum qui quidem maiores nesciunt voluptates magnam ut. Beatae vel consequuntur nihil iure. Illum voluptatem et eum libero. Quis quia illo tempore non vel labore nisi. Tempora veniam eos cumque. Laboriosam qui vel et qui quas. Alias quia vitae ipsa dolor dolore aliquam quod.', 1, '2017-08-10 02:20:23', '2017-08-10 02:20:23', 0),
(20, 'Aut nulla est officiis maiores.', 'Quia minus sed tempora omnis aliquam aliquam quos. Explicabo quia molestiae fugit ab repellat in. Et voluptatem et eligendi a provident recusandae. Praesentium aspernatur explicabo expedita possimus molestiae. Eaque deserunt id et id amet animi est. Assumenda commodi consequatur at atque recusandae amet consequatur. Rerum dolorem explicabo similique ut et quas magnam. A voluptatum non quisquam possimus quia dolor.', 1, '2017-08-10 02:20:23', '2017-08-10 02:20:23', 0),
(21, 'Aut rem totam quas eos eligendi.', 'Omnis quaerat est expedita velit ut molestiae rerum voluptatem. Sit omnis consectetur atque magnam consequatur. Cumque deserunt repudiandae qui accusamus est molestiae occaecati. Sit rerum excepturi quia. Laboriosam eos accusantium dolorem in. Cumque consequatur non fugiat et eos illum assumenda nulla. Laborum ut voluptatem aut voluptatibus. Odit mollitia sit perspiciatis voluptatibus optio id et quasi. Amet eum esse maiores dolores nostrum facilis harum. Sit sint qui aut delectus. Totam tenetur eaque suscipit. Consequatur doloribus ad voluptatem autem cum. Maiores blanditiis sed consequuntur doloribus voluptates praesentium.', 1, '2017-08-10 02:20:23', '2017-08-10 02:20:23', 0),
(22, 'Sed repellat quia eveniet earum sint vel suscipit harum.', 'Porro excepturi harum fuga consequuntur omnis et. Voluptas harum tempora incidunt et tempore suscipit. Et ab quo et voluptas voluptate quia. Aut reiciendis velit id eum officia non. Quaerat veritatis nulla placeat id id dolorem totam. Asperiores quos numquam officia magnam. Aut soluta quam quasi voluptatem sit. In est consequuntur est voluptatem. Quis laboriosam quisquam distinctio sapiente. Natus eum delectus consequatur quia dolorem impedit. Ut quia neque magnam esse vero corporis.', 1, '2017-08-10 02:20:23', '2017-08-10 02:20:23', 0),
(23, 'Vel dolores ipsa fugiat totam minima voluptatibus recusandae.', 'Qui rerum error enim et. Sit qui repellat dolores et. Expedita quia asperiores fuga similique in laudantium. Non est et nihil blanditiis. Cumque eaque assumenda et. Ut officia et aut numquam aut. Velit autem sint et consequatur ut sit. In omnis voluptates et distinctio. Saepe iste eligendi vero numquam a sunt.', 1, '2017-08-10 02:20:24', '2017-08-10 02:20:24', 0),
(24, 'Expedita sit quis aut.', 'Sint qui quae id quidem natus provident. Enim placeat ut eveniet voluptates. Pariatur labore repellat voluptas ullam. Architecto sit consequuntur odit maxime et consequatur. Qui qui sit illo fugit. Minima tempora nihil dolorem sequi repellat. Earum est hic dolorum voluptatem. Ipsam veniam a omnis cumque. Sunt et voluptatem sunt culpa consectetur. Quas voluptatem omnis culpa modi fuga. Soluta ratione soluta consectetur impedit ratione fuga. Asperiores inventore dolore et. Voluptatem autem velit consectetur quia tempore et. Soluta impedit est sit nihil.', 1, '2017-08-10 02:20:24', '2017-08-10 02:20:24', 0),
(25, 'Quo quae deleniti occaecati omnis perferendis esse.', 'Hic est laudantium dolore consequatur eos ut. Dignissimos ut possimus corrupti odio ipsa ut ut dolorem. Modi recusandae molestias est repudiandae expedita maxime vero. Tempora sit consequatur eum cupiditate repudiandae atque. Repellat reprehenderit voluptatem qui quas. Iste eos similique commodi eum aut quis quam. Sapiente perferendis aut facilis quasi quibusdam velit ipsam dolor. Neque sed alias nisi excepturi.', 1, '2017-08-10 02:20:24', '2017-08-10 02:20:24', 0),
(26, 'Eos esse praesentium necessitatibus ipsum quidem aperiam quia est.', 'Consequatur blanditiis architecto qui et facere quo. Repellat optio molestiae ad voluptate voluptatem. Consequatur voluptatem doloremque et eius eaque dignissimos fugit. Quibusdam eaque enim rem vel. Ex officiis non veniam atque. Repudiandae laboriosam velit non aut quis. Sapiente placeat modi doloribus officia. Impedit vitae dolorum dicta aut ab quo reprehenderit.', 1, '2017-08-10 02:20:24', '2017-08-10 02:20:24', 0),
(27, 'Dolores doloremque ab ex nesciunt et at.', 'Minima commodi quia quasi qui natus minus. Doloribus temporibus labore labore deserunt suscipit cum. Ex vitae aut voluptatibus. Eum qui est aut architecto voluptas soluta. Qui est consequatur cum nobis rem corporis. Atque possimus at hic cupiditate. Eius eius fugiat enim dolorem repudiandae aspernatur sunt. Dolorum fuga sunt incidunt qui officia placeat. Hic autem dolor non consequatur cumque.', 1, '2017-08-10 02:20:24', '2017-08-10 02:20:24', 0),
(28, 'Harum repellat nostrum dolorem est consequatur.', 'Sunt ab possimus tempore consequatur. Sed minus dolores fugit et laborum illum debitis. Consequatur numquam aut itaque atque omnis magni ipsa perferendis. Facilis numquam aut distinctio aut modi aut at non. Sit voluptates vel tempore suscipit harum labore. Id assumenda porro cupiditate qui vel et. Natus rerum ducimus alias velit. Corrupti illum vel eaque a optio voluptate.', 1, '2017-08-10 02:20:24', '2017-08-10 02:20:24', 0),
(29, 'Id rerum harum veritatis nesciunt est.', 'Sit minus consequatur doloremque in nobis tempore. Expedita sunt exercitationem nam est. Vel ratione magni veniam pariatur. Labore et earum esse nisi. Distinctio sed eum adipisci officiis et. Dolorem quibusdam natus debitis id ratione et aut. Vitae nobis natus doloribus et rem. Ipsam error perferendis culpa iure cum ut. Numquam eligendi fugiat animi amet natus nulla aperiam. Nemo in excepturi laborum ullam quaerat est id qui. Voluptates ut saepe quibusdam aut error autem. Rerum et illo voluptas aut.', 1, '2017-08-10 02:20:24', '2017-08-10 02:20:24', 0),
(30, 'Ex in voluptatem quia quas aspernatur.', 'Quisquam magni ipsam optio qui sit dolorum illo consequatur. Placeat sint odit est quaerat et expedita soluta. Nobis sed nobis quia veritatis nam vero quis eos. Perferendis minus deserunt nisi corrupti in laborum ea amet. Facere quae excepturi ea autem voluptatem distinctio. Dignissimos deserunt aut culpa et et. Maiores dolores minima rem et recusandae corporis aut. Aut praesentium assumenda fugiat. Quo expedita consequatur nam quis voluptas ex quo. Vero et inventore tempora labore repudiandae non. Aut similique magni rerum dolores reprehenderit. Atque expedita et aut. Voluptas nemo architecto vel consequuntur et error.', 1, '2017-08-10 02:20:24', '2017-08-10 02:20:24', 0),
(31, 'Similique aut explicabo et possimus blanditiis reiciendis cupiditate debitis.', 'Repellendus unde fugit quia. Et qui atque et sunt doloremque. Repudiandae sapiente nihil qui hic doloremque explicabo. Sunt consequuntur quod laboriosam quisquam rerum qui. Quia culpa consequatur est neque. Aliquam asperiores odit necessitatibus aut. Dolores sit ipsam est tempore molestias atque. Vel expedita labore et et. Et quidem in in dignissimos dolorum blanditiis dolores. Esse voluptas tempora minus.', 1, '2017-08-10 02:20:24', '2017-08-10 02:20:24', 0),
(32, 'Est neque iure ut et unde quasi et.', 'Doloremque iste voluptas ipsa accusantium beatae et praesentium ut. Est necessitatibus illo ea cumque est culpa veritatis. Accusantium sint beatae nobis maxime est nam. Dolorem ex ut dolores optio. Libero quaerat nulla modi molestiae in eaque vel. Nisi et eos veniam quisquam labore tempore. Temporibus rerum aliquid necessitatibus blanditiis maiores eum. Et nobis officia est voluptas cum omnis. Quaerat vel ipsum ipsam aliquam. Nostrum suscipit quam consequatur quia delectus sint. Aut id porro fugiat doloribus enim voluptatem. Illum est accusantium facere rerum repudiandae omnis expedita minima. Quisquam rerum at eius est. In ea illo ad velit provident eum quas.', 1, '2017-08-10 02:20:25', '2017-08-10 02:20:25', 0),
(33, 'Nemo aspernatur sapiente reiciendis aliquid consequuntur ipsa voluptatum.', 'Dignissimos aliquam et optio et sequi suscipit asperiores. Vel quis qui quasi numquam aut. Qui amet qui saepe qui qui fuga magnam facilis. Cumque adipisci explicabo id quia neque odit eum. Harum et cupiditate explicabo maiores ipsum placeat. Assumenda maxime non et assumenda. Excepturi ipsum tenetur et expedita libero laudantium. Tempora veritatis sit facere qui voluptate. Consequatur molestiae reprehenderit ea veritatis aliquam eos veritatis commodi. Et porro in voluptate adipisci porro iste. Aliquid autem quia voluptatem delectus repudiandae. Sint voluptatibus accusamus voluptatem et consequatur. Quia non ipsa deleniti sit.', 1, '2017-08-10 02:20:25', '2017-08-10 02:20:25', 0),
(34, 'Quia nobis sit illo at velit ab perferendis.', 'Quis aut perspiciatis tenetur consequatur. Fuga commodi et nostrum enim dolorem dolores. Atque nihil aut et aspernatur in et quas. A ex voluptatem aperiam aspernatur excepturi doloribus. Labore quam cum dolores id. Quibusdam dolor voluptate sit iusto. Repellendus corporis voluptas beatae consequuntur et. Quis sed non velit necessitatibus accusamus qui. Dolor quasi sed dicta perferendis deleniti maxime suscipit consequuntur. Mollitia odit cum similique totam assumenda fugiat.', 1, '2017-08-10 02:20:25', '2017-08-10 02:20:25', 0),
(35, 'Eos eos saepe veniam dolorem doloremque odit voluptas.', 'Saepe ut vitae magni quae quia. Hic sed maxime labore est sunt. Aperiam vel id fugit corporis consequatur. Impedit ut voluptate reprehenderit reprehenderit ipsam. Nobis ipsam praesentium et sed culpa tempore. Dicta deserunt incidunt ut saepe vel fuga sint. Consequuntur excepturi commodi animi dicta. Ea amet voluptas voluptas culpa. Temporibus molestiae enim et ut laboriosam est et. Optio impedit eum unde.', 1, '2017-08-10 02:20:25', '2017-08-10 02:20:25', 0),
(36, 'Omnis accusantium ea quia suscipit expedita.', 'Sapiente laudantium cupiditate quae alias architecto suscipit. Temporibus rem ea eaque dolore quia corrupti dolorem nihil. At illo dolorum magni nemo. Et ipsum aut omnis dolores molestiae reiciendis. Alias dolor doloribus quas perferendis itaque laboriosam. Quia ad ducimus alias vel suscipit debitis nulla est. Sed atque mollitia non quo. Non consequatur a perferendis sed voluptas quidem. Voluptas officia omnis iure sed. Aut dignissimos earum sit ducimus. Omnis harum possimus quia aspernatur. Dolor fuga sit modi cumque doloremque ab nesciunt.', 1, '2017-08-10 02:20:25', '2017-08-10 02:20:25', 0),
(37, 'Culpa et deserunt laudantium natus beatae velit.', 'Necessitatibus sit ab nemo omnis non. Aut et consequatur rerum illum dignissimos. Ipsum hic veniam corporis asperiores fugiat praesentium quam. Necessitatibus debitis deserunt nemo enim soluta illo. Modi ea porro voluptates nam aspernatur cum. Ex quisquam labore quod consequatur nam omnis eius. Aspernatur quod ut recusandae laboriosam dolor voluptas est. Ipsum nesciunt sequi doloremque autem minus dolorum accusamus ipsam. Animi asperiores itaque qui est. Voluptas molestiae sed numquam voluptatum magni aut officiis. A ut vel explicabo omnis.', 1, '2017-08-10 02:20:25', '2017-08-10 02:20:25', 0),
(38, 'Et quia dicta quia et et.', 'Nemo quia temporibus molestiae est et. Nam ut aut qui molestias. Aut ut sit eaque molestias officia ut error. Qui cum rerum accusantium provident magnam voluptate. Laborum et impedit explicabo quae molestiae quisquam iste autem. Et ut autem corrupti optio optio aliquam. Porro eaque quam fugiat sed maiores aut. Est voluptatem nesciunt et possimus eos ut.', 1, '2017-08-10 02:20:25', '2017-08-10 02:20:25', 0),
(39, 'Nam mollitia nemo est placeat omnis porro quia.', 'Natus iusto suscipit quidem quo fugiat ad laboriosam. Esse dolorem aspernatur fugiat voluptas aut quo et. Aliquam amet ducimus hic facere non ut nostrum. Beatae non doloribus aspernatur sit nihil et. Maiores velit et delectus veniam nesciunt. Et autem quo et. Provident aut perspiciatis similique est qui. Modi doloremque recusandae natus velit aliquam ab id.', 1, '2017-08-10 02:20:25', '2017-08-10 02:20:25', 0),
(40, 'Mollitia facere non magnam inventore.', 'Voluptate repellat nam occaecati voluptatibus aspernatur quam. Veniam sint ea reiciendis rerum eos eos sit. Sint nihil ullam amet ab aut odit non. Est pariatur voluptate voluptatem qui nesciunt est. Et rerum quia dolorem enim ad ea voluptate unde. Animi eos molestias odit rerum sapiente. Nisi odio eum et explicabo impedit reiciendis id. Omnis assumenda eaque error veritatis iusto.', 1, '2017-08-10 02:20:25', '2017-08-10 02:20:25', 0),
(41, 'Veritatis aut quia distinctio nostrum ut quasi ea.', 'Non nobis id dolor. Non perferendis voluptas incidunt ut excepturi. Sint quod vel omnis nihil. Quas voluptas voluptates rem at sit maxime officiis. Molestiae libero voluptatibus quam molestiae eaque adipisci nostrum. Magnam laboriosam pariatur est perferendis at laborum. Quidem consequatur eius doloremque qui ducimus.', 1, '2017-08-10 02:20:25', '2017-08-10 02:20:25', 0),
(42, 'Consequatur fugit sit sed sed fuga.', 'Odio sequi facilis dolorem impedit. Maxime soluta omnis rem voluptatem. Et sequi deserunt dolores. Doloremque et repudiandae possimus inventore aspernatur hic. Quisquam ratione dolore iste veniam. Eum fugiat dicta corporis ullam repellat dignissimos rem. Corrupti totam dolore porro autem sapiente sequi velit. Et quidem molestiae dolorum molestiae. Aspernatur quaerat at in quod ut. Quis quasi sunt sit asperiores iure. Dolores eius odio quia eveniet officiis.', 1, '2017-08-10 02:20:25', '2017-08-10 02:20:25', 0),
(43, 'Est neque nihil omnis vel at fuga.', 'Est vero iure sit voluptate ut. Sed sed molestiae sed culpa sunt aut sit. Ipsum sint neque reiciendis maiores voluptatem nulla libero. Sequi officiis in amet doloribus. Molestiae doloribus aliquam explicabo quisquam vel non voluptates sit. Fuga ex ut ducimus. Distinctio occaecati ea assumenda officia et. Natus labore cupiditate aut non vitae ut eius. In fuga ratione est assumenda quia similique provident. Ut enim minima dolorem et perferendis. Accusantium beatae doloribus error. Quae tenetur amet eum necessitatibus sequi laboriosam expedita nesciunt. Repellendus et aliquam autem beatae voluptatem. Accusamus expedita ea odio soluta autem enim.', 1, '2017-08-10 02:20:26', '2017-08-10 02:20:26', 0),
(44, 'Voluptas eum nemo laborum quis.', 'Veniam odio delectus consequatur est consequatur atque. Tenetur et perferendis deserunt aspernatur numquam. Velit exercitationem quasi quo rerum dicta est similique. Sit consequatur perferendis repudiandae minima magni. Sit vel ut eligendi possimus. Repellendus fuga et laudantium laboriosam aliquid aperiam. Quidem earum consequatur adipisci occaecati rerum et sed eos. Ea aut harum maxime consequatur sit quae. Et dolor voluptatum id provident. Perferendis ut at porro molestiae laboriosam. Voluptatem ducimus eius expedita ex voluptatum rerum.', 1, '2017-08-10 02:20:26', '2017-08-10 02:20:26', 0),
(45, 'Aliquam est est fuga laboriosam quidem quidem nihil.', 'Iure veniam ea et quo quia ut aut. Et laboriosam architecto qui molestiae. Aut esse ab necessitatibus asperiores beatae a non. Ullam et quia dolore repudiandae aut inventore sapiente est. Accusantium qui accusamus dolores est quas laboriosam assumenda. Consequatur quo deleniti blanditiis repudiandae eum. Eaque molestias nam expedita laudantium animi. Nesciunt est voluptatem in. Ea voluptate magni qui dolorem voluptatem.', 1, '2017-08-10 02:20:26', '2017-08-10 02:20:26', 0),
(46, 'Ipsa totam beatae dolorem.', 'Repudiandae deleniti ea odit similique. Deleniti dolore est velit doloribus assumenda. Labore perferendis quia minus vitae reprehenderit occaecati possimus. Autem ut voluptas quis enim qui ducimus. Voluptatibus officiis vero placeat. Rem alias error nulla atque. Quos sunt sed quam ducimus et non. Qui placeat odit omnis vero. Commodi quasi aut est. Iusto nihil ipsam consectetur quas deleniti reprehenderit qui. Rerum iure aliquam vel minus est similique.', 1, '2017-08-10 02:20:26', '2017-08-10 02:20:26', 0),
(47, 'Et enim sint consequatur ut et.', 'Similique iure ipsum recusandae quos. Alias maiores explicabo repudiandae. Rerum quo vitae quia neque. Id et fugiat dolores odit alias dolor et. Quidem minima eos dolores. Atque tenetur quia qui qui molestiae repellat. Necessitatibus perferendis eum nobis qui dolore vitae. Voluptatem esse odit voluptas qui. Sit doloribus aliquam minima reiciendis. Tenetur enim aut aut eligendi modi qui. Est est cumque aperiam asperiores. Architecto eius provident nisi aliquam amet nam.', 1, '2017-08-10 02:20:26', '2017-08-10 02:20:26', 0),
(48, 'Minima aut placeat unde libero reiciendis beatae sed.', 'Nesciunt in aut adipisci vero consequuntur. Quasi beatae molestiae non ipsa voluptate itaque totam. Dolorem explicabo dolor nesciunt aliquam omnis et. Nihil quam aut ut et vel. Ut nihil praesentium enim. Vel maxime ipsa maiores magni. Optio maxime dolore qui neque quaerat eligendi eum. Aliquid nemo adipisci quia aut. Enim id dolores ab nemo vitae blanditiis. Vel numquam placeat voluptas. Eos unde porro necessitatibus sint quia.', 1, '2017-08-10 02:20:26', '2017-08-10 02:20:26', 0),
(49, 'Aut rerum nisi quia quod culpa mollitia est.', 'Eligendi est assumenda dolorem dolor veritatis perferendis. Et officia corporis harum odit magnam. Optio minima repudiandae non eum perferendis a sed provident. Voluptates aut neque incidunt omnis earum ut. Perspiciatis magnam rerum qui occaecati. Voluptatum veniam nihil odit quibusdam dolorum. Rem qui dolor aut iste praesentium. Sed quae ad et natus facilis ad enim culpa. Sapiente expedita eum commodi in itaque enim sint. Dolorem ipsam perferendis voluptatibus molestias. Dolor aut voluptas repudiandae pariatur ab molestias est. Deleniti magnam minima est quisquam.', 1, '2017-08-10 02:20:26', '2017-08-10 02:20:26', 0),
(50, 'Et mollitia similique exercitationem quidem.', 'Et est quis qui quos dolorem ea mollitia qui. Temporibus autem iusto dignissimos rem. Molestias ut qui nisi. Voluptatum qui perferendis non illo molestiae quo. Dolores nemo temporibus expedita est consequatur. Voluptatum ab dolorem suscipit et velit. Consequatur pariatur commodi deleniti. Reiciendis iste ullam ullam unde mollitia asperiores maxime esse. Debitis est repellendus laborum libero rerum reiciendis amet.', 1, '2017-08-10 02:20:26', '2017-08-10 02:20:26', 0),
(51, 'Facilis suscipit ea eligendi eos qui voluptatem.', 'Hic molestiae quam autem atque et recusandae alias quo. Et illum rerum sed eligendi quo. Necessitatibus laborum quis debitis deleniti et. Omnis impedit aperiam quia a nobis inventore ut. Enim quis eveniet sit odit et in. Porro deleniti nihil blanditiis vel ratione voluptas. Voluptatem id autem nihil consequatur velit rerum harum.', 1, '2017-08-10 02:20:26', '2017-08-10 02:20:26', 0),
(52, 'Blanditiis sunt vero necessitatibus eos officiis esse.', 'Voluptatem at fugiat vel. Tenetur impedit ipsum reprehenderit nesciunt quisquam et. Reiciendis non adipisci eum vel accusamus. Doloremque saepe et dolore tempore sed deleniti quia. Eum aliquam temporibus ad sequi quo. Nesciunt magnam debitis explicabo. Numquam praesentium totam consequatur praesentium commodi suscipit recusandae. Voluptatem laudantium non mollitia illo nihil. Quibusdam voluptas quis molestias eum quia est. Soluta hic modi molestiae sed. Sunt tempore qui nihil sint voluptas. Totam placeat dolor sunt accusantium cupiditate magnam. Ab aliquid eum possimus aut placeat ad.', 1, '2017-08-10 02:20:26', '2017-08-10 02:20:26', 0),
(53, 'Expedita corporis facere officiis amet nostrum dolorem cum.', 'Non voluptas itaque veritatis dolor aut aliquid. A porro itaque recusandae rerum. Fugit dolor necessitatibus itaque voluptatem. Debitis et at iure. Consequatur dolor ipsa dolores modi dolor ut reiciendis nihil. Qui ratione vel rerum eos itaque earum nesciunt. Sit omnis in eum quo rerum dolor enim. Natus sed voluptates fugiat quam voluptas aut totam. Iusto temporibus laborum temporibus exercitationem. Voluptatem hic voluptatem veniam. Ratione nihil autem animi repellendus inventore nesciunt ullam. Rerum voluptates assumenda autem. Quia omnis possimus vero molestias.', 1, '2017-08-10 02:20:27', '2017-08-14 07:03:48', 1),
(54, 'Sint ratione nam cumque magnam voluptatem.', 'Quos aut non sed totam. Dolore quo alias et praesentium et sit et sit. Ut voluptas rerum quas velit. Et fugit qui et omnis nemo aut quas nisi. Sed nihil molestiae autem quo. Cumque commodi laboriosam sint. Velit dolorem est illo voluptas. Facilis reprehenderit quod voluptas quo voluptas. Enim provident odio tempora magnam. Commodi voluptate cum animi modi laudantium ut cupiditate. Quos tempore illum quia totam. Deserunt similique maiores molestias vitae sint esse.', 1, '2017-08-10 02:20:27', '2017-08-10 02:20:27', 0),
(55, 'Iste mollitia molestiae voluptas facere.', 'Ea unde qui rerum quibusdam. Assumenda quas eius harum. Ut est quo aspernatur qui repellat enim reprehenderit. Voluptatem debitis deserunt autem reiciendis. Et blanditiis et excepturi earum beatae perferendis quaerat omnis. Aut est totam facilis eaque sint voluptas. Iusto dolorem dolores aut est consequuntur explicabo fugiat. Est sed asperiores est et blanditiis quam. Qui provident impedit ipsam praesentium voluptatibus optio. Consectetur architecto quas ut rerum omnis voluptates at.', 1, '2017-08-10 02:20:27', '2017-08-10 02:20:27', 0),
(56, 'Mollitia assumenda quia temporibus id assumenda sunt.', 'Quasi voluptatem voluptatum impedit velit. Accusantium dolorum eum sunt nesciunt. Dolores qui deserunt voluptatem itaque dolor assumenda iste. Suscipit eius optio veniam. Libero quasi hic voluptas nihil laborum. Saepe atque tempora non quia. Ea dignissimos consequatur velit culpa odit mollitia. Animi nemo debitis fugit quia nobis maxime. Exercitationem aut et et rem. Ipsum et quo modi rem vitae ea. Dolores nulla consequuntur nobis accusantium similique.', 1, '2017-08-10 02:20:27', '2017-08-10 02:20:27', 0),
(57, 'Eveniet pariatur earum dolores qui cumque veritatis qui atque.', 'Iste ab perferendis recusandae qui dolores. Et commodi iure perferendis incidunt qui vel saepe. Voluptatibus debitis quam laudantium placeat non. Aut voluptas adipisci dolore hic. Ipsa architecto est possimus esse consequatur. Tempora vel sit quo. Vitae excepturi dolorem nisi. Deserunt esse iusto sed. Tenetur sit in sit ab. Omnis praesentium reprehenderit id est sit. Et voluptate incidunt quod et rem.', 1, '2017-08-10 02:20:27', '2017-08-10 02:20:27', 0),
(58, 'Suscipit aliquid fuga quasi consequatur.', 'Odit et exercitationem et eos est eaque. Dolorum officiis fugiat a dolores dolor quia. Aperiam reiciendis doloremque et qui. Earum error voluptatem non sit earum quasi mollitia. Voluptatem modi autem aut doloremque iste eveniet et. Doloribus delectus perferendis dolores ut. Aut similique itaque accusantium distinctio natus alias vel. Numquam ipsa laborum non aut in delectus. Consectetur nemo voluptatem tempore in hic doloremque temporibus aut. Et facilis neque necessitatibus porro praesentium possimus quo. Quo voluptas aliquid ipsam aut maxime corporis soluta. Facere eveniet excepturi quis.', 1, '2017-08-10 02:20:27', '2017-08-10 02:20:27', 0),
(59, 'Praesentium hic inventore distinctio commodi impedit.', 'Odit alias aut omnis numquam odit sed necessitatibus ut. Nisi itaque ex suscipit totam. Consequatur quo ut veritatis dolorum quia doloribus. Omnis dolor repellendus adipisci rerum aperiam quam porro. Optio vel rerum et quo impedit sed expedita. Beatae ex aliquid voluptas. Distinctio enim quod accusantium voluptas distinctio. Suscipit et voluptas molestias officia. Amet sed adipisci et dolorem aliquam. Provident dolorem et blanditiis non. In nihil qui magnam dolore quasi occaecati ea. Labore ut sed id praesentium aut ut.', 1, '2017-08-10 02:20:27', '2017-08-10 02:20:27', 0),
(60, 'Dolore et quo numquam nam.', 'Consectetur ut voluptatem autem vel consequatur pariatur rerum. Doloremque qui et quia laboriosam. Suscipit qui minus rerum. Dolor hic quia facere qui tempora aut. Officiis dolorum sint eaque et ut. Vitae possimus veritatis nihil qui sit tenetur minus. Numquam quas odio saepe est.', 1, '2017-08-10 02:20:27', '2017-08-10 02:20:27', 0),
(61, 'Molestiae odit sed dolor molestiae.', 'Cum et molestiae minima architecto voluptatem neque qui dolorum. Nisi inventore delectus illo molestiae consectetur voluptatem aut. Vitae debitis ipsum ipsa. Adipisci facilis nihil soluta voluptatem asperiores voluptatibus. Non error exercitationem magnam animi facilis. Est aliquid suscipit expedita velit quia provident. Necessitatibus provident distinctio ipsam voluptatem error aut. Eum veniam velit unde corporis asperiores. Ut eveniet aut qui autem incidunt corporis non. Totam possimus molestiae omnis alias. Non laudantium quia ipsum voluptas. Modi sit voluptas modi qui molestiae.', 1, '2017-08-10 02:20:27', '2017-08-10 02:20:27', 0),
(62, '富力4-2苏宁 恒丰客场3-0胜申花', '北京时间8月9日19点35，中超联赛第21轮打响，广州富力主场4-2完胜江苏苏宁，取得联赛4连胜。第2分钟R马丁内斯杀入禁区一记弧线球兜射命中，上半场补时阶段卢琳门前垫射扳平比分，第55分钟扎哈维左路内切至禁区线右脚抽入世界波将比分反超，第62分钟唐淼助攻肖智头球扩大比分，第72分钟雷纳尔迪尼奥禁区内打死角锦上添花，第89分钟马丁内斯禁区内低射远角得手。</p><p>　　“土豪金”的越秀山是当前中超最被热议的话题，富力在“土豪金”氛围中的近4个主场取得全胜，更是火力全开打入18球，扎哈维本赛季入球数已提升到22球。苏宁近5轮2胜3平形成持续抢分，积分提升到18分已同降级区拉开3分距离，本赛季前9个客场苏宁1胜5平3负（打入10球失16球）。中超交锋史上富力对苏宁4胜5平2负，富力主场对苏宁2胜3平保持不败；本赛季首回合较量富力客场2-1战胜苏宁，扎哈维梅开二度。</p><p>　　富力方面陈志钊结束禁赛替补待命，苏宁方面特谢拉休战，R马搭档穆坎乔，汪嵩首发迎战旧主。开场仅仅2分钟客场作战的江苏苏宁队就取得梦幻开局——吉翔中路斜传，马丁内斯禁区左侧面对2人防守，突然人缝中右脚兜射远角，皮球直挂球门死角，1-0！</p>\n<script>(sinaads = window.sinaads || []).push({element: document.getElementById(\"Sina_Plista_AD\")});</script>\n<ins></ins><p>　　第13分钟，拉米雷斯前场断球极速前进，直塞到小禁区右侧，穆坎乔插上跟进一脚抽射，程月磊飞身一挡，用长臂把球扑出底线。汪嵩主罚右侧角球弧线球给到禁区，前点马丁内斯头球一甩，黄征宇将球挡出底线。第19分钟姜志鹏后场一记斜传，禁区前沿卢琳头球摆渡，扎哈维插上甩开防守抹入禁区，面对门将的抽射滑门而出。第24分钟，姜志鹏左路下底突破后搓传门前，卢琳抢点甩头攻门，皮球又一次意外打偏。第28分钟，扎哈维远距离直接发炮，一记爆射打飞</p>', 1, '2017-08-10 02:22:55', '2017-08-14 07:03:43', 0),
(63, '释放是离婚后的能耐临港', '<p>独守空房了几十块龙卷风看电视剧分类看电视剧分手的距离咖啡机的数量</p>', 1, '2017-08-11 03:29:40', '2017-08-11 03:29:40', 0);

-- --------------------------------------------------------

--
-- 表的结构 `post_topics`
--

CREATE TABLE `post_topics` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(11) NOT NULL DEFAULT '0',
  `topic_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `post_topics`
--

INSERT INTO `post_topics` (`id`, `post_id`, `topic_id`, `created_at`, `updated_at`) VALUES
(1, 2, 1, '2017-08-12 07:52:21', '2017-08-12 07:52:21'),
(2, 3, 1, '2017-08-12 07:52:21', '2017-08-12 07:52:21'),
(3, 5, 1, '2017-08-12 07:52:21', '2017-08-12 07:52:21'),
(4, 1, 3, '2017-08-12 07:52:34', '2017-08-12 07:52:34'),
(5, 62, 3, '2017-08-12 07:52:34', '2017-08-12 07:52:34'),
(6, 63, 3, '2017-08-12 07:52:34', '2017-08-12 07:52:34');

-- --------------------------------------------------------

--
-- 表的结构 `tiny_urls`
--

CREATE TABLE `tiny_urls` (
  `id` int(10) UNSIGNED NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shortUrl` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `tiny_urls`
--

INSERT INTO `tiny_urls` (`id`, `url`, `shortUrl`, `created_at`, `updated_at`) VALUES
(1, 'http://www.ifeng.com', 'http://6du.in/0ixB0Q', '2017-08-22 02:44:05', '2017-08-22 02:44:05'),
(2, 'http://www.114la.com/', 'http://6du.in/0j1K5OL', '2017-08-22 02:46:53', '2017-08-22 02:46:53'),
(3, 'http://www.ifeng.com/', 'http://6du.in/0j1K5PQ', '2017-08-22 03:34:02', '2017-08-22 03:34:02');

-- --------------------------------------------------------

--
-- 表的结构 `topics`
--

CREATE TABLE `topics` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `topics`
--

INSERT INTO `topics` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, '旅游', '2017-08-12 01:49:01', '2017-08-12 01:49:01'),
(2, '文学', '2017-08-12 01:49:01', '2017-08-12 01:49:01'),
(3, 'NBA', '2017-08-12 01:49:01', '2017-08-12 01:49:01');

-- --------------------------------------------------------

--
-- 表的结构 `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'root', 'root@163.com', '$2y$10$lYHBfgf/65.XRA/rRwWE1eaH2uGiY0uEj56qGYWGzHDfLHCD9eEV6', 'DNRTWxx83GQmLMUidDC5OeRIFX4njl9jKXlsw0f7vqadeneG7s0eN6LycpzU', '2017-08-08 07:00:55', '2017-08-08 07:00:55'),
(2, 'root2', 'root@1633.com', '$2y$10$R1LXOyIt4tOenungazejHOXub41pf.nH5SS/TOW7izZSorBuIJsXO', NULL, '2017-08-08 15:52:57', '2017-08-08 15:52:57'),
(3, 'goular', 'goular@163.com', '$2y$10$R1LXOyIt4tOenungazejHOXub41pf.nH5SS/TOW7izZSorBuIJsXO', NULL, '2017-08-10 16:00:00', '2017-08-10 16:00:00'),
(5, 'goular2', 'goular1@163.com', '$2y$10$R1LXOyIt4tOenungazejHOXub41pf.nH5SS/TOW7izZSorBuIJsXO', NULL, '2017-08-10 16:00:00', '2017-08-10 16:00:00');

-- --------------------------------------------------------

--
-- 表的结构 `user_notice`
--

CREATE TABLE `user_notice` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `notice_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `user_notice`
--

INSERT INTO `user_notice` (`id`, `user_id`, `notice_id`, `created_at`, `updated_at`) VALUES
(1, 1, 2, '2017-08-15 16:00:00', '2017-08-15 16:00:00'),
(2, 1, 3, NULL, NULL),
(3, 2, 3, NULL, NULL),
(4, 3, 3, NULL, NULL),
(5, 5, 3, NULL, NULL),
(6, 1, 4, NULL, NULL),
(7, 2, 4, NULL, NULL),
(8, 3, 4, NULL, NULL),
(9, 5, 4, NULL, NULL),
(10, 1, 5, NULL, NULL),
(11, 2, 5, NULL, NULL),
(12, 3, 5, NULL, NULL),
(13, 5, 5, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `zans`
--

CREATE TABLE `zans` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `post_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `zans`
--

INSERT INTO `zans` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES
(2, 1, 1, '2017-08-09 07:17:12', '2017-08-09 07:17:12'),
(3, 1, 63, '2017-08-11 03:33:33', '2017-08-11 03:33:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_permission_role`
--
ALTER TABLE `admin_permission_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_role_user`
--
ALTER TABLE `admin_role_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fans`
--
ALTER TABLE `fans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_reserved_at_index` (`queue`,`reserved_at`);

--
-- Indexes for table `lessons`
--
ALTER TABLE `lessons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notices`
--
ALTER TABLE `notices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_topics`
--
ALTER TABLE `post_topics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tiny_urls`
--
ALTER TABLE `tiny_urls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_notice`
--
ALTER TABLE `user_notice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zans`
--
ALTER TABLE `zans`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `admin_permissions`
--
ALTER TABLE `admin_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- 使用表AUTO_INCREMENT `admin_permission_role`
--
ALTER TABLE `admin_permission_role`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- 使用表AUTO_INCREMENT `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- 使用表AUTO_INCREMENT `admin_role_user`
--
ALTER TABLE `admin_role_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- 使用表AUTO_INCREMENT `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- 使用表AUTO_INCREMENT `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- 使用表AUTO_INCREMENT `fans`
--
ALTER TABLE `fans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- 使用表AUTO_INCREMENT `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- 使用表AUTO_INCREMENT `lessons`
--
ALTER TABLE `lessons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- 使用表AUTO_INCREMENT `notices`
--
ALTER TABLE `notices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- 使用表AUTO_INCREMENT `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
--
-- 使用表AUTO_INCREMENT `post_topics`
--
ALTER TABLE `post_topics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- 使用表AUTO_INCREMENT `tiny_urls`
--
ALTER TABLE `tiny_urls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- 使用表AUTO_INCREMENT `topics`
--
ALTER TABLE `topics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- 使用表AUTO_INCREMENT `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- 使用表AUTO_INCREMENT `user_notice`
--
ALTER TABLE `user_notice`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- 使用表AUTO_INCREMENT `zans`
--
ALTER TABLE `zans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
