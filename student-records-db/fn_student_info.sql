USE studensrecords;
CREATE FUNCTION student_info(student_id INT) RETURNS VARCHAR(50) DETERMINISTIC
BEGIN
DECLARE info VARCHAR(50);
SELECT CONCAT_WS(' - ',S.FullName, D.Title) INTO info
FROM student S INNER JOIN department D ON S.DepartmentId = D.Id
WHERE S.Id = student_id;
RETURN info;
END;