-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 17, 2025 at 08:48 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `resume_builder_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `resumes`
--

CREATE TABLE `resumes` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `template` varchar(50) DEFAULT 'template1',
  `personal_info` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`personal_info`)),
  `experience` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`experience`)),
  `education` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`education`)),
  `skills` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`skills`)),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `resumes`
--

INSERT INTO `resumes` (`id`, `user_id`, `title`, `template`, `personal_info`, `experience`, `education`, `skills`, `created_at`, `updated_at`) VALUES
(3, 1, 'template 1', 'template1', '{\"full_name\":\"Abdul Rafay\",\"email\":\"abdulrafaymunir@gmail.com\",\"phone\":\"03258047226\",\"linkedin\":\"https:\\/\\/www.linkedin.com\\/in\\/abdul-rafay-munir-dev\\/\",\"summary\":\"Motivated Computer Science student passionate about front-end web\\r\\ndevelopment. Skilled in building responsive, user-friendly interfaces\\r\\nusing HTML, CSS, Tailwind CSS, JavaScript, and React.js. Experienced\\r\\nwith WordPress customization, performance optimization, and\\r\\nSEO-friendly design. Strong problem-solving mindset with a goal to\\r\\nadvance as a full-stack developer contributing to innovative and\\r\\nscalable web solutions.\"}', '[{\"job_title\":\"WordPress Intern\",\"company\":\"ViceTech\",\"duration\":\"JUNE 2023 - NOVEMBER 2023\",\"description\":\"\\u25cf Designed and customized 10+ WordPress themes to improve UI\\r\\nconsistency and performance.\\r\\n\\u25cf Assisted in content updates, plugin management, and\\r\\nresponsive layout optimization.\\r\\n\\u25cf Improved SEO rankings by implementing keyword strategies\\r\\nand faster load times.\\r\\n\\u25cf Collaborated with developers to ensure project delivery within\\r\\nclient deadlines.\"}]', '[{\"degree\":\"Bachelor of Science in Computer Science (BSCS)\",\"institution\":\"Superior University\",\"year\":\"2023 - PRESENT\"},{\"degree\":\"Superior College\",\"institution\":\"Intermediate in Computer Science\",\"year\":\"2021 - 2023\"},{\"degree\":\"Matriculation\",\"institution\":\"Lahore Islamic Mission High School\",\"year\":\"2019 - 2021\"}]', '[\"HTML5\",\"CSS3\",\"Tailwind CSS\",\"JavaScript (ES6+)\",\"React.js\",\"MySQL\",\"Python\",\"WordPress\",\"VS Code\",\"GitHub\",\"XAMPP\"]', '2025-11-16 12:54:51', '2025-11-17 07:46:54');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `created_at`) VALUES
(1, 'Abdul Rafay Munir', 'munirabdulrafay@gmail.com', '$2y$10$h7eo7mPFIC4UFdfVVWidc.nr1O5F/JEqmlO97LPnqkQAPipHA2T4C', '2025-11-16 11:55:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `resumes`
--
ALTER TABLE `resumes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `resumes`
--
ALTER TABLE `resumes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `resumes`
--
ALTER TABLE `resumes`
  ADD CONSTRAINT `resumes_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
