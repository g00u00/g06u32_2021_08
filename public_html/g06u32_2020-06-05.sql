-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Июл 05 2020 г., 12:16
-- Версия сервера: 5.5.53-0ubuntu0.14.04.1
-- Версия PHP: 5.5.9-1ubuntu4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `g06u32`
--

-- --------------------------------------------------------

--
-- Структура таблицы `db_list`
--

CREATE TABLE IF NOT EXISTS `db_list` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `db_variable_1` varchar(255) NOT NULL,
  `db_variable_2` decimal(10,0) NOT NULL,
  `db_variable_3` decimal(10,0) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=29 ;

--
-- Дамп данных таблицы `db_list`
--

INSERT INTO `db_list` (`id`, `db_variable_1`, `db_variable_2`, `db_variable_3`) VALUES
(1, '1', 2, 3),
(2, '1', 2, 3),
(3, '1', 2, 3),
(4, '1', 2, 3),
(5, '1', 2, 3),
(6, '1', 2, 3),
(7, '1', 2, 3),
(8, '1', 2, 3),
(9, '1', 2, 3),
(10, '1', 2, 3),
(11, '1', 2, 3),
(12, '1', 2, 3),
(13, '1', 2, 3),
(14, '1', 2, 3),
(15, '1', 2, 3),
(16, '1', 2, 3),
(17, '1', 2, 3),
(18, '1', 2, 3),
(19, '1', 2, 3),
(20, '1', 2, 30),
(21, '11', 26, 0),
(22, '12', 26, 0),
(23, '1', 2, 0),
(24, '1', 2, 0),
(25, '1', 2, 0),
(26, '1', 2, 0),
(27, '1', 2, 0),
(28, '457', 123, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `form_processing`
--

CREATE TABLE IF NOT EXISTS `form_processing` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `qs_file_name` varchar(255) NOT NULL,
  `qs_file_price` decimal(10,0) NOT NULL,
  `qs_file_amount` int(10) unsigned NOT NULL,
  `qs_file_type` varchar(255) NOT NULL,
  `qs_file_date` date NOT NULL,
  `qs_file_time` time NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- Дамп данных таблицы `form_processing`
--

INSERT INTO `form_processing` (`id`, `qs_file_name`, `qs_file_price`, `qs_file_amount`, `qs_file_type`, `qs_file_date`, `qs_file_time`) VALUES
(1, '1', 100, 1, 'Расходы', '2020-03-06', '16:59:44'),
(2, '2', 200, 5, 'Доходы', '2020-03-06', '17:00:27'),
(3, '12', 3, 3, 'Расходы', '2020-03-09', '20:36:33'),
(4, 'ASDF', 3, 5, 'Расходы', '2020-03-13', '14:28:28'),
(5, 'ETERT', 5, 7, 'Доходы', '2020-03-13', '14:28:45'),
(6, '01', 1, 2, 'Доходы', '2020-03-15', '21:17:40'),
(7, '2', 3, 4, 'Доходы', '2020-03-16', '10:08:55'),
(8, '1', 2, 3, 'Доходы', '2020-03-16', '10:08:56'),
(9, 'fhm', 6, 5, 'Расходы', '2020-03-16', '10:09:00'),
(10, 'Билет', 3000, 2, 'Расходы', '2020-03-16', '10:09:50'),
(11, 'ty', 2, 2, 'Доходы', '2020-03-16', '13:29:02'),
(12, '11', 0, 0, 'Доходы', '2020-03-21', '13:32:31'),
(13, 'Lef', 10, 3, 'Доходы', '2020-03-22', '02:55:20'),
(14, '333', 10, 10, 'Доходы', '2020-03-30', '11:20:58'),
(15, '11', 2, 3, 'Доходы', '2020-03-30', '18:57:40'),
(16, '11', 2, 3, 'Доходы', '2020-03-30', '19:19:56'),
(17, 'yhjj', 1, 2, 'Доходы', '2020-04-06', '13:53:05'),
(18, '1', 1, 1, 'Доходы', '2020-05-25', '08:59:12'),
(19, 'футболка', 0, 0, 'Доходы', '2020-06-15', '11:30:17');

-- --------------------------------------------------------

--
-- Структура таблицы `py_page_visits`
--

CREATE TABLE IF NOT EXISTS `py_page_visits` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `page_id` int(10) unsigned NOT NULL,
  `page_title` varchar(255) NOT NULL,
  `page_ip` varchar(255) NOT NULL,
  `page_date` date NOT NULL,
  `page_time` time NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `py_page_visits`
--

INSERT INTO `py_page_visits` (`id`, `page_id`, `page_title`, `page_ip`, `page_date`, `page_time`) VALUES
(1, 20, 'Первая страница', '85.140.5.192', '2020-07-05', '12:14:12'),
(2, 5, 'Диграммы', '85.140.5.192', '2020-07-05', '12:14:16'),
(3, 10, 'bash', '85.140.5.192', '2020-07-05', '12:14:34'),
(4, 5, 'Диграммы', '85.140.5.192', '2020-07-05', '12:14:40');

-- --------------------------------------------------------

--
-- Структура таблицы `qs_shop`
--

CREATE TABLE IF NOT EXISTS `qs_shop` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `qs_shop_name` varchar(255) NOT NULL,
  `qs_shop_price` decimal(10,0) NOT NULL,
  `qs_shop_amount` int(10) unsigned NOT NULL,
  `qs_shop_type` varchar(255) NOT NULL,
  `qs_shop_date` date NOT NULL,
  `qs_shop_time` time NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `requests`
--

CREATE TABLE IF NOT EXISTS `requests` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `item_name` varchar(2000) NOT NULL,
  `item_type` enum('Мебель и предметы интерьера','Бытовая техника','Канцелярские товары и расходные материалы','Части и принадлежности вычислительной и копировальной техники','Вычислительная и копировальная техника, сетевое оборудование и оборудование для связи') DEFAULT NULL,
  `priority` enum('1','2','3') DEFAULT NULL,
  `departnment_number` int(10) unsigned NOT NULL,
  `purchasing_department_name` varchar(2000) NOT NULL,
  `measure` varchar(200) NOT NULL,
  `price` double NOT NULL,
  `real_price` double NOT NULL,
  `initial_or_max_contract_price` double NOT NULL,
  `yearly_quantity` int(10) unsigned NOT NULL,
  `request_download_date` date NOT NULL,
  `planned_buy_date` date NOT NULL,
  `planned_contract_signing_date` date NOT NULL,
  `planned_date_or_period_of_procurement_notice` date NOT NULL,
  `planned_contract_execution_date` date NOT NULL,
  `contract_conclusion_date` date NOT NULL,
  `contract_execution_date` date NOT NULL,
  `request_status` enum('актуальна','отменена','выполнена') DEFAULT NULL,
  `purchase_status` enum('актуальна','оформлен договор','полностью выполнена') DEFAULT NULL,
  `purchase_way` varchar(2000) NOT NULL,
  `electronic_purchase` enum('да','нет') DEFAULT NULL,
  `FP_expense_item` varchar(2000) NOT NULL,
  `fund_source` enum('Центральны бюджет','ПДД подразделения') DEFAULT NULL,
  `need_explanation` varchar(2000) NOT NULL,
  `note` varchar(2000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Дамп данных таблицы `requests`
--

INSERT INTO `requests` (`id`, `item_name`, `item_type`, `priority`, `departnment_number`, `purchasing_department_name`, `measure`, `price`, `real_price`, `initial_or_max_contract_price`, `yearly_quantity`, `request_download_date`, `planned_buy_date`, `planned_contract_signing_date`, `planned_date_or_period_of_procurement_notice`, `planned_contract_execution_date`, `contract_conclusion_date`, `contract_execution_date`, `request_status`, `purchase_status`, `purchase_way`, `electronic_purchase`, `FP_expense_item`, `fund_source`, `need_explanation`, `note`) VALUES
(1, 'Кресло компьютерное', 'Мебель и предметы интерьера', '1', 1, 'Подразделение ОСУП факультета экономики', 'шт', 3500, 4000, 8000, 2, '2020-02-15', '2020-02-25', '2020-02-28', '2020-02-23', '2020-03-05', '2020-03-03', '2020-03-05', 'актуальна', 'актуальна', 'онлайн', 'да', 'статья 6', 'Центральны бюджет', 'требуется замена стульев в деканате', 'предпочтительный цвет - синий'),
(2, 'ЖК 22" Офисный, для оснащения типовых р/м', 'Вычислительная и копировальная техника, сетевое оборудование и оборудование для связи', '1', 1, 'Подразделение ОСУП факультета экономики', 'шт', 5000, 4900, 5500, 1, '2020-03-15', '2020-03-25', '2020-03-26', '2020-02-23', '2020-04-04', '2020-04-06', '2020-04-04', 'актуальна', 'актуальна', 'онлайн', 'да', 'статья 6', 'Центральны бюджет', 'требуется новый монитор большей диагонали', ' '),
(3, 'Компьютер офисный', 'Вычислительная и копировальная техника, сетевое оборудование и оборудование для связи', '2', 2, 'Подразделение факультета информатики, математики и компьютерных наук', 'шт', 30000, 35000, 190000, 5, '2020-02-02', '2020-02-10', '2020-02-21', '2020-02-23', '2020-02-27', '2020-03-01', '2020-03-01', 'актуальна', 'оформлен договор', 'онлайн', 'да', 'статья 6', 'Центральны бюджет', 'закупка компьютеров ввиду планового обновления техники', ' '),
(4, 'Бумага для ксерокса А4', 'Канцелярские товары и расходные материалы', '3', 2, 'Подразделение факультета менеджмента', 'шт', 300, 350, 7000, 20, '2020-02-02', '2020-02-10', '2020-02-21', '2020-02-23', '2020-02-27', '2020-03-01', '2020-03-01', 'актуальна', 'оформлен договор', 'онлайн', 'да', 'статья 6', 'ПДД подразделения', 'закончилась бумага в принтерах', ' '),
(5, 'Карандаши простые', 'Канцелярские товары и расходные материалы', '3', 2, 'Подразделение факультета менеджмента', 'шт', 100, 90, 10000, 100, '2020-03-02', '2020-03-10', '2020-03-15', '2020-03-15', '2020-03-21', '2020-03-27', '2020-03-27', 'актуальна', 'оформлен договор', 'онлайн', 'да', 'статья 6', 'ПДД подразделения', 'закончилась канцелярские принадлежности', ' '),
(6, 'hfghfg', '', '', 0, 'fghf', 'hfgh', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, '', NULL, '', NULL, '', ''),
(7, 'dfgdf', '', NULL, 0, '', '', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, '', NULL, '', NULL, '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `shop`
--

CREATE TABLE IF NOT EXISTS `shop` (
  `shop_id` int(11) NOT NULL AUTO_INCREMENT,
  `shop_lev_1` varchar(256) DEFAULT NULL,
  `shop_lev_2` varchar(256) DEFAULT NULL,
  `shop_name` varchar(256) DEFAULT NULL,
  `shop_artikul` varchar(256) DEFAULT NULL,
  `shop_img` varchar(64) DEFAULT NULL,
  `shop_price` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`shop_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=25 ;

--
-- Дамп данных таблицы `shop`
--

INSERT INTO `shop` (`shop_id`, `shop_lev_1`, `shop_lev_2`, `shop_name`, `shop_artikul`, `shop_img`, `shop_price`) VALUES
(13, 'Щитовое оборудование', 'Щиты распределительные', 'Щит распределительный навесной ЩРн-П-4 IP30 пластиковый белый 01', '10001', '1_1.png', 60.00),
(14, 'Щитовое оборудование', 'Щиты распределительные', 'Щит распределительный навесной ЩРн-П-4 IP30 пластиковый белый 02', '10002', '1_2.png', 80.00),
(15, 'Щитовое оборудование', 'Щиты распределительные', 'Щит распределительный навесной ЩРн-П-4 IP30 пластиковый белый 03', '10003', '1_3.png', 100.00),
(16, 'Щитовое оборудование', 'Щиты распределительные', 'Щит распределительный навесной ЩРн-П-4 IP30 пластиковый белый 03', '10004', '1_4.png', 160.00),
(17, 'Щитовое оборудование', 'Щиты распределительные', 'Щит распределительный навесной ЩРн-П-4 IP30 пластиковый белый 05', '10005', '1_5.png', 180.00),
(18, 'Щитовое оборудование', 'Щиты распределительные', 'Щит распределительный навесной ЩРн-П-4 IP30 пластиковый белый 06', '10006', '1_6.png', 170.00),
(19, 'Щитовое оборудование', 'Щиты распределительные', 'Щит распределительный навесной ЩРн-П-4 IP30 пластиковый белый 07', '10007', '1_7.png', 160.00),
(20, 'Щитовое оборудование', 'Щиты распределительные', 'Щит распределительный навесной ЩРн-П-4 IP30 пластиковый белый 08', '10008', '1_8.png', 120.00),
(21, 'Щитовое оборудование', 'Аппараты защиты', 'Выключатель дифференциального тока  001', '200001', 'uso_002.jpg', 1260.00),
(22, 'Щитовое оборудование', 'Аппараты защиты', 'Выключатель дифференциального тока  002', '200001', 'uso_003.jpg', 1360.00),
(23, 'Щитовое оборудование', 'Аппараты защиты', 'Выключатель дифференциального тока  003', '200001', 'uso_004.jpg', 1760.00),
(24, 'Щитовое оборудование', 'Аппараты защиты', 'Выключатель дифференциального тока  004', '200001', 'uso_005.jpg', 1160.00);

-- --------------------------------------------------------

--
-- Структура таблицы `sql_pages`
--

CREATE TABLE IF NOT EXISTS `sql_pages` (
  `page_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `page_prior_navig` int(10) DEFAULT NULL,
  `page_title` varchar(255) NOT NULL,
  `page_keywords` varchar(255) NOT NULL,
  `page_content` text NOT NULL,
  PRIMARY KEY (`page_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- Дамп данных таблицы `sql_pages`
--

INSERT INTO `sql_pages` (`page_id`, `page_prior_navig`, `page_title`, `page_keywords`, `page_content`) VALUES
(1, 750, 'Форма(из базы)', 'Ключевые слова страницы с формой', '<form  action="./py_sql_pages.py"   target=''_self'' method=''get''>\n<input type="Hidden" name="function" value="page">\n<input type="Hidden" name="page_id" value="2">\n<input type="Hidden" name="file_name" value="qs_file.txt" >\n<p>\nНазвание: <input type="Text" name="qs_name" value=""   size=20 >\nЦена: <input type="Text"  name="qs_price" value="0"    size=6 >\nКоличество: <input type="Text"  name="qs_amount" value="0"    size=6 >\nТип:<select name="qs_type">\n    <OPTION value="Доходы">Доходы</OPTION> \n    <OPTION value="Расходы">Расходы</OPTION>\n    <OPTION value="drop">Удалить таблицу и файлы</OPTION>\n    </select>\n</p>\n<p>\n<input type="reset"  name="reset" value="Обновить">\n<input type="submit" name="submit" value="Отправить">\n</p>\n</form>\n'),
(2, 749, 'Форма (обработка и анализ)', 'Ключевые слова обработки формы', ''),
(3, 650, 'Лабораторная работа', 'Ключевые слова лабораторной работы', ''),
(4, 600, 'CGI', 'cgi-тестирование', ''),
(5, 500, 'Диграммы', 'Ключевые слова диаграмм', ''),
(6, 550, 'Магазин', 'Ключевые слова магазина', ''),
(7, 540, 'МагазинОбработка ', 'Формирование заказа', 'Содержание формирования заказа'),
(8, 700, 'ЛР(файл)', 'В файл, из файла, анализируем', '<!-- В файл, из файла, анализируем-->'),
(9, 699, 'ЛР(база)', 'В базу, из базы, анализируем', '<!-- В базу, из базы, анализируем-->'),
(10, 760, 'bash', 'bash', '<h2>Содержание страницы</h2>\r\n<ul>\r\n    <li><a href="#ls">Представление содержания элементов файловой системы (ls)</a></li>\r\n    <li><a href="#mkdir">Создание и модифицирование сущностей (mkdir, mv, rm, cp)</a></li>\r\n</ul>\r\n<form action="#" method="get" target="_blank">\r\n    <h3 id="ls">Представление содержания элементов файловой системы (ls)</h3>\r\n        <p>В цвете показать подробное описание всех сущностей домашнего раздела\r\n        <br><a href="http://g06u32.nn2000.info/img/ls_1.jpg" target="_self"><img src="http://g06u32.nn2000.info/img/ls_1.jpg" width="300"></a>\r\n        </p>\r\n        <p>Показать содержание раздела cgi-bin с отражением особенностей представления сущностей типа папка, файл и др.\r\n        <br><a href="http://g06u32.nn2000.info/img/ls_3.jpg" target="_self"><img src="http://g06u32.nn2000.info/img/ls_3.jpg" width="300"></a>\r\n        <p>Показать содержание   public_html  с реверсивной сортировкой сущностей  по времени последнего изменения\r\n        <br><a href="http://g06u32.nn2000.info/img/ls_2.jpg" target="_self"> <img src="http://g06u32.nn2000.info/img/ls_2.jpg"  width="300"></a>\r\n        </p>\r\n    <p>Количество баллов за задания: <input type="number" name="ls" value="3"></p>\r\n\r\n    <h3 id="mkdir">Создание и модифицирование сущностей (mkdir, mv, rm, cp)</h3>\r\n        <p> Cоздать ~/public_html/bash/r/r_1/r_1_01 <br>Cоздать ~/public_html/bash/r/r_1/r_1_02 <br>Скопировать r_1  в r_2\r\n        <br><a href="http://g06u32.nn2000.info/img/mkdir_1.jpg" target="_self">  <img src="http://g06u32.nn2000.info/img/mkdir_1.jpg" width="300"></a>\r\n        </p>\r\n        <p>Рекурсивно показать наличие созданных сущностей (можно начиная с r2)\r\n        <br><a href="http://g06u32.nn2000.info/img/mkdir_2.jpg" target="_self"><img src="http://g06u32.nn2000.info/img/mkdir_2.jpg" width="300"></a>\r\n        </p>\r\n    <p>Количество баллов за задания: <input type="number" name="mkdir_mv_rm_cp" value="1"></p>\r\n\r\n    <input type="Submit" name="submit" value="Обработать">\r\n</form>'),
(20, 800, 'Первая страница', 'Ключевые слова первой страницы', 'Содержание первой страницы');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
