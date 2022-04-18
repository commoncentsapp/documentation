DROP TABLE IF EXISTS `measures`;

CREATE TABLE `measures` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varbinary(1024) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `periodicity_id` bigint DEFAULT NULL,
  `conversion` varchar(255) DEFAULT NULL,
  `meta_data` varbinary(1024) DEFAULT NULL,
  `version` varchar(255) DEFAULT '0.0.1',
  `status` varchar(255) DEFAULT 'active',
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_rails_b7b4acaf86` (`periodicity_id`),
  CONSTRAINT `fk_rails_b7b4acaf86` FOREIGN KEY (`periodicity_id`) REFERENCES `periodicities` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;