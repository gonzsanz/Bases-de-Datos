﻿CREATE TABLE pais (
  cod_pais number(4, 0),
  nombre varchar2(30),
  capital varchar2(20),
  extension number(10, 0),
  moneda varchar2(20),
  num_hab number(10, 0),
  PIB number(20, 2),
  continente varchar2(20),
  CONSTRAINT pk_pais PRIMARY KEY (cod_pais)
);

CREATE TABLE ciudad(
  cod_pais number(4, 0),
  nombre varchar2(20),
  habitantes number(10, 0),
  CONSTRAINT pk_ciudad PRIMARY KEY (cod_pais, nombre),
  CONSTRAINT fk_ciudad_pais FOREIGN KEY (cod_pais) REFERENCES pais(cod_pais) ON DELETE CASCADE
);

-- ----------------------------
-- Table structure for idioma
-- ----------------------------
CREATE TABLE idioma (
  cod_idioma number(10, 0),
  nombre varchar2(20),
  CONSTRAINT pk_idioma PRIMARY KEY (cod_idioma)
);

-- ----------------------------
-- Table structure for limita_con
-- ----------------------------
CREATE TABLE limita_con (
  cod_pais_1 number(4, 0),
  cod_pais_2 number(4, 0),
  CONSTRAINT pk_limita_con PRIMARY KEY (cod_pais_1, cod_pais_2),
  CONSTRAINT fk_limita_1 FOREIGN KEY (cod_pais_1) REFERENCES pais(cod_pais) ON DELETE CASCADE,
  CONSTRAINT fk_limita_2 FOREIGN KEY (cod_pais_2) REFERENCES pais(cod_pais) ON DELETE CASCADE
);

-- ----------------------------
-- Table structure for organizacion
-- ----------------------------
CREATE TABLE organizacion (
  cod_organizacion number(10, 0),
  nombre varchar2(80),
  siglas varchar2(6),
  CONSTRAINT pk_organizacion PRIMARY KEY (cod_organizacion)
);

-- ----------------------------
-- Table structure for pertenece_a
-- ----------------------------
CREATE TABLE pertenece_a (
  cod_organizacion number(10, 0),
  cod_pais number(4, 0),
  CONSTRAINT pk_pertenece_a PRIMARY KEY (cod_organizacion, cod_pais),
  CONSTRAINT fk_pertenece_a_pais FOREIGN KEY (cod_pais) REFERENCES pais (cod_pais) ON DELETE CASCADE,
  CONSTRAINT fk_pertenece_a_organizacion FOREIGN KEY (cod_organizacion) REFERENCES organizacion (cod_organizacion) ON DELETE CASCADE
);

-- ----------------------------
-- Table structure for se_habla
-- ----------------------------
CREATE TABLE se_habla (
  cod_pais number(4, 0),
  cod_idioma number(10, 0),
  CONSTRAINT pk_se_habla PRIMARY KEY (cod_pais, cod_idioma),
  CONSTRAINT fk_se_habla_pais FOREIGN KEY (cod_pais) REFERENCES pais (cod_pais) ON DELETE CASCADE,
  CONSTRAINT fk_se_habla_idioma FOREIGN KEY (cod_idioma) REFERENCES idioma (cod_idioma) ON DELETE CASCADE
);

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO
  pais
VALUES
  (
    1,
    'España',
    'Madrid',
    504645,
    'Euro',
    46063511,
    1403793,
    'Europa'
  );

INSERT INTO
  pais
VALUES
  (
    2,
    'Francia',
    'Paris',
    675417,
    'Euro',
    64473140,
    2116609,
    'Europa'
  );

INSERT INTO
  pais
VALUES
  (
    3,
    'Reino Unido',
    'Londres',
    244825,
    'Libra Esterlina',
    60587300,
    2215903,
    'Europa'
  );

INSERT INTO
  pais
VALUES
  (
    4,
    'Portugal',
    'Lisboa',
    92391,
    'Euro',
    11317192,
    238238,
    'Europa'
  );

INSERT INTO
  pais
VALUES
  (
    5,
    'Italia',
    'Roma',
    301270,
    'Euro',
    59762887,
    1826894,
    'Europa'
  );

INSERT INTO
  pais
VALUES
  (
    6,
    'Suiza',
    'Berna',
    41285,
    'Franco Suizo',
    7523934,
    310336,
    'Europa'
  );

INSERT INTO
  pais
VALUES
  (
    7,
    'Monaco',
    'Monaco',
    2,
    'Euro',
    32409,
    NULL,
    'Europa'
  );

INSERT INTO
  pais
VALUES
  (
    8,
    'Liechtenstein',
    'Vaduz',
    160,
    'Franco Suizo',
    34913,
    NULL,
    'Europa'
  );

INSERT INTO
  pais
VALUES
  (
    9,
    'Belgica',
    'Bruselas',
    30510,
    'Euro',
    10396421,
    388748,
    'Europa'
  );

INSERT INTO
  pais
VALUES
  (
    10,
    'Paises Bajos',
    'Amsterdam',
    41526,
    'Euro',
    16785088,
    666359,
    'Europa'
  );

INSERT INTO
  pais
VALUES
  (
    11,
    'Luxemburgo',
    'Luxemburgo',
    2586,
    'Euro',
    480000,
    40542,
    'Europa'
  );

INSERT INTO
  pais
VALUES
  (
    12,
    'Alemania',
    'Berlin',
    357021,
    'Euro',
    82604000,
    2906424,
    'Europa'
  );

INSERT INTO
  pais
VALUES
  (
    13,
    'Dinamarca',
    'Copenhaguen',
    2433094,
    'Corona Danesa',
    5447084,
    210207,
    'Europa'
  );

INSERT INTO
  pais
VALUES
  (
    14,
    'Noruega',
    'Oslo',
    385156,
    'Corona',
    4736820,
    260237,
    'Europa'
  );

INSERT INTO
  pais
VALUES
  (
    15,
    'Finlandia',
    'Helsinki',
    337030,
    'Euro',
    5300000,
    193810,
    'Europa'
  );

INSERT INTO
  pais
VALUES
  (
    16,
    'Suecia',
    'Estocolmo',
    449964,
    'Corona',
    9208034,
    348191,
    'Europa'
  );

INSERT INTO
  pais
VALUES
  (
    17,
    'Polonia',
    'Varsovia',
    312685,
    'Zloty',
    38557984,
    664546,
    'Europa'
  );

INSERT INTO
  pais
VALUES
  (
    18,
    'Hungria',
    'Budapest',
    93030,
    'Forint',
    9956000,
    198681,
    'Europa'
  );

INSERT INTO
  pais
VALUES
  (
    19,
    'Bulgaria',
    'Sofia',
    110910,
    'Lev',
    7322858,
    92894,
    'Europa'
  );

INSERT INTO
  pais
VALUES
  (
    20,
    'Rumania',
    'Bucarest',
    238391,
    'Lev',
    22303522,
    263998,
    'Europa'
  );

INSERT INTO
  pais
VALUES
  (
    21,
    'Grecia',
    'Atenas',
    131990,
    'Euro',
    11244204,
    342886,
    'Europa'
  );

INSERT INTO
  pais
VALUES
  (
    22,
    'Chipre',
    'Nicosia',
    9250,
    'Libra Chipriota',
    1103790,
    38535,
    'Europa'
  );

INSERT INTO
  pais
VALUES
  (
    23,
    'Malta',
    'La Valeta',
    316,
    'Lira Maltesa',
    400214,
    22811,
    'Europa'
  );

INSERT INTO
  pais
VALUES
  (
    24,
    'Albania',
    'Tirana',
    28748,
    'Lek',
    3582205,
    21536,
    'Europa'
  );

INSERT INTO
  pais
VALUES
  (
    25,
    'Republica Checa',
    'Praga',
    78866,
    'Corona Checa',
    10306700,
    264687,
    'Europa'
  );

INSERT INTO
  pais
VALUES
  (
    26,
    'Eslovaquia',
    'Bratislava',
    48845,
    'Corona Eslovaca',
    5389180,
    119183,
    'Europa'
  );

INSERT INTO
  pais
VALUES
  (
    27,
    'Austria',
    'Viena',
    83871,
    'Euro',
    8334325,
    330331,
    'Europa'
  );

INSERT INTO
  pais
VALUES
  (
    28,
    'Irlanda',
    'Dublin',
    70273,
    'Euro',
    4062235,
    193233,
    'Europa'
  );

INSERT INTO
  pais
VALUES
  (
    29,
    'Brasil',
    'Brasilia',
    8514877,
    'Real',
    189888941,
    1961473,
    'America'
  );

INSERT INTO
  pais
VALUES
  (
    30,
    'Argentina',
    'Buenos Aires',
    2791810,
    'Peso Argentino',
    39745613,
    571392,
    'America'
  );

INSERT INTO
  pais
VALUES
  (
    31,
    'Chile',
    'Santiago de Chile',
    755838,
    'Peso Chileno',
    16763470,
    246227,
    'America'
  );

INSERT INTO
  pais
VALUES
  (
    32,
    'Uruguay',
    'Montevideo',
    176215,
    'Peso Uruguayo',
    3415920,
    40211,
    'America'
  );

INSERT INTO
  pais
VALUES
  (
    33,
    'Paraguay',
    'Asuncion',
    406752,
    'Guarani',
    6669086,
    28718,
    'America'
  );

INSERT INTO
  pais
VALUES
  (
    34,
    'Peru',
    'Lima',
    1285215,
    'Nuevo Sol',
    28220764,
    238945,
    'America'
  );

INSERT INTO
  pais
VALUES
  (
    35,
    'Ecuador',
    'Quito',
    283520,
    'Dolar Americano',
    13782329,
    103717,
    'America'
  );

INSERT INTO
  pais
VALUES
  (
    36,
    'Bolivia',
    'La Paz',
    1098581,
    'Boliviano',
    10027644,
    42121,
    'America'
  );

INSERT INTO
  pais
VALUES
  (
    37,
    'Colombia',
    'Bogota',
    1141748,
    'Peso Colombiano',
    44668417,
    340771,
    'America'
  );

INSERT INTO
  pais
VALUES
  (
    38,
    'Venezuela',
    'Caracas',
    916445,
    'Bolivar',
    28038162,
    360936,
    'America'
  );

INSERT INTO
  pais
VALUES
  (
    39,
    'Estados Unidos',
    'Washington D.C.',
    9631418,
    'Dolar Americano',
    302688000,
    14195032,
    'America'
  );

INSERT INTO
  pais
VALUES
  (
    40,
    'Canada',
    'Ottawa',
    9984670,
    'Dolar Canadiense',
    33311389,
    1308310,
    'America'
  );

INSERT INTO
  pais
VALUES
  (
    41,
    'Mejico',
    'Mejico D.F.',
    1984375,
    'Peso Mejicano',
    106682518,
    1399861,
    'America'
  );

INSERT INTO
  pais
VALUES
  (
    42,
    'Rusia',
    'Moscu',
    17075400,
    'Rublo',
    143000000,
    2274584,
    'Asia'
  );

INSERT INTO
  pais
VALUES
  (
    43,
    'China (R.P.)',
    'Pekin',
    9596960,
    'Renmimbi',
    1313973713,
    7792747,
    'Asia'
  );

INSERT INTO
  pais
VALUES
  (
    44,
    'Cuba',
    'La Habana',
    110860,
    'Peso Cubano',
    11382820,
    45510,
    'America'
  );

INSERT INTO
  pais
VALUES
  (
    46,
    'India',
    'Nueva Delhi',
    3287590,
    'Rupia India',
    1095351995,
    3289781,
    'Asia'
  );

INSERT INTO
  pais
VALUES
  (
    47,
    'Pakistan',
    'Islamabad',
    803940,
    'Rupia Pakistani',
    165803560,
    443286,
    'Asia'
  );

INSERT INTO
  pais
VALUES
  (
    48,
    'Bangladesh',
    'Dacca',
    144000,
    'Taka',
    147365352,
    222412,
    'Asia'
  );

INSERT INTO
  pais
VALUES
  (
    49,
    'Japon',
    'Tokio',
    377835,
    'Yen',
    127417244,
    4438698,
    'Asia'
  );

INSERT INTO
  pais
VALUES
  (
    50,
    'Indonesia',
    'Yakarta',
    1919440,
    'Rupia Indonesia',
    220325083,
    906664,
    'Asia'
  );

INSERT INTO
  pais
VALUES
  (
    51,
    'Nigeria',
    'Abuya',
    923768,
    'Naira',
    133881703,
    325468,
    'Africa'
  );

INSERT INTO
  pais
VALUES
  (
    52,
    'Islandia',
    'Reikiavik',
    103125,
    'Corona Islandesa',
    308910,
    12148,
    'Europa'
  );

