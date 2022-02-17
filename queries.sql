1. create animals table
CREATE TABLE "animals" (
	"id" INTEGER,
	"species" TEXT,
	"name" TEXT NOT NULL,
	"age" INTEGER,
	"was_fed" INTEGER,
	"favorite_food" TEXT,
	PRIMARY KEY("id")
);

2. insert data to our table
INSERT INTO "animals"
(species, name, age, was_fed, favorite_food)
VALUES
("Critically Endangered", "African forest elephant", "40", "0", "grasses");

3.1. update ages of animals
UPDATE animals SET age="8"
WHERE species = "Least Concern";

3.2. update fed of animals
UPDATE animals SET was_fed="1"
WHERE favorite_food = "blue sheep";

4. remove animals
DELETE FROM animals WHERE name = "Bluefin Tuna";

5. remove column favorite_food
ALTER TABLE animals DROP COLUMN favorite_food

6.1. add origin column to the animals
ALTER TABLE animals 
ADD COLUMN origin TEXT;

6.2. add city for couple animals
UPDATE animals SET origin = " South Asia"
WHERE name = "Snow Leopard";

Challange
feed all animals with one command
UPDATE animals SET was_fed = 1;