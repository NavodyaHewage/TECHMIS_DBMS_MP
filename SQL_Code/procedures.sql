DELIMITER //

CREATE PROCEDURE InsertCAAndUpdateEligibility (
    IN student_id VARCHAR(7),
    IN subject_id VARCHAR(7),
    IN assignment_marks DECIMAL(5,2),
    IN quiz_marks DECIMAL(5,2)
)
BEGIN
    DECLARE total_ca DECIMAL(5,2);
    DECLARE end_prac DECIMAL(5,2);
    DECLARE end_theo DECIMAL(5,2);

    -- Calculate total CA marks
    SET total_ca = assignment_marks + quiz_marks;

    -- Insert CA marks into Marks table
    INSERT INTO Marks (Stu_ID, Sub_ID, Assignment, Quiz, Total_marks, Eligibility, End_Prac, End_Theo)
    VALUES (
        student_id,
        subject_id,
        assignment_marks,
        quiz_marks,
        total_ca,
        total_ca >= 20,
        NULL,
        NULL 
    );

    -- Optionally, you can also update the total marks and eligibility if the record already exists
    UPDATE Marks
    SET Eligibility = total_ca >= 20
    WHERE Stu_ID = student_id AND Sub_ID = subject_id;

END //

DELIMITER ;




CALL InsertCAAndUpdateEligibility('TG00021', 'ICT1213', 20, 15); //Student_Id , Subject_Id , Assingment Marks ,  quiz marks




DELIMITER //

CREATE PROCEDURE UpdateMarksAndCalculateGrade (
    IN student_id VARCHAR(7),
    IN subject_id VARCHAR(7),
    IN end_prac DECIMAL(5,2),
    IN end_theo DECIMAL(5,2)
)
BEGIN
    DECLARE total_marks DECIMAL(5,2);
    DECLARE grade VARCHAR(2);
    DECLARE gpa DECIMAL(3, 2);
    DECLARE subject_type VARCHAR(2);

    -- Update End_Prac and End_Theo
    UPDATE Marks
    SET End_Prac = end_prac,
        End_Theo = end_theo
    WHERE Stu_ID = student_id AND Sub_ID = subject_id;

    -- Get the subject type
    SELECT Type INTO subject_type
    FROM Course
    WHERE Course_Code = subject_id;

    -- Calculate Total Marks based on subject type
    SELECT CASE
        WHEN subject_type = 'TP' THEN
            (Assignment + Quiz + End_Prac + End_Theo)
        WHEN subject_type = 'P' THEN
            (Assignment + Quiz + End_Prac)
        WHEN subject_type = 'T' THEN
            (Assignment + Quiz + End_Theo)
        ELSE
            0 -- Default case
    END INTO total_marks
    FROM Marks
    WHERE Stu_ID = student_id AND Sub_ID = subject_id;

    -- Update Total_marks
    UPDATE Marks
    SET Total_marks = total_marks
    WHERE Stu_ID = student_id AND Sub_ID = subject_id;

    -- Determine Grade and GPA based on Total Marks
    SET grade = CASE
        WHEN total_marks >= 80 THEN 'A+' 
        WHEN total_marks >= 75 THEN 'A'
        WHEN total_marks >= 70 THEN 'A-'
        WHEN total_marks >= 65 THEN 'B+'
        WHEN total_marks >= 60 THEN 'B'
        WHEN total_marks >= 55 THEN 'B-'
        WHEN total_marks >= 50 THEN 'C+'
        WHEN total_marks >= 45 THEN 'C'
        WHEN total_marks >= 40 THEN 'C-'
        WHEN total_marks >= 35 THEN 'D+'
        WHEN total_marks >= 30 THEN 'D'
        ELSE 'E'
    END;

    SET gpa = CASE
        WHEN grade = 'A+' THEN 4.0
        WHEN grade = 'A'  THEN 4.0
        WHEN grade = 'A-' THEN 3.7
        WHEN grade = 'B+' THEN 3.3
        WHEN grade = 'B'  THEN 3.0
        WHEN grade = 'B-' THEN 2.7
        WHEN grade = 'C+' THEN 2.3
        WHEN grade = 'C'  THEN 2.0
        WHEN grade = 'C-' THEN 1.7
        WHEN grade = 'D+' THEN 1.3
        WHEN grade = 'D'  THEN 1.0
        ELSE 0.0
    END;

    -- Update Grade and GPA
    UPDATE Marks
    SET Grade = grade,
        GPA = gpa
    WHERE Stu_ID = student_id AND Sub_ID = subject_id;

END //

DELIMITER ;

CALL UpdateMarksAndCalculateGrade('TG00021', 'ICT1223', 20, 40); -- Example call



DELIMITER //

CREATE PROCEDURE CalculateSGPA (
    IN p_Stu_ID VARCHAR(7),
    IN p_Sem_Id VARCHAR(4)
)
BEGIN
    DECLARE total_gpa DECIMAL(10,2) DEFAULT 0;
    DECLARE total_credits INT DEFAULT 0;
    DECLARE sgpa DECIMAL(5,2);

    -- Calculate total GPA for the student in the given semester
    SELECT SUM(m.GPA * c.Credit) INTO total_gpa  -- GPA weighted by credits
    FROM Marks m
    JOIN Course c ON m.Sub_ID = c.Course_Code
    WHERE m.Stu_ID = p_Stu_ID AND c.Semester_Id = p_Sem_Id;

    -- Calculate total credits for the student in the given semester
    SELECT SUM(c.Credit) INTO total_credits
    FROM Course c
    WHERE c.Semester_Id = p_Sem_Id AND c.Course_Code IN (
        SELECT m.Sub_ID FROM Marks m WHERE m.Stu_ID = p_Stu_ID
    );

    -- Check to avoid division by zero
    IF total_credits > 0 THEN
        SET sgpa = total_gpa / total_credits;  -- Calculate SGPA
    ELSE
        SET sgpa = 0;  -- or handle as needed
    END IF;

    -- Insert the calculated SGPA into the student_semester table
    INSERT INTO student_semester (Stu_ID, Sem_Id, sgpa)
    VALUES (p_Stu_ID, p_Sem_Id, sgpa)
    ON DUPLICATE KEY UPDATE sgpa = sgpa;  -- Update if already exists

END //

