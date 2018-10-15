DROP TABLE movies;
DROP TABLE people;

CREATE TABLE movies (
	id SERIAL8 PRIMARY KEY,
	title VARCHAR(255),
	year INT2,
	show_time VARCHAR(255)
);

CREATE TABLE people (
	id SERIAL8 PRIMARY KEY,
	name VARCHAR(255)
);

INSERT INTO people (name) VALUES ('Rabah	Meliani');
INSERT INTO people (name) VALUES ('Robert Baker');
INSERT INTO people (name) VALUES ('Louise Meney');
INSERT INTO people (name) VALUES ('Stewart Cowan');
INSERT INTO people (name) VALUES ('Colin Bell');
INSERT INTO people (name) VALUES ('Alex McIntosh');
INSERT INTO people (name) VALUES ('Steven McAndrew');
INSERT INTO people (name) VALUES ('Michael Allan');
INSERT INTO people (name) VALUES ('Robin Hughes');

INSERT INTO movies (title, year, show_time) VALUES ('Iron Man', 2008, '17:55');
INSERT INTO movies (title, year, show_time) VALUES ('The Incredible Hulk', 2008, '21:40');
INSERT INTO movies (title, year, show_time) VALUES ('Iron Man 2', 2010, '21:15');
INSERT INTO movies (title, year, show_time) VALUES ('Thor', 2011, '18:30');
INSERT INTO movies (title, year, show_time) VALUES ('Captain America: The First Avenger', 2011, '12:00');
INSERT INTO movies (title, year, show_time) VALUES ('Avengers Assemble', 2012, '22:55');
INSERT INTO movies (title, year, show_time) VALUES ('Iron Man 3', 2013, '14:05');
INSERT INTO movies (title, year, show_time) VALUES ('Thor: The Dark World', 2013, '20:40');
INSERT INTO movies (title, year, show_time) VALUES ('Batman Begins', 2005, '14:05');
INSERT INTO movies (title, year, show_time) VALUES ('Captain America: The Winter Soldier', 2014, '15:30');
INSERT INTO movies (title, year, show_time) VALUES ('Guardians of the Galaxy', 2014, '14:25');
INSERT INTO movies (title, year, show_time) VALUES ('Avengers: Age of Ultron', 2015, '12:45');
INSERT INTO movies (title, year, show_time) VALUES ('Ant-Man', 2015, '23:05');
INSERT INTO movies (title, year, show_time) VALUES ('Captain America: Civil War', 2016, '17:40');
INSERT INTO movies (title, year, show_time) VALUES ('Doctor Strange', 2016, '21:45');
INSERT INTO movies (title, year, show_time) VALUES ('Guardians of the Galaxy 2', 2017, '21:45');
INSERT INTO movies (title, year, show_time) VALUES ('Spider-Man: Homecoming', 2017, '12:25');
INSERT INTO movies (title, year, show_time) VALUES ('Thor: Ragnarok', 2017, '23:20');
INSERT INTO movies (title, year, show_time) VALUES ('Black Panther', 2018, '15:05');


SELECT * FROM movies;
id |                title                | year | show_time
----+-------------------------------------+------+-----------
  1 | Iron Man                            | 2008 | 17:55
  2 | The Incredible Hulk                 | 2008 | 21:40
  3 | Iron Man 2                          | 2010 | 21:15
  4 | Thor                                | 2011 | 18:30
  5 | Captain America: The First Avenger  | 2011 | 12:00
  6 | Avengers Assemble                   | 2012 | 22:55
  7 | Iron Man 3                          | 2013 | 14:05
  8 | Thor: The Dark World                | 2013 | 20:40
  9 | Batman Begins                       | 2005 | 14:05
 10 | Captain America: The Winter Soldier | 2014 | 15:30
 11 | Guardians of the Galaxy             | 2014 | 14:25
 12 | Avengers: Age of Ultron             | 2015 | 12:45
 13 | Ant-Man                             | 2015 | 23:05
 14 | Captain America: Civil War          | 2016 | 17:40
 15 | Doctor Strange                      | 2016 | 21:45
 16 | Guardians of the Galaxy 2           | 2017 | 21:45
 17 | Spider-Man: Homecoming              | 2017 | 12:25
 18 | Thor: Ragnarok                      | 2017 | 23:20
 19 | Black Panther                       | 2018 | 15:05
(19 rows)

DELETE FROM movies WHERE title = 'Batman Begins';
id |                title                | year | show_time
----+-------------------------------------+------+-----------
 1 | Iron Man                            | 2008 | 17:55
 2 | The Incredible Hulk                 | 2008 | 21:40
 3 | Iron Man 2                          | 2010 | 21:15
 4 | Thor                                | 2011 | 18:30
 5 | Captain America: The First Avenger  | 2011 | 12:00
 6 | Avengers Assemble                   | 2012 | 22:55
 7 | Iron Man 3                          | 2013 | 14:05
 8 | Thor: The Dark World                | 2013 | 20:40
