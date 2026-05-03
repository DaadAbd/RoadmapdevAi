-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 10, 2026 at 11:35 AM
-- Server version: 9.1.0
-- PHP Version: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quiz_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `authtoken_token`
--

DROP TABLE IF EXISTS `authtoken_token`;
CREATE TABLE IF NOT EXISTS `authtoken_token` (
  `key` varchar(40) NOT NULL,
  `created` datetime(6) NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`key`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4  ;

--
-- Dumping data for table `authtoken_token`
--

INSERT INTO `authtoken_token` (`key`, `created`, `user_id`) VALUES
('8532258633bed87ba7fe241d47b96c7b7518d5d7', '2025-12-29 16:38:44.262333', 1),
('86b5db9332c64138fee83592d2a933db9b5604a6', '2025-12-30 18:46:39.923335', 2);

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4  ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4  ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4  ;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 3, 'add_permission'),
(6, 'Can change permission', 3, 'change_permission'),
(7, 'Can delete permission', 3, 'delete_permission'),
(8, 'Can view permission', 3, 'view_permission'),
(9, 'Can add group', 2, 'add_group'),
(10, 'Can change group', 2, 'change_group'),
(11, 'Can delete group', 2, 'delete_group'),
(12, 'Can view group', 2, 'view_group'),
(13, 'Can add content type', 4, 'add_contenttype'),
(14, 'Can change content type', 4, 'change_contenttype'),
(15, 'Can delete content type', 4, 'delete_contenttype'),
(16, 'Can view content type', 4, 'view_contenttype'),
(17, 'Can add session', 5, 'add_session'),
(18, 'Can change session', 5, 'change_session'),
(19, 'Can delete session', 5, 'delete_session'),
(20, 'Can view session', 5, 'view_session'),
(21, 'Can add Token', 6, 'add_token'),
(22, 'Can change Token', 6, 'change_token'),
(23, 'Can delete Token', 6, 'delete_token'),
(24, 'Can view Token', 6, 'view_token'),
(25, 'Can add Token', 7, 'add_tokenproxy'),
(26, 'Can change Token', 7, 'change_tokenproxy'),
(27, 'Can delete Token', 7, 'delete_tokenproxy'),
(28, 'Can view Token', 7, 'view_tokenproxy'),
(29, 'Can add user profile', 9, 'add_userprofile'),
(30, 'Can change user profile', 9, 'change_userprofile'),
(31, 'Can delete user profile', 9, 'delete_userprofile'),
(32, 'Can view user profile', 9, 'view_userprofile'),
(33, 'Can add test result', 8, 'add_testresult'),
(34, 'Can change test result', 8, 'change_testresult'),
(35, 'Can delete test result', 8, 'delete_testresult'),
(36, 'Can view test result', 8, 'view_testresult'),
(37, 'Can add generated quiz', 10, 'add_generatedquiz'),
(38, 'Can change generated quiz', 10, 'change_generatedquiz'),
(39, 'Can delete generated quiz', 10, 'delete_generatedquiz'),
(40, 'Can view generated quiz', 10, 'view_generatedquiz'),
(41, 'Can add question', 13, 'add_question'),
(42, 'Can change question', 13, 'change_question'),
(43, 'Can delete question', 13, 'delete_question'),
(44, 'Can view question', 13, 'view_question'),
(45, 'Can add user result', 15, 'add_userresult'),
(46, 'Can change user result', 15, 'change_userresult'),
(47, 'Can delete user result', 15, 'delete_userresult'),
(48, 'Can view user result', 15, 'view_userresult'),
(49, 'Can add learning path', 11, 'add_learningpath'),
(50, 'Can change learning path', 11, 'change_learningpath'),
(51, 'Can delete learning path', 11, 'delete_learningpath'),
(52, 'Can view learning path', 11, 'view_learningpath'),
(53, 'Can add module', 12, 'add_module'),
(54, 'Can change module', 12, 'change_module'),
(55, 'Can delete module', 12, 'delete_module'),
(56, 'Can view module', 12, 'view_module'),
(57, 'Can add user progress', 14, 'add_userprogress'),
(58, 'Can change user progress', 14, 'change_userprogress'),
(59, 'Can delete user progress', 14, 'delete_userprogress'),
(60, 'Can view user progress', 14, 'view_userprogress'),
(61, 'Can add level', 16, 'add_level'),
(62, 'Can change level', 16, 'change_level'),
(63, 'Can delete level', 16, 'delete_level'),
(64, 'Can view level', 16, 'view_level'),
(65, 'Can add user level progress', 17, 'add_userlevelprogress'),
(66, 'Can change user level progress', 17, 'change_userlevelprogress'),
(67, 'Can delete user level progress', 17, 'delete_userlevelprogress'),
(68, 'Can view user level progress', 17, 'view_userlevelprogress');

-- --------------------------------------------------------

--
-- Table structure for table `core_testresult`
--

DROP TABLE IF EXISTS `core_testresult`;
CREATE TABLE IF NOT EXISTS `core_testresult` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `score` float DEFAULT '0',
  `date_taken` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `core_userprofile`
--

DROP TABLE IF EXISTS `core_userprofile`;
CREATE TABLE IF NOT EXISTS `core_userprofile` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `email` varchar(255) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `birth_date` date NOT NULL,
  `student_level` varchar(50) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `failed_login_attempts` int NOT NULL,
  `is_locked` tinyint(1) NOT NULL,
  `last_failed_login` datetime(6) DEFAULT NULL,
  `profile_picture` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4  ;

--
-- Dumping data for table `core_userprofile`
--

