-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Vært: localhost
-- Genereringstid: 13. 10 2017 kl. 23:09:54
-- Serverversion: 5.5.42
-- PHP-version: 7.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bogtorvet`
--

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `Antikvariater`
--

CREATE TABLE `Antikvariater` (
  `Antikvariat_id` int(11) NOT NULL,
  `Navn` varchar(200) COLLATE utf8_bin NOT NULL,
  `By` varchar(200) COLLATE utf8_bin NOT NULL,
  `Telefonnummer` varchar(200) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Data dump for tabellen `Antikvariater`
--

INSERT INTO `Antikvariater` (`Antikvariat_id`, `Navn`, `By`, `Telefonnummer`) VALUES
(1, 'Akademisk Antikvariat', 'Odense C.', '66177548'),
(2, 'Als-Antikvariat', 'Augustenborg', '31714216'),
(3, 'Alstrup Antikvariat', 'Søborg', '60805150'),
(4, 'Antikvariat 2B', 'København V.', '28252033'),
(5, 'Blichfeldts Antikvariat', 'Randers C.', '29218690'),
(6, 'C. Rasmussens Antikvariat', 'Vordingborg', '61285700'),
(7, 'Foghs Antikvariat & Nostalgi', 'Sorø', '30235069'),
(8, 'Greens Boghandel & Antikvariat', 'Virum', '45852000'),
(9, 'Jydsk Antikvariat', 'Brabrand', '21400399');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `Boeger`
--

CREATE TABLE `Boeger` (
  `Bog_id` int(11) NOT NULL,
  `Titel` varchar(200) COLLATE utf8_bin NOT NULL,
  `Forfatter` varchar(200) COLLATE utf8_bin NOT NULL,
  `Sprog` varchar(200) COLLATE utf8_bin NOT NULL,
  `Tryk_år` varchar(200) COLLATE utf8_bin NOT NULL,
  `Pris` varchar(200) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Data dump for tabellen `Boeger`
--

INSERT INTO `Boeger` (`Bog_id`, `Titel`, `Forfatter`, `Sprog`, `Tryk_år`, `Pris`) VALUES
(1, 'Kampen om øen', 'A. Chr. Westergaard', 'Dansk', '1948', '60 DKK'),
(2, 'Holger Danske', 'B. S. Ingemann', 'Dansk', '1945', '110 DKK'),
(3, 'Lægekunst for krop, sjæl & ånd', 'Bach Boesen', 'Dansk', '2006', '110 DKK'),
(4, 'Lykke-Peer', 'H. C. Andersen', 'Dansk', '1945', '110 DKK'),
(5, 'Spind og bind', 'H. P. Hansen', 'Dansk', '1947', '135 DKK'),
(6, 'Underground No. 8', 'R. Crumb', 'Engelsk', '1980', '110 DKK');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `Boghandel`
--

CREATE TABLE `Boghandel` (
  `Boghandel_id` int(11) NOT NULL,
  `Bog_id` int(11) NOT NULL,
  `Antikvariat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Data dump for tabellen `Boghandel`
--

INSERT INTO `Boghandel` (`Boghandel_id`, `Bog_id`, `Antikvariat_id`) VALUES
(0, 1, 2),
(1, 1, 1),
(2, 2, 2),
(3, 2, 3),
(4, 3, 3),
(5, 3, 4),
(6, 4, 4),
(7, 4, 5),
(8, 5, 5),
(9, 5, 6),
(10, 6, 6),
(11, 6, 7),
(12, 7, 1),
(13, 5, 2),
(14, 6, 3);

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `Indkøbskurv`
--

CREATE TABLE `Indkøbskurv` (
  `Titel` varchar(200) COLLATE utf8_bin NOT NULL,
  `Forfatter` varchar(200) COLLATE utf8_bin NOT NULL,
  `Pris` varchar(10) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Data dump for tabellen `Indkøbskurv`
--

INSERT INTO `Indkøbskurv` (`Titel`, `Forfatter`, `Pris`) VALUES
('Titel', '', ''),
('Titel', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('\" . $_GET[`Titel`] . \"', '', ''),
(' . $_GET[`Titel`] . ', '', ''),
(' $_GET[`Titel`]', '', ''),
(' $_GET[`Titel`]', '', ''),
(' . $_GET[`Titel`] . ', '', ''),
(' . $_GET[\'bog\'] . ', '', '');

--
-- Begrænsninger for dumpede tabeller
--

--
-- Indeks for tabel `Antikvariater`
--
ALTER TABLE `Antikvariater`
  ADD PRIMARY KEY (`Antikvariat_id`);

--
-- Indeks for tabel `Boeger`
--
ALTER TABLE `Boeger`
  ADD PRIMARY KEY (`Bog_id`),
  ADD KEY `Titel` (`Titel`);

--
-- Indeks for tabel `Boghandel`
--
ALTER TABLE `Boghandel`
  ADD PRIMARY KEY (`Boghandel_id`,`Bog_id`,`Antikvariat_id`);

--
-- Brug ikke AUTO_INCREMENT for slettede tabeller
--

--
-- Tilføj AUTO_INCREMENT i tabel `Antikvariater`
--
ALTER TABLE `Antikvariater`
  MODIFY `Antikvariat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Tilføj AUTO_INCREMENT i tabel `Boeger`
--
ALTER TABLE `Boeger`
  MODIFY `Bog_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