INSERT INTO
  pais
VALUES
  (
    53,
    'Marruecos',
    'Rabat',
    446550,
    'Dirham Marroqui',
    31759997,
    159064,
    'Africa'
  );

INSERT INTO
  pais
VALUES
  (
    54,
    'Argelia',
    'Argel',
    2381740,
    'Dinar Argelino',
    34800000,
    232692,
    'Africa'
  );

INSERT INTO
  pais
VALUES
  (
    55,
    'Tunez',
    'Tunez',
    163610,
    'Dinar',
    10175014,
    99228,
    'Africa'
  );

INSERT INTO
  pais
VALUES
  (
    56,
    'Libia',
    'Tripoli',
    1759540,
    'Dinar Libio',
    6173579,
    57064,
    'Africa'
  );

INSERT INTO
  pais
VALUES
  (
    57,
    'Egipto',
    'El Cairo',
    1001450,
    'Libra Egipcia',
    83082869,
    127930,
    'Africa'
  );

INSERT INTO
  pais
VALUES
  (
    58,
    'Mauritania',
    'Nuakchot',
    1030700,
    'Ouguiya',
    3177388,
    6016,
    'Africa'
  );

INSERT INTO
  pais
VALUES
  (
    59,
    'Mali',
    'Bamako',
    1240000,
    'Franco CFA',
    11415261,
    14333,
    'Africa'
  );

INSERT INTO
  pais
VALUES
  (
    60,
    'Niger',
    'Niamey',
    1267000,
    'Franco CFA',
    15306252,
    10033,
    'Africa'
  );

INSERT INTO
  pais
VALUES
  (
    61,
    'Chad',
    'NDjamena',
    1284000,
    'Franco CFA',
    10780000,
    8390,
    'Africa'
  );

INSERT INTO
  pais
VALUES
  (
    62,
    'Sudan',
    'Jartum',
    2505813,
    'Libra Sudanesa',
    41236378,
    85461,
    'Africa'
  );

INSERT INTO
  pais
VALUES
  (
    63,
    'Eritrea',
    'Asmara',
    121320,
    'Nafka',
    4669638,
    4075,
    'Africa'
  );

INSERT INTO
  pais
VALUES
  (
    64,
    'Etiopia',
    'Addis Abeba',
    1127127,
    'Birr Etiope',
    73053286,
    95122,
    'Africa'
  );

INSERT INTO
  pais
VALUES
  (
    65,
    'Yibuti',
    'Yibuti',
    23000,
    'Franco Yibutiano',
    476703,
    1814,
    'Africa'
  );

INSERT INTO
  pais
VALUES
  (
    66,
    'Senegal',
    'Dakar',
    196190,
    'Franco CFA',
    12534000,
    20601,
    'Africa'
  );

INSERT INTO
  pais
VALUES
  (
    67,
    'Guinea-Bissau',
    'Bissau',
    36120,
    'Franco CFA',
    1460253,
    1182,
    'Africa'
  );

INSERT INTO
  pais
VALUES
  (
    68,
    'Cabo Verde',
    'Praia',
    4033,
    'Escudo Caboverdiano',
    499796,
    3905,
    'Africa'
  );

INSERT INTO
  pais
VALUES
  (
    69,
    'Guinea',
    'Conakry',
    245857,
    'Franco Guineano',
    9452670,
    18945,
    'Africa'
  );

INSERT INTO
  pais
VALUES
  (
    70,
    'Sierra Leona',
    'Freetown',
    71740,
    'Leone',
    5883889,
    4260,
    'Africa'
  );

INSERT INTO
  pais
VALUES
  (
    71,
    'Liberia',
    'Monrovia',
    111370,
    'Dolar Liberiano',
    3482111,
    1471,
    'Africa'
  );

INSERT INTO
  pais
VALUES
  (
    72,
    'Costa de Marfil',
    'Yamusukro',
    322462,
    'Franco CFA',
    20617068,
    28460,
    'Africa'
  );

INSERT INTO
  pais
VALUES
  (
    73,
    'Ghana',
    'Accra',
    239460,
    'Cedi',
    23382848,
    54330,
    'Africa'
  );

INSERT INTO
  pais
VALUES
  (
    74,
    'Togo',
    'Lome',
    56785,
    'Franco CFA',
    5399991,
    8945,
    'Africa'
  );

INSERT INTO
  pais
VALUES
  (
    75,
    'Benin',
    'Porto Novo',
    112620,
    'Franco CFA',
    7649360,
    12715,
    'Africa'
  );

INSERT INTO
  pais
VALUES
  (
    76,
    'Costa Rica',
    'San Jose',
    51100,
    'Colon Costarricense',
    4579000,
    50926,
    'America'
  );

INSERT INTO
  pais
VALUES
  (
    77,
    'Camerun',
    'Yaunde',
    475440,
    'Franco CFA',
    16988132,
    40744,
    'Africa'
  );

INSERT INTO
  pais
VALUES
  (
    78,
    'Republica Centroafricana',
    'Bangui',
    622984,
    'Franco CFA',
    3683538,
    3254,
    'Africa'
  );

INSERT INTO
  pais
VALUES
  (
    79,
    'Guinea Ecuatorial',
    'Malabo',
    28051,
    'Franco CFA',
    1014999,
    22329,
    'Africa'
  );

INSERT INTO
  pais
VALUES
  (
    80,
    'Santo Tome y Principe',
    'Santo Tome',
    1001,
    'Dobra',
    193413,
    280,
    'Africa'
  );

INSERT INTO
  pais
VALUES
  (
    81,
    'Gabon',
    'Libreville',
    267667,
    'Franco CFA',
    1500000,
    9514,
    'Africa'
  );

INSERT INTO
  pais
VALUES
  (
    82,
    'Republica del Congo',
    'Brazzaville',
    342000,
    'Franco CFA',
    3602269,
    4621,
    'Africa'
  );

INSERT INTO
  pais
VALUES
  (
    83,
    'Republica Dem. del Congo',
    'Kinshasa',
    2345410,
    'Franco Congoleño',
    60764490,
    40585,
    'Africa'
  );

INSERT INTO
  pais
VALUES
  (
    84,
    'Uganda',
    'Kampala',
    234040,
    'Chelin Ugandes',
    27269482,
    36871,
    'Africa'
  );

INSERT INTO
  pais
VALUES
  (
    85,
    'Kenia',
    'Nairobi',
    582650,
    'Chelin Keniata',
    34707817,
    51731,
    'Africa'
  );

INSERT INTO
  pais
VALUES
  (
    86,
    'Ruanda',
    'Kigali',
    26338,
    'Franco Ruandes',
    8648248,
    9934,
    'Africa'
  );

INSERT INTO
  pais
VALUES
  (
    87,
    'Burundi',
    'Bujumbura',
    27830,
    'Franco Burundes',
    8988091,
    5652,
    'Africa'
  );

INSERT INTO
  pais
VALUES
  (
    88,
    'Tanzania',
    'Dodoma',
    948087,
    'Chelin Tanzano',
    37445392,
    53665,
    'Africa'
  );

INSERT INTO
  pais
VALUES
  (
    89,
    'Angola',
    'Luanda',
    1246700,
    'Kwanza',
    12799293,
    106296,
    'Africa'
  );

INSERT INTO
  pais
VALUES
  (
    90,
    'Zambia',
    'Lusaka',
    752614,
    'Kwacha Zambiano',
    12935000,
    10568,
    'Africa'
  );

INSERT INTO
  pais
VALUES
  (
    91,
    'Malawi',
    'Lilongüe',
    118484,
    'Kwacha Malawi',
    13931831,
    11394,
    'Africa'
  );

INSERT INTO
  pais
VALUES
  (
    92,
    'Mozambique',
    'Maputo',
    799380,
    'Metical',
    21284701,
    25974,
    'Africa'
  );

INSERT INTO
  pais
VALUES
  (
    93,
    'Madagascar',
    'Antananarivo',
    587041,
    'Ariary',
    20653556,
    16323,
    'Africa'
  );

INSERT INTO
  pais
VALUES
  (
    94,
    'Zimbaue',
    'Harare',
    390580,
    'Dolar Zimbauense',
    12236805,
    2210,
    'Africa'
  );

INSERT INTO
  pais
VALUES
  (
    95,
    'Botsuana',
    'Gaborone',
    600370,
    'Pula',
    1640115,
    25476,
    'Africa'
  );

INSERT INTO
  pais
VALUES
  (
    96,
    'Namibia',
    'Windhoek',
    825418,
    'Dolar Namibio',
    2030692,
    15140,
    'Africa'
  );

INSERT INTO
  pais
VALUES
  (
    97,
    'Sudafrica',
    'Ciudad del Cabo',
    1219912,
    'Rand',
    49320000,
    271779,
    'Africa'
  );

INSERT INTO
  pais
VALUES
  (
    98,
    'Mauricio',
    'Port Louis',
    2040,
    'Rupia de Mauricio',
    1240827,
    16898,
    'Africa'
  );

INSERT INTO
  pais
VALUES
  (
    99,
    'Eslovenia',
    'Liubliana',
    20253,
    'Euro',
    2047000,
    62200,
    'Europa'
  );

INSERT INTO
  pais
VALUES
  (
    100,
    'Croacia',
    'Zagreb',
    56542,
    'Kuna',
    4434508,
    84621,
    'Europa'
  );

INSERT INTO
  pais
VALUES
  (
    101,
    'Bosnia y Herzegovina',
    'Sarajevo',
    51129,
    'Marco convertible',
    4025476,
    31656,
    'Europa'
  );

INSERT INTO
  pais
VALUES
  (
    102,
    'Serbia',
    'Belgrado',
    88361,
    'Dinar Serbio',
    9184177,
    54547,
    'Europa'
  );

INSERT INTO
  pais
VALUES
  (
    103,
    'Montenegro',
    'Podgorica',
    13812,
    'Euro',
    684736,
    3443,
    'Europa'
  );

INSERT INTO
  pais
VALUES
  (
    104,
    'Macedonia',
    'Skopie',
    25713,
    'Dinar Macedonio',
    2100554,
    20460,
    'Europa'
  );

INSERT INTO
  pais
VALUES
  (
    105,
    'Moldavia',
    'Chisinau',
    33843,
    'Leu Moldavo',
    4466706,
    10464,
    'Europa'
  );

INSERT INTO
  pais
VALUES
  (
    106,
    'Ucrania',
    'Kiev',
    603628,
    'Grivnia',
    45850918,
    336851,
    'Europa'
  );

INSERT INTO
  pais
VALUES
  (
    107,
    'Bielorrusia',
    'Minsk',
    207600,
    'Rubio Bielorruso',
    9648533,
    70524,
    'Europa'
  );

INSERT INTO
  pais
VALUES
  (
    108,
    'Lituania',
    'Vilna',
    65303,
    'Litas',
    3281400,
    65022,
    'Europa'
  );

INSERT INTO
  pais
VALUES
  (
    109,
    'Letonia',
    'Riga',
    64589,
    'Lats Leton',
    2236300,
    37065,
    'Europa'
  );

INSERT INTO
  pais
VALUES
  (
    110,
    'Estonia',
    'Tallin',
    45226,
    'Euro',
    1291000,
    28317,
    'Europa'
  );

INSERT INTO
  pais
VALUES
  (
    111,
    'Turquia',
    'Ankara',
    783562,
    'Lira Turca',
    72561312,
    880061,
    'Asia'
  );

INSERT INTO
  pais
VALUES
  (
    112,
    'El Salvador',
    'San Salvador',
    21041,
    'Dolar Americano',
    5744113,
    41419,
    'America'
  );

INSERT INTO
  pais
VALUES
  (
    113,
    'Guatemala',
    'Ciudad de Guatemala',
    108889,
    'Quetzal',
    13860743,
    64449,
    'America'
  );

INSERT INTO
  pais
VALUES
  (
    114,
    'Belice',
    'Belmopan',
    22966,
    'Dolar Beliceño',
    372000,
    2046,
    'America'
  );

INSERT INTO
  pais
VALUES
  (
    115,
    'Honduras',
    'Tegucigalpa',
    112492,
    'Lempira',
    7793000,
    27991,
    'America'
  );

INSERT INTO
  pais
VALUES
  (
    116,
    'Nicaragua',
    'Managua',
    129494,
    'Cordoba',
    5465100,
    15302,
    'America'
  );

INSERT INTO
  pais
VALUES
  (
    117,
    'Panama',
    'Panama',
    78200,
    'Dolar Americano',
    3322576,
    45214,
    'America'
  );

INSERT INTO
  pais
VALUES
  (
    118,
    'Guyana',
    'Georgetown',
    214970,
    'Dolar Guyanes',
    907000,
    3682,
    'America'
  );

INSERT INTO
  pais
