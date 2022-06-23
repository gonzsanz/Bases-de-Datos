INSERT INTO
    ciclista
VALUES
    ('Egan Bernal', 'Colombia', '1998-02-23');

INSERT INTO
    ciclista
VALUES
('Geraint Thomas', 'UK', '1990-02-23');

INSERT INTO
    ciclista
VALUES
('Chris Froome', 'UK', '1988-02-23');

INSERT INTO
    ciclista
VALUES
('Primoz Roglic', 'Eslovaquia', '1987-02-23');

INSERT INTO
    ciclista
VALUES
('Simon Yates', 'UK', '1986-02-23');

INSERT INTO
    ciclista
VALUES
('Nairo Quintana', 'Colombia', '1988-02-23');

INSERT INTO
    prueba
VALUES
('TOUR', 2019, 21, 4500, 'Egan Bernal');

INSERT INTO
    prueba
VALUES
('TOUR', 2018, 21, 3700, 'Geraint Thomas');

INSERT INTO
    prueba
VALUES
('TOUR', 2017, 21, 3980, 'Chris Froome');

INSERT INTO
    prueba
VALUES
('TOUR', 2016, 21, 4000, 'Chris Froome');

INSERT INTO
    prueba
VALUES
(
        'VUELTA A ESPAÑA',
        2019,
        21,
        3300,
        'Primoz Roglic'
    );

INSERT INTO
    prueba
VALUES
('VUELTA A ESPAÑA', 2018, 21, 3980, 'Simon Yates');

INSERT INTO
    prueba
VALUES
(
        'VUELTA A ESPAÑA',
        2017,
        21,
        4025,
        'Chris Froome'
    );

INSERT INTO
    prueba
VALUES
(
        'VUELTA A ESPAÑA',
        2016,
        21,
        3991,
        'Nairo Quintana'
    );

INSERT INTO
    equipo
VALUES
('Jumbo-Visma', 'Holanda', NULL);

INSERT INTO
    equipo
VALUES
('Movistar', 'España', NULL);

INSERT INTO
    equipo
VALUES
('Sky', 'UK', NULL);

INSERT INTO
    pertenece
VALUES
    ('Jumbo-Visma', 'Primoz Roglic', '2017', '2020');

INSERT INTO
    pertenece
VALUES
    ('Movistar', 'Nairo Quintana', '2012', '2020');

INSERT INTO
    pertenece
VALUES
    ('Sky', 'Egan Bernal', '2017', '2020');

INSERT INTO
    pertenece
VALUES
    ('Sky', 'Geraint Thomas', '2012', '2020');

INSERT INTO
    pertenece
VALUES
    ('Sky', 'Chris Froome', '2010', '2020');

INSERT INTO
    participa
VALUES
    ('Jumbo-Visma', 'VUELTA A ESPAÑA', 2019, 2);

INSERT INTO
    participa
VALUES
    ('Movistar', 'VUELTA A ESPAÑA', 2016, 1);

INSERT INTO
    participa
VALUES
    ('Sky', 'VUELTA A ESPAÑA', 2018, 2);

INSERT INTO
    participa
VALUES
    ('Sky', 'VUELTA A ESPAÑA', 2017, 1);

INSERT INTO
    participa
VALUES
    ('Sky', 'TOUR', 2019, 1);

INSERT INTO
    participa
VALUES
    ('Sky', 'TOUR', 2018, 1);

INSERT INTO
    participa
VALUES
    ('Sky', 'TOUR', 2017, 1);

INSERT INTO
    participa
VALUES
    ('Sky', 'TOUR', 2016, 1);