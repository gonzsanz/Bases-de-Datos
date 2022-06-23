-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema banco
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema banco
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `banco` DEFAULT CHARACTER SET utf8 ;
USE `banco` ;

-- -----------------------------------------------------
-- Table `banco`.`Sucursal`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `banco`.`Sucursal` (
  `cod_sucursal` VARCHAR(50) NOT NULL,
  `calle` VARCHAR(50) NOT NULL,
  `numero` INT NOT NULL,
  `poblacion` VARCHAR(50) NOT NULL,
  `telefono` VARCHAR(12) NOT NULL,
  `mail` VARCHAR(50) NOT NULL,
  `responsable` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`cod_sucursal`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `banco`.`Tipo_cuenta`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `banco`.`Tipo_cuenta` (
  `Tipo` VARCHAR(50) NOT NULL,
  `observaciones` VARCHAR(200) NOT NULL,
  PRIMARY KEY (`Tipo`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `banco`.`Cuenta`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `banco`.`Cuenta` (
  `Cod_cuenta` VARCHAR(10) NOT NULL,
  `fecha_apertura` DATE NOT NULL,
  `saldo` DECIMAL NOT NULL,
  `cod_sucursal` VARCHAR(50) NOT NULL,
  `tipo` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`Cod_cuenta`),
  INDEX `fk_cuenta_tipo_cuenta_idx` (`tipo` ASC) VISIBLE,
  INDEX `fk_cuenta_sucursal_idx` (`cod_sucursal` ASC) VISIBLE,
  CONSTRAINT `fk_cuenta_tipo_cuenta`
    FOREIGN KEY (`tipo`)
    REFERENCES `banco`.`Tipo_cuenta` (`Tipo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_cuenta_sucursal`
    FOREIGN KEY (`cod_sucursal`)
    REFERENCES `banco`.`Sucursal` (`cod_sucursal`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `banco`.`Cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `banco`.`Cliente` (
  `dni` VARCHAR(12) NOT NULL,
  `nombre` VARCHAR(25) NOT NULL,
  `apellido1` VARCHAR(25) NOT NULL,
  `apellido2` VARCHAR(25) NOT NULL,
  `fecha_nac` DATE NOT NULL,
  `telefono` VARCHAR(12) NOT NULL,
  `mail` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`dni`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `banco`.`Cuenta_cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `banco`.`Cuenta_cliente` (
  `cod_cuenta` VARCHAR(10) NOT NULL,
  `dni` VARCHAR(12) NOT NULL,
  `privilegio` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`cod_cuenta`, `dni`),
  INDEX `fk_cuenta_cliente_cliente_idx` (`dni` ASC) VISIBLE,
  CONSTRAINT `fk_cuenta_cliente_cuenta`
    FOREIGN KEY (`cod_cuenta`)
    REFERENCES `banco`.`Cuenta` (`Cod_cuenta`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_cuenta_cliente_cliente`
    FOREIGN KEY (`dni`)
    REFERENCES `banco`.`Cliente` (`dni`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
