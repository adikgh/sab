-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Ноя 02 2021 г., 19:39
-- Версия сервера: 5.6.41
-- Версия PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `sabc`
--

-- --------------------------------------------------------

--
-- Структура таблицы `autor`
--

CREATE TABLE `autor` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `title` text,
  `cl` text,
  `cm` text,
  `bag` text,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `autor`
--

INSERT INTO `autor` (`id`, `name`, `title`, `cl`, `cm`, `bag`, `date`) VALUES
(1, 'bakytbai', 'Бақытай Сабырбеков', '#7481D5', '#54BEE8', '#fff', '0000-00-00'),
(2, 'dosbol', 'Рсалиев Досбол', '#D3117B', '#FD4D2E', '#fff', '0000-00-00'),
(3, 'muhit', 'Мұхит Нұрданұлы', '#55C2EC', '#7385D7', '#fff', '0000-00-00'),
(4, 'bake', 'Бақытай Сабырбеков', '#7481D5', '#54BEE8', '#fff', '0000-00-00');

-- --------------------------------------------------------

--
-- Структура таблицы `autor_file`
--

CREATE TABLE `autor_file` (
  `id` int(11) NOT NULL,
  `autor_id` int(11) NOT NULL,
  `style` varchar(30) DEFAULT NULL,
  `sab` int(11) DEFAULT NULL,
  `img` text NOT NULL,
  `og_img` text,
  `header` text,
  `txt` text,
  `video` text,
  `date_name` text,
  `date` date NOT NULL,
  `upd_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `autor_file`
--

INSERT INTO `autor_file` (`id`, `autor_id`, `style`, `sab`, `img`, `og_img`, `header`, `txt`, `video`, `date_name`, `date`, `upd_date`) VALUES
(1, 1, 'date', 1, 'bakytbai_1_sab.jpg', 'bakytbai_1_sab.png', 'Онлайн курстарды жасаудың жоспары', '<p>• Онлайн курстар нарығы қалай жұмыс жасайды?</p>\r\n<p>• Инфобизнесмен деген кім және қанша ақша таба алады;</p>\r\n<p>• Онлайн курсты жасаудың нақты қадамдары;</p>\r\n<p>• Мамандықты меңгеру үшін жасалынатын қадамдар;</p>\r\n<p>• Біз қалай бір курсты 35 миллионға саттық.</p>\r\n', 'kV4dm9S1ICc', '02 қараша', '2020-11-02', '0000-00-00'),
(2, 1, 'date', 2, 'bakytbai_2_sab.jpg', 'bakytbai_2_sab.png', 'Онлайн курстар қалай жасалу керек?', '<p>Онлайн курстардың структурасы</p><p>Онлайн курс жасаудағы басты қателіктер</p>', 'xdTPp3ItH9M', '03 қараша', '2020-11-03', '0000-00-00'),
(3, 1, 'date', 3, 'bakytbai_3_sab.jpg', 'bakytbai_3_sab.png', 'Клиентті қайдан табамыз?', '', 'EuSNgHc_g7M', '04 қараша', '2020-11-04', '0000-00-00'),
(4, 1, 'date', 4, 'bakytbai_4_sab.jpg', 'bakytbai_4_sab.png', 'Инфобизнесмен әрі қарай қалай дамиды?', '', '', '05 қараша', '2020-11-05', '0000-00-00'),
(5, 2, 'date', 1, 'dosbol_1_sab.jpg', 'dosbol_1_sab.png', 'Дұрыс бастаудың нақты қадамдары', '<p>• Facebook алгоритмі қалай жұмыс жасайды;</p>\r\n<p>• Таргетологтар қалай ақша табады;</p>\r\n<p>• Дұрыс бастаудың нақты қадамдары;</p>\r\n<p>• Мен қалай 500 000тг табысқа шықтым?</p>', '9534AP3By5M', '02 қараша', '2020-11-02', '0000-00-00'),
(6, 2, 'date', 2, 'dosbol_2_sab.jpg', 'dosbol_2_sab.png', 'Таргет жарнамасын қалай жасаймыз?', '<p>•  Жарнама жібермес бұрын білу керек 7 қағида         </p> <p>• Сіздің таргетолог болып, ақша табуға кедергі келтіретін 5 қорқыныш</p>', 'RHxR6DSCGZ0', '03 қараша', '2020-11-03', '0000-00-00'),
(7, 2, 'date', 3, 'dosbol_3_sab.jpg', 'dosbol_3_sab.png', 'Клиентті қайдан табамыз?', '', '', '04 қараша', '2020-11-04', '0000-00-00'),
(8, 2, 'date', 4, 'dosbol_4_sab.jpg', 'dosbol_4_sab.png', 'Әрі қарай не істейміз?', '', '', '05 қараша', '2020-11-05', '0000-00-00'),
(9, 3, 'date', 1, 'muhit_1_sab.jpg', 'muhit_1_sab.png', '0-ден бастаудың жоспары', '<p>• Видео сабақ;</p>\r\n<p>• Сайт қалай жұмыс жасайды;</p>\r\n<p>• Таплик маманы деген кім?;</p>\r\n<p>• Мамандықты меңгеру үшін жасалынатын қадамдар;</p>\r\n<p>• 5 күнде 300 000тг тапқан оқиға;</p>', 'Q42XAxcCy2o', '02 қараша', '2020-11-02', '0000-00-00'),
(10, 3, 'date', 2, 'muhit_2_sab.jpg', 'muhit_2_sab.png', 'Сайтты қалай жасаймыз?', '<p>• Видео сабақ</p> <p>• Телефон арқылы сайт жасау</p> <p>• Сататын сайттың структурасы</p>', 'krjp4kR6Ya8', '03 қараша', '2020-11-03', '0000-00-00'),
(11, 3, 'date', 3, 'muhit_3_sab.jpg', 'muhit_3_sab.png', 'Клиент қайдан табамыз?', '', '', '04 қараша', '2020-11-04', '0000-00-00'),
(12, 3, 'date', 4, 'muhit_4_sab.jpg', 'muhit_4_sab.png', 'Ары қарай не істейміз?', '', '', '05 қараша', '2020-11-05', '0000-00-00'),
(13, 4, 'click', 1, 'bakytbai_1_sab.jpg', 'bakytbai_1_sab.png', 'Онлайн курстарды жасаудың жоспары', '<p>• Онлайн курстар нарығы қалай жұмыс жасайды?</p>\r\n<p>• Инфобизнесмен деген кім және қанша ақша таба алады;</p>\r\n<p>• Онлайн курсты жасаудың нақты қадамдары;</p>\r\n<p>• Мамандықты меңгеру үшін жасалынатын қадамдар;</p>\r\n<p>• Біз қалай бір курсты 35 миллионға саттық.</p>\r\n', 'kV4dm9S1ICc', NULL, '2020-11-02', '0000-00-00'),
(14, 4, 'click', 2, 'bakytbai_2_sab.jpg', 'bakytbai_2_sab.png', 'Онлайн курстар қалай жасалу керек?', '<p>Онлайн курстардың структурасы</p><p>Онлайн курс жасаудағы басты қателіктер</p>', 'xdTPp3ItH9M', NULL, '2020-11-03', '0000-00-00'),
(15, 4, 'click', 3, 'bakytbai_3_sab.jpg', 'bakytbai_3_sab.png', 'Клиентті қайдан табамыз?', NULL, 'EuSNgHc_g7M', NULL, '2020-11-04', '0000-00-00'),
(16, 4, 'click', 4, 'bakytbai_4_sab.jpg', 'bakytbai_4_sab.png', 'Инфобизнесмен әрі қарай қалай дамиды?', NULL, NULL, NULL, '2020-11-05', '0000-00-00');

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `logo` text NOT NULL,
  `status_id` int(11) DEFAULT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id`, `name`, `logo`, `status_id`, `date`) VALUES
(1, 'Дизайн', '<i class=\"fal fa-pencil-ruler\"></i>', 5, '0000-00-00'),
(2, 'Бағдарламалау', '<i class=\"fal fa-laptop-code\"></i>', 5, '0000-00-00'),
(3, 'Басқару', '<i class=\"fal fa-briefcase\"></i>', 5, '0000-00-00'),
(4, 'Маркетинг', '<i class=\"fal fa-bullhorn\"></i>', 5, '0000-00-00'),
(5, 'Видео', '<i class=\"fal fa-video\"></i>', 5, '0000-00-00');

-- --------------------------------------------------------

--
-- Структура таблицы `cours`
--

CREATE TABLE `cours` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `autor_id` int(11) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `logo_txt` varchar(30) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `offer` int(11) DEFAULT NULL,
  `new` int(11) DEFAULT NULL,
  `top` int(11) DEFAULT NULL,
  `view` int(11) DEFAULT NULL,
  `item` int(11) DEFAULT NULL,
  `time` text,
  `price` int(11) DEFAULT NULL,
  `price_sole` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `ins_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `cours`
--

INSERT INTO `cours` (`id`, `category_id`, `name`, `autor_id`, `img`, `logo_txt`, `status_id`, `offer`, `new`, `top`, `view`, `item`, `time`, `price`, `price_sole`, `date`, `ins_date`) VALUES
(1, 1, 'TAPLINK маманы бол!', 2, '5f1c12313a807_original.jpg', 'T', 5, 1, NULL, 1, NULL, 12, '5сағ 30мин', 14990, NULL, '2020-03-01', NULL),
(2, 1, 'MOB-DESIGN', 5, 'k.jpg', 'MD', 5, 1, NULL, 1, NULL, 7, NULL, 30000, NULL, '2020-06-01', NULL),
(3, 4, 'Табысты Таргет', 4, '5e53a6bc80fb1_original.jpg', 'TT', 5, NULL, NULL, NULL, NULL, NULL, NULL, 19990, 4999, '2019-11-01', NULL),
(5, 1, 'Taplink маманы - Business', 2, '5f6efbdc0ed3f_original.jpg', 'TB', 5, NULL, NULL, NULL, NULL, 16, NULL, 24990, NULL, '2020-10-01', NULL),
(6, 1, 'Taplink маманы - VIP', 2, '5f6efc4058451_original.jpg', 'TV', 5, NULL, NULL, NULL, NULL, 15, NULL, 89990, NULL, '2020-10-01', NULL),
(7, 4, 'TARGET-SNIPER', 1, '5f3120ea24073_original.jpg', 'TS', 5, 1, 1, 1, NULL, 38, '22 сағ', 50000, 13990, '2020-07-01', NULL),
(8, 1, 'Taplink маманы - Standart', 2, '5f6efbb084257_original.jpg', 'TS', 5, NULL, NULL, NULL, NULL, 15, NULL, 29990, NULL, '2020-10-01', NULL),
(9, 4, 'INSTA - MONEY', 4, '5e53a6e8e1235_original.jpg', 'IM', 5, NULL, NULL, NULL, NULL, 51, NULL, 50000, NULL, '2019-09-01', NULL),
(10, 4, 'Инстаграм құпиясы', 2, '5f1835ff5cb45_original.jpg', 'ИҚ', 5, NULL, NULL, NULL, NULL, 7, NULL, 9990, NULL, '2020-05-01', NULL),
(11, 4, 'Insta Money 2.0 - Business', 4, '5ea472271b4ca_original.jpg', 'IM', 5, NULL, NULL, NULL, NULL, 12, NULL, 59990, NULL, '2020-02-01', NULL),
(13, 4, 'TAPSYRYSPEN', 4, '5e53a719c8bf8_original.jpg', 'T', 5, NULL, NULL, NULL, NULL, 15, NULL, 5000, NULL, '2019-12-01', NULL),
(14, 4, 'INSTA CAMP', 4, '5f37d289b5d21_original.jpg', 'IC', 5, NULL, NULL, NULL, NULL, 5, NULL, 19990, NULL, '2020-07-01', NULL),
(15, 4, 'ПРАКТИКУМ', 4, '5e53a805c21e4_original.jpg', 'П', 5, NULL, NULL, NULL, NULL, 4, NULL, 7000, NULL, '2020-01-01', NULL),
(16, 4, 'ЗАПУСК марафоны', 4, '5ea19c4cac4ac_original.jpg', 'ЗМ', 5, NULL, NULL, NULL, NULL, NULL, NULL, 1990, NULL, '2020-08-01', NULL),
(17, 4, 'START SMM', 4, '5e53a7a8c4945_original.jpg', 'SS', 5, NULL, NULL, NULL, NULL, 6, NULL, 7000, NULL, '2019-10-01', NULL),
(18, 4, 'INSTA SHOP', 4, '5f06ff060caac_original.jpg', 'IS', 5, 1, NULL, 1, NULL, 14, NULL, 34000, NULL, '2020-04-01', NULL),
(19, 5, 'Мобилография марафоны', 6, '5f61f7ee1a3cf_original.jpg', 'MM', 5, NULL, NULL, NULL, NULL, 12, NULL, 14990, NULL, '2020-09-01', NULL),
(20, 4, 'Insta Money 2.0 - Standart\r\n', 4, '5ea46e8f076c0_original.jpg', 'IM', 5, NULL, NULL, NULL, NULL, 12, NULL, 35000, NULL, '2020-02-01', NULL),
(21, 4, 'Insta Money 2.0 - VIP', 4, '5ea473bc51f93_original.jpg', 'IM', 5, NULL, NULL, NULL, NULL, 12, NULL, 95990, NULL, '2020-02-01', NULL),
(22, 4, 'VIDEOMARKETING', 6, '5f61f7bcc190b_original.jpg', 'V', 6, NULL, NULL, 1, NULL, NULL, NULL, 14990, NULL, '2020-09-01', NULL),
(23, 4, 'ЗАПУСК курсы', 4, 'Zapusk.jpg', 'ЗК', 5, 1, 1, 1, NULL, 5, NULL, 29990, NULL, '2020-11-01', NULL),
(24, 1, 'PRO TAPLINK', 2, 'Untitled-1.jpg', 'PT', 5, 1, 1, 1, NULL, 4, NULL, 19990, NULL, '2020-11-01', NULL),
(25, 4, 'Запуск онлайн курсы', 4, '5f4693430af65_original.jpg', NULL, 5, NULL, NULL, NULL, NULL, 13, NULL, 29990, NULL, '2020-08-01', NULL),
(26, 4, 'Реальный Интернет Маркетолог', 4, '5fa55ebe2da45_original.jpg', 'РИМ', 5, NULL, NULL, NULL, NULL, NULL, NULL, 72000, 24990, '2020-10-01', NULL),
(27, 4, '1000 фанат', 4, NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, 9990, 1990, '2020-11-30', '2020-11-20');

-- --------------------------------------------------------

--
-- Структура таблицы `cours_block`
--

CREATE TABLE `cours_block` (
  `id` int(11) NOT NULL,
  `number` int(11) DEFAULT NULL,
  `cours_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `logo_txt` varchar(255) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `cours_block`
--

INSERT INTO `cours_block` (`id`, `number`, `cours_id`, `name`, `logo_txt`, `status_id`, `date`) VALUES
(1, 1, 1, 'Кіріспе', 'К', 5, '0000-00-00'),
(2, 2, 1, 'Сайт дизайны', 'СД', 5, '0000-00-00'),
(3, 3, 1, 'Клиент табу', 'КТ', 5, '0000-00-00'),
(4, 1, 7, 'Жалпы', 'Ж', 5, '0000-00-00'),
(12, 1, 2, 'Жалпы', 'Ж', 5, '2020-11-07'),
(13, 1, 9, 'Жалпы', 'Ж', 5, '2020-11-07'),
(65, 1, 10, 'ИНСТАГРАМНЫҢ 7 ҚҰПИЯСЫ', '', 5, '2020-11-07'),
(66, 1, 13, 'ТАПСЫРЫСПЕН', '', 5, '2020-11-07'),
(67, 1, 14, 'INSTA CAMP', '', 5, '2020-11-07'),
(68, 1, 15, 'ПРАКТИКУМ', '', 5, '2020-11-07'),
(69, 1, 17, 'SMM START', '', 5, '2020-11-07'),
(70, 1, 18, 'INSTA SHOP', '', 5, '2020-11-07'),
(71, 1, 19, 'МОБИЛОГРАФИЯ', '', 5, '2020-11-07'),
(72, 1, 20, 'Insta Money 2.0', '', 5, '2020-11-07'),
(73, 1, 5, 'Taplink маманы - Business', '', 5, '2020-11-07'),
(74, 1, 6, 'Жалпы', 'Ж', 5, '2020-11-07'),
(75, 1, 8, 'Жалпы', 'Ж', 5, '2020-11-07'),
(76, 1, 23, 'Жалпы', 'Ж', 5, '2020-11-18'),
(77, 1, 24, 'Жалпы', 'Ж', 5, '2020-11-18'),
(78, 2, 23, 'Теория', '', 5, '2020-11-20'),
(79, 1, 25, 'Жалпы', '', 5, '2020-11-20'),
(80, 4, 1, 'Test', '', 5, '2020-12-03'),
(81, 5, 1, 'gfdgdf', '', 5, '2020-12-03'),
(82, 6, 1, 'dasdas', '', 5, '2020-12-03'),
(83, 7, 1, 'dasdasdas', '', 5, '2020-12-03');

-- --------------------------------------------------------

--
-- Структура таблицы `cours_item`
--