10 | Captain America: The Winter Soldier | 2014 | 15:30
11 | Guardians of the Galaxy             | 2014 | 14:25
12 | Avengers: Age of Ultron             | 2015 | 12:45
13 | Ant-Man                             | 2015 | 23:05
14 | Captain America: Civil War          | 2016 | 17:40
15 | Doctor Strange                      | 2016 | 21:45
16 | Guardians of the Galaxy 2           | 2017 | 21:45
17 | Spider-Man: Homecoming              | 2017 | 12:25
18 | Thor: Ragnarok                      | 2017 | 23:20
19 | Black Panther                       | 2018 | 15:05
(18 rows)



SELECT name FROM people;
name
-----------------
Rabah   Meliani
Robert Baker
Louise Meney
Stewart Cowan
Colin Bell
Alex McIntosh
Steven McAndrew
Michael Allan
Robin Hughes
(9 rows)

SELECT name FROM people WHERE name = 'Robin Hughes';
name
--------------
Robin Hughes
(1 row)


INSERT INTO people (name) VALUES ('Steve Meiklejohn');
name
------------------
Rabah   Meliani
Robert Baker
Louise Meney
Stewart Cowan
Colin Bell
Alex McIntosh
Steven McAndrew
Michael Allan
Robin Hughes
Steve Meiklejohn
(10 rows)

SELECT name FROM people;
DELETE FROM people WHERE name = 'Colin Bell';
name
------------------
Rabah   Meliani
Robert Baker
Louise Meney
Stewart Cowan
Alex McIntosh
Steven McAndrew
Michael Allan
Robin Hughes
Steve Meiklejohn
(9 rows)

SELECT name FROM people;
INSERT INTO movies (title, year, show_time) VALUES ('Avengers: Infinity War', 2018, '00:00');
id |                title                | year | show_time
----+-------------------------------------+------+-----------
 1 | Iron Man                            | 2008 | 17:55
 2 | The Incredible Hulk                 | 2008 | 21:40
 3 | Iron Man 2                          | 2010 | 21:15
 4 | Thor                                | 2011 | 18:30
 5 | Captain America: The First Avenger  | 2011 | 12:00
 6 | Avengers Assemble                   | 2012 | 22:55
 7 | Iron Man 3                          | 2013 | 14:05
 8 | Thor: The Dark World                | 2013 | 20:40
10 | Captain America: The Winter Soldier | 2014 | 15:30
11 | Guardians of the Galaxy             | 2014 | 14:25
12 | Avengers: Age of Ultron             | 2015 | 12:45
13 | Ant-Man                             | 2015 | 23:05
14 | Captain America: Civil War          | 2016 | 17:40
15 | Doctor Strange                      | 2016 | 21:45
16 | Guardians of the Galaxy 2           | 2017 | 21:45
17 | Spider-Man: Homecoming              | 2017 | 12:25
18 | Thor: Ragnarok                      | 2017 | 23:20
19 | Black Panther                       | 2018 | 15:05
20 | Avengers: Infinity War              | 2018 | 00:00
(19 rows)
UPDATE movies SET show_time = 16.25
WHERE title = 'Guardians of the Galaxy 2';
id |                title                | year | show_time
----+-------------------------------------+------+-----------
 1 | Iron Man                            | 2008 | 17:55
 2 | The Incredible Hulk                 | 2008 | 21:40
 3 | Iron Man 2                          | 2010 | 21:15
 4 | Thor                                | 2011 | 18:30
 5 | Captain America: The First Avenger  | 2011 | 12:00
 6 | Avengers Assemble                   | 2012 | 22:55
 7 | Iron Man 3                          | 2013 | 14:05
 8 | Thor: The Dark World                | 2013 | 20:40
10 | Captain America: The Winter Soldier | 2014 | 15:30
11 | Guardians of the Galaxy             | 2014 | 14:25
12 | Avengers: Age of Ultron             | 2015 | 12:45
13 | Ant-Man                             | 2015 | 23:05
14 | Captain America: Civil War          | 2016 | 17:40
15 | Doctor Strange                      | 2016 | 21:45
17 | Spider-Man: Homecoming              | 2017 | 12:25
18 | Thor: Ragnarok                      | 2017 | 23:20
19 | Black Panther                       | 2018 | 15:05
20 | Avengers: Infinity War              | 2018 | 00:00
16 | Guardians of the Galaxy 2           | 2017 | 16.25
(19 rows)


DELETE FROM people WHERE id IN (9, 10);
SELECT * FROM people;

id |      name
----+-----------------
 1 | Rabah   Meliani
 2 | Robert Baker
 3 | Louise Meney
 4 | Stewart Cowan
 6 | Alex McIntosh
 7 | Steven McAndrew
 8 | Michael Allan
(7 rows)
