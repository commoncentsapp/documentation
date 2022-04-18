DROP TABLE IF EXISTS `entities`;

CREATE TABLE `entities` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `referencable_type` varchar(255) DEFAULT NULL,
  `referencable_id` int DEFAULT NULL,
  `version` varchar(255) DEFAULT '0.0.1',
  `status` varchar(255) DEFAULT 'active',
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
