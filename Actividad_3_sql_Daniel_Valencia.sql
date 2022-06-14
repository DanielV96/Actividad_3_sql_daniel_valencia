-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.24-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             12.0.0.6468
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for tienda_deportiva_el_podio
DROP DATABASE IF EXISTS `tienda_deportiva_el_podio`;
CREATE DATABASE IF NOT EXISTS `tienda_deportiva_el_podio` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `tienda_deportiva_el_podio`;

-- Dumping structure for table tienda_deportiva_el_podio.customers
DROP TABLE IF EXISTS `customers`;
CREATE TABLE IF NOT EXISTS `customers` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '0',
  `phone_number` varchar(50) NOT NULL DEFAULT '3205987462',
  `premium` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='Aquí se almaceranán los datos de los clientes';

-- Dumping data for table tienda_deportiva_el_podio.customers: ~3 rows (approximately)
DELETE FROM `customers`;
INSERT INTO `customers` (`id`, `name`, `phone_number`, `premium`) VALUES
	(1, 'daniel valencia', '3205987462', b'1'),
	(2, 'camila caballero', '3205987446', b'0'),
	(3, 'daniela carpiña', '3115689545', b'1');

-- Dumping structure for table tienda_deportiva_el_podio.invoice
DROP TABLE IF EXISTS `invoice`;
CREATE TABLE IF NOT EXISTS `invoice` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `sale_value` float NOT NULL DEFAULT 0,
  `customer_id` smallint(6) NOT NULL,
  `product_id` smallint(6) NOT NULL,
  `method_id` smallint(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='Aquí prevalecerán los datos de las facturas';

-- Dumping data for table tienda_deportiva_el_podio.invoice: ~3 rows (approximately)
DELETE FROM `invoice`;
INSERT INTO `invoice` (`id`, `date`, `sale_value`, `customer_id`, `product_id`, `method_id`) VALUES
	(1, '2022-06-13', 1750000, 3, 2, 3),
	(2, '2022-06-13', 580000, 1, 3, 2),
	(3, '2022-06-12', 15000, 2, 1, 1);

-- Dumping structure for table tienda_deportiva_el_podio.payment_methods
DROP TABLE IF EXISTS `payment_methods`;
CREATE TABLE IF NOT EXISTS `payment_methods` (
  `id` smallint(5) NOT NULL AUTO_INCREMENT,
  `method` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='Aquí se almacenarán los métodos de pago';

-- Dumping data for table tienda_deportiva_el_podio.payment_methods: ~3 rows (approximately)
DELETE FROM `payment_methods`;
INSERT INTO `payment_methods` (`id`, `method`) VALUES
	(1, 'tdc_amex'),
	(2, 'cash'),
	(3, 'check');

-- Dumping structure for table tienda_deportiva_el_podio.products
DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '0',
  `measure_product` varchar(50) NOT NULL DEFAULT '',
  `imported` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='Aquí se almacenarán los datos de los productos';

-- Dumping data for table tienda_deportiva_el_podio.products: ~3 rows (approximately)
DELETE FROM `products`;
INSERT INTO `products` (`id`, `name`, `measure_product`, `imported`) VALUES
	(1, 'balones futbol', '63 cm', b'1'),
	(2, 'tenis deportivos', '37 cm', b'0'),
	(3, 'medias deportivas', '31 cm', b'1');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
