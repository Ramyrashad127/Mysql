USE StudentsRecords;
SELECT S.FullName FROM Student S INNER JOIN Department D on S.DepartmentId = D.Id
WHERE D.Title = 'Computer Science';