VALUES
  (
    119,
    'Surinam',
    'Paramaribo',
    163270,
    'Dolar Surinames',
    492829,
    2812,
    'America'
  );

INSERT INTO
  pais
VALUES
  (
    120,
    'Republica Dominicana',
    'Santo Domingo',
    48442,
    'Peso Dominicano',
    10090000,
    85216,
    'America'
  );

INSERT INTO
  pais
VALUES
  (
    121,
    'Haiti',
    'Puerto Principe',
    27750,
    'Gourde',
    9800000,
    11570,
    'America'
  );

INSERT INTO
  pais
VALUES
  (
    122,
    'Siria',
    'Damasco',
    185100,
    'Libra Siria',
    19405000,
    NULL,
    'Asia'
  );

INSERT INTO
  pais
VALUES
  (
    123,
    'Afganistan',
    'Kabul',
    652225,
    'Afgani',
    28717700,
    36075,
    'Asia'
  );

INSERT INTO
  pais
VALUES
  (
    124,
    'Arabia Saudita',
    'Riad',
    2149690,
    'Riyal Saudi',
    28161690,
    564561,
    'Asia'
  );

INSERT INTO
  pais
VALUES
  (
    125,
    'Armenia',
    'Erevan',
    29800,
    'Dram Armenio',
    3215800,
    17151,
    'Asia'
  );

INSERT INTO
  pais
VALUES
  (
    126,
    'Azerbayan',
    'Baku',
    86600,
    'Manat Azeri',
    8922300,
    65469,
    'Asia'
  );

INSERT INTO
  pais
VALUES
  (
    127,
    'Bahrein',
    'Manama',
    678,
    'Dinar Bahraini',
    698585,
    24499,
    'Asia'
  );

INSERT INTO
  pais
VALUES
  (
    128,
    'Brunei',
    'Bandar Seri Begawan',
    5770,
    'Dolar de Brunei',
    388190,
    10169,
    'Asia'
  );

INSERT INTO
  pais
VALUES
  (
    129,
    'Butan',
    'Timbu',
    47000,
    'Ngultrum',
    691141,
    2913,
    'Asia'
  );

INSERT INTO
  pais
VALUES
  (
    130,
    'Camboya',
    'Phnom Penh',
    181040,
    'Riel',
    13636398,
    37530,
    'Asia'
  );

INSERT INTO
  pais
VALUES
  (
    131,
    'Corea del Norte',
    'Pyongyang',
    120540,
    'Won Norcoreano',
    24051218,
    25600,
    'Asia'
  );

INSERT INTO
  pais
VALUES
  (
    132,
    'Corea del Sur',
    'Seul',
    99720,
    'Won Surcoreano',
    48636068,
    1358037,
    'Asia'
  );

INSERT INTO
  pais
VALUES
  (
    133,
    'Emiratos Arabes Unidos',
    'Abu Dabi',
    83600,
    'Dirham de EAU',
    4588697,
    265921,
    'Asia'
  );

INSERT INTO
  pais
VALUES
  (
    134,
    'Filipinas',
    'Manila',
    300000,
    'Peso Filipino',
    88706300,
    443369,
    'Asia'
  );

INSERT INTO
  pais
VALUES
  (
    135,
    'Georgia',
    'Tiflis',
    69500,
    'Lari Georgiano',
    4601000,
    20499,
    'Asia'
  );

INSERT INTO
  pais
VALUES
  (
    136,
    'Iran',
    'Teheran',
    1648195,
    'Rial Irani',
    71208000,
    752967,
    'Asia'
  );

INSERT INTO
  pais
VALUES
  (
    137,
    'Iraq',
    'Bagdad',
    437072,
    'Dinar Iraqui',
    26783383,
    89800,
    'Asia'
  );

INSERT INTO
  pais
VALUES
  (
    138,
    'Israel',
    'Jerusalem',
    22145,
    'Nuevo Shequel',
    7588400,
    177300,
    'Asia'
  );

INSERT INTO
  pais
VALUES
  (
    139,
    'Jordania',
    'Amman',
    92300,
    'Dinar Jordano',
    5473000,
    29248,
    'Asia'
  );

INSERT INTO
  pais
VALUES
  (
    140,
    'Kazajistan',
    'Astana',
    2727300,
    'Tenge',
    15233244,
    137964,
    'Asia'
  );

INSERT INTO
  pais
VALUES
  (
    141,
    'Kirguistan',
    'Biskek',
    198500,
    'Som Kirguis',
    5356869,
    11589,
    'Asia'
  );

INSERT INTO
  pais
VALUES
  (
    142,
    'Kuwait',
    'Al Kuwait',
    17820,
    'Dinar Kuwaiti',
    2335648,
    130113,
    'Asia'
  );

INSERT INTO
  pais
VALUES
  (
    143,
    'Laos',
    'Vientian',
    236800,
    'Kip',
    6677534,
    13964,
    'Asia'
  );

INSERT INTO
  pais
VALUES
  (
    144,
    'Libano',
    'Beirut',
    10452,
    'Libra Libanesa',
    4200000,
    51474,
    'Asia'
  );

INSERT INTO
  pais
VALUES
  (
    145,
    'Malasia',
    'Kuala Lumpur',
    329750,
    'Ringgit',
    24385858,
    312959,
    'Asia'
  );

INSERT INTO
  pais
VALUES
  (
    146,
    'Maldivas',
    'Male',
    300,
    'Rufiyaa',
    349106,
    2557,
    'Asia'
  );

INSERT INTO
  pais
VALUES
  (
    147,
    'Mongolia',
    'Ulan Bator',
    1564116,
    'Tugrik',
    2951786,
    9388,
    'Asia'
  );

INSERT INTO
  pais
VALUES
  (
    148,
    'Birmania',
    'Naypyidaw',
    678500,
    'Kyat',
    54000000,
    27182,
    'Asia'
  );

INSERT INTO
  pais
VALUES
  (
    149,
    'Nepal',
    'Katmandu',
    140800,
    'Rupia Nepali',
    28287147,
    39815,
    'Asia'
  );

INSERT INTO
  pais
VALUES
  (
    150,
    'Oman',
    'Mascate',
    212457,
    'Rial Omani',
    3001583,
    61607,
    'Asia'
  );

INSERT INTO
  pais
VALUES
  (
    151,
    'Australia',
    'Camberra',
    7686850,
    'Dolar Australiano',
    22000000,
    980822,
    'Oceania'
  );

INSERT INTO
  pais
VALUES
  (
    152,
    'Qatar',
    'Doha',
    11437,
    'Rial Qatari',
    885359,
    94404,
    'Asia'
  );

INSERT INTO
  pais
VALUES
  (
    153,
    'Singapur',
    'Singapur',
    707,
    'Dolar de Singapur',
    4553000,
    228116,
    'Asia'
  );

INSERT INTO
  pais
VALUES
  (
    154,
    'Sri Lanka',
    'Colombo',
    65610,
    'Rupia de Sri Lanka',
    20743000,
    92018,
    'Asia'
  );

INSERT INTO
  pais
VALUES
  (
    155,
    'Tailandia',
    'Bangkok',
    514000,
    'Bhat',
    64631595,
    519050,
    'Asia'
  );

INSERT INTO
  pais
VALUES
  (
    156,
    'Taiwan',
    'Taipei',
    36200,
    'Dolar Taiwanes',
    22814636,
    631200,
    'Asia'
  );

INSERT INTO
  pais
VALUES
  (
    157,
    'Tayikistan',
    'Dusambe',
    143100,
    'Somoni',
    6507000,
    8810,
    'Asia'
  );

INSERT INTO
  pais
VALUES
  (
    158,
    'Timor Oriental',
    'Dili',
    14874,
    'Dolar Americano',
    1062777,
    467,
    'Asia'
  );

INSERT INTO
  pais
VALUES
  (
    159,
    'Turkmenistan',
    'Asjabad',
    488100,
    'Manat Turcomano',
    5042920,
    44219,
    'Asia'
  );

INSERT INTO
  pais
VALUES
  (
    160,
    'Uzbekistan',
    'Taskent',
    447500,
    'Sum Uzbeko',
    25563411,
    48137,
    'Asia'
  );

INSERT INTO
  pais
VALUES
  (
    161,
    'Vietnam del Norte',
    'Hanoi',
    331690,
    'Dong Vietnamita',
    87375000,
    240093,
    'Asia'
  );

INSERT INTO
  pais
VALUES
  (
    162,
    'Republica del Vietnam',
    'Saigon',
    173809,
    'Dong Vietnamita',
    19370000,
    NULL,
    'Asia'
  );

INSERT INTO
  pais
VALUES
  (
    163,
    'Yemen',
    'Sana',
    527968,
    'Rial Yemeni',
    20727063,
    19324,
    'Asia'
  );

INSERT INTO
  pais
VALUES
  (
    164,
    'Fiyi',
    'Suva',
    18270,
    'Dolar Fiyiano',
    905949,
    5698,
    'Oceania'
  );

INSERT INTO
  pais
VALUES
  (
    165,
    'Nueva Zelanda',
    'Wellington',
    268680,
    'Dolar Neozelandes',
    4306400,
    113113,
    'Oceania'
  );

INSERT INTO
  pais
VALUES
  (
    166,
    'Papua-Nueva Guinea',
    'Port Moresby',
    462640,
    'Kina',
    5670544,
    11480,
    'Oceania'
  );

INSERT INTO
  pais
VALUES
  (
    167,
    'Burkina Faso',
    'Uagadugu',
    274200,
    'Franco CFA',
    13491736,
    17662,
    'Africa'
  );

INSERT INTO
  pais
VALUES
  (
    168,
    'Gambia',
    'Banjul',
    10380,
    'Dalasi',
    1593256,
    2262,
    'Africa'
  );

INSERT INTO
  ciudad
VALUES
  (1, 'Barcelona', 1595110);

INSERT INTO
  ciudad
VALUES
  (1, 'Cartagena', 214020);

INSERT INTO
  ciudad
VALUES
  (1, 'Cordoba', 323600);

INSERT INTO
  ciudad
VALUES
  (1, 'Madrid', 3232463);

INSERT INTO
  ciudad
VALUES
  (1, 'Valencia', 797654);

INSERT INTO
  ciudad
VALUES
  (2, 'Lyon', 466400);

INSERT INTO
  ciudad
VALUES
  (2, 'Marsella', 820900);

INSERT INTO
  ciudad
VALUES
  (2, 'Niza', 347100);

INSERT INTO
  ciudad
VALUES
  (2, 'Paris', 2153600);

INSERT INTO
  ciudad
VALUES
  (2, 'Toulouse', 426700);

INSERT INTO
  ciudad
VALUES
  (3, 'Birmingham', 1001200);

INSERT INTO
  ciudad
VALUES
  (3, 'Liverpool', 447500);

INSERT INTO
  ciudad
VALUES
  (3, 'Londres', 7512400);

INSERT INTO
  ciudad
VALUES
  (4, 'Lisboa', 564657);

INSERT INTO
  ciudad
VALUES
  (4, 'Oporto', 240000);

INSERT INTO
  ciudad
VALUES
  (4, 'Setubal', 113937);

INSERT INTO
  ciudad
VALUES
  (5, 'Bolonia', 374057);

INSERT INTO
  ciudad
VALUES
  (5, 'Milan', 1308735);

INSERT INTO
  ciudad
VALUES
  (5, 'Parma', 178718);

INSERT INTO
  ciudad
VALUES
  (5, 'Pisa', 88363);

INSERT INTO
  ciudad
VALUES
  (5, 'Roma', 2718768);

INSERT INTO
  ciudad
VALUES
  (6, 'Berna', 128153);

INSERT INTO
  ciudad
VALUES
  (6, 'Ginebra', 185726);

INSERT INTO
  ciudad
VALUES
  (6, 'Zurich', 376815);

INSERT INTO
  ciudad
VALUES
  (7, 'Monaco', 32409);

INSERT INTO
  ciudad
VALUES
  (8, 'Triesenberg', 2596);

INSERT INTO
  ciudad
VALUES
  (8, 'Vaduz', 5014);

INSERT INTO
  ciudad
VALUES
  (9, 'Amberes', 466203);

INSERT INTO
  ciudad
VALUES
  (9, 'Brujas', 116982);

INSERT INTO
  ciudad
VALUES
  (9, 'Bruselas', 145917);

INSERT INTO
  ciudad
VALUES
  (9, 'Lieja', 188907);

INSERT INTO
  ciudad
VALUES
  (10, 'Amsterdam', 743068);

INSERT INTO
  ciudad
VALUES
  (10, 'Eindhoven', 209286);

INSERT INTO
  ciudad
VALUES
  (10, 'La Haya', 469568);

INSERT INTO
  ciudad
VALUES
  (10, 'Rotterdam', 588718);

