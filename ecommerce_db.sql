DROP TABLE IF EXISTS `product_tag`;
 DROP TABLE IF EXISTS `tag`;
DROP TABLE IF EXISTS `product`;
DROP TABLE IF EXISTS `category`;
DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (`id` INTEGER NOT NULL auto_increment , `category_name` VARCHAR(255) NOT NULL, PRIMARY KEY (`id`)) ENGINE=InnoDB;
SHOW INDEX FROM `category`;
DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (`id` INTEGER NOT NULL auto_increment , `product_name` VARCHAR(255) NOT NULL, `price` DECIMAL NOT NULL, `stock` INTEGER NOT NULL DEFAULT 10, `category_id` INTEGER, PRIMARY KEY (`id`), FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE) ENGINE=InnoDB;
SHOW INDEX FROM `product`;
DROP TABLE IF EXISTS `tag`;
CREATE TABLE IF NOT EXISTS `tag` (`id` INTEGER NOT NULL auto_increment , `tag_name` VARCHAR(255), PRIMARY KEY (`id`)) ENGINE=InnoDB;
SHOW INDEX FROM `tag`;
 DROP TABLE IF EXISTS `product_tag`;
 CREATE TABLE IF NOT EXISTS `product_tag` (`id` INTEGER NOT NULL auto_increment , `product_id` INTEGER, `tag_id` INTEGER, UNIQUE `product_tag_tag_id_product_id_unique` (`product_id`, `tag_id`), PRIMARY KEY (`id`), FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE, FOREIGN KEY (`tag_id`) REFERENCES `tag` (`id`) ON DELETE CASCADE ON UPDATE CASCADE) ENGINE=InnoDB;SHOW INDEX FROM `product_tag`;

----- DATABASE SYNCED -----

INSERT INTO `category` (`id`,`category_name`) VALUES (NULL,'Shirts'),(NULL,'Shorts'),(NULL,'Music'),(NULL,'Hats'),(NULL,'Shoes');

----- CATEGORIES SEEDED -----
INSERT INTO `product` (`id`,`product_name`,`price`,`stock`,`category_id`) VALUES (NULL,'Plain T-Shirt',14.99,14,1),(NULL,'Running Sneakers',90,25,5),(NULL,'Branded Baseball Hat',22.99,12,4),(NULL,'Top 40 Music Compilation Vinyl Record',12.99,50,3),(NULL,'Cargo Shorts',29.99,22,2);



INSERT INTO `tag` (`id`,`tag_name`) VALUES (NULL,'rock music'),(NULL,'pop music'),(NULL,'blue'),(NULL,'red'),(NULL,'green'),(NULL,'white'),(NULL,'gold'),(NULL,'pop culture');

----- TAGS SEEDED -----

INSERT INTO `product_tag` (`id`,`product_id`,`tag_id`) VALUES (NULL,1,6),(NULL,1,7),(NULL,1,8),(NULL,2,6),(NULL,3,1),(NULL,3,3),(NULL,3,4),(NULL,3,5),(NULL,4,1),(NULL,4,2),(NULL,4,8),(NULL,5,3);

----- PRODUCT TAGS SEEDED -----