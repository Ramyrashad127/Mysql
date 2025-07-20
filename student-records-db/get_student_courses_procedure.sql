USE studentsrecords;
CREATE PROCEDURE get_student_courses(IN student_id INT)
BEGIN
SELECT C.Title, E.Semester, E.Year FROM student S INNER JOIN enrollment E ON S.Id = E.studentId 
INNER JOIN course C ON C.Code = E.CourseCode
WHERE S.Id = student_id;
END;