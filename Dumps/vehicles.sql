-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 09, 2024 at 02:08 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vehicles`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertRandomCustomers` (IN `total_customers` INT)   BEGIN
    DECLARE i INT DEFAULT 1;
    DECLARE pays_id INT;
    DECLARE first_name VARCHAR(50);
    DECLARE last_name VARCHAR(50);
    DECLARE email_domain VARCHAR(50);
    DECLARE mail VARCHAR(100);
    DECLARE ville_id INT;
    DECLARE nb_doublons INT;

    -- Boucle pour insérer 1000 clients au hasard
    WHILE i <= total_customers DO
        -- Sélectionner une ville au hasard
        SELECT id INTO ville_id FROM city ORDER BY RAND() LIMIT 1;        
        
        -- Sélectionner le pays correspondant à la ville sélectionnée
        SELECT country_id INTO pays_id FROM city WHERE id = ville_id;
        
        -- Générer un nom et prénom en fonction du pays
        CASE pays_id
            WHEN 1 THEN -- USA
            BEGIN
                SET first_name = (SELECT getRandomValueFromList('James,Emily,William,Michael,Emma,David,Sarah,John,Elizabeth,Benjamin'));
                SET last_name = (SELECT getRandomValueFromList('Smith,Johnson,Williams,Brown,Jones,Miller,Davis,Garcia,Rodriguez,Wilson'));
                SET email_domain = (SELECT getRandomValueFromList('gmail.com,yahoo.com,outlook.com,aol.com,icloud.com,hotmail.com,protonmail.com,zoho.com,mail.com,gmx.com'));
            END;
            WHEN 2 THEN -- Germany
            BEGIN
                SET first_name = (SELECT getRandomValueFromList('Lukas,Anna,Maximilian,Sophie,Leon,Julia,Luis,Maria,Paul,Emma'));
                SET last_name = (SELECT getRandomValueFromList('Muller,Schmidt,Schneider,Fischer,Weber,Meyer,Wagner,Becker,Hoffmann,Schafer'));
                SET email_domain = (SELECT getRandomValueFromList('web.de,gmx.de,t-online.de,freenet.de,1und1.de,outlook.de,yahoo.de,gmail.de,hotmail.de,arcor.de'));
            END;

            WHEN 3 THEN -- Netherlands
            BEGIN
                SET first_name = (SELECT getRandomValueFromList('Daan,Lotte,Thijs,Sophie,Lucas,Eva,Bram,Emma,Tim,Lisa'));
                SET last_name = (SELECT getRandomValueFromList('Dejong,Jansen,Devries,Vandenberg,Vandijk,Bakker,Janssen,Visser,Smit,Meijer'));
                SET email_domain = (SELECT getRandomValueFromList('hotmail.nl,gmail.com,ziggo.nl,kpnmail.nl,live.nl,planet.nl,xs4all.nl,outlook.nl,telfort.nl,yahoo.nl'));
            END;
            WHEN 4 THEN -- France
            BEGIN
                SET first_name = (SELECT getRandomValueFromList('Lucas,Manon,Hugo,Emma,Nathan,Léa,Thomas,Chloé,Louis,Camille'));
                SET last_name = (SELECT getRandomValueFromList('Dupont,Dubois,Moreau,Laurent,Martin,Lefebvre,Michel,Garcia,David,Petit'));
                SET email_domain = (SELECT getRandomValueFromList('laposte.net,orange.fr,sfr.fr,gmail.com,yahoo.fr,outlook.fr,free.fr,bbox.fr,hotmail.fr,wanadoo.fr'));
            END;
            WHEN 5 THEN -- Spain
            BEGIN
                SET first_name = (SELECT getRandomValueFromList('Alejandro,Lucia,Daniel,Marta,Pablo,Sara,Javier,Carmen,Sergio,Laura'));
                SET last_name = (SELECT getRandomValueFromList('García,Rodriguez,Fernández,Lopez,Martinez,Gonzalez,Sanchez,Perez,Gomez,Martin'));
                SET email_domain = (SELECT getRandomValueFromList('gmail.es,hotmail.es,yahoo.es,outlook.es,telefonica.net,terra.es,ya.com,live.com,movistar.es,orange.es'));
            END;

            WHEN 6 THEN -- China
            BEGIN
                SET first_name = (SELECT getRandomValueFromList('Wei,Jing,Ming,Li,Hui,Xiaowei,Yan,Feng,Yun,Jun'));
                SET last_name = (SELECT getRandomValueFromList('Li,Wang,Zhang,Liu,Chen,Yang,Huang,Zhao,Wu,Zhou'));
                SET email_domain = (SELECT getRandomValueFromList('163.com,qq.com,sina.com,126.com,139.com,yeah.net,189.cn,sohu.com,tom.com,21cn.com'));
            END;
            WHEN 7 THEN -- Japan
            BEGIN
                SET first_name = (SELECT getRandomValueFromList('Haruto,Yui,Sora,Haruka,Yuto,Sakura,Riku,Aoi,Yuna,Re'));
                SET last_name = (SELECT getRandomValueFromList('Sato,Suzuki,Takahashi,Tanaka,Watanabe,Ito,Yamamoto,Nakamura,Kobayashi,Kato'));
                SET email_domain = (SELECT getRandomValueFromList('gmail.jp,yahoo.co.jp,docomo.ne.jp,ezweb.ne.jp,softbank.ne.jp,nifty.com,au.com,jp.com,infoseek.jp,ybb.ne.jp'));
            END;
            WHEN 8 THEN -- United Kingdom
            BEGIN
                SET first_name = (SELECT getRandomValueFromList('Oliver,Emily,Jack,Amelia,Harry,Isabella,George,Ava,Noah,Sophia'));
                SET last_name = (SELECT getRandomValueFromList('Brown,Taylor,Walker,Harris,Clark,Lewis,King,Turner,Hill,Green'));
                SET email_domain = (SELECT getRandomValueFromList('gmail.co.uk,hotmail.co.uk,yahoo.co.uk,outlook.co.uk,btinternet.com,sky.com,live.co.uk,aol.co.uk,icloud.com,protonmail.com'));
            END;
            WHEN 9 THEN -- Canada
            BEGIN
                SET first_name = (SELECT getRandomValueFromList('Liam,Emma,Noah,Olivia,Ethan,Sophia,Benjamin,Charlotte,Lucas,Mia'));
                SET last_name = (SELECT getRandomValueFromList('Smith,Johnson,Brown,Tremblay,Martin,Lee,White,Walker,Hall,Young'));
                SET email_domain = (SELECT getRandomValueFromList('gmail.ca,yahoo.ca,outlook.com,hotmail.ca,live.ca,bell.net,rogers.com,videotron.ca,sympatico.ca,cogeco.ca'));
            END;
            WHEN 10 THEN -- Italy
            BEGIN
                SET first_name = (SELECT getRandomValueFromList('Giovanni,Sofia,Francesco,Aurora,Alessandro,Giulia,Matteo,Giorgia,Luca,Caterina'));
                SET last_name = (SELECT getRandomValueFromList('Rossi,Russo,Ferrari,Esposito,Bianchi,Romano,Colombo,Ricci,Marino,Greco'));
                SET email_domain = (SELECT getRandomValueFromList('libero.it,alice.it,tiscali.it,fastwebnet.it,virgilio.it,yahoo.it,gmail.com,outlook.it,hotmail.it,icloud.com'));
            END;
           
            
            -- Ajoutez des cas pour d'autres pays au besoin
            ELSE -- Par défaut, utiliser des noms et prénoms génériques
                BEGIN
                    SET first_name = 'John';
                    SET last_name = 'Doe';
                    
                END;
        END CASE;
        
        -- Générer une adresse e-mail
        SET mail = CONCAT(first_name, '.', last_name, '@', email_domain);
        
        -- Vérifie doublons
        SELECT COUNT(*) INTO nb_doublons FROM customer WHERE email=mail;
        IF nb_doublons = 0 THEN
        
            -- Insérer le client dans la table customer
            INSERT INTO customer (id, username, email, city_id)
            VALUES (i, CONCAT(first_name, ' ', last_name), mail, ville_id);
        
        	SET i = i + 1;
        
        END IF;
        
    END WHILE;
END$$

--
-- Functions
--
CREATE DEFINER=`root`@`localhost` FUNCTION `getRandomValueFromList` (`value_list` VARCHAR(255)) RETURNS VARCHAR(255) CHARSET utf8mb4 COLLATE utf8mb4_general_ci  BEGIN
    DECLARE total_args INT;
    DECLARE random_index INT;
    DECLARE selected_value VARCHAR(255);
    
    -- Compter le nombre total d'arguments dans la liste
    SET total_args = 1 + LENGTH(value_list) - LENGTH(REPLACE(value_list, ',', ''));
    
    -- Générer un index aléatoire
    SET random_index = FLOOR(RAND() * total_args) + 1;
    
    -- Trouver et extraire la valeur correspondant à l'index aléatoire
    SET selected_value = SUBSTRING_INDEX(SUBSTRING_INDEX(value_list, ',', random_index), ',', -1);
    
    RETURN selected_value;
END$$

