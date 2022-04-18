DROP TABLE IF EXISTS `periods`;

CREATE TABLE `periods` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `year` int DEFAULT NULL,
  `month` int DEFAULT NULL,
  `starts_at` datetime(6) DEFAULT NULL,
  `ends_at` datetime(6) DEFAULT NULL,
  `periodicity_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_rails_b85d07541f` (`periodicity_id`),
  CONSTRAINT `fk_rails_b85d07541f` FOREIGN KEY (`periodicity_id`) REFERENCES `periodicities` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
