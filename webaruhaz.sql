-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2022. Sze 20. 12:27
-- Kiszolgáló verziója: 10.4.20-MariaDB
-- PHP verzió: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `webaruhaz`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `termek`
--

CREATE TABLE `termek` (
  `id` int(10) UNSIGNED NOT NULL,
  `termek_neve` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `kategoria` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `termek_ara` int(10) UNSIGNED NOT NULL,
  `termek_kepe_nagy` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `termek_kepe_kicsi` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `mennyiseg` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `termek`
--

INSERT INTO `termek` (`id`, `termek_neve`, `kategoria`, `termek_ara`, `termek_kepe_nagy`, `termek_kepe_kicsi`, `mennyiseg`) VALUES
(1, 'Age of Empires III Definitive Edition Steam PC key', 'RTS', 20, '', '', 0),
(2, 'Barotrauma', 'Sci-fi', 10, '', '', 0),
(3, 'Dead by Daylight', 'Horror', 15, '', '', 0),
(4, 'Post. Scriptum', 'Shooter', 15, '', '', 0),
(5, 'Stellaris', 'RTS', 14, '', '', 0),
(6, 'Garry\'s mod', 'Sandbox', 9, '', '', 0),
(7, 'Red Dead Redemption II', 'Single Player', 20, '', '', 0),
(8, 'The Elder Scrolls V:Skyrim', 'RPG', 15, '', '', 0),
(9, 'Witcher III:Wild Hunt', 'RPG', 20, '', '', 0),
(10, 'Space Engineers', 'Sandbox', 15, '', '', 0),
(11, 'Deep Rock Galactic', 'Sci-fi', 15, '', '', 0),
(12, 'Fallout 4', 'RPG', 20, '', '', 0),
(13, 'Hearts of Iron IV', 'RTS', 20, '', '', 0),
(14, 'Hunt Showdown', 'Shooter', 15, '', '', 0),
(15, 'Mount&Blade II Bannerlord', 'RPG', 15, '', '', 0),
(16, 'Battlefield I', 'Shooter', 15, '', '', 0),
(17, 'Tom Clancy\'s Rainbow 6 Siege', 'Shooter', 15, '', '', 0),
(18, 'DOOM', 'Shooter', 15, '', '', 0),
(19, 'Sniper Elite 4', 'Shooter', 30, '', '', 0),
(20, 'FIFA 22', 'Simulation', 20, '', '', 0),
(21, 'Isonzo', 'Shooter', 20, '', '', 0),
(22, 'Rust', 'Survival', 15, '', '', 0),
(23, 'The Forest', 'Survival', 15, '', '', 0),
(24, 'Outlast', 'Horror', 15, '', '', 0),
(25, 'Amnesia', 'Horror', 10, '', '', 0),
(26, 'Alien Isolation', 'Horror', 15, '', '', 0),
(27, 'Euro Truck Simulator 2', 'Simulation', 10, '', '', 0),
(28, 'Portal 2', 'Puzzle', 10, '', '', 0),
(29, 'Portal ', 'Puzzle', 9, '', '', 0),
(30, 'Company of Heroes 2', 'RTS', 15, '', '', 0),
(31, 'Hollow Knight', 'Platformer', 10, '', '', 0),
(32, 'Command and Conquer: Tiberium Wars', 'RTS', 10, '', '', 0),
(33, 'Mass Effect Andromeda', 'Sci-fi', 20, '', '', 0),
(34, 'No Man\'s Sky ', 'Sci-fi', 15, '', '', 0),
(35, 'Project Zomboid', 'Survival', 15, '', '', 0),
(36, 'Cuphead', 'Platformer', 9, '', '', 0),
(37, 'IL-2 Sturmovik: Battle of Stalingrad', 'Simulation', 15, '', '', 0),
(38, 'Spore', 'Simulation', 10, '', '', 0),
(39, 'Dirt Rally', 'Racing', 10, '', '', 0),
(40, 'Forza Horizon 4', 'Racing', 15, '', '', 0),
(41, 'Fallout: New Vegas', 'RPG', 15, '', '', 0),
(42, 'New World', 'MMORPG', 30, '', '', 0),
(43, 'Monster Girl Island', 'RPG', 100000, '', '', 0),
(44, 'Forza Horizon 5 ', 'Racing', 20, '', '', 0),
(45, 'Formula 1 22', 'Racing', 15, '', '', 0),
(46, 'Warhammer 40k: Dawn of War ', 'RTS', 10, '', '', 0),
(47, 'Total War: Warhammer III', 'RTS', 40, '', '', 0),
(48, 'Orc\'s Must DIE! 3 ', 'Tower Defense', 15, '', '', 0),
(49, 'Dungeon Defenders ', 'Tower Defense', 10, '', '', 0),
(50, 'Cube World', 'Sandbox', 30, '', '', 0),
(51, 'Dying Light 2 ', 'Survival', 15, '', '', 0);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `termek`
--
ALTER TABLE `termek`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `termek`
--
ALTER TABLE `termek`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
