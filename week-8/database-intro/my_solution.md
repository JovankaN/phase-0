Release 5:

1.
SELECT * FROM states;


2.
SELECT * FROM regions;


3.
SELECT state_name, population
FROM states;


4.
SELECT state_name, population
FROM states
ORDER BY population DESC;


5.
SELECT state_name
FROM states
WHERE region_id = 7;


6.
SELECT state_name, population_density
FROM states
WHERE population_density > 50
ORDER BY population_density ASC;


7.
SELECT state_name
FROM states
WHERE population BETWEEN 1000000 and 1500000;


8.
SELECT state_name, region_id
FROM states
ORDER BY region_id ASC;


9.
SELECT region_name
FROM regions
WHERE region_name LIKE '%Central';


10.
SELECT state_name, region_name
FROM regions
JOIN states
ON states.region_id = regions.id
ORDER BY region_id ASC;


 Release 6:

![Schema Snapshot](myschema.png)


REFLECT :
What are databases for?

What is a one-to-many relationship?
What is a primary key? What is a foreign key? How can you determine which is which?
How can you select information out of a SQL database? What are some general guidelines for that?