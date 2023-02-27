-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 23 fév. 2023 à 14:11
-- Version du serveur : 10.4.27-MariaDB
-- Version de PHP : 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `ga_immobilier`
--

-- --------------------------------------------------------

--
-- Structure de la table `annonces`
--

CREATE TABLE `annonces` (
  `N_Annonce` int(11) NOT NULL,
  `T_Annonce` varchar(50) DEFAULT NULL,
  `P_Annonce` decimal(11,0) DEFAULT NULL,
  `Date_Pub` date DEFAULT NULL,
  `Date_Modif` date DEFAULT NULL,
  `A_Annonce` varchar(50) DEFAULT NULL,
  `C_Annonce` varchar(10) DEFAULT NULL,
  `Type_Annonce` varchar(10) DEFAULT NULL,
  `N_Client` int(10) DEFAULT NULL,
  `Superficie` decimal(10,0) DEFAULT NULL,
  `Ville` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `annonces`
--

INSERT INTO `annonces` (`N_Annonce`, `T_Annonce`, `P_Annonce`, `Date_Pub`, `Date_Modif`, `A_Annonce`, `C_Annonce`, `Type_Annonce`, `N_Client`, `Superficie`, `Ville`) VALUES
(1, 'Appartement a louer ', '3500', '2023-02-10', '2023-02-12', '23 grand rue', 'Location', 'Apprtement', 22, '56', 'casablanca '),
(7, 'Appartment 150m²', '4326', '2023-02-07', '2023-02-08', NULL, NULL, NULL, 22, '1123', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `N_Client` int(13) NOT NULL,
  `Nom_Client` varchar(15) DEFAULT NULL,
  `Prénom_Client` varchar(15) DEFAULT NULL,
  `Email_client` varchar(30) DEFAULT NULL,
  `N_téléphone` int(12) DEFAULT NULL,
  `pass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`N_Client`, `Nom_Client`, `Prénom_Client`, `Email_client`, `N_téléphone`, `pass`) VALUES
(9, 'Oussama', 'orafi', 'orafi@gmail.com', 542323337, ''),
(10, 'Zaid', 'bakkali', 'bakalli877@gmail.com', 652539443, ''),
(11, 'Saed', 'Benali', 'saed@gmail.com', 650527440, ''),
(22, 'Grain', 'Reda', 'REDAGRAIN03@GMAIL.COM', 777264025, '$2y$10$KWPSfAVKRzrnKoXT50D9T.juvKAdDLyLGrCLJ/V09tAIIFOogfU6W');

-- --------------------------------------------------------

--
-- Structure de la table `image`
--

CREATE TABLE `image` (
  `ID_Image` int(10) NOT NULL,
  `CH_Image` varchar(30) DEFAULT NULL,
  `IMG_Principal` varchar(3) DEFAULT NULL,
  `N_Annonce` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `image`
--

INSERT INTO `image` (`ID_Image`, `CH_Image`, `IMG_Principal`, `N_Annonce`) VALUES
(3, './images/maison.jpeg', 'oui', 1);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `annonces`
--
ALTER TABLE `annonces`
  ADD PRIMARY KEY (`N_Annonce`),
  ADD KEY `N_Client` (`N_Client`);

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`N_Client`);

--
-- Index pour la table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`ID_Image`),
  ADD KEY `N_Annonce` (`N_Annonce`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `annonces`
--
ALTER TABLE `annonces`
  MODIFY `N_Annonce` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `client`
--
ALTER TABLE `client`
  MODIFY `N_Client` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT pour la table `image`
--
ALTER TABLE `image`
  MODIFY `ID_Image` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `image`
--
ALTER TABLE `image`
  ADD CONSTRAINT `image_ibfk_1` FOREIGN KEY (`N_Annonce`) REFERENCES `annonces` (`N_Annonce`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
