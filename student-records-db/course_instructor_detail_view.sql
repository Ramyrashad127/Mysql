USE studensrecords;
CREATE VIEW CourseInstructorDetails AS
SELECT C.Title Course_title, C.CreditHours, D.Title department_title, I.FullName FROM
course C INNER JOIN department D ON C.DepartmentId = D.Id INNER JOIN instructor I ON I.Id = C.InstructorId;