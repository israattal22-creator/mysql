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
