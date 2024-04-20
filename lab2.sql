use university;

SELECT DISTINCT s.ID, s.name
FROM Student s
JOIN takes t ON s.ID = t.id
JOIN Course c ON t.course_id = c.course_id
WHERE c.dept_name = "Comp. Sci.";

SELECT s.ID, s.name
FROM Student s
WHERE NOT EXISTS (
    SELECT *
    FROM takes t
    JOIN Course c ON t.course_id = c.course_id
    join section se on c.course_id = se.course_id
    WHERE t.id = s.ID AND se.year > 2017
);

select max(salary), dept_name from instructor group by dept_name;

SELECT MIN(maxi) AS minmax
FROM (SELECT MAX(salary) AS maxi FROM instructor GROUP BY dept_name) AS max_salaries;
