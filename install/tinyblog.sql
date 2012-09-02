-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 29, 2012 at 08:19 PM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `tinyblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `post` mediumtext NOT NULL,
  `author` varchar(32) NOT NULL,
  `date` date NOT NULL,
  `post_short` varchar(512) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `post`, `author`, `date`, `post_short`) VALUES
(1, 'The problem with C++.NET', 'C++.NET is great, as it uses C#''s CLI runtimes, and the huge .NET framework. However, there are some pitfalls. One such pitfall is:\r\ncout << "Hello world";<br/> vs Console::WriteLine("Hello World");\r\ncout << ""; is a native C++ operator, whereas console extends the console class.\r\nWhat''s so bad about this? Well, C++ was originally intended to be C with classes, and one of its game-winners is the fact it can be used across a variety of architectures. C++.NET cancels this, as managed C++ (as it is called) uses the CLI, which is a ''virtual'' environment Microsoft use for their .NET technologies. Another horrid function lazy programmers use is the system("PAUSE") function. This is Windows-dependent, and is horribly resource heavy. According to some benchmarks, the difference between a cin.get() call and a system() call can vary between a few seconds.<br/>\r\n', '', '0000-00-00', 'C++.NET is great, as it uses C#''s CLI runtimes, and the huge .NET framework. However, there are some pitfalls.'),
(7, 'more blogging', 'even more blog<br/>', 'Adil', '2012-01-28', 'lolk');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
