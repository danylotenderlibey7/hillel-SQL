-- Створення бази даних
CREATE DATABASE StudentsGrades_HW;

-- Використання бази даних
USE StudentsGrades_HW;

-- Створення таблиці StudentsGrades
CREATE TABLE StudentsGrades
(
	ID int auto_increment primary key,
    FullName varchar(50) not null,
    Country varchar(30),
    City varchar(30),
    BirthDate Date,
    Email varchar(100),
    Phone varchar(20),
    GroupName varchar(20),
    AverageGrade float,
    MinGradeSubject varchar(40),
    MaxGradeSubject varchar(40)
);

-- Вставка даних
INSERT INTO StudentsGrades (FullName, Country, City, BirthDate, Email, Phone, GroupName, AverageGrade, MinGradeSubject, MaxGradeSubject) 
VALUES 
('Ivan Ivanov', 'Ukraine', 'Dnipro', '2012-05-15', 'ivanu@gmail.com', '+380508565948', 'IT-21', 77.7, 'Math', 'PE'),
('Olga Kozlova', 'Ukraine', 'Kharkiv', '2011-04-22', 'olga.kozlova@gmail.com', '+380506543217', 'IT-22', 82.5, 'History', 'Chemistry'),
('Serhii Pavlenko', 'Ukraine', 'Odesa', '2010-11-10', 'serhii.pavlenko@gmail.com', '+380939876543', 'IT-23', 88.1, 'Biology', 'Math'),
('Kateryna Bondarenko', 'Ukraine', 'Kyiv', '2009-03-05', 'kateryna.bondarenko@gmail.com', '+380673456789', 'IT-24', 90.3, 'Literature', 'Physics');

-- Перевірка наявності даних
SELECT * FROM StudentsGrades;

