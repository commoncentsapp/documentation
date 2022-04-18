DROP TABLE IF EXISTS `accounting_entries`;

CREATE TABLE `accounting_entries` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `account_id` bigint DEFAULT NULL,
  `journal_entry_id` bigint DEFAULT NULL,
  `amount_fractional_units` int DEFAULT NULL,
  `memo` varbinary(1024) DEFAULT NULL,
  `transacted_at` datetime(6) DEFAULT NULL,
  `period_id` bigint DEFAULT NULL,
  `currency_id` bigint DEFAULT NULL,
  `version` varchar(255) DEFAULT '0.0.1',
  `status` varchar(255) DEFAULT 'active',
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_rails_c5dfeb54c6` (`account_id`),
  KEY `fk_rails_25824183fc` (`journal_entry_id`),
  KEY `fk_rails_613f2613d1` (`currency_id`),
  KEY `fk_rails_a10eaf86ad` (`period_id`),
  CONSTRAINT `fk_rails_25824183fc` FOREIGN KEY (`journal_entry_id`) REFERENCES `journal_entries` (`id`),
  CONSTRAINT `fk_rails_613f2613d1` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`),
  CONSTRAINT `fk_rails_a10eaf86ad` FOREIGN KEY (`period_id`) REFERENCES `periods` (`id`),
  CONSTRAINT `fk_rails_c5dfeb54c6` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
