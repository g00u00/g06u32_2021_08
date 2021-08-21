DROP TABLE IF EXISTS `sql_pages`;

CREATE TABLE IF NOT EXISTS `sql_pages` (
  `page_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `page_prior_navig` int(10) DEFAULT NULL,
  `page_title` varchar(255) NOT NULL,
  `page_keywords` varchar(255) NOT NULL,
  `page_content` text NOT NULL,
  PRIMARY KEY (`page_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

======================================================================
INSERT INTO `sql_pages` (`page_id`, `page_prior_navig`, `page_title`, `page_keywords`, `page_content`) VALUES
(1, 750, 'Форма', 'Ключевые слова страницы с формой', '<form  action="./py_sql_pages.py"   target=''_self'' method=''get''>\n<input type="Hidden" name="function" value="page">\n<input type="Hidden" name="page_id" value="2">\n<input type="Hidden" name="file_name" value="qs_file.txt" >\n<p>\nНазвание: <input type="Text" name="qs_name" value=""   size=20 >\nЦена: <input type="Text"  name="qs_price" value="0"    size=6 >\nКоличество: <input type="Text"  name="qs_amount" value="0"    size=6 >\nТип:<select name="qs_type">\n    <OPTION value="Доходы">Доходы</OPTION> \n    <OPTION value="Расходы">Расходы</OPTION> \n    <OPTION value="drop">Удалить таблицу и файл</OPTION> \n    </select>\n</p>\n<p>\n<input type="reset"  name="reset" value="Обновить">\n<input type="submit" name="submit" value="Отправить">\n<!--<input type="image" src="src.jpg" name="submit" value="submit">-->\n</p>\n</form>\n'),
(2, 749, 'Обработка формы', 'Ключевые слова обработки формы', ''),
(3, 650, 'Лабораторная работа', 'Ключевые слова лабораторной работы', ''),
(4, 600, 'CGI', 'cgi-тестирование', ''),
(5, 500, 'Диграммы', 'Ключевые слова диаграмм', ''),
(6, 550, 'Магазин', 'Ключевые слова магазина', ''),
(20, 800, 'Первая страница', 'Ключевые слова первой страницы', 'Содержание первой страницы');
I
==========================================================================
NSERT INTO `sql_pages` (`page_id`, `page_prior_navig`, `page_title`, `page_keywords`, `page_content`) VALUES
(1, 750, 'Форма', 'Ключевые слова страницы с формой', '<form  action="./py_sql_pages.py"   target=''_self'' method=''get''>\r\n<input type="Hidden" name="function" value="page">\r\n<input type="Hidden" name="page_id" value="2">\r\n<input type="Hidden" name="file_name" value="qs_file.txt" >\r\n<p>\r\nНазвание: <input type="Text" name="qs_name" value=""   size=20 >\r\nЦена: <input type="Text"  name="qs_price" value="0"    size=6 >\r\nКоличество: <input type="Text"  name="qs_amount" value="0"    size=6 >\r\nТип:<select name="qs_type">\r\n    <OPTION value="Доходы">Доходы</OPTION> \r\n    <OPTION value="Расходы">Расходы</OPTION> \r\n    </select>\r\n</p>\r\n<p>\r\n<input type="reset"  name="reset" value="Обновить">\r\n<input type="submit" name="submit" value="Отправить">\r\n<!--<input type="image" src="src.jpg" name="submit" value="submit">-->\r\n</p>\r\n</form>\r\n'),
(2, 749, 'Обработка формы', 'Ключевые слова обработки формы', ''),
(3, 650, 'Лабораторная работа', 'Ключевые слова лабораторной работы', ''),
(4, 600, 'CGI', 'cgi-тестирование', ''),
(5, 500, 'Диграммы', 'Ключевые слова диаграмм', ''),
(6, 550, 'Магазин', 'Ключевые слова магазина', ''),
(20, 800, 'Первая страница', 'Ключевые слова первой страницы', 'Содержание первой страницы');
======================================================================
2018
INSERT INTO `sql_pages` (`page_id`, `page_prior_navig`, `page_title`, `page_keywords`, `page_content`) VALUES
(1, 750, 'Форма', 'Ключевые слова страницы с формой', '<form  action="./py_sql_pages.py"   target=''_self'' method=''get''>\r\n\r\n<input type="Hidden" name="function" value="page">\r\n<input type="Hidden" name="page_id" value="2">\r\n<input type="Hidden" name="file_name" value="qs_file.txt" >\r\n\r\n<p>\r\nНазвание: <input type="Text" name="qs_name" value=""   size=20 >\r\nЦена: <input type="Text"  name="qs_price" value="0"    size=6 >\r\nКоличество: <input type="Text"  name="qs_amount" value="0"    size=6 >\r\nТип: <input type="Text"  name="qs_type" value=""    size=2 >\r\n</p>\r\n\r\n<p>\r\n<input type="reset"  name="reset" value="Обновить">\r\n<input type="submit" name="submit" value="Отправить">\r\n<!--<input type="image" src="src.jpg" name="submit" value="submit">-->\r\n</p>\r\n\r\n</form>'),
(2, 749, 'Обработка формы', 'Ключевые слова для обработки формы', ''),
(3, 650, 'Лабораторная работа', 'Ключевые слова лабораторной работы', ''),
(4, 600, 'CGI', 'cgi-тестирование', ''),
(5, 500, 'Диграммы', 'Ключевые слова для  диаграмм', ''),
(6, 550, 'Магазин', 'ключевые слова магазин', ''),
(20, 800, 'Первая страница', 'Ключевые слова первой страницы', 'Содержание первой страницы');
==============================================================
2019-02-11
INSERT INTO `sql_pages` (`page_id`, `page_prior_navig`, `page_title`, `page_keywords`, `page_content`) VALUES
(1, 750, 'Форма', 'Ключевые слова страницы с формой', '<form  action="./py_sql_pages.py"   target=''_self'' method=''get''>\r\n\r\n<input type="Hidden" name="function" value="page">\r\n<input type="Hidden" name="page_id" value="2">\r\n<input type="Hidden" name="file_name" value="qs_file.txt" >\r\n\r\n<p>\r\n    <br>Введите данные\r\n    <br>Ресурс: <input type="Text" name="qs_name" value=""   size=20 >\r\n    <br>Цена: <input type="Text"  name="qs_price" value="0.00"    size=8 >   100e6 - сброс\r\n    <br>Количество: <input type="Text"  name="qs_amount" value="0"    size=6 >\r\n    <br>Отнесен к:<select name="qs_type">\r\n        <OPTION value="Доходы">Доходы</OPTION> \r\n        <OPTION value="Расходы">Расходы</OPTION> \r\n        </select>\r\n</p>\r\n\r\n<p>\r\n<input type="reset"  name="reset" value="Обновить">\r\n<input type="submit" name="submit" value="Отправить">\r\n<!--<input type="image" src="src.jpg" name="submit" value="submit">-->\r\n</p>\r\n\r\n</form>'),
(2, 749, 'Обработка формы', 'Ключевые слова для обработки формы', ''),
(3, 650, 'Лабораторная работа', 'Ключевые слова лабораторной работы', ''),
(4, 600, 'CGI', 'cgi-тестирование', ''),
(5, 500, 'Диграммы', 'Ключевые слова для  диаграмм', ''),
(6, 555, 'Щитовое оборудование', 'ключевые слова для щитового оборудования', ''),
(7, 551, 'Заказ на оборудование(обработка)', 'Ключевые слова для обработки заказа', '<form  action="./py_sql_pages.py"   target=''_self'' method=''get''>\r\n\r\n<input type="Hidden" name="function" value="page">\r\n<input type="Hidden" name="page_id" value="7">\r\n<input type="Hidden" name="file_name" value="qs_file.txt" >'),
(20, 800, 'Первая страница', 'Ключевые слова первой страницы', 'Обновленное содержание первой страницы');


SELECT `page_title`, COUNT( `page_title` ) FROM `py_page_visits` GROUP BY `page_title` ORDER BY `page_title`
SELECT `page_date`, COUNT( `page_date` ) FROM `py_page_visits` GROUP BY `page_date` ORDER BY `page_date`
SELECT `page_date`, `page_title`, COUNT( `page_date` ) FROM `py_page_visits` GROUP BY `page_date`, `page_title`  ORDER BY `page_date`



CREATE TABLE IF NOT EXISTS `qs_file` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `qs_file_name` varchar(255) NOT NULL,
  `qs_file_price` decimal(10,0) NOT NULL,
  `qs_file_amount` int(10) unsigned NOT NULL,
  `qs_file_type` varchar(255) NOT NULL,
  `qs_file_date` date NOT NULL,
  `qs_file_time` time NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;