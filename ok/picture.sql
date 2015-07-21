-- phpMyAdmin SQL Dump
-- version 4.2.10
-- http://www.phpmyadmin.net
--
-- Client :  localhost:8889
-- Généré le :  Ven 13 Février 2015 à 15:19
-- Version du serveur :  5.5.38
-- Version de PHP :  5.6.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Base de données :  `picture`
--

-- --------------------------------------------------------

--
-- Structure de la table `lieux`
--

CREATE TABLE `lieux` (
`id` int(10) unsigned NOT NULL,
  `img` varchar(100) NOT NULL,
  `titre` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `lieux`
--

INSERT INTO `lieux` (`id`, `img`, `titre`) VALUES
(1, 'face', 'facade'),
(2, 'manoir', 'exterieur'),
(3, 'piano', 'piano'),
(4, 'salledebain', 'salledebain'),
(5, 'cuisine', 'cuisine'),
(6, 'hall', 'hall'),
(7, 'chambre1', 'chambre1'),
(8, 'chambre2', 'chambre2'),
(9, 'bibliotheque', 'bibliotheque'),
(10, 'salon', 'salon'),
(11, 'couloir', 'couloir'),
(12, 'bureau', 'bureau'),
(13, 'manoiruse', 'manoiruse'),
(15, 'manoiruse', 'presentation'),
(16, 'manoiruse', 'presentationsuite'),
(17, 'hall', 'presentationsuiteleretour'),
(18, 'screamer', 'screamer'),
(19, 'intro', 'exte');

-- --------------------------------------------------------

--
-- Structure de la table `object`
--

CREATE TABLE `object` (
`id` int(11) unsigned NOT NULL,
  `titre` varchar(100) NOT NULL,
  `lieu` varchar(100) NOT NULL,
  `img` text NOT NULL,
  `lien` varchar(100) NOT NULL,
  `x` int(11) NOT NULL,
  `y` int(11) NOT NULL,
  `icone` varchar(100) NOT NULL,
  `actif` tinyint(1) NOT NULL DEFAULT '0',
  `msg` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `object`
--

INSERT INTO `object` (`id`, `titre`, `lieu`, `img`, `lien`, `x`, `y`, `icone`, `actif`, `msg`) VALUES
(5, 'exterieurtexte', 'exterieur', '<h5>Vous vous rendez sur les lieux pour visiter cette demeure qui vous a intrigu&eacute;.</h5>', 'exterieur', 550, 20, '', 0, ''),
(6, 'hallcuisine', 'hall', '<img  src="img/objet/hall/hallcuisine.png"/>', 'cuisine', 230, 0, '', 0, 'Cuisine'),
(7, 'hallsalon', 'hall', '<img src="img/objet/hall/hallsalon.png"/>', 'salon', 305, 414, '', 0, 'Salon'),
(8, 'hallbibliotheque', 'hall', '<img src="img/objet/hall/hallbibliotheque.png"/>', 'bibliotheque', 309, 443, '', 0, 'Bibliotheque'),
(9, 'hallsalledebain', 'hall', '<img src="img/objet/hall/hallsalledebain.png"/>', 'salledebain', 307, 600, '', 0, 'Salle de bain'),
(11, 'cusinehall', 'cuisine', '<img src="img/objet/cuisine/cuisinehall.png"/>', 'hall', 112, 602, '', 0, 'Hall'),
(12, 'cuisinesalon', 'cuisine', '<img src="img/objet/cuisine/cuisinesalon.png"/>', 'salon', 157, 335, '', 0, 'Salon'),
(13, 'saloncuisine', 'salon', '<img src="img/objet/salon/saloncuisine.png"/>', 'cuisine', 100, 433, '', 0, 'Cuisine'),
(14, 'salonhall', 'salon', '<img src="img/objet/salon/salonhall.png"/>', 'hall', 105, 198, '', 0, 'Hall'),
(17, 'bibliothequehall', 'bibliotheque', '<img src="img/objet/bibliotheque/bibliothequehall.png"/>', 'hall', 290, 318, '', 0, 'Hall'),
(18, 'salledebainhall', 'salledebain', '<p class="back">retour</p>', 'hall', 458, 681, '', 0, ''),
(20, 'hallcouloir', 'hall', '<img src="img/objet/hall/hallcouloir.png"/>', 'couloir', 288, 180, '', 0, 'Couloir'),
(21, 'couloirhall', 'couloir', '<img src="img/objet/couloir/couloirhall.png"/>', 'hall', 262, 255, '', 0, 'Hall'),
(22, 'couloirpiano', 'couloir', '<img src="img/objet/couloir/couloirpiano.png"/>', 'piano', 236, 175, '', 0, 'Piano'),
(23, 'pianocouloir', 'piano', '<p class="back">retour</p>', 'couloir', 459, 681, '', 0, ''),
(24, 'couloirbureau', 'couloir', '<img src="img/objet/couloir/couloirbureau.png"/>', 'bureau', 294, 286, '', 0, 'Bureau'),
(25, 'bureaucouloir', 'bureau', '<p class="back">retour</p>', 'couloir', 459, 681, '', 0, ''),
(26, 'couloirchambre1', 'couloir', '<img src="img/objet/couloir/couloirchambre.png"/>', 'chambre1', 235, 520, '', 0, 'Chambre des enfants'),
(27, 'couloirchambre2', 'couloir', '<img src="img/objet/couloir/couloirchambre1.png"/>', 'chambre2', 295, 429, '', 0, 'Chambre des parents'),
(28, 'chambre1couloir', 'chambre1', '<p class="back">retour</p>', 'screamer', 458, 681, '', 0, ''),
(29, 'chambre2couloir', 'chambre2', '<p class="back">retour</p>', 'couloir', 458, 681, '', 0, ''),
(32, 'exterieursuivant', 'exterieur', '<p class="suivant">suite</p>', 'manoiruse', 750, 325, '', 0, ''),
(33, 'manoiruseintro', 'manoiruse', '<h5>Lorsque vous arrivez, le temps se couvre soudainement. Alors vous vous pr&eacute;cipitez vers le manoir, Mr Lerdorf vous accueil affol&eacute;...</h5>', 'manoiruse', 550, 20, '', 0, ''),
(34, 'exterieursuivant', 'presentation', '<p class="suivant">suite</p>', 'presentationsuite', 750, 325, '', 0, ''),
(35, 'manoiruseintro', 'presentation', '<h5>Oh l&agrave;, l&agrave; ! Si vous saviez ce qui m&apos;est arriv&eacute; ! En fait je suis auteur du langage PHP, je suis &agrave; l&apos;origine de ce concept depuis maintenant plus de 30ans. Le code que j&apos;ai cr&eacute;&eacute; a fait bugger mon ordinateur.</h5>', 'presentation', 550, 20, '', 0, ''),
(36, 'presentationtete', 'presentation', '<img src="img/objet/hall/tete.gif" style="width:300px;"/>', 'presentation', 190, 440, '', 0, ''),
(37, 'exterieursuivant', 'manoiruse', '<p class="suivant">suite</p>', 'presentation', 750, 325, '', 0, ''),
(38, 'presentationsuitetete', 'presentationsuite', '<img src="img/objet/hall/tete.gif" style="width:300px;"/>', 'presentationsuite', 190, 440, '', 0, ''),
(39, 'exterieursuivant', 'presentationsuite', '<p class="suivant">suite</p>', 'presentationsuiteleretour', 750, 325, '', 0, ''),
(40, 'manoiruseintro', 'presentationsuite', '<h5>Il s&apos;est d&eacute;compos&eacute; en morceaux et a lib&eacute;r&eacute; une force malfaisante. Cette entit&eacute; a saccag&eacute; mon manoir ! Elle a &eacute;galement dissimul&eacute; les morceaux de mon ordinateur !  Elle m&apos;a expuls&eacute; hors de chez moi; fermer la porte &agrave; double tour, et jeter la clef ! Je n&apos;ose y retourner ! Aidez-moi !</h5>', 'presentationsuite', 550, 20, '', 0, ''),
(41, 'manoiruseintro', 'presentationsuiteleretour', '<h5></br><em>-Cliquez sur les portes pour vous d&eacute;placer et sur les objets pour les ramasser-</em></h5>', 'presentationsuiteleretour', 550, 20, '', 0, ''),
(42, 'exterieursuivant', 'presentationsuiteleretour', '<p class="suivant">Ok, je m&apos;en occupe ! </p>', 'hall', 750, 240, '', 0, ''),
(43, 'talkie', 'hall', '<img src="img/objet/talkie.png" style="width: 70px;"/>', '', 402, 93, 'talkie', 0, ''),
(44, 'exterieurtexte', 'exterieur', '<div style="background: #101010; width:220px;height:300px;"></div>', 'exterieur', 97, -288, '', 0, ''),
(45, 'exterieurtexte', 'manoiruse', '<div style="background: #101010; width:220px;height:300px;"></div>', 'manoiruse', 97, -288, '', 0, ''),
(46, 'exterieurtexte', 'presentation', '<div style="background: #101010; width:220px;height:300px;"></div>', 'presentation', 97, -288, '', 0, ''),
(47, 'exterieurtexte', 'presentationsuite', '<div style="background: #101010; width:220px;height:300px;"></div>', 'presentationsuite', 97, -288, '', 0, ''),
(48, 'screamercouloir', 'screamer', '<p class="back">retour</p>', 'couloir', 458, 681, '', 0, ''),
(49, 'disquedur', 'salledebain', '<img src="img/objet/disquedur.png" style="width: 70px;"/>', '', 360, 420, 'disquedur', 0, ''),
(50, 'cuisineobjet', 'cuisine', '<img src="img/objet/dvd.png" style="width: 30px;"/>', '', 270, 120, 'dvd', 0, ''),
(51, 'cuisineobjet', 'chambre2', '<img src="img/objet/processeur.png" style="width: 40px;"/>', '', 270, 430, 'processeur', 0, ''),
(52, 'livre', 'bibliotheque', '<img src="img/objet/livre.png" style="width: 60px;"/>', '', 405, 20, 'livre', 0, ''),
(53, 'parchemin', 'bibliotheque', '<img src="img/objet/parchemin.png" style="width: 40px;"/>', '', 400, 420, 'parchemin', 0, ''),
(54, 'ram', 'bibliotheque', '<img src="img/objet/ram.png" style="width: 20px;"/>', '', 410, 190, 'ram', 0, ''),
(55, 'personnage', 'bureau', '<img src="img/objet/personnage.png" style="width: 250px;"/>', 'bureau', 100, 250, '', 0, ''),
(56, 'carte-mere', 'bureau', '<img src="img/objet/cartemere.png" style="width: 40px;"/>', '', 280, 140, 'cartemere', 0, ''),
(57, 'extesuite', 'exte', '<p class="suivant">suite</p>', 'exterieur', 750, 325, '', 0, ''),
(58, 'exterieurtexte', 'exte', '<div style="background: #101010; width:220px;height:300px;"></div>', 'exte', 97, -288, '', 0, ''),
(59, 'exterieurtexte', 'exte', '<h5>Apr&egrave;s avoir trouv&eacute; un magnifique manoir sur internet pour accueillir votre famille.</h5>', 'exte', 550, 20, '', 0, '');

-- --------------------------------------------------------

--
-- Structure de la table `possede`
--

CREATE TABLE `possede` (
`id` int(10) unsigned NOT NULL,
  `ref_users` int(11) NOT NULL,
  `ref_object` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
`id` int(10) unsigned NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Index pour les tables exportées
--

--
-- Index pour la table `lieux`
--
ALTER TABLE `lieux`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `object`
--
ALTER TABLE `object`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `possede`
--
ALTER TABLE `possede`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `lieux`
--
ALTER TABLE `lieux`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT pour la table `object`
--
ALTER TABLE `object`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=60;
--
-- AUTO_INCREMENT pour la table `possede`
--
ALTER TABLE `possede`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;