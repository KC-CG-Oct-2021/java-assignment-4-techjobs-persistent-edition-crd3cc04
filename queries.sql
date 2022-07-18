-- Part 1: Test it with SQL
--List the columns and their data types in the table as a SQL comment
SELECT *
FROM job;

-- Part 2: Test it with SQL
--list the names of the employers in St. Louis City
SELECT name
FROM employer
WHERE location = "St. Louis City";

-- Part 3: Test it with SQL
-- remove the jobs table from MySQL
DROP TABLE job;

-- Part 4: Test it with SQL
-- return the names of all skill that are attached to jobs in alphabetical order
SELECT *
FROM skill
INNER JOIN job_skills ON skill.id = job_skills.skills_id
WHERE job_skills.jobs_id IS NOT NULL
ORDER BY name ASC;