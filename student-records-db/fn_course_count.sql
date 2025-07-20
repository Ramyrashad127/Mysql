USE studentsrecords;
CREATE FUNCTION Get_Course_Count_by_Student(
    student_id INT
) 
RETURNS INT 
DETERMINISTIC
BEGIN
    DECLARE ans INT;
    SELECT COUNT(E.CourseCode) INTO ans
    FROM enrollment E
    WHERE E.StudentId = student_id;
    RETURN ans;
END;