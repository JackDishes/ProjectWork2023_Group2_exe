create database ProjectWork
go
Use ProjectWork
go

CREATE TABLE Customers (
    ID int IDENTITY(1,1) PRIMARY KEY,
	BusinessName VARCHAR(50), -- ragione sociale
    Street VARCHAR(50), -- address
	PostalCode VARCHAR(50), -- cap
	City VARCHAR(50),
	Province VARCHAR(50),
	State VARCHAR(50),
    VAT VARCHAR(50), -- p.iva
    Phone VARCHAR(20),
    Mail VARCHAR(100)
);

CREATE TABLE Employees (
    ID int IDENTITY(1,1) PRIMARY KEY,
	Username VARCHAR(50),
	Password VARCHAR(50)
);

CREATE TABLE Vehicles (
    ID int IDENTITY(1,1) PRIMARY KEY,
	Plate VARCHAR(50), -- targa
	MaxLoadM3 float,
	MaxLoadKG float,
	KMRate float,
	IsCaissonOpen bit, -- cassone aperto o chiuso
	HasContainer bit, -- portacontainer presente o no
	IsFlippable bit -- se è ribaltabile 
);

CREATE TABLE Transports (
    ID int IDENTITY(1,1) PRIMARY KEY,
	LoadingData Date, -- data di carico
    LoadingAddress VARCHAR(50), -- indirizzo di carico
    UnloadingData date, -- data di scarico
    UnloadingAddress VARCHAR(50), -- indirizzo di scarico
    M3 float,
    KG float,
	KmTravelled float,
	InvoiceAmount float,
	IDEmployees int FOREIGN KEY REFERENCES Employees,
	IDVehicles int FOREIGN KEY REFERENCES Vehicles,
	IDCustomers int FOREIGN KEY REFERENCES Customers
);

INSERT INTO Employees (Username, Password) VALUES ('utente1', '123');
INSERT INTO Employees (Username, Password) VALUES ('utente2', '456');
INSERT INTO Employees (Username, Password) VALUES ('utente3', '789');


INSERT INTO Customers (BusinessName, Street, PostalCode, City, Province, State, VAT, Phone, Mail) VALUES
('Barilla', 'Via Moliere st', '00123', 'Bergamo', 'Bergamo', 'Italia', 'IT12345678901', '+123456789', 'barilla@mail.com'),
('Moet', 'Via San Angelo st', '00234', 'Roma', 'Roma', 'Italia', 'DE98765432109', '+234567890', 'moet@mail.com'),
('AlfaRomeo', 'Viale Dei Martire st', '00345', 'Reggio Emilia', 'Reggio', 'Italia', 'FR45678901234', '+345678901', 'alfar@mail.com'),
('Santanna', 'Corso Garibaldi st', '00456', 'Napoli', 'Napoli', 'Italia', 'ES56789012345', '+456789012', 'santana@mail.com'),
('Lindt', 'Corso Vittorio Emanuele st', '00567', 'Palermo', 'Palermo', 'Italia', 'UK23456789012', '+567890123', 'lindtchocolat@mail.com'),
('RayBan', 'Calle de la Rosa st', '00678', 'Barcelona', 'Barcelona', 'Spain', 'NL34567890123', '+678901234', 'ray@mail.com'),
('Constellation_Brands', 'Plaza Mayor', '00789', 'Sevilla', 'Sevilla', 'Spain', 'BE67890123456', '+789012345', 'constbrands@mail.com'),
('Molinos', 'Avenue des Champs-Élysées', '00890', 'Paris', 'Paris', 'France', 'PT78901234567', '+890123456', 'molinos@mail.com'),
('Paulaner', 'Place de la Bastille st', '00901', 'Lyon', 'Lyon', 'France', 'AT89012345678', '+901234567', 'paulaner@mail.com'),
('Evian', 'Verdi st', '01012', 'Milano', 'Milano', 'Italia', 'SE90123456789', '+012345678', 'evianwater@mail.com'),
('Hp', 'Viale Leonardo da Vinci st', '00123', 'Venezia', 'Venezia', 'Italia', 'PL01234567890', '+234567890', 'hppc@mail.com'),
('Microsoft', 'Corso Italia st', '00234', 'Genova', 'Genova', 'Italia', 'CZ23456789012', '+234567890', 'microsoft@mail.com'),
('Colgate', 'Avenue Roma st', '00345', 'Nice', 'Nice', 'France', 'HU34567890123', '+345678901', 'colgatetooth@mail.com'),
('Pantene', 'Calle del Mar st', '00456', 'Madrid', 'Madri', 'Spain', 'FI45678901234', '+456789012', 'panteneshampoo@mail.com'),
('SwissBag', 'Via Dante Alighieri st', '00567', 'Scandiano', 'Reggio Emilia', 'Italia', 'DK56789012345', '+567890123', 'swissbag@mail.com'),
('Kappa', 'Piazzetta della Libertà', '00678', 'Viano', 'Reggio Emilia', 'Italia', 'IE67890123456', '+678901234', 'kappaclothes@mail.com'),
('Corona', 'via dei bevande st', '00789', 'Reggio Emilia', 'Reggio Emilia', 'Italia', 'GR78901234567', '+789012345', 'coronadrinks@mail.com'),
('Ype', 'Rua Rio de Janeiro st', '00890', 'Roma', 'Roma', 'Italia', 'CY89012345678', '+890123456', 'ype@mail.com'),
('Carozzi', 'Corso Umberto I st', '00901', 'Scandiano', 'Reggio Emilia', 'Italia', 'LU90123456789', '+901234567', 'carozzi@mail.com'),
('Bacci', 'Via Via dei Cipressi st', '01012', 'Viano', 'Reggio Emilia', 'Italia', 'SI01234567890', '+012345678', 'baccichocolat@mail.com');


