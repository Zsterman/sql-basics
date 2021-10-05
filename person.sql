-- In the person.sql file, write out the code for the following problems:

-- Create a table called person that records a person’s id, name, age, height (in cm , city, favorite_color. id should be an auto-incrementing id/primary key (use type: SERIAL)

CREATE TABLE persons(
person_id SERIAL PRIMARY KEY,
person_name VARCHAR(30),
age NUMERIC,
city VARCHAR(30),
favorite_color VARCHAR(30), 
height NUMERIC 
);

SELECT * FROM persons; 


-- Add 5 different people into the person database. Remember to not include the person_id because it should auto-increment.
INSERT INTO persons
(person_name, age, city, favorite_color, height)

VALUES
('Zachary', 29, 'Raleigh', 'Blue', 6.1)
('Brian', 31, 'Raleigh', 'red', 5.1),
('Claire', 25, 'Miami', 'Green', 5.3),
('Ariana', 23, 'Blowing Rock', 'yellow', 5.1),
('Scott', 23, 'Lehi', 'Red', 6.5);


SELECT * FROM persons;


-- Select all the people in the person table by height from tallest to shortest.
SELECT * FROM persons 
ORDER BY height DESC;


-- Select all the people in the person table by height from shortest to tallest.
SELECT * FROM persons 
ORDER BY height ASC;


-- Select all the people in the person table by age from oldest to youngest.
SELECT * FROM persons 
ORDER BY age DESC;


-- Select all the people in the person table older than age 20.
SELECT * FROM persons
WHERE age > 20;


-- Select all the people in the person table that are exactly 18.
SELECT * FROM persons
WHERE age = 18; 


-- Select all the people in the person table that are less than 20 and older than 30.
SELECT * FROM persons
WHERE age < 20 OR age > 30;



-- Select all the people in the person table that are not 27 (use not equals).
SELECT * FROM persons
WHERE age <> 27 ; 


-- Select all the people in the person table where their favorite color is not red.
SELECT * FROM persons
WHERE favorite_color <> 'Red' ;


-- Select all the people in the person table where their favorite color is not red and is not blue.
SELECT * FROM persons
WHERE favorite_color <> 'Red' AND 
favorite_color <> 'Blue';


-- Select all the people in the person table where their favorite color is orange or green.
SELECT * FROM persons
WHERE favorite_color = 'Orange' OR 
favorite_color = 'Green';


-- Select all the people in the person table where their favorite color is orange, green or blue (use IN).
SELECT * FROM persons 
WHERE favorite_color IN('Orange','Green','Blue');


-- Select all the people in the person table where their favorite color is yellow or purple (use IN).
SELECT * FROM persons 
WHERE favorite_color IN('Yellow','Purple');