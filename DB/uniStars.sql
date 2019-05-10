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
-- Table `star`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `star` ;

CREATE TABLE IF NOT EXISTS `star` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NOT NULL,
  `class` VARCHAR(100) NULL,
  `distance_in_light_years` DOUBLE NULL,
  `magnitude_absolute` DOUBLE NULL,
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
-- Data for table `star`
-- -----------------------------------------------------
START TRANSACTION;
USE `universedb`;
INSERT INTO `star` (`id`, `name`, `class`, `distance_in_light_years`, `magnitude_absolute`) VALUES (1, 'Sun', 'G2V', 0, 4.80);
INSERT INTO `star` (`id`, `name`, `class`, `distance_in_light_years`, `magnitude_absolute`) VALUES (2, 'Alpha Centauri A', 'G2V', 4.37, 4.34);
INSERT INTO `star` (`id`, `name`, `class`, `distance_in_light_years`, `magnitude_absolute`) VALUES (3, 'Sirius', 'A1V', 8.60, 1.45);
INSERT INTO `star` (`id`, `name`, `class`, `distance_in_light_years`, `magnitude_absolute`) VALUES (4, 'Epsilon Eridani', 'K2V', 10.5, 6.18);
INSERT INTO `star` (`id`, `name`, `class`, `distance_in_light_years`, `magnitude_absolute`) VALUES (5, '61 Cygni A', 'K5.0V', 11.4, 7.49);
INSERT INTO `star` (`id`, `name`, `class`, `distance_in_light_years`, `magnitude_absolute`) VALUES (6, 'Procyon', 'F5IV-V', 11.5, 2.68);
INSERT INTO `star` (`id`, `name`, `class`, `distance_in_light_years`, `magnitude_absolute`) VALUES (7, 'Epsilon Indi', 'K5Ve', 11.8, 6.90);
INSERT INTO `star` (`id`, `name`, `class`, `distance_in_light_years`, `magnitude_absolute`) VALUES (8, 'Tau Ceti', 'G8Vp', 11.9, 5.68);
INSERT INTO `star` (`id`, `name`, `class`, `distance_in_light_years`, `magnitude_absolute`) VALUES (9, 'Altair', 'A7IV-V', 16.7, 2.21);
INSERT INTO `star` (`id`, `name`, `class`, `distance_in_light_years`, `magnitude_absolute`) VALUES (10, 'Sigma Draconis', 'G9V', 18.8, 5.87);
INSERT INTO `star` (`id`, `name`, `class`, `distance_in_light_years`, `magnitude_absolute`) VALUES (11, 'Gliese 570', 'K5Ve', 19.0, 6.86);
INSERT INTO `star` (`id`, `name`, `class`, `distance_in_light_years`, `magnitude_absolute`) VALUES (12, 'Eta Cassiopeiae A', 'G3V', 19.4, 4.59);
INSERT INTO `star` (`id`, `name`, `class`, `distance_in_light_years`, `magnitude_absolute`) VALUES (13, 'Beta Hydri', 'G2IV', 24.3, 3.46);
INSERT INTO `star` (`id`, `name`, `class`, `distance_in_light_years`, `magnitude_absolute`) VALUES (14, '107 Piscium', 'G5VI', 24.6, 5.86);
INSERT INTO `star` (`id`, `name`, `class`, `distance_in_light_years`, `magnitude_absolute`) VALUES (15, 'Vega', 'A0Va', 25.0, 0.58);

COMMIT;

