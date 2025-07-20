USE studentsrecords;
CREATE FUNCTION check_passed(
    student_id INT,
    semester VARCHAR(1),
    year INT
)
RETURNS VARCHAR(10)
DETERMINISTIC
BEGIN
DECLARE ans INT;
SELECT COUNT(E.Grade) INTO ans FROM enrollment E WHERE E.StudentId = student_id AND E.Grade < 60 AND E.Semester = semester AND E.Year = year;
RETURN (CASE WHEN ans = 0 THEN 'passed' ELSE 'not passed' END);
END;