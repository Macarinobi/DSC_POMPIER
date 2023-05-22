-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 22 mai 2023 à 20:13
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
-- Base de données : `pompier`
--

-- --------------------------------------------------------

--
-- Structure de la table `accueil`
--

CREATE TABLE `accueil` (
  `Slide 1` int(11) NOT NULL,
  `Slide 2` int(11) NOT NULL,
  `Slide 3` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `affectation`
--

CREATE TABLE `affectation` (
  `Matricule` int(6) NOT NULL,
  `Date` date NOT NULL,
  `IdCaserne` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `affectation`
--

INSERT INTO `affectation` (`Matricule`, `Date`, `IdCaserne`) VALUES
(654352, '2010-06-12', 2),
(782312, '2015-05-10', 2),
(782312, '2017-08-17', 2),
(786572, '1987-10-12', 2),
(786572, '1997-02-12', 1),
(982726, '2012-08-10', 2),
(986995, '1980-02-12', 3),
(986995, '1984-03-10', 2),
(986995, '2001-07-12', 3),
(986995, '2005-05-14', 1);

-- --------------------------------------------------------

--
-- Structure de la table `caserne`
--

CREATE TABLE `caserne` (
  `idCaserne` int(11) NOT NULL,
  `NomCaserne` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `caserne`
--

INSERT INTO `caserne` (`idCaserne`, `NomCaserne`) VALUES
(1, 'ouessant'),
(2, 'Carcassonne'),
(3, 'lille'),
(4, 'Narbonne');

-- --------------------------------------------------------

--
-- Structure de la table `employeur`
--

CREATE TABLE `employeur` (
  `idEmployeur` int(11) NOT NULL,
  `NomEmployeur` varchar(40) NOT NULL,
  `PrenomEmployeur` varchar(40) NOT NULL,
  `TelEmployeur` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `employeur`
--

INSERT INTO `employeur` (`idEmployeur`, `NomEmployeur`, `PrenomEmployeur`, `TelEmployeur`) VALUES
(3, 'VERSE', 'Alain', '0676542431'),
(4, 'NALINE', 'André', '0454245142'),
(5, 'ZOLE', 'Camille', '0676524156');

-- --------------------------------------------------------

--
-- Structure de la table `engin`
--

CREATE TABLE `engin` (
  `Numéro` tinyint(2) NOT NULL,
  `IdCaserne` int(11) NOT NULL,
  `IdTypeEngin` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `engin`
--

INSERT INTO `engin` (`Numéro`, `IdCaserne`, `IdTypeEngin`) VALUES
(1, 1, 'EPA'),
(2, 1, 'EPA');

-- --------------------------------------------------------

--
-- Structure de la table `exercer`
--

CREATE TABLE `exercer` (
  `Matricule` int(6) NOT NULL,
  `IdHabilitation` int(11) NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `exercer`
--

INSERT INTO `exercer` (`Matricule`, `IdHabilitation`, `Date`) VALUES
(654352, 3, '2001-08-10'),
(654353, 1, '2002-10-07'),
(782312, 3, '2019-10-12'),
(986995, 1, '1980-12-03'),
(986995, 2, '1982-08-12'),
(992312, 1, '2012-12-12'),
(992312, 2, '2020-12-12'),
(992312, 3, '2020-12-12'),
(992312, 4, '2020-12-12');

-- --------------------------------------------------------

--
-- Structure de la table `grade`
--

CREATE TABLE `grade` (
  `idGrade` int(11) NOT NULL,
  `LblGrade` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `grade`
--

INSERT INTO `grade` (`idGrade`, `LblGrade`) VALUES
(1, 'auxiliaire'),
(2, 'sapeur 2ème classe'),
(3, 'sapeur 1ère classe'),
(4, 'caporal'),
(5, 'caporal-chef'),
(6, 'sergent'),
(7, 'sergent-chef'),
(8, 'adjudant'),
(9, 'adjudant-chef'),
(10, 'lieutenant'),
(11, 'capitaine'),
(12, 'commandant'),
(13, 'lieutenant-colonel');

-- --------------------------------------------------------

--
-- Structure de la table `habilitation`
--

CREATE TABLE `habilitation` (
  `idHabilitation` int(11) NOT NULL,
  `LblHabilitation` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `habilitation`
--

INSERT INTO `habilitation` (`idHabilitation`, `LblHabilitation`) VALUES
(1, 'conducteur de véhicule de secours routier (VSR)'),
(2, 'chef d\'agrès fourgon pompe-tonne (FPT)'),
(3, 'équipier incendie'),
(4, 'équipier échelle pivotante automatique'),
(5, 'conducteur de véhicule fourgon pompe-tonne (FPT)'),
(6, 'conducteur échelle pivotante automatique');

-- --------------------------------------------------------

--
-- Structure de la table `naturesinistre`
--

CREATE TABLE `naturesinistre` (
  `idNatureSInistre` int(11) NOT NULL,
  `LblNatureSinistre` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Table des sinistres';

--
-- Déchargement des données de la table `naturesinistre`
--

INSERT INTO `naturesinistre` (`idNatureSInistre`, `LblNatureSinistre`) VALUES
(1, 'feu dans un appartement'),
(2, 'feu de brousailles'),
(3, 'ascenseur bloqué');

-- --------------------------------------------------------

--
-- Structure de la table `pompier`
--

CREATE TABLE `pompier` (
  `Matricule` int(6) NOT NULL,
  `NomPompier` varchar(45) NOT NULL,
  `PrenomPompier` varchar(45) NOT NULL,
  `DateNaissPompier` date NOT NULL,
  `TelPompier` varchar(15) DEFAULT NULL,
  `SexePompier` enum('féminin','masculin') NOT NULL,
  `IdGrade` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `pompier`
--

INSERT INTO `pompier` (`Matricule`, `NomPompier`, `PrenomPompier`, `DateNaissPompier`, `TelPompier`, `SexePompier`, `IdGrade`) VALUES
(555555, 'DURAND', 'Lucien', '2022-09-11', '9790908808', 'masculin', 4),
(622897, 'cs', 'c', '2022-09-07', '', 'masculin', 1),
(654352, 'Clette', 'Lara', '1987-03-11', '0642786352', 'féminin', 3),
(666666, 'TRYC', 'MUCHE', '2022-09-03', '0685101893', 'masculin', 1),
(666667, 'TOTO', 'TATA', '2022-09-07', '0676547872', 'masculin', 4),
(696969, 'Durand', 'Dupont', '2020-09-30', '992923839', 'masculin', 1),
(782312, 'Esur', 'Janette', '1982-02-11', '0627371273', 'féminin', 3),
(786572, 'Abri', 'Gauthier', '1972-05-12', '0676542532', 'masculin', 10),
(982726, 'Inion', 'Seb', '1970-10-10', '99878998', 'masculin', 10),
(986995, 'Dumontel', 'Robert', '1969-10-10', '0298568542', 'masculin', 11),
(992312, 'Balle', 'Jean', '1982-07-12', '0678652354', 'masculin', 2);

-- --------------------------------------------------------

--
-- Structure de la table `prevoir`
--

CREATE TABLE `prevoir` (
  `idTypeEngin` varchar(4) NOT NULL,
  `IdNatSinistre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `prevoir`
--

INSERT INTO `prevoir` (`idTypeEngin`, `IdNatSinistre`) VALUES
('EPA', 1),
('FPT', 1),
('VSAV', 1),
('VSAV', 2),
('VSAV', 3);

-- --------------------------------------------------------

--
-- Structure de la table `professionnel`
--

CREATE TABLE `professionnel` (
  `MatPro` int(6) NOT NULL,
  `DateEmbauche` date NOT NULL,
  `Indice` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `professionnel`
--

INSERT INTO `professionnel` (`MatPro`, `DateEmbauche`, `Indice`) VALUES
(786572, '1997-06-05', 300),
(986995, '2000-05-04', 200);

-- --------------------------------------------------------

--
-- Structure de la table `reclamer`
--

CREATE TABLE `reclamer` (
  `idTypeEngin` varchar(4) NOT NULL,
  `IdHabilitation` int(11) NOT NULL,
  `Nbr` tinyint(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `reclamer`
--

INSERT INTO `reclamer` (`idTypeEngin`, `IdHabilitation`, `Nbr`) VALUES
('FPT', 2, 1),
('FPT', 3, 2),
('FPT', 5, 1);

-- --------------------------------------------------------

--
-- Structure de la table `typeengin`
--

CREATE TABLE `typeengin` (
  `idTypeEngin` varchar(4) NOT NULL,
  `LblEngincol` varchar(45) DEFAULT NULL,
  `image` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `typeengin`
--

INSERT INTO `typeengin` (`idTypeEngin`, `LblEngincol`, `image`) VALUES
('EPA', 'échelle pivotante automatique', 'EPA.jpg'),
('FPT', 'fourgon pompe-tonne', 'FPT.jpg\r\n'),
('VSAV', 'véhicule de secours aux victimes', 'VSAV.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `volontaire`
--

CREATE TABLE `volontaire` (
  `MatVolontaire` int(6) NOT NULL,
  `Bip` varchar(3) DEFAULT NULL,
  `IdEmployeur` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `volontaire`
--

INSERT INTO `volontaire` (`MatVolontaire`, `Bip`, `IdEmployeur`) VALUES
(899789, '17', 4),
(986995, '15', 3),
(992312, '12', 3);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `affectation`
--
ALTER TABLE `affectation`
  ADD PRIMARY KEY (`Matricule`,`Date`,`IdCaserne`),
  ADD KEY `Caserne_idx` (`IdCaserne`);

--
-- Index pour la table `caserne`
--
ALTER TABLE `caserne`
  ADD PRIMARY KEY (`idCaserne`);

--
-- Index pour la table `employeur`
--
ALTER TABLE `employeur`
  ADD PRIMARY KEY (`idEmployeur`);

--
-- Index pour la table `engin`
--
ALTER TABLE `engin`
  ADD PRIMARY KEY (`Numéro`,`IdCaserne`,`IdTypeEngin`),
  ADD KEY `Caserne_idx` (`IdCaserne`),
  ADD KEY `CaserneEngin_idx` (`IdCaserne`),
  ADD KEY `LeType_idx` (`IdTypeEngin`);

--
-- Index pour la table `exercer`
--
ALTER TABLE `exercer`
  ADD PRIMARY KEY (`Matricule`,`IdHabilitation`),
  ADD KEY `IdHabilation_idx` (`IdHabilitation`);

--
-- Index pour la table `grade`
--
ALTER TABLE `grade`
  ADD PRIMARY KEY (`idGrade`);

--
-- Index pour la table `habilitation`
--
ALTER TABLE `habilitation`
  ADD PRIMARY KEY (`idHabilitation`);

--
-- Index pour la table `naturesinistre`
--
ALTER TABLE `naturesinistre`
  ADD PRIMARY KEY (`idNatureSInistre`);

--
-- Index pour la table `pompier`
--
ALTER TABLE `pompier`
  ADD PRIMARY KEY (`Matricule`),
  ADD KEY `Grade_idx` (`IdGrade`);

--
-- Index pour la table `prevoir`
--
ALTER TABLE `prevoir`
  ADD PRIMARY KEY (`idTypeEngin`,`IdNatSinistre`),
  ADD KEY `Sinistre_idx` (`IdNatSinistre`);

--
-- Index pour la table `professionnel`
--
ALTER TABLE `professionnel`
  ADD PRIMARY KEY (`MatPro`);

--
-- Index pour la table `reclamer`
--
ALTER TABLE `reclamer`
  ADD PRIMARY KEY (`idTypeEngin`,`IdHabilitation`),
  ADD KEY `Habili_idx` (`IdHabilitation`);

--
-- Index pour la table `typeengin`
--
ALTER TABLE `typeengin`
  ADD PRIMARY KEY (`idTypeEngin`);

--
-- Index pour la table `volontaire`
--
ALTER TABLE `volontaire`
  ADD PRIMARY KEY (`MatVolontaire`),
  ADD KEY `Employeur_idx` (`IdEmployeur`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `caserne`
--
ALTER TABLE `caserne`
  MODIFY `idCaserne` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `employeur`
--
ALTER TABLE `employeur`
  MODIFY `idEmployeur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `grade`
--
ALTER TABLE `grade`
  MODIFY `idGrade` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `habilitation`
--
ALTER TABLE `habilitation`
  MODIFY `idHabilitation` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `naturesinistre`
--
ALTER TABLE `naturesinistre`
  MODIFY `idNatureSInistre` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `affectation`
--
ALTER TABLE `affectation`
  ADD CONSTRAINT `CaserneToto` FOREIGN KEY (`IdCaserne`) REFERENCES `caserne` (`idCaserne`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `Pompiers` FOREIGN KEY (`Matricule`) REFERENCES `pompier` (`Matricule`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `engin`
--
ALTER TABLE `engin`
  ADD CONSTRAINT `CaserneEngin` FOREIGN KEY (`IdCaserne`) REFERENCES `caserne` (`idCaserne`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `LeType` FOREIGN KEY (`IdTypeEngin`) REFERENCES `typeengin` (`idTypeEngin`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `exercer`
--
ALTER TABLE `exercer`
  ADD CONSTRAINT `IdHabilation` FOREIGN KEY (`IdHabilitation`) REFERENCES `habilitation` (`idHabilitation`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `pompier`
--
ALTER TABLE `pompier`
  ADD CONSTRAINT `Grade` FOREIGN KEY (`IdGrade`) REFERENCES `grade` (`idGrade`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `prevoir`
--
ALTER TABLE `prevoir`
  ADD CONSTRAINT `Engins` FOREIGN KEY (`idTypeEngin`) REFERENCES `typeengin` (`idTypeEngin`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `Sinistre` FOREIGN KEY (`IdNatSinistre`) REFERENCES `naturesinistre` (`idNatureSInistre`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `professionnel`
--
ALTER TABLE `professionnel`
  ADD CONSTRAINT `Pompier` FOREIGN KEY (`MatPro`) REFERENCES `pompier` (`Matricule`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `reclamer`
--
ALTER TABLE `reclamer`
  ADD CONSTRAINT `Engin` FOREIGN KEY (`idTypeEngin`) REFERENCES `typeengin` (`idTypeEngin`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `Habili` FOREIGN KEY (`IdHabilitation`) REFERENCES `habilitation` (`idHabilitation`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `volontaire`
--
ALTER TABLE `volontaire`
  ADD CONSTRAINT `Employeur` FOREIGN KEY (`IdEmployeur`) REFERENCES `employeur` (`idEmployeur`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