INSERT INTO
  ciudad
VALUES
  (11, 'Echternach', 4507);

INSERT INTO
  ciudad
VALUES
  (11, 'Esch-sur-Alzette', 28000);

INSERT INTO
  ciudad
VALUES
  (11, 'Luxemburgo', 86009);

INSERT INTO
  ciudad
VALUES
  (12, 'Berlin', 3404037);

INSERT INTO
  ciudad
VALUES
  (12, 'Bonn', 314299);

INSERT INTO
  ciudad
VALUES
  (12, 'Bremen', 548477);

INSERT INTO
  ciudad
VALUES
  (12, 'Colonia', 991395);

INSERT INTO
  ciudad
VALUES
  (12, 'Düsseldorf', 581858);

INSERT INTO
  ciudad
VALUES
  (12, 'Frankfurt', 670095);

INSERT INTO
  ciudad
VALUES
  (12, 'Hamburgo', 1763950);

INSERT INTO
  ciudad
VALUES
  (12, 'Munich', 1348650);

INSERT INTO
  ciudad
VALUES
  (12, 'Stuttgart', 597158);

INSERT INTO
  ciudad
VALUES
  (13, 'Arhus', 237551);

INSERT INTO
  ciudad
VALUES
  (13, 'Copenhaguen', 509861);

INSERT INTO
  ciudad
VALUES
  (13, 'Odense', 185000);

INSERT INTO
  ciudad
VALUES
  (14, 'Bergen', 249527);

INSERT INTO
  ciudad
VALUES
  (14, 'Oslo', 560484);

INSERT INTO
  ciudad
VALUES
  (14, 'Stavanger', 120798);

INSERT INTO
  ciudad
VALUES
  (14, 'Trondheim', 166708);

INSERT INTO
  ciudad
VALUES
  (15, 'Hämeenlinna', 46914);

INSERT INTO
  ciudad
VALUES
  (15, 'Helsinki', 564696);

INSERT INTO
  ciudad
VALUES
  (15, 'Turku', 174906);

INSERT INTO
  ciudad
VALUES
  (16, 'Estocolmo', 786509);

INSERT INTO
  ciudad
VALUES
  (16, 'Gotemburgo', 489757);

INSERT INTO
  ciudad
VALUES
  (16, 'Visby', 22000);

INSERT INTO
  ciudad
VALUES
  (17, 'Cracovia', 757500);

INSERT INTO
  ciudad
VALUES
  (17, 'Lodz', 776297);

INSERT INTO
  ciudad
VALUES
  (17, 'Posnania', 564951);

INSERT INTO
  ciudad
VALUES
  (17, 'Varsovia', 1692900);

INSERT INTO
  ciudad
VALUES
  (18, 'Budapest', 1695000);

INSERT INTO
  ciudad
VALUES
  (18, 'Eger', 56317);

INSERT INTO
  ciudad
VALUES
  (18, 'Szeged', 167039);

INSERT INTO
  ciudad
VALUES
  (19, 'Burgas', 205821);

INSERT INTO
  ciudad
VALUES
  (19, 'Sofia', 1207172);

INSERT INTO
  ciudad
VALUES
  (20, 'Alba lulia', 66369);

INSERT INTO
  ciudad
VALUES
  (20, 'Brasov', 283901);

INSERT INTO
  ciudad
VALUES
  (20, 'Bucarest', 2354510);

INSERT INTO
  ciudad
VALUES
  (20, 'Constanza', 310471);

INSERT INTO
  ciudad
VALUES
  (20, 'Craiova', 304142);

INSERT INTO
  ciudad
VALUES
  (21, 'Atenas', 3005322);

INSERT INTO
  ciudad
VALUES
  (21, 'Heraklion', 137711);

INSERT INTO
  ciudad
VALUES
  (21, 'Patras', 250000);

INSERT INTO
  ciudad
VALUES
  (21, 'Tesalonica', 1046851);

INSERT INTO
  ciudad
VALUES
  (22, 'Nicosia', 270000);

INSERT INTO
  ciudad
VALUES
  (23, 'Birkirkara', 25000);

INSERT INTO
  ciudad
VALUES
  (23, 'La Valeta', 6315);

INSERT INTO
  ciudad
VALUES
  (24, 'Durres', 82000);

INSERT INTO
  ciudad
VALUES
  (24, 'Elbasan', 70000);

INSERT INTO
  ciudad
VALUES
  (24, 'Tirana', 353400);

INSERT INTO
  ciudad
VALUES
  (25, 'Brno', 1130620);

INSERT INTO
  ciudad
VALUES
  (25, 'Ostrava', 1251883);

INSERT INTO
  ciudad
VALUES
  (25, 'Praga', 1172975);

INSERT INTO
  ciudad
VALUES
  (26, 'Bratislava', 425155);

INSERT INTO
  ciudad
VALUES
  (26, 'Kosice', 234969);

INSERT INTO
  ciudad
VALUES
  (26, 'Nitra', 86958);

INSERT INTO
  ciudad
VALUES
  (26, 'Presov', 91621);

INSERT INTO
  ciudad
VALUES
  (27, 'Graz', 250099);

INSERT INTO
  ciudad
VALUES
  (27, 'Innsbruck', 117346);

INSERT INTO
  ciudad
VALUES
  (27, 'Linz', 188968);

INSERT INTO
  ciudad
VALUES
  (27, 'Salzburgo', 150000);

INSERT INTO
  ciudad
VALUES
  (27, 'Viena', 1670347);

INSERT INTO
  ciudad
VALUES
  (28, 'Cork', 119143);

INSERT INTO
  ciudad
VALUES
  (28, 'Dublin', 505739);

INSERT INTO
  ciudad
VALUES
  (28, 'Galway', 71983);

INSERT INTO
  ciudad
VALUES
  (28, 'Limerick', 52560);

INSERT INTO
  ciudad
VALUES
  (28, 'Waterford', 44594);

INSERT INTO
  ciudad
VALUES
  (29, 'Belo Horizonte', 2412937);

INSERT INTO
  ciudad
VALUES
  (29, 'Brasilia', 2455903);

INSERT INTO
  ciudad
VALUES
  (29, 'Curitiba', 1200000);

INSERT INTO
  ciudad
VALUES
  (29, 'Fortaleza', 2374944);

INSERT INTO
  ciudad
VALUES
  (29, 'Porto Alegre', 1420667);

INSERT INTO
  ciudad
VALUES
  (29, 'Rio de Janeiro', 6857904);

INSERT INTO
  ciudad
VALUES
  (29, 'Salvador de Bahia', 2892625);

INSERT INTO
  ciudad
VALUES
  (29, 'Sao Paulo', 10927985);

INSERT INTO
  ciudad
VALUES
  (30, 'Buenos Aires', 3042581);

INSERT INTO
  ciudad
VALUES
  (30, 'Cordoba', 1315540);

INSERT INTO
  ciudad
VALUES
  (30, 'La Plata', 563943);

INSERT INTO
  ciudad
VALUES
  (30, 'Mendoza', 110993);

INSERT INTO
  ciudad
VALUES
  (30, 'Rosario', 908163);

INSERT INTO
  ciudad
VALUES
  (30, 'Tucuman', 527607);

INSERT INTO
  ciudad
VALUES
  (31, 'Antofagasta', 285256);

INSERT INTO
  ciudad
VALUES
  (31, 'Cartagena', 16875);

INSERT INTO
  ciudad
VALUES
  (31, 'Concepcion', 216061);

INSERT INTO
  ciudad
VALUES
  (31, 'Santiago de Chile', 5428590);

INSERT INTO
  ciudad
VALUES
  (32, 'Ciudad de la Costa', 83399);

INSERT INTO
  ciudad
VALUES
  (32, 'Montevideo', 1325968);

INSERT INTO
  ciudad
VALUES
  (32, 'Paysandu', 84162);

INSERT INTO
  ciudad
VALUES
  (32, 'Salto', 99072);

INSERT INTO
  ciudad
VALUES
  (33, 'Asuncion', 520000);

INSERT INTO
  ciudad
VALUES
  (33, 'Ciudad del Este', 222000);

INSERT INTO
  ciudad
VALUES
  (33, 'Fernando de la Mora', 114000);

INSERT INTO
  ciudad
VALUES
  (33, 'Lambare', 120000);

INSERT INTO
  ciudad
VALUES
  (33, 'San Lorenzo', 202000);

INSERT INTO
  ciudad
VALUES
  (34, 'Arequipa', 821692);

INSERT INTO
  ciudad
VALUES
  (34, 'Ayacucho', 151019);

INSERT INTO
  ciudad
VALUES
  (34, 'Cuzco', 338965);

INSERT INTO
  ciudad
VALUES
  (34, 'Huancayo', 336293);

INSERT INTO
  ciudad
VALUES
  (34, 'Ica', 290000);

INSERT INTO
  ciudad
VALUES
  (34, 'Lima', 7584000);

INSERT INTO
  ciudad
VALUES
  (34, 'Trujillo', 804296);

INSERT INTO
  ciudad
VALUES
  (35, 'Guayaquil', 3328534);

INSERT INTO
  ciudad
VALUES
  (35, 'Quito', 2104991);

INSERT INTO
  ciudad
VALUES
  (36, 'Cochabamba', 586813);

INSERT INTO
  ciudad
VALUES
  (36, 'La Paz', 872480);

INSERT INTO
  ciudad
VALUES
  (36, 'Santa Cruz', 1538343);

INSERT INTO
  ciudad
VALUES
  (36, 'Sucre', 256225);

INSERT INTO
  ciudad
VALUES
  (37, 'Barranquilla', 1146359);

INSERT INTO
  ciudad
VALUES
  (37, 'Bogota', 6840116);

INSERT INTO
  ciudad
VALUES
  (37, 'Cali', 2119908);

INSERT INTO
  ciudad
VALUES
  (37, 'Cartagena', 892545);

INSERT INTO
  ciudad
VALUES
  (37, 'Medellin', 2216830);

INSERT INTO
  ciudad
VALUES
  (38, 'Barcelona', 359984);

INSERT INTO
  ciudad
VALUES
  (38, 'Barquisimeto', 1200000);

INSERT INTO
  ciudad
VALUES
  (38, 'Caracas', 5357423);

INSERT INTO
  ciudad
VALUES
  (38, 'Maracaibo', 1863824);

INSERT INTO
  ciudad
VALUES
  (38, 'Maracay', 1176373);

INSERT INTO
  ciudad
VALUES
  (38, 'Valencia', 1487863);

INSERT INTO
  ciudad
VALUES
  (39, 'Boston', 596638);

INSERT INTO
  ciudad
VALUES
  (39, 'Chicago', 2842518);

INSERT INTO
  ciudad
VALUES
  (39, 'Denver', 557917);

INSERT INTO
  ciudad
VALUES
  (39, 'Detroit', 886675);

INSERT INTO
  ciudad
VALUES
  (39, 'Filadelfia', 1463281);

INSERT INTO
  ciudad
VALUES
  (39, 'Houston', 1312626);

INSERT INTO
  ciudad
VALUES
  (39, 'Jacksonville', 794555);

INSERT INTO
  ciudad
VALUES
  (39, 'Los angeles', 3849378);

INSERT INTO
  ciudad
VALUES
  (39, 'Miami', 409719);

INSERT INTO
  ciudad
VALUES
  (39, 'Nueva York', 8214426);

INSERT INTO
  ciudad
VALUES
  (39, 'San Antonio', 1296682);

INSERT INTO
  ciudad
VALUES
  (39, 'San Diego', 1255240);

INSERT INTO
  ciudad
VALUES
  (39, 'San Francisco', 739426);

INSERT INTO
  ciudad
VALUES
  (39, 'Washington D.C.', 553523);

INSERT INTO
  ciudad
VALUES
  (40, 'Calgary', 988193);

INSERT INTO
  ciudad
VALUES
  (40, 'Montreal', 1620693);

INSERT INTO
  ciudad
VALUES
  (40, 'Ottawa', 812129);

INSERT INTO
  ciudad
VALUES
  (40, 'Toronto', 2503281);

INSERT INTO
  ciudad
VALUES
  (40, 'Vancouver', 578041);

INSERT INTO
  ciudad
VALUES
  (41, 'Guadalajara', 4095853);

INSERT INTO
  ciudad
VALUES
  (41, 'Mejico D.F.', 19231829);

INSERT INTO
  ciudad
VALUES
  (41, 'Monterrey', 3664331);

INSERT INTO
  ciudad
VALUES
  (41, 'Puebla', 210949);

INSERT INTO
  ciudad
VALUES
  (41, 'Tijuana', 1484005);

INSERT INTO
  ciudad
VALUES
  (42, 'Moscu', 11273400);

INSERT INTO
  ciudad
