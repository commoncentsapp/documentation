DROP TABLE IF EXISTS `accounts`;

CREATE TABLE `accounts` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT 'debit',
  `entity_id` bigint DEFAULT NULL,
  `version` varchar(255) DEFAULT '0.0.1',
  `status` varchar(255) DEFAULT 'active',
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_rails_34ab65bee2` (`entity_id`),
  CONSTRAINT `fk_rails_34ab65bee2` FOREIGN KEY (`entity_id`) REFERENCES `entities` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;