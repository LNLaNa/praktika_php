-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Дек 06 2022 г., 09:32
-- Версия сервера: 5.6.51
-- Версия PHP: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `ln_job`
--

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'design & creative'),
(2, 'marketing'),
(3, 'telemarketing');

-- --------------------------------------------------------

--
-- Структура таблицы `companies`
--

CREATE TABLE `companies` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `companies`
--

INSERT INTO `companies` (`id`, `name`, `logo`) VALUES
(1, 'snack studio', 'img/svg_icon/1.svg'),
(2, 'sunshine comp', 'img/svg_icon/2.svg');

-- --------------------------------------------------------

--
-- Структура таблицы `forms`
--

CREATE TABLE `forms` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_p` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coverletter` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `forms`
--

INSERT INTO `forms` (`id`, `name`, `email`, `link_p`, `coverletter`, `job_id`) VALUES
(1, 'сок', 'knfrkivgn@mail.ru', 'ytjutc', 'dfghj', 1),
(2, 'kllki', 'knfrkivgn@mail.ru', 'jebfef', 'efekifloaekfie', 2),
(3, 'сок', 'knfrkivgn@mail.ru', 'xscdfghj', 'xaesrdtfrtgyhjui', 1),
(4, 'kllki', 'knfrkivgn@mail.ru', 'ytjutc', 'qw3er456', 3),
(5, 'kllki', 'knfrkivgn@mail.ru', 'defrtgy', 'swertyhjukiol', 3),
(6, 'сок', 'knfrkivgn@mail.ru', 'bhvhj', 'jjvjvjvjbhjbg', 4),
(7, 'bj,kfgyh', 'dfvg@mail.ru', 'sdfghyju', 'swderftgyhjuiopppp[][\r\n', 2),
(8, '', '', '', '', 1),
(9, 'rftyuio', 'rt6y7u8i@mail.ru', 'asdfrtgyhjui', 'derftgyhjukilo', 4),
(10, 'wedrftgyhju', 'rt6y7u8i@mail.ru', 'ertgyjukiolp;', 'awerdtuygigbti', 2),
(19, 'jojj', 'jdkhfjdkjsh@mail.ru', 'rgfthm', 'drtfgyhjm', 3),
(20, 'jojj', 'jdkhfjdkjsh@mail.ru', 'sdfgh', 'rtyghuj', 1),
(21, 'kllki', 'knfrkivgn@mail.ru', 'ytjutc', '2we3rtyu', 1),
(22, 'kllki', 'knfrkivgn@mail.ru', 'ytjutc', 'drfgvhbjmkl;', 1),
(23, 'kllki', 'knfrkivgn@mail.ru', 'yfuyuf', 'fdhfhhfh', 1),
(24, 'kllki', 'knfrkivgn@mail.ru', 'hkhjkgh', 'khkhkhkhk', 1),
(25, 'kllki', 'nastyusha.zhuravel@list.ru', 'ttytytututututurtu', 'gjgfvjmbvmbvm ', 1),
(26, 'сок', 'knfrkivgn@mail.ru', 'yflu', 'b /kju3546', 1),
(27, 'eeee', 'nastyusha.zhuravel@list.ru', 'gfhgfh', 'ghfghfghfghfghf', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `jobs`
--

CREATE TABLE `jobs` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nature_id` int(11) NOT NULL,
  `publication` date NOT NULL,
  `vacancy` int(11) NOT NULL,
  `salary` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `jobs`
--

INSERT INTO `jobs` (`id`, `name`, `category_id`, `company_id`, `location`, `nature_id`, `publication`, `vacancy`, `salary`) VALUES
(1, 'web designer', 1, 2, 'California, USA', 1, '2022-12-15', 2, '50k - 120k/y'),
(2, 'web designer', 1, 1, 'California, USA', 2, '2022-12-01', 4, '50k - 80k/y'),
(3, 'marketer', 2, 1, 'California, USA', 1, '2022-11-03', 3, '30k - 50k/y'),
(4, 'Telemarketer', 3, 2, 'California, USA', 2, '2022-11-24', 5, '60k - 100k/y');

-- --------------------------------------------------------

--
-- Структура таблицы `natures`
--

CREATE TABLE `natures` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `natures`
--

INSERT INTO `natures` (`id`, `name`) VALUES
(1, 'full-time'),
(2, 'part-time');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `forms`
--
ALTER TABLE `forms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_id` (`job_id`);

--
-- Индексы таблицы `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `company_id` (`company_id`),
  ADD KEY `nature_id` (`nature_id`);

--
-- Индексы таблицы `natures`
--
ALTER TABLE `natures`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `companies`
--
ALTER TABLE `companies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `forms`
--
ALTER TABLE `forms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT для таблицы `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `natures`
--
ALTER TABLE `natures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `jobs`
--
ALTER TABLE `jobs`
  ADD CONSTRAINT `jobs_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `jobs_ibfk_2` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`),
  ADD CONSTRAINT `jobs_ibfk_3` FOREIGN KEY (`nature_id`) REFERENCES `natures` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
