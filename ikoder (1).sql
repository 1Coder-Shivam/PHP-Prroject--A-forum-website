-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 28, 2022 at 06:58 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ikoder`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(8) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_description` varchar(255) NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_name`, `category_description`, `created`) VALUES
(1, 'Python', 'Python is a high-level, interpreted, general-purpose programming language. Its design philosophy emphasizes code readability with the use of significant indentation. Python is dynamically-typed and garbage-collected', '2022-05-09 00:24:00'),
(2, 'JavaScript', 'JavaScript, often abbreviated JS, is a programming language that is one of the core technologies of the World Wide Web, alongside HTML and CSS.', '2022-05-09 00:24:50'),
(3, 'Django', 'Django is a Python-based free and open-source web framework that follows the model–template–views architectural pattern. ', '2022-05-09 09:21:28'),
(4, 'FLASK', 'Flask is a micro web framework written in Python. It is classified as a microframework because it does not require particular tools or libraries. It has no database abstraction layer, form validation, or any other components where pre-existing third-party', '2022-05-09 09:22:50');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(11) NOT NULL,
  `comment_content` text NOT NULL,
  `thread_id` int(11) NOT NULL,
  `comment_by` int(11) NOT NULL,
  `comment_time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `comment_content`, `thread_id`, `comment_by`, `comment_time`) VALUES
(29, 'kyu install kr rhe ho bhai', 2, 8, '2022-05-11 12:48:03'),
(41, 'jhg', 1, 11, '2022-05-11 22:09:23'),
(42, 'tmharhi marzi padna hai to pdo nhi to rhne do\r\n', 4, 12, '2022-05-11 23:08:42'),
(43, '&gt;', 4, 12, '2022-05-11 23:13:50'),
(44, '&gt;', 4, 12, '2022-05-11 23:14:11'),
(45, '&lt;script&gt;', 4, 12, '2022-05-11 23:15:23'),
(46, '&lt;script&gt;', 4, 12, '2022-05-11 23:18:17'),
(47, 'hello please answer my question', 16, 12, '2022-05-13 05:43:46');

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE `contactus` (
  `sno` int(11) NOT NULL,
  `contact_username` text NOT NULL,
  `contact_email` text NOT NULL,
  `contact_city` text NOT NULL,
  `contact_subject` varchar(255) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contactus`
--

INSERT INTO `contactus` (`sno`, `contact_username`, `contact_email`, `contact_city`, `contact_subject`, `datetime`) VALUES
(1, 'shivam', 'khgd@kjs', 'jaunpur', 'mkabdckjbwadjohweofunhqeru', '2022-05-14 15:19:22');

-- --------------------------------------------------------

--
-- Table structure for table `threads`
--

CREATE TABLE `threads` (
  `thread_id` int(11) NOT NULL,
  `thread_title` varchar(255) NOT NULL,
  `thread_desc` text NOT NULL,
  `thread_cat_id` int(11) NOT NULL,
  `thread_user_id` int(11) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `threads`
--

INSERT INTO `threads` (`thread_id`, `thread_title`, `thread_desc`, `thread_cat_id`, `thread_user_id`, `timestamp`) VALUES
(4, 'Python kyu pde?', 'Mujhe C, C++, Java aati hai to python kyu pdu mai ?', 1, 3, '2022-05-10 22:34:34'),
(15, 'helo', '&lt;script&gt;', 1, 12, '2022-05-11 23:18:38'),
(16, 'How to install Flask', 'Flask linux me kaise install kre?', 4, 12, '2022-05-13 05:38:42'),
(17, '', '', 4, 12, '2022-05-13 06:16:11'),
(18, 'jdcadsgf', 'jmhdsbvfhdwb Hello', 1, 12, '2022-05-13 09:35:05'),
(19, 'shaurya', 'hjgasd', 2, 14, '2022-05-13 09:39:40'),
(20, '&lt;script&gt;&gt;', 'kiugfiuwd', 1, 14, '2022-05-14 14:09:36');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `sno` int(11) NOT NULL,
  `user_email` varchar(50) NOT NULL,
  `user_pass` varchar(255) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`sno`, `user_email`, `user_pass`, `timestamp`) VALUES
(2, 'skm123@gmail.com', '$2y$10$nqIuBKUTt7JxIuQCHtOPc.cpY0KXxkGNVhh8bY8N8xCh6eVxFucya', '2022-05-11 06:59:16'),
(3, 'asd121@gmail.com', '$2y$10$A17P5fQ56yA7cbvEdvrzaOJeV8o98yYJpDBMuuA.ozBWZI3m3j.X6', '2022-05-11 07:01:57'),
(4, 'ijasbd@kng.com', '$2y$10$456skISjcj.xOy0AJ9lyCut8Mgrbuc9rM.AukLcDPA9lZTy.egGL6', '2022-05-11 07:03:35'),
(5, 'asl@jhjl.cjknni', '$2y$10$ZmCwZNYtDQ0ZkZumDqc31eGM7jczDiuEGxmtfj01Usq/pncqtFuGi', '2022-05-11 07:18:28'),
(6, 'asad@sdv.asf', '$2y$10$ev8SVVDOOvrxFP2u8wwzRO5I/eDg5CdXnAAeH/7DvP3LzYwwMZXVq', '2022-05-11 07:34:55'),
(7, 'skm.123@gmail.com', '$2y$10$.lVnhcP9OdDWXXHNXdquN.B.qdeC907khtoAA47UJjulOruVJ0yDO', '2022-05-11 07:48:06'),
(8, 'sm.12@gmail.com', '$2y$10$4iACAMDrFZa5pO7xNaolJOYzdXDhGFxmg.beDdWUOo8h5B.uVMoNa', '2022-05-11 09:48:09'),
(9, 'guptashruti@gmail.com', '$2y$10$lt7vAITTrxxxGG/RFgzt1eXPm6WMIlcN8u7mlNGd8zud/NBrjWBca', '2022-05-11 11:11:40'),
(10, 'sho.12@gmail.com', '$2y$10$ZcD3DTCjVN/7t0iWI62xaOSIKvBWlgQGaMCLSgrMl6UcW/cZkQOFu', '2022-05-11 11:30:49'),
(11, 'a.1@gmail.com', '$2y$10$1bIlR1MUepDxaSie9ix95.QMJ0L120tBJboTHd7RgOwidbSp03i7S', '2022-05-11 21:44:11'),
(12, 'S_koder', '$2y$10$cTBhM0B8kgkwuOq7Z5Ur..dv.TZi5ecZmwYx70z7i/7GT/swTTmzG', '2022-05-11 22:48:50'),
(13, 'shaurya', '$2y$10$8NDAgXntRHrnNunr4xgm8eUyxvO.rm8ynImaO8971TjcRkCyWB2CS', '2022-05-13 09:36:00'),
(14, 'shiva', '$2y$10$c6KaPyPO8A0abDlhh7HpruzVkKTEDIBLuDUiluEc3zqrnBx9saiXu', '2022-05-13 09:37:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `contactus`
--
ALTER TABLE `contactus`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `threads`
--
ALTER TABLE `threads`
  ADD PRIMARY KEY (`thread_id`);
ALTER TABLE `threads` ADD FULLTEXT KEY `thread_title` (`thread_title`,`thread_desc`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `contactus`
--
ALTER TABLE `contactus`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `threads`
--
ALTER TABLE `threads`
  MODIFY `thread_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
