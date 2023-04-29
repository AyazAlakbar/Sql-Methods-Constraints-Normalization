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

DROP DATABASE Course




CREATE DATABASE TurboAz

USE TurboAz

CREATE TABLE Marka(
Id int PRIMARY KEY,
[Name] nvarchar(15)
)
INSERT INTO Marka VALUES(1,'BMW')
INSERT INTO Marka VALUES(2,'VOLVO')
INSERT INTO Marka VALUES(3,'KIA')



CREATE TABLE Model(
Id int PRIMARY KEY,
[Name] nvarchar(15),
MarkaId int REFERENCES Marka(Id)
)
select * from Model
INSERT INTO Model VALUES(1,'5Series', 1)
INSERT INTO Model VALUES(2,'7Series', 1)
INSERT INTO Model VALUES(3,'3Series', 1)
INSERT INTO Model VALUES(4,'X5', 1)
INSERT INTO Model VALUES(5,'X7', 1)

INSERT INTO Model VALUES(6,'S80', 2)
INSERT INTO Model VALUES(7,'S40', 2)
INSERT INTO Model VALUES(8,'S90', 2)
INSERT INTO Model VALUES(9,'XC60',2)
INSERT INTO Model VALUES(10,'XC90',2)

INSERT INTO Model VALUES(11,'Carnival', 3)
INSERT INTO Model VALUES(12,'Cerato', 3)
INSERT INTO Model VALUES(13,'Optima', 3)
INSERT INTO Model VALUES(14,'Sorento',3)
INSERT INTO Model VALUES(15,'Ceed',3)

CREATE TABLE BanTypes(
Id int PRIMARY KEY,
[Name] nvarchar(20)
)

INSERT INTO BanTypes VALUES (1,'Sedan')
INSERT INTO BanTypes VALUES (2,'SUV')
INSERT INTO BanTypes VALUES (3,'Universal')
INSERT INTO BanTypes VALUES (4,'Coupe')


CREATE TABLE KmORMile(
Id int PRIMARY KEY,
[Name] nvarchar(20)
)

INSERT INTO KmORMile VALUES (1, 'KM')
INSERT INTO KmORMile VALUES (2, 'MILE')


CREATE TABLE Colors(
Id int PRIMARY KEY,
[Name] nvarchar(20)
)

INSERT INTO Colors VALUES (1,'Black')
INSERT INTO Colors VALUES (2,'White')
INSERT INTO Colors VALUES (3,'Red')
INSERT INTO Colors VALUES (4,'Grey')


CREATE TABLE Prices(
Id int PRIMARY KEY,
[Name] nvarchar(20)
)

INSERT INTO Prices VALUES (1,'AZN')
INSERT INTO Prices VALUES (2,'USD')
INSERT INTO Prices VALUES (3,'EUR')

CREATE TABLE PrevOwners(
Id int PRIMARY KEY,
[Name] nvarchar(20)
)

INSERT INTO PrevOwners VALUES (1,'First')
INSERT INTO PrevOwners VALUES (2,'Second')
INSERT INTO PrevOwners VALUES (3,'Third')


CREATE TABLE FuelTypes(
Id int PRIMARY KEY,
[Name] nvarchar(20)
)

INSERT INTO FuelTypes VALUES (1,'Benzin')
INSERT INTO FuelTypes VALUES (2,'Diesel')
INSERT INTO FuelTypes VALUES (3,'Hybrid')
INSERT INTO FuelTypes VALUES (4,'Electric')


INSERT INTO FuelTypes
VALUES
(5,'Benzin'),
(6,'Diesel'),
(7,'Hybrid'),
(8,'Electric')


CREATE TABLE Transmitters(
Id int PRIMARY KEY,
[Name] nvarchar(20)
)

INSERT INTO Transmitters VALUES
(1,'Front'),
(2,'Back'),
(3,'All')

CREATE TABLE Transmission(
Id int PRIMARY KEY,
[Name] nvarchar(20)
)

INSERT INTO Transmission VALUES
(1,'Auto'),
(2,'Manual')


CREATE TABLE Years(
Id int PRIMARY KEY,
[Name] nvarchar(20)
)

INSERT INTO Years VALUES
(1,'2000-2005'),
(2,'2005-2010'),
(3,'2010-2015'),
(4,'2015-2020'),
(5,'2020-More')



CREATE TABLE Engine(
Id int PRIMARY KEY,
[Name] nvarchar(20)
)

INSERT INTO Engine VALUES
(1,'2000'),
(2,'2500'),
(3,'3000'),
(4,'3500'),
(5,'4000')



CREATE TABLE Seats(
Id int PRIMARY KEY,
[Name] nvarchar(20)
)

INSERT INTO Seats VALUES
(1,'1'),
(2,'2'),
(3,'3'),
(4,'4'),
(5,'5'),
(6,'6'),
(7,'7'),
(8,'8+')


