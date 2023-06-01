CREATE TABLE `homework_database`.`mobile_phones` (
  `id_mobile_phones` INT NOT NULL AUTO_INCREMENT,
  `models_mobile_phones` VARCHAR(45) NOT NULL,
  `manufacturers_mobile_phones` VARCHAR(45) NOT NULL,
  `prices_mobile_phones` DECIMAL NULL,
  `quantity_mobile_phones` INT NOT NULL,
  PRIMARY KEY (`id_mobile_phones`));

INSERT INTO `homework_database`.`mobile_phones` 
(`models_mobile_phones`, `manufacturers_mobile_phones`, `prices_mobile_phones`, `quantity_mobile_phones`) 
VALUES 
('iPhone X', 'Apple', 76000, 3),
('iPhone 8', 'Apple', 51000, 2),
('Galaxy S9', 'Samsung', 56000, 2),
('Galaxy S8', 'Samsung', 41000, 1),
('P20 PRO', 'Huawei', 36000, 5),

SELECT models_mobile_phones, manufacturers_mobile_phones, prices_mobile_phones 
FROM mobile_phones
WHERE quantity_mobile_phones > 2;

SELECT * FROM mobile_phones
WHERE manufacturers_mobile_phones = 'Samsung';