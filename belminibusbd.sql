-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 16 2022 г., 21:16
-- Версия сервера: 5.7.33
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `belminibusbd`
--
CREATE DATABASE IF NOT EXISTS `belminibusbd` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `belminibusbd`;

-- --------------------------------------------------------

--
-- Структура таблицы `feedbacks`
--

DROP TABLE IF EXISTS `feedbacks`;
CREATE TABLE `feedbacks` (
  `feedback_n` int(11) UNSIGNED NOT NULL,
  `id` int(11) UNSIGNED NOT NULL,
  `message` varchar(240) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `feedbacks`
--

INSERT INTO `feedbacks` (`feedback_n`, `id`, `message`) VALUES
(1, 7, 'Моя проблема это - ауолуцыимфшисоивофысирсилочсишвыимылвоми оыулми фолсиволрми ыволи у ауцоат дыос цуаолдфс овди выыы мр мыроиддгшсшо флсоывфсий ыос лфыс мви шсом ым лс.');

-- --------------------------------------------------------

--
-- Структура таблицы `flights`
--

DROP TABLE IF EXISTS `flights`;
CREATE TABLE `flights` (
  `flight_n` int(11) UNSIGNED NOT NULL,
  `route_id` int(11) NOT NULL,
  `date_` date NOT NULL,
  `driver` varchar(30) NOT NULL,
  `driver_phone` varchar(30) NOT NULL,
  `transport_n` varchar(30) NOT NULL,
  `landing_time` time(6) NOT NULL,
  `arrival_time` time(6) NOT NULL,
  `number_of_seats` int(30) NOT NULL,
  `ticket_price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `flights`
--

INSERT INTO `flights` (`flight_n`, `route_id`, `date_`, `driver`, `driver_phone`, `transport_n`, `landing_time`, `arrival_time`, `number_of_seats`, `ticket_price`) VALUES
(1, 1, '2022-06-23', 'Михайлов Тимофей Маратович', '+375443327507', '6TAX5858', '09:00:00.000000', '11:00:00.000000', 20, 20),
(2, 1, '2022-06-23', 'Зубков Матвей Дмитриевич', '+375447345468', '6TAX5859', '13:00:00.000000', '15:00:00.000000', 20, 20),
(3, 1, '2022-06-01', 'Михайлов Тимофей Маратович', '+375443327507', '6TAX5858', '17:00:00.000000', '19:00:00.000000', 20, 20),
(4, 2, '2022-05-23', 'Кузнецов Даниил Егорович', '+375443183629', '6TAX5860', '07:30:00.000000', '09:30:00.000000', 20, 18),
(5, 2, '2022-06-23', 'Овчинников Артём Романович', '+375442323584', '6TAX5861', '10:00:00.000000', '12:00:00.000000', 20, 18),
(6, 2, '2022-06-23', 'Кузнецов Даниил Егорович', '+375448311951', '6TAX5860', '13:15:00.000000', '15:15:00.000000', 20, 18),
(7, 2, '2022-06-23', 'Овчинников Артём Романович', '+375448628533', '6TAX5861', '18:00:00.000000', '20:00:00.000000', 20, 18),
(8, 3, '2022-06-23', 'Зайцев Марк Владимирович', '+375443812160', '6TAX5862', '15:00:00.000000', '17:00:00.000000', 20, 19),
(11, 4, '2022-06-24', 'Трошин Павел Павлович', '+375446084645', '6TAX5863', '10:00:00.000000', '12:00:00.000000', 20, 20),
(12, 5, '2022-06-24', 'Корнилова Елизавета Ивановна', '+375441393408', '6TAX5864', '14:30:00.000000', '16:30:00.000000', 20, 20),
(13, 6, '2022-06-24', 'Щеглов Александр Тимофеевич', '+375441518902', '6TAX5865', '18:15:00.000000', '20:15:00.000000', 20, 20),
(14, 7, '2022-06-24', 'Коновалов Савелий Романович', '+375445261298', '6TAX5866', '09:00:00.000000', '11:00:00.000000', 20, 20),
(15, 8, '2022-06-24', 'Беляев Михаил Артёмович', '+375449140789', '6TAX5867', '15:00:00.000000', '17:00:00.000000', 20, 18),
(16, 10, '2022-06-24', 'Михайлов Тимофей Маратович', '+375443327507', '6TAX5858', '09:00:00.000000', '11:00:00.000000', 20, 20),
(17, 11, '2022-06-24', 'Зубков Матвей Дмитриевич', '+375447345468', '6TAX5859', '13:00:00.000000', '15:00:00.000000', 20, 20);

-- --------------------------------------------------------

--
-- Структура таблицы `reservation`
--

DROP TABLE IF EXISTS `reservation`;
CREATE TABLE `reservation` (
  `reservation_n` int(11) UNSIGNED NOT NULL,
  `id` int(11) UNSIGNED NOT NULL,
  `flight_n` int(11) UNSIGNED NOT NULL,
  `number_of_reserved_seats` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `reservation`
--

INSERT INTO `reservation` (`reservation_n`, `id`, `flight_n`, `number_of_reserved_seats`) VALUES
(1, 1, 3, 3),
(3, 8, 8, 20),
(4, 8, 4, 10),
(12, 7, 4, 3),
(14, 7, 13, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `routes`
--

DROP TABLE IF EXISTS `routes`;
CREATE TABLE `routes` (
  `route_id` int(11) NOT NULL,
  `landing_city` varchar(100) NOT NULL,
  `landing_address` varchar(100) NOT NULL,
  `arrival_city` varchar(100) NOT NULL,
  `arrival_address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `routes`
--

INSERT INTO `routes` (`route_id`, `landing_city`, `landing_address`, `arrival_city`, `arrival_address`) VALUES
(1, 'Минск', 'Кирова, 2', 'Могилев', 'ост. з-д им. Кирова'),
(2, 'Минск', 'ТЦ Алми', 'Могилев', 'ТЦ Крыница'),
(3, 'Минск', 'ТЦ Алми', 'Могилев', 'ост. Симонова'),
(4, 'Могилев', 'ост. з-д им. Кирова', 'Минск', 'Кирова, 2'),
(5, 'Могилев', 'ТЦ Крыница', 'Минск', 'ТЦ Алми'),
(6, 'Могилев', 'ост. Симонова', 'Минск', 'ТЦ Алми'),
(7, 'Минск', 'Автовокзал Центральный (платформа №12)', 'Витебск', 'Кирова, 2'),
(8, 'Минск', 'Автовокзал Центральный (платформа №12)', 'Витебск', 'ост. Автовокзал'),
(9, 'Минск', 'Автовокзал Центральный (платформа №12)', 'Витебск', 'ул.Кирова 3'),
(10, 'Витебск', 'Автовокзал платформа №1', 'Минск', 'ЖД вокзал'),
(11, 'Витебск', 'ост. Автовокзал', 'Минск', 'Автовокзал Центральный (платформа №12)'),
(12, 'Витебск', 'Автовокзал платформа №1', 'Минск', 'ост. \"Вокзал\"'),
(13, 'Минск', 'Автовокзал Центральный ул.Бобруйская 6', 'Гродно', 'а/о Автовокзал'),
(14, 'Минск', 'Центральный Автовокзал', 'Гродно', 'Жд вокзал'),
(15, 'Минск', 'Центральный Автовокзал', 'Гродно', 'ПТ Тринити'),
(16, 'Гродно', 'ПТ Тринити', 'Минск', 'Центральный Автовокзал'),
(17, 'Гродно', 'мкр-н Девяткова', 'Минск', 'Автовокзал Центральный ул.Бобруйская 6'),
(18, 'Гродно', 'ж/д Вокзал', 'Минск', 'Автовокзал Центральный ул.Бобруйская 6'),
(19, 'Минск', 'ост. ул. Бобруйская, 21', 'Бобруйск', 'Вокзал (парковка)'),
(20, 'Бобруйск', 'Вокзал (парковка)', 'Минск', 'ул. Бобруйская, 19'),
(21, 'Минск', 'ост. Бобруйская 9 БГУ филиал', 'Молодечно', 'маг. Домашний'),
(22, 'Минск', 'ост. Бобруйская 9 БГУ филиал', 'Молодечно', 'Автовокзал'),
(23, 'Минск', 'Автовокзал Центральный ул.Бобруйская 6', 'Лида', 'Лида, автовокзал'),
(24, 'Минск', 'Центральный Автовокзал', 'Лида', 'гипермаркет Евроопт'),
(25, 'Лида', 'гипермаркет Евроопт', 'Минск', 'Автовокзал Центральный ул.Бобруйская 6'),
(26, 'Минск', 'Автовокзал Центральный ул.Бобруйская 6', 'Слуцк', 'Автовокзал Слуцк'),
(27, 'Слуцк', 'Автовокзал Слуцк', 'Минск', 'Автовокзал Центральный ул.Бобруйская 6'),
(28, 'Минск', 'ост. м. Институт культуры', 'Волковыск', 'Березка'),
(29, 'Минск', 'ост. м. Институт культуры', 'Волковыск', 'Автовокзал'),
(30, 'Волковыск', 'м-н «Аэлита»', 'Минск', 'ост. м. Институт культуры'),
(31, 'Минск', 'Центральный Автовокзал, 6 платформа', 'Рогачев', 'автостанция'),
(32, 'Рогачев', 'автостанция', 'Минск', 'Автовокзал Центральный, 6 платформа'),
(33, 'Минск', 'АС Дружная', 'Новогрудок', 'АВ стоянка такси'),
(34, 'Новогрудок', 'Ресторан Валерия', 'Минск', 'АС Дружная'),
(35, 'Минск', 'ост. Бобруйская 9 БГУ филиал', 'Вилейка', 'Доброном'),
(36, 'Вилейка', 'Автовокзал', 'Минск', 'Автовокзал Центральный'),
(37, 'Минск', 'Толстого', 'Микашевичи', 'ДК Гранит'),
(38, 'Микашевичи', 'ДК Гранит', 'Минск', 'Толстого'),
(39, 'Минск', 'Толстого', 'Житковичи', 'Автостанция'),
(40, 'Житковичи', 'Автостанция', 'Минск', 'Толстого'),
(41, 'Минск', 'АС Дружная', 'Березовка', 'Магазин Центральный'),
(42, 'Березовка', 'Магазин Центральный', 'Минск', 'АС Дружная');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `login` varchar(20) NOT NULL,
  `initials` varchar(50) NOT NULL,
  `telephone` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `login`, `initials`, `telephone`, `email`, `password`) VALUES
(1, 'TestUser', 'Фамилия Имя Отчество', '+375445566655', 'gfgeeee@gmail.com', '1234'),
(2, 'Testuser1', 'Фамилия Имя Отчество', '+375554466644', 'tfrrhtre@gmail.com', '12345'),
(3, 'Khulup12', 'Хулуп Артемий Александрович', '+375445524355', 'a.khulup@gmail.com', '1234'),
(4, 'TestUser3', 'Фамилия Имя Отчество', '+3757778899977', 'cnbcnsw@gmail.com', '1234'),
(5, 'Dima', 'Брикез Дима Отчество', '+3758889987699', 'lcbswdiuwd@gmail.com', '12341234'),
(6, 'LoginWithEmail', 'dfddggd', '+3756247263', 'pochta@gmail.com', '12345'),
(7, 'Khulup', 'Хулуп Артемий Александрович', '+375445524355', 'artem.khulup@gmail.com', '1234'),
(8, '11111', 'Соловьев', '+375296141004', 'solo2002by@mail.ru', '11111'),
(11, 'YandexLogin', 'Лебедев Евгений Сергеевич', '+375446789090', 'bel.minibuses@yandex.ru', '1234'),
(12, 'Xonex', 'select * from feedbacks;', '6141004', 'dmitri.solovyov71@gmail.com', 'stalker iq130');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `feedbacks`
--
ALTER TABLE `feedbacks`
  ADD PRIMARY KEY (`feedback_n`),
  ADD KEY `id` (`id`);

--
-- Индексы таблицы `flights`
--
ALTER TABLE `flights`
  ADD PRIMARY KEY (`flight_n`),
  ADD UNIQUE KEY `flight n` (`flight_n`),
  ADD KEY `route_id` (`route_id`);

--
-- Индексы таблицы `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`reservation_n`),
  ADD UNIQUE KEY `reservation_n` (`reservation_n`),
  ADD KEY `id` (`id`),
  ADD KEY `flight_n` (`flight_n`);

--
-- Индексы таблицы `routes`
--
ALTER TABLE `routes`
  ADD PRIMARY KEY (`route_id`),
  ADD UNIQUE KEY `route_id` (`route_id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `feedbacks`
--
ALTER TABLE `feedbacks`
  MODIFY `feedback_n` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `flights`
--
ALTER TABLE `flights`
  MODIFY `flight_n` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT для таблицы `reservation`
--
ALTER TABLE `reservation`
  MODIFY `reservation_n` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `routes`
--
ALTER TABLE `routes`
  MODIFY `route_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `feedbacks`
--
ALTER TABLE `feedbacks`
  ADD CONSTRAINT `feedbacks_ibfk_1` FOREIGN KEY (`id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `flights`
--
ALTER TABLE `flights`
  ADD CONSTRAINT `flights_ibfk_1` FOREIGN KEY (`route_id`) REFERENCES `routes` (`route_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `reservation_ibfk_1` FOREIGN KEY (`id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reservation_ibfk_2` FOREIGN KEY (`flight_n`) REFERENCES `flights` (`flight_n`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
