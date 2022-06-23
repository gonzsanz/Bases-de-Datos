CREATE TABLE tcentr
(
numce number PRIMARY KEY,
nomce varchar2(50) NOT NULL,
direccion varchar2(50)NOT NULL
);


CREATE TABLE tdepto
(
numde number PRIMARY KEY,
numce number NOT NULL,
direc number NOT NULL,
tidir CHAR(1) NOT NULL,
presu number(10,2) NOT NULL,
depde number,
nomde varchar2(50) NOT NULL,
CONSTRAINT ck_tidir
check(tidir='P' OR tidir='F'),
CONSTRAINT fk_tdepto_tcentr
FOREIGN KEY(numce)
REFERENCES Tcentr(numce)
);

CREATE TABLE temple
(
numem number PRIMARY KEY,
numde number NOT NULL,
extel SMALLINT NOT NULL,
fecna DATE NOT NULL,
fecin DATE NOT NULL,
salar number(10,2) NOT NULL,
comis number(10,2), 
numhi number NULL,
nomem varchar2(50) NOT NULL,
CONSTRAINT fk_temple_tdepto
FOREIGN KEY(numde)
REFERENCES tdepto(numde)
);

