-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 12, 2020 at 02:34 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `larab`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `on_post` bigint(20) UNSIGNED NOT NULL,
  `from_user` bigint(20) UNSIGNED NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_03_24_033538_posts', 1),
(5, '2020_03_24_033638_comments', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `author_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `title`, `body`, `slug`, `active`, `created_at`, `updated_at`) VALUES
(8, 1, 'About Larang', 'About : this is CMS content management system blogging platform using Laravel on backend feat Angular on frontend to displaying your content. \r\nHow this blog apps work , just install it on local server on upload on your shared hosting , and get start with this apps. focusing on content writer make easy to create a post and publish on laravel blog cms and your angular blog too. \r\nModern and simple blogging platform for blogger make easy for focusing on your content, including SEO just only meta title tags,for indexing on google. lets get started and download now.', 'about-larang', 1, '2020-09-11 22:20:54', '2020-09-11 22:20:54'),
(9, 1, 'Download Larang', 'Download Laravel Blogs \r\nYou can download on sourceforge or fork from github.\r\n \r\nDownload laravel blogs and move to your project folder, for the first you need install third party application for run this modern blog platform. \r\nOr download link : \r\nXampp server → \r\n Git →  \r\n NPM  →  \r\nComposer →\r\n \r\nDownload and run all third party application, for xampp you need configure to auto start apache and mysql, because we use mysql for databased and apache for web server on local host.\r\n \r\nAfter download and install all application now you can run with git, just right click on laravel blog folder and select git bash here , and we need to install laravel then run command : composer global require \"laravel/installer=~1.1\"\r\n \r\nRun Xampp web server , and open localhost/phpmyadmin on your web browser you can using google chrome or mozila or your favorite web browser, and create new mysql databased , just click database - database name (name it with laravelblog) - create.\r\n\r\nAfter new databased create now you can click on import databased , and import laravelblog.sql file.\r\n\r\nnow open your laravel blog folder copy .env example file and rename to .env , open .env file with your code editor ,you can using notepad if you wan, and edit the code configure with your databased.\r\n\r\nby default you can use this\r\n\r\nDB_CONNECTION=mysql\r\nDB_HOST=127.0.0.1\r\nDB_PORT=3304\r\nDB_DATABASE=laravelblog\r\nDB_USERNAME=root\r\nDB_PASSWORD=\r\n\r\nAfter configuration database connection, now back to laravel blog folder , right click an select git bash , run comand again : composer install && npm install && php artisan key:generate && php artisan serve\r\nOpen web browser and visit localhost:8000\r\nnow you can use laravel blogs. lets get started write a content  !!\r\n            \r\nNow get start with your front end angular blog.\r\n Just open on frontend folder configure database on connect.php setting with your username and databased, all if you fresh install xampp just leave by default, now open npm cd:/yourprojectfolder/frontend and run command : \"npm install -g @angular/cli\" For install angular no (\"). and then run again : \"npm install\" after install you can run the frontend web angular with : \"ng server\" and open localhost:8000 on web browser. congratulation now your modern blog is online with angular.', 'download-larang-laravel-angular-blogs', 1, '2020-09-11 22:24:06', '2020-09-11 23:20:52'),
(10, 1, 'Get Started', 'Lets Get started and how to use laravel blog.\r\n\r\nFor create or write a content articel you can click Add new post on left menu , insert a title and write content. after finish just click publish for published your content.\r\n\r\nEdit content : if you wan to edit content just click edit on right menu in post, edit and update it.\r\n\r\nTemplate : For change link on left menu just edit template on : laravelblog folder\\resources\\views\\layouts\\app.blade.php for home page, and blog.blade.php for blog article, change URL menu with your post and rename menu with your needed.\r\n\r\nFor login page you can visit url : localhost:8000/auth/login.\r\n\r\nBy default the databased is empty so you can register with your account, and login for use this blog apps.\r\n\r\nor using admin@admin.com and password : 12345678\r\n\r\nHow to change home page : just open on laravelblog\\routes\\web.php\r\n\r\nand change code with text editor / notepad from :\r\n\r\nRoute::get(\'/\', function () {\r\n    return view(\'/welcome\');\r\n});\r\n\r\nRoute::get(\'/home\', \'PostController@index\');\r\nRoute::get(\'/home\', [\'as\' => \'home\', \'uses\' => \'PostController@index\']);\r\n\r\nto\r\n\r\nRoute::get(\'/\', \'PostController@index\');\r\nRoute::get(\'/home\', [\'as\' => \'home\', \'uses\' => \'PostController@index\']);\r\n\r\nHow to upload on shared hosting ?? For first zip your laravelblog project, and upload on your host , create mysql databased, and import laravelblog.sql db , configure connection on .env file, and accsess it on yourwebsite.com/public , if you wan to accses with yourwebsite.com you can copy public file folder and paste on public_html and configuration on index.php change the code like this :\r\n\r\n\r\nrequire __DIR__.\'/vendor/autoload.php\';\r\n\r\n$app = require_once __DIR__.\'/bootstrap/app.php\';\r\n\r\nenjoy it and hapy blogging with laravel php artisan, And automaticly your content blog is displaying on your angular blogs, just run with git or npm and run command : \"ng serve\" open localhost:4200 on web browser you content on backend laravel blog is displaying on your angular blog, you can upload your angular blog on shared hosting or deploy on heroku, etc.\r\n\r\nif you need create modern website or Point of sale apps you can contact us.  \r\nvisit we web app on : mesinkasironline.web.app', 'get-started', 1, '2020-09-11 22:25:58', '2020-09-11 23:26:14');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('admin','author','subscriber') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'author',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@admin.com', NULL, '$2y$10$tFf9lohxXmvnAZ/jxTfVbuOFqb9MO6ysxZhg8jTNPeo0Rn6T4rWNu', 'author', NULL, '2020-09-01 10:31:26', '2020-09-01 10:31:26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_on_post_foreign` (`on_post`),
  ADD KEY `comments_from_user_foreign` (`from_user`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
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
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_title_unique` (`title`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`),
  ADD KEY `posts_author_id_foreign` (`author_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_from_user_foreign` FOREIGN KEY (`from_user`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_on_post_foreign` FOREIGN KEY (`on_post`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
