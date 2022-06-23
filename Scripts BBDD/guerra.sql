CREATE DATABASE IF NOT EXISTS guerra;

USE guerra;

CREATE TABLE IF NOT EXISTS guerra (
    id_guerra integer PRIMARY KEY,
    nombre varchar(50) NOT NULL,
    a_inicio integer NOT NULL,
    CONSTRAINT ck_a_inicio CHECK(a_inicio > 0),
    a_fin integer NOT NULL,
    CONSTRAINT ck_a_fin CHECK(a_fin > 0),
    CONSTRAINT ck_agno CHECK (a_fin > a_inicio)
);

CREATE TABLE IF NOT EXISTS pais (
    id_pais integer PRIMARY KEY,
    nombre varchar(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS bando (
    id_bando integer PRIMARY KEY,
    bando varchar(50) NOT NULL,
    ganador varchar(2) NOT NULL,
    CONSTRAINT ck_ganador CHECK(
        ganador = 'Sí'
        OR ganador = 'No'
    ),
    id_guerra integer NOT NULL,
    CONSTRAINT fk_bando_guerra FOREIGN KEY(id_guerra) REFERENCES guerra(id_guerra) ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS participar (
    id_bando integer,
    id_pais integer,
    a_entrada integer NOT NULL,
    a_salida integer NOT NULL,
    CONSTRAINT pk_bando_pais PRIMARY KEY(id_bando, id_pais),
    CONSTRAINT fk_participar_bando FOREIGN KEY(id_bando) REFERENCES bando(id_bando),
    CONSTRAINT fk_participar_pais FOREIGN KEY(id_pais) REFERENCES pais(id_pais)
);