VALUES
  (42, 'Omsk', 1160000);

INSERT INTO
  ciudad
VALUES
  (42, 'San Petesburgo', 4577751);

INSERT INTO
  ciudad
VALUES
  (42, 'Vologrado', 1012800);

INSERT INTO
  ciudad
VALUES
  (43, 'Hangzhou', 2636700);

INSERT INTO
  ciudad
VALUES
  (43, 'Hong Kong', 6985200);

INSERT INTO
  ciudad
VALUES
  (43, 'Pekin', 17430000);

INSERT INTO
  ciudad
VALUES
  (43, 'Shanghai', 18403769);

INSERT INTO
  ciudad
VALUES
  (44, 'Camagüey', 301574);

INSERT INTO
  ciudad
VALUES
  (44, 'Guantanamo', 208145);

INSERT INTO
  ciudad
VALUES
  (44, 'Holguin', 269618);

INSERT INTO
  ciudad
VALUES
  (44, 'La Habana', 2201610);

INSERT INTO
  ciudad
VALUES
  (44, 'Santa Clara', 210220);

INSERT INTO
  ciudad
VALUES
  (44, 'Santiago de Cuba', 423392);

INSERT INTO
  ciudad
VALUES
  (46, 'Bombay', 13691836);

INSERT INTO
  ciudad
VALUES
  (46, 'Calcuta', 4580544);

INSERT INTO
  ciudad
VALUES
  (46, 'Nueva Delhi', 14100000);

INSERT INTO
  ciudad
VALUES
  (47, 'Islamabad', 805000);

INSERT INTO
  ciudad
VALUES
  (47, 'Karachi', 11969284);

INSERT INTO
  ciudad
VALUES
  (48, 'Chittagong', 3920222);

INSERT INTO
  ciudad
VALUES
  (48, 'Dacca', 6724976);

INSERT INTO
  ciudad
VALUES
  (49, 'Hiroshima', 1159391);

INSERT INTO
  ciudad
VALUES
  (49, 'Kawasaki', 1327009);

INSERT INTO
  ciudad
VALUES
  (49, 'Kyoto', 1474764);

INSERT INTO
  ciudad
VALUES
  (49, 'Nagoya', 2215031);

INSERT INTO
  ciudad
VALUES
  (49, 'Osaka', 2628776);

INSERT INTO
  ciudad
VALUES
  (49, 'Tokio', 8483050);

INSERT INTO
  ciudad
VALUES
  (49, 'Yokohama', 3579133);

INSERT INTO
  ciudad
VALUES
  (50, 'Surabaya', 3520874);

INSERT INTO
  ciudad
VALUES
  (50, 'Yakarta', 11500000);

INSERT INTO
  ciudad
VALUES
  (51, 'Abuya', 405000);

INSERT INTO
  ciudad
VALUES
  (51, 'Lagos', 7937932);

INSERT INTO
  ciudad
VALUES
  (51, 'Port Harcourt', 1133400);

INSERT INTO
  ciudad
VALUES
  (52, 'Reikiavik', 119848);

INSERT INTO
  ciudad
VALUES
  (52, 'Akureyri', 17253);

INSERT INTO
  ciudad
VALUES
  (53, 'Rabat', 1622860);

INSERT INTO
  ciudad
VALUES
  (53, 'Casablanca', 3672900);

INSERT INTO
  ciudad
VALUES
  (53, 'Sale', 830000);

INSERT INTO
  ciudad
VALUES
  (53, 'Tanger', 1239829);

INSERT INTO
  ciudad
VALUES
  (54, 'Argel', 2159051);

INSERT INTO
  ciudad
VALUES
  (54, 'Bugia', 210000);

INSERT INTO
  ciudad
VALUES
  (54, 'Oran', 1000000);

INSERT INTO
  ciudad
VALUES
  (55, 'Tunez', 2380500);

INSERT INTO
  ciudad
VALUES
  (55, 'Kasserine', 422900);

INSERT INTO
  ciudad
VALUES
  (56, 'Tripoli', 1682000);

INSERT INTO
  ciudad
VALUES
  (56, 'Bengasi', 650629);

INSERT INTO
  ciudad
VALUES
  (57, 'El Cairo', 6879479);

INSERT INTO
  ciudad
VALUES
  (57, 'Alejandria', 3917082);

INSERT INTO
  ciudad
VALUES
  (57, 'Luxor', 451318);

INSERT INTO
  ciudad
VALUES
  (57, 'Asuan', 219017);

INSERT INTO
  ciudad
VALUES
  (58, 'Nuakchot', 881000);

INSERT INTO
  ciudad
VALUES
  (58, 'Nuadibu', 90000);

INSERT INTO
  ciudad
VALUES
  (59, 'Bamako', 1690471);

INSERT INTO
  ciudad
VALUES
  (59, 'Tombuctu', 35657);

INSERT INTO
  ciudad
VALUES
  (59, 'Sikasso', 199515);

INSERT INTO
  ciudad
VALUES
  (59, 'Kayes', 138017);

INSERT INTO
  ciudad
VALUES
  (59, 'Segu', 105058);

INSERT INTO
  ciudad
VALUES
  (60, 'Niamey', 707951);

INSERT INTO
  ciudad
VALUES
  (60, 'Zinder', 196744);

INSERT INTO
  ciudad
VALUES
  (60, 'Maradi', 148017);

INSERT INTO
  ciudad
VALUES
  (61, 'NDjamena', 993492);

INSERT INTO
  ciudad
VALUES
  (61, 'Sarh', 104831);

INSERT INTO
  ciudad
VALUES
  (61, 'Moundou', 142462);

INSERT INTO
  ciudad
VALUES
  (62, 'Jartum', 1000000);

INSERT INTO
  ciudad
VALUES
  (62, 'Omdurman', 2970099);

INSERT INTO
  ciudad
VALUES
  (62, 'Juba', 163442);

INSERT INTO
  ciudad
VALUES
  (63, 'Asmara', 1062676);

INSERT INTO
  ciudad
VALUES
  (63, 'Assab', 70000);

INSERT INTO
  ciudad
VALUES
  (63, 'Keren', 70000);

INSERT INTO
  ciudad
VALUES
  (64, 'Addis Abeba', 3941452);

INSERT INTO
  ciudad
VALUES
  (64, 'Dire Dawa', 432725);

INSERT INTO
  ciudad
VALUES
  (64, 'Adama', 279317);

INSERT INTO
  ciudad
VALUES
  (64, 'Gondar', 209471);

INSERT INTO
  ciudad
VALUES
  (65, 'Yibuti', 395000);

INSERT INTO
  ciudad
VALUES
  (66, 'Dakar', 1030594);

INSERT INTO
  ciudad
VALUES
  (66, 'Saint-Louis', 176000);

INSERT INTO
  ciudad
VALUES
  (67, 'Bissau', 350000);

INSERT INTO
  ciudad
VALUES
  (67, 'Cacheu', 5471);

INSERT INTO
  ciudad
VALUES
  (68, 'Praia', 113000);

INSERT INTO
  ciudad
VALUES
  (69, 'Conakry', 2000000);

INSERT INTO
  ciudad
VALUES
  (69, 'Labe', 700000);

INSERT INTO
  ciudad
VALUES
  (69, 'Kankan', 439017);

INSERT INTO
  ciudad
VALUES
  (70, 'Freetown', 1070200);

INSERT INTO
  ciudad
VALUES
  (70, 'Bo', 269000);

INSERT INTO
  ciudad
VALUES
  (71, 'Monrovia', 550200);

INSERT INTO
  ciudad
VALUES
  (71, 'Gbarnga', 46395);

INSERT INTO
  ciudad
VALUES
  (72, 'Yamusukro', 200103);

INSERT INTO
  ciudad
VALUES
  (72, 'Abiyan', 3796677);

INSERT INTO
  ciudad
VALUES
  (73, 'Accra', 2029143);

INSERT INTO
  ciudad
VALUES
  (74, 'Lome', 737751);

INSERT INTO
  ciudad
VALUES
  (74, 'Sokode', 49000);

INSERT INTO
  ciudad
VALUES
  (74, 'Palime', 28000);

INSERT INTO
  ciudad
VALUES
  (74, 'Atakpame', 27000);

INSERT INTO
  ciudad
VALUES
  (75, 'Porto Novo', 238199);

INSERT INTO
  ciudad
VALUES
  (75, 'Cotonu', 761137);

INSERT INTO
  ciudad
VALUES
  (76, 'San Jose', 1608476);

INSERT INTO
  ciudad
VALUES
  (77, 'Yaunde', 1728900);

INSERT INTO
  ciudad
VALUES
  (77, 'Garoua', 490000);

INSERT INTO
  ciudad
VALUES
  (77, 'Maroua', 299600);

INSERT INTO
  ciudad
VALUES
  (78, 'Bangui', 684190);

INSERT INTO
  ciudad
VALUES
  (78, 'Bouar', 96595);

INSERT INTO
  ciudad
VALUES
  (79, 'Malabo', 90000);

INSERT INTO
  ciudad
VALUES
  (79, 'Bata', 110000);

INSERT INTO
  ciudad
VALUES
  (80, 'Santo Tome', 53000);

INSERT INTO
  ciudad
VALUES
  (80, 'San Antonio', 8000);

INSERT INTO
  ciudad
VALUES
  (81, 'Libreville', 578156);

INSERT INTO
  ciudad
VALUES
  (81, 'Franceville', 42967);

INSERT INTO
  ciudad
VALUES
  (81, 'Lambarene', 24000);

INSERT INTO
  ciudad
VALUES
  (82, 'Brazzaville', 1500000);

INSERT INTO
  ciudad
VALUES
  (83, 'Kinshasa', 9518988);

INSERT INTO
  ciudad
VALUES
  (83, 'Matadi', 245862);

INSERT INTO
  ciudad
VALUES
  (83, 'Kikwit', 249000);

INSERT INTO
  ciudad
VALUES
  (83, 'Kananga', 1130000);

INSERT INTO
  ciudad
VALUES
  (83, 'Mbuji-Mayi', 1300000);

INSERT INTO
  ciudad
VALUES
  (84, 'Kampala', 1208544);

INSERT INTO
  ciudad
VALUES
  (84, 'Abim', 58590);

INSERT INTO
  ciudad
VALUES
  (84, 'Kaabong', 379775);

INSERT INTO
  idioma
VALUES
  (1, 'Castellano');

INSERT INTO
  idioma
VALUES
  (2, 'Catalan');

INSERT INTO
  idioma
VALUES
  (3, 'Gallego');

INSERT INTO
  idioma
VALUES
  (4, 'Euskera');

INSERT INTO
  idioma
VALUES
  (5, 'Frances');

INSERT INTO
  idioma
VALUES
  (6, 'Ingles');

INSERT INTO
  idioma
VALUES
  (7, 'Portugues');

INSERT INTO
  idioma
VALUES
  (8, 'Aleman');

INSERT INTO
  idioma
VALUES
  (9, 'Italiano');

INSERT INTO
  idioma
VALUES
  (10, 'Romanche');

INSERT INTO
  idioma
VALUES
  (11, 'Gales');

INSERT INTO
  idioma
VALUES
  (12, 'Gaelico Escoces');

INSERT INTO
  idioma
VALUES
  (13, 'Monegasco');

INSERT INTO
  idioma
VALUES
  (14, 'Neerlandes');

INSERT INTO
  idioma
VALUES
  (15, 'Frison');

INSERT INTO
  idioma
VALUES
  (16, 'Luxemburgues');

INSERT INTO
  idioma
VALUES
  (17, 'Danes');

INSERT INTO
  idioma
VALUES
  (18, 'Noruego');

INSERT INTO
  idioma
VALUES
  (19, 'Sami');

INSERT INTO
  idioma
VALUES
  (20, 'Fines');

INSERT INTO
  idioma
VALUES
  (21, 'Sueco');

INSERT INTO
  idioma
VALUES
  (22, 'Polaco');

INSERT INTO
  idioma
VALUES
  (23, 'Hungaro');

INSERT INTO
  idioma
VALUES
  (24, 'Bulgaro');

INSERT INTO
  idioma
VALUES
  (25, 'Rumano');

INSERT INTO
  idioma
VALUES
  (26, 'Griego');

INSERT INTO
  idioma
VALUES
  (27, 'Turco');

INSERT INTO
  idioma
VALUES
  (28, 'Maltes');

INSERT INTO
  idioma
VALUES
  (29, 'Albanes');

INSERT INTO
  idioma
VALUES
  (30, 'Checo');

INSERT INTO
  idioma
VALUES
  (31, 'Eslovaco');

INSERT INTO
  idioma
VALUES
  (32, 'Irlandes');

INSERT INTO
  idioma
VALUES
  (33, 'Guarani');

