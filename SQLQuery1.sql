CREATE DATABASE Course

USE Course

CREATE TABLE Teachers(
Id int,
[Name] nvarchar(20),
Surname nvarchar(30),
Email nvarchar(50),
Age int,
Salary decimal)

SELECT * FROM Teachers

INSERT INTO Teachers VALUES(
1,
'Ayaz',
'Alakbarov',
'aa@gmail.com',
32,
1500)

INSERT INTO Teachers VALUES(
2,
'Farhad',
'Abdullayev',
'fa@mail.ru',
28,
1300)

INSERT INTO Teachers VALUES(
2,
'Cavid',
'Aliyev',
'ca@mail.ru',
26,
1800)

UPDATE Teachers SET Id=3 WHERE [Name]='Cavid'

SELECT * FROM Teachers WHERE Age>(SELECT AVG(Age) FROM Teachers)

SELECT * FROM Teachers WHERE Salary>1000 AND Salary<3000

SELECT * FROM Teachers WHERE Salary>1000 AND Salary<1500

SELECT * FROM Teachers WHERE Email like '%mail.ru'

SELECT * FROM Teachers WHERE [Name] like 'C%'