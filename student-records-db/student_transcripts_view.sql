USE StudentsRecords;
CREATE VIEW StudentTranscripts AS
SELECT S.FullName, C.Title, E.Semester, E.Year, E.Grade FROM student S INNER JOIN
enrollment E ON E.StudentId = S.Id INNER JOIN course C ON C.Code = E.CourseCode;