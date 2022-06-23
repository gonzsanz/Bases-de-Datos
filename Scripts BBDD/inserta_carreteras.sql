INSERT INTO carretera (categoria, carretera, origen, fin, tipo_A, tipo_B, tipo_C) VALUES
('A', 'A-6', 'Madrid', 'La Coruña', 'Autovía', NULL, NULL),
('A', 'AP-6', 'Collado Villalba', 'Adanero', 'Autopista', NULL, NULL),
('B', 'N-122', 'Zaragoza','Zamora', NULL,'C.Nacional', NULL),
('B', 'N-110', 'Soria','Plasencia', NULL,'C.Nacional', NULL),
('C', 'M-502', 'Carabanchel', 'Pozuelo de Alarcón', NULL, NULL, 'C.Autonómica'),
('C', 'M-505', 'Las Rozas de Madrid', 'Ávila', NULL, NULL, 'C.Autonómica');

INSERT INTO provincia (provincia) VALUES
('Madrid'),
('Zamora'),
('Segovia'),
('Ávila'),
('Valladolid');

INSERT INTO tramo (carretera, tramo, longitud) VALUES
('A-6', 4, 43.7),
('A-6', 2, 69.1 ),
('AP-6', 7, 32.4),
('AP-6', 5, 12.9),
('N-122', 6, 165.2),
('N-122', 5, 69.9),
('N-110', 4, 189.1),
('N-110', 7, 163.4),
('M-502', 5, 6.6),
('M-502', 8, 4.0),
('M-505', 1, 16.9),
('M-505', 2, 13.7);

INSERT INTO termino (provincia, termino) VALUES
('Madrid', 'Las Rozas de Madrid'),
('Zamora', 'Benavente'),
('Segovia', 'El espinar'),
('Ávila', 'Villacastín'),
('Valladolid', 'Valladolid'),
('Zamora', 'Toro'),
('Segovia', 'Arcones'),
('Ávila', 'Ávila'),
('Madrid', 'Aluche'),
('Madrid', 'Pozuelo'),
('Madrid', 'El Escorial');

INSERT INTO pasa_por (carretera, tramo, provincia, termino, km_e, km_s) VALUES
('A-6', 4, 'Madrid', 'Las Rozas de Madrid', 0, 0),
('A-6', 2, 'Zamora', 'Benavente', 0, 0),
('AP-6', 7, 'Segovia', 'El espinar', 0, 0),
('AP-6', 5, 'Ávila', 'Villacastín', 0, 0),
('N-122', 6, 'Valladolid', 'Valladolid', 0, 0),
('N-122', 5, 'Zamora', 'Toro', 0, 0),
('N-110', 4, 'Segovia', 'Arcones', 0, 0),
('N-110', 7, 'Ávila', 'Ávila', 0, 0),
('M-502', 5, 'Madrid', 'Aluche', 0, 0),
('M-502', 8, 'Madrid', 'Pozuelo', 0, 0),
('M-505', 1, 'Madrid', 'Las Rozas de Madrid', 0, 0),
('M-505', 2, 'Madrid', 'El Escorial', 0, 0);