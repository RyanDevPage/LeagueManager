-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema league
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema league
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `league` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `league` ;

-- -----------------------------------------------------
-- Table `league`.`coaches`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `league`.`coaches` (
  `coach_id` INT NOT NULL AUTO_INCREMENT,
  `coach_fname` VARCHAR(45) NOT NULL,
  `coach_lname` VARCHAR(45) NOT NULL,
  `team_id` INT NOT NULL,
  PRIMARY KEY (`coach_id`),
  UNIQUE INDEX `coach_id_UNIQUE` (`coach_id` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `league`.`games`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `league`.`games` (
  `game_id` INT NOT NULL AUTO_INCREMENT,
  `home_team_id` INT NOT NULL,
  `home_team_name` VARCHAR(45) NOT NULL,
  `away_team_id` INT NOT NULL,
  `away_team_name` VARCHAR(45) NOT NULL,
  `date` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`game_id`),
  UNIQUE INDEX `game_id_UNIQUE` (`game_id` ASC) VISIBLE,
  UNIQUE INDEX `home_team_id_UNIQUE` (`home_team_id` ASC) VISIBLE,
  UNIQUE INDEX `home_team_name_UNIQUE` (`home_team_name` ASC) VISIBLE,
  UNIQUE INDEX `away_team_id_UNIQUE` (`away_team_id` ASC) VISIBLE,
  UNIQUE INDEX `away_team_name_UNIQUE` (`away_team_name` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `league`.`players`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `league`.`players` (
  `player_id` INT NOT NULL AUTO_INCREMENT,
  `player_fname` VARCHAR(45) NOT NULL,
  `player_lname` VARCHAR(45) NOT NULL,
  `player_number` INT NOT NULL,
  `player_teamname` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`player_id`),
  UNIQUE INDEX `player_id_UNIQUE` (`player_id` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `league`.`teams`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `league`.`teams` (
  `team_id` INT NOT NULL AUTO_INCREMENT,
  `team_name` VARCHAR(45) NOT NULL,
  `coach_id` INT NOT NULL,
  PRIMARY KEY (`team_id`),
  UNIQUE INDEX `team_id_UNIQUE` (`team_id` ASC) VISIBLE,
  UNIQUE INDEX `team_name_UNIQUE` (`team_name` ASC) VISIBLE,
  UNIQUE INDEX `coach_id_UNIQUE` (`coach_id` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
