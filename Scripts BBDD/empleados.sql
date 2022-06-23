CREATE DATABASE IF NOT EXISTS empleados;

USE empleados;

CREATE user IF NOT EXISTS emple IDENTIFIED by 'emple';

GRANT ALL PRIVILEGES ON empleados.* TO emple;

FLUSH PRIVILEGES;

CREATE TABLE IF NOT EXISTS tcentr (
    numce integer PRIMARY KEY,
    nomce varchar(30) NOT NULL,
    direccion varchar(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS tdepto (
    numde integer PRIMARY KEY,
    numce integer NOT NULL,
    direc integer NOT NULL,
    tidir enum('P', 'F') NOT NULL,
    presu decimal(10, 2) NOT NULL,
    depde integer,
    nombde varchar(50) NOT NULL,
    CONSTRAINT fk_tdepto_tcentr FOREIGN KEY (numce) REFERENCES tcentr (numce)
);

CREATE TABLE IF NOT EXISTS temple (
    numem integer PRIMARY KEY,
    numde integer NOT NULL,
    extel integer NOT NULL,
    fecna date NOT NULL,
    fecin date NOT NULL,
    salar decimal(10, 2) NOT NULL,
    comis decimal(10, 2),
    numhi integer NOT NULL,
    nomem varchar(50) NOT NULL,
    CONSTRAINT fk_temple_tdepto FOREIGN KEY (numde) REFERENCES tdepto (numde)
);