USE studentsrecords;

CREATE INDEX idx_student_department_id ON Student(DepartmentId);
CREATE INDEX idx_department_title ON Department(Title);

SELECT S.FullName, D.Title
FROM Student S
JOIN Department D ON S.DepartmentId = D.Id
WHERE D.Title = 'Computer Science';