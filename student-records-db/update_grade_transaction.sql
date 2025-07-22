CREATE PROCEDURE SafeGradeUpdate(IN stid INT, IN cs INT)
BEGIN
    DECLARE ch INT;

    START TRANSACTION;

    UPDATE Enrollment
    SET Grade = Grade + 20
    WHERE StudentId = stid AND CourseCode = cs;

    SELECT Grade INTO ch
    FROM Enrollment
    WHERE StudentId = stid AND CourseCode = cs;

    IF ch > 100 THEN
        ROLLBACK;
    ELSE
        COMMIT;
    END IF;
END;
