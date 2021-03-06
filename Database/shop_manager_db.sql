-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-04-2018 a las 07:34:30
-- Versión del servidor: 10.1.19-MariaDB
-- Versión de PHP: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `test_shopper`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `countries`
--

CREATE TABLE `countries` (
  `id` int(255) NOT NULL,
  `currency` varchar(255) NOT NULL,
  `iso` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `countries`
--

INSERT INTO `countries` (`id`, `currency`, `iso`) VALUES
(1, 'Afghan afghani', 'AFN'),
(2, 'European euro', 'EUR'),
(3, 'Albanian lek', 'ALL'),
(4, 'Algerian dinar', 'DZD'),
(5, 'United States dollar', 'USD'),
(6, 'Angolan kwanza', 'AOA'),
(7, 'East Caribbean dollar', 'XCD'),
(8, 'Argentine peso', 'ARS'),
(9, 'Armenian dram', 'AMD'),
(10, 'Aruban florin', 'AWG'),
(12, 'Australian dollar', 'AUD'),
(13, 'Azerbaijani manat', 'AZN'),
(14, 'Bahamian dollar', 'BSD'),
(15, 'Bahraini dinar', 'BHD'),
(16, 'Bangladeshi taka', 'BDT'),
(17, 'Barbadian dollar', 'BBD'),
(18, 'Belarusian ruble', 'BYN'),
(19, 'Belize dollar', 'BZD'),
(20, 'West African CFA franc', 'XOF'),
(21, 'Bermudian dollar', 'BMD'),
(22, 'Bhutanese ngultrum', 'BTN'),
(23, 'Bolivian boliviano', 'BOB'),
(24, 'Bosnia and Herzegovina convertible mark', 'BAM'),
(25, 'Botswana pula', 'BWP'),
(26, 'Brazilian real', 'BRL'),
(27, 'Brunei dollar', 'BND'),
(28, 'Bulgarian lev', 'BGN'),
(29, 'Burundi franc', 'BIF'),
(30, 'Cape Verdean escudo', 'CVE'),
(31, 'Cambodian riel', 'KHR'),
(32, 'Canadian dollar', 'CAD'),
(33, 'Cayman Islands dollar', 'KYD'),
(35, 'Chilean peso', 'CLP'),
(36, 'Chinese Yuan Renminbi', 'CNY'),
(37, 'Colombian peso', 'COP'),
(38, 'Comorian franc', 'KMF'),
(39, 'Congolese franc', 'CDF'),
(40, 'Cook Islands dollar', 'CKD'),
(41, 'Costa Rican colon', 'CRC'),
(42, 'Croatian kuna', 'HRK'),
(43, 'Cuban peso', 'CUP'),
(44, 'Netherlands Antillean guilder', 'ANG'),
(45, 'Czech koruna', 'CZK'),
(46, 'Danish krone', 'DDK'),
(47, 'Djiboutian franc', 'DJF'),
(49, 'Dominican peso', 'DOP'),
(50, 'Egyptian pound', 'EGP'),
(51, 'Eritrean nakfa', 'ERN'),
(52, 'Ethiopian birr', 'ETB'),
(53, 'Falkland Islands pound', 'FKP'),
(54, 'Faroese krona', 'FOK'),
(55, 'Fijian dollar', 'FJD'),
(56, 'CFP franc', 'XPF'),
(57, 'Central African CFA franc', 'XAF'),
(58, 'Gambian dalasi', 'GMD'),
(59, 'Georgian lari', 'GEL'),
(60, 'Ghanaian cedi', 'GHS'),
(61, 'Gibraltar pound', 'GIP'),
(64, 'Guatemalan quetzal', 'GTQ'),
(65, 'Guernsey Pound', 'GGP'),
(66, 'Guinean franc', 'GNF'),
(67, 'Guyanese dollar', 'GYD'),
(68, 'Haitian gourde', 'HTG'),
(69, 'Honduran lempira', 'HNL'),
(70, 'Hong Kong dollar', 'HKD'),
(71, 'Hungarian forint', 'HUF'),
(72, 'Icelandic krona', 'ISK'),
(73, 'Indian rupee', 'INR'),
(74, 'Indonesian rupiah', 'IDR'),
(75, 'Iranian rial', 'IRR'),
(77, 'Manx pound', 'IMP'),
(78, 'Israeli new shekel', 'ILS'),
(79, 'Jamaican dollar', 'JMD'),
(80, 'Japanese yen', 'JPY'),
(81, 'Jersey pound', 'JEP'),
(82, 'Jordanian dinar', 'JOD'),
(83, 'Kazakhstani tenge', 'KZT'),
(84, 'Kenyan shilling', 'KES'),
(85, 'Kuwaiti dinar', 'KWD'),
(86, 'Kyrgyzstani som', 'KGS'),
(87, 'Lao kip', 'LAK'),
(88, 'Lebanese pound', 'LBP'),
(89, 'Lesotho loti', 'LSL'),
(90, 'Liberian dollar', 'LRD'),
(91, 'Libyan dinar', 'LYD'),
(92, 'Swiss franc', 'CHF'),
(93, 'Macanese pataca', 'MOP'),
(94, 'Macedonian denar', 'MKD'),
(95, 'Malagasy ariary', 'MGA'),
(96, 'Malawian kwacha', 'MWK'),
(97, 'Malaysian ringgit', 'MWL'),
(98, 'Maldivian rufiyaa', 'MVR'),
(99, 'Mauritanian ouguiya', 'MRO'),
(100, 'Mauritian rupee', 'MUR'),
(101, 'Mexican peso', 'MXN'),
(102, 'Moldovan leu', 'MDL'),
(103, 'Mongolian tugrik', 'MNT'),
(104, 'Moroccan dirham', 'MAD'),
(105, 'Mozambican metical', 'MZN'),
(106, 'Myanmar kyat', 'MMK'),
(107, 'Namibian dollar', 'NAD'),
(108, 'Nepalese rupee', 'NPR'),
(111, 'Nicaraguan cordoba', 'NIO'),
(112, 'Nigerian naira', 'NGN'),
(113, 'North Korean won', 'KPW'),
(114, 'Norwegian krone', 'NOK'),
(115, 'Omani rial', 'OMR'),
(116, 'Pakistani rupee', 'PKR'),
(118, 'Papua New Guinean kina', 'PGK'),
(119, 'Paraguayan guarani', 'PYG'),
(120, 'Peruvian sol', 'PEN'),
(121, 'Philippine peso', 'PHP'),
(122, 'New Zealand dollar', 'NZD'),
(123, 'Polish zloty', 'PLN'),
(124, 'Qatari riyal', 'QAR'),
(125, 'Romanian leu', 'RON'),
(126, 'Russian ruble', 'RUB'),
(127, 'Rwandan franc', 'RWF'),
(128, 'Saint Helena pound', 'SHP'),
(129, 'Samoan tala', 'WST'),
(130, 'Sao Tome and Principe dobra', 'STD'),
(131, 'Saudi Arabian riyal', 'SAR'),
(132, 'Serbian dinar', 'RSD'),
(133, 'Seychellois rupee', 'SCR'),
(134, 'Sierra Leonean leone', 'SLL'),
(135, 'Singapore dollar', 'SGD'),
(136, 'Netherlands Antillean guilder', 'ANG'),
(137, 'Solomon Islands dollar', 'SBD'),
(138, 'Somali shilling', 'SOS'),
(139, 'South African rand', 'ZAR'),
(140, 'Pound sterling', 'GBP'),
(141, 'South Korean won', 'KRW'),
(142, 'South Sudanese pound', 'SSP'),
(143, 'Sri Lankan rupee', 'LKR'),
(144, 'SDG', 'Sudanese pound'),
(145, 'Surinamese dollar', 'SRD'),
(147, 'Swazi lilangeni', 'SZL'),
(148, 'Swedish krona', 'SEK'),
(150, 'Syrian pound', 'SYP'),
(151, 'New Taiwan dollar', 'TWD'),
(152, 'Tajikistani somoni', 'TJS'),
(153, 'Tanzanian shilling', 'TZS'),
(154, 'Thai baht', 'THB'),
(155, 'Tongan pa''anga', 'TOP'),
(156, 'Trinidad and Tobago dollar', 'TTD'),
(158, 'Tunisian dinar', 'TND'),
(159, 'Turkish lira', 'TRY'),
(160, 'Turkmen manat', 'TMT'),
(161, 'Ugandan shilling', 'UGS'),
(162, 'Ukrainian hryvnia', 'UAH'),
(163, 'UAE dirham', 'AED'),
(165, 'Uruguayan peso', 'UYU'),
(166, 'Uzbekistani som', 'UZS'),
(167, 'Vanuatu vatu', 'VUV'),
(168, 'Venezuelan bolivar', 'VEF'),
(169, 'Vietnamese dong', 'VND'),
(170, 'Yemeni rial', 'YER'),
(171, 'Zambian kwacha', 'ZMW');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `product_id` varchar(255) NOT NULL,
  `shop_id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `buying_price` varchar(255) NOT NULL,
  `selling_price` varchar(255) NOT NULL,
  `stock_level` varchar(255) NOT NULL,
  `open_stock` varchar(255) NOT NULL,
  `current_stock` varchar(255) NOT NULL,
  `barcode` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `unit` varchar(255) NOT NULL,
  `expire_date` varchar(255) NOT NULL,
  `expire_month` varchar(255) NOT NULL,
  `expire_year` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product_categories`
--

CREATE TABLE `product_categories` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `shop` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `product_categories`
--

INSERT INTO `product_categories` (`id`, `name`, `shop`) VALUES
(1, 'Soft Drinks', 'ALL'),
(2, 'Deodorants', 'ALL'),
(3, 'Body Sprays', 'ALL'),
(4, 'Tooth Pastes', 'ALL');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product_units`
--

CREATE TABLE `product_units` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `shop` varchar(255) NOT NULL DEFAULT 'ALL'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `product_units`
--

INSERT INTO `product_units` (`id`, `name`, `shop`) VALUES
(1, 'Crates', 'ALL'),
(2, 'Box', 'ALL'),
(3, 'Carton', 'ALL'),
(4, 'Kg', 'ALL');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sales`
--

CREATE TABLE `sales` (
  `sales_id` varchar(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `shop` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `unit` varchar(255) NOT NULL,
  `total` int(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `signature` varchar(255) NOT NULL,
  `oid` int(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `shops`
--

CREATE TABLE `shops` (
  `shop_id` varchar(255) NOT NULL,
  `shop_name` varchar(255) NOT NULL,
  `shop_email` varchar(255) NOT NULL,
  `shop_currency` varchar(255) NOT NULL,
  `shop_timezone` varchar(255) NOT NULL,
  `shop_password` varchar(255) NOT NULL,
  `shop_username` varchar(255) NOT NULL,
  `shop_no` varchar(255) NOT NULL,
  `shop_logo` longblob,
  `shop_address` varchar(255) DEFAULT NULL,
  `shop_street` varchar(255) DEFAULT NULL,
  `shop_phone` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `shops`
--

INSERT INTO `shops` (`shop_id`, `shop_name`, `shop_email`, `shop_currency`, `shop_timezone`, `shop_password`, `shop_username`, `shop_no`, `shop_logo`, `shop_address`, `shop_street`, `shop_phone`) VALUES
('SM-793-350-177', 'SW', 'admin@admin.com', 'MXN', 'America/Argentina/Mendoza', 'MTIzNDU2', 'S85_95025939', '2219', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `timezones`
--

CREATE TABLE `timezones` (
  `id` int(255) NOT NULL,
  `continet` varchar(255) NOT NULL,
  `timezone` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `timezones`
--

INSERT INTO `timezones` (`id`, `continet`, `timezone`) VALUES
(1, 'Africa', 'Africa/Abidjan'),
(2, 'Africa', 'Africa/Addis_Ababa'),
(3, 'Africa', 'Africa/Accra'),
(4, 'Africa', 'Africa/Algiers'),
(5, 'Africa', 'Africa/Asmara'),
(6, 'Africa', 'Africa/Bamako'),
(7, 'Africa', 'Africa/Bangui'),
(8, 'Africa', 'Africa/Banjul'),
(9, 'Africa', 'Africa/Bissau'),
(10, 'Africa', 'Africa/Blantyre'),
(11, 'Africa', 'Africa/Brazzaville'),
(12, 'Africa', 'Africa/Bujumbura'),
(13, 'Africa', 'Africa/Cairo'),
(14, 'Africa', 'Africa/Casablanca'),
(15, 'Africa', 'Africa/Ceuta'),
(16, 'Africa', 'Africa/Conakry'),
(17, 'Africa', 'Africa/Dakar'),
(18, 'Africa', 'Africa/Dar_es_Salaam'),
(19, 'Africa', 'Africa/Djibouti'),
(20, 'Africa', 'Africa/Douala'),
(21, 'Africa', 'Africa/El_Aaiun'),
(22, 'Africa', 'Africa/Freetown'),
(23, 'Africa', 'Africa/Gaborone'),
(24, 'Africa', 'Africa/Harare'),
(25, 'Africa', 'Africa/Johannesburg'),
(26, 'Africa', 'Africa/Juba'),
(27, 'Africa', 'Africa/Kampala'),
(28, 'Africa', 'Africa/Khartoum'),
(29, 'Africa', 'Africa/Kigali'),
(30, 'Africa', 'Africa/Kinshasa'),
(31, 'Africa', 'Africa/Lagos'),
(32, 'Africa', 'Africa/Libreville'),
(33, 'Africa', 'Africa/Lome'),
(34, 'Africa', 'Africa/Luanda'),
(35, 'Africa', 'Africa/Lubumbashi'),
(36, 'Africa', 'Africa/Lusaka'),
(37, 'Africa', 'Africa/Malabo'),
(38, 'Africa', 'Africa/Maputo'),
(39, 'Africa', 'Africa/Maseru'),
(40, 'Africa', 'Africa/Mbabane'),
(41, 'Africa', 'Africa/Mogadishu'),
(42, 'Africa', 'Africa/Monrovia'),
(43, 'Africa', 'Africa/Nairobi'),
(44, 'Africa', 'Africa/Ndjamena'),
(45, 'Africa', 'Africa/Niamey'),
(46, 'Africa', 'Africa/Nouakchott'),
(47, 'Africa', 'Africa/Ouagadougou'),
(48, 'Africa', 'Africa/Porto-Novo'),
(49, 'Africa', 'Africa/Sao_Tome'),
(50, 'Africa', 'Africa/Tripoli'),
(51, 'Africa', 'Africa/Tunis'),
(52, 'Africa', 'Africa/Windhoek'),
(53, 'Antarctica', 'Antarctica/Casey'),
(54, 'Antarctica', 'Antarctica/Davis'),
(55, 'Antarctica', 'Antarctica/DumontDUrville'),
(56, 'Antarctica', 'Antarctica/Macquarie'),
(57, 'Antarctica', 'Antarctica/Mawson'),
(58, 'Antarctica', 'Antarctica/McMurdo'),
(59, 'Antarctica', 'Antarctica/Palmer'),
(60, 'Antarctica', 'Antarctica/Rothera'),
(61, 'Antarctica', 'Antarctica/Syowa'),
(62, 'Antarctica', 'Antarctica/Troll'),
(63, 'Antarctica', 'Antarctica/Vostok'),
(64, 'Arctic', 'Arctic/Longyearbyen'),
(65, 'Australia', 'Australia/Adelaide'),
(66, 'Australia', 'Australia/Brisbane'),
(67, 'Australia', 'Australia/Broken_Hill'),
(68, 'Australia', 'Australia/Currie'),
(69, 'Australia', 'Australia/Darwin'),
(70, 'Australia', 'Australia/Eucla'),
(71, 'Australia', 'Australia/Hobart'),
(72, 'Australia', 'Australia/Lindeman'),
(73, 'Australia', 'Australia/Lord_Howe'),
(74, 'Australia', 'Australia/Melbourne'),
(75, 'Australia', 'Australia/Perth'),
(76, 'Australia', 'Australia/Sydney'),
(77, 'Atlantic', 'Atlantic/Azores'),
(78, 'Atlantic', 'Atlantic/Bermuda'),
(79, 'Atlantic', 'Atlantic/Canary'),
(80, 'Atlantic', 'Atlantic/Cape_Verde'),
(81, 'Atlantic', 'Atlantic/Faroe'),
(82, 'Atlantic', 'Atlantic/Madeira'),
(83, 'Atlantic', 'Atlantic/Reykjavik'),
(84, 'Atlantic', 'Atlantic/South_Georgia'),
(85, 'Atlantic', 'Atlantic/St_Helena'),
(86, 'Atlantic', 'Atlantic/Stanley'),
(87, 'Indian', 'Indian/Antananarivo'),
(88, 'Indian', 'Indian/Chagos'),
(89, 'Indian', 'Indian/Christmas'),
(90, 'Indian', 'Indian/Cocos'),
(91, 'Indian', 'Indian/Comoro'),
(92, 'Indian', 'Indian/Kerguelen'),
(93, 'Indian', 'Indian/Mahe'),
(94, 'Indian', 'Indian/Maldives'),
(95, 'Indian', 'Indian/Mauritius'),
(96, 'Indian', 'Indian/Mayotte'),
(97, 'Indian', 'Indian/Reunion'),
(98, 'Pacific', 'Pacific/Apia'),
(99, 'Pacific', 'Pacific/Auckland'),
(100, 'Pacific', 'Pacific/Bougainville'),
(101, 'Pacific', 'Pacific/Chatham'),
(102, 'Pacific', 'Pacific/Chuuk'),
(103, 'Pacific', 'Pacific/Easter'),
(104, 'Pacific', 'Pacific/Efate'),
(105, 'Pacific', 'Pacific/Enderbury'),
(106, 'Pacific', 'Pacific/Fakaofo'),
(107, 'Pacific', 'Pacific/Fiji'),
(108, 'Pacific', 'Pacific/Funafuti'),
(109, 'Pacific', 'Pacific/Galapagos'),
(110, 'Pacific', 'Pacific/Gambier'),
(111, 'Pacific', 'Pacific/Guadalcanal'),
(112, 'Pacific', 'Pacific/Guam'),
(113, 'Pacific', 'Pacific/Honolulu'),
(114, 'Pacific', 'Pacific/Kiritimati'),
(115, 'Pacific', 'Pacific/Kosrae'),
(116, 'Pacific', 'Pacific/Kwajalein'),
(117, 'Pacific', 'Pacific/Majuro'),
(118, 'Pacific', 'Pacific/Marquesas'),
(119, 'Pacific', 'Pacific/Midway'),
(120, 'Pacific', 'Pacific/Nauru'),
(121, 'Pacific', 'Pacific/Niue'),
(122, 'Pacific', 'Pacific/Norfolk'),
(123, 'Pacific', 'Pacific/Noumea'),
(124, 'Pacific', 'Pacific/Pago_Pago'),
(125, 'Pacific', 'Pacific/Palau'),
(126, 'Pacific', 'Pacific/Pitcairn'),
(127, 'Pacific', 'Pacific/Pohnpei'),
(128, 'Pacific', 'Pacific/Port_Moresby'),
(129, 'Pacific', 'Pacific/Rarotonga'),
(130, 'Pacific', 'Pacific/Saipan'),
(131, 'Pacific', 'Pacific/Tahiti'),
(132, 'Pacific', 'Pacific/Tarawa'),
(133, 'Pacific', 'Pacific/Tongatapu'),
(134, 'Pacific', 'Pacific/Wake'),
(135, 'Pacific', 'Pacific/Wallis'),
(136, 'Europe', 'Europe/Amsterdam'),
(137, 'Europe', 'Europe/Andorra'),
(138, 'Europe', 'Europe/Astrakhan'),
(139, 'Europe', 'Europe/Athens'),
(140, 'Europe', 'Europe/Belgrade'),
(141, 'Europe', 'Europe/Berlin'),
(142, 'Europe', 'Europe/Bratislava'),
(143, 'Europe', 'Europe/Brussels'),
(144, 'Europe', 'Europe/Bucharest'),
(145, 'Europe', 'Europe/Budapest'),
(146, 'Europe', 'Europe/Busingen'),
(147, 'Europe', 'Europe/Chisinau'),
(148, 'Europe', 'Europe/Copenhagen'),
(149, 'Europe', 'Europe/Dublin'),
(150, 'Europe', 'Europe/Gibraltar'),
(151, 'Europe', 'Europe/Guernsey'),
(152, 'Europe', 'Europe/Helsinki'),
(153, 'Europe', 'Europe/Isle_of_Man'),
(154, 'Europe', 'Europe/Istanbul'),
(155, 'Europe', 'Europe/Jersey'),
(156, 'Europe', 'Europe/Kaliningrad'),
(157, 'Europe', 'Europe/Kiev'),
(158, 'Europe', 'Europe/Kirov'),
(159, 'Europe', 'Europe/Lisbon'),
(160, 'Europe', 'Europe/Ljubljana'),
(161, 'Europe', 'Europe/London'),
(162, 'Europe', 'Europe/Luxembourg'),
(163, 'Europe', 'Europe/Madrid'),
(164, 'Europe', 'Europe/Malta'),
(165, 'Europe', 'Europe/Mariehamn'),
(166, 'Europe', 'Europe/Minsk'),
(167, 'Europe', 'Europe/Monaco'),
(168, 'Europe', 'Europe/Moscow'),
(169, 'Europe', 'Europe/Oslo'),
(170, 'Europe', 'Europe/Paris'),
(171, 'Europe', 'Europe/Podgorica'),
(172, 'Europe', 'Europe/Prague'),
(173, 'Europe', 'Europe/Riga'),
(174, 'Europe', 'Europe/Rome'),
(175, 'Europe', 'Europe/Samara'),
(176, 'Europe', 'Europe/San_Marino'),
(177, 'Europe', 'Europe/Sarajevo'),
(178, 'Europe', 'Europe/Saratov'),
(179, 'Europe', 'Europe/Simferopol'),
(180, 'Europe', 'Europe/Skopje'),
(181, 'Europe', 'Europe/Sofia'),
(182, 'Europe', 'Europe/Stockholm'),
(183, 'Europe', 'Europe/Tallinn'),
(184, 'Europe', 'Europe/Tirane'),
(185, 'Europe', 'Europe/Ulyanovsk'),
(186, 'Europe', 'Europe/Uzhgorod'),
(187, 'Europe', 'Europe/Vaduz'),
(188, 'Europe', 'Europe/Vatican'),
(189, 'Europe', 'Europe/Vienna'),
(190, 'Europe', 'Europe/Vilnius'),
(191, 'Europe', 'Europe/Volgograd'),
(192, 'Europe', 'Europe/Warsaw'),
(193, 'Europe', 'Europe/Zagreb'),
(194, 'Europe', 'Europe/Zaporozhye'),
(195, 'Europe', 'Europe/Zurich'),
(196, 'Asia', 'Asia/Aden'),
(197, 'Asia', 'Asia/Almaty'),
(198, 'Asia', 'Asia/Amman'),
(199, 'Asia', 'Asia/Anadyr'),
(200, 'Asia', 'Asia/Aqtau'),
(201, 'Asia', 'Asia/Aqtobe'),
(202, 'Asia', 'Asia/Ashgabat'),
(203, 'Asia', 'Asia/Atyrau'),
(204, 'Asia', 'Asia/Baghdad'),
(205, 'Asia', 'Asia/Bahrain'),
(206, 'Asia', 'Asia/Baku'),
(207, 'Asia', 'Asia/Bangkok'),
(208, 'Asia', 'Asia/Barnaul'),
(209, 'Asia', 'Asia/Beirut'),
(210, 'Asia', 'Asia/Bishkek'),
(211, 'Asia', 'Asia/Brunei'),
(212, 'Asia', 'Asia/Chita'),
(213, 'Asia', 'Asia/Choibalsan'),
(214, 'Asia', 'Asia/Colombo'),
(215, 'Asia', 'Asia/Damascus'),
(216, 'Asia', 'Asia/Dhaka'),
(217, 'Asia', 'Asia/Dili'),
(218, 'Asia', 'Asia/Dubai'),
(219, 'Asia', 'Asia/Dushanbe'),
(220, 'Asia', 'Asia/Famagusta'),
(221, 'Asia', 'Asia/Gaza'),
(222, 'Asia', 'Asia/Hebron'),
(223, 'Asia', 'Asia/Ho_Chi_Minh'),
(224, 'Asia', 'Asia/Hong_Kong'),
(225, 'Asia', 'Asia/Irkutsk'),
(226, 'Asia', 'Asia/Jakarta'),
(227, 'Asia', 'Asia/Jayapura'),
(228, 'Asia', 'Asia/Jerusalem'),
(229, 'Asia', 'Asia/Kabul'),
(230, 'Asia', 'Asia/Kamchatka'),
(231, 'Asia', 'Asia/Karachi'),
(232, 'Asia', 'Asia/Kathmandu'),
(233, 'Asia', 'Asia/Khandyga'),
(234, 'Asia', 'Asia/Kolkata'),
(235, 'Asia', 'Asia/Krasnoyarsk'),
(236, 'Asia', 'Asia/Kuala_Lumpur'),
(237, 'Asia', 'Asia/Kuching'),
(238, 'Asia', 'Asia/Kuwait'),
(239, 'Asia', 'Asia/Macau'),
(240, 'Asia', 'Asia/Magadan'),
(241, 'Asia', 'Asia/Makassar'),
(242, 'Asia', 'Asia/Manila'),
(243, 'Asia', 'Asia/Muscat'),
(244, 'Asia', 'Asia/Nicosia'),
(245, 'Asia', 'Asia/Novokuznetsk'),
(246, 'Asia', 'Asia/Novosibirsk'),
(247, 'Asia', 'Asia/Omsk'),
(248, 'Asia', 'Asia/Oral'),
(249, 'Asia', 'Asia/Phnom_Penh'),
(250, 'Asia', 'Asia/Pontianak'),
(251, 'Asia', 'Asia/Pyongyang'),
(252, 'Asia', 'Asia/Qatar'),
(253, 'Asia', 'Asia/Qyzylorda'),
(254, 'Asia', 'Asia/Riyadh'),
(255, 'Asia', 'Asia/Sakhalin'),
(256, 'Asia', 'Asia/Samarkand'),
(257, 'Asia', 'Asia/Seoul'),
(258, 'Asia', 'Asia/Shanghai'),
(259, 'Asia', 'Asia/Singapore'),
(260, 'Asia', 'Asia/Srednekolymsk'),
(261, 'Asia', 'Asia/Taipei'),
(262, 'Asia', 'Asia/Tashkent'),
(263, 'Asia', 'Asia/Tbilisi'),
(264, 'Asia', 'Asia/Tehran'),
(265, 'Asia', 'Asia/Thimphu'),
(266, 'Asia', 'Asia/Tokyo'),
(267, 'Asia', 'Asia/Tomsk'),
(268, 'Asia', 'Asia/Ulaanbaatar'),
(269, 'Asia', 'Asia/Urumqi'),
(270, 'Asia', 'Asia/Ust-Nera'),
(271, 'Asia', 'Asia/Vientiane'),
(272, 'Asia', 'Asia/Vladivostok'),
(273, 'Asia', 'Asia/Yakutsk'),
(274, 'Asia', 'Asia/Yangon'),
(275, 'Asia', 'Asia/Yekaterinburg'),
(276, 'Asia', 'Asia/Yerevan'),
(646, 'America', 'America/Adak'),
(647, 'America', 'America/Anchorage'),
(648, 'America', 'America/Anguilla'),
(649, 'America', 'America/Antigua'),
(650, 'America', 'America/Araguaina'),
(651, 'America', 'America/Argentina/Buenos_Aires'),
(652, 'America', 'America/Argentina/Catamarca'),
(653, 'America', 'America/Argentina/Cordoba'),
(654, 'America', 'America/Argentina/Jujuy'),
(655, 'America', 'America/Argentina/La_Rioja'),
(656, 'America', 'America/Argentina/Mendoza'),
(657, 'America', 'America/Argentina/Rio_Gallegos'),
(658, 'America', 'America/Argentina/Salta'),
(659, 'America', 'America/Argentina/San_Juan'),
(660, 'America', 'America/Argentina/San_Luis'),
(661, 'America', 'America/Argentina/Tucuman'),
(662, 'America', 'America/Argentina/Ushuaia'),
(663, 'America', 'America/Aruba'),
(664, 'America', 'America/Asuncion'),
(665, 'America', 'America/Atikokan'),
(666, 'America', 'America/Bahia'),
(667, 'America', 'America/Bahia_Banderas'),
(668, 'America', 'America/Barbados'),
(669, 'America', 'America/Belem'),
(670, 'America', 'America/Belize'),
(671, 'America', 'America/Blanc-Sablon'),
(672, 'America', 'America/Boa_Vista'),
(673, 'America', 'America/Bogota'),
(674, 'America', 'America/Boise'),
(675, 'America', 'America/Cambridge_Bay'),
(676, 'America', 'America/Campo_Grande'),
(677, 'America', 'America/Cancun'),
(678, 'America', 'America/Caracas'),
(679, 'America', 'America/Cayenne'),
(680, 'America', 'America/Cayman'),
(681, 'America', 'America/Chicago'),
(682, 'America', 'America/Chihuahua'),
(683, 'America', 'America/Costa_Rica'),
(684, 'America', 'America/Creston'),
(685, 'America', 'America/Cuiaba'),
(686, 'America', 'America/Curacao'),
(687, 'America', 'America/Danmarkshavn'),
(688, 'America', 'America/Dawson'),
(689, 'America', 'America/Dawson_Creek'),
(690, 'America', 'America/Denver'),
(691, 'America', 'America/Detroit'),
(692, 'America', 'America/Dominica'),
(693, 'America', 'America/Edmonton'),
(694, 'America', 'America/Eirunepe'),
(695, 'America', 'America/El_Salvador'),
(696, 'America', 'America/Fort_Nelson'),
(697, 'America', 'America/Fortaleza'),
(698, 'America', 'America/Glace_Bay'),
(699, 'America', 'America/Godthab'),
(700, 'America', 'America/Goose_Bay'),
(701, 'America', 'America/Grand_Turk'),
(702, 'America', 'America/Grenada'),
(703, 'America', 'America/Guadeloupe'),
(704, 'America', 'America/Guatemala'),
(705, 'America', 'America/Guayaquil'),
(706, 'America', 'America/Guyana'),
(707, 'America', 'America/Halifax'),
(708, 'America', 'America/Havana'),
(709, 'America', 'America/Hermosillo'),
(710, 'America', 'America/Indiana/Indianapolis'),
(711, 'America', 'America/Indiana/Knox'),
(712, 'America', 'America/Indiana/Marengo'),
(713, 'America', 'America/Indiana/Petersburg'),
(714, 'America', 'America/Indiana/Tell_City'),
(715, 'America', 'America/Indiana/Vevay'),
(716, 'America', 'America/Indiana/Vincennes'),
(717, 'America', 'America/Indiana/Winamac'),
(718, 'America', 'America/Inuvik'),
(719, 'America', 'America/Iqaluit'),
(720, 'America', 'America/Jamaica'),
(721, 'America', 'America/Juneau'),
(722, 'America', 'America/Kentucky/Louisville'),
(723, 'America', 'America/Kentucky/Monticello'),
(724, 'America', 'America/Kralendijk'),
(725, 'America', 'America/La_Paz'),
(726, 'America', 'America/Lima'),
(727, 'America', 'America/Los_Angeles'),
(728, 'America', 'America/Lower_Princes'),
(729, 'America', 'America/Maceio'),
(730, 'America', 'America/Managua'),
(731, 'America', 'America/Manaus'),
(732, 'America', 'America/Marigot'),
(733, 'America', 'America/Martinique'),
(734, 'America', 'America/Matamoros'),
(735, 'America', 'America/Mazatlan'),
(736, 'America', 'America/Menominee'),
(737, 'America', 'America/Merida'),
(738, 'America', 'America/Metlakatla'),
(739, 'America', 'America/Mexico_City'),
(740, 'America', 'America/Miquelon'),
(741, 'America', 'America/Moncton'),
(742, 'America', 'America/Monterrey'),
(743, 'America', 'America/Montevideo'),
(744, 'America', 'America/Montserrat'),
(745, 'America', 'America/Nassau'),
(746, 'America', 'America/New_York'),
(747, 'America', 'America/Nipigon'),
(748, 'America', 'America/Nome'),
(749, 'America', 'America/Noronha'),
(750, 'America', 'America/North_Dakota/Beulah'),
(751, 'America', 'America/North_Dakota/Center'),
(752, 'America', 'America/North_Dakota/New_Salem'),
(753, 'America', 'America/Ojinaga'),
(754, 'America', 'America/Panama'),
(755, 'America', 'America/Pangnirtung'),
(756, 'America', 'America/Paramaribo'),
(757, 'America', 'America/Phoenix'),
(758, 'America', 'America/Port-au-Prince'),
(759, 'America', 'America/Port_of_Spain'),
(760, 'America', 'America/Porto_Velho'),
(761, 'America', 'America/Puerto_Rico'),
(762, 'America', 'America/Punta_Arenas'),
(763, 'America', 'America/Rainy_River'),
(764, 'America', 'America/Rankin_Inlet'),
(765, 'America', 'America/Recife'),
(766, 'America', 'America/Regina'),
(767, 'America', 'America/Resolute'),
(768, 'America', 'America/Rio_Branco'),
(769, 'America', 'America/Santarem'),
(770, 'America', 'America/Santiago'),
(771, 'America', 'America/Santo_Domingo'),
(772, 'America', 'America/Sao_Paulo'),
(773, 'America', 'America/Scoresbysund'),
(774, 'America', 'America/Sitka'),
(775, 'America', 'America/St_Barthelemy'),
(776, 'America', 'America/St_Johns'),
(777, 'America', 'America/St_Kitts'),
(778, 'America', 'America/St_Lucia'),
(779, 'America', 'America/St_Thomas'),
(780, 'America', 'America/St_Vincent'),
(781, 'America', 'America/Swift_Current'),
(782, 'America', 'America/Tegucigalpa'),
(783, 'America', 'America/Thule'),
(784, 'America', 'America/Thunder_Bay'),
(785, 'America', 'America/Tijuana'),
(786, 'America', 'America/Toronto'),
(787, 'America', 'America/Tortola'),
(788, 'America', 'America/Vancouver'),
(789, 'America', 'America/Whitehorse'),
(790, 'America', 'America/Winnipeg'),
(791, 'America', 'America/Yakutat'),
(792, 'America', 'America/Yellowknife');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `user_id` varchar(255) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `avatar` longblob,
  `shop` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD UNIQUE KEY `product_id` (`product_id`);

--
-- Indices de la tabla `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `product_units`
--
ALTER TABLE `product_units`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`oid`),
  ADD UNIQUE KEY `sales_id` (`sales_id`);

--
-- Indices de la tabla `shops`
--
ALTER TABLE `shops`
  ADD UNIQUE KEY `shop_id` (`shop_id`);

--
-- Indices de la tabla `timezones`
--
ALTER TABLE `timezones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=172;
--
-- AUTO_INCREMENT de la tabla `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT de la tabla `product_units`
--
ALTER TABLE `product_units`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `sales`
--
ALTER TABLE `sales`
  MODIFY `oid` int(255) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `timezones`
--
ALTER TABLE `timezones`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=793;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
