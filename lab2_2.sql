use university;

insert into course values("CS-001", "WEEKLY SEMINAR", "Comp. Sci.", 2);

insert into section (course_id, sec_id, semester, year) values ("CS-001", "1", "Fall", 2017);

INSERT INTO takes (id, course_id, sec_id, semester, year)
SELECT id, 'CS-001', '1', 'Fall', 2017
FROM student
WHERE dept_name = 'Comp. Sci.';

delete from takes where course_id = "CS-001" and id = 12345;

DELETE FROM takes
WHERE course_id IN (
    SELECT course_id
    FROM course
    WHERE title LIKE '%geology%'
);

