CREATE DATABASE IF NOT EXISTS perfumeria;

USE perfumeria;

CREATE user IF NOT EXISTS perfume IDENTIFIED by 'perfume';

GRANT ALL PRIVILEGES ON perfumeria.* TO perfume;

FLUSH PRIVILEGES;

CREATE TABLE IF NOT EXISTS laboratorio (
    laboratorio varchar(50) PRIMARY KEY,
    calle varchar(50) NOT NULL,
    numero integer NOT NULL,
    telefono varchar(12) NOT NULL,
    mail varchar(50) NOT NULL,
    responsable varchar(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS esencia (
    esencia varchar(50) PRIMARY KEY,
    precio decimal(6, 2) NOT NULL,
    CONSTRAINT ck_precio CHECK(precio > 0)
);

CREATE TABLE IF NOT EXISTS perfume (
    perfume varchar(50) PRIMARY KEY,
    envase varchar(50) NOT NULL,
    tamagno decimal(5, 2) NOT NULL,
    CONSTRAINT ck_tamagno CHECK(tamagno > 0),
    laboratorio varchar(50) NOT NULL,
    CONSTRAINT fk_perfume_laboratorio FOREIGN KEY(laboratorio) REFERENCES laboratorio(laboratorio)
);

CREATE TABLE IF NOT EXISTS contiene (
    perfume varchar(50),
    esencia varchar(50),
    proporcion decimal(5, 2) NOT NULL,
    CONSTRAINT pk_contiene PRIMARY KEY(perfume, esencia),
    CONSTRAINT ck_proporcion CHECK(proporcion > 0),
    CONSTRAINT fk_contiene_perfume FOREIGN KEY(perfume) REFERENCES perfume(perfume),
    CONSTRAINT fk_contiene_esencia FOREIGN KEY(esencia) REFERENCES esencia(esencia)
);