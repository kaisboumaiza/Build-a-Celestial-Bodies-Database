-- Create the database
CREATE DATABASE universe;

-- Connect to the database
\c universe

-- Create table: galaxy

CREATE TABLE galaxy (
    galaxy_id SERIAL PRIMARY KEY,
    name VARCHAR(30) UNIQUE NOT NULL,
    description TEXT,
    age_in_millions NUMERIC,
    has_life BOOLEAN,
    distance_from_earth INT
);


-- insert galaxy

INSERT INTO galaxy (name, description, age_in_millions, has_life, distance_from_earth)
VALUES 
    ('galaxy1', 'Our galaxy', 456879, true, 1000000),
    ('galaxy2', 'Neighbor galaxy', 587956, false, 780000),
    ('galaxy3', 'Pretty spiral', 47895, false, 965000),
    ('galaxy4', 'Hat-shaped', 58974, false, 330000),
    ('galaxy5', 'Small spiral', 79989, false, 5558700),
    ('galaxy6', 'Face-on spiral', 66798, false, 14250000);
    ('galaxy7', 'Small spiral', 689128, false, 14458890);

-- Create table : star

CREATE TABLE star (
    star_id SERIAL PRIMARY KEY,
    name VARCHAR(30) UNIQUE NOT NULL,
    galaxy_id INT REFERENCES galaxy(galaxy_id),
    temp INT,
    real_star BOOLEAN,
    size NUMERIC
);

-- insert star
INSERT INTO star (name, galaxy_id, temp, real_star, size)
VALUES
    ('Star1', 1, 600, false, 1.0),
    ('Star2', 1, 300, false, 2.0),
    ('Star3', 1, 780, false, 3.0);
    ('Star4', 1, 700, false, 3.0),
    ('Star5', 1, 800, false, 4.0),
    ('Star6', 1, 700, false, 5.0);
    ('Star7', 1, 780, false, 6.0);

-- Create table : Planet 

CREATE TABLE planet (
    planet_id SERIAL PRIMARY KEY,
    name VARCHAR(30) UNIQUE NOT NULL,
    star_id INT REFERENCES star(star_id),
    exist BOOLEAN,
    big BOOLEAN,
    age NUMERIC
);

-- insert planet

INSERT INTO planet (name, star_id, exist, big, age)
VALUES
    ('Planet1', 1, true, true, 3678785),
    ('Planet2', 1, false, true, 6545587),
    ('Planet3', 1, false, true, 2257885),
    ('Planet4', 1, false, false, 4377833),
    ('Planet5', 1, false, false, 107594.0),
    ('Planet6', 1, false, true, 88888.0),
    ('Planet7', 1, false, false, 60190.5),
    ('Planet8', 1, false, false, 30687),
    ('Planet9', 3, true, true, 117778),
    ('Planet10', 5, true, true, 2908877.5),
    ('Planet11', 2, false, false, 345555.5),
    ('Planet12', 4, true, true, 67989.1);

-- create table : moon

CREATE TABLE moon (
    moon_id SERIAL PRIMARY KEY,
    name VARCHAR(30) UNIQUE NOT NULL,
    planet_id INT REFERENCES planet(planet_id),
    years INT,
    water BOOLEAN,
    size NUMERIC
);

-- insert moon

INSERT INTO moon (name, planet_id, years, water, size)
VALUES
    ('Moon1', 1, NULL, false, 1737847),
    ('Moon2', 2, 1877, false, 11784),
    ('Moon3', 2, 1877, false, 679984),
    ('Moon4', 4, 1610, false, 1845621),
    ('Moon5', 4, 1610, true, 1548960),
    ('Moon6', 4, 1610, true, 2634564),
    ('Moon7', 4, 1610, true, 241450),
    ('Moon8', 5, 1655, true, 798789),
    ('Moon9', 5, 1672, false, 763789),
    ('Moon10', 5, 1671, false, 73845),
    ('Moon11', 5, 1684, false, 561456),
    ('Moon12', 5, 1694, false, 53781),
    ('Moon13', 5, 1789, true, 27852),
    ('Moon14', 5, 1789, false, 19788),
    ('Moon15', 7, 1846, true, 135453),
    ('Moon16', 7, 1989, false, 21780),
    ('Moon17', 7, 1949, false, 17870),
    ('Moon18', 8, 1978, false, 60896),
    ('Moon19', 8, 2005, false, 23445),
    ('Moon20', 8, 2005, false, 300789);

-- create table : univer
CREATE TABLE  univer (
    univer_id SERIAL PRIMARY KEY,
    name VARCHAR(30) UNIQUE NOT NULL,
    size NUMERIC,
    fake_or_not BOOLEAN,
    numbers INT
);

-- insert univer
INSERT INTO univer (name, size, fake_or_not, numbers)
VALUES
    ('univer1', 2939, false, 6478),
    ('univer2', 7525, false, 5658),
    ('univer3', 6512, false, 5410),
    ('univer4', 8979, true, 7863);