INSERT INTO Vehicles (Plate, MaxLoadM3, MaxLoadKG, KMRate, IsCaissonOpen, HasContainer, IsFlippable) VALUES
('BA123BB', 18, 5000, 0.75, 1, 0, 1),
('BB123BB', 12, 4000, 0.85, 0, 1, 0),
('BC123BB', 25, 6000, 0.70, 1, 1, 1),
('BD123BB', 36, 4500, 0.80, 0, 0, 1),
('BE123BB', 19, 5500, 0.78, 1, 1, 0),
('BH123BB', 45, 4000, 0.90, 1, 1, 1),
('BJ123BB', 40, 6500, 0.65, 0, 0, 1),
('BG123BB', 30, 5000, 0.75, 1, 0, 0),
('BF123BB', 31, 4200, 0.88, 0, 1, 0),
('BF223BB', 30, 4600, 0.98, 1, 0, 1),
('BF323BB', 49, 6200, 0.8, 0, 1, 1),
('BF423BB', 50, 5200, 0.78, 1, 0, 1),
('BF523BB', 35, 4700, 0.88, 0, 1, 0),
('BF623BB', 20, 5200, 0.28, 1, 0, 1),
('BF723BB', 15, 7200, 0.98, 0, 1, 0),
('BF823BB', 34, 8200, 0.68, 1, 1, 0),
('BF923BB', 25, 4200, 0.88, 0, 1, 1),
('BF133BB', 30, 4600, 0.88, 0, 1, 1),
('BF143BB', 32, 4200, 0.88, 0, 1, 1),
('BF143BJ', 36, 5200, 0.78, 0, 1, 0),
('BF143FB', 40, 6200, 0.78, 0, 0, 1);

INSERT INTO Transports (LoadingData, LoadingAddress, UnloadingData, UnloadingAddress, M3, KG, KmTravelled, InvoiceAmount, IDEmployees, IDVehicles, IDCustomers) VALUES
('2023-01-01', 'Milano', '2023-01-05', 'Parigi', 8.5, 4000, 150.0, 1200.0, 1, 2, 1),
('2023-02-01', 'Londra', '2023-02-06', 'Bari', 10.0, 5000, 180.0, 1500.0, 2, 1, 2),
('2023-03-01', 'Bologna', '2023-03-07', 'Como', 12.5, 6000, 200.0, 1800.0, 1, 3, 3)


delete Customers


drop table Transports
drop table Vehicles
drop table customers
drop table Employees

select distinct VAT
from Customers