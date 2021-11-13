-- Lab | SQL Queries 6
drop table if exists films_2020;


CREATE TABLE `films_2020` (
  `film_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` text,
  `release_year` year(4) DEFAULT NULL,
  `language_id` tinyint(3) unsigned NOT NULL,
  `original_language_id` tinyint(3) unsigned DEFAULT NULL,
  `rental_duration` int(6),
  `rental_rate` decimal(4,2),
  `length` smallint(5) unsigned DEFAULT NULL,
  `replacement_cost` decimal(5,2) DEFAULT NULL,
  `rating` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`film_id`),
  CONSTRAINT FOREIGN KEY (`original_language_id`) REFERENCES `language` (`language_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1003 DEFAULT CHARSET=utf8;

-- Add the new films to the database.
-- load data infile '/Users/Pablofuster/Desktop/Ironhack/Class-Activities-\&-Class-Labs/Week-4/Day-3/lab-sql-6/files_for_lab/films_2020.csv'
-- INTO TABLE sakila.films_2020
-- FIELDS TERMINATED BY ',';

-- Load the table using the import thing

-- Update information on rental_duration, rental_rate, and replacement_cost.
update films_2020 
set rental_duration = 3;

update films_2020
set rental_rate = 2.99;

update films_2020
set replacement_cost = 8.99;