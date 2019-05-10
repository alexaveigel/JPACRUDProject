-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema universedb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `universedb` ;

-- -----------------------------------------------------
-- Schema universedb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `universedb` DEFAULT CHARACTER SET utf8 ;
USE `universedb` ;

-- -----------------------------------------------------
-- Table `test_table`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `test_table` ;

CREATE TABLE IF NOT EXISTS `test_table` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `data` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS uniuser@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'uniuser'@'localhost' IDENTIFIED BY 'uniuser';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'uniuser'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `test_table`
-- -----------------------------------------------------
START TRANSACTION;
USE `universedb`;
INSERT INTO `test_table` (`id`, `data`) VALUES (1, 'stuff');
INSERT INTO `test_table` (`id`, `data`) VALUES (2, 'stuff2');

COMMIT;

