/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : hris

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2016-02-18 12:20:18
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `hrm_user`
-- ----------------------------
DROP TABLE IF EXISTS `hrm_user`;
CREATE TABLE `hrm_user` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_role_id` int(10) NOT NULL,
  `emp_number` int(13) NOT NULL,
  `user_name` varchar(40) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `date_entered` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `modified_user_id` int(10) NOT NULL,
  `created_by` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hrm_user
-- ----------------------------

-- ----------------------------
-- Table structure for `hrm_user_role`
-- ----------------------------
DROP TABLE IF EXISTS `hrm_user_role`;
CREATE TABLE `hrm_user_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `is_assignable` tinyint(1) NOT NULL DEFAULT '0',
  `is_predefined` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hrm_user_role
-- ----------------------------
INSERT INTO `hrm_user_role` VALUES ('1', 'Admin', 'Admin', '1', '1');
INSERT INTO `hrm_user_role` VALUES ('2', 'Supervisor', 'Supervisor', '1', '1');

-- ----------------------------
-- Table structure for `hs_hr_country`
-- ----------------------------
DROP TABLE IF EXISTS `hs_hr_country`;
CREATE TABLE `hs_hr_country` (
  `cou_code` char(2) NOT NULL DEFAULT '',
  `name` varchar(80) NOT NULL DEFAULT '',
  `cou_name` varchar(80) NOT NULL DEFAULT '',
  `iso3` char(3) DEFAULT NULL,
  `numcode` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`cou_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hs_hr_country
-- ----------------------------
INSERT INTO `hs_hr_country` VALUES ('AD', 'ANDORRA', 'Andorra', 'AND', '20');
INSERT INTO `hs_hr_country` VALUES ('AE', 'UNITED ARAB EMIRATES', 'United Arab Emirates', 'ARE', '784');
INSERT INTO `hs_hr_country` VALUES ('AF', 'AFGHANISTAN', 'Afghanistan', 'AFG', '4');
INSERT INTO `hs_hr_country` VALUES ('AG', 'ANTIGUA AND BARBUDA', 'Antigua and Barbuda', 'ATG', '28');
INSERT INTO `hs_hr_country` VALUES ('AI', 'ANGUILLA', 'Anguilla', 'AIA', '660');
INSERT INTO `hs_hr_country` VALUES ('AL', 'ALBANIA', 'Albania', 'ALB', '8');
INSERT INTO `hs_hr_country` VALUES ('AM', 'ARMENIA', 'Armenia', 'ARM', '51');
INSERT INTO `hs_hr_country` VALUES ('AN', 'NETHERLANDS ANTILLES', 'Netherlands Antilles', 'ANT', '530');
INSERT INTO `hs_hr_country` VALUES ('AO', 'ANGOLA', 'Angola', 'AGO', '24');
INSERT INTO `hs_hr_country` VALUES ('AQ', 'ANTARCTICA', 'Antarctica', null, null);
INSERT INTO `hs_hr_country` VALUES ('AR', 'ARGENTINA', 'Argentina', 'ARG', '32');
INSERT INTO `hs_hr_country` VALUES ('AS', 'AMERICAN SAMOA', 'American Samoa', 'ASM', '16');
INSERT INTO `hs_hr_country` VALUES ('AT', 'AUSTRIA', 'Austria', 'AUT', '40');
INSERT INTO `hs_hr_country` VALUES ('AU', 'AUSTRALIA', 'Australia', 'AUS', '36');
INSERT INTO `hs_hr_country` VALUES ('AW', 'ARUBA', 'Aruba', 'ABW', '533');
INSERT INTO `hs_hr_country` VALUES ('AZ', 'AZERBAIJAN', 'Azerbaijan', 'AZE', '31');
INSERT INTO `hs_hr_country` VALUES ('BA', 'BOSNIA AND HERZEGOVINA', 'Bosnia and Herzegovina', 'BIH', '70');
INSERT INTO `hs_hr_country` VALUES ('BB', 'BARBADOS', 'Barbados', 'BRB', '52');
INSERT INTO `hs_hr_country` VALUES ('BD', 'BANGLADESH', 'Bangladesh', 'BGD', '50');
INSERT INTO `hs_hr_country` VALUES ('BE', 'BELGIUM', 'Belgium', 'BEL', '56');
INSERT INTO `hs_hr_country` VALUES ('BF', 'BURKINA FASO', 'Burkina Faso', 'BFA', '854');
INSERT INTO `hs_hr_country` VALUES ('BG', 'BULGARIA', 'Bulgaria', 'BGR', '100');
INSERT INTO `hs_hr_country` VALUES ('BH', 'BAHRAIN', 'Bahrain', 'BHR', '48');
INSERT INTO `hs_hr_country` VALUES ('BI', 'BURUNDI', 'Burundi', 'BDI', '108');
INSERT INTO `hs_hr_country` VALUES ('BJ', 'BENIN', 'Benin', 'BEN', '204');
INSERT INTO `hs_hr_country` VALUES ('BM', 'BERMUDA', 'Bermuda', 'BMU', '60');
INSERT INTO `hs_hr_country` VALUES ('BN', 'BRUNEI DARUSSALAM', 'Brunei Darussalam', 'BRN', '96');
INSERT INTO `hs_hr_country` VALUES ('BO', 'BOLIVIA', 'Bolivia', 'BOL', '68');
INSERT INTO `hs_hr_country` VALUES ('BR', 'BRAZIL', 'Brazil', 'BRA', '76');
INSERT INTO `hs_hr_country` VALUES ('BS', 'BAHAMAS', 'Bahamas', 'BHS', '44');
INSERT INTO `hs_hr_country` VALUES ('BT', 'BHUTAN', 'Bhutan', 'BTN', '64');
INSERT INTO `hs_hr_country` VALUES ('BV', 'BOUVET ISLAND', 'Bouvet Island', null, null);
INSERT INTO `hs_hr_country` VALUES ('BW', 'BOTSWANA', 'Botswana', 'BWA', '72');
INSERT INTO `hs_hr_country` VALUES ('BY', 'BELARUS', 'Belarus', 'BLR', '112');
INSERT INTO `hs_hr_country` VALUES ('BZ', 'BELIZE', 'Belize', 'BLZ', '84');
INSERT INTO `hs_hr_country` VALUES ('CA', 'CANADA', 'Canada', 'CAN', '124');
INSERT INTO `hs_hr_country` VALUES ('CC', 'COCOS (KEELING) ISLANDS', 'Cocos (Keeling) Islands', null, null);
INSERT INTO `hs_hr_country` VALUES ('CD', 'CONGO, THE DEMOCRATIC REPUBLIC OF THE', 'Congo, the Democratic Republic of the', 'COD', '180');
INSERT INTO `hs_hr_country` VALUES ('CF', 'CENTRAL AFRICAN REPUBLIC', 'Central African Republic', 'CAF', '140');
INSERT INTO `hs_hr_country` VALUES ('CG', 'CONGO', 'Congo', 'COG', '178');
INSERT INTO `hs_hr_country` VALUES ('CH', 'SWITZERLAND', 'Switzerland', 'CHE', '756');
INSERT INTO `hs_hr_country` VALUES ('CI', 'COTE D\'IVOIRE', 'Cote D\'Ivoire', 'CIV', '384');
INSERT INTO `hs_hr_country` VALUES ('CK', 'COOK ISLANDS', 'Cook Islands', 'COK', '184');
INSERT INTO `hs_hr_country` VALUES ('CL', 'CHILE', 'Chile', 'CHL', '152');
INSERT INTO `hs_hr_country` VALUES ('CM', 'CAMEROON', 'Cameroon', 'CMR', '120');
INSERT INTO `hs_hr_country` VALUES ('CN', 'CHINA', 'China', 'CHN', '156');
INSERT INTO `hs_hr_country` VALUES ('CO', 'COLOMBIA', 'Colombia', 'COL', '170');
INSERT INTO `hs_hr_country` VALUES ('CR', 'COSTA RICA', 'Costa Rica', 'CRI', '188');
INSERT INTO `hs_hr_country` VALUES ('CS', 'SERBIA AND MONTENEGRO', 'Serbia and Montenegro', null, null);
INSERT INTO `hs_hr_country` VALUES ('CU', 'CUBA', 'Cuba', 'CUB', '192');
INSERT INTO `hs_hr_country` VALUES ('CV', 'CAPE VERDE', 'Cape Verde', 'CPV', '132');
INSERT INTO `hs_hr_country` VALUES ('CX', 'CHRISTMAS ISLAND', 'Christmas Island', null, null);
INSERT INTO `hs_hr_country` VALUES ('CY', 'CYPRUS', 'Cyprus', 'CYP', '196');
INSERT INTO `hs_hr_country` VALUES ('CZ', 'CZECH REPUBLIC', 'Czech Republic', 'CZE', '203');
INSERT INTO `hs_hr_country` VALUES ('DE', 'GERMANY', 'Germany', 'DEU', '276');
INSERT INTO `hs_hr_country` VALUES ('DJ', 'DJIBOUTI', 'Djibouti', 'DJI', '262');
INSERT INTO `hs_hr_country` VALUES ('DK', 'DENMARK', 'Denmark', 'DNK', '208');
INSERT INTO `hs_hr_country` VALUES ('DM', 'DOMINICA', 'Dominica', 'DMA', '212');
INSERT INTO `hs_hr_country` VALUES ('DO', 'DOMINICAN REPUBLIC', 'Dominican Republic', 'DOM', '214');
INSERT INTO `hs_hr_country` VALUES ('DZ', 'ALGERIA', 'Algeria', 'DZA', '12');
INSERT INTO `hs_hr_country` VALUES ('EC', 'ECUADOR', 'Ecuador', 'ECU', '218');
INSERT INTO `hs_hr_country` VALUES ('EE', 'ESTONIA', 'Estonia', 'EST', '233');
INSERT INTO `hs_hr_country` VALUES ('EG', 'EGYPT', 'Egypt', 'EGY', '818');
INSERT INTO `hs_hr_country` VALUES ('EH', 'WESTERN SAHARA', 'Western Sahara', 'ESH', '732');
INSERT INTO `hs_hr_country` VALUES ('ER', 'ERITREA', 'Eritrea', 'ERI', '232');
INSERT INTO `hs_hr_country` VALUES ('ES', 'SPAIN', 'Spain', 'ESP', '724');
INSERT INTO `hs_hr_country` VALUES ('ET', 'ETHIOPIA', 'Ethiopia', 'ETH', '231');
INSERT INTO `hs_hr_country` VALUES ('FI', 'FINLAND', 'Finland', 'FIN', '246');
INSERT INTO `hs_hr_country` VALUES ('FJ', 'FIJI', 'Fiji', 'FJI', '242');
INSERT INTO `hs_hr_country` VALUES ('FK', 'FALKLAND ISLANDS (MALVINAS)', 'Falkland Islands (Malvinas)', 'FLK', '238');
INSERT INTO `hs_hr_country` VALUES ('FM', 'MICRONESIA, FEDERATED STATES OF', 'Micronesia, Federated States of', 'FSM', '583');
INSERT INTO `hs_hr_country` VALUES ('FO', 'FAROE ISLANDS', 'Faroe Islands', 'FRO', '234');
INSERT INTO `hs_hr_country` VALUES ('FR', 'FRANCE', 'France', 'FRA', '250');
INSERT INTO `hs_hr_country` VALUES ('GA', 'GABON', 'Gabon', 'GAB', '266');
INSERT INTO `hs_hr_country` VALUES ('GB', 'UNITED KINGDOM', 'United Kingdom', 'GBR', '826');
INSERT INTO `hs_hr_country` VALUES ('GD', 'GRENADA', 'Grenada', 'GRD', '308');
INSERT INTO `hs_hr_country` VALUES ('GE', 'GEORGIA', 'Georgia', 'GEO', '268');
INSERT INTO `hs_hr_country` VALUES ('GF', 'FRENCH GUIANA', 'French Guiana', 'GUF', '254');
INSERT INTO `hs_hr_country` VALUES ('GH', 'GHANA', 'Ghana', 'GHA', '288');
INSERT INTO `hs_hr_country` VALUES ('GI', 'GIBRALTAR', 'Gibraltar', 'GIB', '292');
INSERT INTO `hs_hr_country` VALUES ('GL', 'GREENLAND', 'Greenland', 'GRL', '304');
INSERT INTO `hs_hr_country` VALUES ('GM', 'GAMBIA', 'Gambia', 'GMB', '270');
INSERT INTO `hs_hr_country` VALUES ('GN', 'GUINEA', 'Guinea', 'GIN', '324');
INSERT INTO `hs_hr_country` VALUES ('GP', 'GUADELOUPE', 'Guadeloupe', 'GLP', '312');
INSERT INTO `hs_hr_country` VALUES ('GQ', 'EQUATORIAL GUINEA', 'Equatorial Guinea', 'GNQ', '226');
INSERT INTO `hs_hr_country` VALUES ('GR', 'GREECE', 'Greece', 'GRC', '300');
INSERT INTO `hs_hr_country` VALUES ('GS', 'SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS', 'South Georgia and the South Sandwich Islands', null, null);
INSERT INTO `hs_hr_country` VALUES ('GT', 'GUATEMALA', 'Guatemala', 'GTM', '320');
INSERT INTO `hs_hr_country` VALUES ('GU', 'GUAM', 'Guam', 'GUM', '316');
INSERT INTO `hs_hr_country` VALUES ('GW', 'GUINEA-BISSAU', 'Guinea-Bissau', 'GNB', '624');
INSERT INTO `hs_hr_country` VALUES ('GY', 'GUYANA', 'Guyana', 'GUY', '328');
INSERT INTO `hs_hr_country` VALUES ('HK', 'HONG KONG', 'Hong Kong', 'HKG', '344');
INSERT INTO `hs_hr_country` VALUES ('HM', 'HEARD ISLAND AND MCDONALD ISLANDS', 'Heard Island and Mcdonald Islands', null, null);
INSERT INTO `hs_hr_country` VALUES ('HN', 'HONDURAS', 'Honduras', 'HND', '340');
INSERT INTO `hs_hr_country` VALUES ('HR', 'CROATIA', 'Croatia', 'HRV', '191');
INSERT INTO `hs_hr_country` VALUES ('HT', 'HAITI', 'Haiti', 'HTI', '332');
INSERT INTO `hs_hr_country` VALUES ('HU', 'HUNGARY', 'Hungary', 'HUN', '348');
INSERT INTO `hs_hr_country` VALUES ('ID', 'INDONESIA', 'Indonesia', 'IDN', '360');
INSERT INTO `hs_hr_country` VALUES ('IE', 'IRELAND', 'Ireland', 'IRL', '372');
INSERT INTO `hs_hr_country` VALUES ('IL', 'ISRAEL', 'Israel', 'ISR', '376');
INSERT INTO `hs_hr_country` VALUES ('IN', 'INDIA', 'India', 'IND', '356');
INSERT INTO `hs_hr_country` VALUES ('IO', 'BRITISH INDIAN OCEAN TERRITORY', 'British Indian Ocean Territory', null, null);
INSERT INTO `hs_hr_country` VALUES ('IQ', 'IRAQ', 'Iraq', 'IRQ', '368');
INSERT INTO `hs_hr_country` VALUES ('IR', 'IRAN, ISLAMIC REPUBLIC OF', 'Iran, Islamic Republic of', 'IRN', '364');
INSERT INTO `hs_hr_country` VALUES ('IS', 'ICELAND', 'Iceland', 'ISL', '352');
INSERT INTO `hs_hr_country` VALUES ('IT', 'ITALY', 'Italy', 'ITA', '380');
INSERT INTO `hs_hr_country` VALUES ('JM', 'JAMAICA', 'Jamaica', 'JAM', '388');
INSERT INTO `hs_hr_country` VALUES ('JO', 'JORDAN', 'Jordan', 'JOR', '400');
INSERT INTO `hs_hr_country` VALUES ('JP', 'JAPAN', 'Japan', 'JPN', '392');
INSERT INTO `hs_hr_country` VALUES ('KE', 'KENYA', 'Kenya', 'KEN', '404');
INSERT INTO `hs_hr_country` VALUES ('KG', 'KYRGYZSTAN', 'Kyrgyzstan', 'KGZ', '417');
INSERT INTO `hs_hr_country` VALUES ('KH', 'CAMBODIA', 'Cambodia', 'KHM', '116');
INSERT INTO `hs_hr_country` VALUES ('KI', 'KIRIBATI', 'Kiribati', 'KIR', '296');
INSERT INTO `hs_hr_country` VALUES ('KM', 'COMOROS', 'Comoros', 'COM', '174');
INSERT INTO `hs_hr_country` VALUES ('KN', 'SAINT KITTS AND NEVIS', 'Saint Kitts and Nevis', 'KNA', '659');
INSERT INTO `hs_hr_country` VALUES ('KP', 'KOREA, DEMOCRATIC PEOPLE\'S REPUBLIC OF', 'Korea, Democratic People\'s Republic of', 'PRK', '408');
INSERT INTO `hs_hr_country` VALUES ('KR', 'KOREA, REPUBLIC OF', 'Korea, Republic of', 'KOR', '410');
INSERT INTO `hs_hr_country` VALUES ('KW', 'KUWAIT', 'Kuwait', 'KWT', '414');
INSERT INTO `hs_hr_country` VALUES ('KY', 'CAYMAN ISLANDS', 'Cayman Islands', 'CYM', '136');
INSERT INTO `hs_hr_country` VALUES ('KZ', 'KAZAKHSTAN', 'Kazakhstan', 'KAZ', '398');
INSERT INTO `hs_hr_country` VALUES ('LA', 'LAO PEOPLE\'S DEMOCRATIC REPUBLIC', 'Lao People\'s Democratic Republic', 'LAO', '418');
INSERT INTO `hs_hr_country` VALUES ('LB', 'LEBANON', 'Lebanon', 'LBN', '422');
INSERT INTO `hs_hr_country` VALUES ('LC', 'SAINT LUCIA', 'Saint Lucia', 'LCA', '662');
INSERT INTO `hs_hr_country` VALUES ('LI', 'LIECHTENSTEIN', 'Liechtenstein', 'LIE', '438');
INSERT INTO `hs_hr_country` VALUES ('LK', 'SRI LANKA', 'Sri Lanka', 'LKA', '144');
INSERT INTO `hs_hr_country` VALUES ('LR', 'LIBERIA', 'Liberia', 'LBR', '430');
INSERT INTO `hs_hr_country` VALUES ('LS', 'LESOTHO', 'Lesotho', 'LSO', '426');
INSERT INTO `hs_hr_country` VALUES ('LT', 'LITHUANIA', 'Lithuania', 'LTU', '440');
INSERT INTO `hs_hr_country` VALUES ('LU', 'LUXEMBOURG', 'Luxembourg', 'LUX', '442');
INSERT INTO `hs_hr_country` VALUES ('LV', 'LATVIA', 'Latvia', 'LVA', '428');
INSERT INTO `hs_hr_country` VALUES ('LY', 'LIBYAN ARAB JAMAHIRIYA', 'Libyan Arab Jamahiriya', 'LBY', '434');
INSERT INTO `hs_hr_country` VALUES ('MA', 'MOROCCO', 'Morocco', 'MAR', '504');
INSERT INTO `hs_hr_country` VALUES ('MC', 'MONACO', 'Monaco', 'MCO', '492');
INSERT INTO `hs_hr_country` VALUES ('MD', 'MOLDOVA, REPUBLIC OF', 'Moldova, Republic of', 'MDA', '498');
INSERT INTO `hs_hr_country` VALUES ('MG', 'MADAGASCAR', 'Madagascar', 'MDG', '450');
INSERT INTO `hs_hr_country` VALUES ('MH', 'MARSHALL ISLANDS', 'Marshall Islands', 'MHL', '584');
INSERT INTO `hs_hr_country` VALUES ('MK', 'MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF', 'Macedonia, the Former Yugoslav Republic of', 'MKD', '807');
INSERT INTO `hs_hr_country` VALUES ('ML', 'MALI', 'Mali', 'MLI', '466');
INSERT INTO `hs_hr_country` VALUES ('MM', 'MYANMAR', 'Myanmar', 'MMR', '104');
INSERT INTO `hs_hr_country` VALUES ('MN', 'MONGOLIA', 'Mongolia', 'MNG', '496');
INSERT INTO `hs_hr_country` VALUES ('MO', 'MACAO', 'Macao', 'MAC', '446');
INSERT INTO `hs_hr_country` VALUES ('MP', 'NORTHERN MARIANA ISLANDS', 'Northern Mariana Islands', 'MNP', '580');
INSERT INTO `hs_hr_country` VALUES ('MQ', 'MARTINIQUE', 'Martinique', 'MTQ', '474');
INSERT INTO `hs_hr_country` VALUES ('MR', 'MAURITANIA', 'Mauritania', 'MRT', '478');
INSERT INTO `hs_hr_country` VALUES ('MS', 'MONTSERRAT', 'Montserrat', 'MSR', '500');
INSERT INTO `hs_hr_country` VALUES ('MT', 'MALTA', 'Malta', 'MLT', '470');
INSERT INTO `hs_hr_country` VALUES ('MU', 'MAURITIUS', 'Mauritius', 'MUS', '480');
INSERT INTO `hs_hr_country` VALUES ('MV', 'MALDIVES', 'Maldives', 'MDV', '462');
INSERT INTO `hs_hr_country` VALUES ('MW', 'MALAWI', 'Malawi', 'MWI', '454');
INSERT INTO `hs_hr_country` VALUES ('MX', 'MEXICO', 'Mexico', 'MEX', '484');
INSERT INTO `hs_hr_country` VALUES ('MY', 'MALAYSIA', 'Malaysia', 'MYS', '458');
INSERT INTO `hs_hr_country` VALUES ('MZ', 'MOZAMBIQUE', 'Mozambique', 'MOZ', '508');
INSERT INTO `hs_hr_country` VALUES ('NA', 'NAMIBIA', 'Namibia', 'NAM', '516');
INSERT INTO `hs_hr_country` VALUES ('NC', 'NEW CALEDONIA', 'New Caledonia', 'NCL', '540');
INSERT INTO `hs_hr_country` VALUES ('NE', 'NIGER', 'Niger', 'NER', '562');
INSERT INTO `hs_hr_country` VALUES ('NF', 'NORFOLK ISLAND', 'Norfolk Island', 'NFK', '574');
INSERT INTO `hs_hr_country` VALUES ('NG', 'NIGERIA', 'Nigeria', 'NGA', '566');
INSERT INTO `hs_hr_country` VALUES ('NI', 'NICARAGUA', 'Nicaragua', 'NIC', '558');
INSERT INTO `hs_hr_country` VALUES ('NL', 'NETHERLANDS', 'Netherlands', 'NLD', '528');
INSERT INTO `hs_hr_country` VALUES ('NO', 'NORWAY', 'Norway', 'NOR', '578');
INSERT INTO `hs_hr_country` VALUES ('NP', 'NEPAL', 'Nepal', 'NPL', '524');
INSERT INTO `hs_hr_country` VALUES ('NR', 'NAURU', 'Nauru', 'NRU', '520');
INSERT INTO `hs_hr_country` VALUES ('NU', 'NIUE', 'Niue', 'NIU', '570');
INSERT INTO `hs_hr_country` VALUES ('NZ', 'NEW ZEALAND', 'New Zealand', 'NZL', '554');
INSERT INTO `hs_hr_country` VALUES ('OM', 'OMAN', 'Oman', 'OMN', '512');
INSERT INTO `hs_hr_country` VALUES ('PA', 'PANAMA', 'Panama', 'PAN', '591');
INSERT INTO `hs_hr_country` VALUES ('PE', 'PERU', 'Peru', 'PER', '604');
INSERT INTO `hs_hr_country` VALUES ('PF', 'FRENCH POLYNESIA', 'French Polynesia', 'PYF', '258');
INSERT INTO `hs_hr_country` VALUES ('PG', 'PAPUA NEW GUINEA', 'Papua New Guinea', 'PNG', '598');
INSERT INTO `hs_hr_country` VALUES ('PH', 'PHILIPPINES', 'Philippines', 'PHL', '608');
INSERT INTO `hs_hr_country` VALUES ('PK', 'PAKISTAN', 'Pakistan', 'PAK', '586');
INSERT INTO `hs_hr_country` VALUES ('PL', 'POLAND', 'Poland', 'POL', '616');
INSERT INTO `hs_hr_country` VALUES ('PM', 'SAINT PIERRE AND MIQUELON', 'Saint Pierre and Miquelon', 'SPM', '666');
INSERT INTO `hs_hr_country` VALUES ('PN', 'PITCAIRN', 'Pitcairn', 'PCN', '612');
INSERT INTO `hs_hr_country` VALUES ('PR', 'PUERTO RICO', 'Puerto Rico', 'PRI', '630');
INSERT INTO `hs_hr_country` VALUES ('PS', 'PALESTINIAN TERRITORY, OCCUPIED', 'Palestinian Territory, Occupied', null, null);
INSERT INTO `hs_hr_country` VALUES ('PT', 'PORTUGAL', 'Portugal', 'PRT', '620');
INSERT INTO `hs_hr_country` VALUES ('PW', 'PALAU', 'Palau', 'PLW', '585');
INSERT INTO `hs_hr_country` VALUES ('PY', 'PARAGUAY', 'Paraguay', 'PRY', '600');
INSERT INTO `hs_hr_country` VALUES ('QA', 'QATAR', 'Qatar', 'QAT', '634');
INSERT INTO `hs_hr_country` VALUES ('RE', 'REUNION', 'Reunion', 'REU', '638');
INSERT INTO `hs_hr_country` VALUES ('RO', 'ROMANIA', 'Romania', 'ROM', '642');
INSERT INTO `hs_hr_country` VALUES ('RU', 'RUSSIAN FEDERATION', 'Russian Federation', 'RUS', '643');
INSERT INTO `hs_hr_country` VALUES ('RW', 'RWANDA', 'Rwanda', 'RWA', '646');
INSERT INTO `hs_hr_country` VALUES ('SA', 'SAUDI ARABIA', 'Saudi Arabia', 'SAU', '682');
INSERT INTO `hs_hr_country` VALUES ('SB', 'SOLOMON ISLANDS', 'Solomon Islands', 'SLB', '90');
INSERT INTO `hs_hr_country` VALUES ('SC', 'SEYCHELLES', 'Seychelles', 'SYC', '690');
INSERT INTO `hs_hr_country` VALUES ('SD', 'SUDAN', 'Sudan', 'SDN', '736');
INSERT INTO `hs_hr_country` VALUES ('SE', 'SWEDEN', 'Sweden', 'SWE', '752');
INSERT INTO `hs_hr_country` VALUES ('SG', 'SINGAPORE', 'Singapore', 'SGP', '702');
INSERT INTO `hs_hr_country` VALUES ('SH', 'SAINT HELENA', 'Saint Helena', 'SHN', '654');
INSERT INTO `hs_hr_country` VALUES ('SI', 'SLOVENIA', 'Slovenia', 'SVN', '705');
INSERT INTO `hs_hr_country` VALUES ('SJ', 'SVALBARD AND JAN MAYEN', 'Svalbard and Jan Mayen', 'SJM', '744');
INSERT INTO `hs_hr_country` VALUES ('SK', 'SLOVAKIA', 'Slovakia', 'SVK', '703');
INSERT INTO `hs_hr_country` VALUES ('SL', 'SIERRA LEONE', 'Sierra Leone', 'SLE', '694');
INSERT INTO `hs_hr_country` VALUES ('SM', 'SAN MARINO', 'San Marino', 'SMR', '674');
INSERT INTO `hs_hr_country` VALUES ('SN', 'SENEGAL', 'Senegal', 'SEN', '686');
INSERT INTO `hs_hr_country` VALUES ('SO', 'SOMALIA', 'Somalia', 'SOM', '706');
INSERT INTO `hs_hr_country` VALUES ('SR', 'SURINAME', 'Suriname', 'SUR', '740');
INSERT INTO `hs_hr_country` VALUES ('ST', 'SAO TOME AND PRINCIPE', 'Sao Tome and Principe', 'STP', '678');
INSERT INTO `hs_hr_country` VALUES ('SV', 'EL SALVADOR', 'El Salvador', 'SLV', '222');
INSERT INTO `hs_hr_country` VALUES ('SY', 'SYRIAN ARAB REPUBLIC', 'Syrian Arab Republic', 'SYR', '760');
INSERT INTO `hs_hr_country` VALUES ('SZ', 'SWAZILAND', 'Swaziland', 'SWZ', '748');
INSERT INTO `hs_hr_country` VALUES ('TC', 'TURKS AND CAICOS ISLANDS', 'Turks and Caicos Islands', 'TCA', '796');
INSERT INTO `hs_hr_country` VALUES ('TD', 'CHAD', 'Chad', 'TCD', '148');
INSERT INTO `hs_hr_country` VALUES ('TF', 'FRENCH SOUTHERN TERRITORIES', 'French Southern Territories', null, null);
INSERT INTO `hs_hr_country` VALUES ('TG', 'TOGO', 'Togo', 'TGO', '768');
INSERT INTO `hs_hr_country` VALUES ('TH', 'THAILAND', 'Thailand', 'THA', '764');
INSERT INTO `hs_hr_country` VALUES ('TJ', 'TAJIKISTAN', 'Tajikistan', 'TJK', '762');
INSERT INTO `hs_hr_country` VALUES ('TK', 'TOKELAU', 'Tokelau', 'TKL', '772');
INSERT INTO `hs_hr_country` VALUES ('TL', 'TIMOR-LESTE', 'Timor-Leste', null, null);
INSERT INTO `hs_hr_country` VALUES ('TM', 'TURKMENISTAN', 'Turkmenistan', 'TKM', '795');
INSERT INTO `hs_hr_country` VALUES ('TN', 'TUNISIA', 'Tunisia', 'TUN', '788');
INSERT INTO `hs_hr_country` VALUES ('TO', 'TONGA', 'Tonga', 'TON', '776');
INSERT INTO `hs_hr_country` VALUES ('TR', 'TURKEY', 'Turkey', 'TUR', '792');
INSERT INTO `hs_hr_country` VALUES ('TT', 'TRINIDAD AND TOBAGO', 'Trinidad and Tobago', 'TTO', '780');
INSERT INTO `hs_hr_country` VALUES ('TV', 'TUVALU', 'Tuvalu', 'TUV', '798');
INSERT INTO `hs_hr_country` VALUES ('TW', 'TAIWAN, PROVINCE OF CHINA', 'Taiwan', 'TWN', '158');
INSERT INTO `hs_hr_country` VALUES ('TZ', 'TANZANIA, UNITED REPUBLIC OF', 'Tanzania, United Republic of', 'TZA', '834');
INSERT INTO `hs_hr_country` VALUES ('UA', 'UKRAINE', 'Ukraine', 'UKR', '804');
INSERT INTO `hs_hr_country` VALUES ('UG', 'UGANDA', 'Uganda', 'UGA', '800');
INSERT INTO `hs_hr_country` VALUES ('UM', 'UNITED STATES MINOR OUTLYING ISLANDS', 'United States Minor Outlying Islands', null, null);
INSERT INTO `hs_hr_country` VALUES ('US', 'UNITED STATES', 'United States', 'USA', '840');
INSERT INTO `hs_hr_country` VALUES ('UY', 'URUGUAY', 'Uruguay', 'URY', '858');
INSERT INTO `hs_hr_country` VALUES ('UZ', 'UZBEKISTAN', 'Uzbekistan', 'UZB', '860');
INSERT INTO `hs_hr_country` VALUES ('VA', 'HOLY SEE (VATICAN CITY STATE)', 'Holy See (Vatican City State)', 'VAT', '336');
INSERT INTO `hs_hr_country` VALUES ('VC', 'SAINT VINCENT AND THE GRENADINES', 'Saint Vincent and the Grenadines', 'VCT', '670');
INSERT INTO `hs_hr_country` VALUES ('VE', 'VENEZUELA', 'Venezuela', 'VEN', '862');
INSERT INTO `hs_hr_country` VALUES ('VG', 'VIRGIN ISLANDS, BRITISH', 'Virgin Islands, British', 'VGB', '92');
INSERT INTO `hs_hr_country` VALUES ('VI', 'VIRGIN ISLANDS, U.S.', 'Virgin Islands, U.s.', 'VIR', '850');
INSERT INTO `hs_hr_country` VALUES ('VN', 'VIET NAM', 'Viet Nam', 'VNM', '704');
INSERT INTO `hs_hr_country` VALUES ('VU', 'VANUATU', 'Vanuatu', 'VUT', '548');
INSERT INTO `hs_hr_country` VALUES ('WF', 'WALLIS AND FUTUNA', 'Wallis and Futuna', 'WLF', '876');
INSERT INTO `hs_hr_country` VALUES ('WS', 'SAMOA', 'Samoa', 'WSM', '882');
INSERT INTO `hs_hr_country` VALUES ('YE', 'YEMEN', 'Yemen', 'YEM', '887');
INSERT INTO `hs_hr_country` VALUES ('YT', 'MAYOTTE', 'Mayotte', null, null);
INSERT INTO `hs_hr_country` VALUES ('ZA', 'SOUTH AFRICA', 'South Africa', 'ZAF', '710');
INSERT INTO `hs_hr_country` VALUES ('ZM', 'ZAMBIA', 'Zambia', 'ZMB', '894');
INSERT INTO `hs_hr_country` VALUES ('ZW', 'ZIMBABWE', 'Zimbabwe', 'ZWE', '716');

-- ----------------------------
-- Table structure for `hs_hr_currency_type`
-- ----------------------------
DROP TABLE IF EXISTS `hs_hr_currency_type`;
CREATE TABLE `hs_hr_currency_type` (
  `code` int(11) NOT NULL DEFAULT '0',
  `currency_id` char(3) NOT NULL DEFAULT '',
  `currency_name` varchar(70) NOT NULL DEFAULT '',
  PRIMARY KEY (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hs_hr_currency_type
-- ----------------------------
INSERT INTO `hs_hr_currency_type` VALUES ('3', 'AED', 'Utd. Arab Emir. Dirham');
INSERT INTO `hs_hr_currency_type` VALUES ('4', 'AFN', 'Afghanistan Afghani');
INSERT INTO `hs_hr_currency_type` VALUES ('5', 'ALL', 'Albanian Lek');
INSERT INTO `hs_hr_currency_type` VALUES ('6', 'ANG', 'NL Antillian Guilder');
INSERT INTO `hs_hr_currency_type` VALUES ('7', 'AOR', 'Angolan New Kwanza');
INSERT INTO `hs_hr_currency_type` VALUES ('177', 'ARP', 'Argentina Pesos');
INSERT INTO `hs_hr_currency_type` VALUES ('8', 'ARS', 'Argentine Peso');
INSERT INTO `hs_hr_currency_type` VALUES ('10', 'AUD', 'Australian Dollar');
INSERT INTO `hs_hr_currency_type` VALUES ('11', 'AWG', 'Aruban Florin');
INSERT INTO `hs_hr_currency_type` VALUES ('12', 'BBD', 'Barbados Dollar');
INSERT INTO `hs_hr_currency_type` VALUES ('13', 'BDT', 'Bangladeshi Taka');
INSERT INTO `hs_hr_currency_type` VALUES ('15', 'BGL', 'Bulgarian Lev');
INSERT INTO `hs_hr_currency_type` VALUES ('16', 'BHD', 'Bahraini Dinar');
INSERT INTO `hs_hr_currency_type` VALUES ('17', 'BIF', 'Burundi Franc');
INSERT INTO `hs_hr_currency_type` VALUES ('18', 'BMD', 'Bermudian Dollar');
INSERT INTO `hs_hr_currency_type` VALUES ('19', 'BND', 'Brunei Dollar');
INSERT INTO `hs_hr_currency_type` VALUES ('20', 'BOB', 'Bolivian Boliviano');
INSERT INTO `hs_hr_currency_type` VALUES ('21', 'BRL', 'Brazilian Real');
INSERT INTO `hs_hr_currency_type` VALUES ('22', 'BSD', 'Bahamian Dollar');
INSERT INTO `hs_hr_currency_type` VALUES ('23', 'BTN', 'Bhutan Ngultrum');
INSERT INTO `hs_hr_currency_type` VALUES ('24', 'BWP', 'Botswana Pula');
INSERT INTO `hs_hr_currency_type` VALUES ('25', 'BZD', 'Belize Dollar');
INSERT INTO `hs_hr_currency_type` VALUES ('26', 'CAD', 'Canadian Dollar');
INSERT INTO `hs_hr_currency_type` VALUES ('27', 'CHF', 'Swiss Franc');
INSERT INTO `hs_hr_currency_type` VALUES ('28', 'CLP', 'Chilean Peso');
INSERT INTO `hs_hr_currency_type` VALUES ('29', 'CNY', 'Chinese Yuan Renminbi');
INSERT INTO `hs_hr_currency_type` VALUES ('30', 'COP', 'Colombian Peso');
INSERT INTO `hs_hr_currency_type` VALUES ('31', 'CRC', 'Costa Rican Colon');
INSERT INTO `hs_hr_currency_type` VALUES ('32', 'CUP', 'Cuban Peso');
INSERT INTO `hs_hr_currency_type` VALUES ('33', 'CVE', 'Cape Verde Escudo');
INSERT INTO `hs_hr_currency_type` VALUES ('34', 'CYP', 'Cyprus Pound');
INSERT INTO `hs_hr_currency_type` VALUES ('171', 'CZK', 'Czech Koruna');
INSERT INTO `hs_hr_currency_type` VALUES ('37', 'DJF', 'Djibouti Franc');
INSERT INTO `hs_hr_currency_type` VALUES ('38', 'DKK', 'Danish Krona');
INSERT INTO `hs_hr_currency_type` VALUES ('39', 'DOP', 'Dominican Peso');
INSERT INTO `hs_hr_currency_type` VALUES ('40', 'DZD', 'Algerian Dinar');
INSERT INTO `hs_hr_currency_type` VALUES ('41', 'ECS', 'Ecuador Sucre');
INSERT INTO `hs_hr_currency_type` VALUES ('43', 'EEK', 'Estonian Krona');
INSERT INTO `hs_hr_currency_type` VALUES ('44', 'EGP', 'Egyptian Pound');
INSERT INTO `hs_hr_currency_type` VALUES ('46', 'ETB', 'Ethiopian Birr');
INSERT INTO `hs_hr_currency_type` VALUES ('42', 'EUR', 'Euro');
INSERT INTO `hs_hr_currency_type` VALUES ('48', 'FJD', 'Fiji Dollar');
INSERT INTO `hs_hr_currency_type` VALUES ('49', 'FKP', 'Falkland Islands Pound');
INSERT INTO `hs_hr_currency_type` VALUES ('51', 'GBP', 'Pound Sterling');
INSERT INTO `hs_hr_currency_type` VALUES ('52', 'GHC', 'Ghanaian Cedi');
INSERT INTO `hs_hr_currency_type` VALUES ('53', 'GIP', 'Gibraltar Pound');
INSERT INTO `hs_hr_currency_type` VALUES ('54', 'GMD', 'Gambian Dalasi');
INSERT INTO `hs_hr_currency_type` VALUES ('55', 'GNF', 'Guinea Franc');
INSERT INTO `hs_hr_currency_type` VALUES ('57', 'GTQ', 'Guatemalan Quetzal');
INSERT INTO `hs_hr_currency_type` VALUES ('58', 'GYD', 'Guyanan Dollar');
INSERT INTO `hs_hr_currency_type` VALUES ('59', 'HKD', 'Hong Kong Dollar');
INSERT INTO `hs_hr_currency_type` VALUES ('60', 'HNL', 'Honduran Lempira');
INSERT INTO `hs_hr_currency_type` VALUES ('61', 'HRK', 'Croatian Kuna');
INSERT INTO `hs_hr_currency_type` VALUES ('62', 'HTG', 'Haitian Gourde');
INSERT INTO `hs_hr_currency_type` VALUES ('63', 'HUF', 'Hungarian Forint');
INSERT INTO `hs_hr_currency_type` VALUES ('64', 'IDR', 'Indonesian Rupiah');
INSERT INTO `hs_hr_currency_type` VALUES ('66', 'ILS', 'Israeli New Shekel');
INSERT INTO `hs_hr_currency_type` VALUES ('67', 'INR', 'Indian Rupee');
INSERT INTO `hs_hr_currency_type` VALUES ('68', 'IQD', 'Iraqi Dinar');
INSERT INTO `hs_hr_currency_type` VALUES ('69', 'IRR', 'Iranian Rial');
INSERT INTO `hs_hr_currency_type` VALUES ('70', 'ISK', 'Iceland Krona');
INSERT INTO `hs_hr_currency_type` VALUES ('72', 'JMD', 'Jamaican Dollar');
INSERT INTO `hs_hr_currency_type` VALUES ('73', 'JOD', 'Jordanian Dinar');
INSERT INTO `hs_hr_currency_type` VALUES ('74', 'JPY', 'Japanese Yen');
INSERT INTO `hs_hr_currency_type` VALUES ('75', 'KES', 'Kenyan Shilling');
INSERT INTO `hs_hr_currency_type` VALUES ('76', 'KHR', 'Kampuchean Riel');
INSERT INTO `hs_hr_currency_type` VALUES ('77', 'KMF', 'Comoros Franc');
INSERT INTO `hs_hr_currency_type` VALUES ('78', 'KPW', 'North Korean Won');
INSERT INTO `hs_hr_currency_type` VALUES ('79', 'KRW', 'Korean Won');
INSERT INTO `hs_hr_currency_type` VALUES ('80', 'KWD', 'Kuwaiti Dinar');
INSERT INTO `hs_hr_currency_type` VALUES ('81', 'KYD', 'Cayman Islands Dollar');
INSERT INTO `hs_hr_currency_type` VALUES ('82', 'KZT', 'Kazakhstan Tenge');
INSERT INTO `hs_hr_currency_type` VALUES ('83', 'LAK', 'Lao Kip');
INSERT INTO `hs_hr_currency_type` VALUES ('84', 'LBP', 'Lebanese Pound');
INSERT INTO `hs_hr_currency_type` VALUES ('85', 'LKR', 'Sri Lanka Rupee');
INSERT INTO `hs_hr_currency_type` VALUES ('86', 'LRD', 'Liberian Dollar');
INSERT INTO `hs_hr_currency_type` VALUES ('87', 'LSL', 'Lesotho Loti');
INSERT INTO `hs_hr_currency_type` VALUES ('88', 'LTL', 'Lithuanian Litas');
INSERT INTO `hs_hr_currency_type` VALUES ('90', 'LVL', 'Latvian Lats');
INSERT INTO `hs_hr_currency_type` VALUES ('91', 'LYD', 'Libyan Dinar');
INSERT INTO `hs_hr_currency_type` VALUES ('92', 'MAD', 'Moroccan Dirham');
INSERT INTO `hs_hr_currency_type` VALUES ('93', 'MGF', 'Malagasy Franc');
INSERT INTO `hs_hr_currency_type` VALUES ('94', 'MMK', 'Myanmar Kyat');
INSERT INTO `hs_hr_currency_type` VALUES ('95', 'MNT', 'Mongolian Tugrik');
INSERT INTO `hs_hr_currency_type` VALUES ('96', 'MOP', 'Macau Pataca');
INSERT INTO `hs_hr_currency_type` VALUES ('97', 'MRO', 'Mauritanian Ouguiya');
INSERT INTO `hs_hr_currency_type` VALUES ('98', 'MTL', 'Maltese Lira');
INSERT INTO `hs_hr_currency_type` VALUES ('99', 'MUR', 'Mauritius Rupee');
INSERT INTO `hs_hr_currency_type` VALUES ('100', 'MVR', 'Maldive Rufiyaa');
INSERT INTO `hs_hr_currency_type` VALUES ('101', 'MWK', 'Malawi Kwacha');
INSERT INTO `hs_hr_currency_type` VALUES ('102', 'MXN', 'Mexican New Peso');
INSERT INTO `hs_hr_currency_type` VALUES ('172', 'MXP', 'Mexican Peso');
INSERT INTO `hs_hr_currency_type` VALUES ('103', 'MYR', 'Malaysian Ringgit');
INSERT INTO `hs_hr_currency_type` VALUES ('104', 'MZM', 'Mozambique Metical');
INSERT INTO `hs_hr_currency_type` VALUES ('105', 'NAD', 'Namibia Dollar');
INSERT INTO `hs_hr_currency_type` VALUES ('106', 'NGN', 'Nigerian Naira');
INSERT INTO `hs_hr_currency_type` VALUES ('107', 'NIO', 'Nicaraguan Cordoba Oro');
INSERT INTO `hs_hr_currency_type` VALUES ('109', 'NOK', 'Norwegian Krona');
INSERT INTO `hs_hr_currency_type` VALUES ('110', 'NPR', 'Nepalese Rupee');
INSERT INTO `hs_hr_currency_type` VALUES ('111', 'NZD', 'New Zealand Dollar');
INSERT INTO `hs_hr_currency_type` VALUES ('112', 'OMR', 'Omani Rial');
INSERT INTO `hs_hr_currency_type` VALUES ('113', 'PAB', 'Panamanian Balboa');
INSERT INTO `hs_hr_currency_type` VALUES ('114', 'PEN', 'Peruvian Nuevo Sol');
INSERT INTO `hs_hr_currency_type` VALUES ('115', 'PGK', 'Papua New Guinea Kina');
INSERT INTO `hs_hr_currency_type` VALUES ('116', 'PHP', 'Philippine Peso');
INSERT INTO `hs_hr_currency_type` VALUES ('117', 'PKR', 'Pakistan Rupee');
INSERT INTO `hs_hr_currency_type` VALUES ('118', 'PLN', 'Polish Zloty');
INSERT INTO `hs_hr_currency_type` VALUES ('120', 'PYG', 'Paraguay Guarani');
INSERT INTO `hs_hr_currency_type` VALUES ('121', 'QAR', 'Qatari Rial');
INSERT INTO `hs_hr_currency_type` VALUES ('122', 'ROL', 'Romanian Leu');
INSERT INTO `hs_hr_currency_type` VALUES ('123', 'RUB', 'Russian Rouble');
INSERT INTO `hs_hr_currency_type` VALUES ('180', 'RUR', 'Russia Rubles');
INSERT INTO `hs_hr_currency_type` VALUES ('173', 'SAR', 'Saudi Arabia Riyal');
INSERT INTO `hs_hr_currency_type` VALUES ('125', 'SBD', 'Solomon Islands Dollar');
INSERT INTO `hs_hr_currency_type` VALUES ('126', 'SCR', 'Seychelles Rupee');
INSERT INTO `hs_hr_currency_type` VALUES ('127', 'SDD', 'Sudanese Dinar');
INSERT INTO `hs_hr_currency_type` VALUES ('128', 'SDP', 'Sudanese Pound');
INSERT INTO `hs_hr_currency_type` VALUES ('129', 'SEK', 'Swedish Krona');
INSERT INTO `hs_hr_currency_type` VALUES ('131', 'SGD', 'Singapore Dollar');
INSERT INTO `hs_hr_currency_type` VALUES ('132', 'SHP', 'St. Helena Pound');
INSERT INTO `hs_hr_currency_type` VALUES ('130', 'SKK', 'Slovak Koruna');
INSERT INTO `hs_hr_currency_type` VALUES ('135', 'SLL', 'Sierra Leone Leone');
INSERT INTO `hs_hr_currency_type` VALUES ('136', 'SOS', 'Somali Shilling');
INSERT INTO `hs_hr_currency_type` VALUES ('137', 'SRD', 'Surinamese Dollar');
INSERT INTO `hs_hr_currency_type` VALUES ('138', 'STD', 'Sao Tome/Principe Dobra');
INSERT INTO `hs_hr_currency_type` VALUES ('139', 'SVC', 'El Salvador Colon');
INSERT INTO `hs_hr_currency_type` VALUES ('140', 'SYP', 'Syrian Pound');
INSERT INTO `hs_hr_currency_type` VALUES ('141', 'SZL', 'Swaziland Lilangeni');
INSERT INTO `hs_hr_currency_type` VALUES ('142', 'THB', 'Thai Baht');
INSERT INTO `hs_hr_currency_type` VALUES ('143', 'TND', 'Tunisian Dinar');
INSERT INTO `hs_hr_currency_type` VALUES ('144', 'TOP', 'Tongan Pa\'anga');
INSERT INTO `hs_hr_currency_type` VALUES ('145', 'TRL', 'Turkish Lira');
INSERT INTO `hs_hr_currency_type` VALUES ('146', 'TTD', 'Trinidad/Tobago Dollar');
INSERT INTO `hs_hr_currency_type` VALUES ('147', 'TWD', 'Taiwan Dollar');
INSERT INTO `hs_hr_currency_type` VALUES ('148', 'TZS', 'Tanzanian Shilling');
INSERT INTO `hs_hr_currency_type` VALUES ('149', 'UAH', 'Ukraine Hryvnia');
INSERT INTO `hs_hr_currency_type` VALUES ('150', 'UGX', 'Uganda Shilling');
INSERT INTO `hs_hr_currency_type` VALUES ('151', 'USD', 'United States Dollar');
INSERT INTO `hs_hr_currency_type` VALUES ('152', 'UYP', 'Uruguayan Peso');
INSERT INTO `hs_hr_currency_type` VALUES ('153', 'VEB', 'Venezuelan Bolivar');
INSERT INTO `hs_hr_currency_type` VALUES ('154', 'VND', 'Vietnamese Dong');
INSERT INTO `hs_hr_currency_type` VALUES ('155', 'VUV', 'Vanuatu Vatu');
INSERT INTO `hs_hr_currency_type` VALUES ('156', 'WST', 'Samoan Tala');
INSERT INTO `hs_hr_currency_type` VALUES ('158', 'XAF', 'CFA Franc BEAC');
INSERT INTO `hs_hr_currency_type` VALUES ('159', 'XAG', 'Silver (oz.)');
INSERT INTO `hs_hr_currency_type` VALUES ('160', 'XAU', 'Gold (oz.)');
INSERT INTO `hs_hr_currency_type` VALUES ('161', 'XCD', 'Eastern Caribbean Dollars');
INSERT INTO `hs_hr_currency_type` VALUES ('179', 'XDR', 'IMF Special Drawing Right');
INSERT INTO `hs_hr_currency_type` VALUES ('162', 'XOF', 'CFA Franc BCEAO');
INSERT INTO `hs_hr_currency_type` VALUES ('163', 'XPD', 'Palladium (oz.)');
INSERT INTO `hs_hr_currency_type` VALUES ('164', 'XPF', 'CFP Franc');
INSERT INTO `hs_hr_currency_type` VALUES ('165', 'XPT', 'Platinum (oz.)');
INSERT INTO `hs_hr_currency_type` VALUES ('166', 'YER', 'Yemeni Riyal');
INSERT INTO `hs_hr_currency_type` VALUES ('167', 'YUM', 'Yugoslavian Dinar');
INSERT INTO `hs_hr_currency_type` VALUES ('175', 'YUN', 'Yugoslav Dinar');
INSERT INTO `hs_hr_currency_type` VALUES ('168', 'ZAR', 'South African Rand');
INSERT INTO `hs_hr_currency_type` VALUES ('176', 'ZMK', 'Zambian Kwacha');
INSERT INTO `hs_hr_currency_type` VALUES ('169', 'ZRN', 'New Zaire');
INSERT INTO `hs_hr_currency_type` VALUES ('170', 'ZWD', 'Zimbabwe Dollar');

-- ----------------------------
-- Table structure for `hs_hr_custom_export`
-- ----------------------------
DROP TABLE IF EXISTS `hs_hr_custom_export`;
CREATE TABLE `hs_hr_custom_export` (
  `export_id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `fields` text,
  `headings` text,
  PRIMARY KEY (`export_id`),
  KEY `emp_number` (`export_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hs_hr_custom_export
-- ----------------------------

-- ----------------------------
-- Table structure for `hs_hr_custom_import`
-- ----------------------------
DROP TABLE IF EXISTS `hs_hr_custom_import`;
CREATE TABLE `hs_hr_custom_import` (
  `import_id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `fields` text,
  `has_heading` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`import_id`),
  KEY `emp_number` (`import_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hs_hr_custom_import
-- ----------------------------

-- ----------------------------
-- Table structure for `hs_hr_district`
-- ----------------------------
DROP TABLE IF EXISTS `hs_hr_district`;
CREATE TABLE `hs_hr_district` (
  `district_code` varchar(13) NOT NULL DEFAULT '',
  `district_name` varchar(50) DEFAULT NULL,
  `province_code` varchar(13) DEFAULT NULL,
  PRIMARY KEY (`district_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hs_hr_district
-- ----------------------------

-- ----------------------------
-- Table structure for `hs_hr_employee`
-- ----------------------------
DROP TABLE IF EXISTS `hs_hr_employee`;
CREATE TABLE `hs_hr_employee` (
  `emp_number` int(7) NOT NULL AUTO_INCREMENT,
  `employee_id` varchar(50) NOT NULL,
  `emp_lastname` varchar(100) NOT NULL,
  `emp_firstname` varchar(100) NOT NULL,
  `emp_middlename` varchar(100) NOT NULL,
  `emp_fullname` varchar(100) NOT NULL,
  `emp_birthday` date NOT NULL,
  `emp_gender` smallint(6) NOT NULL,
  `emp_marital_status` varchar(20) NOT NULL,
  `emp_status` int(13) NOT NULL,
  `job_title_code` int(7) NOT NULL,
  `emp_street1` varchar(100) NOT NULL,
  `emp_street2` varchar(100) NOT NULL,
  `city_code` varchar(100) NOT NULL,
  `country_code` varchar(100) NOT NULL,
  `province_code` varchar(100) NOT NULL,
  `emp_zipcode` varchar(100) NOT NULL,
  `emp_home_telephone` varchar(50) NOT NULL,
  `emp_mobile` varchar(50) NOT NULL,
  `emp_work_telephone` varchar(50) NOT NULL,
  `emp_work_email` varchar(50) NOT NULL,
  `salary_grade_code` varchar(13) NOT NULL,
  `joined_date` date NOT NULL,
  `sss_number` varchar(50) NOT NULL,
  `tin_number` varchar(50) NOT NULL,
  `philhealth_number` varchar(50) NOT NULL,
  `pagibig_number` varchar(50) NOT NULL,
  PRIMARY KEY (`emp_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hs_hr_employee
-- ----------------------------

-- ----------------------------
-- Table structure for `hs_hr_emp_attachment`
-- ----------------------------
DROP TABLE IF EXISTS `hs_hr_emp_attachment`;
CREATE TABLE `hs_hr_emp_attachment` (
  `emp_number` int(7) NOT NULL DEFAULT '0',
  `eattach_id` int(11) NOT NULL DEFAULT '0',
  `eattach_desc` varchar(200) DEFAULT NULL,
  `eattach_filename` varchar(100) DEFAULT NULL,
  `eattach_size` int(11) DEFAULT '0',
  `eattach_attachment` mediumblob,
  `eattach_type` varchar(200) DEFAULT NULL,
  `screen` varchar(100) DEFAULT '',
  `attached_by` int(11) DEFAULT NULL,
  `attached_by_name` varchar(200) DEFAULT NULL,
  `attached_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`emp_number`,`eattach_id`),
  KEY `screen` (`screen`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hs_hr_emp_attachment
-- ----------------------------
INSERT INTO `hs_hr_emp_attachment` VALUES ('794', '1', '', 'Andrew Jay J Rosas - Resume.docx', '66949', 0x504B0304140006000800000021005F1F8AE0B601000065070000130008025B436F6E74656E745F54797065735D2E786D6C20A2040228A000020000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000B4554D6BDB4010BD07FA1FC45E83B54E0EA504CB3934E9B10DD4855CD7BB237BD3FD62679CC4FFBE23B912C1712488F045B02CF3E6ED7B6F468BDB57EF8A67C86863A8C455391705041D8D0D9B4AFC59FD987D1305920A46B918A0127B4071BBFC72B158ED1360C1D5012BB1254A3752A2DE825758C604816FEA98BD223EE68D4C4AFF551B90D7F3F957A963200834A306432C17BF9840B6068A0795E9A7F2DC47BEC46C641D2385488025C389E2FBA1AE695D099592B35A111397CFC11C359DC5BAB61A4CD43BCFADCA062EE5A801919FE65DD9435F36D0F23409BD438AFED13B6909FC438E09AF2653E9411B3CC864013B0E7750AB9DA3E2FE95F53958F2946073F472EB1B25DB0BE67DA22683C3A39A11B5FEDB537265AB286E6D1A62356CC780A2ADADBD2BC3309F70B547F6CA864ED50FE315767E0D99F330D9D377F1EAA1474920EDDD39027EC01D6D0FC19C69C23AE4210AEC573B5592F339D90468A6C68099F1A01F0DD687114020E2009C61C174C843CF6FA7817869826CBFD3974B0B33DAB2E645BA526B0793357F17FC1E7A94C40BAC7F9F4DFD37E04344FAFCE9983F2146B7369BEA13A993ED4F72F90F0000FFFF0300504B0304140006000800000021001E911AB7F30000004E0200000B0008025F72656C732F2E72656C7320A2040228A0000200000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008C92DB4A03410C86EF05DF61C87D37DB0A22D2D9DE48A17722EB038499EC01770ECCA4DABEBDA320BA50DB5EE6F4E7CB4FD69B839BD43BA73C06AF6159D5A0D89B6047DF6B786DB78B075059C85B9A82670D47CEB0696E6FD62F3C9194A13C8C31ABA2E2B38641243E226633B0A35C85C8BE54BA901C4909538F91CC1BF58CABBABEC7F457039A99A6DA590D6967EF40B5C758365FD60E5D371A7E0A66EFD8CB8915C807616FD92E622A6C49C6728D6A29F52C1A6C30CF259D9162AC0A36E069A2D5F544FF5F8B8E852C09A10989CFF37C759C035A5E0F74D9A279C7AF3B1F21592C167D7BFB4383B32F683E010000FFFF0300504B03041400060008000000210035ED70A25E020000C10E00001C000801776F72642F5F72656C732F646F63756D656E742E786D6C2E72656C7320A2040128A0000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000C4575D6FD330147D47E23F547E4FDC1418302D1DE24BDA03421A45E26D72939BD46DFC21DB59967FCF75B7840CB6D080292F557D2DDB27E79C7B7D7D767E23AAD93518CB954C4912CFC90C64A6722ECB947C5D7D8C5E9199754CE6AC521252D28225E7CBA74FCE2EA1620E17D90DD77686BB489B928D73FA94529B6D40301B2B0D12670A650473383425D52CDBB112E8623E3FA166B80759DEDB737691A7C45CE478FEAAD578F2EFF75645C13378AFB25A80740F1C41B9C0B37143664A7029119073761B4CE2AD8692D0874124CF42A2D8E0F7988ACBDD0F24771F07326EF88E6B8F6B4F971FD1774AE8DA81B9B290D586BBB65BF749E548CC871B9C93AC7A147C500A8F0C3E28F1D6B515FAB7D7FF761CA3451FE36E918414BE50D2ADD8BA1A58B00F8DA178191204C85C2A37A4A18B8C41481621314C35D1674C18AC36B2BCB2AD75203A090F4C80A0FC1D177B50DA652DD66090C68EBF94F4A151F14FFEA7F86FF1CAA87507F930C917788F85BB36A64ABE32AAC62CB71BA5BC69A7410F5A71B2DA3A25BE6181EB8B5E1CD33E4A39265332267D50E50BE4E3A7DAD387C64024413999AAE69FF8EF4548FB35B0FE02CE3B6970770D82A3D405453295BABF4B8423E570D334B1538E555BB5B671A604CD98016C8923965F634349311E69A30A5E0115CCECC04BE127C1386EFD7F6D22BFF86E36326081196C82F7E128079B19AE7DB7DCA5E161552C791DD24653C5EB1AE97D9B3F0DF8F390B8ED2FDEEF2263C6FFD7D409C62BA74E8DB2F8D0C1F7918166CBDA37A58F7B134D232C09CAD811955E046D501CBE1B07CDF17E48F7BFFD2545EF3D3C97DF010000FFFF0300504B0304140006000800000021009937CC20563A00009835020011000000776F72642F646F63756D656E742E786D6CEC7DDD6EE3C89EDF7D80BC43C101367DB0B65BDFB2BDDBDAC892DCED59BBEDB53C670EF666414BB4C4698AD42129BB3D4180B9C81BEC4DF622409007089057D8BCC93C497EFF2A92AE924889A42859721338675AA628B2AAFEDFDF7FFF0FDF27267BD21DD7B0AD4F07E5E3D201D3AD813D34ACD1A7839FEF2F8E4E0E98EB69D650336D4BFF74F0A2BB07FFD0FA8FFFE1EF9FCF86F66036D12D8FE111967BF6846FC79E373DFBF8D11D8CF589E61EDB53DDC2978FB633D13CFCE98C3E4E34E7DB6C7A34B02753CD331E0CD3F05E3E564AA5C681FF18FBD3C1CCB1CEFC471C4D8C8163BBF6A3473F39B31F1F8D81EEFF13FCC249F25EF1CBAEBF64FEC68F8E6E620DB6E58E8DA91B3C6D92F569D8E23878C8D3B24D3C4DCCE0BEE76992B70D1DED19F0989862D9CFB6339C3AF640775D5CED8A2FC327964BCBDEED1F203D22FC459225A8EF0C5632D10C2B7C0C61C71CFC43E01D03781FC5BB3FD2A35E3782B36801971EECE10BFD3B65CF67C0C5E1DDA703E0C449B5DB6D1F04976E01E852A9D6A9D69A404AFFBEAEFEA8CD4C8FBE3969342B17CDE09B5BBA54AED44FDB17FC0DD35B875EF0EB00BF7CD2CC4F070F36E0F591AE39E2AB07FEC743C7E5FFBABF0537562BE236F7B78E1B5E6BD0B58FFE6FF1AFFF78FE8EC8E759F6AD63DB8F899FFD7C666AD628789F6E1DDD7EA1ADE99AEBB55D43FB74202E49AB00450A5CC09EA6679A3518DB0E1B1AAE778FA338E09FCEC34F5720F672AD5AF2BFC079077FBAC6646AEAB7B6CBEF1534F2A47FD18DD118C75CA9971BF5934A0DBF7BD0C786350449E1B707CCB407DFF421FF8DA9BDD833EFD2EAE826CE19DF69A6693FDF80CB981A10BE4CF0989E85EF61DFF9AF5EE8BF743CD3B3A9ED1A44985F58F0FA0BC706610E6C7336B1C4CF71CFCDE3A3AB7BAD5AB551A9D54B8006FFA57F35F8533C4879EC9FE71E3BD51C6DE468D3F1FC938F9AB5CAE9F227FF993F59FFEE11231C6027E593CAC9091DEB001B0AFE10DBD21F1FF581D713F7E264701321EE0123C4C679BE1EC03356F315FC56FC0E8CF6D661060E176769691310DAAD31F0668ECECAFE890DBE3E7DA61D18830B073710426B677C4FFE952B80C7F5592C90678E502318F51CD311A46ED99D31B0526FBB53EC84D6C3F16F7AB6ECFDEBBE55DA4A57F33436738C0C1B988A130388F1E90CFFF797854F6B3FCD7ABA350022F1681CC53CB42EAF3FFF4BA9DA3C3DFE753AA213A315D06DF4233A40FA5B79C683694C2F0CD3A4ADD367E69CE99307222FE77208E6378048F6800653C7B03C6C493B03065EB99EFF491CD17FAD9CB44BA5D3CAF951A75EEA1CD54ACDDE51FBB4D63C6A967ACD5AA97652EE943BFF8D7E5DAE9DCD5C1D28A299DDA911C0AB5C5B38984886EE630A787AB904F92E89842978C81CA6453EC11709F8B92A67FA636DAA870266BA08F6544FBBB4BEBD3E0BDACD3A2BFBECD8B369F8B4723DDDD32A7C9F921A90F4A8D583921EB0F0FE088A56CF365286A7571EA6D9961EABBF24D59CD2AB89934474BE523F7D9E2E3E27151A7634EB490BD4CD4F07078C6B235CF47DE4740C86F04ACFF8480C8008DBF51CDD1B8CE9E32378C31D3830310FE90BCE485E7907B115972B26DAD9F7476742BF841236276FF9BB968A2EBC22F8F9D471BDCFBA3D61F401DC086BE0EC477B02F711AB096EF1F99A58005F19D6C3D7EBCB2562E6F2DFF81CEA2DF4F9559D213D0B72F6CC810294483BE437AFABD53D9F79ADB63574F467F693F6C27E3A6677B6ABB9B432305AB126FC17B0594F6F55D5DCF47AEBABA65A89D054C5355A2D9D07AD579C4B78968A5A2D1D5C9AC7D28994AB27ACAF59EC567B306DD607B2EA1EEB68CEC4B6B4437C78323C7D2FCF4ED5C41F9DA38B3BA1F66CE44857BC8D4E7AEE5059AD5C6EE47EB29D5AB57AD2C96E4D25419F157B959035255EAE78301D2214A3AA726873ECA55A6F9C9E56C0DC7CCA793ECB614778316957E0CADA80AB6FBAAB3B4FFA418B2D5B8ACA20EED621D804077334BF94DC8FA055AFD7E65F9281B36F141E470B10C9FF189ACD6A45398748697271D138AD9E0684E8435FF575DC495E905EBB7C7A520F6EDF8C34598145AF743B7E99C2E837AC6F3060C87E85F5C277328657C276C840160426437F6E6B02DBFD8B120C9CBEF762EAF821579FBE042F22CEFC7C0647017C1FFE77DACCB3C5E56418330B7E68C102173F945D310B0280B8097C94F077C24D0A6DE157EDE5BF8C600799E4F59A876F78224216D362159F57E4EE9BE572A917F26219DAEAED6F0AED48E45DC6BA02A04BC8ABDE1EB39DA90A79DB317EB32D4F33AF8C005CC45EE11AC50BB4474FE7DE158E164B9C7F126A082F14D8FDABBBAFE25F5B8A0701DA471E44F7B4D43CAD0664A9F2F08883506F8F398825DB79E0FB4DB229AC56D10C2357AFC265E5EAD5DBB7B97A4988C789C9F44743047EF3F02B6C1DE3493F9BA7E8EDE8FFF0B4024D1E0D985D84E79F0E9A014E2EC1822CF04F7082691E1BABF1DCDBCCD3BEE94C638331FCC3BA35228A05076513CDD246BA636826736CB078C362DE58678F866E0E99FDC82876340359C306B5614A4E26C10FB9E39A47A4E87EFD3B648F67B878051ECAFF3210DAD217047B407E70BF9654BA53115D123E294FA03582574C1F62270AF26CEBA8717C86EB9F9F67B3A1FEA49BF6949FA3A97FA76324DC66CF863766F0511B033AA7177E6C7F9D6914A13B56D61DC922E26594FACD36B94192852A6C224005492445ACDEBFC465B730A697D0607A7643AB4E68A3A77F38F1B2FB5EE7CBD7CB4EFB8AF5FFF1F2EAAA9F80A5A9A7A0D2C54E1DDAD6402E18B2A93FC20D56AE211E96878681D52BC2380187C886025788E2CCC0655D15F609DE9792F5C598BB1D7884FEF66F0FE1587B827388FEDB1F38C6D43B645FEEAFAF0E59FF9FF09F3F1B2ED80F3BD75C446B5273A05C087BB7A0BC189B0E948045653540A55801DC9E4E4D63C01320CED4D3CD1F0B5AD7FD009A7D6F3634EC43862B88D4229BE390DD204D24F8DC86B136D4DD6F87AC3DB41FF0E5B5860490893E34340503B0C635E4F121FB0590B59FDD437607B9FC45F39487174C24D60692D0AA450EFC07CD7D332672E36803935024C81162ED0165C5E0CA0B18480152C5679904A4D1DC1AF4E9804F403DEFBFB89E3ED93CBBF0A9939DD6434A65A727AF9FBFDEBF7EAE944A25D62737AAA35CAC2E5CFCCBEDEB0D902D1E244FF0A226448E6D6A8EA18677D6E5321D6485DCF4DF061157EAA459A40971C684BA694A4541234586B80B67EB814EA908F1EC0C3FDDC3854A95E57848BBEE90D509C126520B55FD6A6B826509F0D3C02505B8D73AB42DC267675F95062E1CCF3A5FDBAC7CC62E6648CE25AF0754657847BEEA1E123DBEB17B7B0A27F8C8D0558EF68E3130E501A643849D7B7888029533E425CCB878BED707638BA0FEB2732227CDF9A5E03A691E8B137B2F30AF9EB1ABF657D687CB6E8024DC11BB1FEB88A7A5867A8E7EAE349028007C200C771C04F7F704A8191275ED0CF6EF1372B8619DFA1C1D60CE19BE19B2E3B3403952E4A881CB950E45F5F66DFA90A936C1FE4669817D4F73E025E7816CA46B3F9F593C15FB5F3EDBE7DAE0DB01F7FF05F7F678B88642DEDCEC8A3C02354A264775D56FB2EE368B029B8232D752F85ABFDCDCFDE3E5D7CFACF797DBDEDD65EF6BA7974053AEF71AF55A2F0CA24ADC4BFDE62D4E2C12C4EAB26410D76BE58B52B815BE60FFE6846185853295D5AE4009B89229B5161C55819AEB538917B691E06EB2DA21436E7995FDF1FBBFB25B07295396EAAE0B8C466198EEEA7E70FAC2B6CDFD942EEFFF469B4CFF4E910E78596043535C53C22D5FE0AC754CAD6BF0439DEB9C6DD7B50706AA11B6F87A15EB36B8CFE245107F19384DA0CF84385FC048E4A9AD66D23FD8D1551AE5D3A69F05983BFF5E8175D910BB75EE20A104F924B6E3B9EC768C12E6E914E91D2EBBB40609122596E8048A7AF3A63A41B6A351D9A52CE78AE72509BFECC5F981414587892AE54AF9E8336B1FB3AB99A5A102E418B5202E2A673AC8205223CC6995E58230FCE0886091737EAC82D0E4DA8C3723343258AE75CFB191B36019A69AAF9004E345B0AB5DAFB72BE7098D5C49AFF7E3724B223F5934395AB71FF02BD06C27D02CD4A977141EB1F2A15EAF1C35AB8DC6DB8A02E1A6CBA08FC45042E6E7A98A7E247F68D4CB20F02856A07EC35545FF12614502569079D9C131ECDD8203F74BEE56864C87998F35C0061222EDD968E67AACCCDD5E15EEF6BAD01F9C99E6BCC011269C61F3DE96DC177179EFE7E7391FFBB329193B48959B0AEF1B521B9E547FCFB6B161E7E8773FB00B60DA800FB2786AE40964C051A2FECFB639D42DD6FFF682D65E23DB823619F85A3BB60342E489450AFDEF2FF5653BA3BDB09373C4891F72BFA085683FC3CF96E1B1DA39BB7191F5A4B17373383A4EA053AA2A931C8B53BFC9A04C65C06222D9C2AECA6291069AD28F465F241BCAA7A76572B05D6B0F86657017DBB5862696BC4E2299CF4145763FF122DEE7A0DECE69235DDA48411B1195E484BB852B2F50467D8B2C03A62CF00239E253AE34DB8DF6816C19657B45B418FA50AAFC49153BB9ECA7556F9E2ACA1D9E1AB1ABE0524E09F2D15BE4A6E7FC62D63FCF56BDDC547BEF9034A4E72AAD30BA27F54AF5B5FDAB94EDB33653CA6CA6C788EDCCCF531138E531A807948137675EF6668F618E8E32AF32385CFC1B8DDF81A3A571B840C8017D51F24CEFA4D93C155D8473499E41325379CEABB39CE47BA5C6794D6164EB9C494BF895E6E95ADE7139DF37AAF68BFCA25ABD59EA56F3DBDAABD74AD9DEB6092B839CD92F92C26A0B47D27E9F40061C05236D7D45AA8BF762E1BFECB5DCE43061EE8B2AB1641BBC57AD563B618BAB0CB22CC37662482EC3930249134916C5F3DE2C249F373C88002A0D76613AACCB78D22DEB2982664E59F7F17D7D95395A7F61E7336784F23FA4D8F89E6110A5FDAC3BCA9A08CD5328D72A8D16945824DB04BE8A5DF2D6714AAC5750E36F1DB3CF2812B89DBD68681F73AD7D437C84A79CA52602614BABF82FCB28F59B82320ACAD845CA08659E6C67EDA92FECA4A236C89D13AFFEAE828DEEA52FAC563A4DE00BEB9C3431FA28CC0452761A6C5F7290A9B7734EE55FE28A8070B82ECB14CCEC5F2065831E1FA974A8CBF2630FF1039D22F8ED96771158B9BE873AF3A92CB50FD67E2AC9C26BE45957AADCB3237C4B7D7D8A563D0F689359AE88CB8A3CDCD8CE026C24C7D93278CB3AF13A27D0BABCFF787DD9472C4C7B7C54B698070AAA3BC84048198CBF80842466A7D07B5E2717ED952B5E45C3E1D6A8D32A0E70530798819688356290D6113504474F2686A6871A66CA85F63286CCBD0DCF58682C09BEB981EECE6AA7FE85918105AB5947F4BC39032519DBA8944AD5B09180AA5349922249E38E15C842B4F4670C9EB2311F162D87B4E1213BB78FF9CC9F2EE8C8C008D98296F891073A509C28C80718E9D0AF78A72C96E4410E0B5C71415B0FE0B97D7AEBCFD047F01075948EF6FFFEAFF6D7999ED0B315D9AF7BEEE2727B71B1C9F9DE89AC02E5F710E5A3B91A51DEA20F2B1F0047C75622D3BBDE8E119CD476DB13F6762753AED71A0CD39EF06F73B5FE31C70315091DEC41628CEAEDDCFE6F743118AFC45356DEAECE4EAC2158F0AA5DF84BF66F8FD985CCDE69B80CEE4E6990646F29B42D3BA4F5D3CC7CF10BEB4A0AB248CE16E235A51AA678BF565E2A072C69D5D9770C1D239AEFF0C4B036EF7B5515B57EE5B8856E6455F1FC771B6712FDF68D6C148EC3A44E43957E541B2BA0418969A8B7C790DB32EF7B0647C7B628688B002A5E85E65B7BED9FD808DD46A30531EDDA49A3520B475FAA642A33ED0CE445BE0F9A99D349CD8B33BE6C8C816852825D863E532A17524F232BD39275043EF428BD929083CE5EF0BA77C91572C00C22535E0FDA60BD7FBE457A9C4B8DD9D0A50D25D49838757B79ABD02F21123106A5ECA4A01B9C483EB08866D57152A178676A770DC77767F4728C2169E8C68AB15A1D94834E1E30D9E64A436668821E5429D15D4DB989D16D774E4C48D27F1358563C5E8CEE116932222D9050F343A976FA27562FC5BAAED6610560DE8EFFC22596B4C2EFE78CFC65A89F3B485B8D7AA5F2B1380B08170F67516F28908994C46AD37F391357FD867321FF1217E7022D642EF4560EADC87DA9EDFD576BE627D56E37AC83DDE1CD4AE41547D86BD9B3D164FE9AE8A66094B4181EB65BE23195687D03EBAB2CA92EDDC831B59011B0B49E3421DFDBC05944169407C62881E9E4A256EDA935FBEBD83A89FDBDF52EDEBD3A8B62AD23E1DA30B85F0C1ADB8FDE33729384D18F19DC9AF5111ECA65387D71D138AD9E462705E785D3AD847995EBF3B46DB61509506E23F497CEEA591FA54811E2E02E7695CC709534C73787D5B66453F4460BAFE982F74751B6B2E8668B7C4C56440BAF69F384C7CE7DDB6DBFD9DFDB526F9CF4CAC7C5B1BE23B520A564F26875DE6D34F7DE2CFC77E79D29A82C1FD47F8BAD63ACCC7A7EDC82DA0A6A53874CAD91E49CCC5BB2C7D4B6D2354D4C470D76A8CAA06460273906C9E688B6FF57BA463695FEBAD231BD5327B1599997D0313DE7EC9053BF142ECC7DB58BF6C092D4AF34A844BE65E1E90E1B44AE733A1286E62FFFA21F4E3B203A52E2EFAA6F5F25BAC0C3219DB87AFB764E3C72DD7348A1802262DDEAEDE9D79DDD70A2D527C49BEC2F819F331D16ADFFAA58D7EA8DC5BCB1CE7EB21FD8BDA3A1713252ABE2FCAA0AD8241EBFFEF28804DECA4D974283DE978DB63AF6643AF3D0DFE04A7B403DAFE5CE4C4F9B9B0CBC0B84BA2196BE2F70DA3617784B322B98C73AC1BA74989286AC28E5A0ED22A2863695AE6778601BCC7E04D3F03948DF9B0D0DDD5564C23B661D298F6EA370291EFE9AF447ACCBCF687A836349A123EC12025180FA18ED08DC34398FF173F576D37E2B84BD68C89399428A034C788029B8C016CF3425C309124FAB35EE55AB552A7545B64BB961712A5BCA374AFC3A527150BD14BE53A37B5E3BAD863DAF57E4376EDC8D14B96ED54B212F51FDE63DFA2F5ABDBFDCF6EE2E7B5F3B3DF6E5F2F3972BFCFFBEAF2052F499C54B17E59BB738B3C805D76BE58BD27CF2DBDC45C9E3A67EC377E15FE2BE3CA1C12CF17166E71BB4FA6D78AE501AAC8039F0DC8877675F3FD921A26BF8EB4CC7B6EBDA48F6F3D479AAEA1B9D0BDBF25C3811357760189F0EDA8EA19994F7376E5B6EF8F73AB657744CE2DCD1ACA1FE9D86BFA2866A6C98C6744A0555A2DD7FAC0F8D64084A31ABEDFC323D5A1F44497C6DB3D36FA38F810B915B31FA761E2F02CFAE9023E7A83F6DF672CB6F69FD49795D72E2ADB49BE59330655C66DB11C4EBDF2C11AF359B085437CC27133B7C221BC56FE28FEF2E87C1B5FA01900ECB0A7FB08CEC3354C2C612BCB466DF64CAD89CBCD583E31059B7DE58F3986662B7FA836B78BACB80FACCB0E060C4BC0B3675ECA9EE78701230F4DB87D3F1C59E39F8FAD19CE9D6406763ED49670F3AE6B67AFA606C19033CEA85D953CF9818BFE943E6D94CF33C471BE025782E8A7BB511BDD47675F684CE699EEDB8620D0313D7F0DB89E60DC6DC6FAD8D1C1D8FC0121E0D933B2EC89BED69CE080BD3C87381151488122D19F243948EA3834B738858FA0055A5348E3B8436D39CC1187833F0804D0530360D8CF399610E99FBE2A2C7B120559087670F6CD3F589961320A76A5D503811F7007254B73C66B8126D6A03C7468D307D3FC52CCD47DBF11F397341E8107FBAC349CC651F02E670C826F60388F19071E16D1E8288873ACA2F1F4C7B04F1E8E89E869904243835AC48F70605278F51DDF223D02FBA3965AE8E7679C4629F6DE71BD8EE2103F808A41AB16964E2823573668B6BACDFBB114C577FD29D171B238D38737711471A0AAC7A1E1BE0C203388A4D1DD3863D66E34EC2944938949B5EF610149ADB0FBF8205184F499CC9AA28F66D42FF3802B562B9DA2D9D9D4F70A120FE0124F7AD634F6C70E407DB1BC39DFF48629B831EB140FE91006170994D300221DA9C7B73A10E498C9EA5BECC7DE0DC04CAEE3784868131BEA4A55F41663FA271F06A8EDEE954BA8DF9629CB98B1234D56FB811952734DDD9740A85D56DCF3CFBCBCB14DD44C87C90F538975A2223108E1E333A6841FF74502EF1A65FE24FFAA17F0BBE215B437B842E14DEC5FF9ABB891B204B34C0243E95A85C58BC5CD75C8F22389F0E16BA75C6EA88FE114B41FCCD2C80ACBA1B67A451075C6BF4EFFF4BC115D8682FE040A6617D63CE9931FC74E05C0ECBFCA0C7860B4EF442C71B9117206183AFE16E6EF58299416AB93AA931CA0670BCE10EE2C63A14A8FFE3A27EB4C9FC8B03C60BEEC2991010CB0401C3769AC7ACC5EC2F952FFA4271EE62C1467D562E7CFA94F6DC09D97B706D31F977F7D968342EB51D48E691C02692F890DB9AC9A0B2914FACC0A84230C76906B10981F0B94237228C224F0AC41E52C760113E324DD2EB07DA64AA1923AB40B142F78B553E97A118D4BB00C5607DC2DF470E43F6EC4B4647176E756E9A80A1BD707C1C6A9E56205C8170E9118EBC1F1CDD6C3674E08060B605A303FE4A61C0B267035632FC574750C6E0C71CB280BF1532B4306EE3ADEB58061768F83E9A059ED5D5FA584AB797AAFB178E92D7D964B969F8DB743520E77632A3F818978D9C290D4CB8D7BDD588E32F13D4EAB8C670A5BF54BDBD409C3D471CE2373A04187CEF43DD855EAE0F0F117E83AFFE81E2303A7969098FE0AC1FC227FCC2C8253F424CD6F510A4F17B2B0D61359AF6947BF2A7148D3510C82B306FFF4CC8ADB22C11F8E531055343E0DFFBC823833C8EF0A821AC14621B8F1C69CE907DB9BFBEFAD8E9F7E1002BB06CB4AF11846D62D92522D32387320CB80DF888E0167BD21CC39EB9EC411B7C3BD2118D4240FA8958160F73D17D0FE4562D1858C1C096F8C05A9F35B8B91C8E338EFE4846A13BD5F93C5468611404251F84A3FF7566383CC84D08E7C242B4A56C26662107A9C0B43DF44C6C9389F93952844F13145A2309C692942F7B3023CD8B235DC1B30A9EB58C679D73BFFC945239A0DF33CAD609300A6A3DF4FDEF536019FF48D8E622E192D47DCACA2445AD40AF02BD96A1178A065F90ED371B8D20E7C0A86C06C9E7F020234FE9B491C78764DF8F48189BB91E257A3AD0BF84A4D4A653E4E742A44EC42F29335812A4A4EF8BB4A302090B245C86841D5BA00EDC1ABE733E706D5032B80D864729E0480F9F21DE2D9C1E8471899C65EAE04AB902A0B15884B438EB77491657F6F297D84CAD5AA75ACBB12DE806CB77A23314D80D799F74E7631F6977C8F965773A25BE085DE7491546BB51D9F3D936872856E87F7BE93ADA088A7E5890D4B19DE9B11A8254979C1DFE9428F7A13D1B81A3FA33382BBCB4E6427F7066944D5F11032F578C0B7983221B95667CD7F39A2496385517D98229AA6C78265A96629858EA5C3CEF249988789C9FB718D3F09E5A7120939AB436D95EA0BF517143E9DBF4710C6F1A6F8BCFB53CDF8F3B879FB4725EBD1484067811B3C2E67C90F95B09EE9312C95408F368C122575C03646F9790EB43210DCCB68D0AC8C781439F435E9BF8DE2D6D38040B85778B24A1AEF959F8BCE113A1023CF9E0B8DC4581141E1F610ABC4891A8BDA778813A1BCB33206EB9CACD40920F3AD4A50F975DF74F842A3E2A20FC43970955468E3D9BBA056EBC2FDCB815653DC43428890F253A48B28285E6FB3179C9A50BE981D820BC9A28DB116541E0299E63A00C131FE02C802FBD408CF785183F4F111821B4A0322DD8EAA8DC45B93CE22A92564185B448F8B44419AFFFC57F766171A1881305EE054EBC2F9CB88708801BD11DDB481F7F553099EFABC1FCCCD5BE1A55432C14CA5D5628FBBC305829FDF49075648D0A40EF2B61B724810F6A0619A3D813CD0F44E2BE5C091E64FB1C17349D385CB907C680047F05B0527DA25461C94B563DDB363D63FAE9E01C0914B329A1FEF2A2CBB55D1D2D4AD580B5A1AC10E6B4544209BF48E07F886B1A9386B59253ADC0749C68C2FAE43DC0F4360598484D51B048422209CF2B84D4219EDF8850147E2A18E23630DE0F7F85EF5416BD69D48FF1C7CFC806A03E55530AA1D00772042047FDD118CD44B08E0DC6A82A84AA3FBFDEC295185BDBBF53B4D342EFB367B46601E2BD76E1F9EB8C9AB5F8F971BAC809E0C135788E11EF7874289ACBCB5FB87FA800FEBB629C97165135FA62F17C1185B0A3B96755E19E613F70571FCC906EFEB20DF619BC4B59EDA6D966A1311068DF8FC670A7BB22550A2D1ABD97A4D85F53B0BF2BA7E76D03F387FE0BC1C1B78AFC313A83F022CB1A020AC2E9A250A5F21715BD76F9F4A44E274DF54C45C8D16F61159A4A9296CB4F29D472E7BC79CB7075552438657320F0655F07F25A73AB4886C29B5B4F0C566BD60B421D9494225A48C20B3A49A2F34636AC9EBBB83C7CEEDFCC03F3A29B68113E5F680F9BD6D2E7DD4AB9CA4BFD4A893B05F14EF4227550C6EBCC78074AEA70389B72ABC79959DCF3398FA08B764E7C424BF7A48E76BE2B58D53EE78C9938BA3B6478EA8E3EBC45AB8673D47C7DE3A9345E443699CFB2EF889AD1F0B7D4ADE6D7F2D74F2553A025B98CE8958B5EAACD37886E7D85C3D57BB1E6D72531D02D2C829CBEF7D46097F2735F441BEAF915C9C0E955ABD54E2737E044F3D830A5ADC19B5397574EF2EC9D349BA717B9ADAAF59A3F77BAEC30CABD52E3BC96DF6BF96E772F576F2EC74BF858E3599B7AFBBA5AD84991AA277A70864118D58909056A51EEA820B853BCE201354BBA867A7BEE102B32F588A7C7246D6E33534F85738116BF81167807D7A0C5DF62DBBFC03E21328B1C94E19FA924B5536AA0D122300A2D3699A857A006C999D0184D03C36DA38614B6DD7C9E5E81177B8317DB4AD32B50626F5062CEA316BA36D264E9A99E8A4269D861A561AD24BD82AC7790AC3792A357407A07211D6D0648BADE9C232A2AA8D3207F7218D42952F40A44DF1B444F93A1D754D0BCC8D0739EF4831682537966E815A4B383A4B3A504BD02F63B08FB68FD20757EDE89C23B8BFCBC201A224581834B45D46477DDE3D9D2F3F830B9503F2ED2F3A8C87B9DF4BC948222DFF4BC85C0F09E8619230C3984A364436ECE8B47DFC5155DAD626319431C541235B70AC51C450824DC067F45C04337B79E687988FCAC6CD979295159BDBD88986F26342A46896F2A39AF73D244B219519334FDC06F9C165C949224D4DB39C8FD4B84F17E70789F33F656E5E5552ACD4E9957812E9E97C4571E32F7CB222EF3F1FAB2AFB01629534F286439B7B68BE1236867F9F8A866DA2458C91612F62E0CF3E8168366D1AF87C16982762C26A30E73B628C25393EAA5251327F6433979012BE6E83E5CA31368A52AA5EEF5F529A68AA3AB102B57C4E5AD82B8956054B84ADD7E946B4D6690383BBB42F6266468F883656CA4E37202CB2543218296323C9EE8F64E1FE834A49B770B424720179581E8B72F7A468DB52762E2418F746A2D34A5BE63E1E42CB494E169F4EC8371AC1FB3DB0E8D8CA6C69C0E32526FDBFF84EEC4DEE0F84F872C4881C18B44B3219A31183ED77F8C48D24637229316145C44E36C0DFF1BA0108D7AD750F9AA674C74349E459B234B778E199A4CA2DA91D63E01063F50BF64BE294CBAC6CD1A5AAAD1340AF448F3BFC69369483DDABA6384394F1D9F8E31F2FC90D1088B23CF3EA27F45A1AC6D1DD1EC30953A297184CB8E40DA108D16882874892C0D1709116F31E0810602FE26E362D87DDFA5B9F454D005B4091083806B6032255A58A1DB99DFE5EC41D47DE1C290CF38371CF6ABFDC011211858FF3AA25ED488A3B37601DF401172029C8E15DA19198DDFE4521424E3E0D1C77C0282352CF43347598E66884EBF4197CBC3B05BFE21C31DF88181D9ED8E8671B798CEC0E716815E6DD3B49F8945F93D8171A7219A698A9E780187E17F1540DE38903BBE5B02346CE9CF9CEAF4EFFEF4CF5B4C66C67820053E346856EA4B36DF404146021224E0E5E86BEF11471ED2B34633B071FA4B6015B1803F7EFF3788187FA807277D3EAEA380FD3661EFEB00BC6129B5AF155DBD654807B55A7EB7A2023C1B07CF9DAEA127E46B7F08284F68A68E7E20E44AA406A1BC390497A29CE3E2F21015746EA8F4B1A1A18D2C1BA37C071CB086052DCD33468152466D24A1B805E219940ADDCAA63F49D992DE2C296424C2C9FD87A2CC0205368E02A1080E4A52107BC6A02DC84E6A002933EAACC0A8764A9DEE45E89A59EE85F16F96BC30A11D65984F2614119EE3CF7B7E731BEB72185C7B0786D72FE08B445CBECCC334C617418253F4621D6B6226BBCDEC073E3A8812C627A03DFCC0F58E30E251A7D91A3AFBEBCC46771FDEE620D09CB8D40D21EC3F2D51779FC28459CF84B9F6073DB9B03DA4014F92CD22F4149A2D06668A9EAC00224D1DF3B46F68C933AFBCFAC9BE68E293951C0B3F88F93AEB35BE4688CCCF1E841D24196AC579B76C1AF8069283F082E541D70888DCF530D73FF515482A110298210DA245A309BB76588071E3222E8AABC26880BBD52308124C3D5D9BC88A89FE7D8051BA68A5CE0668896563F851305C323DBC960BBCC5B0C30F24F0A29DCE30188596C94D36B04450DCAF906D6094A14B1284C3548F7EA403AE7152ED76C3CE0C2B3DC1EAED3C2C54AED44FDBA21A7D1B61A1F7B10B295411EB325A27B2148D3797F72A4648AB2067ECC545E3B4CAB3463618F2E2A1A6B88008ADA259299D977BA1361C773C5B083E5DA1C163276EA96FB8AEB10EDFDD6B1B0B763B86A49C4EB947E7D21AA80C780EC68D6EB57AC2132E3607E368E4631F5E036315DEEAA274BAB2D545A9563939E189FE9B5B6EAB0DCF8BC9AA627854392DC0D78B002708D655DB955E33398B566F8F61D1D3BEF782B198BEB1786E0F5FEEF5EF9E48044D2C5ECBF3813CCC9376C930C5BFC1A34DFDD1235A9EDAEEA78366A9E9FF24B8D34520823CD161333DDF6E5D1212DC502830CD63B1C3681C47681A51348FE98E63C3390467EB44E363A8642F9EDF38962BC671C8C66363E55AF722ECEFA68A6629A89D72E12D687316C5FAC6FA809616B78238FE96F275D1E7149809F0A370AD52B7DC99032533684A4581097452C232DD99496A0DBE848E03A527913DA092807A724035CE4A24A553BDBDA098C8F4A6C5E0794A4C68F95A2B46A192158FB66270A0F1B8246181B0F143E30FF462FA239AB8DB14E1691F437472F860328B8F0E1C930274410F33C4C744108B9B9D013E51F8843A9B8969E540A6812054555446AA962A7214B8944741F0FAB8F40BC2DA483610554022E92018EFFCEA7A078A08D492DD0A1038DFD0A08D63153A780F2105E5C0175CFBEE0CC3E26048A1D133E79008BE3DC1D0B51D340C83A9CB3B46E3898E0E44C614398AA36A9E16B8FF3D07E155BA6883D13AAF71D702D5F653D013DB222124DCCC88FF007988812149C7C2BC671D7FD03C71CE6EA8B31CB8169813424336D26C4C72990C4CCD311E312E5AA023D08946F086D93DFC0B9E0F249EE2D25069F25927EE2F5FB028A1B83A4270A5914BC4F23724EE6E45B60639A8875066A0153AE0162E44104D94A3D40DCE32F8207ABA4AC2308C2685AC0BF8635803749324672AD04A8C264328C31818BA35406A8FC3B4A136E5D93C943DE0CFAF9B00C59278C00BDCD945DCE1E28D403BB02D489907A40F122751D4187CEB47A3E92B9ED401963414AEF842DAECA9B4B994F2039EC73AD721FCB40FA826941682AC4CAEC71E72D577003AA7FC2E300CCCA2E4F14F0C2A0BDDF62253840B968F401830908584306E5CC1D04203F821E92D40262D9055186928E35C81557B8A558A0E43AA8AC8267955958568219F05B044200D541ACDC41C3CAE290FF547E83A5CCB59C85841AAB1DF23FAF57981FC2A30663F3126DA6DD3D73DBF2978686C516C3048700F1B6E0123E8BA4D5A0AAC347014DFC1E34E3040731C283242E7919F7008C6E327C2FB4C0F6AF6115E06759BD0967F876F8432FE64601C0F32EFF55035B2AD24031A2F50D8538EF18117EE21F86FE383FE9BD497FD9437471FCD6031319A8407033F084023671DF96E1A02CE62F82E704C9DEA4E72EBC936A87C0126950D59E867B543AF366D2E19C94E67C319D7A5C2C49FA1368149C7F91E863C3DFBAE4632C81230AF94A8A4DE5E781A37627A2DE9C51FCDD6201DC96B13F231F201E96833E3E0C3CFB77DC17AE6DC39A197E8AAD365B722FC6EC3A2BBC1CFC6481A95AF5DC13CB3A787AC6B8C0C0FBADA4043BA84C6199A782AC76C609CE42D62D7DCD3C06F823015C9A0E0A9DA030A325EEF23DE4A0C144A210AF89EC736B7FFC87D004FA860C0E46CA5549CB02A042C966A46920D2D2ED20362A8744984EA2173E43E057BCDFE92D8E8553FE07F3CB60C07032AC8E2C24345A45EF80DE24525E5C7ED6FA47E19DCDBDD7AA7D15D99A1B1010C0D0A6B13E70F9C5CD4AABD98D8B914435D6BA9BB9E3FA0E66CAD8C60153A4A8B909F3B9353F0E3345E67620D77BAAB6BC8599764395938644BA1AA166A2EAFC0A25A2E64B6D3045AFA46F750EBC9AB456058E11AD57141E178E1B5BD22846A5B239B879F84B3D886118F9FC28C2FB4D9FD34C55BC2193CB161CE200B826AAEA91CFCD554E131CE02BA7B0ADD7B52D67513F121C746F010A9F470DF82B467DC62A512FCA1E6A0789FDFF65AC4CB9D78E4A0FB8D0AF745960CF95950FC33A3DA32503FCF85A0027EBA77A8A3BD00EA8669E01B126BC83AD086BFCE5C8F024505F2EC29F2DCFA31C629428B80230203100EDC37A75BBC770317291863FD20FAA5F0186380441C2F929792AA7A41A146EC4622CCE51070A7EC028274E09A0F8BFD810BE6E3CC12894F227C44BA012F5AA5E0215A767848BC83DB9F7EFE68E8263D04D8E406D8846FA82A9D624B1AE919BC34154D4588EB4C4D74FC20FEC12B450A05634F53595B5D300FD316D33EFDDA56F8E163380A0F340E8100A27E32D45721B242B4831B1FA5437E4A1F4248C946C66E3B15212EF7D800293C9F51E2F2A7835AA526ECFC25EE9E349A7F6050D0BFBC84378837903F25A5A1A6DEFEE3B8A93A7E3F25768534733FB24971813897455C26F3162A48DA2EF9D0A882DCF0288703A18870F57D6F3644956ADA55AFE5AA88F67FB30F3FCDA018564AA5135E9021EA21F0E76982EA04150B57AA05EAED31485B5427546BCD1379D26A1A1E13EBDF15210504C858A0139032401C9CDA933113E4845C33136889CBB21609B40DC365A42804D66792606BF7BC765AED84CE4229EDBE4085AD389A68B6224430A0068643CA1A824141E31205AA231D7DE1E02DE25DE128533E815938371757B0DAB98B12C8D56F38F5FB97B83014E1C065D41FD40DED5C8551A4408F9F77AF7E13C30697E81C420AA4E10A4B358F72A5D96EC4B8C9030D45026322CADDC8EAA56AC638B19EFE68C81DDBEBFEDC69DF5FDE7C6D5FB1F6FD7DFBF2EB75EFEBFD99229D2361AC9E453EF26F234717B9FA48C0571AE5D3663921CBF66F96E857D69F51CCBB527FCEAED104389D182BB2B659BCD71DCF80FDABE283F45A52DFA593E0C183E7B3EC3B034A6AF46BECD0E171AA800A8B17097C5A1A778D3F3A1FDFF991A6AF1620468139636358CB945CC1FA3C075F5798C41C524412D8DAF54F317A3C72A25ECD8B88B5256701FE0A03AC9378BFBA212EB924C4F78B296416506D9478AEDD237A557A57F040A30E380157C822DBA4B38F930E691E4BE04E6BC115478CEC41A04DC241E374C4E80871CCEE6C17257457DA6866690A3DFD0007BA0637AA94CA15E5B8F22781185EF3C7EFFFBAE071596F233565231B82BB24007C5EB552D9CAA234D0EA49BE44EE627D957139C7AD55F789BFBA3612CDE01BCB24BC367D9485F0CAC12BBD1C5BF7FB8833082FD5097227E9562A36BF7BDD0A1EE6A6C2F325E145768EAA6AAAA675765193429E05EA6F5ECA24B9D4950D478A8739FC505E1EAC48421AF5F6185792AC90976BB5D546791A252EBDB0F33942C46E224860CB0DE62424548E3E3BC6459BA3710F5FCB69D0EAEB281946C650E1AA58EB1CA341B635E74B1C6EA4A14A32AD3A9A33410628FBCA4B86E1DBFF628CC6705B8C6DDB5CCD88545A54F96F32D27DCF92DF3FDB43D6C1BC1F4F750245F2F55215AA0E9FE6BDD8CB2EE23855E9B773CA407676D88218AC2AD8973FCBCD20E489B89761FC7A1B56159D48FCA8771B17CDF3D0EDAEF08008FC506FE7F8E137F0A4954638E2B62BF7D5E5F9CC235EEEABB72FC5F6948EC4EC7220D06B12A067F697109BBE758C0944761C4D6C40ECB48A4846E6223D40EC9DA9073D143B53C227123C93EA062ABDAED40DD4DB9792B748BCDB6FAF406ADDA057AD563B915932EF570D289F9EAA5231019F4DA900675403546C55917B3D3540D57B22D500D59E575F1EA106A8B773CAF22F496AC0121F779A130D0462E4BA7D333D58E22AF54555B5F8BA5319FA59D69D00C1D613E4FDDEF5E5D7F61D6590F4BE767B5D55CAC61C9B927A2339762228DFBF940CB2D9B7B202CECA8257C179ED5D64989C18AC1FF096C835FB7904129F74B59F66183984B09B1AADCAFB4DD8C162DE47A3D4E875CF0FE42D65381CDA445F949EF678074B7633C56858E337EE2360E592DA017DDB489B614731E0CEF0A400D0E1F1AF7FD6AAAA98F7F3026ECB8DD7FCD0A377A3D822497060C7F9407050CA3237058DF7F3927CF1EA755005BBA7097AF45FC3A26CF30ECC0FDD498D74394ACB24FA04AA82301204A8C4B35B74EBE8F6CB819FA41704FB45529953A0DBB22E620B6C3638AE6874CB013424F4621365A4B7060B1114BC2870932D052D19BCB6698CAC005530AD1339F70334DFF4676C2CC5235AAC35548841D25CA5D54AFC2BD9C256BD36C65EBA30D1D9EAF6FEBEC3CECDE1E898F575F4D9FB8C9929B7B317CD63ED274CB147477DCAE2FA8E72D173F309C3A76E351773E53B6834A5EC245296CC158928FC33008944EBEAEDBEEDC0B5523A91D5793D391C56A0736C683BFE0E936D679D04A540CF147C2B2F159957936D4B4596A820CB4910B5B5874FBC5CFE17FD614ACD00FD8A585EDBFCC7EFFFA3F71D1DDBA947F71FBFFF4F06E23E66D563959B244183E508FC56107FC75A3241F627DB9E9809324A5596B2D2EBA2DECE39D0360118F0448551AE4F07AAADF27E5EB2FEC9B4D6575D5594F131ACD26E964F5E0BAF96B308FFE6644221471927291F05C2C999EDE0FA8E109C73112109E17280C352E5750735D5DC77BF236AE972EA5CF4CD8AA4BBAD87AB23759176BDD66C274F3E516F8FD1B0B3ED2F83C2413BF20D6B09B7D652565B3703CF7E40D53B5CB9AAC33309B7CB2F762CEF27C3C9106B404DD5EC3BEBF33E2BAC3D44932FD47B8B7E4F8AE5256D8C6C48499AF84C2CA3F61C439D1FC8A773D34FD04242453639215AFD86A3A17F89CE6DB5A197654731C8960D38AA46B53EB037F23C42A23B3408F8A2790AC26C88916C1382EF4787DDCA4ED647D0D6B5F60D81A4A034F6754C319F8BA674C2A1BEE5AF6AB5DA082712F5D450F70A3E917B30B970FE2E962D67E1AFE036B15C2C1F65395A20FDA76AB37ECA3A334C4DD3C85B89662787AC37C1E86C8DF5BD63383835B847354C675398E09CD494AC7C5F6AE6B3E6806E92F94B2B95EA69E9244C15951453F51B5F71AB9FB62F78D878B5C4CC613781008DA461757D320DABDF142B07C3578AA897FAEE979EF91CDF1416E39C3B424221F5F6DD0344A9572FF76A21F22B2E89404A4ADB516F8FD121DFC29409D6AA6C4096C06B58194B66A084192CA5383EB78905CDF1FC60EF648834CF2BF55A4CDEBB7C1CD934F0D6C58C5A9C62F80ACA5FDA47B7FD7B65DB914C6AD98A82954B18A6DE9E9E60B248D180E025F1140BB66C07A70AE960DB7BFB12327238F8C3A483020F823601199AE9EC351E5C218BA313359BC534A65374A849628B2C615A01AD2C67113ED7200EB755B5ACE0185CAEE688F339E8CCC49D786E4583F5FEF956E14C12BCDE20F5E39CE610A0F937AC23E71B6A1D6F2F6FD9B933C2F0B0F3396F91B4CE38E690D341D95473696A9387141D83D474733FFA16DFE54ABD3D8348CFACBB05823D5231519795CF2E32A9BE4920891D701339D851020459CBA51F6DF6B731EECEA4DEC6A7B1767D1CBAAEB59A74EA539AF3245EF1F3D7CBBFFCFBFF613D971AF593667BA16B5073299592DC6AFD9BABF6DD65FF8FFFFEBF91CF8DFCEE606EBC081228EC656B7896730D4A026C4A79A81B85D8E61F4E68D16F1F954BA5A37E59B5ED0A18FBBEBA182B348E01EC1C02712326654FF968E0D7CBF55E23F4A1489AAA2A62D24BBE3467964232A4792C4E69F3E486B5AB153A792211A7E5F46D1155D8E5A31EE4CCB6A3B171DFA6CC26103E6B290FADDBDE5D9FF7A2BEFC7A717377CD3B532728262C1020376B9AE89B724E52F02801F22C9C8AE8BD4B4D10D154F8DC70BCB1A2A225C6B62CAF4ECCC7D6DA5DB46E7E965A254FB943F8BA918A5EAE1C32149BAB693EBBC088D2EC666B78784B53BD0A4404D1B9C65095A15234220DE888BA537784D80356BE51BEC40FCD7882ED8E169BDE4C75C96EF4CDEF9B23F6E1233013742B2BF00F448B69CBBFA1F2676C4C0B814CCEE7C50CA0B47CF002F93608B1D8CA79BE63599CF27CD2D9AD995432A47AA23415C56C0A08F69DA32E306D1E2BE956AB277CF8C452599EE918B700A9B7529AEF6CCC864588C51BDBA63150D0E41D536A762C2055E58B8ECEAA6AFAF4BB23A9380FD75A27F756485EFFCFD57781D95BA348752CDF17DB317EB3D133D0A4913E0722A43EDDCA04E4C81D572ACD4EF975669982AA11F918EAEDE9BDDC02E5D749DC8ADCC59695EEF5779198C765392A6E027E69DFB53BF7BD3B76D7BBE8DDF5BE767AFDDD7384EEFE4166515732C24C7A551E485E2F97BBB53054959E54D368E0B4DEC542C3344F00CE464B34F45A43DF883E22F113DD643FA1358A227E244222CDB58D5E5EEDAADCEA2D9745FC796E622FDEBA864F0B0D9C3ECF7E83AEB86C276B9B8C123ACD1DD2B286EAD9B715FFBE4EB97652EBAE0194F8474B35717EA83A25BC513F62C1B486B7FB27CD450928EBA2034FFE56F6DE1163EB7C66987CA0F5CDE3A3814953EADC83B5084005E726306E993EF01EDEB7D314C54BA919479B24ADE91AB129151144E3DF4C305C9DFC9B450E474BB22C4FE25A983F47E47A668186A63448443337464981BE4E82F0A4576F764FC3441545AFDF04056CFB7D1BA48046A55CBB50C45556F077FFF8FDDF7A13DD19517E2104CDD47E46E784AE3EB53DF637DA64FA77183B6BB933D34313AD974376690D8E1595205A0D4C432FA9AA79B36C339A5ED20AE19FAED995FD629BBCA2141E343E7D2772424C8E8247269777A412492CD25789B2C035561FFFD932BCA52A787EE483F403D5D734A7C7FA6F0AE02878DC7AAF47EDE88A1E944078FF58BD96B3BCD9645E7C24DA3062BCBB64DF9838FA8B4BF3ABC168484F13BD26D7E1231185AC12526D53EEA6E523A5D372F3081D7B8E6AA5CA89720439F28DBCC4E7AE3D27A023521FF642BC2AD3D99E3548505161D34714A66D79B6652431E40495069B97327A77870C3232F0583BAB78DE1A159CD1E491CB91064848AF584F8EC952EADC98E784F27BEAA57AAF5C979D3319B7D2420F10DEB638F9387AB54D959F33163FD24755D2B847D3BF39993D98449AE4D7AD26C9DB2430A9C41A4068A376DBFE3E9C08C467CF7949D1E0C4A3C93B1760D2A32584CDE8B0848E533FAA9C36A1E8D455F5986C314E09F25E22692CBE8053BD9DD358A55ABE68373887089CFCC2D79FE650686D415AF8C21A7D6D2358B62483D56FF87224D5C45F8EA8C414F3CF2A27485CE151D59C0B30D652205B6DE7577B6CB1CF68FF8EA9A75682C6CAEACEE5863FEA3749CEA4DCE0C93C293B6A6601EF7AA7D4B71FBD670D4D47C4809D24DE43F5307E8C636A0F06A85EA5E62CC93C463FE219DD20A2D3818B6D860A7C4ACC3F64D7836F8665EA2F98E56C9AACF3424D4CA9385F518E2259E88F787E17B6E3B17398508FC84D41E3807B6D3433306F26D1588A1FF1C04AA7B5EA510552B9564B5231F3FFE5E666E26449FCB9C266282B322165BEB3918B992599D5F26068E662CD6B24860BAA7270B8408590BA04C8ED03F065CEC086060DEA4242610A000000FFFFEC56E16E9B30107E158B075849C84212359132B24EFB31296AF702060E704770642E65ECE97767420A5DA48D769552A97FB07DBE3B7FF719DB5FB5D86FCDEAFA8ADAD5357D44B530A58A6F978EEB4E67DE66B3765AD3D6B0711278137F76326E2091871CFF74DFB2E9B3E77941E0D8CCBC0C256F1A75C583F217E57E90F9D219BBCED112947D1B21B3318CF098E22CA01725AF1628430B00575F450606C25A44605025B5C04C227D40C8503F805045A2CD4EA2D28550A54073A099221691360622F2D4D6398412854EC4AE163F0A5DE510A78D9F0C55AEB066CAD112DFF0D216F584B667F3C5D93FF41679A53D1E8D3FCED737DD3DBE8FDA2D0C3566CDC63EBB8E76DF2F01FDC5FDAF444AFFEFE99DD1FF7224DE97F8CBC5D4DE1DEF440D22EAAD9EE74BC0DD3C5561501E196FAFDB7F7F452FA18A57BA4D1B7286241F7C825FBAC459F667813B5D7F3A09ABDE4DDE8A838EDAEABB5BB535E8251E4210E3EDAAC49274CED6B4A058B1F4D1DC9E037F4741D675EA8F6F7CAB1712ADB1D0088DAEDBEB93F40BA10089D977F8892C1F68FD27AEE91D4BC76AE98C4673D767D232EA93609D733FD2312C9D398712F2F49B64ACA8F7E43299B8EC61549A119A913BB343D229A8778FD339249DD90C640C247E7D3A5F14CB503AC3F480767854B091CEB98C722F23C2C0211645ACA32F46C53493AB02B60A2302EC4DED2C95D7306A2B0D755CDB0E851C7650E0EA37000000FFFF0300504B03041400060008000000210068EC006E72010000D803000011000000776F72642F656E646E6F7465732E786D6CAC93CB6AC3301045F785FE83D13E91124AD39AD88110B22E7D7C802ACBB1A8A511926C377FDFF133B40D21946E6434A339F78E345E6F3E7519D5D2790526218B392391340232650E09797BDDCF1E48E40337192FC1C8841CA5279BF4F666DDC4D2640682F411228C8F6BCC1621D898522F0AA9B99F839506933938CD036EDD816AEE3E2A3B13A02D0FEA5D952A1CE992B17B326020219533F1809869251C78C8435B12439E2B2187CF58E1AED1ED2B77202A2D4DE814A993257A00E30B65FD48D37FA5618BC508A92F3551EB723CD7D86BD432C71B7C0F5DF6B61B70997520A4F718DDF5C989B86097B4870B6C1153C53516BE6B8E4E345766C2B4D3F1E3FDA7C79BE3E3D15E9BB6A853237817E96996A2260E478B202F2D773C8023185259425877CCE20E47357BC6005B2D576C8BE339847632E755197E679EDAD07E7FB77D5C7510D70A4E02345D532474ABEDD661AECFD9126082325537352F3F2D2EFED9E259B10B76B18DF1974CBF000000FFFF0300504B03041400060008000000210030B79A7872010000DE03000012000000776F72642F666F6F746E6F7465732E786D6CAC92DB6AC3300C86EF077B87E0FBD66919EB169A144AE9F5D8E1013CC769CC6CCBD84EB2BEFD94E34EA594B11B8748D6F7FFB2B4DEBC6B15D5C2790926258B794C226138E4D21C52F2F2BC9FDD91C8076672A6C088941C85279BECFA6ADD2405403010848F90617C5263BA0CC126947A5E0ACDFC1CAC30982CC06916F0D71DA866EEADB2330EDAB2205FA592E14897717C4B060CA4A472261910332DB9030F45684B12280AC9C5F0192BDC25BA7DE50E78A585099D227542A10730BE94D68F34FD571AB6588E90FA5C13B556E3BDC65EA2963BD6E040B4EA6D37E072EB800BEF31BAEB931371119FD31E1EB0454C159758F8AE393AD14C9A09D3AEC78FF94FC39BE3F068AF4D5BD46723F816D997658A9A241C2D92BCB0CCB1008E6048E62989BB7B16FF7059F3470CC4ABE52ADEE2820EA19D2858A5C2EFCC431BDAEF6FB6F7AB0EE25AC54980666B8A84EEB4DD396EF649631C4C90A6EA16E7E9A7C9C53F9B3C2976CE307632BAF7D907000000FFFF0300504B03041400060008000000210096B5ADE296060000501B000015000000776F72642F7468656D652F7468656D65312E786D6CEC594F6FDB3614BF0FD87720746F6327761A07758AD8B19B2D4D1BC46E871E698996D850A240D2497D1BDAE38001C3BA618715D86D87615B8116D8A5FB34D93A6C1DD0AFB0475292C5585E9236D88AAD3E2412F9E3FBFF1E1FA9ABD7EEC70C1D1221294FDA5EFD72CD4324F1794093B0EDDD1EF62FAD79482A9C0498F184B4BD2991DEB58DF7DFBB8AD755446282607D22D771DB8B944AD79796A40FC3585EE62949606ECC458C15BC8A702910F808E8C66C69B9565B5D8A314D3C94E018C8DE1A8FA94FD05093F43672E23D06AF89927AC06762A049136785C10607758D9053D965021D62D6F6804FC08F86E4BEF210C352C144DBAB999FB7B4717509AF678B985AB0B6B4AE6F7ED9BA6C4170B06C788A705430ADF71BAD2B5B057D03606A1ED7EBF5BABD7A41CF00B0EF83A6569632CD467FADDEC9699640F6719E76B7D6AC355C7C89FECA9CCCAD4EA7D36C65B258A206641F1B73F8B5DA6A6373D9C11B90C537E7F08DCE66B7BBEAE00DC8E257E7F0FD2BADD5868B37A088D1E4600EAD1DDAEF67D40BC898B3ED4AF81AC0D76A197C86826828A24BB318F3442D8AB518DFE3A20F000D6458D104A9694AC6D88728EEE2782428D60CF03AC1A5193BE4CBB921CD0B495FD054B5BD0F530C1931A3F7EAF9F7AF9E3F45C70F9E1D3FF8E9F8E1C3E3073F5A42CEAA6D9C84E5552FBFFDECCFC71FA33F9E7EF3F2D117D57859C6FFFAC327BFFCFC793510D26726CE8B2F9FFCF6ECC98BAF3EFDFDBB4715F04D814765F890C644A29BE408EDF3181433567125272371BE15C308D3F28ACD249438C19A4B05FD9E8A1CF4CD296699771C393AC4B5E01D01E5A30A787D72CF1178108989A2159C77A2D801EE72CE3A5C545A6147F32A99793849C26AE66252C6ED637C58C5BB8B13C7BFBD490A75330F4B47F16E441C31F7184E140E494214D273FC80900AEDEE52EAD87597FA824B3E56E82E451D4C2B4D32A423279A668BB6690C7E9956E90CFE766CB37B077538ABD27A8B1CBA48C80ACC2A841F12E698F13A9E281C57911CE298950D7E03ABA84AC8C154F8655C4F2AF074481847BD804859B5E696007D4B4EDFC150B12ADDBECBA6B18B148A1E54D1BC81392F23B7F84137C2715A851DD0242A633F900710A218ED715505DFE56E86E877F0034E16BAFB0E258EBB4FAF06B769E888340B103D3311DA9750AA9D0A1CD3E4EFCA31A3508F6D0C5C5C398602F8E2EBC71591F5B616E24DD893AA3261FB44F95D843B5974BB5C04F4EDAFB95B7892EC1108F3F98DE75DC97D5772BDFF7CC95D94CF672DB4B3DA0A6557F70DB629362D72BCB0431E53C6066ACAC80D699A6409FB44D08741BDCE9C0E4971624A2378CCEABA830B05366B90E0EA23AAA241845368B0EB9E2612CA8C742851CA251CECCC70256D8D87265DD96361531F186C3D9058EDF2C00EAFE8E1FC5C509031BB4D680E9F39A3154DE0ACCC56AE644441EDD76156D7429D995BDD88664A9DC3AD50197C38AF1A0C16D684060441DB02565E85F3B9660D0713CC48A0ED6EF7DEDC2DC60B17E92219E180643ED27ACFFBA86E9C94C78AB90980D8A9F0913EE49D62B512B79626FB06DCCEE2A432BBC60276B9F7DEC44B7904CFBCA4F3F6443AB2A49C9C2C41476DAFD55C6E7AC8C769DB1BC399161EE314BC2E75CF8759081743BE1236EC4F4D6693E5336FB672C5DC24A8C33585B5FB9CC24E1D4885545B58463634CC5416022CD19CACFCCB4D30EB45296023FD35A458598360F8D7A4003BBAAE25E331F155D9D9A5116D3BFB9A95523E51440CA2E0088DD844EC6370BF0E55D027A012AE264C45D02F708FA6AD6DA6DCE29C255DF9F6CAE0EC38666984B372AB5334CF640B37795CC860DE4AE2816E95B21BE5CEAF8A49F90B52A51CC6FF3355F47E0237052B81F6800FD7B802239DAF6D8F0B1571A8426944FDBE80C6C1D40E8816B88B8569082AB84C36FF0539D4FF6DCE591A26ADE1C0A7F669880485FD484582903D284B26FA4E2156CFF62E4B9265844C4495C495A9157B440E091BEA1AB8AAF7760F4510EAA69A6465C0E04EC69FFB9E65D028D44D4E39DF9C1A52ECBD3607FEE9CEC7263328E5D661D3D0E4F62F44ACD855ED7AB33CDF7BCB8AE889599BD5C8B3029895B6825696F6AF29C239B75A5BB1E6345E6EE6C28117E73586C1A2214AE1BE07E93FB0FF51E133FB65426FA843BE0FB515C187064D0CC206A2FA926D3C902E907670048D931DB4C1A44959D366AD93B65ABE595F70A75BF03D616C2DD959FC7D4E6317CD99CBCEC9C58B34766661C7D6766CA1A9C1B327531486C6F941C638C67CD22A7F75E2A37BE0E82DB8DF9F30254D30C1372581A1F51C983C80E4B71CCDD28DBF000000FFFF0300504B03040A00000000000000210069640528958C0000958C000016000000776F72642F6D656469612F696D616765312E6A706567FFD8FFE000104A4649460001010100DC00DC0000FFDB0043000201010201010202020202020202030503030303030604040305070607070706070708090B0908080A0807070A0D0A0A0B0C0C0C0C07090E0F0D0C0E0B0C0C0CFFDB004301020202030303060303060C0807080C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CFFC000110801B801B803012200021101031101FFC4001F0000010501010101010100000000000000000102030405060708090A0BFFC400B5100002010303020403050504040000017D01020300041105122131410613516107227114328191A1082342B1C11552D1F02433627282090A161718191A25262728292A3435363738393A434445464748494A535455565758595A636465666768696A737475767778797A838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F0100030101010101010101010000000000000102030405060708090A0BFFC400B51100020102040403040705040400010277000102031104052131061241510761711322328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728292A35363738393A434445464748494A535455565758595A636465666768696A737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00FDF8A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A4DC3D680168A6B4A00CE3815566D6EDA15FDE4D0A03EB20140EC5BDC3D68DC3D6B9EBFF8A3E1BD2EECC173ADE996F328C9492E515B1EB826A07F8BDE164B679CF88747F223E59FED4981F8E6804751B87AD1B87AD7109FB467809E408BE2ED00B9E00FB747FE35B1A57C4DF0F6BD2C51D8EB3A75DC93FF00AB58AE11CBFD3079A0573A0A2ABC57AB2282A55941C120E79F4A905C03C632681D8928A679E012082314A2507BE2810EA290303D0834B40051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514530CA07518A00731C0A69948EC09AE0BE387ED39E07FD9DFC17A86BFE2EF12E93A3E9FA6A1797CEB940FC0CED0B9C927D319AFC8FFDAF7FE0E97BB3AF4FA6FC22F0FDA9B481D93EDFA9C7BBCDC701957D3BF34D225CD23F69AF3518ED22669658A145192CEDB401F5AF997F6C8FF82B3FC21FD8DF4E78F58F105B6ADADB23797A6E9EE2697701C06C70A33EB5FCFEFC7CFF0082BDFC70FDA0B55BA9F58F1CEAF6D6F74A51AD6CA536F02A9FE10ABC62BE72D5BC6F75AA5CC935C4F717334ADB99E594BB31F5C9A01B67EA67ED43FF00072278B7E26DAC96FE0AD1A4F084A18017A276794AFA6DCED1F8E6BE49F1FF00FC1507E2C7C417437BE3CD790C6588F2A511F5EB92A067F1AF94EEF5B9E7242B63F5AA2D7D740FDE241F7A7722C7B87887F69EF17789CB0BDF156B578AC41C4B72CDD3A77F7AC86F8C9AF794C8BE20D55636EAA2E582FE59AF213AD49112589E3AD4F0EB2D32128E7145985D1E872FC4BD4A090B0D42F588E72256EBF9D697877F699F18781353B6D4B48F126B3617764C5A1961BA7478CF7C735E5B16B2D2655B258546F70CECC72403DA84989B47D95F01FF00E0B7DF1CBE095F996D7C6FA9EA50B39792DF5122E23933EB9E7F5AFABBE13FFC1D3BE25B4812D3C6DE11B3D52D8A796F358C86195BD4F3DFE95F8E5AB19A35F3226DAC0F2BD8D4363ACB4B84932A7D738A7EA09B5B1FB73F0FBFE0E60874BB6D62C6FEC358B9B3998BE9376C15E7B1CE7F772807F78A38C11CF15F43FEC3FF00F05DED23E27EBB75A0F8D6248EF5374F15CDBB87496200676E0FCC47F77AE33D715FCE4FDBA4B7219246007BD6E7863C7D77A45E43341733C12C2E191D1CA9523A1A4D21A94B73FAF6F86DFB64FC3AF8AFA9DBDAE81E27D335192F13740525044BD781EFC1E2BD4E39438CE4026BF976FD9C3F6DDD7F79B9B5BC96D7C496F39BC8A4B6610ACCC18391B7D5882481D49CFA83FB9FFF0004EFFF00829B786FF6B1F05E9D69793C9A7F88A18922B98EE408FCD980E40F738271DC0CD0D1519DDD99F5E514D8DF70E7FF00D74EA92C28A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A00282703DE82783CE2BC5FF6B2FDBB7E1B7EC79E05BFD6BC61E23B0824B453E5D8C52892EAE24C708A839C9A04D9EB1AEF882D3C39A74B797F750595AC0A5E49A67088800E4927A57E6F7FC147BFE0E21F86FF00B3DF84F57D03E1B6A0FE2AF1DA868A096140D636AE0E0B339FBD8F415F97FF00F053FF00F82D4F8E7F6DCF15DDD8E917579E16F05A12B0E9F0CE77C83FBCEC31927D3B66BE10BDD777C8C72F2C8C7259B926A92B19B9B7B1E87F1EFF0068DF16FED23E3BD47C45E2ED62EF52BFD4E73712AC92B344AC7FB884E147B0AE066D463B70029E6B366B896E093F30CD42D6D230C966E7DA87A892B1764D58E490C003EF4CFED1773C3903EB548D9B20C1DD4DF2CA0043631DA848773405CCC3953934D93539A31F303C1AA6972D11073D2ACC3A84738DB22E47BD3484D956FF00530C32D8CFEB50DAEB42DA4015890C7A669FACE9A1E12F1B654F38F4AE65AE99260A4E0A9A6077515C89C2B83926A78E5DD9C9E45731A4EACC10231200EF9AD786F0614E5739E79A2E24CB17DF32F24106B1255F2E7233C5695D5D2ED209E7EB59173383783041A4CA46BC4A5ED41C648AAC256864047157ECA30D640919C8ACEBC70B2E081814A408EB3C17E23B8D1759B5BA86792192370C191F63291DC1EC7DEBEE2FD93BE34DDFC1BF1CF827C5D04C928D52E6196FAD89F9595244C48AC7A380704751B5BB1AF8134E93FD181E8457B97863C6B145FB3F680D05F226ABA76BD244B08237AC4F16EDC33C919DD9F4FC69A64B47F599F0BFC6E3E21782B4ED65233025EC424084E48FFEB5752AC081EB5F1DFF00C138FF006E7D1FE3AF843C35E1DB3816D12D3C3B6B72B24D20123E774782BEEF13FE95F5FC528600820822A5A374EEAE4D451B87A8A2900514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400504E0668A8E694018E680471DF1EFE25693F0A7E136B7AF6B77C34ED32C2D649669F76D2A029E87D7E95FCABFEDF7FB571F8F9F1CF5FD4AC6FAEAEB4C7BB7168259371099E0FB67AE3DFA9AFD21FF008393FF00E0A8F63A95AC3F077C11ABCD2DCC0CCDAEC90B058D39004791C96E0E7A57E244B28883492B64E73EB9AA5A1949DD968BCB7A4B4926C53D7347DAAD6CCE32188EE4F5AE6F53F1437CCB1E4E2B25EEE6BA7259985248763B86D7A01C0543F534C3AF44B9C041F88AE256D989E59E9DF667FE1624D5A25A3AD7D66298901D467B8AAD737C01CEE06B9D0AE090D953FA522DDBA1C1249A0491B82F55FA9C0FE540BC00E37018AC437A41CF3F375A1AFCF182C3345C1267449ACADB202D82878619ED583E26B658AEC4B090639391DEA26D47744CAC18FA54525DF9B6C236C90BD334263687DBDE98E1539C1157ACF5AF9396C5631FF52003822A3594AA1C6739A2E2B1D44BA887B50C1B39E2A87DB019C313C0ACC8EF9BC864278CE69A2FB18E4E45099491DD596B71269E177027B73CD65DC5E8B89410735856BA995400B1AB76B76A49F9B38A4D025A9D669720FB2202402D9E2B73C317B2437704436158A437186FF651B8CFB83D3BF15C226B5E4ED01CE0559B7F10B104873C534268FD73FF00825A7ED53F0D3E0F78B34A93C5DE26D422861D36DDEE5E295945BB2CD2379036F3B57729EBCEE3F4AFD2EF187FC1763E05F836C6DE2D1353BBF1349C26CB65DBB07BB3E39AFE5EF46F1A3DA210CCECAE3070E57F515D5F85BC61682EE36984CA99196425CAFBE320FE549A1A935B1FD4B7C0CFF8295D8FED15AE5A58786FC3B708D73B5DA5B9B88CAC68403BB0A4E48C8E2BEA0B7BA12460B1049F4E95FCBB7EC61FB608F825E3EB0D7744F11EA961AA5A1CB5B5EAAB5BDC01D0024773D88EDD6BF673F625FF0082C4689F1D64B2F0FF0088D34B5F13DC0CC49A55CACAB2A67059D49FDDE38CE4F7A4E2109F73EF30C0F434550D13535D4ACA39978122860320E3F2ABE3F3A9350A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A09C026801B2300BCF535F287FC15BBF6F9B0FD85FF65DD6755B7D4AD6DFC59A8C0D6FA45B9C348F21046F0BE8BD726BE93F88BE32B0F00782F52D6352BC8AC2CEC2069A49A43854C0CD7F2B9FF0569FDB7355FDAE3F693F10EA336A33DDE8D6B72F6FA72336552156E3A7AF5A691139743E67F8ABF12F52F897E37D575ED5EEE6BED4B56B87B8B89A562CCECCC49E4F6E78AE0B59D699890AC4714FD52F490ED93835872B967E49268B8AD6D09ADF323E5B9CD6AD95AC663538049ACCB51B79AD3B30CE00E80D36F41A2C1B453D02E4530D817638001AD5D374392EF180C58D753E1EF84FA86B72284B7976B74241C543925B9A2A5296C8E0CE92F26148C834F5F0A3BB0014926BE8EF00FEC8377AD9469629407EF8E057A9F86FFE09F575733216697CA07921474F6E2B9EA62E11DD9E8E1F28AD53A1F1968FF08AFB58995523203F209E0574717ECC3AD14DC60C81CFAE7E95FA13E02FD8763D1E38D144538E0E664E56BD274BFD93ECADE2459606765EEBC0FCAB82AE6B04F43DCC3F0D49AF78FCA6BBFD9CF55B68CB1B595B69C1010FE759173F06EF6162BF669893DB69AFD841FB2EE99247B5AC54E78E79AC4D43F623D12F640E2CD90FB018FAD4C7368751D4E1977F74FC8AB8F8537D0AE45BBA8271C8C573DA8F84EE2CE46528405AFD82D47F61AD08DB329B5527A80060FF00FAABC37E277FC13CA19EF8B5B27951B125B2318CD7452CCA9C9EE70E2787EAC1688FCDD934F92138231F5A84DB9CF35F5DFC42FD83B51D05A258E079E4939F9470067AD79F6BFF00B24EABA640ECD6EF91D063BD75C71307B33CBA995D68EE8F08442075A96DE5600F278AEBF5DF8517FA44851E09558762315CD5CE8F358B10EACA475C8C56D19A6724E84A3BA2BCD76CA79270288B502A40DC71515DC65949F5AA26431B9073C56899858E8A0D55B6800D6B69FABB4257E6249AE4EC24C935A36AC778C649A6163D2341F14CF16CFDE92A31EF8AFABFF605FDA3341F871F11F4D935DD2EC6E55AE6331DF31649ED707B10402A7BE41E95F12E9576D1000AB12715D8786B5E6B52A4EE520D04B47F629F007E29E91F16BE19691AD68F3C33DA5D5BA91B1C36D2000471DF35DEC33075AFE6BBFE0973FF00055CF885FB2678821D36C34EBAF18787AE9C2C9A76FCBC63BEC3D41C57EEA7ECE5FB7FF85BF680D1B4E91748F127876F6FD07EE752B178D0391F74498DA7D7AD4B46B19DF43E81CD14C81F7C418743CD3EA4A0A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A473843DA96A294FDEE39ED401F9BDFF0007267ED3B6FF0009FF00642B7F0ADAEA925BEB1E27BA0A6DE17DAED0A8CB162390BDBDEBF9B0F18EAFF69BC201E4E7DEBF60FF00E0EA4F8EFE1BD73E32F86FC2DA55C4773ADE8F016D4D908222DC3E543E84724FD47BD7E315FCE6E26790F3E94DEC65BB665EA52649193C1AA689B981C1AB57086472003535969E14067E4F6145CA51B8B656A71B9C61457A2FC31F837A8F8C2E22758992173C120806B43E037C11B9F889ADC534D132DA4672463EF57DCBF09FE0D5B68B6702881176280AB81F28AF3B178D54F447D365191CABFBF3D8F31F841FB1CC2F14535C8552473B978AFA3BE1BFECB3A6E9F1A116C7E5C7CC4601AEDBC13E0B40632D18DA3D857A6E99A688635500E17A57815B1F39753ED68E4F469D924733E19F82D61A6AAEC89411CF0A05767A6F8361B750111541F415AF616A0051D0D6A5BD96718C804D704EBC9F53BA3868C76465D9787122C955191D38AD0874BE9F202456ADA69A181C96E6B46DF4C00023247BD62E7DCD545230E0D183820A0C9A95BC3EA549DA335D02DA2A020018A3CBE3038A5CC435A9C76A1E1D0C08DA45606AFE134B94659230E0FB57A4DCD98914E41C1ACAD434BC838C9AB8CDA0493DCF25D57E1A5B5E290554A8ECC335C578A7E08E9F23155B68998F27E5C835EE1A9695B41C0200AC1D434C0C0E4700D6F0C449750785A72DD1F26FC4CFD9334DD710B8B54590027705E95F38FC56FD8B0AA48F0C4415E7EEF2DCD7E8EEB3A50F986D254FB5703E30F0725DC64088018E6BD0A1984E3A367958AC92954D523F243E277C05D43C18F23342E557A9C715E5DA85918A460410476F4AFD59F89BF05AD7C4BA7CF6F2DBC6C083B4EDE457C1BFB45FC06B8F87FAE4AE919F2598E08181D6BDCC2E3554D19F199AE492A0B9A3B1E31644A39EC2B634E9951949C0ACE92D1A0948C107356AD54F0322BD14CF9B6AC75161340CAB80C08AD2B47DADB8393EC6B9BB497CB50338C55FB7D446EC31155721A3EA3FF827BFC68B3F869F1C7488F54D174FD6F4AD42E161B8827F9646048FB8F9186F4FAD7F513FB2EF8A3C29E36F843A5DC785228A2D3224551063E7B6603946CF21857F1FDF0FB5E1A47892CAE3CE96011CAAEB2C6D878981C861F435FD157FC1027C6BA9F893C2FACADE6D9219A15984904ACD0EEE06086270C793C1C60F18E94A48AA6ECEC7E9543F701E79A7D320C79631D29F506CC28A28A04145145001451450014514500145145001451450014514500145145001451450014514500145145001451450015C2FED13F1364F83BF06BC4BE258618E69747B196E51646D899542793E95DD67935F0CFF00C1C09E29BDF0CFFC13EF5E5B4BD36897D20867556DAF3A9FE01CF4CF27D81A685276573F9BAFDB47E3CEB1FB40FC6AF10789F58BB7BCD4759BE965676C7CABB890A07600715E2D7AC01550795ADEF113937324D29271C2E6B96BBB8DF29607834DEE66B42CA796A01C826B63C17E1D9BC4DAF5BDB4285DA56C0E338F7AE7AD035C4A0292C4D7D13FB257C3A5BCD705DBA12C838E3BD65565CB16CECC1D2752AA89F467ECCDF0B63F0E69D14422076E0B330EA715F46785F42547501466B96F865E1A5D3EC23CA727935E99E1AB00645214002BE471751B9367EBD965151A4923A7F0ED888914671818E95D469F0FCDD0645646976F8038E95BFA7C7BBB722BCF6CED68D2B1809715B963684819154F45B4DCC09008AE934DD3838048C0AC9B224259D99C0E00E2AFC56648E8466AFD9582AA825455A5B70A3950052DCCA4CC86B2C64E3351B599524806B6BEC4B29C6E23E94D934A392431229A4426629B62723AD41776395391C1ADB96CF667E5155E788720AF5A1AEC691393D4B4A25B27906B9ED4B4B20360100577F7762245C00493585A9E99D70BCE69A66B168F3ED4B4E0C0E4124572DADE99B91BDC57A4EA9A6672760045731AC699C101735A46434791788F41196700035F377ED6FF000BE1F146833BA43870A49DA39CD7D7BAF692191815C62BC83E2B787D6E62910A02AC0D76E1AAB8C933931B878D5838B3F277C57A1B697AA4B13AB2BA311E9552CA30782B5ECBFB55FC3C3E1BF18CD2AA6239D8B29C62BC9A1B511804726BEBA854E78A67E4B98E19D1AAE045347E5AF039AADE798D86455E91C1041C0AA570A370C735D099E73469691AAF972A0EA0D7EFD7FC1AF1FB49E91E26F87DADF82A6555D7ED4A4C252DF3CB0818031DC035FCF9DAFC932919073F857EA57FC1B11E36D3FC37FB6D0B6BF4BB371A8D83436B2C409589CB0CEF03F848E3DB8A6C4B46AC7F4956ED8847D6A5AAD6B9F20607535657A0A8360A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28011B3D40E95F05FFC1C3BA4E9F73FF04F3D7750BB51F6AB09905AB16380CCD83C77E33F866BEF466E718EA2BF28BFE0EA8FDA367F87DFB28F87BC0B6491F9BE2DBFF3EEA43CB243090401F56C7E54D6E4CDE87F3AFE26D44DDCC5572003C9F5AC2F2DA57DA01C9AD2D65489C8E724D5644F248C01B8D52B19B5A1A9E17D2035DA640383CD7DB1FB1C78248B28E6655C01B80C57C73E0283CDD423DD9FBC2BEF3FD94A216DA523007E651D0579F8FA8D40FA2C86829D5B9F437876C45BC08A30011CD76DE19B3385C02335CB78797CCF2C10066BBED0ED8AC68071C57CA567767EA1865CB0B1B5A5DB02A07522BA2D334F0DC92541EF54745B418048071ED5D15940338E38AE49336E634747B32BB400302BA7D3A108A32393585A5B85941238ED5D2587CE8A40E4D66D19C8D1B480B0079AB2912484291906A1B6DC0704F356A38892A738154A262D8A9648992147E543DB80B92302ACC5090808624D23C791827A5321333E6B60E0918FCAA8DDD8FCA7046456A4AADBC80028AAF28C9208C11FAD348D1331258CA8C11CD666A36E37608C015BF7EAAA41C561DF9321239A96691EE73DAB5901920706B96D66C88CF1806BB6D423DF10C1C60D73DAB41B9B18C0FA55450D33CEF5EB2C024722BCA7E23596EDDC71CD7B6F886C4146C63A7A5794FC42B702290E064135D14DEA0F547C5DFB627815354D11A7541BE3E41C57C7B709E44B22360004F4AFD03FDA434B375E1A9B82CA50E78E8715F0678BF4F16BAC4C98006E3C57D465D3BC6C7E73C4B4FF00789D8C0BA7EB8E45546724E0F26A7BB81EDF2464A1E9ED5028070477AF562CF926496CA7CE5192715F6DFF00C115BE3DD9FECF5FB60F86B53BA9A6B66BBB84B53299156DFCB671B964079C1E30477FCEBE2CB087CC9947435EF9FB0B788B49F087ED23E0FBED76CCDFE9305FC7F698366F122EEE723F5E3918AAB8A47F609A15EA6A3A5413C64324C81D581CE4119AD01D05739F0DE5826F01E90F6CBB2DDED226897FBA850151F962BA31D05666C828A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0063E778EB5F82FF00F075B7C663E31F8BFE14F0741145E57862D5A799C0F98BCC41009F4C0E95FBD0DC480E324D7F3F9FF074E4FE1BB4FDA5344874B309D72EAC77EA5B325890C02EEF703A62AA244F63F1FAF6D0BDD33B0E14D51B93873C66B6F554F290E0E4E7926B06E1F73E060D241D353ACF86D1197568570492C38AFBEFF666B06B6D210B020151DABE33FD9BBC1ADAF6BB0C8D1EE1BB8F6AFBE7E1668A34BD3A1455C6140CD78F98CFEC9F69C3946D1733D57C2EC3CC41C915E93A101E521C0C015E65E1A38994646057A5787651E4A02339AF9DAAB53EEE9BF74EC34C70231B7008ADCB07CA9CF53F9D735A5CE54E33C56E594E739C8CFAD72C917D0DEB47DA41CF02BA0D1A42C304726B98B272E000739AEB3C3F6ADE58246334AD72A51B44D689588C0CE6AFDADB3151BB24D36C6CC1C6726B4A3B6C018078AD123964C85576AE0027150CC0F5E78ABFF65EBC139EB4C7B20C3233CFB50D19A665CD2827E955E6E724722B42E6C76E48C91F4AAB2425410548C8A4958D62AE646A40ED0475AC2B96C124F5AE8EFE1CA904104572F7EE526752A4006A5C4E9A6AE8A57AF84209CD626A0431C7157B54BC09900806B1EEEF02E41209C7AD524438989AF28103923A8AF1FF00880437983D09AF5CD76E41B67E9822BC83C64FE6CF267D6B6A68519743C33E31D98B8F0F4EAC01041ED9AF83FE2A68E2D35E9994606E3DABF41BE21E9C6EECAE21208DE08AF88BE3CF8626D23599D1D0865C9047715EF65B52CEC7C8F12611B873A3CA24B41246738DADCD665C58185C91922B504C6325588E6A3BAC3C79E9815EEDCFCF64B520D25419946466BD1FE11EB27C39E36D2AFE32DE659DCA4C02F0C4AB03DABCE34C38B9502BEBFF00F8247FECB965FB59FED9DE14F0DEA7288B4E59D6E6E1403BA544604A8EDF9F6AD111247F51DFB3A78857C5BF01FC21AA2C32402FB49B797CB71864CC6BC57763A0ACDF0F691168BA259D8DBA08E0B485218D40C05555007E82B487000F4ACCD920A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A280184FEF462BF0CBFE0E80FD9C26D37E22E8BE33B4D3ED9A3D6632B7374A732931E000DE83078C75AFDCE7539C8C0C57E74FF00C1C2DF0A74CF17FECEDA7EB17F3DCA3E9EEF140918C2EE6EE7D4E381F5A68992D0FE687C4CBE5B1507B9AE7A088DCDE22004EE3FD6BAFF00893A70D3F58BA8C29554959573D719AE77C2B6DF69F1040A4654BFF5A4D8E11BB48FACFF00646F0204B68E631F271CD7D71E1CD38DB5AA0C600AF23FD993C2C907866091146D200AF72448B4EB3324AEB1C68A5998F0001D4D7CEE2A6E5367E9196C152A1189A7E1D04DC28CE315DCD8EB5069AA8B24A8180C919CD7CE5AD7C7C370F243A2A0108C8FB4BB040DF4CF3CFD2B1A1F1F379E1EFB5259B272522B86551F53D4FE15CCF0AE5AB3BFEBD18E87D87A478C6DD89CB2F1EF9AE974BD6A2980DAC0E6BE41D3FF00680B4D2635F32EE0B6B7419DCCC403EC38C935766FDB9B42F0D44247BA675C7036302DFA52597C9EC279AD28EECFB57C3B7AB3DD22EE520F7CD7A2E8E233028DCB9EFCD7E7068BFF00053BB39EF1123B168114E0167C93EFC76FAD7BD7C32FDBF3C3DABE9B1C9A86AB69A7B90308CC493F8E303F1ACE7819C7A1B4333A753E167D8762D18001607E95A30488703239F7AF10F017ED2BA2F8C062D2FEDEE181E423723DEBD1B48F1741A844AD1CA1B3DAB174EC6EDDCEBB6A9E840269C2300124AE47BD73E35B55EACC0D324F102229DCCE6A2C89E466C5F3458201008ACDB978D4124818EE6B1B53F17C70838624FBF7AF32F88FFB465AF862E9EDD5CCB322EE9153276FA0C0CF26AA34EFB1AA9347A8EA1776EB90CEB93EFC5719E31BB8AD81659172DDB3C9AF90FE33FF00C147A4F0BDE4D6F6F6DB2E6119F2B765D73D0B13D3E98AF15D7FFE0A77E26D4E43BE1B5755E0718603D320D75D2C04A4AE70D7CDA9D0766CFBC75DD419A688A38DA73B8FA573BAEF8D6DAC91B748A4A8E83A8AF8934AFF008283EB5ADDD184DB6D723AA92D5B5FF0D1375AEED7977A33F5C74FAFAD6AF2F6B72239D42A7C27D43FF09E5AEA71344182BB03B4F635C0F8925CDF48B9EFF81AF0FD47E2DDF4100961999727BD68785FF68582F2F61B5D5C35BC929D8B73FF002C89F43FDDFE559BC235B1AC31D13A7F13D8FDA656C8E0E7F0AF9C7F6A4F8742F6C8DDC7182F1FDE3EBC57D43A9422688100735E77F13FC369AC68D7303A83B94E3F2A28B709A36C4C635A938F73F3975FB17B1BF923652A54D54490C8B83D45763F19B453A4F89274D8148278AE362C6E271C77AFA8A52E68A67E4B8BA5ECEACA22D8C59BD5006306BF65FF00E0D50F03E91AC7C62F17EA5736904FAAE9D6A86DA5638921524671EC6BF1EF41D345EEA3122E159DB03F1AFE963FE0DF4FD96B4DF85FFB325978C24D0934BF106BB6D1C534A2331BCD1A8CE5874273DFD2B5E872A5768FD16B51FBA07D6A4A6C03118A7549A851451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140057857FC141BE1E5E7C4BFD96FC51A7E99A645AAEA4B6CED6F03A070C707D7A57BAD50BFB64BEB6B885C65244656FA10450348FE357F6A0F87D79E04F1EDF58DEC5E5DC2CEE5BE5DA33B8E78EDCE6B80F025AEEF1040719C38FE75F717FC16DFE1BA781BF6B2F1069D1087CAFB5B4B088C0CAA1E80E3E9D2BE2FF0008DA7D9B5F84B0C61C5293D18A927747E907ECE7A6AA781AC815C174078FA575BF11E2B89F4392DAD623234C36B0CF257D2A9FECF3A583F0E34D723930A9F7E95D3F897C32DABAA8F35A265390457CE54694D9FA4E19734123E76F15FC2BBED55D8AE9B7CB74DC2EDC6D3FAFF4A87C2FFB2F78DF59C7D9668EC548C9F300FE95F41F86FC1EDA2EA09234F33AE7A6E20575B7BE36B7F0F424C304B733E3845EADF8F6AA789E540F05CECF9A97F61DF195F60DD5F41228EBB49355354FF82737896F63775D434B661CAACAB22B7D33D2BDE7C47F15A6D26D9AF75FD7F4DF0D69C3A02E03FE67927E82BCFF0056FF00828E7C15F0C5D9B4BBF117893549E338792DA361193ED923BD2862AB4BE04675B0586A6AF59A478C6B5FB0078B34D0CCEAF1795D1EDD95D7EB83CD1E0EFD9D3C53E13B964D4ED66BE842FEEDE3217073D48239AF75F09FEDDFF073E266A71E9FA5788B5EB0BD98E112F6062AFC671DF35DFDADCC3A9D8A5DD95CDA6A56720C896070D8FA8ED5353155D69346D84C0E126F9A9338BF837E0AD5FC337B6B77031B5919409D4C842C98E41E3A1FD2BEAFF86BAFDC4D6A1DD9B7AF039C035E3FE1A8C4EEA40C006BD5BC1081625EBC570D4ADCC7B74E872E87AAD86BD2BDB0CB06FE6296E7573F67625C81DBDEB1F4B12EC0B1AB124638153EA2B22C61581CE2B1B9B28A399F18F881A38DF633971CFD2BC23C53A25C4B757322480CB29E189EA71DFF001AF66F16C0CC4B600AF35F1040EF74C14648AB8D5B09D3E6D8F9CBC4FF00B1DDBF8DB5D9AF6FAF99E59E42EC1463F5EF5A9A57FC13C3C357D12BDCDD18413F75540C7D3DABDB574F68E26927952D2041B99B215BF33C015CC7883F6B1F82DF0C59EDFC4BE34B28EE54E05BDB87BA98FAF2A08FD4574C31355E903CBC4616842F2A9638CB6FF8272F84E17062B99813C656420D2DF7FC13C34E8F2F6DABDFC01470140623F335D3E97FB737ECF5E26BB169A778C2EADEE5F215AEACDA38F3EE4138AEAB43F1D69DA9A35CE85ABDBEA7667A3DACE2443F864D5BAF5A3F1DCC2142855FE1DBE4780EBFFB1AEB1A1C87ECFAACB3449CFEF0019F6C0AE4B5FF00843AAE9326645B69D146D6899482E33EFC57D889AFC7ACC255F6487A1C75AE6BC49E1486F95C085429F6CD6B1C4DC9785B6C8F21F844F38F0DBD9DC2DC44F6AFB1239B92A9D460F71FCAA6F18597FA2CAD8E466BBEB2F08AE9E0A449851CF4E9589E38D20A5A4CB8E769EDED58CA49CB43AE9C1A8599F9CFFB54DAADBF8F2F028037366BCAADC648EB8CD7B27ED610193C6F77C72A057915A4059C11839C57D2E1DFB88FCCF325FBF97A9DF7C07F87DA878F7E24E8BA5E97632EA37577751AAC11AE59FE61C7B57F5F1FB2AF81EE7C11FB3EF84F4CB9B77B49ED34D851E17C6F4210641C77AFE7BFFE0DD5FD9AE5F8CBFB66E95A91108B3F0EB7DAE725BE72A01F940EE09C57F4B4A8B1A285002A8C0F6AE86CF3A0B5B91C630806314B4515268145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500150C8BF786064D4D4D900DA4F714811F813FF0007267C3BB3B2FDA4AD67B2D385B17B5F3A79562C2C84E704B7724E78ED8F7AFCA7B4B2306B8AD8C1DC38FC6BFA0AFF0083953E186A1E21F811A16AF6CB6B1E9FA75D992E884CCD212A1473E992057E094FA703ABA000825BA7E351296E8E9852765247E93FECF7085F865A4290726D90FF00E3A2BBB934FF003003B726B8AFD9E94FFC2B6D14E080D6A9FF00A08AF55D274F59D08208CF4AF98C54AD267E9397A4E9A390D5EDFEC36AEE40181DEBC5BE2EFC5BBED0AD271610F96573BA6D85881EA07735F515CF8492F50C6E3766B99F117C0FB2D554C725B232E41391D7D2B8E3595F53D48534D6FA9F217ECDBFB2F5D7ED11E28BAD7FC6DABDDCE1432D94128CFCE7A360E400BE82BE53D5FC356DFB3CFC41F1E7877C55E184D435986316FA59BBB712436B325E433095949194785244C8CE4498F523F5A744F8412684B8B1C5BE3B2AF15178FBF655F0FF00C6792DDFC63A35BEBD2DBA048E59A11E746A3A287186C7B6715EAE17328C5D9A3C0CD320F6B69427F79F00FF00C13DFE199FDA33F699F862BA0F8662D3AEBC2F3DC6A1E24BBB58425B481AE6595180DC76C6B1B24401C1E31CF5AFD09FDAD3E0159FC10F14E9BE25F0AC70E9515CC822BCB3456F227DC492595727A02720678EF5D47C13F84B65F003C3B75A5F82ECA2F0ED8DEB66E45BC2AB24DE9B9B1B8E3B73C56AEA3F0D6C3C40EAFA8CBA95CBAB6EC999B938233D7D091F89A3158F8544D58CB2DCA27879A937B7E270DE1BD26DF56D16CF5CD3658E7B2BC628DB323CA901F9948201E0D7A4782200854119CE2B37C29F0DADBC1F6FA959E9D1CB1D8DF4A2E023B13B24C619F9EE4633F4AE8345B36B2B80A71906BC3A93D743EAE0CF54F07E9B148884200C467357FC51A4C4B6E0EC5C9CE4E39E9557C18E76C6467A0AD6F12664B723D8D4A9994AE99E37E30B1DDBD55727B5727AE780E5D37469353B92905A431991E5738000EB5E87ACD9896F1948E0D47F117C19FF0009FF00C39874AF3658A317292C9E59DACE8A492BF89C7E54E3309D47168F0EF853F0687ED19E3182F35F122F85EC9F7A69E090B758EF26386CFA1E00AFCF1FF82887C1FD0FE09FED79F12EDFC53A0CF25A5EE8892F84D630D1C62E0496A50B9523F766349D091D37FAE31FAAFA27C2FB8F073E34BD5350B650DB8004000FAF02B9AFDA23F669D23F6A2D2ECED3C6FA4C5AF2D8E4C770C9B6E5738CAAC8B8600E3A74AF6B058B8D3B5D1F3B9BE5F2C4C9B8CB43F14FC4969E1EF8A3A3F862CFC21E19FECAF17EA9AAEA22F34FB379A68228E59A11610C6652CCDB57CDE724E31B8E6BED3F8ADFB2A6ABFB3641A16B1E0DD62EED6E9A0105FE9E0E4175C9DE71EDF291D3E507A935F53FC21FF827C780FE0178A65D6FC27E117D3B5728638AF2790DC3C2A473B3793B78E3239C56CF8CFE0D4FE209C35CC8ED839E38ADB1798424AC918E51923A526E73B1E01F043E38EA1E22D3619355B410DCAB6C91D17009071C8EA2BDF741B75D7EC1648C643556F0CFC03B3D32E19842A19CE4B6319AF42F0E784A2D1902A8017D31C578D3AAAF789F4B3A692B5EE71973E1431A93B003DF8AE1BE20E8FE5584C481BB69EA2BDC75EB4558B206001E95E51F13E1CDA4C38E41ABA536E473CA768B3F2FFF006ABB5D9F116F5083F2E7FAD795695A3BDD5E2AA216048C0F5AF6BFDAC6D4AFC52BE8F073D6A3FD94FE076A1F17FE2C691A269B12BDD5EDCC70C41812A5998000E2BEB684BF768FCD71D49CF1123F683FE0D79FD8FAEFE1F7C1BF117C4AD6AD160B9D6A73A7698AC804891A1FDEB13E858281F43EB5FAC0E7803BD709FB317C19B3FD9FBE01F85FC216712449A2D8470C9B470D26DCB9FC589AEE776E24F6AE8B9E5A4145145030A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A47E548F5A5A46FBA6901F2E7FC15D7E12AFC59FD887C5F6E32D269B07DB15026E2E50E715FCD25DF83DED9A6B99232AED3E13231C03D6BFACFF008D3E163E32F861AFE981D6237F65243B98640CA915FCE67ED59F00DFC1BE36BFB4822664B1778C0038621BAFE55CB89938D99EDE5108D45284B7DD1EBFFB3EBEDF86DA22752B6EA07E55ECBA0440AA939E6BC6BE03663F871A59208644DA7DB06BD9FC28DE66C3C11C7BD7CF62D5DB67DAE0348D91D5693A21BA941551935BF6DE091328DC83351786E1F9D08E31F8576DA3441D46E00E6BCB923D5499CD5BF81510E7600455C1E1551D52BB18B4D5603E518A94E92A07207349684C9B6715FF0008CAF194E4D28F0B92F8F2C63E95DA1D3113A2A934D9E04B78CB1000A6E4FA1508BEA71BA8E8F1585A9C28DE45739690F997C4800E0D749E2CBF1FBC5071595E1EB5134E1DB803AD4729DB08591DEF83A0290C648C122B5BC411E2D81231C552F0EC8819368C838AD1F13902D091D85348C27B9E71AD4662BC271C0AD2D2306050718AA5AFA92D9EA69FE1EBE126236C12293895285D1B0FA2093E655041A6FF00C23F93C21CD6DE848248CA91903D6B5058464E700E7DAB58C9AD0E39D3B6C71ADA1395201600FBD51BCF07ADC364C60D77FF00D9D1804E0002A2974E8C718538A1AB9945491E6F3F83162524460015997BA57D90371B40AF48D5608E38480A01F5AE2FC431160DC0E69289AC537B9C66BE17CA23D6BCAFE24C25E06000C1F5AF50F124E6342002319C9AF34F19309E390E436335D3416A675E1689F9F7FB527837CFF8A0F2ED04CCFB40AFBD3FE0DF7FD92A0D63F69AB7F11CF6D1CD6BE1E47B9CBE09DE5709C1F46E7F0AF993E2978025F197C63B1B58A2DE7CCF318E338039CD7EB6FF00C1103E07BF82FC2DABF888A7971DF62D906DC06DA4F23F1CD7D150A97718A3E3B1D878C2954AAD6FA23F401C958C90298830BF5A91B85C75A657A87C9851451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400507A1A28A00AD7B6C2E60746C61C63046457E437FC14EFF6796F03FC62D567109FB35FB99A370BF2B6EE703E86BF5FE51C7A57CD9FF052FF0083C9F123F67DBDBC86D566BED2489D582E5820FBDF85635E1CD068ECC057F655E33F33F257E11235B78505B9E0DBCECA3E9D6BD6BC213B6C8F0715E79A168C346BFB98D41092B0703B03DEBB7F0E5CF931AF39C1AF9DAF1BAD4FD0F0925CEEC7ACF8564E1493915DDE8F808A40C9AF35F09EA0195413827DFA57A0F87AEFCD894775F7AF3251B33DA8C743ADB0895C609071561A1546009C9359B6172232BB9B823D6AE4928930508F94F3536054C925B6039CE3358DE23B9105B119009E95B2F728632A480DD8E6B8DF195E82C0AB8C276CD27135A71D4E53C4779998827A1A9346BB5F2D421EA2B91F16789766A2625DCEEC71807DEB5FC3170C6201B9229729D6E1EEDCF53F09485CA7391C56DF88949B3E79E2B9FF0003E59549CE4F6AE975D8F3659040E314D44E49AB48F38D7DF6039EB8AC5D3F53FB16A2A49E18E3AD6BF8AD4C2C7383815E7B2EBCCBA8BA9E02118E68713A29D36CF74F0CDDACB02904648E6B797254103AD79EF80B5F596D63DC7248E79AEEAD2F03A8008E9424615A9599396233904D41331C8E4E2A779418CF1822B3EE6E42B64E6A9231E433F5CB80A8C41045713E21B824310706BA5D6EF43A9200005717E25BAD81C82314D22A30B1C7789AF43F981881B41EF5E6DE209F74529DD9DDEF5D8F8C6E4989F040C93DF9AF3AF105C9C6D1C62BA68C7532C5B5ECDB31FE1E78521D43C69A96A2F1AB4D128863279233FE457EC7FEC25F0E2EBE18FC01D0F4FBC8A38A668FCEC21CE431DD93EFCD7E61FEC9BF0F1BC6FF0011F44D34A090EABA8A975F545E4FE82BF64FC3D691E9B616F044812281163551D000315EE6020F99C8F84CFABFEEA1497AB351FA5329CED90314DAF58F940A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28011FEE9E338AC4F1BE849E25F08EA7A7CB1AC89796EF110DD39522B6D86548C66A2917E5C3038A434F53F15FE2C7830F82BC75A8D9B020C171220FC18D50D1A6D981EF5EF5FF051EF8683C07F1A2EA48E3DB06A27ED298FF6BAFEB5F3DD9C861914E700D7878B824DA3EEB29AAE518B7D4EF741D58DB856049239C7AD7A1785B5D32C68E0ED07B5791E95784B2618006BB2D0F57302280C3005791389F5B4657563D6B4DBD1320E7AD6A5B4A638B07815C1699E260AB1956191D6BA1B7F110953A815CECE851352FAED618999980C5703E2FD50C91CAC8D90A09ADED66596FE1211C281DBAD735E27B23068D32A8CB321E9DE846B08F53CDF4D57D5F5A799812371FE75DCF866068AE0AB2E33D2BCDBC33E37B2F0F348D7922A32B107776C1EF5D4E87F18F43D4EF9520BE81E64C12818640FA55289B4E76563DE7C1DA70B744727231CD749716E97FA5B361994F2A08C62BCFBC29F14AD9ED5155C6E03BE3F0ADB4F8A08AAC5D95C9E6AE313826DB7739FF1A698DB1CB0C1C7A5798EB1E1464BD69031C38CF1DABB1F89BF1A74BD2ADE5B8BEBA82D2DE3196676000F7AF35B7FDA43C3DE2490C3617267273863132AB7B82460FE152E07551AB6DCEC7E1DDF496B34B6E496F28E47AE2BD4745BD69230DBB9C57907C2AD486B7AB5D4D1825318CF6EB5EADA6C22000038CD41A54699BE97ABB3E63935435425486190A688DC6096241154352D5FCE1B14F028B9C8D58CAD5A71B180CE4D719E289B9704F18AEA355BC554604658D717E22B92EF267926B48A21B3CFFC6D75FC2A4F5E6B82D4D0CD2BE4F07A0AED3C6033337249AE596CFED5788AA32598575D08EA79D8DABEE58FACBFE0997F0E5756F8CBA75EB2298F48B26989C74663815FA416436003D6BE3FFF008258F86162F0D6B1A93A0123BA40AD8E70067F9D7D876C806073C57D0E12368267E7399D472ACD7627A28A2BAD33CA0A28A298051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400534A9738E0D3A8DC54E71902A5AD40F927FE0A89F01B56F1DF83ECB5ED26CA4BD6D29596E5621B9D23EBBB1DC0AFCED085588618743C8F4AFDC89614BB8191D43A480AB29E4107A8AFCA0FDBB3E058F815FB406A5696B1B47A66AA4DF59F1850AE72CA3FDD6C8AE3C5D0BC5C91EEE518F94671A72DBA1E4D6570C9B4AB600F5ADFD2B5A002891B02B97B77C1C11CD4E095391819AF9DA913F47A0EF668F44D335B548CA96CE0E456E699E226703E60147E15E69A45DB3A80588C1EB5BE3506B628A09E4572C8F4E11D0F49B3D444E8003926AB78964125B940739AE5B4DF131B62A5B95AB5AAF8896FED014C823823BD4A44CA4A270BE31F873617D73239800790E491C027FAD71D7FF000AAD2E24557823251B28DF7594FA8239AF5560D7B85650C3EB487C3CD3306DA0A8ED5AC598CF109F4387D2EC75AF0A6D3637C6EE10388EE09DC3E8DDFF001AB9378C3C5572BE58B78A3F338DE5F216BD2748F86D35F804050A3D6B522F8525305B6F1D3D2AAE8E6754F12BCF853278AE65B9D519750990E556407621F61D335B3A3FC148E77432468918E98E315EA777E0B3A5459E09ACEBE926D3D32A3EEF51D6A5B2A18868D2F86BE1383C3B67E4C2A1114E78EA7DEBB413A42473902BCEF4BF1BAA9DB206561C67A66B76D3C490DC213BF23F4ACDA66FEDB98DFBDD588040279ACBBABF08A589E4FB567DCEB4B9C29C83546FB551B00CF4E94D21B44FA9DE2C2A599B39E95C5789B53123314201EB56F55BD92646667381EF5CC6A57A240CA338F5AA8EE438183E2172ECC4924E6A7F859E05BDF1F78CACB4CD3EDDAE2F6F66586241D4B138FD2A9EAEFB98AE49E715F61FFC1263E07B6ABE2CBFF185DC19B6D257C8B6661C34CE3923E8BFCEBD6C152E7958F98CF715EC69DD6E7D71FB347C03B6F80BF0D6CB480E2E6F4A892EA60301A420640F61D2BD07CB092900600A7CD27971E0E413C0A8E3CE79AFA0514972A3F3D9CE526E52D5B1F451455198514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140050C09040E09A28A00489B636D241CD7CD5FF000540F817FF000B33E08AEBF67009354F0B399F2A32CF6E78907E1C37E06BE9361B181CF539A6EA9A6C1AEE9571677312CD6F7713452A30C86561820D4B57562A12716A48FC41E4382323356A260C806466BB5FDA6FE104FF00037E32EB9E1F95192182732DA9ECF0B1CA11F81C7E15C0C7202BC1C915F398DA3C923F4AC8F1AAAD2577A9A9A5B6C90E4800F435A9A8DF91246C3A85C561595C6DF506AEB5C972AC707B1AF35AD4FA68CB427875460DF74B13C56EE8329B9919240157AE6B9CBC596DE0F36101F2338AE7F54F89FA8E848EF269B74C1013F20C934D230A8CF65B758615520807F4A99B59B6B307CD9625039E4F35F29EB9FB5B5F19A4B392C2FA0407A327CD8FAD3B44F8E4978434D0DE01C73B19B34380E953523EC5F0D7C41D1F7088DF468FFED640AEAA4D674F8225796F62446190739CD7C896BF13F4A548D966405B1F781045749A67C4DB2BBB6402F216C0C60C99C52E53A25854CFA2352F1468B346516FA2661EBD2B9DD4A5B29982A4F0C9BF800302735E4E3C61A6DCC6375D4473E86B90F177C48D23C3AED345AAC66E63236C6920DDFF00D6A6A0CCA54228F62D7743C3B32FE18AE627D52E34C70A371566C77AF3DD1BF6C4B0B6952DF519242A06D12221739F7C574F69F16746F12150AD2E1F1C98C8073F5A6A071C9F2B3AFD3B5A9A520156DA78EB5AD7727FA3820E31591A346AD08653952320D4F797BB15B0781D2A1A3A6357A14B5498EC201E6B12F4E0673C8ABF71722539247BD64EAB71B5180C5694E24D6ADCB12B68DA1DCF8AFC4D69A7DA44D35D5ECEB0448BD5998E00AFD7DFD9B7E0EC1F02BE0FE91E1D8B6B4D6D1092EA403FD64CDCB9FCF81EC057C4DFF04AEFD9FCF8DFE255CF8CF50B5DFA6787BE4B4671F2C972C3A8F5D839FC457E894B279519627040AFA5C051E58733EA7E659EE33DAD7E45B2209DF7CB8E709C53A139CFB542992C4F7353C7DEBB63DCF118EA28A2A890A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800232083D0D1080B95EB8E4514983BC11480F8DBFE0ADFF030EADE0FD3BC77651E66D288B3BEDA393131F91CFB29E3FE042BF3DE3BE046770C57E9B7FC155FF680D27E0F7ECD3AA58DFBC0D2EBA05A2C6E4670DDC7BD7E4F69FADFC88C1CF97300CA4F3D6BCECC21A26FA9F479055929351E87670DE10460838AD6B49C4E814707B57196FAB7424F4ABD61E24315CA00D8C9AF9F9D3B1F7F87C4A923D0F4F8D64B7DADDC557D662296CEACA0823BD3740BF1708AC0E41EB5A97DA70BF80819C91D6B2D8E9BA678E78B3C276B7770D29B7469149246064D49E0DD1AC0DE2C4E8B1A9F6E86BADF10F85E75B96688654F047AD7353D849A6DC6F64689C1CE7B1AB4CE9A15B95D8F4BD27E10691E208C16811588E4E00CFBD5893F673D2CB6405C839CE01AC5F07FC563696F1C13C601418F313BD7447E264272448FC50772ACDEC676A7F06ED34EB76DB22918C63CB5E6BCD75BF86FA45B5DB28B38B2BD4E066BD0BC43F115AE602B1CA49E95C88692EA42CDB9CB9FAD0999CAAC52D4A3E12F879A547A847726DD4189832F1DC57A5D95B5BB46088A3518C0C2D731A4695360108556BAAD26D5D23018138A1C8F2EA3527746845B6D2DB0063774ACAD46F829DA4E7157757B8FB3C209380A2B95BFD4CC8C486EB531573073E52C5E6A18520119ACEB1B6B9F136B76DA759C6D3DCDDCAB1468BCB3313803F3ACED43540B9CB938AA1E15FDA324FD9F7C71A6F89ADADEDEF2F34DB912431CC328E41EE2BD1C1E1F9E691E0E6B8E70A6DAE87ECFFECC5F0720F813F05744F0EC414CF6D0896E9C0C7993B805DBF3E3E82BB6D41F76D407DCD7917EC67FB69F863F6C4F87D0EA7A4CA969AB4283EDDA6BB832DBB7723D549E86BD8FECEA642C4649F5AFA4E5B2E53F3D726E4E52DCAF10181FE153270BEB9A9768F414607A0A1225B23A29E501ED8A69523E94C42514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400556D63558344D366BBB9916286DD4BBB31C0000CD4F24AB0C6CEECAAAA3249380057E7DFF00C148BF6FD696D752F09786A57482DD9A2B9B846199987042FB538C5B761A3E13FF0082E3FEDAC7E307C509EDAC1E49748D32516F080C70581E5B1F5AF3CF855E295F17FC3FB39D1C33C2A11B9C90457CF5FB6CF8887D984F34A5A69EED739E0124FAD6FF00EC8DF138D878B27F0FDC38F22FE3124249C61C0E9F88A9C7E19CF0B2947ECEA7A79262A34B1B184B6969FE47D2163AA9C6189DC383CD69DA5C838208245735A8A35A4BBD7B7A54F63AAEE00EE26BE553E647DE4A2E948F50F06EB2DB9518F03DEBD134C945C4408E86BC4BC3BAC88E6420E327D7AD7A9F8535C59A245DC303DEB9AA44F42856E65A9D51F0FC77F19C8049F6AA77DF0F2DEE6260E8083C1F96BA1D11D678D5811803A56AC289292AE0106B152B1D716795CBF01F4894960258D9B93B642BFCA961F809A7A11FE9FA8228EC266FCBAD7A1EB362611BA32307A7AD64DF79A9016570A57AD5A91BC67630A0F835A45B0258CF704F4DD21CD585F005B5AEDF2D4051C018CE292D7C432BDE2C79C01DEB760BA69554B1F969393226EE675AF86A38CE00E3E9561AD63B253F2839F5ABB2DC2AAE411C5616B7AD2C713E48183C7350DB663268C6F145EAB065CF4FCAB89D4F5458C360F4ABBE2BF1081D5B39F7AE0F5BF10AC7B8EE03F1EB5D54A0CF3315885156459D5357699FCB4243376AF04F8E5F1192F3C749A242FF003598CB9078CD7AD49AAC7A469179A9DD38486D62695998E028009AF927E16F8C22F8A7E37D5BC4138DF06A172DE4B1EC81B008AF732CA7CD52FD11F2B9DCF92924F791F4D7ECABFB517893F66FF88BA7F88B42BE9ADAE2D240278C1CA5C479F9918770457EF0FEC83FB54E8BFB597C23B2F11E98D1C172C365DDA79819EDE41D78F43D457F3A06D9F4CBB768DD9E2C6064735EB5FB2FFED95E33FD97BC4126A1E13D54DA4B2A6C9639143C528CF753DEBDE9C2E7CB3573FA2ACF4A2BF3BFF638FF008380FC01F157C5363E0BF88D18F0778AE70163BC76034EBD3FDE0C7EE127B1CF5EB5FA11A5EAB6DADD8C575677105D5B4EA1E396270E8E08C8208E08AE769ADC82C514514806B291C8E4536A4A4299E9C1A006514723A8A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A6C92AC4A59D82A8EA49C0A00753279D2DE26791D2345192CC7007BD783FED3DFF000509F027ECE1A75C4536A11EA7AD2AFEEED2DCEFE7B6E23815F9E7FB427FC14D3E21FC758AE6D62BA8B44D2CF021B66D9919EE7A938AB8C1B1A47D5BFB79FF00C1452DBC2B15CF85BC2770B25C3078AEEE460AE3A10A7B7D6BF34BE28F89EE754859DE721EE252D239C12D9F427AD58861BAD72669E6732BBB72ED215073C9E4F5AC7F1D08EDACED10B24D3824B0FE1403F5ADE31B688AB1F127EDFDA8C90CDA5C0165C2DF444B1FBA7FFAF581A378B2E3C37AED9EA968D8B9B291644CF4E3B56C7FC142F5A6BBB5B57915517FB463F2F6A6DC81D0D70B6B79BAD94B63902BD1C1C54A328BD99C18A9B8CA2E2ECD1FA25E05F13DA7C4CF03D96B168C1A3B98C1603AC6FDC1FC6A9EA11CBA45C6F5CEC2791D857CEBFB137C7B87C09E247D03559D5348D51818D98F10CBD01F606BEB5F11F8755E20E803C522E5587208AF83CC7072C2621C3A3DBD0FD572AC74330C2C6A5FDE5A3F5FF8260695AE8E0AB01F8D773E0FF1905653B88C7BD794EA763368F3968C318CF6F4A934FF0014B5B386DFB5B35CAD291BA52A723EACF06F8D9248906F009F7AEA17C57008C03200C47AD7CABE1FF89C6CE556F388C57596FF0019A39CA8DDB4E3A935CEE96A774312BA9EE77FE2E8628C92E326B9FBEF160BC909C1541D79EB5E5B3FC461265848A73CF5CD557F89251C02A4EE3CE2854CD1E211EA4BAFC16EFBC2A86AB31F8C5410A48C81EB5E596FE3B595724E01E99A963F1C448C5CB0181CD1ECCCE5883D426F17A889863048F5AE33C5BE315883618927A735C5EBDF13C12CA920535C56BBF101AE198890B13571A47354C436AC8DEF1378C402CCCC401EF587A579BAEDD095C11103F2823AD6469D673F88AE4493EE1083C0E99AA1FB41FC6BB2FD9EBC02F2A324BAF5FA14D36D88C807BC8DE8A3F53C57551A52A9354A9ABB670D59C2941D7AEED15A9E57FF00051CFDA262F02780A5F07E9572A752D4E322F361C98633C053FED1F4F4AE27F664F0D1D07C05A7C524328730A9C9E3935F35FC47D6F51F1DFC45D31269CDD6A1ABEA0865925392E4B64935F6AF81343B8B411885E2B858D416F9B207AF15F630C1C70B08D28BBBEBEA7C0E23309E32B4ABCB45B25D91D3C314909DEE52585C00547DE1556EB4890E66B6757EA76F738FA56F58E94750B1965B500227122B70F91E9EA2AADC59AC20B4124C1970C063183458CAE7947C57F0843E36B349A3DF06A3627304A786539C903D6BE81FD817FE0B4DF14FF63710E83A8DE9D6FC3F6F2287B3BDC3020704239E578F4AF3CD7EC6DB527325D24B1BB8F9668972B9F7AF32F1C78216D6E6296EF0F68CE595E03BF9F7EE2892B92CFE8FBF62EFF82A3FC32FDB374280E97A9A68FAD6C5F374FBF912372E47210E7E719F4AFA4D24591432B0653D083906BF935F09CD7FE08D48DCE937B73665F0D13C721565EE3E95F797EC71FF000597F8A9F03B46B7D2AFAF6DBC4FA45BEDC437C0BCA83BED7EBFAD632A5D84CFDD9CD15F297C01FF0082B9FC33F8B5A6592EAF7171E1CD52E4AC6D1CF11306F3D838FEB5F51691AFD8F882C92E6C6EEDEF2090655E1903A9FC4566D35B88B7D7A8A694F4A70CF718A29011D152100F514D287B500368A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A370C75ACBF1678D749F02E94F7DAC6A369A75A47F7A49E408BFAD006A557D4B55B6D1ACA4B9BBB886DADE152CF248C15540EE49AF913F68FF00F82B7785BE1DCD3E9FE118D35FBC85584B39C88A06C71F2F56FD2BE07F8EBFB71F8FBE3FDFDC4D7BAADCC568D90B696F2B2C38CF750702B48D36C0FD26FDA0FF00E0A7BE00F83F61730695743C45AC4608486DB9883638DCFE9F4AF857F683FF00829778EFE349547BE6D02C2252CD6F604AAB0F727935F2D1D5A5B8B832B4CD2386DABFC5CF7E7B9FAD45AF6A97D311A7DBC3234D36D629921B19E38FA735AC69A43458D475A97C5FAF4D73AC4D742252193E7DD26E3EA7E957AD2F61B778CDBDA22AC44EC32FEF18F1E878AA51E957314656288C4F1E060A8FC73E86A71A6A4A24796F50B21C955E8BD80FAD58D31F71ABCF34A630EA543F20F45F5C7A5636B2B0DC5BCF2C6D3DC5C44A773E3E5538E01F4FC2B624BCB0B252B1C535DCA48038383EDD2ABF88752BB9744963860B7B48F20382DCA83D3DF9F4A068F873FE0A25A75CAF82FED4F1C8161B8460C4923815E71A05F9BBD2E07073B901CFE15EE1FB74DADCEA7E04D6172B3470DB3164C9C6EC1E99AF9C3E19EAFF00DA3E0FD3E52DCB4601C7B715DB817EF3470E316CCEBE0B83110558AB29C8238C57DA3FB117ED329E3CD262F086BD321D46DD36D94AC799D40FBA4FA8AF8983E0AE39F5AD0F0EF88AEBC2FAD5B6A16333C1736B20911D4E0822AF32CBE18BA4E12DFA3F336CA335A981AEAA4767BAEE8FD2CF17785CC4CC4212A7F2AE1351F0E32C84AAE00AD0FD997F698D37F683F0C8B1BC68EDBC416A8165849C79C31F7D7D6BABD73C386DAE08DA08AFCDEB52A9426E9545668FD728D7A589A4AB52774CF33974DB8B76240638E69AB7725B302CAC0FD2BD08787D49E501CD5DB0F03C37E42B22027D7A54F3A0F63AE870169E225DB891C823F0ABA3C4F08C65D463DEBD053E03C1A8FCC204607D052FFC33440D926D873F5A5ED115EC59E79278D2345C2B038AA579E3479411196627D075AF548FF671B5B6E4C0AA47E34F1F08ECF4E1C44A0AFB51ED109D1678E88EF75560482AA7DB9AD2D3BC20DB94CB963D715E972F8360808010715E5DFB487C77D27F67ED0C12B15EEB77287EC965BB1BB9C6F7C7451FAD6B4613AD354E9ABB6615E54A853756ABB2456F8CDF19749FD9FF00C246EEE7CBB8D5EE508B0B1C9DD337037363A20EE7F015F0BFC45F889AA7C4AF145DEAFABDD35C5E5D3EE393F2463B2A0ECA3A014EF1EF8E754F1FF88AE754D5EE64B9BDBA62CC493B50678451D947615CBDFDC08E2763905457E81956550C242EF59BDDFE88FCBF3ACEA78E9F2AD20B65FABFEB429FC39B48BC51F1FF004E88ACAE74C89A6017A1627033ED5F687C385682C402B242E9CB0272A3FF00AF5F26FEC53226A1F10FC49A832A48ED3A5BA338C85507271EF5F63E977127D8C830C7243BD591D700E39EE3AD63889F3546D19508DA091D9E973B4F651A4911899100827C615C7FB47BD36F6190E9EF25D440420F3711F279FF003DEA2D0A64B5491A1936C730F9A1B86CC67F1E80D136FD29EE256792CDDC060AC0CB138FA76ACCDD1561D14DCDA951224CA838DBC1C7D3BD719E2AF0CADF412908536A9DD8E36D7684497B3C622B48E691B8FF00429807049FEE1F5AA97D0AD8DD96924BFB6948E12EACC907DBD29584CF20D3A4FB6E94EA1F12E9D2F972A8FBD827826BABF084F269373149F2476B20CBB3FF00749C30C0FCEA878B750B7D3FC4FF0068B59F4C92DAF0FD9EF3C98F6300780E47A83530D0058C92C4F21F321C90A06439F4F6C8E686811EC9E0CD7DEDA330333178BE58D8B6369EA0E3BF5AF5AF815FB5DF8E7E0EF89A1934CF115E5BC7136EF2DA62623EC54F183D2BC03C317732D9466348CB45F296600339EA0FE3D3F0AEB6E208229209A3BA8A4987CC10300581FC73C1F6A1A03F527F675FF82D069DAFEA5169FE3CD363D314E55EFAD4128847F797B7E06BED4F875F157C3DF167444D4BC3DAADA6A966FF00C70B86DA7D08EA0D7E04496E6F618E5447DD37122F4DAE07F323D6BA8F837F1F3C55F04FC556D3E85AB5F593472ABEC13308E419EE01C1FA5672A5D8563F7C28AF853F674FF82C0DA6B1796DA578E74F5B26202FF68419DADFED32FA9F6AFB1BE1FF00C61F0CFC53B359F41D62CB515650E563906F507A657A8ACA516B711D2919EA29A53D29D45480C2A4763495251B475C0A00660FA1A4A928201EA28023A29CCB8E474A2801B451450014556D4B58B4D1A032DE5CC16B12F5695C201F9D79F78DBF6BEF86FE00B479B51F17E8A8501F912E16473EC00A6901E954138E6BE49F187FC161BE1BE84A7EC11DE6A443152C08441EFEB5E21F15BFE0B63ABEA578D0F84F48B2B2B6507FD22E18C85BDC0E3A552836348FD24660A0924002B8DF1F7ED0DE0BF8630C8DADF88B4BB268864C6D302FFF007C8E6BF247C75FF052EF8A7E390D1FFC24B7514731E04188860F5C6074FAD78CF89BC77AC788A49F52D5B52BDD4612DB449331067949C88C1FEE8F5F4AB54BB8247E8E7ED07FF059CD13C38B73A7F82B4E3A95F748A79CE1187F780F4CFAD7C39F18BF6A5F1AFED01A80B8D7B5CBBBA8A573E5C2AE7CB8B393B428E3039EB5E476C924AFF68BD7912E1CE727A2A83EFD87402AE3996D61421CDACF203B4B74543C8623D4F356A090D225D4E71F2244DBA3452F2B0EB2B7B9EFF8551B9865BAB57588F96665C164E481DC03DB14A23686C99012C4B72FDC9FF01D6AB1B79BCC4532B0375C83F74AA0EB8C7504D55C44964B068D6F2CB396FB3DBA71E67258FA71DCD53D0A17BCB86BD9E6BB81DC9D922100B63D33CE7B7D2ABF8AAFBFB4EF20D2A36D86170D331E724F4438F4F5F7ADFB38E20F0A7DA843E42FDD7DE78C6074EFDE9A044964AEC5162B4BD9C39EA493CF7E718A9A29669184535ADADA1762433261D957B9E78AA2F6EC6DF77DBEE276519280853CFD7A5490DBDA0B8189EE24744552CC7EF13DB8A0A2E0B34692359AF18EC01C844C21E707A552F11A45359C7E56410E642CBC0718E01F5145FEA27CF01224895498813CEF00705B278E4D57D53C4496DA730636F13A47867E7E539CE4638E6804CF0AFDA2FC269AEF82AFA3059A4BD32075073B1550F3B4F502BE17F8357863F0C3DA9009B2B99233DBF8B35FA39A8C3278974BB90ED21B99D5F3B9417890E71F418EB8AFCEA86CBFE10CF8B9E27D15D513CBB9F3D14138C103247E75BE1256A88E4C526E99DC5BB0938C83EA7A54A50A1C02066AAC0E7CA56CAE5BD2AC2B6F1824E07A57B27988D3F0BF8A750F07EB56FA8E9B732DA5E5AB078DD1B0C08AFBBFF65EFDAC34EF8EFA647A5EACF159F8920400A9E16EB1D597DFDABF3F91C74C9C568E87AA5D687A8C379657125A5DDB3078A54386423BD79799E574F170B3D24B67FD743D9C9F3AAB80A978EB17BAFEBA9FAA4FA2146C76A74109B2E7915E23FB1DFED996DF15EDE0F0EF892686D7C450A858A672152FBDC7A37B57D1B2E90255C60735F9CE2B0D570F51D2AAACD1FAD60B1947154956A2EE9FE1E4CD3F026BEBE72A36D04FAD7A1C4B1CB1821146467815E366CE5D3EE37C671835D4E93E33B816AA85B05075EB5C8D1D891BFE23D461B52E84006B8DBEBA33CCC001834FD57527BE779A57091A02CCCC70147A9AF917F6B1FDBFE3D1D6EBC37E029D27BA2365C6B0BF32447A158BD5BFDAE83B67AD7660B035B133F67495FCFA2F53CFCC731A183A5ED6B3B765D5FA1DC7ED51FB6168BF03ADE5D36C5A2D53C4ECBF2DB29CA5AE470D211D3FDDEA7DABE07F18F8CB52F1EF88EE356D5AEA4BDBEBB6DCEEC4F1E800EC076154EFA6B8D42F67B9B89A4B8B9B872F2CB23167762724927A9A85A1644DC719AFD1B2CCAA960E1EEEB27BBFEBA1F9466F9DD6C7CFDED22B65FE7DD952F188439240AE5FC79AB7F64F872EEE370531C44AFB9E82BA5BE942A3103A7AD79F78CA1B8F19F8A346F0DDA2F993EB17488CB9E4AEEFE5D7F2AEFAB3E48391E4538394923E93FD83FE1E5A5A7C35B39258FCE9EFD3ED93B100AA96E81B1CE2BDBAC2C25D02FEE62BBB98C430BED4206D524F3900741E951FC03F8790F8174086086C9A28E2B611EC2B88E5207553DBF957A0EA3E17B555B79CC91C32B8FDFAB43B940E30A73DCF4CF615E01EE47456134CB72DA746C9F3398F7123078EBFE353E957DE7C656370D0B0E43AEE527D39E9535DDA46F0BB5AC0EF0A81B45B38C804E3BF6FF0A874EB17B7B603CFB7976F1B25431C8873D32383F5AAE83B91DD68B0DE4E24163E4B7A5BBECFA9E7F954177A1CD0AE527D502A0F309F3372C607F4FA74ADC9F41B8673888B97013FD1E4560723AF27A9A6DD69930B681443747C9521F6C6DC64E003EA31FCA861738FBEF0DC7ACD9DE477535D18426C5DF66A558B0FBC0819E3D4D62787F4A0D120B9945EDD6992085FCC191211FEAE4DBD7E61EA7B57A29B099AD5A3696E998A954430380A3D3815C5EA3A4DCF873C516F74D1BDCE9F7510B5BA9550A8B65CFC8ED9E9B58E33E869DC1A1DA1C461D48DA8122AB007716FBB93C7E00F18F4AECB46F9A501CA214FBCBB70C3E83AFE35423D0C6D8E5993CB9633B5B68C1DA4F4FA83CFE35BB67A71B3BA8A6964223B95DCDB802772F503DCF5A11299D0786A233C82C96465374708793F38E47E74CD72D5A1482E22884641C3E5828CE4F033D4FB5476974F67790CD18685ADC8239C9F635D26B366BA8979502B457F179A8C91EE02423900FF0009CFF3A18EE51D3A5379A62BBC6C4DB80EAE5F9607AAFD01AEFF00E14FC46F11F816FE3BBD1F50BED2E442BE5CB6F70504BCE7691D876C1F5AF33F0EB5C69772A92E76B8DB87C6410305B1DC8E4F3E95D86896CF7124CF0DC4AE42AB939C0755E49C7AB0FCA804CFAE3E13FF00C14DFC7BE0A941D7946AB6A32AF1CA01784FA123AFD735EDDE18FF0082B2E89776E8352D0AE22989C911483057FBC33D457C0CE61BC64943916F78BB1995B85603834CD24C8239619D5D2488F0AE3E651DC0F507AFE352E9C5F4068FD5DF86BFB70FC3EF8900226AF1E9B759C79377FBB27E87A1AF56D2F58B5D6ED567B3B886E617190F1B8607F2AFC533E7CBB024B282A495E7E6FCFDABAFF86DFB4EF8BFE195FC33E99AFEA56B1DBBED9AD77968E55E9BB078E3DAA254BB0AC7EC3039EC68AF823E12FF00C156B58D3B568ECBC4BA6C5A85B4CA3C9B98C146739FBBE85BFC2BE9BF85FF00B6AF817E2646A8BAAC1A6DCB1DA22BA709B8FA03D09ACDC1A0B1EB9D7834543657F06A302CB6F3453C6DD1918303F9515023E0CF1EFF00C16C74D86231E81E1C94C9820497720DAA7B700D78B78D7FE0B13F1235EB32B63269BA56093FBB846FFA1DD9C57C8925C48202D217111056DE3E00EDD7D7DFDF8AC8BEBA920D91A4A000C4051863D3923D07BF35D2A9A4348F53F8BDFB6278F7E305E336B3E22BAB931AE4666DB0C40FB0E2B805D5EE2E637BAB9BC94C03A063FBC93DFA70BEF59DA559AEAB0833BB7D8E33BDD046774BCE33F53D3E9562FA69AFF57588959238581F923C21238503D97F5EB54A29058985C3EA8FF2B2B295C2A290768F5C7AD3679AD9DA4505A582DB1939E6EA4C711A9ED5622B0BAB8B8B7B68E3F327BB6F946CDBDF939F7FE9535B3417B39496187FB3B46CAC4850EE9E4CFCDD3D5BA7B0A608874FD09A531B4A18DE4FB5E45605440B8388C7E1F8D33579E4D4A68238D647B3B46D91C464C8460325BB739E49AD1D42E1346D01A568B65C5E968E100EE2AED8DCC4761E95474DD2EDB4BD35A3B62D0C49956130C9724E7AE4753420B93D8446EEE5DEE1D8C50812CDBD460FA2826B3AEF543A85ECD71221769707939603A607A7615ABAF590D1B4586CC0479752C4F2B02599547F0ED1838279AAB610188C8CC00311E031DAA09EA4F7E94811088199E281D810BF3383C98C7719F7ACFD56E0DA3CF7065DD2A8F2E2880DDE6B370A8BE98EB8F6ADAD451D55433869271901B3F2A8E83B62B9D4B496FEEDAF224497EC793192E14B484E0B8E3B0E3F0A761A445E1BF0FDE69D7570B79637F6F3AE048CD6EDB4B9E4F6EC303F1ADA8AC6F1A501A592DA67524A2C64003048E7B123B7AD5AD37C4D7FA75AF92E2EA5246C9245932651D5BAFB715B3178D6E61C5CCD0DF44929F28232A9607D71D718C77EA6924230A2D1A5386315C3BCA37121093803814B65E0CBABBB98C1B4BA551939652171EF9ADDBCF1DC96EAC585D831609C6D55C1F723FAD51BDF1A477F09335AEA8ED38DABB48518ED8E298D143FE10B9A25024B76559092E396DABD76D626BD64F2EA171A7DAC714496ABE65D07601D8606D4007707048E38AE926F11C46DA626CE6796350A904F2E1A476E768E8491C648E839AC7B5DDA55E5ADE5C90B2090BCC1402CC4F046EEE00E9ED421A67133DB4D64A97135C2969731C888A55B777FC0FD4D7E7EFED7D671F83FF6BE9E58504306A5671B10A30ADF2E0FEA2BF483C45A0C2FA83AB3C9259C8782C0FCCAD9285BDD4F51D6BE08FF0082A4F85E4D2FC71E17D7958EE587EC6EC061721998638C6319A71972B52EC65523CD168C3D3AE44B66A41CE076ABB6C3729049391585E16B8FB469E0A9CF00D741609E8413D6BDF478A4CB6E5881826AC4511418C1E2A48A2382490714E4214E0700F5A626C580CD677315C4123C3716EC1E3910E19181E0835F6C7EC6DFB7845E2B9EC7C27E337106A927EE6D35162047727B23FA39EC7A1FAD7C551BB162000077355350D4E3B39461F0E9F397DDB42639CE7B62B8331CB6962E9F2D45AF47D51E9E559B57C0D5E7A4F47BAE8FFAEE7EC84BA62CAA78393589E30D5F4BF0068171AAEAF7B069F6168A5A49656DA07B0F527B01C9AF897F677FF82D3787340F0443A1F8BACF59D4F59B4636F657F1A22457EAA38DCCC46083F2EEE73C77AF3EF8F3FB49F883F693F110BBD5256B7D2ADE426CF4E8DBF756C3B13FDE7C7F11FC315F1383E1DAF56B384F48ADDF7F43F43C7716E16961D54A5EF4DECBB7AFFC03B3FDA93F6CED4FE34F9FA3681F69D1FC32A5924E76CFA88CF57C7DD43D947273CFA57813D8848400AB81E9FCAB5041C8C703E94340181E300D7DFE13074B0D4D53A4ACBF3F53F33C763EBE2EA3AB5E577F9792308D99E4ED271D2A2BB8C004300715B6F105C1C679E9585AE5D084B80338AE8E538D3D4E775BBB48958B32AA0EA4F4A87F61EF0A37C4DFDA46E75E9D04F61A02332C654B1F9B2AA063F1FCEB8DF8DBE246D33426855B6C970DB47AE3B9AFA83FE096DF09EEFC37F0F64D5A47803788E613291F7E189011939E3D4E3E95E5E61536A6BD59DF82A7BCD9F5BF85F4729A4CB2818824DA914288C362F65607A28EBC7B56BDEE8A534A9C48AA0DCC6510C8091EE7EA7A0CD58D16C4DD69EAB1CC4DBE92B92B27DF605B278CE727D2B6A4BA8F55BC0E21785166F2A254C95562339E9CAA8EA7A570247A48E03C3D03DA5F4F6ED14B6ACA989102E17703D323B8CE714F6FB4DBC1B56E03C60821A45015BDFF00CF5AEAE6B2BCD0B502E970B143720F991B90A181DBB98920F2C31C7B54BE26F0F4D656CC628E368C0570140908C1EC5481D38E9C524338F9F438666567B440EE09F3616D8D1F20F435344B340C5ADE7D420054285129CF1E9CFAD740B06972D9CC64D3AF11D76AAEC660C077EA3D6A7B5D17486513AE9DA9C91C5D0EF2724738C05EFD31EB4C47173CD76F1CB336ADA93A0036A8277C67386079C1AC8D76C74E99E4B499B5475B85F29D6497EFA30FE55E9575E1AB5532BAE9DA916FF5CA03E08047DD1F2F51DC5529FC2935DE96268AC6CEDA33184135E4E3738CFDDDA48FC28B0181E03BC9BC4BE128A59B6AEA767218AE0B2E4B274C8F72B8FCABA6D2F4849F4770C51A6B6712B9C1C9038619EDDAB96BCB987C1BE268B529A5B596D2EF16935BDBCAA553790AAE40E3E56CE4FA1AF4ED1238D6F565914A5B5EC26DE545E033A70C4FB375ED4240D1CB5CDB2497686254851D3CB66200FC3AE715D7F87BCC974174695A616126F18F97E423183F46E739AE466B24D2E0B8B57752D6CE632A10E179E067BE45747E00D600B9F2A48CB25DA3213FEAFB70C739EF8E945C1328EB8F25BDF1902ABADC1DD132E599323E6523DCF3F8D6AE9B7AB6DF6472CB23BA6D645E3791EA3B7155759B2F2E3694A14239F90E4B638E7D39FA5374BB1549D8AB112BA070557A11CFE7FCE8048ED745852EAD26B0B80B2B4045C04524671D31F85685FDE1927B6BF8944ACEA55CEECE4AF0C3F223F2A83C2C91E9B6F65770070AF195DA1863DC9CFB1AD096E7ECDE79F2E364814159304955E98C0F5068634C22B679E208AC22746CE5B1800F38FC7A551F12471E9B7F0CE50B283FBC5439057BA8F7C7357ED9A4782DD0950B9307CC84AE00C8C91D38EF46B9690D9E9FF3420ABC98CAAB10703233FA8A105C8AC2369D2E2C8B3C6911F32D4EFE80F247D7A1CD5C4D49CE9914AC8F22DC4DE4111F2D04DFF3D0FA0F7AC4B09DAC96D6E230A65B17D8D819F973C7E2456B42820D66F2DD10B41A9C61D0E00CB0E47D3AE29DC773D07E19FED65E3AF83AECDA4EAB70AA1F64B6F21DE8F8FE2C1E003D38EF4579C9B867301B8C949F31C8E30029038CFA1CE0D152E098B43C324D266B6C5EEA11C64296102E4931AA9DA76FB67804FB9A6D96829AB5D328172CE7A792C06E5C70A4FA135675A60B1AC417C9B48FF7681E4DC42FF7467AF3C56CF852C16DEDA295F639883282CBB577751C77C50D0AE56D5F4C6D32CA2B7866B73337CA32990CFF00C4DEC147007AD3BC33E1816850425E0B78465995F69C6324A8EE79AA4E1B52D7E47DD285B5CA84C36DE9C9F4CD68EA32343A3881555E5BC2046E180789178E9EACD9FC053B88AF66EF666FAF4CAAD7F2B9B3D3C06394C8F9CF3E8BFAD5DB6D06669AD34D867453161E7DFF003E0FA1C7F163F9D589D6D2E754B7B69629E1B0D02DF6CCE49258F577F97AE4F00544350B6B0D1AF6FC08A0B8D48910990EC909EDEE4E2926329F895CEA1AC801E258ACC84844AA591C8F41F813447A29D5EF6DADE6B5F3216FF48917CCCA9039DFEC00ED4DD2ADA7D9094911C292D20940C11D58827B93FCAAE2DB358E8B71AA32AC4F7F298D1D0ED0AA3EF023E98F6A13119B3EA70EA5E219EFAE8B09D47950EC5DAA1070173EA462AE4F6662C0B91E56E5DCC4E0B301C9E79FA7D6A3B2D3C5B42CF756F2491C5C9DA85D72C7E5E476A8B584106991DAD9B4536A5A84FE4C7BDB6213CE49279007F4A6063C176FE29D7E5B158C48518BDD1898218E3ECBEE48EF5B5047A7C007DA2DF5545B73958D48644CF0A8723245241E07B9F03E98B1BD8C337DA87993CD921DF1C800F7CB7E95A51CD2E8B6114915C32CEF832C2D1EF591D8E02E790319FD281A453D3E08E5D46E658EF628DB2158321FBB8E4FA7B56C259ADD44EF2DE5BC8235C640F950B1E39FA6055B8E7B9631453A59B08C12488C063FDECF3F4A8BCD55896492388C6324811F19FCE98233EF6CE167611DDC0C1BB797B973F8D3134782E2511CB7EC58A9239C6DCF7FA019ADBD3AF27BE611DBD9DA3000311B141E7BF279AC0F14F8966B9BCBBB25B382DEEA3DCD3011057F2D38001E80919FC33498CC569A08FC4777776CB2C90417063B659F04CE31B4B71D98719F4355B5594DB5FBC6236586E948453CECCF407DC37E95725B1092AB32C4230BBE351818E4607E78AAB71399F4D922C4A65B66F3015C96208C11FD7F0A04C6880DC69725A4A804D6A9BB2CA430607E6EBD7D857C91FF00055BF03C7AEFECF306B88449268DA9C71BB7DC2038619DA38C1CFE75F5E785E7794D95CAC919B9B46CA9914B0C8E84FF007B23BD79BFEDC7F0F53C5FFB3D78CE27B43259DED91BB8DF70DFBA3F9B1C7030EA781DA94B54267E79FC36B8377A3C457006D19FC8576BA7C43736013EB5E71F04750177E1783A1284AB7D4715E95A7E4E067923A7AD7BF49F34533C29A6A4D17218C9C0C100D38C037E473DA961C7000249E9CD5BB78937BC842958FE51FEF7FF005AB5B1372B5F40D6B6C23504CAF90C7A85E3FCE4D701F107C1BAB78BFC2E65D3EEADDB449AE0DB493C72AF99712A0DCC98CEE551C609E0D5CFDA27E241F875E1A1A75A4A1358D5576BAE0E60848E4FD5AB8DF045EE8563F0EEC2E34BBDD6D3C462E0C57B69340AD6061DB9122480EEDFBB00A918C739AE0C562A2A5ECBEF3A28D26D739B1E21D0B47BBF87FA449ABDDEA52F893451F665B0B9B553673DB6FF0093C974C6C651CB6FFBC7A5775F073C7E9E2DB1B8B7921D973A7388DD4F1E647FC0FEF91C1A67867C67A6DF785E0D3F5BD1A351704B5B6A4C1C165DC77AF1F2B0DDDFA8C56AEB7E14D77E16FC3D4D5B47892EFC1CF7C66BCDF6CAF346C00DFE5C83E61C1048E86B0C32707CD07745D57CDA4B73A79EC8C1B4920A38C820FE951CB17A601EB56348B98F54D26292325A39A3596127B86191FA532740431C00C067DABD75DCE1D4CDD414A2003835C56BB23493B283920F5AEE35242D031CF4F4AE0BC5130B4B49A7625422927DA8634B4B1E0DF18B587D67C5A60462EB0FC8A07AE6BF587F64AF01C5F0B3E13787F4FB497ED1349670A5C45B0F991650111E48C6EDC49F4C6057E5FF00ECC7E0C8FE2D7ED31A1D8DD2896D66BC6B89C7F791016C7E2401F8D7EC3F80F4697478ADCCD232A48854A8C93C757C77C74FA57CED49F3D4948F7284396091B2B690EA05163021BA271E66C00CCD8E548EC00EF4B67AC47A3788A5B747B90F6E7C8310C33AEF1C13DB07A9C76ABDA8DCCB6960F72E8B1AB002311AE0CC9D87FB233F8D67F8434983C59E2433892686F6C5808A3DA144B93CAB0FA7FF005AA5A36DCE893C10BE21B0FB01F316EA57C0190163518207AE7A9CF6AE6574F8B48F3AC5AFEEE19AD65F2FCC187520F41C8E7BF5AF569EDA3F0BE9F7328B8437F72982A08668E36EF9F7C63E95C4F8EBC393EB3A7FDBECE69ADF518942EC42009547239EED8CFE14921A672D2EAD76B3B247AA428A21216578F7153FC2303A13DCD4F0F883509DDA35D6DA4862657D89130008E0E0F7E6A3B1BA3A85CC51D9CA248A72563668F049DB820F1DBDE98BAC4D34E4457170189C1DB0E360E9C1C71D29A6161DA9309B4A8FFD3755998B32C8DB7EF9C9C638CFA726B3ACBC32350B286DCDBCB3CD3025D6424461F1C104E307DABA6D205FCD085125E6F7630C7D150AE3209279EB502DADC4D74FF685779C3FCCAF26F4041E83B7E3DE80471BAC7842DE386EAD653670CB3C6378670CA411824E32735D37C29D59754D1F51D1AF1E3BAD4B4B31CC254202CB6E7E4538EA79033EF55B52F0F456370E248511509276302769C6781DFF009563693A99F06EB6BA925BA4B0C7132CAB1A66578CF2C99C67008047D3DE8B833D33C6DE1E8A482DE68616816E212D36DC6D6917824773DAB90D0E6FB0CD14C836BC537CCCC3732E0E7A7E15E8F78D0EABF0E21D505DB3DBA18DD311919571D73E9EC3A9AF3992DEDD35299229640243E61CB6373F5C0F5038A04D9D27886F4497F3DCC8D22C5A8C4B2AAE388CB0071F4CD54D0EF11E775923720E55C9CE31D335A2FABFDBBC1FA585B605ECF7412B0192CA5B764E7A9078FA563C93BBC9320711B19006C10AA40FBA38F5A02FD0EFFC3E193C31E5085A17B760C039CB609DBCE3F9568DB6A2F05F42B1A3077FDDCB1923956CAF07A67BF3589E08D51B54BD525E38E2BC8B6636E486C71C9F7152C896DA969826792E0496B26D8C0628A41E1BA75C30145C7737B49CDDC17D033484C3854DC79041C64FB7D2B5B4995E4D26F60C90AF16E0C5810594E411FAD72F1CD696DACA48D3B98A723632B12657239047F435A5A57D84C9668A4B149C8931963C9EA3DF1DA95C57294D6D0DA5F5D24F34896D35B73F38CB95EE47B52B4F1DEF87EC269D9645B393CBF9725B728DCADF9545AADAC1A4EBE922ACF262439DD16048738C7B74AD08A46BDFED1B35851125B7F3C0DC1586DEBC0E8307A8A6985C6C90B5CDBDC43E4C8CD230B88C0503071CE73DF068A9F4AF104AFE1FB399A3B68C26EB790C4C5948E9D48CE70451458A3C1A2D3A4FB6A5BC8C089260ECCE84B118F97A1E39EB5D84DF67F0FE9D0C374D3ABDBC4D9F98866771C039EB8EDD2B26C0C77DE25918C93C915CCBE5A49E571C1CE4FA703F2A7EADA826A93DC4B2CC971B989DDD1B1D338A572110785ED64D52DD6DDE66B698B890246A27753D33838E3BE735724D44378BDE6B78ECC41A4A2B8328032CB955383EA72DF5355FC210C5A635C6A8F6FE5C7671308D7760963C01F8E734BE1A9D6F2C6285090752B92CC58643AA1206E3E80E7EB4D21B278EC26D1FC3B0ADB9267D466662EAD85C6738193CE0F72297C4AB220B1B52A59ACD0C8D1CE032173DB39E077C815A96570B79E299A54785ECB4A0D1A8D9BE3703D47A67B563CDBF51BC7790ABCB23360444377EC0F4E08E2930B956CB4E7D41D1DA48C19088D16D4FDF3DF9C8C8C803A55FF105B3C17915932C714564115D533B964EAC39C6464FAF3536896D6F26B5287C243A642657D84A138E3B77DD8E3BD67416CB24CA55E6DF7585EBBF9272C7D7A5084C7C134BA6CC933ED92D572F234F2ED76DC70A39EA3D00ACB4B7D4355D7D2EAE6381EEEE3F771C663C245029E13D32DDCD6F6A1E1B9F57D1AF6EC14296F80A8F9C9238520FA639FC2B93F087C4EB7D3664D33C4DA74703B21116A42531A900E0071C8DC72482319FAD343B1D3D9EB97505EC70AF95024AD96581B0F181D02AF7FF00F556AC1A9C97934A6E3CBBA8AD0FCA5EDF1213D86E047CDDE99E1EB8D303FDA1D24B5B82767972C79563C61B70FC067A715A9278563D4B02C8C334B165AF1E29C36242720E3BE0714AE099CDC9AC58F972ADD1124B24810C91DD9C841EC54F3ED9A966F10E997206F491D58E30B20550476FBB57EFFC2EF710C52B5A49876223206D0CD8EA3EA7F95656A7141A6A2BCA8B0A0554528EDB4B679E7BE4E69ADC771C7C53A6DAE8924B1FDB05E484C76885164576F56C107683F9561F8474F3A01F3A6924323BEF90CB8667523939F4278C7A56A69FA7497778F35DDA470DF239609E59DF1478E632076EF9EA6935AD2E492C16E1543B05C9763F2282781F8FE62988B1A8436F71280254469A232DBAA0C9539E508238C74FA5721A8DC35AEA36C10EC47660E00C67D335D5D9CF1DDA490A38324B1865774DA639171945CF277631F8D725AEAAACE43AF95B7968F386DDDC63D7352901A3E1B8D3CF923DAB1DBB852A412CE07703B9C1AD6F11784DFC59F0EF56D216D918DD584E6058CED3B8AB295DC41C8232700724560783E7BA995C95DC6362E36B82EFEA98EB8C77F6AEFF00475B8921B7BB89CDC1B65DDB1464B01CE4F6031C1CF1C534163F127E0BDC3596ABAB69ADF2BDADCB923D30DB7F98AF5FD31B240C83C579E7C55F0A3FC27FDB07C4FA604786DAEEEE59A10DC0F2E43E62F4E08C1AEDB46B8DD229CE735EB60677A4976D0F1F151B5466F2CBB2550A3258F1ED4FD635D8740D26E2F6E64896DB4E84C8D9E439EC3DF26AA89961769771528723DEBCB7F6A5F1A88347B0D12DE575965633DD80703A6157F2AE9AF5553839BE8650873C9451E4DE3AF19DEF8FFC5177AADFCAD2DC5D3E49249DA3B01ED8AF5EF849ACD96A9E1CB0D3E6B1B186EAD010D70A0AC93C6DCAEE07838E7E61D7A578543199A5440092C71EB5F49E9DE1DF18E89F0BB44D27568AEE6D0514DF692ED6614056C8631CC065D739CAE4853D857CFD194DC9CF7EE7A559452513B7F10FC36F16C1F0B76E992EA13785354992596DE32B242B3A13B73DD1F1938C8C8E706A7F85573E27F0FF00C2DD77513325CF866DA448359B3FB583340A4E2379203C98D8E4065CE08C1C54BF0CE5F12F857E17AF884DDD9EA7E149EE4417F6A9A827DA2C2E32553CC809DFCA8DC1C295C1C66B23F68A834697E0BDE78834FD5ACD6EA494DBCD669298A70A4831C98E37AB73D3EE91CD75C52B73D3766BA1CA93BF2B2A7C02F8871F88DF5AD1C4CB23E8972DF65C672D6E58E09FF74E057A25D61D0392486EF8AF8A3E19F8FAE7E1FF008EECB558A490224A3ED0A09C4B193F329F5E2BECFD3352B7D6ECA2BAB59164B5BA896685B390558671FD3F0AEEC0E2BDAC5A7BA33C4D1E4775B14B502638DC904AB0AF2DF8DDA9A695E13B82AC0492F18CF622BD435C904711E405EB5F397ED09E2779AE459870CA705867BD74D69A8C5C9F430A11729247AFFF00C1273E17BF8A7E2B6A9AD48A45B585B9B76976E7CADC32CC3DC01C7D6BF50B4AB468E52A81843160491492062FF28C0C755518CE07BD7C7FFF0004AEF84B3780FE061BF951D750F115CFDA7CB236178762845C9E083C9AFB574ED396CAD1199536AAE5401869DBF898679C74E3D057CE42C91F411399F12DF5CDE6A2A6DCA318D80652C419B8C9E3A0E3A11D6BB8F00F85F49D45A5D5516546B24590C328DCD130F9B39EEC0818F73F8559F0F785A1F316E64814DCCBFEA708011E98F6EFEB5B3ACA45A5B2DA4798E7B25F32F6E5400B70F8E471C10BDFB669B7A8CA17B7AFE2492E04EAA350B91BF720C045EC0363903BFA67B54CF1793776EBE5473DB8017CC0A0AF4F99CE38E2A4B780436A660A52EEEB728C9246D3D0FB773C555D2F4A9F44D105B4F25D5DDD4EED91212AE23EC0E4743D063934DB0B1C87893C370E9F3DF5FD8C322E94BCCD20CEE889270FF427920722AA59C765749128BEBB6462B128484B6FDC372F248FE2E2BD396C5EEDADEDACD163DE7334602BAF4FBAC0F078C8C1E95C06BFF0FCE8FA8EA2CC1E3B2942F9213EE5BE1BE5C63EE866CF27A66860915445A758DD42925D6AA923B6E54F20052CA7904EEE07BD3357D6ED6D6F964B781278EE1816173388940F5C0E8DED9A59BC1B69A9DB24CB25FDD48A430DB1B055F519EFE99AADFF00084DE5D5CB9B7D26E2156C99577831AC7D0F07A007926958122693C6F6B6B768B18D1A26E1879565E74857A124B1E9DAB27C43E20BCD3F4A1AB497979676766C167B894AC76C011D0903E98F5AC1D77E2759D86AE61D074E83C4BA920559638066D6D413C92EBF788C670BEBD6AEE83F01756F888B717BE33BFD46F6DA019FB310628222187CA88BC0E08E4F38A2E248B3F0735D8B52F0E6B5125E5D5F5A79B22D94B3A109B197715407AC61BEE9E3A9A920B49E5BAB797256275310651C82307BF4AEDDECF4ED3AD6C6DF4FB6B582DAC8AC2E9126CC8420127DC023EB5CF5F68EF06A00A48C60B7B9006E036A6588271D718C530B9A7E1ED09E5D37528FED336E8116504A654260824738CF239FD2B3F4BF0CDA4A1184D7B3CA837B2097270A7A900700F7AEBFC256315A6AEF0ADD49326A10BC32AA80AAB91C0E3DF18CD67787B4645D5EFE0F2F61890281B705F1EFDF1E940266AE836D05A687673C31A2B2CE41F9413D776DE4E7183D38ADB974E996F6E22B6B6926DC0BC4B147C74DD9FC81FC8D60E8D3DC5969B3452BF9AD0AEEE4E377CDB727DF06B5AFB58BD4B7B3B8B7B85693CBC390BB836D7DB9CF4E14D17020D61E5B4B1496D96EA5923505786520E770238E9CFDE19ABB2DF496FA8A8924BD569C2CCAC5760248E76FAF3DC55699FCEB0B98DE73308880ABB36B0EC71ED8C558128992CD7ED1E6AAC1BB270194A9FBA3D303BD2187C4954B6B733A8333C78760E42AC59C1CE739CD3BC23A8BCBABE9F724442CEEA1D8646525E4DDD473D41F5F5AB3E38D3927F0DDB5DB48C0DC44C8406C850A7A9C75EBDFD6B9BD26E16D7C3B6ACB0B79B03101DB2FB3072179E071E94215CDBB690416777686446649B7831285279C6703B8A29754D38DBEBF24224863325BB48AEE71B8950E14018E7A8CD14D0EC799785DA4D3F429EF51B63436E5620ADBD8BB1C00476C004D57BB456B94B89B663CBCBAA441439EC4FA62AC586870D9F8798AC3346D24D8191957555C641FAE6A9996EEEA5B88E6404CAB88D84A080A3D013D6A55C489BC45FF0012EF05C30C76885753B80E922CA59F03E50707AE4E6B525D423D22EEF4DA5AAC11D95B2C09E4FCC8CE0601C1F524B7E34DBEB77D1FC4BA7432069534A83993CA26142149C93D09CB74A516D27F65C51A4D14D71AADCE2348DF6A9DB807730F723E94EE0D90A40348F054714321371AB36D7619528ABDFD339EB552DA56D3967F2D158DA2E4BC7F7B77F8D6D78B204B3D520B65599174CB5CCA823122EFEA406E31FD6B9C923592DE38A160B35EDC867DE4A9933C800FA7D28B81B91491E91E0C8AE4A06BED5DDD9BCCF94A2A9EE475249A834A55B1B296EEE544AEB989707690C7AB647A0A6F8B2F1AD5A0B6695DE08D7C8194CAA9182C475C73F9D5AB380476D6F68CF0F9B3127686CB31638008EC71FA50845CD619AC742B1821965B6176DE69887CE5C1F9573DC0EF5E67F103C262EAE6791238AF208613F7B76DC83B557F16E457A1EB572C9AADCDD35B977B58498B04A0550422804E013C9358B7D68D67F0FDD659CDCDDEA17066405400A8BF2C683F139F7C669B433CDFC01F15AEFC27AC5BD96BED34BA63B948A794AFFA28C6007EEC808CE7A8CF35ECB6DA44634E8CD934BE5DEE1927B7219265EA5D0AF5E3B9AF22F1E783219FCC8A10D05CE3CB1198CE0818DC73E879AC1F00FC50D4BE0F6B50092E2E67D037EC7B5772C6D13382F0E7A7BA8E292D00FA0523BFD2F4FB591350BB8ED83108246C7967D3079CD6469DFDA3E2B4B8B59A09C3DB9F36D5190077C13BCE00EA17F4CD58D4FC56BE3C7922590C9636530915660D1952578703B1F4EFED45CEAD79AA6CBE3713473DBF1314631927A2B64742475C7279A2C0902DFC705F25D40CDF685F926932490D8C231F5C74E69D796A64B42CC24955B7318D805298C6630071D7907AD3F49B7B6B6919D22335A5D8FDE2370D93D47E079AB696D2C093D885064330D9332E4B2819555CF0011919E6983672769F694691C65194A7EFBA983E6C8719E9CF19FC6B3BC5BE5DCDDC5A8FEE945F3146427E62EBF788F40719CF706AFF008AEF058B111EE11338F90024018E54FF0078135912DDFDB6696DA5B74492F1408B2DC452E32180C742BC5241633747D405BF89EDA45498C25C1DA06194039DA71EBC8AF57F0DCD14162236985B69D3E620D1124AA31F949CF5009E7E95E41A6CE05CA41F2105372C9CA93D88C7A0C1E7BD7A3FC3B6975AD21AC6480AF91B9157392C8796518EA7F880CF6C7149AB81F963FF000557D08F80BF6B58AEA02CC925A46DE67203B2B3291F9564785B53179690C809C3A065FCABDBFF00E0B5DF0E655B4F0E788A492D2696D24FECD79621B4CCB86646C0C8C81F2939EA2BE70F843ABA6A9E1BB3249CC2A15FB9E2BBF013F7A51F99E7E3A1A2677D737C968865908296E865707800019C57CCBF10BC55378D3C5B777D2B06F35CEDC7403DABDCBE22EAB30F0D3D95BB6DB9D6498558F1B546093FE7D2BE7ED774A3A2EA72DB170E623B738C55664E5C892DBA91838AE66DEE3BC3CB21D5E0F2F870D91EB5F6A7822F3C4DE05F843E15D475F69EFF00C07792CB169B7915CACD696972D932DBB2E7F753606594E32306BE4AF867E1C9357F1A68D6F1DBCD7325C3070912E4B73DCF61EF5EF1F1CF4E8BE15785AC0DBDB4F7115EC6B75776D0CE163B69892B864E431DA07CE077C57251A53845D48BD8D2BC949A89EEBE2CFD9B7C29E2BF86CBE2DD03C41A2DBEA96D30B6BAD351717383CAC89D9931D7A60F6AF8C7F682BAB78B5292CA592ED354B59CAC91103ECEF1606D753D41CE723A57BB7C3AD335DF10D959785343F0AEA563F11E6297C97926B212C5ECE650CB15CC2EB88DD506F0CA4F079AF9A3E2ECFA85FF008CF507D4ADD63BD82778A778D8B23956C641FEEF1C1EE28AF5232A7CD1566C5429B53B33950C7A7635F4BFEC99E3D6D5BC20FA2DC9DB3E9A0BDBB97E648C9E540F63FCEBE695527380457A3FC3ED5E5F07A58EA300756B56576038DEB9F997F119ABCB5353722F19671499F4578F6F858E912DC3121029C13EB8AF93BC5579378C7C62B1464B3DC4CB1277E49C7F5AFA03E3178E2DAF7C12B2DB4ACD6DA8C41E3618E320E33E9DC1AF36FD8DBE1F0F89FF00B47E85652233DBC121B99B0BB885419E9EB9C576E6153DC51EE73E0A9FBCE4FA1FAF3FB34FC354F0BF82347B36B79E6482D62552A02A88C46AA5F07BB1E07B035EBB6D6D6F35A5DB840B7303797023E4B2823DBAE3AE7DAB07C17018F43B71207DE815773214D815405423FBA3F2AEAE2B17B9BC8AC15955C26236C864873CB49FED91CF079E6BCB4BA9EAA4374B8A4D0DD2F27066DD19860971F29247329F4C7A8A86DEC9EE6DC5B1B9918C6143B372186796C7A1EF56B51D55752B81089048B0291185403CCC71B881F733D71CD4634F1A6DA40865613104CAEFB43AF6C63D0E7A77A2F61AEE58B158A6BA2D72435ADA8E643901980E06072327815147773C7712DFDC4CB338209767C3161DB9E30A29F224B7216CD43986100C8A1B1E7363A13DB6F7AD3B4B9B7B4D61587CF676B0F9920C02A571D07B93C50985CA4D61008195D992F2E1039901E515BF8483C12DFCAA878F6F5AC6C2DF478C42CB37CD75246876F6C2E7A803DFBE6B6ADAD04D6B26B9A8CABB924DB1DBBBE0B37F0003BAA75AE567FB45D5E4D7573772C71DB9DC85230573EF9FCF9E39A077396F156BF1FC3BD36E4DEDF5DDAE9FB40B566DC4AC8C7884E3819FE12DD41AE32D7C37E2AF8D7A6CF2C93DCE97A4C27734304C44974B9C1491BA953F80AF51B9F095B78E7C2DA825EC923E96F17953A4988BED24FDDD9D71B4E1B20F6ACCF85933784F46D43C31A95D2ADF69D179D0C8C022DEC79E1949E0F5E695C9B89F07FE0A693E11D42482255855A3704472796600CB95200FE1CF07EB5E836FA3C2B27D9C0B822F87277160372E73C9C60118FC6B9CF0F0823BF825320632A885DD640E4ED39C93DC1CFF002AE8EE3534B4B16994CC660FB70B92A36BF7FC2843671373117B0BD85195192E54888F05F70C640EE322AB4F68D1C4E66801175009833B819E3903D082B9AB57B6A0F89AFF00CA46658F7E1BA14C1DDD7D69BF6591E28D9E412159480146E0633C8C9FCE9DC5EA5FD3B556BAD1AC6F2068E064D877460312A307073DC8EF5A1AA245FF00093C922E4C53A89139DB8638618C75FA555F0F5BAC565A8C46384B2465B68C10833804638E01A91EC6E92D2C6ECBCA41882AFEEB08C63383B4F7C8C500D1308E2835468E42FE549925B1823D06DF7352E9B6225F0ADC00F1892DE6C70C46DF30648C7A654545E208E58E6B7B8518590061FBC0BB71C9C9EC7EB55EC23758AFEDCCB1C64A79BBB77CCC410CA39EFB4918F7A57045EB716FA8DDDC0591633342AF180D92C48E9F8E3F0A769F6B02CD6F2968C470CB8F939204830C307A91EF593A7DD05D4B4B7905B42CF98C932ED67C1E0F23AE0F7ABCBA7FD87CDB713994CBCB003857524E0B7D3A76A571DCD8FB524BE13B985AE9666B671FBA1D51483CE3DF1D2B9CB0BA8E5B29125F308590745CE0E2BA0F065BAA26AD6CD2443ED501F2CAA82E18E1B24763C11C7AD738228EDEF648A6BA95220ACC14AEC191EBE98F5A10992788AFDC45637334059820883BB65B729CFE3907F2A2B3B59D62C8F825EDCC7335C41379C65C173B5B23804F1C8E9E9F5A29B0BD8E73C4FE2588F862CE25951A2B5B7F303A92BBCBFCC0FF002AC8F0E5C35FEA76D6CD8B8903A33281B8050773139EDEF517C454B8835E974F13C3E4E98C6DC623EA78E491D4641AD4F0CF88750F35A59EE2D8FD92C9CEF587691BCEC1FE149025645AB8BA96F2C35091A73199EE7CB48D47CA173BB8FC3BFD6BA6D1EF24975FD26C244411DB431B6E5E41DD9625863A74AE3E3BC0FA469B6C96AD24C6479598C80E493B0018AE821D48FF006B6A7A85DC578D71027D95650CAAA980150601EE3F9D34C6D9416FE433DFCA23669AFA4666DB91B79E3039EDDAAFF8760B79BC5B67248098B4B4372A254C90F8C803DF3DAAB68B7E352B86592E5161FE0054A320F427DBD68B6BE1069F7F71BD9E0D4275B38FE52723392D91EC3F3A0499660F2B55BD5696DED2E2E2476DC1A428C189C9383EF5A561159FF68209ADEE04C999812D98C6DCAA8E79CEE3543486B7115D3C921F26247731C8A096E9861FE1EF56AC2CA18AC2EF53B78CD9B5CCDE4832312C442371E3B0DC68481199E2390DC7876E921649A3BAB958C07F91D02704839E993FA556F13DDCBA5DE5B2450C293D846A8096F33E745CEFC7A124735A736917FAD78A2CB4F4786671199E466DB1A8C7CCD903DBF3AE535A91B52D52E6EF7A3DBC281018C9063DEDB8039EF85FD69D8123175CF149B72EB2CEE8211F291C953DF9C552F87FE0A4F887E2A5BA9E267B78C15B4DE081349D439C76CD73DA16927C7FE20BC998490D85B5C32CE7255A76001D8BDB852093D2BD7BC1B676D61A4DCD95B098C2A814485C6D299C8E9CF079E2924C0CE3A62E9B288A67135E03867C610107A81EBEB5A56D33C51BC93C6F22481772A2E4E33DB1E98E7DB3573C5B0B4F6CB7F6E1649220B15D17421391FEB17D8F523AD63693AB3DEDDCCB6B13036D196E700498043919E9C73F414D30B9BF044F637735B013A4A8BE640B18DCC4E33804F1C8A7C732EBDA63C8AAC459808434983220E84B1EAC0FE02A95B159B4F59A39A4964D3C799F28F9E4423E56F7F4E3D2AED9BC7139BC8A179A0B9091C96FC2C4B2F75F5C10690EE6278D74F5BCB1B8B953B4C91B79B2B29DB14847CC1477041071EBC5721772AC3670BC2B232A00C3E4E53240C939E39ED5E8D7B60CC27B394B1F382AC3B9FF00808CA30FEEF3C1CFA735E7D7FA6B6973CF048D2329958C7B482AA07DECFA9FD29D82C43A9C29797266C8DC89F68530FDD461F7973D073DBDEBACF86DAA88678A68432BC837A2BE36A3EEE57D3245718B733691712C08C5C4C8B2DAB4806C2C41CE4772C3AE7D056B781AED2195ADF24C570EB2A91D5580CF7F5229342478C7FC1643C0A7C43FB34DEEAE93432DBD8DC41242B1A9DD160905189F4CE3F2AFCE4FD9FB5126DAE2C812D2CF2008A0738C73F857EB97EDBDF0CAF3E2BFECABE2AD1A13109AEE056B7001C1993E6C16F7507F1AFC60F04EB727826F350BAC85B8B78DA14079FDE1F97A7B735AE1A7C95549F66736261CD0B23D3FFB48F897C7772E8035AE9086D2238C0DDC966F7E7BD7937C42403C51724632CC735E9BF0BD8C3E199EE24218B82EC7B924126BCAFC5F71F6CD767719F99BBD76E375A0D9CB8656A963D23F671F14D9786756BABF95B7EA16B6221B188E31248ED824FB01CD7A5FED07F0F6D6EAF345D12D7C52DE2EF155CC4B3EB126989FF12AB4DD831C104DF7A67507E7F9400D80338CD78C7C08F033F8D7C7F6F059DE2C5342C9C3AE0B83F788F4007AFAD7D4DF1DFC05A7FECEFE28B2D32DB54B6BEBA8208E69A4B3F9920B861B846B27F19030770E0138ED5CB4D3AB05CCED143AB68CF4DC9BC65E17D57F6695306A2C6FBC4B7F696C648E76324D099514247283C86518183F7735F347ED6DF0EDBE1AFC54B8D2DFC43A5F896F218236BF9F4E2CD6F6B7257325B873FEB0C64ED2C3827A57B57C58F87DE26B4F88715B6B1A825C6AD7D671DF5FC0D23493E9E641B923958F0646560C704E3760F35E69FB5EFC254F8497B6BA53DE69F75A8C6BBAE56CA4F3161720168998705973C91919EF4ABA7523A69188A8BE5979B3C4AD212ECC71C2AE6BD4FC25A12EB3E0F2A002CB16579C579CE9081ADEF49C0290647E62BD4BC0171E4F8694838C45D3F0AEBC141288F152BB3907F124F75E09BAD0E66066D2E432C47B98F3C8FC0F3F8D7D45FF000472F854FE20F1FEB5E249230F1DAC62D63CE701B2189FAE2BE45F19DD9B4F17CF3464A9C8C807A8C722BF553FE093BF05A4F03FC0AB091D6E2DEFF53924BDDC841DD1B636823B7007BD726226E52E57D0E9A105BF73EB3D2ED3ECFB0485D55C00D3EF25546DEFE87D0723AD693B368B626D9236496452262720451F50ABE848EB8A9ECA45B28CDC6A715B4315BB81F3E4C53498CE081DBBE2B2351BD5BABE789DA5791A4DE3CDE64B7E73F2E38279E9E9582D763AAE5AB4682DE38669648CA49F743316662790011D3F1F4AB1A2CD25B4B2DC5FAC9324C76C213218CB9E189FEE81927F0AA36105C6B9ABC518923793EE492AA84F3B1CE083C671DEB5A2B66BFBD12C11DE8B2B54FDCACA364AA0FDE624704E78C7BD3192451369BA7EF989C063964E588CE33C7A9A9FEC971225BE8B69688F7133FDA6E65550E33FC2A0F6007506A8DE6A16F05E3DD1B7620148D6DC361779FB89EDB4724F73561F5C934CF0E4D706410DF5F93028C924440FCECDEA0F4E39A48571BE249A2D675782D6CA56682C5763C272A0C80F2D9E72339FC0555D4189785228A284B3EE2C8B9F3189F41D46075ED55749B83E17B317488B2CF31DD1127E405B8E08EFEC6AFF00866C7EDD03DEC8E7724A44447466230C48EA028C723BD1707E632E2C52C6DD6D62853EC78240CE526909CB123DBA0AE6F58D1EDBC71096647B59AC837D9240DB5A17231BC63A83DC1F4AD2D7F589ADAFDE08EE43951B485ED93C6411CFAF15A9A4D859B5B082572EA83E76E143487EEA8C723273D69A4079DF82B59962D425D2F53B6BCB1D574E9C1B8B777C649008651DF702A7FF00D55E97A842C745DC88A92CE44C589CF24608C7A715E7FF0014FE1ACDAED95B6A9652B5BEBD65205B59DE4244D186CBC4F8EB93C2B1E87DAB5BE18F8A21F883E19492395564DCF67730905648A58F04A11EDEA2958572EEBAB18D4F4E9013279D0A890EFCA939C13EA063B558D02D156D2EED8B29048C60676952460FE06B0EF95574F3701657482662EFD0ED233819EF915B1A6DFCAD2A148C98A68BCC5C2805432724E7BE4531DC6E98E9A7EA8C9248C239BF772203D71D08FC71576E6EC2E85224AD3116579BD011BB89475FCC565DD5D178CDCC31C0A9285CC858FCDC8C1000E0FB56A47A465AF2D4DCB0F3E05976A8072CADB80C9EDDFD69362B95756B9696C1B6222A19038DCA1549F53F87E1566C26B7BCD5ED27B910986F62DB26739C80500FAE71F4C564C376BACC0CB1DDDC1D8BB8A2ED0AD83D4719EBEB5249692CDA0DA3FDA1BCDF3DF2ABC81F30656FAF5A2E341AA5914B160ACECD6D21DF0861890631823BF238AD1D56E5ED35E936BAC90CE90CA9BFA302A3B0F439154C428F75AEB339240DFC646191B91CFA83DB8AA37F656EBA3D8AAB380C879DC495DC7A7D39A1824743E1AB80DE25B567DC43E637001DBE9F2FBE0FE958BAF24767E23BBB99A560AF1AC7867C316CE3183DB23F5A769915B594B6B2099D638E6550776D09FDFC9CF3CE39A6FC57B582D3C5A1D24842CF9C6483B8F5EFDF1E94362EA731AF4B6CDA6EA2AF20661189300EEDA1181EBEB8ED4571FF001AFE23E8FE00F87BADCF10D40CEF6CF6E2470082CFC05F4E18FE5452B821D35F6A17376F2B496BBE562EDE6A0C939CE0FE157AC75392D6CB58981824372AB046181030064E31EE79A28A496A2A6EEF5342D7489EC753B28EE23F2BEC16EAD2C903602B2FCC3191C8248A9965487C24D0BA4F73737770D29DBC96DA7F52091CFB514537B14D8B73A8C567672AC92A433F96628958ED2EC4E3078E735B3A96929A778374CB774B8883A1BB998280A99F957047E268A28B058A569A137D97CC469D9643B22924F9BCC2A392476E3F9D5CB8D3EF2D2CF47864854ADC00A549D84166F31BD470B4514D010DBEA327FC4D35D8238898D1AD6267538F98E0E08FF673CD78BEB735EF8D239B4E81AE23B5B9B8C5CC90BE1621FC2A4FF78A838A28A10933D2740F0E9D3EDA2B695121B20A9F61848DCF7480704FB93907EB5A504CBA4C96F1AAADB18C9290838322FB8F6E98F6A28AB65346ADA6AF1EAD24B6009F22E8790857A2330F97E9CD739A75A234C60943C170091E4A2E1890482011D791CD1454364A7A9B3A2DCB1D412E628D5C2EE80E01F9723953EE3D2B56385BCB92CE40504EC8A92CA76BA9E4A6D3D8374A28A6968348AB7D892C0656388445F779990CC187207D0F3CF419AE6FC490AEA5676F7302B5D5CDB82CEB1AE15005C6E24F0411CD1453B6827B1C5DE49E7E301E32A04A242324E7A01F435B9A3C2751B632C31BD9C6C77118DC63C101D54F61BBBFBD1452FB208EB75BB36F13780EED09920B8800DDB17968C1C6467A104E0F7AFC26F8C9A29F0DFC5AF12581054DAEA53C78CE7187345159D57B048F42B50342F85AF3AF05E0C8FAE3FF00AF5E6FE04D16D7C57E31B5B7D4352B5D26C598BDCDDDC64AC480658803966C7451D4E28A2BBF309B8F2C51E7E162BDE67B07C13F869ACFC24B4B2F8897167703C2BAECF73A66937330547BE74E49099C8C0C67B0CD7A6FC44F87975AB47A2DC6A1A825C7893C496C2FE6D2A08CB36976993E4348FF0074492052DB064AA8C9EB8A28A8E5D234FA113776E474DF173C127E00F87F4FB0D4E7925D72FED12FEF6D8E5E7B70E018C331FBC59086C0270081D6BE74FDA77E1EF89BE1478AA2B7D7DADED3559EC23BC7B782E16696C229C65629B1C46E5483B0F201E68A2A71727A43A22A8455EE794697205B7BC032730E3F515E9BE0D610786541DC498A8A2BAB00EF142C52FEBEE38B974193C55F136C74D8C8126A17514209E00DCC066BF757F67CF0141E1AF0A69D656D20792DE0014C58F2D91542B67E9D7EB4515CB5609D499DD875EE2F43B3D5350B79632B1A249020291AEEDE1B073B88EE49EB59D1CD3D9D98977BC906D5552C4008D9E84F61CF5A28AC27A3B2359687436369F65D344364266BCB9CB5C82A1E36079C29EDCD56D62FE60D0456D6C253732291994A8438F9987AAA8CFD4D1450DDAC909B16C3CBB8BB86DE59209ED2D130B73E6E19F9F98B291F798F4E79E05627887C4716A9E2096F6F4C567A6A95B58DA024156E88A00E413EDD4D14554A3CBB16E362C683AC8F1A5DB49A6CF04F6D661A03BD0809291FC63B11F4AD7F1125C4F6896B6C238E155C20600964FEF83C1393934514ADA908C5D36C36DD2798D31910EC2CCDCC78F507A64FA574DABCB1C8F6B68FE4348999B855CF998FEF7F1003F2E68A292D1D869EB62AB6A0229486112C01439DEB84F297A053D8B3F15C96BDA6CFE0EF155B78CED0CCB6B6F2AC1A95B42832E3041B92A3AB2EE00FA834514EC265858C4B71A9DA472BCB1C91F9A0AAED66C1DCAC33D0E09ABDA16B0FE6D9C88E81A263130232C36E0F3D8FBD14524099A3E344B5D52C6E96E26D8B70C6406040BB4B0DC146781C106B2B42921D2F50B331CB77748E3ECC0B0CB90E0A92C00FD68A29361720F0FD9D9DA6B4F13C570C7928E58EF2C0E3671818E29FA5DE69B61A76AB672DACD1340E0E00C15077639CF1D47D68A29DB4B8FA1A0F7161AB7896CD2284017D6CB14A1B94DDB3041E7B9ACD4BA6D47C25379765123D9DD796EAE8003137CBF9E47145149B190DEA982192616F6E857255460050AC31918E49CD5AF8AF0476DA558DE3985508491989E15BA6463BFB51450DE84B3E6AFDAEF5787C60FE16F0A59DD2DD7F6AEA69733428A412B12B3E727B640E28A28A529342933FFFD9504B030414000600080000002100437B0FE9F10500003813000011000000776F72642F73657474696E67732E786D6C9C18D9929B46F03D55F90715EFBB9A7B40B1ECE2B49DD8C956E47C0082D18A3230D480565E7F7D1A0496E5B45DAE3C69D4F73943F78B579F9A7AF5645C5FD976EBD17BE2AD4C5BD8B26A1FB7DE3F1FB23BDF5BF543DE96796D5BB3F59E4DEFBD7AF9EB2F2FCE9BDE0C0390F52B10D1F61BBBF54EAEDDF4C5D134797FD75485B3BD3D0C77856D36F670A80A33FF783387DB7AC761E836EBF5CC746F3BD382B483754D3EF4F7D63DAE2F9C892D4E8D6987352344AD9DA9F3010CEE8F55D72FD29AFF2B0D541D17214F3F72E2A9A917BA33253FA29CDD3D5B577EE1F819F34686CED9C2F43D44B6A92FEE3679D52E62FAFA67E45CE2F9AEDABBDC3D7F25E425A4EDB3B5CDEABCE98C2B20A0907342BCF588E887E7DA3CE4ADC9A6F067553D1807944F39E8E419A117B2D21CF2533D7CC8F7BBC1760B5EB3594AE9F233D8FEDA55E51BEBAACFB61DF27AD7E505001762FA85B8EABB3A7FBE122657EE14AAF279E16017DDAD7D38B5C5709AB2FF87712D089D6C2F8EB9CB0BB077D614835A67EB85BDB47FDA21B64DE720B21751076B87D60EE6C18DBE77B65F68F7A63550111FCCA7E1961208AA72EBCD7E2EFC33740ACEFABC59C017B1A62DAF3AE63FB7626E818B941B3EE89F2E1F2637A14DCB7EB4773CFC0D1E2C464357F83C49C28BC523F68A219C2BA2518C60BEAF508C6441C0514CA2259D4BE11B3DA9A4A9C07828934198E1181D2AD46AAA74467D94272092E27A52A2221C9391348B30698CF180A07A18D331EE29E3340BD1B8312EE200D7A368A0D1B8B150531F8D018B481CC4A8D599D0C95C89B759E054299C877319A4A8055C8A98A25673A982606EBE6FF428881C6A35F70913384F20E25062FEF090A51A97169338416B4750A2968BE4D636213549D0EA154A081A60160825598CEBD14A69D41FE12B26507F44C495423327622E345A6F92C894A2D224510143FD81564C045A895250A879CC539910E27F07237D8556954C54A6D10A91A9920295A6884A139407D24638CEC3A8C812CC6AC56512A115A2240523509EEFDE892AE150A6188FA694A468E6E0898B286AB5669A44684E35671CCFB60E1854366A41C4A440E3A6B33172180F14220BD0B8018687A86D3E547586BE0BBED63EC3A5F93C8D709E48C73EEA8F1F1315A2FEF8A9D409DA8D7E26788A663B20424AD4B6409354A27A0278B2041A832082E241BB3E808AC7DFC610EA3A44BB31944287687442294386DA16C644FA0CCB2960A2188D4E98C858A13108332662340B11E53111989E88C1C587F3C0EDA6D18A8FA424B83F51240591989E98B2D047FD89213B02F5073049864B13D0C1A8D5B1AF09EE691CB344E116C422C35FA638959946731A6782308A799A3022F02F94441345500B127835710B125F7EE7A54D02A2F1AFB424120147A3934470FFA39D95C47089A05D92649C539427E5C4E7E8DD9B72CEF14A4C2567F837126012FC4B2855D0C2689FA69A07F88D94C23516E03C0109F1FB200D988FDFF16948031FADC43494097EC7A7919278C5674A2412EDAC0CBE39297AC767998802B412B30CDE60D453C0047CAA37984DC68F24981E9ACD38F18E03CAE594C1ACB46A2E635E9C377B57E5ABF7E34C0C2347B3D9BB8F51D52EF8BD81D9DC7C8DD99DF60BF2EEEE82E89BBCAE3398C7260125CC7889394CE7FA7DEE1EAFD226379B8D43A13067FE5E2CA2C751D5B8D7CE9EBA8B8EB3CBBBB76D09E085840A31CBABDAE15DD52CF0FEB4DF2D5C2D8CC35FA14E6DF9D7931B05AEAF41396F06D860C0100C52F2EBCC6ADABB873723E97953D46E376E39CCFBBCEB2E63EDFE916EBDBA7A3C0ED483C96B807F65EE3E4E7FF68F6CC6B10907FF46DCF4272F46CF807A3E8C04972350CD872B8C2F307E85890526AE30B9C0E415A616981A61C76798FFEBAAFD08DB84E538C20FB6AEEDD9946F16E0D6FB0FE8128469A47EDB16F5A9345003A52DFAB7ED6E80B5CD14A3FE987706D23EAE0AA0E6EC6602CCBB837EF5B481F17AEB99B21A60BFD45565937FDA7A8CC8298533356C06EC69B8A11D258DC4DD0D7455E6430E9B8C299337CC9059586CDCDA72DE94A6A8A04677CFCDFEBA23B8BFF85557FDB0331DAC1306EB2022D3F6E3B749F275E5F5F25F000000FFFF0300504B030414000600080000002100E8DA9986EC080000354200000F000000776F72642F7374796C65732E786D6CD45C6D53DB3810FE7E33F71F3CFEDE4202078569DAE1A5393A43296D60EEB3B115E2C3B17296534A7FFDAD56B6E2D851BC1B9B99BBF2218925EDA37D7B56046DDF7FFC394FBC1F2253B14C47FEE0EDBEEF893494519C3E8EFCFBBBF19B77BEA7F2208D8244A662E4BF08E57FFCF0FB6FEF9F4F55FE9208E58180549D66237F96E78BD3BD3D15CEC43C506FE542A4303695D93CC8E163F6B827A7D3381497325CCE459AEF0DF7F78FF63291043980AB59BC507E21ED9922ED5966D12293A1500A763B4F8CBC7910A7FE07D85E24C34B310D9649AEF4C7EC362B3E169FF0652CD35C79CFA7810AE378E4DFC573D0E8463C7BDFE53C487D181181CACF541C6C1C9C9DA56AF3B2503517EC69C824481F41EC8F2019F9227D737BB50E621F3DC411480EB23793331F16EEA106E56B459385D5CBCCAAA90DC605534F8CABC028627A2DC327114D721818F9E06E7C78FFF9368B6516E72FAB6713318FAFE228123A30CA79E92C8EC45F3391DE2B11AD9E7F1BA39B8BC5A15CA6F9C81F1E1DA32712157DFA198A857633C0A5C11C906FF482448B55151CDCCFB206820FFF291106DA1C60C74D426722D091EBE1765F41EE50EF97B59303F68A43F68A3FD82B8ED82B8ED92B803898B63A21AF08030C26F2FCEB58E5DECD72FE2032BD861019EE184359E8A4EE62D0739DC4DCC57922883A51FD31593EE4AF21364896C03A4002C4FDBA7D7009E4D559C8B98C5EBC3BF133F7C67106F1F13905AACB3B8BBD7A59882C89D3272D6919AF78F5E4640B734DF24CA68F4470AA233FCD17B340C5505649314F157B173C24C2FB338B23A260B7236F9320143399442243576CB099B662A320B825DE486FB20842A8029B375771085689A66CAA19AEE3C759EE4D6658725AC18E1CA5CDAD8991AFE9A65DB8439536E16E1F56CC748455AF6927B7F02F228A97F3D234AE6A5C85C032D90102B7D824D22A0452F60E10C8F78E0345553E72F9AEF209FBC79ABD837CED638A0BB0C2EF2A9FB07F3C0FEC2A1FE363BB7FF1F4C0917F19644F1E29BD8ED9B97B2113994D97499903AD197CCCCE600B4153819DC4563E89248ED919BC469FDE591842F1A5C429DB172B1E65A0B0DD615030D9E8BAB09D52675686466C07D5B0860CAC6E5CCB006293EE77F123D6DF75E884AC1DCE98070DAC0BB741163C66C162D69AE0070E9B504F1BDF96D275E6AD54A1A18305A9289F53F8BA40098F8676E0C8452A5A116168494E78752B858CF0EA56131940DD8A2303C8111FEEB39CAD927490EEE59281C5266A5BD730ECC85C7DCCE66A0BC42B0A3D5552C289CC91BDEE58685652020ADB41CD4A4A40617BA756DD0665C811B07AABA4042C47D570FBA8CAA91CA5D895B40A64C99BA0513FE44D00EA87BC0940FD903701A83B79B783F447DE042C3637584EAD92370108A7707E39B44055F22600B1B9C1B05DF12D5249422865FBAFBB3D90370185EDA026791350D8DE719137010BA77022A18665A98E80D50F791380FA216F02503FE44D00EA87BC0940FD903701A83B79B783F447DE042C3637584EAD923701884D0F16A84ADE04209CC2E1868DE48D59FFEAE44D40613BA849DE0414B6776A846A0FA9042CB6836A5896BC09583885130C0516063747A97EC89BA0513FE44D00EA87BC0940FD903701A83B79B783F447DE042C3637584EAD923701884D0F16A84ADE042036376C246F4CC657276F020ADB414DF226A0B0BD532354CB73042CB6836A5896BC0958182F9DC99B0084537605E268D40F791334EA87BC0940FD903701A83B79B783F447DE042C3637584EAD923701884D0F16A84ADE042036376C246FCC9157276F020ADB414DF226A0B0BD5323544BDE042CB6836A5896EA0858FD9037010803B33379138070CA0E4098451C37F543DE048DFA216F025077F26E07E98FBC09586C6EB09C5A256F02109B1E2C5095BC09406C6ED0178CE106E9F6EBA9955B0D03471050EF1994B71AC880438793A8808582DFC55464D04E23DA6F8774042C3564203AC283AAE2B9944FDE96DBE715F71D3802840C153F24B1C46B362FF57B3B07C75B2E55DF7DBDF0AE4C4B48631D86D47A2B07F4D854DB65749709F638C13E73B8D43DF217D5DB3ED04AA39B8B8A1E189CF8193A628ABE16BD5837BAC05A6CF5291EE3DF6D0B547C0F8D57513907DAA1DE1D5C5E62BFCFF32934F6E00E968B45062D4E67CB5CC2D572E8BC51B010B65A8C435F134EFB554A191E1A8BA85F17BAB309D1CB67B5E6A3FB8936CBAAC36953B7112AD6344538035B84B9E9A77098A2E852B277A474B3153604550D534CF2EC2C0FA7A1715617B44A458AE69FD519CFCC5BBB1F6ECCE3D877AEEFAE6BAD1D7BC6BBED5B7DE8E11463E3E606CB4BFE6D3BB4AD31A840FE901837C21B684380ED41071CFE85CF045EF4333080307E2192E44B804ECFE5C23D3511D3DC8C0EF6B15AD7443DC83C9773F7FA0CAFB7E34E36098008AC6EC67CD44AC03B87ED536CC0296EE63BEC7F2375956B4409DCEAC7E78EB0A05ADDBDB7B5D4B6C9AC5B44748748633FB677C4B8E521806EB8AFBAB9AD91ECED096EBA15606D30857C023E19EE6BA9B0574C71E29EC3A502774E74A35F9D92C619105108C907376C5543151CF5EC305AB8A68F35030EBA34EABED12BE840FC05FB0C92EB38158D9DAE862118607CD356AB3C9BEADE9EC22534152CABAA8275358EE91BD3AC0BC3E751A65F6DF2A0BF23B92C5845FD2A8D0F5E2DFB2B437D197CE4BFDBD73FA56B0B41AAEEFDE1BB83728AA18406C10F8646F32AC19B67E0019CDDDD13052B375C503EDF1008E38BC16080EA592B0650B374338EB8FC54FAA198B01AB9A98F447F43247FD7E46398102D6CCDB6661334AC5DBFAFFF95A6299F9695AF6AACF2594B3584565C2890A029D3AC963DF4D1030AA48E976AC5D34DAAF0B82D7A750B59A98591740135D72C5B4FC1F1F8F0FCA4380715A7022873D8F50CAFA50C7DBFDE94EB8584E6E4C323138B40E3AB39C8F9BA3AE2949303685A32FA1B796088164A5A3B166CA1A48A4275F398216FA56CD3106D4668A44CE9F12D51B0D3296873D5184BB8AADDF4FBD43CE6F8DD485A99E27FEFF78A4275BF9B2187DFCDE07FC6EF6B61BECA77DBF959D76DD513BAC9FB05A9DA13F0B6037079D259FF3209A5AE07C7C5C5F0F2A8E8382DF2A14197E3B1B1E8B2E408FD1F29C0F1D8E47CAD949445457DF8170000FFFF0300504B0304140006000800000021007F51E153A20700000977000012000000776F72642F6E756D626572696E672E786D6CEC5DDD6EA34614BEAFD477B0B84FCC9FC18ED659F927965AB5AB4A4D956B6CE318951F0BB0B3E9E5BE4C1FA18FB5AFD033330C196CC0403019AF662FD631C399C11FE730DF399C39F3E9F357CFED1DEC3072027F2C29B7B2D4B3FD55B076FCE7B1F4D7E3E26628F5A2D8F2D7961BF8F6587AB523E9F3FDCF3F7D7AB9F3F7DED20EE1C41EF4E147770768DEC6F1EEAEDF8F565BDBB3A2DB6067FBD0B80942CF8AE16BF8DCF7ACF0EFFDEE6615783B2B76968EEBC4AF7D55960D29E926184BFBD0BF4BBAB8F19C551844C126462277C166E3ACECE4834A8455C62592F360B5F76C3FC623F643DB856B08FC68EBEC22DA9BD7B437F8895BDAC9A1EC471C3C979EF7B2AB32DA3AB45E0067CF2597FD1284EB5D18ACEC2882A373D298F6A8C865632700A22E52892A97901D935E8967397EDA0D528FA3FB9FDEBC5BB8797D32761F75F5F643008B7B50266B19C5A1B58ABFECBD5EE6DB2FEBB124E353FCC85943DBC172E108F9A7487D24ECEDDDD8F9CD3ED8EEE3EBCEA6E7E0A32E3A4ACE8ABD9D4BDBB2F2BEE5A5524F4F43B886A463F780241CF8A01701B610C6B497E42C308485971E5CEE5DD78EC99020F8687F4D9BBE7FFB2F3DFEEB8AF6E2DA9BE4F4DD1F21FA393180917CD273600809FEDE05D158326513F5D27F3BD1F11130A81FD20A5FB696FF8C6D581D6AC9D949EF2119245C047E1CC19956B4729CB1F4E7ABB70C402F41740248A707C848580846841F84AE8CC545C13787035C145DD14B80C1CD9D22A3F2828CAAA858550B540637778A8CC60D32437558A2332A6AEE14199D1764B4813628410637778ACC8017647455574B90C1CD9D22637083CC481F9521839A3B45C6E405998131304A90C1CD9D2233E4051943332841A1BC87A533B8F9C2C8C0B4C8D04FC46F98AF3036F30DB1514278326C7468CEB4D904CF24456C74FBBA0C9DF5EF88A91670D28122ABAA397D407A92A558E09401D9DBB92B60A1BA3C02F2DA1DE9626F86A9E22B49B9A566C8895237E396E8BE3A3E90D6B5BDB10099A4B352B2798C8486B101970E3C39E481B6804C90DE811292CEE2A2E87A336066C13E74ECB0F7C57EC10F46C2BC8F8EAE80F31F1DAA899A7AA23F83F651FBFEEDDFBAB8A90A28105202EAAC5455A827706D5088029CF6D45FC91EABA7564489B2068614AD55B5AAE8FDB18AA50E87CD002AF2E6105CF5A0D14F7487078B03456906CCB1215DC8E2887DB10AC587C5E95AC34778D6BA086AD963F5D40AC27D27531A0F16378009B6D123A93D8B334FA0E1C1E20666C36775471687FDF40C47E2C3E20CBDE1233C6B5D4D2CAE26AF25E12A96D7A2E9C79CEB3332AFE747592BF05A55D31793298ECD15F25A4DF0DA84E12748F060F357C46B13D4F8B0791E796D6A603CCCB27CF15A8E2CEE8A782D5716C723AFE5CAE2F8E2B51C59DC15F15AAE2CEE7A782D79D9C8F25A5D56146534C16F719AC76B15633431142589FAB2AFC4B107497C91F4218062BA5DBC2467C3475CC56B39B279C16B219FE50789D7A60626782D3C82C61213AFE5C8E204AF6D667182D78EA593FC38768A13BC16118BE4F56B0698EB89D726CF293E6237D7C36B49AA5886D70E872353994FDF17AFD5A7B2FA303205AFAD9687C0D12C2B786DB35956C46BCFCCB2225E5B30CB0A5EDBCCE204AF3D637182D716589C88D736B3B8EBE1B524D13FC36B27D391319995E62194ADF69ACFF5E1542519D8C719085DC5656972337C42A40A2F62CB2CEA82BCAC92455D0DB3B6EA24254178FA1F7A65E9C59CA5C0AD6648564ABC3D0324E6C0C5485E96229FE456D6059564EAB60A6AC538EF195831452E86B543065D17D20B24D2B404294AEE2D81B469EE6FFDC4B1BA90921833875A8AE97831A48DD9FAE521FDB8E0D719C3C74CBD18D20E897C5D2D2529C61C6A29E6F6C59036A6FE97D752929ACC23A428DA5D0269D360F8E5212579CB1C428A1D8662483BF427CE1B7ECD4C67B26096F53006BA325116DAA42C725EE6612CE60B79321A611D141E465247E27845C8F9FB98854EC10B215A350DE161080F036A9B641FEBEFD553E161B40EA9F0305A87547818AD432A3C8CD621151E46EB900A0FA305486B7A18A4F00CEB6118B2321B3C18B83E4E51CE79998761E8AA2AAB466E7510F10E23291E223C8CA4B85F7E8DBF4A4BB1C53B8CCB5723A9ABA7C2C368E1119E0D2E080FA375488587D13AA4C2C3681D52E161B40EA9F0305A80B4A687410A38663C0C633ED5A08460D93B8CF3D55A2686AAEB2333C9B512AB5AF34B5EA3C586B8BA97C8FEAF5CBB91A942C8D58A9F0E7397C0C64B32EA08CB67D5EA026FC0AEBE0A214716D7389FA89223FEFEBA9F8490B30AF571149D5D9BD861D250B9C531550813B5E2C3E21AA700D549F82D8786A942C891C589ECFF1F3DFB7F840B93B3BCD65434C8DAA68C34BF0A6159E41C71E2C5649EBB9E5544CE45E49CE4B8955730AF34618BC8B9889CBF15633893578D97D416A757365E719B4D6DAA5236B6EECB0811396F21DA937D19F171B4FC8C968AECFFCCF66D9576383803A9C8FE6F1F5291FDCF6E32D886965E77F63FACAC85082DFCFFB65F4F66131FBACE95AE1981339127901123E5D073C5E8667A7962A4DA64AE18DDB6314F8C14F3C915A31B47E58991B5D2B962742FC43C31B20022578C6EFA962746B29A72C5E8BE5F7962E45545AE1876CA20109127463CC15C31BA63549E9842760BCD95A3FBB66139322CD9C2F6FE7F000000FFFF0300504B030414000600080000002100743F397AC2000000280100001E000801637573746F6D586D6C2F5F72656C732F6974656D312E786D6C2E72656C7320A2040128A000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000084CFC18A02310C06E0BBE03B94DC9DCE781091E9785916BC89B8E0B5743233C569539A28FAF6164F2B2CEC3109F9FEA4DD3FC2ACEE98D95334D05435288C8E7A1F47033FE7EFD516148B8DBD9D29A2812732ECBBE5A23DE16CA52CF1E413ABA244363089A49DD6EC260C962B4A18CB64A01CAC94328F3A5977B523EA755D6F74FE6D40F761AA436F201FFA06D4F9994AF2FF360D8377F845EE1630CA1F11DADD58285CC27CCC94B8C8368F2806BC6078B79AAADC0BBA6BF5C77FDD0B0000FFFF0300504B030414000600080000002100BAA360D5E00000005501000018002800637573746F6D586D6C2F6974656D50726F7073312E786D6C20A2240028A0200000000000000000000000000000000000000000000000000000000000000000009C904D6BC3300C86EF83FD87A0BBEB24FDC02E714A4A17E8756CB0ABEB288921B683ED8C8DB1FF3E879DBAE34EE291909E1755A70F3365EFE883765640B1C92143AB5CA7ED20E0F5A5250CB210A5EDE4E42C0AB00E4EF5E343D5856327A30CD179BC4634596AE854AF17015FAC2878D3EEB6A439704E764F2D23BCDD73C218DF37AC2CD9F9CCBF214B6A9BCE0401638CF391D2A04634326CDC8C360D7BE78D8C09FD405DDF6B8517A7168336D232CF0F542D496FDECC04F59AE777FB19FB708F6BB4C5EBFF5A6EFA36693778398F9F40EB8AFE51AD7CF78AFA070000FFFF0300504B0304140006000800000021005D6F88590C0200002F08000012000000776F72642F666F6E745461626C652E786D6CD4955F6FDA3014C5DF27ED3B447E5FE398F0570D55C7CAE31EB64E7B36C12196623BF235A47CFB5D2701DAE14DCD54A91A280A1C3B37971FE79EDCDE3DA92A3A080BD2E88C2437944442E7662BF52E233F1ED79F662402C7F59657468B8C1C0590BBE5C70FB7CDA230DA4184D76B58D88C94CED58B3886BC148AC38DA985C6B5C258C51D7EB5BBD81485CCC51793EF95D02E66944E622B2AEEF0DE50CA1A485FAD794DB5C6D86D6D4D2E00B0595575F514979A2CFBEEA266A1B9C2AEBF1FD5C654AD5E736D4024B874E05546E818DF0965784CE904CF633A25B12F9097DC8270E78DAC930BAE64753CA9D628AEBB855ABABC3CE9076E25DF54A25B02B9C3853D6C28DEB07F914E4910FA4B855DED19BD54F2B6CEECD955A8609D73656C3FEEFE9E2B108F520988BE8A26FAD676EE37FC4E842185091D2189140F869FD23011FA36441EB071F6B05E5F88AC5099CED251AF5C88CC7B2548A4FDFD4957E7F54456666FA5B09E49D01F0C7D31A273E4E0BDC190C9101ACA6C850D19A4904F627BED8EF765F11307C94F3E04498C4F06BB9CC3BE084E0ADF3BD36DFF2F06E51EE7371C188C7EC6F1485B437853A025C21882E3018D0418C4E17D2DB1E26A83288286F0C330EE83C207C63012C3A3D393A0EC7950A45E49CFCA2528F031D606EE5F8262DE06CE80A0E09544147F20B16EC3A175C36012FFE6896B12F7AB0089E40D48F44F1358FE020000FFFF0300504B030414000600080000002100307F0F297B010000CD02000011000801646F6350726F70732F636F72652E786D6C20A2040128A00001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007C925B6B83301886EF07FB0F927B4D620F94A0961DE8C558A16C8E8DDD85E46B1BA65192ACB6FF7ED156DB1DD89DE17D7CFCDE2F26F37D59043B3056553A45342228002D2AA9F426452FF9229CA1C03AAE252F2A0D293A8045F3ECFA2A113513958195A96A304E810DBC495B26EA146D9DAB19C6566CA1E436F284F6E1BA322577FE6836B8E6E2836F00C7844C71098E4BEE386E85613D18D14929C5A0AC3F4DD109A4C0504009DA594C238ACFAC0353DA3F5FE8920BB254EE50FB4EA7712FDD521CC381DE5B35804DD344CDA81BC3CF4FF1DBF2F1B9AB1A2ADDEE4A00CA12299853AE802CC1E747FF240C705799EC464B034DF0C00FC15365B9EDB03E6CB75B70EB96FE22D60AE4ED217BDE7A5C26F877D2C20676AABDC26CD611C3B117AD8CD20E6416131A87240EE33827844D2823E47D70F6909FBD5BD5715690812FCF8EABEA93D7D1DD7DBE40AD6F1CB6CA694E266C343EFA7AAAABE3BF3A08CB539FFF8D93D648494E09A33F8CBDC06FD5B7FEFE03665F000000FFFF0300504B0304140006000800000021005725D1528A000000D800000013002800637573746F6D586D6C2F6974656D312E786D6C20A2240028A020000000000000000000000000000000000000000000000000000000000000000000AC8F410AC3201045AF221E2013BAE8429240A0CB52026EBAE846ED18058DA213686E5F29A527E8F2BF0F0FDEA0854C7B315899C48086F029E90838F2C7BCCCDD5D5E39FB809B8A0D36C6D92B86AD0A3D7247940540350EA3AA5DCAB8B5CFA61215B5595648D67A839764F6881BC1A9EFCFA0BD0E3EAD4565777C657F514D03FC62A637000000FFFF0300504B03041400060008000000210042AA6DC1600100004F04000014000000776F72642F77656253657474696E67732E786D6CEC544D4FC24010BD9BF81F9ABD4B5B40200D858410BCE04714BD2FED946EB2BBD3EC2EADF0EB1D5A54440F36F1E8A9F3F5A66FE6753A9EBE2AE99560AC401DB3B013300F7482A9D09B983DAF165723E659C775CA256A88D90E2C9B4E2E2FC65554C1FA099CA34AEB51176D2313B3DCB922F27D9BE4A0B8ED60019A72191AC51DB966E363968904E6986C1568E7778360E01B90DC11039B8BC2B263B7EA37DD2A34696130016B8988924D3FC5856613E2988AD21E9F5E158994460C476130EA87833ABFC674371725E54A2E29C9FC43B5E26609997B8F061FD147B1C97F08AFB0F85E3B43E7509DC589CF2C358777B84F8CA6CD322AB4FB98D1FEC9287842BBAEED0425D25EF9D66143439E306B875C7F61D40E6B4E276F03F56B11EAA11BF34C8E616FD8ED5F87FDDEBF1E6DBE82BFD4A3D1A5BE132C9C50620F0B3433839505531F04DDE7EE5EBFDC2E6B8F4B89D5C3DD0D39043DF90D4CDE000000FFFF0300504B030414000600080000002100B7FFF7AEE3010000DF03000010000801646F6350726F70732F6170702E786D6C20A2040128A00001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009C53CB6EDB3010BC17E83F08BAC794DC24750C8A41E1A0C8A16D0C5849CE2CB5B2895224416E84B85FDF95542B74DB53759A7D607638BBE2B7AF9DC97A08513B5BE5E5A2C833B0CA35DAEEABFCB1FE7CB1CAB388D236D2380B557E8498DF8AF7EFF836380F0135C48C286CACF203A25F3316D5013A191754B654695DE8245218F6CCB5AD5670E7D44B0716D9B228AE19BC22D8069A0B3F13E613E3BAC7FF256D9C1AF4C5A7FAE849B0E03574DE4804F16D9063389B13BC76284DAD3B105705E5E7886FE51EA2B8E26C02FCD985268AF2A6F8C0D984F9E620835448F689B2585DAE384B32FC93F7462B8964ADF8AA5570D1B5983D8C2664030367690B276376A05E82C6A3202969C8BF684B626E283D215217E43E487F8862396A9C43BE53D2C086DE2F5A692270F696E0F72087DD6EA526CDBCC7750F0A5DC8A2FE49DB5DE6D977196170ADCA7B19B4B448EE0D6D533062E32306516B34C44DB5291E61DA96627D29CAB181C079E3403069A0C2B9BA71427C68E9A9F80FB1652A76D430494DE424709EF107EBC6755EDA230D9F1139FC233EFADADD0D17F3DBC3F364B2F9678D879D978AD6532E3F2EAFD31B486A7C47B7020D2DF5C4F896E0F7647830C358BA1FBB87E6D4F37761B8AAA7E97FA5798B82BEF18C4E393AD7F94712BF000000FFFF0300504B01022D00140006000800000021005F1F8AE0B6010000650700001300000000000000000000000000000000005B436F6E74656E745F54797065735D2E786D6C504B01022D00140006000800000021001E911AB7F30000004E0200000B00000000000000000000000000EF0300005F72656C732F2E72656C73504B01022D001400060008000000210035ED70A25E020000C10E00001C0000000000000000000000000013070000776F72642F5F72656C732F646F63756D656E742E786D6C2E72656C73504B01022D00140006000800000021009937CC20563A0000983502001100000000000000000000000000B30A0000776F72642F646F63756D656E742E786D6C504B01022D001400060008000000210068EC006E72010000D8030000110000000000000000000000000038450000776F72642F656E646E6F7465732E786D6C504B01022D001400060008000000210030B79A7872010000DE0300001200000000000000000000000000D9460000776F72642F666F6F746E6F7465732E786D6C504B01022D001400060008000000210096B5ADE296060000501B000015000000000000000000000000007B480000776F72642F7468656D652F7468656D65312E786D6C504B01022D000A00000000000000210069640528958C0000958C00001600000000000000000000000000444F0000776F72642F6D656469612F696D616765312E6A706567504B01022D0014000600080000002100437B0FE9F10500003813000011000000000000000000000000000DDC0000776F72642F73657474696E67732E786D6C504B01022D0014000600080000002100E8DA9986EC080000354200000F000000000000000000000000002DE20000776F72642F7374796C65732E786D6C504B01022D00140006000800000021007F51E153A207000009770000120000000000000000000000000046EB0000776F72642F6E756D626572696E672E786D6C504B01022D0014000600080000002100743F397AC2000000280100001E0000000000000000000000000018F30000637573746F6D586D6C2F5F72656C732F6974656D312E786D6C2E72656C73504B01022D0014000600080000002100BAA360D5E00000005501000018000000000000000000000000001EF50000637573746F6D586D6C2F6974656D50726F7073312E786D6C504B01022D00140006000800000021005D6F88590C0200002F08000012000000000000000000000000005CF60000776F72642F666F6E745461626C652E786D6C504B01022D0014000600080000002100307F0F297B010000CD020000110000000000000000000000000098F80000646F6350726F70732F636F72652E786D6C504B01022D00140006000800000021005725D1528A000000D800000013000000000000000000000000004AFB0000637573746F6D586D6C2F6974656D312E786D6C504B01022D001400060008000000210042AA6DC1600100004F04000014000000000000000000000000002DFC0000776F72642F77656253657474696E67732E786D6C504B01022D0014000600080000002100B7FFF7AEE3010000DF0300001000000000000000000000000000BFFD0000646F6350726F70732F6170702E786D6C504B0506000000001200120097040000D80001000000, 'application/msword', 'personal', '0', 'Admin', '2016-02-18 11:29:11');

-- ----------------------------
-- Table structure for `hs_hr_emp_basicsalary`
-- ----------------------------
DROP TABLE IF EXISTS `hs_hr_emp_basicsalary`;
CREATE TABLE `hs_hr_emp_basicsalary` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `emp_number` int(7) NOT NULL DEFAULT '0',
  `sal_grd_code` int(11) DEFAULT NULL,
  `currency_id` varchar(6) NOT NULL DEFAULT '',
  `ebsal_basic_salary` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `payperiod_code` varchar(13) DEFAULT NULL,
  `salary_component` varchar(100) DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sal_grd_code` (`sal_grd_code`),
  KEY `currency_id` (`currency_id`),
  KEY `emp_number` (`emp_number`),
  KEY `payperiod_code` (`payperiod_code`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hs_hr_emp_basicsalary
-- ----------------------------
INSERT INTO `hs_hr_emp_basicsalary` VALUES ('1', '794', '1', 'PHP', '78B7B116101DE6C358B966733B3C482D', '4', 'Fees', '');

-- ----------------------------
-- Table structure for `hs_hr_emp_children`
-- ----------------------------
DROP TABLE IF EXISTS `hs_hr_emp_children`;
CREATE TABLE `hs_hr_emp_children` (
  `emp_number` int(7) NOT NULL DEFAULT '0',
  `ec_seqno` decimal(2,0) NOT NULL DEFAULT '0',
  `ec_name` varchar(100) DEFAULT NULL,
  `ec_date_of_brith` date DEFAULT NULL,
  PRIMARY KEY (`emp_number`,`ec_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hs_hr_emp_children
-- ----------------------------

-- ----------------------------
-- Table structure for `hs_hr_emp_contract_extend`
-- ----------------------------
DROP TABLE IF EXISTS `hs_hr_emp_contract_extend`;
CREATE TABLE `hs_hr_emp_contract_extend` (
  `emp_number` int(7) NOT NULL,
  `econ_extend_id` decimal(10,0) NOT NULL DEFAULT '0',
  `econ_extend_start_date` datetime DEFAULT NULL,
  `econ_extend_end_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hs_hr_emp_contract_extend
-- ----------------------------

-- ----------------------------
-- Table structure for `hs_hr_emp_dependents`
-- ----------------------------
DROP TABLE IF EXISTS `hs_hr_emp_dependents`;
CREATE TABLE `hs_hr_emp_dependents` (
  `emp_number` int(7) NOT NULL DEFAULT '0',
  `ed_seqno` decimal(2,0) NOT NULL DEFAULT '0',
  `ed_name` varchar(100) DEFAULT NULL,
  `ed_relationship_type` enum('child','other') DEFAULT NULL,
  `ed_relationship` varchar(100) DEFAULT NULL,
  `ed_date_of_birth` date DEFAULT NULL,
  PRIMARY KEY (`emp_number`,`ed_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hs_hr_emp_dependents
-- ----------------------------

-- ----------------------------
-- Table structure for `hs_hr_emp_directdebit`
-- ----------------------------
DROP TABLE IF EXISTS `hs_hr_emp_directdebit`;
CREATE TABLE `hs_hr_emp_directdebit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `salary_id` int(11) NOT NULL,
  `dd_routing_num` int(9) NOT NULL,
  `dd_account` varchar(100) NOT NULL DEFAULT '',
  `dd_amount` decimal(11,2) NOT NULL,
  `dd_account_type` varchar(20) NOT NULL DEFAULT '' COMMENT 'CHECKING, SAVINGS',
  `dd_transaction_type` varchar(20) NOT NULL DEFAULT '' COMMENT 'BLANK, PERC, FLAT, FLATMINUS',
  PRIMARY KEY (`id`),
  KEY `salary_id` (`salary_id`),
  CONSTRAINT `hs_hr_emp_directdebit_ibfk_1` FOREIGN KEY (`salary_id`) REFERENCES `hs_hr_emp_basicsalary` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hs_hr_emp_directdebit
-- ----------------------------
INSERT INTO `hs_hr_emp_directdebit` VALUES ('1', '1', '123456', '123456789', '7000.00', 'SAVINGS', '');

-- ----------------------------
-- Table structure for `hs_hr_emp_emergency_contacts`
-- ----------------------------
DROP TABLE IF EXISTS `hs_hr_emp_emergency_contacts`;
CREATE TABLE `hs_hr_emp_emergency_contacts` (
  `emp_number` int(7) NOT NULL DEFAULT '0',
  `eec_seqno` decimal(2,0) NOT NULL DEFAULT '0',
  `eec_name` varchar(100) DEFAULT NULL,
  `eec_relationship` varchar(100) DEFAULT NULL,
  `eec_home_number` varchar(100) DEFAULT NULL,
  `eec_mobile_number` varchar(100) DEFAULT NULL,
  `eec_office_no` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`emp_number`,`eec_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hs_hr_emp_emergency_contacts
-- ----------------------------

-- ----------------------------
-- Table structure for `hs_hr_emp_history_of_earlier_pos`
-- ----------------------------
DROP TABLE IF EXISTS `hs_hr_emp_history_of_earlier_pos`;
CREATE TABLE `hs_hr_emp_history_of_earlier_pos` (
  `emp_number` int(7) NOT NULL DEFAULT '0',
  `emp_seqno` decimal(2,0) NOT NULL DEFAULT '0',
  `ehoep_job_title` varchar(100) DEFAULT NULL,
  `ehooep_years` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`emp_number`,`emp_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hs_hr_emp_history_of_earlier_pos
-- ----------------------------

-- ----------------------------
-- Table structure for `hs_hr_emp_language`
-- ----------------------------
DROP TABLE IF EXISTS `hs_hr_emp_language`;
CREATE TABLE `hs_hr_emp_language` (
  `emp_number` int(7) NOT NULL DEFAULT '0',
  `lang_id` int(11) NOT NULL,
  `fluency` smallint(6) NOT NULL DEFAULT '0',
  `competency` smallint(6) DEFAULT '0',
  `comments` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`emp_number`,`lang_id`,`fluency`),
  KEY `lang_id` (`lang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hs_hr_emp_language
-- ----------------------------

-- ----------------------------
-- Table structure for `hs_hr_emp_locations`
-- ----------------------------
DROP TABLE IF EXISTS `hs_hr_emp_locations`;
CREATE TABLE `hs_hr_emp_locations` (
  `emp_number` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  PRIMARY KEY (`emp_number`,`location_id`),
  KEY `location_id` (`location_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hs_hr_emp_locations
-- ----------------------------

-- ----------------------------
-- Table structure for `hs_hr_emp_member_detail`
-- ----------------------------
DROP TABLE IF EXISTS `hs_hr_emp_member_detail`;
CREATE TABLE `hs_hr_emp_member_detail` (
  `emp_number` int(7) NOT NULL DEFAULT '0',
  `membship_code` int(6) NOT NULL DEFAULT '0',
  `ememb_subscript_ownership` varchar(20) DEFAULT NULL,
  `ememb_subscript_amount` decimal(15,2) DEFAULT NULL,
  `ememb_subs_currency` varchar(20) DEFAULT NULL,
  `ememb_commence_date` date DEFAULT NULL,
  `ememb_renewal_date` date DEFAULT NULL,
  PRIMARY KEY (`emp_number`,`membship_code`),
  KEY `membship_code` (`membship_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hs_hr_emp_member_detail
-- ----------------------------

-- ----------------------------
-- Table structure for `hs_hr_emp_passport`
-- ----------------------------
DROP TABLE IF EXISTS `hs_hr_emp_passport`;
CREATE TABLE `hs_hr_emp_passport` (
  `emp_number` int(7) NOT NULL DEFAULT '0',
  `ep_seqno` decimal(2,0) NOT NULL DEFAULT '0',
  `ep_passport_num` varchar(100) NOT NULL DEFAULT '',
  `ep_passportissueddate` datetime DEFAULT NULL,
  `ep_passportexpiredate` datetime DEFAULT NULL,
  `ep_comments` varchar(255) DEFAULT NULL,
  `ep_passport_type_flg` smallint(6) DEFAULT NULL,
  `ep_i9_status` varchar(100) DEFAULT '',
  `ep_i9_review_date` date DEFAULT NULL,
  `cou_code` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`emp_number`,`ep_seqno`),
  CONSTRAINT `hs_hr_emp_passport_ibfk_1` FOREIGN KEY (`emp_number`) REFERENCES `hs_hr_employee` (`emp_number`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hs_hr_emp_passport
-- ----------------------------

-- ----------------------------
-- Table structure for `hs_hr_emp_picture`
-- ----------------------------
DROP TABLE IF EXISTS `hs_hr_emp_picture`;
CREATE TABLE `hs_hr_emp_picture` (
  `emp_number` int(7) NOT NULL DEFAULT '0',
  `epic_picture` mediumblob,
  `epic_filename` varchar(100) DEFAULT NULL,
  `epic_type` varchar(50) DEFAULT NULL,
  `epic_file_size` varchar(20) DEFAULT NULL,
  `epic_file_width` varchar(20) DEFAULT NULL,
  `epic_file_height` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`emp_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hs_hr_emp_picture
-- ----------------------------

-- ----------------------------
-- Table structure for `hs_hr_emp_reportto`
-- ----------------------------
DROP TABLE IF EXISTS `hs_hr_emp_reportto`;
CREATE TABLE `hs_hr_emp_reportto` (
  `erep_sup_emp_number` int(7) NOT NULL DEFAULT '0',
  `erep_sub_emp_number` int(7) NOT NULL DEFAULT '0',
  `erep_reporting_mode` int(7) NOT NULL DEFAULT '0',
  PRIMARY KEY (`erep_sup_emp_number`,`erep_sub_emp_number`,`erep_reporting_mode`),
  KEY `erep_sub_emp_number` (`erep_sub_emp_number`),
  KEY `erep_reporting_mode` (`erep_reporting_mode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hs_hr_emp_reportto
-- ----------------------------
INSERT INTO `hs_hr_emp_reportto` VALUES ('1', '788', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('1', '789', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('1', '798', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('2', '789', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '3', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '4', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '5', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '6', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '7', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '8', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '9', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '10', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '11', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '12', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '13', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '14', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '15', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '16', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '17', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '18', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '19', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '20', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '21', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '22', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '23', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '24', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '25', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '26', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '27', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '28', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '29', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '30', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '31', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '32', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '33', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '35', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '36', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '37', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '39', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '40', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '41', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '42', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '43', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '44', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '45', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '46', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '47', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '48', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '49', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '50', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '51', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '52', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '53', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '54', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '55', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '56', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '57', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '58', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '59', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '60', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '61', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '62', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '63', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '64', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '65', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '66', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '67', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '68', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '69', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '70', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '71', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '72', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '73', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '74', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '75', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '76', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '77', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '78', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '79', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '80', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '81', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '82', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '83', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '84', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '85', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '86', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '87', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '88', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '89', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '91', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '92', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '93', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '94', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '95', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '96', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '97', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '98', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '99', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '100', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '101', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '102', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '103', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '104', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '105', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '106', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '107', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '108', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '109', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '110', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '111', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '112', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '113', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '114', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '115', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '116', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '117', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '118', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '119', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '120', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '121', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '122', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '123', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '124', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '125', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '126', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '127', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '128', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '129', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '131', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '132', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '133', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '134', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '135', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '137', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '138', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '139', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '140', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '141', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '142', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '144', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '145', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '146', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '147', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '148', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '149', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '150', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '151', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '152', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '153', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '154', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '155', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '156', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '157', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '158', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '159', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '160', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '161', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '162', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '163', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '164', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '165', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '166', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '167', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '168', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '169', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '171', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '172', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '173', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '174', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '175', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '176', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '177', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '178', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '179', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '180', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '181', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '182', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '183', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '184', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '185', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '186', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '188', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '189', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '190', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '191', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '192', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '193', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '194', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '195', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '196', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '197', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '198', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '199', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '200', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '201', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '202', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '203', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '204', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '205', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '206', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '207', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '209', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '210', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '211', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '212', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '213', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '214', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '215', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '216', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '217', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '219', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '220', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '221', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '222', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '223', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '224', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '225', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '226', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '227', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '228', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '229', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '230', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '231', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '232', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '233', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '234', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '235', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '236', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '237', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '238', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '239', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '240', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '241', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '242', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '243', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '244', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '245', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '246', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '247', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '248', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '249', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '250', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '251', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '253', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '254', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '255', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '256', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '257', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '258', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '259', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '260', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '261', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '262', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '263', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '264', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '265', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '266', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '267', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '268', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '269', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '270', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '271', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '272', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '273', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '274', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '275', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '276', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '277', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '278', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '279', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '280', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '281', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '282', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '283', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '284', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '285', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '286', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '287', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '288', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '289', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '290', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '291', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '292', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '294', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '295', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '296', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '297', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '298', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '299', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '300', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '301', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '302', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '303', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '304', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '305', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '306', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '307', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '308', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '309', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '310', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '311', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '312', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '313', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '314', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '315', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '316', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '317', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '318', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '319', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '320', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '321', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '322', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '323', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '324', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '325', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '326', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '327', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '328', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '329', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '330', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '331', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '332', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '333', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '334', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '335', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '336', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '339', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '340', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '341', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '344', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '345', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '347', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '348', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '349', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '350', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '351', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '352', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '353', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '354', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '355', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '356', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '357', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '358', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '359', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '360', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '361', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '362', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '363', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '364', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '365', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '367', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '368', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '369', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '370', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '372', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '373', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '376', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '379', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '381', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '382', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '383', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '384', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '385', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '386', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '387', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '388', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '390', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '391', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '392', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '394', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '395', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '396', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '397', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '398', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '399', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '401', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '402', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '403', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '404', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '405', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '406', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '407', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '408', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '409', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '410', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '411', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '412', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '413', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '414', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '415', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '416', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '417', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '419', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '420', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '421', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '422', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '423', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '424', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '425', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '426', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '427', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '428', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '430', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '431', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '432', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '433', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '434', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '435', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '436', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '437', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '438', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '439', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '440', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '441', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '442', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '443', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '444', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '445', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '446', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '447', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '448', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '449', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '450', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '451', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '452', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '453', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '454', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '455', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '456', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '457', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '458', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '459', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '462', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '463', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '464', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '465', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '466', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '467', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '468', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '469', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '470', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '471', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '472', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '473', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '474', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '475', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '476', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '477', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '478', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '479', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '480', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '481', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '482', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '484', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '485', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '486', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '487', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '488', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '489', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '490', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '491', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '492', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '493', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '494', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '495', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '496', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '497', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '498', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '499', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '501', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '502', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '503', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '504', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '505', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '506', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '507', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '508', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '509', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '510', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '511', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '512', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '513', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '514', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '515', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '516', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '517', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '518', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '519', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '520', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '521', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '522', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '523', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '524', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '525', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '526', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '527', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '528', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '529', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '531', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '532', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '533', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '534', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '535', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '536', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '537', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '538', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '539', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '540', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '541', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '542', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '543', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '544', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '546', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '547', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '548', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '549', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '550', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '551', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '552', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '795', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '796', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '797', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '799', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '800', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '802', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '803', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '804', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '805', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '806', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '807', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '808', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '809', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '810', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '811', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '812', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '814', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '815', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '816', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '817', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '820', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '823', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '825', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '828', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '831', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '841', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '842', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '843', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '846', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '847', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '848', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '849', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '850', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '851', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '852', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '853', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '854', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '855', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '856', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '857', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '858', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '859', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '860', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '861', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '862', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '863', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '864', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '865', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '866', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '867', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '868', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '869', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '870', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '871', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '872', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '873', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '874', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '875', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '876', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '877', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '878', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '879', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '880', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '881', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '882', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '883', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '884', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '886', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '887', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '888', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '889', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '891', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '892', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '893', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '894', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '895', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '896', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '897', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '898', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '899', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '900', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '901', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '902', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '903', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '904', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '905', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '906', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '907', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '908', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '909', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '910', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '911', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '912', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '913', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '914', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '915', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '916', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '917', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '918', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '919', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '921', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '922', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '923', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '924', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '925', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '926', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '927', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '928', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '929', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '931', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '932', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '933', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '934', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '935', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '936', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '937', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '939', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '940', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '941', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '942', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '943', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '944', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '945', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '946', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '947', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '948', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '949', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '950', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '951', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '952', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '953', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '954', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '955', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '956', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '957', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '958', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '959', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '960', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '961', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '962', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '963', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '964', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '965', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '966', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '967', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '968', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '969', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '970', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '971', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '972', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '973', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '974', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '975', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '977', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '978', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '979', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '980', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '981', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '982', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '983', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '984', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '985', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '986', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '987', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '988', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '989', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '990', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '992', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '993', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '994', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '995', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '996', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '997', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '998', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '999', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '1000', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '1001', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '1002', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '1003', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '1004', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '1005', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '1006', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '1007', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '1008', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '1009', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '1010', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '1011', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '1012', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '1013', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '1014', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '1015', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '1016', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '1017', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '1018', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '1019', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '1020', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '1021', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '1022', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '1023', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '1024', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '1025', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '1026', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '1027', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '1028', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '1029', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '1030', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '1031', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '1032', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '1033', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '1034', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '1035', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '1036', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '1038', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '1039', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '1040', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '1041', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '1042', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '1043', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '1044', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '1045', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '1046', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '1047', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '1048', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '1049', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '1050', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '1051', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '1052', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '1053', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '1054', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '1055', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '1056', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '1057', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '1058', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '1059', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '1062', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '1063', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '1065', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '1066', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '1067', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '1068', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '1071', '2');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '1072', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '1073', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '1074', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '1075', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '1077', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '1078', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '1079', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '1080', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '1081', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '1082', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '1085', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '1086', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '1087', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '1099', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '1100', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '1103', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '1104', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '1105', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '1106', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '1107', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '1108', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '1121', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '1133', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '1135', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '1156', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '1157', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '1160', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '1161', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '1162', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '1165', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '1166', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '1167', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '1168', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '1169', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '1171', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '1172', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '1173', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '1174', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '1175', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '1176', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '1177', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '1178', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '1182', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '1183', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '1229', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '1230', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '1231', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '1232', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('789', '1233', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('790', '691', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('790', '692', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('790', '693', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('790', '694', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('790', '695', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('790', '696', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('790', '697', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('790', '698', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('790', '699', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('790', '700', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('790', '701', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('790', '702', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('790', '703', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('790', '704', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('790', '705', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('790', '706', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('790', '707', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('790', '708', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('790', '709', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('790', '710', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('790', '711', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('790', '712', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('790', '713', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('790', '714', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('790', '715', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('790', '716', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('790', '717', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('790', '718', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('790', '719', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('790', '720', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('790', '721', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('790', '722', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('790', '723', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('790', '724', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('790', '725', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('790', '726', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('790', '727', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('790', '728', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('790', '729', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('790', '730', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('790', '731', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('790', '732', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('790', '733', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('790', '734', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('790', '735', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('790', '736', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('790', '737', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('790', '738', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('790', '739', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('790', '740', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('790', '741', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('790', '742', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('790', '743', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('790', '744', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('790', '745', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('790', '746', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('790', '747', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('790', '748', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('790', '749', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('790', '750', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('790', '751', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('790', '752', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('790', '753', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('790', '754', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('790', '755', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('790', '756', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('790', '757', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('790', '758', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('790', '759', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('790', '760', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('790', '761', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('790', '762', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('790', '763', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('790', '764', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('790', '765', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('790', '766', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('790', '767', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('790', '768', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('790', '769', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('790', '770', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('790', '771', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('790', '772', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('790', '773', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('790', '774', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('790', '775', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('790', '776', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('790', '777', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('790', '778', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('790', '779', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('790', '780', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('790', '781', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('790', '782', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('790', '783', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('790', '784', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('790', '785', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('790', '786', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('790', '787', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('790', '1345', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('790', '1346', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('790', '1347', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('790', '1348', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('790', '1349', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('790', '1350', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('790', '1351', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('790', '1352', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '38', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '252', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '530', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '545', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '553', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '554', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '555', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '556', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '557', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '558', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '559', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '560', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '561', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '562', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '563', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '564', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '565', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '566', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '567', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '568', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '569', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '570', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '571', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '572', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '573', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '574', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '575', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '578', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '579', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '580', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '581', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '582', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '583', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '584', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '585', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '586', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '587', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '588', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '589', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '590', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '591', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '592', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '593', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '594', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '595', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '596', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '597', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '598', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '599', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '600', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '601', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '602', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '603', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '604', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '605', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '606', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '607', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '608', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '609', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '610', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '611', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '612', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '613', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '614', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '615', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '616', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '617', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '618', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '619', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '620', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '621', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '622', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '623', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '624', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '625', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '626', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '627', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '628', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '629', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '630', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '631', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '632', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '633', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '634', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '635', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '636', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '637', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '638', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '639', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '640', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '641', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '642', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '643', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '644', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '645', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '646', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '647', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '648', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '649', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '650', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '651', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '652', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '653', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '654', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '655', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '656', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '657', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '658', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '659', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '660', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '661', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '662', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '663', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '664', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '665', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '666', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '667', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '668', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '669', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '670', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '671', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '672', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '673', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '674', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '675', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '676', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '677', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '678', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '679', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '680', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '681', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '682', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '683', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '684', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '685', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '686', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '687', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '688', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '689', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '690', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '1234', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '1235', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '1236', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '1239', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '1240', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '1241', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '1242', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '1243', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '1244', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '1246', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '1247', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '1248', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '1249', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '1250', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '1251', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '1252', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '1253', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '1254', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '1255', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '1256', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '1257', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '1258', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '1259', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '1260', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '1261', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '1262', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '1263', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '1264', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '1265', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '1267', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '1268', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '1269', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '1270', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '1271', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '1272', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '1273', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '1274', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '1275', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '1276', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '1277', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '1278', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '1279', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '1280', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '1281', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '1282', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '1283', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '1284', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '1285', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '1286', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '1287', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '1288', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '1289', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '1290', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '1291', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '1292', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '1293', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '1294', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '1295', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '1296', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '1297', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '1298', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '1299', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '1300', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '1301', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '1302', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '1303', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '1304', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '1305', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '1306', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '1308', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '1309', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '1310', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '1311', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '1312', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '1313', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '1314', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '1315', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '1316', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '1317', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '1318', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '1319', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '1320', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '1321', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '1322', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '1323', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '1324', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '1325', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '1326', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '1327', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '1329', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '1330', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '1331', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '1332', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '1333', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '1335', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '1337', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '1338', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '1339', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '1340', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '1341', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '1342', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '1343', '1');
INSERT INTO `hs_hr_emp_reportto` VALUES ('791', '1344', '1');

-- ----------------------------
-- Table structure for `hs_hr_emp_skill`
-- ----------------------------
DROP TABLE IF EXISTS `hs_hr_emp_skill`;
CREATE TABLE `hs_hr_emp_skill` (
  `emp_number` int(7) NOT NULL DEFAULT '0',
  `skill_id` int(11) NOT NULL,
  `years_of_exp` decimal(2,0) DEFAULT NULL,
  `comments` varchar(100) NOT NULL DEFAULT '',
  KEY `emp_number` (`emp_number`),
  KEY `skill_id` (`skill_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hs_hr_emp_skill
-- ----------------------------

-- ----------------------------
-- Table structure for `hs_hr_emp_us_tax`
-- ----------------------------
DROP TABLE IF EXISTS `hs_hr_emp_us_tax`;
CREATE TABLE `hs_hr_emp_us_tax` (
  `emp_number` int(7) NOT NULL DEFAULT '0',
  `tax_federal_status` varchar(13) DEFAULT NULL,
  `tax_federal_exceptions` int(2) DEFAULT '0',
  `tax_state` varchar(13) DEFAULT NULL,
  `tax_state_status` varchar(13) DEFAULT NULL,
  `tax_state_exceptions` int(2) DEFAULT '0',
  `tax_unemp_state` varchar(13) DEFAULT NULL,
  `tax_work_state` varchar(13) DEFAULT NULL,
  PRIMARY KEY (`emp_number`),
  CONSTRAINT `hs_hr_emp_us_tax_ibfk_1` FOREIGN KEY (`emp_number`) REFERENCES `hs_hr_employee` (`emp_number`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hs_hr_emp_us_tax
-- ----------------------------

-- ----------------------------
-- Table structure for `hs_hr_emp_work_experience`
-- ----------------------------
DROP TABLE IF EXISTS `hs_hr_emp_work_experience`;
CREATE TABLE `hs_hr_emp_work_experience` (
  `emp_number` int(7) NOT NULL DEFAULT '0',
  `eexp_seqno` decimal(10,0) NOT NULL DEFAULT '0',
  `eexp_employer` varchar(100) DEFAULT NULL,
  `eexp_jobtit` varchar(120) DEFAULT NULL,
  `eexp_from_date` datetime DEFAULT NULL,
  `eexp_to_date` datetime DEFAULT NULL,
  `eexp_comments` varchar(200) DEFAULT NULL,
  `eexp_internal` int(1) DEFAULT NULL,
  PRIMARY KEY (`emp_number`,`eexp_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hs_hr_emp_work_experience
-- ----------------------------
INSERT INTO `hs_hr_emp_work_experience` VALUES ('25', '1', ' - Optis Phil. Inc.', 'Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('38', '1', 'IM DIGITAL ', ' Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('100', '1', '  Optis Phil. Inc.', 'Production Operator ', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('101', '1', 'Epson', 'Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('112', '1', ' Epson', 'Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('252', '1', 'IM DIGITAL ', 'FVI', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('256', '1', 'Shen Heung', 'Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('296', '1', 'Epson Precision Inc.', ' Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('304', '1', 'Prime Micro Electronics Inc.', ' Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('307', '1', 'Kyouritsu Electronics Philippines Inc.', ' Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('316', '1', 'Shen Han ', 'T.P.M. Treamer Presser and Marking', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('334', '1', 'Savemore Market Inc.', 'Merchandiser', null, '2015-08-21 00:00:00', '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('353', '1', ' SM Supermarket', 'North Star Merchandiser', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('354', '1', 'Totoku ', ' Inspector', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('356', '1', 'Hoya Lens Manufacturing Philippines ', ' Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('357', '1', 'Cosmo Medical Inc.', 'Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('358', '1', 'Pacific Mall ', '- Tenant', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('362', '1', 'Vine Dresser - SG', 'Vine Dresser - SG', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('367', '1', 'Mitsuba Phils. Corp. ', '- Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('385', '1', 'Rowel Can Company', 'Sorter', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('401', '1', 'Prifood -', ' Packer', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('413', '1', 'Yazaki Torres', ' Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('416', '1', 'Toshiba', ' Media Inspector', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('457', '1', 'Yazaki Torres ', ' Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('473', '1', 'Herper\'s Garments Corp.', 'Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('482', '1', 'PMHI ', ' Promo Girl', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('488', '1', 'Shinetsu Magneticas Phil. Inc. ', '- Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('494', '1', 'URC-Universal Robina Company ', '- Production Worker', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('501', '1', 'Crestec Philippines Inc. ', ' QA/Q-C', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('504', '1', 'Maxim - ', 'Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('506', '1', 'June Lai Metal ', 'Warehouse', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('513', '1', 'Aikawa Phils. Inc. ', '- Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('515', '1', 'Inoac Phil. Corp. ', '- Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('518', '1', 'Goldenfield ', '- Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('529', '1', 'Art Nature Manufacturing Phils.', ' - Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('530', '1', 'IM DIGITAL ', 'Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('532', '1', 'Mercogean Farmacy -', ' Sales Lady', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('537', '1', 'RTS Toolmaker Technology -', ' Secretary', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('540', '1', 'Ambrosio Catering -', ' Kitchen Staff', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('545', '1', 'IM DIGITAL ', ' Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('554', '1', 'RBC FIRST BAKER CORP. ', ' Factory worker', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('558', '1', 'IBIDEN PHIL INC ', '- Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('559', '1', 'NEC TOKIN - ', 'Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('561', '1', 'INT\'L FAREMO GARMENTS ', '- Helper', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('563', '1', 'INT\'L FAREMO GARMENTS', ' - Helper', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('568', '1', 'TABA\'S STORE ', ' Sale\'s Lady', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('575', '1', 'OPTIS PHILS INC. ', ' First Visual', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('582', '1', 'Hysonic -', 'Production operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('584', '1', 'Hysonic ', ' production operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('585', '1', 'ROBINSONS MALL ', 'Sales Clerk', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('592', '1', 'CRYSTAL SPRING CALAMBA ', ' Information Desk', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('600', '1', 'CCP ', '- Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('603', '1', 'NIDEC COPAL PHIL. CORP ', ' Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('607', '1', 'Epson Precision Philippines Inc. ', 'Quality Cintrol Scanning', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('612', '1', 'KEPPEL SUBIC ', '- Welder/Electrical and Instrument', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('613', '1', 'BOUNTY FRESH CHICKEN ', '- Production Clean Area', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('618', '1', 'TOSHIBA ', 'Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('619', '1', 'IMI -', 'Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('620', '1', 'N.Y GARMENTS ', ' Service girl', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('626', '1', 'ASI ', ' Computer Technician', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('627', '1', 'Samsung - ', 'Quality Inspector', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('640', '1', 'CARINA APPAREL ', ' Sewer', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('645', '1', 'Moatech ', '- Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('651', '1', 'Epson Precision Philippines Inc. ', ' Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('653', '1', 'IM - DIGITAL ', '- FVI', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('654', '1', 'Hysonic Phil. Inc. -', 'Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('656', '1', 'BELLA DONNA BAGS ', 'Sales Lady', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('659', '1', 'Prime Micro Electronics Inc.', 'Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('660', '1', 'Panasonic Communication Corp.of the Phils ', 'Production operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('661', '1', 'Universal Robina Corp', '-Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('667', '1', 'Aikawa PHIL ', ' Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('673', '1', ' San Vicente Garments', 'N.Y', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('685', '1', 'LEE - Muere Dentist ', '- Assistant', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('686', '1', 'PASIG INDUSTRIAL INC ', '- Production operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('695', '1', 'Juntec Corp.', ' Visual Inspector', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('697', '1', 'Juntec Corp.', 'Visual Inspector', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('700', '1', 'Argentina', 'Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('701', '1', 'Showa Polymer Process Corp.', 'Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('703', '1', 'ETON PROPERTIES PHILIPPINES INC.', 'Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('721', '1', 'Showa Polymer Process Corp.', 'Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('722', '1', 'Argentina', 'Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('726', '1', 'Showa Polymer Process Corp.', ' Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('763', '1', 'GLADES', 'Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('764', '1', 'Bank of Makati- ', 'Desk Credit Investigator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('795', '1', 'Xavier Technical Training Center', 'Electronics', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('796', '1', 'NY San Felix', 'Training Sewer', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('802', '1', 'Epson', ' Production Operartor', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('805', '2', 'Avon ', '- Saleslady', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('806', '1', 'Masters Square Supermarket ', 'Sales Lady', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('807', '1', 'OPTIS', 'production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('808', '1', 'Prime Micro Electronics Inc.', 'production operation', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('809', '1', 'Mizaki ', 'Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('810', '1', 'Austria Metal Works ', 'Helper', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('811', '1', 'Toy Academy', 'Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('812', '1', 'Prime Micro Electronics ', 'Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('814', '1', 'EPSON', 'Production Operator ', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('817', '1', 'Fujitsu', 'Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('825', '1', 'Prifood ', ' Packer', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('828', '1', 'Fuji Industries Manila Corporation', ' Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('841', '1', 'The Landmark Corp. ', ' Sales Utility Clerk', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('843', '1', 'Canon -', ' Inspector', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('847', '1', 'Epson Precision Phils-', 'Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('849', '1', 'Yazaki - Torres Manufacturing Inc. ', '- Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('850', '1', 'Farroncinno Cafe ', '- Barista', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('851', '1', 'Yazaki - Torres Manufacturing Inc.', ' - Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('853', '1', 'Canon ', ' Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('855', '1', 'Optoline Manufacturing Phils. Inc.', 'Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('856', '1', 'Koyo Manufacturing Phils.', 'Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('857', '1', 'Namyang LTD Corp.', ' Checker', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('858', '1', 'Willbros Marketing ', ' Delivery Checker', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('860', '1', 'Skyrider pizza Galore - ', 'Crew', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('862', '1', 'Epson Precision Phils. Inc. ', 'Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('863', '1', 'Aguila Beach Resort ', '- Service Crew', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('864', '1', 'Newlife Poultry Supply ', ' Sales Lady', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('867', '1', 'SM Lucena City ', ' Sales Clerk', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('870', '1', 'Weltanchaung Corporation ', ' Payroll Staff', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('871', '1', 'Yazaki Torres ', ' Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('872', '1', 'Hysonic', ' Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('873', '1', 'Epson', ' Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('874', '1', 'North Point Development Bank', 'Financial Consultant', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('876', '1', 'Yazaki Torres -', ' Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('877', '1', 'Mitsumi ', 'Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('878', '1', 'NHK Spring Phils. ', 'Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('879', '1', 'Cal-Comp Technology ', ' Inspector', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('880', '1', 'Furukawa ', 'Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('881', '1', 'Hysonic ', 'Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('883', '1', 'Daiho Phils, Inc. ', '- Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('888', '1', 'OPTIS ', '- production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('890', '1', 'Greenwich', ' Service Crew', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('891', '1', 'Nippon ', 'Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('894', '1', 'Innotor Philippine Inc.', 'Production Operator ', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('897', '1', 'Service Resource Incorporated', 'Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('903', '1', 'Yehun Telecome Philippines', 'Inspector', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('905', '1', 'YKK Philippines', '  Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('906', '1', 'Epson Precision Philippines Inc. ', ' QA', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('907', '1', 'Applied Machining Corporation ', 'Purchasing', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('910', '1', 'Nectokin Electronics phils. Inc.', 'Encoder', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('911', '1', 'Sack cacking Corporation ', ' Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('912', '1', 'Yazaki Torres ', ' Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('913', '1', 'Canon ', ' Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('918', '1', 'Panasonic Precision Devices ', '- Prod Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('919', '1', 'Uni-President Phil. Corporation', 'Production Worker', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('921', '1', 'Yazaki-Torres MFG.', 'Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('922', '1', 'Moatech ', 'Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('925', '1', 'Optis Philippines Inc. ', '- Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('926', '1', 'Century Home Center', 'Sales lady', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('928', '1', 'Shenie ', 'Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('929', '1', 'Canon Business Machines Philippines Inc. ', ' Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('930', '1', 'Tsukiden Electronics Philippines Inc. ', 'Encoder', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('932', '1', 'Optis Philippines Inc. ', 'Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('934', '1', 'Hysonic Phil. Inc. -', ' O.P', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('935', '1', 'Ryonan Electric Phil. Corp. ', ' Q.A/ Inspector', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('939', '1', 'J and J Phil Corp.', 'Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('940', '1', 'Canon ', ' Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('942', '1', 'Prime Micro Electronics', 'Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('943', '1', 'Epson -', ' Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('944', '1', 'Epson ', ' Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('946', '1', 'Eun Hye', 'QC Recorder', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('947', '1', 'KFC', '-Cashier', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('948', '1', 'AZ Contacting Service System ', ' Inspector', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('949', '1', 'Nidec Phil. Corp.', ' Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('951', '1', 'Fuji Industries Manila Corp. ', 'QC Inspector', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('952', '1', 'Toshiba ', ' Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('953', '1', 'Red Apple ', 'Sales Lady', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('954', '1', 'Canon ', ' Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('955', '1', 'Canon Business Machines Philippines Inc. ', ' - Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('956', '1', 'NXP Semiconductor ', ' Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('957', '1', 'Ibiden ', 'Inspector', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('958', '1', 'Kyoritsu ', ' Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('959', '1', 'Optis Phils. Inc.', '- Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('960', '1', 'Optis Phils. Inc. ', ' Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('961', '1', 'Nec/tokin Electronics Philippines ', '- Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('962', '1', 'Vilma\'s Eatery', ' - Waitress', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('963', '1', 'Brothers ', ' Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('967', '1', 'Artesyn Embedded Technologies', 'Warehouse Assistant', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('972', '1', 'Honda ', 'Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('973', '1', 'Silverfoil Tubes International Inc.', 'Latcher', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('977', '1', 'Brother Industries Phils. Inc. - ', '- Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('978', '1', 'Moatech ', ' Inspector', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('979', '1', 'Citimart ', 'Service Staff', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('980', '1', 'CVM Pointer Electronics', ' - Secretary', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('981', '1', 'Agoo Polyclinic ', ' Volunteer Nurse', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('985', '1', 'Furukawa ', ' Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('986', '1', 'Maxim Itegrated Phils ', 'Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('987', '1', 'Franks N\' Burger ', '- Service Crew', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('988', '1', 'Prime Micro Electronics', ' Inspector', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('989', '1', 'Container Board and Packaging Inc. ', '- Warehouse', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('990', '1', 'Jollibee -', 'Service Crew', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('992', '1', 'Enkei Philippines ', 'Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('993', '1', 'PKI', ' - Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('994', '1', 'Hysonic Phil. Inc', ' Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('995', '1', 'Yazaki - Torres Manufacturing Inc.', ' Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('998', '1', '24/7 Support Services ', 'Non Voice Agent', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('999', '1', 'Hysonic ', '- Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1001', '1', 'Government Internship Program', 'Production Operator ', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1002', '1', ' Shinei Industry Phils. Corp ', 'Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1006', '1', 'Brother Industries Phils. Inc.', 'Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1008', '1', 'Optis Philippines Inc. ', ' production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1009', '1', 'Epson Precision Inc.', ' Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1010', '1', 'Epson Precision Philippines Inc. ', ' Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1012', '1', 'Holy Child of Mary College ', '- Teacher', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1013', '1', 'First Sumiden Circuit Inc. ', '- Inspector', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1014', '1', 'Epson.', 'Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1015', '1', 'Epson ', ' Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1016', '1', 'Integrated Microelectronics Inc. ', '- production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1019', '1', 'OPTIS', '- production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1022', '1', 'Sun Power  Phils. ', '- Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1023', '1', 'Epson', ' - Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1025', '1', 'Epson -', 'Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1027', '1', 'Yazaki-Torres ', '- Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1028', '1', 'Fast Logistic Corporation -', ' Warehouseman', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1031', '1', 'Executive Facial Care ', 'Staff', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1032', '1', 'Yazaki-Torres ', ' Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1033', '1', 'Hewtech', ' Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1034', '1', 'Epson Precision Philippines Inc. ', '- Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1036', '1', 'Sunglim ', ' QC', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1040', '1', 'Larah Salon  ', 'Cashier', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1042', '1', '3fTrade Center Mart ', ' Sales Clerk', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1044', '1', 'Epson Precision Philippines Inc. ', '- Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1045', '1', 'B\'zen Spa ', '- Therapist', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1046', '1', 'Samsung - ', 'Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1049', '1', 'Art Nature Manufacturing Phils. ', 'Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1050', '1', 'Art Nature Manufacturing Phils. ', '- Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1054', '1', 'Pampanga\'s Best Inc.', '- Packaging Crew', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1056', '1', 'Purio\'s Ice cream - ', 'Service Crew', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1059', '1', 'Epson ', '- Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1062', '1', 'Ibiden -', 'Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1067', '1', 'Hysonic -', ' Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1068', '1', 'Hysonic ', ' Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1071', '1', 'Toshiba ', '- Inspector', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1072', '1', 'Sung Shim Medical Inc ', ' Production Worker', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1073', '1', 'Production Operator ', 'Philinak', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1074', '1', ' Farmers', 'Sales Lady -', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1075', '1', 'Optis Phil. Inc.', 'Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1077', '1', 'Checker ', '- SM', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1080', '1', ' Gaisano Grand Group Of Companies', 'Cashier', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1082', '1', ' Alpha Tech.', 'Food Handler ', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1085', '1', 'Yazaki Torres -', 'Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1086', '1', 'Yong Shin Precision Interphils.,Inc. ', ' Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1100', '1', 'Calansayan San Jose Batangas ', 'Sewer', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1103', '1', 'Greenwich ', ' Service Crew', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1104', '1', 'Yazaki Torres', 'Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1108', '1', 'Tsukiden Electronics Philippines Inc. ', 'Encoder', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1121', '1', 'Epson Precision Philippines Inc. ', ' Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1133', '1', 'Hysonic -', ' Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1135', '1', 'PKI', '- Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1161', '1', 'Acabar Marketing Nat. Inc. ', ' Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1162', '1', 'Brother Industries Phils. Inc. - ', '- Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1165', '1', 'Canon -', ' Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1166', '1', 'Jideco Manufacturing Phil. Inc ', '- Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1169', '1', 'All About It Enterprise -', ' - Clerk', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1171', '1', 'Mitsuba Phils. Corp. ', ' Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1179', '1', '  Optis Phil. Inc.', 'Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1182', '1', 'Panasonic Precision Devices ', 'Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1229', '1', 'Yazaki Torre Manufacturing Inc', '. - Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1230', '1', 'Yazaki Torre Manufacturing Inc. -', ' Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1231', '1', 'Mitsuba Phils. Corp. ', 'Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1234', '1', 'KABISIG WORKERS COOPERATIVE ', 'Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1235', '1', 'CDO- ', 'Pagkaging crew', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1236', '1', 'IM DIGITAL', 'fvi', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1239', '1', '8Gold Manpower Services', 'Field Coordinator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1240', '1', 'IM - DIGITAL ', '- Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1242', '1', 'N.Y San Felix ', ' QC', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1243', '1', 'GABBY\'S MARKET ', ' Packer', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1247', '1', 'OPTIS -', 'Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1248', '1', 'DH-Singapore', 'DH-Singapore', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1249', '1', '-Laws Textile', 'Linker', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1250', '1', 'Elite Motiff Enterprise', 'OFFICE CLERK ', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1251', '1', 'NY SAN FELIX LTD CORP', 'Sewer', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1252', '1', 'DUKES FOOD ', 'Machine Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1253', '1', 'DUKES FOOD ', ' Machine Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1254', '1', 'OPTIS', ' QC', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1255', '1', 'IM DIGITAL ', ' Production Operation', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1256', '1', 'Hysonic -', 'production operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1257', '1', 'UAM PHIL ', '- Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1258', '1', 'ANGEL KEYPAD MANPOWER SERVICES ', 'Pinner', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1261', '1', 'KINPO ELECTRONICS INC -', ' Internal Auditor', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1262', '1', 'KINPO ELECTRONICS INC -', 'QA', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1264', '1', '- Casablanca Casino', 'Internal Security Officer ', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1265', '1', 'CANON - ', 'QA/QC', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1267', '1', 'NATA DE COCO FACTORY ', '- Factory Worker', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1268', '1', 'NEWLY POULTRY SUPPLY ', 'Sales Lady', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1269', '1', 'IM - DIGITAL ', '- Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1270', '1', 'PRIME ', ' FVI', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1271', '1', 'DAIHO ', 'Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1272', '1', 'Daiho Phils, Inc. ', '- Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1274', '1', 'Moatech ', ' Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1275', '1', 'DEVICE DYNAMICS ASIA PHIL ', '- FVI', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1276', '1', 'KINPO ELECTRONICS INC -', '- Production', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1277', '1', 'TAKATA PHIL CORP ', ' Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1278', '1', 'PHIL NURIAN GARMENT INC ', 'Sample Maker', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1281', '1', 'IM DIGITAL ', ' Production Operation', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1282', '1', 'IM DIGITAL ', '- Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1283', '1', 'NY SAN FELIX LTD CORP', ' Dress Making', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1284', '1', 'J&J Phil ', '- Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1285', '1', 'IBIDEN -', 'Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1286', '1', 'IM - DIGITAL ', 'production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1287', '1', 'BROTHER INC- ', 'Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1288', '1', 'IM DIGITAL ', ' Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1289', '1', 'IM DIGITAL ', 'Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1290', '1', 'OPTIS ', '- Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1291', '1', 'EPSON -', 'Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1292', '1', 'IM - DIGITAL ', ' Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1293', '1', 'Panasonic Precision Devices ', '- Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1294', '1', 'IM DIGITAL ', ' Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1300', '1', 'IM - DIGITAL ', ' Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1301', '1', 'IM DIGITAL', '- Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1302', '1', 'IM DIGITAL ', ' Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1304', '1', 'IBIDEN IBIDEN ', '- Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1305', '1', 'IBIDEN ', 'Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1308', '1', 'FLY SHADES', 'Coordinator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1309', '1', 'Ibiden', '- Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1311', '1', 'POWERLANE', ' - Production Crew', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1312', '1', 'PANSONIC ', '- Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1313', '1', 'BROTHER INC', '-FVI', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1314', '1', 'S.Point Incorporation ', '- Checker', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1315', '1', 'COLLETES BUKO PIE ', ' Sales Lady', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1316', '1', 'CANON', ' - Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1317', '1', 'KAY LINES DRY GOOD STORE ', ' Sales Lady', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1318', '1', 'BELTON TOTOKU ', 'Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1319', '1', 'Sanford Marketing Corp ', ' Cashier', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1321', '1', 'NANUS TECH ELECTRONIC CORP ', '- Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1322', '1', 'IM DIGITAL ', ' Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1323', '1', 'KINPO ', ' Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1324', '1', 'TABA\'S STORE ', 'Sale\'s Lady', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1326', '1', 'KABISIG WORKERS COOPERATIVE ', ' Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1327', '1', 'IM DIGITAL ', '-fvi', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1329', '1', 'H & E Manufacturing Corporation ', ' Machine Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1330', '1', 'IM - DIGITAL ', '- Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1331', '1', 'YONG SHIN ', ' Inspector', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1332', '1', 'FLAVY\'S INTERNET ', 'Cashier', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1333', '1', 'ON TIME COMPANY ', ' Finishing', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1335', '1', 'IM - DIGITAL -', ' Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1337', '1', 'SANMARU ', '- Inspector', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1338', '1', 'SANMARU ', ' Inspector', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1339', '1', 'SANMARU -', ' Inspector', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1340', '1', 'SANMARU ', ' Inspector', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1341', '1', 'SANMARU ', 'Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1343', '1', 'SANMARU ', ' Production Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1344', '1', 'Tan Square Food Services ', ' Cashier', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1346', '1', 'Daiwa Seiko Phil. ', 'Q.C', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1347', '1', 'GLADES Int.-', ' Packer', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1348', '1', 'NIDEC Phil.', 'Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1350', '1', 'SHOWA ', ' Machine Operator', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1351', '1', 'SELAIR MFG. CORP.', 'Inspector', null, null, '', null);
INSERT INTO `hs_hr_emp_work_experience` VALUES ('1352', '1', 'Glades International Corp.', ' Production Operator', null, null, '', null);

-- ----------------------------
-- Table structure for `hs_hr_jobtit_empstat`
-- ----------------------------
DROP TABLE IF EXISTS `hs_hr_jobtit_empstat`;
CREATE TABLE `hs_hr_jobtit_empstat` (
  `jobtit_code` int(7) NOT NULL,
  `estat_code` int(13) NOT NULL,
  PRIMARY KEY (`jobtit_code`,`estat_code`),
  KEY `estat_code` (`estat_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hs_hr_jobtit_empstat
-- ----------------------------

-- ----------------------------
-- Table structure for `hs_hr_mailnotifications`
-- ----------------------------
DROP TABLE IF EXISTS `hs_hr_mailnotifications`;
CREATE TABLE `hs_hr_mailnotifications` (
  `user_id` int(20) NOT NULL,
  `notification_type_id` int(11) NOT NULL,
  `status` int(2) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  KEY `user_id` (`user_id`),
  KEY `notification_type_id` (`notification_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hs_hr_mailnotifications
-- ----------------------------

-- ----------------------------
-- Table structure for `hs_hr_module`
-- ----------------------------
DROP TABLE IF EXISTS `hs_hr_module`;
CREATE TABLE `hs_hr_module` (
  `mod_id` varchar(36) NOT NULL DEFAULT '',
  `name` varchar(45) DEFAULT NULL,
  `owner` varchar(45) DEFAULT NULL,
  `owner_email` varchar(100) DEFAULT NULL,
  `version` varchar(36) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`mod_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hs_hr_module
-- ----------------------------
INSERT INTO `hs_hr_module` VALUES ('MOD001', 'Admin', 'OrangeHRM', 'info@orangehrm.com', 'VER001', 'HR Admin');
INSERT INTO `hs_hr_module` VALUES ('MOD002', 'PIM', 'OrangeHRM', 'info@orangehrm.com', 'VER001', 'HR Functions');
INSERT INTO `hs_hr_module` VALUES ('MOD004', 'Report', 'OrangeHRM', 'info@orangehrm.com', 'VER001', 'Reporting');
INSERT INTO `hs_hr_module` VALUES ('MOD005', 'Leave', 'OrangeHRM', 'info@orangehrm.com', 'VER001', 'Leave Tracking');
INSERT INTO `hs_hr_module` VALUES ('MOD006', 'Time', 'OrangeHRM', 'info@orangehrm.com', 'VER001', 'Time Tracking');
INSERT INTO `hs_hr_module` VALUES ('MOD007', 'Benefits', 'OrangeHRM', 'info@orangehrm.com', 'VER001', 'Benefits Tracking');
INSERT INTO `hs_hr_module` VALUES ('MOD008', 'Recruitment', 'OrangeHRM', 'info@orangehrm.com', 'VER001', 'Recruitment');
INSERT INTO `hs_hr_module` VALUES ('MOD009', 'Performance', 'OrangeHRM', 'info@orangehrm.com', 'VER001', 'Performance');

-- ----------------------------
-- Table structure for `hs_hr_payperiod`
-- ----------------------------
DROP TABLE IF EXISTS `hs_hr_payperiod`;
CREATE TABLE `hs_hr_payperiod` (
  `payperiod_code` varchar(13) NOT NULL DEFAULT '',
  `payperiod_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`payperiod_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hs_hr_payperiod
-- ----------------------------
INSERT INTO `hs_hr_payperiod` VALUES ('1', 'Weekly');
INSERT INTO `hs_hr_payperiod` VALUES ('2', 'Bi Weekly');
INSERT INTO `hs_hr_payperiod` VALUES ('3', 'Semi Monthly');
INSERT INTO `hs_hr_payperiod` VALUES ('4', 'Monthly');
INSERT INTO `hs_hr_payperiod` VALUES ('5', 'Monthly on first pay of month.');
INSERT INTO `hs_hr_payperiod` VALUES ('6', 'Hourly');

-- ----------------------------
-- Table structure for `hs_hr_pay_period`
-- ----------------------------
DROP TABLE IF EXISTS `hs_hr_pay_period`;
CREATE TABLE `hs_hr_pay_period` (
  `id` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `close_date` date NOT NULL,
  `check_date` date NOT NULL,
  `timesheet_aproval_due_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hs_hr_pay_period
-- ----------------------------

-- ----------------------------
-- Table structure for `hs_hr_province`
-- ----------------------------
DROP TABLE IF EXISTS `hs_hr_province`;
CREATE TABLE `hs_hr_province` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `province_name` varchar(40) NOT NULL DEFAULT '',
  `province_code` char(2) NOT NULL DEFAULT '',
  `cou_code` char(2) NOT NULL DEFAULT 'us',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hs_hr_province
-- ----------------------------
INSERT INTO `hs_hr_province` VALUES ('1', 'Alaska', 'AK', 'US');
INSERT INTO `hs_hr_province` VALUES ('2', 'Alabama', 'AL', 'US');
INSERT INTO `hs_hr_province` VALUES ('3', 'American Samoa', 'AS', 'US');
INSERT INTO `hs_hr_province` VALUES ('4', 'Arizona', 'AZ', 'US');
INSERT INTO `hs_hr_province` VALUES ('5', 'Arkansas', 'AR', 'US');
INSERT INTO `hs_hr_province` VALUES ('6', 'California', 'CA', 'US');
INSERT INTO `hs_hr_province` VALUES ('7', 'Colorado', 'CO', 'US');
INSERT INTO `hs_hr_province` VALUES ('8', 'Connecticut', 'CT', 'US');
INSERT INTO `hs_hr_province` VALUES ('9', 'Delaware', 'DE', 'US');
INSERT INTO `hs_hr_province` VALUES ('10', 'District of Columbia', 'DC', 'US');
INSERT INTO `hs_hr_province` VALUES ('11', 'Federated States of Micronesia', 'FM', 'US');
INSERT INTO `hs_hr_province` VALUES ('12', 'Florida', 'FL', 'US');
INSERT INTO `hs_hr_province` VALUES ('13', 'Georgia', 'GA', 'US');
INSERT INTO `hs_hr_province` VALUES ('14', 'Guam', 'GU', 'US');
INSERT INTO `hs_hr_province` VALUES ('15', 'Hawaii', 'HI', 'US');
INSERT INTO `hs_hr_province` VALUES ('16', 'Idaho', 'ID', 'US');
INSERT INTO `hs_hr_province` VALUES ('17', 'Illinois', 'IL', 'US');
INSERT INTO `hs_hr_province` VALUES ('18', 'Indiana', 'IN', 'US');
INSERT INTO `hs_hr_province` VALUES ('19', 'Iowa', 'IA', 'US');
INSERT INTO `hs_hr_province` VALUES ('20', 'Kansas', 'KS', 'US');
INSERT INTO `hs_hr_province` VALUES ('21', 'Kentucky', 'KY', 'US');
INSERT INTO `hs_hr_province` VALUES ('22', 'Louisiana', 'LA', 'US');
INSERT INTO `hs_hr_province` VALUES ('23', 'Maine', 'ME', 'US');
INSERT INTO `hs_hr_province` VALUES ('24', 'Marshall Islands', 'MH', 'US');
INSERT INTO `hs_hr_province` VALUES ('25', 'Maryland', 'MD', 'US');
INSERT INTO `hs_hr_province` VALUES ('26', 'Massachusetts', 'MA', 'US');
INSERT INTO `hs_hr_province` VALUES ('27', 'Michigan', 'MI', 'US');
INSERT INTO `hs_hr_province` VALUES ('28', 'Minnesota', 'MN', 'US');
INSERT INTO `hs_hr_province` VALUES ('29', 'Mississippi', 'MS', 'US');
INSERT INTO `hs_hr_province` VALUES ('30', 'Missouri', 'MO', 'US');
INSERT INTO `hs_hr_province` VALUES ('31', 'Montana', 'MT', 'US');
INSERT INTO `hs_hr_province` VALUES ('32', 'Nebraska', 'NE', 'US');
INSERT INTO `hs_hr_province` VALUES ('33', 'Nevada', 'NV', 'US');
INSERT INTO `hs_hr_province` VALUES ('34', 'New Hampshire', 'NH', 'US');
INSERT INTO `hs_hr_province` VALUES ('35', 'New Jersey', 'NJ', 'US');
INSERT INTO `hs_hr_province` VALUES ('36', 'New Mexico', 'NM', 'US');
INSERT INTO `hs_hr_province` VALUES ('37', 'New York', 'NY', 'US');
INSERT INTO `hs_hr_province` VALUES ('38', 'North Carolina', 'NC', 'US');
INSERT INTO `hs_hr_province` VALUES ('39', 'North Dakota', 'ND', 'US');
INSERT INTO `hs_hr_province` VALUES ('40', 'Northern Mariana Islands', 'MP', 'US');
INSERT INTO `hs_hr_province` VALUES ('41', 'Ohio', 'OH', 'US');
INSERT INTO `hs_hr_province` VALUES ('42', 'Oklahoma', 'OK', 'US');
INSERT INTO `hs_hr_province` VALUES ('43', 'Oregon', 'OR', 'US');
INSERT INTO `hs_hr_province` VALUES ('44', 'Palau', 'PW', 'US');
INSERT INTO `hs_hr_province` VALUES ('45', 'Pennsylvania', 'PA', 'US');
INSERT INTO `hs_hr_province` VALUES ('46', 'Puerto Rico', 'PR', 'US');
INSERT INTO `hs_hr_province` VALUES ('47', 'Rhode Island', 'RI', 'US');
INSERT INTO `hs_hr_province` VALUES ('48', 'South Carolina', 'SC', 'US');
INSERT INTO `hs_hr_province` VALUES ('49', 'South Dakota', 'SD', 'US');
INSERT INTO `hs_hr_province` VALUES ('50', 'Tennessee', 'TN', 'US');
INSERT INTO `hs_hr_province` VALUES ('51', 'Texas', 'TX', 'US');
INSERT INTO `hs_hr_province` VALUES ('52', 'Utah', 'UT', 'US');
INSERT INTO `hs_hr_province` VALUES ('53', 'Vermont', 'VT', 'US');
INSERT INTO `hs_hr_province` VALUES ('54', 'Virgin Islands', 'VI', 'US');
INSERT INTO `hs_hr_province` VALUES ('55', 'Virginia', 'VA', 'US');
INSERT INTO `hs_hr_province` VALUES ('56', 'Washington', 'WA', 'US');
INSERT INTO `hs_hr_province` VALUES ('57', 'West Virginia', 'WV', 'US');
INSERT INTO `hs_hr_province` VALUES ('58', 'Wisconsin', 'WI', 'US');
INSERT INTO `hs_hr_province` VALUES ('59', 'Wyoming', 'WY', 'US');
INSERT INTO `hs_hr_province` VALUES ('60', 'Armed Forces Africa', 'AE', 'US');
INSERT INTO `hs_hr_province` VALUES ('61', 'Armed Forces Americas (except Canada)', 'AA', 'US');
INSERT INTO `hs_hr_province` VALUES ('62', 'Armed Forces Canada', 'AE', 'US');
INSERT INTO `hs_hr_province` VALUES ('63', 'Armed Forces Europe', 'AE', 'US');
INSERT INTO `hs_hr_province` VALUES ('64', 'Armed Forces Middle East', 'AE', 'US');
INSERT INTO `hs_hr_province` VALUES ('65', 'Armed Forces Pacific', 'AP', 'US');

-- ----------------------------
-- Table structure for `hs_hr_unique_id`
-- ----------------------------
DROP TABLE IF EXISTS `hs_hr_unique_id`;
CREATE TABLE `hs_hr_unique_id` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `last_id` int(10) unsigned NOT NULL,
  `table_name` varchar(50) NOT NULL,
  `field_name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `table_field` (`table_name`,`field_name`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hs_hr_unique_id
-- ----------------------------
INSERT INTO `hs_hr_unique_id` VALUES ('1', '1353', 'hs_hr_employee', 'emp_number');
INSERT INTO `hs_hr_unique_id` VALUES ('2', '9', 'hs_hr_module', 'mod_id');
INSERT INTO `hs_hr_unique_id` VALUES ('3', '0', 'hs_hr_leave', 'leave_id');
INSERT INTO `hs_hr_unique_id` VALUES ('4', '0', 'hs_hr_leavetype', 'leave_type_id');
INSERT INTO `hs_hr_unique_id` VALUES ('5', '0', 'hs_hr_leave_requests', 'leave_request_id');
INSERT INTO `hs_hr_unique_id` VALUES ('6', '0', 'hs_hr_custom_export', 'export_id');
INSERT INTO `hs_hr_unique_id` VALUES ('7', '0', 'hs_hr_custom_import', 'import_id');
INSERT INTO `hs_hr_unique_id` VALUES ('8', '0', 'hs_hr_pay_period', 'id');
INSERT INTO `hs_hr_unique_id` VALUES ('9', '0', 'hs_hr_kpi', 'id');
INSERT INTO `hs_hr_unique_id` VALUES ('10', '0', 'hs_hr_performance_review', 'id');
INSERT INTO `hs_hr_unique_id` VALUES ('11', '2', 'ohrm_emp_reporting_method', 'reporting_method_id');
INSERT INTO `hs_hr_unique_id` VALUES ('12', '7', 'ohrm_timesheet', 'timesheet_id');
INSERT INTO `hs_hr_unique_id` VALUES ('13', '0', 'ohrm_timesheet_action_log', 'timesheet_action_log_id');
INSERT INTO `hs_hr_unique_id` VALUES ('14', '0', 'ohrm_timesheet_item', 'timesheet_item_id');
INSERT INTO `hs_hr_unique_id` VALUES ('15', '1', 'ohrm_attendance_record', 'id');
INSERT INTO `hs_hr_unique_id` VALUES ('16', '0', 'ohrm_job_vacancy', 'id');
INSERT INTO `hs_hr_unique_id` VALUES ('17', '0', 'ohrm_job_candidate', 'id');
INSERT INTO `hs_hr_unique_id` VALUES ('18', '106', 'ohrm_workflow_state_machine', 'id');
INSERT INTO `hs_hr_unique_id` VALUES ('19', '0', 'ohrm_job_candidate_attachment', 'id');
INSERT INTO `hs_hr_unique_id` VALUES ('20', '0', 'ohrm_job_vacancy_attachment', 'id');
INSERT INTO `hs_hr_unique_id` VALUES ('21', '0', 'ohrm_job_candidate_vacancy', 'id');
INSERT INTO `hs_hr_unique_id` VALUES ('22', '0', 'ohrm_job_candidate_history', 'id');
INSERT INTO `hs_hr_unique_id` VALUES ('23', '0', 'ohrm_job_interview', 'id');

-- ----------------------------
-- Event structure for `leave_taken_status_change`
-- ----------------------------
DROP EVENT IF EXISTS `leave_taken_status_change`;
DELIMITER ;;
CREATE DEFINER=`ajrosas_hrm`@`localhost` EVENT `leave_taken_status_change` ON SCHEDULE EVERY 1 HOUR STARTS '2015-03-05 00:00:00' ON COMPLETION NOT PRESERVE ENABLE DO BEGIN
                        UPDATE hs_hr_leave SET leave_status = 3 WHERE leave_status = 2 AND leave_date < DATE(NOW());
                      END
;;
DELIMITER ;
