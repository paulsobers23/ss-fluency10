-- Create a database, called `animals`.

CREATE TABLE wild(
id SERIAL,
type varchar(20),
habit varchar(20),
prey varchar(20)
);

ALTER TABLE wild ADD COLUMN name varchar(20);

-- Insert at least 5 wild animals inside the `wild` table. Make sure that there's a few different types of animals!

INSERT INTO wild (type,habit,prey,name)
VALUES ('fish','ocean','dolphin','shark'),
('mammal','jungle','leaves','giraffe'),
('feline','jungle','zebra','puma'),
('birds','jungle','tutrle','eagle'),
('feline','mountains','mice','mountain lion');

-- Now, create another table, `domestic`, that takes in an ID that's recurring, the type_id based on its family's type, its lifespan, and what it likes to eat. The type_id should be a FOREIGN KEY.

CREATE TABLE domestic(
id SERIAL PRIMARY KEY,
type_id integer REFERENCES wild(id),
life_span integer,
food varchar(20)
);

ALTER TABLE domestic ADD COLUMN name varchar(20);

-- Insert at least 5 domestic animals inside the `domestic` table.

INSERT INTO domestic (type_id, life_span,food,name)
VALUES (1,20,'dear','mountain lion'),
(2,18,'chicken','puma'),
(3,30,'mice','eagle'),
(4,25,'brocolli','fish'),
(5, 22, 'idk','giraffe') ;

--  Hold up - let's alter one slight thing in our `domestic` table! We want to make sure that everyone knows it's mandatory to put in a type of animal. Set that parameter to include the NOT NULL constraint.

ALTER TABLE domestic ALTER COLUMN name SET NOT NULL ;

-- Write a query that returns the type of animal that has the longest name
SELECT name FROM domestic ORDER BY length(name) DESC LIMIT 1;

-- Then write a query that gets the second animal from your table.
SELECT name FROM domestic WHERE id = 2 ;

-- Now, join the two tables by type! We want to display the animal type, as well as what they like to eat. Make sure the ID's match so you can successfully join the two tables together!
SELECT wild.type, wild.prey,wild.name, domestic.food , domestic.name
FROM wild JOIN domestic
ON wild.id = domestic.type_id;


-- Let's join them together again, but this time, let's group the types together so it be more organized.
SELECT wild.type,wild.prey, wild.name, domestic.food , domestic.name
FROM wild JOIN domestic
ON wild.id = domestic.type_id
ORDER BY wild.type