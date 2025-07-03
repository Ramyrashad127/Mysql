UPDATE StudentsRecords;
SELECT I.FullName, I.Email, C.Title AS CourseTitle 
FROM instructor I INNER JOIN Course C ON I.Id = C.InstructorId;