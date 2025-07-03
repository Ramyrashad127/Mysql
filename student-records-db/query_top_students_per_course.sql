USE StudentsRecords;
SELECT E.Grade, C.Title, S.FullName FROM (Enrollment E
INNER JOIN Student S ON E.StudentId = S.Id) INNER JOIN Course C ON C.Code = E.CourseCode
WHERE E.Grade = (SELECT MAX(E2.Grade) FROM Enrollment E2 WHERE E2.CourseCode = C.Code);