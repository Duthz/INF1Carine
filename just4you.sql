-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Lun 16 Février 2015 à 14:29
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `just4you`
--

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE IF NOT EXISTS `client` (
  `idClient` varchar(20) NOT NULL,
  `Nom` varchar(30) NOT NULL,
  `Prenom` varchar(30) NOT NULL,
  PRIMARY KEY (`idClient`),
  UNIQUE KEY `idClient` (`idClient`),
  UNIQUE KEY `idClient_2` (`idClient`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `codefourn`
--

CREATE TABLE IF NOT EXISTS `codefourn` (
  `idCodeF` varchar(20) NOT NULL,
  `QteCom` int(9) NOT NULL,
  `Date Livraison` date NOT NULL,
  PRIMARY KEY (`idCodeF`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

CREATE TABLE IF NOT EXISTS `commande` (
  `idCde` varchar(20) NOT NULL,
  `Qte` int(9) NOT NULL,
  `Date` date NOT NULL,
  `Montant` double NOT NULL,
  `Type Paiement` varchar(30) NOT NULL,
  PRIMARY KEY (`idCde`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE IF NOT EXISTS `produit` (
  `ref` varchar(20) NOT NULL,
  `Libelle` varchar(250) NOT NULL,
  `Fournisseur` varchar(60) NOT NULL,
  `Prix` double NOT NULL,
  `Qte Stock` int(9) NOT NULL,
  `Seuil` int(9) NOT NULL,
  `Qte Max` int(9) NOT NULL,
  PRIMARY KEY (`ref`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
