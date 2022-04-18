DROP TABLE IF EXISTS `journal_entries`;

CREATE TABLE `journal_entries` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `accounting_type_id` bigint DEFAULT NULL,
  `accounting_event_id` bigint DEFAULT NULL,
  `amount_fractional_units` int DEFAULT NULL,
  `currency_id` bigint DEFAULT NULL,
  `transacted_at` datetime(6) DEFAULT NULL,
  `period_id` bigint DEFAULT NULL,
  `memo` varbinary(1024) DEFAULT NULL,
  `version` varchar(255) DEFAULT '0.0.1',
  `status` varchar(255) DEFAULT 'active',
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_rails_45098ecc93` (`accounting_type_id`),
  KEY `fk_rails_7b0986a38e` (`currency_id`),
  KEY `fk_rails_c7ada1574d` (`period_id`),
  KEY `fk_rails_144fd5c149` (`accounting_event_id`),
  CONSTRAINT `fk_rails_144fd5c149` FOREIGN KEY (`accounting_event_id`) REFERENCES `accounting_events` (`id`),
  CONSTRAINT `fk_rails_45098ecc93` FOREIGN KEY (`accounting_type_id`) REFERENCES `accounting_types` (`id`),
  CONSTRAINT `fk_rails_7b0986a38e` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`),
  CONSTRAINT `fk_rails_c7ada1574d` FOREIGN KEY (`period_id`) REFERENCES `periods` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;