-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 11 juin 2024 à 12:11
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `sk_academy`
--

-- --------------------------------------------------------

--
-- Structure de la table `commentaires`
--

CREATE TABLE `commentaires` (
  `id` int(11) NOT NULL,
  `commentaires` varchar(1000) NOT NULL,
  `id_poste` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `commentaires`
--

INSERT INTO `commentaires` (`id`, `commentaires`, `id_poste`) VALUES
(1, 'd', 3),
(2, 'c', 3),
(3, 'super', 3),
(4, 'd', 3),
(5, 'a', 3),
(6, 'd', 3),
(7, 'dd', 3),
(8, 'dd', 3),
(9, 'ff', 3),
(10, 'd', 3),
(11, 'ss', 3),
(12, 'cdc', 3);

-- --------------------------------------------------------

--
-- Structure de la table `ecole`
--

CREATE TABLE `ecole` (
  `id` int(11) NOT NULL,
  `nom` varchar(1000) NOT NULL,
  `adresse` varchar(1000) NOT NULL,
  `url` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `id_evenement` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `ecole`
--

INSERT INTO `ecole` (`id`, `nom`, `adresse`, `url`, `phone`, `id_evenement`) VALUES
(5, 'cvdfdfdfdfdfd', '4f fskfs ', 'fdfdfdfdf', '454557575757', '2'),
(6, 'Spider', 'Kpg Kalimalang No 517', 'school/spider-man-on-a-classe-tous-les-films-de-la-franchise-du-pire-au-meilleur.jpg', '54/545/45/45', '3'),
(7, 'Zola', '25 Rue Los', 'school/Big-Hero-6-presskit-000.jpg', '05/451/24/64', '3'),
(8, 'Crescent Nounga', 'Kpg Kalimalang No 517', 'school/352196562_645524730926185_7832970973712969281_n.jpg', '54/542/42/42', '3'),
(9, 'Crescent Nounga', 'Kpg Kalimalang No 517', 'school/1137946.jpg', '56/686/86/53', '2'),
(10, 'Zola', '25 Dsdsjh', 'school/554d8d2bab_50038065_ortie-uwe-h-friese-wiki-cc-30jpg.jpg', '45/457/97/45', '5');

-- --------------------------------------------------------

--
-- Structure de la table `eleve`
--

CREATE TABLE `eleve` (
  `id` int(11) NOT NULL,
  `name` varchar(1000) NOT NULL,
  `prenom` varchar(1000) NOT NULL,
  `age` int(11) NOT NULL,
  `classe` varchar(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `id_ecole` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `eleve`
--

INSERT INTO `eleve` (`id`, `name`, `prenom`, `age`, `classe`, `image`, `id_ecole`) VALUES
(54, 'Eleve UNx', 'Ddere', 17, '1e', 'school/400456865_182102368308300_4474395668593808476_n.jpg', 27),
(55, 'Eleve Deux', 'Heminent', 17, '1e', 'school/unnamed.jpg', 27),
(56, 'Eleve Trois', 'Ddfsdez Klkka', 16, '2e', 'school/WCCFmarvelsavengers32-1.jpg', 27),
(57, 'Nounga', 'Crescent', 15, '1e', 'school/batman-arkham-origins.jpg', 28),
(58, 'Nounga', 'Crescentnjj', 16, 'Terminal', 'school/1137946.jpg', 28),
(59, 'Nounga', 'Crescentzzz', 11, '4e', 'school/Big-Hero-6-presskit-000.jpg', 28),
(60, 'Nounga', 'Crescent', 10, '3e', 'school/1137946.jpg', 28),
(61, 'Nounga', 'Crescentssdq', 15, '2e', 'school/batman-arkham-origins.jpg', 28),
(62, 'Nounga', 'Freze Dez', 16, 'Terminal', 'school/Big-Hero-6-presskit-000.jpg', 28),
(63, 'Nounga', 'Crescent', 12, '3e', 'school/342912261_1005670127551023_8571322634824537267_n.jpg', 29),
(64, 'Nounga', 'Crescentzzz', 11, '3e', 'school/batman-all-up-z2-1920x1080.jpg', 29),
(65, 'Noungazz', 'Crescent', 13, '3e', 'school/1599218815.jpeg', 29),
(66, 'Nounga', 'Crescent', 11, '3e', 'school/233_PAY_08302020ca_10784__df902b5bece541b31fde22ed77b8b2e3.jpg', 30),
(67, 'Nounga', 'Crescentd', 13, '2e', 'school/554d8d2bab_50038065_ortie-uwe-h-friese-wiki-cc-30jpg.jpg', 30),
(68, 'Nounga', 'Crescent', 16, '2e', 'school/554d8d2bab_50038065_ortie-uwe-h-friese-wiki-cc-30jpg.jpg', 30),
(69, 'Sdfdfsfdf', 'Dffdfdf', 15, '1e', 'school/Big-Hero-6-presskit-000.jpg', 6),
(70, 'Dfdfd', 'Dfdfdfdfde', 14, '3e', 'school/Capture d’écran 2023-08-02 164859.png', 6),
(71, 'Nounga', 'Crescent', 16, '2e', 'school/batman-arkham-origins.jpg', 6),
(72, 'Nounga', 'Fezz', 12, '5e', 'school/batman-arkham-origins.jpg', 7),
(73, 'Vv', 'Vvv', 14, '4e', 'school/350-3508980_alibaba-group-logo-internet-alibaba-group-holding-ltd.png', 7),
(74, 'Vvv', 'Vvv', 15, '2e', 'school/Capture d’écran 2023-08-02 165112.png', 7),
(75, 'Nounga', 'Crescent', 13, '4e', 'school/185_COC_09272020JG_15058--83833365ec19878516207193f75db303.jpg', 8),
(76, 'Nounga', 'Crescent', 15, '3e', 'school/185_COC_09272020JG_15058--83833365ec19878516207193f75db303.jpg', 8),
(77, 'Nounga', 'Crescent', 14, '3e', 'school/arr622b_0100b-2000-d200ac6b3b5444c4a3c4cf9413cde220.jpg', 8),
(81, 'Sdssd', 'Sdsdsd', 15, '3e', 'school/4662bd0dd1294ea258893928a37896a11fcf55dd068bd095d0973eeadc2f51f6._RI_TTW_SX720_FMjpg_.jpg', 9),
(82, 'Sddsdd', 'Sdsdsd', 13, '3e', 'school/185_COC_09272020JG_15058--83833365ec19878516207193f75db303.jpg', 9),
(83, 'Dsfsdfdfdd', 'Sffdfd', 15, '3e', 'school/batman-arkham-origins.jpg', 9),
(84, 'Nounga', 'Crescent', 16, '3e', 'school/554d8d2bab_50038065_ortie-uwe-h-friese-wiki-cc-30jpg.jpg', 10),
(85, 'Sddssd', 'Zrz', 14, '3e', 'school/554d8d2bab_50038065_ortie-uwe-h-friese-wiki-cc-30jpg.jpg', 10),
(86, 'Nounga', 'Crescent', 15, '2e', 'school/554d8d2bab_50038065_ortie-uwe-h-friese-wiki-cc-30jpg.jpg', 10);

-- --------------------------------------------------------

--
-- Structure de la table `evenement`
--

CREATE TABLE `evenement` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `date_debut` varchar(255) NOT NULL,
  `date_fin` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `evenement`
--

INSERT INTO `evenement` (`id`, `nom`, `date_debut`, `date_fin`, `photo`) VALUES
(2, 'John cena the champ 2', '2024-05-08', '2024-05-29', 'event/cena.jpg '),
(3, 'Roman', '2024-05-12', '2024-05-25', 'event/roman_reigns.jpg '),
(4, 'xccxc', '2024-05-11', '2024-05-19', 'event/unnamed.jpg'),
(5, 'Jey Uso', '2024-05-11', '2024-05-23', 'event/5ac0d-16950277919987-1920.jpeg'),
(18, 'Bat Verse', '2024-03-21', '2024-09-18', 'event/batman-vs-superman-awesome-logo-superman-batman-logo-wallpaper-preview.jpg'),
(26, 'Veyron 2', '2024-06-14', '2024-07-31', 'event/artworks-000197443510-a9cawy-t500x500.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `mdp`
--

CREATE TABLE `mdp` (
  `id` int(11) NOT NULL,
  `contenu` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `mdp`
--

INSERT INTO `mdp` (`id`, `contenu`) VALUES
(1, 'sky');

-- --------------------------------------------------------

--
-- Structure de la table `postes`
--

CREATE TABLE `postes` (
  `id` int(11) NOT NULL,
  `media` varchar(255) NOT NULL,
  `dat` varchar(10) NOT NULL,
  `contenu` varchar(1000) NOT NULL,
  `visible` varchar(10) NOT NULL,
  `typeMedia` varchar(25) NOT NULL,
  `id_evenement` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `postes`
--

INSERT INTO `postes` (`id`, `media`, `dat`, `contenu`, `visible`, `typeMedia`, `id_evenement`) VALUES
(2, 'publication/Spider-Man-4.jpg', '30/05/2024', 'spider', 'Pour tous', 'image/jpeg', 2),
(3, 'publication/wwe-jey-uso-main-event-t-shirt-mens_ss5_p-200909770+pv-4+u-qpprgh9pclk6o93uuc51+v-fczk2yussbspji0gkpja.jpg', '31/05/2024', 'Jey', 'Pour tous', 'image/jpeg', 2);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `commentaires`
--
ALTER TABLE `commentaires`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `ecole`
--
ALTER TABLE `ecole`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `eleve`
--
ALTER TABLE `eleve`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `evenement`
--
ALTER TABLE `evenement`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `mdp`
--
ALTER TABLE `mdp`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `postes`
--
ALTER TABLE `postes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `commentaires`
--
ALTER TABLE `commentaires`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `ecole`
--
ALTER TABLE `ecole`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `eleve`
--
ALTER TABLE `eleve`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT pour la table `evenement`
--
ALTER TABLE `evenement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT pour la table `mdp`
--
ALTER TABLE `mdp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `postes`
--
ALTER TABLE `postes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
