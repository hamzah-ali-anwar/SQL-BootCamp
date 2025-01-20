CREATE DATABASE udemy;

USE udemy;

CREATE TABLE cats (
    cat_id INT AUTO_INCREMENT,
    name VARCHAR(100),
    breed VARCHAR(100),
    age INT,
    PRIMARY KEY (cat_id)
); 

INSERT INTO cats(name, breed, age) 
VALUES ('Ringo', 'Tabby', 4),
       ('Cindy', 'Maine Coon', 10),
       ('Dumbledore', 'Maine Coon', 11),
       ('Egg', 'Persian', 4),
       ('Misty', 'Tabby', 13),
       ('George Michael', 'Ragdoll', 9),
       ('Jackson', 'Sphynx', 7);
       
CREATE TABLE shirts (
    shirt_id INT AUTO_INCREMENT,
    article VARCHAR(100),
    color VARCHAR(100),
    shirt_size CHAR(10),
    last_worn INT,
    PRIMARY KEY (shirt_id)
); 

INSERT INTO shirts (article, color, shirt_size, last_worn)
VALUES ('t-shirt', 'white', 'S', 10),
	   ('t-shirt', 'green', 'S', 200),
	   ('polo shirt', 'black', 'M', 10),
	   ('tank top', 'blue', 'S', 50),
	   ('t-shirt', 'pink', 'S', 0),
	   ('polo shirt', 'red', 'M', 5),
	   ('tank top', 'white', 'S', 200),
	   ('tank top', 'blue', 'M', 15);
       
INSERT INTO shirts (article, color, shirt_size, last_worn)
VALUES ('polo shirt', 'purple', 'M', 50);