INSERT INTO
  idioma
VALUES
  (34, 'Quechua');

INSERT INTO
  idioma
VALUES
  (35, 'Aimara');

INSERT INTO
  idioma
VALUES
  (36, 'Shuar');

INSERT INTO
  idioma
VALUES
  (37, 'Wayuu');

INSERT INTO
  idioma
VALUES
  (38, 'Guambiano');

INSERT INTO
  idioma
VALUES
  (39, 'Ruso');

INSERT INTO
  idioma
VALUES
  (40, 'Chino');

INSERT INTO
  idioma
VALUES
  (41, 'Urdu');

INSERT INTO
  idioma
VALUES
  (42, 'Hindi');

INSERT INTO
  idioma
VALUES
  (43, 'Bengali');

INSERT INTO
  idioma
VALUES
  (44, 'Japones');

INSERT INTO
  idioma
VALUES
  (45, 'Indonesio');

INSERT INTO
  idioma
VALUES
  (46, 'Islandes');

INSERT INTO
  idioma
VALUES
  (47, 'Arabe');

INSERT INTO
  idioma
VALUES
  (48, 'Bereber');

INSERT INTO
  idioma
VALUES
  (49, 'Fula');

INSERT INTO
  idioma
VALUES
  (50, 'Wolof');

INSERT INTO
  idioma
VALUES
  (51, 'Soninke');

INSERT INTO
  idioma
VALUES
  (52, 'Bambara');

INSERT INTO
  idioma
VALUES
  (53, 'Tigriña');

INSERT INTO
  idioma
VALUES
  (54, 'Amarico');

INSERT INTO
  idioma
VALUES
  (55, 'Dagbani');

INSERT INTO
  idioma
VALUES
  (56, 'Ga');

INSERT INTO
  idioma
VALUES
  (57, 'Twi');

INSERT INTO
  idioma
VALUES
  (58, 'Ewe');

INSERT INTO
  idioma
VALUES
  (59, 'Fante');

INSERT INTO
  idioma
VALUES
  (60, 'Sango');

INSERT INTO
  idioma
VALUES
  (61, 'Fang');

INSERT INTO
  idioma
VALUES
  (62, 'Bubi');

INSERT INTO
  idioma
VALUES
  (63, 'Lingala');

INSERT INTO
  idioma
VALUES
  (64, 'Kituba');

INSERT INTO
  idioma
VALUES
  (65, 'Suajili');

INSERT INTO
  idioma
VALUES
  (66, 'Kikongo');

INSERT INTO
  organizacion
VALUES
  (1, 'Organizacion de las Naciones Unidas', 'ONU');

INSERT INTO
  organizacion
VALUES
  (
    2,
    'Organizacion del Tratado Atlantico Norte',
    'OTAN'
  );

INSERT INTO
  organizacion
VALUES
  (
    3,
    'Organizacion de los Estados Americanos',
    'OEA'
  );

INSERT INTO
  organizacion
VALUES
  (
    4,
    'Foro de Cooperacion Economica Asia-Pacifico',
    'APEC'
  );

INSERT INTO
  organizacion
VALUES
  (
    5,
    'Organizacion para la Cooperacion y el Desarrollo Economico',
    'OCDE'
  );

INSERT INTO
  organizacion
VALUES
  (
    6,
    'Organizacion para la Seguridad y Cooperacion en Europa',
    'OSCE'
  );

INSERT INTO
  organizacion
VALUES
  (
    7,
    'Tratado de Libre Comercio de America del Norte',
    'TLCAN'
  );

INSERT INTO
  organizacion
VALUES
  (8, 'Union Europea', 'UE');

INSERT INTO
  organizacion
VALUES
  (9, 'Union Latina', 'UL');

INSERT INTO
  organizacion
VALUES
  (
    10,
    'Banco Europeo para la Construccion y el Desarrollo',
    'BERD'
  );

INSERT INTO
  organizacion
VALUES
  (11, 'Grupo de los Ocho', 'G-8');

INSERT INTO
  organizacion
VALUES
  (12, 'Francofonia', 'OIF');

INSERT INTO
  organizacion
VALUES
  (13, 'Commonwealth', 'CW');

INSERT INTO
  organizacion
VALUES
  (14, 'Benelux', 'BNL');

INSERT INTO
  organizacion
VALUES
  (15, 'Consejo de Estados del Mar Baltico', 'CBSS');

INSERT INTO
  organizacion
VALUES
  (16, 'Grupo Visegrad', 'V4');

INSERT INTO
  organizacion
VALUES
  (17, 'Union de Naciones Suramericanas', 'UNASUR');

INSERT INTO
  organizacion
VALUES
  (
    18,
    'Comunidad de Paises de Lengua Portuguesa',
    'CPLP'
  );

INSERT INTO
  organizacion
VALUES
  (19, 'Mercosur', 'MS');

INSERT INTO
  organizacion
VALUES
  (
    21,
    'Organizacion de Paises Exportadores de Petroleo',
    'OPEP'
  );

INSERT INTO
  organizacion
VALUES
  (
    22,
    'Asociacion Surasiatica para la Cooperacion Regional',
    'SAARC'
  );

INSERT INTO
  organizacion
VALUES
  (23, 'Liga Arabe', 'LA');

INSERT INTO
  organizacion
VALUES
  (24, 'Union del Magreb Arabe', 'UMA');

INSERT INTO
  organizacion
VALUES
  (25, 'Union Africana', 'UA');

INSERT INTO
  organizacion
VALUES
  (26, 'Union de Estados Centroamericanos', 'ODECA');

INSERT INTO
  organizacion
VALUES
  (27, 'Grupo de Rio', 'GR');

INSERT INTO
  organizacion
VALUES
  (28, 'Organizacion de Estados del Caribe', 'OEC');

INSERT INTO
  organizacion
VALUES
  (
    29,
    'Organizacion de Estados Iberoamericanos para la Educacion, Ciencia y Cultura',
    'OEI'
  );

INSERT INTO
  pertenece_a
VALUES
  (1, 53);

INSERT INTO
  pertenece_a
VALUES
  (23, 53);

INSERT INTO
  pertenece_a
VALUES
  (24, 53);

INSERT INTO
  pertenece_a
VALUES
  (2, 52);

INSERT INTO
  pertenece_a
VALUES
  (1, 52);

INSERT INTO
  pertenece_a
VALUES
  (5, 52);

INSERT INTO
  pertenece_a
VALUES
  (1, 1);

INSERT INTO
  pertenece_a
VALUES
  (1, 2);

INSERT INTO
  pertenece_a
VALUES
  (1, 3);

INSERT INTO
  pertenece_a
VALUES
  (1, 4);

INSERT INTO
  pertenece_a
VALUES
  (1, 5);

INSERT INTO
  pertenece_a
VALUES
  (1, 6);

INSERT INTO
  pertenece_a
VALUES
  (1, 7);

INSERT INTO
  pertenece_a
VALUES
  (1, 8);

INSERT INTO
  pertenece_a
VALUES
  (1, 9);

INSERT INTO
  pertenece_a
VALUES
  (1, 10);

INSERT INTO
  pertenece_a
VALUES
  (1, 11);

INSERT INTO
  pertenece_a
VALUES
  (1, 12);

INSERT INTO
  pertenece_a
VALUES
  (1, 13);

INSERT INTO
  pertenece_a
VALUES
  (1, 14);

INSERT INTO
  pertenece_a
VALUES
  (1, 15);

INSERT INTO
  pertenece_a
VALUES
  (1, 16);

INSERT INTO
  pertenece_a
VALUES
  (1, 17);

INSERT INTO
  pertenece_a
VALUES
  (1, 18);

INSERT INTO
  pertenece_a
VALUES
  (1, 19);

INSERT INTO
  pertenece_a
VALUES
  (1, 20);

INSERT INTO
  pertenece_a
VALUES
  (1, 21);

INSERT INTO
  pertenece_a
VALUES
  (1, 22);

INSERT INTO
  pertenece_a
VALUES
  (1, 23);

INSERT INTO
  pertenece_a
VALUES
  (1, 24);

INSERT INTO
  pertenece_a
VALUES
  (1, 25);

INSERT INTO
  pertenece_a
VALUES
  (1, 26);

INSERT INTO
  pertenece_a
VALUES
  (1, 27);

INSERT INTO
  pertenece_a
VALUES
  (1, 28);

INSERT INTO
  pertenece_a
VALUES
  (1, 29);

INSERT INTO
  pertenece_a
VALUES
  (1, 30);

INSERT INTO
  pertenece_a
VALUES
  (1, 31);

INSERT INTO
  pertenece_a
VALUES
  (1, 32);

INSERT INTO
  pertenece_a
VALUES
  (1, 33);

INSERT INTO
  pertenece_a
VALUES
  (1, 34);

INSERT INTO
  pertenece_a
VALUES
  (1, 35);

INSERT INTO
  pertenece_a
VALUES
  (1, 36);

INSERT INTO
  pertenece_a
VALUES
  (1, 37);

INSERT INTO
  pertenece_a
VALUES
  (1, 38);

INSERT INTO
  pertenece_a
VALUES
  (1, 39);

INSERT INTO
  pertenece_a
VALUES
  (1, 40);

INSERT INTO
  pertenece_a
VALUES
  (1, 41);

INSERT INTO
  pertenece_a
VALUES
  (1, 42);

INSERT INTO
  pertenece_a
VALUES
  (1, 43);

INSERT INTO
  pertenece_a
VALUES
  (1, 44);

INSERT INTO
  pertenece_a
VALUES
  (1, 46);

INSERT INTO
  pertenece_a
VALUES
  (1, 47);

INSERT INTO
  pertenece_a
VALUES
  (1, 48);

INSERT INTO
  pertenece_a
VALUES
  (1, 49);

INSERT INTO
  pertenece_a
VALUES
  (1, 50);

INSERT INTO
  pertenece_a
VALUES
  (1, 51);

INSERT INTO
  pertenece_a
VALUES
  (2, 1);

INSERT INTO
  pertenece_a
VALUES
  (2, 2);

INSERT INTO
  pertenece_a
VALUES
  (2, 3);

INSERT INTO
  pertenece_a
VALUES
  (2, 4);

INSERT INTO
  pertenece_a
VALUES
  (2, 5);

INSERT INTO
  pertenece_a
VALUES
  (2, 9);

INSERT INTO
  pertenece_a
VALUES
  (2, 10);

INSERT INTO
  pertenece_a
VALUES
  (2, 11);

INSERT INTO
  pertenece_a
VALUES
  (2, 12);

INSERT INTO
  pertenece_a
VALUES
  (2, 13);

INSERT INTO
  pertenece_a
VALUES
  (2, 17);

INSERT INTO
  pertenece_a
VALUES
  (2, 18);

INSERT INTO
  pertenece_a
VALUES
  (2, 19);

INSERT INTO
  pertenece_a
VALUES
  (2, 20);

INSERT INTO
  pertenece_a
VALUES
  (2, 21);

INSERT INTO
  pertenece_a
VALUES
  (2, 24);

INSERT INTO
  pertenece_a
VALUES
  (2, 25);

INSERT INTO
  pertenece_a
VALUES
  (2, 26);

INSERT INTO
  pertenece_a
VALUES
  (2, 39);

INSERT INTO
  pertenece_a
VALUES
  (2, 40);

INSERT INTO
  pertenece_a
VALUES
  (3, 29);

INSERT INTO
  pertenece_a
VALUES
  (3, 30);

INSERT INTO
  pertenece_a
VALUES
  (3, 31);

INSERT INTO
  pertenece_a
VALUES
  (3, 32);

INSERT INTO
  pertenece_a
VALUES
  (3, 33);

INSERT INTO
  pertenece_a
VALUES
  (3, 34);

INSERT INTO
  pertenece_a
VALUES
  (3, 35);

INSERT INTO
  pertenece_a
VALUES
  (3, 37);

INSERT INTO
  pertenece_a
VALUES
  (3, 38);

INSERT INTO
  pertenece_a
VALUES
  (3, 39);

INSERT INTO
  pertenece_a
VALUES
  (3, 40);

INSERT INTO
  pertenece_a
VALUES
  (3, 41);

INSERT INTO
  pertenece_a
VALUES
  (4, 39);

INSERT INTO
  pertenece_a
VALUES
  (4, 42);

INSERT INTO
  pertenece_a
VALUES
  (4, 43);

INSERT INTO
  pertenece_a
VALUES
  (4, 49);

INSERT INTO
  pertenece_a
VALUES
  (4, 50);

INSERT INTO
  pertenece_a
VALUES
  (5, 1);

INSERT INTO
  pertenece_a
VALUES
  (5, 3);

INSERT INTO
  pertenece_a
VALUES
  (5, 4);

INSERT INTO
  pertenece_a
