CREATE DATABASE camisetas;

USE camisetas;

DROP TABLE IF EXISTS usuario;

CREATE TABLE usuario (
    id integer PRIMARY KEY,
    nombre varchar(50) NOT NULL,
    apellidos varchar(100) NOT NULL,
    email varchar(100) NOT NULL,
    password varchar(100) NOT NULL,
    rol varchar(50) NOT NULL
);

DROP TABLE IF EXISTS categoria;

CREATE TABLE categoria (
    id integer PRIMARY KEY,
    nombre varchar(50) NOT NULL
);

DROP TABLE IF EXISTS producto;

CREATE TABLE producto (
    id integer PRIMARY KEY,
    categoria integer NOT NULL,
    nombre varchar(50) NOT NULL,
    descripcion varchar(100),
    precio decimal(65, 2) NOT NULL,
    stock integer NOT NULL,
    fecha date NOT NULL,
    CONSTRAINT fk_producto_categoria FOREIGN KEY (categoria) REFERENCES categoria(id)
);

DROP TABLE IF EXISTS pedido;

CREATE TABLE pedido (
    id integer PRIMARY KEY,
    usuario integer NOT NULL,
    direccion varchar(50) NOT NULL,
    localidad varchar(50) NOT NULL,
    provincia varchar(50) NOT NULL,
    coste decimal(20, 2) NOT NULL,
    estado varchar(50) NOT NULL,
    fecha date NOT NULL,
    hora time NOT NULL,
    CONSTRAINT fk_pedido_usuario FOREIGN KEY (usuario) REFERENCES usuario (id)
);

DROP TABLE IF EXISTS contiene;

CREATE TABLE contiene (
    id_producto integer,
    id_pedido integer,
    unidades integer NOT NULL,
    CONSTRAINT pk_producto_pedido PRIMARY KEY (id_producto, id_pedido),
    CONSTRAINT fk_contiene_producto FOREIGN KEY (id_producto) REFERENCES producto(id),
    CONSTRAINT fk_contiene_pedido FOREIGN KEY (id_pedido) REFERENCES pedido(id)
);