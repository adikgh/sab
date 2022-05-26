-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Фев 23 2021 г., 21:26
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
-- База данных: `jeted`
--

-- --------------------------------------------------------

--
-- Структура таблицы `site`
--

CREATE TABLE `site` (
  `id` int(11) NOT NULL,
  `site` varchar(255) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `title_ru` varchar(255) DEFAULT NULL,
  `keyw` varchar(255) DEFAULT NULL,
  `keyw_ru` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `color2` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `site`
--

INSERT INTO `site` (`id`, `site`, `link`, `title`, `title_ru`, `keyw`, `keyw_ru`, `color`, `color2`) VALUES
(1, 'Jeted', NULL, '«JetEd 1.0» ОНЛАЙН-КУРС ОҚЫТУ ҚЫЗМЕТІН КӨРСЕТУ КЕЛІСІМІ', 'ДОГОВОР-ОФЕРТА НА ОКАЗАНИЕ УСЛУГ ПО ОБУЧЕНИЮ НА ОНЛАЙН-КУРСЕ «JetEd 1.0»', NULL, NULL, '#5164F9', '#000');

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `mail` varchar(255) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `name`, `phone`, `mail`, `date`) VALUES
(1, 'dsadasdas', '+7 (707) 432-19-99', 'sdsadasds', '2021-01-11'),
(2, 'dffsd', '+7 (324) 234-23-42', 'fdsfdsfd', '2021-01-17');

-- --------------------------------------------------------

--
-- Структура таблицы `word`
--

CREATE TABLE `word` (
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `txt` text NOT NULL,
  `txt_kz` text NOT NULL,
  `txt_ru` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `word`
--

INSERT INTO `word` (`id`, `type`, `txt`, `txt_kz`, `txt_ru`) VALUES
(2, 'app', 'I have read the contract, I give my consent', '<a href=\"#pop\" class=\"disb_zab\">Келісім шартпен</a> таныстым, өз келесімімді беремін (Белгіні басқанда, шартқа келісім беретінімді растаймын)', 'Я прочитал <a href=\"#pop\" class=\"disb_zab\">договор</a>, даю согласие (cтавя галочку, даю согласие на договор)'),
(5, 'app', 'Request a call', 'Тапсырыс беру', 'Заказать звонок'),
(14, '', 'Your name', 'Толық аты-жөніңіз', 'ФИО'),
(15, '', 'Your number', 'Cіздің нөміріңіз', 'Ваш номер'),
(16, '', 'submit your', 'Өтініш қалдыру', 'Оставить заявку'),
(22, '', 'Order', 'Тапсырыс беру', 'Заказать'),
(23, '', 'Learn more', 'Толығырақ', 'Узнать подробнее'),
(24, '', 'Our services', 'Біздің қызметтер', 'Наш услуги'),
(26, '', 'Request a call', 'Тапсырыс беру', 'Заказать звонок'),
(27, '', 'Close', 'Жабу', 'Закрыть'),
(31, '', 'send', 'Жіберу', 'Отправить'),
(32, '', 'Your mail', 'Cіздің почтаңыз', 'Ваш почта'),
(33, '', 'OFFER AGREEMENT FOR THE RENDERING OF TRAINING SERVICES ON THE ONLINE COURSE \"JetEd 1.0\"', '«JetEd 1.0» ОНЛАЙН-КУРС ОҚЫТУ ҚЫЗМЕТІН КӨРСЕТУ КЕЛІСІМ ШАРТЫ', 'ДОГОВОР-ОФЕРТА НА ОКАЗАНИЕ УСЛУГ ПО ОБУЧЕНИЮ НА ОНЛАЙН-КУРСЕ «JetEd 1.0»'),
(34, '', 'Thank you for the contract!', 'Келісім шарт жасалды ракмет!', 'Спасибо за договор!'),
(35, '', 'Read the contract', 'Келісім шартты оқу', 'Прочитать договор'),
(36, '', 'Almaty city', 'Алматы қаласы', 'город Алматы'),
(37, '', 'y', 'жыл', 'года');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `site`
--
ALTER TABLE `site`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `word`
--
ALTER TABLE `word`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `site`
--
ALTER TABLE `site`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `word`
--
ALTER TABLE `word`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