CREATE DEFINER=`root`@`localhost` FUNCTION `RandomDate` () RETURNS DATETIME  BEGIN
    DECLARE days_ago INT;
    SET days_ago = FLOOR(RAND() * (365 * 5)); -- Calculer un nombre de jours aléatoire jusqu'à 5 ans
    RETURN DATE_SUB(NOW(), INTERVAL days_ago DAY);
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`id`, `country_id`, `name`) VALUES
(1, 1, 'New York'),
(2, 1, 'San Francisco'),
(3, 1, 'Chicago'),
(4, 1, 'Los Angeles'),
(5, 1, 'Seattle'),
(6, 1, 'Austin'),
(7, 1, 'Portland'),
(8, 1, 'Denver'),
(9, 1, 'Boston'),
(10, 1, 'Washington DC'),
(11, 2, 'Berlin'),
(12, 2, 'Munich'),
(13, 2, 'Frankfurt'),
(14, 2, 'Hamburg'),
(15, 2, 'Cologne'),
(16, 2, 'Stuttgart'),
(17, 2, 'Dusseldorf'),
(18, 2, 'Leipzig'),
(19, 2, 'Dresden'),
(20, 2, 'Hannover'),
(21, 3, 'Amsterdam'),
(22, 3, 'Rotterdam'),
(23, 3, 'The Hague'),
(24, 3, 'Utrecht'),
(25, 3, 'Eindhoven'),
(26, 3, 'Tilburg'),
(27, 3, 'Groningen'),
(28, 3, 'Breda'),
(29, 3, 'Nijmegen'),
(30, 3, 'Maastricht'),
(31, 4, 'Paris'),
(32, 4, 'Lyon'),
(33, 4, 'Marseille'),
(34, 4, 'Toulouse'),
(35, 4, 'Nice'),
(36, 4, 'Nantes'),
(37, 4, 'Strasbourg'),
(38, 4, 'Montpellier'),
(39, 4, 'Bordeaux'),
(40, 4, 'Lille'),
(41, 5, 'Madrid'),
(42, 5, 'Barcelona'),
(43, 5, 'Valencia'),
(44, 5, 'Seville'),
(45, 5, 'Zaragoza'),
(46, 5, 'Malaga'),
(47, 5, 'Murcia'),
(48, 5, 'Palma'),
(49, 5, 'Las Palmas'),
(50, 5, 'Bilbao'),
(51, 6, 'Beijing'),
(52, 6, 'Shanghai'),
(53, 6, 'Guangzhou'),
(54, 6, 'Shenzhen'),
(55, 6, 'Chengdu'),
(56, 6, 'Xi\'an'),
(57, 6, 'Chongqing'),
(58, 6, 'Tianjin'),
(59, 6, 'Hangzhou'),
(60, 6, 'Wuhan'),
(61, 7, 'Tokyo'),
(62, 7, 'Osaka'),
(63, 7, 'Nagoya'),
(64, 7, 'Sapporo'),
(65, 7, 'Fukuoka'),
(66, 7, 'Kobe'),
(67, 7, 'Kyoto'),
(68, 7, 'Sendai'),
(69, 7, 'Hiroshima'),
(70, 7, 'Kitakyushu'),
(71, 8, 'London'),
(72, 8, 'Manchester'),
(73, 8, 'Birmingham'),
(74, 8, 'Leeds'),
(75, 8, 'Glasgow'),
(76, 8, 'Sheffield'),
(77, 8, 'Liverpool'),
(78, 8, 'Bristol'),
(79, 8, 'Newcastle'),
(80, 8, 'Edinburgh'),
(81, 9, 'Toronto'),
(82, 9, 'Montreal'),
(83, 9, 'Vancouver'),
(84, 9, 'Calgary'),
(85, 9, 'Edmonton'),
(86, 9, 'Ottawa'),
(87, 9, 'Winnipeg'),
(88, 9, 'Quebec City'),
(89, 9, 'Hamilton'),
(90, 9, 'Kitchener'),
(91, 10, 'Rome'),
(92, 10, 'Milan'),
(93, 10, 'Naples'),
(94, 10, 'Turin'),
(95, 10, 'Palermo'),
(96, 10, 'Genoa'),
(97, 10, 'Bologna'),
(98, 10, 'Florence'),
(99, 10, 'Bari'),
(100, 10, 'Catania');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `name`) VALUES
(1, 'United States'),
(2, 'Germany'),
(3, 'Netherlands'),
(4, 'France'),
(5, 'Spain'),
(6, 'China'),
(7, 'Japan'),
(8, 'United Kingdom'),
(9, 'Canada'),
(10, 'Italy');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password_hash` char(64) NOT NULL,
  `city_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `username`, `email`, `password_hash`, `city_id`, `created_at`) VALUES
