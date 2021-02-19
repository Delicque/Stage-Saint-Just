/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `MairieSJ`
--
drop database if exists MairieSJ;

create database MairieSJ;

use MairieSJ;


-- --------------------------------------------------------

--
-- Structure de la table `serviceMairie`
--

DROP TABLE IF EXISTS `serviceMairie`;
CREATE TABLE IF NOT EXISTS `serviceMairie` (
  `serv_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Clé de la table serviceMairie',
  `serv_nom` varchar(100) NOT NULL COMMENT 'Nom du service',
  `serv_tel` varchar(100) COMMENT 'Téléphone du service',
  PRIMARY KEY (`serv_id`),
  UNIQUE KEY `idx_serv_nom` (`serv_nom`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `serviceMairie`
--

INSERT INTO `serviceMairie` (`serv_id`, `serv_nom`, `serv_tel`) VALUES
(1, 'MAIRE', '03 44 19 29 25'),
(2, 'SERVICES MAIRIES FAX','03 44 19 29 10'),
(3, 'DIRECTION GENERAL DES SERVICES', '03 44 19 29 20'),
(4, 'COLLABORATRICE DU MAIRE', '03 44 19 29 45'),
(5, 'BUREAU DU MAIRE', '03 44 19 29 53'),
(6, 'COMMERCIAL', '03 44 19 29 53'),
(7, 'ACCUEIL', '03 44 19 29 29'),
(8, 'LOGEMENT', '03 44 19 29 10'),
(9, 'CANTINE', '03 44 19 29 27'),
(10, 'RESSOURCES HUMAINES', '03 44 19 29 41'),
(11, 'INFORMATIQUE', '03 44 19 22 64'),
(12, 'RECENSEMENT ', '03 44 78 17 04'),
(13, 'REPROGRAPHIE', '03 44 19 29 46'),
(14, 'POLICE', '03 44 19 29 49'),
(15, 'PASSEPORT', '03 44 19 29 21'),
(16, 'MEDIATHEQUE', '03 44 19 35 28'),
(17, 'ESPACE JEUNESSE', '03 44 51 68 73'),
(18, 'GYMNASE', '03 44 19 38 22 / 03 44 78 05 55'),
(19, 'ILÔT Z ENFANTS', '03 44 19 00 47'),
(20, 'PERISCOLAIRE DU MOULIN', '03 44 51 85 44'),
(21, 'CANTINE BOGAERT', '03 44 78 68 89'),
(22, 'CANTINE DU MOULIN', '03 44 51 85 44'),
(23, 'MANIFESTATION EVENEMENTIELLE', '03 44 19 29 19'),
(24, 'SERVICES TECHNIQUES', '03 44 19 31 36');



-- --------------------------------------------------------

--
-- Structure de la table `association`
--

DROP TABLE IF EXISTS `association`;
CREATE TABLE IF NOT EXISTS `association`(
  `ass_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Clé de la table association',
  `ass_nom` varchar(100) NOT NULL COMMENT 'Nom association',
  `ass_tel` varchar(100) COMMENT 'Téléphone association',
  `ass_mail` varchar(100) COMMENT 'Email association',
  PRIMARY KEY (`ass_id`),
  UNIQUE KEY `idx_ass_nom` (`ass_nom`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `association`

INSERT INTO `association` (`ass_id`, `ass_nom`, `ass_tel`,`ass_mail`) VALUES
(1, 'ACLES', '03 44 78 71 20',''),
(2, 'ACLES BADMINTON', '06 74 33 35 31','famille.harle@wanadoo.fr'),
(3, 'ACLES BASKET', '03 44 77 14 82 / 03 44 78 68 76','gilles.nicolas28@sfr.fr'),
(4, 'ACLES CLUB DE POINTS DE CROIX', '09 53 65 72 85',''),
(5, 'ACLES DOJO ST JUSTOIS', '03 44 19 05 80',''),
(6, 'ACLES GYMNASTIQUE POUR ADULTES', '03 44 78 76 29',''),
(7, 'ACLES GYMNASTIQUE VOLONTAIRE ', '03 44 78 77 36',''),
(8, 'ACLES LES  TOURS INFERNALES', '03 44 78 88 49',''),
(9, 'ACLES SECTION G.H.R', '06 18 86 27 27','raye.severine@neuf.fr'),
(10, 'ACLES TENNIS DE TABLE', '03 44 78 76 82',''),
(11, 'ACLES TIR A L ARC', '03 44 78 50 27',''),
(12, 'ACLES YOGA', '03 44 78 61 74',''),
(13, 'ACLES CLUB DE POINTS DE CROIX "Aux fils du temps"', '03 44 78 50 27',''),
(14, 'ACLES ST JUST RAID AVENTURE', '',''),
(15, 'AVEC PASSION', '06 99 19 95 87 / 06 50 32 52 07 / 03 44 51 28 68',''),
(16, 'BILLARD CLUB ST JUSTOIS', '','hermantjack@free.fr'),
(17, 'CLUB DE BRIDGE', '03 44 78 78 83',''),
(18, 'CLUB FRANCE OISE', '03 44 78 77 94 / 06 07 98 17 57',''),
(19, 'CLUB LA LENS OISE', '03 60 37 10 77 / 06 84 17 07 44','lensoise-saintjust60@neuf.fr'),
(20, 'JUDO CLUB ', '03 44 51 68 98 / 03 44 78 62 98',''),
(21, 'LA COLOMBE ST JUSTOISE', '03 44 78 07 74 / 06 86 40 43 63','gorenflot.romain@orange.fr'),
(22, 'SOCIETE DE TIR L ALERTE', '',''),
(23, 'LE VIVIER AUX MOINES', '06 76 10 91 24',''),
(24, 'LES RANDONNEURS ST JUSTOIS', '03 44 76 06 05',''),
(25, 'RALLYE RAID SPORTIF', '06 07 87 39 83','stephanie.rolland7@free.fr'),
(26, 'SOCIETE DE CHASSE DU BOIS DE MERMONT', '03 44 19 15 61 / 06 83 05 57 60',''),
(27, 'SPORTING CLUB ST JUSTOIS', '','scsaintjust@sfr.fr'),
(28, 'SPRINTER CLUB DU VAL D ARRE', '03 44 78 91 87 / 06 62 60 36 54','vimontherve@aol.com'),
(29, 'ST JUST ATHLETISME', '03 44 78 78 07','saint justathletisme.wordpress.com'),
(30, 'TENNIS CLUB DU VAL D ARRE', '06 86 81 90 23',''),
(31, 'WHEELING CLUB ST JUSTOIS', '06 63 79 64 51',''),
(32, 'CLUB DE BOXE', '06 79 74 10 32',''),
(33, 'ACLES FUTSAL', '06 48 70 28 94','nathoy60130@hotmail.fr'),
(34, 'RASSEMBLEMENT DES CATCHEURS FRANCAIS', '06 15 63 09 36',''),
(35, 'ASSOCIATION SPORTIVE DU COLLEGE', '03 44 77 64 40',''),
(36, 'PETANQUE CLUB ST JUSTOIS', '06 68 15 68 45','dagniaux.david@gmail.com'),
(37, 'LES PAS PRESSES4', '03 44 77 18 44 / 06 79 17 56 04','');


/* Planning Restauration déchargement TABLE PlanningRestauration */

INSERT INTO `PlanningRestauration` (`pla_id`, `pla_annee`, `pla_mois`,`pla_date`) VALUES
(1, 2020, 'SEPTEMBRE','20/07/2020'),
(2, 2020, 'OCTOBRE','19/09/2020'),
(3, 2020, 'NOVEMBRE','20/10/2020'),
(4, 2020, 'DECEMBRE','10/11/2020'),
(5, 2021, 'JANVIER','16/12/2020'),
(6, 2021, 'FEVRIER','20/01/2021'),
(7, 2021, 'MARS','20/02/2021'),
(8, 2021, 'AVRIL','20/03/2021'),
(9, 2021, 'MAI','20/04/2021'),
(10, 2021, 'JUIN','19/05/2021');



/*Menu par semaine */

INSERT INTO `Menu` (`menu_id`, `debut`, `fin`,`moisd`,`moisf`,`annee`) VALUES
(1, '15', '19', 'FEVRIER', 'FEVRIER', 2021),
(2, '22', '26', 'FEVRIER', 'FEVRIER', 2021),
(3, '1ER', '5', 'MARS', 'MARS', 2021),
(4, '8', '12', 'MARS', 'MARS', 2021),
(5, '15', '19', 'MARS', 'MARS', 2021),
(6, '22', '26', 'MARS','MARS', 2021),
(7, '29', '2', 'MARS', 'AVRIL', 2021);


/*Fiche réservation cantine */

INSERT INTO `reservationcantine` (`res_id`, `res_mois`) VALUES
(1,'FEVRIER'),
(2, 'MARS');


