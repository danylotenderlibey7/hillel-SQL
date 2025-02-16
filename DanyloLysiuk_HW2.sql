insert into StudentsGrades (FullName, Country, City, BirthDate, Email, Phone, GroupName, AverageGrade, MinGradeSubject, MaxGradeSubject) 
values 
('Marko Petrenko', 'Poland', 'Krakow', '2011-12-30', 'marko.petrenko@gmail.com', '+480675432567', 'IT-25', 81.2, 'Physics', 'Math'),
('Anna Kovalenko', 'Poland', 'Warsaw', '2010-05-18', 'anna.kovalenko@gmail.com', '+48223456789', 'IT-25', 79.3, 'History', 'English'),
('Mykola Sokolov', 'USA', 'New York', '2009-09-14', 'mykola.sokolov@gmail.com', '+12124567890', 'IT-25', 85.4, 'Biology', 'Chemistry'),
('Oksana Ivanova', 'USA', 'Austin', '2008-11-07', 'oksana.ivanova@gmail.com', '+13012345678', 'IT-25', 88.7, 'Math', 'Physics'),
('Bohdan Shevchenko', 'USA', 'Seatle', '2011-06-22', 'bohdan.shevchenko@gmail.com', '+14165678910', 'IT-25', 92.1, 'History', 'Chemistry'),
('Viktoria Bondarchuk', 'France', 'Paris', '2012-02-16', 'viktoria.bondarchuk@gmail.com', '+33123456789', 'IT-30', 75.9, 'English', 'Math'),
('Pavlo Lyashenko', 'Spain', 'Madrid', '2009-03-28', 'pavlo.lyashenko@gmail.com', '+34912345678', 'IT-30', 89.0, 'Biology', 'Physics'),
('Olena Boyko', 'Italy', 'Rome', '2010-04-19', 'olena.boyko@gmail.com', '+390612345678', 'IT-2', 78.5, 'History', 'English'),
('Dmytro Koval', 'UK', 'London', '2012-09-25', 'dmytro.koval@gmail.com', '+442012345678', 'IT-30', 91.3, 'Physics', 'Math'),
('Yana Hryhorenko', 'Japan', 'Tokyo', '2011-07-03', 'yana.hryhorenko@gmail.com', '+81312345678', 'IT-34', 83.7, 'Chemistry', 'Biology'),
('Taras Melnyk', 'Australia', 'Sydney', '2008-11-11', 'taras.melnyk@gmail.com', '+61234567890', 'IT-35', 86.9, 'Math', 'Physics'),
('Liudmyla Chernyk', 'Brazil', 'Sao Paulo', '2009-12-21', 'liudmyla.chernyk@gmail.com', '+551123456789', 'IT-36', 80.8, 'History', 'English'),
('Oleh Skorobogatov', 'Mexico', 'Mexico City', '2010-01-15', 'oleh.skorobogatov@gmail.com', '+525512345678', 'IT-37', 92.5, 'Biology', 'Chemistry'),
('Iryna Shulha', 'China', 'Beijing', '2010-03-14', 'iryna.shulha@gmail.com', '+861012345678', 'IT-38', 90.1, 'History', 'Physics'),
('Danylo Lysenko', 'India', 'Delhi', '2011-09-05', 'danylo.lysenko@gmail.com', '+911123456789', 'IT-39', 82.4, 'Math', 'Chemistry'),
('Svitlana Horbunova', 'Turkey', 'Istanbul', '2009-10-18', 'svitlana.horbunova@gmail.com', '+902123456789', 'IT-40', 87.5, 'English', 'Math'),
('Oleksandr Morozov', 'South Korea', 'Seoul', '2012-11-22', 'oleksandr.morozov@gmail.com', '+821012345678', 'IT-41', 84.6, 'Biology', 'Physics'),
('Nadiia Romaniuk', 'Argentina', 'Buenos Aires', '2009-12-11', 'nadiia.romaniuk@gmail.com', '+541112345678', 'IT-42', 88.3, 'Chemistry', 'Math'),
('Artem Zahorodnyi', 'Kazakhstan', 'Astana', '2010-07-15', 'artem.zahorodnyi@gmail.com', '+772123456789', 'IT-43', 85.7, 'Physics', 'History'),
('Sofia Fedorova', 'Kazakhstan', 'Almaty', '2011-03-12', 'sofia.fedorova@gmail.com', '+772712345678', 'IT-44', 79.9, 'Math', 'Chemistry'),
('Ivan Kharchenko', 'Israel', 'Tel Aviv', '2012-06-29', 'ivan.kharchenko@gmail.com', '+972123456789', 'IT-45', 91.0, 'Biology', 'Math'),
('Yurii Shevchuk', 'Sweden', 'Stockholm', '2011-12-17', 'yurii.shevchuk@gmail.com', '+46123456789', 'IT-49', 90.7, 'Biology', 'Chemistry'),
('Sergii Polishchuk', 'Norway', 'Oslo', '2012-07-26', 'sergii.polishchuk@gmail.com', '+47123456789', 'IT-50', 86.3, 'History', 'Math'),
('Inna Karpenko', 'Finland', 'Helsinki', '2009-09-09', 'inna.karpenko@gmail.com', '+358123456789', 'IT-51', 84.2, 'English', 'Physics');

-- Відображення всієї інформації з таблиці зі студентами та оцінками.
select * from studentsgrades;

-- Відображення ПІБ усіх студентів.
select Fullname from studentsgrades;

-- Відображення усіх середніх оцінок.
select AverageGrade from studentsgrades;

-- Показати країни студентів. Назви країн мають бути унікальними.
select distinct Country from studentsgrades;

-- Показати міста студентів. Назви міст мають бути унікальними.
select distinct City from studentsgrades;

-- Показати назви груп. Назви груп мають бути унікальними.
select distinct GroupName from studentsgrades;