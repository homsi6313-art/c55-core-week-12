---- Queries
-- Question 1
SELECT title, published_year
FROM books
WHERE genre = 'Science Fiction'
ORDER BY published_year;

-- Question 2
SELECT title, published_year
FROM books
WHERE published_year < 1950;

-- Question 3
SELECT
    books.title,
    authors.first_name  ||' '||  authors.last_name AS author
FROM books
JOIN authors
ON books.author_id = authors.id;

-- Question 4
SELECT books.title, books.published_year
FROM books
JOIN authors
ON books.author_id = authors.id
WHERE authors.first_name = 'Stephen'
AND authors.last_name = 'King'
ORDER BY books.published_year;

-- Question 5
INSERT INTO authors (first_name, last_name, nationality, birth_year)
VALUES ('Mustafa', 'Homsi', 'Syrian', 2000);

-- Question 6
INSERT INTO books (title, published_year, genre, author_id)
VALUES ('My First Book', 2024, 'Adventure', 6);

-- Question 7
UPDATE books
SET genre = 'Horror'
WHERE title = 'The Dark Tower: The Gunslinger';

SELECT title, genre
FROM books
WHERE title = 'The Dark Tower: The Gunslinger';

-- Question 8
DELETE FROM books
WHERE title = 'My First Book';
