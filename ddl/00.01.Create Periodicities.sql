DROP TABLE IF EXISTS `periodicities`;

CREATE TABLE `periodicities` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `frequency` varchar(255) DEFAULT NULL,
  `parent_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
