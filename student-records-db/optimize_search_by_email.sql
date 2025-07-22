USE studentsrecords;

CREATE INDEX find_by_email ON student(email);

SELECT Id, FullName FROM Student
WHERE Email = 'ahmed@example.com';