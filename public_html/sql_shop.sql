DROP TABLE IF EXISTS `shop`

CREATE TABLE IF NOT EXISTS `shop` (
`shop_id` int(11) NULL auto_increment,
`shop_lev_1` varchar(256)  NULL,
`shop_lev_2` varchar(256)  NULL,
`shop_name` varchar(256) NULL,
`shop_artikul` varchar(256) NULL,
`shop_img` varchar(64)  NULL,
`shop_price` decimal(10,2) default NULL,
PRIMARY KEY  (`shop_id`)
)DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci
; 

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
(24, 'Щитовое оборудование', 'Аппараты защиты', 'Выключатель дифференциального тока  004', '200001', 'uso_005.jpg', 1160.00)
;






SELECT * FROM `shop` GROUP BY `shop_lev_1` ORDER BY `shop_lev_2` , `shop_price` ASC 

SELECT * FROM `shop` WHERE `shop_lev_1` = 'фото' and `shop_lev_2` = 'пейзажи' ORDER BY `shop_price` ASC
SELECT * FROM `shop` WHERE `shop_lev_1` = 'фото' AND `shop_lev_2` = 'пейзажи' ORDER BY `shop`.`shop_price` DESC  
SELECT * FROM `shop` WHERE `page_id`  =  %s""",(page_id))ORDER BY `shop_lev_2` , `shop_lev_2` , `shop_name` ASC 

SELECT `page_title`, COUNT( `page_title` ) FROM `py_page_visits` GROUP BY `page_title` ORDER BY `page_title`