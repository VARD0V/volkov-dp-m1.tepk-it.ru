-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Июн 09 2025 г., 11:00
-- Версия сервера: 8.0.42-0ubuntu0.24.04.1
-- Версия PHP: 8.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `volkov-dp_m1`
--

-- --------------------------------------------------------

--
-- Структура таблицы `materials`
--

CREATE TABLE `materials` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `material_type_id` int NOT NULL,
  `price` decimal(18,2) NOT NULL,
  `warehouse` decimal(18,2) NOT NULL,
  `minimum` decimal(18,2) NOT NULL,
  `packaging` decimal(18,2) NOT NULL,
  `unit_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `materials`
--

INSERT INTO `materials` (`id`, `name`, `material_type_id`, `price`, `warehouse`, `minimum`, `packaging`, `unit_id`) VALUES
(1, 'Цельный массив дерева Дуб 1000х600', 1, 7450.00, 1500.00, 500.00, 7.20, 2),
(2, 'Клееный массив дерева Дуб 1000х600 мм', 1, 4520.00, 300.00, 500.00, 7.20, 1),
(3, 'Шпон облицовочный Дуб натуральный 2750х480 мм', 1, 2500.00, 2000.00, 1500.00, 19.80, 1),
(4, 'Фанера 2200х1000 мм', 2, 2245.00, 450.00, 1000.00, 52.80, 1),
(5, 'ДСП 2750х1830 мм', 2, 529.60, 1010.00, 1200.00, 181.08, 1),
(6, 'МДФ 2070х1400 мм', 2, 417.24, 1550.00, 1000.00, 87.00, 1),
(7, 'ДВП 2440х2050 мм', 2, 187.00, 1310.00, 1000.00, 190.00, 1),
(8, 'ХДФ 2800x2070 мм', 2, 370.96, 1400.00, 1200.00, 90.00, 1),
(9, 'Экокожа 140 см', 3, 1600.00, 1200.00, 1500.00, 100.00, 2),
(10, 'Велюр 140 см', 3, 1300.00, 1300.00, 1500.00, 100.00, 2),
(11, 'Шенилл 140 см', 3, 620.00, 950.00, 1500.00, 100.00, 2),
(12, 'Рогожка 140 см', 3, 720.00, 960.00, 1500.00, 100.00, 2),
(13, 'Закаленное стекло 2600х1800 мм', 4, 1148.00, 1000.00, 500.00, 196.56, 1),
(14, 'Металлокаркас для стула', 5, 1100.00, 300.00, 250.00, 5.00, 3),
(15, 'Металлокаркас каркас из профиля с траверсами для стола', 5, 6700.00, 100.00, 100.00, 1.00, 3),
(16, 'Колесо для мебели поворотное', 6, 10.59, 1500.00, 1000.00, 500.00, 3),
(17, 'Газ-лифт', 5, 730.00, 500.00, 250.00, 5.00, 3),
(18, 'Металлическая крестовина для офисных кресел', 5, 2700.00, 500.00, 250.00, 5.00, 3),
(19, 'Пластиковый комплект для стула', 6, 900.00, 300.00, 250.00, 100.00, 3),
(20, 'Кромка ПВХ', 6, 35.80, 1500.00, 1000.00, 100.00, 4),
(21, '123', 1, 123.00, 123.00, 123.00, 123.00, 1),
(22, '321', 1, 321.00, 321.00, 321.00, 321.00, 1),
(23, 'blabla', 1, 555.00, 555.00, 555.00, 555.00, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `material_products`
--

CREATE TABLE `material_products` (
  `id` int NOT NULL,
  `material_id` int NOT NULL,
  `product_id` int NOT NULL,
  `quantity` decimal(18,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `material_products`
--

INSERT INTO `material_products` (`id`, `material_id`, `product_id`, `quantity`) VALUES
(79, 4, 1, 0.85),
(80, 10, 1, 1.50),
(81, 11, 1, 1.50),
(82, 12, 1, 1.50),
(83, 14, 1, 1.00),
(84, 16, 1, 5.00),
(85, 17, 1, 1.00),
(86, 18, 1, 1.00),
(87, 19, 1, 1.00),
(88, 4, 2, 1.25),
(89, 9, 2, 3.04),
(90, 11, 2, 1.50),
(91, 12, 2, 2.50),
(92, 14, 2, 1.00),
(93, 16, 2, 5.00),
(94, 17, 2, 1.00),
(95, 18, 2, 1.00),
(96, 19, 2, 1.00),
(97, 4, 3, 1.85),
(98, 9, 3, 4.22),
(99, 10, 3, 1.50),
(100, 14, 3, 1.00),
(101, 16, 3, 5.00),
(102, 17, 3, 1.00),
(103, 18, 3, 1.00),
(104, 19, 3, 1.00),
(105, 5, 4, 3.33),
(106, 20, 4, 6.00),
(107, 2, 5, 2.90),
(108, 3, 5, 1.70),
(109, 6, 5, 2.70),
(110, 8, 5, 1.80),
(111, 2, 6, 1.70),
(112, 3, 6, 1.60),
(113, 8, 6, 1.80),
(114, 5, 7, 2.00),
(115, 7, 7, 0.80),
(116, 20, 7, 7.00),
(117, 6, 8, 5.95),
(118, 15, 8, 1.00),
(119, 5, 9, 4.30),
(120, 20, 9, 8.60),
(121, 6, 10, 7.65),
(122, 8, 10, 1.05),
(123, 15, 10, 1.00),
(124, 5, 11, 6.40),
(125, 20, 11, 6.20),
(126, 4, 12, 2.55),
(127, 5, 12, 5.20),
(128, 5, 12, 5.22),
(129, 7, 12, 3.59),
(130, 20, 12, 9.40),
(131, 1, 13, 3.50),
(132, 3, 13, 1.50),
(133, 8, 13, 2.10),
(134, 13, 13, 0.80),
(135, 1, 14, 7.70),
(136, 3, 14, 6.50),
(137, 5, 14, 4.50),
(138, 6, 14, 5.70),
(139, 8, 14, 2.30),
(140, 9, 14, 1.74),
(141, 5, 15, 4.20),
(142, 7, 15, 2.21),
(143, 16, 15, 4.00),
(144, 20, 15, 6.50),
(145, 2, 16, 0.40),
(146, 16, 16, 4.00),
(147, 3, 17, 0.70),
(148, 5, 17, 7.65),
(149, 7, 17, 0.80),
(150, 20, 17, 6.30),
(151, 3, 18, 3.20),
(152, 4, 18, 3.50),
(153, 7, 18, 1.60),
(154, 13, 18, 1.60),
(155, 3, 19, 1.30),
(156, 5, 19, 8.20),
(157, 8, 19, 1.30),
(158, 1, 20, 1.80),
(159, 3, 20, 3.50),
(160, 8, 20, 1.65),
(161, 13, 20, 1.60);

-- --------------------------------------------------------

--
-- Структура таблицы `material_types`
--

CREATE TABLE `material_types` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `percent` decimal(18,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `material_types`
--

INSERT INTO `material_types` (`id`, `name`, `percent`) VALUES
(1, 'Дерево', 0.55),
(2, 'Древесная плита', 0.30),
(3, 'Текстиль', 0.15),
(4, 'Стекло', 0.45),
(5, 'Металл', 0.10),
(6, 'Пластик', 0.05);

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `id` int NOT NULL,
  `product_type_id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `article` varchar(255) NOT NULL,
  `price` decimal(18,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `product_type_id`, `name`, `article`, `price`) VALUES
