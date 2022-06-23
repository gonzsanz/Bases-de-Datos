CREATE DATABASE IF NOT EXISTS banco;

USE banco;

CREATE TABLE IF NOT EXISTS sucursal (
    cod_sucursal varchar(10) PRIMARY KEY,
    calle varchar(50) NOT NULL,
    numero integer NOT NULL,
    poblacion varchar(50) NOT NULL,
    telefono varchar(12) NOT NULL,
    mail varchar(50) NOT NULL,
    responsable varchar(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS cliente (
    dni varchar(12) PRIMARY KEY,
    apellido1 varchar(25) NOT NULL,
    apellido2 varchar(25) NOT NULL,
    fecha_nac date NOT NULL,
    telefono varchar(12) NOT NULL,
    mail varchar(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS tipo_cuenta (
    tipo varchar(50) PRIMARY KEY,
    observaciones varchar(200)
);

CREATE TABLE IF NOT EXISTS cuenta (
    cod_cuenta varchar(10) PRIMARY KEY,
    fecha_apertura date NOT NULL,
    saldo decimal(9, 2) NOT NULL,
    CONSTRAINT ck_saldo CHECK(saldo > 0),
    cod_sucursal varchar(10) NOT NULL,
    CONSTRAINT fk_cuenta_sucursal FOREIGN KEY(cod_sucursal) REFERENCES sucursal(cod_sucursal),
    tipo varchar(50) NOT NULL,
    CONSTRAINT fk_cuenta_tipo_cuenta FOREIGN KEY(tipo) REFERENCES tipo_cuenta(tipo)
);

CREATE TABLE IF NOT EXISTS cuenta_cliente (
    cod_cuenta varchar(10),
    dni varchar(12),
    privilegio varchar(50) NOT NULL,
    CONSTRAINT pk_cuenta_cliente PRIMARY KEY(cod_cuenta, dni),
    CONSTRAINT fk_cuenta_cliente_cuenta FOREIGN KEY(cod_cuenta) REFERENCES cuenta(cod_cuenta),
    CONSTRAINT fk_cuenta_cliente_cliente FOREIGN KEY(dni) REFERENCES cliente(dni)
);