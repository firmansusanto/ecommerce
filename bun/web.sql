-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 25, 2015 at 09:07 AM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `web`
--

-- --------------------------------------------------------

--
-- Table structure for table `mspembelian`
--

CREATE TABLE IF NOT EXISTS `mspembelian` (
  `TglPembelian` varchar(12) NOT NULL,
  `ID` varchar(5) NOT NULL,
  `Nama` varchar(25) NOT NULL,
  `Harga` varchar(11) NOT NULL,
  `Gambar` varchar(25) NOT NULL,
  `Qty` varchar(11) NOT NULL,
  `Total` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mspembelian`
--

INSERT INTO `mspembelian` (`TglPembelian`, `ID`, `Nama`, `Harga`, `Gambar`, `Qty`, `Total`) VALUES
('0000-00-00', 'L1002', 'Skull Basher  Butterfly  ', '3000  4800 ', 'gambar/2.jpg  gambar/1.jp', '3  4  5  ', '3  4  5  '),
('2015-01-24', 'L1002', 'Skull Basher  Butterfly  ', '3000  4800 ', 'gambar/2.jpg  gambar/1.jp', '3  4  5  ', '3  4  5  '),
('15-01-24', 'L1002', 'Skull Basher  Butterfly  ', '3000  4800 ', 'gambar/2.jpg  gambar/1.jp', '3  4  5  ', '3  4  5  ');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `ID` varchar(5) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `deskripsi` varchar(2000) NOT NULL,
  `label` varchar(30) NOT NULL,
  `harga` int(11) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`ID`, `nama`, `deskripsi`, `label`, `harga`, `image`) VALUES
('L1007', 'Divine Rapier', 'kalo anda sudah memegang item yang satu ini , berarti anda sudah GG . Inget jgn sampe mati ! nnti item nya drop , anda yang di GG in', 'Killer', 9000, 'gambar/7.jpg'),
('L1001', 'Butterfly', 'Kalo pake ini anda bakalan miss-miss an terus , jangan beli ini kalo musuh anda sudah beli mkb .. buang buang duit aja', 'Killer', 4800, 'gambar/1.jpg'),
('L1002', 'Skull Basher', 'Kalo pake ini pasti kepala pusing2 , apa lagi yang pake ini item hero macem motred dan naix , berarti kemungkinan anda bakal di GG in', 'Killer', 3000, 'gambar/2.jpg'),
('L1003', 'Radiance', 'Radiance is a powerful late game weapon, an Item purchasable with an item from the Secret Shop and a recipe from the Main Shop, under Weapons. It is often rushed by certain carry heroes and used as a farming, pushing, and team fight tool.\r\nThe burn damage from Radiance''s toggle ability will reveal the presence of the possessor if he or she is invisible or under the effect of Smoke of Deceit. If stealth is required, it may be a good idea to turn the burn damage off until stealth is no longer needed.\r\nThe burn damage from Radiance is very useful for disabling Blink Dagger since it gives no time for the Blink Dagger to become usable due to the constant burn damage.', 'Defensive', 4000, 'gambar/3.jpg'),
('L1006', 'Dagon', 'Dagon is a purchasable item in the Grand Lodge, the Magic section. Dagon is a single item each time a unit is purchased, level and its effect increases. Each time is improved, the intelligence bonus, damage and away from your acting ability are increased, while the mana cost and cooldown are diminished. ', 'Support', 3000, 'gambar/6.jpg'),
('L1004', 'Lothar', 'Makes you invisible until the duration ends, or until you attack or cast a spell. While Shadow Walk is active, you move 20% faster and can move through units. If attacking to break the invisibility, you gain 175 bonus damage on that attack. Lasts 14 seconds.', 'Defensive', 3000, 'gambar/4.jpg'),
('L1005', 'Skull Basher', 'Skull Basher can be made with items from the Main Shop. It grants the hero a chance to bash an enemy based on your hero''s attack range. It upgrades into Abyssal Blade by combining with a Sacred Relic, purchasable from the Secret Shop. Bash does not stack, it procs independently from other bash sources.\r\nHeroes that cannot purchase Skull Basher include Faceless Void, Troll Warlord, Slardar, and Spirit Breaker.', 'Killer', 3500, 'gambar/5.jpg');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
