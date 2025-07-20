USE studentsrecords;
CREATE PROCEDURE calculate_student_gpa(
    IN student_id INT,
    IN year_input INT,
    IN semester_input VARCHAR(1),
    OUT gpa DECIMAL(5,2))
BEGIN
    SELECT ROUND(SUM(E.Grade)/(100*COUNT(E.GRADE)),2) INTO gpa
    FROM student S INNER JOIN enrollment E ON S.Id = E.studentId
    WHERE E.Year = year_input AND E.Semester = semester_input;
END;