(1, 'Michael Jones', 'Michael.Jones@outlook.com', '', 8, '2024-05-09 00:42:07'),
(2, 'Sara García', 'Sara.García@orange.es', '', 42, '2024-05-09 00:42:07'),
(3, 'Louis Michel', 'Louis.Michel@laposte.net', '', 32, '2024-05-09 00:42:07'),
(4, 'Giovanni Russo', 'Giovanni.Russo@outlook.it', '', 100, '2024-05-09 00:42:07'),
(5, 'Paul Schafer', 'Paul.Schafer@1und1.de', '', 15, '2024-05-09 00:42:07'),
(6, 'Javier Rodriguez', 'Javier.Rodriguez@live.com', '', 45, '2024-05-09 00:42:07'),
(7, 'James Johnson', 'James.Johnson@aol.com', '', 2, '2024-05-09 00:42:07'),
(8, 'Giorgia Esposito', 'Giorgia.Esposito@virgilio.it', '', 95, '2024-05-09 00:42:07'),
(9, 'Isabella Walker', 'Isabella.Walker@outlook.co.uk', '', 76, '2024-05-09 00:42:07'),
(10, 'Luis Weber', 'Luis.Weber@gmx.de', '', 18, '2024-05-09 00:42:07'),
(11, 'Lucia Sanchez', 'Lucia.Sanchez@movistar.es', '', 47, '2024-05-09 00:42:07'),
(12, 'Lucia Sanchez', 'Lucia.Sanchez@terra.es', '', 46, '2024-05-09 00:42:07'),
(13, 'Sara Martinez', 'Sara.Martinez@telefonica.net', '', 42, '2024-05-09 00:42:07'),
(14, 'Louis Dubois', 'Louis.Dubois@laposte.net', '', 31, '2024-05-09 00:42:07'),
(15, 'Eva Vandijk', 'Eva.Vandijk@xs4all.nl', '', 23, '2024-05-09 00:42:07'),
(16, 'Alessandro Marino', 'Alessandro.Marino@icloud.com', '', 93, '2024-05-09 00:42:07'),
(17, 'Pablo Lopez', 'Pablo.Lopez@yahoo.es', '', 49, '2024-05-09 00:42:07'),
(18, 'Wei Liu', 'Wei.Liu@tom.com', '', 56, '2024-05-09 00:42:07'),
(19, 'Harry King', 'Harry.King@gmail.co.uk', '', 72, '2024-05-09 00:42:07'),
(20, 'Manon Laurent', 'Manon.Laurent@laposte.net', '', 39, '2024-05-09 00:42:07'),
(21, 'Tim Jansen', 'Tim.Jansen@kpnmail.nl', '', 23, '2024-05-09 00:42:07'),
(22, 'Sofia Marino', 'Sofia.Marino@hotmail.it', '', 96, '2024-05-09 00:42:07'),
(23, 'Marta Fernández', 'Marta.Fernández@gmail.es', '', 43, '2024-05-09 00:42:07'),
(24, 'Jun Zhao', 'Jun.Zhao@sohu.com', '', 58, '2024-05-09 00:42:07'),
(25, 'Sora Takahashi', 'Sora.Takahashi@ezweb.ne.jp', '', 65, '2024-05-09 00:42:07'),
(26, 'Olivia Walker', 'Olivia.Walker@videotron.ca', '', 87, '2024-05-09 00:42:07'),
(27, 'Emma Moreau', 'Emma.Moreau@orange.fr', '', 31, '2024-05-09 00:42:07'),
(28, 'Oliver Turner', 'Oliver.Turner@aol.co.uk', '', 80, '2024-05-09 00:42:07'),
(29, 'Julia Schmidt', 'Julia.Schmidt@t-online.de', '', 12, '2024-05-09 00:42:07'),
(30, 'Maria Muller', 'Maria.Muller@arcor.de', '', 16, '2024-05-09 00:42:07'),
(31, 'Elizabeth Brown', 'Elizabeth.Brown@outlook.com', '', 6, '2024-05-09 00:42:07'),
(32, 'Thijs Jansen', 'Thijs.Jansen@gmail.com', '', 25, '2024-05-09 00:42:07'),
(33, 'Daniel Perez', 'Daniel.Perez@orange.es', '', 42, '2024-05-09 00:42:07'),
(34, 'Chloé Dupont', 'Chloé.Dupont@laposte.net', '', 32, '2024-05-09 00:42:07'),
(35, 'Francesco Bianchi', 'Francesco.Bianchi@yahoo.it', '', 95, '2024-05-09 00:42:07'),
(36, 'Feng Liu', 'Feng.Liu@139.com', '', 59, '2024-05-09 00:42:07'),
(37, 'Maria Meyer', 'Maria.Meyer@gmail.de', '', 12, '2024-05-09 00:42:07'),
(38, 'Thijs Bakker', 'Thijs.Bakker@gmail.com', '', 26, '2024-05-09 00:42:07'),
(39, 'Marta Gomez', 'Marta.Gomez@telefonica.net', '', 41, '2024-05-09 00:42:07'),
(40, 'Sophia Smith', 'Sophia.Smith@live.ca', '', 81, '2024-05-09 00:42:07'),
(41, 'Yun Zhou', 'Yun.Zhou@yeah.net', '', 58, '2024-05-09 00:42:07'),
(42, 'Sergio Lopez', 'Sergio.Lopez@telefonica.net', '', 42, '2024-05-09 00:42:07'),
(43, 'Manon Dubois', 'Manon.Dubois@yahoo.fr', '', 37, '2024-05-09 00:42:07'),
(44, 'Maria Schafer', 'Maria.Schafer@yahoo.de', '', 19, '2024-05-09 00:42:07'),
(45, 'Caterina Romano', 'Caterina.Romano@outlook.it', '', 99, '2024-05-09 00:42:07'),
(46, 'Sakura Sato', 'Sakura.Sato@au.com', '', 70, '2024-05-09 00:42:07'),
(47, 'Tim Vandijk', 'Tim.Vandijk@live.nl', '', 27, '2024-05-09 00:42:07'),
(48, 'Hugo Michel', 'Hugo.Michel@outlook.fr', '', 34, '2024-05-09 00:42:07'),
(49, 'Haruto Sato', 'Haruto.Sato@yahoo.co.jp', '', 61, '2024-05-09 00:42:07'),
(50, 'Sora Kobayashi', 'Sora.Kobayashi@docomo.ne.jp', '', 69, '2024-05-09 00:42:07'),
(51, 'Laura Rodriguez', 'Laura.Rodriguez@orange.es', '', 50, '2024-05-09 00:42:07'),
(52, 'Yuna Kobayashi', 'Yuna.Kobayashi@infoseek.jp', '', 68, '2024-05-09 00:42:07'),
(53, 'Sophie Vandijk', 'Sophie.Vandijk@yahoo.nl', '', 27, '2024-05-09 00:42:08'),
(54, 'Re Nakamura', 'Re.Nakamura@au.com', '', 68, '2024-05-09 00:42:08'),
(55, 'Maria Becker', 'Maria.Becker@freenet.de', '', 19, '2024-05-09 00:42:08'),
(56, 'Olivia Walker', 'Olivia.Walker@rogers.com', '', 84, '2024-05-09 00:42:08'),
(57, 'Lucas Smit', 'Lucas.Smit@outlook.nl', '', 24, '2024-05-09 00:42:08'),
(58, 'Sophie Vandenberg', 'Sophie.Vandenberg@live.nl', '', 27, '2024-05-09 00:42:08'),
(59, 'Matteo Marino', 'Matteo.Marino@fastwebnet.it', '', 92, '2024-05-09 00:42:08'),
(60, 'Emma Moreau', 'Emma.Moreau@gmail.com', '', 33, '2024-05-09 00:42:08'),
(61, 'Feng Zhang', 'Feng.Zhang@163.com', '', 60, '2024-05-09 00:42:08'),
(62, 'Emma Schmidt', 'Emma.Schmidt@gmail.de', '', 15, '2024-05-09 00:42:08'),
(63, 'Re Takahashi', 'Re.Takahashi@softbank.ne.jp', '', 67, '2024-05-09 00:42:08'),
(64, 'Lisa Devries', 'Lisa.Devries@gmail.com', '', 24, '2024-05-09 00:42:08'),
(65, 'Daniel Fernández', 'Daniel.Fernández@telefonica.net', '', 41, '2024-05-09 00:42:08'),
(66, 'Sophie Smit', 'Sophie.Smit@gmail.com', '', 27, '2024-05-09 00:42:08'),
(67, 'Lukas Wagner', 'Lukas.Wagner@t-online.de', '', 20, '2024-05-09 00:42:08'),
(68, 'Eva Jansen', 'Eva.Jansen@gmail.com', '', 28, '2024-05-09 00:42:08'),
(69, 'Feng Li', 'Feng.Li@21cn.com', '', 52, '2024-05-09 00:42:08'),
(70, 'Sora Suzuki', 'Sora.Suzuki@ybb.ne.jp', '', 64, '2024-05-09 00:42:08'),
(71, 'Sofia Bianchi', 'Sofia.Bianchi@gmail.com', '', 96, '2024-05-09 00:42:08'),
(72, 'Giulia Russo', 'Giulia.Russo@tiscali.it', '', 99, '2024-05-09 00:42:08'),
(73, 'Hugo Lefebvre', 'Hugo.Lefebvre@orange.fr', '', 32, '2024-05-09 00:42:08'),
(74, 'Elizabeth Miller', 'Elizabeth.Miller@gmx.com', '', 3, '2024-05-09 00:42:08'),
(75, 'Liam Lee', 'Liam.Lee@sympatico.ca', '', 90, '2024-05-09 00:42:08'),
(76, 'Lucas Martin', 'Lucas.Martin@videotron.ca', '', 85, '2024-05-09 00:42:08'),
(77, 'Sophia King', 'Sophia.King@sky.com', '', 79, '2024-05-09 00:42:08'),
(78, 'Feng Huang', 'Feng.Huang@tom.com', '', 52, '2024-05-09 00:42:08'),
(79, 'Ethan Lee', 'Ethan.Lee@rogers.com', '', 87, '2024-05-09 00:42:08'),
(80, 'Thomas Garcia', 'Thomas.Garcia@hotmail.fr', '', 31, '2024-05-09 00:42:08'),
(81, 'Xiaowei Chen', 'Xiaowei.Chen@sina.com', '', 60, '2024-05-09 00:42:08'),
(82, 'John Williams', 'John.Williams@gmail.com', '', 10, '2024-05-09 00:42:08'),
(83, 'Jack Clark', 'Jack.Clark@btinternet.com', '', 74, '2024-05-09 00:42:08'),
(84, 'Haruka Takahashi', 'Haruka.Takahashi@ezweb.ne.jp', '', 67, '2024-05-09 00:42:08'),
(85, 'Sara Fernández', 'Sara.Fernández@ya.com', '', 44, '2024-05-09 00:42:08'),
(86, 'Lucas Dubois', 'Lucas.Dubois@wanadoo.fr', '', 31, '2024-05-09 00:42:08'),
(87, 'Jack Green', 'Jack.Green@hotmail.co.uk', '', 76, '2024-05-09 00:42:08'),
(88, 'Yan Li', 'Yan.Li@126.com', '', 51, '2024-05-09 00:42:08'),
(89, 'Jun Liu', 'Jun.Liu@tom.com', '', 57, '2024-05-09 00:42:08'),
(90, 'Sara Perez', 'Sara.Perez@live.com', '', 43, '2024-05-09 00:42:08'),
(91, 'Hugo Dupont', 'Hugo.Dupont@free.fr', '', 33, '2024-05-09 00:42:08'),
(92, 'Emma Schmidt', 'Emma.Schmidt@web.de', '', 20, '2024-05-09 00:42:08'),
(93, 'Sophia Turner', 'Sophia.Turner@hotmail.co.uk', '', 75, '2024-05-09 00:42:08'),
(94, 'Feng Liu', 'Feng.Liu@yeah.net', '', 55, '2024-05-09 00:42:08'),
(95, 'James Davis', 'James.Davis@aol.com', '', 4, '2024-05-09 00:42:08'),
(96, 'Re Tanaka', 'Re.Tanaka@gmail.jp', '', 68, '2024-05-09 00:42:08'),
(97, 'Leon Fischer', 'Leon.Fischer@freenet.de', '', 14, '2024-05-09 00:42:08'),
(98, 'Giovanni Ferrari', 'Giovanni.Ferrari@fastwebnet.it', '', 100, '2024-05-09 00:42:08'),
(99, 'Daan Bakker', 'Daan.Bakker@telfort.nl', '', 22, '2024-05-09 00:42:08'),
(100, 'Mia Johnson', 'Mia.Johnson@cogeco.ca', '', 88, '2024-05-09 00:42:08'),
(101, 'Sarah Garcia', 'Sarah.Garcia@hotmail.com', '', 4, '2024-05-09 00:42:08'),
(102, 'Anna Weber', 'Anna.Weber@yahoo.de', '', 18, '2024-05-09 00:42:08'),
(103, 'Lukas Schafer', 'Lukas.Schafer@1und1.de', '', 17, '2024-05-09 00:42:08'),
(104, 'Yan Zhang', 'Yan.Zhang@126.com', '', 57, '2024-05-09 00:42:08'),
(105, 'Harry Hill', 'Harry.Hill@aol.co.uk', '', 79, '2024-05-09 00:42:08'),
(106, 'Manon Moreau', 'Manon.Moreau@hotmail.fr', '', 37, '2024-05-09 00:42:08'),
(107, 'Jing Zhang', 'Jing.Zhang@21cn.com', '', 58, '2024-05-09 00:42:08'),
(108, 'Ava King', 'Ava.King@yahoo.co.uk', '', 71, '2024-05-09 00:42:08'),
(109, 'Maria Weber', 'Maria.Weber@t-online.de', '', 12, '2024-05-09 00:42:08'),
(110, 'Luca Russo', 'Luca.Russo@libero.it', '', 100, '2024-05-09 00:42:08'),
(111, 'Javier Gomez', 'Javier.Gomez@yahoo.es', '', 50, '2024-05-09 00:42:08'),
(112, 'Carmen Perez', 'Carmen.Perez@outlook.es', '', 44, '2024-05-09 00:42:08'),
(113, 'Jun Huang', 'Jun.Huang@189.cn', '', 57, '2024-05-09 00:42:08'),
(114, 'Lucia Sanchez', 'Lucia.Sanchez@orange.es', '', 48, '2024-05-09 00:42:08'),
(115, 'Carmen Martin', 'Carmen.Martin@telefonica.net', '', 49, '2024-05-09 00:42:08'),
(116, 'Alejandro García', 'Alejandro.García@gmail.es', '', 43, '2024-05-09 00:42:08'),
(117, 'Sophia Walker', 'Sophia.Walker@live.co.uk', '', 80, '2024-05-09 00:42:08'),
(118, 'Jing Li', 'Jing.Li@sohu.com', '', 57, '2024-05-09 00:42:08'),
(119, 'Julia Weber', 'Julia.Weber@hotmail.de', '', 19, '2024-05-09 00:42:08'),
(120, 'Aurora Marino', 'Aurora.Marino@tiscali.it', '', 99, '2024-05-09 00:42:08'),
(121, 'Thomas Laurent', 'Thomas.Laurent@hotmail.fr', '', 39, '2024-05-09 00:42:08'),
(122, 'Wei Liu', 'Wei.Liu@yeah.net', '', 60, '2024-05-09 00:42:08'),
(123, 'Feng Li', 'Feng.Li@sina.com', '', 60, '2024-05-09 00:42:08'),
(124, 'Lucas Walker', 'Lucas.Walker@yahoo.ca', '', 84, '2024-05-09 00:42:08'),
(125, 'Sophia Harris', 'Sophia.Harris@yahoo.co.uk', '', 78, '2024-05-09 00:42:08'),
(126, 'Lisa Vandenberg', 'Lisa.Vandenberg@outlook.nl', '', 27, '2024-05-09 00:42:08'),
(127, 'Aoi Tanaka', 'Aoi.Tanaka@ezweb.ne.jp', '', 64, '2024-05-09 00:42:08'),
(128, 'Laura Martin', 'Laura.Martin@gmail.es', '', 44, '2024-05-09 00:42:08'),
(129, 'Manon Michel', 'Manon.Michel@bbox.fr', '', 38, '2024-05-09 00:42:08'),
(130, 'Francesco Marino', 'Francesco.Marino@tiscali.it', '', 91, '2024-05-09 00:42:08'),
(131, 'Francesco Marino', 'Francesco.Marino@fastwebnet.it', '', 99, '2024-05-09 00:42:08'),
(132, 'Haruka Suzuki', 'Haruka.Suzuki@ybb.ne.jp', '', 67, '2024-05-09 00:42:08'),
(133, 'Hui Huang', 'Hui.Huang@sohu.com', '', 60, '2024-05-09 00:42:08'),
(134, 'Emma Janssen', 'Emma.Janssen@gmail.com', '', 22, '2024-05-09 00:42:08'),
(135, 'Yuna Nakamura', 'Yuna.Nakamura@yahoo.co.jp', '', 64, '2024-05-09 00:42:08'),
(136, 'Nathan Dubois', 'Nathan.Dubois@bbox.fr', '', 39, '2024-05-09 00:42:08'),
(137, 'Riku Watanabe', 'Riku.Watanabe@ezweb.ne.jp', '', 68, '2024-05-09 00:42:08'),
(138, 'Jing Zhao', 'Jing.Zhao@126.com', '', 53, '2024-05-09 00:42:08'),
(139, 'Yun Zhang', 'Yun.Zhang@139.com', '', 55, '2024-05-09 00:42:08'),
(140, 'Francesco Bianchi', 'Francesco.Bianchi@outlook.it', '', 93, '2024-05-09 00:42:08'),
(141, 'Lisa Visser', 'Lisa.Visser@hotmail.nl', '', 28, '2024-05-09 00:42:08'),
(142, 'Louis Garcia', 'Louis.Garcia@sfr.fr', '', 33, '2024-05-09 00:42:08'),
(143, 'Hui Zhang', 'Hui.Zhang@tom.com', '', 58, '2024-05-09 00:42:08'),
(144, 'Olivia Young', 'Olivia.Young@videotron.ca', '', 86, '2024-05-09 00:42:08'),
(145, 'Alejandro Fernández', 'Alejandro.Fernández@hotmail.es', '', 45, '2024-05-09 00:42:08'),
(146, 'Thijs Vandijk', 'Thijs.Vandijk@planet.nl', '', 25, '2024-05-09 00:42:08'),
(147, 'Daan Vandenberg', 'Daan.Vandenberg@outlook.nl', '', 27, '2024-05-09 00:42:08'),
(148, 'Thomas Moreau', 'Thomas.Moreau@gmail.com', '', 36, '2024-05-09 00:42:08'),
(149, 'Daan Devries', 'Daan.Devries@ziggo.nl', '', 24, '2024-05-09 00:42:08'),
(150, 'Re Kato', 'Re.Kato@ybb.ne.jp', '', 61, '2024-05-09 00:42:08'),
(151, 'Javier García', 'Javier.García@orange.es', '', 43, '2024-05-09 00:42:08'),
(152, 'Li Huang', 'Li.Huang@qq.com', '', 59, '2024-05-09 00:42:08'),
(153, 'Emma Vandijk', 'Emma.Vandijk@hotmail.nl', '', 24, '2024-05-09 00:42:08'),
(154, 'Emily Miller', 'Emily.Miller@outlook.com', '', 5, '2024-05-09 00:42:08'),
(155, 'Bram Visser', 'Bram.Visser@outlook.nl', '', 29, '2024-05-09 00:42:08'),
(156, 'Liam Hall', 'Liam.Hall@outlook.com', '', 89, '2024-05-09 00:42:08'),
(157, 'Léa Martin', 'Léa.Martin@free.fr', '', 40, '2024-05-09 00:42:08'),
(158, 'Emma Young', 'Emma.Young@gmail.ca', '', 88, '2024-05-09 00:42:08'),
(159, 'Oliver Taylor', 'Oliver.Taylor@btinternet.com', '', 77, '2024-05-09 00:42:08'),
(160, 'Ethan Lee', 'Ethan.Lee@hotmail.ca', '', 84, '2024-05-09 00:42:08'),
(161, 'Oliver Harris', 'Oliver.Harris@sky.com', '', 76, '2024-05-09 00:42:08'),
(162, 'Oliver Green', 'Oliver.Green@yahoo.co.uk', '', 74, '2024-05-09 00:42:08'),
(163, 'Emma Davis', 'Emma.Davis@mail.com', '', 10, '2024-05-09 00:42:08'),
(164, 'Yuto Sato', 'Yuto.Sato@gmail.jp', '', 68, '2024-05-09 00:42:08'),
(165, 'Aoi Takahashi', 'Aoi.Takahashi@gmail.jp', '', 68, '2024-05-09 00:42:08'),
(166, 'Benjamin Williams', 'Benjamin.Williams@yahoo.com', '', 3, '2024-05-09 00:42:08'),
(167, 'Thijs Bakker', 'Thijs.Bakker@yahoo.nl', '', 30, '2024-05-09 00:42:08'),
(168, 'William Smith', 'William.Smith@protonmail.com', '', 5, '2024-05-09 00:42:08'),
(169, 'Daan Janssen', 'Daan.Janssen@yahoo.nl', '', 24, '2024-05-09 00:42:08'),
(170, 'Giulia Ricci', 'Giulia.Ricci@outlook.it', '', 98, '2024-05-09 00:42:08'),
(171, 'Lisa Janssen', 'Lisa.Janssen@hotmail.nl', '', 21, '2024-05-09 00:42:08'),
(172, 'Emma Brown', 'Emma.Brown@gmail.ca', '', 89, '2024-05-09 00:42:08'),
(173, 'Thijs Janssen', 'Thijs.Janssen@gmail.com', '', 21, '2024-05-09 00:42:08'),
(174, 'Matteo Romano', 'Matteo.Romano@libero.it', '', 95, '2024-05-09 00:42:08'),
(175, 'Sophie Wagner', 'Sophie.Wagner@t-online.de', '', 17, '2024-05-09 00:42:08'),
(176, 'Benjamin Young', 'Benjamin.Young@bell.net', '', 82, '2024-05-09 00:42:08'),
(177, 'Lucas Meijer', 'Lucas.Meijer@ziggo.nl', '', 28, '2024-05-09 00:42:08'),
(178, 'Olivia Smith', 'Olivia.Smith@sympatico.ca', '', 88, '2024-05-09 00:42:08'),
(179, 'Emma Jansen', 'Emma.Jansen@live.nl', '', 23, '2024-05-09 00:42:08'),
(180, 'Lucia Martin', 'Lucia.Martin@yahoo.es', '', 48, '2024-05-09 00:42:08'),
(181, 'Lisa Vandenberg', 'Lisa.Vandenberg@gmail.com', '', 26, '2024-05-09 00:42:08'),
(182, 'Emma Becker', 'Emma.Becker@hotmail.de', '', 19, '2024-05-09 00:42:08'),
(183, 'Aoi Nakamura', 'Aoi.Nakamura@au.com', '', 70, '2024-05-09 00:42:08'),
(184, 'Daniel García', 'Daniel.García@yahoo.es', '', 48, '2024-05-09 00:42:08'),
(185, 'Yui Kobayashi', 'Yui.Kobayashi@infoseek.jp', '', 68, '2024-05-09 00:42:08'),
(186, 'William Williams', 'William.Williams@icloud.com', '', 10, '2024-05-09 00:42:08'),
(187, 'John Jones', 'John.Jones@protonmail.com', '', 9, '2024-05-09 00:42:08'),
(188, 'Isabella Walker', 'Isabella.Walker@sky.com', '', 80, '2024-05-09 00:42:08'),
(189, 'Emily Garcia', 'Emily.Garcia@outlook.com', '', 4, '2024-05-09 00:42:08'),
(190, 'Lotte Meijer', 'Lotte.Meijer@kpnmail.nl', '', 25, '2024-05-09 00:42:08'),
(191, 'David Smith', 'David.Smith@zoho.com', '', 3, '2024-05-09 00:42:08'),
(192, 'Mia White', 'Mia.White@outlook.com', '', 81, '2024-05-09 00:42:08'),
(193, 'Sora Takahashi', 'Sora.Takahashi@jp.com', '', 62, '2024-05-09 00:42:08'),
(194, 'Li Chen', 'Li.Chen@126.com', '', 57, '2024-05-09 00:42:08'),
(195, 'Hugo Petit', 'Hugo.Petit@gmail.com', '', 37, '2024-05-09 00:42:08'),
(196, 'Lucia Sanchez', 'Lucia.Sanchez@gmail.es', '', 45, '2024-05-09 00:42:08'),
(197, 'Bram Meijer', 'Bram.Meijer@xs4all.nl', '', 27, '2024-05-09 00:42:08'),
(198, 'Giovanni Russo', 'Giovanni.Russo@fastwebnet.it', '', 96, '2024-05-09 00:42:08'),
(199, 'Xiaowei Zhou', 'Xiaowei.Zhou@21cn.com', '', 52, '2024-05-09 00:42:08'),
(200, 'Emily Harris', 'Emily.Harris@outlook.co.uk', '', 76, '2024-05-09 00:42:08'),
(201, 'Alejandro Fernández', 'Alejandro.Fernández@orange.es', '', 43, '2024-05-09 00:42:08'),
(202, 'Liam Tremblay', 'Liam.Tremblay@bell.net', '', 87, '2024-05-09 00:42:08'),
(203, 'Sophia Brown', 'Sophia.Brown@hotmail.ca', '', 87, '2024-05-09 00:42:08'),
(204, 'Li Wang', 'Li.Wang@126.com', '', 55, '2024-05-09 00:42:08'),
(205, 'Sophie Bakker', 'Sophie.Bakker@outlook.nl', '', 25, '2024-05-09 00:42:08'),
(206, 'Lucia Martin', 'Lucia.Martin@hotmail.es', '', 50, '2024-05-09 00:42:08'),
(207, 'Giorgia Colombo', 'Giorgia.Colombo@libero.it', '', 96, '2024-05-09 00:42:08'),
(208, 'Re Watanabe', 'Re.Watanabe@docomo.ne.jp', '', 70, '2024-05-09 00:42:08'),
(209, 'Lucas Vandenberg', 'Lucas.Vandenberg@planet.nl', '', 30, '2024-05-09 00:42:08'),
(210, 'Olivia Lee', 'Olivia.Lee@cogeco.ca', '', 90, '2024-05-09 00:42:08'),
(211, 'Benjamin Davis', 'Benjamin.Davis@gmail.com', '', 9, '2024-05-09 00:42:08'),
(212, 'Francesco Rossi', 'Francesco.Rossi@tiscali.it', '', 94, '2024-05-09 00:42:08'),
(213, 'Olivia Young', 'Olivia.Young@rogers.com', '', 86, '2024-05-09 00:42:08'),
(214, 'Feng Zhang', 'Feng.Zhang@21cn.com', '', 59, '2024-05-09 00:42:08'),
(215, 'Emma Hall', 'Emma.Hall@cogeco.ca', '', 87, '2024-05-09 00:42:09'),
(216, 'Benjamin Jones', 'Benjamin.Jones@hotmail.com', '', 1, '2024-05-09 00:42:09'),
(217, 'Pablo Martinez', 'Pablo.Martinez@orange.es', '', 45, '2024-05-09 00:42:09'),
(218, 'Oliver Hill', 'Oliver.Hill@yahoo.co.uk', '', 71, '2024-05-09 00:42:09'),
(219, 'Giovanni Russo', 'Giovanni.Russo@yahoo.it', '', 100, '2024-05-09 00:42:09'),
(220, 'Haruka Suzuki', 'Haruka.Suzuki@nifty.com', '', 62, '2024-05-09 00:42:09'),
(221, 'Paul Fischer', 'Paul.Fischer@freenet.de', '', 19, '2024-05-09 00:42:09'),
(222, 'Noah Brown', 'Noah.Brown@outlook.com', '', 83, '2024-05-09 00:42:09'),
(223, 'Aurora Marino', 'Aurora.Marino@icloud.com', '', 97, '2024-05-09 00:42:09'),
(224, 'Matteo Russo', 'Matteo.Russo@outlook.it', '', 97, '2024-05-09 00:42:09'),
(225, 'Léa Moreau', 'Léa.Moreau@bbox.fr', '', 31, '2024-05-09 00:42:09'),
(226, 'Manon Dubois', 'Manon.Dubois@gmail.com', '', 35, '2024-05-09 00:42:09'),
(227, 'Mia Brown', 'Mia.Brown@outlook.com', '', 86, '2024-05-09 00:42:09'),
(228, 'Ava Green', 'Ava.Green@outlook.co.uk', '', 72, '2024-05-09 00:42:09'),
(229, 'Benjamin Tremblay', 'Benjamin.Tremblay@sympatico.ca', '', 86, '2024-05-09 00:42:09'),
(230, 'Giorgia Russo', 'Giorgia.Russo@yahoo.it', '', 92, '2024-05-09 00:42:09'),
(231, 'Emily Clark', 'Emily.Clark@icloud.com', '', 75, '2024-05-09 00:42:09'),
(232, 'Maximilian Schmidt', 'Maximilian.Schmidt@hotmail.de', '', 18, '2024-05-09 00:42:09'),
(233, 'Nathan David', 'Nathan.David@wanadoo.fr', '', 37, '2024-05-09 00:42:09'),
(234, 'Maria Schmidt', 'Maria.Schmidt@gmail.de', '', 17, '2024-05-09 00:42:09'),
(235, 'Isabella Lewis', 'Isabella.Lewis@hotmail.co.uk', '', 79, '2024-05-09 00:42:09'),
(236, 'Julia Fischer', 'Julia.Fischer@t-online.de', '', 20, '2024-05-09 00:42:09'),
(237, 'Aoi Sato', 'Aoi.Sato@infoseek.jp', '', 67, '2024-05-09 00:42:09'),
(238, 'Giulia Marino', 'Giulia.Marino@fastwebnet.it', '', 100, '2024-05-09 00:42:09'),
(239, 'Wei Wu', 'Wei.Wu@sina.com', '', 55, '2024-05-09 00:42:09'),
(240, 'David Brown', 'David.Brown@aol.com', '', 9, '2024-05-09 00:42:09'),
(241, 'Li Zhang', 'Li.Zhang@21cn.com', '', 58, '2024-05-09 00:42:09'),
(242, 'Thomas David', 'Thomas.David@yahoo.fr', '', 40, '2024-05-09 00:42:09'),
(243, 'Aoi Takahashi', 'Aoi.Takahashi@yahoo.co.jp', '', 68, '2024-05-09 00:42:09'),
(244, 'Thomas Garcia', 'Thomas.Garcia@free.fr', '', 33, '2024-05-09 00:42:09'),
(245, 'Giorgia Marino', 'Giorgia.Marino@outlook.it', '', 100, '2024-05-09 00:42:09'),
(246, 'Lucia Rodriguez', 'Lucia.Rodriguez@telefonica.net', '', 41, '2024-05-09 00:42:09'),
(247, 'Hui Wu', 'Hui.Wu@21cn.com', '', 59, '2024-05-09 00:42:09'),
(248, 'Yun Li', 'Yun.Li@189.cn', '', 52, '2024-05-09 00:42:09'),
(249, 'Javier Fernández', 'Javier.Fernández@yahoo.es', '', 48, '2024-05-09 00:42:09'),
(250, 'Louis Dubois', 'Louis.Dubois@outlook.fr', '', 32, '2024-05-09 00:42:09'),
(251, 'Re Takahashi', 'Re.Takahashi@ezweb.ne.jp', '', 61, '2024-05-09 00:42:09'),
(252, 'Sergio Martinez', 'Sergio.Martinez@orange.es', '', 43, '2024-05-09 00:42:09'),
(253, 'David Davis', 'David.Davis@mail.com', '', 4, '2024-05-09 00:42:09'),
(254, 'Sophia Hill', 'Sophia.Hill@sky.com', '', 73, '2024-05-09 00:42:09'),
(255, 'Carmen García', 'Carmen.García@gmail.es', '', 42, '2024-05-09 00:42:09'),
(256, 'Riku Kato', 'Riku.Kato@jp.com', '', 70, '2024-05-09 00:42:09'),
(257, 'Ming Wu', 'Ming.Wu@189.cn', '', 60, '2024-05-09 00:42:09'),
(258, 'Leon Schmidt', 'Leon.Schmidt@t-online.de', '', 19, '2024-05-09 00:42:09'),
(259, 'Francesco Colombo', 'Francesco.Colombo@yahoo.it', '', 95, '2024-05-09 00:42:09'),
(260, 'Noah Clark', 'Noah.Clark@sky.com', '', 76, '2024-05-09 00:42:09'),
(261, 'Harry King', 'Harry.King@protonmail.com', '', 79, '2024-05-09 00:42:09'),
(262, 'Aurora Esposito', 'Aurora.Esposito@outlook.it', '', 98, '2024-05-09 00:42:09'),
(263, 'Sergio Martin', 'Sergio.Martin@yahoo.es', '', 45, '2024-05-09 00:42:09'),
(264, 'Ethan Walker', 'Ethan.Walker@hotmail.ca', '', 86, '2024-05-09 00:42:09'),
(265, 'Eva Vandijk', 'Eva.Vandijk@planet.nl', '', 30, '2024-05-09 00:42:09'),
(266, 'Yui Kato', 'Yui.Kato@ezweb.ne.jp', '', 69, '2024-05-09 00:42:09'),
(267, 'Emily Garcia', 'Emily.Garcia@aol.com', '', 5, '2024-05-09 00:42:09'),
(268, 'Jack Harris', 'Jack.Harris@hotmail.co.uk', '', 78, '2024-05-09 00:42:09'),
(269, 'Sarah Smith', 'Sarah.Smith@gmail.com', '', 8, '2024-05-09 00:42:09'),
(270, 'John Williams', 'John.Williams@gmx.com', '', 7, '2024-05-09 00:42:09'),
(271, 'Yui Kato', 'Yui.Kato@nifty.com', '', 68, '2024-05-09 00:42:09'),
(272, 'Carmen García', 'Carmen.García@live.com', '', 42, '2024-05-09 00:42:09'),
(273, 'Julia Schneider', 'Julia.Schneider@1und1.de', '', 13, '2024-05-09 00:42:09'),
(274, 'Giulia Russo', 'Giulia.Russo@icloud.com', '', 95, '2024-05-09 00:42:09'),
(275, 'Emma Devries', 'Emma.Devries@kpnmail.nl', '', 23, '2024-05-09 00:42:09'),
(276, 'Aurora Colombo', 'Aurora.Colombo@tiscali.it', '', 100, '2024-05-09 00:42:09'),
(277, 'John Wilson', 'John.Wilson@icloud.com', '', 5, '2024-05-09 00:42:09'),
(278, 'Tim Smit', 'Tim.Smit@hotmail.nl', '', 27, '2024-05-09 00:42:09'),
(279, 'David Davis', 'David.Davis@hotmail.com', '', 2, '2024-05-09 00:42:09'),
(280, 'Yui Ito', 'Yui.Ito@yahoo.co.jp', '', 67, '2024-05-09 00:42:09'),
(281, 'Michael Williams', 'Michael.Williams@gmail.com', '', 8, '2024-05-09 00:42:09'),
(282, 'Manon Lefebvre', 'Manon.Lefebvre@gmail.com', '', 33, '2024-05-09 00:42:09'),
(283, 'Haruka Nakamura', 'Haruka.Nakamura@jp.com', '', 64, '2024-05-09 00:42:09'),
(284, 'Feng Huang', 'Feng.Huang@sina.com', '', 53, '2024-05-09 00:42:09'),
(285, 'John Smith', 'John.Smith@gmx.com', '', 9, '2024-05-09 00:42:09'),
(286, 'Bram Bakker', 'Bram.Bakker@xs4all.nl', '', 29, '2024-05-09 00:42:09'),
(287, 'Lucas Tremblay', 'Lucas.Tremblay@outlook.com', '', 84, '2024-05-09 00:42:09'),
(288, 'Marta Gomez', 'Marta.Gomez@yahoo.es', '', 46, '2024-05-09 00:42:09'),
(289, 'Aurora Ricci', 'Aurora.Ricci@yahoo.it', '', 97, '2024-05-09 00:42:09'),
(290, 'Jing Liu', 'Jing.Liu@163.com', '', 52, '2024-05-09 00:42:09'),
(291, 'Xiaowei Chen', 'Xiaowei.Chen@126.com', '', 55, '2024-05-09 00:42:09'),
(292, 'Nathan Petit', 'Nathan.Petit@gmail.com', '', 37, '2024-05-09 00:42:09'),
(293, 'Jun Zhang', 'Jun.Zhang@qq.com', '', 52, '2024-05-09 00:42:09'),
(294, 'Luca Ferrari', 'Luca.Ferrari@outlook.it', '', 95, '2024-05-09 00:42:09'),
(295, 'Harry Brown', 'Harry.Brown@icloud.com', '', 79, '2024-05-09 00:42:09'),
(296, 'Isabella Hill', 'Isabella.Hill@icloud.com', '', 76, '2024-05-09 00:42:09'),
(297, 'Feng Chen', 'Feng.Chen@21cn.com', '', 51, '2024-05-09 00:42:09'),
(298, 'Noah King', 'Noah.King@icloud.com', '', 72, '2024-05-09 00:42:09'),
(299, 'Sakura Yamamoto', 'Sakura.Yamamoto@softbank.ne.jp', '', 68, '2024-05-09 00:42:09'),
(300, 'Daniel Martinez', 'Daniel.Martinez@terra.es', '', 46, '2024-05-09 00:42:09'),
(301, 'Sara García', 'Sara.García@movistar.es', '', 46, '2024-05-09 00:42:09'),
(302, 'Maximilian Muller', 'Maximilian.Muller@1und1.de', '', 14, '2024-05-09 00:42:09'),
(303, 'Lucas Michel', 'Lucas.Michel@gmail.com', '', 32, '2024-05-09 00:42:09'),
(304, 'Tim Bakker', 'Tim.Bakker@yahoo.nl', '', 23, '2024-05-09 00:42:09'),
(305, 'John Davis', 'John.Davis@gmx.com', '', 9, '2024-05-09 00:42:09'),
(306, 'James Rodriguez', 'James.Rodriguez@outlook.com', '', 5, '2024-05-09 00:42:09'),
(307, 'Emma Vandijk', 'Emma.Vandijk@telfort.nl', '', 25, '2024-05-09 00:42:09'),
(308, 'David Rodriguez', 'David.Rodriguez@aol.com', '', 9, '2024-05-09 00:42:09'),
(309, 'Sofia Ferrari', 'Sofia.Ferrari@libero.it', '', 95, '2024-05-09 00:42:09'),
(310, 'Yui Ito', 'Yui.Ito@ezweb.ne.jp', '', 66, '2024-05-09 00:42:09'),
(311, 'Alessandro Ricci', 'Alessandro.Ricci@alice.it', '', 93, '2024-05-09 00:42:09'),
(312, 'Sarah Williams', 'Sarah.Williams@outlook.com', '', 2, '2024-05-09 00:42:09'),
(313, 'Liam White', 'Liam.White@outlook.com', '', 84, '2024-05-09 00:42:09'),
(314, 'Giovanni Rossi', 'Giovanni.Rossi@libero.it', '', 96, '2024-05-09 00:42:09'),
(315, 'Ming Zhang', 'Ming.Zhang@sohu.com', '', 56, '2024-05-09 00:42:09'),
(316, 'Daniel Martin', 'Daniel.Martin@yahoo.es', '', 47, '2024-05-09 00:42:09'),
(317, 'Alessandro Bianchi', 'Alessandro.Bianchi@libero.it', '', 94, '2024-05-09 00:42:09'),
(318, 'David Johnson', 'David.Johnson@aol.com', '', 9, '2024-05-09 00:42:09'),
(319, 'Elizabeth Johnson', 'Elizabeth.Johnson@icloud.com', '', 6, '2024-05-09 00:42:09'),
(320, 'Tim Vandijk', 'Tim.Vandijk@planet.nl', '', 28, '2024-05-09 00:42:09'),
(321, 'Marta Martin', 'Marta.Martin@terra.es', '', 45, '2024-05-09 00:42:09'),
(322, 'Ethan Tremblay', 'Ethan.Tremblay@live.ca', '', 85, '2024-05-09 00:42:09'),
(323, 'Maria Hoffmann', 'Maria.Hoffmann@gmail.de', '', 18, '2024-05-09 00:42:09'),
(324, 'Emma Bakker', 'Emma.Bakker@xs4all.nl', '', 28, '2024-05-09 00:42:09'),
(325, 'Sofia Greco', 'Sofia.Greco@alice.it', '', 93, '2024-05-09 00:42:09'),
(326, 'George Clark', 'George.Clark@hotmail.co.uk', '', 71, '2024-05-09 00:42:09'),
(327, 'Alessandro Greco', 'Alessandro.Greco@fastwebnet.it', '', 97, '2024-05-09 00:42:09'),
(328, 'Giulia Marino', 'Giulia.Marino@virgilio.it', '', 96, '2024-05-09 00:42:09'),
(329, 'Sophie Devries', 'Sophie.Devries@gmail.com', '', 30, '2024-05-09 00:42:09'),
(330, 'Julia Schmidt', 'Julia.Schmidt@arcor.de', '', 14, '2024-05-09 00:42:09'),
(331, 'Léa Michel', 'Léa.Michel@outlook.fr', '', 36, '2024-05-09 00:42:09'),
(332, 'Louis Michel', 'Louis.Michel@outlook.fr', '', 38, '2024-05-09 00:42:09'),
(333, 'Javier Martinez', 'Javier.Martinez@outlook.es', '', 41, '2024-05-09 00:42:09'),
(334, 'Haruka Tanaka', 'Haruka.Tanaka@jp.com', '', 65, '2024-05-09 00:42:09'),
(335, 'Emma David', 'Emma.David@gmail.com', '', 33, '2024-05-09 00:42:09'),
(336, 'Wei Zhang', 'Wei.Zhang@sina.com', '', 51, '2024-05-09 00:42:09'),
(337, 'Bram Janssen', 'Bram.Janssen@gmail.com', '', 22, '2024-05-09 00:42:09'),
(338, 'Tim Meijer', 'Tim.Meijer@gmail.com', '', 22, '2024-05-09 00:42:09'),
(339, 'David Williams', 'David.Williams@icloud.com', '', 1, '2024-05-09 00:42:09'),
(340, 'Francesco Greco', 'Francesco.Greco@alice.it', '', 93, '2024-05-09 00:42:09'),
(341, 'George Walker', 'George.Walker@hotmail.co.uk', '', 74, '2024-05-09 00:42:09'),
(342, 'Jing Liu', 'Jing.Liu@qq.com', '', 57, '2024-05-09 00:42:09'),
(343, 'Haruka Suzuki', 'Haruka.Suzuki@softbank.ne.jp', '', 69, '2024-05-09 00:42:09'),
(344, 'Chloé Petit', 'Chloé.Petit@gmail.com', '', 31, '2024-05-09 00:42:09'),
(345, 'John Jones', 'John.Jones@zoho.com', '', 1, '2024-05-09 00:42:09'),
(346, 'Leon Schneider', 'Leon.Schneider@arcor.de', '', 13, '2024-05-09 00:42:09'),
(347, 'Eva Visser', 'Eva.Visser@telfort.nl', '', 24, '2024-05-09 00:42:09'),
(348, 'Haruka Takahashi', 'Haruka.Takahashi@yahoo.co.jp', '', 67, '2024-05-09 00:42:09'),
(349, 'Sofia Ferrari', 'Sofia.Ferrari@virgilio.it', '', 91, '2024-05-09 00:42:09'),
(350, 'Sofia Esposito', 'Sofia.Esposito@alice.it', '', 95, '2024-05-09 00:42:09'),
(351, 'Wei Chen', 'Wei.Chen@21cn.com', '', 51, '2024-05-09 00:42:09'),
(352, 'Jing Zhang', 'Jing.Zhang@189.cn', '', 54, '2024-05-09 00:42:09'),
(353, 'Sakura Kato', 'Sakura.Kato@docomo.ne.jp', '', 67, '2024-05-09 00:42:09'),
(354, 'William Wilson', 'William.Wilson@zoho.com', '', 6, '2024-05-09 00:42:09'),
(355, 'Sophie Weber', 'Sophie.Weber@arcor.de', '', 12, '2024-05-09 00:42:09'),
(356, 'Liam Johnson', 'Liam.Johnson@rogers.com', '', 88, '2024-05-09 00:42:09'),
(357, 'Sora Watanabe', 'Sora.Watanabe@au.com', '', 64, '2024-05-09 00:42:09'),
(358, 'Camille Martin', 'Camille.Martin@yahoo.fr', '', 38, '2024-05-09 00:42:09'),
(359, 'Manon Michel', 'Manon.Michel@free.fr', '', 40, '2024-05-09 00:42:09'),
(360, 'Alejandro Perez', 'Alejandro.Perez@movistar.es', '', 42, '2024-05-09 00:42:09'),
(361, 'Emma Walker', 'Emma.Walker@live.ca', '', 85, '2024-05-09 00:42:09'),
(362, 'Benjamin Smith', 'Benjamin.Smith@icloud.com', '', 10, '2024-05-09 00:42:09'),
(363, 'Anna Becker', 'Anna.Becker@t-online.de', '', 17, '2024-05-09 00:42:09'),
(364, 'Pablo Perez', 'Pablo.Perez@terra.es', '', 42, '2024-05-09 00:42:09'),
(365, 'Noah Lee', 'Noah.Lee@gmail.ca', '', 88, '2024-05-09 00:42:09'),
(366, 'Riku Nakamura', 'Riku.Nakamura@ybb.ne.jp', '', 61, '2024-05-09 00:42:09'),
(367, 'Maximilian Wagner', 'Maximilian.Wagner@hotmail.de', '', 11, '2024-05-09 00:42:09'),
(368, 'Jing Wu', 'Jing.Wu@21cn.com', '', 59, '2024-05-09 00:42:09'),
(369, 'Nathan Moreau', 'Nathan.Moreau@hotmail.fr', '', 33, '2024-05-09 00:42:10'),
(370, 'Thijs Devries', 'Thijs.Devries@outlook.nl', '', 25, '2024-05-09 00:42:10'),
(371, 'Lisa Janssen', 'Lisa.Janssen@gmail.com', '', 24, '2024-05-09 00:42:10'),
(372, 'William Rodriguez', 'William.Rodriguez@aol.com', '', 3, '2024-05-09 00:42:10'),
(373, 'Marta Martinez', 'Marta.Martinez@yahoo.es', '', 49, '2024-05-09 00:42:10'),
(374, 'Feng Li', 'Feng.Li@tom.com', '', 55, '2024-05-09 00:42:10'),
(375, 'Mia Lee', 'Mia.Lee@yahoo.ca', '', 85, '2024-05-09 00:42:10'),
(376, 'Ethan Martin', 'Ethan.Martin@sympatico.ca', '', 83, '2024-05-09 00:42:10'),
(377, 'Luca Bianchi', 'Luca.Bianchi@outlook.it', '', 92, '2024-05-09 00:42:10'),
(378, 'Pablo Martin', 'Pablo.Martin@yahoo.es', '', 46, '2024-05-09 00:42:10'),
(379, 'Elizabeth Johnson', 'Elizabeth.Johnson@aol.com', '', 3, '2024-05-09 00:42:10'),
(380, 'Chloé Martin', 'Chloé.Martin@laposte.net', '', 35, '2024-05-09 00:42:10'),
(381, 'Wei Wang', 'Wei.Wang@189.cn', '', 55, '2024-05-09 00:42:10'),
(382, 'Sakura Nakamura', 'Sakura.Nakamura@infoseek.jp', '', 68, '2024-05-09 00:42:10'),
(383, 'William Jones', 'William.Jones@icloud.com', '', 10, '2024-05-09 00:42:10'),
(384, 'Javier Gonzalez', 'Javier.Gonzalez@telefonica.net', '', 42, '2024-05-09 00:42:10'),
(385, 'Alessandro Romano', 'Alessandro.Romano@gmail.com', '', 99, '2024-05-09 00:42:10'),
(386, 'Michael Williams', 'Michael.Williams@gmx.com', '', 8, '2024-05-09 00:42:10'),
(387, 'Alejandro Gomez', 'Alejandro.Gomez@hotmail.es', '', 50, '2024-05-09 00:42:10'),
(388, 'Noah Harris', 'Noah.Harris@outlook.co.uk', '', 72, '2024-05-09 00:42:10'),
(389, 'Emily Brown', 'Emily.Brown@hotmail.com', '', 6, '2024-05-09 00:42:10'),
(390, 'Thijs Dejong', 'Thijs.Dejong@xs4all.nl', '', 27, '2024-05-09 00:42:10'),
(391, 'Caterina Romano', 'Caterina.Romano@gmail.com', '', 96, '2024-05-09 00:42:10'),
(392, 'Maria Weber', 'Maria.Weber@arcor.de', '', 11, '2024-05-09 00:42:10'),
(393, 'Emma Hoffmann', 'Emma.Hoffmann@1und1.de', '', 11, '2024-05-09 00:42:10'),
(394, 'Thijs Meijer', 'Thijs.Meijer@gmail.com', '', 24, '2024-05-09 00:42:10'),
(395, 'Bram Devries', 'Bram.Devries@gmail.com', '', 29, '2024-05-09 00:42:10'),
(396, 'Sara Sanchez', 'Sara.Sanchez@ya.com', '', 47, '2024-05-09 00:42:10'),
(397, 'Xiaowei Zhao', 'Xiaowei.Zhao@qq.com', '', 51, '2024-05-09 00:42:10'),
(398, 'Lucas Garcia', 'Lucas.Garcia@yahoo.fr', '', 33, '2024-05-09 00:42:10'),
(399, 'Laura García', 'Laura.García@outlook.es', '', 48, '2024-05-09 00:42:10'),
(400, 'Benjamin Brown', 'Benjamin.Brown@hotmail.ca', '', 90, '2024-05-09 00:42:10'),
(401, 'Maria Schafer', 'Maria.Schafer@1und1.de', '', 18, '2024-05-09 00:42:10'),
(402, 'Matteo Ricci', 'Matteo.Ricci@yahoo.it', '', 95, '2024-05-09 00:42:10'),
(403, 'George Turner', 'George.Turner@protonmail.com', '', 79, '2024-05-09 00:42:10'),
(404, 'Lucia Martin', 'Lucia.Martin@telefonica.net', '', 49, '2024-05-09 00:42:10'),
(405, 'Emma Williams', 'Emma.Williams@zoho.com', '', 9, '2024-05-09 00:42:10'),
(406, 'Javier Perez', 'Javier.Perez@orange.es', '', 41, '2024-05-09 00:42:10'),
(407, 'Lucia Perez', 'Lucia.Perez@telefonica.net', '', 42, '2024-05-09 00:42:10'),
(408, 'Emily Wilson', 'Emily.Wilson@gmail.com', '', 1, '2024-05-09 00:42:10'),
(409, 'Noah King', 'Noah.King@aol.co.uk', '', 79, '2024-05-09 00:42:10'),
(410, 'Xiaowei Huang', 'Xiaowei.Huang@139.com', '', 57, '2024-05-09 00:42:10'),
(411, 'Feng Zhao', 'Feng.Zhao@126.com', '', 55, '2024-05-09 00:42:10'),
(412, 'Léa Petit', 'Léa.Petit@wanadoo.fr', '', 34, '2024-05-09 00:42:10'),
(413, 'George Taylor', 'George.Taylor@live.co.uk', '', 80, '2024-05-09 00:42:10'),
(414, 'Javier Sanchez', 'Javier.Sanchez@gmail.es', '', 41, '2024-05-09 00:42:10'),
(415, 'Harry Clark', 'Harry.Clark@gmail.co.uk', '', 77, '2024-05-09 00:42:10'),
(416, 'Jun Li', 'Jun.Li@yeah.net', '', 51, '2024-05-09 00:42:10'),
(417, 'Luis Meyer', 'Luis.Meyer@yahoo.de', '', 17, '2024-05-09 00:42:10'),
(418, 'Haruka Tanaka', 'Haruka.Tanaka@au.com', '', 67, '2024-05-09 00:42:10'),
(419, 'Lukas Weber', 'Lukas.Weber@freenet.de', '', 14, '2024-05-09 00:42:10'),
(420, 'Emma Miller', 'Emma.Miller@icloud.com', '', 8, '2024-05-09 00:42:10'),
(421, 'Manon Laurent', 'Manon.Laurent@orange.fr', '', 37, '2024-05-09 00:42:10'),
(422, 'Leon Wagner', 'Leon.Wagner@hotmail.de', '', 16, '2024-05-09 00:42:10'),
(423, 'Harry Green', 'Harry.Green@sky.com', '', 80, '2024-05-09 00:42:10'),
(424, 'Matteo Ricci', 'Matteo.Ricci@hotmail.it', '', 94, '2024-05-09 00:42:10'),
(425, 'Yuna Yamamoto', 'Yuna.Yamamoto@jp.com', '', 61, '2024-05-09 00:42:10'),
(426, 'Sergio Martin', 'Sergio.Martin@orange.es', '', 49, '2024-05-09 00:42:10'),
(427, 'Leon Weber', 'Leon.Weber@arcor.de', '', 12, '2024-05-09 00:42:10'),
(428, 'Riku Watanabe', 'Riku.Watanabe@docomo.ne.jp', '', 64, '2024-05-09 00:42:10'),
(429, 'Julia Meyer', 'Julia.Meyer@web.de', '', 19, '2024-05-09 00:42:10'),
(430, 'Manon Martin', 'Manon.Martin@hotmail.fr', '', 31, '2024-05-09 00:42:10'),
(431, 'Yun Chen', 'Yun.Chen@189.cn', '', 54, '2024-05-09 00:42:10'),
(432, 'Yuto Sato', 'Yuto.Sato@infoseek.jp', '', 68, '2024-05-09 00:42:10'),
(433, 'Daan Devries', 'Daan.Devries@yahoo.nl', '', 30, '2024-05-09 00:42:10'),
(434, 'Sergio Perez', 'Sergio.Perez@outlook.es', '', 49, '2024-05-09 00:42:10'),
(435, 'Sophia Hall', 'Sophia.Hall@rogers.com', '', 88, '2024-05-09 00:42:10'),
(436, 'Lucas Visser', 'Lucas.Visser@kpnmail.nl', '', 26, '2024-05-09 00:42:10'),
(437, 'Yui Sato', 'Yui.Sato@nifty.com', '', 62, '2024-05-09 00:42:10'),
(438, 'Lucas Michel', 'Lucas.Michel@wanadoo.fr', '', 35, '2024-05-09 00:42:10'),
(439, 'Sophie Weber', 'Sophie.Weber@gmx.de', '', 20, '2024-05-09 00:42:10'),
(440, 'Yuna Kobayashi', 'Yuna.Kobayashi@nifty.com', '', 61, '2024-05-09 00:42:10'),
(441, 'Sergio Sanchez', 'Sergio.Sanchez@movistar.es', '', 50, '2024-05-09 00:42:10'),
(442, 'Yuna Nakamura', 'Yuna.Nakamura@softbank.ne.jp', '', 69, '2024-05-09 00:42:10'),
(443, 'William Wilson', 'William.Wilson@mail.com', '', 1, '2024-05-09 00:42:10'),
(444, 'Lucas Martin', 'Lucas.Martin@wanadoo.fr', '', 32, '2024-05-09 00:42:10'),
(445, 'Olivia Tremblay', 'Olivia.Tremblay@videotron.ca', '', 90, '2024-05-09 00:42:10'),
(446, 'Re Tanaka', 'Re.Tanaka@jp.com', '', 70, '2024-05-09 00:42:10'),
(447, 'Marta García', 'Marta.García@yahoo.es', '', 44, '2024-05-09 00:42:10'),
(448, 'Sakura Tanaka', 'Sakura.Tanaka@ezweb.ne.jp', '', 67, '2024-05-09 00:42:10'),
(449, 'Caterina Ferrari', 'Caterina.Ferrari@fastwebnet.it', '', 91, '2024-05-09 00:42:10'),
(450, 'Sakura Kato', 'Sakura.Kato@yahoo.co.jp', '', 62, '2024-05-09 00:42:10'),
(451, 'Ming Zhang', 'Ming.Zhang@126.com', '', 52, '2024-05-09 00:42:10'),
(452, 'Lotte Bakker', 'Lotte.Bakker@ziggo.nl', '', 29, '2024-05-09 00:42:10'),
(453, 'Sophie Janssen', 'Sophie.Janssen@yahoo.nl', '', 28, '2024-05-09 00:42:10'),
(454, 'Yun Wu', 'Yun.Wu@sohu.com', '', 51, '2024-05-09 00:42:10'),
(455, 'Emma Dubois', 'Emma.Dubois@outlook.fr', '', 37, '2024-05-09 00:42:10'),
(456, 'Javier Gonzalez', 'Javier.Gonzalez@orange.es', '', 47, '2024-05-09 00:42:10'),
(457, 'Noah Taylor', 'Noah.Taylor@yahoo.co.uk', '', 80, '2024-05-09 00:42:10'),
(458, 'Lucas Bakker', 'Lucas.Bakker@gmail.com', '', 30, '2024-05-09 00:42:10'),
(459, 'Louis Dupont', 'Louis.Dupont@hotmail.fr', '', 38, '2024-05-09 00:42:10'),
(460, 'Sophia Martin', 'Sophia.Martin@live.ca', '', 84, '2024-05-09 00:42:10'),
(461, 'Liam Martin', 'Liam.Martin@gmail.ca', '', 88, '2024-05-09 00:42:10'),
(462, 'Caterina Russo', 'Caterina.Russo@libero.it', '', 92, '2024-05-09 00:42:10'),
(463, 'Sophia Brown', 'Sophia.Brown@live.ca', '', 88, '2024-05-09 00:42:10'),
(464, 'Laura Gomez', 'Laura.Gomez@yahoo.es', '', 50, '2024-05-09 00:42:10'),
(465, 'Re Ito', 'Re.Ito@jp.com', '', 65, '2024-05-09 00:42:10'),
(466, 'Wei Yang', 'Wei.Yang@189.cn', '', 54, '2024-05-09 00:42:10'),
(467, 'Haruto Watanabe', 'Haruto.Watanabe@docomo.ne.jp', '', 69, '2024-05-09 00:42:10'),
(468, 'Sophia Lee', 'Sophia.Lee@cogeco.ca', '', 85, '2024-05-09 00:42:10'),
(469, 'Julia Weber', 'Julia.Weber@outlook.de', '', 14, '2024-05-09 00:42:10'),
(470, 'William Miller', 'William.Miller@mail.com', '', 9, '2024-05-09 00:42:10'),
(471, 'Paul Schafer', 'Paul.Schafer@gmx.de', '', 12, '2024-05-09 00:42:10'),
(472, 'Haruto Nakamura', 'Haruto.Nakamura@softbank.ne.jp', '', 68, '2024-05-09 00:42:10'),
(473, 'Tim Smit', 'Tim.Smit@xs4all.nl', '', 30, '2024-05-09 00:42:10'),
(474, 'Chloé Martin', 'Chloé.Martin@wanadoo.fr', '', 32, '2024-05-09 00:42:10'),
(475, 'Giovanni Bianchi', 'Giovanni.Bianchi@fastwebnet.it', '', 91, '2024-05-09 00:42:10'),
(476, 'Sora Kato', 'Sora.Kato@ybb.ne.jp', '', 62, '2024-05-09 00:42:10'),
(477, 'Benjamin Davis', 'Benjamin.Davis@icloud.com', '', 6, '2024-05-09 00:42:10'),
(478, 'Eva Devries', 'Eva.Devries@planet.nl', '', 26, '2024-05-09 00:42:10'),
(479, 'Amelia Turner', 'Amelia.Turner@aol.co.uk', '', 75, '2024-05-09 00:42:10'),
(480, 'John Williams', 'John.Williams@aol.com', '', 3, '2024-05-09 00:42:10'),
(481, 'Laura Gonzalez', 'Laura.Gonzalez@orange.es', '', 50, '2024-05-09 00:42:10'),
(482, 'Emma Martin', 'Emma.Martin@yahoo.fr', '', 37, '2024-05-09 00:42:10'),
(483, 'Olivia White', 'Olivia.White@gmail.ca', '', 81, '2024-05-09 00:42:10'),
(484, 'Sophia Tremblay', 'Sophia.Tremblay@hotmail.ca', '', 86, '2024-05-09 00:42:10'),
(485, 'Yui Yamamoto', 'Yui.Yamamoto@gmail.jp', '', 70, '2024-05-09 00:42:10'),
(486, 'Sofia Ricci', 'Sofia.Ricci@fastwebnet.it', '', 98, '2024-05-09 00:42:10'),
(487, 'Tim Smit', 'Tim.Smit@outlook.nl', '', 25, '2024-05-09 00:42:10'),
(488, 'Sergio Lopez', 'Sergio.Lopez@outlook.es', '', 44, '2024-05-09 00:42:10'),
(489, 'Lukas Weber', 'Lukas.Weber@t-online.de', '', 13, '2024-05-09 00:42:10'),
(490, 'Re Ito', 'Re.Ito@ybb.ne.jp', '', 66, '2024-05-09 00:42:10'),
(491, 'Benjamin Walker', 'Benjamin.Walker@sympatico.ca', '', 86, '2024-05-09 00:42:10'),
(492, 'Javier García', 'Javier.García@yahoo.es', '', 41, '2024-05-09 00:42:10'),
(493, 'Yui Kato', 'Yui.Kato@yahoo.co.jp', '', 66, '2024-05-09 00:42:10'),
(494, 'Oliver Taylor', 'Oliver.Taylor@aol.co.uk', '', 72, '2024-05-09 00:42:10'),
(495, 'Marta Martin', 'Marta.Martin@live.com', '', 42, '2024-05-09 00:42:10'),
(496, 'Jing Yang', 'Jing.Yang@126.com', '', 52, '2024-05-09 00:42:10'),
(497, 'Jun Zhao', 'Jun.Zhao@tom.com', '', 52, '2024-05-09 00:42:10'),
(498, 'Amelia Brown', 'Amelia.Brown@outlook.co.uk', '', 74, '2024-05-09 00:42:10'),
(499, 'Ming Huang', 'Ming.Huang@yeah.net', '', 54, '2024-05-09 00:42:10'),
(500, 'Amelia Turner', 'Amelia.Turner@gmail.co.uk', '', 74, '2024-05-09 00:42:10');

