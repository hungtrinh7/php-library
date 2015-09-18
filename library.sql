-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Ven 18 Septembre 2015 à 00:11
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `library`
--

-- --------------------------------------------------------

--
-- Structure de la table `author`
--

CREATE TABLE IF NOT EXISTS `author` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `surname` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image_id` int(11) DEFAULT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `author`
--

INSERT INTO `author` (`id`, `surname`, `name`, `image_id`, `description`) VALUES
(1, 'Rowling', 'J. K.', 3, 'Joanne Rowling, née le 31 juillet 1965 dans l’agglomération de Yate, dans le Gloucestershire, en Angleterre, est une romancière britannique, connue sous le pseudonyme J. K. Rowling. Elle doit sa notoriété mondiale à la série Harry Potter, dont les tomes traduits en au moins 67 langues ont été vendus à plus de 450 millions d''exemplaires. Elle a également utilisé les pseudonymes de Kennilworthy Whisp, Newt Scamander (tirés de sa propre œuvre) et Robert Galbraith.'),
(2, 'Tolkien', 'J. R. R.', 7, 'John Ronald Reuel Tolkien, plus connu sous la forme J. R. R. Tolkien, est un écrivain, poète, philologue et professeur d’université anglais, né le 3 janvier 1892 à Bloemfontein et mort le 2 septembre 1973 à Bournemouth. Il est principalement connu pour ses romans Le Hobbit et Le Seigneur des anneaux.\n\nAprès des études à Birmingham et à Oxford et l’expérience traumatisante de la Première Guerre mondiale, John Ronald Reuel Tolkien devient professeur assistant (reader) de langue anglaise à l’université de Leeds en 1920, puis professeur de vieil anglais à l’université d’Oxford en 1925 et professeur de langue et de littérature anglaises en 1945, toujours à Oxford. Il prend sa retraite en 1959. Durant sa carrière universitaire, il défend l’apprentissage des langues, surtout germaniques, et bouleverse l’étude du poème anglo-saxon Beowulf avec sa conférence Beowulf : Les Monstres et les Critiques (1936). Son essai Du conte de fées (1939) est également considéré comme un texte crucial dans l’étude de ce genre littéraire.');

-- --------------------------------------------------------

--
-- Structure de la table `book`
--

CREATE TABLE IF NOT EXISTS `book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `author_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `image_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Contenu de la table `book`
--

