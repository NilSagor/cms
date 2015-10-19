-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 19, 2015 at 11:23 AM
-- Server version: 5.6.25
-- PHP Version: 5.5.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `cat_id` int(11) NOT NULL,
  `cat_title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'Bootstrap'),
(2, 'Javascript'),
(3, 'PHP'),
(4, 'Python'),
(5, 'Ajax'),
(9, 'HTML5');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `comment_id` int(3) NOT NULL,
  `comment_post_id` int(3) DEFAULT NULL,
  `comment_author` varchar(255) DEFAULT NULL,
  `comment_email` varchar(255) DEFAULT NULL,
  `comment_content` text,
  `comment_status` varchar(255) DEFAULT NULL,
  `comment_date` date DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `comment_post_id`, `comment_author`, `comment_email`, `comment_content`, `comment_status`, `comment_date`) VALUES
(1, 1, 'nil sagor', 'nilsagor12012@gmail.com', 'Hello, this awesome', 'approved', '2015-10-08'),
(2, 1, 'eklotan', 'eklotan@gmail.com', 'Hey, you are rock.', 'unapprove', '2015-10-13'),
(4, 6, 'naeem', 'naeemislam411@gmail.com', 'Hi, I  am boss', 'approved', '2015-10-13'),
(5, 5, 'jsasim', 'jsasmim@gmasil.com', 'EXECELLENT', 'approved', '2015-10-13'),
(6, 1, 'masum', 'masum1201@gmail.com', 'hello', 'unapprove', '2015-10-13'),
(7, 1, 'masum', 'masum1201@gmail.com', 'hello', 'approved', '2015-10-13'),
(8, 6, 'rsasel', 'rsasel@exsample.com', 'this is execellent', 'unapprove', '2015-10-14'),
(9, 6, 'masum', 'masum1201@gmail.com', 'this is nice', 'approved', '2015-10-14'),
(10, 1, 'heloo', 'masum1201@gmail.com', 'jsdkjkj jdskjkl kdjsakj jfsa', 'unapprove', '2015-10-14'),
(11, 1, 'sobuj', 'sobuj@gmail.com', 'wow', 'approved', '2015-10-14'),
(12, 7, 'lollypop', 'foysol786@gmail.com', 'this is beautiful', 'approved', '2015-10-16'),
(13, 7, 'lollypop', 'foysol786@gmail.com', 'this is beautiful', 'approved', '2015-10-16'),
(14, 7, 'lollypop', 'foysol786@gmail.com', 'this is beautiful', 'unapproved', '2015-10-16'),
(15, 7, 'tsamjid', 'sakdk@ysahoo.com', 'HEY ', 'approved', '2015-10-16'),
(16, 7, 'tsamjid', 'sakdk@ysahoo.com', 'HEY ', 'unapproved', '2015-10-16');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `post_id` int(11) NOT NULL,
  `post_category_id` int(3) DEFAULT NULL,
  `post_title` varchar(255) DEFAULT NULL,
  `post_author` varchar(255) DEFAULT NULL,
  `post_date` date DEFAULT NULL,
  `post_image` text,
  `post_content` text,
  `post_tags` varchar(255) DEFAULT NULL,
  `post_comment_count` int(11) DEFAULT NULL,
  `post_status` varchar(255) NOT NULL DEFAULT 'draft'
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `post_category_id`, `post_title`, `post_author`, `post_date`, `post_image`, `post_content`, `post_tags`, `post_comment_count`, `post_status`) VALUES
(1, 1, 'Javasript is awesome', 'John Doe', '2015-10-14', 'logo_JavaScript.png', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, vero, obcaecati, aut, error quam sapiente nemo saepe quibusdam sit excepturi nam quia corporis eligendi eos magni recusandae laborum minus inventore?          \r\n                  \r\n                  \r\n        ', 'javascript, programme, code', 1, 'published'),
(2, 1, 'Python is easiest code', 'Nil Sagor', '2015-10-17', 'Marvel-studios.jpg', 'Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.          \r\n                  \r\n                  \r\n                  \r\n        ', 'python', 0, 'published'),
(3, 3, 'php is fun', 'Kuhelika', '2015-10-02', 'bienvenidos.png', 'Hello it is php. this fun.Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.', 'php, kuhelika, ', 0, 'published'),
(4, 1, 'css is good', 'kuhelika', '2015-10-13', 'web_developer.jpg', 'thank you very much. Yeah I solved this!\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Sed lacinia tempus leo sed vehicula. Suspendisse potenti. Suspendisse facilisis ipsum vitae malesuada sodales. Nam mattis imperdiet nibh nec pellentesque. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Cras sit amet nibh ac eros pulvinar ornare. Proin non justo tempor, congue eros nec, euismod velit. Quisque eget nulla ac quam dapibus ultrices ac vitae nisi. Maecenas volutpat hendrerit lacus non ullamcorper. Curabitur nulla magna, suscipit eu magna ac, tincidunt ullamcorper nibh. Pellentesque lacus sem, lacinia ac placerat eget, fringilla et nunc. Nullam commodo nulla enim, aliquet tincidunt urna euismod quis.        \r\n                  \r\n                  \r\n                  \r\n                  \r\n                  \r\n        ', 'CSS, course, code, design', 0, 'published'),
(5, 1, 'CSS3 is fine', 'kuhelika', '2015-10-14', 'images.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed lacinia tempus leo sed vehicula. Suspendisse potenti. Suspendisse facilisis ipsum vitae malesuada sodales. Nam mattis imperdiet nibh nec pellentesque. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Cras sit amet nibh ac eros pulvinar ornare. Proin non justo tempor, congue eros nec, euismod velit. Quisque eget nulla ac quam dapibus ultrices ac vitae nisi. Maecenas volutpat hendrerit lacus non ullamcorper. Curabitur nulla magna, suscipit eu magna ac, tincidunt ullamcorper nibh. Pellentesque lacus sem, lacinia ac placerat eget, fringilla et nunc. Nullam commodo nulla enim, aliquet tincidunt urna euismod quis.\r\n\r\nNulla eu mattis arcu. Nullam nec lectus vitae neque sagittis feugiat. Sed luctus feugiat lorem nec congue. Fusce sodales ullamcorper justo, nec pulvinar eros mollis sit amet. Sed vitae sagittis mi. Duis vel arcu egestas justo dictum vestibulum quis condimentum sem. Morbi a massa at libero sagittis sagittis ac vel urna. Etiam ut placerat ante. Donec eget nisi et tellus posuere finibus sed quis dui. Morbi ut augue interdum, ullamcorper magna sit amet, ullamcorper ligula. Nam et tellus ac ante rutrum consectetur a ut nibh. Ut imperdiet, dolor eu malesuada varius, velit sem fermentum diam, non tincidunt neque nisi et mi. Morbi pulvinar vel ante et hendrerit. Cras aliquet scelerisque nisi.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus imperdiet tellus quis molestie vulputate. Morbi quis hendrerit augue, non fringilla diam. Vivamus ornare felis at felis efficitur, a auctor sem iaculis. Aliquam dapibus sollicitudin sodales. Mauris lacinia, nibh a maximus ornare, sem tortor accumsan nulla, vel dignissim metus purus eget dolor. Sed et mauris a nibh pharetra tristique. Cras et purus commodo, finibus lorem eu, euismod odio. Maecenas faucibus ante eu sapien varius, sit amet dapibus lorem interdum. Mauris suscipit dolor quis massa gravida condimentum. Aenean id posuere nunc.          \r\n                  \r\n                  \r\n        ', 'CSS, course, code, design', 0, 'published'),
(6, 1, 'this is my new blog', 'Ek lotan', '2015-10-14', 'hello.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque pulvinar ante id ex aliquet, ut ultrices lorem efficitur. In nisi velit, vulputate non sapien in, tempus lacinia magna. Mauris dapibus mi rutrum justo malesuada commodo. Integer pulvinar tristique diam ut iaculis. Fusce quis massa nibh. Nullam non feugiat nisl. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Integer ultricies sit amet eros at accumsan. Aliquam et congue purus. Vestibulum pharetra in felis non viverra. Mauris ultrices ante in dolor viverra, ac mollis arcu tincidunt. Cras pellentesque aliquam nisl ac fermentum.\r\n\r\nSed egestas ullamcorper metus non aliquet. Aenean bibendum felis ac sapien ornare auctor. Aenean mollis tortor orci. Nulla placerat pellentesque erat blandit gravida. Phasellus non neque et nulla congue consequat. Aenean nec justo facilisis, tincidunt arcu in, viverra lectus. Aenean tempus sapien id magna feugiat, sit amet consectetur nulla vulputate. Phasellus convallis sagittis urna, in convallis nisi suscipit et. Curabitur eget fringilla massa, vel hendrerit ligula. Aenean quis quam in elit tempor auctor semper nec sem. In hac habitasse platea dictumst.          \r\n                  \r\n                  \r\n        ', 'hello, python, code, course', 1, 'published'),
(7, 1, 'html5', 'Sultan Mahmud', '2015-10-17', 'twitterboostrsap.jpg', '<p><strong>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus, vero, obcaecati, aut, error quam sapiente nemo saepe quibusdam sit excepturi nam quia corporis eligendi eos magni recusandae laborum minus inventore?</strong></p>', 'html, course, code', 2, 'published'),
(8, 5, 'Hello', 'Nil sagor', '2015-10-19', 'Marvel-studios.jpg', '<p>Hey this is ajax and php code</p>', 'ajax, code, php', NULL, 'draft'),
(10, 4, 'lotan birthday', 'Ek lotsan', '2015-10-19', 'logo_JavaScript.png', '<p>Hey I am lotan, how are you doing :)</p>', 'lotan, python', NULL, 'published');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `user_password` varchar(255) DEFAULT NULL,
  `user_firstname` varchar(255) DEFAULT NULL,
  `user_lastname` varchar(255) DEFAULT NULL,
  `user_email` varchar(255) DEFAULT NULL,
  `user_image` text,
  `user_role` varchar(255) DEFAULT NULL,
  `randSalt` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `user_password`, `user_firstname`, `user_lastname`, `user_email`, `user_image`, `user_role`, `randSalt`) VALUES
(1, 'nilsagor', '123', 'nil', 'sagor', 'nilsagor212021@gmail.com', '', 'admin', ''),
(3, 'eklotan', '1234', 'ek', 'lotan', 'eklotan@gmail.com', NULL, 'subscriber', NULL),
(4, 'foysol', '21234', 'foysol', 'sultan', 'foysol@gmail.com', NULL, 'subscriber', NULL),
(5, 'lollypop', '1234', 'lolly', 'pop', 'lollypop@yahoo.com', NULL, 'subscriber', NULL),
(6, 'cakephp', '12345', 'cake', 'php', 'cakephp@gmail.com', NULL, 'subsriber', NULL),
(7, 'symphony', '1234', 'symphony', 'php', 'symphony@gmail.com', NULL, 'subscriber', NULL),
(8, 'laravel', '1234', 'laravel', 'php', 'laravel@gmail.com', NULL, 'admin', NULL),
(9, 'zendphp', '1234', 'zend', 'php', 'zendphp@gmail.com', NULL, 'subscriber', NULL),
(10, 'icecream', '123', 'ice', 'cream', 'icecream@hotmail.com', NULL, 'subscriber', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
