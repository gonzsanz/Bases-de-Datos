
INSERT INTO `categoria` (`id`, `nombre`) VALUES
(1, 'Manga corta'),
(2, 'Tirantes'),
(3, 'Manga larga'),
(4, 'Sudaderas'),
(5, 'POP');

-- --------------------------------------------------------
--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id`, `categoria`, `nombre`, `descripcion`, `precio`, `stock`, `fecha`) VALUES
(1, 1, 'Modelo A', 'Camisa sencilla a rayas', 10.00, 20,  '2020-12-15'),
(2, 1, 'Modelo B', 'Marinero', 12.00, 5, '2020-12-15'),
(3, 1, 'Sencilla gris', 'Sencilla gris', 12.00, 4,'2020-12-15'),
(5, 4, 'Sudadera gris G1', 'Sudadera gris básica', 25.00, 10, '2020-12-28'),
(6, 3, 'Larga R1', 'Camisa larga gris', 20.00, 3,'2020-12-28'),
(7, 4, 'Sudadera yellow', 'Sudadera amarilla', 37.00, 3, '2020-12-28'),
(8, 5, 'minion girl', 'Chica minion', 16.00, 2, '2020-12-28'),
(9, 5, 'night king', 'Rey de la noche', 23.00, 1, '2020-12-28'),
(10, 2, 'Sencilla negra', 'Tirantes sencilla negra', 10.00, 0, '2020-12-28'),
(11, 3, 'larga bicolor', 'larga bicolor', 26.00, 2, '2020-12-28'),
(12, 5, 'Live to ride', 'Motocicleta', 16.00, 2, '2020-12-28');

-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuario` (`id`, `nombre`, `apellidos`, `email`, `password`, `rol`) VALUES
(1, 'Admin', 'Admin', 'admin@admin.com', '$2y$04$wGvtB005u9uZ7KWd2FoLpuDh1hhqVGd0PrrvLO7GlfYugz8wJiR8G', 'admin'),
(3, 'Miguel ', 'García López', 'cosa01@iestetuan.es', '$2y$04$cMMCaicqA0.UQe41aXbX0uy8znTFTtVGK2rzcD03VLPwsqwwQoSqW', 'user'),
(7, 'alberto', 'lopez', 'alberto@es.es', '$2y$04$ngCHFTC/KexW38QlfHT2neYUAd3//dQb85zt.ll36Wkw9OrZf5g5K', 'user'),
(14, 'pepe1', 'López', 'pepe@pepe.es', '$2y$04$Qo3jYO1V5SAFLcVUBOwjHODc4DM6Y6adoyQjojkfAIEoAo8A0EYbm', 'user');

-- Volcado de datos para la tabla `pedidos`
--

INSERT INTO `pedido` (`id`, `usuario`, `direccion`, `localidad`, `provincia`, `coste`, `estado`, `fecha`, `hora`) VALUES
(1, 1, 'C/Pez, 45', 'Madrid', 'Madrid', 807.00, 'sended', '2020-12-28', '13:08:56'),
(2, 3, 'Avda América, 13 3º-A', 'Madrid', 'Madrid', 108.00, 'sended', '2020-12-28', '13:22:06'),
(3, 3, 'C/ Murcia, 8', 'Madrid', 'Madrid', 124.00, 'confirm', '2020-12-28', '13:23:40'),
(4, 1, 'C/Albacete, s/n', 'Madrid', 'Madrid', 37.00, 'confirm', '2020-12-28', '13:39:39'),
(5, 1, 'C/ Madrid, 8', 'Madrid', 'Madrid', 46.00, 'confirm', '2020-12-28', '14:07:07'),
(6, 1, 'Plaza Madricito, 10', 'Madrid', 'Madrid', 46.00, 'confirm', '2020-12-28', '14:07:31'),
(7, 1, 'C/ Segovia, 13', 'Madrid', 'Madrid', 46.00, 'confirm', '2020-12-28', '14:35:59'),
(8, 7, 'C/ Sevilla,15', 'Madrid', 'Madrid', 48.00, 'confirm', '2021-01-04', '13:48:44'),
(9, 1, 'Avda Andalucía, 55', 'Madrid', 'Madrid', 35.00, 'confirm', '2021-01-21', '22:00:55'),
(10, 14, 'Avda Orense, 45', 'Madrid', 'Madrid', 37.00, 'confirm', '2021-01-21', '22:40:32');
--
-- Volcado de datos para la tabla `lineas_pedidos`
--

INSERT INTO `contiene` ( `id_pedido`, `id_producto`, `unidades`) VALUES
(1, 7, 1),
(1, 6, 38),
(1, 1, 1),
(2, 7, 1),
(2, 12, 1),
(2, 9, 1),
(2, 8, 2),
(3, 7, 1),
(3, 12, 1),
(3, 9, 1),
(3, 8, 3),
(4, 7, 1),
(5, 8, 1),
(5, 6, 1),
(5, 10, 1),
(6, 8, 1),
(6, 6, 1),
(6, 10, 1),
(7, 8, 1),
(7, 6, 1),
(7, 10, 1),
(8, 3, 1),
(8, 6, 1),
(8, 12, 1),
(9, 5, 1),
(9, 1, 1),
(10, 7, 1);

-- --------------------------------------------------------



