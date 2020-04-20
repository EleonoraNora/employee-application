DROP DATABASE IF EXISTS `employees`;
CREATE DATABASE `employees`;
USE `employees`;

DROP TABLE IF EXISTS `departments`;
CREATE TABLE `departments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

TRUNCATE `departments`;
INSERT INTO `departments` (`id`, `name`) VALUES
(1,	'Java'),
(2,	'JavaScript'),
(3,	'Python'),
(4,	'PHP'),
(5,	'Scala'),
(6,	'Haskell');

DROP TABLE IF EXISTS `employees`;
CREATE TABLE `employees` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `active` bit(1) NOT NULL,
  `departmentId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `departmentId` (`departmentId`),
  CONSTRAINT `employees_ibfk_2` FOREIGN KEY (`departmentId`) REFERENCES `departments` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

TRUNCATE `employees`;
INSERT INTO `employees` (`id`, `name`, `active`, `departmentId`) VALUES
(1,	'Ian Sparks',	CONV('0', 2, 10) + 0,	1),
(2,	'Richard Barrett',	CONV('0', 2, 10) + 0,	1),
(3,	'Samuel Glass',	CONV('0', 2, 10) + 0,	1),
(4,	'Kato Gates',	CONV('0', 2, 10) + 0,	1),
(5,	'Leonard Morales',	CONV('0', 2, 10) + 0,	1),
(6,	'Len Valdez',	CONV('0', 2, 10) + 0,	1),
(7,	'John Sanford',	CONV('0', 2, 10) + 0,	1),
(8,	'Logan Taylor',	CONV('0', 2, 10) + 0,	1),
(9,	'Murphy Dotson',	CONV('0', 2, 10) + 0,	1),
(10,	'Todd Mann',	CONV('0', 2, 10) + 0,	1),
(11,	'Seth Bauer',	CONV('1', 2, 10) + 0,	2),
(12,	'Dexter Knox',	CONV('1', 2, 10) + 0,	2),
(13,	'Rogan Barton',	CONV('1', 2, 10) + 0,	2),
(14,	'Holmes Boyd',	CONV('1', 2, 10) + 0,	2),
(15,	'Phelan Deleon',	CONV('1', 2, 10) + 0,	2),
(16,	'Igor Medina',	CONV('1', 2, 10) + 0,	2),
(17,	'Austin Giles',	CONV('1', 2, 10) + 0,	2),
(18,	'Micah Bullock',	CONV('1', 2, 10) + 0,	2),
(19,	'Upton Wise',	CONV('1', 2, 10) + 0,	2),
(20,	'Lyle Fuentes',	CONV('1', 2, 10) + 0,	2),
(21,	'Grant Carey',	CONV('0', 2, 10) + 0,	3),
(22,	'Warren Giles',	CONV('0', 2, 10) + 0,	3),
(23,	'Linus Olson',	CONV('0', 2, 10) + 0,	3),
(24,	'Solomon Bond',	CONV('0', 2, 10) + 0,	3),
(25,	'Devin Aguilar',	CONV('0', 2, 10) + 0,	3),
(26,	'Kibo Weiss',	CONV('0', 2, 10) + 0,	3),
(27,	'Dale Cummings',	CONV('0', 2, 10) + 0,	3),
(28,	'Francis Hogan',	CONV('0', 2, 10) + 0,	3),
(29,	'Hamilton Bartlett',	CONV('0', 2, 10) + 0,	3),
(30,	'Sylvester Ruiz',	CONV('0', 2, 10) + 0,	3),
(31,	'Kamal Dunn',	CONV('1', 2, 10) + 0,	4),
(32,	'Kenneth Carney',	CONV('1', 2, 10) + 0,	4),
(33,	'Paki Moore',	CONV('1', 2, 10) + 0,	4),
(34,	'Elmo Hall',	CONV('1', 2, 10) + 0,	4),
(35,	'Alden Clayton',	CONV('1', 2, 10) + 0,	4),
(36,	'Thane Banks',	CONV('1', 2, 10) + 0,	4),
(37,	'Griffith Greene',	CONV('1', 2, 10) + 0,	4),
(38,	'Valentine Guy',	CONV('1', 2, 10) + 0,	4),
(39,	'Josiah Holt',	CONV('1', 2, 10) + 0,	4),
(40,	'Dale Barton',	CONV('1', 2, 10) + 0,	4),
(41,	'Jared Pearson',	CONV('0', 2, 10) + 0,	5),
(42,	'Caesar Rojas',	CONV('0', 2, 10) + 0,	5),
(43,	'Cole Newman',	CONV('0', 2, 10) + 0,	5),
(44,	'Felix Moses',	CONV('0', 2, 10) + 0,	5),
(45,	'Cairo Harris',	CONV('0', 2, 10) + 0,	5),
(46,	'Erasmus James',	CONV('0', 2, 10) + 0,	5),
(47,	'Lucius Noble',	CONV('0', 2, 10) + 0,	5),
(48,	'Keane Moon',	CONV('0', 2, 10) + 0,	5),
(49,	'James Burns',	CONV('0', 2, 10) + 0,	5),
(50,	'Ivan Walter',	CONV('0', 2, 10) + 0,	5),
(51,	'Lucius Vance',	CONV('1', 2, 10) + 0,	6),
(52,	'Laith Williamson',	CONV('1', 2, 10) + 0,	6),
(53,	'Colin Newman',	CONV('1', 2, 10) + 0,	6),
(54,	'Cameron Beck',	CONV('1', 2, 10) + 0,	6),
(55,	'Sebastian Sweet',	CONV('1', 2, 10) + 0,	6),
(56,	'Drew Joseph',	CONV('1', 2, 10) + 0,	6),
(57,	'Vincent Vazquez',	CONV('1', 2, 10) + 0,	6),
(58,	'Ross Cummings',	CONV('1', 2, 10) + 0,	6),
(59,	'Axel Garcia',	CONV('1', 2, 10) + 0,	6),
(60,	'Burke Levy',	CONV('1', 2, 10) + 0,	6),
(61,	'Oleg Mayer',	CONV('0', 2, 10) + 0,	NULL),
(62,	'Xander Campos',	CONV('0', 2, 10) + 0,	NULL),
(63,	'Omar Mendoza',	CONV('0', 2, 10) + 0,	NULL),
(64,	'Arden Harmon',	CONV('0', 2, 10) + 0,	NULL),
(65,	'Phillip Roth',	CONV('0', 2, 10) + 0,	NULL),
(66,	'Phillip Moran',	CONV('0', 2, 10) + 0,	NULL),
(67,	'Clark Potts',	CONV('0', 2, 10) + 0,	NULL),
(68,	'Samson Waters',	CONV('0', 2, 10) + 0,	NULL),
(69,	'Cooper Bond',	CONV('0', 2, 10) + 0,	NULL),
(70,	'Allistair Everett',	CONV('0', 2, 10) + 0,	NULL),
(71,	'Vance Leblanc',	CONV('1', 2, 10) + 0,	1),
(72,	'Rashad Travis',	CONV('1', 2, 10) + 0,	1),
(73,	'Cullen Patton',	CONV('1', 2, 10) + 0,	1),
(74,	'Adam Cochran',	CONV('1', 2, 10) + 0,	1),
(75,	'Brennan Mcneil',	CONV('1', 2, 10) + 0,	1),
(76,	'Carl Ellison',	CONV('1', 2, 10) + 0,	1),
(77,	'Lee Wilkinson',	CONV('1', 2, 10) + 0,	1),
(78,	'Amos Gallegos',	CONV('1', 2, 10) + 0,	1),
(79,	'Vladimir Kramer',	CONV('1', 2, 10) + 0,	1),
(80,	'James Larson',	CONV('1', 2, 10) + 0,	1),
(81,	'Ahmed Joseph',	CONV('0', 2, 10) + 0,	2),
(82,	'Colby Kelly',	CONV('0', 2, 10) + 0,	2),
(83,	'Vincent Owens',	CONV('0', 2, 10) + 0,	2),
(84,	'Emerson Cain',	CONV('0', 2, 10) + 0,	2),
(85,	'Derek Norman',	CONV('0', 2, 10) + 0,	2),
(86,	'Rigel Mason',	CONV('0', 2, 10) + 0,	2),
(87,	'Holmes Wolf',	CONV('0', 2, 10) + 0,	2),
(88,	'Paki Duffy',	CONV('0', 2, 10) + 0,	2),
(89,	'Rafael Hanson',	CONV('0', 2, 10) + 0,	2),
(90,	'Adam Kane',	CONV('0', 2, 10) + 0,	2),
(91,	'Malachi Cherry',	CONV('1', 2, 10) + 0,	3),
(92,	'Marsden Ortega',	CONV('1', 2, 10) + 0,	3),
(93,	'Abel Zamora',	CONV('1', 2, 10) + 0,	3),
(94,	'Blake Warren',	CONV('1', 2, 10) + 0,	3),
(95,	'Victor Witt',	CONV('1', 2, 10) + 0,	3),
(96,	'Edan Gregory',	CONV('1', 2, 10) + 0,	3),
(97,	'Allistair Garrett',	CONV('1', 2, 10) + 0,	3),
(98,	'Chadwick Rollins',	CONV('1', 2, 10) + 0,	3),
(99,	'Grant Whitley',	CONV('1', 2, 10) + 0,	3),
(100,	'Marshall Cleveland',	CONV('1', 2, 10) + 0,	3);

-- 2020-04-17 10:50:03