VALUES
  (5, 5);

INSERT INTO
  pertenece_a
VALUES
  (5, 6);

INSERT INTO
  pertenece_a
VALUES
  (5, 9);

INSERT INTO
  pertenece_a
VALUES
  (5, 10);

INSERT INTO
  pertenece_a
VALUES
  (5, 11);

INSERT INTO
  pertenece_a
VALUES
  (5, 12);

INSERT INTO
  pertenece_a
VALUES
  (5, 13);

INSERT INTO
  pertenece_a
VALUES
  (5, 14);

INSERT INTO
  pertenece_a
VALUES
  (5, 15);

INSERT INTO
  pertenece_a
VALUES
  (5, 16);

INSERT INTO
  pertenece_a
VALUES
  (5, 17);

INSERT INTO
  pertenece_a
VALUES
  (5, 18);

INSERT INTO
  pertenece_a
VALUES
  (5, 21);

INSERT INTO
  pertenece_a
VALUES
  (5, 25);

INSERT INTO
  pertenece_a
VALUES
  (5, 26);

INSERT INTO
  pertenece_a
VALUES
  (5, 27);

INSERT INTO
  pertenece_a
VALUES
  (5, 28);

INSERT INTO
  pertenece_a
VALUES
  (5, 39);

INSERT INTO
  pertenece_a
VALUES
  (5, 40);

INSERT INTO
  pertenece_a
VALUES
  (5, 41);

INSERT INTO
  pertenece_a
VALUES
  (6, 1);

INSERT INTO
  pertenece_a
VALUES
  (6, 2);

INSERT INTO
  pertenece_a
VALUES
  (6, 3);

INSERT INTO
  pertenece_a
VALUES
  (6, 4);

INSERT INTO
  pertenece_a
VALUES
  (6, 5);

INSERT INTO
  pertenece_a
VALUES
  (6, 6);

INSERT INTO
  pertenece_a
VALUES
  (6, 7);

INSERT INTO
  pertenece_a
VALUES
  (6, 8);

INSERT INTO
  pertenece_a
VALUES
  (6, 9);

INSERT INTO
  pertenece_a
VALUES
  (6, 10);

INSERT INTO
  pertenece_a
VALUES
  (6, 11);

INSERT INTO
  pertenece_a
VALUES
  (6, 12);

INSERT INTO
  pertenece_a
VALUES
  (6, 13);

INSERT INTO
  pertenece_a
VALUES
  (6, 14);

INSERT INTO
  pertenece_a
VALUES
  (6, 15);

INSERT INTO
  pertenece_a
VALUES
  (6, 16);

INSERT INTO
  pertenece_a
VALUES
  (6, 17);

INSERT INTO
  pertenece_a
VALUES
  (6, 18);

INSERT INTO
  pertenece_a
VALUES
  (6, 19);

INSERT INTO
  pertenece_a
VALUES
  (6, 20);

INSERT INTO
  pertenece_a
VALUES
  (6, 21);

INSERT INTO
  pertenece_a
VALUES
  (6, 22);

INSERT INTO
  pertenece_a
VALUES
  (6, 23);

INSERT INTO
  pertenece_a
VALUES
  (6, 24);

INSERT INTO
  pertenece_a
VALUES
  (6, 25);

INSERT INTO
  pertenece_a
VALUES
  (6, 26);

INSERT INTO
  pertenece_a
VALUES
  (6, 27);

INSERT INTO
  pertenece_a
VALUES
  (6, 28);

INSERT INTO
  pertenece_a
VALUES
  (6, 39);

INSERT INTO
  pertenece_a
VALUES
  (6, 40);

INSERT INTO
  pertenece_a
VALUES
  (6, 42);

INSERT INTO
  pertenece_a
VALUES
  (6, 49);

INSERT INTO
  pertenece_a
VALUES
  (7, 39);

INSERT INTO
  pertenece_a
VALUES
  (7, 40);

INSERT INTO
  pertenece_a
VALUES
  (7, 41);

INSERT INTO
  pertenece_a
VALUES
  (8, 1);

INSERT INTO
  pertenece_a
VALUES
  (8, 2);

INSERT INTO
  pertenece_a
VALUES
  (8, 3);

INSERT INTO
  pertenece_a
VALUES
  (8, 4);

INSERT INTO
  pertenece_a
VALUES
  (8, 5);

INSERT INTO
  pertenece_a
VALUES
  (8, 9);

INSERT INTO
  pertenece_a
VALUES
  (8, 10);

INSERT INTO
  pertenece_a
VALUES
  (8, 11);

INSERT INTO
  pertenece_a
VALUES
  (8, 12);

INSERT INTO
  pertenece_a
VALUES
  (8, 13);

INSERT INTO
  pertenece_a
VALUES
  (8, 14);

INSERT INTO
  pertenece_a
VALUES
  (8, 15);

INSERT INTO
  pertenece_a
VALUES
  (8, 16);

INSERT INTO
  pertenece_a
VALUES
  (8, 17);

INSERT INTO
  pertenece_a
VALUES
  (8, 18);

INSERT INTO
  pertenece_a
VALUES
  (8, 19);

INSERT INTO
  pertenece_a
VALUES
  (8, 20);

INSERT INTO
  pertenece_a
VALUES
  (8, 21);

INSERT INTO
  pertenece_a
VALUES
  (8, 22);

INSERT INTO
  pertenece_a
VALUES
  (8, 23);

INSERT INTO
  pertenece_a
VALUES
  (8, 25);

INSERT INTO
  pertenece_a
VALUES
  (8, 26);

INSERT INTO
  pertenece_a
VALUES
  (8, 27);

INSERT INTO
  pertenece_a
VALUES
  (8, 28);

INSERT INTO
  pertenece_a
VALUES
  (9, 1);

INSERT INTO
  pertenece_a
VALUES
  (9, 2);

INSERT INTO
  pertenece_a
VALUES
  (9, 20);

INSERT INTO
  pertenece_a
VALUES
  (9, 31);

INSERT INTO
  pertenece_a
VALUES
  (9, 32);

INSERT INTO
  pertenece_a
VALUES
  (9, 33);

INSERT INTO
  pertenece_a
VALUES
  (9, 36);

INSERT INTO
  pertenece_a
VALUES
  (9, 41);

INSERT INTO
  pertenece_a
VALUES
  (10, 1);

INSERT INTO
  pertenece_a
VALUES
  (10, 2);

INSERT INTO
  pertenece_a
VALUES
  (11, 2);

INSERT INTO
  pertenece_a
VALUES
  (11, 3);

INSERT INTO
  pertenece_a
VALUES
  (11, 5);

INSERT INTO
  pertenece_a
VALUES
  (11, 12);

INSERT INTO
  pertenece_a
VALUES
  (11, 39);

INSERT INTO
  pertenece_a
VALUES
  (11, 40);

INSERT INTO
  pertenece_a
VALUES
  (11, 42);

INSERT INTO
  pertenece_a
VALUES
  (11, 49);

INSERT INTO
  pertenece_a
VALUES
  (12, 2);

INSERT INTO
  pertenece_a
VALUES
  (12, 7);

INSERT INTO
  pertenece_a
VALUES
  (12, 9);

INSERT INTO
  pertenece_a
VALUES
  (12, 11);

INSERT INTO
  pertenece_a
VALUES
  (13, 3);

INSERT INTO
  pertenece_a
VALUES
  (13, 23);

INSERT INTO
  pertenece_a
VALUES
  (13, 40);

INSERT INTO
  pertenece_a
VALUES
  (13, 46);

INSERT INTO
  pertenece_a
VALUES
  (13, 48);

INSERT INTO
  pertenece_a
VALUES
  (13, 51);

INSERT INTO
  pertenece_a
VALUES
  (14, 9);

INSERT INTO
  pertenece_a
VALUES
  (14, 10);

INSERT INTO
  pertenece_a
VALUES
  (14, 11);

INSERT INTO
  pertenece_a
VALUES
  (15, 12);

INSERT INTO
  pertenece_a
VALUES
  (15, 13);

INSERT INTO
  pertenece_a
VALUES
  (15, 14);

INSERT INTO
  pertenece_a
VALUES
  (15, 15);

INSERT INTO
  pertenece_a
VALUES
  (15, 16);

INSERT INTO
  pertenece_a
VALUES
  (15, 42);

INSERT INTO
  pertenece_a
VALUES
  (16, 17);

INSERT INTO
  pertenece_a
VALUES
  (16, 18);

INSERT INTO
  pertenece_a
VALUES
  (16, 25);

INSERT INTO
  pertenece_a
VALUES
  (16, 26);

INSERT INTO
  pertenece_a
VALUES
  (17, 29);

INSERT INTO
  pertenece_a
VALUES
  (17, 30);

INSERT INTO
  pertenece_a
VALUES
  (17, 31);

INSERT INTO
  pertenece_a
VALUES
  (17, 32);

INSERT INTO
  pertenece_a
VALUES
  (17, 33);

INSERT INTO
  pertenece_a
VALUES
  (17, 34);

INSERT INTO
  pertenece_a
VALUES
  (17, 35);

INSERT INTO
  pertenece_a
VALUES
  (17, 36);

INSERT INTO
  pertenece_a
VALUES
  (17, 37);

INSERT INTO
  pertenece_a
VALUES
  (18, 4);

INSERT INTO
  pertenece_a
VALUES
  (18, 29);

INSERT INTO
  pertenece_a
VALUES
  (19, 29);

INSERT INTO
  pertenece_a
VALUES
  (19, 30);

INSERT INTO
  pertenece_a
VALUES
  (19, 31);

INSERT INTO
  pertenece_a
VALUES
  (19, 32);

INSERT INTO
  pertenece_a
VALUES
  (19, 33);

INSERT INTO
  pertenece_a
VALUES
  (19, 34);

INSERT INTO
  pertenece_a
VALUES
  (19, 35);

INSERT INTO
  pertenece_a
VALUES
  (19, 36);

INSERT INTO
  pertenece_a
VALUES
  (19, 37);

INSERT INTO
  pertenece_a
VALUES
  (19, 38);

INSERT INTO
  pertenece_a
VALUES
  (21, 35);

INSERT INTO
  pertenece_a
VALUES
  (21, 38);

INSERT INTO
  pertenece_a
VALUES
  (21, 51);

INSERT INTO
  pertenece_a
VALUES
  (22, 46);

INSERT INTO
  pertenece_a
VALUES
  (22, 47);

INSERT INTO
  pertenece_a
VALUES
  (22, 48);

INSERT INTO
  se_habla
VALUES
  (53, 5);

INSERT INTO
  se_habla
VALUES
  (53, 47);

INSERT INTO
  se_habla
VALUES
  (53, 48);

INSERT INTO
  se_habla
VALUES
  (52, 46);

INSERT INTO
  se_habla
VALUES
  (1, 1);

INSERT INTO
  se_habla
VALUES
  (30, 1);

INSERT INTO
  se_habla
VALUES
  (31, 1);

INSERT INTO
  se_habla
VALUES
  (32, 1);

INSERT INTO
  se_habla
VALUES
  (33, 1);

INSERT INTO
  se_habla
VALUES
  (34, 1);

INSERT INTO
  se_habla
VALUES
  (35, 1);

INSERT INTO
  se_habla
VALUES
  (36, 1);

INSERT INTO
  se_habla
VALUES
  (37, 1);

INSERT INTO
  se_habla
VALUES
  (38, 1);

INSERT INTO
  se_habla
VALUES
  (41, 1);

INSERT INTO
  se_habla
VALUES
  (44, 1);

INSERT INTO
  se_habla
VALUES
  (1, 2);

INSERT INTO
  se_habla
VALUES
  (1, 3);

INSERT INTO
  se_habla
VALUES
  (1, 4);

INSERT INTO
  se_habla
VALUES
  (2, 5);

INSERT INTO
  se_habla
VALUES
  (6, 5);

INSERT INTO
  se_habla
VALUES
  (7, 5);

INSERT INTO
  se_habla
VALUES
  (9, 5);

INSERT INTO
  se_habla
VALUES
  (11, 5);

INSERT INTO
  se_habla
VALUES
  (40, 5);

INSERT INTO
  se_habla
VALUES
  (3, 6);

INSERT INTO
  se_habla
VALUES
  (23, 6);

INSERT INTO
  se_habla
VALUES
  (28, 6);

INSERT INTO
  se_habla
VALUES
  (39, 6);

INSERT INTO
  se_habla
VALUES
  (40, 6);

INSERT INTO
  se_habla
VALUES
  (47, 6);

INSERT INTO
  se_habla
VALUES
  (4, 7);

INSERT INTO
  se_habla
VALUES
  (29, 7);

INSERT INTO
  se_habla
VALUES
  (6, 8);

INSERT INTO
  se_habla
