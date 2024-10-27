CREATE TABLE Marks (
    Stu_ID VARCHAR(7),
    Sub_ID VARCHAR(7),
    Assignment DECIMAL(5, 2),
    Quiz DECIMAL(5, 2),
    Total_marks DECIMAL(5, 2),
    GPA DECIMAL(3, 2),
    Grade VARCHAR(2),
    Eligibility BOOLEAN,
    End_Prac DECIMAL(5, 2),
    End_Theo DECIMAL(5, 2),
    PRIMARY KEY (Stu_ID, Sub_ID),
    FOREIGN KEY (Stu_ID) REFERENCES Student(Reg_no),
    FOREIGN KEY (Sub_ID) REFERENCES Course(Course_Code)
);


CREATE TABLE Student_Course (
    Student_Id VARCHAR(7),
    Course_ID VARCHAR(7),
    Type ENUM('Repeat','Proper'),
    PRIMARY KEY (Student_Id, Course_ID),
    FOREIGN KEY (Student_Id) REFERENCES Student(Reg_no),
    FOREIGN KEY (Course_ID) REFERENCES Course(Course_Code)
);


CREATE TABLE Lecturer_Course (
    Lec_ID VARCHAR(7),
    Course_ID VARCHAR(7),
    PRIMARY KEY (Lec_ID, Course_ID),
    FOREIGN KEY (Lec_ID) REFERENCES Lecturer(Reg_no),
    FOREIGN KEY (Course_ID) REFERENCES Course(Course_Code)
);
