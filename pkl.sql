-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 20, 2019 at 06:08 AM
-- Server version: 5.5.32-log
-- PHP Version: 5.4.19

-- SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `id7899377_devi`
--
CREATE DATABASE IF NOT EXISTS `id7899377_devi` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `id7899377_devi`;

-- --------------------------------------------------------

--
-- Table structure for table `akun_admin`
--

CREATE TABLE IF NOT EXISTS `akun_admin` (
  `user` varchar(25) NOT NULL,
  `pass` varchar(25) NOT NULL,
  PRIMARY KEY (`user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `akun_admin`
--

INSERT INTO `akun_admin` (`user`, `pass`) VALUES
('timsertif', 'qwerty123');

-- --------------------------------------------------------

--
-- Table structure for table `akun_mhs`
--

CREATE TABLE IF NOT EXISTS `akun_mhs` (
  `nim` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `email` varchar(75) NOT NULL,
  PRIMARY KEY (`nim`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `akun_mhs`
--

INSERT INTO `akun_mhs` (`nim`, `password`, `email`) VALUES
('16.01.53.0112', 'kerendewe', 'ikhsancoil@gmail.com'),
('16.01.53.0123', 'damara', 'danudamara@gmail.com'),
('16.01.53.0125', 'qwerty', 'devinurama@gmail.com'),
('16.01.53.0132', '123qwerty', 'samafatwati@gmail.com'),
('16.01.53.0133', 'oktaviana', 'santiokta@gmail.com'),
('16.01.53.0134', 'alifia', 'alifiafirdi@gmail.com'),
('16.01.53.0135', 'fachrezi', 'f.nabil@gmail.com'),
('16.01.53.0136', 'nabilla', 'alya.nr@gmail.com'),
('16.01.53.0138', 'frank1', 'f.aditya@gmail.com'),
('16.01.53.0150', 'cahganteng', 'elyas.keren@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `dt_mhs`
--

CREATE TABLE IF NOT EXISTS `dt_mhs` (
  `nim` varchar(25) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `progdi` varchar(25) NOT NULL,
  `email` varchar(75) NOT NULL,
  `no_tlp` varchar(50) NOT NULL,
  PRIMARY KEY (`nim`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dt_mhs`
--

INSERT INTO `dt_mhs` (`nim`, `nama`, `progdi`, `email`, `no_tlp`) VALUES
('16.01.53.0112', 'M. Ikhsan', 'Teknik Informatika', 'ikhsancoil@gmail.com', '082224333445'),
('16.01.53.0123', 'M. Danu Damara', 'Teknik Informatika', 'danudamara2gmail.com', '085123556756'),
('16.01.53.0125', 'Devi Nur Amalina', 'Teknik Infromatika', 'devinurama@gmail.com', '081345678224'),
('16.01.53.0132', 'Sama Fatmawati', 'Teknik Informatika', 'samafatmawati@gmail.com', '081233345689'),
('16.01.53.0133', 'Santi Oktaviana', 'Teknik Informatika', 'santiokta@gmail.com', '08233456678'),
('16.01.53.0134', 'Alifia Firdianti', 'Teknik Informatika', 'Alifiafirdi@gmail.com', '085344566789'),
('16.01.53.0135', 'Nabil Fachrezi', 'Teknik Informatika', 'f.nabil@gmail.com', '089112334444'),
('16.01.53.0136', 'Nabilla Alya Ramdhanni', 'Teknik Informatika', 'alya.nr@gamil.com', '08822888834'),
('16.01.53.0138', 'Aditya Eka Fitriawan', 'Teknik Informatika', 'f.aditya@gmail.com', '089233456654'),
('16.01.53.0150', 'Elyas Bayuaji', 'Teknik Informatika', 'elyas.keren@gmail.com', '089233345543');

-- --------------------------------------------------------

--
-- Table structure for table `peserta`
--

CREATE TABLE IF NOT EXISTS `peserta` (
  `nim` varchar(25) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `progdi` varchar(25) NOT NULL,
  `nm_sertif` varchar(25) NOT NULL,
  PRIMARY KEY (`nim`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `peserta`
--

INSERT INTO `peserta` (`nim`, `nama`, `progdi`, `nm_sertif`) VALUES
('16.01.53.0112\0\0\0\0\0\0\0\0\0\0\0\0', 'M. Ikhsan', 'Teknik Informatika', 'M. Iksan '),
('16.01.53.0123\0\0\0\0\0\0\0\0\0\0\0\0', 'M. Danu Damara', 'Teknik Informatika', 'M. Danu Damara'),
('16.01.53.0125\0\0\0\0\0\0\0\0\0\0\0\0', 'Devi Nur Amalina', 'Teknik Infromatika', 'Devi Nur Amalina'),
('16.01.53.0132\0\0\0\0\0\0\0\0\0\0\0\0', 'Sama Fatmawati', 'Teknik Informatika', 'Sama Fatmawati'),
('16.01.53.0133\0\0\0\0\0\0\0\0\0\0\0\0', 'Santi Oktaviana', 'Teknik Informatika', 'Santi Oktaviana'),
('16.01.53.0134\0\0\0\0\0\0\0\0\0\0\0\0', 'Alifia Firdianti', 'Teknik Informatika', 'Alifia Firdianti'),
('16.01.53.0135\0\0\0\0\0\0\0\0\0\0\0\0', 'Nabil Fachrezi', 'Teknik Informatika', 'Nabil Fachrezi'),
('16.01.53.0136\0\0\0\0\0\0\0\0\0\0\0\0', 'Nabilla Alya Ramdhanni', 'Teknik Informatika', 'Nabilla Alya Ramadhanni'),
('16.01.53.0138\0\0\0\0\0\0\0\0\0\0\0\0', 'Aditya Eka Fitriawan', 'Teknik Informatika', 'Aditya Eka Fitriawan'),
('16.01.53.0150\0\0\0\0\0\0\0\0\0\0\0\0', 'Elyas Bayuaji', 'Teknik Informatika', 'Elyas Bayuaja');

-- --------------------------------------------------------

--
-- Table structure for table `sert`
--

CREATE TABLE IF NOT EXISTS `sert` (
  `nm_sertif` varchar(25) NOT NULL,
  `progdi` varchar(25) NOT NULL,
  PRIMARY KEY (`nm_sertif`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