INSERT INTO `book` (`id`, `title`, `author_id`, `description`, `image_id`) VALUES
(1, 'Harry Potter à l''école des sorciers ', 1, 'Harry Potter à l''école des sorciers (titre original : Harry Potter and the Philosopher''s Stone) est le premier roman de la série littéraire centrée sur le personnage de Harry Potter créé par J. K. Rowling. Sorti le 27 juin 1997, il est initialement tiré à 5 000 exemplaires', 1),
(2, 'Harry Potter et la Chambre des secrets', 1, 'Harry Potter et la Chambre des secrets (titre original : Harry Potter and the Chamber of Secrets) est le second tome de la série littéraire centrée sur le personnage d''Harry Potter créé par J. K. Rowling.', 2),
(3, 'La Communauté de l''Anneau', 2, 'Après un long prologue décrivant les Hobbits et leurs mœurs, le passé de la Terre du Milieu et un rapide résumé des aventures de Bilbo Bessac, le livre I s''ouvre sur le cent onzième anniversaire de ce dernier, soixante années après les événements décrits dans Le Hobbit. Au cours de la réception, Bilbo s''éclipse grâce à l''invisibilité que lui confère son anneau magique et quitte Hobbiteville, laissant tous ses biens, anneau compris, à son neveu et héritier désigné, Frodo Bessac. Dix-sept ans plus tard, leur vieil ami, le magicien Gandalf le Gris, révèle à Frodo que son anneau est en réalité l''Anneau unique, instrument du pouvoir de Sauron, le Seigneur Sombre, qui l''a perdu jadis ; s''il devait le retrouver, son pouvoir deviendrait insurmontable. Gandalf presse Frodo de quitter le Comté, qui n''est plus sûr pour lui, et de se mettre en route pour le refuge qu''est Fendeval, la demeure d''Elrond le Semi-elfe.', 4),
(4, 'Les Deux Tours', 2, 'Le deuxième volume suit les différents chemins empruntés par les membres de la Communauté défunte.\r\n\r\nAu début du livre III, Boromir meurt en tentant de défendre Merry et Pippin, qui sont enlevés par les Uruk-hai de Saroumane. Après avoir offert des funérailles au capitaine du Gondor, Aragorn, Legolas et Gimli se lancent à leurs trousses à travers les plaines du Rohan. Aux abords de la forêt de Fangorn, ils retrouvent Gandalf, devenu Gandalf le Blanc et renvoyé en Terre du Milieu pour achever sa mission après avoir péri en terrassant le Balrog. Il les rassure sur le sort des deux hobbits, et les quatre compagnons se rendent à Edoras, où Gandalf libère le roi Théoden de l''emprise de son conseiller Gríma Langue-de-Serpent, un pantin de Saroumane. Les quatre compagnons participent à la guerre du Rohan contre les armées de Saroumane, qui sont vaincues lors de la Bataille de Fort-le-Cor tandis qu''Orthanc, la forteresse de Saroumane, est prise par les Ents de Fangorn menés par Sylvebarbe, accompagnés de Merry et Pippin, qui retrouvent leurs camarades après la bataille. Refusant de se repentir de ses erreurs, Saroumane est exclu de l''ordre des Mages par Gandalf.', 5),
(5, 'Le Retour du roi', 2, 'Le livre V relate la lutte entre le Gondor et le Mordor, vue par Pippin à Minas Tirith et Merry aux côtés du roi Théoden du Rohan. La Cité Blanche, assiégée par des milliers d''Orques, est sauvée par l''arrivée des cavaliers de Rohan, puis par celle d''Aragorn à bord des navires d''Umbar, ce dernier ayant libéré le sud du Gondor grâce à l''armée des Morts. La bataille des champs du Pelennor se conclut par une défaite des forces de Sauron et par la mort de son plus puissant lieutenant, le Roi-Sorcier. Toutefois, les réserves dont dispose Sauron en Mordor sont largement supérieures en nombre à celles des Peuples Libres. Afin de détourner l''attention de Sauron de la quête de Frodon, Aragorn mène une armée devant le Morannon, la Porte Noire du Mordor, et y livre une bataille désespérée. Rien ne semble pouvoir empêcher la victoire de Sauron face à l''armée d''Aragorn, qui doit affronter des Orques dix fois plus nombreux.', 6);

-- --------------------------------------------------------

--
-- Structure de la table `image`
--

CREATE TABLE IF NOT EXISTS `image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Contenu de la table `image`
--

INSERT INTO `image` (`id`, `url`) VALUES
(1, 'http://img2.wikia.nocookie.net/__cb20090923063526/harrypotter/fr/images/5/56/Couverture_HP1_fr.jpg'),
(2, 'http://www.shoparoundtheco.fr/wp-content/uploads/2014/11/harry-potter-et-la-chambre-des-secrets4.jpg'),
(3, 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/5d/J._K._Rowling_2010.jpg/220px-J._K._Rowling_2010.jpg'),
(4, 'http://petitmichel61.p.e.pic.centerblog.net/vpv4mqh1.jpg'),
(5, 'http://blogdamalia.free.fr/images/Livres/les%20deux%20tours.jpg'),
(6, 'http://petitmichel61.p.e.pic.centerblog.net/f8jah2sp.jpg'),
(7, 'http://vignette2.wikia.nocookie.net/narnia/images/b/b2/Jrr-tolkien.jpg/revision/latest?cb=20120629135306&path-prefix=fr');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
