DROP TABLE IF EXISTS cliente;

CREATE TABLE cliente(
  dni varchar(12) PRIMARY KEY,
  nombre varchar(30) NOT NULL,
  apellidos varchar(30) NOT NULL,
  direccion varchar(30) NOT NULL,
  telefono varchar(12) NOT NULL,
  mail varchar(30) NOT NULL,
  fecna date NOT NULL
);

DROP TABLE IF EXISTS genero;

CREATE TABLE genero(genero varchar(50) PRIMARY KEY);

DROP TABLE IF EXISTS categoria;

CREATE TABLE categoria(
  categoria varchar(30) PRIMARY KEY,
  precio_alquiler decimal (10, 2) NOT NULL,
  CONSTRAINT ck_precio CHECK(precio_alquiler > 0)
);

DROP TABLE IF EXISTS pelicula;

CREATE TABLE pelicula(
  titulo varchar(50) PRIMARY KEY,
  categoria varchar(30) NOT NULL,
  genero varchar(50) NOT NULL,
  ano_estreno integer NOT NULL,
  CONSTRAINT ck_ano CHECK (ano_estreno > 0),
  CONSTRAINT fk_peli_categoria FOREIGN KEY (categoria) REFERENCES categoria(categoria),
  CONSTRAINT fk_peli_genero FOREIGN KEY(genero) REFERENCES genero(genero)
);

DROP TABLE IF EXISTS alquiler;

CREATE TABLE alquiler(
  ref integer AUTO_INCREMENT PRIMARY KEY,
  titulo varchar(50) NOT NULL,
  cliente varchar(12) NOT NULL,
  fecha_alquiler date NOT NULL,
  CONSTRAINT alquiler_cliente FOREIGN KEY(cliente) REFERENCES cliente(dni),
  CONSTRAINT alquiler_peli FOREIGN KEY(titulo) REFERENCES pelicula(titulo)
);

INSERT INTO
  genero (genero)
VALUES
  ('Acción'),
  ('Animación'),
  ('Bélica'),
  ('Ciencia ficción'),
  ('Cine negro'),
  ('Comedia'),
  ('Cortometraje'),
  ('Documental'),
  ('Drama'),
  ('Western'),
  ('Histórica'),
  ('Musical'),
  ('Suspense'),
  ('Terror'),
  ('Fantástica');

INSERT INTO
  categoria (categoria, precio_alquiler)
VALUES
  ('A', 3.25),
  ('B', 2.5),
  ('C', 2),
  ('D', 1.75);

INSERT INTO
  pelicula (titulo, genero, ano_estreno, categoria)
VALUES
  ('ASESINOS NATOS', 'Acción', 1994, 'A'),
  ('THE WARRIORS', 'Acción', 1979, 'A'),
  (
    'PESADILLA ANTES DE NAVIDAD',
    'Animación',
    1993,
    'A'
  ),
  ('55 DIAS EN PEKIN', 'Bélica', 1963, 'B'),
  ('APOCALYPSE NOW', 'Bélica', 1979, 'B'),
  ('LA CHAQUETA METALICA', 'Bélica', 1987, 'A'),
  ('BLADE RUNNER', 'Ciencia ficción', 1982, 'B'),
  ('RETORNO AL PASADO', 'Cine negro', 1947, 'A'),
  ('BELLE EPOQUE', 'Comedia', 1992, 'B'),
  ('BESAME TONTO', 'Comedia', 1964, 'B'),
  ('UN PERRO ANDALUZ', 'Cortometraje', 1928, 'A'),
  ('24 HOUR PARTY PEOPLE', 'Drama', 2002, 'B'),
  ('ABISMOS DE PASION', 'Drama', 1954, 'C'),
  (
    'LA LENGUA DE LAS MARIPOSAS',
    'Histórica',
    1999,
    'D'
  ),
  (
    'MEMORIAS DEL GENERAL ESCOBAR',
    'Histórica',
    1984,
    'C'
  ),
  ('PRISIONEROS DE HONOR', 'Histórica', 1991, 'C'),
  ('JESUCRISTO SUPERSTAR', 'Musical', 1973, 'C'),
  ('QUE NOCHE LA DE AQUEL DIA', 'Musical', 1964, 'C'),
  ('INOCENCIA Y JUVENTUD', 'Suspense', 1938, 'C'),
  ('LA NOCHE DEL CAZADOR', 'Suspense', 1955, 'D'),
  ('LA SOGA', 'Suspense', 1948, 'D'),
  (
    'LA LEYENDA DE LA CASA DEL INFIERNO',
    'Terror',
    1973,
    'D'
  ),
  ('LA MATANZA DE TEXAS', 'Terror', 1974, 'D'),
  ('LA MUJER PANTERA', 'Terror', 1942, 'C');

