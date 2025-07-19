USE studentsrecords;
CREATE VIEW DepartmentSummary AS
SELECT D.Title, COUNT(DISTINCT I.Id) InstructorCount, COUNT(DISTINCT S.Id) AS StudentsCount FROM
department D LEFT JOIN instructor I ON I.DepartmentId = D.Id LEFT JOIN student S ON S.DepartmentId = D.Id
GROUP BY D.Title;