INSERT INTO `core_userprofile` (`id`, `password`, `last_login`, `is_superuser`, `email`, `full_name`, `birth_date`, `student_level`, `is_active`, `is_staff`, `failed_login_attempts`, `is_locked`, `last_failed_login`, `profile_picture`) VALUES
(1, 'pbkdf2_sha256$1200000$Tdpi3oebSoH1KlJfU3oV9G$XKk6sJqeIhr9a6GvhiV/9m1U3ATr3OiWy0MEC0rp+VE=', NULL, 1, 'admin@demo.com', 'System Administrator', '1995-01-01', NULL, 1, 1, 0, 0, NULL, NULL),
(2, 'pbkdf2_sha256$1200000$Kain63N5DYMcNqGPgbci0d$YwbeI72M6FsOjyVmS7+n6Uy0IEHP0nCxYeHaNYUgNJc=', NULL, 0, 'omr@demo.com', 'Omr', '2000-12-23', NULL, 1, 0, 0, 0, '2026-01-10 06:08:48.773980', 'profile_pics/icons8-person-48.png'),
(4, 'pbkdf2_sha256$1200000$S4Ulg7SNbqeIPmMCcawV9i$iloQq54BjrpSaNjnVrYmfBdX2BS96Gi3XNlAhTFmhMg=', NULL, 0, 'user@demo.com', 'user', '2005-01-10', NULL, 1, 0, 0, 0, NULL, ''),
(6, 'pbkdf2_sha256$1200000$ILZcVcx7oXGkMRWueuvWwR$LspffrBdr3WlwxV5jvNk3qZsjRcLwd6XUYQtMobKmSY=', NULL, 0, 'user1@demo.com', 'user1', '2005-01-10', NULL, 1, 0, 0, 0, NULL, ''),
(8, 'pbkdf2_sha256$1200000$Wl0cUPLmZiIhFLijIySnGX$Ye13boBNg+ytulk9C7dCuAyXB4HcPJJvO61hlG7eJMM=', NULL, 0, 'user2@gmail.com', 'user2', '2006-01-10', NULL, 1, 0, 0, 0, NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `core_userprofile_groups`
--

DROP TABLE IF EXISTS `core_userprofile_groups`;
CREATE TABLE IF NOT EXISTS `core_userprofile_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `userprofile_id` bigint NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `core_userprofile_groups_userprofile_id_group_id_850ef664_uniq` (`userprofile_id`,`group_id`),
  KEY `core_userprofile_groups_group_id_384230fa_fk_auth_group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4  ;

-- --------------------------------------------------------

--
-- Table structure for table `core_userprofile_user_permissions`
--

DROP TABLE IF EXISTS `core_userprofile_user_permissions`;
CREATE TABLE IF NOT EXISTS `core_userprofile_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `userprofile_id` bigint NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `core_userprofile_user_pe_userprofile_id_permissio_99e366ea_uniq` (`userprofile_id`,`permission_id`),
  KEY `core_userprofile_use_permission_id_c90fc1a9_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4  ;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_core_userprofile_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4  ;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4  ;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(2, 'auth', 'group'),
(3, 'auth', 'permission'),
(6, 'authtoken', 'token'),
(7, 'authtoken', 'tokenproxy'),
(4, 'contenttypes', 'contenttype'),
(8, 'core', 'testresult'),
(9, 'core', 'userprofile'),
(10, 'quiz_api', 'generatedquiz'),
(11, 'quiz_api', 'learningpath'),
(16, 'quiz_api', 'level'),
(12, 'quiz_api', 'module'),
(13, 'quiz_api', 'question'),
(17, 'quiz_api', 'userlevelprogress'),
(14, 'quiz_api', 'userprogress'),
(15, 'quiz_api', 'userresult'),
(5, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4  ;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2025-12-29 06:24:55.504782'),
(2, 'contenttypes', '0002_remove_content_type_name', '2025-12-29 06:24:55.651608'),
(3, 'auth', '0001_initial', '2025-12-29 06:24:56.406037'),
(4, 'auth', '0002_alter_permission_name_max_length', '2025-12-29 06:24:56.534541'),
(5, 'auth', '0003_alter_user_email_max_length', '2025-12-29 06:24:56.546437'),
(6, 'auth', '0004_alter_user_username_opts', '2025-12-29 06:24:56.557730'),
(7, 'auth', '0005_alter_user_last_login_null', '2025-12-29 06:24:56.568664'),
(8, 'auth', '0006_require_contenttypes_0002', '2025-12-29 06:24:56.572306'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2025-12-29 06:24:56.584505'),
(10, 'auth', '0008_alter_user_username_max_length', '2025-12-29 06:24:56.595889'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2025-12-29 06:24:56.608453'),
(12, 'auth', '0010_alter_group_name_max_length', '2025-12-29 06:24:56.640414'),
(13, 'auth', '0011_update_proxy_permissions', '2025-12-29 06:24:56.654612'),
(14, 'auth', '0012_alter_user_first_name_max_length', '2025-12-29 06:24:56.667135'),
(28, 'sessions', '0001_initial', '2025-12-29 06:24:58.770738'),
(48, 'core', '0001_initial', '2026-01-09 16:54:35.460618'),
(49, 'admin', '0001_initial', '2026-01-09 16:54:35.475981'),
(50, 'admin', '0002_logentry_remove_auto_add', '2026-01-09 16:54:35.479115'),
(51, 'admin', '0003_logentry_add_action_flag_choices', '2026-01-09 16:54:35.483300'),
(52, 'authtoken', '0001_initial', '2026-01-09 16:54:35.486085'),
(53, 'authtoken', '0002_auto_20160226_1747', '2026-01-09 16:54:35.490373'),
(54, 'authtoken', '0003_tokenproxy', '2026-01-09 16:54:35.493552'),
(55, 'authtoken', '0004_alter_tokenproxy_options', '2026-01-09 16:54:35.496415'),
(56, 'core', '0002_userprofile_failed_login_attempts_and_more', '2026-01-09 16:54:35.499516'),
(57, 'quiz_api', '0001_initial', '2026-01-09 16:54:35.502387'),
(58, 'quiz_api', '0002_remove_userresult_ai_analysis_json_question_q_type', '2026-01-09 16:54:35.505163'),
(59, 'quiz_api', '0003_learningpath_module_generatedquiz_module_and_more', '2026-01-09 16:54:35.508543'),
(60, 'quiz_api', '0004_generatedquiz_user', '2026-01-09 16:54:35.511078'),
(61, 'quiz_api', '0005_rename_path_module_learning_path_and_more', '2026-01-09 16:54:35.513728'),
(62, 'quiz_api', '0006_question_model_answer_question_question_type_and_more', '2026-01-09 16:54:35.516258'),
(63, 'quiz_api', '0007_alter_question_options_remove_question_q_type_and_more', '2026-01-09 16:54:35.518753'),
(64, 'quiz_api', '0008_alter_userresult_options_and_more', '2026-01-09 16:54:35.521352'),
(65, 'quiz_api', '0009_learningpath_prerequisite_path_and_more', '2026-01-09 16:54:35.524747'),
(66, 'quiz_api', '0010_alter_learningpath_description_and_more', '2026-01-09 16:54:35.527147'),
(67, 'quiz_api', '0011_level_alter_question_options_and_more', '2026-01-09 16:54:35.529430'),
(68, 'quiz_api', '0012_alter_question_options_question_difficulty', '2026-01-09 16:54:35.531632'),
(69, 'quiz_api', '0013_alter_module_options', '2026-01-09 16:54:35.533969'),
(70, 'core', '0003_userprofile_profile_picture', '2026-01-10 00:44:29.162743'),
(71, 'quiz_api', '0014_alter_question_correct_answer', '2026-01-10 07:22:11.028859');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4  ;

-- --------------------------------------------------------

--
-- Table structure for table `quiz_api_generatedquiz`
--

DROP TABLE IF EXISTS `quiz_api_generatedquiz`;
CREATE TABLE IF NOT EXISTS `quiz_api_generatedquiz` (
  `quiz_id` char(32) NOT NULL,
  `language` varchar(50) NOT NULL,
  `initial_level` varchar(50) NOT NULL,
  `generated_at` datetime(6) NOT NULL,
  `module_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`quiz_id`),
  KEY `quiz_api_generatedquiz_module_id_85ed5c63_fk_quiz_api_module_id` (`module_id`),
  KEY `quiz_api_generatedquiz_user_id_4aeeedf4_fk_core_userprofile_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4  ;

--
-- Dumping data for table `quiz_api_generatedquiz`
--

INSERT INTO `quiz_api_generatedquiz` (`quiz_id`, `language`, `initial_level`, `generated_at`, `module_id`, `user_id`) VALUES
('1dd978ba6f314d4b814555791f18799e', 'أساسيات HTML5', 'Beginner', '2026-01-09 22:10:01.523138', 1, 2),
('1f461cc9d9214e6b950387d4c605cf1b', 'أساسيات HTML5', 'Beginner', '2026-01-10 00:25:54.310318', 1, 2),
('30b31e7918fd419d83881befca651a5d', 'أساسيات HTML5', 'Intermediate', '2026-01-10 08:41:39.543457', 1, 2),
('37fdcb5cff294bafa45c842b14ae3966', 'أساسيات HTML5', 'Beginner', '2026-01-10 07:04:25.854597', 1, 2),
('3c7e82a1fcaa41f19515970b16bd37da', 'أساسيات HTML5', 'Advanced', '2026-01-09 23:56:30.937390', 1, 2),
('4aa58ab1f7de448f913ddc68e2ad1f25', 'أساسيات HTML5', 'Intermediate', '2026-01-09 22:47:02.288334', 1, 2),
('4d71c2ba26564353af4097dbe1b200b7', 'أساسيات HTML5', 'Beginner', '2026-01-10 04:36:40.107739', 1, 2),
('518addddd0cd47c1b0c02803f399626f', 'أساسيات HTML5', 'Advanced', '2026-01-09 23:54:44.294521', 1, 2),
('5ba0dc44fd154cf4a11e325a8f372ed3', 'أساسيات HTML5', 'Intermediate', '2026-01-10 07:42:43.837610', 1, 2),
('64f8a385de1a4cef8849ee4609dc8a1d', 'أساسيات HTML5', 'Intermediate', '2026-01-10 08:40:12.494671', 1, 2),
('7b4acb2d6fbf4ddab5c6ff5633b758b9', 'أساسيات HTML5', 'Intermediate', '2026-01-10 08:50:31.575467', 1, 2),
('8024631b517b4b6b8096feab958e55e2', 'أساسيات HTML5', 'Beginner', '2026-01-09 22:21:06.463856', 1, 2),
('954d3c61a3ce468ea3e7c40a444ce2e5', 'أساسيات HTML5', 'Beginner', '2026-01-09 22:18:36.625588', 1, 2),
('9646d378d53346c7bab606e89b2e2949', 'أساسيات HTML5', 'Beginner', '2026-01-10 00:33:35.079529', 1, 2),
('a1b2c3d4e5f647898a9b8c8d8e8f8001', '', '', '2026-01-10 00:55:22.000000', 1, 2),
('a1b2c3d4e5f647898a9b8c8d8e8f8002', '', '', '2026-01-10 00:55:22.000000', 2, 2),
('a1b2c3d4e5f647898a9b8c8d8e8f8003', '', '', '2026-01-10 00:55:22.000000', 3, 2),
('a1b2c3d4e5f647898a9b8c8d8e8f8004', '', '', '2026-01-10 00:55:22.000000', 4, 2),
('a87370a7d58d43b9bf157a9ca647143d', 'أساسيات HTML5', 'Beginner', '2026-01-10 07:04:55.357299', 1, 2),
('af3eb1bb64bd413fa7e2ab5049fe4d1a', 'أساسيات HTML5', 'Beginner', '2026-01-10 07:40:03.883540', 1, 2),
('b01dea1ce6fd445e908ca30fe2cf634f', 'أساسيات HTML5', 'Beginner', '2026-01-10 07:22:24.967215', 1, 2),
('b65fc077fba041e09ab6c3d4db45c2c2', 'أساسيات HTML5', 'Beginner', '2026-01-09 22:34:32.296247', 1, 2),
('e0849f6de7014520b36092442b77c6d4', 'أساسيات HTML5', 'Advanced', '2026-01-10 08:35:04.694579', 1, 2),
('e277fb7bade04f9f85bc6ea8a93f5994', 'أساسيات HTML5', 'Intermediate', '2026-01-10 08:37:23.660824', 1, 2),
('ee0dd2f13a7240c8b6380240b1f7ee0b', 'أساسيات HTML5', 'Beginner', '2026-01-09 22:44:26.014445', 1, 2),
('f0f0dcefe4cf4789a721085ff99c2522', 'أساسيات HTML5', 'Beginner', '2026-01-10 08:57:57.774747', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `quiz_api_learningpath`
--

DROP TABLE IF EXISTS `quiz_api_learningpath`;
CREATE TABLE IF NOT EXISTS `quiz_api_learningpath` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `prerequisite_path_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `quiz_api_learningpat_prerequisite_path_id_b11edbc6_fk_quiz_api_` (`prerequisite_path_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4  ;

--
-- Dumping data for table `quiz_api_learningpath`
--

INSERT INTO `quiz_api_learningpath` (`id`, `name`, `description`, `created_at`, `is_active`, `prerequisite_path_id`) VALUES
(1, 'تطوير المواقع (Full-Stack)', 'تعلم بناء المواقع من الصفر باستخدام JavaScript و React.', '2026-01-10 00:26:30.000000', 1, NULL),
(2, 'الذكاء الاصطناعي (AI)', 'تعلم لغة Python وخوارزميات تعلم الآلة.', '2026-01-10 00:26:30.000000', 1, NULL),
(3, 'الأمن السيبراني', 'أساسيات حماية الأنظمة واختبار الاختراق.', '2026-01-10 00:26:30.000000', 1, NULL),
(4, 'تطوير تطبيقات الجوال', 'بناء تطبيقات Android و iOS باستخدام Flutter.', '2026-01-10 00:26:30.000000', 1, NULL),
(5, 'هندسة الحوسبة السحابية', 'إدارة السيرفرات والبنية التحتية على AWS.', '2026-01-10 00:26:30.000000', 1, NULL),
(6, 'علوم البيانات', 'تحليل البيانات الكبيرة باستخدام SQL و R.', '2026-01-10 00:26:30.000000', 1, NULL),
(7, 'برمجة الألعاب', 'تطوير ألعاب تفاعلية باستخدام Unity و C#.', '2026-01-10 00:26:30.000000', 1, NULL),
(8, 'إنترنت الأشياء (IoT)', 'برمجة الحساسات والأنظمة المدمجة.', '2026-01-10 00:26:30.000000', 1, NULL),
(9, 'هندسة البرمجيات (DevOps)', 'أتمتة العمليات البرمجية باستخدام Docker.', '2026-01-10 00:26:30.000000', 1, NULL),
(10, 'البلوكشين (Blockchain)', 'تعلم العقود الذكية وتقنيات Web3.', '2026-01-10 00:26:30.000000', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `quiz_api_level`
--

DROP TABLE IF EXISTS `quiz_api_level`;
CREATE TABLE IF NOT EXISTS `quiz_api_level` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `rank` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `rank` (`rank`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4  ;

--
-- Dumping data for table `quiz_api_level`
--

INSERT INTO `quiz_api_level` (`id`, `name`, `rank`) VALUES
(1, 'Beginner', 1),
(2, 'Intermediate', 2),
(3, 'Advanced', 3);

-- --------------------------------------------------------

--
-- Table structure for table `quiz_api_module`
--

DROP TABLE IF EXISTS `quiz_api_module`;
CREATE TABLE IF NOT EXISTS `quiz_api_module` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `order` int NOT NULL,
  `content_summary` longtext NOT NULL,
  `learning_path_id` bigint NOT NULL,
  `prerequisite_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `quiz_api_module_prerequisite_id_cc870469_fk_quiz_api_module_id` (`prerequisite_id`),
  KEY `quiz_api_module_learning_path_id_7bafa156_fk_quiz_api_` (`learning_path_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4  ;

--
-- Dumping data for table `quiz_api_module`
--

INSERT INTO `quiz_api_module` (`id`, `name`, `order`, `content_summary`, `learning_path_id`, `prerequisite_id`) VALUES
(1, 'أساسيات HTML5', 1, 'تعلم بنية صفحات الويب والوسوم الحديثة', 1, NULL),
(2, 'تنسيقات CSS3', 2, 'احتراف التصميم المتجاوب و Flexbox', 1, 1),
(3, 'برمجة JavaScript', 3, 'التعامل مع الـ DOM والأحداث التفاعلية', 1, 2),
(4, 'Network Security', 1, 'أمن الشبكات', 2, NULL),
(5, 'Python for AI', 1, 'Summary', 3, NULL),
(6, 'Mobile UI Design', 1, 'Summary', 4, NULL),
(7, 'Cloud Infrastructure', 1, 'Summary', 5, NULL),
(8, 'Big Data Analysis', 1, 'Summary', 6, NULL),
(9, 'Unity 3D Engine', 1, 'Summary', 7, NULL),
(10, 'Arduino Systems', 1, 'Summary', 8, NULL),
(11, 'Docker & Jenkins', 1, 'Summary', 9, NULL),
(12, 'Solidity Contracts', 1, 'Summary', 10, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `quiz_api_question`
--

DROP TABLE IF EXISTS `quiz_api_question`;
CREATE TABLE IF NOT EXISTS `quiz_api_question` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `question_text` longtext NOT NULL,
  `options_json` json NOT NULL,
  `correct_answer` longtext NOT NULL,
  `quiz_id` char(32) NOT NULL,
  `model_answer` longtext,
  `question_type` varchar(20) NOT NULL,
  `ai_feedback` longtext,
  `code_snippet` longtext,
  `created_at` datetime(6) NOT NULL,
  `difficulty` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `quiz_api_question_quiz_id_fff5180a_fk_quiz_api_` (`quiz_id`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4  ;

--
-- Dumping data for table `quiz_api_question`
--

INSERT INTO `quiz_api_question` (`id`, `question_text`, `options_json`, `correct_answer`, `quiz_id`, `model_answer`, `question_type`, `ai_feedback`, `code_snippet`, `created_at`, `difficulty`) VALUES
(1, 'Which of the following is not a valid attribute for the <img> tag?', '{\"a\": \"<src>\", \"b\": \"<alt>\", \"c\": \"<width>\", \"d\": \"<height>\"}', 'c', '1f461cc9d9214e6b950387d4c605cf1b', '', 'multiple_choice', NULL, '', '2026-01-10 00:25:54.311290', 'easy'),
(2, 'What is the purpose of the <canvas> element?', '{\"a\": \"To display text\", \"b\": \"To draw graphics\", \"c\": \"To create tables\", \"d\": \"To play audio\"}', 'b', '1f461cc9d9214e6b950387d4c605cf1b', '', 'multiple_choice', NULL, '', '2026-01-10 00:25:54.311360', 'easy'),
(3, 'Which of the following is not a valid attribute for the <input> tag?', '{\"a\": \"<type>\", \"b\": \"<name>\", \"c\": \"<value>\", \"d\": \"<required>\"}', 'c', '1f461cc9d9214e6b950387d4c605cf1b', '', 'multiple_choice', NULL, '', '2026-01-10 00:25:54.311408', 'easy'),
(4, 'What is the purpose of the <script> element?', '{\"a\": \"To display text\", \"b\": \"To draw graphics\", \"c\": \"To create tables\", \"d\": \"To execute JavaScript\"}', 'd', '1f461cc9d9214e6b950387d4c605cf1b', '', 'multiple_choice', NULL, '', '2026-01-10 00:25:54.311453', 'easy'),
(5, 'Which of the following is not a valid attribute of the <input> tag?', '{\"a\": \"<type>\", \"b\": \"<value>\", \"c\": \"<name>\", \"d\": \"<placeholder>\"}', 'b', '9646d378d53346c7bab606e89b2e2949', '', 'multiple_choice', NULL, '', '2026-01-10 00:33:35.080641', 'easy'),
(6, 'What is the purpose of the <canvas> tag in HTML5?', '{\"a\": \"To create a 2D graphics canvas\", \"b\": \"To display text\", \"c\": \"To play audio\", \"d\": \"To create a 3D graphics canvas\"}', 'a', '9646d378d53346c7bab606e89b2e2949', '', 'multiple_choice', NULL, '', '2026-01-10 00:33:35.080686', 'easy'),
(7, 'Which of the following is not a valid attribute of the <video> tag?', '{\"a\": \"<controls>\", \"b\": \"<autoplay>\", \"c\": \"<loop>\", \"d\": \"<poster>\"}', 'c', '9646d378d53346c7bab606e89b2e2949', '', 'multiple_choice', NULL, '', '2026-01-10 00:33:35.080722', 'easy'),
(8, 'What is the purpose of the <audio> tag in HTML5?', '{\"a\": \"To create a 2D graphics canvas\", \"b\": \"To display text\", \"c\": \"To play audio\", \"d\": \"To create a 3D graphics canvas\"}', 'c', '9646d378d53346c7bab606e89b2e2949', '', 'multiple_choice', NULL, '', '2026-01-10 00:33:35.080754', 'easy'),
(9, 'What is the correct syntax to create a simple HTML document?', '{\"a\": \"<html></html>\", \"b\": \"<body></body>\", \"c\": \"<head></head>\", \"d\": \"<script></script>\"}', 'a', '4d71c2ba26564353af4097dbe1b200b7', '', 'multiple_choice', NULL, '<!DOCTYPE html>\n<html lang=\"en\">\n<head>\n    <meta charset=\"UTF-8\">\n    <title>My First HTML Document</title>\n</head>\n<body>\n    Hello, World!\n</body>\n</html>', '2026-01-10 04:36:40.108604', 'easy'),
(10, 'What is the purpose of the \'DOCTYPE\' declaration in an HTML document?', '{\"a\": \"To define the version of HTML\", \"b\": \"To specify the character encoding\", \"c\": \"To set up the layout of the page\", \"d\": \"To create a script tag\"}', 'a', '4d71c2ba26564353af4097dbe1b200b7', '', 'multiple_choice', NULL, '<!DOCTYPE html>\n<html lang=\"en\">\n<head>\n    <meta charset=\"UTF-8\">\n    <title>My First HTML Document</title>\n</head>\n<body>\n    Hello, World!\n</body>\n</html>', '2026-01-10 04:36:40.108641', 'easy'),
(11, 'What is the correct syntax to create a heading element in HTML?', '{\"a\": \"<h1></h1>\", \"b\": \"<h2></h2>\", \"c\": \"<h3></h3>\", \"d\": \"<h4></h4>\"}', 'a', '4d71c2ba26564353af4097dbe1b200b7', '', 'multiple_choice', NULL, '<!DOCTYPE html>\n<html lang=\"en\">\n<head>\n    <meta charset=\"UTF-8\">\n    <title>My First HTML Document</title>\n</head>\n<body>\n    <h1>Hello, World!</h1>\n</body>\n</html>', '2026-01-10 04:36:40.108675', 'easy'),
(12, 'What is the correct syntax to create a paragraph element in HTML?', '{\"a\": \"<p></p>\", \"b\": \"<div></div>\", \"c\": \"<span></span>\", \"d\": \"<h1></h1>\"}', 'a', '4d71c2ba26564353af4097dbe1b200b7', '', 'multiple_choice', NULL, '<!DOCTYPE html>\n<html lang=\"en\">\n<head>\n    <meta charset=\"UTF-8\">\n    <title>My First HTML Document</title>\n</head>\n<body>\n    <p>Hello, World!</p>\n</body>\n</html>', '2026-01-10 04:36:40.108701', 'easy'),
(49, 'Which HTML5 element is used to embed video content?', '{\"a\": \"<media>\", \"b\": \"<video>\", \"c\": \"<movie>\", \"d\": \"<embed>\"}', 'b', 'b01dea1ce6fd445e908ca30fe2cf634f', NULL, 'multiple_choice', NULL, '', '2026-01-10 07:22:24.968059', 'Beginner'),
(50, 'Which of the following is NOT a new semantic element in HTML5?', '{\"a\": \"<article>\", \"b\": \"<section>\", \"c\": \"<div>\", \"d\": \"<aside>\"}', 'c', 'b01dea1ce6fd445e908ca30fe2cf634f', NULL, 'multiple_choice', NULL, '', '2026-01-10 07:22:24.968100', 'Beginner'),
(51, 'Which doctype declaration is correct for HTML5?', '{\"a\": \"<DOCTYPE HTML5>\", \"b\": \"<!DOCTYPE html>\", \"c\": \"<!DOCTYPE HTML PUBLIC \\\"-//W3C//DTD HTML 4.01 Transitional//EN\\\" \\\"http://www.w3.org/TR/html4/loose.dtd\\\">\", \"d\": \"<DOCTYPE html>\"}', 'b', 'b01dea1ce6fd445e908ca30fe2cf634f', NULL, 'multiple_choice', NULL, '', '2026-01-10 07:22:24.968134', 'Beginner'),
(52, 'Which of the following is the correct way to define a character set in HTML5?', '{\"a\": \"<meta charset=\\\"UTF-8\\\">\", \"b\": \"<meta character-set=\\\"UTF-8\\\">\", \"c\": \"<charset>UTF-8</charset>\", \"d\": \"<meta http-equiv=\\\"Content-Type\\\" content=\\\"text/html; charset=UTF-8\\\">\"}', 'a', 'b01dea1ce6fd445e908ca30fe2cf634f', NULL, 'multiple_choice', NULL, '', '2026-01-10 07:22:24.968151', 'Beginner'),
(53, 'Which element is used to define self-contained content that could be independently distributed or reused?', '{\"a\": \"<nav>\", \"b\": \"<header>\", \"c\": \"<article>\", \"d\": \"<aside>\"}', 'c', 'b01dea1ce6fd445e908ca30fe2cf634f', NULL, 'multiple_choice', NULL, '', '2026-01-10 07:22:24.968166', 'Beginner'),
(54, 'Create a basic HTML5 page structure that includes a header, a navigation section, a main content section, an aside, and a footer. Use appropriate semantic elements.', '{}', '<!DOCTYPE html>\n<html>\n<head>\n    <title>Basic HTML5 Structure</title>\n</head>\n<body>\n    <header>\n        <h1>Website Title</h1>\n    </header>\n\n    <nav>\n        <ul>\n            <li><a href=\"#\">Home</a></li>\n            <li><a href=\"#\">About</a></li>\n            <li><a href=\"#\">Services</a></li>\n            <li><a href=\"#\">Contact</a></li>\n        </ul>\n    </nav>\n\n    <main>\n        <article>\n            <h2>Main Content</h2>\n            <p>This is the main content of the page.</p>\n        </article>\n    </main>\n\n    <aside>\n        <h3>Related Content</h3>\n        <p>This is related content in the aside section.</p>\n    </aside>\n\n    <footer>\n        <p>&copy; 2024 My Website</p>\n    </footer>\n</body>\n</html>', 'b01dea1ce6fd445e908ca30fe2cf634f', NULL, 'code_snippet', NULL, '', '2026-01-10 07:22:24.968196', 'Beginner'),
(55, 'Which HTML5 element is used for playing video files?', '{\"a\": \"<media>\", \"b\": \"<video>\", \"c\": \"<movie>\", \"d\": \"<audio>\"}', 'b', 'af3eb1bb64bd413fa7e2ab5049fe4d1a', NULL, 'multiple_choice', NULL, '', '2026-01-10 07:40:03.884430', 'Beginner'),
(56, 'Which of the following is the correct HTML5 doctype declaration?', '{\"a\": \"<DOCTYPE HTML5>\", \"b\": \"<!DOCTYPE html>\", \"c\": \"<!DOCTYPE HTML PUBLIC \\\"-//W3C//DTD HTML 4.01 Transitional//EN\\\">\", \"d\": \"<!DOCTYPE HTML>\"}', 'b', 'af3eb1bb64bd413fa7e2ab5049fe4d1a', NULL, 'multiple_choice', NULL, '', '2026-01-10 07:40:03.884467', 'Beginner'),
(57, 'Which of the following is the correct way to define the document type for HTML5?', '{\"a\": \"<doctype html>\", \"b\": \"<!DOCTYPE HTML5>\", \"c\": \"<!DOCTYPE html>\", \"d\": \"<!DOCTYPE HTML PUBLIC \\\"-//W3C//DTD HTML 4.01 Transitional//EN\\\" \\\"http://www.w3.org/TR/html4/loose.dtd\\\">\"}', 'c', '5ba0dc44fd154cf4a11e325a8f372ed3', NULL, 'multiple_choice', NULL, '', '2026-01-10 07:42:43.838648', 'Intermediate'),
(58, 'Which of the following HTML5 tags is used to define independent, self-contained content?', '{\"a\": \"<nav>\", \"b\": \"<aside>\", \"c\": \"<article>\", \"d\": \"<section>\"}', 'c', '5ba0dc44fd154cf4a11e325a8f372ed3', NULL, 'multiple_choice', NULL, '', '2026-01-10 07:42:43.838679', 'Intermediate'),
(59, 'Write the HTML code to embed a YouTube video using the `<iframe>` tag. Assume the video ID is \'dQw4w9WgXcQ\', set width to 560 and height to 315.', '{}', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/dQw4w9WgXcQ\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '5ba0dc44fd154cf4a11e325a8f372ed3', NULL, 'code_snippet', NULL, '', '2026-01-10 07:42:43.838698', 'Intermediate'),
(60, 'Which HTML5 feature is most effective for improving website performance by reducing server load for static assets?', '{\"a\": \"WebSockets\", \"b\": \"Application Cache (AppCache)\", \"c\": \"Server-Sent Events (SSE)\", \"d\": \"Web Workers\"}', 'b', 'e0849f6de7014520b36092442b77c6d4', NULL, 'multiple_choice', NULL, '', '2026-01-10 08:35:04.697235', 'Advanced'),
(61, 'When designing a complex web application, which approach best utilizes HTML5 semantic elements to enhance both SEO and maintainability?', '{\"a\": \"Using `<div>` elements with descriptive CSS classes for all structural components.\", \"b\": \"Relying solely on JavaScript frameworks to handle dynamic content rendering.\", \"c\": \"Employing `<header>`, `<nav>`, `<article>`, `<aside>`, and `<footer>` elements to define document structure.\", \"d\": \"Embedding all content within a single `<section>` element for simplified styling.\"}', 'c', 'e0849f6de7014520b36092442b77c6d4', NULL, 'multiple_choice', NULL, '', '2026-01-10 08:35:04.697347', 'Advanced'),
(62, 'Implement an HTML5 structure for a simple webpage that includes a header with a navigation menu, a main section with an article, and a footer. The navigation menu should contain links to \'Home\', \'About\', and \'Contact\'. The article should have a title and some sample text.', '{}', '<header>\n  <nav>\n    <ul>\n      <li><a href=\"#\">Home</a></li>\n      <li><a href=\"#\">About</a></li>\n      <li><a href=\"#\">Contact</a></li>\n    </ul>\n  </nav>\n</header>\n\n<main>\n  <article>\n    <h1>Article Title</h1>\n    <p>This is some sample text for the article.</p>\n  </article>\n</main>\n\n<footer>\n  <p>&copy; 2024</p>\n</footer>', 'e0849f6de7014520b36092442b77c6d4', NULL, 'code_snippet', NULL, '', '2026-01-10 08:35:04.697425', 'Advanced'),
(63, 'Which of the following is the correct way to define an HTML5 document type?', '{\"a\": \"<doctype html>\", \"b\": \"<!DOCTYPE HTML5>\", \"c\": \"<!DOCTYPE html>\", \"d\": \"<html>\"}', 'c', 'e277fb7bade04f9f85bc6ea8a93f5994', NULL, 'multiple_choice', NULL, '', '2026-01-10 08:37:23.662145', 'Intermediate'),
(64, 'Which HTML5 element is used to define navigation links?', '{\"a\": \"<navigation>\", \"b\": \"<nav>\", \"c\": \"<links>\", \"d\": \"<navigator>\"}', 'b', 'e277fb7bade04f9f85bc6ea8a93f5994', NULL, 'multiple_choice', NULL, '', '2026-01-10 08:37:23.662284', 'Intermediate'),
(65, 'Write the HTML5 code to embed a YouTube video using an iframe. Assume the video ID is \'dQw4w9WgXcQ\'. Set width to 560 and height to 315.', '{}', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/dQw4w9WgXcQ\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'e277fb7bade04f9f85bc6ea8a93f5994', NULL, 'code_snippet', NULL, '', '2026-01-10 08:37:23.662418', 'Intermediate'),
(66, 'Which HTML5 element is best suited for embedding video content?', '{\"a\": \"<media>\", \"b\": \"<video>\", \"c\": \"<movie>\", \"d\": \"<embed>\"}', 'b', '64f8a385de1a4cef8849ee4609dc8a1d', NULL, 'multiple_choice', NULL, '', '2026-01-10 08:40:12.497546', 'Intermediate'),
(67, 'Which of the following is the correct way to define a character set for an HTML5 document?', '{\"a\": \"<meta charset=\\\"UTF-8\\\">\", \"b\": \"<meta character-set=\\\"UTF-8\\\">\", \"c\": \"<charset>UTF-8</charset>\", \"d\": \"<setting charset=\\\"UTF-8\\\">\"}', 'a', '64f8a385de1a4cef8849ee4609dc8a1d', NULL, 'multiple_choice', NULL, '', '2026-01-10 08:40:12.497673', 'Intermediate'),
(68, 'Create a basic HTML5 page structure with a header containing a title, a main section with a paragraph, and a footer with copyright information. Use semantic HTML5 elements.', '{}', '<!DOCTYPE html>\n<html lang=\"en\">\n<head>\n  <meta charset=\"UTF-8\">\n  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n  <title>Basic HTML5 Structure</title>\n</head>\n<body>\n  <header>\n    <h1>My Website</h1>\n  </header>\n\n  <main>\n    <p>This is the main content of my website.</p>\n  </main>\n\n  <footer>\n    <p>&copy; 2023 My Website</p>\n  </footer>\n</body>\n</html>', '64f8a385de1a4cef8849ee4609dc8a1d', NULL, 'code_snippet', NULL, '', '2026-01-10 08:40:12.497766', 'Intermediate'),
(69, 'Which of the following is the correct way to declare the document type as HTML5?', '{\"a\": \"<DOCTYPE html>\", \"b\": \"<!DOCTYPE HTML5>\", \"c\": \"<!DOCTYPE html>\", \"d\": \"<html>\"}', 'c', '30b31e7918fd419d83881befca651a5d', NULL, 'multiple_choice', NULL, '', '2026-01-10 08:41:39.544359', 'Intermediate'),
(70, 'Which HTML5 element is used to define self-contained content that could independently exist apart from the main content?', '{\"a\": \"<nav>\", \"b\": \"<aside>\", \"c\": \"<article>\", \"d\": \"<section>\"}', 'c', '30b31e7918fd419d83881befca651a5d', NULL, 'multiple_choice', NULL, '', '2026-01-10 08:41:39.544431', 'Intermediate'),
(71, 'Create a basic HTML5 document structure including the \'html\', \'head\', \'title\', and \'body\' elements. Set the title to \'My First HTML5 Page\'.', '{}', '<!DOCTYPE html>\n<html>\n<head>\n<title>My First HTML5 Page</title>\n</head>\n<body>\n\n</body>\n</html>', '30b31e7918fd419d83881befca651a5d', NULL, 'code_snippet', NULL, '', '2026-01-10 08:41:39.544489', 'Intermediate'),
(72, 'Which of the following techniques is MOST effective for improving the loading speed of a website?', '{\"a\": \"Using inline CSS styles extensively.\", \"b\": \"Minifying CSS and JavaScript files.\", \"c\": \"Embedding large, unoptimized images directly into the HTML.\", \"d\": \"Using tables for layout instead of CSS.\"}', 'b', '7b4acb2d6fbf4ddab5c6ff5633b758b9', NULL, 'multiple_choice', NULL, '', '2026-01-10 08:50:31.577615', 'Intermediate'),
(73, 'Which HTML5 element is best suited for structuring the main content of a webpage, excluding headers, footers, and sidebars?', '{\"a\": \"<article>\", \"b\": \"<section>\", \"c\": \"<main>\", \"d\": \"<div>\"}', 'c', '7b4acb2d6fbf4ddab5c6ff5633b758b9', NULL, 'multiple_choice', NULL, '', '2026-01-10 08:50:31.577746', 'Intermediate'),
(74, 'Write HTML code to create a simple responsive image. The image source is \'myimage.jpg\'. Use the \'srcset\' attribute to provide different image sizes for different screen resolutions. Provide a default \'src\' for older browsers. Use sizes attribute to hint the browser about the image size. Assume the image will occupy the full width of the viewport on small screens, and 50% of the viewport width on medium and large screens.', '{}', '<img src=\"myimage.jpg\" alt=\"My Image\" srcset=\"myimage-320w.jpg 320w, myimage-480w.jpg 480w, myimage-800w.jpg 800w\" sizes=\"(max-width: 600px) 100vw, 50vw\">', '7b4acb2d6fbf4ddab5c6ff5633b758b9', NULL, 'code_snippet', NULL, '', '2026-01-10 08:50:31.577844', 'Intermediate'),
(75, 'Which of the following is the MOST semantic HTML5 element for structuring the main content of a webpage?', '{\"a\": \"<article>\", \"b\": \"<div>\", \"c\": \"<section>\", \"d\": \"<main>\"}', 'd', 'f0f0dcefe4cf4789a721085ff99c2522', NULL, 'multiple_choice', NULL, '', '2026-01-10 08:57:57.777731', 'Beginner'),
(76, 'Which of the following is the correct way to link an external CSS stylesheet to an HTML5 document?', '{\"a\": \"<link rel=\\\"stylesheet\\\" type=\\\"text/css\\\" href=\\\"style.css\\\">\", \"b\": \"<stylesheet src=\\\"style.css\\\">\", \"c\": \"<style src=\\\"style.css\\\"></style>\", \"d\": \"<css link=\\\"style.css\\\">\"}', 'a', 'f0f0dcefe4cf4789a721085ff99c2522', NULL, 'multiple_choice', NULL, '', '2026-01-10 08:57:57.777948', 'Beginner'),
(77, 'Which attribute should you use to provide alternative text for an image, improving accessibility?', '{\"a\": \"title\", \"b\": \"src\", \"c\": \"alt\", \"d\": \"href\"}', 'c', 'f0f0dcefe4cf4789a721085ff99c2522', NULL, 'multiple_choice', NULL, '', '2026-01-10 08:57:57.778161', 'Beginner'),
(78, 'Which of these elements is considered obsolete in HTML5 and should be avoided?', '{\"a\": \"<nav>\", \"b\": \"<article>\", \"c\": \"<font>\", \"d\": \"<aside>\"}', 'c', 'f0f0dcefe4cf4789a721085ff99c2522', NULL, 'multiple_choice', NULL, '', '2026-01-10 08:57:57.778334', 'Beginner'),
(79, 'Create a basic HTML5 page structure including a `header`, `nav`, `main` and `footer` section.', '{}', '<!DOCTYPE html>\n<html lang=\"en\">\n<head>\n    <meta charset=\"UTF-8\">\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n    <title>Basic HTML5 Structure</title>\n</head>\n<body>\n    <header>\n        <h1>Website Title</h1>\n    </header>\n    <nav>\n        <ul>\n            <li><a href=\"#\">Home</a></li>\n            <li><a href=\"#\">About</a></li>\n            <li><a href=\"#\">Contact</a></li>\n        </ul>\n    </nav>\n    <main>\n        <article>\n            <h2>Main Content</h2>\n            <p>This is the main content of the page.</p>\n        </article>\n    </main>\n    <footer>\n        <p>&copy; 2024 My Website</p>\n    </footer>\n</body>\n</html>', 'f0f0dcefe4cf4789a721085ff99c2522', NULL, 'code_snippet', NULL, '', '2026-01-10 08:57:57.778492', 'Beginner');

-- --------------------------------------------------------

--
-- Table structure for table `quiz_api_userlearningpath`
--

DROP TABLE IF EXISTS `quiz_api_userlearningpath`;
CREATE TABLE IF NOT EXISTS `quiz_api_userlearningpath` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `enrolled_at` datetime(6) NOT NULL,
  `user_id` bigint NOT NULL,
  `learning_path_id` bigint NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4  ;

--
-- Dumping data for table `quiz_api_userlearningpath`
--

INSERT INTO `quiz_api_userlearningpath` (`id`, `enrolled_at`, `user_id`, `learning_path_id`) VALUES
(1, '2026-01-10 01:11:49.000000', 2, 1),
(2, '2026-01-10 01:11:49.000000', 2, 2),
(3, '2026-01-10 01:11:49.000000', 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `quiz_api_userlevelprogress`
--

DROP TABLE IF EXISTS `quiz_api_userlevelprogress`;
CREATE TABLE IF NOT EXISTS `quiz_api_userlevelprogress` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `is_unlocked` tinyint(1) NOT NULL,
  `is_completed` tinyint(1) NOT NULL,
  `score` double NOT NULL,
  `last_attempt` datetime(6) NOT NULL,
  `level_id` bigint NOT NULL,
  `module_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `quiz_api_userlevelprogre_user_id_module_id_level__85e551d5_uniq` (`user_id`,`module_id`,`level_id`),
  KEY `quiz_api_userlevelpr_level_id_e6de797b_fk_quiz_api_` (`level_id`),
  KEY `quiz_api_userlevelpr_module_id_65a52779_fk_quiz_api_` (`module_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4  ;

--
-- Dumping data for table `quiz_api_userlevelprogress`
--

INSERT INTO `quiz_api_userlevelprogress` (`id`, `is_unlocked`, `is_completed`, `score`, `last_attempt`, `level_id`, `module_id`, `user_id`) VALUES
(1, 1, 0, 50, '2026-01-10 00:34:32.648530', 1, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `quiz_api_userresult`
--

DROP TABLE IF EXISTS `quiz_api_userresult`;
CREATE TABLE IF NOT EXISTS `quiz_api_userresult` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `score` double NOT NULL,
  `final_level` varchar(50) NOT NULL,
  `submitted_at` datetime(6) NOT NULL,
  `quiz_id` char(32) NOT NULL,
  `user_id` bigint NOT NULL,
  `correct_answers_count` int NOT NULL,
  `details` json NOT NULL DEFAULT (_utf8mb4'{}'),
  `total_questions` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `quiz_api_userresult_quiz_id_8a9df2aa_fk_quiz_api_` (`quiz_id`),
  KEY `quiz_api_userresult_user_id_879e2f0f_fk_core_userprofile_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4  ;

--
-- Dumping data for table `quiz_api_userresult`
--

INSERT INTO `quiz_api_userresult` (`id`, `score`, `final_level`, `submitted_at`, `quiz_id`, `user_id`, `correct_answers_count`, `details`, `total_questions`) VALUES
(1, 50, 'Beginner', '2026-01-10 00:26:11.951445', '1f461cc9d9214e6b950387d4c605cf1b', 2, 2, '[{\"feedback\": \"الإجابة الصحيحة كانت: c\", \"is_correct\": false, \"question_id\": 1, \"user_answer\": \"a\", \"correct_answer\": \"c\"}, {\"feedback\": \"\", \"is_correct\": true, \"question_id\": 2, \"user_answer\": \"b\", \"correct_answer\": \"b\"}, {\"feedback\": \"الإجابة الصحيحة كانت: c\", \"is_correct\": false, \"question_id\": 3, \"user_answer\": \"b\", \"correct_answer\": \"c\"}, {\"feedback\": \"\", \"is_correct\": true, \"question_id\": 4, \"user_answer\": \"d\", \"correct_answer\": \"d\"}]', 4),
(2, 50, 'Beginner', '2026-01-10 00:34:32.631944', '9646d378d53346c7bab606e89b2e2949', 2, 2, '[{\"feedback\": \"الإجابة الصحيحة كانت: b\", \"is_correct\": false, \"question_id\": 5, \"user_answer\": \"c\", \"correct_answer\": \"b\"}, {\"feedback\": \"\", \"is_correct\": true, \"question_id\": 6, \"user_answer\": \"a\", \"correct_answer\": \"a\"}, {\"feedback\": \"الإجابة الصحيحة كانت: c\", \"is_correct\": false, \"question_id\": 7, \"user_answer\": \"a\", \"correct_answer\": \"c\"}, {\"feedback\": \"\", \"is_correct\": true, \"question_id\": 8, \"user_answer\": \"c\", \"correct_answer\": \"c\"}]', 4),
(3, 50, 'Beginner', '2026-01-10 07:23:40.560194', 'b01dea1ce6fd445e908ca30fe2cf634f', 2, 0, '[{\"is_correct\": true, \"question_id\": 49, \"user_answer\": \"b\"}, {\"is_correct\": false, \"question_id\": 50, \"user_answer\": \"a\"}, {\"is_correct\": false, \"question_id\": 51, \"user_answer\": null}, {\"is_correct\": true, \"question_id\": 52, \"user_answer\": \"a\"}, {\"is_correct\": false, \"question_id\": 53, \"user_answer\": \"a\"}, {\"is_correct\": true, \"question_id\": 54, \"user_answer\": {\"answer\": \"<!DOCTYPE html>\\n<html lang=\\\"en\\\">\\n<head>\\n    <meta charset=\\\"UTF-8\\\">\\n    <meta name=\\\"viewport\\\" content=\\\"width=device-width, initial-scale=1.0\\\">\\n    <title>Semantic HTML5 Layout</title>\\n    <style>\\n        /* Basic styling for visualization */\\n        body { font-family: sans-serif; line-height: 1.6; margin: 0; padding: 20px; }\\n        header, nav, main, aside, footer { \\n            border: 1px solid #ccc; \\n            padding: 15px; \\n            margin-bottom: 10px; \\n            border-radius: 5px;\\n        }\\n        nav ul { list-style: none; padding: 0; display: flex; gap: 15px; }\\n        .container { display: flex; gap: 20px; }\\n        main { flex: 3; }\\n        aside { flex: 1; background-color: #f9f9f9; }\\n    </style>\\n</head>\\n<body>\\n\\n    <header>\\n        <h1>My Awesome Website</h1>\\n    </header>\\n\\n    <nav>\\n        <ul>\\n            <li><a href=\\\"#\\\">Home</a></li>\\n            <li><a href=\\\"#\\\">About</a></li>\\n            <li><a href=\\\"#\\\">Services</a></li>\\n            <li><a href=\\\"#\\\">Contact</a></li>\\n        </ul>\\n    </nav>\\n\\n    <div class=\\\"container\\\">\\n        <main>\\n            <article>\\n                <h2>Article Headline</h2>\\n                <p>This is the main content area where your primary information goes.</p>\\n            </article>\\n        </main>\\n\\n        <aside>\\n            <h3>Related Info</h3>\\n            <p>This is an aside section for supplementary content.</p>\\n        </aside>\\n    </div>\\n\\n    <footer>\\n        <p>&copy; 2026 My Website. All rights reserved.</p>\\n    </footer>\\n\\n</body>\\n</html>\", \"ai_score\": 1.0, \"ai_feedback\": \"The user\'s code is excellent and fulfills all requirements of the prompt. It uses appropriate semantic HTML5 elements (header, nav, main, aside, footer), and the structure is well-organized. The inclusion of basic CSS styling enhances the visualization and demonstrates a good understanding of web development practices. The code is also well-commented and easy to understand. The use of a container div to group main and aside is a good approach for layout control. The code is well-structured, readable, and adheres to best practices.\"}}]', 0),
(4, 100, 'Beginner', '2026-01-10 07:40:15.924583', 'af3eb1bb64bd413fa7e2ab5049fe4d1a', 2, 0, '[{\"is_correct\": true, \"question_id\": 55, \"user_answer\": \"b\"}, {\"is_correct\": true, \"question_id\": 56, \"user_answer\": \"b\"}]', 0),
(5, 66.66666666666666, 'Intermediate', '2026-01-10 07:43:43.705975', '5ba0dc44fd154cf4a11e325a8f372ed3', 2, 0, '[{\"is_correct\": true, \"question_id\": 57, \"user_answer\": \"c\"}, {\"is_correct\": false, \"question_id\": 58, \"user_answer\": \"d\"}, {\"is_correct\": true, \"question_id\": 59, \"user_answer\": {\"answer\": \"<!DOCTYPE html>\\n<html lang=\\\"en\\\">\\n<head>\\n    <meta charset=\\\"UTF-8\\\">\\n    <title>Embed YouTube Video</title>\\n</head>\\n<body>\\n\\n    <iframe \\n        width=\\\"560\\\" \\n        height=\\\"315\\\" \\n        src=\\\"https://www.youtube.com/embed/dQw4w9WgXcQ\\\" \\n        title=\\\"YouTube video player\\\" \\n        frameborder=\\\"0\\\" \\n        allow=\\\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\\\" \\n        referrerpolicy=\\\"strict-origin-when-cross-origin\\\" \\n        allowfullscreen>\\n    </iframe>\\n\\n</body>\\n</html>\", \"ai_score\": 1.0, \"ai_feedback\": \"The user\'s code is correct and includes best practices for embedding a YouTube video, such as setting the title, referrerpolicy, and allowing various features. It is more complete than the reference solution.\"}}]', 0),
(6, 33.33333333333333, 'Advanced', '2026-01-10 08:36:27.134232', 'e0849f6de7014520b36092442b77c6d4', 2, 0, '[{\"is_correct\": false, \"question_id\": 60, \"user_answer\": \"a\"}, {\"is_correct\": false, \"question_id\": 61, \"user_answer\": \"a\"}, {\"is_correct\": true, \"question_id\": 62, \"user_answer\": {\"answer\": \"<!DOCTYPE html>\\n<html lang=\\\"en\\\">\\n<head>\\n    <meta charset=\\\"UTF-8\\\">\\n    <meta name=\\\"viewport\\\" content=\\\"width=device-width, initial-scale=1.0\\\">\\n    <title>Simple Webpage</title>\\n    <style>\\n        body { font-family: sans-serif; line-height: 1.6; margin: 0; padding: 0; }\\n        header { background: #333; color: #fff; padding: 1rem; }\\n        nav ul { list-style: none; padding: 0; }\\n        nav ul li { display: inline; margin-right: 15px; }\\n        nav ul li a { color: white; text-decoration: none; }\\n        main { padding: 20px; max-width: 800px; margin: auto; }\\n        footer { background: #eee; text-align: center; padding: 10px; position: fixed; bottom: 0; width: 100%; }\\n    </style>\\n</head>\\n<body>\\n\\n    <header>\\n        <h1>My Website</h1>\\n        <nav>\\n            <ul>\\n                <li><a href=\\\"#home\\\">Home</a></li>\\n                <li><a href=\\\"#about\\\">About</a></li>\\n                <li><a href=\\\"#contact\\\">Contact</a></li>\\n            </ul>\\n        </nav>\\n    </header>\\n\\n    <main>\\n        <article>\\n            <h2>Understanding HTML5 Semantics</h2>\\n            <p>\\n                This is a sample article section. Using the <code>&lt;article&gt;</code> tag \\n                helps search engines and screen readers understand that this content is \\n                independent and self-contained.\\n            </p>\\n            <p>\\n                HTML5 introduced these semantic elements to replace generic <code>&lt;div&gt;</code> \\n                tags, making the web more accessible and organized.\\n            </p>\\n        </article>\\n    </main>\\n\\n    <footer>\\n        <p>&copy; 2026 My Simple Webpage. All rights reserved.</p>\\n    </footer>\\n\\n</body>\\n</html>\", \"ai_score\": 0.95, \"ai_feedback\": \"The user\'s code is excellent and provides a complete, well-structured HTML5 webpage. It includes all the required elements (header, navigation, main, article, and footer) and adds CSS styling for better presentation. The use of semantic HTML5 elements like `<header>`, `<nav>`, `<main>`, `<article>`, and `<footer>` is correctly implemented. The navigation menu contains the specified links, and the article includes a title and sample text. The code also includes a basic CSS stylesheet to improve the page\'s appearance. The only minor difference is the addition of CSS and a `<!DOCTYPE html>` declaration, which are improvements rather than deviations. The user also included a title element in the head, which is good practice.\"}}]', 0),
(7, 100, 'Intermediate', '2026-01-10 08:38:10.537673', 'e277fb7bade04f9f85bc6ea8a93f5994', 2, 0, '[{\"is_correct\": true, \"question_id\": 63, \"user_answer\": \"c\"}, {\"is_correct\": true, \"question_id\": 64, \"user_answer\": \"b\"}, {\"is_correct\": true, \"question_id\": 65, \"user_answer\": {\"answer\": \"<!DOCTYPE html>\\n<html lang=\\\"en\\\">\\n<head>\\n    <meta charset=\\\"UTF-8\\\">\\n    <title>Embedded YouTube Video</title>\\n</head>\\n<body>\\n\\n    <iframe \\n        width=\\\"560\\\" \\n        height=\\\"315\\\" \\n        src=\\\"https://www.youtube.com/embed/dQw4w9WgXcQ\\\" \\n        title=\\\"YouTube video player\\\" \\n        frameborder=\\\"0\\\" \\n        allow=\\\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\\\" \\n        referrerpolicy=\\\"strict-origin-when-cross-origin\\\" \\n        allowfullscreen>\\n    </iframe>\\n\\n</body>\\n</html>\", \"ai_score\": 1.0, \"ai_feedback\": \"The user\'s code is correct and includes best practices such as the \'title\' attribute for accessibility, \'referrerpolicy\' for security, and \'web-share\' in the allow attribute. It is more comprehensive than the reference solution.\"}}]', 0),
(8, 33.33333333333333, 'Intermediate', '2026-01-10 08:52:06.338236', '7b4acb2d6fbf4ddab5c6ff5633b758b9', 2, 0, '[{\"is_correct\": false, \"question_id\": 72, \"user_answer\": \"a\"}, {\"is_correct\": false, \"question_id\": 73, \"user_answer\": \"d\"}, {\"is_correct\": true, \"question_id\": 74, \"user_answer\": {\"answer\": \"<html>\\n</html>\", \"ai_score\": 0.0, \"ai_feedback\": \"The user provided an empty HTML document. The task was to create a responsive image using the `srcset` and `sizes` attributes. The user\'s code does not include any image element or any of the required attributes. Therefore, the solution is completely incorrect.\"}}]', 0),
(9, 60, 'Beginner', '2026-01-10 08:58:43.966485', 'f0f0dcefe4cf4789a721085ff99c2522', 2, 0, '[{\"is_correct\": false, \"question_id\": 75, \"user_answer\": \"b\"}, {\"is_correct\": true, \"question_id\": 76, \"user_answer\": \"a\"}, {\"is_correct\": true, \"question_id\": 77, \"user_answer\": \"c\"}, {\"is_correct\": false, \"question_id\": 78, \"user_answer\": \"d\"}, {\"is_correct\": true, \"question_id\": 79, \"user_answer\": {\"answer\": \"<html>\\n<html>\", \"ai_score\": 0.0, \"ai_feedback\": \"The user\'s code is incomplete and invalid. It only contains the `<html>` tag repeated twice, which is not a valid HTML5 structure. It\'s missing the `head`, `body`, `header`, `nav`, `main`, and `footer` elements, as well as necessary attributes like `lang`. The code is not functional and doesn\'t meet the requirements of the question.\"}}]', 0);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `authtoken_token`
--
ALTER TABLE `authtoken_token`
  ADD CONSTRAINT `authtoken_token_user_id_35299eff_fk_core_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `core_userprofile` (`id`);

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
-- Constraints for table `core_userprofile_groups`
--
ALTER TABLE `core_userprofile_groups`
  ADD CONSTRAINT `core_userprofile_gro_userprofile_id_b21bcdce_fk_core_user` FOREIGN KEY (`userprofile_id`) REFERENCES `core_userprofile` (`id`),
  ADD CONSTRAINT `core_userprofile_groups_group_id_384230fa_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `core_userprofile_user_permissions`
--
ALTER TABLE `core_userprofile_user_permissions`
  ADD CONSTRAINT `core_userprofile_use_permission_id_c90fc1a9_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `core_userprofile_use_userprofile_id_e6c8d79a_fk_core_user` FOREIGN KEY (`userprofile_id`) REFERENCES `core_userprofile` (`id`);

--
-- Constraints for table `quiz_api_generatedquiz`
--
ALTER TABLE `quiz_api_generatedquiz`
  ADD CONSTRAINT `quiz_api_generatedquiz_module_id_85ed5c63_fk_quiz_api_module_id` FOREIGN KEY (`module_id`) REFERENCES `quiz_api_module` (`id`),
  ADD CONSTRAINT `quiz_api_generatedquiz_user_id_4aeeedf4_fk_core_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `core_userprofile` (`id`);

--
-- Constraints for table `quiz_api_learningpath`
--
ALTER TABLE `quiz_api_learningpath`
  ADD CONSTRAINT `quiz_api_learningpat_prerequisite_path_id_b11edbc6_fk_quiz_api_` FOREIGN KEY (`prerequisite_path_id`) REFERENCES `quiz_api_learningpath` (`id`);

--
-- Constraints for table `quiz_api_module`
--
ALTER TABLE `quiz_api_module`
  ADD CONSTRAINT `quiz_api_module_learning_path_id_7bafa156_fk_quiz_api_` FOREIGN KEY (`learning_path_id`) REFERENCES `quiz_api_learningpath` (`id`),
  ADD CONSTRAINT `quiz_api_module_prerequisite_id_cc870469_fk_quiz_api_module_id` FOREIGN KEY (`prerequisite_id`) REFERENCES `quiz_api_module` (`id`);

--
-- Constraints for table `quiz_api_question`
--
ALTER TABLE `quiz_api_question`
  ADD CONSTRAINT `quiz_api_question_quiz_id_fff5180a_fk_quiz_api_` FOREIGN KEY (`quiz_id`) REFERENCES `quiz_api_generatedquiz` (`quiz_id`);

--
-- Constraints for table `quiz_api_userlevelprogress`
--
ALTER TABLE `quiz_api_userlevelprogress`
  ADD CONSTRAINT `quiz_api_userlevelpr_level_id_e6de797b_fk_quiz_api_` FOREIGN KEY (`level_id`) REFERENCES `quiz_api_level` (`id`),
  ADD CONSTRAINT `quiz_api_userlevelpr_module_id_65a52779_fk_quiz_api_` FOREIGN KEY (`module_id`) REFERENCES `quiz_api_module` (`id`),
  ADD CONSTRAINT `quiz_api_userlevelpr_user_id_c13e14ac_fk_core_user` FOREIGN KEY (`user_id`) REFERENCES `core_userprofile` (`id`);

--
-- Constraints for table `quiz_api_userresult`
--
ALTER TABLE `quiz_api_userresult`
  ADD CONSTRAINT `quiz_api_userresult_quiz_id_8a9df2aa_fk_quiz_api_` FOREIGN KEY (`quiz_id`) REFERENCES `quiz_api_generatedquiz` (`quiz_id`),
  ADD CONSTRAINT `quiz_api_userresult_user_id_879e2f0f_fk_core_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `core_userprofile` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
