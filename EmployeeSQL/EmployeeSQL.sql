DROP TABLE People;

CREATE TABLE People(
namesubid SERIAL PRIMARY KEY,
namesub VARCHAR(30) NOT NULL,
has_pet BOOLEAN DEFAULT FALSE,
pet_type VARCHAR(10)NOT NULL,
pet_name VARCHAR(30),
pet_age INT,
TimesOfRun DATE DEFAULT NOW()
);

INSERT INTO People(namesub, has_pet, pet_type, pet_name, pet_age, TimesOfRun)
VALUES('Jacob', 'true',  'dog', 'Misty', '10', '2020-01-09'),
('Ahmed', 'true',  'cat', 'Stinky', '5', '2020-01-09'),
('James', 'true',  'turtle', 'Yikes', '1', '2020-01-09'),
('Sally', 'true',  'dog', 'GOODBOY', '5', '2020-01-09');

SELECT *
FROM People

UPDATE People
set TimesOfRun = '2020-12-01'
WHERE namesubid = 2
--WHERE pet_type = 'dog'
	--AND namesub = 'Sally'
	
DELETE FROM People
WHERE namesubid = 3;

