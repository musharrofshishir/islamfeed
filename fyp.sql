-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 25, 2022 at 05:07 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fyp`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cat_id` int(3) NOT NULL,
  `cat_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `cat_title`) VALUES
(20, 'History');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(3) NOT NULL,
  `comment_post_id` int(11) NOT NULL,
  `comment_author` varchar(255) NOT NULL,
  `author_email` varchar(255) NOT NULL,
  `comment_content` text NOT NULL,
  `comment_status` varchar(255) NOT NULL,
  `comment_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `comment_post_id`, `comment_author`, `author_email`, `comment_content`, `comment_status`, `comment_date`) VALUES
(19, 12, 'askjdh', 'akdh@gmail.com', 'nice', 'approved', '2022-01-02'),
(20, 12, 'asd', 'asdsd@gmail.com', 'asdadasd', 'approved', '2022-01-07'),
(21, 12, 'asd', 'asdsd@gmail.com', 'asdadasd', 'Unapproved', '2022-01-07'),
(22, 16, 'asd', 'asdh@gmail.com', 'asdsd', 'Unapproved', '2022-01-07');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(11) NOT NULL,
  `post_category_id` int(11) NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_author` varchar(255) NOT NULL,
  `post_date` date NOT NULL,
  `post_image` text NOT NULL,
  `post_content` varchar(255) NOT NULL,
  `post_tags` varchar(255) NOT NULL,
  `post_comment_count` int(11) NOT NULL,
  `post_status` varchar(255) NOT NULL DEFAULT 'draft',
  `born` varchar(255) DEFAULT NULL,
  `post_summary` varchar(1028) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `post_category_id`, `post_title`, `post_author`, `post_date`, `post_image`, `post_content`, `post_tags`, `post_comment_count`, `post_status`, `born`, `post_summary`) VALUES
(12, 20, 'Fakhreddin Mousavi', 'Iran', '2022-01-25', 'mousavi.jpg', 'Ayatollah Fakhraddin Mousavi Naneh Karani (Persian: ‌فخرالدین موسوی ننه‌کرانی; 1930 – 18 September 2021) was an Iranian judge and politician.', 'asdsdasd', 3, 'published', '1930', 'Ayatollah Fakhraddin Mousavi Naneh Karani (Persian: ‌فخرالدین موسوی ننه‌کرانی; 1930 – 18 September 2021) was an Iranian judge and politician.\r\n\r\nMousavi was born in Ardabil. He was a member of the first, third and fifth Islamic Consultative Assembly from the electorate of Ardabil, Nir, Namin and Sareyn. He was a member of 5th Assembly of Experts from Ardabil Province electorate. He was supported by the People\'s Experts in the election.'),
(15, 20, 'Hassan Hassanzadeh Amoli', 'Iran', '2022-01-25', 'amoli.jpg', '', 'adasdad', 0, 'published', '12 February 1929', 'Hassan Hasanzadeh Amoli (Persian: حسن حسن‌زاده آملی, 12 February 1929 – 25 September 2021) was an Iranian Shi\'ite theologian known for his mystical tendencies and Islamic philosophy. He was among clerics who have overcome the traditional opposing to teaching philosophy courses at Shi\'ite seminaries. He wrote many books in philosophy, mysticism, mathematics, astronomy, Persian and Arabic literature.He interpreted the Islamic philosophical tradition in a similar way to Mulla Sadra, which is a reconciliation of religion, reason and mysticism.His books include Sharh fusus al-hikam, Tashih nahj al-balagha, Insan dar \'urf-i \'irfan, Tashih kalila wa dimna.\r\n\r\nHe died on Saturday, 25 September 2021, at the age of 92.Iran\'s Supreme Leader Ayatollah Khamenei offered prayers on his body. Hassanzadeh Amoli was elected as a \"Immortal figures of Iran\" in 2003.\r\n\r\nHasanzadeh-Amoli was father-in-law of Iranian conservative politician Baqer Larijani.'),
(16, 20, 'Ali Gomaa', 'Egypt', '2022-01-25', 'goma.jpeg', '<p>asdassssssssssssssss</p>', 'asdddddddddddddddd', 1, 'published', '3 March 1952', 'Ali Gomaa (Arabic: علي جمعة, Egyptian Arabic: [ˈʕæli ˈɡomʕæ]) is an Egyptian Islamic scholar, Jurist, and public figure who has taken a number of controversial political stances. He specializes in Islamic Legal Theory. He follows the Shafi`i school of Islamic jurisprudence and the Ash\'ari school of tenets of faith. Gomaa is a Sufi. Gomaa is also a supporter of the 2013 Military Coup.'),
(19, 20, 'asdsd', 'adsd', '2022-01-19', 'DSC_0844.jpg', '<p>asdsd</p>', 'asdsd', 0, 'published', NULL, NULL),
(21, 20, 'asssssssssss', 'dddddddddddddd', '2022-01-19', 'DSC_0708.jpg', '<p>asdddddddd</p>', 'aaaaaaaaaaa', 0, 'published', NULL, NULL),
(22, 20, 'aaaaaaaaaaaaa', 'wwwwwwwwwwwwww', '2022-01-19', 'DSC_1410.jpg', '<p>sassssssssss</p>', 'aaaaaaaaaaaaaaaa', 0, 'published', NULL, NULL),
(23, 20, 'aaaaaaaaaaaaa', 'ssssssssssss', '2022-01-19', 'DSC_0817.jpg', '<p>aaaaaaaaaaaaa</p>', 'assssssssssssss', 0, 'draft', NULL, NULL),
(24, 20, 'Ali', 'Iran', '2022-01-25', 'ali.jpg', '<p>Khamenei is married to Mansoureh Khojasteh Bagherzadeh, with whom he has six children; four sons (Mostafa, Mojtaba, Masoud, and Meysam) and two daughters (Boshra and Hoda).</p>', '', 1, 'published', '19 April 1939', 'Sayyid Ali Hosseini Khamenei(Persian: سید علی حسینی خامنه‌ای, pronounced [ʔæˈliː hosejˈniː xɒːmeneˈʔiː] (audio speaker iconlisten); born 19 April 1939) is a Twelver Shia Marja\' and the second and current supreme leader of Iran, in office since 1989.  He was previously the third president of Iran from 1981 to 1989. Khamenei is the longest serving head of state in the Middle East, as well as the second-longest serving Iranian leader of the last century, after Shah Mohammad Reza Pahlavi.');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(3) NOT NULL,
  `username` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_firstname` varchar(255) NOT NULL,
  `user_lastname` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_image` text NOT NULL,
  `user_role` varchar(255) NOT NULL,
  `randSalt` varchar(255) NOT NULL DEFAULT '$2y$10$iuyhgvcfrtyhgbvfukoinv'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `user_password`, `user_firstname`, `user_lastname`, `user_email`, `user_image`, `user_role`, `randSalt`) VALUES
(44, 'alu', '$2y$10$qwertyasdfmnbvikmnjuyepJxifyL7ClUpPZ5nXNRUwlIMWQqQpYK', 'alu khan', 'asd', 'a@gmail.com', '', 'Admin', '$2y$10$iuyhgvcfrtyhgbvfukoinv'),
(45, 'somrat', '$2y$10$qwertyasdfmnbvikmnjuyepJxifyL7ClUpPZ5nXNRUwlIMWQqQpYK', 'danda', 'mujib', 'dandamujib@gmail.com', '', 'Admin', '$2y$10$iuyhgvcfrtyhgbvfukoinv'),
(46, 'sami', '$2y$10$qwertyasdfmnbvikmnjuyepJxifyL7ClUpPZ5nXNRUwlIMWQqQpYK', 'Agrogami', 'Laa', 'a@gmail.com', '', 'Admin', '$2y$10$iuyhgvcfrtyhgbvfukoinv');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cat_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
