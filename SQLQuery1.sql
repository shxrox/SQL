create database a;

use a;
-- Create Car table
CREATE TABLE Car (
    CarID INT PRIMARY KEY,
    Model VARCHAR(50),
    Licent_Plate VARCHAR(15),
    Make VARCHAR(50),
    Color VARCHAR(20),
    year_Made INT,
    Car_class_ID INT,
    FOREIGN KEY (Car_class_ID) REFERENCES CarClass(Car_class_ID)
);

-- Insert records into Car table
INSERT INTO Car (CarID, Model, Licent_Plate, Make, Color, year_Made, Car_class_ID)
VALUES

    (1, 'Toyota Corolla', 'ABC123', 'Toyota', 'Blue', 2019, 1),
    (2, 'Honda Civic', 'XYZ456', 'Honda', 'Silver', 2020, 2),
    (3, 'Ford Mustang', 'DEF789', 'Ford', 'Red', 2018, 3),
    (4, 'Chevrolet Cruze', 'GHI101', 'Chevrolet', 'Black', 2021, 4),
    (5, 'Volkswagen Golf', 'JKL202', 'Volkswagen', 'White', 2017, 5),
    (6, 'BMW X5', 'MNO303', 'BMW', 'Silver', 2022, 6),
    (7, 'Audi A4', 'PQR404', 'Audi', 'Gray', 2019, 7),
    (8, 'Mercedes-Benz E-Class', 'STU505', 'Mercedes-Benz', 'Black', 2020, 8),
    (9, 'Hyundai Elantra', 'VWX606', 'Hyundai', 'Blue', 2019, 9),
    (10, 'Kia Forte', 'YZA707', 'Kia', 'Red', 2021, 10),
    (11, 'Nissan Altima', 'BCD808', 'Nissan', 'Silver', 2018, 11),
    (12, 'Toyota Camry', 'EFG909', 'Toyota', 'White', 2020, 12),
    (13, 'Honda Accord', 'HIJ010', 'Honda', 'Black', 2017, 13),
    (14, 'Ford Fusion', 'KLM111', 'Ford', 'Gray', 2018, 14),
    (15, 'Chevrolet Malibu', 'NOP212', 'Chevrolet', 'Blue', 2022, 15);

-- Create RentalRecord table
CREATE TABLE RentalRecord (
    RentalRecordID INT PRIMARY KEY,
    Rental_End_Date DATE,
    RentalStartDate DATE,
    Amount DECIMAL(10, 2),
    Car_ID INT,
    FOREIGN KEY (Car_ID) REFERENCES Car(CarID)
);

-- Insert records into RentalRecord table
INSERT INTO RentalRecord (RentalRecordID, Rental_End_Date, RentalStartDate, Amount, Car_ID)
VALUES
    (1, '2023-10-05', '2023-10-01', 200.00, 1),
    (2, '2023-10-03', '2023-09-28', 180.00, 2),
    (3, '2023-10-06', '2023-10-02', 220.00, 3),
    (4, '2023-10-04', '2023-09-30', 190.00, 4),
    (6, '2023-10-07', '2023-09-29', 230.00, 6),
    (7, '2023-10-06', '2023-10-02', 190.00, 7),
    (8, '2023-10-07', '2023-09-30', 200.00, 8),
    (9, '2023-10-04', '2023-09-29', 190.00, 9),
    (10, '2023-10-05', '2023-09-30', 220.00, 10),
    (5, '2023-10-08', '2023-10-01', 210.00, 5),
    (11, '2023-10-03', '2023-09-28', 200.00, 11),
    (12, '2023-10-04', '2023-10-01', 190.00, 12),
    (13, '2023-10-07', '2023-09-30', 210.00, 13),
    (14, '2023-10-06', '2023-10-02', 220.00, 14),
    (15, '2023-10-08', '2023-10-01', 230.00, 15);

-- Create Car Class table
CREATE TABLE CarClass (
    Car_class_ID INT PRIMARY KEY,
    Pricing_Per_Km DECIMAL(5, 2),
    Fixed_Deposit_Amount DECIMAL(10, 2)
);
-- Insert records into Car Class table
INSERT INTO CarClass (Car_class_ID, Pricing_Per_Km, Fixed_Deposit_Amount)
VALUES
    (1, 0.15, 1000.00),
    (2, 0.12, 1200.00),
    (3, 0.18, 900.00),
    (4, 0.14, 1100.00),
    (5, 0.16, 950.00),
    (6, 0.20, 850.00),
    (8, 0.17, 880.00),
    (9, 0.11, 1300.00),
    (10, 0.19, 820.00),
    (7, 0.13, 1050.00),
    (11, 0.14, 1150.00),
    (12, 0.16, 980.00),
    (13, 0.15, 1020.00),
    (14, 0.18, 890.00),
    (15, 0.12, 1180.00);




-- Create Bill table
CREATE TABLE Bill (
    Bill_ID INT PRIMARY KEY,
    Total_Bill_Amount DECIMAL(10, 2),
    CustomerID INT,
    FOREIGN KEY (CustomerID) REFERENCES Customer(CoustomerID)
);

