CREATE TABLE ciclista (
    nombrec VARCHAR(50) PRIMARY KEY,
    nacion VARCHAR(50),
    fecna DATE NOT NULL
);

CREATE TABLE prueba (
    nombrep VARCHAR(50),
    agno INTEGER NOT NULL,
    etapas INTEGER NOT NULL,
    km INTEGER NOT NULL,
    nombrec VARCHAR(50) NOT NULL,
    CONSTRAINT pk_prueba PRIMARY KEY (nombrep, agno),
    CONSTRAINT fk_prueba_ciclista FOREIGN KEY(nombrec) REFERENCES ciclista(nombrec) ON UPDATE CASCADE
);

CREATE TABLE equipo (
    nombree VARCHAR(50) PRIMARY KEY,
    nacion VARCHAR(50),
    direct VARCHAR(50)
);

CREATE TABLE pertenece (
    nombree VARCHAR(50),
    nombrec VARCHAR(50),
    inicio VARCHAR(50) NOT NULL,
    fin VARCHAR(50) NOT NULL,
    CONSTRAINT pk_pertenece PRIMARY KEY (nombree, nombrec),
    CONSTRAINT fk_pertenece_ciclista FOREIGN KEY(nombrec) REFERENCES ciclista(nombrec) ON UPDATE CASCADE,
    CONSTRAINT fk_pertenece_equipo FOREIGN KEY(nombree) REFERENCES equipo(nombree) ON UPDATE CASCADE
);

CREATE TABLE participa (
    nombree VARCHAR(50),
    nombrep VARCHAR(50),
    agno INTEGER,
    puesto INTEGER NOT NULL,
    CONSTRAINT pk_participa PRIMARY KEY (nombree, nombrep, agno),
    CONSTRAINT fk_participa_equipo FOREIGN KEY(nombree) REFERENCES equipo(nombree) ON UPDATE CASCADE,
    CONSTRAINT fk_participa_prueba FOREIGN KEY(nombrep, agno) REFERENCES prueba(nombrep, agno) ON UPDATE CASCADE
);