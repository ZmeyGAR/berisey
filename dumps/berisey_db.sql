-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: MySQL-8.0
-- Время создания: Мар 09 2025 г., 20:02
-- Версия сервера: 8.0.35
-- Версия PHP: 8.1.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `berisey_db`
--

-- --------------------------------------------------------

--
-- Структура таблицы `oc_address`
--

CREATE TABLE `oc_address` (
  `address_id` int NOT NULL,
  `customer_id` int NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `company` varchar(40) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int NOT NULL DEFAULT '0',
  `zone_id` int NOT NULL DEFAULT '0',
  `custom_field` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_api`
--

CREATE TABLE `oc_api` (
  `api_id` int NOT NULL,
  `username` varchar(64) NOT NULL,
  `key` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `oc_api`
--

INSERT INTO `oc_api` (`api_id`, `username`, `key`, `status`, `date_added`, `date_modified`) VALUES
(1, 'Default', 'CfLp3a8FvuFceuIEvbqqa3oQyC5AKBQ7N0nVroY4nlGM1veeueAaBp4OB4H2WAdZ15hB5hm9R8OWaOgxHl38GPda5iHxlIp81TlMvmwXmNXyebb6ONp0FKvuFth2LqLYcDQ8RLBlBapUYNs6TJqbChmdhYBwTK55YpAfMPE3zfyecFeLmE20r1lEMx5nY1CZaSCtd1bSUuptLLEfK4OaO2gHGDlDpDsrnNnZIuDR0pdOIdVlPGIc01bijS4bjn3M', 1, '2025-03-02 11:55:18', '2025-03-02 11:55:18');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_api_ip`
--

CREATE TABLE `oc_api_ip` (
  `api_ip_id` int NOT NULL,
  `api_id` int NOT NULL,
  `ip` varchar(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_api_session`
--

CREATE TABLE `oc_api_session` (
  `api_session_id` int NOT NULL,
  `api_id` int NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_article`
--

CREATE TABLE `oc_article` (
  `article_id` int NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `date_available` date NOT NULL,
  `sort_order` int NOT NULL DEFAULT '0',
  `article_review` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `noindex` tinyint(1) NOT NULL DEFAULT '1',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `viewed` int NOT NULL DEFAULT '0',
  `gstatus` int NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `oc_article`
--

INSERT INTO `oc_article` (`article_id`, `image`, `date_available`, `sort_order`, `article_review`, `status`, `noindex`, `date_added`, `date_modified`, `viewed`, `gstatus`) VALUES
(120, 'catalog/cart.png', '0000-00-00', 1, 1, 1, 1, '2014-04-08 04:26:00', '2015-06-29 09:35:55', 8, 0),
(123, 'catalog/demo/canon_eos_5d_2.jpg', '0000-00-00', 1, 1, 1, 1, '2014-03-31 06:55:15', '2015-06-29 09:03:48', 136, 1),
(124, 'catalog/demo/canon_eos_5d_3.jpg', '0000-00-00', 1, 0, 1, 1, '2015-06-29 09:05:38', '2015-06-29 10:11:50', 2, 0),
(125, 'catalog/demo/canon_eos_5d_2.jpg', '0000-00-00', 1, 0, 1, 1, '2015-06-29 09:09:03', '0000-00-00 00:00:00', 2, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_article_description`
--

CREATE TABLE `oc_article_description` (
  `article_id` int NOT NULL,
  `language_id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_h1` varchar(255) NOT NULL,
  `tag` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `oc_article_description`
--

INSERT INTO `oc_article_description` (`article_id`, `language_id`, `name`, `description`, `meta_description`, `meta_keyword`, `meta_title`, `meta_h1`, `tag`) VALUES
(120, 1, 'CMS для интернет магазинов ocStore v3.x', '&lt;p&gt;Рады представить Вашему вниманию ocStore v3.x основанную на OPENCART v3.x&lt;/p&gt;\r\n', 'CMS для интернет магазинов ocStore v3.x это бесплатный функциональный движок для создания качественных продающих магазинов.', 'cms, opencart, ocstore', 'CMS для интернет магазинов ocStore v3.x - Скачать', 'CMS для интернет магазинов ocStore v3.x', ''),
(120, 2, 'CMS for online stores ocStore v3.x', '&lt;p&gt;&lt;span class=&quot;long_text&quot; id=&quot;result_box&quot; lang=&quot;en&quot;&gt;&lt;span class=&quot;hps&quot;&gt;Are pleased to announce&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;ocStore v3.x&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;based on&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;OpenCart v2.x&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n', 'CMS for online stores ocStore v3.x is a free functional engine to create high-quality shops selling.', 'cms, opencart, ocstore', 'CMS for online stores ocStore v3.x - Download', 'CMS for online stores ocStore v3.x', ''),
(123, 1, 'Обзор Первый', '&lt;p&gt;Это первый фото обзор тут можно написать много какого то текста который описывает фото обзор и говорит что и как и почему для чего :-) Это первый фото обзор тут можно написать много какого то текста который описывает фото обзор и говорит что и как и почему для чего :-) Это первый фото обзор тут можно написать много какого то текста который описывает фото обзор и говорит что и как и почему для чего :-) Это первый фото обзор тут можно написать много какого то текста который описывает фото обзор и говорит что и как и почему для чего :-) Это первый фото обзор тут можно написать много какого то текста который описывает фото обзор и говорит что и как и почему для чего :-) Это первый фото обзор тут можно написать много какого то текста который описывает фото обзор и говорит что и как и почему для чего :-) Это первый фото обзор тут можно написать много какого то текста который описывает фото обзор и говорит что и как и почему для чего :-) Это первый фото обзор тут можно написать много какого то текста который описывает фото обзор и говорит что и как и почему для чего :-) Это первый фото обзор тут можно написать много какого то текста который описывает фото обзор и говорит что и как и почему для чего :-)&lt;/p&gt;\r\n', 'Фото Обзор Первый', 'Фото Обзор Первый', 'Фото Обзор Первый', 'Фото Обзор Первый', ''),
(123, 2, 'First Overview', '&lt;p&gt;&lt;span id=&quot;result_box&quot; lang=&quot;en&quot;&gt;&lt;span class=&quot;hps&quot;&gt;This is the first&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;review of the&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;photos&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;here&lt;/span&gt;&lt;span&gt;, you can write&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;a lot of&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;what that&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;text&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;that describes the&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;photo&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;review and&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;says&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;what and how&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;and why&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;what&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;:-) This is the first&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;review of the&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;photos&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;here&lt;/span&gt;&lt;span&gt;, you can write&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;a lot of&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;what that&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;text&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;that describes the&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;photo&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;review and&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;says&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;what and how&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;and why&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;what&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;:-) This is the first&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;review of the&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;photos&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;here&lt;/span&gt;&lt;span&gt;, you can write&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;a lot of&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;what that&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;text&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;that describes the&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;photo&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;review and&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;says&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;what and how&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;and why&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;what&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;:-) This is the first&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;review of the&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;photos&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;here&lt;/span&gt;&lt;span&gt;, you can write&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;a lot of&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;what that&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;text&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;that describes the&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;photo&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;review and&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;says&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;what and how&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;and why&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;what&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;:-) This is the first&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;review of the&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;photos&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;here&lt;/span&gt;&lt;span&gt;, you can write&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;a lot of&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;what that&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;text&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;that describes the&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;photo&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;review and&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;says&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;what and how&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;and why&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;what&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;:-) This is the first&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;review of the&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;photos&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;here&lt;/span&gt;&lt;span&gt;, you can write&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;a lot of&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;what that&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;text&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;that describes the&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;photo&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;review and&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;says&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;what and how&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;and why&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;what&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;:-) This is the first&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;review of the&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;photos&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;here&lt;/span&gt;&lt;span&gt;, you can write&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;a lot of&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;what that&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;text&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;that describes the&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;photo&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;review and&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;says&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;what and how&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;and why&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;what&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;:-) This is the first&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;review of the&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;photos&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;here&lt;/span&gt;&lt;span&gt;, you can write&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;a lot of&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;what that&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;text&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;that describes the&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;photo&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;review and&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;says&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;what and how&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;and why&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;what&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;:-) This is the first&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;review of the&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;photos&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;here&lt;/span&gt;&lt;span&gt;, you can write&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;a lot of&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;what that&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;text&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;that describes the&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;photo&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;review and&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;says&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;what and how&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;and why&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;what&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;:-)&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n', 'First Photo Overview', 'First Photo Overview', 'First Photo Overview', 'First Photo Overview', ''),
(124, 2, 'Важная статья', '&lt;p&gt;Это очень важная статья которую нужно прочитать всем важным людям про важные события важных людей :-)&lt;br&gt;&lt;/p&gt;', '', '', '', '', ''),
(124, 1, 'Важная статья', '&lt;p&gt;Это очень важная статья которую нужно прочитать всем важным людям про важные события важных людей :-)&lt;/p&gt;', '', '', '', '', ''),
(125, 1, 'Первая новость', '&lt;p&gt;Это первая новость всем новостям новость :-)&lt;/p&gt;', '', '', '', '', ''),
(125, 2, 'Первая новость', '&lt;p&gt;Это первая новость всем новостям новость :-)&lt;br&gt;&lt;/p&gt;', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_article_image`
--

CREATE TABLE `oc_article_image` (
  `article_image_id` int NOT NULL,
  `article_id` int NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_article_related`
--

CREATE TABLE `oc_article_related` (
  `article_id` int NOT NULL,
  `related_id` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `oc_article_related`
--

INSERT INTO `oc_article_related` (`article_id`, `related_id`) VALUES
(120, 123),
(120, 124),
(123, 120),
(123, 124),
(124, 120),
(124, 123);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_article_related_mn`
--

CREATE TABLE `oc_article_related_mn` (
  `article_id` int NOT NULL,
  `manufacturer_id` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `oc_article_related_mn`
--

INSERT INTO `oc_article_related_mn` (`article_id`, `manufacturer_id`) VALUES
(120, 8),
(120, 9),
(123, 8),
(124, 7);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_article_related_product`
--

CREATE TABLE `oc_article_related_product` (
  `article_id` int NOT NULL,
  `product_id` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `oc_article_related_product`
--

INSERT INTO `oc_article_related_product` (`article_id`, `product_id`) VALUES
(30, 123),
(31, 123),
(43, 123),
(45, 123),
(120, 28),
(120, 30),
(120, 41),
(123, 30),
(123, 31),
(123, 43),
(123, 45),
(124, 28),
(124, 30),
(124, 41),
(124, 47);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_article_related_wb`
--

CREATE TABLE `oc_article_related_wb` (
  `article_id` int NOT NULL,
  `category_id` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_article_to_blog_category`
--

CREATE TABLE `oc_article_to_blog_category` (
  `article_id` int NOT NULL,
  `blog_category_id` int NOT NULL,
  `main_blog_category` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `oc_article_to_blog_category`
--

INSERT INTO `oc_article_to_blog_category` (`article_id`, `blog_category_id`, `main_blog_category`) VALUES
(124, 0, 0),
(123, 70, 1),
(120, 0, 0),
(125, 69, 1),
(120, 69, 0),
(120, 71, 1),
(124, 71, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_article_to_download`
--

CREATE TABLE `oc_article_to_download` (
  `article_id` int NOT NULL,
  `download_id` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_article_to_layout`
--

CREATE TABLE `oc_article_to_layout` (
  `article_id` int NOT NULL,
  `store_id` int NOT NULL,
  `layout_id` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `oc_article_to_layout`
--

INSERT INTO `oc_article_to_layout` (`article_id`, `store_id`, `layout_id`) VALUES
(120, 0, 0),
(123, 0, 0),
(124, 0, 0),
(125, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_article_to_store`
--

CREATE TABLE `oc_article_to_store` (
  `article_id` int NOT NULL,
  `store_id` int NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `oc_article_to_store`
--

INSERT INTO `oc_article_to_store` (`article_id`, `store_id`) VALUES
(120, 0),
(123, 0),
(124, 0),
(125, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_attribute`
--

CREATE TABLE `oc_attribute` (
  `attribute_id` int NOT NULL,
  `attribute_group_id` int NOT NULL,
  `sort_order` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `oc_attribute`
--

INSERT INTO `oc_attribute` (`attribute_id`, `attribute_group_id`, `sort_order`) VALUES
(1, 6, 1),
(2, 6, 5),
(3, 6, 3),
(4, 3, 1),
(5, 3, 2),
(6, 3, 3),
(7, 3, 4),
(8, 3, 5),
(9, 3, 6),
(10, 3, 7),
(11, 3, 8),
(12, 10, 0),
(13, 10, 1),
(14, 10, 3),
(15, 11, 3),
(16, 11, 4);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_attribute_description`
--

CREATE TABLE `oc_attribute_description` (
  `attribute_id` int NOT NULL,
  `language_id` int NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `oc_attribute_description`
--

INSERT INTO `oc_attribute_description` (`attribute_id`, `language_id`, `name`) VALUES
(1, 1, 'Description'),
(2, 1, 'No. of Cores'),
(4, 1, 'test 1'),
(5, 1, 'test 2'),
(6, 1, 'test 3'),
(7, 1, 'test 4'),
(8, 1, 'test 5'),
(9, 1, 'test 6'),
(10, 1, 'test 7'),
(11, 1, 'test 8'),
(3, 1, 'Clockspeed'),
(3, 2, 'Clockspeed'),
(1, 2, 'Description'),
(2, 2, 'No. of Cores'),
(4, 2, 'test 1'),
(5, 2, 'test 2'),
(6, 2, 'test 3'),
(7, 2, 'test 4'),
(8, 2, 'test 5'),
(9, 2, 'test 6'),
(10, 2, 'test 7'),
(11, 2, 'test 8'),
(12, 1, 'Тип'),
(13, 1, 'Область применения'),
(14, 1, 'Назначение удобрения'),
(15, 1, 'Вес товара'),
(16, 1, 'Кол-во в упаковке');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_attribute_group`
--

CREATE TABLE `oc_attribute_group` (
  `attribute_group_id` int NOT NULL,
  `sort_order` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `oc_attribute_group`
--

INSERT INTO `oc_attribute_group` (`attribute_group_id`, `sort_order`) VALUES
(3, 2),
(4, 1),
(5, 3),
(6, 4),
(10, 0),
(11, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_attribute_group_description`
--

CREATE TABLE `oc_attribute_group_description` (
  `attribute_group_id` int NOT NULL,
  `language_id` int NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `oc_attribute_group_description`
--

INSERT INTO `oc_attribute_group_description` (`attribute_group_id`, `language_id`, `name`) VALUES
(3, 1, 'Memory'),
(4, 1, 'Technical'),
(5, 1, 'Motherboard'),
(6, 1, 'Processor'),
(3, 2, 'Memory'),
(5, 2, 'Motherboard'),
(6, 2, 'Processor'),
(4, 2, 'Technical'),
(10, 1, 'Удобрения'),
(11, 1, 'Физические параметры продукта');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_banner`
--

CREATE TABLE `oc_banner` (
  `banner_id` int NOT NULL,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `oc_banner`
--

INSERT INTO `oc_banner` (`banner_id`, `name`, `status`) VALUES
(9, 'Главный баннер', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_banner_image`
--

CREATE TABLE `oc_banner_image` (
  `banner_image_id` int NOT NULL,
  `banner_id` int NOT NULL,
  `language_id` int NOT NULL,
  `title` varchar(64) NOT NULL,
  `content` text,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `oc_banner_image`
--

INSERT INTO `oc_banner_image` (`banner_image_id`, `banner_id`, `language_id`, `title`, `content`, `link`, `image`, `sort_order`) VALUES
(135, 9, 1, 'Проверяем эффективность препаратов в своем хозяйстве', '&lt;div class=&quot;w-full inline-flex&quot;&gt;\r\n  &lt;p class=&quot;text-2xl font-extrabold text-lightBlack xl-mobile:text-[5vw] md:text-[clamp(2.5rem,_5vw,_3rem)] leading-[1.1] md:leading-none text-center xl-mobile:text-start&quot;&gt;\r\n    Проверяем &lt;span class=&quot;bg-clip-text text-transparent bg-gradient-to-r from-lightGreen to-darkGreen&quot;&gt;эффективность препаратов&lt;/span&gt; в своем хозяйстве\r\n  &lt;/p&gt;\r\n&lt;/div&gt;', '/specials', 'catalog/banners/banner-image-2.png', 0),
(136, 9, 1, 'Берисей . Все для хорошего урожая', '              &lt;div class=&quot;w-full inline-flex text-center xl-mobile:text-start&quot;&gt;\r\n                &lt;svg viewBox=&quot;0 0 185 53&quot; fill=&quot;none&quot; xmlns=&quot;http://www.w3.org/2000/svg&quot; class=&quot;flex-1 w-full &quot;&gt;\r\n                  &lt;path d=&quot;M1 50.1674V41.0513H4.16136C4.59068 41.0513 4.98655 41.0847 5.34897 41.1516C5.71138 41.2185 6.02919 41.3356 6.30239 41.5029C6.5756 41.6646 6.78747 41.8932 6.93801 42.1887C7.08855 42.4786 7.16104 42.8522 7.16104 43.2982C7.16104 43.8056 7.0328 44.2405 6.78189 44.6029C6.53099 44.9653 6.16858 45.2274 5.7058 45.3891C6.31354 45.4727 6.79304 45.718 7.13316 46.1195C7.47327 46.5209 7.64054 47.0394 7.64054 47.6751C7.64054 48.1657 7.54575 48.5727 7.3506 48.8961C7.15546 49.2195 6.89341 49.476 6.55887 49.6656C6.22433 49.8551 5.84519 49.9889 5.42702 50.067C5.00328 50.1451 4.5628 50.1841 4.10003 50.1841H1.00558L1 50.1674ZM1.93112 45.127H3.79895C4.11676 45.127 4.42341 45.0991 4.71892 45.0378C5.01443 44.9765 5.28206 44.8761 5.51066 44.7423C5.74483 44.6029 5.92325 44.4245 6.05707 44.2015C6.19088 43.9785 6.25779 43.6997 6.25779 43.3651C6.25779 42.9358 6.15743 42.618 5.96228 42.4117C5.76714 42.2054 5.51066 42.066 5.19285 41.9991C4.88061 41.9322 4.53493 41.8932 4.16694 41.8932H1.92555V45.1326L1.93112 45.127ZM1.93112 49.331H4.061C4.34536 49.331 4.64086 49.3143 4.9531 49.2808C5.26533 49.2474 5.54969 49.1749 5.81731 49.069C6.08494 48.963 6.29682 48.7902 6.46409 48.5616C6.62578 48.3274 6.70941 48.0208 6.70941 47.6305C6.70941 47.2848 6.6425 47.006 6.51426 46.7941C6.38603 46.5823 6.21318 46.4094 5.99016 46.2867C5.77271 46.1641 5.52738 46.0749 5.25418 46.0303C4.98097 45.9857 4.70777 45.9578 4.42342 45.9578H1.9367V49.3366L1.93112 49.331Z&quot; fill=&quot;#31585C&quot;&gt;&lt;/path&gt;\r\n                  &lt;path d=&quot;M12.9983 50.2733C12.0504 50.2733 11.2698 50.0726 10.6509 49.6712C10.032 49.2697 9.56928 48.7177 9.26262 48.0152C8.95596 47.3127 8.80542 46.5098 8.80542 45.6177C8.80542 44.7256 8.96154 43.9283 9.2682 43.2258C9.57485 42.5233 10.0432 41.9713 10.6677 41.5642C11.2921 41.1572 12.0727 40.9509 13.0094 40.9509C13.6172 40.9509 14.1636 41.0457 14.6319 41.2297C15.1058 41.4137 15.4961 41.6813 15.8139 42.027C16.1262 42.3727 16.3492 42.7965 16.4774 43.2815H15.5352C15.3623 42.8076 15.0557 42.4396 14.6152 42.1776C14.1747 41.9155 13.6395 41.7817 13.0094 41.7817C12.2456 41.7817 11.6211 41.9601 11.1472 42.3114C10.6677 42.6626 10.3164 43.1254 10.0878 43.7053C9.85921 44.2796 9.7477 44.904 9.7477 45.5731C9.7477 46.2812 9.86478 46.9224 10.099 47.5078C10.3331 48.0933 10.69 48.5561 11.1695 48.9073C11.649 49.253 12.2679 49.4314 13.015 49.4314C13.4276 49.4314 13.8123 49.3757 14.1636 49.2586C14.5148 49.1415 14.8215 48.9742 15.078 48.7512C15.3344 48.5282 15.5184 48.255 15.6299 47.9371H16.6503C16.5053 48.4278 16.26 48.846 15.9143 49.1917C15.5686 49.5429 15.1504 49.805 14.6598 49.989C14.1636 50.173 13.6116 50.2678 13.0038 50.2678L12.9983 50.2733Z&quot; fill=&quot;#31585C&quot;&gt;&lt;/path&gt;\r\n                  &lt;path d=&quot;M18.1228 50.1674V41.0513H24.1723V41.8876H19.0539V45.2274H23.6594V46.0805H19.0539V49.331H24.1723V50.1674H18.1228Z&quot; fill=&quot;#31585C&quot;&gt;&lt;/path&gt;\r\n                  &lt;path d=&quot;M28.6049 52.7321V49.3254C28.9339 49.2975 29.1848 49.2027 29.3576 49.0411C29.5361 48.8794 29.6699 48.6786 29.7647 48.45C29.8483 48.2382 29.9208 47.9761 29.971 47.675C30.0211 47.3739 30.0657 47.0561 30.0936 46.7216C30.1215 46.3871 30.1494 46.0581 30.1661 45.7292C30.2107 44.9207 30.2386 44.129 30.2609 43.3539C30.2832 42.5789 30.2999 41.8095 30.3055 41.0457H36.0428V49.3254H37.1635V52.7321H36.2324V50.1673H29.5416V52.7321H28.5994H28.6049ZM30.3613 49.3254H35.1172V41.882H31.2199L31.0917 45.7793C31.0805 45.9856 31.0749 46.2365 31.0582 46.532C31.0471 46.8275 31.0136 47.1398 30.969 47.4632C30.9188 47.7866 30.8463 48.1099 30.7515 48.4277C30.6512 48.7511 30.5229 49.0466 30.3557 49.3254H30.3613Z&quot; fill=&quot;#31585C&quot;&gt;&lt;/path&gt;\r\n                  &lt;path d=&quot;M38.011 50.2565V49.3254C38.2061 49.3143 38.3845 49.2697 38.5407 49.1916C38.6968 49.108 38.8306 48.9965 38.9477 48.8571C39.0648 48.7177 39.154 48.556 39.2097 48.372C39.2934 48.1155 39.3603 47.8311 39.4049 47.5189C39.4495 47.2123 39.4774 46.8945 39.4941 46.5711C39.5108 46.2477 39.522 45.9466 39.522 45.6622L39.6 41.0457H45.5938V50.1618H44.6627V41.882H40.5367L40.4587 45.1716C40.4475 45.6678 40.4364 46.1696 40.4196 46.6714C40.4029 47.1732 40.3583 47.6472 40.2858 48.0876C40.2133 48.5281 40.0795 48.9017 39.8788 49.2028C39.706 49.5206 39.4718 49.7659 39.1707 49.9443C38.8696 50.1227 38.4849 50.2231 38.011 50.2454V50.2565Z&quot; fill=&quot;#31585C&quot;&gt;&lt;/path&gt;\r\n                  &lt;path d=&quot;M47.3331 50.1673L49.318 46.5042C48.6879 46.3648 48.1806 46.086 47.7903 45.6511C47.4 45.2218 47.2048 44.6308 47.2048 43.8836C47.2048 43.3651 47.2829 42.9302 47.4446 42.5734C47.6063 42.2165 47.8293 41.9266 48.1192 41.698C48.4092 41.4694 48.7604 41.3077 49.1619 41.2018C49.5633 41.1014 50.0149 41.0457 50.5056 41.0457H53.8175V50.1618H52.8864V46.6658H50.2435L48.3757 50.1618H47.3331V50.1673ZM50.723 45.8351H52.8919V41.8876H50.5167C50.0205 41.8876 49.5912 41.9545 49.2344 42.0883C48.8775 42.2221 48.6043 42.4284 48.4203 42.7128C48.2363 42.9971 48.1415 43.3763 48.1415 43.8502C48.1415 44.3631 48.2642 44.7702 48.5039 45.0545C48.7437 45.3444 49.0615 45.5452 49.4518 45.6622C49.8421 45.7793 50.2658 45.8351 50.723 45.8351Z&quot; fill=&quot;#31585C&quot;&gt;&lt;/path&gt;\r\n                  &lt;path d=&quot;M58.6572 50.1674L61.5955 45.6009L58.7464 41.0513H59.9061L62.2033 44.8427L64.4837 41.0513H65.6323L62.7943 45.5675L65.7326 50.1729H64.5952L62.1865 46.3536L59.7612 50.1729H58.6516L58.6572 50.1674Z&quot; fill=&quot;#31585C&quot;&gt;&lt;/path&gt;\r\n                  &lt;path d=&quot;M70.305 50.2733C69.3572 50.2733 68.571 50.0726 67.941 49.6656C67.3109 49.2641 66.8314 48.7066 66.508 48.0041C66.1846 47.3015 66.0229 46.5042 66.0229 45.6177C66.0229 44.7312 66.1846 43.9227 66.508 43.2202C66.8314 42.5177 67.3053 41.9601 67.941 41.5587C68.571 41.1516 69.3627 40.9509 70.305 40.9509C71.2473 40.9509 72.039 41.1516 72.6635 41.5587C73.2935 41.9601 73.7675 42.5177 74.0908 43.2202C74.4142 43.9283 74.5759 44.7256 74.5759 45.6177C74.5759 46.5098 74.4142 47.296 74.0908 48.0041C73.7675 48.7122 73.2935 49.2641 72.6635 49.6656C72.0334 50.0726 71.2473 50.2733 70.305 50.2733ZM70.305 49.437C71.0633 49.437 71.6822 49.2642 72.1728 48.924C72.6635 48.5784 73.0259 48.1156 73.2601 47.5357C73.4943 46.9558 73.6169 46.3147 73.6169 45.6233C73.6169 45.0992 73.55 44.6029 73.4162 44.1402C73.2824 43.6774 73.0761 43.2704 72.8029 42.9135C72.5297 42.5623 72.184 42.2835 71.7658 42.0884C71.3476 41.8932 70.8626 41.7928 70.305 41.7928C69.5579 41.7928 68.9334 41.9657 68.4428 42.317C67.9465 42.6682 67.5785 43.131 67.3332 43.7109C67.0879 44.2907 66.9652 44.9319 66.9652 45.6289C66.9652 46.3258 67.0879 46.9503 67.3276 47.5301C67.5674 48.11 67.9354 48.5728 68.4372 48.924C68.9334 49.2697 69.5579 49.4481 70.305 49.4481V49.437Z&quot; fill=&quot;#31585C&quot;&gt;&lt;/path&gt;\r\n                  &lt;path d=&quot;M76.1369 50.1674V41.0513H79.2593C79.9228 41.0513 80.4859 41.1572 80.9598 41.3746C81.4337 41.5921 81.7962 41.921 82.0471 42.3615C82.298 42.802 82.4262 43.3651 82.4262 44.0454C82.4262 44.7256 82.2757 45.2776 81.9802 45.7348C81.6846 46.192 81.2776 46.5321 80.7702 46.7551C80.2573 46.9781 79.6719 47.0896 79.0084 47.0896H77.0625V50.1729H76.1313L76.1369 50.1674ZM77.068 46.2477H78.9749C79.7165 46.2477 80.3186 46.0693 80.7814 45.718C81.2442 45.3668 81.4783 44.7869 81.4783 43.9896C81.4783 43.2648 81.2832 42.7351 80.8929 42.395C80.5026 42.0549 79.9339 41.8876 79.1979 41.8876H77.068V46.2477Z&quot; fill=&quot;#31585C&quot;&gt;&lt;/path&gt;\r\n                  &lt;path d=&quot;M87.8902 50.2733C86.9424 50.2733 86.1562 50.0726 85.5262 49.6656C84.8961 49.2641 84.4166 48.7066 84.0932 48.0041C83.7698 47.3015 83.6082 46.5042 83.6082 45.6177C83.6082 44.7312 83.7698 43.9227 84.0932 43.2202C84.4166 42.5177 84.8905 41.9601 85.5262 41.5587C86.1562 41.1516 86.9479 40.9509 87.8902 40.9509C88.8325 40.9509 89.6242 41.1516 90.2487 41.5587C90.8787 41.9601 91.3527 42.5177 91.676 43.2202C91.9994 43.9283 92.1611 44.7256 92.1611 45.6177C92.1611 46.5098 91.9994 47.296 91.676 48.0041C91.3527 48.7122 90.8787 49.2641 90.2487 49.6656C89.6186 50.0726 88.8325 50.2733 87.8902 50.2733ZM87.8902 49.437C88.6485 49.437 89.2674 49.2642 89.758 48.924C90.2487 48.5784 90.6111 48.1156 90.8453 47.5357C91.0795 46.9558 91.2021 46.3147 91.2021 45.6233C91.2021 45.0992 91.1352 44.6029 91.0014 44.1402C90.8676 43.6774 90.6613 43.2704 90.3881 42.9135C90.1149 42.5623 89.7692 42.2835 89.351 42.0884C88.9329 41.8932 88.4478 41.7928 87.8902 41.7928C87.1431 41.7928 86.5186 41.9657 86.028 42.317C85.5317 42.6682 85.1637 43.131 84.9184 43.7109C84.6731 44.2907 84.5504 44.9319 84.5504 45.6289C84.5504 46.3258 84.6731 46.9503 84.9128 47.5301C85.1526 48.11 85.5206 48.5728 86.0224 48.924C86.5186 49.2697 87.1431 49.4481 87.8902 49.4481V49.437Z&quot; fill=&quot;#31585C&quot;&gt;&lt;/path&gt;\r\n                  &lt;path d=&quot;M93.7222 50.1674V41.0513H94.6533V49.331H98.3666V41.0513H99.2978V49.331H103V41.0513H103.942V50.1674H93.7277H93.7222Z&quot; fill=&quot;#31585C&quot;&gt;&lt;/path&gt;\r\n                  &lt;path d=&quot;M105.989 50.1674V41.0513H112.038V41.8876H106.92V45.2274H111.525V46.0805H106.92V49.331H112.038V50.1674H105.989Z&quot; fill=&quot;#31585C&quot;&gt;&lt;/path&gt;\r\n                  &lt;path d=&quot;M113.516 50.1674V41.0513H119.292V41.8876H114.441V50.1674H113.51H113.516Z&quot; fill=&quot;#31585C&quot;&gt;&lt;/path&gt;\r\n                  &lt;path d=&quot;M124.037 50.2733C123.089 50.2733 122.303 50.0726 121.673 49.6656C121.043 49.2641 120.563 48.7066 120.24 48.0041C119.917 47.3015 119.755 46.5042 119.755 45.6177C119.755 44.7312 119.917 43.9227 120.24 43.2202C120.563 42.5177 121.037 41.9601 121.673 41.5587C122.303 41.1516 123.095 40.9509 124.037 40.9509C124.979 40.9509 125.771 41.1516 126.395 41.5587C127.025 41.9601 127.499 42.5177 127.823 43.2202C128.146 43.9283 128.308 44.7256 128.308 45.6177C128.308 46.5098 128.146 47.296 127.823 48.0041C127.499 48.7122 127.025 49.2641 126.395 49.6656C125.765 50.0726 124.979 50.2733 124.037 50.2733ZM124.037 49.437C124.795 49.437 125.414 49.2642 125.905 48.924C126.395 48.5784 126.758 48.1156 126.992 47.5357C127.226 46.9558 127.349 46.3147 127.349 45.6233C127.349 45.0992 127.282 44.6029 127.148 44.1402C127.014 43.6774 126.808 43.2704 126.535 42.9135C126.262 42.5623 125.916 42.2835 125.498 42.0884C125.08 41.8932 124.595 41.7928 124.037 41.7928C123.29 41.7928 122.665 41.9657 122.175 42.317C121.678 42.6682 121.31 43.131 121.065 43.7109C120.82 44.2907 120.697 44.9319 120.697 45.6289C120.697 46.3258 120.82 46.9503 121.06 47.5301C121.299 48.11 121.667 48.5728 122.169 48.924C122.665 49.2697 123.29 49.4481 124.037 49.4481V49.437Z&quot; fill=&quot;#31585C&quot;&gt;&lt;/path&gt;\r\n                  &lt;path d=&quot;M133.9 50.1785V49.2864C134.296 49.2864 134.636 49.2418 134.92 49.147C135.205 49.0522 135.45 48.9017 135.656 48.701C135.863 48.5002 136.052 48.2382 136.225 47.9204L132.679 41.0457H133.777L136.755 46.9279L139.18 41.0457H140.184L138.082 45.9856C137.987 46.2198 137.864 46.4986 137.719 46.8275C137.574 47.1565 137.413 47.5022 137.229 47.8535C137.05 48.2047 136.855 48.5337 136.654 48.8348C136.454 49.1358 136.247 49.3756 136.041 49.5596C135.757 49.7938 135.439 49.9554 135.093 50.0447C134.747 50.1339 134.346 50.1785 133.9 50.1785Z&quot; fill=&quot;#31585C&quot;&gt;&lt;/path&gt;\r\n                  &lt;path d=&quot;M141.355 50.1674V41.0513H144.477C145.141 41.0513 145.704 41.1572 146.178 41.3746C146.652 41.5921 147.014 41.921 147.265 42.3615C147.516 42.802 147.644 43.3651 147.644 44.0454C147.644 44.7256 147.493 45.2776 147.198 45.7348C146.902 46.192 146.495 46.5321 145.988 46.7551C145.475 46.9781 144.89 47.0896 144.226 47.0896H142.28V50.1729H141.349L141.355 50.1674ZM142.286 46.2477H144.193C144.934 46.2477 145.536 46.0693 145.999 45.718C146.462 45.3668 146.696 44.7869 146.696 43.9896C146.696 43.2648 146.501 42.7351 146.111 42.395C145.72 42.0549 145.152 41.8876 144.416 41.8876H142.286V46.2477Z&quot; fill=&quot;#31585C&quot;&gt;&lt;/path&gt;\r\n                  &lt;path d=&quot;M153.102 50.2733C152.155 50.2733 151.368 50.0726 150.738 49.6656C150.108 49.2641 149.629 48.7066 149.305 48.0041C148.982 47.3015 148.82 46.5042 148.82 45.6177C148.82 44.7312 148.982 43.9227 149.305 43.2202C149.629 42.5177 150.103 41.9601 150.738 41.5587C151.368 41.1516 152.16 40.9509 153.102 40.9509C154.045 40.9509 154.836 41.1516 155.461 41.5587C156.091 41.9601 156.565 42.5177 156.888 43.2202C157.212 43.9283 157.373 44.7256 157.373 45.6177C157.373 46.5098 157.212 47.296 156.888 48.0041C156.565 48.7122 156.091 49.2641 155.461 49.6656C154.831 50.0726 154.045 50.2733 153.102 50.2733ZM153.102 49.437C153.861 49.437 154.48 49.2642 154.97 48.924C155.461 48.5784 155.823 48.1156 156.057 47.5357C156.292 46.9558 156.414 46.3147 156.414 45.6233C156.414 45.0992 156.347 44.6029 156.214 44.1402C156.08 43.6774 155.873 43.2704 155.6 42.9135C155.327 42.5623 154.981 42.2835 154.563 42.0884C154.145 41.8932 153.66 41.7928 153.102 41.7928C152.355 41.7928 151.731 41.9657 151.24 42.317C150.744 42.6682 150.376 43.131 150.131 43.7109C149.885 44.2907 149.763 44.9319 149.763 45.6289C149.763 46.3258 149.885 46.9503 150.125 47.5301C150.365 48.11 150.733 48.5728 151.235 48.924C151.731 49.2697 152.355 49.4481 153.102 49.4481V49.437Z&quot; fill=&quot;#31585C&quot;&gt;&lt;/path&gt;\r\n                  &lt;path d=&quot;M157.813 50.1673L160.289 45.5619L157.825 41.0457H158.856L161.114 45.2775H162.664V41.0457H163.595V45.2775H165.168L167.426 41.0457H168.418L165.954 45.5619L168.441 50.1673H167.359L165.207 46.1195H163.595V50.1673H162.664V46.1195H161.053L158.901 50.1673H157.819H157.813Z&quot; fill=&quot;#31585C&quot;&gt;&lt;/path&gt;\r\n                  &lt;path d=&quot;M169.227 50.1674L172.684 41.0513H173.96L177.417 50.1674H176.397L175.65 48.1546H170.994L170.247 50.1674H169.227ZM171.301 47.3182H175.327L173.314 41.9155L171.301 47.3182Z&quot; fill=&quot;#31585C&quot;&gt;&lt;/path&gt;\r\n                  &lt;path d=&quot;M178.516 50.1673L180.501 46.5042C179.871 46.3648 179.363 46.086 178.973 45.6511C178.583 45.2218 178.387 44.6308 178.387 43.8836C178.387 43.3651 178.466 42.9302 178.627 42.5734C178.789 42.2165 179.012 41.9266 179.302 41.698C179.592 41.4694 179.943 41.3077 180.344 41.2018C180.746 41.1014 181.198 41.0457 181.688 41.0457H185V50.1618H184.069V46.6658H181.426L179.558 50.1618H178.516V50.1673ZM181.906 45.8351H184.075V41.8876H181.699C181.203 41.8876 180.774 41.9545 180.417 42.0883C180.06 42.2221 179.787 42.4284 179.603 42.7128C179.419 42.9971 179.324 43.3763 179.324 43.8502C179.324 44.3631 179.447 44.7702 179.687 45.0545C179.926 45.3444 180.244 45.5452 180.634 45.6622C181.025 45.7793 181.448 45.8351 181.906 45.8351Z&quot; fill=&quot;#31585C&quot;&gt;&lt;/path&gt;\r\n                  &lt;path d=&quot;M0.682373 35.915V8.94604H22.3732V15.3032H8.15766V18.4231H13.3575C16.6182 18.4231 19.2377 19.162 21.216 20.6399C23.1943 22.1177 24.1834 24.268 24.1834 27.0947C24.1834 29.9214 23.2451 32.0326 21.3723 33.5848C19.4957 35.1408 16.9544 35.915 13.7446 35.915H0.682373ZM8.15766 29.636H13.166C14.2958 29.636 15.1677 29.3936 15.7854 28.9049C16.4032 28.4162 16.712 27.7086 16.712 26.7859C16.712 25.9375 16.3992 25.2689 15.7698 24.7841C15.1403 24.2954 14.288 24.053 13.209 24.053H8.16157V29.6399L8.15766 29.636Z&quot; fill=&quot;lightGreen&quot;&gt;&lt;/path&gt;\r\n                  &lt;path d=&quot;M27.366 35.9149V8.94604H49.0568V15.3032H34.7631V19.3888H47.708V25.2846H34.7631V29.5617H49.2484V35.9189H27.366V35.9149Z&quot; fill=&quot;lightGreen&quot;&gt;&lt;/path&gt;\r\n                  &lt;path d=&quot;M53.0486 35.915V8.94604H64.6056C68.0461 8.94604 70.775 9.78662 72.7924 11.4717C74.8098 13.1528 75.8185 15.4986 75.8185 18.5013C75.8185 21.5039 74.7512 23.9709 72.6204 25.6677C70.4896 27.3645 67.6903 28.209 64.2224 28.209H60.5239V35.915H53.0486ZM60.5239 22.3523H64.0699C65.4071 22.3523 66.4509 22.0317 67.2094 21.3905C67.9679 20.7493 68.3471 19.8736 68.3471 18.771C68.3471 17.6685 67.9679 16.7341 67.2094 16.132C66.4509 15.5299 65.3914 15.225 64.0308 15.225H60.5239V22.3523Z&quot; fill=&quot;lightGreen&quot;&gt;&lt;/path&gt;\r\n                  &lt;path d=&quot;M78.1956 35.915V8.94604H85.5927V24.1273L96.0354 8.94604H103.01V35.915H95.6131V20.7337L85.1704 35.915H78.1956Z&quot; fill=&quot;lightGreen&quot;&gt;&lt;/path&gt;\r\n                  &lt;path d=&quot;M120.17 36.4547C116.264 36.4547 112.972 35.1254 110.286 32.4668C107.6 29.8083 106.259 26.4616 106.259 22.4307C106.259 18.3999 107.612 15.147 110.325 12.4532C113.035 9.75557 116.417 8.40674 120.479 8.40674C125.28 8.40674 129.057 10.3068 131.805 14.107L126.335 18.3451C124.666 16.2652 122.688 15.2252 120.401 15.2252C118.524 15.2252 116.984 15.9172 115.775 17.3051C114.567 18.6931 113.965 20.4016 113.965 22.4307C113.965 24.4598 114.567 26.1996 115.775 27.5759C116.984 28.9521 118.524 29.6362 120.401 29.6362C121.71 29.6362 122.828 29.3587 123.751 28.8074C124.678 28.2561 125.589 27.439 126.488 26.3599L132.114 30.3674C130.703 32.2948 129.057 33.7883 127.184 34.8557C125.307 35.923 122.969 36.4547 120.17 36.4547Z&quot; fill=&quot;#04A65B&quot;&gt;&lt;/path&gt;\r\n                  &lt;path d=&quot;M134.503 35.9149V8.94604H156.194V15.3032H141.9V19.3888H154.845V25.2846H141.9V29.5617H156.385V35.9189H134.503V35.9149Z&quot; fill=&quot;#04A65B&quot;&gt;&lt;/path&gt;\r\n                  &lt;path d=&quot;M160.185 35.9152V8.94629H167.582V24.1275L178.025 8.94629H185V35.9152H177.603V20.7339L167.16 35.9152H160.185ZM172.821 7.21039C170.972 7.21039 169.451 6.69822 168.255 5.66998C167.062 4.64174 166.323 3.19125 166.038 1.31461L170.124 0.583496C170.687 2.12391 171.59 2.89411 172.821 2.89411C174.053 2.89411 174.991 2.12391 175.558 0.583496L179.644 1.31461C179.362 3.19125 178.623 4.64174 177.427 5.66998C176.235 6.69822 174.698 7.21039 172.821 7.21039Z&quot; fill=&quot;#04A65B&quot;&gt;&lt;/path&gt;\r\n                &lt;/svg&gt;\r\n              &lt;/div&gt;', '', 'catalog/banners/banner-image-1.png', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_blog_category`
--

CREATE TABLE `oc_blog_category` (
  `blog_category_id` int NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `parent_id` int NOT NULL DEFAULT '0',
  `top` tinyint(1) NOT NULL,
  `column` int NOT NULL,
  `sort_order` int NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `noindex` tinyint(1) NOT NULL DEFAULT '1',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `oc_blog_category`
--

INSERT INTO `oc_blog_category` (`blog_category_id`, `image`, `parent_id`, `top`, `column`, `sort_order`, `status`, `noindex`, `date_added`, `date_modified`) VALUES
(69, 'catalog/demo/canon_eos_5d_2.jpg', 0, 1, 0, 0, 1, 1, '2014-04-08 03:56:26', '2015-06-18 09:15:42'),
(70, 'catalog/demo/iphone_2.jpg', 0, 1, 0, 0, 1, 1, '2014-04-08 03:58:55', '2015-06-18 09:16:41'),
(71, 'catalog/demo/canon_eos_5d_1.jpg', 69, 1, 1, 0, 1, 1, '2015-06-18 09:13:57', '2015-06-18 09:15:58');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_blog_category_description`
--

CREATE TABLE `oc_blog_category_description` (
  `blog_category_id` int NOT NULL,
  `language_id` int NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_h1` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `oc_blog_category_description`
--

INSERT INTO `oc_blog_category_description` (`blog_category_id`, `language_id`, `name`, `description`, `meta_description`, `meta_keyword`, `meta_title`, `meta_h1`) VALUES
(69, 2, 'News', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '', ''),
(70, 1, 'Обзоры', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '', ''),
(69, 1, 'Новости', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '', ''),
(71, 2, 'Анонсы', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '', ''),
(71, 1, 'Анонсы', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '', ''),
(70, 2, 'Reviews', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_blog_category_path`
--

CREATE TABLE `oc_blog_category_path` (
  `blog_category_id` int NOT NULL,
  `path_id` int NOT NULL,
  `level` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `oc_blog_category_path`
--

INSERT INTO `oc_blog_category_path` (`blog_category_id`, `path_id`, `level`) VALUES
(69, 69, 0),
(71, 71, 1),
(71, 69, 0),
(70, 70, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_blog_category_to_layout`
--

CREATE TABLE `oc_blog_category_to_layout` (
  `blog_category_id` int NOT NULL,
  `store_id` int NOT NULL,
  `layout_id` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `oc_blog_category_to_layout`
--

INSERT INTO `oc_blog_category_to_layout` (`blog_category_id`, `store_id`, `layout_id`) VALUES
(69, 0, 0),
(71, 0, 0),
(70, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_blog_category_to_store`
--

CREATE TABLE `oc_blog_category_to_store` (
  `blog_category_id` int NOT NULL,
  `store_id` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `oc_blog_category_to_store`
--

INSERT INTO `oc_blog_category_to_store` (`blog_category_id`, `store_id`) VALUES
(69, 0),
(70, 0),
(71, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_cart`
--

CREATE TABLE `oc_cart` (
  `cart_id` int UNSIGNED NOT NULL,
  `api_id` int NOT NULL,
  `customer_id` int NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `product_id` int NOT NULL,
  `recurring_id` int NOT NULL,
  `option` text NOT NULL,
  `quantity` int NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `oc_cart`
--

INSERT INTO `oc_cart` (`cart_id`, `api_id`, `customer_id`, `session_id`, `product_id`, `recurring_id`, `option`, `quantity`, `date_added`) VALUES
(4, 0, 0, '1aa3bff92d1de7fa6e6c51f422', 50, 0, '[]', 1, '2025-03-09 19:08:25');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_category`
--

CREATE TABLE `oc_category` (
  `category_id` int NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `parent_id` int NOT NULL DEFAULT '0',
  `top` tinyint(1) NOT NULL,
  `column` int NOT NULL,
  `sort_order` int NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `noindex` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `oc_category`
--

INSERT INTO `oc_category` (`category_id`, `image`, `parent_id`, `top`, `column`, `sort_order`, `status`, `date_added`, `date_modified`, `noindex`) VALUES
(59, '', 0, 1, 1, 0, 1, '2025-03-08 20:26:42', '2025-03-08 20:26:42', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_category_description`
--

CREATE TABLE `oc_category_description` (
  `category_id` int NOT NULL,
  `language_id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  `meta_h1` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `oc_category_description`
--

INSERT INTO `oc_category_description` (`category_id`, `language_id`, `name`, `description`, `meta_title`, `meta_description`, `meta_keyword`, `meta_h1`) VALUES
(59, 2, 'Всё для рассады', '', '', '', '', ''),
(59, 1, 'Всё для рассады', '&lt;p&gt;Всё для рассады&lt;/p&gt;', 'Всё для рассады', 'Всё для рассады', 'Всё для рассады', 'Всё для рассады');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_category_filter`
--

CREATE TABLE `oc_category_filter` (
  `category_id` int NOT NULL,
  `filter_id` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_category_path`
--

CREATE TABLE `oc_category_path` (
  `category_id` int NOT NULL,
  `path_id` int NOT NULL,
  `level` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `oc_category_path`
--

INSERT INTO `oc_category_path` (`category_id`, `path_id`, `level`) VALUES
(59, 59, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_category_to_layout`
--

CREATE TABLE `oc_category_to_layout` (
  `category_id` int NOT NULL,
  `store_id` int NOT NULL,
  `layout_id` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `oc_category_to_layout`
--

INSERT INTO `oc_category_to_layout` (`category_id`, `store_id`, `layout_id`) VALUES
(59, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_category_to_store`
--

CREATE TABLE `oc_category_to_store` (
  `category_id` int NOT NULL,
  `store_id` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `oc_category_to_store`
--

INSERT INTO `oc_category_to_store` (`category_id`, `store_id`) VALUES
(59, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_country`
--

CREATE TABLE `oc_country` (
  `country_id` int NOT NULL,
  `name` varchar(128) NOT NULL,
  `iso_code_2` varchar(2) NOT NULL,
  `iso_code_3` varchar(3) NOT NULL,
  `address_format` text NOT NULL,
  `postcode_required` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `oc_country`
--

INSERT INTO `oc_country` (`country_id`, `name`, `iso_code_2`, `iso_code_3`, `address_format`, `postcode_required`, `status`) VALUES
(11, 'Армения', 'AM', 'ARM', '', 0, 1),
(15, 'Азербайджан', 'AZ', 'AZE', '', 0, 1),
(20, 'Белоруссия (Беларусь)', 'BY', 'BLR', '', 0, 1),
(44, 'China', 'CN', 'CHN', '', 0, 1),
(53, 'Croatia', 'HR', 'HRV', '', 0, 1),
(56, 'Czech Republic', 'CZ', 'CZE', '', 0, 1),
(67, 'Estonia', 'EE', 'EST', '', 0, 1),
(72, 'Finland', 'FI', 'FIN', '', 0, 1),
(80, 'Грузия', 'GE', 'GEO', '', 0, 1),
(109, 'Казахстан', 'KZ', 'KAZ', '', 0, 1),
(115, 'Киргизия (Кыргызстан)', 'KG', 'KGZ', '', 0, 1),
(117, 'Latvia', 'LV', 'LVA', '', 0, 1),
(123, 'Lithuania', 'LT', 'LTU', '', 0, 1),
(140, 'Молдова', 'MD', 'MDA', '', 0, 1),
(176, 'Российская Федерация', 'RU', 'RUS', '', 0, 1),
(189, 'Slovak Republic', 'SK', 'SVK', '', 0, 1),
(190, 'Slovenia', 'SI', 'SVN', '', 0, 1),
(207, 'Таджикистан', 'TJ', 'TJK', '', 0, 1),
(215, 'Turkey', 'TR', 'TUR', '', 0, 1),
(216, 'Туркменистан', 'TM', 'TKM', '', 0, 1),
(220, 'Украина', 'UA', 'UKR', '', 0, 1),
(226, 'Узбекистан', 'UZ', 'UZB', '', 0, 1),
(243, 'Serbia', 'RS', 'SRB', '', 0, 1),
(253, 'Kosovo, Republic of', 'XK', 'UNK', '', 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_coupon`
--

CREATE TABLE `oc_coupon` (
  `coupon_id` int NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(20) NOT NULL,
  `type` char(1) NOT NULL,
  `discount` decimal(15,4) NOT NULL,
  `logged` tinyint(1) NOT NULL,
  `shipping` tinyint(1) NOT NULL,
  `total` decimal(15,4) NOT NULL,
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  `uses_total` int NOT NULL,
  `uses_customer` varchar(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `oc_coupon`
--

INSERT INTO `oc_coupon` (`coupon_id`, `name`, `code`, `type`, `discount`, `logged`, `shipping`, `total`, `date_start`, `date_end`, `uses_total`, `uses_customer`, `status`, `date_added`) VALUES
(4, '-10% Discount', '2222', 'P', 10.0000, 0, 0, 0.0000, '2014-01-01', '2020-01-01', 10, '10', 0, '2009-01-27 13:55:03'),
(5, 'Free Shipping', '3333', 'P', 0.0000, 0, 1, 100.0000, '2014-01-01', '2014-02-01', 10, '10', 0, '2009-03-14 21:13:53'),
(6, '-10.00 Discount', '1111', 'F', 10.0000, 0, 0, 10.0000, '2014-01-01', '2020-01-01', 100000, '10000', 0, '2009-03-14 21:15:18');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_coupon_category`
--

CREATE TABLE `oc_coupon_category` (
  `coupon_id` int NOT NULL,
  `category_id` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_coupon_history`
--

CREATE TABLE `oc_coupon_history` (
  `coupon_history_id` int NOT NULL,
  `coupon_id` int NOT NULL,
  `order_id` int NOT NULL,
  `customer_id` int NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_coupon_product`
--

CREATE TABLE `oc_coupon_product` (
  `coupon_product_id` int NOT NULL,
  `coupon_id` int NOT NULL,
  `product_id` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_currency`
--

CREATE TABLE `oc_currency` (
  `currency_id` int NOT NULL,
  `title` varchar(32) NOT NULL,
  `code` varchar(3) NOT NULL,
  `symbol_left` varchar(12) NOT NULL,
  `symbol_right` varchar(12) NOT NULL,
  `decimal_place` char(1) NOT NULL,
  `value` double(15,8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `oc_currency`
--

INSERT INTO `oc_currency` (`currency_id`, `title`, `code`, `symbol_left`, `symbol_right`, `decimal_place`, `value`, `status`, `date_modified`) VALUES
(1, 'Рубль', 'RUB', '', '₽', '2', 1.00000000, 1, '2025-03-09 17:34:04'),
(2, 'US Dollar', 'USD', '$', '', '2', 0.01697793, 1, '2017-07-19 21:28:21'),
(3, 'Euro', 'EUR', '', '€', '2', 0.01476363, 1, '2017-07-19 21:28:21'),
(4, 'Гривна', 'UAH', '', 'грн.', '2', 0.44016022, 1, '2017-07-19 21:28:21');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer`
--

CREATE TABLE `oc_customer` (
  `customer_id` int NOT NULL,
  `customer_group_id` int NOT NULL,
  `store_id` int NOT NULL DEFAULT '0',
  `language_id` int NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `cart` text,
  `wishlist` text,
  `newsletter` tinyint(1) NOT NULL DEFAULT '0',
  `address_id` int NOT NULL DEFAULT '0',
  `custom_field` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `safe` tinyint(1) NOT NULL,
  `token` text NOT NULL,
  `code` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_activity`
--

CREATE TABLE `oc_customer_activity` (
  `customer_activity_id` int NOT NULL,
  `customer_id` int NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_affiliate`
--

CREATE TABLE `oc_customer_affiliate` (
  `customer_id` int NOT NULL,
  `company` varchar(40) NOT NULL,
  `website` varchar(255) NOT NULL,
  `tracking` varchar(64) NOT NULL,
  `commission` decimal(4,2) NOT NULL DEFAULT '0.00',
  `tax` varchar(64) NOT NULL,
  `payment` varchar(6) NOT NULL,
  `cheque` varchar(100) NOT NULL,
  `paypal` varchar(64) NOT NULL,
  `bank_name` varchar(64) NOT NULL,
  `bank_branch_number` varchar(64) NOT NULL,
  `bank_swift_code` varchar(64) NOT NULL,
  `bank_account_name` varchar(64) NOT NULL,
  `bank_account_number` varchar(64) NOT NULL,
  `custom_field` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_approval`
--

CREATE TABLE `oc_customer_approval` (
  `customer_approval_id` int NOT NULL,
  `customer_id` int NOT NULL,
  `type` varchar(9) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_group`
--

CREATE TABLE `oc_customer_group` (
  `customer_group_id` int NOT NULL,
  `approval` int NOT NULL,
  `sort_order` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `oc_customer_group`
--

INSERT INTO `oc_customer_group` (`customer_group_id`, `approval`, `sort_order`) VALUES
(1, 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_group_description`
--

CREATE TABLE `oc_customer_group_description` (
  `customer_group_id` int NOT NULL,
  `language_id` int NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `oc_customer_group_description`
--

INSERT INTO `oc_customer_group_description` (`customer_group_id`, `language_id`, `name`, `description`) VALUES
(1, 1, 'Default', 'test');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_history`
--

CREATE TABLE `oc_customer_history` (
  `customer_history_id` int NOT NULL,
  `customer_id` int NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_ip`
--

CREATE TABLE `oc_customer_ip` (
  `customer_ip_id` int NOT NULL,
  `customer_id` int NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_login`
--

CREATE TABLE `oc_customer_login` (
  `customer_login_id` int NOT NULL,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_online`
--

CREATE TABLE `oc_customer_online` (
  `ip` varchar(40) NOT NULL,
  `customer_id` int NOT NULL,
  `url` text NOT NULL,
  `referer` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_reward`
--

CREATE TABLE `oc_customer_reward` (
  `customer_reward_id` int NOT NULL,
  `customer_id` int NOT NULL DEFAULT '0',
  `order_id` int NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `points` int NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_search`
--

CREATE TABLE `oc_customer_search` (
  `customer_search_id` int NOT NULL,
  `store_id` int NOT NULL,
  `language_id` int NOT NULL,
  `customer_id` int NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `category_id` int DEFAULT NULL,
  `sub_category` tinyint(1) NOT NULL,
  `description` tinyint(1) NOT NULL,
  `products` int NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_transaction`
--

CREATE TABLE `oc_customer_transaction` (
  `customer_transaction_id` int NOT NULL,
  `customer_id` int NOT NULL,
  `order_id` int NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_wishlist`
--

CREATE TABLE `oc_customer_wishlist` (
  `customer_id` int NOT NULL,
  `product_id` int NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_custom_field`
--

CREATE TABLE `oc_custom_field` (
  `custom_field_id` int NOT NULL,
  `type` varchar(32) NOT NULL,
  `value` text NOT NULL,
  `validation` varchar(255) NOT NULL,
  `location` varchar(10) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_custom_field_customer_group`
--

CREATE TABLE `oc_custom_field_customer_group` (
  `custom_field_id` int NOT NULL,
  `customer_group_id` int NOT NULL,
  `required` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_custom_field_description`
--

CREATE TABLE `oc_custom_field_description` (
  `custom_field_id` int NOT NULL,
  `language_id` int NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_custom_field_value`
--

CREATE TABLE `oc_custom_field_value` (
  `custom_field_value_id` int NOT NULL,
  `custom_field_id` int NOT NULL,
  `sort_order` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_custom_field_value_description`
--

CREATE TABLE `oc_custom_field_value_description` (
  `custom_field_value_id` int NOT NULL,
  `language_id` int NOT NULL,
  `custom_field_id` int NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_download`
--

CREATE TABLE `oc_download` (
  `download_id` int NOT NULL,
  `filename` varchar(160) NOT NULL,
  `mask` varchar(128) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_download_description`
--

CREATE TABLE `oc_download_description` (
  `download_id` int NOT NULL,
  `language_id` int NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_event`
--

CREATE TABLE `oc_event` (
  `event_id` int NOT NULL,
  `code` varchar(64) NOT NULL,
  `trigger` text NOT NULL,
  `action` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `oc_event`
--

INSERT INTO `oc_event` (`event_id`, `code`, `trigger`, `action`, `status`, `sort_order`) VALUES
(1, 'activity_customer_add', 'catalog/model/account/customer/addCustomer/after', 'event/activity/addCustomer', 1, 0),
(2, 'activity_customer_edit', 'catalog/model/account/customer/editCustomer/after', 'event/activity/editCustomer', 1, 0),
(3, 'activity_customer_password', 'catalog/model/account/customer/editPassword/after', 'event/activity/editPassword', 1, 0),
(4, 'activity_customer_forgotten', 'catalog/model/account/customer/editCode/after', 'event/activity/forgotten', 1, 0),
(5, 'activity_transaction', 'catalog/model/account/customer/addTransaction/after', 'event/activity/addTransaction', 1, 0),
(6, 'activity_customer_login', 'catalog/model/account/customer/deleteLoginAttempts/after', 'event/activity/login', 1, 0),
(7, 'activity_address_add', 'catalog/model/account/address/addAddress/after', 'event/activity/addAddress', 1, 0),
(8, 'activity_address_edit', 'catalog/model/account/address/editAddress/after', 'event/activity/editAddress', 1, 0),
(9, 'activity_address_delete', 'catalog/model/account/address/deleteAddress/after', 'event/activity/deleteAddress', 1, 0),
(10, 'activity_affiliate_add', 'catalog/model/account/customer/addAffiliate/after', 'event/activity/addAffiliate', 1, 0),
(11, 'activity_affiliate_edit', 'catalog/model/account/customer/editAffiliate/after', 'event/activity/editAffiliate', 1, 0),
(12, 'activity_order_add', 'catalog/model/checkout/order/addOrderHistory/before', 'event/activity/addOrderHistory', 1, 0),
(13, 'activity_return_add', 'catalog/model/account/return/addReturn/after', 'event/activity/addReturn', 1, 0),
(14, 'mail_transaction', 'catalog/model/account/customer/addTransaction/after', 'mail/transaction', 1, 0),
(15, 'mail_forgotten', 'catalog/model/account/customer/editCode/after', 'mail/forgotten', 1, 0),
(16, 'mail_customer_add', 'catalog/model/account/customer/addCustomer/after', 'mail/register', 1, 0),
(17, 'mail_customer_alert', 'catalog/model/account/customer/addCustomer/after', 'mail/register/alert', 1, 0),
(18, 'mail_affiliate_add', 'catalog/model/account/customer/addAffiliate/after', 'mail/affiliate', 1, 0),
(19, 'mail_affiliate_alert', 'catalog/model/account/customer/addAffiliate/after', 'mail/affiliate/alert', 1, 0),
(20, 'mail_voucher', 'catalog/model/checkout/order/addOrderHistory/after', 'extension/total/voucher/send', 1, 0),
(21, 'mail_order_add', 'catalog/model/checkout/order/addOrderHistory/before', 'mail/order', 1, 0),
(22, 'mail_order_alert', 'catalog/model/checkout/order/addOrderHistory/before', 'mail/order/alert', 1, 0),
(23, 'statistics_review_add', 'catalog/model/catalog/review/addReview/after', 'event/statistics/addReview', 1, 0),
(24, 'statistics_return_add', 'catalog/model/account/return/addReturn/after', 'event/statistics/addReturn', 1, 0),
(25, 'statistics_order_history', 'catalog/model/checkout/order/addOrderHistory/after', 'event/statistics/addOrderHistory', 1, 0),
(26, 'admin_mail_affiliate_approve', 'admin/model/customer/customer_approval/approveAffiliate/after', 'mail/affiliate/approve', 1, 0),
(27, 'admin_mail_affiliate_deny', 'admin/model/customer/customer_approval/denyAffiliate/after', 'mail/affiliate/deny', 1, 0),
(28, 'admin_mail_customer_approve', 'admin/model/customer/customer_approval/approveCustomer/after', 'mail/customer/approve', 1, 0),
(29, 'admin_mail_customer_deny', 'admin/model/customer/customer_approval/denyCustomer/after', 'mail/customer/deny', 1, 0),
(30, 'admin_mail_reward', 'admin/model/customer/customer/addReward/after', 'mail/reward', 1, 0),
(31, 'admin_mail_transaction', 'admin/model/customer/customer/addTransaction/after', 'mail/transaction', 1, 0),
(32, 'admin_mail_return', 'admin/model/sale/return/addReturnHistory/after', 'mail/return', 1, 0),
(33, 'admin_mail_forgotten', 'admin/model/user/user/editCode/after', 'mail/forgotten', 1, 0),
(34, 'advertise_google', 'admin/model/catalog/product/deleteProduct/after', 'extension/advertise/google/deleteProduct', 1, 0),
(35, 'advertise_google', 'admin/model/catalog/product/copyProduct/after', 'extension/advertise/google/copyProduct', 1, 0),
(36, 'advertise_google', 'admin/view/common/column_left/before', 'extension/advertise/google/admin_link', 1, 0),
(37, 'advertise_google', 'admin/model/catalog/product/addProduct/after', 'extension/advertise/google/addProduct', 1, 0),
(38, 'advertise_google', 'catalog/controller/checkout/success/before', 'extension/advertise/google/before_checkout_success', 1, 0),
(39, 'advertise_google', 'catalog/view/common/header/after', 'extension/advertise/google/google_global_site_tag', 1, 0),
(40, 'advertise_google', 'catalog/view/common/success/after', 'extension/advertise/google/google_dynamic_remarketing_purchase', 1, 0),
(41, 'advertise_google', 'catalog/view/product/product/after', 'extension/advertise/google/google_dynamic_remarketing_product', 1, 0),
(42, 'advertise_google', 'catalog/view/product/search/after', 'extension/advertise/google/google_dynamic_remarketing_searchresults', 1, 0),
(43, 'advertise_google', 'catalog/view/product/category/after', 'extension/advertise/google/google_dynamic_remarketing_category', 1, 0),
(44, 'advertise_google', 'catalog/view/common/home/after', 'extension/advertise/google/google_dynamic_remarketing_home', 1, 0),
(45, 'advertise_google', 'catalog/view/checkout/cart/after', 'extension/advertise/google/google_dynamic_remarketing_cart', 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_extension`
--

CREATE TABLE `oc_extension` (
  `extension_id` int NOT NULL,
  `type` varchar(32) NOT NULL,
  `code` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `oc_extension`
--

INSERT INTO `oc_extension` (`extension_id`, `type`, `code`) VALUES
(1, 'payment', 'cod'),
(2, 'total', 'shipping'),
(3, 'total', 'sub_total'),
(4, 'total', 'tax'),
(5, 'total', 'total'),
(6, 'module', 'banner'),
(7, 'module', 'carousel'),
(8, 'total', 'credit'),
(9, 'shipping', 'flat'),
(10, 'total', 'handling'),
(11, 'total', 'low_order_fee'),
(12, 'total', 'coupon'),
(13, 'module', 'category'),
(14, 'module', 'account'),
(15, 'total', 'reward'),
(16, 'total', 'voucher'),
(17, 'payment', 'free_checkout'),
(18, 'module', 'featured'),
(19, 'module', 'slideshow'),
(20, 'theme', 'default'),
(21, 'dashboard', 'activity'),
(22, 'dashboard', 'sale'),
(23, 'dashboard', 'recent'),
(24, 'dashboard', 'order'),
(25, 'dashboard', 'online'),
(26, 'dashboard', 'map'),
(27, 'dashboard', 'customer'),
(28, 'dashboard', 'chart'),
(29, 'report', 'sale_coupon'),
(31, 'report', 'customer_search'),
(32, 'report', 'customer_transaction'),
(33, 'report', 'product_purchased'),
(34, 'report', 'product_viewed'),
(35, 'report', 'sale_return'),
(36, 'report', 'sale_order'),
(37, 'report', 'sale_shipping'),
(38, 'report', 'sale_tax'),
(39, 'report', 'customer_activity'),
(40, 'report', 'customer_order'),
(41, 'report', 'customer_reward'),
(42, 'advertise', 'google'),
(43, 'module', 'blog_latest'),
(44, 'module', 'blog_featured'),
(45, 'module', 'blog_category'),
(46, 'module', 'featured_article'),
(47, 'module', 'featured_product'),
(48, 'currency', 'cbr'),
(49, 'currency', 'ecb'),
(50, 'currency', 'nbu'),
(51, 'theme', 'berisey'),
(52, 'module', 'information');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_extension_install`
--

CREATE TABLE `oc_extension_install` (
  `extension_install_id` int NOT NULL,
  `extension_download_id` int NOT NULL,
  `filename` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_extension_path`
--

CREATE TABLE `oc_extension_path` (
  `extension_path_id` int NOT NULL,
  `extension_install_id` int NOT NULL,
  `path` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_filter`
--

CREATE TABLE `oc_filter` (
  `filter_id` int NOT NULL,
  `filter_group_id` int NOT NULL,
  `sort_order` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_filter_description`
--

CREATE TABLE `oc_filter_description` (
  `filter_id` int NOT NULL,
  `language_id` int NOT NULL,
  `filter_group_id` int NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_filter_group`
--

CREATE TABLE `oc_filter_group` (
  `filter_group_id` int NOT NULL,
  `sort_order` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_filter_group_description`
--

CREATE TABLE `oc_filter_group_description` (
  `filter_group_id` int NOT NULL,
  `language_id` int NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_geo_zone`
--

CREATE TABLE `oc_geo_zone` (
  `geo_zone_id` int NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `oc_geo_zone`
--

INSERT INTO `oc_geo_zone` (`geo_zone_id`, `name`, `description`, `date_added`, `date_modified`) VALUES
(3, 'UK VAT Zone', 'UK VAT', '2009-01-06 23:26:25', '2010-02-26 22:33:24'),
(4, 'UK Shipping', 'UK Shipping Zones', '2009-06-23 01:14:53', '2010-12-15 15:18:13');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_googleshopping_category`
--

CREATE TABLE `oc_googleshopping_category` (
  `google_product_category` varchar(10) NOT NULL,
  `store_id` int NOT NULL DEFAULT '0',
  `category_id` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_googleshopping_product`
--

CREATE TABLE `oc_googleshopping_product` (
  `product_advertise_google_id` int UNSIGNED NOT NULL,
  `product_id` int DEFAULT NULL,
  `store_id` int NOT NULL DEFAULT '0',
  `has_issues` tinyint(1) DEFAULT NULL,
  `destination_status` enum('pending','approved','disapproved') NOT NULL DEFAULT 'pending',
  `impressions` int NOT NULL DEFAULT '0',
  `clicks` int NOT NULL DEFAULT '0',
  `conversions` int NOT NULL DEFAULT '0',
  `cost` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `conversion_value` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `google_product_category` varchar(10) DEFAULT NULL,
  `condition` enum('new','refurbished','used') DEFAULT NULL,
  `adult` tinyint(1) DEFAULT NULL,
  `multipack` int DEFAULT NULL,
  `is_bundle` tinyint(1) DEFAULT NULL,
  `age_group` enum('newborn','infant','toddler','kids','adult') DEFAULT NULL,
  `color` int DEFAULT NULL,
  `gender` enum('male','female','unisex') DEFAULT NULL,
  `size_type` enum('regular','petite','plus','big and tall','maternity') DEFAULT NULL,
  `size_system` enum('AU','BR','CN','DE','EU','FR','IT','JP','MEX','UK','US') DEFAULT NULL,
  `size` int DEFAULT NULL,
  `is_modified` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `oc_googleshopping_product`
--

INSERT INTO `oc_googleshopping_product` (`product_advertise_google_id`, `product_id`, `store_id`, `has_issues`, `destination_status`, `impressions`, `clicks`, `conversions`, `cost`, `conversion_value`, `google_product_category`, `condition`, `adult`, `multipack`, `is_bundle`, `age_group`, `color`, `gender`, `size_type`, `size_system`, `size`, `is_modified`) VALUES
(1, 50, 0, NULL, 'pending', 0, 0, 0, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(2, 51, 0, NULL, 'pending', 0, 0, 0, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_googleshopping_product_status`
--

CREATE TABLE `oc_googleshopping_product_status` (
  `product_id` int NOT NULL DEFAULT '0',
  `store_id` int NOT NULL DEFAULT '0',
  `product_variation_id` varchar(64) NOT NULL DEFAULT '',
  `destination_statuses` text NOT NULL,
  `data_quality_issues` text NOT NULL,
  `item_level_issues` text NOT NULL,
  `google_expiration_date` int NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_googleshopping_product_target`
--

CREATE TABLE `oc_googleshopping_product_target` (
  `product_id` int NOT NULL,
  `store_id` int NOT NULL DEFAULT '0',
  `advertise_google_target_id` int UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_googleshopping_target`
--

CREATE TABLE `oc_googleshopping_target` (
  `advertise_google_target_id` int UNSIGNED NOT NULL,
  `store_id` int NOT NULL DEFAULT '0',
  `campaign_name` varchar(255) NOT NULL DEFAULT '',
  `country` varchar(2) NOT NULL DEFAULT '',
  `budget` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `feeds` text NOT NULL,
  `status` enum('paused','active') NOT NULL DEFAULT 'paused',
  `date_added` date DEFAULT NULL,
  `roas` int NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_information`
--

CREATE TABLE `oc_information` (
  `information_id` int NOT NULL,
  `bottom` int NOT NULL DEFAULT '0',
  `sort_order` int NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `noindex` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `oc_information`
--

INSERT INTO `oc_information` (`information_id`, `bottom`, `sort_order`, `status`, `noindex`) VALUES
(3, 1, 3, 1, 1),
(4, 1, 1, 1, 0),
(5, 1, 4, 1, 1),
(6, 1, 2, 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_information_description`
--

CREATE TABLE `oc_information_description` (
  `information_id` int NOT NULL,
  `language_id` int NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` mediumtext NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  `meta_h1` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `oc_information_description`
--

INSERT INTO `oc_information_description` (`information_id`, `language_id`, `title`, `description`, `meta_title`, `meta_description`, `meta_keyword`, `meta_h1`) VALUES
(4, 1, 'О нас', '&lt;p&gt;О нас&lt;br&gt;&lt;/p&gt;\r\n', '', '', '', ''),
(5, 1, 'Условия соглашения', '&lt;p&gt;\r\n Условия соглашения&lt;/p&gt;\r\n', '', '', '', ''),
(3, 1, 'Политика безопасности', '&lt;p&gt;\r\n Политика безопасности&lt;/p&gt;\r\n', '', '', '', ''),
(4, 2, 'About Us', '&lt;p&gt;About Us&lt;br&gt;&lt;/p&gt;', '', '', '', ''),
(6, 1, 'Доставка/Оплата', '&lt;p&gt;\r\n Информация о доставке и оплате&lt;/p&gt;\r\n', 'Доставка/Оплата', 'Доставка/Оплата', 'Доставка/Оплата', 'Доставка/Оплата'),
(5, 2, 'Terms &amp; Conditions', '&lt;p&gt;Terms &amp;amp; Conditions&lt;br&gt;&lt;/p&gt;', '', '', '', ''),
(3, 2, 'Privacy Policy', '&lt;p&gt;Privacy Policy&lt;br&gt;&lt;/p&gt;', '', '', '', ''),
(6, 2, 'Delivery Information', '&lt;p&gt;Delivery Information&lt;br&gt;&lt;/p&gt;', '', '', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_information_to_layout`
--

CREATE TABLE `oc_information_to_layout` (
  `information_id` int NOT NULL,
  `store_id` int NOT NULL,
  `layout_id` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `oc_information_to_layout`
--

INSERT INTO `oc_information_to_layout` (`information_id`, `store_id`, `layout_id`) VALUES
(6, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_information_to_store`
--

CREATE TABLE `oc_information_to_store` (
  `information_id` int NOT NULL,
  `store_id` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `oc_information_to_store`
--

INSERT INTO `oc_information_to_store` (`information_id`, `store_id`) VALUES
(3, 0),
(4, 0),
(5, 0),
(6, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_language`
--

CREATE TABLE `oc_language` (
  `language_id` int NOT NULL,
  `name` varchar(32) NOT NULL,
  `code` varchar(5) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `image` varchar(64) NOT NULL,
  `directory` varchar(32) NOT NULL,
  `sort_order` int NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `oc_language`
--

INSERT INTO `oc_language` (`language_id`, `name`, `code`, `locale`, `image`, `directory`, `sort_order`, `status`) VALUES
(1, 'Russian', 'ru-ru', 'ru_RU.UTF-8,ru_RU,russian', 'gb.png', 'english', 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_layout`
--

CREATE TABLE `oc_layout` (
  `layout_id` int NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `oc_layout`
--

INSERT INTO `oc_layout` (`layout_id`, `name`) VALUES
(1, 'Главная'),
(2, 'Товар'),
(3, 'Категория'),
(4, 'По-умолчанию'),
(5, 'Список Производителей'),
(6, 'Аккаунт'),
(7, 'Оформление заказа'),
(8, 'Контакты'),
(9, 'Карта сайта'),
(10, 'Партнерская программа'),
(11, 'Информация'),
(12, 'Сравнение'),
(13, 'Поиск'),
(14, 'Блог'),
(15, 'Категории Блога'),
(16, 'Статьи Блога'),
(17, 'Страница Производителя');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_layout_module`
--

CREATE TABLE `oc_layout_module` (
  `layout_module_id` int NOT NULL,
  `layout_id` int NOT NULL,
  `code` varchar(64) NOT NULL,
  `position` varchar(14) NOT NULL,
  `sort_order` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `oc_layout_module`
--

INSERT INTO `oc_layout_module` (`layout_module_id`, `layout_id`, `code`, `position`, `sort_order`) VALUES
(2, 4, '0', 'content_top', 0),
(3, 4, '0', 'content_top', 1),
(20, 5, '0', 'column_left', 2),
(69, 10, 'account', 'column_right', 1),
(68, 6, 'account', 'column_right', 1),
(92, 1, 'banner.36', 'content_top', 0),
(82, 3, 'category', 'column_left', 0),
(74, 14, 'blog_category', 'column_left', 0),
(75, 14, 'blog_featured.33', 'column_left', 1),
(76, 14, 'blog_latest.32', 'content_bottom', 0),
(77, 15, 'blog_category', 'column_left', 0),
(78, 15, 'blog_latest.32', 'column_left', 1),
(79, 15, 'blog_featured.33', 'content_bottom', 0),
(80, 16, 'blog_category', 'column_left', 0),
(81, 16, 'blog_featured.33', 'column_left', 1),
(84, 3, 'featured_article.34', 'column_left', 2),
(85, 3, 'featured_product.35', 'column_left', 3),
(86, 17, 'featured_article.34', 'column_left', 0),
(87, 17, 'featured_product.35', 'column_left', 1),
(88, 2, 'featured_article.34', 'content_bottom', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_layout_route`
--

CREATE TABLE `oc_layout_route` (
  `layout_route_id` int NOT NULL,
  `layout_id` int NOT NULL,
  `store_id` int NOT NULL,
  `route` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `oc_layout_route`
--

INSERT INTO `oc_layout_route` (`layout_route_id`, `layout_id`, `store_id`, `route`) VALUES
(38, 6, 0, 'account/%'),
(17, 10, 0, 'affiliate/%'),
(44, 3, 0, 'product/category'),
(67, 1, 0, 'common/home'),
(20, 2, 0, 'product/product'),
(24, 11, 0, 'information/information'),
(23, 7, 0, 'checkout/%'),
(31, 8, 0, 'information/contact'),
(32, 9, 0, 'information/sitemap'),
(34, 4, 0, ''),
(45, 5, 0, 'product/manufacturer'),
(52, 12, 0, 'product/compare'),
(53, 13, 0, 'product/search'),
(57, 14, 0, 'blog/latest'),
(58, 15, 0, 'blog/category'),
(56, 16, 0, 'blog/article'),
(63, 17, 0, 'product/manufacturer/info');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_length_class`
--

CREATE TABLE `oc_length_class` (
  `length_class_id` int NOT NULL,
  `value` decimal(15,8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `oc_length_class`
--

INSERT INTO `oc_length_class` (`length_class_id`, `value`) VALUES
(1, 1.00000000),
(2, 10.00000000),
(3, 0.39370000);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_length_class_description`
--

CREATE TABLE `oc_length_class_description` (
  `length_class_id` int NOT NULL,
  `language_id` int NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `oc_length_class_description`
--

INSERT INTO `oc_length_class_description` (`length_class_id`, `language_id`, `title`, `unit`) VALUES
(1, 1, 'Сантиметр', 'см'),
(1, 2, 'Centimeter', 'cm'),
(2, 1, 'Миллиметр', 'мм'),
(2, 2, 'Millimeter', 'mm'),
(3, 1, 'Дюйм', 'in'),
(3, 2, 'Inch', 'in');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_location`
--

CREATE TABLE `oc_location` (
  `location_id` int NOT NULL,
  `name` varchar(32) NOT NULL,
  `address` text NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `geocode` varchar(32) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `open` text NOT NULL,
  `comment` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_manufacturer`
--

CREATE TABLE `oc_manufacturer` (
  `manufacturer_id` int NOT NULL,
  `name` varchar(64) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int NOT NULL,
  `noindex` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `oc_manufacturer`
--

INSERT INTO `oc_manufacturer` (`manufacturer_id`, `name`, `image`, `sort_order`, `noindex`) VALUES
(5, 'HTC', 'catalog/demo/htc_logo.jpg', 0, 1),
(6, 'Palm', 'catalog/demo/palm_logo.jpg', 0, 1),
(7, 'Hewlett-Packard', 'catalog/demo/hp_logo.jpg', 0, 1),
(8, 'Apple', 'catalog/demo/apple_logo.jpg', 1, 0),
(9, 'Canon', 'catalog/demo/canon_logo.jpg', 0, 1),
(10, 'Sony', 'catalog/demo/sony_logo.jpg', 0, 1),
(11, 'Буйские удобрения', 'catalog/manufactures/manufacture-1.png', 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_manufacturer_description`
--

CREATE TABLE `oc_manufacturer_description` (
  `manufacturer_id` int NOT NULL DEFAULT '0',
  `language_id` int NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_h1` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `oc_manufacturer_description`
--

INSERT INTO `oc_manufacturer_description` (`manufacturer_id`, `language_id`, `description`, `meta_description`, `meta_keyword`, `meta_title`, `meta_h1`) VALUES
(8, 1, '', '', '', '', ''),
(8, 2, '', '', '', '', ''),
(7, 1, '', '', '', '', ''),
(7, 2, '', '', '', '', ''),
(6, 2, '', '', '', '', ''),
(5, 1, '', '', '', '', ''),
(5, 2, '', '', '', '', ''),
(6, 1, '', '', '', '', ''),
(9, 2, '', '', '', '', ''),
(9, 1, '', '', '', '', ''),
(10, 1, '', '', '', '', ''),
(10, 2, '', '', '', '', ''),
(11, 1, '&lt;p&gt;Буйские удобрения&lt;/p&gt;', 'Буйские удобрения', 'Буйские удобрения', 'Буйские удобрения', 'Буйские удобрения'),
(11, 2, '&lt;p&gt;Буйские удобрения&lt;/p&gt;', 'Буйские удобрения', 'Буйские удобрения', 'Буйские удобрения', 'Буйские удобрения');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_manufacturer_to_layout`
--

CREATE TABLE `oc_manufacturer_to_layout` (
  `manufacturer_id` int NOT NULL,
  `store_id` int NOT NULL,
  `layout_id` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `oc_manufacturer_to_layout`
--

INSERT INTO `oc_manufacturer_to_layout` (`manufacturer_id`, `store_id`, `layout_id`) VALUES
(11, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_manufacturer_to_store`
--

CREATE TABLE `oc_manufacturer_to_store` (
  `manufacturer_id` int NOT NULL,
  `store_id` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `oc_manufacturer_to_store`
--

INSERT INTO `oc_manufacturer_to_store` (`manufacturer_id`, `store_id`) VALUES
(5, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(11, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_marketing`
--

CREATE TABLE `oc_marketing` (
  `marketing_id` int NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `code` varchar(64) NOT NULL,
  `clicks` int NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_modification`
--

CREATE TABLE `oc_modification` (
  `modification_id` int NOT NULL,
  `extension_install_id` int NOT NULL,
  `name` varchar(64) NOT NULL,
  `code` varchar(64) NOT NULL,
  `author` varchar(64) NOT NULL,
  `version` varchar(32) NOT NULL,
  `link` varchar(255) NOT NULL,
  `xml` mediumtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_modification_backup`
--

CREATE TABLE `oc_modification_backup` (
  `backup_id` int NOT NULL,
  `modification_id` int NOT NULL,
  `code` varchar(64) NOT NULL,
  `xml` mediumtext NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_module`
--

CREATE TABLE `oc_module` (
  `module_id` int NOT NULL,
  `name` varchar(64) NOT NULL,
  `code` varchar(32) NOT NULL,
  `setting` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `oc_module`
--

INSERT INTO `oc_module` (`module_id`, `name`, `code`, `setting`) VALUES
(36, 'Главный баннер', 'banner', '{\"name\":\"\\u0413\\u043b\\u0430\\u0432\\u043d\\u044b\\u0439 \\u0431\\u0430\\u043d\\u043d\\u0435\\u0440\",\"banner_id\":\"9\",\"width\":\"500\",\"height\":\"500\",\"status\":\"1\"}'),
(29, 'Home Page', 'carousel', '{\"name\":\"Home Page\",\"banner_id\":\"8\",\"width\":\"130\",\"height\":\"100\",\"status\":\"1\"}'),
(28, 'Home Page', 'featured', '{\"name\":\"Home Page\",\"product\":[\"43\",\"40\",\"42\",\"30\"],\"limit\":\"4\",\"width\":\"200\",\"height\":\"200\",\"status\":\"1\"}'),
(27, 'Home Page', 'slideshow', '{\"name\":\"Home Page\",\"banner_id\":\"7\",\"width\":\"1140\",\"height\":\"380\",\"status\":\"1\"}'),
(32, 'Последние статьи', 'blog_latest', '{\"name\":\"\\u041f\\u043e\\u0441\\u043b\\u0435\\u0434\\u043d\\u0438\\u0435 \\u0441\\u0442\\u0430\\u0442\\u044c\\u0438\",\"limit\":\"4\",\"width\":\"200\",\"height\":\"200\",\"status\":\"1\"}'),
(33, 'Рекомендуемые статьи', 'blog_featured', '{\"name\":\"\\u0420\\u0435\\u043a\\u043e\\u043c\\u0435\\u043d\\u0434\\u0443\\u0435\\u043c\\u044b\\u0435 \\u0441\\u0442\\u0430\\u0442\\u044c\\u0438\",\"article_name\":\"\",\"article\":[\"120\",\"123\",\"125\",\"124\"],\"limit\":\"4\",\"width\":\"200\",\"height\":\"200\",\"status\":\"1\"}'),
(34, 'Рекомендуемые статьи в товаре, категории и производителе', 'featured_article', '{\"name\":\"\\u0420\\u0435\\u043a\\u043e\\u043c\\u0435\\u043d\\u0434\\u0443\\u0435\\u043c\\u044b\\u0435 \\u0441\\u0442\\u0430\\u0442\\u044c\\u0438 \\u0432 \\u0442\\u043e\\u0432\\u0430\\u0440\\u0435, \\u043a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u0438 \\u0438 \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u0435\",\"limit\":\"4\",\"width\":\"200\",\"height\":\"200\",\"status\":\"1\"}'),
(35, 'Рекомендуемые товары в категории и производителе', 'featured_product', '{\"name\":\"\\u0420\\u0435\\u043a\\u043e\\u043c\\u0435\\u043d\\u0434\\u0443\\u0435\\u043c\\u044b\\u0435 \\u0442\\u043e\\u0432\\u0430\\u0440\\u044b \\u0432 \\u043a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u0438 \\u0438 \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u0435\",\"limit\":\"4\",\"width\":\"200\",\"height\":\"200\",\"status\":\"1\"}');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_option`
--

CREATE TABLE `oc_option` (
  `option_id` int NOT NULL,
  `type` varchar(32) NOT NULL,
  `sort_order` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `oc_option`
--

INSERT INTO `oc_option` (`option_id`, `type`, `sort_order`) VALUES
(1, 'radio', 1),
(2, 'checkbox', 2),
(4, 'text', 3),
(5, 'select', 4),
(6, 'textarea', 5),
(7, 'file', 6),
(8, 'date', 7),
(9, 'time', 8),
(10, 'datetime', 9),
(11, 'select', 10),
(12, 'date', 11);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_option_description`
--

CREATE TABLE `oc_option_description` (
  `option_id` int NOT NULL,
  `language_id` int NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `oc_option_description`
--

INSERT INTO `oc_option_description` (`option_id`, `language_id`, `name`) VALUES
(1, 1, 'Radio'),
(2, 1, 'Checkbox'),
(4, 1, 'Text'),
(6, 1, 'Textarea'),
(8, 1, 'Date'),
(7, 1, 'File'),
(5, 1, 'Select'),
(9, 1, 'Time'),
(10, 1, 'Date &amp; Time'),
(12, 1, 'Delivery Date'),
(11, 1, 'Size'),
(2, 2, 'Checkbox'),
(8, 2, 'Date'),
(10, 2, 'Date &amp; Time'),
(12, 2, 'Delivery Date'),
(7, 2, 'File'),
(1, 2, 'Radio'),
(5, 2, 'Select'),
(11, 2, 'Size'),
(4, 2, 'Text'),
(6, 2, 'Textarea'),
(9, 2, 'Time');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_option_value`
--

CREATE TABLE `oc_option_value` (
  `option_value_id` int NOT NULL,
  `option_id` int NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `oc_option_value`
--

INSERT INTO `oc_option_value` (`option_value_id`, `option_id`, `image`, `sort_order`) VALUES
(43, 1, '', 3),
(32, 1, '', 1),
(45, 2, '', 4),
(44, 2, '', 3),
(42, 5, '', 4),
(41, 5, '', 3),
(39, 5, '', 1),
(40, 5, '', 2),
(31, 1, '', 2),
(23, 2, '', 1),
(24, 2, '', 2),
(46, 11, '', 1),
(47, 11, '', 2),
(48, 11, '', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_option_value_description`
--

CREATE TABLE `oc_option_value_description` (
  `option_value_id` int NOT NULL,
  `language_id` int NOT NULL,
  `option_id` int NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `oc_option_value_description`
--

INSERT INTO `oc_option_value_description` (`option_value_id`, `language_id`, `option_id`, `name`) VALUES
(43, 1, 1, 'Large'),
(32, 1, 1, 'Small'),
(45, 1, 2, 'Checkbox 4'),
(44, 1, 2, 'Checkbox 3'),
(31, 1, 1, 'Medium'),
(42, 1, 5, 'Yellow'),
(41, 1, 5, 'Green'),
(39, 1, 5, 'Red'),
(40, 1, 5, 'Blue'),
(23, 1, 2, 'Checkbox 1'),
(24, 1, 2, 'Checkbox 2'),
(48, 1, 11, 'Large'),
(47, 1, 11, 'Medium'),
(46, 1, 11, 'Small');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order`
--

CREATE TABLE `oc_order` (
  `order_id` int NOT NULL,
  `invoice_no` int NOT NULL DEFAULT '0',
  `invoice_prefix` varchar(26) NOT NULL,
  `store_id` int NOT NULL DEFAULT '0',
  `store_name` varchar(64) NOT NULL,
  `store_url` varchar(255) NOT NULL,
  `customer_id` int NOT NULL DEFAULT '0',
  `customer_group_id` int NOT NULL DEFAULT '0',
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `custom_field` text NOT NULL,
  `payment_firstname` varchar(32) NOT NULL,
  `payment_lastname` varchar(32) NOT NULL,
  `payment_company` varchar(60) NOT NULL,
  `payment_address_1` varchar(128) NOT NULL,
  `payment_address_2` varchar(128) NOT NULL,
  `payment_city` varchar(128) NOT NULL,
  `payment_postcode` varchar(10) NOT NULL,
  `payment_country` varchar(128) NOT NULL,
  `payment_country_id` int NOT NULL,
  `payment_zone` varchar(128) NOT NULL,
  `payment_zone_id` int NOT NULL,
  `payment_address_format` text NOT NULL,
  `payment_custom_field` text NOT NULL,
  `payment_method` varchar(128) NOT NULL,
  `payment_code` varchar(128) NOT NULL,
  `shipping_firstname` varchar(32) NOT NULL,
  `shipping_lastname` varchar(32) NOT NULL,
  `shipping_company` varchar(40) NOT NULL,
  `shipping_address_1` varchar(128) NOT NULL,
  `shipping_address_2` varchar(128) NOT NULL,
  `shipping_city` varchar(128) NOT NULL,
  `shipping_postcode` varchar(10) NOT NULL,
  `shipping_country` varchar(128) NOT NULL,
  `shipping_country_id` int NOT NULL,
  `shipping_zone` varchar(128) NOT NULL,
  `shipping_zone_id` int NOT NULL,
  `shipping_address_format` text NOT NULL,
  `shipping_custom_field` text NOT NULL,
  `shipping_method` varchar(128) NOT NULL,
  `shipping_code` varchar(128) NOT NULL,
  `comment` text NOT NULL,
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `order_status_id` int NOT NULL DEFAULT '0',
  `affiliate_id` int NOT NULL,
  `commission` decimal(15,4) NOT NULL,
  `marketing_id` int NOT NULL,
  `tracking` varchar(64) NOT NULL,
  `language_id` int NOT NULL,
  `currency_id` int NOT NULL,
  `currency_code` varchar(3) NOT NULL,
  `currency_value` decimal(15,8) NOT NULL DEFAULT '1.00000000',
  `ip` varchar(40) NOT NULL,
  `forwarded_ip` varchar(40) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `accept_language` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order_history`
--

CREATE TABLE `oc_order_history` (
  `order_history_id` int NOT NULL,
  `order_id` int NOT NULL,
  `order_status_id` int NOT NULL,
  `notify` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order_option`
--

CREATE TABLE `oc_order_option` (
  `order_option_id` int NOT NULL,
  `order_id` int NOT NULL,
  `order_product_id` int NOT NULL,
  `product_option_id` int NOT NULL,
  `product_option_value_id` int NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order_product`
--

CREATE TABLE `oc_order_product` (
  `order_product_id` int NOT NULL,
  `order_id` int NOT NULL,
  `product_id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `tax` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `reward` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order_recurring`
--

CREATE TABLE `oc_order_recurring` (
  `order_recurring_id` int NOT NULL,
  `order_id` int NOT NULL,
  `reference` varchar(255) NOT NULL,
  `product_id` int NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_quantity` int NOT NULL,
  `recurring_id` int NOT NULL,
  `recurring_name` varchar(255) NOT NULL,
  `recurring_description` varchar(255) NOT NULL,
  `recurring_frequency` varchar(25) NOT NULL,
  `recurring_cycle` smallint NOT NULL,
  `recurring_duration` smallint NOT NULL,
  `recurring_price` decimal(10,4) NOT NULL,
  `trial` tinyint(1) NOT NULL,
  `trial_frequency` varchar(25) NOT NULL,
  `trial_cycle` smallint NOT NULL,
  `trial_duration` smallint NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `status` tinyint NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order_recurring_transaction`
--

CREATE TABLE `oc_order_recurring_transaction` (
  `order_recurring_transaction_id` int NOT NULL,
  `order_recurring_id` int NOT NULL,
  `reference` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `amount` decimal(10,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order_shipment`
--

CREATE TABLE `oc_order_shipment` (
  `order_shipment_id` int NOT NULL,
  `order_id` int NOT NULL,
  `date_added` datetime NOT NULL,
  `shipping_courier_id` varchar(255) NOT NULL DEFAULT '',
  `tracking_number` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order_status`
--

CREATE TABLE `oc_order_status` (
  `order_status_id` int NOT NULL,
  `language_id` int NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `oc_order_status`
--

INSERT INTO `oc_order_status` (`order_status_id`, `language_id`, `name`) VALUES
(2, 1, 'В обработке'),
(3, 1, 'Доставлено'),
(7, 1, 'Отменено'),
(5, 1, 'Сделка завершена'),
(8, 1, 'Возврат'),
(9, 1, 'Отмена и аннулирование'),
(10, 1, 'Неудавшийся'),
(11, 1, 'Возмещенный'),
(12, 1, 'Полностью измененный'),
(13, 1, 'Полный возврат'),
(1, 1, 'Ожидание'),
(15, 1, 'Обработано'),
(14, 1, 'Истекло'),
(2, 2, 'Processing'),
(8, 2, 'Denied'),
(11, 2, 'Refunded'),
(3, 2, 'Shipped'),
(10, 2, 'Failed'),
(1, 2, 'Pending'),
(9, 2, 'Canceled Reversal'),
(7, 2, 'Canceled'),
(12, 2, 'Reversed'),
(13, 2, 'Chargeback'),
(5, 2, 'Complete'),
(14, 2, 'Expired'),
(16, 1, 'Анулированный'),
(16, 2, 'Voided'),
(15, 2, 'Processed');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order_total`
--

CREATE TABLE `oc_order_total` (
  `order_total_id` int NOT NULL,
  `order_id` int NOT NULL,
  `code` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `value` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `sort_order` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order_voucher`
--

CREATE TABLE `oc_order_voucher` (
  `order_voucher_id` int NOT NULL,
  `order_id` int NOT NULL,
  `voucher_id` int NOT NULL,
  `description` varchar(255) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product`
--

CREATE TABLE `oc_product` (
  `product_id` int NOT NULL,
  `model` varchar(64) NOT NULL,
  `sku` varchar(64) NOT NULL,
  `upc` varchar(12) NOT NULL,
  `ean` varchar(14) NOT NULL,
  `jan` varchar(13) NOT NULL,
  `isbn` varchar(17) NOT NULL,
  `mpn` varchar(64) NOT NULL,
  `location` varchar(128) NOT NULL,
  `quantity` int NOT NULL DEFAULT '0',
  `stock_status_id` int NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `manufacturer_id` int NOT NULL,
  `shipping` tinyint(1) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `points` int NOT NULL DEFAULT '0',
  `tax_class_id` int NOT NULL,
  `date_available` date NOT NULL DEFAULT '0000-00-00',
  `weight` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `weight_class_id` int NOT NULL DEFAULT '0',
  `length` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `width` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `height` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `length_class_id` int NOT NULL DEFAULT '0',
  `subtract` tinyint(1) NOT NULL DEFAULT '1',
  `minimum` int NOT NULL DEFAULT '1',
  `sort_order` int NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `viewed` int NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `noindex` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `oc_product`
--

INSERT INTO `oc_product` (`product_id`, `model`, `sku`, `upc`, `ean`, `jan`, `isbn`, `mpn`, `location`, `quantity`, `stock_status_id`, `image`, `manufacturer_id`, `shipping`, `price`, `points`, `tax_class_id`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`, `length_class_id`, `subtract`, `minimum`, `sort_order`, `status`, `viewed`, `date_added`, `date_modified`, `noindex`) VALUES
(28, 'Product 1', '', '', '', '', '', '', '', 939, 7, 'catalog/demo/htc_touch_hd_1.jpg', 5, 1, 100.0000, 200, 9, '2009-02-03', 146.40000000, 2, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 0, 1, 0, '2009-02-03 16:06:50', '2011-09-30 01:05:39', 1),
(29, 'Product 2', '', '', '', '', '', '', '', 999, 6, 'catalog/demo/palm_treo_pro_1.jpg', 6, 1, 279.9900, 0, 9, '2009-02-03', 133.00000000, 2, 0.00000000, 0.00000000, 0.00000000, 3, 1, 1, 0, 1, 0, '2009-02-03 16:42:17', '2011-09-30 01:06:08', 1),
(30, 'Product 3', '', '', '', '', '', '', '', 7, 6, 'catalog/demo/canon_eos_5d_1.jpg', 9, 1, 100.0000, 0, 9, '2009-02-03', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 0, 1, 8, '2009-02-03 16:59:00', '2011-09-30 01:05:23', 1),
(31, 'Product 4', '', '', '', '', '', '', '', 1000, 6, 'catalog/demo/nikon_d300_1.jpg', 0, 1, 80.0000, 0, 9, '2009-02-03', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 3, 1, 1, 0, 1, 0, '2009-02-03 17:00:10', '2011-09-30 01:06:00', 1),
(32, 'Product 5', '', '', '', '', '', '', '', 999, 6, 'catalog/demo/ipod_touch_1.jpg', 8, 1, 100.0000, 0, 9, '2009-02-03', 5.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 0, 1, 0, '2009-02-03 17:07:26', '2011-09-30 01:07:22', 1),
(33, 'Product 6', '', '', '', '', '', '', '', 1000, 6, 'catalog/demo/samsung_syncmaster_941bw.jpg', 0, 1, 200.0000, 0, 9, '2009-02-03', 5.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 2, 1, 1, 0, 1, 0, '2009-02-03 17:08:31', '2011-09-30 01:06:29', 1),
(34, 'Product 7', '', '', '', '', '', '', '', 1000, 6, 'catalog/demo/ipod_shuffle_1.jpg', 8, 1, 100.0000, 0, 9, '2009-02-03', 5.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 2, 1, 1, 0, 1, 0, '2009-02-03 18:07:54', '2011-09-30 01:07:17', 1),
(35, 'Product 8', '', '', '', '', '', '', '', 1000, 5, '', 0, 0, 100.0000, 0, 9, '2009-02-03', 5.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 0, 1, 0, '2009-02-03 18:08:31', '2011-09-30 01:06:17', 1),
(36, 'Product 9', '', '', '', '', '', '', '', 994, 6, 'catalog/demo/ipod_nano_1.jpg', 8, 0, 100.0000, 100, 9, '2009-02-03', 5.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 2, 1, 1, 0, 1, 0, '2009-02-03 18:09:19', '2011-09-30 01:07:12', 1),
(40, 'product 11', '', '', '', '', '', '', '', 970, 5, 'catalog/demo/iphone_1.jpg', 8, 1, 101.0000, 0, 9, '2009-02-03', 10.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 0, 1, 0, '2009-02-03 21:07:12', '2011-09-30 01:06:53', 1),
(41, 'Product 14', '', '', '', '', '', '', '', 977, 5, 'catalog/demo/imac_1.jpg', 8, 1, 100.0000, 0, 9, '2009-02-03', 5.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 0, 1, 0, '2009-02-03 21:07:26', '2011-09-30 01:06:44', 1),
(42, 'Product 15', '', '', '', '', '', '', '', 990, 5, 'catalog/demo/apple_cinema_30.jpg', 8, 1, 100.0000, 400, 9, '2009-02-04', 12.50000000, 1, 1.00000000, 2.00000000, 3.00000000, 1, 1, 2, 0, 1, 11, '2009-02-03 21:07:37', '2017-07-26 22:30:20', 0),
(43, 'Product 16', '', '', '', '', '', '', '', 929, 5, 'catalog/demo/macbook_1.jpg', 8, 0, 500.0000, 0, 9, '2009-02-03', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 2, 1, 1, 0, 1, 1, '2009-02-03 21:07:49', '2011-09-30 01:05:46', 1),
(44, 'Product 17', '', '', '', '', '', '', '', 1000, 5, 'catalog/demo/macbook_air_1.jpg', 8, 1, 1000.0000, 0, 9, '2009-02-03', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 2, 1, 1, 0, 1, 0, '2009-02-03 21:08:00', '2011-09-30 01:05:53', 1),
(45, 'Product 18', '', '', '', '', '', '', '', 998, 5, 'catalog/demo/macbook_pro_1.jpg', 8, 1, 2000.0000, 0, 100, '2009-02-03', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 2, 1, 1, 0, 1, 0, '2009-02-03 21:08:17', '2011-09-15 22:22:01', 1),
(46, 'Product 19', '', '', '', '', '', '', '', 1000, 5, 'catalog/demo/sony_vaio_1.jpg', 10, 1, 1000.0000, 0, 9, '2009-02-03', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 2, 1, 1, 0, 1, 0, '2009-02-03 21:08:29', '2011-09-30 01:06:39', 1),
(47, 'Product 21', '', '', '', '', '', '', '', 1000, 5, 'catalog/demo/hp_1.jpg', 7, 1, 100.0000, 400, 9, '2009-02-03', 1.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 0, 1, 0, 1, 3, '2009-02-03 21:08:40', '2011-09-30 01:05:28', 1),
(48, 'product 20', 'test 1', '', '', '', '', '', 'test 2', 995, 5, 'catalog/demo/ipod_classic_1.jpg', 8, 1, 100.0000, 0, 9, '2009-02-08', 1.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 2, 1, 1, 0, 1, 0, '2009-02-08 17:21:51', '2011-09-30 01:07:06', 1),
(49, 'SAM1', '', '', '', '', '', '', '', 0, 8, 'catalog/demo/samsung_tab_1.jpg', 0, 1, 199.9900, 0, 9, '2011-04-25', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, 0, '2011-04-26 08:57:34', '2011-09-30 01:06:23', 1),
(50, 'wow-product', '', '', '', '', '', '', '', 1, 5, 'catalog/products/vse_dla_rassadi/akvarin_1.png', 11, 1, 275.0000, 0, 9, '2025-03-08', 500.00000000, 2, 10.00000000, 5.00000000, 30.00000000, 1, 1, 1, 1, 1, 165, '2025-03-08 20:27:53', '2025-03-09 18:44:44', 1),
(51, 'no_image_product', '', '', '', '', '', '', '', 1, 7, '', 0, 1, 100.0000, 0, 0, '2025-03-09', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, 81, '2025-03-09 13:53:39', '2025-03-09 13:53:39', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_attribute`
--

CREATE TABLE `oc_product_attribute` (
  `product_id` int NOT NULL,
  `attribute_id` int NOT NULL,
  `language_id` int NOT NULL,
  `text` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `oc_product_attribute`
--

INSERT INTO `oc_product_attribute` (`product_id`, `attribute_id`, `language_id`, `text`) VALUES
(43, 2, 1, '1'),
(47, 4, 1, '16GB'),
(43, 4, 1, '8gb'),
(42, 3, 1, '100mhz'),
(47, 2, 1, '4'),
(50, 12, 1, 'Удобрение'),
(50, 13, 1, 'универсальное'),
(50, 14, 1, 'универсальное'),
(50, 15, 1, '500 гр'),
(50, 16, 1, '2 шт');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_description`
--

CREATE TABLE `oc_product_description` (
  `product_id` int NOT NULL,
  `language_id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `short_description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `description` text NOT NULL,
  `tag` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  `meta_h1` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `oc_product_description`
--

INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `short_description`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`, `meta_h1`) VALUES
(33, 2, 'Samsung SyncMaster 941BW', '', '&lt;p&gt;Imagine the advantages of going big without slowing down. The big 19&quot; \r\n941BW monitor combines wide aspect ratio with fast pixel response time, \r\nfor bigger images, more room to work and crisp motion. In addition, the \r\nexclusive MagicBright 2, MagicColor and MagicTune technologies help \r\ndeliver the ideal image in every situation, while sleek, narrow bezels \r\nand adjustable stands deliver style just the way you want it. With the \r\nSamsung 941BW widescreen analog/digital LCD monitor, it\'s not hard to \r\nimagine.&lt;br&gt;&lt;/p&gt;', '', '', '', '', ''),
(49, 2, 'Samsung Galaxy Tab 10.1', '', '&lt;p&gt;Samsung Galaxy Tab 10.1, is the world’s thinnest tablet, measuring 8.6 \r\nmm thickness, running with Android 3.0 Honeycomb OS on a 1GHz dual-core \r\nTegra 2 processor, similar to its younger brother Samsung Galaxy Tab \r\n8.9.&lt;/p&gt;&lt;p&gt;\r\n&lt;br&gt;&lt;/p&gt;&lt;p&gt;\r\n Samsung Galaxy Tab 10.1 gives pure Android 3.0 experience, adding its \r\nnew TouchWiz UX or TouchWiz 4.0 – includes a live panel, which lets you \r\nto customize with different content, such as your pictures, bookmarks, \r\nand social feeds, sporting a 10.1 inches WXGA capacitive touch screen \r\nwith 1280 x 800 pixels of resolution, equipped with 3 megapixel rear \r\ncamera with LED flash and a 2 megapixel front camera, HSPA+ connectivity\r\n up to 21Mbps, 720p HD video recording capability, 1080p HD playback, \r\nDLNA support, Bluetooth 2.1, USB 2.0, gyroscope, Wi-Fi 802.11 a/b/g/n, \r\nmicro-SD slot, 3.5mm headphone jack, and SIM slot, including the Samsung\r\n Stick – a Bluetooth microphone that can be carried in a pocket like a \r\npen and sound dock with powered subwoofer.&lt;/p&gt;&lt;p&gt;\r\n&lt;br&gt;&lt;/p&gt;&lt;p&gt;\r\n Samsung Galaxy Tab 10.1 will come in 16GB / 32GB / 64GB verities and \r\npre-loaded with Social Hub, Reader’s Hub, Music Hub and Samsung Mini \r\nApps Tray – which gives you access to more commonly used apps to help \r\nease multitasking and it is capable of Adobe Flash Player 10.2, powered \r\nby 6860mAh battery that gives you 10hours of video-playback time.&amp;nbsp;äö&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '', '', ''),
(42, 1, 'Apple Cinema 30&quot;', '', '&lt;p&gt;\r\n &lt;font face=&quot;helvetica,geneva,arial&quot; size=&quot;2&quot;&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;The 30-inch Apple Cinema HD Display delivers an amazing 2560 x 1600 pixel resolution. Designed specifically for the creative professional, this display provides more space for easier access to all the tools and palettes needed to edit, format and composite your work. Combine this display with a Mac Pro, MacBook Pro, or PowerMac G5 and there\'s no limit to what you can achieve. &lt;br&gt;\r\n &lt;br&gt;\r\n &lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;The Cinema HD features an active-matrix liquid crystal display that produces flicker-free images that deliver twice the brightness, twice the sharpness and twice the contrast ratio of a typical CRT display. Unlike other flat panels, it\'s designed with a pure digital interface to deliver distortion-free images that never need adjusting. With over 4 million digital pixels, the display is uniquely suited for scientific and technical applications such as visualizing molecular structures or analyzing geological data. &lt;br&gt;\r\n &lt;br&gt;\r\n &lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;Offering accurate, brilliant color performance, the Cinema HD delivers up to 16.7 million colors across a wide gamut allowing you to see subtle nuances between colors from soft pastels to rich jewel tones. A wide viewing angle ensures uniform color from edge to edge. Apple\'s ColorSync technology allows you to create custom profiles to maintain consistent color onscreen and in print. The result: You can confidently use this display in all your color-critical applications. &lt;br&gt;\r\n &lt;br&gt;\r\n &lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;Housed in a new aluminum design, the display has a very thin bezel that enhances visual accuracy. Each display features two FireWire 400 ports and two USB 2.0 ports, making attachment of desktop peripherals, such as iSight, iPod, digital and still cameras, hard drives, printers and scanners, even more accessible and convenient. Taking advantage of the much thinner and lighter footprint of an LCD, the new displays support the VESA (Video Electronics Standards Association) mounting interface standard. Customers with the optional Cinema Display VESA Mount Adapter kit gain the flexibility to mount their display in locations most appropriate for their work environment. &lt;br&gt;\r\n &lt;br&gt;\r\n &lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;The Cinema HD features a single cable design with elegant breakout for the USB 2.0, FireWire 400 and a pure digital connection using the industry standard Digital Video Interface (DVI) interface. The DVI connection allows for a direct pure-digital connection.&lt;br&gt;\r\n &lt;/font&gt;&lt;/font&gt;&lt;/p&gt;\r\n&lt;h3&gt;\r\n Features:&lt;/h3&gt;\r\n&lt;p&gt;\r\n Unrivaled display performance&lt;/p&gt;\r\n&lt;ul&gt;\r\n &lt;li&gt;\r\n  30-inch (viewable) active-matrix liquid crystal display provides breathtaking image quality and vivid, richly saturated color.&lt;/li&gt;\r\n &lt;li&gt;\r\n  Support for 2560-by-1600 pixel resolution for display of high definition still and video imagery.&lt;/li&gt;\r\n &lt;li&gt;\r\n  Wide-format design for simultaneous display of two full pages of text and graphics.&lt;/li&gt;\r\n &lt;li&gt;\r\n  Industry standard DVI connector for direct attachment to Mac- and Windows-based desktops and notebooks&lt;/li&gt;\r\n &lt;li&gt;\r\n  Incredibly wide (170 degree) horizontal and vertical viewing angle for maximum visibility and color performance.&lt;/li&gt;\r\n &lt;li&gt;\r\n  Lightning-fast pixel response for full-motion digital video playback.&lt;/li&gt;\r\n &lt;li&gt;\r\n  Support for 16.7 million saturated colors, for use in all graphics-intensive applications.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n Simple setup and operation&lt;/p&gt;\r\n&lt;ul&gt;\r\n &lt;li&gt;\r\n  Single cable with elegant breakout for connection to DVI, USB and FireWire ports&lt;/li&gt;\r\n &lt;li&gt;\r\n  Built-in two-port USB 2.0 hub for easy connection of desktop peripheral devices.&lt;/li&gt;\r\n &lt;li&gt;\r\n  Two FireWire 400 ports to support iSight and other desktop peripherals&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n Sleek, elegant design&lt;/p&gt;\r\n&lt;ul&gt;\r\n &lt;li&gt;\r\n  Huge virtual workspace, very small footprint.&lt;/li&gt;\r\n &lt;li&gt;\r\n  Narrow Bezel design to minimize visual impact of using dual displays&lt;/li&gt;\r\n &lt;li&gt;\r\n  Unique hinge design for effortless adjustment&lt;/li&gt;\r\n &lt;li&gt;\r\n  Support for VESA mounting solutions (Apple Cinema Display VESA Mount Adapter sold separately)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;h3&gt;\r\n Technical specifications&lt;/h3&gt;\r\n&lt;p&gt;\r\n &lt;b&gt;Screen size (diagonal viewable image size)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n &lt;li&gt;\r\n  Apple Cinema HD Display: 30 inches (29.7-inch viewable)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n &lt;b&gt;Screen type&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n &lt;li&gt;\r\n  Thin film transistor (TFT) active-matrix liquid crystal display (AMLCD)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n &lt;b&gt;Resolutions&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n &lt;li&gt;\r\n  2560 x 1600 pixels (optimum resolution)&lt;/li&gt;\r\n &lt;li&gt;\r\n  2048 x 1280&lt;/li&gt;\r\n &lt;li&gt;\r\n  1920 x 1200&lt;/li&gt;\r\n &lt;li&gt;\r\n  1280 x 800&lt;/li&gt;\r\n &lt;li&gt;\r\n  1024 x 640&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n &lt;b&gt;Display colors (maximum)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n &lt;li&gt;\r\n  16.7 million&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n &lt;b&gt;Viewing angle (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n &lt;li&gt;\r\n  170° horizontal; 170° vertical&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n &lt;b&gt;Brightness (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n &lt;li&gt;\r\n  30-inch Cinema HD Display: 400 cd/m2&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n &lt;b&gt;Contrast ratio (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n &lt;li&gt;\r\n  700:1&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n &lt;b&gt;Response time (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n &lt;li&gt;\r\n  16 ms&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n &lt;b&gt;Pixel pitch&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n &lt;li&gt;\r\n  30-inch Cinema HD Display: 0.250 mm&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n &lt;b&gt;Screen treatment&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n &lt;li&gt;\r\n  Antiglare hardcoat&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n &lt;b&gt;User controls (hardware and software)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n &lt;li&gt;\r\n  Display Power,&lt;/li&gt;\r\n &lt;li&gt;\r\n  System sleep, wake&lt;/li&gt;\r\n &lt;li&gt;\r\n  Brightness&lt;/li&gt;\r\n &lt;li&gt;\r\n  Monitor tilt&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n &lt;b&gt;Connectors and cables&lt;/b&gt;&lt;br&gt;\r\n Cable&lt;/p&gt;\r\n&lt;ul&gt;\r\n &lt;li&gt;\r\n  DVI (Digital Visual Interface)&lt;/li&gt;\r\n &lt;li&gt;\r\n  FireWire 400&lt;/li&gt;\r\n &lt;li&gt;\r\n  USB 2.0&lt;/li&gt;\r\n &lt;li&gt;\r\n  DC power (24 V)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n Connectors&lt;/p&gt;\r\n&lt;ul&gt;\r\n &lt;li&gt;\r\n  Two-port, self-powered USB 2.0 hub&lt;/li&gt;\r\n &lt;li&gt;\r\n  Two FireWire 400 ports&lt;/li&gt;\r\n &lt;li&gt;\r\n  Kensington security port&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n &lt;b&gt;VESA mount adapter&lt;/b&gt;&lt;br&gt;\r\n Requires optional Cinema Display VESA Mount Adapter (M9649G/A)&lt;/p&gt;\r\n&lt;ul&gt;\r\n &lt;li&gt;\r\n  Compatible with VESA FDMI (MIS-D, 100, C) compliant mounting solutions&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n &lt;b&gt;Electrical requirements&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n &lt;li&gt;\r\n  Input voltage: 100-240 VAC 50-60Hz&lt;/li&gt;\r\n &lt;li&gt;\r\n  Maximum power when operating: 150W&lt;/li&gt;\r\n &lt;li&gt;\r\n  Energy saver mode: 3W or less&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n &lt;b&gt;Environmental requirements&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n &lt;li&gt;\r\n  Operating temperature: 50° to 95° F (10° to 35° C)&lt;/li&gt;\r\n &lt;li&gt;\r\n  Storage temperature: -40° to 116° F (-40° to 47° C)&lt;/li&gt;\r\n &lt;li&gt;\r\n  Operating humidity: 20% to 80% noncondensing&lt;/li&gt;\r\n &lt;li&gt;\r\n  Maximum operating altitude: 10,000 feet&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n &lt;b&gt;Agency approvals&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n &lt;li&gt;\r\n  FCC Part 15 Class B&lt;/li&gt;\r\n &lt;li&gt;\r\n  EN55022 Class B&lt;/li&gt;\r\n &lt;li&gt;\r\n  EN55024&lt;/li&gt;\r\n &lt;li&gt;\r\n  VCCI Class B&lt;/li&gt;\r\n &lt;li&gt;\r\n  AS/NZS 3548 Class B&lt;/li&gt;\r\n &lt;li&gt;\r\n  CNS 13438 Class B&lt;/li&gt;\r\n &lt;li&gt;\r\n  ICES-003 Class B&lt;/li&gt;\r\n &lt;li&gt;\r\n  ISO 13406 part 2&lt;/li&gt;\r\n &lt;li&gt;\r\n  MPR II&lt;/li&gt;\r\n &lt;li&gt;\r\n  IEC 60950&lt;/li&gt;\r\n &lt;li&gt;\r\n  UL 60950&lt;/li&gt;\r\n &lt;li&gt;\r\n  CSA 60950&lt;/li&gt;\r\n &lt;li&gt;\r\n  EN60950&lt;/li&gt;\r\n &lt;li&gt;\r\n  ENERGY STAR&lt;/li&gt;\r\n &lt;li&gt;\r\n  TCO \'03&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n &lt;b&gt;Size and weight&lt;/b&gt;&lt;br&gt;\r\n 30-inch Apple Cinema HD Display&lt;/p&gt;\r\n&lt;ul&gt;\r\n &lt;li&gt;\r\n  Height: 21.3 inches (54.3 cm)&lt;/li&gt;\r\n &lt;li&gt;\r\n  Width: 27.2 inches (68.8 cm)&lt;/li&gt;\r\n &lt;li&gt;\r\n  Depth: 8.46 inches (21.5 cm)&lt;/li&gt;\r\n &lt;li&gt;\r\n  Weight: 27.5 pounds (12.5 kg)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n &lt;b&gt;System Requirements&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n &lt;li&gt;\r\n  Mac Pro, all graphic options&lt;/li&gt;\r\n &lt;li&gt;\r\n  MacBook Pro&lt;/li&gt;\r\n &lt;li&gt;\r\n  Power Mac G5 (PCI-X) with ATI Radeon 9650 or better or NVIDIA GeForce 6800 GT DDL or better&lt;/li&gt;\r\n &lt;li&gt;\r\n  Power Mac G5 (PCI Express), all graphics options&lt;/li&gt;\r\n &lt;li&gt;\r\n  PowerBook G4 with dual-link DVI support&lt;/li&gt;\r\n &lt;li&gt;\r\n  Windows PC and graphics card that supports DVI ports with dual-link digital bandwidth and VESA DDC standard for plug-and-play setup&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', '', '', '', '', ''),
(42, 2, 'Apple Cinema 30&quot;', '', '&lt;p&gt;\r\n &lt;font face=&quot;helvetica,geneva,arial&quot; size=&quot;2&quot;&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;The 30-inch Apple Cinema HD Display delivers an amazing 2560 x 1600 pixel resolution. Designed specifically for the creative professional, this display provides more space for easier access to all the tools and palettes needed to edit, format and composite your work. Combine this display with a Mac Pro, MacBook Pro, or PowerMac G5 and there\'s no limit to what you can achieve. &lt;br&gt;\r\n &lt;br&gt;\r\n &lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;The Cinema HD features an active-matrix liquid crystal display that produces flicker-free images that deliver twice the brightness, twice the sharpness and twice the contrast ratio of a typical CRT display. Unlike other flat panels, it\'s designed with a pure digital interface to deliver distortion-free images that never need adjusting. With over 4 million digital pixels, the display is uniquely suited for scientific and technical applications such as visualizing molecular structures or analyzing geological data. &lt;br&gt;\r\n &lt;br&gt;\r\n &lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;Offering accurate, brilliant color performance, the Cinema HD delivers up to 16.7 million colors across a wide gamut allowing you to see subtle nuances between colors from soft pastels to rich jewel tones. A wide viewing angle ensures uniform color from edge to edge. Apple\'s ColorSync technology allows you to create custom profiles to maintain consistent color onscreen and in print. The result: You can confidently use this display in all your color-critical applications. &lt;br&gt;\r\n &lt;br&gt;\r\n &lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;Housed in a new aluminum design, the display has a very thin bezel that enhances visual accuracy. Each display features two FireWire 400 ports and two USB 2.0 ports, making attachment of desktop peripherals, such as iSight, iPod, digital and still cameras, hard drives, printers and scanners, even more accessible and convenient. Taking advantage of the much thinner and lighter footprint of an LCD, the new displays support the VESA (Video Electronics Standards Association) mounting interface standard. Customers with the optional Cinema Display VESA Mount Adapter kit gain the flexibility to mount their display in locations most appropriate for their work environment. &lt;br&gt;\r\n &lt;br&gt;\r\n &lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;The Cinema HD features a single cable design with elegant breakout for the USB 2.0, FireWire 400 and a pure digital connection using the industry standard Digital Video Interface (DVI) interface. The DVI connection allows for a direct pure-digital connection.&lt;br&gt;\r\n &lt;/font&gt;&lt;/font&gt;&lt;/p&gt;\r\n&lt;h3&gt;\r\n Features:&lt;/h3&gt;\r\n&lt;p&gt;\r\n Unrivaled display performance&lt;/p&gt;\r\n&lt;ul&gt;\r\n &lt;li&gt;\r\n  30-inch (viewable) active-matrix liquid crystal display provides breathtaking image quality and vivid, richly saturated color.&lt;/li&gt;\r\n &lt;li&gt;\r\n  Support for 2560-by-1600 pixel resolution for display of high definition still and video imagery.&lt;/li&gt;\r\n &lt;li&gt;\r\n  Wide-format design for simultaneous display of two full pages of text and graphics.&lt;/li&gt;\r\n &lt;li&gt;\r\n  Industry standard DVI connector for direct attachment to Mac- and Windows-based desktops and notebooks&lt;/li&gt;\r\n &lt;li&gt;\r\n  Incredibly wide (170 degree) horizontal and vertical viewing angle for maximum visibility and color performance.&lt;/li&gt;\r\n &lt;li&gt;\r\n  Lightning-fast pixel response for full-motion digital video playback.&lt;/li&gt;\r\n &lt;li&gt;\r\n  Support for 16.7 million saturated colors, for use in all graphics-intensive applications.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n Simple setup and operation&lt;/p&gt;\r\n&lt;ul&gt;\r\n &lt;li&gt;\r\n  Single cable with elegant breakout for connection to DVI, USB and FireWire ports&lt;/li&gt;\r\n &lt;li&gt;\r\n  Built-in two-port USB 2.0 hub for easy connection of desktop peripheral devices.&lt;/li&gt;\r\n &lt;li&gt;\r\n  Two FireWire 400 ports to support iSight and other desktop peripherals&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n Sleek, elegant design&lt;/p&gt;\r\n&lt;ul&gt;\r\n &lt;li&gt;\r\n  Huge virtual workspace, very small footprint.&lt;/li&gt;\r\n &lt;li&gt;\r\n  Narrow Bezel design to minimize visual impact of using dual displays&lt;/li&gt;\r\n &lt;li&gt;\r\n  Unique hinge design for effortless adjustment&lt;/li&gt;\r\n &lt;li&gt;\r\n  Support for VESA mounting solutions (Apple Cinema Display VESA Mount Adapter sold separately)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;h3&gt;\r\n Technical specifications&lt;/h3&gt;\r\n&lt;p&gt;\r\n &lt;b&gt;Screen size (diagonal viewable image size)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n &lt;li&gt;\r\n  Apple Cinema HD Display: 30 inches (29.7-inch viewable)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n &lt;b&gt;Screen type&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n &lt;li&gt;\r\n  Thin film transistor (TFT) active-matrix liquid crystal display (AMLCD)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n &lt;b&gt;Resolutions&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n &lt;li&gt;\r\n  2560 x 1600 pixels (optimum resolution)&lt;/li&gt;\r\n &lt;li&gt;\r\n  2048 x 1280&lt;/li&gt;\r\n &lt;li&gt;\r\n  1920 x 1200&lt;/li&gt;\r\n &lt;li&gt;\r\n  1280 x 800&lt;/li&gt;\r\n &lt;li&gt;\r\n  1024 x 640&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n &lt;b&gt;Display colors (maximum)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n &lt;li&gt;\r\n  16.7 million&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n &lt;b&gt;Viewing angle (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n &lt;li&gt;\r\n  170° horizontal; 170° vertical&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n &lt;b&gt;Brightness (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n &lt;li&gt;\r\n  30-inch Cinema HD Display: 400 cd/m2&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n &lt;b&gt;Contrast ratio (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n &lt;li&gt;\r\n  700:1&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n &lt;b&gt;Response time (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n &lt;li&gt;\r\n  16 ms&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n &lt;b&gt;Pixel pitch&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n &lt;li&gt;\r\n  30-inch Cinema HD Display: 0.250 mm&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n &lt;b&gt;Screen treatment&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n &lt;li&gt;\r\n  Antiglare hardcoat&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n &lt;b&gt;User controls (hardware and software)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n &lt;li&gt;\r\n  Display Power,&lt;/li&gt;\r\n &lt;li&gt;\r\n  System sleep, wake&lt;/li&gt;\r\n &lt;li&gt;\r\n  Brightness&lt;/li&gt;\r\n &lt;li&gt;\r\n  Monitor tilt&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n &lt;b&gt;Connectors and cables&lt;/b&gt;&lt;br&gt;\r\n Cable&lt;/p&gt;\r\n&lt;ul&gt;\r\n &lt;li&gt;\r\n  DVI (Digital Visual Interface)&lt;/li&gt;\r\n &lt;li&gt;\r\n  FireWire 400&lt;/li&gt;\r\n &lt;li&gt;\r\n  USB 2.0&lt;/li&gt;\r\n &lt;li&gt;\r\n  DC power (24 V)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n Connectors&lt;/p&gt;\r\n&lt;ul&gt;\r\n &lt;li&gt;\r\n  Two-port, self-powered USB 2.0 hub&lt;/li&gt;\r\n &lt;li&gt;\r\n  Two FireWire 400 ports&lt;/li&gt;\r\n &lt;li&gt;\r\n  Kensington security port&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n &lt;b&gt;VESA mount adapter&lt;/b&gt;&lt;br&gt;\r\n Requires optional Cinema Display VESA Mount Adapter (M9649G/A)&lt;/p&gt;\r\n&lt;ul&gt;\r\n &lt;li&gt;\r\n  Compatible with VESA FDMI (MIS-D, 100, C) compliant mounting solutions&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n &lt;b&gt;Electrical requirements&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n &lt;li&gt;\r\n  Input voltage: 100-240 VAC 50-60Hz&lt;/li&gt;\r\n &lt;li&gt;\r\n  Maximum power when operating: 150W&lt;/li&gt;\r\n &lt;li&gt;\r\n  Energy saver mode: 3W or less&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n &lt;b&gt;Environmental requirements&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n &lt;li&gt;\r\n  Operating temperature: 50° to 95° F (10° to 35° C)&lt;/li&gt;\r\n &lt;li&gt;\r\n  Storage temperature: -40° to 116° F (-40° to 47° C)&lt;/li&gt;\r\n &lt;li&gt;\r\n  Operating humidity: 20% to 80% noncondensing&lt;/li&gt;\r\n &lt;li&gt;\r\n  Maximum operating altitude: 10,000 feet&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n &lt;b&gt;Agency approvals&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n &lt;li&gt;\r\n  FCC Part 15 Class B&lt;/li&gt;\r\n &lt;li&gt;\r\n  EN55022 Class B&lt;/li&gt;\r\n &lt;li&gt;\r\n  EN55024&lt;/li&gt;\r\n &lt;li&gt;\r\n  VCCI Class B&lt;/li&gt;\r\n &lt;li&gt;\r\n  AS/NZS 3548 Class B&lt;/li&gt;\r\n &lt;li&gt;\r\n  CNS 13438 Class B&lt;/li&gt;\r\n &lt;li&gt;\r\n  ICES-003 Class B&lt;/li&gt;\r\n &lt;li&gt;\r\n  ISO 13406 part 2&lt;/li&gt;\r\n &lt;li&gt;\r\n  MPR II&lt;/li&gt;\r\n &lt;li&gt;\r\n  IEC 60950&lt;/li&gt;\r\n &lt;li&gt;\r\n  UL 60950&lt;/li&gt;\r\n &lt;li&gt;\r\n  CSA 60950&lt;/li&gt;\r\n &lt;li&gt;\r\n  EN60950&lt;/li&gt;\r\n &lt;li&gt;\r\n  ENERGY STAR&lt;/li&gt;\r\n &lt;li&gt;\r\n  TCO \'03&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n &lt;b&gt;Size and weight&lt;/b&gt;&lt;br&gt;\r\n 30-inch Apple Cinema HD Display&lt;/p&gt;\r\n&lt;ul&gt;\r\n &lt;li&gt;\r\n  Height: 21.3 inches (54.3 cm)&lt;/li&gt;\r\n &lt;li&gt;\r\n  Width: 27.2 inches (68.8 cm)&lt;/li&gt;\r\n &lt;li&gt;\r\n  Depth: 8.46 inches (21.5 cm)&lt;/li&gt;\r\n &lt;li&gt;\r\n  Weight: 27.5 pounds (12.5 kg)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n &lt;b&gt;System Requirements&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n &lt;li&gt;\r\n  Mac Pro, all graphic options&lt;/li&gt;\r\n &lt;li&gt;\r\n  MacBook Pro&lt;/li&gt;\r\n &lt;li&gt;\r\n  Power Mac G5 (PCI-X) with ATI Radeon 9650 or better or NVIDIA GeForce 6800 GT DDL or better&lt;/li&gt;\r\n &lt;li&gt;\r\n  Power Mac G5 (PCI Express), all graphics options&lt;/li&gt;\r\n &lt;li&gt;\r\n  PowerBook G4 with dual-link DVI support&lt;/li&gt;\r\n &lt;li&gt;\r\n  Windows PC and graphics card that supports DVI ports with dual-link digital bandwidth and VESA DDC standard for plug-and-play setup&lt;/li&gt;\r\n&lt;/ul&gt;', '', '', '', '', ''),
(30, 1, 'Canon EOS 5D', '', '&lt;p&gt;\r\n Canon\'s press material for the EOS 5D states that it \'defines (a) new D-SLR category\', while we\'re not typically too concerned with marketing talk this particular statement is clearly pretty accurate. The EOS 5D is unlike any previous digital SLR in that it combines a full-frame (35 mm sized) high resolution sensor (12.8 megapixels) with a relatively compact body (slightly larger than the EOS 20D, although in your hand it feels noticeably \'chunkier\'). The EOS 5D is aimed to slot in between the EOS 20D and the EOS-1D professional digital SLR\'s, an important difference when compared to the latter is that the EOS 5D doesn\'t have any environmental seals. While Canon don\'t specifically refer to the EOS 5D as a \'professional\' digital SLR it will have obvious appeal to professionals who want a high quality digital SLR in a body lighter than the EOS-1D. It will also no doubt appeal to current EOS 20D owners (although lets hope they\'ve not bought too many EF-S lenses...) äë&lt;/p&gt;\r\n', '', '', '', '', ''),
(47, 1, 'HP LP3065', '', '&lt;p&gt;\r\n Stop your co-workers in their tracks with the stunning new 30-inch diagonal HP LP3065 Flat Panel Monitor. This flagship monitor features best-in-class performance and presentation features on a huge wide-aspect screen while letting you work as comfortably as possible - you might even forget you&amp;#39;re at the office&lt;/p&gt;\r\n', '', '', '', '', ''),
(28, 1, 'HTC Touch HD', '', '&lt;p&gt;\r\n HTC Touch - in High Definition. Watch music videos and streaming content in awe-inspiring high definition clarity for a mobile experience you never thought possible. Seductively sleek, the HTC Touch HD provides the next generation of mobile functionality, all at a simple touch. Fully integrated with Windows Mobile Professional 6.1, ultrafast 3.5G, GPS, 5MP camera, plus lots more - all delivered on a breathtakingly crisp 3.8&amp;quot; WVGA touchscreen - you can take control of your mobile world with the HTC Touch HD.&lt;/p&gt;\r\n&lt;p&gt;\r\n &lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n &lt;li&gt;\r\n  Processor Qualcomm&amp;reg; MSM 7201A&amp;trade; 528 MHz&lt;/li&gt;\r\n &lt;li&gt;\r\n  Windows Mobile&amp;reg; 6.1 Professional Operating System&lt;/li&gt;\r\n &lt;li&gt;\r\n  Memory: 512 MB ROM, 288 MB RAM&lt;/li&gt;\r\n &lt;li&gt;\r\n  Dimensions: 115 mm x 62.8 mm x 12 mm / 146.4 grams&lt;/li&gt;\r\n &lt;li&gt;\r\n  3.8-inch TFT-LCD flat touch-sensitive screen with 480 x 800 WVGA resolution&lt;/li&gt;\r\n &lt;li&gt;\r\n  HSDPA/WCDMA: Europe/Asia: 900/2100 MHz; Up to 2 Mbps up-link and 7.2 Mbps down-link speeds&lt;/li&gt;\r\n &lt;li&gt;\r\n  Quad-band GSM/GPRS/EDGE: Europe/Asia: 850/900/1800/1900 MHz (Band frequency, HSUPA availability, and data speed are operator dependent.)&lt;/li&gt;\r\n &lt;li&gt;\r\n  Device Control via HTC TouchFLO&amp;trade; 3D &amp;amp; Touch-sensitive front panel buttons&lt;/li&gt;\r\n &lt;li&gt;\r\n  GPS and A-GPS ready&lt;/li&gt;\r\n &lt;li&gt;\r\n  Bluetooth&amp;reg; 2.0 with Enhanced Data Rate and A2DP for wireless stereo headsets&lt;/li&gt;\r\n &lt;li&gt;\r\n  Wi-Fi&amp;reg;: IEEE 802.11 b/g&lt;/li&gt;\r\n &lt;li&gt;\r\n  HTC ExtUSB&amp;trade; (11-pin mini-USB 2.0)&lt;/li&gt;\r\n &lt;li&gt;\r\n  5 megapixel color camera with auto focus&lt;/li&gt;\r\n &lt;li&gt;\r\n  VGA CMOS color camera&lt;/li&gt;\r\n &lt;li&gt;\r\n  Built-in 3.5 mm audio jack, microphone, speaker, and FM radio&lt;/li&gt;\r\n &lt;li&gt;\r\n  Ring tone formats: AAC, AAC+, eAAC+, AMR-NB, AMR-WB, QCP, MP3, WMA, WAV&lt;/li&gt;\r\n &lt;li&gt;\r\n  40 polyphonic and standard MIDI format 0 and 1 (SMF)/SP MIDI&lt;/li&gt;\r\n &lt;li&gt;\r\n  Rechargeable Lithium-ion or Lithium-ion polymer 1350 mAh battery&lt;/li&gt;\r\n &lt;li&gt;\r\n  Expansion Slot: microSD&amp;trade; memory card (SD 2.0 compatible)&lt;/li&gt;\r\n &lt;li&gt;\r\n  AC Adapter Voltage range/frequency: 100 ~ 240V AC, 50/60 Hz DC output: 5V and 1A&lt;/li&gt;\r\n &lt;li&gt;\r\n  Special Features: FM Radio, G-Sensor&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', '', '', '', '', ''),
(41, 1, 'iMac', '', '&lt;div&gt;\r\n Just when you thought iMac had everything, now there´s even more. More powerful Intel Core 2 Duo processors. And more memory standard. Combine this with Mac OS X Leopard and iLife ´08, and it´s more all-in-one than ever. iMac packs amazing performance into a stunningly slim space.&lt;/div&gt;\r\n', '', '', '', '', ''),
(40, 1, 'iPhone', '', '&lt;p class=&quot;intro&quot;&gt;\r\n iPhone is a revolutionary new mobile phone that allows you to make a call by simply tapping a name or number in your address book, a favorites list, or a call log. It also automatically syncs all your contacts from a PC, Mac, or Internet service. And it lets you select and listen to voicemail messages in whatever order you want just like email.&lt;/p&gt;\r\n', '', '', '', '', ''),
(48, 1, 'iPod Classic', '', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n &lt;div&gt;\r\n  &lt;p&gt;\r\n   &lt;strong&gt;More room to move.&lt;/strong&gt;&lt;/p&gt;\r\n  &lt;p&gt;\r\n   With 80GB or 160GB of storage and up to 40 hours of battery life, the new iPod classic lets you enjoy up to 40,000 songs or up to 200 hours of video or any combination wherever you go.&lt;/p&gt;\r\n  &lt;p&gt;\r\n   &lt;strong&gt;Cover Flow.&lt;/strong&gt;&lt;/p&gt;\r\n  &lt;p&gt;\r\n   Browse through your music collection by flipping through album art. Select an album to turn it over and see the track list.&lt;/p&gt;\r\n  &lt;p&gt;\r\n   &lt;strong&gt;Enhanced interface.&lt;/strong&gt;&lt;/p&gt;\r\n  &lt;p&gt;\r\n   Experience a whole new way to browse and view your music and video.&lt;/p&gt;\r\n  &lt;p&gt;\r\n   &lt;strong&gt;Sleeker design.&lt;/strong&gt;&lt;/p&gt;\r\n  &lt;p&gt;\r\n   Beautiful, durable, and sleeker than ever, iPod classic now features an anodized aluminum and polished stainless steel enclosure with rounded edges.&lt;/p&gt;\r\n &lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', '', '', '', '', ''),
(36, 1, 'iPod Nano', '', '&lt;div&gt;\r\n &lt;p&gt;\r\n  &lt;strong&gt;Video in your pocket.&lt;/strong&gt;&lt;/p&gt;\r\n &lt;p&gt;\r\n  Its the small iPod with one very big idea: video. The worlds most popular music player now lets you enjoy movies, TV shows, and more on a two-inch display thats 65% brighter than before.&lt;/p&gt;\r\n &lt;p&gt;\r\n  &lt;strong&gt;Cover Flow.&lt;/strong&gt;&lt;/p&gt;\r\n &lt;p&gt;\r\n  Browse through your music collection by flipping through album art. Select an album to turn it over and see the track list.&lt;strong&gt;&amp;nbsp;&lt;/strong&gt;&lt;/p&gt;\r\n &lt;p&gt;\r\n  &lt;strong&gt;Enhanced interface.&lt;/strong&gt;&lt;/p&gt;\r\n &lt;p&gt;\r\n  Experience a whole new way to browse and view your music and video.&lt;/p&gt;\r\n &lt;p&gt;\r\n  &lt;strong&gt;Sleek and colorful.&lt;/strong&gt;&lt;/p&gt;\r\n &lt;p&gt;\r\n  With an anodized aluminum and polished stainless steel enclosure and a choice of five colors, iPod nano is dressed to impress.&lt;/p&gt;\r\n &lt;p&gt;\r\n  &lt;strong&gt;iTunes.&lt;/strong&gt;&lt;/p&gt;\r\n &lt;p&gt;\r\n  Available as a free download, iTunes makes it easy to browse and buy millions of songs, movies, TV shows, audiobooks, and games and download free podcasts all at the iTunes Store. And you can import your own music, manage your whole media library, and sync your iPod or iPhone with ease.&lt;/p&gt;\r\n&lt;/div&gt;\r\n', '', '', '', '', ''),
(34, 1, 'iPod Shuffle', '', '&lt;div&gt;\r\n &lt;strong&gt;Born to be worn.&lt;/strong&gt;\r\n &lt;p&gt;\r\n  Clip on the worlds most wearable music player and take up to 240 songs with you anywhere. Choose from five colors including four new hues to make your musical fashion statement.&lt;/p&gt;\r\n &lt;p&gt;\r\n  &lt;strong&gt;Random meets rhythm.&lt;/strong&gt;&lt;/p&gt;\r\n &lt;p&gt;\r\n  With iTunes autofill, iPod shuffle can deliver a new musical experience every time you sync. For more randomness, you can shuffle songs during playback with the slide of a switch.&lt;/p&gt;\r\n &lt;strong&gt;Everything is easy.&lt;/strong&gt;\r\n &lt;p&gt;\r\n  Charge and sync with the included USB dock. Operate the iPod shuffle controls with one hand. Enjoy up to 12 hours straight of skip-free music playback.&lt;/p&gt;\r\n&lt;/div&gt;\r\n', '', '', '', '', ''),
(32, 1, 'iPod Touch', '', '&lt;p&gt;\r\n &lt;strong&gt;Revolutionary multi-touch interface.&lt;/strong&gt;&lt;br /&gt;\r\n iPod touch features the same multi-touch screen technology as iPhone. Pinch to zoom in on a photo. Scroll through your songs and videos with a flick. Flip through your library by album artwork with Cover Flow.&lt;/p&gt;\r\n&lt;p&gt;\r\n &lt;strong&gt;Gorgeous 3.5-inch widescreen display.&lt;/strong&gt;&lt;br /&gt;\r\n Watch your movies, TV shows, and photos come alive with bright, vivid color on the 320-by-480-pixel display.&lt;/p&gt;\r\n&lt;p&gt;\r\n &lt;strong&gt;Music downloads straight from iTunes.&lt;/strong&gt;&lt;br /&gt;\r\n Shop the iTunes Wi-Fi Music Store from anywhere with Wi-Fi.1 Browse or search to find the music youre looking for, preview it, and buy it with just a tap.&lt;/p&gt;\r\n&lt;p&gt;\r\n &lt;strong&gt;Surf the web with Wi-Fi.&lt;/strong&gt;&lt;br /&gt;\r\n Browse the web using Safari and watch YouTube videos on the first iPod with Wi-Fi built in&lt;br /&gt;\r\n &amp;nbsp;&lt;/p&gt;\r\n', '', '', '', '', ''),
(43, 1, 'MacBook', '', '&lt;div&gt;\r\n &lt;p&gt;\r\n  &lt;b&gt;Intel Core 2 Duo processor&lt;/b&gt;&lt;/p&gt;\r\n &lt;p&gt;\r\n  Powered by an Intel Core 2 Duo processor at speeds up to 2.16GHz, the new MacBook is the fastest ever.&lt;/p&gt;\r\n &lt;p&gt;\r\n  &lt;b&gt;1GB memory, larger hard drives&lt;/b&gt;&lt;/p&gt;\r\n &lt;p&gt;\r\n  The new MacBook now comes with 1GB of memory standard and larger hard drives for the entire line perfect for running more of your favorite applications and storing growing media collections.&lt;/p&gt;\r\n &lt;p&gt;\r\n  &lt;b&gt;Sleek, 1.08-inch-thin design&lt;/b&gt;&lt;/p&gt;\r\n &lt;p&gt;\r\n  MacBook makes it easy to hit the road thanks to its tough polycarbonate case, built-in wireless technologies, and innovative MagSafe Power Adapter that releases automatically if someone accidentally trips on the cord.&lt;/p&gt;\r\n &lt;p&gt;\r\n  &lt;b&gt;Built-in iSight camera&lt;/b&gt;&lt;/p&gt;\r\n &lt;p&gt;\r\n  Right out of the box, you can have a video chat with friends or family,2 record a video at your desk, or take fun pictures with Photo Booth&lt;/p&gt;\r\n&lt;/div&gt;\r\n', '', '', '', '', ''),
(44, 1, 'MacBook Air', '', '&lt;div&gt;\r\n MacBook Air is ultrathin, ultraportable, and ultra unlike anything else. But you don&amp;rsquo;t lose inches and pounds overnight. It&amp;rsquo;s the result of rethinking conventions. Of multiple wireless innovations. And of breakthrough design. With MacBook Air, mobile computing suddenly has a new standard.&lt;/div&gt;\r\n', '', '', '', '', ''),
(45, 1, 'MacBook Pro', '', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n &lt;div&gt;\r\n  &lt;p&gt;\r\n   &lt;b&gt;Latest Intel mobile architecture&lt;/b&gt;&lt;/p&gt;\r\n  &lt;p&gt;\r\n   Powered by the most advanced mobile processors from Intel, the new Core 2 Duo MacBook Pro is over 50% faster than the original Core Duo MacBook Pro and now supports up to 4GB of RAM.&lt;/p&gt;\r\n  &lt;p&gt;\r\n   &lt;b&gt;Leading-edge graphics&lt;/b&gt;&lt;/p&gt;\r\n  &lt;p&gt;\r\n   The NVIDIA GeForce 8600M GT delivers exceptional graphics processing power. For the ultimate creative canvas, you can even configure the 17-inch model with a 1920-by-1200 resolution display.&lt;/p&gt;\r\n  &lt;p&gt;\r\n   &lt;b&gt;Designed for life on the road&lt;/b&gt;&lt;/p&gt;\r\n  &lt;p&gt;\r\n   Innovations such as a magnetic power connection and an illuminated keyboard with ambient light sensor put the MacBook Pro in a class by itself.&lt;/p&gt;\r\n  &lt;p&gt;\r\n   &lt;b&gt;Connect. Create. Communicate.&lt;/b&gt;&lt;/p&gt;\r\n  &lt;p&gt;\r\n   Quickly set up a video conference with the built-in iSight camera. Control presentations and media from up to 30 feet away with the included Apple Remote. Connect to high-bandwidth peripherals with FireWire 800 and DVI.&lt;/p&gt;\r\n  &lt;p&gt;\r\n   &lt;b&gt;Next-generation wireless&lt;/b&gt;&lt;/p&gt;\r\n  &lt;p&gt;\r\n   Featuring 802.11n wireless technology, the MacBook Pro delivers up to five times the performance and up to twice the range of previous-generation technologies.&lt;/p&gt;\r\n &lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', '', '', '', '', ''),
(31, 1, 'Nikon D300', '', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n &lt;div&gt;\r\n  Engineered with pro-level features and performance, the 12.3-effective-megapixel D300 combines brand new technologies with advanced features inherited from Nikon&amp;#39;s newly announced D3 professional digital SLR camera to offer serious photographers remarkable performance combined with agility.&lt;br /&gt;\r\n  &lt;br /&gt;\r\n  Similar to the D3, the D300 features Nikon&amp;#39;s exclusive EXPEED Image Processing System that is central to driving the speed and processing power needed for many of the camera&amp;#39;s new features. The D300 features a new 51-point autofocus system with Nikon&amp;#39;s 3D Focus Tracking feature and two new LiveView shooting modes that allow users to frame a photograph using the camera&amp;#39;s high-resolution LCD monitor. The D300 shares a similar Scene Recognition System as is found in the D3; it promises to greatly enhance the accuracy of autofocus, autoexposure, and auto white balance by recognizing the subject or scene being photographed and applying this information to the calculations for the three functions.&lt;br /&gt;\r\n  &lt;br /&gt;\r\n  The D300 reacts with lightning speed, powering up in a mere 0.13 seconds and shooting with an imperceptible 45-millisecond shutter release lag time. The D300 is capable of shooting at a rapid six frames per second and can go as fast as eight frames per second when using the optional MB-D10 multi-power battery pack. In continuous bursts, the D300 can shoot up to 100 shots at full 12.3-megapixel resolution. (NORMAL-LARGE image setting, using a SanDisk Extreme IV 1GB CompactFlash card.)&lt;br /&gt;\r\n  &lt;br /&gt;\r\n  The D300 incorporates a range of innovative technologies and features that will significantly improve the accuracy, control, and performance photographers can get from their equipment. Its new Scene Recognition System advances the use of Nikon&amp;#39;s acclaimed 1,005-segment sensor to recognize colors and light patterns that help the camera determine the subject and the type of scene being photographed before a picture is taken. This information is used to improve the accuracy of autofocus, autoexposure, and auto white balance functions in the D300. For example, the camera can track moving subjects better and by identifying them, it can also automatically select focus points faster and with greater accuracy. It can also analyze highlights and more accurately determine exposure, as well as infer light sources to deliver more accurate white balance detection.&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', '', '', '', '', ''),
(29, 1, 'Palm Treo Pro', '', '&lt;p&gt;\r\n Redefine your workday with the Palm Treo Pro smartphone. Perfectly balanced, you can respond to business and personal email, stay on top of appointments and contacts, and use Wi-Fi or GPS when you&amp;rsquo;re out and about. Then watch a video on YouTube, catch up with news and sports on the web, or listen to a few songs. Balance your work and play the way you like it, with the Palm Treo Pro.&lt;/p&gt;\r\n&lt;p&gt;\r\n &lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n &lt;li&gt;\r\n  Windows Mobile&amp;reg; 6.1 Professional Edition&lt;/li&gt;\r\n &lt;li&gt;\r\n  Qualcomm&amp;reg; MSM7201 400MHz Processor&lt;/li&gt;\r\n &lt;li&gt;\r\n  320x320 transflective colour TFT touchscreen&lt;/li&gt;\r\n &lt;li&gt;\r\n  HSDPA/UMTS/EDGE/GPRS/GSM radio&lt;/li&gt;\r\n &lt;li&gt;\r\n  Tri-band UMTS &amp;mdash; 850MHz, 1900MHz, 2100MHz&lt;/li&gt;\r\n &lt;li&gt;\r\n  Quad-band GSM &amp;mdash; 850/900/1800/1900&lt;/li&gt;\r\n &lt;li&gt;\r\n  802.11b/g with WPA, WPA2, and 801.1x authentication&lt;/li&gt;\r\n &lt;li&gt;\r\n  Built-in GPS&lt;/li&gt;\r\n &lt;li&gt;\r\n  Bluetooth Version: 2.0 + Enhanced Data Rate&lt;/li&gt;\r\n &lt;li&gt;\r\n  256MB storage (100MB user available), 128MB RAM&lt;/li&gt;\r\n &lt;li&gt;\r\n  2.0 megapixel camera, up to 8x digital zoom and video capture&lt;/li&gt;\r\n &lt;li&gt;\r\n  Removable, rechargeable 1500mAh lithium-ion battery&lt;/li&gt;\r\n &lt;li&gt;\r\n  Up to 5.0 hours talk time and up to 250 hours standby&lt;/li&gt;\r\n &lt;li&gt;\r\n  MicroSDHC card expansion (up to 32GB supported)&lt;/li&gt;\r\n &lt;li&gt;\r\n  MicroUSB 2.0 for synchronization and charging&lt;/li&gt;\r\n &lt;li&gt;\r\n  3.5mm stereo headset jack&lt;/li&gt;\r\n &lt;li&gt;\r\n  60mm (W) x 114mm (L) x 13.5mm (D) / 133g&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', '', '', '', '', ''),
(35, 1, 'Product 8', '', '&lt;p&gt;\r\n Product 8&lt;/p&gt;\r\n', '', '', '', '', ''),
(49, 1, 'Samsung Galaxy Tab 10.1', '', '&lt;p&gt;\r\n Samsung Galaxy Tab 10.1, is the world&amp;rsquo;s thinnest tablet, measuring 8.6 mm thickness, running with Android 3.0 Honeycomb OS on a 1GHz dual-core Tegra 2 processor, similar to its younger brother Samsung Galaxy Tab 8.9.&lt;/p&gt;\r\n&lt;p&gt;\r\n Samsung Galaxy Tab 10.1 gives pure Android 3.0 experience, adding its new TouchWiz UX or TouchWiz 4.0 &amp;ndash; includes a live panel, which lets you to customize with different content, such as your pictures, bookmarks, and social feeds, sporting a 10.1 inches WXGA capacitive touch screen with 1280 x 800 pixels of resolution, equipped with 3 megapixel rear camera with LED flash and a 2 megapixel front camera, HSPA+ connectivity up to 21Mbps, 720p HD video recording capability, 1080p HD playback, DLNA support, Bluetooth 2.1, USB 2.0, gyroscope, Wi-Fi 802.11 a/b/g/n, micro-SD slot, 3.5mm headphone jack, and SIM slot, including the Samsung Stick &amp;ndash; a Bluetooth microphone that can be carried in a pocket like a pen and sound dock with powered subwoofer.&lt;/p&gt;\r\n&lt;p&gt;\r\n Samsung Galaxy Tab 10.1 will come in 16GB / 32GB / 64GB verities and pre-loaded with Social Hub, Reader&amp;rsquo;s Hub, Music Hub and Samsung Mini Apps Tray &amp;ndash; which gives you access to more commonly used apps to help ease multitasking and it is capable of Adobe Flash Player 10.2, powered by 6860mAh battery that gives you 10hours of video-playback time.&amp;nbsp;&amp;auml;&amp;ouml;&lt;/p&gt;\r\n', '', '', '', '', ''),
(33, 1, 'Samsung SyncMaster 941BW', '', '&lt;div&gt;\r\n Imagine the advantages of going big without slowing down. The big 19&amp;quot; 941BW monitor combines wide aspect ratio with fast pixel response time, for bigger images, more room to work and crisp motion. In addition, the exclusive MagicBright 2, MagicColor and MagicTune technologies help deliver the ideal image in every situation, while sleek, narrow bezels and adjustable stands deliver style just the way you want it. With the Samsung 941BW widescreen analog/digital LCD monitor, it&amp;#39;s not hard to imagine.&lt;/div&gt;\r\n', '', '', '', '', ''),
(46, 1, 'Sony VAIO', '', '&lt;div&gt;\r\n Unprecedented power. The next generation of processing technology has arrived. Built into the newest VAIO notebooks lies Intel&amp;#39;s latest, most powerful innovation yet: Intel&amp;reg; Centrino&amp;reg; 2 processor technology. Boasting incredible speed, expanded wireless connectivity, enhanced multimedia support and greater energy efficiency, all the high-performance essentials are seamlessly combined into a single chip.&lt;/div&gt;\r\n', '', '', '', '', ''),
(30, 2, 'Canon EOS 5D', '', '&lt;p&gt;Canon\'s press material for the EOS 5D states that it \'defines (a) new \r\nD-SLR category\', while we\'re not typically too concerned with marketing \r\ntalk this particular statement is clearly pretty accurate. The EOS 5D is\r\n unlike any previous digital SLR in that it combines a full-frame (35 mm\r\n sized) high resolution sensor (12.8 megapixels) with a relatively \r\ncompact body (slightly larger than the EOS 20D, although in your hand it\r\n feels noticeably \'chunkier\'). The EOS 5D is aimed to slot in between \r\nthe EOS 20D and the EOS-1D professional digital SLR\'s, an important \r\ndifference when compared to the latter is that the EOS 5D doesn\'t have \r\nany environmental seals. While Canon don\'t specifically refer to the EOS\r\n 5D as a \'professional\' digital SLR it will have obvious appeal to \r\nprofessionals who want a high quality digital SLR in a body lighter than\r\n the EOS-1D. It will also no doubt appeal to current EOS 20D owners \r\n(although lets hope they\'ve not bought too many EF-S lenses...) äë&lt;br&gt;&lt;/p&gt;', '', '', '', '', ''),
(47, 2, 'HP LP3065', '', '&lt;p&gt;Stop your co-workers in their tracks with the stunning new 30-inch \r\ndiagonal HP LP3065 Flat Panel Monitor. This flagship monitor features \r\nbest-in-class performance and presentation features on a huge \r\nwide-aspect screen while letting you work as comfortably as possible - \r\nyou might even forget you\'re at the office&lt;br&gt;&lt;/p&gt;', '', '', '', '', ''),
(28, 2, 'HTC Touch HD', '', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;\r\n HTC Touch - in High Definition. Watch music videos and streaming \r\ncontent in awe-inspiring high definition clarity for a mobile experience\r\n you never thought possible. Seductively sleek, the HTC Touch HD \r\nprovides the next generation of mobile functionality, all at a simple \r\ntouch. Fully integrated with Windows Mobile Professional 6.1, ultrafast \r\n3.5G, GPS, 5MP camera, plus lots more - all delivered on a \r\nbreathtakingly crisp 3.8&quot; WVGA touchscreen - you can take control of \r\nyour mobile world with the HTC Touch HD.&lt;/p&gt;&lt;p&gt;\r\n&lt;br&gt;&lt;/p&gt;&lt;p&gt;\r\n &lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;\r\n&lt;br&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;\r\n  Processor Qualcomm® MSM 7201A™ 528 MHz&lt;/li&gt;&lt;li&gt;\r\n  Windows Mobile® 6.1 Professional Operating System&lt;/li&gt;&lt;li&gt;\r\n  Memory: 512 MB ROM, 288 MB RAM&lt;/li&gt;&lt;li&gt;\r\n  Dimensions: 115 mm x 62.8 mm x 12 mm / 146.4 grams&lt;/li&gt;&lt;li&gt;\r\n  3.8-inch TFT-LCD flat touch-sensitive screen with 480 x 800 WVGA resolution&lt;/li&gt;&lt;li&gt;\r\n  HSDPA/WCDMA: Europe/Asia: 900/2100 MHz; Up to 2 Mbps up-link and 7.2 Mbps down-link speeds&lt;/li&gt;&lt;li&gt;\r\n  Quad-band GSM/GPRS/EDGE: Europe/Asia: 850/900/1800/1900 MHz (Band \r\nfrequency, HSUPA availability, and data speed are operator dependent.)&lt;/li&gt;&lt;li&gt;\r\n  Device Control via HTC TouchFLO™ 3D &amp;amp; Touch-sensitive front panel buttons&lt;/li&gt;&lt;li&gt;\r\n  GPS and A-GPS ready&lt;/li&gt;&lt;li&gt;\r\n  Bluetooth® 2.0 with Enhanced Data Rate and A2DP for wireless stereo headsets&lt;/li&gt;&lt;li&gt;\r\n  Wi-Fi®: IEEE 802.11 b/g&lt;/li&gt;&lt;li&gt;\r\n  HTC ExtUSB™ (11-pin mini-USB 2.0)&lt;/li&gt;&lt;li&gt;\r\n  5 megapixel color camera with auto focus&lt;/li&gt;&lt;li&gt;\r\n  VGA CMOS color camera&lt;/li&gt;&lt;li&gt;\r\n  Built-in 3.5 mm audio jack, microphone, speaker, and FM radio&lt;/li&gt;&lt;li&gt;\r\n  Ring tone formats: AAC, AAC+, eAAC+, AMR-NB, AMR-WB, QCP, MP3, WMA, WAV&lt;/li&gt;&lt;li&gt;\r\n  40 polyphonic and standard MIDI format 0 and 1 (SMF)/SP MIDI&lt;/li&gt;&lt;li&gt;\r\n  Rechargeable Lithium-ion or Lithium-ion polymer 1350 mAh battery&lt;/li&gt;&lt;li&gt;\r\n  Expansion Slot: microSD™ memory card (SD 2.0 compatible)&lt;/li&gt;&lt;li&gt;\r\n  AC Adapter Voltage range/frequency: 100 ~ 240V AC, 50/60 Hz DC output: 5V and 1A&lt;/li&gt;&lt;li&gt;\r\n  Special Features: FM Radio, G-Sensor&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '', '', ''),
(41, 2, 'iMac', '', '&lt;p&gt;Just when you thought iMac had everything, now there´s even more. More \r\npowerful Intel Core 2 Duo processors. And more memory standard. Combine \r\nthis with Mac OS X Leopard and iLife ´08, and it´s more all-in-one than \r\never. iMac packs amazing performance into a stunningly slim space.&lt;br&gt;&lt;/p&gt;', '', '', '', '', ''),
(40, 2, 'iPhone', '', '&lt;p&gt;iPhone is a revolutionary new mobile phone that allows you to make a \r\ncall by simply tapping a name or number in your address book, a \r\nfavorites list, or a call log. It also automatically syncs all your \r\ncontacts from a PC, Mac, or Internet service. And it lets you select and\r\n listen to voicemail messages in whatever order you want just like \r\nemail.&lt;br&gt;&lt;/p&gt;', '', '', '', '', ''),
(48, 2, 'iPod Classic', '', '&lt;p&gt;&lt;strong&gt;More room to move.&lt;/strong&gt;\r\n  &lt;/p&gt;&lt;div class=&quot;cpt_product_description &quot;&gt;&lt;div&gt;&lt;p&gt;\r\n   With 80GB or 160GB of storage and up to 40 hours of battery life, the\r\n new iPod classic lets you enjoy up to 40,000 songs or up to 200 hours \r\nof video or any combination wherever you go.&lt;/p&gt;\r\n  &lt;p&gt;\r\n   &lt;strong&gt;Cover Flow.&lt;/strong&gt;&lt;/p&gt;\r\n  &lt;p&gt;\r\n   Browse through your music collection by flipping through album art. Select an album to turn it over and see the track list.&lt;/p&gt;\r\n  &lt;p&gt;\r\n   &lt;strong&gt;Enhanced interface.&lt;/strong&gt;&lt;/p&gt;\r\n  &lt;p&gt;\r\n   Experience a whole new way to browse and view your music and video.&lt;/p&gt;\r\n  &lt;p&gt;\r\n   &lt;strong&gt;Sleeker design.&lt;/strong&gt;&lt;/p&gt;\r\n  &lt;p&gt;\r\n   Beautiful, durable, and sleeker than ever, iPod classic now features \r\nan anodized aluminum and polished stainless steel enclosure with rounded\r\n edges.&lt;/p&gt;\r\n &lt;/div&gt;\r\n&lt;/div&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '', '', '');
INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `short_description`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`, `meta_h1`) VALUES
(36, 2, 'iPod Nano', '', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;\r\n  &lt;strong&gt;Video in your pocket.&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;\r\n &lt;br&gt;&lt;/p&gt;&lt;p&gt;\r\n  Its the small iPod with one very big idea: video. The worlds most \r\npopular music player now lets you enjoy movies, TV shows, and more on a \r\ntwo-inch display thats 65% brighter than before.&lt;/p&gt;&lt;p&gt;\r\n &lt;br&gt;&lt;/p&gt;&lt;p&gt;\r\n  &lt;strong&gt;Cover Flow.&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;\r\n &lt;br&gt;&lt;/p&gt;&lt;p&gt;\r\n  Browse through your music collection by flipping through album art. Select an album to turn it over and see the track list.&lt;strong&gt;&amp;nbsp;&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;\r\n &lt;br&gt;&lt;/p&gt;&lt;p&gt;\r\n  &lt;strong&gt;Enhanced interface.&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;\r\n &lt;br&gt;&lt;/p&gt;&lt;p&gt;\r\n  Experience a whole new way to browse and view your music and video.&lt;/p&gt;&lt;p&gt;\r\n &lt;br&gt;&lt;/p&gt;&lt;p&gt;\r\n  &lt;strong&gt;Sleek and colorful.&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;\r\n &lt;br&gt;&lt;/p&gt;&lt;p&gt;\r\n  With an anodized aluminum and polished stainless steel enclosure and a choice of five colors, iPod nano is dressed to impress.&lt;/p&gt;&lt;p&gt;\r\n &lt;br&gt;&lt;/p&gt;&lt;p&gt;\r\n  &lt;strong&gt;iTunes.&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '', '', ''),
(34, 2, 'iPod Shuffle', '', '&lt;p&gt;&lt;strong&gt;Born to be worn.&lt;/strong&gt;\r\n &lt;/p&gt;&lt;div&gt;&lt;p&gt;\r\n  Clip on the worlds most wearable music player and take up to 240 songs\r\n with you anywhere. Choose from five colors including four new hues to \r\nmake your musical fashion statement.&lt;/p&gt;\r\n &lt;p&gt;\r\n  &lt;strong&gt;Random meets rhythm.&lt;/strong&gt;&lt;/p&gt;\r\n &lt;p&gt;\r\n  With iTunes autofill, iPod shuffle can deliver a new musical \r\nexperience every time you sync. For more randomness, you can shuffle \r\nsongs during playback with the slide of a switch.&lt;/p&gt;\r\n &lt;strong&gt;Everything is easy.&lt;/strong&gt;\r\n &lt;p&gt;\r\n  Charge and sync with the included USB dock. Operate the iPod shuffle \r\ncontrols with one hand. Enjoy up to 12 hours straight of skip-free music\r\n playback.&lt;/p&gt;\r\n&lt;/div&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '', '', ''),
(32, 2, 'iPod Touch', '', '&lt;p&gt;&lt;strong&gt;Revolutionary multi-touch interface.&lt;/strong&gt;&lt;br&gt;\r\n iPod touch features the same multi-touch screen technology as iPhone. \r\nPinch to zoom in on a photo. Scroll through your songs and videos with a\r\n flick. Flip through your library by album artwork with Cover Flow.&lt;/p&gt;&lt;p&gt;\r\n&lt;br&gt;&lt;/p&gt;&lt;p&gt;\r\n &lt;strong&gt;Gorgeous 3.5-inch widescreen display.&lt;/strong&gt;&lt;br&gt;\r\n Watch your movies, TV shows, and photos come alive with bright, vivid color on the 320-by-480-pixel display.&lt;/p&gt;&lt;p&gt;\r\n&lt;br&gt;&lt;/p&gt;&lt;p&gt;\r\n &lt;strong&gt;Music downloads straight from iTunes.&lt;/strong&gt;&lt;br&gt;\r\n Shop the iTunes Wi-Fi Music Store from anywhere with Wi-Fi.1 Browse or \r\nsearch to find the music youre looking for, preview it, and buy it with \r\njust a tap.&lt;/p&gt;&lt;p&gt;\r\n\r\n &lt;strong&gt;Surf the web with Wi-Fi.&lt;/strong&gt;&lt;br&gt;\r\n Browse the web using Safari and watch YouTube videos on the first iPod with Wi-Fi built in&lt;br&gt;&lt;/p&gt;', '', '', '', '', ''),
(43, 2, 'MacBook', '', '&lt;p&gt;&lt;b&gt;Intel Core 2 Duo processor&lt;/b&gt;\r\n &lt;/p&gt;&lt;div&gt;&lt;p&gt;\r\n  Powered by an Intel Core 2 Duo processor at speeds up to 2.16GHz, the new MacBook is the fastest ever.&lt;/p&gt;\r\n &lt;p&gt;\r\n  &lt;b&gt;1GB memory, larger hard drives&lt;/b&gt;&lt;/p&gt;\r\n &lt;p&gt;\r\n  The new MacBook now comes with 1GB of memory standard and larger hard \r\ndrives for the entire line perfect for running more of your favorite \r\napplications and storing growing media collections.&lt;/p&gt;\r\n &lt;p&gt;\r\n  &lt;b&gt;Sleek, 1.08-inch-thin design&lt;/b&gt;&lt;/p&gt;\r\n &lt;p&gt;\r\n  MacBook makes it easy to hit the road thanks to its tough \r\npolycarbonate case, built-in wireless technologies, and innovative \r\nMagSafe Power Adapter that releases automatically if someone \r\naccidentally trips on the cord.&lt;/p&gt;\r\n &lt;p&gt;\r\n  &lt;b&gt;Built-in iSight camera&lt;/b&gt;&lt;/p&gt;\r\n &lt;p&gt;\r\n  Right out of the box, you can have a video chat with friends or \r\nfamily,2 record a video at your desk, or take fun pictures with Photo \r\nBooth&lt;/p&gt;\r\n&lt;/div&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '', '', ''),
(44, 2, 'MacBook Air', '', '&lt;p&gt;MacBook Air is ultrathin, ultraportable, and ultra unlike anything else.\r\n But you don’t lose inches and pounds overnight. It’s the result of \r\nrethinking conventions. Of multiple wireless innovations. And of \r\nbreakthrough design. With MacBook Air, mobile computing suddenly has a \r\nnew standard.&lt;br&gt;&lt;/p&gt;', '', '', '', '', ''),
(45, 2, 'MacBook Pro', '', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n &lt;div&gt;\r\n  &lt;p&gt;\r\n   &lt;b&gt;Latest Intel mobile architecture&lt;/b&gt;&lt;/p&gt;\r\n  &lt;p&gt;\r\n   Powered by the most advanced mobile processors from Intel, the new \r\nCore 2 Duo MacBook Pro is over 50% faster than the original Core Duo \r\nMacBook Pro and now supports up to 4GB of RAM.&lt;/p&gt;\r\n  &lt;p&gt;\r\n   &lt;b&gt;Leading-edge graphics&lt;/b&gt;&lt;/p&gt;\r\n  &lt;p&gt;\r\n   The NVIDIA GeForce 8600M GT delivers exceptional graphics processing \r\npower. For the ultimate creative canvas, you can even configure the \r\n17-inch model with a 1920-by-1200 resolution display.&lt;/p&gt;\r\n  &lt;p&gt;\r\n   &lt;b&gt;Designed for life on the road&lt;/b&gt;&lt;/p&gt;\r\n  &lt;p&gt;\r\n   Innovations such as a magnetic power connection and an illuminated \r\nkeyboard with ambient light sensor put the MacBook Pro in a class by \r\nitself.&lt;/p&gt;\r\n  &lt;p&gt;\r\n   &lt;b&gt;Connect. Create. Communicate.&lt;/b&gt;&lt;/p&gt;\r\n  &lt;p&gt;\r\n   Quickly set up a video conference with the built-in iSight camera. \r\nControl presentations and media from up to 30 feet away with the \r\nincluded Apple Remote. Connect to high-bandwidth peripherals with \r\nFireWire 800 and DVI.&lt;/p&gt;\r\n  &lt;p&gt;\r\n   &lt;b&gt;Next-generation wireless&lt;/b&gt;&lt;/p&gt;\r\n  &lt;p&gt;\r\n   Featuring 802.11n wireless technology, the MacBook Pro delivers up to\r\n five times the performance and up to twice the range of \r\nprevious-generation technologies.&lt;/p&gt;\r\n &lt;/div&gt;\r\n&lt;/div&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '', '', ''),
(31, 2, 'Nikon D300', '', '&lt;p&gt;Engineered with pro-level features and performance, the \r\n12.3-effective-megapixel D300 combines brand new technologies with \r\nadvanced features inherited from Nikon\'s newly announced D3 professional\r\n digital SLR camera to offer serious photographers remarkable \r\nperformance combined with agility.&lt;br&gt;\r\n  &lt;br&gt;\r\n  Similar to the D3, the D300 features Nikon\'s exclusive EXPEED Image \r\nProcessing System that is central to driving the speed and processing \r\npower needed for many of the camera\'s new features. The D300 features a \r\nnew 51-point autofocus system with Nikon\'s 3D Focus Tracking feature and\r\n two new LiveView shooting modes that allow users to frame a photograph \r\nusing the camera\'s high-resolution LCD monitor. The D300 shares a \r\nsimilar Scene Recognition System as is found in the D3; it promises to \r\ngreatly enhance the accuracy of autofocus, autoexposure, and auto white \r\nbalance by recognizing the subject or scene being photographed and \r\napplying this information to the calculations for the three functions.&lt;br&gt;\r\n  &lt;br&gt;\r\n  The D300 reacts with lightning speed, powering up in a mere 0.13 \r\nseconds and shooting with an imperceptible 45-millisecond shutter \r\nrelease lag time. The D300 is capable of shooting at a rapid six frames \r\nper second and can go as fast as eight frames per second when using the \r\noptional MB-D10 multi-power battery pack. In continuous bursts, the D300\r\n can shoot up to 100 shots at full 12.3-megapixel resolution. \r\n(NORMAL-LARGE image setting, using a SanDisk Extreme IV 1GB CompactFlash\r\n card.)&lt;br&gt;\r\n  &lt;br&gt;\r\n  The D300 incorporates a range of innovative technologies and features \r\nthat will significantly improve the accuracy, control, and performance \r\nphotographers can get from their equipment. Its new Scene Recognition \r\nSystem advances the use of Nikon\'s acclaimed 1,005-segment sensor to \r\nrecognize colors and light patterns that help the camera determine the \r\nsubject and the type of scene being photographed before a picture is \r\ntaken. This information is used to improve the accuracy of autofocus, \r\nautoexposure, and auto white balance functions in the D300. For example,\r\n the camera can track moving subjects better and by identifying them, it\r\n can also automatically select focus points faster and with greater \r\naccuracy. It can also analyze highlights and more accurately determine \r\nexposure, as well as infer light sources to deliver more accurate white \r\nbalance detection.&lt;br&gt;&lt;/p&gt;', '', '', '', '', ''),
(29, 2, 'Palm Treo Pro', '', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;\r\n Redefine your workday with the Palm Treo Pro smartphone. Perfectly \r\nbalanced, you can respond to business and personal email, stay on top of\r\n appointments and contacts, and use Wi-Fi or GPS when you’re out and \r\nabout. Then watch a video on YouTube, catch up with news and sports on \r\nthe web, or listen to a few songs. Balance your work and play the way \r\nyou like it, with the Palm Treo Pro.&lt;/p&gt;&lt;p&gt;\r\n&lt;br&gt;&lt;/p&gt;&lt;p&gt;\r\n &lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;\r\n&lt;br&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;\r\n  Windows Mobile® 6.1 Professional Edition&lt;/li&gt;&lt;li&gt;\r\n  Qualcomm® MSM7201 400MHz Processor&lt;/li&gt;&lt;li&gt;\r\n  320x320 transflective colour TFT touchscreen&lt;/li&gt;&lt;li&gt;\r\n  HSDPA/UMTS/EDGE/GPRS/GSM radio&lt;/li&gt;&lt;li&gt;\r\n  Tri-band UMTS — 850MHz, 1900MHz, 2100MHz&lt;/li&gt;&lt;li&gt;\r\n  Quad-band GSM — 850/900/1800/1900&lt;/li&gt;&lt;li&gt;\r\n  802.11b/g with WPA, WPA2, and 801.1x authentication&lt;/li&gt;&lt;li&gt;\r\n  Built-in GPS&lt;/li&gt;&lt;li&gt;\r\n  Bluetooth Version: 2.0 + Enhanced Data Rate&lt;/li&gt;&lt;li&gt;\r\n  256MB storage (100MB user available), 128MB RAM&lt;/li&gt;&lt;li&gt;\r\n  2.0 megapixel camera, up to 8x digital zoom and video capture&lt;/li&gt;&lt;li&gt;\r\n  Removable, rechargeable 1500mAh lithium-ion battery&lt;/li&gt;&lt;li&gt;\r\n  Up to 5.0 hours talk time and up to 250 hours standby&lt;/li&gt;&lt;li&gt;\r\n  MicroSDHC card expansion (up to 32GB supported)&lt;/li&gt;&lt;li&gt;\r\n  MicroUSB 2.0 for synchronization and charging&lt;/li&gt;&lt;li&gt;\r\n  3.5mm stereo headset jack&lt;/li&gt;&lt;li&gt;\r\n  60mm (W) x 114mm (L) x 13.5mm (D) / 133g&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '', '', ''),
(35, 2, 'Product 8', '', '&lt;p&gt;Product 8&lt;br&gt;&lt;/p&gt;', '', '', '', '', ''),
(46, 2, 'Sony VAIO', '', '&lt;p&gt;Unprecedented power. The next generation of processing technology has \r\narrived. Built into the newest VAIO notebooks lies Intel\'s latest, most \r\npowerful innovation yet: Intel® Centrino® 2 processor technology. \r\nBoasting incredible speed, expanded wireless connectivity, enhanced \r\nmultimedia support and greater energy efficiency, all the \r\nhigh-performance essentials are seamlessly combined into a single chip.&lt;br&gt;&lt;/p&gt;', '', '', '', '', ''),
(51, 1, 'товар без картинки', '', '&lt;p&gt;товар без картинки&lt;/p&gt;', '', 'товар без картинки', 'товар без картинки', 'товар без картинки', 'товар без картинки'),
(50, 1, 'Удобрение универсальное &quot;Акварин&quot; 0.5кг.', '&lt;p&gt;бла бла бла&lt;/p&gt;', '&lt;h1 data-additional-zone=&quot;title&quot; data-auto=&quot;productCardTitle&quot; class=&quot;ds-text ds-text_weight_med ds-text_withHyphens ds-text_typography_headline-5 _3liU0 ds-text_headline-5_normal ds-text_headline-5_med&quot; style=&quot;-webkit-tap-highlight-color: rgba(0, 0, 0, 0); margin-bottom: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; font-size: 21px; line-height: 26px; font-family: &amp;quot;YS Text&amp;quot;, Helvetica, Arial, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; overflow-wrap: break-word; hyphens: auto; letter-spacing: -0.01em; color: rgb(0, 0, 0);&quot;&gt;&lt;span style=&quot;font-size: 14px; letter-spacing: normal;&quot;&gt;Водорастворимое комплексное минеральное удобрение Акварин Универсальный.&lt;/span&gt;&lt;br style=&quot;-webkit-tap-highlight-color: rgba(0, 0, 0, 0); display: block; content: &amp;quot;&amp;quot;; height: 0px; line-height: 0; margin-bottom: 6px; font-size: 14px; letter-spacing: normal;&quot;&gt;&lt;span style=&quot;font-size: 14px; letter-spacing: normal;&quot;&gt;Это удобрение - настоящий помощник для вашего огорода и сада. Оно создано специально для улучшения плодородия земли и обеспечения растений всем необходимым для здорового роста. Гранулы содержат ценные микроэлементы, которые подкормят ваши ягоды и овощи, декоративные и фруктовые деревья безопасным и эффективным способом. Данное удобрение обогатит почву минеральными соединениями, необходимыми для сбалансированного развития растений на вашем участке. Благодаря его комплексному действию, ваши томаты и огурцы, яблоки и сливы, хвойные и другие культурные растения получат правильное питание для здорового роста. Удобрение для овощей и фруктов способствует формированию крепких корней и стимулирует процессы цветения и плодоношения. Это особенно важно для плодовых деревьев и кустарников, других цветущих растений. Универсальная подкормка поможет достичь цветения гортензий, пионов, лилий. Благодаря своей уникальной формуле удобрение для сада подходит для овощей и плодово-ягодных, хвойных растений и газона. Акварин полезен в любое время года: весной - для активации роста; летом - для защиты от болезней; осенью - как приготовление к зиме. В состав универсального удобрения входит азот и фосфор, калий и магний, сера. Микроэлементы – железо и цинк, марганец и медь в хелатной форме; бор и молибден – в минеральной. Подкормку растений проводят методом полива (традиционный полив, капельный полив, орошение) или опрыскивания. Корневая подкормка (полив) растений 1-3 раза в течение вегетационного периода с интервалом 15-20 дней. Некорневая подкормка (опрыскивание) для уменьшения стрессового воздействия на растение в результате недостатка минерального питания, освещения, перепада температур или обработки химическими средствами защиты.&lt;/span&gt;&lt;/h1&gt;', '', 'Удобрение универсальное &quot;Акварин&quot; 0.5кг.', 'Удобрение универсальное &quot;Акварин&quot; 0.5кг.', 'Удобрение универсальное &quot;Акварин&quot; 0.5кг.', 'Удобрение универсальное &quot;Акварин&quot; 0.5кг.');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_discount`
--

CREATE TABLE `oc_product_discount` (
  `product_discount_id` int NOT NULL,
  `product_id` int NOT NULL,
  `customer_group_id` int NOT NULL,
  `quantity` int NOT NULL DEFAULT '0',
  `priority` int NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `oc_product_discount`
--

INSERT INTO `oc_product_discount` (`product_discount_id`, `product_id`, `customer_group_id`, `quantity`, `priority`, `price`, `date_start`, `date_end`) VALUES
(440, 42, 1, 30, 1, 66.0000, '0000-00-00', '0000-00-00'),
(439, 42, 1, 20, 1, 77.0000, '0000-00-00', '0000-00-00'),
(438, 42, 1, 10, 1, 88.0000, '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_filter`
--

CREATE TABLE `oc_product_filter` (
  `product_id` int NOT NULL,
  `filter_id` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_image`
--

CREATE TABLE `oc_product_image` (
  `product_image_id` int NOT NULL,
  `product_id` int NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `oc_product_image`
--

INSERT INTO `oc_product_image` (`product_image_id`, `product_id`, `image`, `sort_order`) VALUES
(2345, 30, 'catalog/demo/canon_eos_5d_2.jpg', 0),
(2321, 47, 'catalog/demo/hp_3.jpg', 0),
(2035, 28, 'catalog/demo/htc_touch_hd_2.jpg', 0),
(2351, 41, 'catalog/demo/imac_3.jpg', 0),
(1982, 40, 'catalog/demo/iphone_6.jpg', 0),
(2001, 36, 'catalog/demo/ipod_nano_5.jpg', 0),
(2000, 36, 'catalog/demo/ipod_nano_4.jpg', 0),
(2005, 34, 'catalog/demo/ipod_shuffle_5.jpg', 0),
(2004, 34, 'catalog/demo/ipod_shuffle_4.jpg', 0),
(2011, 32, 'catalog/demo/ipod_touch_7.jpg', 0),
(2010, 32, 'catalog/demo/ipod_touch_6.jpg', 0),
(2009, 32, 'catalog/demo/ipod_touch_5.jpg', 0),
(1971, 43, 'catalog/demo/macbook_5.jpg', 0),
(1970, 43, 'catalog/demo/macbook_4.jpg', 0),
(1974, 44, 'catalog/demo/macbook_air_4.jpg', 0),
(1973, 44, 'catalog/demo/macbook_air_2.jpg', 0),
(1977, 45, 'catalog/demo/macbook_pro_2.jpg', 0),
(1976, 45, 'catalog/demo/macbook_pro_3.jpg', 0),
(1986, 31, 'catalog/demo/nikon_d300_3.jpg', 0),
(1985, 31, 'catalog/demo/nikon_d300_2.jpg', 0),
(1988, 29, 'catalog/demo/palm_treo_pro_3.jpg', 0),
(1995, 46, 'catalog/demo/sony_vaio_5.jpg', 0),
(1994, 46, 'catalog/demo/sony_vaio_4.jpg', 0),
(1991, 48, 'catalog/demo/ipod_classic_4.jpg', 0),
(1990, 48, 'catalog/demo/ipod_classic_3.jpg', 0),
(1981, 40, 'catalog/demo/iphone_2.jpg', 0),
(1980, 40, 'catalog/demo/iphone_5.jpg', 0),
(2344, 30, 'catalog/demo/canon_eos_5d_3.jpg', 0),
(2320, 47, 'catalog/demo/hp_2.jpg', 0),
(2034, 28, 'catalog/demo/htc_touch_hd_3.jpg', 0),
(2350, 41, 'catalog/demo/imac_2.jpg', 0),
(1979, 40, 'catalog/demo/iphone_3.jpg', 0),
(1978, 40, 'catalog/demo/iphone_4.jpg', 0),
(1989, 48, 'catalog/demo/ipod_classic_2.jpg', 0),
(1999, 36, 'catalog/demo/ipod_nano_2.jpg', 0),
(1998, 36, 'catalog/demo/ipod_nano_3.jpg', 0),
(2003, 34, 'catalog/demo/ipod_shuffle_2.jpg', 0),
(2002, 34, 'catalog/demo/ipod_shuffle_3.jpg', 0),
(2008, 32, 'catalog/demo/ipod_touch_2.jpg', 0),
(2007, 32, 'catalog/demo/ipod_touch_3.jpg', 0),
(2006, 32, 'catalog/demo/ipod_touch_4.jpg', 0),
(1969, 43, 'catalog/demo/macbook_2.jpg', 0),
(1968, 43, 'catalog/demo/macbook_3.jpg', 0),
(1972, 44, 'catalog/demo/macbook_air_3.jpg', 0),
(1975, 45, 'catalog/demo/macbook_pro_4.jpg', 0),
(1984, 31, 'catalog/demo/nikon_d300_4.jpg', 0),
(1983, 31, 'catalog/demo/nikon_d300_5.jpg', 0),
(1987, 29, 'catalog/demo/palm_treo_pro_2.jpg', 0),
(1993, 46, 'catalog/demo/sony_vaio_2.jpg', 0),
(1992, 46, 'catalog/demo/sony_vaio_3.jpg', 0),
(2327, 49, 'catalog/demo/samsung_tab_7.jpg', 0),
(2326, 49, 'catalog/demo/samsung_tab_6.jpg', 0),
(2325, 49, 'catalog/demo/samsung_tab_5.jpg', 0),
(2324, 49, 'catalog/demo/samsung_tab_4.jpg', 0),
(2323, 49, 'catalog/demo/samsung_tab_3.jpg', 0),
(2322, 49, 'catalog/demo/samsung_tab_2.jpg', 0),
(2317, 42, 'catalog/demo/canon_logo.jpg', 0),
(2316, 42, 'catalog/demo/hp_1.jpg', 0),
(2315, 42, 'catalog/demo/compaq_presario.jpg', 0),
(2314, 42, 'catalog/demo/canon_eos_5d_1.jpg', 0),
(2313, 42, 'catalog/demo/canon_eos_5d_2.jpg', 0),
(2364, 50, 'catalog/products/vse_dla_rassadi/akvarin_2.png', 0),
(2363, 50, 'catalog/products/vse_dla_rassadi/akvarin_1.png', 0),
(2362, 50, 'catalog/products/vse_dla_rassadi/akvarin_2.png', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_option`
--

CREATE TABLE `oc_product_option` (
  `product_option_id` int NOT NULL,
  `product_id` int NOT NULL,
  `option_id` int NOT NULL,
  `value` text NOT NULL,
  `required` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `oc_product_option`
--

INSERT INTO `oc_product_option` (`product_option_id`, `product_id`, `option_id`, `value`, `required`) VALUES
(224, 35, 11, '', 1),
(225, 47, 12, '2011-04-22', 1),
(223, 42, 2, '', 1),
(217, 42, 5, '', 1),
(209, 42, 6, '', 1),
(218, 42, 1, '', 1),
(208, 42, 4, 'test', 1),
(219, 42, 8, '2011-02-20', 1),
(222, 42, 7, '', 1),
(221, 42, 9, '22:25', 1),
(220, 42, 10, '2011-02-20 22:25', 1),
(226, 30, 5, '', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_option_value`
--

CREATE TABLE `oc_product_option_value` (
  `product_option_value_id` int NOT NULL,
  `product_option_id` int NOT NULL,
  `product_id` int NOT NULL,
  `option_id` int NOT NULL,
  `option_value_id` int NOT NULL,
  `quantity` int NOT NULL,
  `subtract` tinyint(1) NOT NULL,
  `price` decimal(15,4) NOT NULL,
  `price_prefix` varchar(1) NOT NULL,
  `points` int NOT NULL,
  `points_prefix` varchar(1) NOT NULL,
  `weight` decimal(15,8) NOT NULL,
  `weight_prefix` varchar(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `oc_product_option_value`
--

INSERT INTO `oc_product_option_value` (`product_option_value_id`, `product_option_id`, `product_id`, `option_id`, `option_value_id`, `quantity`, `subtract`, `price`, `price_prefix`, `points`, `points_prefix`, `weight`, `weight_prefix`) VALUES
(1, 217, 42, 5, 41, 100, 0, 1.0000, '+', 0, '+', 1.00000000, '+'),
(6, 218, 42, 1, 31, 146, 1, 20.0000, '+', 2, '-', 20.00000000, '+'),
(7, 218, 42, 1, 43, 300, 1, 30.0000, '+', 3, '+', 30.00000000, '+'),
(5, 218, 42, 1, 32, 96, 1, 10.0000, '+', 1, '+', 10.00000000, '+'),
(4, 217, 42, 5, 39, 92, 1, 4.0000, '+', 0, '+', 4.00000000, '+'),
(2, 217, 42, 5, 42, 200, 1, 2.0000, '+', 0, '+', 2.00000000, '+'),
(3, 217, 42, 5, 40, 300, 0, 3.0000, '+', 0, '+', 3.00000000, '+'),
(8, 223, 42, 2, 23, 48, 1, 10.0000, '+', 0, '+', 10.00000000, '+'),
(10, 223, 42, 2, 44, 2696, 1, 30.0000, '+', 0, '+', 30.00000000, '+'),
(9, 223, 42, 2, 24, 194, 1, 20.0000, '+', 0, '+', 20.00000000, '+'),
(11, 223, 42, 2, 45, 3998, 1, 40.0000, '+', 0, '+', 40.00000000, '+'),
(12, 224, 35, 11, 46, 0, 1, 5.0000, '+', 0, '+', 0.00000000, '+'),
(13, 224, 35, 11, 47, 10, 1, 10.0000, '+', 0, '+', 0.00000000, '+'),
(14, 224, 35, 11, 48, 15, 1, 15.0000, '+', 0, '+', 0.00000000, '+'),
(16, 226, 30, 5, 40, 5, 1, 0.0000, '+', 0, '+', 0.00000000, '+'),
(15, 226, 30, 5, 39, 2, 1, 0.0000, '+', 0, '+', 0.00000000, '+');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_recurring`
--

CREATE TABLE `oc_product_recurring` (
  `product_id` int NOT NULL,
  `recurring_id` int NOT NULL,
  `customer_group_id` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_related`
--

CREATE TABLE `oc_product_related` (
  `product_id` int NOT NULL,
  `related_id` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `oc_product_related`
--

INSERT INTO `oc_product_related` (`product_id`, `related_id`) VALUES
(30, 50),
(40, 42),
(41, 42),
(41, 50),
(42, 40),
(42, 41),
(42, 50),
(47, 50),
(50, 30),
(50, 41),
(50, 42),
(50, 47);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_related_article`
--

CREATE TABLE `oc_product_related_article` (
  `article_id` int NOT NULL,
  `product_id` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `oc_product_related_article`
--

INSERT INTO `oc_product_related_article` (`article_id`, `product_id`) VALUES
(120, 30),
(120, 40),
(120, 42),
(123, 40),
(123, 42),
(124, 40),
(125, 30);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_related_mn`
--

CREATE TABLE `oc_product_related_mn` (
  `product_id` int NOT NULL,
  `manufacturer_id` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `oc_product_related_mn`
--

INSERT INTO `oc_product_related_mn` (`product_id`, `manufacturer_id`) VALUES
(42, 8),
(41, 8),
(30, 9),
(47, 7);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_related_wb`
--

CREATE TABLE `oc_product_related_wb` (
  `product_id` int NOT NULL,
  `category_id` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_reward`
--

CREATE TABLE `oc_product_reward` (
  `product_reward_id` int NOT NULL,
  `product_id` int NOT NULL DEFAULT '0',
  `customer_group_id` int NOT NULL DEFAULT '0',
  `points` int NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `oc_product_reward`
--

INSERT INTO `oc_product_reward` (`product_reward_id`, `product_id`, `customer_group_id`, `points`) VALUES
(515, 42, 1, 100),
(519, 47, 1, 300),
(379, 28, 1, 400),
(329, 43, 1, 600),
(339, 29, 1, 0),
(343, 48, 1, 0),
(335, 40, 1, 0),
(539, 30, 1, 200),
(331, 44, 1, 700),
(333, 45, 1, 800),
(337, 31, 1, 0),
(425, 35, 1, 0),
(345, 33, 1, 0),
(347, 46, 1, 0),
(545, 41, 1, 0),
(351, 36, 1, 0),
(353, 34, 1, 0),
(355, 32, 1, 0),
(521, 49, 1, 1000);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_special`
--

CREATE TABLE `oc_product_special` (
  `product_special_id` int NOT NULL,
  `product_id` int NOT NULL,
  `customer_group_id` int NOT NULL,
  `priority` int NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `oc_product_special`
--

INSERT INTO `oc_product_special` (`product_special_id`, `product_id`, `customer_group_id`, `priority`, `price`, `date_start`, `date_end`) VALUES
(419, 42, 1, 1, 90.0000, '0000-00-00', '0000-00-00'),
(439, 30, 1, 2, 90.0000, '0000-00-00', '0000-00-00'),
(438, 30, 1, 1, 80.0000, '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_to_category`
--

CREATE TABLE `oc_product_to_category` (
  `product_id` int NOT NULL,
  `category_id` int NOT NULL,
  `main_category` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `oc_product_to_category`
--

INSERT INTO `oc_product_to_category` (`product_id`, `category_id`, `main_category`) VALUES
(50, 59, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_to_download`
--

CREATE TABLE `oc_product_to_download` (
  `product_id` int NOT NULL,
  `download_id` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_to_layout`
--

CREATE TABLE `oc_product_to_layout` (
  `product_id` int NOT NULL,
  `store_id` int NOT NULL,
  `layout_id` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `oc_product_to_layout`
--

INSERT INTO `oc_product_to_layout` (`product_id`, `store_id`, `layout_id`) VALUES
(50, 0, 0),
(51, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_to_store`
--

CREATE TABLE `oc_product_to_store` (
  `product_id` int NOT NULL,
  `store_id` int NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `oc_product_to_store`
--

INSERT INTO `oc_product_to_store` (`product_id`, `store_id`) VALUES
(28, 0),
(29, 0),
(30, 0),
(31, 0),
(32, 0),
(33, 0),
(34, 0),
(35, 0),
(36, 0),
(40, 0),
(41, 0),
(42, 0),
(43, 0),
(44, 0),
(45, 0),
(46, 0),
(47, 0),
(48, 0),
(49, 0),
(50, 0),
(51, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_recurring`
--

CREATE TABLE `oc_recurring` (
  `recurring_id` int NOT NULL,
  `price` decimal(10,4) NOT NULL,
  `frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `duration` int UNSIGNED NOT NULL,
  `cycle` int UNSIGNED NOT NULL,
  `trial_status` tinyint NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `trial_frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `trial_duration` int UNSIGNED NOT NULL,
  `trial_cycle` int UNSIGNED NOT NULL,
  `status` tinyint NOT NULL,
  `sort_order` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_recurring_description`
--

CREATE TABLE `oc_recurring_description` (
  `recurring_id` int NOT NULL,
  `language_id` int NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_return`
--

CREATE TABLE `oc_return` (
  `return_id` int NOT NULL,
  `order_id` int NOT NULL,
  `product_id` int NOT NULL,
  `customer_id` int NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `product` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int NOT NULL,
  `opened` tinyint(1) NOT NULL,
  `return_reason_id` int NOT NULL,
  `return_action_id` int NOT NULL,
  `return_status_id` int NOT NULL,
  `comment` text,
  `date_ordered` date NOT NULL DEFAULT '0000-00-00',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_return_action`
--

CREATE TABLE `oc_return_action` (
  `return_action_id` int NOT NULL,
  `language_id` int NOT NULL DEFAULT '0',
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `oc_return_action`
--

INSERT INTO `oc_return_action` (`return_action_id`, `language_id`, `name`) VALUES
(1, 1, 'Возмещенный'),
(2, 1, 'Возврат средств'),
(3, 1, 'Отправлена замена'),
(1, 2, 'Refunded'),
(3, 2, 'Replacement Sent'),
(2, 2, 'Credit Issued');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_return_history`
--

CREATE TABLE `oc_return_history` (
  `return_history_id` int NOT NULL,
  `return_id` int NOT NULL,
  `return_status_id` int NOT NULL,
  `notify` tinyint(1) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_return_reason`
--

CREATE TABLE `oc_return_reason` (
  `return_reason_id` int NOT NULL,
  `language_id` int NOT NULL DEFAULT '0',
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `oc_return_reason`
--

INSERT INTO `oc_return_reason` (`return_reason_id`, `language_id`, `name`) VALUES
(1, 1, 'Получен неисправным (сломанным)'),
(1, 2, 'Dead On Arrival'),
(2, 1, 'Получен не тот (ошибочный) товар'),
(2, 2, 'Received Wrong Item'),
(3, 1, 'Заказан по ошибке'),
(3, 2, 'Order Error'),
(4, 1, 'Неисправен, пожалуйста укажите/приложите подробности'),
(4, 2, 'Faulty, please supply details'),
(5, 1, 'Другое (другая причина), пожалуйста укажите/приложите подробности'),
(5, 2, 'Other, please supply details');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_return_status`
--

CREATE TABLE `oc_return_status` (
  `return_status_id` int NOT NULL,
  `language_id` int NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `oc_return_status`
--

INSERT INTO `oc_return_status` (`return_status_id`, `language_id`, `name`) VALUES
(1, 1, 'В ожидании'),
(3, 1, 'Выполнен'),
(2, 1, 'Ожидание товара'),
(1, 2, 'Pending'),
(2, 2, 'Awaiting Products'),
(3, 2, 'Complete');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_review`
--

CREATE TABLE `oc_review` (
  `review_id` int NOT NULL,
  `product_id` int NOT NULL,
  `customer_id` int NOT NULL,
  `author` varchar(64) NOT NULL,
  `text` text NOT NULL,
  `rating` int NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_review_article`
--

CREATE TABLE `oc_review_article` (
  `review_article_id` int NOT NULL,
  `article_id` int NOT NULL,
  `customer_id` int NOT NULL,
  `author` varchar(64) NOT NULL DEFAULT '',
  `text` text NOT NULL,
  `rating` int NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `oc_review_article`
--

INSERT INTO `oc_review_article` (`review_article_id`, `article_id`, `customer_id`, `author`, `text`, `rating`, `status`, `date_added`, `date_modified`) VALUES
(11, 123, 0, 'Василий Покупайкин', 'Спасибо за отличный фото обзор, обязательно в ближайшее время приобрету себе такую тушку и напишу дополнение к Вашей статье.', 5, 1, '2014-04-08 05:59:25', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_seo_url`
--

CREATE TABLE `oc_seo_url` (
  `seo_url_id` int NOT NULL,
  `store_id` int NOT NULL,
  `language_id` int NOT NULL,
  `query` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `oc_seo_url`
--

INSERT INTO `oc_seo_url` (`seo_url_id`, `store_id`, `language_id`, `query`, `keyword`) VALUES
(601, 0, 1, 'account/voucher', 'vouchers'),
(602, 0, 1, 'account/wishlist', 'wishlist'),
(603, 0, 1, 'account/account', 'my-account'),
(604, 0, 1, 'checkout/cart', 'cart'),
(605, 0, 1, 'checkout/checkout', 'checkout'),
(606, 0, 1, 'account/login', 'login'),
(607, 0, 1, 'account/logout', 'logout'),
(608, 0, 1, 'account/order', 'order-history'),
(609, 0, 1, 'account/newsletter', 'newsletter'),
(610, 0, 1, 'product/special', 'specials'),
(611, 0, 1, 'affiliate/account', 'affiliates'),
(612, 0, 1, 'checkout/voucher', 'gift-vouchers'),
(613, 0, 1, 'product/manufacturer', 'brands'),
(614, 0, 1, 'information/contact', 'contact-us'),
(615, 0, 1, 'account/return/insert', 'request-return'),
(616, 0, 1, 'information/sitemap', 'sitemap'),
(617, 0, 1, 'account/forgotten', 'forgot-password'),
(618, 0, 1, 'account/download', 'downloads'),
(619, 0, 1, 'account/return', 'returns'),
(620, 0, 1, 'account/transaction', 'transactions'),
(621, 0, 1, 'account/register', 'create-account'),
(622, 0, 1, 'product/compare', 'compare-products'),
(623, 0, 1, 'product/search', 'search'),
(624, 0, 1, 'account/edit', 'edit-account'),
(625, 0, 1, 'account/password', 'change-password'),
(626, 0, 1, 'account/address', 'address-book'),
(627, 0, 1, 'account/reward', 'reward-points'),
(628, 0, 1, 'affiliate/edit', 'edit-affiliate-account'),
(629, 0, 1, 'affiliate/password', 'change-affiliate-password'),
(630, 0, 1, 'affiliate/payment', 'affiliate-payment-options'),
(631, 0, 1, 'affiliate/tracking', 'affiliate-tracking-code'),
(632, 0, 1, 'affiliate/transaction', 'affiliate-transactions'),
(633, 0, 1, 'affiliate/logout', 'affiliate-logout'),
(634, 0, 1, 'affiliate/forgotten', 'affiliate-forgot-password'),
(635, 0, 1, 'affiliate/register', 'create-affiliate-account'),
(636, 0, 1, 'affiliate/login', 'affiliate-login'),
(637, 0, 1, 'account/return/add', 'add-return'),
(958, 0, 1, 'product_id=48', 'ipod-classic'),
(932, 0, 1, 'manufacturer_id=8', 'apple'),
(850, 0, 1, 'information_id=4', 'about_us'),
(946, 0, 1, 'product_id=42', 'apple_cinema_30'),
(948, 0, 1, 'product_id=30', 'canon-eos-5d'),
(950, 0, 1, 'product_id=47', 'hp-lp3065'),
(952, 0, 1, 'product_id=28', 'htc-touch-hd'),
(966, 0, 1, 'product_id=43', 'macbook'),
(968, 0, 1, 'product_id=44', 'macbook-air'),
(970, 0, 1, 'product_id=45', 'macbook-pro'),
(972, 0, 1, 'product_id=31', 'nikon-d300'),
(974, 0, 1, 'product_id=29', 'palm-treo-pro'),
(976, 0, 1, 'product_id=35', 'product-8'),
(978, 0, 1, 'product_id=49', 'samsung-galaxy-tab-10-1'),
(980, 0, 1, 'product_id=33', 'samsung-syncmaster-941bw'),
(944, 0, 1, 'product_id=46', 'sony-vaio'),
(954, 0, 1, 'product_id=41', 'imac'),
(823, 0, 1, 'common/home', ''),
(960, 0, 1, 'product_id=36', 'ipod-nano'),
(962, 0, 1, 'product_id=34', 'ipod-shuffle'),
(964, 0, 1, 'product_id=32', 'ipod-touch'),
(934, 0, 1, 'manufacturer_id=9', 'canon'),
(938, 0, 1, 'manufacturer_id=5', 'htc'),
(936, 0, 1, 'manufacturer_id=7', 'hewlett-packard'),
(940, 0, 1, 'manufacturer_id=6', 'palm'),
(942, 0, 1, 'manufacturer_id=10', 'sony'),
(852, 0, 1, 'information_id=3', 'privacy'),
(854, 0, 1, 'information_id=5', 'terms'),
(956, 0, 1, 'product_id=40', 'iphone'),
(1022, 0, 1, 'information_id=6', 'delivery'),
(1025, 0, 1, 'category_id=59', 'vse_dla_rassadi'),
(1032, 0, 1, 'product_id=50', 'akvarin_05'),
(1024, 0, 1, 'manufacturer_id=11', 'buyskie_udobrenia');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_session`
--

CREATE TABLE `oc_session` (
  `session_id` varchar(32) NOT NULL,
  `data` text NOT NULL,
  `expire` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `oc_session`
--

INSERT INTO `oc_session` (`session_id`, `data`, `expire`) VALUES
('1aa3bff92d1de7fa6e6c51f422', '{\"language\":\"ru-ru\",\"currency\":\"RUB\",\"user_id\":\"2\",\"user_token\":\"WJXEq8It4jyvxkCHXCdWJlu9Vst71jlv\"}', '2025-03-09 20:09:26');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_setting`
--

CREATE TABLE `oc_setting` (
  `setting_id` int NOT NULL,
  `store_id` int NOT NULL DEFAULT '0',
  `code` varchar(128) NOT NULL,
  `key` varchar(128) NOT NULL,
  `value` text NOT NULL,
  `serialized` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `oc_setting`
--

INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES
(1305, 0, 'config', 'config_noindex_disallow_params', 'page', 0),
(1304, 0, 'config', 'config_noindex_status', '1', 0),
(1303, 0, 'config', 'config_add_prevnext', '0', 0),
(1301, 0, 'config', 'config_canonical_method', '0', 0),
(1302, 0, 'config', 'config_canonical_self', '0', 0),
(1300, 0, 'config', 'config_valide_params', 'block\r\nfrommarket\r\ngclid\r\nfbclid\r\nkeyword\r\nlist_type\r\nopenstat\r\nopenstat_service\r\nopenstat_campaign\r\nopenstat_ad\r\nopenstat_source\r\nposition\r\nsource\r\ntracking\r\ntype\r\nyclid\r\nymclid\r\nuri\r\nurltype\r\nutm_source\r\nutm_medium\r\nutm_campaign\r\nutm_term\r\nutm_content', 0),
(1299, 0, 'config', 'config_valide_param_flag', '0', 0),
(1298, 0, 'config', 'config_page_postfix', '', 0),
(1297, 0, 'config', 'config_seopro_lowercase', '1', 0),
(1294, 0, 'config', 'config_seo_url_include_path', '1', 0),
(1295, 0, 'config', 'config_seo_url_cache', '0', 0),
(1296, 0, 'config', 'config_seopro_addslash', '0', 0),
(1293, 0, 'config', 'config_seo_pro', '1', 0),
(1287, 0, 'config', 'config_file_max_size', '300000', 0),
(1288, 0, 'config', 'config_file_ext_allowed', 'zip\r\ntxt\r\npng\r\njpe\r\njpeg\r\njpg\r\ngif\r\nbmp\r\nico\r\ntiff\r\ntif\r\nsvg\r\nsvgz\r\nzip\r\nrar\r\nmsi\r\ncab\r\nmp3\r\nqt\r\nmov\r\npdf\r\npsd\r\nai\r\neps\r\nps\r\ndoc', 0),
(1289, 0, 'config', 'config_file_mime_allowed', 'text/plain\r\nimage/png\r\nimage/jpeg\r\nimage/gif\r\nimage/bmp\r\nimage/tiff\r\nimage/svg+xml\r\napplication/zip\r\n&quot;application/zip&quot;\r\napplication/x-zip\r\n&quot;application/x-zip&quot;\r\napplication/x-zip-compressed\r\n&quot;application/x-zip-compressed&quot;\r\napplication/rar\r\n&quot;application/rar&quot;\r\napplication/x-rar\r\n&quot;application/x-rar&quot;\r\napplication/x-rar-compressed\r\n&quot;application/x-rar-compressed&quot;\r\napplication/octet-stream\r\n&quot;application/octet-stream&quot;\r\naudio/mpeg\r\nvideo/quicktime\r\napplication/pdf', 0),
(1290, 0, 'config', 'config_error_display', '1', 0),
(1291, 0, 'config', 'config_error_log', '1', 0),
(1292, 0, 'config', 'config_error_filename', 'error.log', 0),
(1284, 0, 'config', 'config_password', '1', 0),
(1285, 0, 'config', 'config_shared', '0', 0),
(1286, 0, 'config', 'config_encryption', '9XxBTo43dXMYkb1vAbMSQWKWfp3vUFI2Tm38iHoC4Jf4ZftL1QRwRdoPILKLr0RMftE3rLqOqpiaod7FKRQD7Llj1n4lvPxV9nkz9JYHRDhUIpggOxKHQcnlMg0kHiHAbWxYG3utiTGF0KugZVZbg7zBdbLtCHcC43Vrsrhr4w5hjgb2DoX1c2zf6bFmGyU1RGv8HIcDXKTXiVEsuzvqLF6ZFKUohim79T22BsCttppNbI6GhLXBAYoVRC07dscoCfjhidM5iAHdOIAd5OydRJSsF8SZGPqOePeUOi9YEY8FtVpa9cmgxmhVjfmnCdMleqZ2ZVAM3jm6ukEBJzrLQAysmXg92c39gPRMHlZoAmMlXf90JmUAUgI3W4QqXNyQJFmAQczjpzGNv8lahGPhFob3xMjYdhR7WkRxGWyiSFoHHAzIAhmwIgy53Y8QJtBU3GGXUKVM2LsvVgldM3DAoRQyFsfalbr6nrO68RCc5BmmpwF5Q6y0110sB2B4WmQ6szSD9I9HKvddnpVFwwVzmCj2qBERzu7W37qecfjULV9KGh9FicasjPIkyXZeNKe0yOCRcu3JQblBFh9t9KqAHUrMpsVrDKPbQfVov8YY8t7PjBni2RzhSJ0TY298k06BSP3ZxQm2tD6DifpeDJgTjwH6vFWwM6eK39EYMRKpqTCHZ9u5fLN2mMHhjzePS6P2G14tcDevcMW3IJC4I2Yz0d1ONuTRRjP4ixOcQmp2aejMNGRBkG5Nx3lgV9TWStrjKiIw46Ip1yjY0NKWY5WRq4ZWAiBPBi5jX2pg8yeJ0gBmAP6hT2fWso3n5KsCUOk5nOINWbbL2Duc4KzWi0OFProxfwE8Az0rPFd6GH1L67pAZAdk12AyMc4tbAWLWz5erXEvmll1ltTtTIgFWDJa0fh5yCmxKt9RnJVlTXLvnXi2VhMT55Jb3m4e9CCjvaa0eWp207GNSNraiqO9gt9VZQJJwW5TzK7I1FvktmexIutMnlzAIrDgHSgSBxGWAxhY', 0),
(1282, 0, 'config', 'config_compression', '0', 0),
(1283, 0, 'config', 'config_secure', '1', 0),
(1281, 0, 'config', 'config_robots', 'abot\r\ndbot\r\nebot\r\nhbot\r\nkbot\r\nlbot\r\nmbot\r\nnbot\r\nobot\r\npbot\r\nrbot\r\nsbot\r\ntbot\r\nvbot\r\nybot\r\nzbot\r\nbot.\r\nbot/\r\n_bot\r\n.bot\r\n/bot\r\n-bot\r\n:bot\r\n(bot\r\ncrawl\r\nslurp\r\nspider\r\nseek\r\naccoona\r\nacoon\r\nadressendeutschland\r\nah-ha.com\r\nahoy\r\naltavista\r\nananzi\r\nanthill\r\nappie\r\narachnophilia\r\narale\r\naraneo\r\naranha\r\narchitext\r\naretha\r\narks\r\nasterias\r\natlocal\r\natn\r\natomz\r\naugurfind\r\nbackrub\r\nbannana_bot\r\nbaypup\r\nbdfetch\r\nbig brother\r\nbiglotron\r\nbjaaland\r\nblackwidow\r\nblaiz\r\nblog\r\nblo.\r\nbloodhound\r\nboitho\r\nbooch\r\nbradley\r\nbutterfly\r\ncalif\r\ncassandra\r\nccubee\r\ncfetch\r\ncharlotte\r\nchurl\r\ncienciaficcion\r\ncmc\r\ncollective\r\ncomagent\r\ncombine\r\ncomputingsite\r\ncsci\r\ncurl\r\ncusco\r\ndaumoa\r\ndeepindex\r\ndelorie\r\ndepspid\r\ndeweb\r\ndie blinde kuh\r\ndigger\r\nditto\r\ndmoz\r\ndocomo\r\ndownload express\r\ndtaagent\r\ndwcp\r\nebiness\r\nebingbong\r\ne-collector\r\nejupiter\r\nemacs-w3 search engine\r\nesther\r\nevliya celebi\r\nezresult\r\nfalcon\r\nfelix ide\r\nferret\r\nfetchrover\r\nfido\r\nfindlinks\r\nfireball\r\nfish search\r\nfouineur\r\nfunnelweb\r\ngazz\r\ngcreep\r\ngenieknows\r\ngetterroboplus\r\ngeturl\r\nglx\r\ngoforit\r\ngolem\r\ngrabber\r\ngrapnel\r\ngralon\r\ngriffon\r\ngromit\r\ngrub\r\ngulliver\r\nhamahakki\r\nharvest\r\nhavindex\r\nhelix\r\nheritrix\r\nhku www octopus\r\nhomerweb\r\nhtdig\r\nhtml index\r\nhtml_analyzer\r\nhtmlgobble\r\nhubater\r\nhyper-decontextualizer\r\nia_archiver\r\nibm_planetwide\r\nichiro\r\niconsurf\r\niltrovatore\r\nimage.kapsi.net\r\nimagelock\r\nincywincy\r\nindexer\r\ninfobee\r\ninformant\r\ningrid\r\ninktomisearch.com\r\ninspector web\r\nintelliagent\r\ninternet shinchakubin\r\nip3000\r\niron33\r\nisraeli-search\r\nivia\r\njack\r\njakarta\r\njavabee\r\njetbot\r\njumpstation\r\nkatipo\r\nkdd-explorer\r\nkilroy\r\nknowledge\r\nkototoi\r\nkretrieve\r\nlabelgrabber\r\nlachesis\r\nlarbin\r\nlegs\r\nlibwww\r\nlinkalarm\r\nlink validator\r\nlinkscan\r\nlockon\r\nlwp\r\nlycos\r\nmagpie\r\nmantraagent\r\nmapoftheinternet\r\nmarvin/\r\nmattie\r\nmediafox\r\nmediapartners\r\nmercator\r\nmerzscope\r\nmicrosoft url control\r\nminirank\r\nmiva\r\nmj12\r\nmnogosearch\r\nmoget\r\nmonster\r\nmoose\r\nmotor\r\nmultitext\r\nmuncher\r\nmuscatferret\r\nmwd.search\r\nmyweb\r\nnajdi\r\nnameprotect\r\nnationaldirectory\r\nnazilla\r\nncsa beta\r\nnec-meshexplorer\r\nnederland.zoek\r\nnetcarta webmap engine\r\nnetmechanic\r\nnetresearchserver\r\nnetscoop\r\nnewscan-online\r\nnhse\r\nnokia6682/\r\nnomad\r\nnoyona\r\nnutch\r\nnzexplorer\r\nobjectssearch\r\noccam\r\nomni\r\nopen text\r\nopenfind\r\nopenintelligencedata\r\norb search\r\nosis-project\r\npack rat\r\npageboy\r\npagebull\r\npage_verifier\r\npanscient\r\nparasite\r\npartnersite\r\npatric\r\npear.\r\npegasus\r\nperegrinator\r\npgp key agent\r\nphantom\r\nphpdig\r\npicosearch\r\npiltdownman\r\npimptrain\r\npinpoint\r\npioneer\r\npiranha\r\nplumtreewebaccessor\r\npogodak\r\npoirot\r\npompos\r\npoppelsdorf\r\npoppi\r\npopular iconoclast\r\npsycheclone\r\npublisher\r\npython\r\nrambler\r\nraven search\r\nroach\r\nroad runner\r\nroadhouse\r\nrobbie\r\nrobofox\r\nrobozilla\r\nrules\r\nsalty\r\nsbider\r\nscooter\r\nscoutjet\r\nscrubby\r\nsearch.\r\nsearchprocess\r\nsemanticdiscovery\r\nsenrigan\r\nsg-scout\r\nshai\'hulud\r\nshark\r\nshopwiki\r\nsidewinder\r\nsift\r\nsilk\r\nsimmany\r\nsite searcher\r\nsite valet\r\nsitetech-rover\r\nskymob.com\r\nsleek\r\nsmartwit\r\nsna-\r\nsnappy\r\nsnooper\r\nsohu\r\nspeedfind\r\nsphere\r\nsphider\r\nspinner\r\nspyder\r\nsteeler/\r\nsuke\r\nsuntek\r\nsupersnooper\r\nsurfnomore\r\nsven\r\nsygol\r\nszukacz\r\ntach black widow\r\ntarantula\r\ntempleton\r\n/teoma\r\nt-h-u-n-d-e-r-s-t-o-n-e\r\ntheophrastus\r\ntitan\r\ntitin\r\ntkwww\r\ntoutatis\r\nt-rex\r\ntutorgig\r\ntwiceler\r\ntwisted\r\nucsd\r\nudmsearch\r\nurl check\r\nupdated\r\nvagabondo\r\nvalkyrie\r\nverticrawl\r\nvictoria\r\nvision-search\r\nvolcano\r\nvoyager/\r\nvoyager-hc\r\nw3c_validator\r\nw3m2\r\nw3mir\r\nwalker\r\nwallpaper\r\nwanderer\r\nwauuu\r\nwavefire\r\nweb core\r\nweb hopper\r\nweb wombat\r\nwebbandit\r\nwebcatcher\r\nwebcopy\r\nwebfoot\r\nweblayers\r\nweblinker\r\nweblog monitor\r\nwebmirror\r\nwebmonkey\r\nwebquest\r\nwebreaper\r\nwebsitepulse\r\nwebsnarf\r\nwebstolperer\r\nwebvac\r\nwebwalk\r\nwebwatch\r\nwebwombat\r\nwebzinger\r\nwhizbang\r\nwhowhere\r\nwild ferret\r\nworldlight\r\nwwwc\r\nwwwster\r\nxenu\r\nxget\r\nxift\r\nxirq\r\nyandex\r\nyanga\r\nyeti\r\nyodao\r\nzao\r\nzippp\r\nzyborg', 0),
(1279, 0, 'config', 'config_maintenance', '0', 0),
(1280, 0, 'config', 'config_seo_url', '1', 0),
(1278, 0, 'config', 'config_mail_alert_email', 'lagutin1991@gmail.com', 0),
(1277, 0, 'config', 'config_mail_alert', '[\"account\",\"order\",\"review\"]', 1),
(1276, 0, 'config', 'config_mail_smtp_timeout', '5', 0),
(1269, 0, 'config', 'config_icon', 'catalog/favicon/favicon-32x32.png', 0),
(1270, 0, 'config', 'config_mail_engine', 'mail', 0),
(1271, 0, 'config', 'config_mail_parameter', '', 0),
(1272, 0, 'config', 'config_mail_smtp_hostname', '', 0),
(1273, 0, 'config', 'config_mail_smtp_username', '', 0),
(1274, 0, 'config', 'config_mail_smtp_password', '', 0),
(1275, 0, 'config', 'config_mail_smtp_port', '25', 0),
(1268, 0, 'config', 'config_logo', 'catalog/favicon/android-chrome-192x192.png', 0),
(1267, 0, 'config', 'config_captcha_page', '[\"review\",\"return\",\"contact\"]', 1),
(96, 0, 'payment_free_checkout', 'payment_free_checkout_status', '1', 0),
(97, 0, 'payment_free_checkout', 'payment_free_checkout_order_status_id', '1', 0),
(98, 0, 'payment_free_checkout', 'payment_free_checkout_sort_order', '1', 0),
(99, 0, 'payment_cod', 'payment_cod_sort_order', '5', 0),
(100, 0, 'payment_cod', 'payment_cod_total', '0.01', 0),
(101, 0, 'payment_cod', 'payment_cod_order_status_id', '1', 0),
(102, 0, 'payment_cod', 'payment_cod_geo_zone_id', '0', 0),
(103, 0, 'payment_cod', 'payment_cod_status', '1', 0),
(104, 0, 'shipping_flat', 'shipping_flat_sort_order', '1', 0),
(105, 0, 'shipping_flat', 'shipping_flat_status', '1', 0),
(106, 0, 'shipping_flat', 'shipping_flat_geo_zone_id', '0', 0),
(107, 0, 'shipping_flat', 'shipping_flat_tax_class_id', '9', 0),
(108, 0, 'shipping_flat', 'shipping_flat_cost', '5.00', 0),
(109, 0, 'total_shipping', 'total_shipping_sort_order', '3', 0),
(110, 0, 'total_sub_total', 'total_sub_total_sort_order', '1', 0),
(111, 0, 'total_sub_total', 'total_sub_total_status', '1', 0),
(112, 0, 'total_tax', 'total_tax_status', '1', 0),
(113, 0, 'total_total', 'total_total_sort_order', '9', 0),
(114, 0, 'total_total', 'total_total_status', '1', 0),
(115, 0, 'total_tax', 'total_tax_sort_order', '5', 0),
(116, 0, 'total_credit', 'total_credit_sort_order', '7', 0),
(117, 0, 'total_credit', 'total_credit_status', '1', 0),
(118, 0, 'total_reward', 'total_reward_sort_order', '2', 0),
(119, 0, 'total_reward', 'total_reward_status', '1', 0),
(120, 0, 'total_shipping', 'total_shipping_status', '1', 0),
(121, 0, 'total_shipping', 'total_shipping_estimator', '1', 0),
(122, 0, 'total_coupon', 'total_coupon_sort_order', '4', 0),
(123, 0, 'total_coupon', 'total_coupon_status', '1', 0),
(124, 0, 'total_voucher', 'total_voucher_sort_order', '8', 0),
(125, 0, 'total_voucher', 'total_voucher_status', '1', 0),
(126, 0, 'module_category', 'module_category_status', '1', 0),
(127, 0, 'module_account', 'module_account_status', '1', 0),
(128, 0, 'theme_default', 'theme_default_product_limit', '15', 0),
(129, 0, 'theme_default', 'theme_default_product_description_length', '100', 0),
(130, 0, 'theme_default', 'theme_default_image_thumb_width', '228', 0),
(131, 0, 'theme_default', 'theme_default_image_thumb_height', '228', 0),
(132, 0, 'theme_default', 'theme_default_image_popup_width', '500', 0),
(133, 0, 'theme_default', 'theme_default_image_popup_height', '500', 0),
(134, 0, 'theme_default', 'theme_default_image_category_width', '80', 0),
(135, 0, 'theme_default', 'theme_default_image_category_height', '80', 0),
(136, 0, 'theme_default', 'theme_default_image_manufacturer_width', '80', 0),
(137, 0, 'theme_default', 'theme_default_image_manufacturer_height', '80', 0),
(138, 0, 'theme_default', 'theme_default_image_product_width', '228', 0),
(139, 0, 'theme_default', 'theme_default_image_product_height', '228', 0),
(140, 0, 'theme_default', 'theme_default_image_additional_width', '74', 0),
(141, 0, 'theme_default', 'theme_default_image_additional_height', '74', 0),
(142, 0, 'theme_default', 'theme_default_image_related_width', '200', 0),
(143, 0, 'theme_default', 'theme_default_image_related_height', '200', 0),
(144, 0, 'theme_default', 'theme_default_image_compare_width', '90', 0),
(145, 0, 'theme_default', 'theme_default_image_compare_height', '90', 0),
(146, 0, 'theme_default', 'theme_default_image_wishlist_width', '47', 0),
(147, 0, 'theme_default', 'theme_default_image_wishlist_height', '47', 0),
(148, 0, 'theme_default', 'theme_default_image_cart_height', '47', 0),
(149, 0, 'theme_default', 'theme_default_image_cart_width', '47', 0),
(150, 0, 'theme_default', 'theme_default_image_location_height', '50', 0),
(151, 0, 'theme_default', 'theme_default_image_location_width', '268', 0),
(152, 0, 'theme_default', 'theme_default_directory', 'default', 0),
(153, 0, 'theme_default', 'theme_default_status', '1', 0),
(154, 0, 'dashboard_activity', 'dashboard_activity_status', '1', 0),
(155, 0, 'dashboard_activity', 'dashboard_activity_sort_order', '7', 0),
(156, 0, 'dashboard_sale', 'dashboard_sale_status', '1', 0),
(157, 0, 'dashboard_sale', 'dashboard_sale_width', '3', 0),
(158, 0, 'dashboard_chart', 'dashboard_chart_status', '1', 0),
(159, 0, 'dashboard_chart', 'dashboard_chart_width', '6', 0),
(160, 0, 'dashboard_customer', 'dashboard_customer_status', '1', 0),
(161, 0, 'dashboard_customer', 'dashboard_customer_width', '3', 0),
(162, 0, 'dashboard_map', 'dashboard_map_status', '1', 0),
(163, 0, 'dashboard_map', 'dashboard_map_width', '6', 0),
(164, 0, 'dashboard_online', 'dashboard_online_status', '1', 0),
(165, 0, 'dashboard_online', 'dashboard_online_width', '3', 0),
(166, 0, 'dashboard_order', 'dashboard_order_sort_order', '1', 0),
(167, 0, 'dashboard_order', 'dashboard_order_status', '1', 0),
(168, 0, 'dashboard_order', 'dashboard_order_width', '3', 0),
(169, 0, 'dashboard_sale', 'dashboard_sale_sort_order', '2', 0),
(170, 0, 'dashboard_customer', 'dashboard_customer_sort_order', '3', 0),
(171, 0, 'dashboard_online', 'dashboard_online_sort_order', '4', 0),
(172, 0, 'dashboard_map', 'dashboard_map_sort_order', '5', 0),
(173, 0, 'dashboard_chart', 'dashboard_chart_sort_order', '6', 0),
(174, 0, 'dashboard_recent', 'dashboard_recent_status', '1', 0),
(175, 0, 'dashboard_recent', 'dashboard_recent_sort_order', '8', 0),
(176, 0, 'dashboard_activity', 'dashboard_activity_width', '4', 0),
(177, 0, 'dashboard_recent', 'dashboard_recent_width', '8', 0),
(178, 0, 'report_customer_activity', 'report_customer_activity_status', '1', 0),
(179, 0, 'report_customer_activity', 'report_customer_activity_sort_order', '1', 0),
(180, 0, 'report_customer_order', 'report_customer_order_status', '1', 0),
(181, 0, 'report_customer_order', 'report_customer_order_sort_order', '2', 0),
(182, 0, 'report_customer_reward', 'report_customer_reward_status', '1', 0),
(183, 0, 'report_customer_reward', 'report_customer_reward_sort_order', '3', 0),
(184, 0, 'report_customer_search', 'report_customer_search_sort_order', '3', 0),
(185, 0, 'report_customer_search', 'report_customer_search_status', '1', 0),
(186, 0, 'report_customer_transaction', 'report_customer_transaction_status', '1', 0),
(187, 0, 'report_customer_transaction', 'report_customer_transaction_status_sort_order', '4', 0),
(188, 0, 'report_sale_tax', 'report_sale_tax_status', '1', 0),
(189, 0, 'report_sale_tax', 'report_sale_tax_sort_order', '5', 0),
(190, 0, 'report_sale_shipping', 'report_sale_shipping_status', '1', 0),
(191, 0, 'report_sale_shipping', 'report_sale_shipping_sort_order', '6', 0),
(192, 0, 'report_sale_return', 'report_sale_return_status', '1', 0),
(193, 0, 'report_sale_return', 'report_sale_return_sort_order', '7', 0),
(194, 0, 'report_sale_order', 'report_sale_order_status', '1', 0),
(195, 0, 'report_sale_order', 'report_sale_order_sort_order', '8', 0),
(196, 0, 'report_sale_coupon', 'report_sale_coupon_status', '1', 0),
(197, 0, 'report_sale_coupon', 'report_sale_coupon_sort_order', '9', 0),
(198, 0, 'report_product_viewed', 'report_product_viewed_status', '1', 0),
(199, 0, 'report_product_viewed', 'report_product_viewed_sort_order', '10', 0),
(200, 0, 'report_product_purchased', 'report_product_purchased_status', '1', 0),
(201, 0, 'report_product_purchased', 'report_product_purchased_sort_order', '11', 0),
(202, 0, 'report_marketing', 'report_marketing_status', '1', 0),
(203, 0, 'report_marketing', 'report_marketing_sort_order', '12', 0),
(978, 0, 'developer', 'developer_sass', '0', 0),
(996, 0, 'configblog', 'configblog_image_article_height', '150', 0),
(995, 0, 'configblog', 'configblog_image_article_width', '150', 0),
(993, 0, 'configblog', 'configblog_image_category_width', '50', 0),
(994, 0, 'configblog', 'configblog_image_category_height', '50', 0),
(991, 0, 'configblog', 'configblog_review_guest', '1', 0),
(992, 0, 'configblog', 'configblog_review_mail', '1', 0),
(990, 0, 'configblog', 'configblog_review_status', '1', 0),
(989, 0, 'configblog', 'configblog_article_download', '1', 0),
(988, 0, 'configblog', 'configblog_blog_menu', '1', 0),
(987, 0, 'configblog', 'configblog_limit_admin', '20', 0),
(986, 0, 'configblog', 'configblog_article_description_length', '200', 0),
(985, 0, 'configblog', 'configblog_article_limit', '20', 0),
(984, 0, 'configblog', 'configblog_article_count', '1', 0),
(983, 0, 'configblog', 'configblog_meta_keyword', 'Наш блог', 0),
(982, 0, 'configblog', 'configblog_meta_description', 'Наш блог', 0),
(981, 0, 'configblog', 'configblog_meta_title', 'Наш блог', 0),
(980, 0, 'configblog', 'configblog_html_h1', 'Наш блог', 0),
(979, 0, 'configblog', 'configblog_name', 'Наш блог', 0),
(1265, 0, 'config', 'config_return_status_id', '2', 0),
(227, 0, 'currency_cbr', 'currency_cbr_status', '1', 0),
(228, 0, 'currency_nbu', 'currency_nbu_status', '1', 0),
(229, 0, 'currency_ecb', 'currency_ecb_status', '1', 0),
(230, 0, 'currency_fixer', 'currency_fixer_status', '0', 0),
(231, 0, 'module_blog_category', 'module_blog_category_status', '1', 0),
(1266, 0, 'config', 'config_captcha', '', 0),
(1264, 0, 'config', 'config_return_id', '0', 0),
(1263, 0, 'config', 'config_affiliate_id', '4', 0),
(1262, 0, 'config', 'config_affiliate_commission', '5', 0),
(1261, 0, 'config', 'config_affiliate_auto', '0', 0),
(1260, 0, 'config', 'config_affiliate_approval', '0', 0),
(1259, 0, 'config', 'config_affiliate_group_id', '1', 0),
(1258, 0, 'config', 'config_stock_checkout', '0', 0),
(1257, 0, 'config', 'config_stock_warning', '1', 0),
(1256, 0, 'config', 'config_stock_display', '0', 0),
(1255, 0, 'config', 'config_api_id', '1', 0),
(1252, 0, 'config', 'config_processing_status', '[\"2\",\"3\",\"1\",\"12\",\"5\"]', 1),
(1253, 0, 'config', 'config_complete_status', '[\"3\",\"5\"]', 1),
(1254, 0, 'config', 'config_fraud_status_id', '16', 0),
(1251, 0, 'config', 'config_order_status_id', '1', 0),
(1250, 0, 'config', 'config_checkout_id', '5', 0),
(1249, 0, 'config', 'config_checkout_guest', '1', 0),
(1248, 0, 'config', 'config_cart_weight', '1', 0),
(1247, 0, 'config', 'config_invoice_prefix', 'INV-2025-00', 0),
(1246, 0, 'config', 'config_account_id', '3', 0),
(1245, 0, 'config', 'config_login_attempts', '5', 0),
(1244, 0, 'config', 'config_customer_price', '0', 0),
(1243, 0, 'config', 'config_customer_group_display', '[\"1\"]', 1),
(1242, 0, 'config', 'config_customer_group_id', '1', 0),
(1241, 0, 'config', 'config_customer_search', '0', 0),
(1240, 0, 'config', 'config_customer_activity', '0', 0),
(1239, 0, 'config', 'config_customer_online', '0', 0),
(1238, 0, 'config', 'config_tax_customer', 'shipping', 0),
(1237, 0, 'config', 'config_tax_default', 'shipping', 0),
(1236, 0, 'config', 'config_tax', '1', 0),
(1235, 0, 'config', 'config_voucher_max', '1000', 0),
(1234, 0, 'config', 'config_voucher_min', '1', 0),
(1233, 0, 'config', 'config_review_guest', '1', 0),
(1232, 0, 'config', 'config_review_status', '1', 0),
(1231, 0, 'config', 'config_limit_autocomplete', '5', 0),
(1230, 0, 'config', 'config_limit_admin', '25', 0),
(1229, 0, 'config', 'config_product_count', '1', 0),
(1228, 0, 'config', 'config_weight_class_id', '1', 0),
(1227, 0, 'config', 'config_length_class_id', '1', 0),
(1226, 0, 'config', 'config_currency_engine', 'cbr', 0),
(1225, 0, 'config', 'config_currency_auto', '0', 0),
(1224, 0, 'config', 'config_currency', 'RUB', 0),
(1222, 0, 'config', 'config_language', 'ru-ru', 0),
(1223, 0, 'config', 'config_admin_language', 'ru-ru', 0),
(1221, 0, 'config', 'config_timezone', 'Europe/Moscow', 0),
(1220, 0, 'config', 'config_zone_id', '2761', 0),
(1219, 0, 'config', 'config_country_id', '176', 0),
(1218, 0, 'config', 'config_comment', '', 0),
(1217, 0, 'config', 'config_open', 'Пн-Вс 10:00-19:00', 0),
(1216, 0, 'config', 'config_image', '', 0),
(1213, 0, 'config', 'config_email', 'info@berisey.loc', 0),
(1214, 0, 'config', 'config_telephone', '79999999999', 0),
(1215, 0, 'config', 'config_fax', '', 0),
(1212, 0, 'config', 'config_geocode', '', 0),
(1211, 0, 'config', 'config_address', 'г. Курганинск, ул. Армавирское шоссе, д. 1.', 0),
(1210, 0, 'config', 'config_owner', 'Берисей', 0),
(1209, 0, 'config', 'config_name', 'Берисей', 0),
(1208, 0, 'config', 'config_layout_id', '4', 0),
(1207, 0, 'config', 'config_theme', 'berisey', 0),
(1206, 0, 'config', 'config_meta_keyword', 'БЕРИСЕЙ | Всё для хорошего урожая', 0),
(1205, 0, 'config', 'config_meta_description', 'БЕРИСЕЙ | Всё для хорошего урожая', 0),
(1204, 0, 'config', 'config_meta_title', 'БЕРИСЕЙ | Всё для хорошего урожая', 0),
(847, 0, 'theme_berisey', 'theme_berisey_directory', 'berisey', 0),
(848, 0, 'theme_berisey', 'theme_berisey_status', '1', 0),
(849, 0, 'theme_berisey', 'theme_berisey_product_limit', '15', 0),
(850, 0, 'theme_berisey', 'theme_berisey_product_description_length', '100', 0),
(851, 0, 'theme_berisey', 'theme_berisey_image_category_width', '80', 0),
(852, 0, 'theme_berisey', 'theme_berisey_image_category_height', '80', 0),
(853, 0, 'theme_berisey', 'theme_berisey_image_manufacturer_width', '80', 0),
(854, 0, 'theme_berisey', 'theme_berisey_image_manufacturer_height', '80', 0),
(855, 0, 'theme_berisey', 'theme_berisey_image_thumb_width', '228', 0),
(856, 0, 'theme_berisey', 'theme_berisey_image_thumb_height', '228', 0),
(857, 0, 'theme_berisey', 'theme_berisey_image_popup_width', '500', 0),
(858, 0, 'theme_berisey', 'theme_berisey_image_popup_height', '500', 0),
(859, 0, 'theme_berisey', 'theme_berisey_image_product_width', '228', 0),
(860, 0, 'theme_berisey', 'theme_berisey_image_product_height', '228', 0),
(861, 0, 'theme_berisey', 'theme_berisey_image_additional_width', '74', 0),
(862, 0, 'theme_berisey', 'theme_berisey_image_additional_height', '74', 0),
(863, 0, 'theme_berisey', 'theme_berisey_image_related_width', '80', 0),
(864, 0, 'theme_berisey', 'theme_berisey_image_related_height', '80', 0),
(865, 0, 'theme_berisey', 'theme_berisey_image_compare_width', '90', 0),
(866, 0, 'theme_berisey', 'theme_berisey_image_compare_height', '90', 0),
(867, 0, 'theme_berisey', 'theme_berisey_image_wishlist_width', '47', 0),
(868, 0, 'theme_berisey', 'theme_berisey_image_wishlist_height', '47', 0),
(869, 0, 'theme_berisey', 'theme_berisey_image_cart_width', '47', 0),
(870, 0, 'theme_berisey', 'theme_berisey_image_cart_height', '47', 0),
(871, 0, 'theme_berisey', 'theme_berisey_image_location_width', '268', 0),
(872, 0, 'theme_berisey', 'theme_berisey_image_location_height', '50', 0),
(977, 0, 'developer', 'developer_theme', '0', 0),
(997, 0, 'configblog', 'configblog_image_related_width', '200', 0),
(998, 0, 'configblog', 'configblog_image_related_height', '200', 0),
(999, 0, 'module_information', 'module_information_status', '1', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_shipping_courier`
--

CREATE TABLE `oc_shipping_courier` (
  `shipping_courier_id` int NOT NULL,
  `shipping_courier_code` varchar(255) NOT NULL DEFAULT '',
  `shipping_courier_name` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `oc_shipping_courier`
--

INSERT INTO `oc_shipping_courier` (`shipping_courier_id`, `shipping_courier_code`, `shipping_courier_name`) VALUES
(1, 'dhl', 'DHL'),
(2, 'fedex', 'Fedex'),
(3, 'ups', 'UPS'),
(4, 'royal-mail', 'Royal Mail'),
(5, 'usps', 'United States Postal Service'),
(6, 'auspost', 'Australia Post');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_statistics`
--

CREATE TABLE `oc_statistics` (
  `statistics_id` int NOT NULL,
  `code` varchar(64) NOT NULL,
  `value` decimal(15,4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `oc_statistics`
--

INSERT INTO `oc_statistics` (`statistics_id`, `code`, `value`) VALUES
(1, 'order_sale', 0.0000),
(2, 'order_processing', 0.0000),
(3, 'order_complete', 0.0000),
(4, 'order_other', 0.0000),
(5, 'returns', 0.0000),
(6, 'product', 0.0000),
(7, 'review', 0.0000);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_stock_status`
--

CREATE TABLE `oc_stock_status` (
  `stock_status_id` int NOT NULL,
  `language_id` int NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `oc_stock_status`
--

INSERT INTO `oc_stock_status` (`stock_status_id`, `language_id`, `name`) VALUES
(7, 1, 'В наличии'),
(8, 1, 'Предзаказ'),
(5, 1, 'Нет в наличии'),
(6, 1, 'Ожидание 2-3 дня'),
(7, 2, 'In Stock'),
(8, 2, 'Pre-Order'),
(5, 2, 'Out Of Stock'),
(6, 2, '2-3 Days');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_store`
--

CREATE TABLE `oc_store` (
  `store_id` int NOT NULL,
  `name` varchar(64) NOT NULL,
  `url` varchar(255) NOT NULL,
  `ssl` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_tax_class`
--

CREATE TABLE `oc_tax_class` (
  `tax_class_id` int NOT NULL,
  `title` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `oc_tax_class`
--

INSERT INTO `oc_tax_class` (`tax_class_id`, `title`, `description`, `date_added`, `date_modified`) VALUES
(9, 'НДС', 'НДС', '2009-01-06 23:21:53', '2022-03-15 10:09:04');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_tax_rate`
--

CREATE TABLE `oc_tax_rate` (
  `tax_rate_id` int NOT NULL,
  `geo_zone_id` int NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  `rate` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `type` char(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `oc_tax_rate`
--

INSERT INTO `oc_tax_rate` (`tax_rate_id`, `geo_zone_id`, `name`, `rate`, `type`, `date_added`, `date_modified`) VALUES
(86, 3, 'НДС (20%)', 20.0000, 'P', '2011-03-09 21:17:10', '2022-03-15 10:09:29');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_tax_rate_to_customer_group`
--

CREATE TABLE `oc_tax_rate_to_customer_group` (
  `tax_rate_id` int NOT NULL,
  `customer_group_id` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `oc_tax_rate_to_customer_group`
--

INSERT INTO `oc_tax_rate_to_customer_group` (`tax_rate_id`, `customer_group_id`) VALUES
(86, 1),
(87, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_tax_rule`
--

CREATE TABLE `oc_tax_rule` (
  `tax_rule_id` int NOT NULL,
  `tax_class_id` int NOT NULL,
  `tax_rate_id` int NOT NULL,
  `based` varchar(10) NOT NULL,
  `priority` int NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `oc_tax_rule`
--

INSERT INTO `oc_tax_rule` (`tax_rule_id`, `tax_class_id`, `tax_rate_id`, `based`, `priority`) VALUES
(129, 9, 86, 'store', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_theme`
--

CREATE TABLE `oc_theme` (
  `theme_id` int NOT NULL,
  `store_id` int NOT NULL,
  `theme` varchar(64) NOT NULL,
  `route` varchar(64) NOT NULL,
  `code` mediumtext NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_translation`
--

CREATE TABLE `oc_translation` (
  `translation_id` int NOT NULL,
  `store_id` int NOT NULL,
  `language_id` int NOT NULL,
  `route` varchar(64) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_upload`
--

CREATE TABLE `oc_upload` (
  `upload_id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_user`
--

CREATE TABLE `oc_user` (
  `user_id` int NOT NULL,
  `user_group_id` int NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `image` varchar(255) NOT NULL,
  `code` varchar(40) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `oc_user`
--

INSERT INTO `oc_user` (`user_id`, `user_group_id`, `username`, `password`, `salt`, `firstname`, `lastname`, `email`, `image`, `code`, `ip`, `status`, `date_added`) VALUES
(1, 1, 'ZmeyGAR', '399bc8e0a0cc1e879834d1b4e91b681e63e41afd', 'QJLwbFKsI', 'Zmey', 'GAR', 'lagutin1991@gmail.com', '', '', '127.0.0.1', 1, '2025-03-02 11:55:18'),
(2, 1, 'admin', 'd9a95ff24956b938e5396ba506ba300459bab845', 'cGGzIS9zf', 'Царь Всея', 'Магазина', 'admin@berisey.loc', '', '', '127.0.0.1', 1, '2025-03-02 12:19:30');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_user_group`
--

CREATE TABLE `oc_user_group` (
  `user_group_id` int NOT NULL,
  `name` varchar(64) NOT NULL,
  `permission` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `oc_user_group`
--

INSERT INTO `oc_user_group` (`user_group_id`, `name`, `permission`) VALUES
(1, 'Administrator', '{\"access\":[\"blog\\/article\",\"blog\\/category\",\"blog\\/review\",\"blog\\/setting\",\"catalog\\/attribute\",\"catalog\\/attribute_group\",\"catalog\\/category\",\"catalog\\/download\",\"catalog\\/filter\",\"catalog\\/information\",\"catalog\\/manufacturer\",\"catalog\\/option\",\"catalog\\/product\",\"catalog\\/recurring\",\"catalog\\/review\",\"common\\/column_left\",\"common\\/developer\",\"common\\/filemanager\",\"common\\/profile\",\"common\\/security\",\"customer\\/custom_field\",\"customer\\/customer\",\"customer\\/customer_approval\",\"customer\\/customer_group\",\"design\\/banner\",\"design\\/layout\",\"design\\/seo_url\",\"design\\/theme\",\"design\\/translation\",\"event\\/language\",\"event\\/statistics\",\"event\\/theme\",\"extension\\/advertise\\/google\",\"extension\\/analytics\\/google\",\"extension\\/captcha\\/basic\",\"extension\\/captcha\\/google\",\"extension\\/currency\\/cbr\",\"extension\\/currency\\/ecb\",\"extension\\/currency\\/fixer\",\"extension\\/currency\\/nbu\",\"extension\\/dashboard\\/activity\",\"extension\\/dashboard\\/chart\",\"extension\\/dashboard\\/customer\",\"extension\\/dashboard\\/map\",\"extension\\/dashboard\\/online\",\"extension\\/dashboard\\/order\",\"extension\\/dashboard\\/recent\",\"extension\\/dashboard\\/sale\",\"extension\\/extension\\/advertise\",\"extension\\/extension\\/analytics\",\"extension\\/extension\\/captcha\",\"extension\\/extension\\/currency\",\"extension\\/extension\\/dashboard\",\"extension\\/extension\\/feed\",\"extension\\/extension\\/fraud\",\"extension\\/extension\\/menu\",\"extension\\/extension\\/module\",\"extension\\/extension\\/payment\",\"extension\\/extension\\/promotion\",\"extension\\/extension\\/report\",\"extension\\/extension\\/shipping\",\"extension\\/extension\\/theme\",\"extension\\/extension\\/total\",\"extension\\/feed\\/google_base\",\"extension\\/feed\\/google_sitemap\",\"extension\\/feed\\/yandex_market\",\"extension\\/feed\\/yandex_turbo\",\"extension\\/fraud\\/fraudlabspro\",\"extension\\/fraud\\/ip\",\"extension\\/fraud\\/maxmind\",\"extension\\/module\\/account\",\"extension\\/module\\/amazon_login\",\"extension\\/module\\/amazon_pay\",\"extension\\/module\\/banner\",\"extension\\/module\\/bestseller\",\"extension\\/module\\/blog_category\",\"extension\\/module\\/blog_featured\",\"extension\\/module\\/blog_latest\",\"extension\\/module\\/carousel\",\"extension\\/module\\/category\",\"extension\\/module\\/divido_calculator\",\"extension\\/module\\/featured\",\"extension\\/module\\/featured_article\",\"extension\\/module\\/featured_product\",\"extension\\/module\\/filter\",\"extension\\/module\\/google_hangouts\",\"extension\\/module\\/html\",\"extension\\/module\\/information\",\"extension\\/module\\/klarna_checkout_module\",\"extension\\/module\\/latest\",\"extension\\/module\\/laybuy_layout\",\"extension\\/module\\/paypal_smart_button\",\"extension\\/module\\/slideshow\",\"extension\\/module\\/special\",\"extension\\/module\\/store\",\"extension\\/payment\\/alipay\",\"extension\\/payment\\/alipay_cross\",\"extension\\/payment\\/amazon_login_pay\",\"extension\\/payment\\/authorizenet_aim\",\"extension\\/payment\\/authorizenet_sim\",\"extension\\/payment\\/bank_transfer\",\"extension\\/payment\\/bluepay_hosted\",\"extension\\/payment\\/bluepay_redirect\",\"extension\\/payment\\/cardconnect\",\"extension\\/payment\\/cardinity\",\"extension\\/payment\\/cheque\",\"extension\\/payment\\/cod\",\"extension\\/payment\\/divido\",\"extension\\/payment\\/eway\",\"extension\\/payment\\/firstdata\",\"extension\\/payment\\/firstdata_remote\",\"extension\\/payment\\/free_checkout\",\"extension\\/payment\\/g2apay\",\"extension\\/payment\\/globalpay\",\"extension\\/payment\\/globalpay_remote\",\"extension\\/payment\\/klarna_account\",\"extension\\/payment\\/klarna_checkout\",\"extension\\/payment\\/klarna_invoice\",\"extension\\/payment\\/laybuy\",\"extension\\/payment\\/liqpay\",\"extension\\/payment\\/nochex\",\"extension\\/payment\\/ocstore_w1\",\"extension\\/payment\\/paymate\",\"extension\\/payment\\/paypal\",\"extension\\/payment\\/paypoint\",\"extension\\/payment\\/perpetual_payments\",\"extension\\/payment\\/pilibaba\",\"extension\\/payment\\/pp_express\",\"extension\\/payment\\/pp_payflow\",\"extension\\/payment\\/pp_payflow_iframe\",\"extension\\/payment\\/pp_pro\",\"extension\\/payment\\/pp_pro_iframe\",\"extension\\/payment\\/pp_standard\",\"extension\\/payment\\/securetrading_pp\",\"extension\\/payment\\/securetrading_ws\",\"extension\\/payment\\/skrill\",\"extension\\/payment\\/web_payment_software\",\"extension\\/payment\\/webmoney_wmb\",\"extension\\/payment\\/webmoney_wme\",\"extension\\/payment\\/webmoney_wmk\",\"extension\\/payment\\/webmoney_wmr\",\"extension\\/payment\\/webmoney_wmu\",\"extension\\/payment\\/webmoney_wmv\",\"extension\\/payment\\/webmoney_wmz\",\"extension\\/payment\\/wechat_pay\",\"extension\\/payment\\/worldpay\",\"extension\\/report\\/customer_activity\",\"extension\\/report\\/customer_order\",\"extension\\/report\\/customer_reward\",\"extension\\/report\\/customer_search\",\"extension\\/report\\/customer_transaction\",\"extension\\/report\\/marketing\",\"extension\\/report\\/product_purchased\",\"extension\\/report\\/product_viewed\",\"extension\\/report\\/sale_coupon\",\"extension\\/report\\/sale_order\",\"extension\\/report\\/sale_return\",\"extension\\/report\\/sale_shipping\",\"extension\\/report\\/sale_tax\",\"extension\\/shipping\\/auspost\",\"extension\\/shipping\\/ec_ship\",\"extension\\/shipping\\/fedex\",\"extension\\/shipping\\/flat\",\"extension\\/shipping\\/free\",\"extension\\/shipping\\/item\",\"extension\\/shipping\\/parcelforce_48\",\"extension\\/shipping\\/pickup\",\"extension\\/shipping\\/royal_mail\",\"extension\\/shipping\\/ups\",\"extension\\/shipping\\/usps\",\"extension\\/shipping\\/weight\",\"extension\\/theme\\/default\",\"extension\\/total\\/coupon\",\"extension\\/total\\/credit\",\"extension\\/total\\/handling\",\"extension\\/total\\/klarna_fee\",\"extension\\/total\\/low_order_fee\",\"extension\\/total\\/reward\",\"extension\\/total\\/shipping\",\"extension\\/total\\/sub_total\",\"extension\\/total\\/tax\",\"extension\\/total\\/total\",\"extension\\/total\\/voucher\",\"localisation\\/country\",\"localisation\\/currency\",\"localisation\\/geo_zone\",\"localisation\\/language\",\"localisation\\/length_class\",\"localisation\\/location\",\"localisation\\/order_status\",\"localisation\\/return_action\",\"localisation\\/return_reason\",\"localisation\\/return_status\",\"localisation\\/stock_status\",\"localisation\\/tax_class\",\"localisation\\/tax_rate\",\"localisation\\/weight_class\",\"localisation\\/zone\",\"mail\\/affiliate\",\"mail\\/customer\",\"mail\\/forgotten\",\"mail\\/return\",\"mail\\/reward\",\"mail\\/transaction\",\"marketing\\/contact\",\"marketing\\/coupon\",\"marketing\\/marketing\",\"marketplace\\/api\",\"marketplace\\/event\",\"marketplace\\/extension\",\"marketplace\\/install\",\"marketplace\\/installer\",\"marketplace\\/marketplace\",\"marketplace\\/modification\",\"marketplace\\/opencartforum\",\"report\\/online\",\"report\\/report\",\"report\\/statistics\",\"sale\\/order\",\"sale\\/recurring\",\"sale\\/return\",\"sale\\/voucher\",\"sale\\/voucher_theme\",\"search\\/search\",\"setting\\/setting\",\"setting\\/store\",\"startup\\/error\",\"startup\\/event\",\"startup\\/login\",\"startup\\/permission\",\"startup\\/router\",\"startup\\/sass\",\"startup\\/startup\",\"tool\\/backup\",\"tool\\/log\",\"tool\\/upload\",\"user\\/api\",\"user\\/user\",\"user\\/user_permission\",\"extension\\/theme\\/berisey\",\"extension\\/module\\/information\"],\"modify\":[\"blog\\/article\",\"blog\\/category\",\"blog\\/review\",\"blog\\/setting\",\"catalog\\/attribute\",\"catalog\\/attribute_group\",\"catalog\\/category\",\"catalog\\/download\",\"catalog\\/filter\",\"catalog\\/information\",\"catalog\\/manufacturer\",\"catalog\\/option\",\"catalog\\/product\",\"catalog\\/recurring\",\"catalog\\/review\",\"common\\/column_left\",\"common\\/developer\",\"common\\/filemanager\",\"common\\/profile\",\"common\\/security\",\"customer\\/custom_field\",\"customer\\/customer\",\"customer\\/customer_approval\",\"customer\\/customer_group\",\"design\\/banner\",\"design\\/layout\",\"design\\/seo_url\",\"design\\/theme\",\"design\\/translation\",\"event\\/language\",\"event\\/statistics\",\"event\\/theme\",\"extension\\/advertise\\/google\",\"extension\\/analytics\\/google\",\"extension\\/captcha\\/basic\",\"extension\\/captcha\\/google\",\"extension\\/currency\\/cbr\",\"extension\\/currency\\/ecb\",\"extension\\/currency\\/fixer\",\"extension\\/currency\\/nbu\",\"extension\\/dashboard\\/activity\",\"extension\\/dashboard\\/chart\",\"extension\\/dashboard\\/customer\",\"extension\\/dashboard\\/map\",\"extension\\/dashboard\\/online\",\"extension\\/dashboard\\/order\",\"extension\\/dashboard\\/recent\",\"extension\\/dashboard\\/sale\",\"extension\\/extension\\/advertise\",\"extension\\/extension\\/analytics\",\"extension\\/extension\\/captcha\",\"extension\\/extension\\/currency\",\"extension\\/extension\\/dashboard\",\"extension\\/extension\\/feed\",\"extension\\/extension\\/fraud\",\"extension\\/extension\\/menu\",\"extension\\/extension\\/module\",\"extension\\/extension\\/payment\",\"extension\\/extension\\/promotion\",\"extension\\/extension\\/report\",\"extension\\/extension\\/shipping\",\"extension\\/extension\\/theme\",\"extension\\/extension\\/total\",\"extension\\/feed\\/google_base\",\"extension\\/feed\\/google_sitemap\",\"extension\\/feed\\/yandex_market\",\"extension\\/feed\\/yandex_turbo\",\"extension\\/fraud\\/fraudlabspro\",\"extension\\/fraud\\/ip\",\"extension\\/fraud\\/maxmind\",\"extension\\/module\\/account\",\"extension\\/module\\/amazon_login\",\"extension\\/module\\/amazon_pay\",\"extension\\/module\\/banner\",\"extension\\/module\\/bestseller\",\"extension\\/module\\/blog_category\",\"extension\\/module\\/blog_featured\",\"extension\\/module\\/blog_latest\",\"extension\\/module\\/carousel\",\"extension\\/module\\/category\",\"extension\\/module\\/divido_calculator\",\"extension\\/module\\/featured\",\"extension\\/module\\/featured_article\",\"extension\\/module\\/featured_product\",\"extension\\/module\\/filter\",\"extension\\/module\\/google_hangouts\",\"extension\\/module\\/html\",\"extension\\/module\\/information\",\"extension\\/module\\/klarna_checkout_module\",\"extension\\/module\\/latest\",\"extension\\/module\\/laybuy_layout\",\"extension\\/module\\/paypal_smart_button\",\"extension\\/module\\/slideshow\",\"extension\\/module\\/special\",\"extension\\/module\\/store\",\"extension\\/payment\\/alipay\",\"extension\\/payment\\/authorizenet_aim\",\"extension\\/payment\\/authorizenet_sim\",\"extension\\/payment\\/bank_transfer\",\"extension\\/payment\\/bluepay_hosted\",\"extension\\/payment\\/bluepay_redirect\",\"extension\\/payment\\/cardconnect\",\"extension\\/payment\\/cardinity\",\"extension\\/payment\\/cheque\",\"extension\\/payment\\/cod\",\"extension\\/payment\\/divido\",\"extension\\/payment\\/eway\",\"extension\\/payment\\/firstdata\",\"extension\\/payment\\/firstdata_remote\",\"extension\\/payment\\/free_checkout\",\"extension\\/payment\\/g2apay\",\"extension\\/payment\\/globalpay\",\"extension\\/payment\\/globalpay_remote\",\"extension\\/payment\\/klarna_account\",\"extension\\/payment\\/klarna_checkout\",\"extension\\/payment\\/klarna_invoice\",\"extension\\/payment\\/laybuy\",\"extension\\/payment\\/liqpay\",\"extension\\/payment\\/nochex\",\"extension\\/payment\\/ocstore_w1\",\"extension\\/payment\\/paymate\",\"extension\\/payment\\/paypal\",\"extension\\/payment\\/paypoint\",\"extension\\/payment\\/payza\",\"extension\\/payment\\/perpetual_payments\",\"extension\\/payment\\/pilibaba\",\"extension\\/payment\\/pp_braintree\",\"extension\\/payment\\/pp_express\",\"extension\\/payment\\/pp_payflow\",\"extension\\/payment\\/pp_payflow_iframe\",\"extension\\/payment\\/pp_pro\",\"extension\\/payment\\/pp_pro_iframe\",\"extension\\/payment\\/pp_standard\",\"extension\\/payment\\/securetrading_pp\",\"extension\\/payment\\/securetrading_ws\",\"extension\\/payment\\/skrill\",\"extension\\/payment\\/squareup\",\"extension\\/payment\\/twocheckout\",\"extension\\/payment\\/web_payment_software\",\"extension\\/payment\\/webmoney_wmb\",\"extension\\/payment\\/webmoney_wme\",\"extension\\/payment\\/webmoney_wmk\",\"extension\\/payment\\/webmoney_wmr\",\"extension\\/payment\\/webmoney_wmu\",\"extension\\/payment\\/webmoney_wmv\",\"extension\\/payment\\/webmoney_wmz\",\"extension\\/payment\\/wechat_pay\",\"extension\\/payment\\/worldpay\",\"extension\\/report\\/customer_activity\",\"extension\\/report\\/customer_order\",\"extension\\/report\\/customer_reward\",\"extension\\/report\\/customer_search\",\"extension\\/report\\/customer_transaction\",\"extension\\/report\\/marketing\",\"extension\\/report\\/product_purchased\",\"extension\\/report\\/product_viewed\",\"extension\\/report\\/sale_coupon\",\"extension\\/report\\/sale_order\",\"extension\\/report\\/sale_return\",\"extension\\/report\\/sale_shipping\",\"extension\\/report\\/sale_tax\",\"extension\\/shipping\\/auspost\",\"extension\\/shipping\\/ec_ship\",\"extension\\/shipping\\/fedex\",\"extension\\/shipping\\/flat\",\"extension\\/shipping\\/free\",\"extension\\/shipping\\/item\",\"extension\\/shipping\\/parcelforce_48\",\"extension\\/shipping\\/pickup\",\"extension\\/shipping\\/royal_mail\",\"extension\\/shipping\\/ups\",\"extension\\/shipping\\/usps\",\"extension\\/shipping\\/weight\",\"extension\\/theme\\/default\",\"extension\\/total\\/coupon\",\"extension\\/total\\/credit\",\"extension\\/total\\/handling\",\"extension\\/total\\/klarna_fee\",\"extension\\/total\\/low_order_fee\",\"extension\\/total\\/reward\",\"extension\\/total\\/shipping\",\"extension\\/total\\/sub_total\",\"extension\\/total\\/tax\",\"extension\\/total\\/total\",\"extension\\/total\\/voucher\",\"localisation\\/country\",\"localisation\\/currency\",\"localisation\\/geo_zone\",\"localisation\\/language\",\"localisation\\/length_class\",\"localisation\\/location\",\"localisation\\/order_status\",\"localisation\\/return_action\",\"localisation\\/return_reason\",\"localisation\\/return_status\",\"localisation\\/stock_status\",\"localisation\\/tax_class\",\"localisation\\/tax_rate\",\"localisation\\/weight_class\",\"localisation\\/zone\",\"mail\\/affiliate\",\"mail\\/customer\",\"mail\\/forgotten\",\"mail\\/return\",\"mail\\/reward\",\"mail\\/transaction\",\"marketing\\/contact\",\"marketing\\/coupon\",\"marketing\\/marketing\",\"marketplace\\/api\",\"marketplace\\/event\",\"marketplace\\/extension\",\"marketplace\\/install\",\"marketplace\\/installer\",\"marketplace\\/marketplace\",\"marketplace\\/modification\",\"marketplace\\/opencartforum\",\"report\\/online\",\"report\\/report\",\"report\\/statistics\",\"sale\\/order\",\"sale\\/recurring\",\"sale\\/return\",\"sale\\/voucher\",\"sale\\/voucher_theme\",\"search\\/search\",\"setting\\/setting\",\"setting\\/store\",\"startup\\/error\",\"startup\\/event\",\"startup\\/login\",\"startup\\/permission\",\"startup\\/router\",\"startup\\/sass\",\"startup\\/startup\",\"tool\\/backup\",\"tool\\/log\",\"tool\\/upload\",\"user\\/api\",\"user\\/user\",\"user\\/user_permission\",\"extension\\/theme\\/berisey\",\"extension\\/module\\/information\"]}'),
(10, 'Demonstration', '');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_voucher`
--

CREATE TABLE `oc_voucher` (
  `voucher_id` int NOT NULL,
  `order_id` int NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_voucher_history`
--

CREATE TABLE `oc_voucher_history` (
  `voucher_history_id` int NOT NULL,
  `voucher_id` int NOT NULL,
  `order_id` int NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_voucher_theme`
--

CREATE TABLE `oc_voucher_theme` (
  `voucher_theme_id` int NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `oc_voucher_theme`
--

INSERT INTO `oc_voucher_theme` (`voucher_theme_id`, `image`) VALUES
(8, 'catalog/demo/canon_eos_5d_2.jpg'),
(7, 'catalog/demo/gift-voucher-birthday.jpg'),
(6, 'catalog/demo/apple_logo.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_voucher_theme_description`
--

CREATE TABLE `oc_voucher_theme_description` (
  `voucher_theme_id` int NOT NULL,
  `language_id` int NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `oc_voucher_theme_description`
--

INSERT INTO `oc_voucher_theme_description` (`voucher_theme_id`, `language_id`, `name`) VALUES
(6, 1, 'Christmas'),
(7, 1, 'Birthday'),
(8, 1, 'General');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_weight_class`
--

CREATE TABLE `oc_weight_class` (
  `weight_class_id` int NOT NULL,
  `value` decimal(15,8) NOT NULL DEFAULT '0.00000000'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `oc_weight_class`
--

INSERT INTO `oc_weight_class` (`weight_class_id`, `value`) VALUES
(1, 1.00000000),
(2, 1000.00000000),
(5, 2.20460000),
(6, 35.27400000);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_weight_class_description`
--

CREATE TABLE `oc_weight_class_description` (
  `weight_class_id` int NOT NULL,
  `language_id` int NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `oc_weight_class_description`
--

INSERT INTO `oc_weight_class_description` (`weight_class_id`, `language_id`, `title`, `unit`) VALUES
(1, 1, 'Килограммы', 'кг'),
(1, 2, 'Kilogram', 'kg'),
(2, 1, 'Граммы', 'гр'),
(5, 1, 'Фунты', 'lb'),
(5, 2, 'Pound', 'lb'),
(6, 1, 'Унции', 'oz'),
(6, 2, 'Ounce', 'oz');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_zone`
--

CREATE TABLE `oc_zone` (
  `zone_id` int NOT NULL,
  `country_id` int NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(32) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `oc_zone`
--

INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(180, 11, 'Арагацотн', 'AGT', 1),
(181, 11, 'Арарат', 'ARR', 1),
(182, 11, 'Армавир', 'ARM', 1),
(183, 11, 'Гегаркуник', 'GEG', 1),
(184, 11, 'Котайк', 'KOT', 1),
(185, 11, 'Лори', 'LOR', 1),
(186, 11, 'Ширак', 'SHI', 1),
(187, 11, 'Сюник', 'SYU', 1),
(188, 11, 'Тавуш', 'TAV', 1),
(189, 11, 'Вайоц Дзор', 'VAY', 1),
(190, 11, 'Ереван', 'YER', 1),
(208, 15, 'Ali Bayramli', 'AB', 1),
(209, 15, 'Abseron', 'ABS', 1),
(210, 15, 'AgcabAdi', 'AGC', 1),
(211, 15, 'Agdam', 'AGM', 1),
(212, 15, 'Agdas', 'AGS', 1),
(213, 15, 'Agstafa', 'AGA', 1),
(214, 15, 'Agsu', 'AGU', 1),
(215, 15, 'Astara', 'AST', 1),
(216, 15, 'Baki', 'BA', 1),
(217, 15, 'BabAk', 'BAB', 1),
(218, 15, 'BalakAn', 'BAL', 1),
(219, 15, 'BArdA', 'BAR', 1),
(220, 15, 'Beylaqan', 'BEY', 1),
(221, 15, 'Bilasuvar', 'BIL', 1),
(222, 15, 'Cabrayil', 'CAB', 1),
(223, 15, 'Calilabab', 'CAL', 1),
(224, 15, 'Culfa', 'CUL', 1),
(225, 15, 'Daskasan', 'DAS', 1),
(226, 15, 'Davaci', 'DAV', 1),
(227, 15, 'Fuzuli', 'FUZ', 1),
(228, 15, 'Ganca', 'GA', 1),
(229, 15, 'Gadabay', 'GAD', 1),
(230, 15, 'Goranboy', 'GOR', 1),
(231, 15, 'Goycay', 'GOY', 1),
(232, 15, 'Haciqabul', 'HAC', 1),
(233, 15, 'Imisli', 'IMI', 1),
(234, 15, 'Ismayilli', 'ISM', 1),
(235, 15, 'Kalbacar', 'KAL', 1),
(236, 15, 'Kurdamir', 'KUR', 1),
(237, 15, 'Lankaran', 'LA', 1),
(238, 15, 'Lacin', 'LAC', 1),
(239, 15, 'Lankaran', 'LAN', 1),
(240, 15, 'Lerik', 'LER', 1),
(241, 15, 'Masalli', 'MAS', 1),
(242, 15, 'Mingacevir', 'MI', 1),
(243, 15, 'Naftalan', 'NA', 1),
(244, 15, 'Neftcala', 'NEF', 1),
(245, 15, 'Oguz', 'OGU', 1),
(246, 15, 'Ordubad', 'ORD', 1),
(247, 15, 'Qabala', 'QAB', 1),
(248, 15, 'Qax', 'QAX', 1),
(249, 15, 'Qazax', 'QAZ', 1),
(250, 15, 'Qobustan', 'QOB', 1),
(251, 15, 'Quba', 'QBA', 1),
(252, 15, 'Qubadli', 'QBI', 1),
(253, 15, 'Qusar', 'QUS', 1),
(254, 15, 'Saki', 'SA', 1),
(255, 15, 'Saatli', 'SAT', 1),
(256, 15, 'Sabirabad', 'SAB', 1),
(257, 15, 'Sadarak', 'SAD', 1),
(258, 15, 'Sahbuz', 'SAH', 1),
(259, 15, 'Saki', 'SAK', 1),
(260, 15, 'Salyan', 'SAL', 1),
(261, 15, 'Sumqayit', 'SM', 1),
(262, 15, 'Samaxi', 'SMI', 1),
(263, 15, 'Samkir', 'SKR', 1),
(264, 15, 'Samux', 'SMX', 1),
(265, 15, 'Sarur', 'SAR', 1),
(266, 15, 'Siyazan', 'SIY', 1),
(267, 15, 'Susa', 'SS', 1),
(268, 15, 'Susa', 'SUS', 1),
(269, 15, 'Tartar', 'TAR', 1),
(270, 15, 'Tovuz', 'TOV', 1),
(271, 15, 'Ucar', 'UCA', 1),
(272, 15, 'Xankandi', 'XA', 1),
(273, 15, 'Xacmaz', 'XAC', 1),
(274, 15, 'Xanlar', 'XAN', 1),
(275, 15, 'Xizi', 'XIZ', 1),
(276, 15, 'Xocali', 'XCI', 1),
(277, 15, 'Xocavand', 'XVD', 1),
(278, 15, 'Yardimli', 'YAR', 1),
(279, 15, 'Yevlax', 'YEV', 1),
(280, 15, 'Zangilan', 'ZAN', 1),
(281, 15, 'Zaqatala', 'ZAQ', 1),
(282, 15, 'Zardab', 'ZAR', 1),
(283, 15, 'Naxcivan', 'NX', 1),
(337, 20, 'Брест', 'BR', 1),
(338, 20, 'Гомель', 'HO', 1),
(339, 20, 'Минск', 'HM', 1),
(340, 20, 'Гродно', 'HR', 1),
(341, 20, 'Могилев', 'MA', 1),
(342, 20, 'Минская область', 'MI', 1),
(343, 20, 'Витебск', 'VI', 1),
(684, 44, 'Anhui', 'AN', 1),
(685, 44, 'Beijing', 'BE', 1),
(686, 44, 'Chongqing', 'CH', 1),
(687, 44, 'Fujian', 'FU', 1),
(688, 44, 'Gansu', 'GA', 1),
(689, 44, 'Guangdong', 'GU', 1),
(690, 44, 'Guangxi', 'GX', 1),
(691, 44, 'Guizhou', 'GZ', 1),
(692, 44, 'Hainan', 'HA', 1),
(693, 44, 'Hebei', 'HB', 1),
(694, 44, 'Heilongjiang', 'HL', 1),
(695, 44, 'Henan', 'HE', 1),
(696, 44, 'Hong Kong', 'HK', 1),
(697, 44, 'Hubei', 'HU', 1),
(698, 44, 'Hunan', 'HN', 1),
(699, 44, 'Inner Mongolia', 'IM', 1),
(700, 44, 'Jiangsu', 'JI', 1),
(701, 44, 'Jiangxi', 'JX', 1),
(702, 44, 'Jilin', 'JL', 1),
(703, 44, 'Liaoning', 'LI', 1),
(704, 44, 'Macau', 'MA', 1),
(705, 44, 'Ningxia', 'NI', 1),
(706, 44, 'Shaanxi', 'SH', 1),
(707, 44, 'Shandong', 'SA', 1),
(708, 44, 'Shanghai', 'SG', 1),
(709, 44, 'Shanxi', 'SX', 1),
(710, 44, 'Sichuan', 'SI', 1),
(711, 44, 'Tianjin', 'TI', 1),
(712, 44, 'Xinjiang', 'XI', 1),
(713, 44, 'Yunnan', 'YU', 1),
(714, 44, 'Zhejiang', 'ZH', 1),
(847, 53, 'Bjelovarsko-bilogorska', 'BB', 1),
(848, 53, 'Grad Zagreb', 'GZ', 1),
(849, 53, 'Dubrovačko-neretvanska', 'DN', 1),
(850, 53, 'Istarska', 'IS', 1),
(851, 53, 'Karlovačka', 'KA', 1),
(852, 53, 'Koprivničko-križevačka', 'KK', 1),
(853, 53, 'Krapinsko-zagorska', 'KZ', 1),
(854, 53, 'Ličko-senjska', 'LS', 1),
(855, 53, 'Međimurska', 'ME', 1),
(856, 53, 'Osječko-baranjska', 'OB', 1),
(857, 53, 'Požeško-slavonska', 'PS', 1),
(858, 53, 'Primorsko-goranska', 'PG', 1),
(859, 53, 'Šibensko-kninska', 'SK', 1),
(860, 53, 'Sisačko-moslavačka', 'SM', 1),
(861, 53, 'Brodsko-posavska', 'BP', 1),
(862, 53, 'Splitsko-dalmatinska', 'SD', 1),
(863, 53, 'Varaždinska', 'VA', 1),
(864, 53, 'Virovitičko-podravska', 'VP', 1),
(865, 53, 'Vukovarsko-srijemska', 'VS', 1),
(866, 53, 'Zadarska', 'ZA', 1),
(867, 53, 'Zagrebačka', 'ZG', 1),
(889, 56, 'Ústecký', 'U', 1),
(890, 56, 'Jihočeský', 'C', 1),
(891, 56, 'Jihomoravský', 'B', 1),
(892, 56, 'Karlovarský', 'K', 1),
(893, 56, 'Královehradecký', 'H', 1),
(894, 56, 'Liberecký', 'L', 1),
(895, 56, 'Moravskoslezský', 'T', 1),
(896, 56, 'Olomoucký', 'M', 1),
(897, 56, 'Pardubický', 'E', 1),
(898, 56, 'Plzeňský', 'P', 1),
(899, 56, 'Praha', 'A', 1),
(900, 56, 'Středočeský', 'S', 1),
(901, 56, 'Vysočina', 'J', 1),
(902, 56, 'Zlínský', 'Z', 1),
(1054, 67, 'Harjumaa (Tallinn)', 'HA', 1),
(1055, 67, 'Hiiumaa (Kardla)', 'HI', 1),
(1056, 67, 'Ida-Virumaa (Johvi)', 'IV', 1),
(1057, 67, 'Jarvamaa (Paide)', 'JA', 1),
(1058, 67, 'Jogevamaa (Jogeva)', 'JO', 1),
(1059, 67, 'Laane-Virumaa (Rakvere)', 'LV', 1),
(1060, 67, 'Laanemaa (Haapsalu)', 'LA', 1),
(1061, 67, 'Parnumaa (Parnu)', 'PA', 1),
(1062, 67, 'Polvamaa (Polva)', 'PO', 1),
(1063, 67, 'Raplamaa (Rapla)', 'RA', 1),
(1064, 67, 'Saaremaa (Kuessaare)', 'SA', 1),
(1065, 67, 'Tartumaa (Tartu)', 'TA', 1),
(1066, 67, 'Valgamaa (Valga)', 'VA', 1),
(1067, 67, 'Viljandimaa (Viljandi)', 'VI', 1),
(1068, 67, 'Vorumaa (Voru)', 'VO', 1),
(1085, 72, 'Ahvenanmaan lääni', 'AL', 1),
(1086, 72, 'Etelä-Suomen lääni', 'ES', 1),
(1087, 72, 'Itä-Suomen lääni', 'IS', 1),
(1088, 72, 'Länsi-Suomen lääni', 'LS', 1),
(1089, 72, 'Lapin lääni', 'LA', 1),
(1090, 72, 'Oulun lääni', 'OU', 1),
(1242, 80, 'Abkhazia', 'AB', 1),
(1243, 80, 'Ajaria', 'AJ', 1),
(1244, 80, 'Tbilisi', 'TB', 1),
(1245, 80, 'Guria', 'GU', 1),
(1246, 80, 'Imereti', 'IM', 1),
(1247, 80, 'Kakheti', 'KA', 1),
(1248, 80, 'Kvemo Kartli', 'KK', 1),
(1249, 80, 'Mtskheta-Mtianeti', 'MM', 1),
(1250, 80, 'Racha Lechkhumi and Kvemo Svanet', 'RL', 1),
(1251, 80, 'Samegrelo-Zemo Svaneti', 'SZ', 1),
(1252, 80, 'Samtskhe-Javakheti', 'SJ', 1),
(1253, 80, 'Shida Kartli', 'SK', 1),
(1716, 109, 'Алматинская область', 'AL', 1),
(1717, 109, 'Алматы', 'ALA', 1),
(1718, 109, 'Акмолинская область', 'AM', 1),
(1719, 109, 'Актюбинская область', 'AQ', 1),
(1720, 109, 'Астана', 'AST', 1),
(1721, 109, 'Атырауская область', 'AT', 1),
(1722, 109, 'Западно-Казахстанская область', 'BA', 1),
(1723, 109, 'Байконур', 'BY', 1),
(1724, 109, 'Мангистауская область', 'MA', 1),
(1725, 109, 'Южно-Казахстанская область', 'ON', 1),
(1726, 109, 'Павлодарская область', 'PA', 1),
(1727, 109, 'Карагандинская область', 'QA', 1),
(1728, 109, 'Костанайская область', 'QO', 1),
(1729, 109, 'Кызылординская область', 'QY', 1),
(1730, 109, 'Восточно-Казахстанская область', 'SH', 1),
(1731, 109, 'Северо-Казахстанская область', 'SO', 1),
(1732, 109, 'Жамбылская область', 'ZH', 1),
(1793, 115, 'Bishkek', 'GB', 1),
(1794, 115, 'Batken', 'B', 1),
(1795, 115, 'Chu', 'C', 1),
(1796, 115, 'Jalal-Abad', 'J', 1),
(1797, 115, 'Naryn', 'N', 1),
(1798, 115, 'Osh', 'O', 1),
(1799, 115, 'Talas', 'T', 1),
(1800, 115, 'Ysyk-Kol', 'Y', 1),
(1911, 123, 'Alytus', 'AL', 1),
(1912, 123, 'Kaunas', 'KA', 1),
(1913, 123, 'Klaipeda', 'KL', 1),
(1914, 123, 'Marijampole', 'MA', 1),
(1915, 123, 'Panevezys', 'PA', 1),
(1916, 123, 'Siauliai', 'SI', 1),
(1917, 123, 'Taurage', 'TA', 1),
(1918, 123, 'Telsiai', 'TE', 1),
(1919, 123, 'Utena', 'UT', 1),
(2181, 140, 'Gagauzia', 'GA', 1),
(2182, 140, 'Chisinau', 'CU', 1),
(2183, 140, 'Balti', 'BA', 1),
(2184, 140, 'Cahul', 'CA', 1),
(2185, 140, 'Edinet', 'ED', 1),
(2186, 140, 'Lapusna', 'LA', 1),
(2187, 140, 'Orhei', 'OR', 1),
(2188, 140, 'Soroca', 'SO', 1),
(2189, 140, 'Tighina', 'TI', 1),
(2190, 140, 'Ungheni', 'UN', 1),
(2191, 140, 'St‚nga Nistrului', 'SN', 1),
(2721, 176, 'Республика Хакасия', 'KK', 1),
(2722, 176, 'Забайкальский край', 'ZAB', 1),
(2723, 176, 'Чукотский АО', 'CHU', 1),
(2724, 176, 'Архангельская область', 'ARK', 1),
(2725, 176, 'Астраханская область', 'AST', 1),
(2726, 176, 'Алтайский край', 'ALT', 1),
(2727, 176, 'Белгородская область', 'BEL', 1),
(2728, 176, 'Еврейская АО', 'YEV', 1),
(2729, 176, 'Амурская область', 'AMU', 1),
(2730, 176, 'Брянская область', 'BRY', 1),
(2731, 176, 'Чувашская Республика', 'CU', 1),
(2732, 176, 'Челябинская область', 'CHE', 1),
(2733, 176, 'Карачаево-Черкесия', 'KC', 1),
(2735, 176, 'Таймырский АО', 'TDN', 1),
(2736, 176, 'Республика Калмыкия', 'KL', 1),
(2738, 176, 'Республика Алтай', 'AL', 1),
(2739, 176, 'Чеченская Республика', 'CE', 1),
(2740, 176, 'Иркутская область', 'IRK', 1),
(2741, 176, 'Ивановская область', 'IVA', 1),
(2742, 176, 'Удмуртская Республика', 'UD', 1),
(2743, 176, 'Калининградская область', 'KGD', 1),
(2744, 176, 'Калужская область', 'KLU', 1),
(2745, 176, 'Краснодарский край', 'KDA', 1),
(3483, 176, 'Крым', '43', 1),
(3498, 176, 'Севастополь', '40', 1),
(2746, 176, 'Республика Татарстан', 'TA', 1),
(2747, 176, 'Кемеровская область', 'KEM', 1),
(2748, 176, 'Хабаровский край', 'KHA', 1),
(2749, 176, 'Ханты-Мансийский АО - Югра', 'KHM', 1),
(2750, 176, 'Костромская область', 'KOS', 1),
(2751, 176, 'Московская область', 'MOS', 1),
(2752, 176, 'Красноярский край', 'KYA', 1),
(2753, 176, 'Коми-Пермяцкий АО', 'KOP', 1),
(2754, 176, 'Курганская область', 'KGN', 1),
(2755, 176, 'Курская область', 'KRS', 1),
(2756, 176, 'Республика Тыва', 'TY', 1),
(2757, 176, 'Липецкая область', 'LIP', 1),
(2758, 176, 'Магаданская область', 'MAG', 1),
(2759, 176, 'Республика Дагестан', 'DA', 1),
(2760, 176, 'Республика Адыгея', 'AD', 1),
(2761, 176, 'Москва', 'MOW', 1),
(2762, 176, 'Мурманская область', 'MUR', 1),
(2763, 176, 'Республика Кабардино-Балкария', 'KB', 1),
(2764, 176, 'Ненецкий АО', 'NEN', 1),
(2765, 176, 'Республика Ингушетия', 'IN', 1),
(2766, 176, 'Нижегородская область', 'NIZ', 1),
(2767, 176, 'Новгородская область', 'NGR', 1),
(2768, 176, 'Новосибирская область', 'NVS', 1),
(2769, 176, 'Омская область', 'OMS', 1),
(2770, 176, 'Орловская область', 'ORL', 1),
(2771, 176, 'Оренбургская область', 'ORE', 1),
(2772, 176, 'Корякский АО', 'KOR', 1),
(2773, 176, 'Пензенская область', 'PNZ', 1),
(2774, 176, 'Пермский край', 'PER', 1),
(2775, 176, 'Камчатский край', 'KAM', 1),
(2776, 176, 'Республика Карелия', 'KR', 1),
(2777, 176, 'Псковская область', 'PSK', 1),
(2778, 176, 'Ростовская область', 'ROS', 1),
(2779, 176, 'Рязанская область', 'RYA', 1),
(2780, 176, 'Ямало-Ненецкий АО', 'YAN', 1),
(2781, 176, 'Самарская область', 'SAM', 1),
(2782, 176, 'Республика Мордовия', 'MO', 1),
(2783, 176, 'Саратовская область', 'SAR', 1),
(2784, 176, 'Смоленская область', 'SMO', 1),
(2785, 176, 'Санкт-Петербург', 'SPE', 1),
(2786, 176, 'Ставропольский край', 'STA', 1),
(2787, 176, 'Республика Коми', 'KO', 1),
(2788, 176, 'Тамбовская область', 'TAM', 1),
(2789, 176, 'Томская область', 'TOM', 1),
(2790, 176, 'Тульская область', 'TUL', 1),
(2791, 176, 'Ленинградская область', 'LEN', 1),
(2792, 176, 'Тверская область', 'TVE', 1),
(2793, 176, 'Тюменская область', 'TYU', 1),
(2794, 176, 'Республика Башкортостан', 'BA', 1),
(2795, 176, 'Ульяновская область', 'ULY', 1),
(2796, 176, 'Республика Бурятия', 'BU', 1),
(2798, 176, 'Республика Северная Осетия', 'SE', 1),
(2799, 176, 'Владимирская область', 'VLA', 1),
(2800, 176, 'Приморский край', 'PRI', 1),
(2801, 176, 'Волгоградская область', 'VGG', 1),
(2802, 176, 'Вологодская область', 'VLG', 1),
(2803, 176, 'Воронежская область', 'VOR', 1),
(2804, 176, 'Кировская область', 'KIR', 1),
(2805, 176, 'Республика  Саха / Якутия', 'SA', 1),
(2806, 176, 'Ярославская область', 'YAR', 1),
(2807, 176, 'Свердловская область', 'SVE', 1),
(2808, 176, 'Республика Марий Эл', 'ME', 1),
(2925, 189, 'Banskobystrický', 'BA', 1),
(2926, 189, 'Bratislavský', 'BR', 1),
(2927, 189, 'Košický', 'KO', 1),
(2928, 189, 'Nitriansky', 'NI', 1),
(2929, 189, 'Prešovský', 'PR', 1),
(2930, 189, 'Trenčiansky', 'TC', 1),
(2931, 189, 'Trnavský', 'TV', 1),
(2932, 189, 'Žilinský', 'ZI', 1),
(3160, 207, 'Gorno-Badakhstan', 'GB', 1),
(3161, 207, 'Khatlon', 'KT', 1),
(3162, 207, 'Sughd', 'SU', 1),
(3315, 215, 'Adana', 'ADA', 1),
(3316, 215, 'Adıyaman', 'ADI', 1),
(3317, 215, 'Afyonkarahisar', 'AFY', 1),
(3318, 215, 'Ağrı', 'AGR', 1),
(3319, 215, 'Aksaray', 'AKS', 1),
(3320, 215, 'Amasya', 'AMA', 1),
(3321, 215, 'Ankara', 'ANK', 1),
(3322, 215, 'Antalya', 'ANT', 1),
(3323, 215, 'Ardahan', 'ARD', 1),
(3324, 215, 'Artvin', 'ART', 1),
(3325, 215, 'Aydın', 'AYI', 1),
(3326, 215, 'Balıkesir', 'BAL', 1),
(3327, 215, 'Bartın', 'BAR', 1),
(3328, 215, 'Batman', 'BAT', 1),
(3329, 215, 'Bayburt', 'BAY', 1),
(3330, 215, 'Bilecik', 'BIL', 1),
(3331, 215, 'Bingöl', 'BIN', 1),
(3332, 215, 'Bitlis', 'BIT', 1),
(3333, 215, 'Bolu', 'BOL', 1),
(3334, 215, 'Burdur', 'BRD', 1),
(3335, 215, 'Bursa', 'BRS', 1),
(3336, 215, 'Çanakkale', 'CKL', 1),
(3337, 215, 'Çankırı', 'CKR', 1),
(3338, 215, 'Çorum', 'COR', 1),
(3339, 215, 'Denizli', 'DEN', 1),
(3340, 215, 'Diyarbakır', 'DIY', 1),
(3341, 215, 'Düzce', 'DUZ', 1),
(3342, 215, 'Edirne', 'EDI', 1),
(3343, 215, 'Elazığ', 'ELA', 1),
(3344, 215, 'Erzincan', 'EZC', 1),
(3345, 215, 'Erzurum', 'EZR', 1),
(3346, 215, 'Eskişehir', 'ESK', 1),
(3347, 215, 'Gaziantep', 'GAZ', 1),
(3348, 215, 'Giresun', 'GIR', 1),
(3349, 215, 'Gümüşhane', 'GMS', 1),
(3350, 215, 'Hakkari', 'HKR', 1),
(3351, 215, 'Hatay', 'HTY', 1),
(3352, 215, 'Iğdır', 'IGD', 1),
(3353, 215, 'Isparta', 'ISP', 1),
(3354, 215, 'İstanbul', 'IST', 1),
(3355, 215, 'İzmir', 'IZM', 1),
(3356, 215, 'Kahramanmaraş', 'KAH', 1),
(3357, 215, 'Karabük', 'KRB', 1),
(3358, 215, 'Karaman', 'KRM', 1),
(3359, 215, 'Kars', 'KRS', 1),
(3360, 215, 'Kastamonu', 'KAS', 1),
(3361, 215, 'Kayseri', 'KAY', 1),
(3362, 215, 'Kilis', 'KLS', 1),
(3363, 215, 'Kırıkkale', 'KRK', 1),
(3364, 215, 'Kırklareli', 'KLR', 1),
(3365, 215, 'Kırşehir', 'KRH', 1),
(3366, 215, 'Kocaeli', 'KOC', 1),
(3367, 215, 'Konya', 'KON', 1),
(3368, 215, 'Kütahya', 'KUT', 1),
(3369, 215, 'Malatya', 'MAL', 1),
(3370, 215, 'Manisa', 'MAN', 1),
(3371, 215, 'Mardin', 'MAR', 1),
(3372, 215, 'Mersin', 'MER', 1),
(3373, 215, 'Muğla', 'MUG', 1),
(3374, 215, 'Muş', 'MUS', 1),
(3375, 215, 'Nevşehir', 'NEV', 1),
(3376, 215, 'Niğde', 'NIG', 1),
(3377, 215, 'Ordu', 'ORD', 1),
(3378, 215, 'Osmaniye', 'OSM', 1),
(3379, 215, 'Rize', 'RIZ', 1),
(3380, 215, 'Sakarya', 'SAK', 1),
(3381, 215, 'Samsun', 'SAM', 1),
(3382, 215, 'Şanlıurfa', 'SAN', 1),
(3383, 215, 'Siirt', 'SII', 1),
(3384, 215, 'Sinop', 'SIN', 1),
(3385, 215, 'Şırnak', 'SIR', 1),
(3386, 215, 'Sivas', 'SIV', 1),
(3387, 215, 'Tekirdağ', 'TEL', 1),
(3388, 215, 'Tokat', 'TOK', 1),
(3389, 215, 'Trabzon', 'TRA', 1),
(3390, 215, 'Tunceli', 'TUN', 1),
(3391, 215, 'Uşak', 'USK', 1),
(3392, 215, 'Van', 'VAN', 1),
(3393, 215, 'Yalova', 'YAL', 1),
(3394, 215, 'Yozgat', 'YOZ', 1),
(3395, 215, 'Zonguldak', 'ZON', 1),
(3396, 216, 'Ahal Welayaty', 'A', 1),
(3397, 216, 'Balkan Welayaty', 'B', 1),
(3398, 216, 'Dashhowuz Welayaty', 'D', 1),
(3399, 216, 'Lebap Welayaty', 'L', 1),
(3400, 216, 'Mary Welayaty', 'M', 1),
(3480, 220, 'Черкасская область', '71', 1),
(3481, 220, 'Черниговская область', '74', 1),
(3482, 220, 'Черновицкая область', '77', 1),
(3484, 220, 'Днепропетровская область', '12', 1),
(3485, 220, 'Донецкая область', '14', 1),
(3486, 220, 'Ивано-Франковская область', '26', 1),
(3487, 220, 'Херсонская область', '65', 1),
(3488, 220, 'Хмельницкая область', '68', 1),
(3489, 220, 'Кировоградская область', '35', 1),
(3490, 220, 'Киев', '30', 1),
(3491, 220, 'Киевская область', '32', 1),
(3492, 220, 'Луганская область', '09', 1),
(3493, 220, 'Львовская область', '46', 1),
(3494, 220, 'Николаевская область', '48', 1),
(3495, 220, 'Одесская область', '51', 1),
(3496, 220, 'Полтавская область', '53', 1),
(3497, 220, 'Ровненская область', '56', 1),
(3499, 220, 'Сумская область', '59', 1),
(3500, 220, 'Тернопольская область', '61', 1),
(3501, 220, 'Винницкая область', '05', 1),
(3502, 220, 'Волынская область', '07', 1),
(3503, 220, 'Закарпатская область', '21', 1),
(3504, 220, 'Запорожская область', '23', 1),
(3505, 220, 'Житомирская область', '18', 1),
(3706, 226, 'Andijon', 'AN', 1),
(3707, 226, 'Buxoro', 'BU', 1),
(3708, 226, 'Farg\'ona', 'FA', 1),
(3709, 226, 'Jizzax', 'JI', 1),
(3710, 226, 'Namangan', 'NG', 1),
(3711, 226, 'Navoiy', 'NW', 1),
(3712, 226, 'Qashqadaryo', 'QA', 1),
(3713, 226, 'Qoraqalpog\'iston Republikasi', 'QR', 1),
(3714, 226, 'Samarqand', 'SA', 1),
(3715, 226, 'Sirdaryo', 'SI', 1),
(3716, 226, 'Surxondaryo', 'SU', 1),
(3717, 226, 'Toshkent City', 'TK', 1),
(3718, 226, 'Toshkent Region', 'TO', 1),
(3719, 226, 'Xorazm', 'XO', 1),
(3956, 190, 'Pomurska', '1', 1),
(3957, 190, 'Podravska', '2', 1),
(3958, 190, 'Koroška', '3', 1),
(3959, 190, 'Savinjska', '4', 1),
(3960, 190, 'Zasavska', '5', 1),
(3961, 190, 'Spodnjeposavska', '6', 1),
(3962, 190, 'Jugovzhodna Slovenija', '7', 1),
(3963, 190, 'Osrednjeslovenska', '8', 1),
(3964, 190, 'Gorenjska', '9', 1),
(3965, 190, 'Notranjsko-kraška', '10', 1),
(3966, 190, 'Goriška', '11', 1),
(3967, 190, 'Obalno-kraška', '12', 1),
(3994, 243, 'Belgrade', '00', 1),
(3995, 243, 'North Bačka', '01', 1),
(3996, 243, 'Central Banat', '02', 1),
(3997, 243, 'North Banat', '03', 1),
(3998, 243, 'South Banat', '04', 1),
(3999, 243, 'West Bačka', '05', 1),
(4000, 243, 'South Bačka', '06', 1),
(4001, 243, 'Srem', '07', 1),
(4002, 243, 'Mačva', '08', 1),
(4003, 243, 'Kolubara', '09', 1),
(4004, 243, 'Podunavlje', '10', 1),
(4005, 243, 'Braničevo', '11', 1),
(4006, 243, 'Šumadija', '12', 1),
(4007, 243, 'Pomoravlje', '13', 1),
(4008, 243, 'Bor', '14', 1),
(4009, 243, 'Zaječar', '15', 1),
(4010, 243, 'Zlatibor', '16', 1),
(4011, 243, 'Moravica', '17', 1),
(4012, 243, 'Raška', '18', 1),
(4013, 243, 'Rasina', '19', 1),
(4014, 243, 'Nišava', '20', 1),
(4015, 243, 'Toplica', '21', 1),
(4016, 243, 'Pirot', '22', 1),
(4017, 243, 'Jablanica', '23', 1),
(4018, 243, 'Pčinja', '24', 1),
(4036, 117, 'Ainaži, Salacgrīvas novads', '0661405', 1),
(4037, 117, 'Aizkraukle, Aizkraukles novads', '0320201', 1),
(4038, 117, 'Aizkraukles novads', '0320200', 1),
(4039, 117, 'Aizpute, Aizputes novads', '0640605', 1),
(4040, 117, 'Aizputes novads', '0640600', 1),
(4041, 117, 'Aknīste, Aknīstes novads', '0560805', 1),
(4042, 117, 'Aknīstes novads', '0560800', 1),
(4043, 117, 'Aloja, Alojas novads', '0661007', 1),
(4044, 117, 'Alojas novads', '0661000', 1),
(4045, 117, 'Alsungas novads', '0624200', 1),
(4046, 117, 'Alūksne, Alūksnes novads', '0360201', 1),
(4047, 117, 'Alūksnes novads', '0360200', 1),
(4048, 117, 'Amatas novads', '0424701', 1),
(4049, 117, 'Ape, Apes novads', '0360805', 1),
(4050, 117, 'Apes novads', '0360800', 1),
(4051, 117, 'Auce, Auces novads', '0460805', 1),
(4052, 117, 'Auces novads', '0460800', 1),
(4053, 117, 'Ādažu novads', '0804400', 1),
(4054, 117, 'Babītes novads', '0804900', 1),
(4055, 117, 'Baldone, Baldones novads', '0800605', 1),
(4056, 117, 'Baldones novads', '0800600', 1),
(4057, 117, 'Baloži, Ķekavas novads', '0800807', 1),
(4058, 117, 'Baltinavas novads', '0384400', 1),
(4059, 117, 'Balvi, Balvu novads', '0380201', 1),
(4060, 117, 'Balvu novads', '0380200', 1),
(4061, 117, 'Bauska, Bauskas novads', '0400201', 1),
(4062, 117, 'Bauskas novads', '0400200', 1),
(4063, 117, 'Beverīnas novads', '0964700', 1),
(4064, 117, 'Brocēni, Brocēnu novads', '0840605', 1),
(4065, 117, 'Brocēnu novads', '0840601', 1),
(4066, 117, 'Burtnieku novads', '0967101', 1),
(4067, 117, 'Carnikavas novads', '0805200', 1),
(4068, 117, 'Cesvaine, Cesvaines novads', '0700807', 1),
(4069, 117, 'Cesvaines novads', '0700800', 1),
(4070, 117, 'Cēsis, Cēsu novads', '0420201', 1),
(4071, 117, 'Cēsu novads', '0420200', 1),
(4072, 117, 'Ciblas novads', '0684901', 1),
(4073, 117, 'Dagda, Dagdas novads', '0601009', 1),
(4074, 117, 'Dagdas novads', '0601000', 1),
(4075, 117, 'Daugavpils', '0050000', 1),
(4076, 117, 'Daugavpils novads', '0440200', 1),
(4077, 117, 'Dobele, Dobeles novads', '0460201', 1),
(4078, 117, 'Dobeles novads', '0460200', 1),
(4079, 117, 'Dundagas novads', '0885100', 1),
(4080, 117, 'Durbe, Durbes novads', '0640807', 1),
(4081, 117, 'Durbes novads', '0640801', 1),
(4082, 117, 'Engures novads', '0905100', 1),
(4083, 117, 'Ērgļu novads', '0705500', 1),
(4084, 117, 'Garkalnes novads', '0806000', 1),
(4085, 117, 'Grobiņa, Grobiņas novads', '0641009', 1),
(4086, 117, 'Grobiņas novads', '0641000', 1),
(4087, 117, 'Gulbene, Gulbenes novads', '0500201', 1),
(4088, 117, 'Gulbenes novads', '0500200', 1),
(4089, 117, 'Iecavas novads', '0406400', 1),
(4090, 117, 'Ikšķile, Ikšķiles novads', '0740605', 1),
(4091, 117, 'Ikšķiles novads', '0740600', 1),
(4092, 117, 'Ilūkste, Ilūkstes novads', '0440807', 1),
(4093, 117, 'Ilūkstes novads', '0440801', 1),
(4094, 117, 'Inčukalna novads', '0801800', 1),
(4095, 117, 'Jaunjelgava, Jaunjelgavas novads', '0321007', 1),
(4096, 117, 'Jaunjelgavas novads', '0321000', 1),
(4097, 117, 'Jaunpiebalgas novads', '0425700', 1),
(4098, 117, 'Jaunpils novads', '0905700', 1),
(4099, 117, 'Jelgava', '0090000', 1),
(4100, 117, 'Jelgavas novads', '0540200', 1),
(4101, 117, 'Jēkabpils', '0110000', 1),
(4102, 117, 'Jēkabpils novads', '0560200', 1),
(4103, 117, 'Jūrmala', '0130000', 1),
(4104, 117, 'Kalnciems, Jelgavas novads', '0540211', 1),
(4105, 117, 'Kandava, Kandavas novads', '0901211', 1),
(4106, 117, 'Kandavas novads', '0901201', 1),
(4107, 117, 'Kārsava, Kārsavas novads', '0681009', 1),
(4108, 117, 'Kārsavas novads', '0681000', 1),
(4109, 117, 'Kocēnu novads ,bij. Valmieras)', '0960200', 1),
(4110, 117, 'Kokneses novads', '0326100', 1),
(4111, 117, 'Krāslava, Krāslavas novads', '0600201', 1),
(4112, 117, 'Krāslavas novads', '0600202', 1),
(4113, 117, 'Krimuldas novads', '0806900', 1),
(4114, 117, 'Krustpils novads', '0566900', 1),
(4115, 117, 'Kuldīga, Kuldīgas novads', '0620201', 1),
(4116, 117, 'Kuldīgas novads', '0620200', 1),
(4117, 117, 'Ķeguma novads', '0741001', 1),
(4118, 117, 'Ķegums, Ķeguma novads', '0741009', 1),
(4119, 117, 'Ķekavas novads', '0800800', 1),
(4120, 117, 'Lielvārde, Lielvārdes novads', '0741413', 1),
(4121, 117, 'Lielvārdes novads', '0741401', 1),
(4122, 117, 'Liepāja', '0170000', 1),
(4123, 117, 'Limbaži, Limbažu novads', '0660201', 1),
(4124, 117, 'Limbažu novads', '0660200', 1),
(4125, 117, 'Līgatne, Līgatnes novads', '0421211', 1),
(4126, 117, 'Līgatnes novads', '0421200', 1),
(4127, 117, 'Līvāni, Līvānu novads', '0761211', 1),
(4128, 117, 'Līvānu novads', '0761201', 1),
(4129, 117, 'Lubāna, Lubānas novads', '0701413', 1),
(4130, 117, 'Lubānas novads', '0701400', 1),
(4131, 117, 'Ludza, Ludzas novads', '0680201', 1),
(4132, 117, 'Ludzas novads', '0680200', 1),
(4133, 117, 'Madona, Madonas novads', '0700201', 1),
(4134, 117, 'Madonas novads', '0700200', 1),
(4135, 117, 'Mazsalaca, Mazsalacas novads', '0961011', 1),
(4136, 117, 'Mazsalacas novads', '0961000', 1),
(4137, 117, 'Mālpils novads', '0807400', 1),
(4138, 117, 'Mārupes novads', '0807600', 1),
(4139, 117, 'Mērsraga novads', '0887600', 1),
(4140, 117, 'Naukšēnu novads', '0967300', 1),
(4141, 117, 'Neretas novads', '0327100', 1),
(4142, 117, 'Nīcas novads', '0647900', 1),
(4143, 117, 'Ogre, Ogres novads', '0740201', 1),
(4144, 117, 'Ogres novads', '0740202', 1),
(4145, 117, 'Olaine, Olaines novads', '0801009', 1),
(4146, 117, 'Olaines novads', '0801000', 1),
(4147, 117, 'Ozolnieku novads', '0546701', 1),
(4148, 117, 'Pārgaujas novads', '0427500', 1),
(4149, 117, 'Pāvilosta, Pāvilostas novads', '0641413', 1),
(4150, 117, 'Pāvilostas novads', '0641401', 1),
(4151, 117, 'Piltene, Ventspils novads', '0980213', 1),
(4152, 117, 'Pļaviņas, Pļaviņu novads', '0321413', 1),
(4153, 117, 'Pļaviņu novads', '0321400', 1),
(4154, 117, 'Preiļi, Preiļu novads', '0760201', 1),
(4155, 117, 'Preiļu novads', '0760202', 1),
(4156, 117, 'Priekule, Priekules novads', '0641615', 1),
(4157, 117, 'Priekules novads', '0641600', 1),
(4158, 117, 'Priekuļu novads', '0427300', 1),
(4159, 117, 'Raunas novads', '0427700', 1),
(4160, 117, 'Rēzekne', '0210000', 1),
(4161, 117, 'Rēzeknes novads', '0780200', 1),
(4162, 117, 'Riebiņu novads', '0766300', 1),
(4163, 117, 'Rīga', '0010000', 1),
(4164, 117, 'Rojas novads', '0888300', 1),
(4165, 117, 'Ropažu novads', '0808400', 1),
(4166, 117, 'Rucavas novads', '0648500', 1),
(4167, 117, 'Rugāju novads', '0387500', 1),
(4168, 117, 'Rundāles novads', '0407700', 1),
(4169, 117, 'Rūjiena, Rūjienas novads', '0961615', 1),
(4170, 117, 'Rūjienas novads', '0961600', 1),
(4171, 117, 'Sabile, Talsu novads', '0880213', 1),
(4172, 117, 'Salacgrīva, Salacgrīvas novads', '0661415', 1),
(4173, 117, 'Salacgrīvas novads', '0661400', 1),
(4174, 117, 'Salas novads', '0568700', 1),
(4175, 117, 'Salaspils novads', '0801200', 1),
(4176, 117, 'Salaspils, Salaspils novads', '0801211', 1),
(4177, 117, 'Saldus novads', '0840200', 1),
(4178, 117, 'Saldus, Saldus novads', '0840201', 1),
(4179, 117, 'Saulkrasti, Saulkrastu novads', '0801413', 1),
(4180, 117, 'Saulkrastu novads', '0801400', 1),
(4181, 117, 'Seda, Strenču novads', '0941813', 1),
(4182, 117, 'Sējas novads', '0809200', 1),
(4183, 117, 'Sigulda, Siguldas novads', '0801615', 1),
(4184, 117, 'Siguldas novads', '0801601', 1),
(4185, 117, 'Skrīveru novads', '0328200', 1),
(4186, 117, 'Skrunda, Skrundas novads', '0621209', 1),
(4187, 117, 'Skrundas novads', '0621200', 1),
(4188, 117, 'Smiltene, Smiltenes novads', '0941615', 1),
(4189, 117, 'Smiltenes novads', '0941600', 1),
(4190, 117, 'Staicele, Alojas novads', '0661017', 1),
(4191, 117, 'Stende, Talsu novads', '0880215', 1),
(4192, 117, 'Stopiņu novads', '0809600', 1),
(4193, 117, 'Strenči, Strenču novads', '0941817', 1),
(4194, 117, 'Strenču novads', '0941800', 1),
(4195, 117, 'Subate, Ilūkstes novads', '0440815', 1),
(4196, 117, 'Talsi, Talsu novads', '0880201', 1),
(4197, 117, 'Talsu novads', '0880200', 1),
(4198, 117, 'Tērvetes novads', '0468900', 1),
(4199, 117, 'Tukuma novads', '0900200', 1),
(4200, 117, 'Tukums, Tukuma novads', '0900201', 1),
(4201, 117, 'Vaiņodes novads', '0649300', 1),
(4202, 117, 'Valdemārpils, Talsu novads', '0880217', 1),
(4203, 117, 'Valka, Valkas novads', '0940201', 1),
(4204, 117, 'Valkas novads', '0940200', 1),
(4205, 117, 'Valmiera', '0250000', 1),
(4206, 117, 'Vangaži, Inčukalna novads', '0801817', 1),
(4207, 117, 'Varakļāni, Varakļānu novads', '0701817', 1),
(4208, 117, 'Varakļānu novads', '0701800', 1),
(4209, 117, 'Vārkavas novads', '0769101', 1),
(4210, 117, 'Vecpiebalgas novads', '0429300', 1),
(4211, 117, 'Vecumnieku novads', '0409500', 1),
(4212, 117, 'Ventspils', '0270000', 1),
(4213, 117, 'Ventspils novads', '0980200', 1),
(4214, 117, 'Viesīte, Viesītes novads', '0561815', 1),
(4215, 117, 'Viesītes novads', '0561800', 1),
(4216, 117, 'Viļaka, Viļakas novads', '0381615', 1),
(4217, 117, 'Viļakas novads', '0381600', 1),
(4218, 117, 'Viļāni, Viļānu novads', '0781817', 1),
(4219, 117, 'Viļānu novads', '0781800', 1),
(4220, 117, 'Zilupe, Zilupes novads', '0681817', 1),
(4221, 117, 'Zilupes novads', '0681801', 1),
(4224, 220, 'Харьковская область', '63', 1),
(4232, 44, 'Qinghai', 'QH', 1),
(4233, 109, 'Абайская область', 'AB', 1),
(4234, 109, 'Жетысуская область', 'ZE', 1),
(4235, 109, 'Туркестанская область', 'TU', 1),
(4236, 109, 'Улытауская область', 'UL', 1),
(4237, 109, 'Шымкент', 'SHY', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_zone_to_geo_zone`
--

CREATE TABLE `oc_zone_to_geo_zone` (
  `zone_to_geo_zone_id` int NOT NULL,
  `country_id` int NOT NULL,
  `zone_id` int NOT NULL DEFAULT '0',
  `geo_zone_id` int NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `oc_zone_to_geo_zone`
--

INSERT INTO `oc_zone_to_geo_zone` (`zone_to_geo_zone_id`, `country_id`, `zone_id`, `geo_zone_id`, `date_added`, `date_modified`) VALUES
(110, 176, 0, 3, '2022-03-15 10:11:20', '0000-00-00 00:00:00');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `oc_address`
--
ALTER TABLE `oc_address`
  ADD PRIMARY KEY (`address_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Индексы таблицы `oc_api`
--
ALTER TABLE `oc_api`
  ADD PRIMARY KEY (`api_id`);

--
-- Индексы таблицы `oc_api_ip`
--
ALTER TABLE `oc_api_ip`
  ADD PRIMARY KEY (`api_ip_id`);

--
-- Индексы таблицы `oc_api_session`
--
ALTER TABLE `oc_api_session`
  ADD PRIMARY KEY (`api_session_id`);

--
-- Индексы таблицы `oc_article`
--
ALTER TABLE `oc_article`
  ADD PRIMARY KEY (`article_id`);

--
-- Индексы таблицы `oc_article_description`
--
ALTER TABLE `oc_article_description`
  ADD PRIMARY KEY (`article_id`,`language_id`),
  ADD KEY `name` (`name`);

--
-- Индексы таблицы `oc_article_image`
--
ALTER TABLE `oc_article_image`
  ADD PRIMARY KEY (`article_image_id`);

--
-- Индексы таблицы `oc_article_related`
--
ALTER TABLE `oc_article_related`
  ADD PRIMARY KEY (`article_id`,`related_id`);

--
-- Индексы таблицы `oc_article_related_mn`
--
ALTER TABLE `oc_article_related_mn`
  ADD PRIMARY KEY (`article_id`,`manufacturer_id`);

--
-- Индексы таблицы `oc_article_related_product`
--
ALTER TABLE `oc_article_related_product`
  ADD PRIMARY KEY (`article_id`,`product_id`);

--
-- Индексы таблицы `oc_article_related_wb`
--
ALTER TABLE `oc_article_related_wb`
  ADD PRIMARY KEY (`article_id`,`category_id`);

--
-- Индексы таблицы `oc_article_to_blog_category`
--
ALTER TABLE `oc_article_to_blog_category`
  ADD PRIMARY KEY (`article_id`,`blog_category_id`);

--
-- Индексы таблицы `oc_article_to_download`
--
ALTER TABLE `oc_article_to_download`
  ADD PRIMARY KEY (`article_id`,`download_id`);

--
-- Индексы таблицы `oc_article_to_layout`
--
ALTER TABLE `oc_article_to_layout`
  ADD PRIMARY KEY (`article_id`,`store_id`);

--
-- Индексы таблицы `oc_article_to_store`
--
ALTER TABLE `oc_article_to_store`
  ADD PRIMARY KEY (`article_id`,`store_id`);

--
-- Индексы таблицы `oc_attribute`
--
ALTER TABLE `oc_attribute`
  ADD PRIMARY KEY (`attribute_id`);

--
-- Индексы таблицы `oc_attribute_description`
--
ALTER TABLE `oc_attribute_description`
  ADD PRIMARY KEY (`attribute_id`,`language_id`);

--
-- Индексы таблицы `oc_attribute_group`
--
ALTER TABLE `oc_attribute_group`
  ADD PRIMARY KEY (`attribute_group_id`);

--
-- Индексы таблицы `oc_attribute_group_description`
--
ALTER TABLE `oc_attribute_group_description`
  ADD PRIMARY KEY (`attribute_group_id`,`language_id`);

--
-- Индексы таблицы `oc_banner`
--
ALTER TABLE `oc_banner`
  ADD PRIMARY KEY (`banner_id`);

--
-- Индексы таблицы `oc_banner_image`
--
ALTER TABLE `oc_banner_image`
  ADD PRIMARY KEY (`banner_image_id`);

--
-- Индексы таблицы `oc_blog_category`
--
ALTER TABLE `oc_blog_category`
  ADD PRIMARY KEY (`blog_category_id`);

--
-- Индексы таблицы `oc_blog_category_description`
--
ALTER TABLE `oc_blog_category_description`
  ADD PRIMARY KEY (`blog_category_id`,`language_id`),
  ADD KEY `name` (`name`);

--
-- Индексы таблицы `oc_blog_category_path`
--
ALTER TABLE `oc_blog_category_path`
  ADD PRIMARY KEY (`blog_category_id`,`path_id`);

--
-- Индексы таблицы `oc_blog_category_to_layout`
--
ALTER TABLE `oc_blog_category_to_layout`
  ADD PRIMARY KEY (`blog_category_id`,`store_id`);

--
-- Индексы таблицы `oc_blog_category_to_store`
--
ALTER TABLE `oc_blog_category_to_store`
  ADD PRIMARY KEY (`blog_category_id`,`store_id`);

--
-- Индексы таблицы `oc_cart`
--
ALTER TABLE `oc_cart`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `cart_id` (`api_id`,`customer_id`,`session_id`,`product_id`,`recurring_id`);

--
-- Индексы таблицы `oc_category`
--
ALTER TABLE `oc_category`
  ADD PRIMARY KEY (`category_id`),
  ADD KEY `parent_id` (`parent_id`);

--
-- Индексы таблицы `oc_category_description`
--
ALTER TABLE `oc_category_description`
  ADD PRIMARY KEY (`category_id`,`language_id`),
  ADD KEY `name` (`name`);

--
-- Индексы таблицы `oc_category_filter`
--
ALTER TABLE `oc_category_filter`
  ADD PRIMARY KEY (`category_id`,`filter_id`);

--
-- Индексы таблицы `oc_category_path`
--
ALTER TABLE `oc_category_path`
  ADD PRIMARY KEY (`category_id`,`path_id`);

--
-- Индексы таблицы `oc_category_to_layout`
--
ALTER TABLE `oc_category_to_layout`
  ADD PRIMARY KEY (`category_id`,`store_id`);

--
-- Индексы таблицы `oc_category_to_store`
--
ALTER TABLE `oc_category_to_store`
  ADD PRIMARY KEY (`category_id`,`store_id`);

--
-- Индексы таблицы `oc_country`
--
ALTER TABLE `oc_country`
  ADD PRIMARY KEY (`country_id`);

--
-- Индексы таблицы `oc_coupon`
--
ALTER TABLE `oc_coupon`
  ADD PRIMARY KEY (`coupon_id`);

--
-- Индексы таблицы `oc_coupon_category`
--
ALTER TABLE `oc_coupon_category`
  ADD PRIMARY KEY (`coupon_id`,`category_id`);

--
-- Индексы таблицы `oc_coupon_history`
--
ALTER TABLE `oc_coupon_history`
  ADD PRIMARY KEY (`coupon_history_id`);

--
-- Индексы таблицы `oc_coupon_product`
--
ALTER TABLE `oc_coupon_product`
  ADD PRIMARY KEY (`coupon_product_id`);

--
-- Индексы таблицы `oc_currency`
--
ALTER TABLE `oc_currency`
  ADD PRIMARY KEY (`currency_id`);

--
-- Индексы таблицы `oc_customer`
--
ALTER TABLE `oc_customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Индексы таблицы `oc_customer_activity`
--
ALTER TABLE `oc_customer_activity`
  ADD PRIMARY KEY (`customer_activity_id`);

--
-- Индексы таблицы `oc_customer_affiliate`
--
ALTER TABLE `oc_customer_affiliate`
  ADD PRIMARY KEY (`customer_id`);

--
-- Индексы таблицы `oc_customer_approval`
--
ALTER TABLE `oc_customer_approval`
  ADD PRIMARY KEY (`customer_approval_id`);

--
-- Индексы таблицы `oc_customer_group`
--
ALTER TABLE `oc_customer_group`
  ADD PRIMARY KEY (`customer_group_id`);

--
-- Индексы таблицы `oc_customer_group_description`
--
ALTER TABLE `oc_customer_group_description`
  ADD PRIMARY KEY (`customer_group_id`,`language_id`);

--
-- Индексы таблицы `oc_customer_history`
--
ALTER TABLE `oc_customer_history`
  ADD PRIMARY KEY (`customer_history_id`);

--
-- Индексы таблицы `oc_customer_ip`
--
ALTER TABLE `oc_customer_ip`
  ADD PRIMARY KEY (`customer_ip_id`),
  ADD KEY `ip` (`ip`);

--
-- Индексы таблицы `oc_customer_login`
--
ALTER TABLE `oc_customer_login`
  ADD PRIMARY KEY (`customer_login_id`),
  ADD KEY `email` (`email`),
  ADD KEY `ip` (`ip`);

--
-- Индексы таблицы `oc_customer_online`
--
ALTER TABLE `oc_customer_online`
  ADD PRIMARY KEY (`ip`);

--
-- Индексы таблицы `oc_customer_reward`
--
ALTER TABLE `oc_customer_reward`
  ADD PRIMARY KEY (`customer_reward_id`);

--
-- Индексы таблицы `oc_customer_search`
--
ALTER TABLE `oc_customer_search`
  ADD PRIMARY KEY (`customer_search_id`);

--
-- Индексы таблицы `oc_customer_transaction`
--
ALTER TABLE `oc_customer_transaction`
  ADD PRIMARY KEY (`customer_transaction_id`);

--
-- Индексы таблицы `oc_customer_wishlist`
--
ALTER TABLE `oc_customer_wishlist`
  ADD PRIMARY KEY (`customer_id`,`product_id`);

--
-- Индексы таблицы `oc_custom_field`
--
ALTER TABLE `oc_custom_field`
  ADD PRIMARY KEY (`custom_field_id`);

--
-- Индексы таблицы `oc_custom_field_customer_group`
--
ALTER TABLE `oc_custom_field_customer_group`
  ADD PRIMARY KEY (`custom_field_id`,`customer_group_id`);

--
-- Индексы таблицы `oc_custom_field_description`
--
ALTER TABLE `oc_custom_field_description`
  ADD PRIMARY KEY (`custom_field_id`,`language_id`);

--
-- Индексы таблицы `oc_custom_field_value`
--
ALTER TABLE `oc_custom_field_value`
  ADD PRIMARY KEY (`custom_field_value_id`);

--
-- Индексы таблицы `oc_custom_field_value_description`
--
ALTER TABLE `oc_custom_field_value_description`
  ADD PRIMARY KEY (`custom_field_value_id`,`language_id`);

--
-- Индексы таблицы `oc_download`
--
ALTER TABLE `oc_download`
  ADD PRIMARY KEY (`download_id`);

--
-- Индексы таблицы `oc_download_description`
--
ALTER TABLE `oc_download_description`
  ADD PRIMARY KEY (`download_id`,`language_id`);

--
-- Индексы таблицы `oc_event`
--
ALTER TABLE `oc_event`
  ADD PRIMARY KEY (`event_id`);

--
-- Индексы таблицы `oc_extension`
--
ALTER TABLE `oc_extension`
  ADD PRIMARY KEY (`extension_id`);

--
-- Индексы таблицы `oc_extension_install`
--
ALTER TABLE `oc_extension_install`
  ADD PRIMARY KEY (`extension_install_id`);

--
-- Индексы таблицы `oc_extension_path`
--
ALTER TABLE `oc_extension_path`
  ADD PRIMARY KEY (`extension_path_id`);

--
-- Индексы таблицы `oc_filter`
--
ALTER TABLE `oc_filter`
  ADD PRIMARY KEY (`filter_id`);

--
-- Индексы таблицы `oc_filter_description`
--
ALTER TABLE `oc_filter_description`
  ADD PRIMARY KEY (`filter_id`,`language_id`);

--
-- Индексы таблицы `oc_filter_group`
--
ALTER TABLE `oc_filter_group`
  ADD PRIMARY KEY (`filter_group_id`);

--
-- Индексы таблицы `oc_filter_group_description`
--
ALTER TABLE `oc_filter_group_description`
  ADD PRIMARY KEY (`filter_group_id`,`language_id`);

--
-- Индексы таблицы `oc_geo_zone`
--
ALTER TABLE `oc_geo_zone`
  ADD PRIMARY KEY (`geo_zone_id`);

--
-- Индексы таблицы `oc_googleshopping_category`
--
ALTER TABLE `oc_googleshopping_category`
  ADD PRIMARY KEY (`google_product_category`,`store_id`),
  ADD KEY `category_id_store_id` (`category_id`,`store_id`);

--
-- Индексы таблицы `oc_googleshopping_product`
--
ALTER TABLE `oc_googleshopping_product`
  ADD PRIMARY KEY (`product_advertise_google_id`),
  ADD UNIQUE KEY `product_id_store_id` (`product_id`,`store_id`);

--
-- Индексы таблицы `oc_googleshopping_product_status`
--
ALTER TABLE `oc_googleshopping_product_status`
  ADD PRIMARY KEY (`product_id`,`store_id`,`product_variation_id`);

--
-- Индексы таблицы `oc_googleshopping_product_target`
--
ALTER TABLE `oc_googleshopping_product_target`
  ADD PRIMARY KEY (`product_id`,`advertise_google_target_id`);

--
-- Индексы таблицы `oc_googleshopping_target`
--
ALTER TABLE `oc_googleshopping_target`
  ADD PRIMARY KEY (`advertise_google_target_id`),
  ADD KEY `store_id` (`store_id`);

--
-- Индексы таблицы `oc_information`
--
ALTER TABLE `oc_information`
  ADD PRIMARY KEY (`information_id`);

--
-- Индексы таблицы `oc_information_description`
--
ALTER TABLE `oc_information_description`
  ADD PRIMARY KEY (`information_id`,`language_id`);

--
-- Индексы таблицы `oc_information_to_layout`
--
ALTER TABLE `oc_information_to_layout`
  ADD PRIMARY KEY (`information_id`,`store_id`);

--
-- Индексы таблицы `oc_information_to_store`
--
ALTER TABLE `oc_information_to_store`
  ADD PRIMARY KEY (`information_id`,`store_id`);

--
-- Индексы таблицы `oc_language`
--
ALTER TABLE `oc_language`
  ADD PRIMARY KEY (`language_id`),
  ADD KEY `name` (`name`);

--
-- Индексы таблицы `oc_layout`
--
ALTER TABLE `oc_layout`
  ADD PRIMARY KEY (`layout_id`);

--
-- Индексы таблицы `oc_layout_module`
--
ALTER TABLE `oc_layout_module`
  ADD PRIMARY KEY (`layout_module_id`);

--
-- Индексы таблицы `oc_layout_route`
--
ALTER TABLE `oc_layout_route`
  ADD PRIMARY KEY (`layout_route_id`);

--
-- Индексы таблицы `oc_length_class`
--
ALTER TABLE `oc_length_class`
  ADD PRIMARY KEY (`length_class_id`);

--
-- Индексы таблицы `oc_length_class_description`
--
ALTER TABLE `oc_length_class_description`
  ADD PRIMARY KEY (`length_class_id`,`language_id`);

--
-- Индексы таблицы `oc_location`
--
ALTER TABLE `oc_location`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `name` (`name`);

--
-- Индексы таблицы `oc_manufacturer`
--
ALTER TABLE `oc_manufacturer`
  ADD PRIMARY KEY (`manufacturer_id`);

--
-- Индексы таблицы `oc_manufacturer_to_layout`
--
ALTER TABLE `oc_manufacturer_to_layout`
  ADD PRIMARY KEY (`manufacturer_id`,`store_id`);

--
-- Индексы таблицы `oc_manufacturer_to_store`
--
ALTER TABLE `oc_manufacturer_to_store`
  ADD PRIMARY KEY (`manufacturer_id`,`store_id`);

--
-- Индексы таблицы `oc_marketing`
--
ALTER TABLE `oc_marketing`
  ADD PRIMARY KEY (`marketing_id`);

--
-- Индексы таблицы `oc_modification`
--
ALTER TABLE `oc_modification`
  ADD PRIMARY KEY (`modification_id`);

--
-- Индексы таблицы `oc_modification_backup`
--
ALTER TABLE `oc_modification_backup`
  ADD PRIMARY KEY (`backup_id`);

--
-- Индексы таблицы `oc_module`
--
ALTER TABLE `oc_module`
  ADD PRIMARY KEY (`module_id`);

--
-- Индексы таблицы `oc_option`
--
ALTER TABLE `oc_option`
  ADD PRIMARY KEY (`option_id`);

--
-- Индексы таблицы `oc_option_description`
--
ALTER TABLE `oc_option_description`
  ADD PRIMARY KEY (`option_id`,`language_id`);

--
-- Индексы таблицы `oc_option_value`
--
ALTER TABLE `oc_option_value`
  ADD PRIMARY KEY (`option_value_id`);

--
-- Индексы таблицы `oc_option_value_description`
--
ALTER TABLE `oc_option_value_description`
  ADD PRIMARY KEY (`option_value_id`,`language_id`);

--
-- Индексы таблицы `oc_order`
--
ALTER TABLE `oc_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Индексы таблицы `oc_order_history`
--
ALTER TABLE `oc_order_history`
  ADD PRIMARY KEY (`order_history_id`);

--
-- Индексы таблицы `oc_order_option`
--
ALTER TABLE `oc_order_option`
  ADD PRIMARY KEY (`order_option_id`);

--
-- Индексы таблицы `oc_order_product`
--
ALTER TABLE `oc_order_product`
  ADD PRIMARY KEY (`order_product_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Индексы таблицы `oc_order_recurring`
--
ALTER TABLE `oc_order_recurring`
  ADD PRIMARY KEY (`order_recurring_id`);

--
-- Индексы таблицы `oc_order_recurring_transaction`
--
ALTER TABLE `oc_order_recurring_transaction`
  ADD PRIMARY KEY (`order_recurring_transaction_id`);

--
-- Индексы таблицы `oc_order_shipment`
--
ALTER TABLE `oc_order_shipment`
  ADD PRIMARY KEY (`order_shipment_id`);

--
-- Индексы таблицы `oc_order_status`
--
ALTER TABLE `oc_order_status`
  ADD PRIMARY KEY (`order_status_id`,`language_id`);

--
-- Индексы таблицы `oc_order_total`
--
ALTER TABLE `oc_order_total`
  ADD PRIMARY KEY (`order_total_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Индексы таблицы `oc_order_voucher`
--
ALTER TABLE `oc_order_voucher`
  ADD PRIMARY KEY (`order_voucher_id`);

--
-- Индексы таблицы `oc_product`
--
ALTER TABLE `oc_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Индексы таблицы `oc_product_attribute`
--
ALTER TABLE `oc_product_attribute`
  ADD PRIMARY KEY (`product_id`,`attribute_id`,`language_id`);

--
-- Индексы таблицы `oc_product_description`
--
ALTER TABLE `oc_product_description`
  ADD PRIMARY KEY (`product_id`,`language_id`),
  ADD KEY `name` (`name`);

--
-- Индексы таблицы `oc_product_discount`
--
ALTER TABLE `oc_product_discount`
  ADD PRIMARY KEY (`product_discount_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Индексы таблицы `oc_product_filter`
--
ALTER TABLE `oc_product_filter`
  ADD PRIMARY KEY (`product_id`,`filter_id`);

--
-- Индексы таблицы `oc_product_image`
--
ALTER TABLE `oc_product_image`
  ADD PRIMARY KEY (`product_image_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Индексы таблицы `oc_product_option`
--
ALTER TABLE `oc_product_option`
  ADD PRIMARY KEY (`product_option_id`);

--
-- Индексы таблицы `oc_product_option_value`
--
ALTER TABLE `oc_product_option_value`
  ADD PRIMARY KEY (`product_option_value_id`);

--
-- Индексы таблицы `oc_product_recurring`
--
ALTER TABLE `oc_product_recurring`
  ADD PRIMARY KEY (`product_id`,`recurring_id`,`customer_group_id`);

--
-- Индексы таблицы `oc_product_related`
--
ALTER TABLE `oc_product_related`
  ADD PRIMARY KEY (`product_id`,`related_id`);

--
-- Индексы таблицы `oc_product_related_article`
--
ALTER TABLE `oc_product_related_article`
  ADD PRIMARY KEY (`article_id`,`product_id`);

--
-- Индексы таблицы `oc_product_reward`
--
ALTER TABLE `oc_product_reward`
  ADD PRIMARY KEY (`product_reward_id`);

--
-- Индексы таблицы `oc_product_special`
--
ALTER TABLE `oc_product_special`
  ADD PRIMARY KEY (`product_special_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Индексы таблицы `oc_product_to_category`
--
ALTER TABLE `oc_product_to_category`
  ADD PRIMARY KEY (`product_id`,`category_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Индексы таблицы `oc_product_to_download`
--
ALTER TABLE `oc_product_to_download`
  ADD PRIMARY KEY (`product_id`,`download_id`);

--
-- Индексы таблицы `oc_product_to_layout`
--
ALTER TABLE `oc_product_to_layout`
  ADD PRIMARY KEY (`product_id`,`store_id`);

--
-- Индексы таблицы `oc_product_to_store`
--
ALTER TABLE `oc_product_to_store`
  ADD PRIMARY KEY (`product_id`,`store_id`);

--
-- Индексы таблицы `oc_recurring`
--
ALTER TABLE `oc_recurring`
  ADD PRIMARY KEY (`recurring_id`);

--
-- Индексы таблицы `oc_recurring_description`
--
ALTER TABLE `oc_recurring_description`
  ADD PRIMARY KEY (`recurring_id`,`language_id`);

--
-- Индексы таблицы `oc_return`
--
ALTER TABLE `oc_return`
  ADD PRIMARY KEY (`return_id`);

--
-- Индексы таблицы `oc_return_action`
--
ALTER TABLE `oc_return_action`
  ADD PRIMARY KEY (`return_action_id`,`language_id`);

--
-- Индексы таблицы `oc_return_history`
--
ALTER TABLE `oc_return_history`
  ADD PRIMARY KEY (`return_history_id`);

--
-- Индексы таблицы `oc_return_reason`
--
ALTER TABLE `oc_return_reason`
  ADD PRIMARY KEY (`return_reason_id`,`language_id`);

--
-- Индексы таблицы `oc_return_status`
--
ALTER TABLE `oc_return_status`
  ADD PRIMARY KEY (`return_status_id`,`language_id`);

--
-- Индексы таблицы `oc_review`
--
ALTER TABLE `oc_review`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Индексы таблицы `oc_review_article`
--
ALTER TABLE `oc_review_article`
  ADD PRIMARY KEY (`review_article_id`),
  ADD KEY `article_id` (`article_id`);

--
-- Индексы таблицы `oc_seo_url`
--
ALTER TABLE `oc_seo_url`
  ADD PRIMARY KEY (`seo_url_id`),
  ADD KEY `query` (`query`),
  ADD KEY `keyword` (`keyword`);

--
-- Индексы таблицы `oc_session`
--
ALTER TABLE `oc_session`
  ADD PRIMARY KEY (`session_id`);

--
-- Индексы таблицы `oc_setting`
--
ALTER TABLE `oc_setting`
  ADD PRIMARY KEY (`setting_id`);

--
-- Индексы таблицы `oc_shipping_courier`
--
ALTER TABLE `oc_shipping_courier`
  ADD PRIMARY KEY (`shipping_courier_id`);

--
-- Индексы таблицы `oc_statistics`
--
ALTER TABLE `oc_statistics`
  ADD PRIMARY KEY (`statistics_id`);

--
-- Индексы таблицы `oc_stock_status`
--
ALTER TABLE `oc_stock_status`
  ADD PRIMARY KEY (`stock_status_id`,`language_id`);

--
-- Индексы таблицы `oc_store`
--
ALTER TABLE `oc_store`
  ADD PRIMARY KEY (`store_id`);

--
-- Индексы таблицы `oc_tax_class`
--
ALTER TABLE `oc_tax_class`
  ADD PRIMARY KEY (`tax_class_id`);

--
-- Индексы таблицы `oc_tax_rate`
--
ALTER TABLE `oc_tax_rate`
  ADD PRIMARY KEY (`tax_rate_id`);

--
-- Индексы таблицы `oc_tax_rate_to_customer_group`
--
ALTER TABLE `oc_tax_rate_to_customer_group`
  ADD PRIMARY KEY (`tax_rate_id`,`customer_group_id`);

--
-- Индексы таблицы `oc_tax_rule`
--
ALTER TABLE `oc_tax_rule`
  ADD PRIMARY KEY (`tax_rule_id`);

--
-- Индексы таблицы `oc_theme`
--
ALTER TABLE `oc_theme`
  ADD PRIMARY KEY (`theme_id`);

--
-- Индексы таблицы `oc_translation`
--
ALTER TABLE `oc_translation`
  ADD PRIMARY KEY (`translation_id`);

--
-- Индексы таблицы `oc_upload`
--
ALTER TABLE `oc_upload`
  ADD PRIMARY KEY (`upload_id`);

--
-- Индексы таблицы `oc_user`
--
ALTER TABLE `oc_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Индексы таблицы `oc_user_group`
--
ALTER TABLE `oc_user_group`
  ADD PRIMARY KEY (`user_group_id`);

--
-- Индексы таблицы `oc_voucher`
--
ALTER TABLE `oc_voucher`
  ADD PRIMARY KEY (`voucher_id`);

--
-- Индексы таблицы `oc_voucher_history`
--
ALTER TABLE `oc_voucher_history`
  ADD PRIMARY KEY (`voucher_history_id`);

--
-- Индексы таблицы `oc_voucher_theme`
--
ALTER TABLE `oc_voucher_theme`
  ADD PRIMARY KEY (`voucher_theme_id`);

--
-- Индексы таблицы `oc_voucher_theme_description`
--
ALTER TABLE `oc_voucher_theme_description`
  ADD PRIMARY KEY (`voucher_theme_id`,`language_id`);

--
-- Индексы таблицы `oc_weight_class`
--
ALTER TABLE `oc_weight_class`
  ADD PRIMARY KEY (`weight_class_id`);

--
-- Индексы таблицы `oc_weight_class_description`
--
ALTER TABLE `oc_weight_class_description`
  ADD PRIMARY KEY (`weight_class_id`,`language_id`);

--
-- Индексы таблицы `oc_zone`
--
ALTER TABLE `oc_zone`
  ADD PRIMARY KEY (`zone_id`);

--
-- Индексы таблицы `oc_zone_to_geo_zone`
--
ALTER TABLE `oc_zone_to_geo_zone`
  ADD PRIMARY KEY (`zone_to_geo_zone_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `oc_address`
--
ALTER TABLE `oc_address`
  MODIFY `address_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_api`
--
ALTER TABLE `oc_api`
  MODIFY `api_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `oc_api_ip`
--
ALTER TABLE `oc_api_ip`
  MODIFY `api_ip_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_api_session`
--
ALTER TABLE `oc_api_session`
  MODIFY `api_session_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_article`
--
ALTER TABLE `oc_article`
  MODIFY `article_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT для таблицы `oc_article_image`
--
ALTER TABLE `oc_article_image`
  MODIFY `article_image_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3981;

--
-- AUTO_INCREMENT для таблицы `oc_attribute`
--
ALTER TABLE `oc_attribute`
  MODIFY `attribute_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT для таблицы `oc_attribute_group`
--
ALTER TABLE `oc_attribute_group`
  MODIFY `attribute_group_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `oc_banner`
--
ALTER TABLE `oc_banner`
  MODIFY `banner_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `oc_banner_image`
--
ALTER TABLE `oc_banner_image`
  MODIFY `banner_image_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT для таблицы `oc_blog_category`
--
ALTER TABLE `oc_blog_category`
  MODIFY `blog_category_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT для таблицы `oc_cart`
--
ALTER TABLE `oc_cart`
  MODIFY `cart_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `oc_category`
--
ALTER TABLE `oc_category`
  MODIFY `category_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT для таблицы `oc_country`
--
ALTER TABLE `oc_country`
  MODIFY `country_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=254;

--
-- AUTO_INCREMENT для таблицы `oc_coupon`
--
ALTER TABLE `oc_coupon`
  MODIFY `coupon_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `oc_coupon_history`
--
ALTER TABLE `oc_coupon_history`
  MODIFY `coupon_history_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_coupon_product`
--
ALTER TABLE `oc_coupon_product`
  MODIFY `coupon_product_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_currency`
--
ALTER TABLE `oc_currency`
  MODIFY `currency_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `oc_customer`
--
ALTER TABLE `oc_customer`
  MODIFY `customer_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_customer_activity`
--
ALTER TABLE `oc_customer_activity`
  MODIFY `customer_activity_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_customer_approval`
--
ALTER TABLE `oc_customer_approval`
  MODIFY `customer_approval_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_customer_group`
--
ALTER TABLE `oc_customer_group`
  MODIFY `customer_group_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `oc_customer_history`
--
ALTER TABLE `oc_customer_history`
  MODIFY `customer_history_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_customer_ip`
--
ALTER TABLE `oc_customer_ip`
  MODIFY `customer_ip_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_customer_login`
--
ALTER TABLE `oc_customer_login`
  MODIFY `customer_login_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_customer_reward`
--
ALTER TABLE `oc_customer_reward`
  MODIFY `customer_reward_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_customer_search`
--
ALTER TABLE `oc_customer_search`
  MODIFY `customer_search_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_customer_transaction`
--
ALTER TABLE `oc_customer_transaction`
  MODIFY `customer_transaction_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_custom_field`
--
ALTER TABLE `oc_custom_field`
  MODIFY `custom_field_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_custom_field_value`
--
ALTER TABLE `oc_custom_field_value`
  MODIFY `custom_field_value_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_download`
--
ALTER TABLE `oc_download`
  MODIFY `download_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_event`
--
ALTER TABLE `oc_event`
  MODIFY `event_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT для таблицы `oc_extension`
--
ALTER TABLE `oc_extension`
  MODIFY `extension_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT для таблицы `oc_extension_install`
--
ALTER TABLE `oc_extension_install`
  MODIFY `extension_install_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_extension_path`
--
ALTER TABLE `oc_extension_path`
  MODIFY `extension_path_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_filter`
--
ALTER TABLE `oc_filter`
  MODIFY `filter_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_filter_group`
--
ALTER TABLE `oc_filter_group`
  MODIFY `filter_group_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_geo_zone`
--
ALTER TABLE `oc_geo_zone`
  MODIFY `geo_zone_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `oc_googleshopping_product`
--
ALTER TABLE `oc_googleshopping_product`
  MODIFY `product_advertise_google_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `oc_information`
--
ALTER TABLE `oc_information`
  MODIFY `information_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `oc_language`
--
ALTER TABLE `oc_language`
  MODIFY `language_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `oc_layout`
--
ALTER TABLE `oc_layout`
  MODIFY `layout_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT для таблицы `oc_layout_module`
--
ALTER TABLE `oc_layout_module`
  MODIFY `layout_module_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT для таблицы `oc_layout_route`
--
ALTER TABLE `oc_layout_route`
  MODIFY `layout_route_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT для таблицы `oc_length_class`
--
ALTER TABLE `oc_length_class`
  MODIFY `length_class_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `oc_location`
--
ALTER TABLE `oc_location`
  MODIFY `location_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_manufacturer`
--
ALTER TABLE `oc_manufacturer`
  MODIFY `manufacturer_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `oc_marketing`
--
ALTER TABLE `oc_marketing`
  MODIFY `marketing_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_modification`
--
ALTER TABLE `oc_modification`
  MODIFY `modification_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_modification_backup`
--
ALTER TABLE `oc_modification_backup`
  MODIFY `backup_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_module`
--
ALTER TABLE `oc_module`
  MODIFY `module_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT для таблицы `oc_option`
--
ALTER TABLE `oc_option`
  MODIFY `option_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `oc_option_value`
--
ALTER TABLE `oc_option_value`
  MODIFY `option_value_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT для таблицы `oc_order`
--
ALTER TABLE `oc_order`
  MODIFY `order_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_order_history`
--
ALTER TABLE `oc_order_history`
  MODIFY `order_history_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_order_option`
--
ALTER TABLE `oc_order_option`
  MODIFY `order_option_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_order_product`
--
ALTER TABLE `oc_order_product`
  MODIFY `order_product_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_order_recurring`
--
ALTER TABLE `oc_order_recurring`
  MODIFY `order_recurring_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_order_recurring_transaction`
--
ALTER TABLE `oc_order_recurring_transaction`
  MODIFY `order_recurring_transaction_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_order_shipment`
--
ALTER TABLE `oc_order_shipment`
  MODIFY `order_shipment_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_order_status`
--
ALTER TABLE `oc_order_status`
  MODIFY `order_status_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT для таблицы `oc_order_total`
--
ALTER TABLE `oc_order_total`
  MODIFY `order_total_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_order_voucher`
--
ALTER TABLE `oc_order_voucher`
  MODIFY `order_voucher_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_product`
--
ALTER TABLE `oc_product`
  MODIFY `product_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT для таблицы `oc_product_discount`
--
ALTER TABLE `oc_product_discount`
  MODIFY `product_discount_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=441;

--
-- AUTO_INCREMENT для таблицы `oc_product_image`
--
ALTER TABLE `oc_product_image`
  MODIFY `product_image_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2365;

--
-- AUTO_INCREMENT для таблицы `oc_product_option`
--
ALTER TABLE `oc_product_option`
  MODIFY `product_option_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=227;

--
-- AUTO_INCREMENT для таблицы `oc_product_option_value`
--
ALTER TABLE `oc_product_option_value`
  MODIFY `product_option_value_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT для таблицы `oc_product_reward`
--
ALTER TABLE `oc_product_reward`
  MODIFY `product_reward_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=546;

--
-- AUTO_INCREMENT для таблицы `oc_product_special`
--
ALTER TABLE `oc_product_special`
  MODIFY `product_special_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=440;

--
-- AUTO_INCREMENT для таблицы `oc_recurring`
--
ALTER TABLE `oc_recurring`
  MODIFY `recurring_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_return`
--
ALTER TABLE `oc_return`
  MODIFY `return_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_return_action`
--
ALTER TABLE `oc_return_action`
  MODIFY `return_action_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `oc_return_history`
--
ALTER TABLE `oc_return_history`
  MODIFY `return_history_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_return_reason`
--
ALTER TABLE `oc_return_reason`
  MODIFY `return_reason_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `oc_return_status`
--
ALTER TABLE `oc_return_status`
  MODIFY `return_status_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `oc_review`
--
ALTER TABLE `oc_review`
  MODIFY `review_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_review_article`
--
ALTER TABLE `oc_review_article`
  MODIFY `review_article_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `oc_seo_url`
--
ALTER TABLE `oc_seo_url`
  MODIFY `seo_url_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1033;

--
-- AUTO_INCREMENT для таблицы `oc_setting`
--
ALTER TABLE `oc_setting`
  MODIFY `setting_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1306;

--
-- AUTO_INCREMENT для таблицы `oc_statistics`
--
ALTER TABLE `oc_statistics`
  MODIFY `statistics_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `oc_stock_status`
--
ALTER TABLE `oc_stock_status`
  MODIFY `stock_status_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `oc_store`
--
ALTER TABLE `oc_store`
  MODIFY `store_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_tax_class`
--
ALTER TABLE `oc_tax_class`
  MODIFY `tax_class_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `oc_tax_rate`
--
ALTER TABLE `oc_tax_rate`
  MODIFY `tax_rate_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT для таблицы `oc_tax_rule`
--
ALTER TABLE `oc_tax_rule`
  MODIFY `tax_rule_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- AUTO_INCREMENT для таблицы `oc_theme`
--
ALTER TABLE `oc_theme`
  MODIFY `theme_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_translation`
--
ALTER TABLE `oc_translation`
  MODIFY `translation_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_upload`
--
ALTER TABLE `oc_upload`
  MODIFY `upload_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_user`
--
ALTER TABLE `oc_user`
  MODIFY `user_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `oc_user_group`
--
ALTER TABLE `oc_user_group`
  MODIFY `user_group_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `oc_voucher`
--
ALTER TABLE `oc_voucher`
  MODIFY `voucher_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_voucher_history`
--
ALTER TABLE `oc_voucher_history`
  MODIFY `voucher_history_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_voucher_theme`
--
ALTER TABLE `oc_voucher_theme`
  MODIFY `voucher_theme_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `oc_weight_class`
--
ALTER TABLE `oc_weight_class`
  MODIFY `weight_class_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `oc_zone`
--
ALTER TABLE `oc_zone`
  MODIFY `zone_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4238;

--
-- AUTO_INCREMENT для таблицы `oc_zone_to_geo_zone`
--
ALTER TABLE `oc_zone_to_geo_zone`
  MODIFY `zone_to_geo_zone_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
