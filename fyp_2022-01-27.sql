# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.35)
# Database: fyp
# Generation Time: 2022-01-26 6:27:02 pm +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table category
# ------------------------------------------------------------

DROP TABLE IF EXISTS `category`;

CREATE TABLE `category` (
  `cat_id` int(3) NOT NULL AUTO_INCREMENT,
  `cat_title` varchar(255) NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;

INSERT INTO `category` (`cat_id`, `cat_title`)
VALUES
	(20,'History'),
	(24,'dsfasdfa'),
	(25,'sdfad');

/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table comments
# ------------------------------------------------------------

DROP TABLE IF EXISTS `comments`;

CREATE TABLE `comments` (
  `comment_id` int(3) NOT NULL AUTO_INCREMENT,
  `comment_post_id` int(11) NOT NULL,
  `comment_author` varchar(255) NOT NULL,
  `author_email` varchar(255) NOT NULL,
  `comment_content` text NOT NULL,
  `comment_status` varchar(255) NOT NULL,
  `comment_date` date NOT NULL,
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;

INSERT INTO `comments` (`comment_id`, `comment_post_id`, `comment_author`, `author_email`, `comment_content`, `comment_status`, `comment_date`)
VALUES
	(19,12,'askjdh','akdh@gmail.com','nice','approved','2022-01-02'),
	(20,12,'asd','asdsd@gmail.com','asdadasd','approved','2022-01-07'),
	(21,12,'asd','asdsd@gmail.com','asdadasd','Unapproved','2022-01-07'),
	(22,16,'asd','asdh@gmail.com','asdsd','Unapproved','2022-01-07');

/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table posts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `posts`;

CREATE TABLE `posts` (
  `post_id` int(11) NOT NULL AUTO_INCREMENT,
  `post_category_id` int(11) NOT NULL,
  `post_title` varchar(191) NOT NULL DEFAULT '',
  `post_author` varchar(191) NOT NULL DEFAULT '',
  `post_date` date NOT NULL,
  `post_image` text NOT NULL,
  `post_content` text NOT NULL,
  `post_tags` varchar(191) NOT NULL DEFAULT '',
  `post_comment_count` int(11) NOT NULL DEFAULT '0',
  `post_status` varchar(191) NOT NULL DEFAULT 'draft',
  `born` varchar(191) DEFAULT NULL,
  `post_summary` text,
  `achievement` text,
  `birth_place` varchar(191) DEFAULT NULL,
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;

INSERT INTO `posts` (`post_id`, `post_category_id`, `post_title`, `post_author`, `post_date`, `post_image`, `post_content`, `post_tags`, `post_comment_count`, `post_status`, `born`, `post_summary`, `achievement`, `birth_place`)
VALUES
	(12,20,'Fakhreddin Mousavi','Iran','2022-01-26','amoli.jpg','<p>Ayatollah Fakhraddin Mousavi Naneh Karani (Persian: ‌فخرالدین موسوی ننه‌کرانی; 1930 – 18 September 2021) was an Iranian judge and politician.</p>','asdsdasd',3,'published','1930','Ayatollah Fakhraddin Mousavi Naneh Karani (Persian: ‌فخرالدین موسوی ننه‌کرانی; 1930 – 18 September 2021) was an Iranian judge and politician.\r\n\r\nMousavi was born in Ardabil. He was a member of the first, third and fifth Islamic Consultative Assembly from the electorate of Ardabil, Nir, Namin and Sareyn. He was a member of 5th Assembly of Experts from Ardabil Province electorate. He was supported by the People\'s Experts in the election.',NULL,NULL),
	(15,25,'Hassan Hassanzadeh Amoli','Iran','2022-01-25','amoli.jpg','','adasdad',0,'published','12 February 1929','Hassan Hasanzadeh Amoli (Persian: حسن حسن‌زاده آملی, 12 February 1929 – 25 September 2021) was an Iranian Shi\'ite theologian known for his mystical tendencies and Islamic philosophy. He was among clerics who have overcome the traditional opposing to teaching philosophy courses at Shi\'ite seminaries. He wrote many books in philosophy, mysticism, mathematics, astronomy, Persian and Arabic literature.He interpreted the Islamic philosophical tradition in a similar way to Mulla Sadra, which is a reconciliation of religion, reason and mysticism.His books include Sharh fusus al-hikam, Tashih nahj al-balagha, Insan dar \'urf-i \'irfan, Tashih kalila wa dimna.\r\n\r\nHe died on Saturday, 25 September 2021, at the age of 92.Iran\'s Supreme Leader Ayatollah Khamenei offered prayers on his body. Hassanzadeh Amoli was elected as a \"Immortal figures of Iran\" in 2003.\r\n\r\nHasanzadeh-Amoli was father-in-law of Iranian conservative politician Baqer Larijani.',NULL,NULL),
	(16,20,'Ali Gomaa','Egypt','2022-01-25','goma.jpeg','<p>asdassssssssssssssss</p>','asdddddddddddddddd',1,'published','3 March 1952','Ali Gomaa (Arabic: علي جمعة, Egyptian Arabic: [ˈʕæli ˈɡomʕæ]) is an Egyptian Islamic scholar, Jurist, and public figure who has taken a number of controversial political stances. He specializes in Islamic Legal Theory. He follows the Shafi`i school of Islamic jurisprudence and the Ash\'ari school of tenets of faith. Gomaa is a Sufi. Gomaa is also a supporter of the 2013 Military Coup.',NULL,NULL),
	(19,25,'asdsd','adsd','2022-01-19','DSC_0844.jpg','<p>asdsd</p>','asdsd',0,'published',NULL,NULL,NULL,NULL),
	(21,25,'asssssssssss','dddddddddddddd','2022-01-19','DSC_0708.jpg','<p>asdddddddd</p>','aaaaaaaaaaa',0,'published',NULL,NULL,NULL,NULL),
	(22,20,'aaaaaaaaaaaaa','wwwwwwwwwwwwww','2022-01-19','DSC_1410.jpg','<p>sassssssssss</p>','aaaaaaaaaaaaaaaa',0,'published',NULL,NULL,NULL,NULL),
	(23,20,'aaaaaaaaaaaaa','ssssssssssss','2022-01-19','DSC_0817.jpg','<p>aaaaaaaaaaaaa</p>','assssssssssssss',0,'draft',NULL,NULL,NULL,NULL),
	(24,24,'Ali','Iran','2022-01-25','ali.jpg','<p>Khamenei is married to Mansoureh Khojasteh Bagherzadeh, with whom he has six children; four sons (Mostafa, Mojtaba, Masoud, and Meysam) and two daughters (Boshra and Hoda).</p>','',1,'published','19 April 1939','Sayyid Ali Hosseini Khamenei(Persian: سید علی حسینی خامنه‌ای, pronounced [ʔæˈliː hosejˈniː xɒːmeneˈʔiː] (audio speaker iconlisten); born 19 April 1939) is a Twelver Shia Marja\' and the second and current supreme leader of Iran, in office since 1989.  He was previously the third president of Iran from 1981 to 1989. Khamenei is the longest serving head of state in the Middle East, as well as the second-longest serving Iranian leader of the last century, after Shah Mohammad Reza Pahlavi.',NULL,NULL),
	(25,24,'sdfasd','dsfa','2022-01-26','cky5i61dv0008zx3vhfh303ry.jpeg','<p>Pagination mean fetching and displaying your data into multiple pages rather than single page. You have already seen this on various blogs, even on my blog homepage, you can see that I am only displaying 4 to 5 blog posts and older posts are accessible via pagination.</p><h2><strong>How to&nbsp;Create Simple Pagination Using PHP and MySQLi</strong></h2><p>Basically we need to fetch limited records on each page, this mean we need to limit the number of records to be fetched. For this purpose,&nbsp;MySQL provides a LIMIT&nbsp;clause, it simply fetch the limited number of records. I have created a sample table named `pagination_table`&nbsp;which you can download from the download button and import into your database. Lets see how&nbsp;LIMIT&nbsp;clause works, just run the following query</p>','xvdfg',0,'published','19 April 1939','new',NULL,NULL),
	(26,20,'my title ','kamran','2022-01-26','ckxr163n9009qimxuaqxhazpp.jpeg','','Tags',0,'published','2012','Summery',NULL,NULL),
	(28,20,'2022-01-28','2022-01-28','2022-01-26','cky5i61dv0008zx3vhfh303ry.jpeg','<p>2022-01-28</p>','2022-01-28',0,'published','1991','2022-01-28','1993',NULL);

/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `user_id` int(3) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_firstname` varchar(255) NOT NULL,
  `user_lastname` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_image` text NOT NULL,
  `user_role` varchar(255) NOT NULL,
  `randSalt` varchar(255) NOT NULL DEFAULT '$2y$10$iuyhgvcfrtyhgbvfukoinv',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`user_id`, `username`, `user_password`, `user_firstname`, `user_lastname`, `user_email`, `user_image`, `user_role`, `randSalt`)
VALUES
	(44,'alu','$2y$10$qwertyasdfmnbvikmnjuyepJxifyL7ClUpPZ5nXNRUwlIMWQqQpYK','alu khan','asd','a@gmail.com','','Admin','$2y$10$iuyhgvcfrtyhgbvfukoinv'),
	(45,'somrat','$2y$10$qwertyasdfmnbvikmnjuyepJxifyL7ClUpPZ5nXNRUwlIMWQqQpYK','danda','mujib','dandamujib@gmail.com','','Admin','$2y$10$iuyhgvcfrtyhgbvfukoinv'),
	(46,'sami','$2y$10$qwertyasdfmnbvikmnjuyepJxifyL7ClUpPZ5nXNRUwlIMWQqQpYK','Agrogami','Laa','a@gmail.com','','Admin','$2y$10$iuyhgvcfrtyhgbvfukoinv');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
