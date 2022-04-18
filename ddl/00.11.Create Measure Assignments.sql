DROP TABLE IF EXISTS `measure_assignments`;

CREATE TABLE `measure_assignments` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `measure_id` bigint DEFAULT NULL,
  `entity_id` bigint DEFAULT NULL,
  `activated_at` datetime(6) DEFAULT NULL,
  `deactivated` datetime(6) DEFAULT NULL,
  `version` varchar(255) DEFAULT '0.0.1',
  `status` varchar(255) DEFAULT 'active',
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_rails_cf7cfd7aba` (`measure_id`),
  KEY `fk_rails_bfa541a05d` (`entity_id`),
  CONSTRAINT `fk_rails_bfa541a05d` FOREIGN KEY (`entity_id`) REFERENCES `entities` (`id`),
  CONSTRAINT `fk_rails_cf7cfd7aba` FOREIGN KEY (`measure_id`) REFERENCES `measures` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;