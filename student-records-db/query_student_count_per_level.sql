USE StudentsRecords;
SELECT COUNT(S.Id) AS StudentCount, S.Level, D.Title AS DepartmentTitle FROM Student S
INNER JOIN Department D ON D.Id = S.DepartmentId
GROUP BY S.Level, D.Title;