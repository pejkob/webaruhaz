-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Gép: mysql.omega:3306
-- Létrehozás ideje: 2022. Okt 11. 09:23
-- Kiszolgáló verziója: 5.7.39-log
-- PHP verzió: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `webaruhaz_pr`
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
(1, 'Age of Empires III Definitive Edition Steam PC key', 'RTS', 20, 'Age of Empires III Definitive Edition.jpg', '', 0),
(2, 'Barotrauma', 'Sci-fi', 10, 'Barotrauma.jpg', '', 0),
(3, 'Dead by Daylight', 'Horror', 15, 'Death By Daylight.jpg', '', 0),
(4, 'Post. Scriptum', 'Shooter', 15, 'psotscriptum.jpg', '', 0),
(5, 'Stellaris', 'RTS', 14, 'Stellaris.jpg', '', 0),
(6, 'Garry\'s mod', 'Sandbox', 9, 'Garry\'s Mod.jpg', '', 0),
(7, 'Red Dead Redemption II', 'Single Player', 20, 'Red Dead Redemtion 2.jpg', '', 0),
(8, 'The Elder Scrolls V:Skyrim', 'RPG', 15, 'The Elder Scrolls V  Skyrim.jpg', '', 0),
(9, 'Witcher III:Wild Hunt', 'RPG', 20, 'Witcher III.jpg', '', 0),
(10, 'Space Engineers', 'Sandbox', 15, 'Space Engineers.jpg', '', 0),
(11, 'Deep Rock Galactic', 'Sci-fi', 15, 'Deep Rock Galactic.jpg', '', 0),
(12, 'Fallout 4', 'RPG', 20, 'Fallout 4.jpg', '', 0),
(13, 'Hearts of Iron IV', 'RTS', 20, 'Hearts of Iron IV.jpg', '', 0),
(14, 'Hunt Showdown', 'Shooter', 15, 'Hunt Showdown.png', '', 0),
(15, 'Mount&Blade II Bannerlord', 'RPG', 15, 'mount_blade.jpg', '', 0),
(16, 'Battlefield I', 'Shooter', 15, 'Battlefield 1.jpg', '', 0),
(17, 'Tom Clancy\'s Rainbow 6 Siege', 'Shooter', 15, 'capsule_467x181.jpg', '', 0),
(18, 'DOOM', 'Shooter', 15, 'doom.jpg', '', 0),
(19, 'Sniper Elite 4', 'Shooter', 30, 'sniper4.jpg', '', 0),
(20, 'FIFA 22', 'Simulation', 20, 'fifa22.jpg', '', 0),
(21, 'Isonzo', 'Shooter', 20, 'isonzo.jpg', '', 0),
(22, 'Rust', 'Survival', 15, 'Rust.jpg', '', 0),
(23, 'The Forest', 'Survival', 15, 'The Forest.jpg', '', 0),
(24, 'Outlast', 'Horror', 15, 'Outlast.jpg', '', 0),
(25, 'Amnesia', 'Horror', 10, 'amnesia.jpg', '', 0),
(26, 'Alien Isolation', 'Horror', 15, 'alien.jpg', '', 0),
(27, 'Euro Truck Simulator 2', 'Simulation', 10, 'ETS 2.jpg', '', 0),
(28, 'Portal 2', 'Puzzle', 10, 'Portal 2.jpg', '', 0),
(29, 'Portal ', 'Puzzle', 9, 'Portal.jpg', '', 0),
(30, 'Company of Heroes 2', 'RTS', 15, 'Company Heroes 2.jpg', '', 0),
(31, 'Hollow Knight', 'Platformer', 10, 'hollow.jpg', '', 0),
(32, 'Command and Conquer: Tiberium Wars', 'RTS', 10, 'Command and Conquer.jpg', '', 0),
(33, 'Mass Effect Andromeda', 'Sci-fi', 20, 'Mass Effect Andromeda.jpg', '', 0),
(34, 'No Man\'s Sky ', 'Sci-fi', 15, 'No Man\'s Sky.jpg', '', 0),
(35, 'Project Zomboid', 'Survival', 15, 'Project Zomboid.jpg', '', 0),
(36, 'Cuphead', 'Platformer', 9, 'cuphead.jpg', '', 0),
(37, 'IL-2 Sturmovik: Battle of Stalingrad', 'Simulation', 15, 'il.jpg', '', 0),
(38, 'Spore', 'Simulation', 10, 'Spore.jpg', '', 0),
(39, 'Dirt Rally', 'Racing', 10, 'dirt-rally.jpg', '', 0),
(40, 'Forza Horizon 4', 'Racing', 15, 'Forza Horizon 4.jpg', '', 0),
(41, 'Fallout: New Vegas', 'RPG', 15, 'Fall Out New Vegas.jpg', '', 0),
(42, 'New World', 'MMORPG', 30, 'New World.jpg', '', 0),
(43, 'Monster Girl Island', 'RPG', 100000, 'Monster Girl Island.jpg', '', 0),
(44, 'Forza Horizon 5 ', 'Racing', 20, 'forza5.jpg', '', 0),
(45, 'Formula 1 22', 'Racing', 15, 'f1.jpg', '', 0),
(46, 'Warhammer 40k: Dawn of War ', 'RTS', 10, 'dw.jpg', '', 0),
(47, 'Total War: Warhammer III', 'RTS', 40, 'total.jpg', '', 0),
(48, 'Orc\'s Must DIE! 3 ', 'Tower Defense', 15, 'Orcs Must Die! 3.jpg', '', 0),
(49, 'Dungeon Defenders ', 'Tower Defense', 10, 'Dungeon Defenders.jpg', '', 0),
(50, 'Cube World', 'Sandbox', 30, 'cube.jpg', '', 0),
(51, 'Dying Light 2 ', 'Survival', 15, 'dying.jpg', '', 0);

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
