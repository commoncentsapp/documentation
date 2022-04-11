DROP TABLE IF EXISTS `accounting_events`;

CREATE TABLE `accounting_events` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `amount_fractional_units` int DEFAULT NULL,
  `currency_id` bigint DEFAULT NULL,
  `entity_id` bigint DEFAULT NULL,
  `memo` varbinary(1024) DEFAULT NULL,
  `observed_at` datetime(6) DEFAULT NULL,
  `transacted_at` datetime(6) DEFAULT NULL,
  `accounting_type_id` bigint DEFAULT NULL,
  `meta_data` varbinary(1024) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `key` varchar(255) DEFAULT NULL,
  `foreign_key` varchar(255) DEFAULT NULL,
  `version` varchar(255) DEFAULT '0.0.1',
  `status` varchar(255) DEFAULT 'active',
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_rails_71f74f8a2d` (`currency_id`),
  KEY `fk_rails_ffe45d27d9` (`entity_id`),
  KEY `fk_rails_b849b0dcde` (`accounting_type_id`),
  CONSTRAINT `fk_rails_71f74f8a2d` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`),
  CONSTRAINT `fk_rails_b849b0dcde` FOREIGN KEY (`accounting_type_id`) REFERENCES `accounting_types` (`id`),
  CONSTRAINT `fk_rails_ffe45d27d9` FOREIGN KEY (`entity_id`) REFERENCES `entities` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;