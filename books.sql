-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 11, 2014 at 12:24 AM
-- Server version: 5.5.32
-- PHP Version: 5.4.19

SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `books`
--
CREATE DATABASE IF NOT EXISTS `books` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE books;

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE IF NOT EXISTS "authors" (
  "author_id" int(11) NOT NULL AUTO_INCREMENT,
  "author_name" varchar(250) NOT NULL,
  PRIMARY KEY ("author_id")
) AUTO_INCREMENT=4 ;

--
-- Truncate table before insert `authors`
--

TRUNCATE TABLE `authors`;
--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`author_id`, `author_name`) VALUES
(1, 'andersen'),
(2, 'karl may'),
(3, 'dic marchinko');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE IF NOT EXISTS "books" (
  "book_id" int(11) NOT NULL AUTO_INCREMENT,
  "book_title" varchar(250) NOT NULL,
  PRIMARY KEY ("book_id")
) AUTO_INCREMENT=5 ;

--
-- Truncate table before insert `books`
--

TRUNCATE TABLE `books`;
--
-- Dumping data for table `books`
--

INSERT INTO `books` (`book_id`, `book_title`) VALUES
(1, 'jojobibi'),
(2, 'vinetu'),
(3, 'rocky warrior'),
(4, 'oceola');

-- --------------------------------------------------------

--
-- Table structure for table `books_authors`
--

CREATE TABLE IF NOT EXISTS "books_authors" (
  "book_id" int(11) NOT NULL,
  "author_id" int(11) NOT NULL,
  KEY "book_id" ("book_id"),
  KEY "author_id" ("author_id")
);

--
-- Truncate table before insert `books_authors`
--

TRUNCATE TABLE `books_authors`;
--
-- Dumping data for table `books_authors`
--

INSERT INTO `books_authors` (`book_id`, `author_id`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `coments`
--

CREATE TABLE IF NOT EXISTS "coments" (
  "comment_id" int(11) NOT NULL AUTO_INCREMENT,
  "comment" varchar(250) NOT NULL,
  PRIMARY KEY ("comment_id")
) AUTO_INCREMENT=1 ;

--
-- Truncate table before insert `coments`
--

TRUNCATE TABLE `coments`;
-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS "users" (
  "user_id" int(11) NOT NULL AUTO_INCREMENT,
  "user_name" varchar(50) NOT NULL,
  "user_pass" varchar(50) NOT NULL,
  PRIMARY KEY ("user_id")
) AUTO_INCREMENT=1 ;

--
-- Truncate table before insert `users`
--

TRUNCATE TABLE `users`;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
