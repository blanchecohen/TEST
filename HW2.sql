drop table Countries;
drop table Borders;

CREATE TABLE Countries (
	countryName VARCHAR(20),
	latitude VARCHAR(8),
	longitude VARCHAR(8), 
	area INTEGER,
	population INTEGER, 
	gdp REAL,	-- in billions
	gdpYear INTEGER
);

-- Insert data for each country
-- GDP is in Billions

INSERT INTO Countries  
VALUES( 'Germany',     '51 00 N',  '9 00 E', 357022, 80594017, 3979.0, 2016);

INSERT INTO Countries  (countryName, gdpYear)
	VALUES( 'Spain',     2016);


INSERT INTO Countries  VALUES( 'Netherlands', '52 30 N',  '5 45 E',  41543, 17084719,  870.8, 2016);
INSERT INTO Countries  VALUES( 'Belgium',     '50 50 N',  '4 00 E',  30528, 11491346,  508.6, 2016);
INSERT INTO Countries  VALUES( 'France',      '46 00 N',  '2 00 S', 643801, 62814233, 2699.0, 2016);
INSERT INTO Countries  VALUES( 'Switzerland', '47 00 N',  '8 00 E',  41277,  8236303,  496.3, 2016);
INSERT INTO Countries  VALUES( 'Austria',     '47 20 N', '13 20 E',  83871,  8754413,  416.6, 2016);
INSERT INTO Countries  VALUES( 'Poland',      '52 00 N', '20 00 E', 312685, 38476269, 1052.0, 2017);
INSERT INTO Countries  VALUES( 'Czechia',     '49 45 N', '15 30 E',  78867, 10674723,  350.0, 2016);
INSERT INTO Countries  VALUES( 'Denmark',     '56 00 N', '10 00 E',  43094,  5605948,  264.8, 2016);
INSERT INTO Countries  VALUES( 'Luxembourg',  '49 45 N',  '6 10 E',   2586,   594130,  58.74, 2016);

-- Borders table and data
CREATE TABLE Borders (
	countryName VARCHAR(20),
	borderCountries VARCHAR(20)
);

-- Insert list of countries that border Germany
INSERT INTO Borders  VALUES( 'Germany',  'Netherlands');
INSERT INTO Borders  VALUES( 'Germany',  'Belgium');
INSERT INTO Borders  VALUES( 'Germany',  'France');
INSERT INTO Borders  VALUES( 'Germany',  'Switzerland');
INSERT INTO Borders  VALUES( 'Germany',  'Austria');
INSERT INTO Borders  VALUES( 'Germany',  'Poland');
INSERT INTO Borders  VALUES( 'Germany',  'Czechia');
INSERT INTO Borders  VALUES( 'Germany',  'Denmark');
INSERT INTO Borders  VALUES( 'Germany',  'Luxembourg');

INSERT INTO Borders  VALUES( 'Netherlands',  'Germany');
INSERT INTO Borders  VALUES( 'Belgium',      'Germany');
INSERT INTO Borders  VALUES( 'France',       'Germany');
INSERT INTO Borders  VALUES( 'France',       'Germany');
INSERT INTO Borders  VALUES( 'Switzerland',  'Germany');
INSERT INTO Borders  VALUES( 'Austria',      'Germany');
INSERT INTO Borders  VALUES( 'Poland',       'Germany');
INSERT INTO Borders  VALUES( 'Czechia',      'Germany');
INSERT INTO Borders  VALUES( 'Denmark',      'Germany');
INSERT INTO Borders  VALUES( 'Luxembourg',   'Germany');

-- Now for the questions
-- 4C - all the countries that border Germany

SELECT borderCountries 
FROM Borders
WHERE countryName = 'Germany';

-- 4D Population over 35 million
SELECT  Countries.countryName 
FROM Countries
WHERE population > 35000000;
/*
-- 4E Border Germany & population over 35 million
SELECT Countries.countryName, Borders.borderCountries
FROM Countries, Borders
WHERE (Countries.population > 35000000) AND (Borders.countryName = 'Germany');
*/