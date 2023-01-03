-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost:3306
-- Üretim Zamanı: 28 Ara 2022, 02:04:26
-- Sunucu sürümü: 10.3.36-MariaDB
-- PHP Sürümü: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `u0983472_db682`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `answers1`
--

CREATE TABLE `answers1` (
  `id` int(10) NOT NULL,
  `userId` varchar(50) NOT NULL,
  `eventId` varchar(50) NOT NULL,
  `answer` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `answers1`
--

INSERT INTO `answers1` (`id`, `userId`, `eventId`, `answer`) VALUES
(3, '987423', '1', 'acele tercih yapildi');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `answers2`
--

CREATE TABLE `answers2` (
  `id` int(50) NOT NULL,
  `userId` varchar(50) NOT NULL,
  `eventId` varchar(50) NOT NULL,
  `questionNum` varchar(50) NOT NULL,
  `givenAnswer` varchar(50) NOT NULL,
  `trueAnswer` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `answers2`
--

INSERT INTO `answers2` (`id`, `userId`, `eventId`, `questionNum`, `givenAnswer`, `trueAnswer`) VALUES
(3, '987423', '2', '1', 'Kazanç', 'Kazanç'),
(4, '987423', '2', '1', 'Soru3', 'Kazanç');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `answers3`
--

CREATE TABLE `answers3` (
  `id` int(10) NOT NULL,
  `userId` varchar(50) NOT NULL,
  `eventId` varchar(50) NOT NULL,
  `answer` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `answers3`
--

INSERT INTO `answers3` (`id`, `userId`, `eventId`, `answer`) VALUES
(1, '987423', '3', 'test tedavisi');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `egitim`
--

CREATE TABLE `egitim` (
  `id` int(10) NOT NULL,
  `userId` int(10) NOT NULL,
  `NameSurname` varchar(250) NOT NULL,
  `phone` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `egitim`
--

INSERT INTO `egitim` (`id`, `userId`, `NameSurname`, `phone`, `password`) VALUES
(1, 987423, 'İsmail Doğukan Turgut', '05061484993', '123456');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `answers1`
--
ALTER TABLE `answers1`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `answers2`
--
ALTER TABLE `answers2`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `answers3`
--
ALTER TABLE `answers3`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `egitim`
--
ALTER TABLE `egitim`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `answers1`
--
ALTER TABLE `answers1`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `answers2`
--
ALTER TABLE `answers2`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tablo için AUTO_INCREMENT değeri `answers3`
--
ALTER TABLE `answers3`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `egitim`
--
ALTER TABLE `egitim`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
