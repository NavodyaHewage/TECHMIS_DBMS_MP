DELIMITER //

CREATE PROCEDURE LectureAssignCourse (
    IN p_Lec_ID VARCHAR(7),      -- Parameter for Lecturer ID
    IN p_Course_ID VARCHAR(7)    -- Parameter for Course ID
)
BEGIN
    -- Insert the lecturer and course assignment into the lecturer_course table
    INSERT INTO lecturer_course (Lec_ID, Course_ID)
    VALUES (p_Lec_ID, p_Course_ID)
    ON DUPLICATE KEY UPDATE Lec_ID = Lec_ID;  -- Prevents insertion of duplicate records
END //

DELIMITER ;


CALL LectureAssignCourse('LEC0001', 'ICT1242');


DELIMITER //

CREATE PROCEDURE StudentRegistrationSubject (
    IN p_Student_Id VARCHAR(7),     -- Parameter for Student ID
    IN p_Course_ID VARCHAR(7),       -- Parameter for Course ID
    IN p_Type ENUM('Repeat', 'Proper') -- Parameter for Type
)
BEGIN
    -- Insert the student and course registration into the student_course table
    INSERT INTO student_course (Student_Id, Course_ID, Type)
    VALUES (p_Student_Id, p_Course_ID, p_Type)
    ON DUPLICATE KEY UPDATE Type = p_Type;  -- Prevents insertion of duplicate records
END //

DELIMITER ;


CALL StudentRegistrationSubject('TG00005', 'ICT1242', 'Repeat');



DELIMITER //

CREATE PROCEDURE UpdateTotalGPA (
    IN p_Reg_no VARCHAR(7)  -- Input parameter for Student Registration Number
)
BEGIN
    DECLARE current_gpa DECIMAL(4,2);
    DECLARE total_sgpa DECIMAL(4,2);
    DECLARE semester_count INT;

    -- Get the current CGPA from the student table
    SELECT CGPA INTO current_gpa
    FROM Student
    WHERE Reg_no = p_Reg_no;

    -- Calculate the total SGPA for the student from the student_semester table
    SELECT SUM(SGPA) INTO total_sgpa
    FROM student_semester
    WHERE Student_Id = p_Reg_no;

    -- Count the number of semesters the student has entries for in the student_semester table
    SELECT COUNT(*) INTO semester_count
    FROM student_semester
    WHERE Student_Id = p_Reg_no;

    -- Debugging output
    SELECT current_gpa AS Current_GPA, total_sgpa AS Total_SGPA, semester_count AS Semester_Count;

    -- Update the CGPA in the student table using the formula
    IF semester_count > 0 THEN
        UPDATE Student
        SET CGPA = (IFNULL(current_gpa, 0) + IFNULL(total_sgpa, 0)) / (semester_count)  -- +1 to account for the new semester
        WHERE Reg_no = p_Reg_no;
    END IF;

END //

DELIMITER ;


CALL UpdateTotalGPA('TG00016');
