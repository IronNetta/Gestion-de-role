-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 30 mars 2023 à 13:59
-- Version du serveur : 10.4.25-MariaDB
-- Version de PHP : 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `gestioncompte`
--

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `login` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `mail` varchar(100) NOT NULL,
  `role` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL,
  `est_valide` tinyint(1) NOT NULL,
  `clef` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`login`, `password`, `mail`, `role`, `image`, `est_valide`, `clef`) VALUES
('kim', '$2y$10$s0KqMv.EBP2T0hE3jiPMOOso5wASqwX6kNolFof06v6g4MydayDt6', 'kim@kim.be', 'utilisateur', 'profils/profil.png', 1, 357),
('mathieu', '$2y$10$Avh3YGbtpg7J2vw5H405QeZd6wJu4ukQD3YjdR9NYSayAS1ULZBV.', '123@123.com', 'administrateur', 'profils/mathieu/26673_337082153_177226505098746_4137060212382228185_n.jpg', 1, 436),
('seba', '$2y$10$DAF1gTJRwMMMUSt5huWc1uwKJXGPRt5QfQ6NgwKKKJpxPUTfjBeE.', 'truc@truc.be', 'utilisateur', 'profils/seba/11824_Sans titre.png', 1, 9127),
('test', '$2y$10$3KHhuihtv1mEYKfKGpjyROKFRY.MpWW1MNqMWn5/R6NSJdaAwOPmS', 'test@test.be', 'administrateur', 'profils/test/89716_Sans titre.png', 1, 0),
('truc', '$2y$10$Hspq2DiWc4U1wxH1OCGcFu/2QYzU34vQOHJeYrPfFXCWVURIG9oXa', '123@123.com', 'utilisateur', 'profils/profil.png', 1, 2516);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`login`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
