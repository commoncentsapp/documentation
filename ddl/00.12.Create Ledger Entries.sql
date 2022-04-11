DROP TABLE IF EXISTS `ledger_entries`;

CREATE TABLE `ledger_entries` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `amount_fractional_units` int DEFAULT NULL,
  `memo` varbinary(1024) DEFAULT NULL,
  `currency_id` bigint DEFAULT NULL,
  `measure_id` bigint DEFAULT NULL,
  `period_id` bigint DEFAULT NULL,
  `entity_id` bigint DEFAULT NULL,
  `version` varchar(255) DEFAULT '0.0.1',
  `status` varchar(255) DEFAULT 'active',
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_rails_f5a7c1513f` (`currency_id`),
  KEY `fk_rails_f329805c10` (`measure_id`),
  KEY `fk_rails_cbcf3303e5` (`period_id`),
  KEY `fk_rails_2b1d1d791a` (`entity_id`),
  CONSTRAINT `fk_rails_2b1d1d791a` FOREIGN KEY (`entity_id`) REFERENCES `entities` (`id`),
  CONSTRAINT `fk_rails_cbcf3303e5` FOREIGN KEY (`period_id`) REFERENCES `periods` (`id`),
  CONSTRAINT `fk_rails_f329805c10` FOREIGN KEY (`measure_id`) REFERENCES `measures` (`id`),
  CONSTRAINT `fk_rails_f5a7c1513f` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;