(1, 1, 'Кресло детское цвет Белый и Розовый', '3028272.00', 15324.99),
(2, 1, 'Кресло офисное цвет Черный', '3018556.00', 21443.99),
(3, 1, 'Кресло эргономичное цвет Темно-коричневый', '3549922.00', 24760.00),
(4, 2, 'Полка настольная', '7028048.00', 2670.89),
(5, 3, 'Стеллаж для документов цвет Дуб светлый 854х445х2105 мм', '5759324.00', 24899.00),
(6, 3, 'Стеллаж цвет Белый с ящиками 854х445х2105 мм', '5259474.00', 16150.00),
(7, 3, 'Стеллаж цвет Орех 400х370х2000 мм', '5118827.00', 2860.00),
(8, 4, 'Стол для ноутбука на металлокаркасе 800х600х123 мм', '1029784.00', 14690.00),
(9, 4, 'Стол компьютерный 700х600х500 мм', '1028248.00', 4105.89),
(10, 4, 'Стол компьютерный на металлокаркасе 1400х600х750 мм', '1130981.00', 13899.00),
(11, 4, 'Стол письменный 1100x750x600 мм', '1188827.00', 5148.00),
(12, 4, 'Стол письменный с тумбочкой 4 ящика 1100x750x600 мм', '1029272.00', 15325.00),
(13, 4, 'Стол руководителя письменный цвет Венге 1600x800x764 мм', '1016662.00', 43500.90),
(14, 4, 'Стол руководителя письменный цвет Орех темный 2300x1000x750 мм', '1658953.00', 132500.00),
(15, 5, 'Тумба выкатная 3 ящика', '6033136.00', 3750.00),
(16, 5, 'Тумба офисная для оргтехники', '6115947.00', 2450.00),
(17, 3, 'Узкий пенал стеллаж 5 полок цвет Орех 364х326x2000 мм ', '5559898.00', 8348.00),
(18, 6, 'Шкаф для книг 800x420x2000 мм', '4159043.00', 23390.99),
(19, 6, 'Шкаф для одежды цвет Венге 602x420x2000 мм', '4758375.00', 12035.00),
(20, 6, 'Шкаф-витрина 2 ящика 800x420x2000 мм', '4588376.00', 31991.00);

