DROP TABLE IF EXISTS galaxy CASCADE;
DROP TABLE IF EXISTS star CASCADE;
DROP TABLE IF EXISTS planet CASCADE;
DROP TABLE IF EXISTS moon CASCADE;

CREATE TABLE galaxy(galaxy_id SERIAL PRIMARY KEY,
                     name VARCHAR(30) UNIQUE,
                     description TEXT,
                     age INT NOT NULL,
                     distance_in_au INT,
                     probability_of_life NUMERIC(3,2),
                     is_spherical BOOLEAN NOT NULL 
                     );

CREATE TABLE star(star_id SERIAL PRIMARY KEY,
                     name VARCHAR(30) UNIQUE,
                     description TEXT,
                     age INT NOT NULL,
                     distance_in_au INT,
                     probability_of_life NUMERIC(3,2),
                     is_spherical BOOLEAN NOT NULL, 
                     galaxy_id int REFERENCES galaxy(galaxy_id) 
                     );

CREATE TABLE planet(planet_id SERIAL PRIMARY KEY,
                     name VARCHAR(30) UNIQUE,
                     description TEXT,
                     age INT NOT NULL,
                     distance_in_au INT,
                     probability_of_life NUMERIC(3,2),
                     is_spherical BOOLEAN NOT NULL, 
                     star_id int REFERENCES star(star_id)
                     );

CREATE TABLE moon(moon_id SERIAL PRIMARY KEY,
                     name VARCHAR(30) UNIQUE,
                     description TEXT,
                     age INT NOT NULL,
                     distance_in_au INT,
                     probability_of_life NUMERIC(3,2),
                     is_spherical BOOLEAN NOT NULL, 
                     planet_id INT REFERENCES planet(planet_id)
                     );


INSERT INTO galaxy ("name",description,age,distance_in_au,probability_of_life,is_spherical) VALUES
	 ('grayskull','Cold and Wet',5,93000000,0.01,true),
	 ('Hamdo','Coomer',23,1000000,0.23,false),
	 ('Aquanosa','Contains large amounts of frozen water.',900,995000000,0.64,true),
	 ('Noman','Void',80000,45000000,0.01,false),
	 ('Jimbo','Running out of names',800,65000000,0.04,false),
	 ('Cletus','Yeehaw',10,77000000,0.87,true);INSERT INTO public.moon ("name",description,age,distance_in_au,probability_of_life,is_spherical,planet_id) VALUES
	 ('Luna','Moon 1 of 20',4,999888,0.00,true,13),
	 ('Lou','Moon 2 of 20',4,999888,0.00,true,13),
	 ('Moonie','Moon 3 of 20',4,999888,0.00,true,13),
	 ('MoonieB','Moon 4 of 20',4,999888,0.00,true,12),
	 ('Idk','Moon 5 of 20',4,999888,0.00,true,11),
	 ('lol','Moon 6 of 20',4,999888,0.00,true,11),
	 ('JK','Moon 7 of 20',4,999888,0.00,true,11),
	 ('lel','Moon 8 of 20',4,999888,0.00,true,11),
	 ('rolf','Moon 9 of 20',4,999888,0.00,true,12),
	 ('WowXD','Moon 10 of 20',4,999888,0.00,true,5);
INSERT INTO planet ("name",description,age,distance_in_au,probability_of_life,is_spherical,star_id) VALUES
	 ('Filep','Planet 10 of 12',38,999998888,0.30,true,4),
	 ('Bobit','Planet 11 of 12',75,999998888,0.57,true,5),
	 ('Heffer','Planet 12 of 12',4,999888,0.23,true,3);INSERT INTO public.star ("name",description,age,distance_in_au,probability_of_life,is_spherical,galaxy_id) VALUES
	 ('solas','Dead star',9999,999999999,0.00,true,8),
	 ('brighteye','Aged Star',9999,999999999,0.00,true,1),
	 ('stellio','Angelique idea',9989,999998999,0.00,true,3),
	 ('Agatha','Zach idea',9989,999998999,0.00,true,7),
	 ('Luma','My Idea',9989,999998999,0.00,true,5),
	 ('Gooby','Dead Star',9988,999998888,0.00,true,6);
INSERT INTO moon ("name",description,age,distance_in_au,probability_of_life,is_spherical,planet_id) VALUES
	 ('Cander','Moon 11 of 20',4,999888,0.00,true,6),
	 ('Cancer','Moon 12 of 20',4,999888,0.00,true,8),
	 ('Eww','Moon 13 of 20',4,999888,0.00,true,9),
	 ('EwwNo','Moon 14 of 20',4,999888,0.00,true,9),
	 ('EwwMaybe','Moon 15 of 20',4,999888,0.00,true,9),
	 ('EwwYes','Moon 16 of 20',4,999888,0.00,true,9),
	 ('Lenny','Moon 17 of 20',4,999888,0.00,true,7),
	 ('Larry','Moon 18 of 20',4,999888,0.00,true,7),
	 ('Lonk','Moon 19 of 20',4,999888,0.00,true,10),
	 ('The Moon','Moon 20 of 20',4,999888,0.00,true,3);INSERT INTO public.planet ("name",description,age,distance_in_au,probability_of_life,is_spherical,star_id) VALUES
	 ('Mauv','Planet 1 of 12',70,999998888,0.09,true,1),
	 ('Mobob','Planet 2 of 12',70,999998888,0.09,true,1),
	 ('Mbongo','Planet 3 of 12',70,999998888,0.09,true,1),
	 ('Zeffery','Planet 4 of 12',90,999998888,0.02,true,2),
	 ('Zam','Planet 5 of 12',98,999998888,0.02,true,2),
	 ('Zet','Planet 5 of 12',98,999998888,0.00,true,2),
	 ('Jiel','Planet 6 of 12',98,999998888,0.00,true,3),
	 ('Jam','Planet 7 of 12',78,999998888,0.00,true,3),
	 ('Faff','Planet 8 of 12',78,999998888,0.00,true,4),
	 ('Fumph','Planet 9 of 12',78,999998888,0.00,true,4);
