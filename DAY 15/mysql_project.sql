CREATE DATABASE College;
USE College;


CREATE TABLE Library (
    bookID INT PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    rollNo VARCHAR(20),
    dateIssued DATE,
    dateReturned DATE,
    currentStatus VARCHAR(20)
);

INSERT INTO Library
(bookID, title, rollNo, dateIssued, dateReturned, currentStatus)
VALUES
(1, 'AI', 'B4012', '2026-07-04', '2026-07-14', 'Returned'),
(2, 'CSS', '14087', '2026-07-15', '2026-07-25', 'Returned'),
(3, 'Mern Stack', '14150', '2026-07-18', NULL, 'Issued'),
(4, 'Python', '14065', '2026-07-25', NULL, 'Issued'),
(5, 'Java Programming', '14093', '2026-07-02', NULL, 'Issued');

CREATE TABLE Result (
    resultNo INT PRIMARY KEY AUTO_INCREMENT,
    rollNo VARCHAR(20) NOT NULL,
    fullName VARCHAR(100) NOT NULL,
    courseName VARCHAR(50),
    semNo INT,
    marksObtained INT,
    marksTotal INT,
    gradeAwarded VARCHAR(10),
    finalStatus VARCHAR(20)
    );

INSERT INTO Result
(rollNo, fullName, courseName, semNo, marksObtained, marksTotal, gradeAwarded, finalStatus)
VALUES
('14012', 'Mohammad Azeem', 'MCA', 3, 91, 100, 'A+', 'Pass'),
('14087', 'Mohammad Sahil', 'BCA', 2, 78, 100, 'B+', 'Pass'),
('14150', 'Ankit', 'MCA ', 1, 55, 100, 'C', 'Pass'),
('14065', 'Krishna', 'BBA', 4, 84, 100, 'A', 'Pass'),
('14093', 'Rohit', 'B.Tech', 3, 38, 100, 'F', 'Fail');


CREATE TABLE Fees (
    feeRecordID INT PRIMARY KEY AUTO_INCREMENT,
    courseName VARCHAR(50),
    tuitionAmount DECIMAL(10,2),
    examAmount DECIMAL(10,2),
    insuranceAmount DECIMAL(10,2),
    grossAmount DECIMAL(10,2),
    discountAmount DECIMAL(10,2),
    payableAmount DECIMAL(10,2)
);

INSERT INTO Fees
(courseName, tuitionAmount, examAmount, insuranceAmount,
 grossAmount, discountAmount, payableAmount)
VALUES
('MCA(AI)', 140000.00, 7000.00, 500.00, 147500.00, 20000.00, 127500.00),
('B.Tech(AI)', 95000.00, 6500.00, 500.00, 102000.00, NULL, 102000.00),
('MBA', 120000.00, 7000.00, 500.00, 127500.00, 15000.00, 112500.00),
('BBA', 55000.00, 5000.00, 500.00, 60500.00, 8000.00, 52500.00),
('MCA', 70000.00, 5500.00, 500.00, 76000.00, NULL, 76000.00),
('BCA', 45000.00, 5000.00, 500.00, 50500.00, 5000.00, 45500.00);

CREATE TABLE Academic (
    facultyID INT PRIMARY KEY,
    facultyName VARCHAR(100) NOT NULL,
    deptName VARCHAR(100),
    subjectName VARCHAR(100),
    classDay VARCHAR(20),
    fromTime TIME,
    toTime TIME,
    durationHrs DECIMAL(4,1),
    roomNo VARCHAR(20)
);

INSERT INTO Academic
(facultyID, facultyName, deptName, subjectName,
 classDay, fromTime, toTime, durationHrs, roomNo)
VALUES
(80, 'Mohammad Azeem', 'Computer Applications', 'Artificial Intelligence',
 'Wednesday', '09:00:00', '11:00:00', 2.0, 'Room 04'),

(81, 'Mohammad Sahil', 'Computer Applications', 'CSS',
 'Monday', '11:00:00', '01:00:00', 2.0, 'Room 12'),

(82, 'Ankit', 'Computer Applications', 'Python',
 'Thursday', '02:00:00', '04:00:00', 2.0, 'Room 8'),

(83, 'Krishna', 'Computer Applications', 'Mern Stack',
 'Tuesday', '10:00:00', '12:00:00', 2.0, 'Room 17'),

(84, 'Ajay', 'Computer Applications', 'Computer Networks',
 'Friday', '01:00:00', '03:00:00', 2.0, 'Room 29');
 
 SHOW TABLES;

SELECT * FROM Library;
SELECT * FROM Result;
SELECT * FROM Fees;
SELECT * FROM Academic;

