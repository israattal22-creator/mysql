CREATE DATABASE 2509G1;

use 2509G1;

SELECT id,tittle FROM shop_db;

SELECT * FROM books;

SELECT * FROM shop_db WHERE year = 2023;
SELECT * FROM shop_db WHERE published-id = 12; 

SELECT * FROM authors;

SELECT * FROM authors WHERE country = "france";
SELECT * FROM authors WHERE birth = 1987; 

SELECT * FROM books;

SELECT * FROM books WHERE year != 2023;

SELECT * FROM books WHERE year <= 2020;
SELECT * FROM books WHERE year >= 2020;
SELECT * FROM books WHERE title= "boulder";

select * FROM books WHERE title LIKE "%pa%";
select * FROM books WHERE title LIKE "__pa%";


SELECT * FROM books WHERE year = 2020 AND format = "paperbook";
-- SELECT * FROM books WHERE year = 2020 OR format = "paperbook";
SELECT * FROM books WHERE year BETWEEN 2020 AND 2022;

select * FROM books ORDER BY pages asc;
select * FROM books ORDER BY pages desc;

SELECT count(title) from books;
SELECT min(title) from books;
SELECT mix(title) from books;
SELECT avg(pages) from books;
SELECT round(avg(pages)) from books;

-- SUBQUERY
SELECT * FROM publishers;

SELECT * FROM books;

SELECT publisher_id FROM books WHERE title = 'whale';
-- outer jion
-- right outer join 
SELECT * FROM sea_lions RIGHT OUTER JOIN magration ON sea_lions.id = migrations .id;

-- left outer join 

SELECT * FROM sea_lions LEFT OUTER JOIN migration ON sea_lions.id = migration.id;

-- full outer jion 

SELECT * FROM sea_lions RIGHT OUTER JOIN migrations ON sea_lions.id = migrations.id
UNION
SELECT * FROM sea_lions LEFT OUTER JOIN MIGRATION ON sea_lions.id = migration.id;

select * FROM translators;

select * FROM autors;


SELECT name FROM authors
INTERSECT
SELECT name FROM translators;


SELECT name FROM authors
EXCPET
SELECT name FROM translators;

-- GROUP BY

SELECT * FROM ratings;

SELECT books_id, avg(ratings) as avg_ratings FROM ratings GROUP BY book_id;


SELECT * FROM publishers WHERE id = 3;


SELECT * FROM publishers WHERE id = (
SELECT publisher_id FROM books WHERE title = 'whale'
);

CREATE TABLE riders (
id INT AUTO_INCREMENT(255),
name VARCHAAR(255),
PRIMARY KEY (id)
);


CREATE TABLE stations (
id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(255),
line VARCHAR(255)
);

INSERT INTO riders(name) VALUE ('asma');
INSERT INTO riders(name) VALUE ('yasir');
INSERT INTO riders(name) VALUE ('hamza');
INSERT INTO riders(name) VALUE ('shakeela');

SELECT * FROM riders;

CREATE TABLE visits(
rider_id INT,
station_id INT,
FOREIGN KEY (rider_id) REFERENCES riders(id)
FOREIGN KEY (station_id) REFERENCES stations(id)
);

CREATE TABLE card(
id INT PRIMARY KEY
);

CREATE TABLE swipe(
id INT,
card_id INT,
station_id INT,
type TEXT NOT NULL CHECK(type in ('enter','exit','deposit')),
date_time datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
amount INT NOT NULL CHECK (amount !=0),
FOREIGN KEY (card_id) REFERENCES card(id),
FOREIGN KEY (station_id) REFERENCES stations(id)
);

CREATE TABLE students(
id INT,
studentname VARCHAR(255),
cnic INT
);

SELECT * FROM students;

ALTER TABLE students DROP COLUMN cnic;

ALTER TABLE students ADD COLUMN studentage INT;
ALTER TABLE students ADD COLUMN studentclass INT;

ALTER TABLE students MODIFY COLUMN studentclass VARCHAR(255);


ALTER TABLE students DROP CONSTRAINT PRIMARY KEY;


ALTER TABLE students ADD CONSTRAINT PRIMARY KEY(id);


ALTER TABLE stud CHANGE COLUMN studentname studname VARCHAR(255);

CREATE TABLE collections(
id INT PRIMARY KEY AUTO_INCREMENT,
accession_number FLOAT,
acquuried VARCHAR(255)
);
ALTER TABLE collections ADD COLUMN title VARCHAR(255) AFTER id;
INSERT INTO collections(title, accession_number, acquuried) VALUEs
('profusion of flowers',56.257,'1956-04-12'),
('farmers working at down',11.6152,'1911-08-03'),
('spring outing',14.76,'1914-01-08');

SELECT * FROM collections;