-- --------------------------------------------------------

--
-- Структура таблицы `product_types`
--

CREATE TABLE `product_types` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `coefficient` decimal(18,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `product_types`
--

INSERT INTO `product_types` (`id`, `name`, `coefficient`) VALUES
(1, 'Кресла', 1.95),
(2, 'Полки', 2.50),
(3, 'Стеллажи', 4.35),
(4, 'Столы', 5.50),
(5, 'Тумбы', 7.60),
(6, 'Шкафы', 6.72);

-- --------------------------------------------------------

--
-- Структура таблицы `units`
--

CREATE TABLE `units` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `units`
--

INSERT INTO `units` (`id`, `name`) VALUES
(1, 'м²'),
(2, 'пог.м'),
(3, 'шт'),
(4, 'м');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `materials`
--
ALTER TABLE `materials`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `materials_index_0` (`material_type_id`),
  ADD KEY `materials_index_1` (`unit_id`);

--
-- Индексы таблицы `material_products`
--
ALTER TABLE `material_products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `material_products_index_0` (`material_id`),
  ADD KEY `material_products_index_1` (`product_id`);

--
-- Индексы таблицы `material_types`
--
ALTER TABLE `material_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `products_index_0` (`product_type_id`);

--
-- Индексы таблицы `product_types`
--
ALTER TABLE `product_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Индексы таблицы `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `materials`
--
ALTER TABLE `materials`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT для таблицы `material_products`
--
ALTER TABLE `material_products`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=162;

--
-- AUTO_INCREMENT для таблицы `material_types`
--
ALTER TABLE `material_types`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT для таблицы `product_types`
--
ALTER TABLE `product_types`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `units`
--
ALTER TABLE `units`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `materials`
--
ALTER TABLE `materials`
  ADD CONSTRAINT `materials_ibfk_1` FOREIGN KEY (`unit_id`) REFERENCES `units` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `materials_ibfk_2` FOREIGN KEY (`material_type_id`) REFERENCES `material_types` (`id`) ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `material_products`
--
ALTER TABLE `material_products`
  ADD CONSTRAINT `material_products_ibfk_1` FOREIGN KEY (`material_id`) REFERENCES `materials` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `material_products_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`product_type_id`) REFERENCES `product_types` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
