## Part 1: Test it with SQL
SELECT column_name, data_type FROM information_schema.columns WHERE table_name = 'job';
id int (primary key), employer_name VARCHAR, employer_id int,

## Part 2: Test it with SQL
SELECT name FROM employer WHERE location="St. Louis"; -- NOTE: only able to do this from the employer table at this point in the project.

## Part 3: Test it with SQL
DROP TABLE job;

## Part 4: Test it with SQL
SELECT DISTINCT skill.name, skill.description FROM job
	JOIN job_skills ON job.id = job_skills.jobs_id
		JOIN skill ON skill.id = job_skills.skills_id
			ORDER BY name ASC;

SELECT name, description FROM skill
    LEFT JOIN job_skills ON skill.id = job_skills.skills_id
    WHERE job_skills.jobs_id IS NOT NULL
    ORDER BY skill.name ASC;