-- Insert records into Bill table
INSERT INTO Bill (Bill_ID, Total_Bill_Amount, CustomerID)
VALUES
    (1, 300.00, 1),
    (2, 250.00, 2),
    (3, 280.00, 3),
    (4, 270.00, 4),
    (5, 290.00, 5),
    (6, 310.00, 6),
    (7, 275.00, 7),
    (8, 290.00, 8),
    (9, 270.00, 9),
    (10, 300.00, 10),
    (11, 290.00, 11),
    (12, 270.00, 12),
    (13, 310.00, 13),
    (14, 320.00, 14),
    (15, 330.00, 15);

-- Create Customer table
CREATE TABLE Customer (
    CoustomerID INT PRIMARY KEY,
    F_Name VARCHAR(50),
    S_Name VARCHAR(50),
    Address VARCHAR(100)
);

-- Insert records into Customer table
INSERT INTO Customer (CoustomerID, F_Name, S_Name, Address)
VALUES
    (1, 'John', 'Doe', '123 Main St, City1, Country1'),
    (2, 'Jane', 'Smith', '456 Elm St, City2, Country2'),
    (3, 'Michael', 'Johnson', '789 Oak St, City3, Country3'),
    (4, 'Laura', 'Williams', '101 Pine St, City4, Country4'),
    (5, 'David', 'Brown', '234 Cedar St, City5, Country5'),
    (6, 'Jessica', 'Miller', '567 Elm St, City6, Country6'),
    (7, 'Andrew', 'Taylor', '890 Maple St, City7, Country7'),
    (8, 'Emily', 'Clark', '111 Cedar St, City8, Country8'),
    (9, 'Brian', 'Hill', '222 Oak St, City9, Country9'),
    (10, 'Sarah', 'Davis', '333 Maple St, City10, Country10'),
    (11, 'Jason', 'Anderson', '444 Pine St, City11, Country11'),
    (12, 'Lisa', 'Moore', '555 Elm St, City12, Country12'),
    (13, 'Daniel', 'White', '666 Cedar St, City13, Country13'),
    (14, 'Olivia', 'King', '777 Oak St, City14, Country14'),
    (15, 'Matthew', 'Scott', '888 Maple St, City15, Country15');

-- Create Customer_PhoneNumbers table
CREATE TABLE Customer_PhoneNumbers (
    CustomerID INT,
    PhoneNumber VARCHAR(15),
    PRIMARY KEY (CustomerID, PhoneNumber),
    FOREIGN KEY (CustomerID) REFERENCES Customer(CoustomerID)
);

-- Insert records into Customer_PhoneNumbers table
INSERT INTO Customer_PhoneNumbers (CustomerID, PhoneNumber)
VALUES
    (1, '0111111111'),
    (2, '0222222222'),
    (3, '0333333333'),
    (4, '0444444444'),
    (5, '0555555555'),
    (6, '0666666666'),
    (7, '0777777777'),
    (8, '0888888888'),
    (9, '0999999999'),
    (10, '0777777777'),
    (11, '0088888888'),
    (12, '0099999999'),
    (13, '00011111111'),
    (14, '0002222222'),
    (15, '0003333333');


-- View CarClass table
SELECT * FROM CarClass;

-- View Car table
SELECT * FROM Car;

-- View RentalRecord table
SELECT * FROM RentalRecord;

-- View Bill table
SELECT * FROM Bill;

-- View Customer table
SELECT * FROM Customer;

-- View Customer_PhoneNumbers table
SELECT * FROM Customer_PhoneNumbers;

--List of Borrowers of a particular car type:
SELECT C.F_Name, C.S_Name, CC.Car_class_ID, CC.Pricing_Per_Km
FROM Customer C
JOIN RentalRecord RR ON C.CoustomerID = RR.Car_ID
JOIN CarClass CC ON RR.Car_ID = CC.Car_class_ID
WHERE CC.Car_class_ID = 1; 


--Sum of payments received within a given duration:
SELECT SUM(RR.Amount) AS TotalPayments
FROM RentalRecord RR
WHERE RR.RentalStartDate >= '2023-10-01' AND RR.Rental_End_Date <= '2023-10-05';



--List of car details that are in the fleet:
SELECT CarID, Model, Licent_Plate, Make, Color, year_Made, Car_class_ID
FROM Car;


-- Update the 'Color' column for Car with CarID 1 to 'Green'
UPDATE Car
SET Color = 'Green'
WHERE CarID = 1;

-- Check data types of columns in the 'Car' table
EXEC sp_columns 'Car';


--check the range of values for the "CarID" column
SELECT MIN(CarID) AS Min_CarID, MAX(CarID) AS Max_CarID
FROM Car;

--check the presence of data in the "Model" 
SELECT COUNT(*) AS Model_Presence
FROM Car
WHERE Model IS NOT NULL;

-- Check the primary key constraint of the "Car" table
SELECT COLUMN_NAME, CONSTRAINT_NAME
FROM INFORMATION_SCHEMA.KEY_COLUMN_USAGE
WHERE TABLE_NAME = 'Car' AND CONSTRAINT_NAME LIKE 'PK%';


-- Check the foreign key constraints in the "Car" table
EXEC sp_fkeys 'Car';


