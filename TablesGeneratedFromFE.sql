-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Ashley_Carrasco_Midway_Project_Veterinarian
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Ashley_Carrasco_Midway_Project_Veterinarian
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Ashley_Carrasco_Midway_Project_Veterinarian` ;
USE `Ashley_Carrasco_Midway_Project_Veterinarian` ;

-- -----------------------------------------------------
-- Table `Ashley_Carrasco_Midway_Project_Veterinarian`.`owner`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Ashley_Carrasco_Midway_Project_Veterinarian`.`owner` (
  `owner_id` INT NOT NULL,
  `owner_first_name` VARCHAR(45) NOT NULL,
  `owner_last_name` VARCHAR(50) NOT NULL,
  `owner_phone_number` VARCHAR(15) NOT NULL,
  `owner_email_address` VARCHAR(50) NULL,
  `owner_street_address` VARCHAR(45) NULL,
  `owner_city` VARCHAR(45) NULL,
  `owner_state` VARCHAR(20) NULL,
  `owner_zip_code` VARCHAR(5) NULL,
  PRIMARY KEY (`owner_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Ashley_Carrasco_Midway_Project_Veterinarian`.`veterinarian`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Ashley_Carrasco_Midway_Project_Veterinarian`.`veterinarian` (
  `veterinarian_id` INT NOT NULL,
  `veterinarian_first_name` VARCHAR(45) NOT NULL,
  `veterinarian_last_name` VARCHAR(50) NOT NULL,
  `veterinarian_phone_number` VARCHAR(15) NOT NULL,
  `veterinarian_email_address` VARCHAR(60) NULL,
  PRIMARY KEY (`veterinarian_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Ashley_Carrasco_Midway_Project_Veterinarian`.`animal`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Ashley_Carrasco_Midway_Project_Veterinarian`.`animal` (
  `animal_id` INT NOT NULL,
  `owner_id` INT NOT NULL,
  `veterinarian_id` INT NOT NULL,
  `animal_first_name` VARCHAR(45) NOT NULL,
  `animal_species` VARCHAR(20) NULL,
  `animal_breed` VARCHAR(20) NULL,
  `animal_sex_(M/F)` VARCHAR(1) NOT NULL,
  `animal_date_of_birth` DATE NULL,
  `animal_age_years` INT NULL,
  `animal_weight_lbs` DECIMAL(5,2) NOT NULL,
  `animal_eye_color` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`animal_id`, `owner_id`, `veterinarian_id`),
  INDEX `fk_animal_owner_idx` (`owner_id` ASC) VISIBLE,
  INDEX `fk_animal_veterinarian1_idx` (`veterinarian_id` ASC),
  CONSTRAINT `fk_animal_owner`
    FOREIGN KEY (`owner_id`)
    REFERENCES `Ashley_Carrasco_Midway_Project_Veterinarian`.`owner` (`owner_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_animal_veterinarian1`
    FOREIGN KEY (`veterinarian_id`)
    REFERENCES `Ashley_Carrasco_Midway_Project_Veterinarian`.`veterinarian` (`veterinarian_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Ashley_Carrasco_Midway_Project_Veterinarian`.`diagnosis`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Ashley_Carrasco_Midway_Project_Veterinarian`.`diagnosis` (
  `diagnosis_id` INT NOT NULL,
  `diagnosis_name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`diagnosis_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Ashley_Carrasco_Midway_Project_Veterinarian`.`prescription`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Ashley_Carrasco_Midway_Project_Veterinarian`.`prescription` (
  `prescription_id` INT NOT NULL,
  `prescription_name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`prescription_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Ashley_Carrasco_Midway_Project_Veterinarian`.`appointment`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Ashley_Carrasco_Midway_Project_Veterinarian`.`appointment` (
  `appointment_id` INT NOT NULL,
  `veterinarian_id` INT NOT NULL,
  `appointment_date` DATE NOT NULL,
  `appointment_time` TIME NOT NULL,
  PRIMARY KEY (`appointment_id`, `veterinarian_id`),
  INDEX `fk_appointment_veterinarian1_idx` (`veterinarian_id` ASC) VISIBLE,
  CONSTRAINT `fk_appointment_veterinarian1`
    FOREIGN KEY (`veterinarian_id`)
    REFERENCES `Ashley_Carrasco_Midway_Project_Veterinarian`.`veterinarian` (`veterinarian_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Ashley_Carrasco_Midway_Project_Veterinarian`.`appointment_information`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Ashley_Carrasco_Midway_Project_Veterinarian`.`appointment_information` (
  `animal_id` INT NOT NULL,
  `owner_id` INT NOT NULL,
  `veterinarian_id` INT NOT NULL,
  `appointment_id` INT NOT NULL,
  PRIMARY KEY (`animal_id`, `owner_id`, `veterinarian_id`, `appointment_id`),
  INDEX `fk_animal_has_appointment_appointment1_idx` (`appointment_id` ASC),
  INDEX `fk_animal_has_appointment_animal1_idx` (`animal_id` ASC, `owner_id` ASC, `veterinarian_id` ASC),
  CONSTRAINT `fk_animal_has_appointment_animal1`
    FOREIGN KEY (`animal_id` , `owner_id` , `veterinarian_id`)
    REFERENCES `Ashley_Carrasco_Midway_Project_Veterinarian`.`animal` (`animal_id` , `owner_id` , `veterinarian_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_animal_has_appointment_appointment1`
    FOREIGN KEY (`appointment_id`)
    REFERENCES `Ashley_Carrasco_Midway_Project_Veterinarian`.`appointment` (`appointment_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Ashley_Carrasco_Midway_Project_Veterinarian`.`diagnosis_information`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Ashley_Carrasco_Midway_Project_Veterinarian`.`diagnosis_information` (
  `animal_id` INT NOT NULL,
  `owner_id` INT NOT NULL,
  `veterinarian_id` INT NOT NULL,
  `diagnosis_id` INT NOT NULL,
  `date_of_diagnosis` DATE NOT NULL,
  PRIMARY KEY (`animal_id`, `owner_id`, `veterinarian_id`, `diagnosis_id`),
  INDEX `fk_animal_has_diagnosis_diagnosis1_idx` (`diagnosis_id` ASC),
  INDEX `fk_animal_has_diagnosis_animal1_idx` (`animal_id` ASC, `owner_id` ASC, `veterinarian_id` ASC),
  CONSTRAINT `fk_animal_has_diagnosis_animal1`
    FOREIGN KEY (`animal_id` , `owner_id` , `veterinarian_id`)
    REFERENCES `Ashley_Carrasco_Midway_Project_Veterinarian`.`animal` (`animal_id` , `owner_id` , `veterinarian_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_animal_has_diagnosis_diagnosis1`
    FOREIGN KEY (`diagnosis_id`)
    REFERENCES `Ashley_Carrasco_Midway_Project_Veterinarian`.`diagnosis` (`diagnosis_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Ashley_Carrasco_Midway_Project_Veterinarian`.`prescription_information`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Ashley_Carrasco_Midway_Project_Veterinarian`.`prescription_information` (
  `animal_id` INT NOT NULL,
  `owner_id` INT NOT NULL,
  `veterinarian_id` INT NOT NULL,
  `prescription_id` INT NOT NULL,
  `prescription_filled_date` DATE NOT NULL,
  `prescription_expiration_date` DATE NOT NULL,
  `prescription_dosage` VARCHAR(45) NOT NULL,
  `prescription_quantity_(tablets)` INT NULL,
  `prescription_refills` INT NULL,
  PRIMARY KEY (`animal_id`, `owner_id`, `veterinarian_id`, `prescription_id`),
  INDEX `fk_animal_has_prescription_prescription1_idx` (`prescription_id` ASC),
  INDEX `fk_animal_has_prescription_animal1_idx` (`animal_id` ASC, `owner_id` ASC, `veterinarian_id` ASC),
  CONSTRAINT `fk_animal_has_prescription_animal1`
    FOREIGN KEY (`animal_id` , `owner_id` , `veterinarian_id`)
    REFERENCES `Ashley_Carrasco_Midway_Project_Veterinarian`.`animal` (`animal_id` , `owner_id` , `veterinarian_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_animal_has_prescription_prescription1`
    FOREIGN KEY (`prescription_id`)
    REFERENCES `Ashley_Carrasco_Midway_Project_Veterinarian`.`prescription` (`prescription_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
