
CREATE TABLE `platformapi`.`account_basic` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(200) NULL,
  `password` VARCHAR(20) NULL,
  PRIMARY KEY (`id`));


CREATE TABLE `platformapi`.`account_profile` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `account_name` VARCHAR(200) NULL,
  `profile_data` MEDIUMTEXT NULL,
  `profile_name` VARCHAR(50) NULL,
  `profile_product` VARCHAR(50) NULL,
  PRIMARY KEY (`id`));




CREATE TABLE `platformapi`.`data_basic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `symbol` varchar(40) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `data` longtext,
  PRIMARY KEY (`id`)
) 