CREATE TABLE `cours_item` (
  `id` int(11) NOT NULL,
  `number` int(11) DEFAULT NULL,
  `cours_id` int(11) DEFAULT NULL,
  `block_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `logo` text,
  `logo_txt` varchar(30) DEFAULT NULL,
  `txt_a` text,
  `video_youtube` varchar(255) DEFAULT NULL,
  `txt_b` text,
  `mat` text,
  `work` text,
  `status_id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `cours_item`
--

INSERT INTO `cours_item` (`id`, `number`, `cours_id`, `block_id`, `name`, `logo`, `logo_txt`, `txt_a`, `video_youtube`, `txt_b`, `mat`, `work`, `status_id`, `date`) VALUES
(1, 1, 1, 1, 'Телефон арқылы сайт жасау', NULL, 'ТА', NULL, 'WOYafu2uBO0', NULL, NULL, NULL, 5, '2020-10-29'),
(3, 2, 1, 1, 'Сататын сайттың структурасы', NULL, 'СС', NULL, 'LF3_eK0WDf0', NULL, '<p><a href=\"https://drive.google.com/file/d/1rYxdctrWZ6GdaqlHsItBnq-l9EdVtj-p/view?usp=sharing\" target=\"_blank\">ЧЕК-ЛИСТ: Сататын сайттың структурасы</a></p>', NULL, 5, '2020-10-28'),
(4, 1, 1, 2, 'Сайтты сәндеудің жолы', NULL, 'СС', NULL, 'ew0ROf0Xvdo', NULL, '<p>Сабақта айтылған кнопканың шаблонын осы сілтемемен жүктей аласыз: <a href=\"https://docs.google.com/document/d/1XAgyXVb9OwacYRvlxaEpFSwWanh3N-JUE_MYVKjr-rc/edit?usp=sharing\" target=\"_blank\">КНОПКА</a></p>\r\n<p>Сабақта айтылған онлайн калькулятордың сайты міне: <a href=\"www.Ucalc.pro\" target=\"_blank\">www.Ucalc.pro</a></p>\r\n<p>Онлайн таймердің сайты: <a href=\"www.Megatimer.ru\" target=\"_blank\">www.Megatimer.ru</a></p>', NULL, 5, '2020-10-27'),
(5, 2, 1, 2, 'Бонус сабақ', NULL, 'БС', NULL, '1gBNcMwpWXg', NULL, NULL, NULL, 5, '2020-10-26'),
(6, 3, 1, 2, 'Сайт арқылы база жинау', NULL, 'СА', NULL, 'dkBJiSpisRA', '<p><br />\r\nСілтемеге өт:&nbsp;<a href=\"https://instagram.com/taplink_mamandary?igshid=1n4f7gfezwckb\" target=\"_blank\">Таплинк мамандарына арналған аккаунт</a></p>', NULL, NULL, 5, '2020-10-25'),
(7, 1, 1, 3, 'Алғашқы клиент табу жолы', NULL, 'АК', NULL, 'faZTFY80t3s', '<p><br />\r\nОртақ чатқа қосыл:&nbsp;<a href=\"https://t.me/joinchat/EvnZphKqKXq83gP1sk186g\" target=\"_blank\">Талинк Мамандары</a></p>', NULL, NULL, 5, '0000-00-00'),
(8, 4, 1, 2, 'Бонус сабақ', NULL, 'БС', NULL, '6W9d77Zmtgo', NULL, NULL, NULL, 5, '0000-00-00'),
(9, 5, 1, 2, 'Бонус сабақ (Батырма)', NULL, 'БС\r\n', NULL, 'yBpyIBmkWSk', NULL, NULL, NULL, 5, '0000-00-00'),
(10, 6, 1, 2, 'Бонус сабақ (Супер батырма)', NULL, 'БС', NULL, 'xfZjvYKYVcY', NULL, NULL, NULL, 5, '0000-00-00'),
(11, 2, 1, 3, 'Оқырман + сатылым жасайтын воронка', NULL, 'О+', NULL, 'aTQjhFrq6N8', '<p><br />\r\nБонусты алғың келсе, осы сілтемемен өтіңіз:&nbsp;<a href=\"https://taplink.cc/muhit_nurdanuly/p/34e695/\" target=\"_blank\">Бонус</a></p>', NULL, NULL, 5, '0000-00-00'),
(12, 7, 1, 2, 'Бонус сабақ (анимация жасау)', NULL, 'БС', NULL, 'oka7ydzc7Z8', NULL, NULL, NULL, 5, '0000-00-00'),
(13, 3, 1, 3, 'Өзіңді сату сабағы', NULL, 'ӨС', NULL, 'fYrORsMX3N8', '<p>Taplink маманы бол онлайн курсын сәтті аяқтағаныңыз үшін құттықтаймыз! Сертификатты алу үшін, берілген сілтеме бойынша өтіңіз:&nbsp;<a href=\"https://antitreningi.ru/student/certificate?course_id=93353&amp;id=5090\" target=\"_blank\">СЕРТИФИКАТ</a></p>', NULL, NULL, 5, '0000-00-00'),
(14, 1, 7, 4, 'Таргет деген не?', NULL, 'ТД', NULL, 'rbW7LEA9oYQ', '<p>&nbsp;</p>\r\n\r\n<p>Таргет деген не? &nbsp;&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Таргеттің инструменттерін пайдаланбас бұрын, Таргет деген не екенін түсінуіңіз керек.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Бұл видеода таргеттік жарнама деген не екенін түсінесіз.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Таргетинг жарнамасы &ndash; бұл Фейсбуктің ішіндегі жарнамалық кабинет арқылы Инстаграмға жарнама жіберу. Жарнаманың 2 түрі бар пост және сторис.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Жарнаманы әр түрлі критериларңа байланысты жасаймыз:&nbsp;</p>\r\n\r\n<p>1. Жынысы&nbsp;</p>\r\n\r\n<p>2. Жасы&nbsp;</p>\r\n\r\n<p>3. Географиясы</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Және де инстаграмыңызбен байланысқан барлық барлық адамдарды жинай аласыз. </p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Сонымен қатар сіздің Интернеттегі әр түрлі қызығушылықтарыңыз бен пайдаланушылардың мінез-құлқына негізделген белгілі бір сегменттерді таңдай аласыз. Facebook сіздің әлеуметтік желідегі қызығушылығыңызға байланысты ақпараттарды жинап отырады. &nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Мысалы:&nbsp;</p>\r\n\r\n<p>⁃ Саяхаттау&nbsp;&nbsp;</p>\r\n\r\n<p>⁃ Балаңыз қанша жаста&nbsp;</p>\r\n\r\n<p>⁃ Бизнеспен айналысасың ба жоқ па&nbsp;</p>\r\n\r\n<p>⁃ Немен әуестенесің&nbsp;</p>\r\n\r\n<p>⁃ Телефоныңыздың моделін&nbsp;&nbsp;</p>\r\n\r\n<p>⁃ Компьютеріңіз бен оның моделі қандай екенін</p>', NULL, NULL, 5, '0000-00-00'),
(15, 2, 7, 4, 'Таргетолог деген кім?', NULL, 'ТД', NULL, 'HVkb1NpaXNg', '<p>&nbsp;</p>\r\n\r\n<p>Таргетолог деген кім? &nbsp; &nbsp; &nbsp; &nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Таргетолог &ndash; бұл Инстаграмда жарнаманың настройкасын жасайтын маман. &nbsp;Рекламный кабинет Facebook-тегі жарнамалық кабинеттер бизнесмендер үшін жалпы біраз адамға қиындық тудырады. Сондықтан олар уақытын үнемдеу үшін таргетологқа тапсырады</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Таргетологтың міндеттері:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>⁃ Жарнамалық мәтін жазу</p>\r\n\r\n<p>⁃ Кретивтер жасау</p>\r\n\r\n<p>⁃ Жарнамалық кабинеттің настройкасы</p>\r\n\r\n<p>⁃ Мақсатты аудиторияны білу, зерттеу, бөлу</p>\r\n\r\n<p>⁃ Тест, анализ жасау</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Және де өнімге байланысты аудиторияны таңдау, оларды қолда бар база, қызығушылықтары, әрекеттері арқылы табу. Аудиторияны тапқаннан кейін ғана оларға арналған арнайы жарнамамызды жібереміз.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Бірінші жарнаманы жібергеннен кейін білуіңіз керек:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>1. Сатылым қаншалықты тұрақты болып жатқанын</p>\r\n\r\n<p>2. Бағасы қанша</p>\r\n\r\n<p>3. Масштабировать етуге немесе оданда көп нәтиже алуға болады ма</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Ол үшін сіз тестовый 2-3 күндік жарнама жібересіз. Сол тестовый уақыт біткенде анализ жасап, ол биснеске қаншалықты пайда әкелетініңізді түсінесіз.</p>', NULL, NULL, 5, '0000-00-00'),
(16, 3, 7, 4, 'Терминдер', NULL, 'Т', NULL, 'tdjIZmqIqCk', '<p>&nbsp;</p>\r\n\r\n<p>Терминдер</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>\r\n\r\n<p>Трафик&nbsp;- мысалы дүкеніңізге бірнеше адамды жарнама арқылы кіргізсеңіз ол трафик болып саналады. Яғни сіздің тауарды алуы мүмкін адамдарды сайтыңызға кіргізсеңіз ол трафик болып саналады.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Клик&nbsp;- жарнамадағы сайтты, баннерді немесе сілтемені бассаңыз бір клик болып саналады.&nbsp; Мысалы Айдос Снайпер Таргет сайтының видео жарнамасын көріп,&nbsp; бір рет саусағымен подробнее т,б үстінен басса, оны бір клик болып есептейді.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>CTR (Click-through rate)&nbsp;-&nbsp;Көрілімнің&nbsp; кликке көрсеткіші.&nbsp; CTR= Қанша клик/Көрсетілім саны * 100% формуласымен есептеледі. Мысалы: Мағжан ағаның жарнамалық фотосын 10 адам көріп, 2 адам кірсе, Мағжан ағаның жарнамалық фотосының көрсеткіші 20%</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Охват&nbsp;- сіздің жарнамаңызды көрген адамдардың барлығын осы&nbsp;Охват&nbsp;арқылы есептейді, мысалы Нұржан сіздің жарнамаңызды 3 рет көрсе, бұл 3 охват болып есептеледі.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Бан&nbsp;- бұғаттау деп атайды, мысалы Инстаграм ережесін бұзып бұғаттаса бұны БАН деп атайды.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Фан пейдж&nbsp;- Facebook тің ішінен ашылатын парақшаны&nbsp;Фан пейдж&nbsp;деп айтады.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Биллинг&nbsp;- сізге жұмсауға берілетін бюджеттің есебін биллинг деп атайды. Мысалы Facebook сізге ең басында 125 рубль биллинг беруі мүмкін, кейін егер жақсы төлеп отырсаңыз сізге 50&nbsp; 000 рубльге-ге&nbsp; дейін қарызға бере алады.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>ROI (Return On Investment)&nbsp;- көбіне маркетинг саласында қолданылатын термин, мысалы Мұхит таргетті жарнамаға өзінің&nbsp; телефон чехолын шығарды, чехолдың өзіндік құны 1000 теңге, Мұхит дәл сол чехолдың 3 данасын сатып 3000 теңге тапты,&nbsp; жарнамаға кеткен шығыны 1000 теңге. Формуласы былай:&nbsp;&nbsp;ROI&nbsp;200% ROI = (ПАЙДА - ЖАРНАМА ШЫҒЫНЫ) : ЖАРНАМА ШЫҒЫНЫ) * 100% &nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>(3000 - 1000/1000) * 100% = 200% Сондағы&nbsp;&nbsp;ROI&nbsp;200%</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>CPM&nbsp;(Cost Per Millennium) -&nbsp;сіздің жарнамаңыздың 1000 адамға көрсетілген бағасы. Мысалы: Азамат ағаның суретін Алматының қақ ортасына іліп қойып 1000 адам көрсе, сол көрінген 1000 адамға 2$ алынса.&nbsp;CPM-нің бағасы - 2$ болады.</p>', NULL, NULL, 5, '0000-00-00'),
(17, 4, 7, 4, 'Мақсат қою', NULL, 'МҚ', NULL, 'r_7Amm2QBXo', '<p>&nbsp;</p>\r\n\r\n<p>Мақсат қою &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Сіз бұл мамандықты неге үйренгіңіз келді? Соңына дейін барсаңыз не болады? Бүгінгі тақырып нақты мақсат қою</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Бұл өте маңызды, себебі көбісі неге және не үшін үйреніп жатқанын білмей, уақытын босқа кетіреді.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Қағаз алып жазыңыз.&nbsp;<br />\r\nТаргет Снайпер курсынан не күтесіз?<br />\r\nКім болғыңыз келеді?<br />\r\nНемен айналысқыңыз келеді?<br />\r\nҚанша тапқыңыз келеді?</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Осыларды анықтап алғаннан кейін барып нақты мақсат қоясыз.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Мақсат қандай болу керек?<br />\r\nНақты<br />\r\nУақытпен шектелген<br />\r\nЖеткенде қатты қуанатындай<br />\r\nҚиялданбай, өзіңіз сенетін және қол жетімді мақсат қою керек. Кәзіргі табысыңыздан 3 есе көп қойсаңыз жақсы.&nbsp;<br />\r\nМақсатыңыз сізге ғана байланысты болу керек, біреуге қараған болса орындай алмай қалуыңыз мүмкін.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Қажетті кітаптар: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>\r\n\r\n<p>Психология влияния. Роберт Чалдини</p>\r\n\r\n<p>Спин-продажи. Нил Рэкхем</p>\r\n\r\n<p>Антихрупкость. Нассим Талеб</p>\r\n\r\n<p>Черный лебедь. Нассим Талеб</p>\r\n\r\n<p>100 хаков для интернет-маркетологов. Е. Крюкова, Д. Савельев</p>\r\n\r\n<p>Идеальный Landing Page. А. Петроченков, Е. Новиков</p>\r\n\r\n<p>Запуск. Джефф Уокер</p>\r\n\r\n<p>Взлом Маркетинга. Фил Барден</p>\r\n\r\n<p>Бизнес без MBA. Тинькофф</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Эффективтілікті арттыру үшін:</p>\r\n\r\n<p>Джедайские техники. Максим Дорофеев</p>\r\n\r\n<p>45 татуировок личности</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Өзіңді дамыту:</p>\r\n\r\n<p>Книга Героев. Владимир Тарасов</p>', NULL, NULL, 5, '0000-00-00'),
(18, 5, 7, 4, 'Facebook кіріспе, страница ашу', NULL, 'FК', NULL, 'MqX1uAVNt5A', '<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Фейсбукті жарнамаға пайдалану үшін Фейсбук аккаунт ашамыз.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Алгоритмі:<br />\r\n- Барынша телефон нөміріңізді жалғап ашқаныңыз дұрыс.&nbsp;<br />\r\n- Аватар қойып, описаниясын толтырыңыз<br />\r\n- 1-3 күн парақшаның ішін постпен толтырамыз, бірнеше ақпараттық парақшаларға қосылыңыз, 10-15 достар қосып, лайк, комментарий жазып жүріңіз 1 апта бойы.&nbsp;<br />\r\n&nbsp;Сол кезде сізде проблема болмайды.&nbsp;</p>\r\n\r\n<p><br />\r\n1 апта біткеннен кейін:<br />\r\n- Facebook-тің ішінен парақша ашамыз, оны да толтырамыз. Приглашение арқылы достар қосамыз.</p>\r\n\r\n<p><br />\r\n- Тағы екі күннен кейін Фейсбуктің ішінен ашылған парақшаға Инстаграмды жалғап, Инстаграмның өзінен &quot;продвигать&quot; &nbsp;батырмасын басып жарнама шығарамыз.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Егер сізді блокка түсірсе бұл жаман, оны ашу үшін бірнеше күн кетеді. Жеке куәлігіңіздің суретін жіберу керек болады.&nbsp;</p>\r\n\r\n<p><br />\r\nТапсырма: Фейсбук ашамыз, егер бұрыннан бар болса, жоғарыдағы инструкциямен толтырамыз. Фейсбук страница ашамыз, Инстаграмды жалғаймыз.</p>\r\n', NULL, NULL, 5, '0000-00-00'),
(19, 6, 7, 4, 'Инстаграм продвижение', NULL, 'ИП', NULL, '_bWW6ngkuTo', NULL, NULL, NULL, 5, '0000-00-00'),
(20, 7, 7, 4, 'Facebook ережелері', NULL, 'FЕ', NULL, 'bu8dCueTnnE', '<p><br />\r\n&nbsp;</p>\r\n\r\n<p>1.&nbsp;&nbsp; &nbsp;Модерация 48 сағат тексереді, көбінесе 24 сағаттың ішінде шығарады.<br />\r\nКревтив, текст, сілтеме тексеріледі.&nbsp;</p>\r\n\r\n<p><br />\r\n<a href=\"https://www.facebook.com/communitystandards/\" target=\"_blank\">https://www.facebook.com/communitystandards/</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"https://www.facebook.com/policies/ads\" target=\"_blank\">https://www.facebook.com/policies/ads</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Егер &laquo;не одобрение&raquo; болса, неге шығармағаны туралы хабарлама келеді. Сразу запрос жіберіңіз егер жарнамаңызға сенімді болсаңыз. Ал сенімсіз болсаңыз одобрение келетіндей ауыстырып қайта жіберіңіз. &nbsp;<br />\r\nБірінші-екінші бот тексереді, үшінші ретте адам тексереді.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>1.&nbsp;&nbsp; &nbsp;Картинканың бетіндегі текст 20% -дан аспауы керек.&nbsp;<br />\r\nБлоктауы мүмкін сөздер:<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Боғауыз сөздер<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Сетевой маркетинг, ақша тап, 2 күнде миллионер боласың т,б<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Мобилографиямен миллион тап деген сөзге блокка түстім<br />\r\n&bull;&nbsp;&nbsp; &nbsp;18+ контенттер</p>', NULL, NULL, 5, '0000-00-00'),
(21, 8, 7, 4, 'Биллинг', NULL, 'Б', NULL, 'pZMam8l_V9o', '<p>&nbsp;</p>\r\n\r\n<p>Ең бірінші картаңызды тіркеген кезде 100 рубль немесе 1 доллар алады да, сразу қайтарып береді.&nbsp;<br />\r\n&nbsp;</p>\r\n\r\n<p>1.&nbsp;&nbsp; &nbsp;Жаңадан ашылған жарнамалық аккаунттың бір күндік лимиті 600 рубль. 2 күннен кейін 1200 рубль болады. Көп ақша қойсаңыз да одан артық жаратпайды, просто тоқтап тұрады. &nbsp;Оның бағасын көтере алмайсыз, автоматты түрде солай жұмыс жасайды.</p>\r\n\r\n<p><br />\r\n2. Ақшаны картадан алатын суммалары:&nbsp;<br />\r\n- Лимит толған кезде. 600, 1200, 2500, 5000, 10000, 15000, 20000, 25000, 35000, Бұлар болжамдалған, автоматты түрде басқалай да алуы мүмкін. Фейсбукте жарнама жасап қанша көп ақша жұмсайсыз, соншалықты сізге сеніп сумаманы көбейте береді.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>3. Менде осындай жағдайлар көп болды. Клиенттің аккаунтынан кіріп жарнама жасайын десем, ол кісіде жаңа Фейсбук болғандықтан 1 апта бойы ақша жұмсап лимитті көбейту керек болатын.&nbsp;</p>\r\n\r\n<p><br />\r\nЛимитті қалай көбейтіп, көп ақшаға жарнама жіберуге болады<br />\r\n1. Үнемі төлеп отыру. Әрбір лимит толған кезде сіздің картадан ақша ала алмай қалса, олар саған көп ақшаға лимит беруге қорқады. Себебі лақтырып кетуің мүмкін. Сондықтан үнемі төлем картаңызда ақша тұруы керек және интернет оплата ашық болуы керек..</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>2. Сізге көп мөлшерде ақшаға жарнама жіберу үшін Фейсбуктің техникалы қолдау бөліміне жазсаңыз болады. Бірақта менде үнемі 1-2 күннен кейін барып көтерілетін. Сразу үлкен суммаға жарнама жіберу мүмкін емес.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>3. Лимит көтерілу үшін 2 немесе 3 рет сіздің картадан 600 және 1200 рубль алғаннан кейін барып көтерсеңіз болады.</p>\r\n\r\n<p>&nbsp;</p>\r\n', NULL, NULL, 5, '0000-00-00'),
(22, 9, 7, 4, 'Блокқа түспеу', NULL, 'БТ', NULL, '8xVCQVgu3Ak', '<p>&nbsp;</p>\r\n\r\n<p>Қазіргі уақытта жарнамаларға қатысты тыйымдардың 3 түрі бар.&nbsp;<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Сізді Фейк парақша деп ойланғаннан жабуы мүмкін. Сондықтан өзіңіздің түріңіз анық көрінген фото қойыңыз аваға.&nbsp;</p>\r\n\r\n<p><br />\r\n1.&nbsp;&nbsp; &nbsp;Фейсбук страница.<br />\r\nСіздің FB страницаңыз инстаграмға жалғанғандықтан сол инстаграмнан шығара алмай қаласыз. Фейсбук страница пустой болмау керек, достар қосыңыз, сөйлесіңіз, ақпараттық топтарға және жаңалықтар топтарға жазылыңыз.</p>\r\n\r\n<p><br />\r\n2.&nbsp;&nbsp; &nbsp;Рекламный аккаунтты.<br />\r\nБұл жағдайда сіз басқа Бизнес менеджерлерге тіркелген рекламалық аккаунттармен жұмыс жасай аласыз.&nbsp;</p>\r\n\r\n<p>- ФБ ережелерін бұзбаңыз<br />\r\n- Жарнаманы уақытында төлеңіз, қарызды жинамаңыз<br />\r\n- Егер сіздің жарнамаларыңыз модерациядан өтпесе, оған шағымдануды ұмытпаңыз<br />\r\n- Егер жарнамалар қайта модерацияланбаған болса, онда бұғаттау нысанын 100% өткізіп жіберілгенше өзгертіңіз, модерациядан өтіп, жарнаманы жойыңыз. Бұғатталған жарнамалар жәй тұруға болмайды.<br />\r\n- Егер басқа бір адамға жарнамалық аккаунттарға, парақшаларға және БM-ге тыйым салынса, оны жарнамалық аккаунтыңызға шақырмаңыз.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>3.&nbsp;&nbsp; &nbsp; Бизнес-менеджерді бұғаттау. Бұл жағдайда бизнес-менеджердің барлық мүмкіндіктері бұғатталады, және онымен сіз бизнес-менеджердегі жарнамалық аккаунттар, сонымен қатар аудитория, пиксел базасы барлығы бұғатталады.</p>\r\n\r\n<p><br />\r\n- ФБ ережелерін бұзбаңыз<br />\r\n- Басқа Админдерді шақыру (жалғыз емес)<br />\r\n- Бизнес менеджерді қажетті құжаттарды жіберу арқылы параметрлерде растаңыз<br />\r\n- Бизнес-менеджер ішіндегі жарнамалық аккаунттардың нарушение жасамауын қадағалаңыз.</p>', NULL, NULL, 5, '0000-00-00'),
(23, 10, 7, 4, 'Bussiness manager ашу', NULL, 'BM', NULL, 'HwAdKMdMyPY', '\r\n<p><br />\r\nСізге Фейсбуктегі жарнаманың барлық мүмкіншіліктерін пайдалану үшін, клиенттермен жұмыс жасап 5 немесе одан да көп жарнамалық аккаунттар ашу үшін Бизнес Менеджер болу керек.&nbsp;<br />\r\nСізде Бизнес Менеджер болса сіз өзіңізді үлкен компания ретінде көрсетесіз Фейсбуктің алдында.</p>', NULL, NULL, 5, '0000-00-00'),
(24, 11, 7, 4, 'Facebook біздің қызығушылықтарымызды қалай анықтайды?', NULL, 'FБ', NULL, '8k3KA0N4IIk', '<p><br />\r\n&nbsp;</p>\r\n\r\n<p>Аудиторияны таңдамас бұрын, Фейсбук біздің қызығушылықтарымызды қалай анықтайды соны білуіміз керек.&nbsp;</p>\r\n\r\n<p>Өзіңнің қызығушылықтарыңды осы сілтемеден көрсең болады, осы арқылы саған жарнама шығады.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"https://www.facebook.com/ads/preferences/?entry_product=ad_settings_screen\" target=\"_blank\">https://www.facebook.com/ads/preferences/?entry_product=ad_settings_screen</a></p>', NULL, NULL, 5, '0000-00-00'),
(25, 12, 7, 4, 'Facebook тех. поддержкасымен байланыс жасау', NULL, 'FT', NULL, 'a1NrKvCZOec', '<p><br />\r\nЕреже көп бұзбайтын болсаңызда әйтеуір бір күні Фейсбуктің техникалық қолдау бөліміне жүгінуге тура келеді. &nbsp;Техникалық сұрақтарды Фейсбуктің менеджерлеріне осы сілтемелермен қоя аласыз</p>\r\n\r\n<p><br />\r\n<a href=\"https://www.facebook.com/business/contact-us/\" target=\"_blank\">https://www.facebook.com/business/contact-us/</a><br />\r\n<br />\r\n<a href=\"https://www.facebook.com/business/clientsupport\" target=\"_blank\">https://www.facebook.com/business/clientsupport</a></p>', NULL, NULL, 5, '0000-00-00'),
(26, 13, 7, 4, 'Жарнаманың мақсаттары', NULL, 'ЖМ', NULL, 'NvKaws7xELo', '<p><br />\r\nЦельді таңдау өте маңызды, себебі сіздің қандай ЦЕЛЬ &nbsp;таңдағаныңызға байланысты Фейсбук алгоритмі жұмыс жасайтын болады.&nbsp;<br />\r\nФейсбукте жарнама жасайтын</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Цельдер:<br />\r\n1.&nbsp;&nbsp; &nbsp;Узнаваемость бренда<br />\r\nКөп адамға көрсетеді, үлкен бизнестерге арналған. Міндеті жарнаманы көрген адамның есінде қалдыру.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>2.&nbsp;&nbsp; &nbsp;Охват&nbsp;<br />\r\nМіндеті көп адамға көрсету. Аз базаға арналған. Егер базаңыз аз болса осы цельді таңдаңыз. Ретаргетті осы цельмен жасасаңыз болады.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>3.&nbsp;&nbsp; &nbsp;Трафик&nbsp;<br />\r\n90% жағдайда осыны таңдаймын:&nbsp;<br />\r\nМіндеті сіздің сайтқа, инстаграмға және ватсапқа адамдарды кіргізу.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>4.&nbsp;&nbsp; &nbsp;Вовлеченность&nbsp;<br />\r\nВообще қолданбаймын десемде болады. Бұл цельдің мақсаты инстаграмда &laquo;продвигать&raquo; батырмасын басқанмен бірдей. Лайк, комментарий, сақтап алу үшін арналған. Бізге оның қажеті жоқ. Бізге сатылым керек. Фейсбуктегі сраницаға арналған көбінесе.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>5.&nbsp;&nbsp; &nbsp;Установки приложения<br />\r\nАты айтып тұрғандай, мобильді прилоденияны жүктеп алатындарға көрсетеді.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>6.&nbsp;&nbsp; &nbsp;Просмотры видео<br />\r\nВидеоның көрілім санын көбейтуге арналған.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>7.&nbsp;&nbsp; &nbsp;Генерация лидов<br />\r\nСайт жоқ, инстаграм жоқ болса осыны қолданыңыз. Өзіңіз форма жасайсыз, &laquo;Подробнее&raquo; басқанда форма ашылып есімін және нөмірін қалдырады. Сол нөмірлерді өзіңіз жүктеп алып звондайсыз немесе ватсапта жазып сатсаңыз болады. Қымбат өнімдерді сатуға арналған.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>8.&nbsp;&nbsp; &nbsp;Сообщения<br />\r\nФейсбук мессенджерді Қазақстанда қолданатындар аз. Ватсапқа жасауға болады. Бірақ бизнес ватсап болу керек.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>9.&nbsp;&nbsp; &nbsp;Конверсия<br />\r\nПиксел арқылы жасалады. Сізге заявка қалдырғанда ғана төлейсіз. Бұл Цельді сайты барлар ғана қолдана алады.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>10.&nbsp;&nbsp; &nbsp;Продажи товаров из каталога<br />\r\nҮлкен Интернет магазиндерге арналған</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>11.&nbsp;&nbsp; &nbsp;Посещаемость точек<br />\r\nОфлайн бизнестерге арналған. Қазақстанда қолданатындар аз.</p>\r\n\r\n<p><br />\r\nҚолдануға кеңес беремін.<br />\r\nОхват - егер көп көрілім керек болса<br />\r\nТрафик &ndash; егер арзан клик керек болса<br />\r\nГенерация лидов &ndash; егер отдель продажа жақсы жұмыс жасайтын болса<br />\r\nКонверсия &ndash; егер арзан лид керек болса</p>', NULL, NULL, 5, '0000-00-00'),
(27, 14, 7, 4, 'Трафик мақсатымен жарнама жіберу', NULL, 'ТМ', NULL, 'QZWrG4yr8iw', NULL, NULL, NULL, 5, '0000-00-00'),
(28, 15, 7, 4, 'lookalike аудитория жасау', NULL, 'LА', NULL, 'w8vn1NtMo8Q', NULL, NULL, '<p>Тапсырма: Lookalike Аудитория жасап скрин жібереміз топқа</p>', 5, '0000-00-00'),
(29, 16, 7, 4, 'Өзіңнің подписчиктеріңе жарнама жасау', NULL, 'ӨП', NULL, '8S-le6hHpgk', NULL, NULL, '<p><br />\r\nТапсырма: Инстаграммен байланысқан адамдардың базасын жинап, скрин жасап чатқа жібереміз</p>', 5, '0000-00-00'),
(30, 17, 7, 4, 'Цель конверсия', NULL, 'ЦК', NULL, '8cE-6p7gJic', NULL, NULL, NULL, 5, '0000-00-00');
INSERT INTO `cours_item` (`id`, `number`, `cours_id`, `block_id`, `name`, `logo`, `logo_txt`, `txt_a`, `video_youtube`, `txt_b`, `mat`, `work`, `status_id`, `date`) VALUES
(31, 18, 7, 4, 'Жарнамаға арналған тексттер', NULL, 'ЖА', '<p style=\"text-align:start; text-indent:0px; -webkit-text-stroke-width:0px\"><span style=\"font-size:medium\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\"><span style=\"caret-color:#000000\"><span style=\"color:#000000\"><span style=\"font-style:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:normal\"><span style=\"letter-spacing:normal\"><span style=\"orphans:auto\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:auto\"><span style=\"word-spacing:0px\"><span style=\"-webkit-text-size-adjust:auto\"><span style=\"text-decoration:none\"><span style=\"background-color:white\"><span style=\"background-position:initial initial\"><span style=\"background-repeat:initial initial\"><strong><span style=\"font-size:10.5pt\"><span style=\"font-family:Helvetica\"><span style=\"color:black\">1.&nbsp;</span></span></span></strong><strong><span style=\"font-size:10.5pt\"><span style=\"font-family:Helvetica\"><span style=\"color:black\">Тексттеріңіз түсінікті және аз болсын</span></span></span></strong><strong><span style=\"font-size:10.5pt\"><span style=\"font-family:Helvetica\"><span style=\"color:black\">.&nbsp;</span></span></span></strong><strong><span style=\"font-size:10.5pt\"><span style=\"font-family:Helvetica\"><span style=\"color:black\">Кергенде сразу түсіну үшін</span></span></span></strong><strong><span style=\"font-size:10.5pt\"><span style=\"font-family:Helvetica\"><span style=\"color:black\">:</span></span></span></strong></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:start; text-indent:0px; -webkit-text-stroke-width:0px\"><span style=\"font-size:medium\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\"><span style=\"caret-color:#000000\"><span style=\"color:#000000\"><span style=\"font-style:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:normal\"><span style=\"letter-spacing:normal\"><span style=\"orphans:auto\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:auto\"><span style=\"word-spacing:0px\"><span style=\"-webkit-text-size-adjust:auto\"><span style=\"text-decoration:none\"><span style=\"background-color:white\"><span style=\"background-position:initial initial\"><span style=\"background-repeat:initial initial\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Helvetica\"><span style=\"color:black\">Бұл не</span></span></span><span style=\"font-size:10.5pt\"><span style=\"font-family:Helvetica\"><span style=\"color:black\">?&nbsp;</span></span></span><br />\r\n<span style=\"font-size:10.5pt\"><span style=\"font-family:Helvetica\"><span style=\"color:black\">Не үшін керек</span></span></span><span style=\"font-size:10.5pt\"><span style=\"font-family:Helvetica\"><span style=\"color:black\">?</span></span></span><br />\r\n<span style=\"font-size:10.5pt\"><span style=\"font-family:Helvetica\"><span style=\"color:black\">Қандай проблеманы шешеді</span></span></span><span style=\"font-size:10.5pt\"><span style=\"font-family:Helvetica\"><span style=\"color:black\">?&nbsp;</span></span></span><br />\r\n<span style=\"font-size:10.5pt\"><span style=\"font-family:Helvetica\"><span style=\"color:black\">Пайдасы қандай</span></span></span><span style=\"font-size:10.5pt\"><span style=\"font-family:Helvetica\"><span style=\"color:black\">&nbsp;?</span></span></span><br />\r\n<span style=\"font-size:10.5pt\"><span style=\"font-family:Helvetica\"><span style=\"color:black\">Келесі қадамға өту үшін не істеу керек</span></span></span><span style=\"font-size:10.5pt\"><span style=\"font-family:Helvetica\"><span style=\"color:black\">?&nbsp;</span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:start; text-indent:0px; -webkit-text-stroke-width:0px; margin-bottom:11px\"><br />\r\n<span style=\"font-size:medium\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\"><span style=\"caret-color:#000000\"><span style=\"color:#000000\"><span style=\"font-style:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:normal\"><span style=\"letter-spacing:normal\"><span style=\"orphans:auto\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:auto\"><span style=\"word-spacing:0px\"><span style=\"-webkit-text-size-adjust:auto\"><span style=\"text-decoration:none\"><span style=\"background-color:white\"><span style=\"background-position:initial initial\"><span style=\"background-repeat:initial initial\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Helvetica\"><span style=\"color:black\"><strong><span style=\"font-family:Helvetica\">2.&nbsp;</span></strong></span></span></span><strong><span style=\"font-size:10.5pt\"><span style=\"font-family:Helvetica\"><span style=\"color:black\">Нақты артықшылығыңызды жазыңыз</span></span></span></strong><strong><span style=\"font-size:10.5pt\"><span style=\"font-family:Helvetica\"><span style=\"color:black\">.&nbsp;</span></span></span></strong><strong><span style=\"font-size:10.5pt\"><span style=\"font-family:Helvetica\"><span style=\"color:black\">Өзіңіз туралы қысқа және мүмкіндігінше пайдалы жағын жеткізіңіз:</span></span></span></strong></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span><br />\r\n<span style=\"font-size:medium\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\"><span style=\"caret-color:#000000\"><span style=\"color:#000000\"><span style=\"font-style:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:normal\"><span style=\"letter-spacing:normal\"><span style=\"orphans:auto\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:auto\"><span style=\"word-spacing:0px\"><span style=\"-webkit-text-size-adjust:auto\"><span style=\"text-decoration:none\"><span style=\"background-color:white\"><span style=\"background-position:initial initial\"><span style=\"background-repeat:initial initial\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Helvetica\"><span style=\"color:black\">Қыздар киімі&nbsp;</span></span></span><span style=\"font-size:10.5pt\"><span style=\"font-family:Helvetica\"><span style=\"color:black\">интернет-</span></span></span><span style=\"font-size:10.5pt\"><span style=\"font-family:Helvetica\"><span style=\"color:black\">дүкені</span></span></span><span style=\"font-size:10.5pt\"><span style=\"font-family:Helvetica\"><span style=\"color:black\">.&nbsp;</span></span></span><span style=\"font-size:10.5pt\"><span style=\"font-family:Helvetica\"><span style=\"color:black\">Қазақстан бойынша 3 күнде жеткізу.</span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span><br />\r\n<span style=\"font-size:11pt\"><span style=\"font-family:Calibri, sans-serif\"><span style=\"line-height:15.693333625793457px\"><span style=\"caret-color:#000000\"><span style=\"color:#000000\"><span style=\"font-style:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:normal\"><span style=\"letter-spacing:normal\"><span style=\"orphans:auto\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:auto\"><span style=\"word-spacing:0px\"><span style=\"-webkit-text-size-adjust:auto\"><span style=\"text-decoration:none\">1000-нан&nbsp;астам&nbsp;ассортимент, 10 000-нан астам&nbsp;тұрақты тұтынушы. Direct немесе WhatsApp @bopay_kzжазыңыз, біз 30 минут ішінде сіздің өлшеміңізге сәйкес үлгіні таңдаймыз!</span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:start; text-indent:0px; -webkit-text-stroke-width:0px; margin-bottom:11px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri, sans-serif\"><span style=\"line-height:15.693333625793457px\"><span style=\"caret-color:#000000\"><span style=\"color:#000000\"><span style=\"font-style:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:normal\"><span style=\"letter-spacing:normal\"><span style=\"orphans:auto\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:auto\"><span style=\"word-spacing:0px\"><span style=\"-webkit-text-size-adjust:auto\"><span style=\"text-decoration:none\"><strong><span style=\"font-size:10.5pt\"><span style=\"line-height:14.979999542236328px\"><span style=\"font-family:Helvetica\"><span style=\"color:black\"><span style=\"background-color:white\"><span style=\"background-position:initial initial\"><span style=\"background-repeat:initial initial\">3.&nbsp;</span></span></span></span></span></span></span></strong><strong><span style=\"font-size:10.5pt\"><span style=\"line-height:14.979999542236328px\"><span style=\"font-family:Helvetica\"><span style=\"color:black\"><span style=\"background-color:white\"><span style=\"background-position:initial initial\"><span style=\"background-repeat:initial initial\">Тауардың, қызметіңіздің пайдасын жазыңыз.&nbsp;</span></span></span></span></span></span></span></strong><strong>&nbsp;</strong><br />\r\n<span style=\"font-size:10.5pt\"><span style=\"line-height:14.979999542236328px\"><span style=\"font-family:Helvetica\"><span style=\"color:black\"><span style=\"background-color:white\"><span style=\"background-position:initial initial\"><span style=\"background-repeat:initial initial\">Тауардың сапасы неден жасалғанын емес нақты клиентке қандай пайдасы тиеді соны жазыңыз.&nbsp;</span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:start; text-indent:0px; -webkit-text-stroke-width:0px; margin-bottom:11px\"><span style=\"font-size:medium\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\"><span style=\"caret-color:#000000\"><span style=\"color:#000000\"><span style=\"font-style:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:normal\"><span style=\"letter-spacing:normal\"><span style=\"orphans:auto\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:auto\"><span style=\"word-spacing:0px\"><span style=\"-webkit-text-size-adjust:auto\"><span style=\"text-decoration:none\"><span style=\"background-color:white\"><span style=\"background-position:initial initial\"><span style=\"background-repeat:initial initial\"><strong><span style=\"font-size:10.5pt\"><span style=\"font-family:Helvetica\"><span style=\"color:black\">4. Аудиторияңызбен байланыс орнатыңыз.&nbsp;</span></span></span></strong></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span><br />\r\n<span style=\"font-size:medium\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\"><span style=\"caret-color:#000000\"><span style=\"color:#000000\"><span style=\"font-style:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:normal\"><span style=\"letter-spacing:normal\"><span style=\"orphans:auto\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:auto\"><span style=\"word-spacing:0px\"><span style=\"-webkit-text-size-adjust:auto\"><span style=\"text-decoration:none\"><span style=\"background-color:white\"><span style=\"background-position:initial initial\"><span style=\"background-repeat:initial initial\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Helvetica\"><span style=\"color:black\">Офиста жұмыс жасағаннан шаршадың ба? Үйде, отбасыңа көңіл бөле отырып ақша тапқың келеді ма? Алматы да тұрасыз ба? Сұлулық салоны сіздің үйдің жанында 5 минуттық жерде.</span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:start; text-indent:0px; -webkit-text-stroke-width:0px; margin-bottom:11px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri, sans-serif\"><span style=\"line-height:15.693333625793457px\"><span style=\"caret-color:#000000\"><span style=\"color:#000000\"><span style=\"font-style:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:normal\"><span style=\"letter-spacing:normal\"><span style=\"orphans:auto\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:auto\"><span style=\"word-spacing:0px\"><span style=\"-webkit-text-size-adjust:auto\"><span style=\"text-decoration:none\"><strong><span style=\"font-size:10.5pt\"><span style=\"line-height:14.979999542236328px\"><span style=\"font-family:Helvetica\"><span style=\"color:black\"><span style=\"background-color:white\"><span style=\"background-position:initial initial\"><span style=\"background-repeat:initial initial\">5. Текст&nbsp;</span></span></span></span></span></span></span></strong><strong><span style=\"font-size:10.5pt\"><span style=\"line-height:14.979999542236328px\"><span style=\"font-family:Helvetica\"><span style=\"color:black\"><span style=\"background-color:white\"><span style=\"background-position:initial initial\"><span style=\"background-repeat:initial initial\">қарапайым, оқығанға жеңіл болу керек</span></span></span></span></span></span></span></strong><strong><span style=\"font-size:10.5pt\"><span style=\"line-height:14.979999542236328px\"><span style=\"font-family:Helvetica\"><span style=\"color:black\"><span style=\"background-color:white\"><span style=\"background-position:initial initial\"><span style=\"background-repeat:initial initial\">.&nbsp;</span></span></span></span></span></span></span></strong><br />\r\n<span style=\"font-size:10.5pt\"><span style=\"line-height:14.979999542236328px\"><span style=\"font-family:Helvetica\"><span style=\"color:black\"><span style=\"background-color:white\"><span style=\"background-position:initial initial\"><span style=\"background-repeat:initial initial\">Көп адам түсінбейтін терминдер қолданбаңыз. Смайликтер, үтір, нүкте, леп белгіні орнымен қолданыңыз, топырлатпай. Бұндай тексттер адамның ойын бөледі, және көп ойландырып, соңына дейін оқығысы келмей қалады.&nbsp;</span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:start; text-indent:0px; -webkit-text-stroke-width:0px; margin-bottom:11px\"><span style=\"font-size:medium\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\"><span style=\"caret-color:#000000\"><span style=\"color:#000000\"><span style=\"font-style:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:normal\"><span style=\"letter-spacing:normal\"><span style=\"orphans:auto\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:auto\"><span style=\"word-spacing:0px\"><span style=\"-webkit-text-size-adjust:auto\"><span style=\"text-decoration:none\"><span style=\"background-color:white\"><span style=\"background-position:initial initial\"><span style=\"background-repeat:initial initial\"><strong><span style=\"font-size:10.5pt\"><span style=\"font-family:Helvetica\"><span style=\"color:black\">6. Мақсатты аудиторияңызды ойлаңыз.&nbsp;</span></span></span></strong></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span><br />\r\n<span style=\"font-size:medium\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\"><span style=\"caret-color:#000000\"><span style=\"color:#000000\"><span style=\"font-style:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:normal\"><span style=\"letter-spacing:normal\"><span style=\"orphans:auto\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:auto\"><span style=\"word-spacing:0px\"><span style=\"-webkit-text-size-adjust:auto\"><span style=\"text-decoration:none\"><span style=\"background-color:white\"><span style=\"background-position:initial initial\"><span style=\"background-repeat:initial initial\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Helvetica\"><span style=\"color:black\">Текст бірінші кезекте сіздің аудиторияңызды елең еткізу керек. Мақсатты аудиторияңыздың қандай проблемалары бар екенін зерттеңіз. Тексттің ішінде өзіңіздің осы таварды қолданғандағы, пайдасы тигендігі туралы бастан өткерген оқиғаңыз болғаны дұрыс.</span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:start; text-indent:0px; -webkit-text-stroke-width:0px\"><span style=\"font-size:medium\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\"><span style=\"caret-color:#000000\"><span style=\"color:#000000\"><span style=\"font-style:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:normal\"><span style=\"letter-spacing:normal\"><span style=\"orphans:auto\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:auto\"><span style=\"word-spacing:0px\"><span style=\"-webkit-text-size-adjust:auto\"><span style=\"text-decoration:none\"><span style=\"background-color:white\"><span style=\"background-position:initial initial\"><span style=\"background-repeat:initial initial\"><strong><span style=\"font-size:10.5pt\"><span style=\"font-family:Helvetica\"><span style=\"color:black\">7. Үнемі тексттің соңында іс әрекетке шақыру болу керек(Call to action).&nbsp;</span></span></span></strong></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:start; text-indent:0px; -webkit-text-stroke-width:0px\"><span style=\"font-size:medium\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\"><span style=\"caret-color:#000000\"><span style=\"color:#000000\"><span style=\"font-style:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:normal\"><span style=\"letter-spacing:normal\"><span style=\"orphans:auto\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:auto\"><span style=\"word-spacing:0px\"><span style=\"-webkit-text-size-adjust:auto\"><span style=\"text-decoration:none\"><span style=\"background-color:white\"><span style=\"background-position:initial initial\"><span style=\"background-repeat:initial initial\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Helvetica\"><span style=\"color:black\">Сіздің ұсынысыңызды оқыды, енді не істеу керек?</span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:start; text-indent:0px; -webkit-text-stroke-width:0px\"><span style=\"font-size:medium\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\"><span style=\"caret-color:#000000\"><span style=\"color:#000000\"><span style=\"font-style:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:normal\"><span style=\"letter-spacing:normal\"><span style=\"orphans:auto\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:auto\"><span style=\"word-spacing:0px\"><span style=\"-webkit-text-size-adjust:auto\"><span style=\"text-decoration:none\"><span style=\"background-color:white\"><span style=\"background-position:initial initial\"><span style=\"background-repeat:initial initial\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Helvetica\"><span style=\"color:black\">Подробнее бас, профильге өт, директке жаз, нөмір қалдырыңыз т,б. Іс әрекетке шақырудан қысылмаңыз, кәзіргі таңда іс әрекетке шақырмасаңыз, ары қарай не істеу керек екенін білмей ойланып қалады.</span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:start; text-indent:0px; -webkit-text-stroke-width:0px\"><span style=\"font-size:medium\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\"><span style=\"caret-color:#000000\"><span style=\"color:#000000\"><span style=\"font-style:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:normal\"><span style=\"letter-spacing:normal\"><span style=\"orphans:auto\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:auto\"><span style=\"word-spacing:0px\"><span style=\"-webkit-text-size-adjust:auto\"><span style=\"text-decoration:none\"><span style=\"background-color:white\"><span style=\"background-position:initial initial\"><span style=\"background-repeat:initial initial\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Helvetica\"><span style=\"color:black\">Соңында нақты не істеу керек екенін жазыңыз.&nbsp;</span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:start; text-indent:0px; -webkit-text-stroke-width:0px\">&nbsp;</p>\r\n\r\n<p style=\"text-align:start; text-indent:0px; -webkit-text-stroke-width:0px\"><span style=\"font-size:medium\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\"><span style=\"caret-color:#000000\"><span style=\"color:#000000\"><span style=\"font-style:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:normal\"><span style=\"letter-spacing:normal\"><span style=\"orphans:auto\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:auto\"><span style=\"word-spacing:0px\"><span style=\"-webkit-text-size-adjust:auto\"><span style=\"text-decoration:none\"><span style=\"background-color:white\"><span style=\"background-position:initial initial\"><span style=\"background-repeat:initial initial\"><strong><span style=\"font-size:10.5pt\"><span style=\"font-family:Helvetica\"><span style=\"color:black\">8</span></span></span></strong><strong><span style=\"font-size:10.5pt\"><span style=\"font-family:Helvetica\"><span style=\"color:black\">.&nbsp;</span></span></span></strong><strong><span style=\"font-size:10.5pt\"><span style=\"font-family:Helvetica\"><span style=\"color:black\">Нақты сандарды қолданыңыз, егер бар болса</span></span></span></strong><strong><span style=\"font-size:10.5pt\"><span style=\"font-family:Helvetica\"><span style=\"color:black\">.</span></span></span></strong></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:start; text-indent:0px; -webkit-text-stroke-width:0px\"><span style=\"font-size:medium\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\"><span style=\"caret-color:#000000\"><span style=\"color:#000000\"><span style=\"font-style:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:normal\"><span style=\"letter-spacing:normal\"><span style=\"orphans:auto\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:auto\"><span style=\"word-spacing:0px\"><span style=\"-webkit-text-size-adjust:auto\"><span style=\"text-decoration:none\"><span style=\"background-color:white\"><span style=\"background-position:initial initial\"><span style=\"background-repeat:initial initial\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Helvetica\"><span style=\"color:black\">Клиенттеріміз көп</span></span></span><span style=\"font-size:10.5pt\"><span style=\"font-family:Helvetica\"><span style=\"color:black\">&nbsp;&ndash;&nbsp;</span></span></span><span style=\"font-size:10.5pt\"><span style=\"font-family:Helvetica\"><span style=\"color:black\">дұрыс емес</span></span></span><span style=\"font-size:10.5pt\"><span style=\"font-family:Helvetica\"><span style=\"color:black\">.</span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:start; text-indent:0px; -webkit-text-stroke-width:0px\"><span style=\"font-size:medium\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\"><span style=\"caret-color:#000000\"><span style=\"color:#000000\"><span style=\"font-style:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:normal\"><span style=\"letter-spacing:normal\"><span style=\"orphans:auto\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:auto\"><span style=\"word-spacing:0px\"><span style=\"-webkit-text-size-adjust:auto\"><span style=\"text-decoration:none\"><span style=\"background-color:white\"><span style=\"background-position:initial initial\"><span style=\"background-repeat:initial initial\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Helvetica\"><span style=\"color:black\">200</span></span></span><span style=\"font-size:10.5pt\"><span style=\"font-family:Helvetica\"><span style=\"color:black\">-ден астам тұрақты</span></span></span><span style=\"font-size:10.5pt\"><span style=\"font-family:Helvetica\"><span style=\"color:black\">&nbsp;клиент - дұрысы.</span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:start; text-indent:0px; -webkit-text-stroke-width:0px\">&nbsp;</p>\r\n\r\n<p style=\"text-align:start; text-indent:0px; -webkit-text-stroke-width:0px\"><span style=\"font-size:medium\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\"><span style=\"caret-color:#000000\"><span style=\"color:#000000\"><span style=\"font-style:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:normal\"><span style=\"letter-spacing:normal\"><span style=\"orphans:auto\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:auto\"><span style=\"word-spacing:0px\"><span style=\"-webkit-text-size-adjust:auto\"><span style=\"text-decoration:none\"><span style=\"background-color:white\"><span style=\"background-position:initial initial\"><span style=\"background-repeat:initial initial\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Helvetica\"><span style=\"color:black\">Таргетолог мамандығын меңгеріп пайда тап -дұрыс емес.</span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:start; text-indent:0px; -webkit-text-stroke-width:0px\"><span style=\"font-size:medium\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\"><span style=\"caret-color:#000000\"><span style=\"color:#000000\"><span style=\"font-style:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:normal\"><span style=\"letter-spacing:normal\"><span style=\"orphans:auto\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:auto\"><span style=\"word-spacing:0px\"><span style=\"-webkit-text-size-adjust:auto\"><span style=\"text-decoration:none\"><span style=\"background-color:white\"><span style=\"background-position:initial initial\"><span style=\"background-repeat:initial initial\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Helvetica\"><span style=\"color:black\">30 күнде таргетолог мамандығын меңгеріп, айына 300 мың теңге табыс тап</span></span></span><span style=\"font-size:10.5pt\"><span style=\"font-family:Helvetica\"><span style=\"color:black\">&nbsp;- дұрысы.</span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:start; text-indent:0px; -webkit-text-stroke-width:0px\">&nbsp;</p>\r\n\r\n<p style=\"text-align:start; text-indent:0px; -webkit-text-stroke-width:0px\"><span style=\"font-size:medium\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\"><span style=\"caret-color:#000000\"><span style=\"color:#000000\"><span style=\"font-style:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:normal\"><span style=\"letter-spacing:normal\"><span style=\"orphans:auto\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:auto\"><span style=\"word-spacing:0px\"><span style=\"-webkit-text-size-adjust:auto\"><span style=\"text-decoration:none\"><span style=\"background-color:white\"><span style=\"background-position:initial initial\"><span style=\"background-repeat:initial initial\"><strong><span style=\"font-size:10.5pt\"><span style=\"font-family:Helvetica\"><span style=\"color:black\">Жарнамадағы тексттің структурасы</span></span></span></strong></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:start; text-indent:0px; -webkit-text-stroke-width:0px\"><span style=\"font-size:medium\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\"><span style=\"caret-color:#000000\"><span style=\"color:#000000\"><span style=\"font-style:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:normal\"><span style=\"letter-spacing:normal\"><span style=\"orphans:auto\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:auto\"><span style=\"word-spacing:0px\"><span style=\"-webkit-text-size-adjust:auto\"><span style=\"text-decoration:none\"><span style=\"background-color:white\"><span style=\"background-position:initial initial\"><span style=\"background-repeat:initial initial\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Helvetica\"><span style=\"color:black\">Тақырыбы айқайлап тұру керек. Оффер қолдансаңыз да болады.&nbsp;</span></span></span><span style=\"font-size:10.5pt\"><span style=\"font-family:Helvetica\"><span style=\"color:black\">Тест</span></span></span><span style=\"font-size:10.5pt\"><span style=\"font-family:Helvetica\"><span style=\"color:black\">тің қалғанын оқу үшін Тақырыбы адамды тарту маңызды.&nbsp;</span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:start; text-indent:0px; -webkit-text-stroke-width:0px\">&nbsp;</p>\r\n\r\n<p style=\"text-align:start; text-indent:0px; -webkit-text-stroke-width:0px\"><span style=\"font-size:medium\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\"><span style=\"caret-color:#000000\"><span style=\"color:#000000\"><span style=\"font-style:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:normal\"><span style=\"letter-spacing:normal\"><span style=\"orphans:auto\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:auto\"><span style=\"word-spacing:0px\"><span style=\"-webkit-text-size-adjust:auto\"><span style=\"text-decoration:none\"><span style=\"background-color:white\"><span style=\"background-position:initial initial\"><span style=\"background-repeat:initial initial\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Helvetica\"><span style=\"color:black\">Ортасы</span></span></span><span style=\"font-size:10.5pt\"><span style=\"font-family:Helvetica\"><span style=\"color:black\">.&nbsp;</span></span></span><span style=\"font-size:10.5pt\"><span style=\"font-family:Helvetica\"><span style=\"color:black\">Тауардың, қызметіңіз туралы нақты ақпарат. Қызығушылығын тудыру.Егер ұзақ бірақ қызықты етіп жазатын копирайтер болсаңыз жазыңыз.&nbsp;</span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:start; text-indent:0px; -webkit-text-stroke-width:0px\">&nbsp;</p>\r\n\r\n<p style=\"text-align:start; text-indent:0px; -webkit-text-stroke-width:0px\"><span style=\"font-size:medium\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\"><span style=\"caret-color:#000000\"><span style=\"color:#000000\"><span style=\"font-style:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:normal\"><span style=\"letter-spacing:normal\"><span style=\"orphans:auto\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:auto\"><span style=\"word-spacing:0px\"><span style=\"-webkit-text-size-adjust:auto\"><span style=\"text-decoration:none\"><span style=\"background-color:white\"><span style=\"background-position:initial initial\"><span style=\"background-repeat:initial initial\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Helvetica\"><span style=\"color:black\">Соңы</span></span></span>&nbsp;<span style=\"font-size:10.5pt\"><span style=\"font-family:Helvetica\"><span style=\"color:black\">&ndash;&nbsp;</span></span></span><span style=\"font-size:10.5pt\"><span style=\"font-family:Helvetica\"><span style=\"color:black\">іс әрекетке шақыру</span></span></span><span style=\"font-size:10.5pt\"><span style=\"font-family:Helvetica\"><span style=\"color:black\">.&nbsp;</span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:start; text-indent:0px; -webkit-text-stroke-width:0px\">&nbsp;</p>\r\n\r\n<p style=\"text-align:start; text-indent:0px; -webkit-text-stroke-width:0px\"><span style=\"font-size:medium\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\"><span style=\"caret-color:#000000\"><span style=\"color:#000000\"><span style=\"font-style:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:normal\"><span style=\"letter-spacing:normal\"><span style=\"orphans:auto\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:auto\"><span style=\"word-spacing:0px\"><span style=\"-webkit-text-size-adjust:auto\"><span style=\"text-decoration:none\"><span style=\"background-color:white\"><span style=\"background-position:initial initial\"><span style=\"background-repeat:initial initial\"><strong><span style=\"font-size:10.5pt\"><span style=\"font-family:Helvetica\"><span style=\"color:black\">4U Техникасы</span></span></span></strong></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:start; text-indent:0px; -webkit-text-stroke-width:0px\"><span style=\"font-size:medium\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\"><span style=\"caret-color:#000000\"><span style=\"color:#000000\"><span style=\"font-style:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:normal\"><span style=\"letter-spacing:normal\"><span style=\"orphans:auto\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:auto\"><span style=\"word-spacing:0px\"><span style=\"-webkit-text-size-adjust:auto\"><span style=\"text-decoration:none\"><span style=\"background-color:white\"><span style=\"background-position:initial initial\"><span style=\"background-repeat:initial initial\"><b><span segoe=\"\" style=\"font-family:\" ui=\"\"><span style=\"color:#222222\"><span style=\"background-color:white\"><span style=\"background-position:initial initial\"><span style=\"background-repeat:initial initial\">Пайдасы (Usefulness)</span></span></span></span></span></b></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:start; text-indent:0px; -webkit-text-stroke-width:0px\"><span style=\"font-size:medium\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\"><span style=\"caret-color:#000000\"><span style=\"color:#000000\"><span style=\"font-style:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:normal\"><span style=\"letter-spacing:normal\"><span style=\"orphans:auto\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:auto\"><span style=\"word-spacing:0px\"><span style=\"-webkit-text-size-adjust:auto\"><span style=\"text-decoration:none\"><span style=\"background-color:white\"><span style=\"background-position:initial initial\"><span style=\"background-repeat:initial initial\"><b><span segoe=\"\" style=\"font-family:\" ui=\"\"><span style=\"color:#222222\"><span style=\"background-color:white\"><span style=\"background-position:initial initial\"><span style=\"background-repeat:initial initial\">Ерекшелігі (Uniqueness)</span></span></span></span></span></b></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:start; text-indent:0px; -webkit-text-stroke-width:0px\"><span style=\"font-size:medium\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\"><span style=\"caret-color:#000000\"><span style=\"color:#000000\"><span style=\"font-style:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:normal\"><span style=\"letter-spacing:normal\"><span style=\"orphans:auto\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:auto\"><span style=\"word-spacing:0px\"><span style=\"-webkit-text-size-adjust:auto\"><span style=\"text-decoration:none\"><span style=\"background-color:white\"><span style=\"background-position:initial initial\"><span style=\"background-repeat:initial initial\"><b><span segoe=\"\" style=\"font-family:\" ui=\"\"><span style=\"color:#222222\"><span style=\"background-color:white\"><span style=\"background-position:initial initial\"><span style=\"background-repeat:initial initial\">Ультра ерекшелігі (Ultraspecificity)</span></span></span></span></span></b></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:start; text-indent:0px; -webkit-text-stroke-width:0px\"><span style=\"font-size:medium\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\"><span style=\"caret-color:#000000\"><span style=\"color:#000000\"><span style=\"font-style:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:normal\"><span style=\"letter-spacing:normal\"><span style=\"orphans:auto\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:auto\"><span style=\"word-spacing:0px\"><span style=\"-webkit-text-size-adjust:auto\"><span style=\"text-decoration:none\"><span style=\"background-color:white\"><span style=\"background-position:initial initial\"><span style=\"background-repeat:initial initial\"><b><span segoe=\"\" style=\"font-family:\" ui=\"\"><span style=\"color:#222222\"><span style=\"background-color:white\"><span style=\"background-position:initial initial\"><span style=\"background-repeat:initial initial\">Жылдамдық (срочность)</span></span></span></span></span></b><b><span segoe=\"\" style=\"font-family:\" ui=\"\"><span style=\"color:#222222\"><span style=\"background-color:white\"><span style=\"background-position:initial initial\"><span style=\"background-repeat:initial initial\">&nbsp;(Urgency)</span></span></span></span></span></b></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:start; text-indent:0px; -webkit-text-stroke-width:0px\">&nbsp;</p>\r\n\r\n<p style=\"text-align:start; text-indent:0px; -webkit-text-stroke-width:0px\"><span style=\"font-size:medium\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\"><span style=\"caret-color:#000000\"><span style=\"color:#000000\"><span style=\"font-style:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:normal\"><span style=\"letter-spacing:normal\"><span style=\"orphans:auto\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:auto\"><span style=\"word-spacing:0px\"><span style=\"-webkit-text-size-adjust:auto\"><span style=\"text-decoration:none\"><span style=\"background-color:white\"><span style=\"background-position:initial initial\"><span style=\"background-repeat:initial initial\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Helvetica\"><span style=\"color:black\">-&nbsp;</span></span></span><span style=\"font-size:10.5pt\"><span style=\"font-family:Helvetica\"><span style=\"color:black\">Назар аударту</span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:start; text-indent:0px; -webkit-text-stroke-width:0px\"><span style=\"font-size:medium\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\"><span style=\"caret-color:#000000\"><span style=\"color:#000000\"><span style=\"font-style:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:normal\"><span style=\"letter-spacing:normal\"><span style=\"orphans:auto\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:auto\"><span style=\"word-spacing:0px\"><span style=\"-webkit-text-size-adjust:auto\"><span style=\"text-decoration:none\"><span style=\"background-color:white\"><span style=\"background-position:initial initial\"><span style=\"background-repeat:initial initial\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Helvetica\"><span style=\"color:black\">-&nbsp;</span></span></span><span style=\"font-size:10.5pt\"><span style=\"font-family:Helvetica\"><span style=\"color:black\">Қызығушылығын ояту</span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:start; text-indent:0px; -webkit-text-stroke-width:0px\"><span style=\"font-size:medium\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\"><span style=\"caret-color:#000000\"><span style=\"color:#000000\"><span style=\"font-style:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:normal\"><span style=\"letter-spacing:normal\"><span style=\"orphans:auto\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:auto\"><span style=\"word-spacing:0px\"><span style=\"-webkit-text-size-adjust:auto\"><span style=\"text-decoration:none\"><span style=\"background-color:white\"><span style=\"background-position:initial initial\"><span style=\"background-repeat:initial initial\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Helvetica\"><span style=\"color:black\">-&nbsp;</span></span></span><span style=\"font-size:10.5pt\"><span style=\"font-family:Helvetica\"><span style=\"color:black\">Сатып алуға желаниесін ашу</span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:start; text-indent:0px; -webkit-text-stroke-width:0px\"><span style=\"font-size:medium\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\"><span style=\"caret-color:#000000\"><span style=\"color:#000000\"><span style=\"font-style:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:normal\"><span style=\"letter-spacing:normal\"><span style=\"orphans:auto\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:auto\"><span style=\"word-spacing:0px\"><span style=\"-webkit-text-size-adjust:auto\"><span style=\"text-decoration:none\"><span style=\"background-color:white\"><span style=\"background-position:initial initial\"><span style=\"background-repeat:initial initial\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Helvetica\"><span style=\"color:black\">-&nbsp;</span></span></span><span style=\"font-size:10.5pt\"><span style=\"font-family:Helvetica\"><span style=\"color:black\">Іс-әрекетке шақыру</span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:start; text-indent:0px; -webkit-text-stroke-width:0px; margin-bottom:11px\">&nbsp;</p>\r\n', NULL, NULL, NULL, NULL, 5, '0000-00-00'),
(32, 19, 7, 4, 'Оффер жазу техникасы', NULL, 'ОЖ', NULL, '2J1l_wJ2UxQ', NULL, NULL, NULL, 5, '0000-00-00');
INSERT INTO `cours_item` (`id`, `number`, `cours_id`, `block_id`, `name`, `logo`, `logo_txt`, `txt_a`, `video_youtube`, `txt_b`, `mat`, `work`, `status_id`, `date`) VALUES
(33, 20, 7, 4, 'Таргетке арналған визуалдар', NULL, 'ТА\r\n', '<p style=\"text-align:start; text-indent:0px; -webkit-text-stroke-width:0px; margin-bottom:11px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri, sans-serif\"><span style=\"line-height:15.693333625793457px\"><span style=\"caret-color:#000000\"><span style=\"color:#000000\"><span style=\"font-style:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:normal\"><span style=\"letter-spacing:normal\"><span style=\"orphans:auto\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:auto\"><span style=\"word-spacing:0px\"><span style=\"-webkit-text-size-adjust:auto\"><span style=\"text-decoration:none\"><b>Креативпен жұмыс жасау ережелері</b></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:start; text-indent:0px; -webkit-text-stroke-width:0px; margin-bottom:11px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri, sans-serif\"><span style=\"line-height:15.693333625793457px\"><span style=\"caret-color:#000000\"><span style=\"color:#000000\"><span style=\"font-style:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:normal\"><span style=\"letter-spacing:normal\"><span style=\"orphans:auto\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:auto\"><span style=\"word-spacing:0px\"><span style=\"-webkit-text-size-adjust:auto\"><span style=\"text-decoration:none\">Таргетингтің жақсы өтетініне қатты әсер ететін фото немесе видеолар.&nbsp;</span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<ol>\r\n	<li style=\"margin-left:8px\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:Calibri,sans-serif\">Баннердің түсі де өте маңызды. Егер баннер темный болса, текстіңіз ашық болу керек. Баннеріңіз ашық болса, текстіңіз темный болу керек.&nbsp;</span></span></span></li>\r\n	<li style=\"margin-left:8px\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:Calibri,sans-serif\">Видео-формат. Supa-да шаблондарды қолданып жасасаңыз оңайырақ. Егер қолыңыз қатып қалған, видео жасауға икемім жоқ десеңізде осы шаблондарды қолданып жасасаңыз болады. Ал ол да болмаса дизайнер жалдайсыз.&nbsp;</span></span></span></li>\r\n	<li style=\"margin-left:8px\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:Calibri,sans-serif\">Видео жарнамалар кәзіргі таңда жақсы жұмыс жасайды, адамдарға видео жақсы әсер етеді. Сондықтан видео қолдануға кеңес беремін.&nbsp;</span></span></span></li>\r\n	<li style=\"margin-left:8px\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:Calibri,sans-serif\">Жоғары көтер, сілтемені бас деген срелкалар қолданған дұрыс, клик санының өсуіне көмектеседі.&nbsp;</span></span></span></li>\r\n	<li style=\"margin-left:8px\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:Calibri,sans-serif\">Текст пен сурет бір біріне үйлесімді болу керек. Егер жарнамаңыз аналарға арналған болса Картинка да, текстте аналарды елең еткізетін болу керек.&nbsp;</span></span></span><br />\r\n	<span style=\"font-size:11pt\"><span style=\"font-family:Calibri, sans-serif\"><span style=\"line-height:15.693333625793457px\"><span style=\"caret-color:#000000\"><span style=\"color:#000000\"><span style=\"font-style:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:normal\"><span style=\"letter-spacing:normal\"><span style=\"orphans:auto\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:auto\"><span style=\"word-spacing:0px\"><span style=\"-webkit-text-size-adjust:auto\"><span style=\"text-decoration:none\">Сіздің мақсатты аудиторияңыз картинкадан өзін және өзінің қажеттілігін көріп, астындағы текстте толық не істеу керек екенін түсіну керек.&nbsp;&nbsp;Сондықтан баннер мен текст бір бірімен байланысты болғаны өте маңызды.&nbsp;</span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></li>\r\n	<li style=\"margin-bottom:11px; margin-left:8px\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:Calibri,sans-serif\">Картинка назар аудартатын, ерекше болуы керек.&nbsp;</span></span></span></li>\r\n</ol>\r\n\r\n<p style=\"text-align:start; text-indent:0px; -webkit-text-stroke-width:0px; margin-bottom:11px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri, sans-serif\"><span style=\"line-height:15.693333625793457px\"><span style=\"caret-color:#000000\"><span style=\"color:#000000\"><span style=\"font-style:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:normal\"><span style=\"letter-spacing:normal\"><span style=\"orphans:auto\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:auto\"><span style=\"word-spacing:0px\"><span style=\"-webkit-text-size-adjust:auto\"><span style=\"text-decoration:none\"><b>Мына қателерді жібермеңіздер</b></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:start; text-indent:0px; -webkit-text-stroke-width:0px\"><span style=\"font-size:medium\"><span style=\"font-family:\"><span style=\"caret-color:#000000\"><span style=\"color:#000000\"><span style=\"font-style:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:normal\"><span style=\"letter-spacing:normal\"><span style=\"orphans:auto\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:auto\"><span style=\"word-spacing:0px\"><span style=\"-webkit-text-size-adjust:auto\"><span style=\"text-decoration:none\"><span style=\"background-color:white\"><span style=\"background-position:initial initial\"><span style=\"background-repeat:initial initial\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Helvetica\"><span style=\"color:black\">-&nbsp;</span></span></span><span style=\"font-size:10.5pt\"><span style=\"font-family:Helvetica\"><span style=\"color:black\">Картинкада көп текст</span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:start; text-indent:0px; -webkit-text-stroke-width:0px\"><span style=\"font-size:medium\"><span style=\"font-family:\"><span style=\"caret-color:#000000\"><span style=\"color:#000000\"><span style=\"font-style:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:normal\"><span style=\"letter-spacing:normal\"><span style=\"orphans:auto\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:auto\"><span style=\"word-spacing:0px\"><span style=\"-webkit-text-size-adjust:auto\"><span style=\"text-decoration:none\"><span style=\"background-color:white\"><span style=\"background-position:initial initial\"><span style=\"background-repeat:initial initial\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Helvetica\"><span style=\"color:black\">-&nbsp;</span></span></span><span style=\"font-size:10.5pt\"><span style=\"font-family:Helvetica\"><span style=\"color:black\">Оқуға ауыр етіп дизайн жасау</span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:start; text-indent:0px; -webkit-text-stroke-width:0px\"><span style=\"font-size:medium\"><span style=\"font-family:\"><span style=\"caret-color:#000000\"><span style=\"color:#000000\"><span style=\"font-style:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:normal\"><span style=\"letter-spacing:normal\"><span style=\"orphans:auto\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:auto\"><span style=\"word-spacing:0px\"><span style=\"-webkit-text-size-adjust:auto\"><span style=\"text-decoration:none\"><span style=\"background-color:white\"><span style=\"background-position:initial initial\"><span style=\"background-repeat:initial initial\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Helvetica\"><span style=\"color:black\">-&nbsp;</span></span></span><span style=\"font-size:10.5pt\"><span style=\"font-family:Helvetica\"><span style=\"color:black\">Картинканың качествосы нашар&nbsp;</span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:start; text-indent:0px; -webkit-text-stroke-width:0px\"><span style=\"font-size:medium\"><span style=\"font-family:\"><span style=\"caret-color:#000000\"><span style=\"color:#000000\"><span style=\"font-style:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:normal\"><span style=\"letter-spacing:normal\"><span style=\"orphans:auto\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:auto\"><span style=\"word-spacing:0px\"><span style=\"-webkit-text-size-adjust:auto\"><span style=\"text-decoration:none\"><span style=\"background-color:white\"><span style=\"background-position:initial initial\"><span style=\"background-repeat:initial initial\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Helvetica\"><span style=\"color:black\">-&nbsp;</span></span></span><span style=\"font-size:10.5pt\"><span style=\"font-family:Helvetica\"><span style=\"color:black\">Өте ашық, немесе өте қанық картинка</span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:start; text-indent:0px; -webkit-text-stroke-width:0px\"><span style=\"font-size:medium\"><span style=\"font-family:\"><span style=\"caret-color:#000000\"><span style=\"color:#000000\"><span style=\"font-style:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:normal\"><span style=\"letter-spacing:normal\"><span style=\"orphans:auto\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:auto\"><span style=\"word-spacing:0px\"><span style=\"-webkit-text-size-adjust:auto\"><span style=\"text-decoration:none\"><span style=\"background-color:white\"><span style=\"background-position:initial initial\"><span style=\"background-repeat:initial initial\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Helvetica\"><span style=\"color:black\">- Интернеттегі сапасыз фотоларды қолдану</span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:start; text-indent:0px; -webkit-text-stroke-width:0px\"><span style=\"font-size:medium\"><span style=\"font-family:\"><span style=\"caret-color:#000000\"><span style=\"color:#000000\"><span style=\"font-style:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:normal\"><span style=\"letter-spacing:normal\"><span style=\"orphans:auto\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:auto\"><span style=\"word-spacing:0px\"><span style=\"-webkit-text-size-adjust:auto\"><span style=\"text-decoration:none\"><span style=\"background-color:white\"><span style=\"background-position:initial initial\"><span style=\"background-repeat:initial initial\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Helvetica\"><span style=\"color:black\">- Бір біріне үйлеспейтін түстерді қолдану</span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:start; text-indent:0px; -webkit-text-stroke-width:0px\"><span style=\"font-size:medium\"><span style=\"font-family:\"><span style=\"caret-color:#000000\"><span style=\"color:#000000\"><span style=\"font-style:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:normal\"><span style=\"letter-spacing:normal\"><span style=\"orphans:auto\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:auto\"><span style=\"word-spacing:0px\"><span style=\"-webkit-text-size-adjust:auto\"><span style=\"text-decoration:none\"><span style=\"background-color:white\"><span style=\"background-position:initial initial\"><span style=\"background-repeat:initial initial\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Helvetica\"><span style=\"color:black\">- Картинка ұзақ компанияның атын жазып қою.</span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:start; text-indent:0px; -webkit-text-stroke-width:0px\"><span style=\"font-size:medium\"><span style=\"font-family:\"><span style=\"caret-color:#000000\"><span style=\"color:#000000\"><span style=\"font-style:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:normal\"><span style=\"letter-spacing:normal\"><span style=\"orphans:auto\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:auto\"><span style=\"word-spacing:0px\"><span style=\"-webkit-text-size-adjust:auto\"><span style=\"text-decoration:none\"><span style=\"background-color:white\"><span style=\"background-position:initial initial\"><span style=\"background-repeat:initial initial\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Helvetica\"><span style=\"color:black\">- Баннерде сайтты көрсету</span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:start; text-indent:0px; -webkit-text-stroke-width:0px\"><span style=\"font-size:medium\"><span style=\"font-family:\"><span style=\"caret-color:#000000\"><span style=\"color:#000000\"><span style=\"font-style:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:normal\"><span style=\"letter-spacing:normal\"><span style=\"orphans:auto\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:auto\"><span style=\"word-spacing:0px\"><span style=\"-webkit-text-size-adjust:auto\"><span style=\"text-decoration:none\"><span style=\"background-color:white\"><span style=\"background-position:initial initial\"><span style=\"background-repeat:initial initial\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Helvetica\"><span style=\"color:black\">- Оффер жазбау</span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:start; text-indent:0px; -webkit-text-stroke-width:0px\"><span style=\"font-size:medium\"><span style=\"font-family:\"><span style=\"caret-color:#000000\"><span style=\"color:#000000\"><span style=\"font-style:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:normal\"><span style=\"letter-spacing:normal\"><span style=\"orphans:auto\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:auto\"><span style=\"word-spacing:0px\"><span style=\"-webkit-text-size-adjust:auto\"><span style=\"text-decoration:none\"><span style=\"background-color:white\"><span style=\"background-position:initial initial\"><span style=\"background-repeat:initial initial\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Helvetica\"><span style=\"color:black\">- Музыкасы жоқ видео</span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:start; text-indent:0px; -webkit-text-stroke-width:0px\"><span style=\"font-size:medium\"><span style=\"font-family:\"><span style=\"caret-color:#000000\"><span style=\"color:#000000\"><span style=\"font-style:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:normal\"><span style=\"letter-spacing:normal\"><span style=\"orphans:auto\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:auto\"><span style=\"word-spacing:0px\"><span style=\"-webkit-text-size-adjust:auto\"><span style=\"text-decoration:none\"><span style=\"background-color:white\"><span style=\"background-position:initial initial\"><span style=\"background-repeat:initial initial\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Helvetica\"><span style=\"color:black\">- іс әрекетке шақыру жоқ соңында</span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:start; text-indent:0px; -webkit-text-stroke-width:0px\"><span style=\"font-size:medium\"><span style=\"font-family:\"><span style=\"caret-color:#000000\"><span style=\"color:#000000\"><span style=\"font-style:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:normal\"><span style=\"letter-spacing:normal\"><span style=\"orphans:auto\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:auto\"><span style=\"word-spacing:0px\"><span style=\"-webkit-text-size-adjust:auto\"><span style=\"text-decoration:none\"><span style=\"background-color:white\"><span style=\"background-position:initial initial\"><span style=\"background-repeat:initial initial\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Helvetica\"><span style=\"color:black\">- Қымбат өнім, арзан креатив</span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:start; text-indent:0px; -webkit-text-stroke-width:0px\"><span style=\"font-size:medium\"><span style=\"font-family:\"><span style=\"caret-color:#000000\"><span style=\"color:#000000\"><span style=\"font-style:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:normal\"><span style=\"letter-spacing:normal\"><span style=\"orphans:auto\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:auto\"><span style=\"word-spacing:0px\"><span style=\"-webkit-text-size-adjust:auto\"><span style=\"text-decoration:none\"><span style=\"background-color:white\"><span style=\"background-position:initial initial\"><span style=\"background-repeat:initial initial\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Helvetica\"><span style=\"color:black\">- Тексттері оқып үлгермейтіндей тез шығып қайта жоқ болып кетуі.&nbsp;</span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:start; text-indent:0px; -webkit-text-stroke-width:0px\"><span style=\"font-size:medium\"><span style=\"font-family:\"><span style=\"caret-color:#000000\"><span style=\"color:#000000\"><span style=\"font-style:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:normal\"><span style=\"letter-spacing:normal\"><span style=\"orphans:auto\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:auto\"><span style=\"word-spacing:0px\"><span style=\"-webkit-text-size-adjust:auto\"><span style=\"text-decoration:none\"><span style=\"background-color:white\"><span style=\"background-position:initial initial\"><span style=\"background-repeat:initial initial\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Helvetica\"><span style=\"color:black\">- Керек емес смайлик немесе элементтерді қосу</span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:start; text-indent:0px; -webkit-text-stroke-width:0px\"><span style=\"font-size:medium\"><span style=\"font-family:\"><span style=\"caret-color:#000000\"><span style=\"color:#000000\"><span style=\"font-style:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:normal\"><span style=\"letter-spacing:normal\"><span style=\"orphans:auto\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:auto\"><span style=\"word-spacing:0px\"><span style=\"-webkit-text-size-adjust:auto\"><span style=\"text-decoration:none\"><span style=\"background-color:white\"><span style=\"background-position:initial initial\"><span style=\"background-repeat:initial initial\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Helvetica\"><span style=\"color:black\">- Орфографикалық және грамматикалық қателер</span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:start; text-indent:0px; -webkit-text-stroke-width:0px\">&nbsp;</p>\r\n\r\n<p style=\"text-align:start; text-indent:0px; -webkit-text-stroke-width:0px\"><span style=\"font-size:medium\"><span style=\"font-family:\"><span style=\"caret-color:#000000\"><span style=\"color:#000000\"><span style=\"font-style:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:normal\"><span style=\"letter-spacing:normal\"><span style=\"orphans:auto\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:auto\"><span style=\"word-spacing:0px\"><span style=\"-webkit-text-size-adjust:auto\"><span style=\"text-decoration:none\"><span style=\"background-color:white\"><span style=\"background-position:initial initial\"><span style=\"background-repeat:initial initial\"><strong><span style=\"font-size:10.5pt\"><span style=\"font-family:Helvetica\"><span style=\"color:black\">Креатив қандай болуы керек.&nbsp;</span></span></span></strong></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:start; text-indent:0px; -webkit-text-stroke-width:0px\"><span style=\"font-size:medium\"><span style=\"font-family:\"><span style=\"caret-color:#000000\"><span style=\"color:#000000\"><span style=\"font-style:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:normal\"><span style=\"letter-spacing:normal\"><span style=\"orphans:auto\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:auto\"><span style=\"word-spacing:0px\"><span style=\"-webkit-text-size-adjust:auto\"><span style=\"text-decoration:none\"><span style=\"background-color:white\"><span style=\"background-position:initial initial\"><span style=\"background-repeat:initial initial\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Helvetica\"><span style=\"color:black\">- Өнімді көрсетуі</span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:start; text-indent:0px; -webkit-text-stroke-width:0px\"><span style=\"font-size:medium\"><span style=\"font-family:\"><span style=\"caret-color:#000000\"><span style=\"color:#000000\"><span style=\"font-style:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:normal\"><span style=\"letter-spacing:normal\"><span style=\"orphans:auto\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:auto\"><span style=\"word-spacing:0px\"><span style=\"-webkit-text-size-adjust:auto\"><span style=\"text-decoration:none\"><span style=\"background-color:white\"><span style=\"background-position:initial initial\"><span style=\"background-repeat:initial initial\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Helvetica\"><span style=\"color:black\">- Қолданылуын көрсету</span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:start; text-indent:0px; -webkit-text-stroke-width:0px\"><span style=\"font-size:medium\"><span style=\"font-family:\"><span style=\"caret-color:#000000\"><span style=\"color:#000000\"><span style=\"font-style:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:normal\"><span style=\"letter-spacing:normal\"><span style=\"orphans:auto\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:auto\"><span style=\"word-spacing:0px\"><span style=\"-webkit-text-size-adjust:auto\"><span style=\"text-decoration:none\"><span style=\"background-color:white\"><span style=\"background-position:initial initial\"><span style=\"background-repeat:initial initial\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Helvetica\"><span style=\"color:black\">- Проблемасын айтып, шешімін беру</span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:start; text-indent:0px; -webkit-text-stroke-width:0px\"><span style=\"font-size:medium\"><span style=\"font-family:\"><span style=\"caret-color:#000000\"><span style=\"color:#000000\"><span style=\"font-style:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:normal\"><span style=\"letter-spacing:normal\"><span style=\"orphans:auto\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:auto\"><span style=\"word-spacing:0px\"><span style=\"-webkit-text-size-adjust:auto\"><span style=\"text-decoration:none\"><span style=\"background-color:white\"><span style=\"background-position:initial initial\"><span style=\"background-repeat:initial initial\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Helvetica\"><span style=\"color:black\">- Қолданған кездегі эмоцияны жеткізу</span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:start; text-indent:0px; -webkit-text-stroke-width:0px\"><span style=\"font-size:medium\"><span style=\"font-family:\"><span style=\"caret-color:#000000\"><span style=\"color:#000000\"><span style=\"font-style:normal\"><span style=\"font-variant-caps:normal\"><span style=\"font-weight:normal\"><span style=\"letter-spacing:normal\"><span style=\"orphans:auto\"><span style=\"text-transform:none\"><span style=\"white-space:normal\"><span style=\"widows:auto\"><span style=\"word-spacing:0px\"><span style=\"-webkit-text-size-adjust:auto\"><span style=\"text-decoration:none\"><span style=\"background-color:white\"><span style=\"background-position:initial initial\"><span style=\"background-repeat:initial initial\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Helvetica\"><span style=\"color:black\">-&nbsp;</span></span></span><span style=\"font-size:10.5pt\"><span style=\"font-family:Helvetica\"><span style=\"color:black\">Нәтижесін көрсету</span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:start; text-indent:0px; -webkit-text-stroke-width:0px\">&nbsp;</p>\r\n\r\n<p style=\"text-align:start; text-indent:0px; -webkit-text-stroke-width:0px\">[FILESTORAGE_DOC_5174393_Визуалы.zip]</p>\r\n\r\n<p style=\"text-align:start; text-indent:0px; -webkit-text-stroke-width:0px\">&nbsp;</p>\r\n\r\n<p style=\"text-align:start; text-indent:0px; -webkit-text-stroke-width:0px; margin-bottom:11px\">&nbsp;</p>\r\n\r\n<p style=\"text-align:start; text-indent:0px; -webkit-text-stroke-width:0px; margin-bottom:11px\">&nbsp;</p>\r\n', NULL, NULL, NULL, NULL, 5, '0000-00-00'),
(34, 21, 7, 4, 'Canva арқылы баннер жасау', NULL, 'CА', NULL, 'KaOYp4ij8-w', NULL, NULL, NULL, 5, '0000-00-00'),
(35, 22, 7, 4, 'Конкуренттердің жарнамасын зерттеу', NULL, 'КЖ', '<p><strong>Сервистер:</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><b>1.&nbsp;<a href=\"https://adlover.ru/stories_ads/\" target=\"_blank\">adlover.ru</a></b></p>\r\n\r\n<p><b>2.&nbsp;<a href=\"https://publer.pro/\" target=\"_blank\">publer.pro</a></b></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Инстаграмнан көру</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>[FILESTORAGE_IMG_5174513_02cd8289-67f4-48bc-897c-00d6d7563967.JPG]</p>\r\n\r\n<p>[FILESTORAGE_IMG_5174531_3c92a9d9-124c-4a15-a17f-e39df52298de.JPG]</p>\r\n\r\n<p>[FILESTORAGE_IMG_5174546_6d68a223-6010-4e66-97bc-8ce4e888dd51.JPG]</p>\r\n\r\n<p>[FILESTORAGE_IMG_5174552_f4111db2-9a19-4f0e-9bb0-b93a98bd3fb2.JPG]</p>\r\n\r\n<p>[FILESTORAGE_IMG_5174558_0bf0019a-1790-469d-9dfc-26452176f24c.JPG]</p>\r\n\r\n<p>[FILESTORAGE_IMG_5174576_55819725-d0bb-4152-a584-7f3f8b6bf145.JPG]</p>\r\n\r\n<p>[FILESTORAGE_IMG_5174582_d5104167-c8d8-4f18-9389-49d23979f12a.JPG]</p>\r\n\r\n<p>[FILESTORAGE_IMG_5174585_97d73e78-3ac1-48dc-8d8a-afe964c9be0a.JPG]</p>\r\n', NULL, NULL, NULL, NULL, 5, '0000-00-00'),
(36, 23, 7, 4, 'Таплинкте сайт жасау', NULL, 'ТС', NULL, 'R8qy0PDNQQk', NULL, NULL, NULL, 5, '0000-00-00'),
(37, 24, 7, 4, 'Сайтқа пиксельді орнату', NULL, 'СП', NULL, 'dkBJiSpisRA', NULL, NULL, NULL, 5, '0000-00-00'),
(38, 25, 7, 4, 'Аудиторияны сегментке бөлу', NULL, 'АС', NULL, '-0ZAO0ViYwg', NULL, '<p><br />\r\n[FILESTORAGE_DOC_5212052_Новый_портрет_ЦА.xlsx]</p>', NULL, 5, '0000-00-00'),
(39, 26, 7, 4, 'Телефонмен жарнама жасау', NULL, 'ТЖ', NULL, 'jIEvnDfD5MA', NULL, NULL, NULL, 5, '0000-00-00'),
(40, 27, 7, 4, 'Аналитика', NULL, 'А', NULL, 'xcuI2E9dDBU', NULL, NULL, NULL, 5, '0000-00-00'),
(41, 28, 7, 4, 'Клиент табу жолдары', NULL, 'КТ', NULL, 'CtxCzf-skFs', '<p>&nbsp;</p>\r\n\r\n<p>Енді осы оқуда алған білімдеріңізді іске асыратын кез келді.&nbsp;<br />\r\nАлғашқы тегін клиент табыңыздар. &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Бір емес бірнеше клиент табыңыздар. Кейс жинаңыздар.&nbsp;<br />\r\nКәзір көбісі түсінеді Таргетинг деген не екенін. Түсінбейтін кісілерге басынан бастап түсіндіріңіз асықпай.&nbsp;<br />\r\nКөп клиенттер Инстаграм парақшасының парольін бергісі келмейді. Сондықтан өткен сабақтарда айтқанымдай Инстаграм парольін алмай жасасаңыздар болады. Бизнес менеджеріне доступ алсаңыздар жеткілікті.&nbsp;<br />\r\nТәжірибе жинаңыздар. Түсінбеген жерлдеріңізді клубқа жазыңыздар.<br />\r\n&nbsp;</p>\r\n\r\n<p>Клиент іздемес бұрын өзіңіздің клиенттеріңіз кім екенін анықтап алыңыз. Қандай бизнес немесе бизнесменмен жұмыс жасағыңыз келеді, сол клиенттерді іздеңіз.&nbsp;<br />\r\nКлиенттердің түрі көп, 5000 теңге мен 500 мың теңге арасында төлей алатын. Олардың жүретін жері мен таңдайтын адамдары да әртүрлі болады. &nbsp;<br />\r\n<br />\r\n1.&nbsp;&nbsp; &nbsp;Чаттар. Бизнесмендер, инфобизнесмендер, маркетологтар, стартаперлер чаты<br />\r\n2.&nbsp;&nbsp; &nbsp;Hh.kz<br />\r\n3.&nbsp;&nbsp; &nbsp;Маркетинг агенттіктері<br />\r\n4.&nbsp;&nbsp; &nbsp;Директке жазу<br />\r\n5.&nbsp;&nbsp; &nbsp;Офлайн тренингтер<br />\r\n6.&nbsp;&nbsp; &nbsp;Мықты Таргетологтың көмекшісі болу<br />\r\n7.&nbsp;&nbsp; &nbsp;Таныстар<br />\r\n8.&nbsp;&nbsp; &nbsp;Таргет<br />\r\n9.&nbsp;&nbsp; &nbsp;Базарға бару<br />\r\n10.&nbsp;&nbsp; &nbsp;Комментарийге жазу</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Клиентпен сөйлесуге арналған <a href=\"https://docs.google.com/document/d/11DI659FweG5YMIjUxuIEXqjB28V5KVwvajONkYFsOns/edit?usp=sharing\" target=\"_blank\">БРИФ</a></p>\r\n\r\n<p><a href=\"https://docs.google.com/document/d/11DI659FweG5YMIjUxuIEXqjB28V5KVwvajONkYFsOns/edit?usp=sharing\" target=\"_blank\">https://docs.google.com/document/d/11DI659FweG5YMIjUxuIEXqjB28V5KVwvajONkYFsOns/edit?usp=sharing</a></p>', NULL, NULL, 5, '0000-00-00'),
(42, 29, 7, 4, 'Аудиторияны қысқарту(сузить)', NULL, 'АҚ', NULL, 'FnVDo2viEt8', NULL, NULL, NULL, 5, '0000-00-00'),
(43, 31, 7, 4, 'UTM метка не үшін керек?', NULL, 'UМ', NULL, 'AXq2DERvf_M', NULL, NULL, NULL, 5, '0000-00-00'),
(44, 31, 7, 4, 'Пиксельді сайтқа орнату', NULL, 'ПС', NULL, 'SHkSqZYYdL8', NULL, NULL, NULL, 5, '0000-00-00'),
(45, 32, 7, 4, 'Жарнама тексерісте ұзақ тұрса не істейміз?', NULL, 'ЖТ', NULL, 'QgQ2giEYZp8', '<p><br />\r\n<a href=\"https://www.facebook.com/help/contact/186912391909649\" target=\"_blank\">https://www.facebook.com/help/contact/186912391909649</a></p>', NULL, NULL, 5, '0000-00-00'),
(46, 33, 7, 4, '14 мың подписчик жинаған таргет', NULL, '14М', NULL, 'NaqC_4CvA1c', NULL, NULL, NULL, 5, '0000-00-00'),
(47, 34, 7, 4, 'YOUTUBE жарнамасын жасау', NULL, 'YЖ', NULL, 'R-YBkJ7mJ0w', NULL, NULL, NULL, 5, '0000-00-00'),
(48, 35, 7, 4, 'Қатарынан 3 история салу әдісі', NULL, 'Қ3', NULL, '4rD8mCrWVGk', NULL, NULL, NULL, 5, '0000-00-00'),
(49, 36, 7, 4, 'Мен кәзір таргетті қалай жасаймын', NULL, 'МК', NULL, '8ViZIndfr_Y', NULL, NULL, NULL, 5, '0000-00-00'),
(50, 37, 7, 4, 'Ретаргет жарнамасын жасау', NULL, 'ТЖ', NULL, '4qUKiqRWPNg', NULL, NULL, NULL, 5, '0000-00-00'),
(51, 38, 7, 4, 'Инстаграммен Фейсбукті жалғау', NULL, 'ИФ', NULL, 'I67-aBfuU90', '<p>Taplink маманы бол онлайн курсын сәтті аяқтағаныңыз үшін құттықтаймыз! Сертификатты алу үшін, берілген сілтеме бойынша өтіңіз:&nbsp;<a href=\"https://antitreningi.ru/student/certificate?course_id=96896&amp;id=5126\" target=\"_blank\">СЕРТИФИКАТ</a></p>', NULL, NULL, 5, '0000-00-00'),
(63, 1, 2, 12, 'Кіріспе сабақ', NULL, 'КС', NULL, 'TrzcjM59AuE', '<p>Осы сілтемеге өтіңіз:&nbsp;<a href=\"https://t.me/joinchat/DMm1lRqPG5w9PwQ0ffPz9A\" target=\"_blank\">Ортақ чат</a></p>', NULL, NULL, 5, '2020-11-07'),
(64, 2, 2, 12, 'Таргетке жіберетін өтімді моушн', NULL, 'ТЖ', NULL, 'JcmcdGHszns', NULL, NULL, NULL, 5, '2020-11-07'),
(65, 3, 2, 12, 'Таргетке жіберетін баннерлер(кретивтер)', NULL, 'ТЖ', NULL, 'kyPTaGpMGRs', NULL, NULL, NULL, 5, '2020-11-07'),
(66, 4, 2, 12, 'СММ-ге арналған визуалдар', NULL, 'СВ', NULL, '_uRlb6SmQRA', NULL, NULL, NULL, 5, '2020-11-07'),
(67, 5, 2, 12, 'Логотип', NULL, 'Л', NULL, 'uwYzDs7kCgA', NULL, NULL, NULL, 5, '2020-11-07'),
(69, 6, 2, 12, 'Чек-листке арналған дизайн', NULL, 'ЧА', NULL, 'JOgQd7sKnRY', NULL, NULL, NULL, 5, '2020-11-07'),
(70, 7, 2, 12, 'YouTube-қа арналған обложка', NULL, 'YА', NULL, 'yrwXK0swj98', NULL, NULL, NULL, 5, '2020-11-07'),
(71, 1, 9, 13, 'Ниша таңдау', NULL, '', NULL, NULL, NULL, NULL, NULL, 5, '2020-11-07'),
(122, 1, 10, 65, 'Кіріспе сабақ. СММ негіздері', NULL, '', '<h1 style=\"text-align: center;\">Құрметті студент инстаграм әлемінің құпиясын білуге қош келдіңіз</h1>\r\n\r\n<p>Қағаз бен қаламдарыңыз дайын болса, әлеуметтік желідегі маркетинг әлеміне саяхат жасайық.</p>', 'IgLMvWLeD9g', '<h3>&nbsp;</h3>\r\n\r\n<h3>Құрметті студент, кіріспе сабақты толығымен көрдіңіз деген ойдамын. Сабақтағы жалпы термин сөздерді қайталап естеріңізге сақтап жүріңіздер, келесі сабақтарда бұл терминдер өте көп қолданылатын болады.</h3>\r\n\r\n<p><strong>Social Media Marketing (SMM) &ndash;&nbsp;</strong>қызмет көрсетулер мен тауарларды әлеуметтік медиа болып саналатын әлеуметтік желілерде ұсыну, тарату, сату. Маркетологтардың жұмысының нәтижесі &ndash; тауар немесе қызмет көрсетуді сатып алуға дайын клиент. Бұл жолда маркетологтар көптеген құралдарды қолданады, мысалы Instagram. Ол толықтай SMM емес, тек оның бір бөлігі, бір құралы ғана. Олай болса, әлеуметтік желілердің ішінде ең танымалы және кең таралғаны Instagramмен алдыңғы&nbsp;видеода таныстық.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>SMM бірден WOW эффект бермейді, есесіне, көп ақша салмай-ақ, онымен дұрыс жұмыс жасасаңыз,ол ұзақмерзімді нәтиже береді. Сондай құралдардың біріне біз бұл бес&nbsp;күнді арнайтын боламыз. Ендеше Инстаграм туралы қысқыша статистикаға мән берейік.</p>\r\n\r\n<ul>\r\n	<li>Орта есеппен Instagram қолданушысы бұл желіде күніне 53 минут өткізеді;</li>\r\n	<li>Instagram желісінің қолданушылары күніне 4.3 млн пост жасайды;</li>\r\n	<li>Күніне 500 млн-ға жуық аккаунттар Instagram история салады;</li>\r\n	<li>Instagramда жарияланған фото видеоға қарағанда 36%-ға көбірек лайк жинайды;</li>\r\n	<li>Instagramда 25 млн-ға жуық бизнес профиль бар;</li>\r\n	<li>Әлемдегі 2 млн-ға жуық жарнама берушілер Instagramда;</li>\r\n	<li>Facebook компаниясы Instagram-ды 1 миллиард долларға сатып алған. Ол кезде компанияда бар болғаны 13 қызметкер еді.</li>\r\n	<li>&nbsp;</li>\r\n</ul>\r\n\r\n<p>[FILESTORAGE_IMG_4838258_28e4a30e-243e-42be-b1fc-fc3b0463316c.jpeg]</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Тапсырма:</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>1) Өз парақшаларыңызға сабақтан түсінгеніңіз туралы сторис салыңыз</strong></p>\r\n\r\n<p><strong>2) Маркетинг тақрыбын жақсы түсіну үшін келесі фильмдерді көрсеңіз болады</strong></p>\r\n\r\n<p><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</strong></p>\r\n\r\n<ul>\r\n	<li>Виктор Фогель &mdash; Король рекламы (Viktor Vogel &mdash; Commercial Man, 2001);</li>\r\n	<li>Сироп (Syrop, 2011);</li>\r\n	<li>Чего хотят женщины (What Women Want, 2000);</li>\r\n	<li>Стажер</li>\r\n</ul>\r\n\r\n<p><b>3) Маркетингке байланысты келесі кітапты оқуға кеңес беремін</b></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><b>&nbsp; &nbsp; &nbsp;&nbsp;[FILESTORAGE_DOC_3621566_№4_КНИГА--МАРКЕТИНГОВЫЕ_ВОЙНЫ.pdf]</b></p>', NULL, NULL, 5, '2020-11-07'),
(123, 2, 10, 65, 'Сататын аккаунт жасау', NULL, '', '<h2>Армысыздар бүгін инстаграмның алғашқы құпиясы,сататын аккаунт жасау туралы болады.</h2>\r\n\r\n<p>Мысалға&nbsp;сіздің оффлайн бутигіңіздің іші әдемі, тартымды, таза болып тұрса ол сіздің тікелей саудаңызға әсер етеді. Тура сол секілді инстаграм парақшаңыз әдемі, таза болса парақшаңыздағы сатылымға қатты әсер етеді</p><p>Қалам мен дәптерлеріңіз дайын болса, видеоға назар аударайық.</p>', 'K1lPCTYY0QY', '<p>&nbsp;</p>\r\n\r\n<p>[FILESTORAGE_IMG_4838327_1ed21177-4e31-4795-a7c3-78540e226b05.jpeg]</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Тапсырма:</strong></p>\r\n\r\n<ul>\r\n	<li>Никнейміңізді (логин)&nbsp;түсінікті және әдемі етіп ойластырыңыз.</li>\r\n	<li>Биографияңызды толтырыңыз. Қажет болса, бар болса ғана сілтемеңізді қосыңыз.</li>\r\n	<li>Сапалы және әдемі аватар таңдаңыз.</li>\r\n	<li>Сіз жазылған, бірақ жиі оқымайтын, посттарына лайк баспайтын, сізге пайда әкелмейтін парақшалардан шығып кетіңіз ( отписка жасаңыз). Ай сайын өзіңізге &laquo;Мен кімді оқып жүрмін?&raquo;, &laquo;Бұл парақша маған қызық па? Керек пе?&raquo; деген сұрақ қойыңыз. Жауабы &laquo;жоқ&raquo; болса, не істеу керектігін білесіз.</li>\r\n	<li>Cіз жазылған адамдар саны 100 адамнан аспасын.</li>\r\n	<li>Мәңгілік историяларыңызды тазалап, керек емесін жойып, қажетін ғана қалдырыңыз және әрбіріне атау беруді ұмытпаңыз.</li>\r\n	<li>Дәл осы сабақтан кейін, орта есеппен күніне 10&nbsp;инстагарм история салуды/түсіруді әдетке айналдырыңыз.</li>\r\n</ul>', NULL, NULL, 5, '2020-11-07'),
(124, 3, 10, 65, 'Сала таңдау техникалары', NULL, '', '<h2 style=\"text-align: center;\">Құрметті студент 3-сабағымызға қош келдіңіз!</h2>\r\n\r\n<p>&laquo;Бренд қалыптастыру қажырлы еңбекті талап ететін, бірақ қажетті құрал&raquo; дейді Дэвид Аллен Ааклер. Белгілі бір салада ойып тұрып орын алу үшін, бірінші ол қандай сала екендігін анықтау керек. Себебі, жоспар құрғанда, &laquo;не туралы жазамыз?&raquo; және &laquo;қандай аудиторияға бағытталған жұмыс жүргіземіз?&raquo; деген сұрақтарға да жауаптың қайнар-көзі дәл осы сала(ниша) таңдау болып табылады. Ендеше, бүгінгі сабағымызды сала таңдауға арнаймыз</p>', 'FQ2WHA9A-0E', '<p>[FILESTORAGE_IMG_4838363_70e1b375-e871-41b0-ba5c-9998541fd2dd.jpeg]</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Мына ИКИГАЙ техникасы бойынша өзіңізге 4 сұрақ қойыңыз</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>1) Менің қолымнан не келеді?</p>\r\n\r\n<p>2) Маған не істеген ұнайды?</p>\r\n\r\n<p>3) Қоғамға не керек?</p>\r\n\r\n<p>4) Қай қабәлет үшін маған ақша төлейді?</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Осы 4 сұраққа жауап ретінде пост жазыңыз</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Егер инфобизнеспен айналысам десеңіз сізге 2020 жылы трендте болатын салалар тізімін беремін</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"/panel/file/c74075/l1369841/f3644597/Презентация_Microsoft_Office_Pow.pptx\" target=\"_blank\">Презентация Microsoft Office PowerPoint.pptx</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Тапсырма:</strong></p>\r\n\r\n<ul>\r\n	<li>Жоғарыда көрсетілген сұрақтардың барлығына ерінбестен жауап беріңіз (ертең керек болады).</li>\r\n	<li>Сізге сай келетін ниша/сала түрін таңдаңыз.</li>\r\n</ul>', NULL, NULL, 5, '2020-11-07'),
(125, 4, 10, 65, 'Мақсатты аудиторияны анықтау', NULL, '', '<h2>Армысыздар бүгін инстаграмның екінші құпиясы, мақсатты&nbsp;аудиторияны табу&nbsp;туралы болады.</h2>\r\n\r\n<p>Төмендегі видеоны көріп шығып, міндетті түрде тапсырманы жасаңыздар</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Сәтті болсын!</p>', '1VMM5k2YLUE', '<p>&nbsp;</p>\r\n\r\n<p>Ал енді, мақсатты аудиторияңызды (клиенттеріңізді/оқырмандарыңызды) дұрыс таңдау үшін клиенттің/оқырманыңыздың аватарын келесі сұрақтарға жауап беріп отырып құрастырамыз:</p>\r\n\r\n<ul>\r\n	<li>Жасы</li>\r\n	<li>Жынысы</li>\r\n	<li>Білімі</li>\r\n	<li>Табыс мөлшері</li>\r\n	<li>Отбасылық және әлеуметтік жағдайы</li>\r\n	<li>Мамандығы,жұмыс орны, қызмет түрі</li>\r\n	<li>Мінезі</li>\r\n	<li>Құндылықтары</li>\r\n	<li>Хобби мен өмір салты</li>\r\n	<li>Қоршаған дүниеге, өмірге деген көз қарасы</li>\r\n</ul>\r\n\r\n<p>Ал егер, В2В, яғни компания мен компания болса:</p>\r\n\r\n<ul>\r\n	<li>Компанияның дәрежесі,қызмет түрі, тауар ассортименті</li>\r\n	<li>Компанияның географиясы</li>\r\n	<li>Баға саясаты</li>\r\n	<li>Брендке деген көз қарасы</li>\r\n</ul>\r\n\r\n<p>Маркетингтік әрекеттеріміздің дұрыс және біз үшін пайдалы болуы, дәл осы ниша таңдауға байланысты. Сондықтан да, бүгінгі тапсырмаларды мұқият орындаймыз.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Тапсырма:</strong></p>\r\n\r\n<ul>\r\n	<li>Жоғарыда көрсетілген сұрақтардың барлығына ерінбестен жауап беріңіз (ертең керек болады).</li>\r\n	<li>Сегментация. ЦА 3-ке бөл</li>\r\n</ul>\r\n', NULL, NULL, 5, '2020-11-07'),
(126, 5, 10, 65, 'Сату стратегиясы', NULL, '', '<h2 style=\"text-align: center;\">Құрметті студент 4-сабаққа&nbsp;қош келдіңіз</h2>\r\n\r\n<p>Достар бұл&nbsp;сабақта өнімді клиентке тықпаламай сатудың әдісін үйренесіздер.</p>', 'Uws6yasGGWA', '<p><strong>Тапсырма:</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>1) Тегін өнім жасаңыз</strong></p>\r\n\r\n<p><strong>2) Трипвайер жасаңыз (990-1990 тг аспауы қажет)</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Бұл тапсырманы міндетті түрде жасаңыз, келесі сабақта таргет жарнмасын жасайтын боламыз</p>', NULL, NULL, 5, '2020-11-07'),
(127, 6, 10, 65, 'Таргетинг жарнамасы', NULL, '', '<h2 style=\"text-align: center;\">Таргетинг &ndash; дәлдеу құралы</h2>\r\n\r\n<p>Бүгінгі сабағымыз майда-шүйде қадамдарға толы болады. Сондықтан, сабақты мұқият қарап, әрбірін дұрыс орындау керек.</p>', 'MmwpeAom86o', NULL, NULL, '<p><b>Тапсырма:</b></p>\r\n\r\n<p>1) Сабақты толық қарап шығу.<br />\r\n2) Таргетингке арналған баннер жасау (жоғарыдағы &nbsp;сервистері пайдаланып).<br />\r\n3) Өзіңіздің таңдаған нишаңызға бастапқыда аз ақшаға facebook-тан инстаграм лентаға таргетинг реклама жіберу.</p>\r\n', 5, '2020-11-07'),
(128, 7, 10, 65, 'Ретаргет жарнамасын жасау', NULL, '', '<p style=\"text-align: center;\"><span style=\"font-size:24px;\"><strong>Ретаргет - сатудың құпия қаруы</strong></span></p>', 'q7CldzEyofQ', NULL, NULL, '<p><b>Тапсырма:</b></p>\r\n\r\n<p>1) Сабақты толық қарап шығу.<br />\r\n2) Ретаргетингке арналған баннер жасау (алдынғы сабақтағы сервистері пайдаланып).<br />\r\n3) Өзіңіздің таңдаған нишаңызға бастапқыда аз ақшаға facebook-тан инстаграм лентаға ретаргетинг реклама жіберу.</p><p><b>Тапсырма:</b></p>\r\n\r\n<p>1) Сабақты толық қарап шығу.<br />\r\n2) <a href=\"https://taplink.ru/\" target=\"_blank\">Taplink.ru&nbsp;</a>&nbsp;сервисі арқылы өзіңіздің өнімге сайт жасаңыз</p>\r\n\r\n<p>3) Сайтқа міндеттә түрде пиксель қойыңыз</p>\r\n\r\n<p>4) Ретаргет жарнамасын қосыңыз</p>', 5, '2020-11-07'),
(129, 1, 13, 66, 'Ниша таңдау', NULL, '', NULL, NULL, NULL, NULL, NULL, 5, '2020-11-07'),
(130, 2, 13, 66, 'Ерекше ұсыныс жасау - УТП', NULL, '', NULL, NULL, NULL, NULL, NULL, 5, '2020-11-07'),
(131, 3, 13, 66, 'Мақсатты аудитория және клиент аватары', NULL, '', NULL, NULL, NULL, NULL, NULL, 5, '2020-11-07'),
(132, 4, 13, 66, 'Парақшаның упаковкасы', NULL, '', NULL, NULL, NULL, NULL, NULL, 5, '2020-11-07'),
(133, 5, 13, 66, 'Айдентика', NULL, '', NULL, NULL, NULL, NULL, NULL, 5, '2020-11-07'),
(134, 6, 13, 66, 'Контент план', NULL, '', NULL, NULL, NULL, NULL, NULL, 5, '2020-11-07'),
(135, 7, 13, 66, 'Контент маркетинг', NULL, '', NULL, NULL, NULL, NULL, NULL, 5, '2020-11-07'),
(136, 8, 13, 66, 'Копирайтинг', NULL, '', NULL, NULL, NULL, NULL, NULL, 5, '2020-11-07'),
(137, 9, 13, 66, 'Оффер', NULL, '', NULL, NULL, NULL, NULL, NULL, 5, '2020-11-07'),
(138, 10, 13, 66, 'Лид-магнит', NULL, '', NULL, NULL, NULL, NULL, NULL, 5, '2020-11-07'),
(139, 11, 13, 66, 'Инстаграм арқылы сату', NULL, '', NULL, NULL, NULL, NULL, NULL, 5, '2020-11-07'),
(140, 12, 13, 66, 'Блогерлер', NULL, '', NULL, NULL, NULL, NULL, NULL, 5, '2020-11-07'),
(141, 13, 13, 66, 'Таргетинг', NULL, '', NULL, NULL, NULL, NULL, NULL, 5, '2020-11-07'),
(142, 14, 13, 66, 'Сату воронкасы', NULL, '', NULL, NULL, NULL, NULL, NULL, 5, '2020-11-07'),
(143, 15, 13, 66, 'Қазақстан бойынша жеткізу түрлері', NULL, '', NULL, NULL, NULL, NULL, NULL, 5, '2020-11-07'),
(144, 1, 14, 67, 'Кіріспе', NULL, '', NULL, 'mWtrFWSQUTE', NULL, NULL, NULL, 5, '2020-11-07'),
(145, 2, 14, 67, 'Таргет 1', NULL, '', NULL, 'NaqC_4CvA1c', NULL, NULL, NULL, 5, '2020-11-07'),
(146, 3, 14, 67, 'Таргет 2', NULL, '', NULL, '04azbEkhugE', NULL, NULL, NULL, 5, '2020-11-07'),
(147, 4, 14, 67, 'Бонус сабақ - Оффер', NULL, '', NULL, '2A7XS0ZDdto', NULL, NULL, NULL, 5, '2020-11-07'),
(148, 5, 14, 67, 'Парақша упаковкасы', NULL, '', NULL, '77yJfZFzqT4', NULL, NULL, NULL, 5, '2020-11-07'),
(149, 1, 15, 68, 'НИША ТАҢДАУ', NULL, '', NULL, NULL, NULL, NULL, NULL, 5, '2020-11-07'),
(150, 2, 15, 68, 'УПАКОВКА', NULL, '', NULL, NULL, NULL, NULL, NULL, 5, '2020-11-07'),
(151, 3, 15, 68, 'ТРАФИК', NULL, '', NULL, NULL, NULL, NULL, NULL, 5, '2020-11-07'),
(152, 4, 15, 68, 'САТУ', NULL, '', NULL, NULL, NULL, NULL, NULL, 5, '2020-11-07'),
(153, 1, 17, 69, 'ИНТЕРФЕЙС', NULL, '', NULL, NULL, NULL, NULL, NULL, 5, '2020-11-07'),
(154, 2, 17, 69, 'КОНТЕНТ', NULL, '', NULL, NULL, NULL, NULL, NULL, 5, '2020-11-07'),
(155, 3, 17, 69, 'ТРАФИК', NULL, '', NULL, NULL, NULL, NULL, NULL, 5, '2020-11-07'),
(156, 4, 17, 69, 'БЛОГЕРЛЕРМЕН ЖҰМЫС', NULL, '', NULL, NULL, NULL, NULL, NULL, 5, '2020-11-07'),
(157, 5, 17, 69, 'ТАРГЕТИНГ', NULL, '', NULL, NULL, NULL, NULL, NULL, 5, '2020-11-07'),
(158, 6, 17, 69, 'ЭКСПЕРИМЕНТ', NULL, '', NULL, NULL, NULL, NULL, NULL, 5, '2020-11-07'),
(159, 1, 18, 70, 'Кіріспе', NULL, '', NULL, 'gRlORLghyX0', NULL, NULL, NULL, 5, '2020-11-07'),
(160, 2, 18, 70, 'Сторителлинг', NULL, '', NULL, 'fLDwbNPIpvY', NULL, NULL, NULL, 5, '2020-11-07'),
(161, 3, 18, 70, 'Воронка', NULL, '', NULL, 'oE3CqLSs6-0', NULL, NULL, NULL, 5, '2020-11-07'),
(162, 4, 18, 70, 'Лид магнит', NULL, '', NULL, '6IkKXpS4vwc', NULL, NULL, NULL, 5, '2020-11-07'),
(163, 5, 18, 70, 'Оффер', NULL, '', NULL, '2A7XS0ZDdto', NULL, NULL, NULL, 5, '2020-11-07'),
(164, 6, 18, 70, 'Таргеттегі креатив', NULL, '', NULL, '6ESqzDuuln4', NULL, NULL, NULL, 5, '2020-11-07'),
(165, 7, 18, 70, 'Motion', NULL, '', NULL, 'pBo9T6_p6d8', NULL, NULL, NULL, 5, '2020-11-07'),
(166, 8, 18, 70, 'Таплинк', NULL, '', NULL, 'wFgsPfsYFUo', NULL, NULL, NULL, 5, '2020-11-07'),
(167, 9, 18, 70, 'Мобилография', NULL, '', NULL, '9w6zxc_DkP4', NULL, NULL, NULL, 5, '2020-11-07'),
(168, 10, 18, 70, 'Таргеттегі алғашқы траффикті жіберу', NULL, '', NULL, 'HmB5L4OuYgs', NULL, NULL, NULL, 5, '2020-11-07'),
(169, 11, 18, 70, 'ADS manager', NULL, '', NULL, 'cu0pE7q7w54', NULL, NULL, NULL, 5, '2020-11-07'),
(170, 12, 18, 70, 'Bussiness manager-мен жұмыс', NULL, '', NULL, 'zZwlM_lZEjg', NULL, NULL, NULL, 5, '2020-11-07'),
(171, 13, 18, 70, 'Блокқа түспеу және одан шығу жолдары', NULL, '', NULL, 'zrP5dw8-lMc', NULL, NULL, NULL, 5, '2020-11-07'),
(172, 14, 18, 70, 'Команда құру', NULL, '', NULL, 'iGhRJz40Vyw', NULL, NULL, NULL, 5, '2020-11-07'),
(173, 1, 19, 71, 'Түсіру инструкциясы', NULL, '', NULL, 'rVLb3nayNrA', NULL, NULL, NULL, 5, '2020-11-07'),
(174, 2, 19, 71, 'Смартфон настройкасы', NULL, '', NULL, 'UFRM3F1KdiQ', NULL, NULL, NULL, 5, '2020-11-07'),
(175, 3, 19, 71, 'Lightroom сабағы(фотоға обработка жасау)', NULL, '', NULL, 'rifxBhrsgUA', NULL, NULL, NULL, 5, '2020-11-07'),
(176, 4, 19, 71, 'Видеомонтаж, Переход', NULL, '', NULL, '31oER8DlK_Q', NULL, NULL, NULL, 5, '2020-11-07'),
(177, 5, 19, 71, 'Әдемі цитата жазу сабағы', NULL, '', NULL, 'CkQ6JmP1PhE', NULL, NULL, NULL, 5, '2020-11-07'),
(178, 6, 19, 71, 'Видеодан жазу шығарып үйрен', NULL, '', NULL, 'V6iGC_hnLnY', NULL, NULL, NULL, 5, '2020-11-07'),
(179, 7, 19, 71, 'Vochi қосымшасы', NULL, '', NULL, 'OMiS72BYy48', NULL, NULL, NULL, 5, '2020-11-07'),
(180, 8, 19, 71, 'Фотоны музыкамен сөйлет', NULL, '', NULL, 'A7SQQCQ7SVc', NULL, NULL, NULL, 5, '2020-11-07'),
(181, 9, 19, 71, 'Супер Марио бол', NULL, '', NULL, '9CN4NUpsHrE', NULL, NULL, NULL, 5, '2020-11-07'),
(182, 10, 19, 71, 'Анимация', NULL, '', NULL, '9CN4NUpsHrE', NULL, NULL, NULL, 5, '2020-11-07');
INSERT INTO `cours_item` (`id`, `number`, `cours_id`, `block_id`, `name`, `logo`, `logo_txt`, `txt_a`, `video_youtube`, `txt_b`, `mat`, `work`, `status_id`, `date`) VALUES
(183, 11, 19, 71, 'Аспаннан планета шығарып, Инстаграмның охватын көтер', NULL, '', NULL, '89XZifraUgM', NULL, NULL, NULL, 5, '2020-11-07'),
(184, 12, 19, 71, 'Өз егізіңді жасап ал!', NULL, '', NULL, 'a_XYErOIEtM', '<p><br />\r\nНеге 12 сабақпен бітіп қалды демеңіздер!<br />\r\nСіздерге уәде етілген 14 сабақты бердім. Арасында 2 сабақты қосып 1 сабақ жасадық.&nbsp;<br />\r\n&nbsp;</p>\r\n\r\n<p>Бұл Марафон болғанның өзінде сздерге өте көөп құнды ақпараттар берілді. Сізде енді тек сол ақпараттарды естіп көріп қана қоймай, практикада жасау қалды.<br />\r\nПрактикада жасамасаңыздар сіздерден ешқандай результат болмайды!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Сұрақтарыңыз болса @dinchoff осы менің жеке аккаунтымнан сұрасаңыздар болады !</p>', NULL, NULL, 5, '2020-11-07'),
(185, 1, 20, 72, 'Мақсатты аудитория', NULL, '', NULL, NULL, NULL, NULL, NULL, 5, '2020-11-07'),
(186, 2, 20, 72, 'Триггерлер', NULL, '', NULL, NULL, NULL, NULL, NULL, 5, '2020-11-07'),
(187, 3, 20, 72, 'Мақсатты аудиторияны инстаграмнан табу және оларға сату стратегиясы', NULL, '', NULL, NULL, NULL, NULL, NULL, 5, '2020-11-07'),
(188, 4, 20, 72, '4-5 сабақ. Өнім матрицасы және Сату воронкасы', NULL, '', NULL, NULL, NULL, NULL, NULL, 5, '2020-11-07'),
(189, 5, 20, 72, '6-БОНУС Сабақ – Сататын Инстаграм Упаковкасы мен Стратегиясы', NULL, '', NULL, NULL, NULL, NULL, NULL, 5, '2020-11-07'),
(190, 6, 20, 72, '7 - сабақ - Блогердің аудиториясын өзіміздің сату воронкамызға кіргізіп, онымен қоймай оқырман жинап аламыз', NULL, '', NULL, NULL, NULL, NULL, NULL, 5, '2020-11-07'),
(191, 7, 20, 72, '8 сабақ - Блогердің арқасында екі жақты аудиториның құрметін алуды және құрмет арқылы сатамыз', NULL, '', NULL, NULL, NULL, NULL, NULL, 5, '2020-11-07'),
(192, 8, 20, 72, '9 сабақ - Блогер арқылы кез келген өнімді сатуды үйренеміз', NULL, '', NULL, NULL, NULL, NULL, NULL, 5, '2020-11-07'),
(193, 9, 20, 72, '10 - Таргеттік жарнамаға арналған сату воронкасын дайындаймыз', NULL, '', NULL, NULL, NULL, NULL, NULL, 5, '2020-11-07'),
(194, 10, 20, 72, '11 - Мақсатты аудиторияны таргеттік жарнамада дұрыс табуды үйренеміз', NULL, '', NULL, NULL, NULL, NULL, NULL, 5, '2020-11-07'),
(195, 11, 20, 72, '12 - Таргеттік жарнамадан келген адамдарды қайда жіберетінімізді анықтап алайық', NULL, '', NULL, NULL, NULL, NULL, NULL, 5, '2020-11-07'),
(196, 12, 20, 72, '13 - Таргеттік жарнамаға арналған сататын контент жасаймыз', NULL, '', NULL, NULL, NULL, NULL, NULL, 5, '2020-11-07'),
(197, 1, 5, 73, 'Кіріспе', NULL, '', NULL, 'aKJJITD7-pY', NULL, NULL, NULL, 5, '2020-11-07'),
(198, 2, 5, 73, 'Сататын сайттың структурасы', NULL, '', NULL, '7sNOxlXmhfs', '<p><a href=\"https://t.me/joinchat/JdKWow0lTdOsgqqFIO9dlQ\" target=\"_blank\">Ортақ телеграм чат</a></p>', NULL, NULL, 5, '2020-11-07'),
(199, 3, 5, 73, 'Сайтты сәндеу жолдары', NULL, '', NULL, 'jYqYsMbUyuc', NULL, NULL, NULL, 5, '2020-11-07'),
(200, 4, 5, 73, 'Бонус сабақ', NULL, '', NULL, '1gBNcMwpWXg', NULL, NULL, NULL, 5, '2020-11-07'),
(201, 5, 5, 73, 'Бонус сабақ - 2', NULL, '', NULL, '_mjt8cwhoIg', '<p><br />\r\nСабақта айтылған кнопканың шаблонын осы сілтемемен жүктей аласыз:&nbsp;<a href=\"https://docs.google.com/document/d/1XAgyXVb9OwacYRvlxaEpFSwWanh3N-JUE_MYVKjr-rc/edit?usp=sharing\" target=\"_blank\">КНОПКА</a></p>', NULL, NULL, 5, '2020-11-07'),
(202, 6, 5, 73, 'MegaTimer сервисімен танысу', NULL, '', NULL, 'pA1ZxxpoLCc', NULL, NULL, NULL, 5, '2020-11-07'),
(203, 7, 5, 73, 'Сайт арқылы база жинау', NULL, '', NULL, 'dkBJiSpisRA', NULL, NULL, NULL, 5, '2020-11-07'),
(204, 8, 5, 73, 'Алғашқы клиент табу жолы', NULL, '', NULL, 'faZTFY80t3s', '<p><a href=\"https://www.instagram.com/taplink_mamandary/\" target=\"_blank\">Таплинк мамандары Инстаграм парақшасы</a></p>', NULL, NULL, 5, '2020-11-07'),
(205, 9, 5, 73, 'Бонус сабақ - Телефон арқылы өзімізге сайт жасау', NULL, '', NULL, '6W9d77Zmtgo', NULL, NULL, NULL, 5, '2020-11-07'),
(206, 10, 5, 73, 'Сайт жасау фишкалары', NULL, '', NULL, '7ZWu4lglcZg', '<p><a href=\"https://docs.google.com/document/d/19SsdEqZT3vZDvDdeR_IUUCyErKMxqRquZ4522Rbl8b8/edit?usp=sharing\" target=\"_blank\">САЙТ ЖАСАУ ПРОЦЕСІН ЖЕҢІЛДЕТЕТІН ПАЙДАЛЫ СЕРВИСТЕР</a></p>', NULL, NULL, 5, '2020-11-07'),
(207, 11, 5, 73, 'Бонус сабақ (батырма)', NULL, '', NULL, 'yBpyIBmkWSk', NULL, NULL, NULL, 5, '2020-11-07'),
(208, 12, 5, 73, 'Бонус сабақ (супер батырма)', NULL, '', NULL, 'xfZjvYKYVcY', NULL, NULL, NULL, 5, '2020-11-07'),
(209, 13, 5, 73, 'Оқырман + сатылым жасайтын воронка', NULL, '', NULL, '<p>Бонусты алғың келсе, осы сілтемемен өтіңіз:&nbsp;<a href=\"http://taplink.cc/muhit_nurdanuly/p/34e695/\" target=\"_blank\">Бонус</a></p>', NULL, NULL, NULL, 5, '2020-11-07'),
(210, 14, 5, 73, 'Бонус сабақ (анимация жасау)', NULL, '', NULL, 'oka7ydzc7Z8', NULL, NULL, NULL, 5, '2020-11-07'),
(211, 15, 5, 73, 'Өзіңді сату сабағы', NULL, '', NULL, 'fYrORsMX3N8', NULL, NULL, NULL, 5, '2020-11-07'),
(212, 16, 5, 73, 'Сайттың дизайнына онлайн разбор', NULL, '', NULL, '9AcAyrQEgMs', NULL, NULL, NULL, 5, '2020-11-07'),
(213, 1, 6, 74, 'Кіріспе', NULL, '', NULL, 'aKJJITD7-pY', NULL, NULL, NULL, 5, '2020-11-07'),
(214, 2, 6, 74, 'Сататын сайттың структурасы', NULL, '', NULL, '7sNOxlXmhfs', NULL, NULL, NULL, 5, '2020-11-07'),
(215, 3, 6, 74, 'Сайтты сәндеу жолдары', NULL, '', NULL, 'jYqYsMbUyuc', NULL, NULL, NULL, 5, '2020-11-07'),
(216, 4, 6, 74, 'Бонус сабақ', NULL, '', NULL, '1gBNcMwpWXg', NULL, NULL, NULL, 5, '2020-11-07'),
(217, 5, 6, 74, 'Бонус сабақ - 2', NULL, '', NULL, '_mjt8cwhoIg', NULL, NULL, NULL, 5, '2020-11-07'),
(218, 6, 6, 74, 'MegaTimer сервисімен танысу', NULL, '', NULL, 'pA1ZxxpoLCc', NULL, NULL, NULL, 5, '2020-11-07'),
(219, 7, 6, 74, 'Сайт арқылы база жинау', NULL, '', NULL, 'dkBJiSpisRA', NULL, NULL, NULL, 5, '2020-11-07'),
(220, 8, 6, 74, 'Алғашқы клиент табу жолы', NULL, '', NULL, 'faZTFY80t3s', '<p><a href=\"https://www.instagram.com/taplink_mamandary/\" target=\"_blank\">Таплинк мамандары Инстаграм парақшасы</a></p>', NULL, NULL, 5, '2020-11-07'),
(221, 9, 6, 74, 'Бонус сабақ - Телефон арқылы өзімізге сайт жасау', NULL, '', NULL, '6W9d77Zmtgo', NULL, NULL, NULL, 5, '2020-11-07'),
(222, 10, 6, 74, 'Сайт жасау фишкалары', NULL, '', NULL, '7ZWu4lglcZg', NULL, NULL, NULL, 5, '2020-11-07'),
(223, 11, 6, 74, 'Бонус сабақ (батырма)', NULL, '', NULL, 'yBpyIBmkWSk', NULL, NULL, NULL, 5, '2020-11-07'),
(224, 12, 6, 74, 'Бонус сабақ (супер батырма)', NULL, '', NULL, 'xfZjvYKYVcY', NULL, NULL, NULL, 5, '2020-11-07'),
(225, 13, 6, 74, 'Оқырман + сатылым жасайтын воронка', NULL, '', NULL, 'aTQjhFrq6N8', NULL, NULL, NULL, 5, '2020-11-07'),
(226, 14, 6, 74, 'Бонус сабақ (анимация жасау)', NULL, '', NULL, 'oka7ydzc7Z8', NULL, NULL, NULL, 5, '2020-11-07'),
(227, 15, 6, 74, 'Өзіңді сату сабағы', NULL, '', NULL, 'fYrORsMX3N8', NULL, NULL, NULL, 5, '2020-11-07'),
(228, 1, 8, 75, 'Кіріспе', NULL, '', NULL, 'aKJJITD7-pY', NULL, NULL, NULL, 5, '2020-11-07'),
(229, 2, 8, 75, 'Сататын сайттың структурасы', NULL, '', NULL, '7sNOxlXmhfs', NULL, NULL, NULL, 5, '2020-11-07'),
(230, 3, 8, 75, 'Сайтты сәндеу жолдары', NULL, '', NULL, 'jYqYsMbUyuc', NULL, NULL, NULL, 5, '2020-11-07'),
(231, 4, 8, 75, 'Бонус сабақ', NULL, '', NULL, '1gBNcMwpWXg', NULL, NULL, NULL, 5, '2020-11-07'),
(232, 5, 8, 75, 'Бонус сабақ - 2', NULL, '', NULL, '_mjt8cwhoIg', '<p><br />\r\nСабақта айтылған кнопканың шаблонын осы сілтемемен жүктей аласыз:&nbsp;<a href=\"https://docs.google.com/document/d/1XAgyXVb9OwacYRvlxaEpFSwWanh3N-JUE_MYVKjr-rc/edit?usp=sharing\" target=\"_blank\">КНОПКА</a></p>', NULL, NULL, 5, '2020-11-07'),
(233, 6, 8, 75, 'MegaTimer сервисімен танысу', NULL, '', NULL, 'pA1ZxxpoLCc', NULL, NULL, NULL, 5, '2020-11-07'),
(234, 7, 8, 75, 'Сайт арқылы база жинау', NULL, '', NULL, 'dkBJiSpisRA', NULL, NULL, NULL, 5, '2020-11-07'),
(235, 8, 8, 75, 'Алғашқы клиент табу жолы', NULL, '', NULL, 'faZTFY80t3s', '<p><a href=\"https://www.instagram.com/taplink_mamandary/\" target=\"_blank\">Таплинк мамандары Инстаграм парақшасы</a></p>', NULL, NULL, 5, '2020-11-07'),
(236, 9, 8, 75, 'Бонус сабақ - Телефон арқылы өзімізге сайт жасау', NULL, '', NULL, '6W9d77Zmtgo', NULL, NULL, NULL, 5, '2020-11-07'),
(237, 10, 8, 75, 'Сайт жасау фишкалары', NULL, '', NULL, '7ZWu4lglcZg', '<p><a href=\"https://docs.google.com/document/d/19SsdEqZT3vZDvDdeR_IUUCyErKMxqRquZ4522Rbl8b8/edit?usp=sharing\" target=\"_blank\">САЙТ ЖАСАУ ПРОЦЕСІН ЖЕҢІЛДЕТЕТІН ПАЙДАЛЫ СЕРВИСТЕР</a></p>', NULL, NULL, 5, '2020-11-07'),
(238, 11, 8, 75, 'Бонус сабақ (батырма)', NULL, '', NULL, 'yBpyIBmkWSk', NULL, NULL, NULL, 5, '2020-11-07'),
(239, 12, 8, 75, 'Бонус сабақ (супер батырма)', NULL, '', NULL, 'xfZjvYKYVcY', NULL, NULL, NULL, 5, '2020-11-07'),
(240, 13, 8, 75, 'Оқырман + сатылым жасайтын воронка', NULL, '', NULL, 'aTQjhFrq6N8', NULL, NULL, NULL, 5, '2020-11-07'),
(241, 14, 8, 75, 'Бонус сабақ (анимация жасау)', NULL, '', NULL, 'oka7ydzc7Z8', NULL, NULL, NULL, 5, '2020-11-07'),
(242, 15, 8, 75, 'Өзіңді сату сабағы', NULL, '', NULL, 'fYrORsMX3N8', NULL, NULL, NULL, 5, '2020-11-07'),
(243, 1, 23, 76, 'Кіріспе', NULL, 'К', NULL, 'Yt50xAOxkpI', NULL, NULL, NULL, 5, '2020-11-18'),
(246, 2, 23, 76, 'Сабақ', NULL, 'С', NULL, 'aHlqrwXVfiw', NULL, NULL, NULL, 5, '2020-11-18'),
(247, 3, 23, 76, 'Сабақ', NULL, 'С', NULL, '4XC5hsoNFPE', NULL, NULL, NULL, 5, '2020-11-18'),
(248, 4, 23, 76, 'Сабақ', NULL, 'С', NULL, 'iyKIkTbEU4Q', NULL, NULL, NULL, 5, '2020-11-18'),
(249, 1, 24, 77, 'Кіріспе', NULL, 'К', NULL, 'YVJ1Mtt2MoI', NULL, NULL, NULL, 5, '2020-11-18'),
(250, 2, 24, 77, 'Жеңімпаз психологиясы', NULL, 'ЖП', NULL, 'H2pgCKWlOyc', NULL, NULL, NULL, 5, '2020-11-18'),
(251, 3, 24, 77, 'Қорқыныштармен жұмыс', NULL, 'ҚЖ', NULL, 'nRPWwpAFKwg', NULL, NULL, NULL, 5, '2020-11-18'),
(252, 1, 23, 78, 'Сабақ', NULL, '', NULL, '2AqWB2cG2NM', NULL, NULL, NULL, 5, '2020-11-20'),
(253, 4, 24, 77, 'Саналы маркетинг', NULL, '', NULL, 'zjkwr7OQTWA', NULL, NULL, NULL, 5, '2020-11-20'),
(254, 1, 25, 79, 'Нарыққа керек курсты анықтау 1-бөлім', NULL, '', NULL, '6Jp79Sm6osY', NULL, NULL, NULL, 5, '2020-11-20'),
(255, 2, 25, 79, 'Нарыққа керек курсты анықтау 2-бөлім', NULL, '', NULL, 'JTqSDvqdaUA', NULL, NULL, NULL, 5, '2020-11-20'),
(256, 3, 25, 79, 'Клиент аватары', NULL, '', NULL, 'nvD5ztCB6wQ', NULL, NULL, NULL, 5, '2020-11-20'),
(257, 4, 25, 79, 'Zoom сабақ -  1', NULL, '', NULL, 'Aai1vjKYFRQ', NULL, NULL, NULL, 5, '2020-11-20'),
(258, 5, 25, 79, 'Оффер', NULL, '', NULL, '2A7XS0ZDdto', NULL, NULL, NULL, 5, '2020-11-20'),
(259, 6, 25, 79, 'Zoom сабақ -  2', NULL, '', NULL, 'iyYX72Flwas', NULL, NULL, NULL, 5, '2020-11-20'),
(260, 7, 25, 79, 'ZOOM сабақ - 4', NULL, '', NULL, 'JQZKCI49R0U', NULL, NULL, NULL, 5, '2020-11-20'),
(261, 8, 25, 79, 'ZOOM сабақ - 5', NULL, '', NULL, '8ViZIndfr_Y', NULL, NULL, NULL, 5, '2020-11-20'),
(262, 9, 25, 79, 'ZOOM сабақ - 6', NULL, '', NULL, 'Mhmi9OxRR1c', NULL, NULL, NULL, 5, '2020-11-20'),
(263, 10, 25, 79, 'ZOOM сабақ - 7', NULL, '', NULL, 'tfGtSQlM6d8', NULL, NULL, NULL, 5, '2020-11-20'),
(264, 11, 25, 79, 'ZOOM сабақ - 8', NULL, '', NULL, 'aEbYBO49mc8', NULL, NULL, NULL, 5, '2020-11-20'),
(265, 12, 25, 79, 'ZOOM сабақ - 9', NULL, '', NULL, '9AcAyrQEgMs', NULL, NULL, NULL, 5, '2020-11-20'),
(266, 13, 25, 79, 'ZOOM сабақ - 10', NULL, '', NULL, 'kvia1OYxzpI', NULL, NULL, NULL, 5, '2020-11-20'),
(267, 2, 9, 13, 'Өзіңді табу', NULL, '', NULL, NULL, NULL, NULL, NULL, 5, '2020-11-20'),
(268, 3, 9, 13, 'Қызмет көрсету саласы', NULL, '', NULL, NULL, NULL, NULL, NULL, 5, '2020-11-20'),
(269, 4, 9, 13, 'Тауар сату саласы', NULL, '', NULL, NULL, NULL, NULL, NULL, 5, '2020-11-20'),
(270, 5, 9, 13, 'Инфобизнес', NULL, '', NULL, NULL, NULL, NULL, NULL, 5, '2020-11-20'),
(271, 6, 9, 13, 'Позиционирование', NULL, '', NULL, NULL, NULL, NULL, NULL, 5, '2020-11-20'),
(272, 7, 9, 13, 'Мақсатты аудитория және клиент аватары', NULL, '', NULL, NULL, NULL, NULL, NULL, 5, '2020-11-20'),
(273, 8, 9, 13, 'Ерекше ұсыныс жасау УТП', NULL, '', NULL, NULL, NULL, NULL, NULL, 5, '2020-11-20'),
(274, 9, 9, 13, 'SMM кіріспе', NULL, '', NULL, NULL, NULL, NULL, NULL, 5, '2020-11-20'),
(275, 10, 9, 13, 'Парақша упаковкасы', NULL, '', NULL, NULL, NULL, NULL, NULL, 5, '2020-11-20'),
(276, 11, 9, 13, 'Айдентика', NULL, '', NULL, NULL, NULL, NULL, NULL, 5, '2020-11-20'),
(277, 12, 9, 13, 'Обработка Lightroom', NULL, '', NULL, NULL, NULL, NULL, NULL, 5, '2020-11-20'),
(278, 13, 9, 13, 'Контент план', NULL, '', NULL, NULL, NULL, NULL, NULL, 5, '2020-11-20'),
(279, 14, 9, 13, 'Копирайтинг', NULL, '', NULL, NULL, NULL, NULL, NULL, 5, '2020-11-20'),
(280, 15, 9, 13, 'Инстаграм арқылы сату', NULL, '', NULL, NULL, NULL, NULL, NULL, 5, '2020-11-20'),
(281, 16, 9, 13, 'Блогерлермен жұмыс', NULL, '', NULL, NULL, NULL, NULL, NULL, 5, '2020-11-20'),
(282, 17, 9, 13, 'Әлеуметтік желілер аналитикасы', NULL, '', NULL, NULL, NULL, NULL, NULL, 5, '2020-11-20'),
(283, 18, 9, 13, 'Әлеуметтік желідегі маркетинг', NULL, '', NULL, NULL, NULL, NULL, NULL, 5, '2020-11-20'),
(284, 19, 9, 13, 'Жаранама туралы кіріспе', NULL, '', NULL, NULL, NULL, NULL, NULL, 5, '2020-11-20'),
(285, 20, 9, 13, 'Жарнама негіздері', NULL, '', NULL, NULL, NULL, NULL, NULL, 5, '2020-11-20'),
(286, 21, 9, 13, 'Тақырыптар', NULL, '', NULL, NULL, NULL, NULL, NULL, 5, '2020-11-20'),
(287, 22, 9, 13, 'Креатив', NULL, '', NULL, NULL, NULL, NULL, NULL, 5, '2020-11-20'),
(288, 23, 9, 13, 'Брейншторм', NULL, '', NULL, NULL, NULL, NULL, NULL, 5, '2020-11-20'),
(289, 24, 9, 13, 'Жарнамалық контент', NULL, '', NULL, NULL, NULL, NULL, NULL, 5, '2020-11-20'),
(290, 25, 9, 13, 'Жарнама настройкасы', NULL, '', NULL, NULL, NULL, NULL, NULL, 5, '2020-11-20'),
(291, 26, 9, 13, 'Таргетинг мақсаты', NULL, '', NULL, NULL, NULL, NULL, NULL, 5, '2020-11-20'),
(292, 27, 9, 13, 'Жарнамалық группа', NULL, '', NULL, NULL, NULL, NULL, NULL, 5, '2020-11-20'),
(293, 28, 9, 13, 'Плейсмент және бюджетирование', NULL, '', NULL, NULL, NULL, NULL, NULL, 5, '2020-11-20'),
(294, 29, 9, 13, 'Лидогенерация', NULL, '', NULL, NULL, NULL, NULL, NULL, 5, '2020-11-20'),
(295, 30, 9, 13, 'Ретаргет', NULL, '', NULL, NULL, NULL, NULL, NULL, 5, '2020-11-20'),
(296, 31, 9, 13, 'Аналитика', NULL, '', NULL, NULL, NULL, NULL, NULL, 5, '2020-11-20'),
(297, 32, 9, 13, 'Трафик және конвертер', NULL, '', NULL, NULL, NULL, NULL, NULL, 5, '2020-11-20'),
(298, 33, 9, 13, 'Лидмагнит өнім матрицасы', NULL, '', NULL, NULL, NULL, NULL, NULL, 5, '2020-11-20'),
(299, 34, 9, 13, 'Трипваер', NULL, '', NULL, NULL, NULL, NULL, NULL, 5, '2020-11-20'),
(300, 35, 9, 13, 'Негізгі өнім', NULL, '', NULL, NULL, NULL, NULL, NULL, 5, '2020-11-20'),
(301, 36, 9, 13, 'Табысты көбейткіш өнім', NULL, '', NULL, NULL, NULL, NULL, NULL, 5, '2020-11-20'),
(302, 37, 9, 13, 'Cross-sell', NULL, '', NULL, NULL, NULL, NULL, NULL, 5, '2020-11-20'),
(303, 38, 9, 13, 'Down-sell', NULL, '', NULL, NULL, NULL, NULL, NULL, 5, '2020-11-20'),
(304, 39, 9, 13, 'Қайтару тропинкасы', NULL, '', NULL, NULL, NULL, NULL, NULL, 5, '2020-11-20'),
(305, 40, 9, 13, 'Сату воронкасы', NULL, '', NULL, NULL, NULL, NULL, NULL, 5, '2020-11-20'),
(306, 41, 9, 13, 'Гипотезалар', NULL, '', NULL, NULL, NULL, NULL, NULL, 5, '2020-11-20'),
(307, 42, 9, 13, 'Лидтар', NULL, '', NULL, NULL, NULL, NULL, NULL, 5, '2020-11-20'),
(308, 43, 9, 13, 'Клиентті қыздыру', NULL, '', NULL, NULL, NULL, NULL, NULL, 5, '2020-11-20'),
(309, 44, 9, 13, 'Аналитиканың маңызы', NULL, '', NULL, NULL, NULL, NULL, NULL, 5, '2020-11-20'),
(310, 45, 9, 13, 'Таргетинг аналитикасы', NULL, '', NULL, NULL, NULL, NULL, NULL, 5, '2020-11-20'),
(311, 46, 9, 13, 'Инстаграм парақшасы аналитикасы', NULL, '', NULL, NULL, NULL, NULL, NULL, 5, '2020-11-20'),
(312, 47, 9, 13, 'Сату', NULL, '', NULL, NULL, NULL, NULL, NULL, 5, '2020-11-20'),
(313, 48, 9, 13, 'Қажеттілікті анықтау', NULL, '', NULL, NULL, NULL, NULL, NULL, 5, '2020-11-20'),
(314, 49, 9, 13, 'Қарсылықтармен жұмыс', NULL, '', NULL, NULL, NULL, NULL, NULL, 5, '2020-11-20'),
(315, 50, 9, 13, 'Қорытынды сабақ', NULL, '', NULL, NULL, NULL, NULL, NULL, 5, '2020-11-20'),
(317, 51, 9, 13, 'Чек листтер', NULL, '', NULL, NULL, NULL, NULL, NULL, 5, '2020-11-20'),
(318, 4, 1, 80, 'Test S', NULL, '', NULL, NULL, NULL, NULL, NULL, 5, '2020-12-03'),
(319, 5, 1, 80, 'dasdas', NULL, '', NULL, NULL, NULL, NULL, NULL, 5, '2020-12-03'),
(320, 4, 1, 3, 'daxz', NULL, '', NULL, NULL, NULL, NULL, NULL, 5, '2020-12-03'),
(321, 6, 1, 80, 'wqeqweqw', NULL, '', NULL, NULL, NULL, NULL, NULL, 5, '2020-12-03'),
(322, 1, 1, 81, 'sadasd', NULL, '', NULL, NULL, NULL, NULL, NULL, 5, '2020-12-03'),
(323, 2, 1, 81, 'dsadas', NULL, '', NULL, NULL, NULL, NULL, NULL, 5, '2020-12-03'),
(324, 7, 1, 80, 'sdasdsa', NULL, '', NULL, NULL, NULL, NULL, NULL, 5, '2020-12-03'),
(325, 1, 1, 82, 'dsadas', NULL, '', NULL, NULL, NULL, NULL, NULL, 5, '2020-12-03');

-- --------------------------------------------------------

--
-- Структура таблицы `cours_item_info`
--

CREATE TABLE `cours_item_info` (
  `id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `type_name` varchar(255) DEFAULT NULL,
  `txt` text,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `cours_item_info`
--

INSERT INTO `cours_item_info` (`id`, `item_id`, `type`, `type_name`, `txt`, `date`) VALUES
(1, 249, 'video', 'Видео сабақ', 'YVJ1Mtt2MoI', NULL),
(2, 250, 'video', 'Видео сабақ', 'H2pgCKWlOyc', '0000-00-00'),
(3, 243, 'video', 'Видео сабақ', 'Yt50xAOxkpI', '2020-11-26');

-- --------------------------------------------------------

--
-- Структура таблицы `cours_sub`
--

CREATE TABLE `cours_sub` (
  `id` int(11) NOT NULL,
  `cours_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status_id` int(1) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `cours_sub`
--

INSERT INTO `cours_sub` (`id`, `cours_id`, `user_id`, `status_id`, `date`) VALUES
(2, 2, 1, 1, '0000-00-00'),
(3, 3, 1, 1, '0000-00-00'),
(5, 5, 1, 1, '0000-00-00'),
(6, 6, 1, 1, '0000-00-00'),
(7, 7, 1, 1, '2020-11-02'),
(8, 8, 1, 1, '0000-00-00'),
(9, 9, 1, 1, '0000-00-00'),
(10, 10, 1, 1, '0000-00-00'),
(11, 11, 1, 1, '0000-00-00'),
(12, 1, 4, 1, '2020-11-07'),
(20, 6, 27, 1, '2020-11-18'),
(26, 1, 7, 1, '2020-11-18'),
(27, 7, 7, 1, '2020-11-18'),
(28, 1, 33, 1, '2020-11-18'),
(29, 1, 34, 1, '2020-11-18'),
(30, 7, 35, 1, '2020-11-18'),
(31, 1, 36, 1, '2020-11-18'),
(32, 1, 37, 1, '2020-11-18'),
(33, 7, 27, 1, '2020-11-18'),
(34, 5, 7, 1, '2020-11-18'),
(35, 14, 7, 1, '2020-11-18'),
(36, 2, 7, 1, '2020-11-18'),
(37, 7, 38, 1, '2020-11-18'),
(38, 7, 39, 1, '2020-11-18'),
(39, 1, 40, 1, '2020-11-18'),
(40, 18, 7, 1, '2020-11-18'),
(41, 19, 7, 1, '2020-11-18'),
(46, 6, 7, 1, '2020-11-18'),
(47, 9, 7, 1, '2020-11-18'),
(48, 1, 41, 1, '2020-11-18'),
(49, 1, 42, 1, '2020-11-18'),
(50, 7, 42, 1, '2020-11-18'),
(51, 1, 43, 1, '2020-11-18'),
(52, 1, 44, 1, '2020-11-18'),
(53, 1, 45, 1, '2020-11-18'),
(54, 24, 46, 1, '2020-11-18'),
(55, 24, 47, 1, '2020-11-18'),
(56, 7, 48, 1, '2020-11-18'),
(57, 23, 49, 1, '2020-11-18'),
(58, 23, 50, 1, '2020-11-18'),
(59, 23, 51, 1, '2020-11-18'),
(60, 23, 52, 1, '2020-11-18'),
(61, 1, 53, 1, '2020-11-18'),
(62, 1, 54, 1, '2020-11-18'),
(63, 1, 55, 1, '2020-11-18'),
(64, 24, 56, 1, '2020-11-18'),
(65, 24, 57, 1, '2020-11-18'),
(66, 24, 58, 1, '2020-11-18'),
(67, 24, 59, 1, '2020-11-18'),
(68, 24, 60, 1, '2020-11-18'),
(69, 24, 61, 1, '2020-11-18'),
(70, 1, 62, 1, '2020-11-18'),
(71, 23, 63, 1, '2020-11-18'),
(72, 24, 64, 1, '2020-11-18'),
(73, 1, 65, 1, '2020-11-18'),
(74, 8, 7, 1, '2020-11-18'),
(75, 24, 34, 1, '2020-11-18'),
(76, 2, 26, 1, '2020-11-18'),
(77, 1, 67, 1, '2020-11-18'),
(78, 1, 68, 1, '2020-11-18'),
(79, 24, 53, 1, '2020-11-18'),
(80, 1, 69, 1, '2020-11-18'),
(81, 23, 70, 1, '2020-11-18'),
(82, 10, 7, 1, '2020-11-18'),
(83, 24, 71, 1, '2020-11-18'),
(84, 1, 73, 1, '2020-11-18'),
(85, 1, 61, 1, '2020-11-18'),
(86, 1, 74, 1, '2020-11-18'),
(87, 23, 75, 1, '2020-11-18'),
(88, 1, 76, 1, '2020-11-18'),
(89, 1, 77, 1, '2020-11-19'),
(90, 1, 78, 1, '2020-11-19'),
(91, 1, 79, 1, '2020-11-19'),
(92, 1, 80, 1, '2020-11-19'),
(93, 1, 81, 1, '2020-11-19'),
(94, 23, 82, 1, '2020-11-19'),
(95, 24, 83, 1, '2020-11-19'),
(96, 24, 84, 1, '2020-11-19'),
(97, 23, 2, 1, '2020-11-19'),
(98, 23, 1, 1, '2020-11-19'),
(99, 23, 85, 1, '2020-11-19'),
(100, 1, 86, 1, '2020-11-19'),
(101, 1, 87, 1, '2020-11-19'),
(102, 23, 88, 1, '2020-11-19'),
(103, 1, 89, 1, '2020-11-19'),
(104, 24, 72, 1, '2020-11-19'),
(105, 24, 90, 1, '2020-11-19'),
(106, 1, 91, 1, '2020-11-19'),
(107, 5, 92, 1, '2020-11-19'),
(108, 5, 93, 1, '2020-11-19'),
(109, 5, 94, 1, '2020-11-19'),
(110, 7, 95, 1, '2020-11-19'),
(111, 23, 7, 1, '2020-11-19'),
(112, 24, 8, 1, '2020-11-19'),
(113, 23, 8, 1, '2020-11-19'),
(114, 7, 3, 1, '2020-11-19'),
(115, 24, 2, 1, '2020-11-19'),
(116, 5, 2, 1, '2020-11-19'),
(117, 19, 2, 1, '2020-11-19'),
(118, 16, 2, 1, '2020-11-19'),
(119, 24, 4, 1, '2020-11-19'),
(120, 23, 96, 1, '2020-11-19'),
(121, 1, 97, 1, '2020-11-19'),
(122, 24, 98, 1, '2020-11-19'),
(123, 1, 99, 1, '2020-11-19'),
(124, 7, 100, 1, '2020-11-19'),
(125, 7, 102, 1, '2020-11-20'),
(126, 23, 103, 1, '2020-11-20'),
(127, 19, 103, 1, '2020-11-20'),
(128, 19, 104, 1, '2020-11-20'),
(129, 23, 104, 1, '2020-11-20'),
(130, 23, 102, 1, '2020-11-20'),
(131, 19, 105, 1, '2020-11-20'),
(132, 19, 106, 1, '2020-11-20'),
(133, 19, 26, 1, '2020-11-20'),
(134, 1, 107, 1, '2020-11-20'),
(135, 1, 108, 1, '2020-11-20'),
(136, 1, 109, 1, '2020-11-20'),
(137, 1, 110, 1, '2020-11-20'),
(138, 1, 111, 1, '2020-11-20'),
(139, 1, 112, 1, '2020-11-20'),
(140, 1, 113, 1, '2020-11-20'),
(141, 1, 114, 1, '2020-11-20'),
(142, 1, 115, 1, '2020-11-20'),
(143, 1, 116, 1, '2020-11-20'),
(144, 24, 117, 1, '2020-11-20'),
(145, 23, 118, 1, '2020-11-20'),
(146, 7, 119, 1, '2020-11-20'),
(147, 1, 120, 1, '2020-11-20'),
(148, 7, 34, 1, '2020-11-20'),
(149, 24, 122, 1, '2020-11-20'),
(150, 24, 123, 1, '2020-11-20'),
(151, 1, 124, 1, '2020-11-20'),
(152, 24, 125, 1, '2020-11-20'),
(153, 7, 126, 1, '2020-11-20'),
(154, 1, 127, 1, '2020-11-20'),
(155, 7, 128, 1, '2020-11-20'),
(156, 7, 129, 1, '2020-11-20'),
(157, 7, 130, 1, '2020-11-20'),
(158, 24, 131, 1, '2020-11-20'),
(159, 1, 132, 1, '2020-11-21'),
(160, 1, 134, 1, '2020-11-21'),
(161, 1, 135, 1, '2020-11-21'),
(162, 1, 136, 1, '2020-11-21'),
(163, 1, 137, 1, '2020-11-21'),
(164, 1, 138, 1, '2020-11-21'),
(165, 1, 139, 1, '2020-11-21'),
(166, 1, 140, 1, '2020-11-21'),
(167, 1, 141, 1, '2020-11-21'),
(168, 1, 142, 1, '2020-11-21'),
(169, 24, 143, 1, '2020-11-21'),
(170, 24, 144, 1, '2020-11-21'),
(171, 24, 145, 1, '2020-11-21'),
(172, 7, 146, 1, '2020-11-21'),
(173, 7, 147, 1, '2020-11-21'),
(174, 7, 148, 1, '2020-11-21'),
(175, 7, 149, 1, '2020-11-21'),
(176, 7, 8, 1, '2020-11-21'),
(177, 2, 150, 1, '2020-11-21'),
(178, 24, 151, 1, '2020-11-21'),
(179, 24, 152, 1, '2020-11-21'),
(180, 1, 153, 1, '2020-11-21'),
(181, 7, 103, 1, '2020-11-22'),
(182, 1, 154, 1, '2020-11-22'),
(183, 1, 172, 1, '2020-11-22'),
(184, 1, 173, 1, '2020-11-22'),
(185, 1, 174, 1, '2020-11-22'),
(186, 1, 175, 1, '2020-11-22'),
(187, 1, 176, 1, '2020-11-22'),
(188, 1, 177, 1, '2020-11-22'),
(189, 1, 178, 1, '2020-11-22'),
(190, 1, 179, 1, '2020-11-22'),
(191, 1, 180, 1, '2020-11-22'),
(192, 1, 181, 1, '2020-11-22'),
(193, 1, 182, 1, '2020-11-22'),
(194, 1, 183, 1, '2020-11-22'),
(195, 1, 184, 1, '2020-11-22'),
(196, 24, 186, 1, '2020-11-22'),
(197, 24, 187, 1, '2020-11-22'),
(198, 24, 188, 1, '2020-11-22'),
(199, 24, 189, 1, '2020-11-22'),
(200, 24, 190, 1, '2020-11-22'),
(201, 24, 191, 1, '2020-11-22'),
(202, 24, 192, 1, '2020-11-22'),
(203, 23, 194, 1, '2020-11-22'),
(204, 1, 195, 1, '2020-11-22'),
(205, 1, 199, 1, '2020-11-23'),
(206, 1, 200, 1, '2020-11-23'),
(207, 1, 201, 1, '2020-11-23'),
(208, 1, 202, 1, '2020-11-23'),
(209, 1, 203, 1, '2020-11-23'),
(210, 1, 204, 1, '2020-11-23'),
(211, 1, 205, 1, '2020-11-23'),
(212, 1, 206, 1, '2020-11-23'),
(213, 1, 207, 1, '2020-11-23'),
(214, 1, 208, 1, '2020-11-23'),
(215, 1, 209, 1, '2020-11-23'),
(216, 1, 210, 1, '2020-11-23'),
(217, 1, 211, 1, '2020-11-23'),
(218, 1, 212, 1, '2020-11-23'),
(219, 1, 213, 1, '2020-11-23'),
(220, 7, 214, 1, '2020-11-23'),
(221, 7, 215, 1, '2020-11-23'),
(222, 1, 216, 1, '2020-11-23'),
(223, 7, 217, 1, '2020-11-23'),
(224, 1, 219, 1, '2020-11-23'),
(225, 1, 165, 1, '2020-11-23'),
(226, 1, 220, 1, '2020-11-23'),
(227, 24, 221, 1, '2020-11-23'),
(228, 24, 215, 1, '2020-11-23'),
(229, 1, 222, 1, '2020-11-23'),
(230, 1, 152, 1, '2020-11-23'),
(231, 23, 224, 1, '2021-02-16'),
(232, 23, 225, 1, '2021-02-16'),
(233, 24, 225, 1, '2021-02-16'),
(234, 23, 26, 1, '2021-02-16');

-- --------------------------------------------------------

--
-- Структура таблицы `cours_sub_info`
--

CREATE TABLE `cours_sub_info` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `cours_id` int(11) DEFAULT NULL,
  `cours_item_id` int(11) DEFAULT NULL,
  `item_view` int(11) DEFAULT NULL,
  `item_end` int(11) DEFAULT NULL,
  `ins_date` date NOT NULL,
  `upd_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `cours_sub_info`
--

INSERT INTO `cours_sub_info` (`id`, `user_id`, `cours_id`, `cours_item_id`, `item_view`, `item_end`, `ins_date`, `upd_date`) VALUES
(62, 1, 1, 1, 1, NULL, '2020-11-01', '2020-11-20'),
(63, 1, 1, 3, 1, NULL, '2020-11-01', '2020-11-20'),
(64, 1, 1, 4, 1, NULL, '2020-11-01', '2020-11-02'),
(65, 1, 1, 5, 1, NULL, '2020-11-01', '2020-11-01'),
(66, 1, 1, 6, 1, NULL, '2020-11-01', '2020-11-01'),
(67, 1, 1, 8, 1, NULL, '2020-11-01', '2020-11-01'),
(68, 1, 1, 13, 1, NULL, '2020-11-02', '2020-11-02'),
(69, 1, 7, 33, 1, NULL, '2020-11-02', '2020-11-02'),
(70, 4, 1, 1, 1, NULL, '2020-11-02', '2020-11-02'),
(71, 4, 1, 3, 1, NULL, '2020-11-02', '2020-11-02'),
(72, 4, 1, 13, 1, NULL, '2020-11-02', '2020-11-02'),
(73, 1, 1, 10, 1, NULL, '2020-11-07', '2020-11-07'),
(75, 1, 1, 12, 1, NULL, '2020-11-07', '2020-11-07'),
(76, 6, 7, 14, 1, NULL, '2020-11-07', '2020-11-07'),
(77, 6, 7, 15, 1, NULL, '2020-11-07', '2020-11-07'),
(78, 6, 1, 1, 1, NULL, '2020-11-07', '2020-11-07'),
(79, 2, 2, 63, 1, NULL, '2020-11-18', '2020-11-18'),
(80, 2, 10, 122, 1, NULL, '2020-11-18', '2020-11-18'),
(81, 7, 1, 1, 1, NULL, '2020-11-18', '2020-11-18'),
(82, 7, 1, 3, 1, NULL, '2020-11-18', '2020-11-18'),
(83, 7, 1, 4, 1, NULL, '2020-11-18', '2020-11-18'),
(84, 7, 7, 14, 1, NULL, '2020-11-18', '2020-11-18'),
(85, 37, 1, 4, 1, NULL, '2020-11-18', '2020-11-18'),
(86, 37, 1, 13, 1, NULL, '2020-11-18', '2020-11-18'),
(87, 27, 6, 227, 1, NULL, '2020-11-18', '2020-11-18'),
(88, 27, 6, 224, 1, NULL, '2020-11-18', '2020-11-18'),
(89, 27, 6, 214, 1, NULL, '2020-11-18', '2020-11-18'),
(90, 27, 6, 213, 1, NULL, '2020-11-18', '2020-11-18'),
(91, 27, 7, 14, 1, NULL, '2020-11-18', '2020-11-18'),
(92, 27, 7, 22, 1, NULL, '2020-11-18', '2020-11-18'),
(93, 27, 7, 36, 1, NULL, '2020-11-18', '2020-11-18'),
(94, 27, 7, 37, 1, NULL, '2020-11-18', '2020-11-18'),
(95, 27, 7, 43, 1, NULL, '2020-11-18', '2020-11-18'),
(96, 8, 1, 3, 1, NULL, '2020-11-18', '2020-11-18'),
(97, 8, 23, 243, 1, NULL, '2020-11-18', '2020-11-19'),
(98, 8, 24, 249, 1, NULL, '2020-11-18', '2020-11-18'),
(99, 8, 24, 250, 1, NULL, '2020-11-18', '2020-11-18'),
(100, 8, 24, 251, 1, NULL, '2020-11-18', '2020-11-18'),
(101, 47, 24, 249, 1, NULL, '2020-11-18', '2020-11-18'),
(102, 47, 24, 250, 1, NULL, '2020-11-18', '2020-11-18'),
(103, 47, 24, 251, 1, NULL, '2020-11-18', '2020-11-18'),
(104, 1, 24, 249, 1, NULL, '2020-11-18', '2020-11-24'),
(105, 1, 24, 250, 1, NULL, '2020-11-18', '2020-11-21'),
(106, 1, 24, 251, 1, NULL, '2020-11-18', '2020-11-21'),
(107, 50, 23, 243, 1, NULL, '2020-11-18', '2020-11-19'),
(108, 50, 23, 246, 1, NULL, '2020-11-18', '2020-11-19'),
(109, 50, 23, 247, 1, NULL, '2020-11-18', '2020-11-19'),
(110, 50, 23, 248, 1, NULL, '2020-11-18', '2020-11-18'),
(111, 55, 1, 1, 1, NULL, '2020-11-18', '2020-11-19'),
(112, 53, 1, 1, 1, NULL, '2020-11-18', '2020-11-18'),
(113, 54, 1, 1, 1, NULL, '2020-11-18', '2020-11-23'),
(114, 60, 24, 251, 1, NULL, '2020-11-18', '2020-11-19'),
(115, 62, 1, 1, 1, NULL, '2020-11-18', '2020-11-19'),
(116, 63, 23, 243, 1, NULL, '2020-11-18', '2020-11-20'),
(117, 34, 24, 249, 1, NULL, '2020-11-18', '2020-11-20'),
(118, 65, 1, 1, 1, NULL, '2020-11-18', '2020-11-23'),
(119, 34, 24, 250, 1, NULL, '2020-11-18', '2020-11-19'),
(120, 34, 24, 251, 1, NULL, '2020-11-18', '2020-11-19'),
(121, 61, 24, 249, 1, NULL, '2020-11-18', '2020-11-18'),
(122, 61, 24, 250, 1, NULL, '2020-11-18', '2020-11-18'),
(123, 61, 24, 251, 1, NULL, '2020-11-18', '2020-11-19'),
(124, 54, 1, 3, 1, NULL, '2020-11-18', '2020-11-20'),
(125, 43, 1, 1, 1, NULL, '2020-11-18', '2020-11-21'),
(126, 43, 1, 3, 1, NULL, '2020-11-18', '2020-11-19'),
(127, 43, 1, 8, 1, NULL, '2020-11-18', '2020-11-18'),
(128, 43, 1, 7, 1, NULL, '2020-11-18', '2020-11-18'),
(129, 43, 1, 6, 1, NULL, '2020-11-18', '2020-11-18'),
(130, 43, 1, 5, 1, NULL, '2020-11-18', '2020-11-18'),
(131, 43, 1, 4, 1, NULL, '2020-11-18', '2020-11-18'),
(132, 68, 1, 1, 1, NULL, '2020-11-18', '2020-11-18'),
(133, 68, 1, 3, 1, NULL, '2020-11-18', '2020-11-18'),
(134, 68, 1, 4, 1, NULL, '2020-11-18', '2020-11-18'),
(135, 1, 7, 14, 1, NULL, '2020-11-18', '2020-11-18'),
(136, 68, 1, 5, 1, NULL, '2020-11-18', '2020-11-18'),
(137, 68, 1, 8, 1, NULL, '2020-11-18', '2020-11-18'),
(138, 68, 1, 11, 1, NULL, '2020-11-18', '2020-11-18'),
(139, 41, 1, 1, 1, NULL, '2020-11-18', '2020-11-21'),
(140, 71, 24, 249, 1, NULL, '2020-11-18', '2020-11-19'),
(141, 53, 24, 249, 1, NULL, '2020-11-18', '2020-11-19'),
(142, 53, 24, 250, 1, NULL, '2020-11-18', '2020-11-19'),
(143, 53, 24, 251, 1, NULL, '2020-11-18', '2020-11-18'),
(144, 45, 1, 1, 1, NULL, '2020-11-18', '2020-11-19'),
(145, 45, 1, 3, 1, NULL, '2020-11-18', '2020-11-19'),
(146, 74, 1, 1, 1, NULL, '2020-11-18', '2020-11-18'),
(147, 75, 23, 243, 1, NULL, '2020-11-18', '2020-11-19'),
(148, 45, 1, 4, 1, NULL, '2020-11-18', '2020-11-19'),
(149, 75, 23, 246, 1, NULL, '2020-11-18', '2020-11-18'),
(150, 75, 23, 247, 1, NULL, '2020-11-18', '2020-11-18'),
(151, 75, 23, 248, 1, NULL, '2020-11-18', '2020-11-18'),
(152, 45, 1, 5, 1, NULL, '2020-11-18', '2020-11-20'),
(153, 76, 1, 1, 1, NULL, '2020-11-18', '2020-11-18'),
(154, 76, 1, 3, 1, NULL, '2020-11-18', '2020-11-18'),
(155, 45, 1, 6, 1, NULL, '2020-11-19', '2020-11-19'),
(156, 76, 1, 4, 1, NULL, '2020-11-19', '2020-11-19'),
(157, 45, 1, 7, 1, NULL, '2020-11-19', '2020-11-19'),
(158, 62, 1, 3, 1, NULL, '2020-11-19', '2020-11-20'),
(159, 2, 23, 243, 1, NULL, '2020-11-19', '2020-11-19'),
(160, 2, 23, 246, 1, NULL, '2020-11-19', '2020-11-19'),
(161, 2, 23, 247, 1, NULL, '2020-11-19', '2020-11-19'),
(162, 2, 23, 248, 1, NULL, '2020-11-19', '2020-11-19'),
(163, 34, 1, 13, 1, NULL, '2020-11-19', '2020-11-19'),
(164, 63, 23, 246, 1, NULL, '2020-11-19', '2020-11-20'),
(165, 61, 1, 1, 1, NULL, '2020-11-19', '2020-11-20'),
(166, 85, 23, 243, 1, NULL, '2020-11-19', '2020-11-19'),
(167, 55, 1, 3, 1, NULL, '2020-11-19', '2020-11-19'),
(168, 86, 1, 1, 1, NULL, '2020-11-19', '2020-11-22'),
(169, 88, 23, 243, 1, NULL, '2020-11-19', '2020-11-19'),
(170, 73, 1, 1, 1, NULL, '2020-11-19', '2020-11-20'),
(171, 73, 1, 3, 1, NULL, '2020-11-19', '2020-11-20'),
(172, 73, 1, 4, 1, NULL, '2020-11-19', '2020-11-20'),
(173, 73, 1, 5, 1, NULL, '2020-11-19', '2020-11-19'),
(174, 73, 1, 6, 1, NULL, '2020-11-19', '2020-11-19'),
(175, 73, 1, 7, 1, NULL, '2020-11-19', '2020-11-19'),
(176, 73, 1, 8, 1, NULL, '2020-11-19', '2020-11-19'),
(177, 73, 1, 9, 1, NULL, '2020-11-19', '2020-11-19'),
(178, 73, 1, 10, 1, NULL, '2020-11-19', '2020-11-19'),
(179, 73, 1, 11, 1, NULL, '2020-11-19', '2020-11-19'),
(180, 73, 1, 12, 1, NULL, '2020-11-19', '2020-11-19'),
(181, 73, 1, 13, 1, NULL, '2020-11-19', '2020-11-19'),
(182, 86, 1, 3, 1, NULL, '2020-11-19', '2020-11-22'),
(183, 39, 7, 49, 1, NULL, '2020-11-19', '2020-11-19'),
(184, 63, 23, 247, 1, NULL, '2020-11-19', '2020-11-20'),
(185, 63, 23, 248, 1, NULL, '2020-11-19', '2020-11-20'),
(186, 72, 24, 250, 1, NULL, '2020-11-19', '2020-11-23'),
(187, 51, 23, 248, 1, NULL, '2020-11-19', '2020-11-19'),
(188, 72, 24, 251, 1, NULL, '2020-11-19', '2020-11-23'),
(189, 72, 24, 249, 1, NULL, '2020-11-19', '2020-11-23'),
(190, 39, 7, 50, 1, NULL, '2020-11-19', '2020-11-19'),
(191, 90, 24, 249, 1, NULL, '2020-11-19', '2020-11-19'),
(192, 90, 24, 250, 1, NULL, '2020-11-19', '2020-11-19'),
(193, 90, 24, 251, 1, NULL, '2020-11-19', '2020-11-19'),
(194, 94, 5, 197, 1, NULL, '2020-11-19', '2020-11-19'),
(195, 80, 1, 1, 1, NULL, '2020-11-19', '2020-11-21'),
(196, 89, 1, 1, 1, NULL, '2020-11-19', '2020-11-19'),
(197, 89, 1, 3, 1, NULL, '2020-11-19', '2020-11-19'),
(198, 89, 1, 4, 1, NULL, '2020-11-19', '2020-11-19'),
(199, 89, 1, 5, 1, NULL, '2020-11-19', '2020-11-19'),
(200, 89, 1, 6, 1, NULL, '2020-11-19', '2020-11-19'),
(201, 8, 23, 246, 1, NULL, '2020-11-19', '2020-11-19'),
(202, 60, 24, 250, 1, NULL, '2020-11-19', '2020-11-19'),
(203, 3, 7, 14, 1, NULL, '2020-11-19', '2020-11-19'),
(204, 3, 7, 15, 1, NULL, '2020-11-19', '2020-11-19'),
(205, 96, 23, 243, 1, NULL, '2020-11-19', '2020-11-20'),
(206, 96, 23, 246, 1, NULL, '2020-11-19', '2020-11-19'),
(207, 96, 23, 247, 1, NULL, '2020-11-19', '2020-11-19'),
(208, 96, 23, 248, 1, NULL, '2020-11-19', '2020-11-19'),
(209, 97, 1, 1, 1, NULL, '2020-11-19', '2020-11-19'),
(210, 8, 8, 228, 1, NULL, '2020-11-19', '2020-11-19'),
(211, 80, 1, 3, 1, NULL, '2020-11-19', '2020-11-21'),
(212, 44, 1, 1, 1, NULL, '2020-11-19', '2020-11-19'),
(213, 89, 1, 8, 1, NULL, '2020-11-19', '2020-11-19'),
(214, 99, 1, 1, 1, NULL, '2020-11-19', '2020-11-19'),
(215, 99, 1, 3, 1, NULL, '2020-11-19', '2020-11-19'),
(216, 99, 1, 4, 1, NULL, '2020-11-19', '2020-11-19'),
(217, 99, 1, 5, 1, NULL, '2020-11-19', '2020-11-19'),
(218, 98, 24, 249, 1, NULL, '2020-11-19', '2020-11-19'),
(219, 98, 24, 250, 1, NULL, '2020-11-19', '2020-11-20'),
(220, 1, 2, 63, 1, NULL, '2020-11-20', '2020-11-20'),
(221, 103, 23, 243, 1, NULL, '2020-11-20', '2020-11-20'),
(222, 26, 19, 173, 1, NULL, '2020-11-20', '2020-11-20'),
(223, 1, 5, 197, 1, NULL, '2020-11-20', '2020-11-20'),
(224, 26, 19, 174, 1, NULL, '2020-11-20', '2020-11-20'),
(225, 1, 23, 243, 1, NULL, '2020-11-20', '2020-11-23'),
(226, 26, 19, 175, 1, NULL, '2020-11-20', '2020-11-20'),
(227, 26, 19, 176, 1, NULL, '2020-11-20', '2020-11-20'),
(228, 26, 19, 177, 1, NULL, '2020-11-20', '2020-11-20'),
(229, 26, 19, 178, 1, NULL, '2020-11-20', '2020-11-20'),
(230, 26, 19, 179, 1, NULL, '2020-11-20', '2020-11-20'),
(231, 26, 19, 180, 1, NULL, '2020-11-20', '2020-11-20'),
(232, 26, 19, 181, 1, NULL, '2020-11-20', '2020-11-20'),
(233, 26, 19, 182, 1, NULL, '2020-11-20', '2020-11-20'),
(234, 26, 19, 183, 1, NULL, '2020-11-20', '2020-11-20'),
(235, 26, 19, 184, 1, NULL, '2020-11-20', '2020-11-20'),
(236, 107, 1, 1, 1, NULL, '2020-11-20', '2020-11-21'),
(237, 107, 1, 3, 1, NULL, '2020-11-20', '2020-11-20'),
(238, 107, 1, 4, 1, NULL, '2020-11-20', '2020-11-20'),
(239, 107, 1, 5, 1, NULL, '2020-11-20', '2020-11-20'),
(240, 8, 5, 197, 1, NULL, '2020-11-20', '2020-11-20'),
(241, 118, 23, 243, 1, NULL, '2020-11-20', '2020-11-22'),
(242, 87, 1, 1, 1, NULL, '2020-11-20', '2020-11-23'),
(243, 64, 24, 249, 1, NULL, '2020-11-20', '2020-11-20'),
(244, 114, 1, 1, 1, NULL, '2020-11-20', '2020-11-20'),
(245, 102, 7, 17, 1, NULL, '2020-11-20', '2020-11-20'),
(246, 109, 1, 1, 1, NULL, '2020-11-20', '2020-11-21'),
(247, 113, 1, 1, 1, NULL, '2020-11-20', '2020-11-20'),
(248, 64, 24, 250, 1, NULL, '2020-11-20', '2020-11-22'),
(249, 116, 1, 1, 1, NULL, '2020-11-20', '2020-11-21'),
(250, 120, 1, 1, 1, NULL, '2020-11-20', '2020-11-20'),
(251, 110, 1, 1, 1, NULL, '2020-11-20', '2020-11-20'),
(252, 105, 19, 173, 1, NULL, '2020-11-20', '2020-11-20'),
(253, 117, 24, 249, 1, NULL, '2020-11-20', '2020-11-20'),
(254, 117, 24, 250, 1, NULL, '2020-11-20', '2020-11-20'),
(255, 110, 1, 3, 1, NULL, '2020-11-20', '2020-11-20'),
(256, 110, 1, 5, 1, NULL, '2020-11-20', '2020-11-20'),
(257, 117, 24, 251, 1, NULL, '2020-11-20', '2020-11-20'),
(258, 108, 1, 1, 1, NULL, '2020-11-20', '2020-11-23'),
(259, 80, 1, 4, 1, NULL, '2020-11-20', '2020-11-23'),
(260, 119, 7, 14, 1, NULL, '2020-11-20', '2020-11-21'),
(261, 105, 19, 174, 1, NULL, '2020-11-20', '2020-11-20'),
(262, 82, 23, 243, 1, NULL, '2020-11-20', '2020-11-20'),
(263, 39, 7, 51, 1, NULL, '2020-11-20', '2020-11-20'),
(264, 82, 23, 246, 1, NULL, '2020-11-20', '2020-11-20'),
(265, 105, 19, 175, 1, NULL, '2020-11-20', '2020-11-20'),
(266, 69, 1, 1, 1, NULL, '2020-11-20', '2020-11-21'),
(267, 105, 19, 176, 1, NULL, '2020-11-20', '2020-11-20'),
(268, 105, 19, 177, 1, NULL, '2020-11-20', '2020-11-20'),
(269, 82, 23, 247, 1, NULL, '2020-11-20', '2020-11-20'),
(270, 105, 19, 178, 1, NULL, '2020-11-20', '2020-11-20'),
(271, 61, 1, 3, 1, NULL, '2020-11-20', '2020-11-20'),
(272, 102, 23, 243, 1, NULL, '2020-11-20', '2020-11-20'),
(273, 104, 19, 173, 1, NULL, '2020-11-20', '2020-11-20'),
(274, 105, 19, 179, 1, NULL, '2020-11-20', '2020-11-20'),
(275, 105, 19, 180, 1, NULL, '2020-11-20', '2020-11-20'),
(276, 87, 1, 3, 1, NULL, '2020-11-20', '2020-11-23'),
(277, 62, 1, 4, 1, NULL, '2020-11-20', '2020-11-23'),
(278, 105, 19, 181, 1, NULL, '2020-11-20', '2020-11-22'),
(279, 104, 19, 174, 1, NULL, '2020-11-20', '2020-11-20'),
(280, 104, 19, 175, 1, NULL, '2020-11-20', '2020-11-20'),
(281, 104, 19, 176, 1, NULL, '2020-11-20', '2020-11-20'),
(282, 34, 7, 14, 1, NULL, '2020-11-20', '2020-11-20'),
(283, 34, 7, 15, 1, NULL, '2020-11-20', '2020-11-20'),
(284, 104, 19, 177, 1, NULL, '2020-11-20', '2020-11-20'),
(285, 104, 19, 178, 1, NULL, '2020-11-20', '2020-11-20'),
(286, 104, 19, 179, 1, NULL, '2020-11-20', '2020-11-20'),
(287, 104, 19, 180, 1, NULL, '2020-11-20', '2020-11-20'),
(288, 104, 19, 181, 1, NULL, '2020-11-20', '2020-11-20'),
(289, 110, 1, 4, 1, NULL, '2020-11-20', '2020-11-20'),
(290, 34, 24, 253, 1, NULL, '2020-11-20', '2020-11-20'),
(291, 65, 1, 3, 1, NULL, '2020-11-20', '2020-11-20'),
(292, 125, 24, 249, 1, NULL, '2020-11-20', '2020-11-20'),
(293, 125, 24, 250, 1, NULL, '2020-11-20', '2020-11-23'),
(294, 125, 24, 251, 1, NULL, '2020-11-20', '2020-11-23'),
(295, 125, 24, 253, 1, NULL, '2020-11-20', '2020-11-23'),
(296, 123, 24, 251, 1, NULL, '2020-11-20', '2020-11-21'),
(297, 123, 24, 249, 1, NULL, '2020-11-20', '2020-11-21'),
(298, 44, 1, 4, 1, NULL, '2020-11-20', '2020-11-20'),
(299, 44, 1, 3, 1, NULL, '2020-11-20', '2020-11-23'),
(300, 111, 1, 1, 1, NULL, '2020-11-20', '2020-11-21'),
(301, 83, 24, 249, 1, NULL, '2020-11-20', '2020-11-20'),
(302, 83, 24, 250, 1, NULL, '2020-11-20', '2020-11-21'),
(303, 93, 5, 212, 1, NULL, '2020-11-20', '2020-11-20'),
(304, 93, 5, 208, 1, NULL, '2020-11-20', '2020-11-20'),
(305, 111, 1, 3, 1, NULL, '2020-11-20', '2020-11-21'),
(306, 111, 1, 4, 1, NULL, '2020-11-20', '2020-11-22'),
(307, 111, 1, 5, 1, NULL, '2020-11-20', '2020-11-23'),
(308, 111, 1, 6, 1, NULL, '2020-11-20', '2020-11-23'),
(309, 93, 5, 197, 1, NULL, '2020-11-20', '2020-11-20'),
(310, 111, 1, 10, 1, NULL, '2020-11-20', '2020-11-20'),
(311, 111, 1, 12, 1, NULL, '2020-11-20', '2020-11-20'),
(312, 111, 1, 7, 1, NULL, '2020-11-20', '2020-11-23'),
(313, 111, 1, 11, 1, NULL, '2020-11-20', '2020-11-20'),
(314, 111, 1, 13, 1, NULL, '2020-11-20', '2020-11-20'),
(315, 110, 1, 13, 1, NULL, '2020-11-20', '2020-11-20'),
(316, 110, 1, 7, 1, NULL, '2020-11-20', '2020-11-20'),
(317, 124, 1, 1, 1, NULL, '2020-11-20', '2020-11-22'),
(318, 1, 23, 252, 1, NULL, '2020-11-20', '2020-11-20'),
(319, 74, 1, 3, 1, NULL, '2020-11-20', '2020-11-20'),
(320, 1, 8, 228, 1, NULL, '2020-11-20', '2020-11-20'),
(321, 1, 14, 144, 1, NULL, '2020-11-20', '2020-11-20'),
(322, 74, 1, 4, 1, NULL, '2020-11-20', '2020-11-20'),
(323, 1, 10, 122, 1, NULL, '2020-11-20', '2020-11-20'),
(324, 1, 10, 123, 1, NULL, '2020-11-20', '2020-11-20'),
(325, 1, 10, 128, 1, NULL, '2020-11-20', '2020-11-20'),
(326, 1, 18, 159, 1, NULL, '2020-11-20', '2020-11-20'),
(327, 102, 7, 14, 1, NULL, '2020-11-20', '2020-11-20'),
(328, 81, 1, 1, 1, NULL, '2020-11-20', '2020-11-21'),
(329, 102, 7, 15, 1, NULL, '2020-11-20', '2020-11-20'),
(330, 110, 1, 6, 1, NULL, '2020-11-20', '2020-11-21'),
(331, 128, 7, 14, 1, NULL, '2020-11-20', '2020-11-20'),
(332, 128, 7, 15, 1, NULL, '2020-11-20', '2020-11-20'),
(333, 128, 7, 16, 1, NULL, '2020-11-20', '2020-11-20'),
(334, 116, 1, 3, 1, NULL, '2020-11-20', '2020-11-21'),
(335, 102, 7, 16, 1, NULL, '2020-11-20', '2020-11-20'),
(363, 1, 9, 317, 1, NULL, '2020-11-20', '2020-11-20'),
(364, 102, 7, 18, 1, NULL, '2020-11-20', '2020-11-20'),
(365, 65, 1, 4, 1, NULL, '2020-11-20', '2020-11-21'),
(366, 102, 7, 19, 1, NULL, '2020-11-20', '2020-11-22'),
(367, 72, 24, 253, 1, NULL, '2020-11-20', '2020-11-22'),
(368, 124, 1, 13, 1, NULL, '2020-11-20', '2020-11-20'),
(369, 102, 7, 20, 1, NULL, '2020-11-20', '2020-11-22'),
(370, 113, 1, 3, 1, NULL, '2020-11-20', '2020-11-20'),
(371, 34, 7, 16, 1, NULL, '2020-11-20', '2020-11-20'),
(372, 34, 7, 17, 1, NULL, '2020-11-20', '2020-11-20'),
(373, 86, 1, 4, 1, NULL, '2020-11-20', '2020-11-22'),
(374, 34, 7, 18, 1, NULL, '2020-11-20', '2020-11-20'),
(375, 110, 1, 10, 1, NULL, '2020-11-21', '2020-11-21'),
(376, 110, 1, 9, 1, NULL, '2020-11-21', '2020-11-21'),
(377, 123, 24, 250, 1, NULL, '2020-11-21', '2020-11-21'),
(378, 123, 24, 253, 1, NULL, '2020-11-21', '2020-11-21'),
(379, 69, 1, 3, 1, NULL, '2020-11-21', '2020-11-23'),
(380, 69, 1, 4, 1, NULL, '2020-11-21', '2020-11-23'),
(381, 112, 1, 1, 1, NULL, '2020-11-21', '2020-11-23'),
(382, 63, 23, 252, 1, NULL, '2020-11-21', '2020-11-21'),
(383, 112, 1, 13, 1, NULL, '2020-11-21', '2020-11-22'),
(384, 112, 1, 11, 1, NULL, '2020-11-21', '2020-11-21'),
(385, 41, 1, 3, 1, NULL, '2020-11-21', '2020-11-21'),
(386, 144, 24, 249, 1, NULL, '2020-11-21', '2020-11-21'),
(387, 144, 24, 250, 1, NULL, '2020-11-21', '2020-11-21'),
(388, 144, 24, 251, 1, NULL, '2020-11-21', '2020-11-21'),
(389, 144, 24, 253, 1, NULL, '2020-11-21', '2020-11-21'),
(390, 104, 23, 243, 1, NULL, '2020-11-21', '2020-11-21'),
(391, 104, 23, 246, 1, NULL, '2020-11-21', '2020-11-21'),
(392, 124, 1, 3, 1, NULL, '2020-11-21', '2020-11-22'),
(393, 8, 2, 63, 1, NULL, '2020-11-21', '2020-11-21'),
(394, 8, 20, 185, 1, NULL, '2020-11-21', '2020-11-21'),
(395, 104, 23, 247, 1, NULL, '2020-11-21', '2020-11-21'),
(396, 104, 23, 248, 1, NULL, '2020-11-21', '2020-11-21'),
(397, 104, 23, 252, 1, NULL, '2020-11-21', '2020-11-21'),
(398, 1, 24, 253, 1, NULL, '2020-11-21', '2020-11-21'),
(399, 111, 1, 9, 1, NULL, '2020-11-21', '2020-11-21'),
(400, 151, 24, 253, 1, NULL, '2020-11-21', '2020-11-21'),
(401, 8, 9, 71, 1, NULL, '2020-11-21', '2020-11-21'),
(402, 86, 1, 6, 1, NULL, '2020-11-21', '2020-11-22'),
(403, 86, 1, 5, 1, NULL, '2020-11-21', '2020-11-22'),
(404, 81, 1, 3, 1, NULL, '2020-11-21', '2020-11-21'),
(405, 52, 23, 252, 1, NULL, '2020-11-21', '2020-11-22'),
(406, 52, 23, 247, 1, NULL, '2020-11-21', '2020-11-21'),
(407, 108, 1, 3, 1, NULL, '2020-11-21', '2020-11-21'),
(408, 103, 19, 173, 1, NULL, '2020-11-21', '2020-11-21'),
(409, 124, 1, 4, 1, NULL, '2020-11-21', '2020-11-21'),
(410, 152, 24, 249, 1, NULL, '2020-11-21', '2020-11-23'),
(411, 108, 1, 7, 1, NULL, '2020-11-21', '2020-11-21'),
(412, 108, 1, 4, 1, NULL, '2020-11-21', '2020-11-22'),
(413, 153, 1, 6, 1, NULL, '2020-11-21', '2020-11-22'),
(414, 87, 1, 4, 1, NULL, '2020-11-21', '2020-11-23'),
(415, 102, 7, 21, 1, NULL, '2020-11-21', '2020-11-21'),
(416, 102, 7, 22, 1, NULL, '2020-11-21', '2020-11-21'),
(417, 102, 7, 23, 1, NULL, '2020-11-21', '2020-11-23'),
(418, 108, 1, 5, 1, NULL, '2020-11-22', '2020-11-22'),
(419, 52, 23, 248, 1, NULL, '2020-11-22', '2020-11-22'),
(420, 124, 1, 5, 1, NULL, '2020-11-22', '2020-11-22'),
(421, 124, 1, 6, 1, NULL, '2020-11-22', '2020-11-23'),
(422, 124, 1, 7, 1, NULL, '2020-11-22', '2020-11-22'),
(423, 124, 1, 8, 1, NULL, '2020-11-22', '2020-11-22'),
(424, 124, 1, 9, 1, NULL, '2020-11-22', '2020-11-22'),
(425, 124, 1, 10, 1, NULL, '2020-11-22', '2020-11-22'),
(426, 124, 1, 11, 1, NULL, '2020-11-22', '2020-11-22'),
(427, 124, 1, 12, 1, NULL, '2020-11-22', '2020-11-22'),
(428, 64, 24, 251, 1, NULL, '2020-11-22', '2020-11-22'),
(429, 64, 24, 253, 1, NULL, '2020-11-22', '2020-11-22'),
(430, 87, 1, 5, 1, NULL, '2020-11-22', '2020-11-23'),
(431, 154, 1, 1, 1, NULL, '2020-11-22', '2020-11-22'),
(432, 154, 1, 3, 1, NULL, '2020-11-22', '2020-11-22'),
(433, 87, 1, 6, 1, NULL, '2020-11-22', '2020-11-23'),
(434, 149, 7, 14, 1, NULL, '2020-11-22', '2020-11-22'),
(435, 102, 7, 27, 1, NULL, '2020-11-22', '2020-11-22'),
(436, 103, 7, 14, 1, NULL, '2020-11-22', '2020-11-22'),
(437, 86, 1, 7, 1, NULL, '2020-11-22', '2020-11-22'),
(438, 86, 1, 8, 1, NULL, '2020-11-22', '2020-11-22'),
(439, 86, 1, 9, 1, NULL, '2020-11-22', '2020-11-22'),
(440, 86, 1, 10, 1, NULL, '2020-11-22', '2020-11-22'),
(441, 86, 1, 11, 1, NULL, '2020-11-22', '2020-11-22'),
(442, 86, 1, 12, 1, NULL, '2020-11-22', '2020-11-22'),
(443, 86, 1, 13, 1, NULL, '2020-11-22', '2020-11-22'),
(444, 113, 1, 4, 1, NULL, '2020-11-22', '2020-11-23'),
(445, 153, 1, 5, 1, NULL, '2020-11-22', '2020-11-22'),
(446, 34, 7, 37, 1, NULL, '2020-11-22', '2020-11-22'),
(447, 108, 1, 6, 1, NULL, '2020-11-22', '2020-11-22'),
(448, 105, 19, 182, 1, NULL, '2020-11-22', '2020-11-22'),
(449, 105, 19, 183, 1, NULL, '2020-11-22', '2020-11-22'),
(450, 105, 19, 184, 1, NULL, '2020-11-22', '2020-11-22'),
(451, 102, 23, 246, 1, NULL, '2020-11-22', '2020-11-22'),
(452, 112, 1, 3, 1, NULL, '2020-11-22', '2020-11-23'),
(453, 128, 7, 17, 1, NULL, '2020-11-22', '2020-11-22'),
(454, 118, 23, 246, 1, NULL, '2020-11-22', '2020-11-22'),
(455, 118, 23, 247, 1, NULL, '2020-11-22', '2020-11-22'),
(456, 118, 23, 248, 1, NULL, '2020-11-22', '2020-11-22'),
(457, 118, 23, 252, 1, NULL, '2020-11-22', '2020-11-22'),
(458, 128, 7, 18, 1, NULL, '2020-11-22', '2020-11-22'),
(459, 176, 1, 1, 1, NULL, '2020-11-22', '2020-11-22'),
(460, 179, 1, 1, 1, NULL, '2020-11-22', '2020-11-23'),
(461, 177, 1, 1, 1, NULL, '2020-11-22', '2020-11-22'),
(462, 178, 1, 1, 1, NULL, '2020-11-22', '2020-11-23'),
(463, 184, 1, 1, 1, NULL, '2020-11-22', '2020-11-22'),
(464, 181, 1, 1, 1, NULL, '2020-11-22', '2020-11-23'),
(465, 180, 1, 1, 1, NULL, '2020-11-22', '2020-11-22'),
(466, 186, 24, 250, 1, NULL, '2020-11-22', '2020-11-22'),
(467, 186, 24, 251, 1, NULL, '2020-11-22', '2020-11-23'),
(468, 172, 1, 1, 1, NULL, '2020-11-22', '2020-11-23'),
(469, 186, 24, 253, 1, NULL, '2020-11-22', '2020-11-23'),
(470, 189, 24, 251, 1, NULL, '2020-11-22', '2020-11-22'),
(471, 189, 24, 249, 1, NULL, '2020-11-22', '2020-11-22'),
(472, 154, 1, 10, 1, NULL, '2020-11-22', '2020-11-22'),
(473, 178, 1, 3, 1, NULL, '2020-11-22', '2020-11-23'),
(474, 189, 24, 250, 1, NULL, '2020-11-22', '2020-11-22'),
(475, 188, 24, 249, 1, NULL, '2020-11-22', '2020-11-22'),
(476, 188, 24, 250, 1, NULL, '2020-11-22', '2020-11-22'),
(477, 189, 24, 253, 1, NULL, '2020-11-22', '2020-11-22'),
(478, 182, 1, 3, 1, NULL, '2020-11-22', '2020-11-22'),
(479, 182, 1, 1, 1, NULL, '2020-11-22', '2020-11-22'),
(480, 172, 1, 3, 1, NULL, '2020-11-23', '2020-11-23'),
(481, 173, 1, 1, 1, NULL, '2020-11-23', '2020-11-23'),
(482, 172, 1, 4, 1, NULL, '2020-11-23', '2020-11-23'),
(483, 69, 1, 5, 1, NULL, '2020-11-23', '2020-11-23'),
(484, 187, 24, 249, 1, NULL, '2020-11-23', '2020-11-23'),
(485, 172, 1, 5, 1, NULL, '2020-11-23', '2020-11-23'),
(486, 172, 1, 6, 1, NULL, '2020-11-23', '2020-11-23'),
(487, 172, 1, 7, 1, NULL, '2020-11-23', '2020-11-23'),
(488, 172, 1, 8, 1, NULL, '2020-11-23', '2020-11-23'),
(489, 172, 1, 9, 1, NULL, '2020-11-23', '2020-11-23'),
(490, 172, 1, 10, 1, NULL, '2020-11-23', '2020-11-23'),
(491, 172, 1, 11, 1, NULL, '2020-11-23', '2020-11-23'),
(492, 172, 1, 12, 1, NULL, '2020-11-23', '2020-11-23'),
(493, 172, 1, 13, 1, NULL, '2020-11-23', '2020-11-23'),
(494, 75, 23, 252, 1, NULL, '2020-11-23', '2020-11-23'),
(495, 199, 1, 1, 1, NULL, '2020-11-23', '2020-11-23'),
(496, 190, 24, 249, 1, NULL, '2020-11-23', '2020-11-23'),
(497, 152, 24, 250, 1, NULL, '2020-11-23', '2020-11-23'),
(498, 183, 1, 1, 1, NULL, '2020-11-23', '2020-11-23'),
(499, 183, 1, 3, 1, NULL, '2020-11-23', '2020-11-23'),
(500, 152, 24, 251, 1, NULL, '2020-11-23', '2020-11-23'),
(501, 200, 1, 12, 1, NULL, '2020-11-23', '2020-11-23'),
(502, 200, 1, 7, 1, NULL, '2020-11-23', '2020-11-23'),
(503, 190, 24, 250, 1, NULL, '2020-11-23', '2020-11-23'),
(504, 203, 1, 1, 1, NULL, '2020-11-23', '2020-11-23'),
(505, 152, 24, 253, 1, NULL, '2020-11-23', '2020-11-23'),
(506, 213, 1, 1, 1, NULL, '2020-11-23', '2020-11-23'),
(507, 209, 1, 1, 1, NULL, '2020-11-23', '2020-11-23'),
(508, 210, 1, 6, 1, NULL, '2020-11-23', '2020-11-23'),
(509, 210, 1, 1, 1, NULL, '2020-11-23', '2020-11-23'),
(510, 112, 1, 4, 1, NULL, '2020-11-23', '2020-11-23'),
(511, 216, 1, 1, 1, NULL, '2020-11-23', '2020-11-23'),
(512, 212, 1, 1, 1, NULL, '2020-11-23', '2020-11-23'),
(513, 210, 1, 3, 1, NULL, '2020-11-23', '2020-11-23'),
(514, 54, 1, 4, 1, NULL, '2020-11-23', '2020-11-23'),
(515, 210, 1, 4, 1, NULL, '2020-11-23', '2020-11-23'),
(516, 204, 1, 1, 1, NULL, '2020-11-23', '2020-11-23'),
(517, 200, 1, 1, 1, NULL, '2020-11-23', '2020-11-23'),
(518, 199, 1, 3, 1, NULL, '2020-11-23', '2020-11-23'),
(519, 201, 1, 13, 1, NULL, '2020-11-23', '2020-11-23'),
(520, 201, 1, 1, 1, NULL, '2020-11-23', '2020-11-23'),
(521, 211, 1, 1, 1, NULL, '2020-11-23', '2020-11-23'),
(522, 202, 1, 1, 1, NULL, '2020-11-23', '2020-11-23'),
(523, 205, 1, 1, 1, NULL, '2020-11-23', '2020-11-23'),
(524, 200, 1, 3, 1, NULL, '2020-11-23', '2020-11-23'),
(525, 191, 24, 249, 1, NULL, '2020-11-23', '2020-11-23'),
(526, 191, 24, 250, 1, NULL, '2020-11-23', '2020-11-23'),
(527, 204, 1, 3, 1, NULL, '2020-11-23', '2020-11-23'),
(528, 219, 1, 1, 1, NULL, '2020-11-23', '2020-11-23'),
(529, 215, 7, 14, 1, NULL, '2020-11-23', '2020-11-23'),
(530, 215, 7, 15, 1, NULL, '2020-11-23', '2020-11-23'),
(531, 204, 1, 4, 1, NULL, '2020-11-23', '2020-11-23'),
(532, 215, 7, 16, 1, NULL, '2020-11-23', '2020-11-23'),
(533, 215, 7, 17, 1, NULL, '2020-11-23', '2020-11-23'),
(534, 65, 1, 5, 1, NULL, '2020-11-23', '2020-11-23'),
(535, 191, 24, 251, 1, NULL, '2020-11-23', '2020-11-23'),
(536, 206, 1, 1, 1, NULL, '2020-11-23', '2020-11-23'),
(537, 191, 24, 253, 1, NULL, '2020-11-23', '2020-11-23'),
(538, 220, 1, 4, 1, NULL, '2020-11-23', '2020-11-23'),
(539, 220, 1, 1, 1, NULL, '2020-11-23', '2020-11-23'),
(540, 215, 24, 249, 1, NULL, '2020-11-23', '2020-11-23'),
(541, 215, 24, 250, 1, NULL, '2020-11-23', '2020-11-23'),
(542, 215, 24, 251, 1, NULL, '2020-11-23', '2020-11-23'),
(543, 215, 24, 253, 1, NULL, '2020-11-23', '2020-11-23'),
(544, 87, 1, 8, 1, NULL, '2020-11-23', '2020-11-23'),
(545, 195, 1, 1, 1, NULL, '2020-11-23', '2020-11-23'),
(546, 165, 1, 6, 1, NULL, '2020-11-23', '2020-11-23'),
(547, 165, 1, 1, 1, NULL, '2020-11-23', '2020-11-23'),
(548, 190, 24, 251, 1, NULL, '2020-11-23', '2020-11-23'),
(549, 173, 1, 3, 1, NULL, '2020-11-23', '2020-11-23'),
(550, 54, 1, 5, 1, NULL, '2020-11-23', '2020-11-23'),
(551, 190, 24, 253, 1, NULL, '2020-11-23', '2020-11-23'),
(552, 102, 7, 24, 1, NULL, '2020-11-23', '2020-11-23'),
(553, 102, 7, 25, 1, NULL, '2020-11-23', '2020-11-23'),
(554, 102, 7, 26, 1, NULL, '2020-11-23', '2020-11-23'),
(555, 113, 1, 8, 1, NULL, '2020-11-23', '2020-11-23'),
(556, 113, 1, 5, 1, NULL, '2020-11-23', '2020-11-23'),
(557, 113, 1, 6, 1, NULL, '2020-11-23', '2020-11-23'),
(558, 113, 1, 9, 1, NULL, '2020-11-23', '2020-11-23'),
(559, 173, 1, 4, 1, NULL, '2020-11-23', '2020-11-23'),
(560, 221, 24, 249, 1, NULL, '2020-11-23', '2020-11-23'),
(561, 211, 1, 3, 1, NULL, '2020-11-23', '2020-11-23'),
(562, 221, 24, 250, 1, NULL, '2020-11-23', '2020-11-23'),
(563, 221, 24, 251, 1, NULL, '2020-11-23', '2020-11-23'),
(564, 221, 24, 253, 1, NULL, '2020-11-23', '2020-11-23'),
(565, 152, 1, 1, 1, NULL, '2020-11-23', '2020-11-23'),
(566, 152, 1, 3, 1, NULL, '2020-11-23', '2020-11-23'),
(567, 152, 1, 9, 1, NULL, '2020-11-23', '2020-11-23'),
(568, 152, 1, 13, 1, NULL, '2020-11-23', '2020-11-23'),
(569, 152, 1, 4, 1, NULL, '2020-11-23', '2020-11-23'),
(570, 152, 1, 5, 1, NULL, '2020-11-23', '2020-11-23'),
(571, 152, 1, 6, 1, NULL, '2020-11-23', '2020-11-23'),
(572, 152, 1, 8, 1, NULL, '2020-11-23', '2020-11-23'),
(573, 152, 1, 10, 1, NULL, '2020-11-23', '2020-11-23'),
(574, 152, 1, 12, 1, NULL, '2020-11-23', '2020-11-23'),
(575, 152, 1, 7, 1, NULL, '2020-11-23', '2020-11-23'),
(576, 152, 1, 11, 1, NULL, '2020-11-23', '2020-11-23'),
(577, 210, 1, 5, 1, NULL, '2020-11-23', '2020-11-23');

-- --------------------------------------------------------

--
-- Структура таблицы `status`
--

CREATE TABLE `status` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `type` varchar(30) NOT NULL,
  `logo` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `status`
--

INSERT INTO `status` (`id`, `name`, `type`, `logo`) VALUES
(1, 'Қосулы', 'sub', '<i class=\"fas fa-play\"></i>'),
(2, 'Тоқтатылған', 'sub', '<i class=\"fas fa-pause\"></i>'),
(3, 'Құлыпталған', 'sub', '<i class=\"fas fa-ban\"></i>'),
(4, 'Өшірілген', 'sub', '<i class=\"fas fa-times\"></i>'),
(5, 'Қосулы', 'cours', '<i class=\"fas fa-play\"></i>'),
(6, 'Бос', 'cours', '<i class=\"fas fa-times\"></i>'),
(7, 'Архивте', 'cours', '<i class=\"fas fa-archive\"></i>'),
(8, 'Қосулы', 'user', '<i class=\"fas fa-play\"></i>'),
(9, 'Архивте', 'user', '<i class=\"fas fa-archive\"></i>'),
(10, 'Құлыпталған', 'user', '<i class=\"fas fa-ban\"></i>');

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `phone` bigint(11) NOT NULL,
  `code` int(4) DEFAULT NULL,
  `name` varchar(30) NOT NULL DEFAULT 'USER',
  `right` int(1) DEFAULT NULL,
  `ins_date` date NOT NULL,
  `autor` int(1) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `phone`, `code`, `name`, `right`, `ins_date`, `autor`, `status_id`) VALUES
(1, 77074321999, 3331, 'Aidos', 1, '2020-09-01', 1, 8),
(2, 77774321199, 7219, 'USER', NULL, '2020-11-18', NULL, 8),
(3, 77775284050, 2610, 'Досбол', 1, '2020-11-18', 1, 8),
(4, 77077319888, 7773, 'Muhit', 1, '2020-11-18', 1, 8),
(6, 77476032083, 5459, 'Диана', 1, '2020-11-18', NULL, 8),
(7, 77757093240, 9238, 'Азамат', 1, '2020-11-18', 1, 8),
(8, 77073977602, 5443, 'Гулнур', 1, '2020-11-18', NULL, 8),
(26, 77477220008, 7930, 'Ақерке', NULL, '2020-11-10', NULL, 8),
(27, 77477645356, 8673, 'USER', NULL, '2020-11-18', NULL, 8),
(33, 77078651326, 1008, 'USER', NULL, '2020-11-18', NULL, 8),
(34, 77762367593, 5721, 'USER', NULL, '2020-11-18', NULL, 8),
(35, 77072013127, 6196, 'USER', NULL, '2020-11-18', NULL, 8),
(36, 77084946466, 1162, 'USER', NULL, '2020-11-18', NULL, 8),
(37, 77084946465, 9493, 'USER', NULL, '2020-11-18', NULL, 8),
(38, 77718550202, 8250, 'USER', NULL, '2020-11-18', NULL, 8),
(39, 77027439321, 3933, 'USER', NULL, '2020-11-18', NULL, 8),
(40, 77076527121, 9855, 'USER', NULL, '2020-11-18', NULL, 8),
(41, 77788122198, 5403, 'USER', NULL, '2020-11-18', NULL, 8),
(42, 77474207668, 7440, 'USER', NULL, '2020-11-18', NULL, 8),
(43, 77716859816, 8819, 'USER', NULL, '2020-11-18', NULL, 8),
(44, 77078336741, 8985, 'USER', NULL, '2020-11-18', NULL, 8),
(45, 77754442485, 1023, 'USER', NULL, '2020-11-18', NULL, 8),
(46, 77072299395, 7100, 'USER', NULL, '2020-11-18', NULL, 8),
(47, 77002299395, 8985, 'USER', NULL, '2020-11-18', NULL, 8),
(48, 77072013137, 5139, 'USER', NULL, '2020-11-18', NULL, 8),
(49, 77478700399, 7824, 'USER', NULL, '2020-11-18', NULL, 8),
(50, 77079724294, 6368, 'USER', NULL, '2020-11-18', NULL, 8),
(51, 77773955533, 6301, 'USER', NULL, '2020-11-18', NULL, 8),
(52, 77076380863, 8442, 'USER', NULL, '2020-11-18', NULL, 8),
(53, 77766750602, 1026, 'USER', NULL, '2020-11-18', NULL, 8),
(54, 77053649850, 5987, 'USER', NULL, '2020-11-18', NULL, 8),
(55, 77787079096, 8620, 'USER', NULL, '2020-11-18', NULL, 8),
(56, 77479692916, 1619, 'USER', NULL, '2020-11-18', NULL, 8),
(57, 77474688048, 9140, 'USER', NULL, '2020-11-18', NULL, 8),
(58, 77711384594, 1570, 'USER', NULL, '2020-11-18', NULL, 8),
(59, 77077778449, 4412, 'USER', NULL, '2020-11-18', NULL, 8),
(60, 77780080992, 2585, 'USER', NULL, '2020-11-18', NULL, 8),
(61, 77474809493, 3050, 'USER', NULL, '2020-11-18', NULL, 8),
(62, 77773322293, 2352, 'USER', NULL, '2020-11-18', NULL, 8),
(63, 77478472458, 2507, 'USER', NULL, '2020-11-18', NULL, 8),
(64, 77078545442, 7963, 'USER', NULL, '2020-11-18', NULL, 8),
(65, 77085245979, 4535, 'USER', NULL, '2020-11-18', NULL, 8),
(67, 77718885454, 2369, 'USER', NULL, '2020-11-18', NULL, 8),
(68, 77779631717, 6371, 'USER', NULL, '2020-11-18', NULL, 8),
(69, 77014620225, 9470, 'USER', NULL, '2020-11-18', NULL, 8),
(70, 77073339878, 5046, 'USER', NULL, '2020-11-18', NULL, 8),
(71, 77776794308, 7167, 'USER', NULL, '2020-11-18', NULL, 8),
(72, 77476922916, 2923, 'Әділет Анарбаев', NULL, '0000-00-00', NULL, NULL),
(73, 77027407435, 7642, 'USER', NULL, '2020-11-18', NULL, 8),
(74, 77054760900, 2303, 'USER', NULL, '2020-11-18', NULL, 8),
(75, 77754071266, 1111, 'USER', NULL, '2020-11-18', NULL, 8),
(76, 77757110111, 1207, 'USER', NULL, '2020-11-18', NULL, 8),
(77, 77762789291, 6761, 'USER', NULL, '2020-11-19', NULL, 8),
(78, 77477832003, 2435, 'USER', NULL, '2020-11-19', NULL, 8),
(79, 77077411229, 7683, 'USER', NULL, '2020-11-19', NULL, 8),
(80, 77057787752, 3373, 'USER', NULL, '2020-11-19', NULL, 8),
(81, 77079062693, 6550, 'USER', NULL, '2020-11-19', NULL, 8),
(82, 77013092919, 6543, 'USER', NULL, '2020-11-19', NULL, 8),
(83, 77072382682, 3406, 'USER', NULL, '2020-11-19', NULL, 8),
(84, 77713281102, 9888, 'USER', NULL, '2020-11-19', NULL, 8),
(85, 77789901545, 5785, 'USER', NULL, '2020-11-19', NULL, 8),
(86, 77011176841, 5575, 'USER', NULL, '2020-11-19', NULL, 8),
(87, 77026495171, 8420, 'USER', NULL, '2020-11-19', NULL, 8),
(88, 77714560791, 7860, 'USER', NULL, '2020-11-19', NULL, 8),
(89, 77472272057, 5312, 'USER', NULL, '2020-11-19', NULL, 8),
(90, 77477711710, 4329, 'USER', NULL, '2020-11-19', NULL, 8),
(91, 77760667393, 4336, 'USER', NULL, '2020-11-19', NULL, 8),
(92, 77716549127, 9888, 'USER', NULL, '2020-11-19', NULL, 8),
(93, 77771877259, 4832, 'USER', NULL, '2020-11-19', NULL, 8),
(94, 77081264686, 4700, 'USER', NULL, '2020-11-19', NULL, 8),
(95, 77474622512, 7252, 'USER', NULL, '2020-11-19', NULL, 8),
(96, 77773898800, 3421, 'USER', NULL, '2020-11-19', NULL, 8),
(97, 77471358834, 8241, 'USER', NULL, '2020-11-19', NULL, 8),
(98, 77072660994, 8571, 'USER', NULL, '2020-11-19', NULL, 8),
(99, 77760667398, 4326, 'USER', NULL, '2020-11-19', NULL, 8),
(100, 77027991574, 4432, 'USER', NULL, '2020-11-19', NULL, 8),
(101, 77005950997, 7414, 'САЛТАНАТ ', NULL, '0000-00-00', NULL, NULL),
(102, 77077065202, 8703, 'USER', NULL, '2020-11-20', NULL, 8),
(103, 77472974592, 6494, 'USER', NULL, '2020-11-20', NULL, 8),
(104, 77084174144, 2838, 'USER', NULL, '2020-11-20', NULL, 8),
(105, 77073980905, 7718, 'USER', NULL, '2020-11-20', NULL, 8),
(106, 77056435518, 5734, 'USER', NULL, '2020-11-20', NULL, 8),
(107, 77020823532, 5023, 'USER', NULL, '2020-11-20', NULL, 8),
(108, 77479042025, 7984, 'USER', NULL, '2020-11-20', NULL, 8),
(109, 77072473537, 5224, 'USER', NULL, '2020-11-20', NULL, 8),
(110, 77075671296, 1740, 'USER', NULL, '2020-11-20', NULL, 8),
(111, 77075700305, 5219, 'USER', NULL, '2020-11-20', NULL, 8),
(112, 77028389138, 8912, 'USER', NULL, '2020-11-20', NULL, 8),
(113, 77075563524, 5133, 'USER', NULL, '2020-11-20', NULL, 8),
(114, 77716469282, 2595, 'USER', NULL, '2020-11-20', NULL, 8),
(115, 77718811313, 5803, 'USER', NULL, '2020-11-20', NULL, 8),
(116, 77078608485, 3663, 'USER', NULL, '2020-11-20', NULL, 8),
(117, 77787917885, 4760, 'USER', NULL, '2020-11-20', NULL, 8),
(118, 77777386742, 2560, 'USER', NULL, '2020-11-20', NULL, 8),
(119, 77082651249, 1723, 'USER', NULL, '2020-11-20', NULL, 8),
(120, 77088582646, 6955, 'USER', NULL, '2020-11-20', NULL, 8),
(121, 77083368757, 6313, 'Аружан', NULL, '0000-00-00', NULL, NULL),
(122, 77079345197, 9453, 'USER', NULL, '2020-11-20', NULL, 8),
(123, 77754833260, 3699, 'USER', NULL, '2020-11-20', NULL, 8),
(124, 77769129514, 7344, 'USER', NULL, '2020-11-20', NULL, 8),
(125, 77752037578, 8738, 'USER', NULL, '2020-11-20', NULL, 8),
(126, 77758737878, 9644, 'USER', NULL, '2020-11-20', NULL, 8),
(127, 77074503877, 9600, 'USER', NULL, '2020-11-20', NULL, 8),
(128, 77018950316, 3825, 'USER', NULL, '2020-11-20', NULL, 8),
(129, 77072256157, 9704, 'USER', NULL, '2020-11-20', NULL, 8),
(130, 77753001418, 5722, 'USER', NULL, '2020-11-20', NULL, 8),
(131, 77028076007, 3559, 'USER', NULL, '2020-11-20', NULL, 8),
(132, 77016926060, 1971, 'Әбдісаттарова Зұлпия ', NULL, '0000-00-00', NULL, NULL),
(133, 77011146841, 2618, 'Нуршат ', NULL, '0000-00-00', NULL, NULL),
(134, 77772149346, 8547, 'USER', NULL, '2020-11-21', NULL, 8),
(135, 77028046492, 1431, 'USER', NULL, '2020-11-21', NULL, 8),
(136, 77473268437, 6262, 'USER', NULL, '2020-11-21', NULL, 8),
(137, 77082814498, 2036, 'USER', NULL, '2020-11-21', NULL, 8),
(138, 77083939730, 4437, 'USER', NULL, '2020-11-21', NULL, 8),
(139, 77479124370, 7279, 'USER', NULL, '2020-11-21', NULL, 8),
(140, 77078439989, 9559, 'USER', NULL, '2020-11-21', NULL, 8),
(141, 77783890699, 9176, 'USER', NULL, '2020-11-21', NULL, 8),
(142, 77073584342, 1386, 'USER', NULL, '2020-11-21', NULL, 8),
(143, 77752285785, 7367, 'USER', NULL, '2020-11-21', NULL, 8),
(144, 77087203677, 9728, 'USER', NULL, '2020-11-21', NULL, 8),
(145, 77078275564, 6301, 'USER', NULL, '2020-11-21', NULL, 8),
(146, 77474305057, 2656, 'USER', NULL, '2020-11-21', NULL, 8),
(147, 77784827401, 4058, 'USER', NULL, '2020-11-21', NULL, 8),
(148, 77771888545, 2496, 'USER', NULL, '2020-11-21', NULL, 8),
(149, 77083944296, 6277, 'USER', NULL, '2020-11-21', NULL, 8),
(150, 77753986741, 9625, 'USER', NULL, '2020-11-21', NULL, 8),
(151, 77077330989, 9076, 'USER', NULL, '2020-11-21', NULL, 8),
(152, 77082004424, 7937, 'USER', NULL, '2020-11-21', NULL, 8),
(153, 77079202096, 9638, 'USER', NULL, '2020-11-21', NULL, 8),
(154, 77026415057, 6758, 'USER', NULL, '2020-11-22', NULL, 8),
(155, 77712961818, 7862, 'Нұрбах ', NULL, '0000-00-00', NULL, NULL),
(156, 77082826973, 9074, 'Руслан', NULL, '0000-00-00', NULL, NULL),
(157, 77083745298, 2204, 'Аман', NULL, '0000-00-00', NULL, NULL),
(158, 77002288179, 3887, 'Тілеуғазин Абзал ', NULL, '0000-00-00', NULL, NULL),
(159, 77767346579, 4426, 'Асылхан', NULL, '0000-00-00', NULL, NULL),
(160, 77074056504, 7170, 'Көшкінбай алмас', NULL, '0000-00-00', NULL, NULL),
(161, 77754236607, 4678, 'Айдос ', NULL, '0000-00-00', NULL, NULL),
(162, 77474032397, 4875, 'Фариза ', NULL, '0000-00-00', NULL, NULL),
(163, 77471894127, 2865, 'Бакдаулет', NULL, '0000-00-00', NULL, NULL),
(164, 77774557210, 5570, 'Асылхан ', NULL, '0000-00-00', NULL, NULL),
(165, 77713689898, 8333, 'Жұмахан', NULL, '0000-00-00', NULL, NULL),
(166, 77072820339, 7024, 'Ерден', NULL, '0000-00-00', NULL, NULL),
(167, 77716577104, 3061, 'Алшораз Дархан ', NULL, '0000-00-00', NULL, NULL),
(171, 77789529336, 1060, 'Дильназ ', NULL, '0000-00-00', NULL, NULL),
(172, 77075713545, 6865, 'USER', NULL, '2020-11-22', NULL, 8),
(173, 77472874217, 7979, 'USER', NULL, '2020-11-22', NULL, 8),
(174, 77017054877, 9512, 'USER', NULL, '2020-11-22', NULL, 8),
(175, 77758607397, 5274, 'USER', NULL, '2020-11-22', NULL, 8),
(176, 77081713685, 4519, 'USER', NULL, '2020-11-22', NULL, 8),
(177, 77763297548, 7784, 'USER', NULL, '2020-11-22', NULL, 8),
(178, 77762700200, 2643, 'USER', NULL, '2020-11-22', NULL, 8),
(179, 77716170297, 4992, 'USER', NULL, '2020-11-22', NULL, 8),
(180, 77753961448, 8948, 'USER', NULL, '2020-11-22', NULL, 8),
(181, 77071911621, 5662, 'USER', NULL, '2020-11-22', NULL, 8),
(182, 77089273442, 4529, 'USER', NULL, '2020-11-22', NULL, 8),
(183, 77782502790, 3363, 'USER', NULL, '2020-11-22', NULL, 8),
(184, 77474773752, 1494, 'USER', NULL, '2020-11-22', NULL, 8),
(185, 77020075040, 5693, 'Abdulaziz', NULL, '0000-00-00', NULL, NULL),
(186, 77713286821, 9350, 'USER', NULL, '2020-11-22', NULL, 8),
(187, 77477551992, 3040, 'USER', NULL, '2020-11-22', NULL, 8),
(188, 77002061505, 9577, 'USER', NULL, '2020-11-22', NULL, 8),
(189, 77768902002, 3600, 'USER', NULL, '2020-11-22', NULL, 8),
(190, 77718423099, 8460, 'USER', NULL, '2020-11-22', NULL, 8),
(191, 77476751872, 2303, 'USER', NULL, '2020-11-22', NULL, 8),
(192, 77476816140, 2937, 'USER', NULL, '2020-11-22', NULL, 8),
(193, 77078082495, 7495, 'Суан', NULL, '0000-00-00', NULL, NULL),
(194, 77754366114, 1627, 'USER', NULL, '2020-11-22', NULL, 8),
(195, 77715881313, 4770, 'USER', NULL, '2020-11-22', NULL, 8),
(196, 77079321064, 4873, 'Бауыржан', NULL, '0000-00-00', NULL, NULL),
(197, 77755302101, 3683, 'Гани', NULL, '0000-00-00', NULL, NULL),
(198, 77771148449, 4623, 'Темірлан', NULL, '0000-00-00', NULL, NULL),
(199, 77714919407, 1221, 'USER', NULL, '2020-11-23', NULL, 8),
(200, 77781981068, 4388, 'USER', NULL, '2020-11-23', NULL, 8),
(201, 77754520436, 5571, 'USER', NULL, '2020-11-23', NULL, 8),
(202, 77024396126, 5675, 'USER', NULL, '2020-11-23', NULL, 8),
(203, 77783144237, 8031, 'USER', NULL, '2020-11-23', NULL, 8),
(204, 77752025094, 4656, 'USER', NULL, '2020-11-23', NULL, 8),
(205, 77478690249, 6785, 'USER', NULL, '2020-11-23', NULL, 8),
(206, 77011872793, 4234, 'USER', NULL, '2020-11-23', NULL, 8),
(207, 77070007015, 8177, 'USER', NULL, '2020-11-23', NULL, 8),
(208, 77074126929, 1722, 'USER', NULL, '2020-11-23', NULL, 8),
(209, 77765168561, 8333, 'USER', NULL, '2020-11-23', NULL, 8),
(210, 77053779087, 8864, 'USER', NULL, '2020-11-23', NULL, 8),
(211, 77073969930, 3077, 'USER', NULL, '2020-11-23', NULL, 8),
(212, 77076234647, 9916, 'USER', NULL, '2020-11-23', NULL, 8),
(213, 77025244094, 1212, 'USER', NULL, '2020-11-23', NULL, 8),
(214, 77476333823, 1313, 'USER', NULL, '2020-11-23', NULL, 8),
(215, 77784281541, 5483, 'USER', NULL, '2020-11-23', NULL, 8),
(216, 77086954495, 3644, 'USER', NULL, '2020-11-23', NULL, 8),
(217, 77075072509, 5829, 'USER', NULL, '2020-11-23', NULL, 8),
(218, 77789424347, 3080, 'Галымжан ', NULL, '0000-00-00', NULL, NULL),
(219, 77055690811, 3311, 'USER', NULL, '2020-11-23', NULL, 8),
(220, 77775637698, 7647, 'USER', NULL, '2020-11-23', NULL, 8),
(221, 77770019393, 3980, 'USER', NULL, '2020-11-23', NULL, 8),
(222, 77057689699, 5380, 'USER', NULL, '2020-11-23', NULL, 8),
(223, 77078482098, 6744, ' Бекарыс ', NULL, '0000-00-00', NULL, NULL),
(224, 7074321999, 8018, 'USER', NULL, '2021-02-16', NULL, 8),
(225, 7774321199, 5675, 'USER', NULL, '2021-02-16', NULL, 8);

-- --------------------------------------------------------

--
-- Структура таблицы `user_autor`
--

CREATE TABLE `user_autor` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `autor_name` text NOT NULL,
  `logo` text,
  `logo_txt` text,
  `info` text,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `user_autor`
--

INSERT INTO `user_autor` (`id`, `user_id`, `autor_name`, `logo`, `logo_txt`, `info`, `date`) VALUES
(1, 3, 'Рсалиев Досбол', NULL, 'РД', NULL, NULL),
(2, 4, 'Мұхит Нұрданұлы', NULL, 'МН', NULL, NULL),
(3, 1, 'Абрайм Айдос', NULL, 'АА', NULL, NULL),
(4, NULL, 'Сабырбеков Бақытбай', NULL, 'СБ', NULL, NULL),
(5, NULL, 'Бақтығұлова Арай', NULL, 'БА', NULL, NULL),
(6, NULL, 'Дінислам Нұрланұлы', NULL, 'ДН', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `user_info`
--

CREATE TABLE `user_info` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `surname` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `logo` text,
  `logo_txt` text,
  `phone2` bigint(11) DEFAULT NULL,
  `user_date` date DEFAULT NULL,
  `sex` int(1) DEFAULT NULL,
  `upd_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `user_info`
--

INSERT INTO `user_info` (`id`, `user_id`, `surname`, `email`, `logo`, `logo_txt`, `phone2`, `user_date`, `sex`, `upd_date`) VALUES
(1, 1, 'Abraim', 'adik.gh99@gmail.com', NULL, 'АА', NULL, NULL, 1, NULL);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `autor`
--
ALTER TABLE `autor`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `autor_file`
--
ALTER TABLE `autor_file`
  ADD PRIMARY KEY (`id`),
  ADD KEY `autor_file_id` (`autor_id`);

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_status_id` (`status_id`);

--
-- Индексы таблицы `cours`
--
ALTER TABLE `cours`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cours_autor_id` (`autor_id`),
  ADD KEY `cours_status_id` (`status_id`),
  ADD KEY `cours_category_id` (`category_id`);

--
-- Индексы таблицы `cours_block`
--
ALTER TABLE `cours_block`
  ADD PRIMARY KEY (`id`),
  ADD KEY `block_cours_id` (`cours_id`),
  ADD KEY `block_status_id` (`status_id`);

--
-- Индексы таблицы `cours_item`
--
ALTER TABLE `cours_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_block_id` (`block_id`),
  ADD KEY `item_cours_id` (`cours_id`),
  ADD KEY `item_status_id` (`status_id`);

--
-- Индексы таблицы `cours_item_info`
--
ALTER TABLE `cours_item_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cours_item_info_item_id` (`item_id`);

--
-- Индексы таблицы `cours_sub`
--
ALTER TABLE `cours_sub`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cours_sub_cours_id` (`cours_id`),
  ADD KEY `cours_sub_status_id` (`status_id`),
  ADD KEY `cours_sub_user_id` (`user_id`);

--
-- Индексы таблицы `cours_sub_info`
--
ALTER TABLE `cours_sub_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_info_cours_id` (`cours_id`),
  ADD KEY `item_info_item_id` (`cours_item_id`),
  ADD KEY `item_info_user_id` (`user_id`);

--
-- Индексы таблицы `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `phone` (`phone`),
  ADD KEY `user_status_id` (`status_id`);

--
-- Индексы таблицы `user_autor`
--
ALTER TABLE `user_autor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_autor_user_id` (`user_id`);

--
-- Индексы таблицы `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_info_user_id` (`user_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `autor`
--
ALTER TABLE `autor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `autor_file`
--
ALTER TABLE `autor_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `cours`
--
ALTER TABLE `cours`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT для таблицы `cours_block`
--
ALTER TABLE `cours_block`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT для таблицы `cours_item`
--
ALTER TABLE `cours_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=326;

--
-- AUTO_INCREMENT для таблицы `cours_item_info`
--
ALTER TABLE `cours_item_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `cours_sub`
--
ALTER TABLE `cours_sub`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=235;

--
-- AUTO_INCREMENT для таблицы `cours_sub_info`
--
ALTER TABLE `cours_sub_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=578;

--
-- AUTO_INCREMENT для таблицы `status`
--
ALTER TABLE `status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=226;

--
-- AUTO_INCREMENT для таблицы `user_autor`
--
ALTER TABLE `user_autor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `user_info`
--
ALTER TABLE `user_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `category`
--
ALTER TABLE `category`
  ADD CONSTRAINT `category_status_id` FOREIGN KEY (`status_id`) REFERENCES `status` (`id`) ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `cours`
--
ALTER TABLE `cours`
  ADD CONSTRAINT `cours_autor_id` FOREIGN KEY (`autor_id`) REFERENCES `user_autor` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `cours_category_id` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `cours_status_id` FOREIGN KEY (`status_id`) REFERENCES `status` (`id`) ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `cours_block`
--
ALTER TABLE `cours_block`
  ADD CONSTRAINT `block_cours_id` FOREIGN KEY (`cours_id`) REFERENCES `cours` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `block_status_id` FOREIGN KEY (`status_id`) REFERENCES `status` (`id`) ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `cours_item`
--
ALTER TABLE `cours_item`
  ADD CONSTRAINT `item_block_id` FOREIGN KEY (`block_id`) REFERENCES `cours_block` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `item_cours_id` FOREIGN KEY (`cours_id`) REFERENCES `cours` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `item_status_id` FOREIGN KEY (`status_id`) REFERENCES `status` (`id`) ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `cours_item_info`
--
ALTER TABLE `cours_item_info`
  ADD CONSTRAINT `cours_item_info_item_id` FOREIGN KEY (`item_id`) REFERENCES `cours_item` (`id`) ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `cours_sub`
--
ALTER TABLE `cours_sub`
  ADD CONSTRAINT `cours_sub_cours_id` FOREIGN KEY (`cours_id`) REFERENCES `cours` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `cours_sub_status_id` FOREIGN KEY (`status_id`) REFERENCES `status` (`id`),
  ADD CONSTRAINT `cours_sub_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `cours_sub_info`
--
ALTER TABLE `cours_sub_info`
  ADD CONSTRAINT `item_info_cours_id` FOREIGN KEY (`cours_id`) REFERENCES `cours` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `item_info_item_id` FOREIGN KEY (`cours_item_id`) REFERENCES `cours_item` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `item_info_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_status_id` FOREIGN KEY (`status_id`) REFERENCES `status` (`id`) ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `user_autor`
--
ALTER TABLE `user_autor`
  ADD CONSTRAINT `user_autor_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `user_info`
--
ALTER TABLE `user_info`
  ADD CONSTRAINT `user_info_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
