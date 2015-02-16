-- phpMyAdmin SQL Dump
-- version 4.2.10
-- http://www.phpmyadmin.net
--
-- Client :  localhost:3306
-- Généré le :  Lun 16 Février 2015 à 11:48
-- Version du serveur :  5.5.38
-- Version de PHP :  5.6.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Base de données :  `justforyou`
--

-- --------------------------------------------------------

--
-- Structure de la table `Client`
--

CREATE TABLE `Client` (
    `id` int(11) NOT NULL,
    `nom` varchar(50) NOT NULL,
    `prenom` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `Commande`
--

CREATE TABLE `Commande` (
    `idCde` int(11) NOT NULL,
    `typePaiement` int(11) NOT NULL,
    `qte` int(11) NOT NULL,
    `date` int(11) NOT NULL,
    `montant` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `CommandeFourn`
--

CREATE TABLE `CommandeFourn` (
    `idComF` int(11) NOT NULL,
    `qteCom` int(11) NOT NULL,
    `dateLiv` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `Produit`
--

CREATE TABLE `Produit` (
    `qteStock` int(11) NOT NULL,
    `ref` int(11) NOT NULL,
    `libelle` int(11) NOT NULL,
    `fournisseur` int(11) NOT NULL,
    `prix` int(11) NOT NULL,
    `qteMax` int(11) NOT NULL,
    `seuil` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