-- --------------------------------------------------------

--
-- Table structure for table `event_log`
--

CREATE TABLE `event_log` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `event_type` varchar(50) DEFAULT NULL,
  `event_description` text DEFAULT NULL,
  `event_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `trip_id` int(11) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `comment` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `insurance`
--

CREATE TABLE `insurance` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `policy_number` varchar(100) DEFAULT NULL,
  `provider` varchar(100) DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `maintenance`
--

CREATE TABLE `maintenance` (
  `id` int(11) NOT NULL,
  `vehicle_id` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `maintenance_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `payment_date` datetime DEFAULT NULL,
  `trip_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pricing`
--

CREATE TABLE `pricing` (
  `id` int(11) NOT NULL,
  `vehicle_type` varchar(50) NOT NULL,
  `price_per_minute` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `promotion`
--

CREATE TABLE `promotion` (
  `id` int(11) NOT NULL,
  `code` varchar(50) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `route_suggestion`
--

CREATE TABLE `route_suggestion` (
  `id` int(11) NOT NULL,
  `trip_id` int(11) DEFAULT NULL,
  `suggested_route` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `station`
--

CREATE TABLE `station` (
  `id` int(11) NOT NULL,
  `city_id` int(11) DEFAULT NULL,
  `location_description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `support_ticket`
--

CREATE TABLE `support_ticket` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `creation_date` datetime DEFAULT NULL,
  `resolution_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `trip`
--

CREATE TABLE `trip` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `vehicle_id` int(11) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `start_station_id` int(11) DEFAULT NULL,
  `end_station_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_profile`
--

CREATE TABLE `user_profile` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `bio` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vehicle`
--

CREATE TABLE `vehicle` (
  `id` int(11) NOT NULL,
  `type` varchar(50) NOT NULL,
  `status` varchar(20) NOT NULL,
  `station_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_availability`
--

CREATE TABLE `vehicle_availability` (
  `id` int(11) NOT NULL,
  `vehicle_id` int(11) DEFAULT NULL,
  `station_id` int(11) DEFAULT NULL,
  `available_from` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id`),
  ADD KEY `country_id` (`country_id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `city_id` (`city_id`);

--
-- Indexes for table `event_log`
--
ALTER TABLE `event_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `trip_id` (`trip_id`);

--
-- Indexes for table `insurance`
--
ALTER TABLE `insurance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `maintenance`
--
ALTER TABLE `maintenance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vehicle_id` (`vehicle_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `trip_id` (`trip_id`);

--
-- Indexes for table `pricing`
--
ALTER TABLE `pricing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `promotion`
--
ALTER TABLE `promotion`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `route_suggestion`
--
ALTER TABLE `route_suggestion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `trip_id` (`trip_id`);

--
-- Indexes for table `station`
--
ALTER TABLE `station`
  ADD PRIMARY KEY (`id`),
  ADD KEY `city_id` (`city_id`);

--
-- Indexes for table `support_ticket`
--
ALTER TABLE `support_ticket`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `trip`
--
ALTER TABLE `trip`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `vehicle_id` (`vehicle_id`),
  ADD KEY `start_station_id` (`start_station_id`),
  ADD KEY `end_station_id` (`end_station_id`);

--
-- Indexes for table `user_profile`
--
ALTER TABLE `user_profile`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `vehicle`
--
ALTER TABLE `vehicle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `station_id` (`station_id`);

--
-- Indexes for table `vehicle_availability`
--
ALTER TABLE `vehicle_availability`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vehicle_id` (`vehicle_id`),
  ADD KEY `station_id` (`station_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7995;

--
-- AUTO_INCREMENT for table `event_log`
--
ALTER TABLE `event_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `insurance`
--
ALTER TABLE `insurance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `maintenance`
--
ALTER TABLE `maintenance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pricing`
--
ALTER TABLE `pricing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `promotion`
--
ALTER TABLE `promotion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `route_suggestion`
--
ALTER TABLE `route_suggestion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `station`
--
ALTER TABLE `station`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `support_ticket`
--
ALTER TABLE `support_ticket`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `trip`
--
ALTER TABLE `trip`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_profile`
--
ALTER TABLE `user_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vehicle`
--
ALTER TABLE `vehicle`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vehicle_availability`
--
ALTER TABLE `vehicle_availability`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `city`
--
ALTER TABLE `city`
  ADD CONSTRAINT `city_ibfk_1` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`);

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`city_id`) REFERENCES `city` (`id`);

--
-- Constraints for table `event_log`
--
ALTER TABLE `event_log`
  ADD CONSTRAINT `event_log_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`);

--
-- Constraints for table `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `feedback_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`),
  ADD CONSTRAINT `feedback_ibfk_2` FOREIGN KEY (`trip_id`) REFERENCES `trip` (`id`);

--
-- Constraints for table `insurance`
--
ALTER TABLE `insurance`
  ADD CONSTRAINT `insurance_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`);

--
-- Constraints for table `maintenance`
--
ALTER TABLE `maintenance`
  ADD CONSTRAINT `maintenance_ibfk_1` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicle` (`id`);

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`),
  ADD CONSTRAINT `payment_ibfk_2` FOREIGN KEY (`trip_id`) REFERENCES `trip` (`id`);

--
-- Constraints for table `route_suggestion`
--
ALTER TABLE `route_suggestion`
  ADD CONSTRAINT `route_suggestion_ibfk_1` FOREIGN KEY (`trip_id`) REFERENCES `trip` (`id`);

--
-- Constraints for table `station`
--
ALTER TABLE `station`
  ADD CONSTRAINT `station_ibfk_1` FOREIGN KEY (`city_id`) REFERENCES `city` (`id`);

--
-- Constraints for table `support_ticket`
--
ALTER TABLE `support_ticket`
  ADD CONSTRAINT `support_ticket_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`);

--
-- Constraints for table `trip`
--
ALTER TABLE `trip`
  ADD CONSTRAINT `trip_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`),
  ADD CONSTRAINT `trip_ibfk_2` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicle` (`id`),
  ADD CONSTRAINT `trip_ibfk_3` FOREIGN KEY (`start_station_id`) REFERENCES `station` (`id`),
  ADD CONSTRAINT `trip_ibfk_4` FOREIGN KEY (`end_station_id`) REFERENCES `station` (`id`);

--
-- Constraints for table `user_profile`
--
ALTER TABLE `user_profile`
  ADD CONSTRAINT `user_profile_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`);

--
-- Constraints for table `vehicle`
--
ALTER TABLE `vehicle`
  ADD CONSTRAINT `vehicle_ibfk_1` FOREIGN KEY (`station_id`) REFERENCES `station` (`id`);

--
-- Constraints for table `vehicle_availability`
--
ALTER TABLE `vehicle_availability`
  ADD CONSTRAINT `vehicle_availability_ibfk_1` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicle` (`id`),
  ADD CONSTRAINT `vehicle_availability_ibfk_2` FOREIGN KEY (`station_id`) REFERENCES `station` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
