-- Structure de la table `menu_focaccia`
--

DROP TABLE IF EXISTS `menu_focaccia`;
CREATE TABLE IF NOT EXISTS `menu_focaccia` (
  `id_menu` int NOT NULL,
  `id_focaccia` int NOT NULL,
  PRIMARY KEY (`id_menu`,`id_focaccia`),
  KEY `id_focaccia` (`id_focaccia`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `menu_focaccia`
--

INSERT INTO `menu_focaccia` (`id_menu`, `id_focaccia`) VALUES
(0, 0),
(1, 1),
(1, 3),
(2, 2),
(2, 4),
(3, 1),
(3, 5);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- Structure de la table `menu_boisson`
--

DROP TABLE IF EXISTS `menu_boisson`;
CREATE TABLE IF NOT EXISTS `menu_boisson` (
  `id_menu` int NOT NULL,
  `id_boisson` int NOT NULL,
  PRIMARY KEY (`id_menu`,`id_boisson`),
  KEY `id_boisson` (`id_boisson`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `menu_boisson`
--

INSERT INTO `menu_boisson` (`id_menu`, `id_boisson`) VALUES
(0, 0),
(1, 1),
(1, 3),
(2, 2),
(2, 4),
(3, 1),
(3, 5);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- Structure de la table `focaccia_ingredient`
--

DROP TABLE IF EXISTS `focaccia_ingredient`;
CREATE TABLE IF NOT EXISTS `focaccia_ingredient` (
  `id_focaccia` int NOT NULL,
  `id_ingredient` int NOT NULL,
  `quantite` int NOT NULL,
  PRIMARY KEY (`id_focaccia`,`id_ingredient`),
  KEY `id_ingredient` (`id_ingredient`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `focaccia_ingredient`
--

INSERT INTO `focaccia_ingredient` (`id_focaccia`, `id_ingredient`, `quantite`) VALUES
(0, 0, 0),
(1, 1, 1),
(1, 2, 1),
(1, 3, 1),
(2, 1, 1),
(2, 4, 1),
(2, 5, 1),
(3, 2, 1),
(3, 6, 1),
(3, 7, 1),
(4, 8, 1),
(4, 9, 1),
(4, 3, 1),
(5, 10, 1),
(5, 1, 1),
(5, 11, 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
