-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Gegenereerd op: 25 jan 2019 om 10:50
-- Serverversie: 5.7.19
-- PHP-versie: 7.1.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `account`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `users`
--

CREATE TABLE `users` (
  `userId` int(3) NOT NULL,
  `userFirstName` varchar(25) NOT NULL,
  `userLastName` varchar(50) NOT NULL,
  `userEmailAddress` varchar(100) NOT NULL,
  `userUserName` varchar(25) NOT NULL,
  `userPassword` varchar(100) NOT NULL,
  `userStreetName` varchar(100) NOT NULL,
  `userHouseNumber` varchar(100) NOT NULL,
  `userCity` varchar(100) NOT NULL,
  `userZipCode` varchar(100) NOT NULL,
  `userCountry` varchar(100) NOT NULL,
  `userBirthDate` varchar(100) NOT NULL,
  `userRegisterDate` varchar(100) NOT NULL,
  `userPhoneNumber` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `users`
--

INSERT INTO `users` (`userId`, `userFirstName`, `userLastName`, `userEmailAddress`, `userUserName`, `userPassword`, `userStreetName`, `userHouseNumber`, `userCity`, `userZipCode`, `userCountry`, `userBirthDate`, `userRegisterDate`, `userPhoneNumber`) VALUES
(4, 'Max', 'Martens', '81400@rocteraa-student.nl', 'Maxpower1616', '123456789', 'Kienhout', '31A', 'Ysselsteyn', '5813CK', 'Netherlands', '16-06-2001', '25-1-2019', '0610450520');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userId`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `users`
--
ALTER TABLE `users`
  MODIFY `userId` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