CREATE TABLE Cities(
Id int PRIMARY KEY,
[Name] nvarchar(20)
)

INSERT INTO Cities VALUES
(1,'Baku'),
(2,'Sumgayit'),
(3,'Ganja')


CREATE TABLE Countries(
Id int PRIMARY KEY,
[Name] nvarchar(20)
)

INSERT INTO Countries VALUES
(1,'German'),
(2,'Sweden'),
(3,'Korea')


CREATE TABLE [Contacts](
Id int PRIMARY KEY,
[Name] nvarchar(20),
CityId int REFERENCES Cities(Id),
Email nvarchar(30),
Phone nvarchar(20)
)

DROP TABLE Contacts

INSERT INTO [Contacts] VALUES
(1,'Lorem', 1, 'lorem@gmail.com', '994553216549'),
(2,'Ipsum', 2, 'ipsum@gmail.com', '994553216548'),
(3,'Doler', 3, 'doler@gmail.com', '994553216547')


CREATE TABLE VehicleSupply(
Id int PRIMARY KEY,
[ABS] bit,
[Rain sensor] bit,
[Parking radar] bit,
[Central locking] bit
)

INSERT INTO VehicleSupply VALUES
(1,'TRUE', 'FALSE','TRUE','TRUE'),
(2,'TRUE', 'FALSE','FALSE','TRUE'),
(3,'TRUE', 'FALSE','TRUE','FALSE')
INSERT INTO VehicleSupply VALUES(4,'TRUE', 'FALSE','TRUE','FALSE')

SELECT * FROM VehicleSupply



CREATE TABLE  Elan (
Id int PRIMARY KEY,
[Model Id] int REFERENCES Model(Id),
[Ban Type] int REFERENCES BanTypes(Id),
Odometr nvarchar(10),
[Type of Odometr] int REFERENCES KmORMile(Id),
[Color] int REFERENCES Colors(Id),
Price int,
Currency int REFERENCES Prices(Id),
Owners int REFERENCES PrevOwners(Id),
[Fuel Type] int REFERENCES FuelTypes(Id),
Transmitters int REFERENCES Transmitters(Id),
Transmission int REFERENCES Transmission(Id),
[Year] int REFERENCES Years(Id),
Countries int REFERENCES Countries(Id),
Engine int REFERENCES Engine(Id),
[Engine HP] int,
Seats int REFERENCES Seats(Id),
Damaged bit,
Colored bit,
Kredit bit,
Barter bit,
VehicleSupply int REFERENCES VehicleSupply(Id),
[Vin KOD] nvarchar(50),
[Elave Melumat] nvarchar(500),
Photo nvarchar(150),
Contacts int REFERENCES [Contacts](Id)
)
DROP TABLE Elan


INSERT INTO Elan VALUES(2,1,2,15000,2,2,30000,3,2,4,3,2,4,1,2,350,5, 'FALSE','TRUE','FALSE','FALSE',2, 15421545125,'XXX', './car', 3)
INSERT INTO Elan VALUES(1,1,2,10000,2,2,30000,1,2,1,1,1,1,1,1,350,1,'TRUE','TRUE','FALSE','FALSE',1,2005,'SUPER','XXX',3)
SELECT * FROM Elan

SELECT
Elan.Id,
Model.Name,
BanTypes.Name as BanType,
KmORMile.Name as KmOrMl,
Colors.Name,
Prices.Name,
PrevOwners.Name,
FuelTypes.Name,
Transmitters.Name,
Transmission.Name,
[Years].Name,
Engine.Name,
Seats.Name,
Damaged,
Colored,
Kredit,
Barter,
VehicleSupply.[ABS],
VehicleSupply.[Rain sensor],
VehicleSupply.[Parking radar],
VehicleSupply.[Central locking],
--Cities.Name,
Contacts.Name

FROM Elan


inner join Model on Elan.[Model Id]=Model.Id
inner join BanTypes on Elan.[Ban Type]=BanTypes.Id
inner join KmORMile on Elan.[Type of Odometr]=KmORMile.Id
inner join Colors on Elan.Color=Colors.Id
inner join Prices on Elan.Price=Prices.Id
inner join PrevOwners on Elan.Owners=PrevOwners.Id
inner join FuelTypes on Elan.[Fuel Type]=FuelTypes.Id
inner join Transmitters on Elan.Transmitters=Transmitters.Id
inner join Transmission on Elan.Transmission=Transmission.Id
inner join [Years] on Elan.[Year]=Years.Id
inner join Engine on Elan.Engine=Engine.Id
inner join Seats on Elan.Seats=Seats.Id
inner join VehicleSupply on Elan.VehicleSupply=VehicleSupply.Id
--inner join Cities on Elan.Cities=Cities.Id
inner join Contacts on Elan.Contacts=Contacts.Id


