SELECT *
FROM cats;

SELECT *
FROM shirts;

SELECT *
FROM books;

-- CONCAT
SELECT 
	DISTINCT 
		CONCAT
			(author_fname, 
			' ', 
			author_lname) AS Author_Name
FROM 
	books;

-- CONCAT_WS
SELECT 
	CONCAT_WS
		('_', 
		title, 
        author_fname, 
        author_lname)
FROM 
	books;

-- SUNSTRING
SELECT SUBSTRING
	(author_lname, 1, 1)
FROM books;

SELECT CONCAT(
			SUBSTR(title, 1, 10),
            '...'
            ) AS short_title
FROM books;

SELECT CONCAT(
			SUBSTR(author_fname, 1, 1), 
            '.', 
            SUBSTR(author_lname, 1, 1)
            ) AS author_initials
FROM books;
