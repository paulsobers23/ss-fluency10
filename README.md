# Directions
For today's fluency, we're going to be doing a bunch of exercises for PostreSQL, to build that foundation and build up fluency in it. Practice these exercises wherever you have PostgreSQL, and in the file provided, type down the queries that solve the exercise! Here's the PostgreSQL documentation should you need it [https://www.postgresql.org/docs/12/index.html], as well as the Launch School book for any additional notes you need [https://launchschool.com/books/sql/read/introduction].

## Exercises
1. Create a database, called `animals`.

2. Go inside that database and create another table, `wild`, that takes in a recurring ID, the type of animal it is, where it lives, and what it preys on.

3. Insert at least 5 wild animals inside the `wild` table. Make sure that there's a few different types of animals!

4. Now, create another table, `domestic`, that takes in an ID that's recurring, the type_id based on its family's type, its lifespan, and what it likes to eat. The type_id should be a FOREIGN KEY.

5. Insert at least 5 domestic animals inside the `domestic` table.

6. Hold up - let's alter one slight thing in our `domestic` table! We want to make sure that everyone knows it's mandatory to put in a type of animal. Set that parameter to include the NOT NULL constraint.

7. Now you have two tables! (If you would like to check them, use the `\dt` command, or to view more info on a specific table, use the `\d (database)` command. Try them out!) Let's mess with the `domestic` table a bit. Write a query that returns the type of animal that has the longest type length. Then write a query that gets the second animal from your table.

8. Let's try to connect these tables together based on similar animal types. First, alter the ID's on both tables to include a PRIMARY KEY.

9. Now, join the two tables by type! We want to display the animal type, as well as what they like to eat. Make sure the ID's match so you can successfully join the two tables together!

10. Let's join them together again, but this time, let's group the types together so it be more organized.