INSERT INTO
  cliente (
    dni,
    nombre,
    apellidos,
    direccion,
    telefono,
    mail,
    fecna
  )
VALUES
  (
    '11111111A',
    'Juan',
    'Nuñez Balboa',
    'C/Alcalá, 200',
    '265987485',
    'juan@balboa.com',
    '1971-10-15'
  ),
  (
    '11111112A',
    'Juan',
    'Pérez Balboa',
    'C/Alcalá, 300',
    '455987485',
    'juanpe@balboa.com',
    '1979-10-15'
  ),
  (
    '11111113A',
    'Pedro',
    'Balboa Nuñez',
    'C/Atocha, 200',
    '267887485',
    'pedro@alcala.com',
    '1982-12-15'
  ),
  (
    '11111114A',
    'Antonio',
    'Machado Balboa',
    'C/Alcalá, 200',
    '245987485',
    'antonio@balboa.com',
    '1999-10-15'
  ),
  (
    '11111115A',
    'Juan',
    'Machado Balboa',
    'C/Alcalá, 200',
    '265987485',
    'juan@balboa.com',
    '1991-04-05'
  ),
  (
    '11111116A',
    'Luis',
    'Balboa Nuñez',
    'C/Atocha, 200',
    '267887485',
    'luis@alcala.com',
    '1977-10-15'
  ),
  (
    '11111117A',
    'Pedro',
    'Garcia Garcia',
    'C/Atocha, 200',
    '267887485',
    'pedro@alcala.com',
    '1977-10-15'
  ),
  (
    '11111118A',
    'Enrique',
    'Cuarto Nuñez',
    'C/Atocha, 200',
    '267887485',
    'enrique@alcala.com',
    '2000-10-15'
  );

INSERT INTO
  alquiler (titulo, cliente, fecha_alquiler)
VALUES
  ('INOCENCIA Y JUVENTUD', '11111111A', '2021-05-05'),
  ('LA MUJER PANTERA', '11111111A', '2021-05-05'),
  ('INOCENCIA Y JUVENTUD', '11111112A', '2021-06-05'),
  ('INOCENCIA Y JUVENTUD', '11111113A', '2020-05-05'),
  ('INOCENCIA Y JUVENTUD', '11111114A', '2020-06-05'),
  (
    'MEMORIAS DEL GENERAL ESCOBAR',
    '11111111A',
    '2019-05-05'
  ),
  ('JESUCRISTO SUPERSTAR', '11111112A', '2019-06-05'),
  (
    'QUE NOCHE LA DE AQUEL DIA',
    '11111116A',
    '2018-06-05'
  ),
  ('UN PERRO ANDALUZ', '11111117A', '2019-01-05'),
  ('55 DIAS EN PEKIN', '11111115A', '2021-06-12'),
  ('THE WARRIORS', '11111113A', '2022-01-05'),
  ('LA MUJER PANTERA', '11111114A', '2021-05-05'),
  (
    'PESADILLA ANTES DE NAVIDAD',
    '11111111A',
    '2021-12-05'
  ),
  (
    'LA LEYENDA DE LA CASA DEL INFIERNO',
    '11111111A',
    '2017-05-05'
  ),
  ('LA MUJER PANTERA', '11111113A', '2021-05-05'),
  ('LA MUJER PANTERA', '11111116A', '2021-05-05'),
  ('LA NOCHE DEL CAZADOR', '11111113A', '2019-01-05'),
  ('LA NOCHE DEL CAZADOR', '11111114A', '2020-01-05'),
  ('LA NOCHE DEL CAZADOR', '11111111A', '2022-01-05'),
  ('THE WARRIORS', '11111116A', '2017-01-05'),
  ('LA NOCHE DEL CAZADOR', '11111115A', '2022-01-05'),
  (
    'LA LENGUA DE LAS MARIPOSAS',
    '11111111A',
    '2020-12-05'
  ),
  (
    'LA LENGUA DE LAS MARIPOSAS',
    '11111111A',
    '2021-12-05'
  ),
  (
    'LA LENGUA DE LAS MARIPOSAS',
    '11111112A',
    '2019-12-05'
  ),
  (
    'PESADILLA ANTES DE NAVIDAD',
    '11111116A',
    '2020-12-05'
  ),
  (
    'PESADILLA ANTES DE NAVIDAD',
    '11111111A',
    '2016-12-05'
  );