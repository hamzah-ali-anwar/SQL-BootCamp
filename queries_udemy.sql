SELECT * 
FROM cats;

SELECT *
FROM shirts;

SELECT *
FROM books;

SELECT DISTINCT CONCAT(author_fname, ' ', author_lname) AS Author_Name
FROM books;

SELECT CONCAT_WS('_', title, author_fname, author_lname)
FROM books;