-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: srv-db-plesk01.ps.kz:3306
-- Время создания: Дек 03 2020 г., 14:27
-- Версия сервера: 10.2.36-MariaDB
-- Версия PHP: 7.3.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `sabeduca_s`
--

-- --------------------------------------------------------

--
-- Структура таблицы `autor`
--

CREATE TABLE `autor` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `title` text DEFAULT NULL,
  `cl` text DEFAULT NULL,
  `cm` text DEFAULT NULL,
  `bag` text DEFAULT NULL,
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
  `og_img` text DEFAULT NULL,
  `header` text DEFAULT NULL,
  `txt` text DEFAULT NULL,
  `video` text DEFAULT NULL,
  `date_name` text DEFAULT NULL,
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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
