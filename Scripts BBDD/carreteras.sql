CREATE DATABASE IF NOT EXISTS carreteras;

USE carreteras;

CREATE user IF NOT EXISTS carretera IDENTIFIED by 'carretera';

CREATE TABLE IF NOT EXISTS carretera (
    carretera varchar(20) PRIMARY KEY,
    categoria varchar(1) NOT NULL,
    origen varchar(50) NOT NULL,
    fin varchar(50) NOT NULL,
    tipo_A varchar(50),
    tipo_B varchar(50),
    tipo_C varchar(50),
    CONSTRAINT ck_categoria CHECK (
        categoria = 'A'
        AND tipo_A IS NOT NULL
        AND tipo_B IS NULL
        AND tipo_C IS NULL
        OR categoria = 'B'
        AND tipo_B IS NOT NULL
        AND tipo_A IS NULL
        AND tipo_C IS NULL
        OR categoria = 'C'
        AND tipo_C IS NOT NULL
        AND tipo_B IS NULL
        AND tipo_A IS NULL
    )
);

CREATE TABLE IF NOT EXISTS provincia (provincia varchar(50) PRIMARY KEY);

CREATE TABLE IF NOT EXISTS tramo (
    tramo INTEGER,
    carretera VARCHAR(20),
    longitud DECIMAL (9, 3),
    PRIMARY KEY (carretera, tramo),
    FOREIGN KEY (carretera) REFERENCES carretera(carretera) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS termino (
    provincia varchar(50),
    termino varchar(50),
    CONSTRAINT pk_termino PRIMARY KEY (provincia, termino),
    CONSTRAINT fk_termino_provincia FOREIGN KEY (provincia) REFERENCES provincia (provincia) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS pasa_por (
    carretera varchar(50),
    tramo integer,
    provincia varchar(50),
    termino varchar(50),
    km_e decimal(9, 3) NOT NULL,
    km_s decimal(9, 3) NOT NULL,
    CONSTRAINT pk_pasa_por PRIMARY KEY (carretera, tramo, provincia, termino),
    CONSTRAINT fk_pasa_por_tramo FOREIGN KEY (carretera, tramo) REFERENCES tramo (carretera, tramo),
    CONSTRAINT fk_pasa_por_termino FOREIGN KEY (provincia, termino) REFERENCES termino (provincia, termino)
);