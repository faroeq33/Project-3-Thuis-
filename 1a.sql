-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema project3_a
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema project3_a
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `project3_a` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `project3_a` ;

-- -----------------------------------------------------
-- Table `project3_a`.`gebruikers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `project3_a`.`gebruikers` (
  `idgebruikers` INT NOT NULL AUTO_INCREMENT,
  `voornaam` VARCHAR(45) NOT NULL,
  `achternaam` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idgebruikers`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `project3_a`.`accounts`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `project3_a`.`accounts` (
  `idaccounts` INT NOT NULL AUTO_INCREMENT,
  `gebruikersnaam` VARCHAR(45) NOT NULL,
  `wachtwoord` VARCHAR(65) NOT NULL,
  `reset` VARCHAR(45) NULL,
  `gebruikers_idgebruikers` INT NOT NULL,
  PRIMARY KEY (`idaccounts`),
  INDEX `fk_accounts_gebruikers_idx` (`gebruikers_idgebruikers` ASC),
  CONSTRAINT `fk_accounts_gebruikers`
    FOREIGN KEY (`gebruikers_idgebruikers`)
    REFERENCES `project3_a`.`gebruikers` (`idgebruikers`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `project3_a`.`locatie`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `project3_a`.`locatie` (
  `idlocatie` INT NOT NULL AUTO_INCREMENT,
  `naam` VARCHAR(45) NOT NULL,
  `adres` VARCHAR(45) NOT NULL,
  `plaats` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idlocatie`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `project3_a`.`chicks`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `project3_a`.`chicks` (
  `idchicks` INT NOT NULL AUTO_INCREMENT,
  `naam` VARCHAR(45) NOT NULL,
  `telnr` VARCHAR(45) NOT NULL,
  `cupmaat` VARCHAR(45) NOT NULL,
  `accounts_idaccounts` INT NOT NULL,
  `locatie_idlocatie` INT NOT NULL,
  PRIMARY KEY (`idchicks`),
  INDEX `fk_chicks_accounts1_idx` (`accounts_idaccounts` ASC),
  INDEX `fk_chicks_locatie1_idx` (`locatie_idlocatie` ASC),
  CONSTRAINT `fk_chicks_accounts1`
    FOREIGN KEY (`accounts_idaccounts`)
    REFERENCES `project3_a`.`accounts` (`idaccounts`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_chicks_locatie1`
    FOREIGN KEY (`locatie_idlocatie`)
    REFERENCES `project3_a`.`locatie` (`idlocatie`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `project3_a`.`bestanden`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `project3_a`.`bestanden` (
  `idbestanden` INT NOT NULL AUTO_INCREMENT,
  `naam` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idbestanden`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
