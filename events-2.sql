-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2023. Okt 30. 11:13
-- Kiszolgáló verziója: 10.4.18-MariaDB
-- PHP verzió: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `events`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `name` varchar(99) NOT NULL,
  `date` date NOT NULL,
  `location` varchar(99) NOT NULL,
  `image` mediumblob DEFAULT NULL,
  `type` varchar(99) NOT NULL,
  `description` varchar(400) NOT NULL,
  `creator` int(11) NOT NULL,
  `ispublic` tinyint(1) NOT NULL,
  `image_path` varchar(999) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `events`
--

INSERT INTO `events` (`id`, `name`, `date`, `location`, `image`, `type`, `description`, `creator`, `ispublic`, `image_path`) VALUES
INSERT INTO `events` (`id`, `name`, `date`, `location`, `image`, `type`, `description`, `creator`, `ispublic`, `image_path`) VALUES
(14, 'Event created by User02 - MODIFY2', '2023-10-27', 'Szeged és környéke', NULL, 'Gastro', 'Description of Event created by User02 - MODIFY2 - Donec scelerisque nisl id massa aliquam, nec elementum tortor viverra. Nulla scelerisque aliquet pellentesque. Nam vel gravida purus, eu gravida velit.', 7, 1, 'images/XqSlyRPrLaqrGMwLYLYvdX6YgNqN7kk1xT8g6S5Z.jpg');
INSERT INTO `events` (`id`, `name`, `date`, `location`, `image`, `type`, `description`, `creator`, `ispublic`, `image_path`) VALUES
INSERT INTO `events` (`id`, `name`, `date`, `location`, `image`, `type`, `description`, `creator`, `ispublic`, `image_path`) VALUES
(18, 'Test Image by Path', '2023-10-29', 'Test Image by Path', NULL, 'Education', 'Test Image by Path', 7, 1, 'images/lkDeryA03xU2YavoCgF8pzV5dLIajV8MyEvh3Ehk.jpg');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `joining`
--

CREATE TABLE `joining` (
  `id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `event` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `joining`
--

INSERT INTO `joining` (`id`, `user`, `event`) VALUES
(11, 7, 13),
(12, 6, 15),
(15, 8, 14),
(17, 6, 14),
(19, 8, 13);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `reading`
--

CREATE TABLE `reading` (
  `id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `event` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `reading`
--

INSERT INTO `reading` (`id`, `user`, `event`) VALUES
(8, 6, 15);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(99) NOT NULL,
  `email` varchar(99) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(18) NOT NULL,
  `birthday` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `phone`, `birthday`) VALUES
(6, 'Exampe User 01', 'user01@example.com', '$2y$10$YEchY5PnZX0c1sXvZeAYtO6hfN2MackJ7fCxIUX7GqfuiKWeALbk6', '06201111111', '2001-07-13'),
(7, 'Example User 02', 'user02@example.com', '$2y$10$tJ4cgZfccucj0UV90csr/uGJeLOPARzN7NHrAnYvo9esOnrwzs1AC', '06202222222', '1999-05-29'),
(8, 'Example User 03', 'user03@example.com', '$2y$10$TZZGfPj1CcfTRoMKl83g7ufMb8DQZc/xYyUMVOfyzJUoI7uqioWP2', '06203333333', '2003-07-17'),
(9, 'Example User 05', 'user05@example.com', '$2y$10$zi2lOwHDW8mkyOU4t1C8FeEGKpXT/LA02lGS1I91AbM.3jZkS0SA.', '062050adasd', '2023-10-28'),
(10, 'Example User 06', 'user06@example.com', '$2y$10$6zmFyp2njbLa2eQrfT3NjO.C7dKz/phIow7lznNwlT4uzTjqk2VBW', '06206666666', '2023-11-01');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `creator` (`creator`);

--
-- A tábla indexei `joining`
--
ALTER TABLE `joining`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user` (`user`),
  ADD KEY `event` (`event`);

--
-- A tábla indexei `reading`
--
ALTER TABLE `reading`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user` (`user`),
  ADD KEY `event` (`event`);

--
-- A tábla indexei `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT a táblához `joining`
--
ALTER TABLE `joining`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT a táblához `reading`
--
ALTER TABLE `reading`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT a táblához `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `events`
--
ALTER TABLE `events`
  ADD CONSTRAINT `events_ibfk_1` FOREIGN KEY (`creator`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Megkötések a táblához `joining`
--
ALTER TABLE `joining`
  ADD CONSTRAINT `joining_ibfk_1` FOREIGN KEY (`user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `joining_ibfk_2` FOREIGN KEY (`event`) REFERENCES `events` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Megkötések a táblához `reading`
--
ALTER TABLE `reading`
  ADD CONSTRAINT `reading_ibfk_1` FOREIGN KEY (`user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reading_ibfk_2` FOREIGN KEY (`event`) REFERENCES `events` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;