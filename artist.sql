-- Add 3 new artists to the artist table. (It already exists.)

INSERT INTO artist
(artist_id, name)

VALUES 
(276, 'Brian Eno'),
(277, 'Telepath')
(278, 'Hong Kong Express');

SELECT * FROM artist

-- Select 10 artists in reverse alphabetical order.

SELECT * FROM artist
ORDER BY name DESC
Limit 10;


-- Select 5 artists in alphabetical order.

SELECT * FROM artist
ORDER BY name ASC
Limit 5;


-- Select all artists that start with the word ‘Black’.

SELECT * FROM artist
WHERE name LIKE 'Black%';


-- Select all artists that contain the word ‘Black’.

SELECT * FROM artist
WHERE name LIKE '%Black%';