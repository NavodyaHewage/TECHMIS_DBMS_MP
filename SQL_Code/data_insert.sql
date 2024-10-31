INSERT INTO Department (Dep_Name) VALUES 
('ICT'), 
('BST'), 
('ET'),
('MDS');




INSERT INTO Technical_Officer (Reg_no, F_name, L_name, Email, DOB, Gender, Department_Id, Mobile) VALUES
('TO00001', 'Anna', 'Bell', 'anna.bell@university.com', '1987-06-12', 'F', 1, 771123456),
('TO00002', 'Ben', 'White', 'ben.white@university.com', '1983-07-15', 'M', 2, 772234567),
('TO00003', 'Chris', 'Black', 'chris.black@university.com', '1990-08-18', 'M', 3, 773345678),
('TO00004', 'Diana', 'Green', 'diana.green@university.com', '1985-09-20', 'F', 1, 774456789),
('TO00005', 'Edward', 'Gray', 'edward.gray@university.com', '1980-10-22', 'M', 2, 775567890);




INSERT INTO Student (Reg_no, F_name, L_name, Email, DOB, Batch, Gender, CGPA, Department_Id, Mobile) VALUES
('TG00001', 'John', 'Doe', 'john.doe@university.com', '2000-01-01', 'B1', 'M', 3.50, 1, 777123456),
('TG00002', 'Jane', 'Smith', 'jane.smith@university.com', '2000-02-02', 'B1', 'F', 3.70, 1, 772345678),
('TG00003', 'Alex', 'Johnson', 'alex.johnson@university.com', '2000-03-03', 'B1', 'M', 3.20, 1, 771234567),
('TG00004', 'Emily', 'Clark', 'emily.clark@university.com', '2000-04-04', 'B1', 'F', 3.80, 1, 775678901),
('TG00005', 'Michael', 'Williams', 'michael.williams@university.com', '2000-05-05', 'B1', 'M', 3.60, 1, 774567890),
('TG00006', 'Sarah', 'Brown', 'sarah.brown@university.com', '2000-06-06', 'B2', 'F', 3.90, 2, 773456789),
('TG00007', 'David', 'Jones', 'david.jones@university.com', '2000-07-07', 'B2', 'M', 3.25, 2, 777678901),
('TG00008', 'Laura', 'Garcia', 'laura.garcia@university.com', '2000-08-08', 'B2', 'F', 3.45, 2, 772789012),
('TG00009', 'Daniel', 'Martinez', 'daniel.martinez@university.com', '2000-09-09', 'B2', 'M', 3.55, 2, 771890123),
('TG00010', 'Olivia', 'Miller', 'olivia.miller@university.com', '2000-10-10', 'B2', 'F', 3.60, 2, 774901234),
('TG00011', 'Ethan', 'Taylor', 'ethan.taylor@university.com', '2000-11-11', 'B3', 'M', 3.80, 3, 773012345),
('TG00012', 'Sophia', 'Anderson', 'sophia.anderson@university.com', '2000-12-12', 'B3', 'F', 3.90, 3, 772123456),
('TG00013', 'William', 'Thomas', 'william.thomas@university.com', '2001-01-13', 'B3', 'M', 3.95, 3, 771234567),
('TG00014', 'Isabella', 'Moore', 'isabella.moore@university.com', '2001-02-14', 'B3', 'F', 3.65, 3, 777345678),
('TG00015', 'James', 'White', 'james.white@university.com', '2001-03-15', 'B3', 'M', 3.70, 3, 774456789),
('TG00016', 'Mia', 'Martin', 'mia.martin@university.com', '2001-04-16', 'B4', 'F', NULL, 1, 773567890),
('TG00017', 'Noah', 'Hernandez', 'noah.hernandez@university.com', '2001-05-17', 'B4', 'M', NULL, 2, 772678901),
('TG00018', 'Ava', 'Lopez', 'ava.lopez@university.com', '2001-06-18', 'B4', 'F', NULL, 3, 771789012),
('TG00019', 'Liam', 'Gonzalez', 'liam.gonzalez@university.com', '2001-07-19', 'B4', 'M', NULL, 1, 774890123),
('TG00020', 'Emma', 'Perez', 'emma.perez@university.com', '2001-08-20', 'B4', 'F', NULL, 2, 773901234),
('TG00021', 'Lucas', 'Hall', 'lucas.hall@university.com', '2001-09-21', 'B4', 'M', NULL, 3, 777012345),
('TG00022', 'Ella', 'Young', 'ella.young@university.com', '2001-10-22', 'B4', 'F', NULL, 1, 772123456),
('TG00023', 'Mason', 'King', 'mason.king@university.com', '2001-11-23', 'B4', 'M', NULL, 2, 771234567),
('TG00024', 'Harper', 'Wright', 'harper.wright@university.com', '2001-12-24', 'B4', 'F', NULL, 3, 774345678),
('TG00025', 'Logan', 'Scott', 'logan.scott@university.com', '2001-01-25', 'B4', 'M', NULL, 1, 773456789),
('TG00026', 'Grace', 'Green', 'grace.green@university.com', '2001-02-26', 'B4', 'F', NULL, 2, 772567890),
('TG00027', 'Oliver', 'Adams', 'oliver.adams@university.com', '2001-03-27', 'B4', 'M', NULL, 3, 777678901),
('TG00028', 'Chloe', 'Nelson', 'chloe.nelson@university.com', '2001-04-28', 'B4', 'F', NULL, 1, 772789012),
('TG00029', 'Elijah', 'Carter', 'elijah.carter@university.com', '2001-05-29', 'B4', 'M', NULL, 2, 771890123),
('TG00030', 'Aiden', 'Mitchell', 'aiden.mitchell@university.com', '2001-06-30', 'B4', 'M', NULL, 3, 774901234);






INSERT INTO Lecturer (Reg_no, F_name, L_name, Email, DOB, Gender, Department_Id, Mobile) VALUES
('LEC0001', 'Alice', 'Williams', 'alice.williams@university.com', '1975-01-10', 'F', 1, 772123456),
('LEC0002', 'Bob', 'Johnson', 'bob.johnson@university.com', '1978-02-15', 'M', 1, 771234567),
('LEC0003', 'Charlie', 'Smith', 'charlie.smith@university.com', '1980-03-20', 'M', 2, 773456789),
('LEC0004', 'Daisy', 'Brown', 'daisy.brown@university.com', '1982-04-25', 'F', 2, 774567890),
('LEC0005', 'Ethan', 'Davis', 'ethan.davis@university.com', '1985-05-30', 'M', 2, 775678901),
('LEC0006', 'Fiona', 'Evans', 'fiona.evans@university.com', '1987-06-12', 'F', 3, 776789012),
('LEC0007', 'George', 'Harris', 'george.harris@university.com', '1989-07-14', 'M', 3, 777890123),
('LEC0008', 'Hannah', 'Clark', 'hannah.clark@university.com', '1991-08-16', 'F', 3, 772901234),
('LEC0009', 'Ian', 'Walker', 'ian.walker@university.com', '1976-09-18', 'M', 1, 773012345),
('LEC0010', 'Julia', 'Lee', 'julia.lee@university.com', '1983-10-20', 'F', 2, 774123456);
