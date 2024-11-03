CREATE TABLE Semester (
    Sem_Id VARCHAR(4) PRIMARY KEY,
    Sem_Name VARCHAR(50)
);

CREATE TABLE Course (
    Course_Code VARCHAR(7) PRIMARY KEY,
    Course_Name VARCHAR(100),
    Credit INT,
    Type ENUM('T', 'P'),
    Description TEXT,
    Department_Id INT,
    Semester_Id VARCHAR(4),
    FOREIGN KEY (Department_Id) REFERENCES Department(Dep_Id),
    FOREIGN KEY (Semester_Id) REFERENCES Semester(Sem_Id)
);



CREATE TABLE TimeTable (
    Department_Id INT,
    Course_ID VARCHAR(7),
    Sem_Id VARCHAR(4),
    Lec_ID VARCHAR(7),
    Day ENUM('Mon', 'Tue', 'Wed', 'Thu', 'Fri'),
    Start_Time TIME,
    End_Time TIME,
    PRIMARY KEY (Department_Id, Sem_Id, Lec_ID, Day, Start_Time),
    FOREIGN KEY (Course_ID) REFERENCES Course(Course_Code),
    FOREIGN KEY (Department_Id) REFERENCES Department(Dep_Id),
    FOREIGN KEY (Lec_ID) REFERENCES Lecturer(Reg_no),
    FOREIGN KEY (Sem_Id) REFERENCES Semester(Sem_Id)
);


CREATE TABLE Student_Semester (
    Student_Id VARCHAR(7),
    Sem_Id VARCHAR(4),
    SGPA DECIMAL(4,2),
    PRIMARY KEY (Student_Id, Sem_Id),
    FOREIGN KEY (Student_Id) REFERENCES Student(Reg_no),
    FOREIGN KEY (Sem_Id) REFERENCES Semester(Sem_Id)
);
