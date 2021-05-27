-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 27, 2021 at 01:00 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_epb`
--

-- --------------------------------------------------------

--
-- Table structure for table `categoryys`
--

CREATE TABLE `categoryys` (
  `id` int(10) UNSIGNED NOT NULL,
  `CategoryName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CategoryStatus` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CategoryDescription` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `course_id` int(10) UNSIGNED NOT NULL,
  `course_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pic` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`course_id`, `course_code`, `course_description`, `pic`, `created_at`, `updated_at`) VALUES
(1, 'CSE-123', 'Computer Fundamental', 'public/images/book.png', '2021-05-27 04:57:37', '2021-05-27 04:57:37'),
(2, 'CSE-124', 'C Programming', 'public/images/book2.jpg', '2021-05-27 04:58:10', '2021-05-27 04:58:10'),
(3, 'CSE-125', 'OOP PHP', 'public/images/book3.png', '2021-05-27 04:58:36', '2021-05-27 04:58:36');

-- --------------------------------------------------------

--
-- Table structure for table `course_units`
--

CREATE TABLE `course_units` (
  `course_id` int(10) UNSIGNED NOT NULL,
  `course_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pic` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `course_units`
--

INSERT INTO `course_units` (`course_id`, `course_code`, `course_title`, `course_description`, `pic`, `created_at`, `updated_at`) VALUES
(1, 'CSE-123', 'computer fundamental', 'computer basic', 'public/files/Web_developer_PHP_assignment_001 .pdf', '2021-05-27 04:59:21', '2021-05-27 04:59:21');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
(42, '2019_01_21_183203_create_categoryys_table', 1),
(44, '2019_03_04_044647_create_teachers_table', 1),
(47, '2014_10_12_000000_create_users_table', 2),
(48, '2014_10_12_100000_create_password_resets_table', 2),
(49, '2019_03_02_044853_create_images_table', 2),
(50, '2021_05_27_030830_create_courses_table', 2),
(51, '2021_05_27_050407_create_course_units_table', 2),
(52, '2021_05_27_092236_create_reg_courses_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reg_courses`
--

CREATE TABLE `reg_courses` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `teacher_id` int(10) UNSIGNED NOT NULL,
  `UID` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `live_area` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qualification` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `institution` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_per_week` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fees` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tution_style` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `learing_place` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `medium` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefer_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prefer_subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prefer_area` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `institution1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `result1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pass_year1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `institution2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `result2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pass_year2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `institution3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `result3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pass_year3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `institution4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `result4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pass_year4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pic` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `phone`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin', '01778812211', 'admin@gmail.com', NULL, '$2y$10$CTNx7Ophp2TeYIRx2KypfOSmaCUiclqTvFW/J9m.z3q5Gec.3Gdha', 'lwmqcXH1izkFR02YEkKTTOUYaEHNkxkplkC9wmtloDZ301rjjgV9wCQqoZvX', '2021-05-27 04:03:24', '2021-05-27 04:03:24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categoryys`
--
ALTER TABLE `categoryys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `course_units`
--
ALTER TABLE `course_units`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
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
-- Indexes for table `reg_courses`
--
ALTER TABLE `reg_courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`teacher_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categoryys`
--
ALTER TABLE `categoryys`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `course_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `course_units`
--
ALTER TABLE `course_units`
  MODIFY `course_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `reg_courses`
--
ALTER TABLE `reg_courses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `teacher_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
