CREATE TABLE Attendance (
    Attendance_ID VARCHAR(7) PRIMARY KEY,
    Stu_ID VARCHAR(7),
    Course_ID VARCHAR(7),
    TO_Id VARCHAR(7),
    Date DATE,
    Status VARCHAR(10),
    FOREIGN KEY (Course_ID) REFERENCES Course(Course_Code),
    FOREIGN KEY (TO_Id) REFERENCES Technical_Officer(Reg_no),
    FOREIGN KEY (Stu_Id) REFERENCES Student(Reg_no)
);

CREATE TABLE Medical (
    Medical_Id INT AUTO_INCREMENT PRIMARY KEY,
    Attendance_ID VARCHAR(7),
    Date_Range VARCHAR(100),
    TO_Id VARCHAR(7),
    Reason TEXT,
    FOREIGN KEY (TO_Id) REFERENCES Technical_Officer(Reg_no),
    FOREIGN KEY (Attendance_ID) REFERENCES Attendance(Attendance_ID)
);