VALUES
  (8, 8);

INSERT INTO
  se_habla
VALUES
  (9, 8);

INSERT INTO
  se_habla
VALUES
  (11, 8);

INSERT INTO
  se_habla
VALUES
  (12, 8);

INSERT INTO
  se_habla
VALUES
  (27, 8);

INSERT INTO
  se_habla
VALUES
  (5, 9);

INSERT INTO
  se_habla
VALUES
  (6, 10);

INSERT INTO
  se_habla
VALUES
  (3, 11);

INSERT INTO
  se_habla
VALUES
  (3, 12);

INSERT INTO
  se_habla
VALUES
  (7, 13);

INSERT INTO
  se_habla
VALUES
  (9, 14);

INSERT INTO
  se_habla
VALUES
  (10, 14);

INSERT INTO
  se_habla
VALUES
  (10, 15);

INSERT INTO
  se_habla
VALUES
  (11, 16);

INSERT INTO
  se_habla
VALUES
  (13, 17);

INSERT INTO
  se_habla
VALUES
  (14, 18);

INSERT INTO
  se_habla
VALUES
  (14, 19);

INSERT INTO
  se_habla
VALUES
  (15, 20);

INSERT INTO
  se_habla
VALUES
  (15, 21);

INSERT INTO
  se_habla
VALUES
  (16, 21);

INSERT INTO
  se_habla
VALUES
  (17, 22);

INSERT INTO
  se_habla
VALUES
  (18, 23);

INSERT INTO
  se_habla
VALUES
  (19, 24);

INSERT INTO
  se_habla
VALUES
  (20, 25);

INSERT INTO
  se_habla
VALUES
  (21, 26);

INSERT INTO
  se_habla
VALUES
  (22, 26);

INSERT INTO
  se_habla
VALUES
  (24, 26);

INSERT INTO
  se_habla
VALUES
  (22, 27);

INSERT INTO
  se_habla
VALUES
  (23, 28);

INSERT INTO
  se_habla
VALUES
  (24, 29);

INSERT INTO
  se_habla
VALUES
  (25, 30);

INSERT INTO
  se_habla
VALUES
  (26, 31);

INSERT INTO
  se_habla
VALUES
  (28, 32);

INSERT INTO
  se_habla
VALUES
  (33, 33);

INSERT INTO
  se_habla
VALUES
  (36, 33);

INSERT INTO
  se_habla
VALUES
  (34, 34);

INSERT INTO
  se_habla
VALUES
  (35, 34);

INSERT INTO
  se_habla
VALUES
  (36, 34);

INSERT INTO
  se_habla
VALUES
  (34, 35);

INSERT INTO
  se_habla
VALUES
  (36, 35);

INSERT INTO
  se_habla
VALUES
  (35, 36);

INSERT INTO
  se_habla
VALUES
  (37, 37);

INSERT INTO
  se_habla
VALUES
  (37, 38);

INSERT INTO
  se_habla
VALUES
  (42, 39);

INSERT INTO
  se_habla
VALUES
  (43, 40);

INSERT INTO
  se_habla
VALUES
  (47, 41);

INSERT INTO
  se_habla
VALUES
  (46, 42);

INSERT INTO
  se_habla
VALUES
  (48, 43);

INSERT INTO
  se_habla
VALUES
  (49, 44);

INSERT INTO
  se_habla
VALUES
  (50, 45);

INSERT INTO
  limita_con
VALUES
  (1, 2);

INSERT INTO
  limita_con
VALUES
  (1, 3);

INSERT INTO
  limita_con
VALUES
  (1, 4);

INSERT INTO
  limita_con
VALUES
  (2, 1);

INSERT INTO
  limita_con
VALUES
  (2, 5);

INSERT INTO
  limita_con
VALUES
  (2, 6);

INSERT INTO
  limita_con
VALUES
  (2, 7);

INSERT INTO
  limita_con
VALUES
  (2, 9);

INSERT INTO
  limita_con
VALUES
  (2, 11);

INSERT INTO
  limita_con
VALUES
  (2, 12);

INSERT INTO
  limita_con
VALUES
  (3, 1);

INSERT INTO
  limita_con
VALUES
  (3, 28);

INSERT INTO
  limita_con
VALUES
  (4, 1);

INSERT INTO
  limita_con
VALUES
  (5, 2);

INSERT INTO
  limita_con
VALUES
  (5, 6);

INSERT INTO
  limita_con
VALUES
  (5, 27);

INSERT INTO
  limita_con
VALUES
  (6, 2);

INSERT INTO
  limita_con
VALUES
  (6, 5);

INSERT INTO
  limita_con
VALUES
  (6, 8);

INSERT INTO
  limita_con
VALUES
  (6, 12);

INSERT INTO
  limita_con
VALUES
  (6, 27);

INSERT INTO
  limita_con
VALUES
  (7, 2);

INSERT INTO
  limita_con
VALUES
  (8, 6);

INSERT INTO
  limita_con
VALUES
  (8, 27);

INSERT INTO
  limita_con
VALUES
  (9, 2);

INSERT INTO
  limita_con
VALUES
  (9, 10);

INSERT INTO
  limita_con
VALUES
  (9, 11);

INSERT INTO
  limita_con
VALUES
  (9, 12);

INSERT INTO
  limita_con
VALUES
  (10, 9);

INSERT INTO
  limita_con
VALUES
  (10, 12);

INSERT INTO
  limita_con
VALUES
  (11, 2);

INSERT INTO
  limita_con
VALUES
  (11, 9);

INSERT INTO
  limita_con
VALUES
  (11, 12);

INSERT INTO
  limita_con
VALUES
  (12, 2);

INSERT INTO
  limita_con
VALUES
  (12, 6);

INSERT INTO
  limita_con
VALUES
  (12, 9);

INSERT INTO
  limita_con
VALUES
  (12, 10);

INSERT INTO
  limita_con
VALUES
  (12, 11);

INSERT INTO
  limita_con
VALUES
  (12, 17);

INSERT INTO
  limita_con
VALUES
  (12, 13);

INSERT INTO
  limita_con
VALUES
  (12, 25);

INSERT INTO
  limita_con
VALUES
  (12, 27);

INSERT INTO
  limita_con
VALUES
  (13, 12);

INSERT INTO
  limita_con
VALUES
  (14, 15);

INSERT INTO
  limita_con
VALUES
  (14, 16);

INSERT INTO
  limita_con
VALUES
  (14, 42);

INSERT INTO
  limita_con
VALUES
  (15, 14);

INSERT INTO
  limita_con
VALUES
  (15, 16);

INSERT INTO
  limita_con
VALUES
  (15, 42);

INSERT INTO
  limita_con
VALUES
  (16, 14);

INSERT INTO
  limita_con
VALUES
  (16, 15);

INSERT INTO
  limita_con
VALUES
  (17, 12);

INSERT INTO
  limita_con
VALUES
  (17, 25);

INSERT INTO
  limita_con
VALUES
  (17, 26);

INSERT INTO
  limita_con
VALUES
  (17, 42);

INSERT INTO
  limita_con
VALUES
  (18, 20);

INSERT INTO
  limita_con
VALUES
  (18, 26);

INSERT INTO
  limita_con
VALUES
  (18, 27);

INSERT INTO
  limita_con
VALUES
  (19, 20);

INSERT INTO
  limita_con
VALUES
  (19, 21);

INSERT INTO
  limita_con
VALUES
  (20, 18);

INSERT INTO
  limita_con
VALUES
  (20, 19);

INSERT INTO
  limita_con
VALUES
  (21, 19);

INSERT INTO
  limita_con
VALUES
  (21, 24);

INSERT INTO
  limita_con
VALUES
  (24, 21);

INSERT INTO
  limita_con
VALUES
  (25, 12);

INSERT INTO
  limita_con
VALUES
  (25, 17);

INSERT INTO
  limita_con
VALUES
  (25, 26);

INSERT INTO
  limita_con
VALUES
  (25, 27);

INSERT INTO
  limita_con
VALUES
  (26, 17);

INSERT INTO
  limita_con
VALUES
  (26, 18);

INSERT INTO
  limita_con
VALUES
  (26, 25);

INSERT INTO
  limita_con
VALUES
  (26, 27);

INSERT INTO
  limita_con
VALUES
  (27, 5);

INSERT INTO
  limita_con
VALUES
  (27, 6);

INSERT INTO
  limita_con
VALUES
  (27, 8);

INSERT INTO
  limita_con
VALUES
  (27, 12);

INSERT INTO
  limita_con
VALUES
  (27, 18);

INSERT INTO
  limita_con
VALUES
  (27, 25);

INSERT INTO
  limita_con
VALUES
  (27, 26);

INSERT INTO
  limita_con
VALUES
  (28, 3);

INSERT INTO
  limita_con
VALUES
  (29, 30);

INSERT INTO
  limita_con
VALUES
  (29, 32);

INSERT INTO
  limita_con
VALUES
  (29, 33);

INSERT INTO
  limita_con
VALUES
  (29, 34);

INSERT INTO
  limita_con
VALUES
  (29, 36);

INSERT INTO
  limita_con
VALUES
  (29, 37);

INSERT INTO
  limita_con
VALUES
  (29, 38);

INSERT INTO
  limita_con
VALUES
  (30, 29);

INSERT INTO
  limita_con
VALUES
  (30, 31);

INSERT INTO
  limita_con
VALUES
  (30, 32);

INSERT INTO
  limita_con
VALUES
  (30, 33);

INSERT INTO
  limita_con
VALUES
  (30, 36);

INSERT INTO
  limita_con
VALUES
  (31, 30);

INSERT INTO
  limita_con
VALUES
  (31, 34);

INSERT INTO
  limita_con
VALUES
  (31, 36);

INSERT INTO
  limita_con
VALUES
  (32, 29);

INSERT INTO
  limita_con
VALUES
  (32, 30);

INSERT INTO
  limita_con
VALUES
  (33, 29);

INSERT INTO
  limita_con
VALUES
  (33, 30);

INSERT INTO
  limita_con
VALUES
  (33, 36);

INSERT INTO
  limita_con
VALUES
  (34, 29);

INSERT INTO
  limita_con
VALUES
  (34, 31);

INSERT INTO
  limita_con
VALUES
  (34, 35);

INSERT INTO
  limita_con
VALUES
  (34, 36);

INSERT INTO
  limita_con
VALUES
  (34, 37);

INSERT INTO
  limita_con
VALUES
  (35, 34);

INSERT INTO
  limita_con
VALUES
  (35, 37);

INSERT INTO
  limita_con
VALUES
  (36, 29);

INSERT INTO
  limita_con
VALUES
  (36, 30);

INSERT INTO
  limita_con
VALUES
  (36, 31);

INSERT INTO
  limita_con
VALUES
  (36, 33);

INSERT INTO
  limita_con
VALUES
  (36, 34);

INSERT INTO
  limita_con
VALUES
  (37, 29);

INSERT INTO
  limita_con
VALUES
  (37, 34);

INSERT INTO
  limita_con
VALUES
  (37, 35);

INSERT INTO
  limita_con
VALUES
  (37, 38);

INSERT INTO
  limita_con
VALUES
  (38, 29);

INSERT INTO
  limita_con
VALUES
  (38, 37);

INSERT INTO
  limita_con
VALUES
  (39, 40);

INSERT INTO
  limita_con
VALUES
  (39, 41);

INSERT INTO
  limita_con
VALUES
  (40, 39);

INSERT INTO
  limita_con
VALUES
  (41, 39);

INSERT INTO
  limita_con
VALUES
  (42, 14);

INSERT INTO
  limita_con
VALUES
  (42, 15);

INSERT INTO
  limita_con
VALUES
  (42, 17);

INSERT INTO
  limita_con
VALUES
  (42, 43);

INSERT INTO
  limita_con
VALUES
  (43, 42);

INSERT INTO
  limita_con
VALUES
  (43, 46);

INSERT INTO
  limita_con
VALUES
  (43, 47);

INSERT INTO
  limita_con
VALUES
  (46, 43);

INSERT INTO
  limita_con
VALUES
  (46, 47);

INSERT INTO
  limita_con
VALUES
  (46, 48);

INSERT INTO
  limita_con
VALUES
  (47, 43);

INSERT INTO
  limita_con
VALUES
  (47, 46);

INSERT INTO
  limita_con
VALUES
  (48, 46);

INSERT INTO
  limita_con
VALUES
  (53, 54);

INSERT INTO
  limita_con
VALUES
  (54, 53);

INSERT INTO
  limita_con
VALUES
  (1, 53);

INSERT INTO
  limita_con
VALUES
  (53, 1);

INSERT INTO
  limita_con
VALUES
  (58, 53);

INSERT INTO
  limita_con
VALUES
  (53, 58);

COMMIT WORK;