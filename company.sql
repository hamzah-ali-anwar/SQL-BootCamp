CREATE DATABASE company;

USE company;

-- Create the Departments table
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY AUTO_INCREMENT,
    DepartmentName VARCHAR(50) NOT NULL
);

-- Insert data into Departments table
INSERT INTO Departments (DepartmentName) VALUES
('HR'),
('Finance'),
('IT'),
('Marketing'),
('Sales'),
('Operations'),
('Legal'),
('Customer Support');

-- Create the Employees table
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100),
    Salary DECIMAL(10, 2) NOT NULL,
    DepartmentID INT,
    ManagerID INT,
    HiringDate DATE NOT NULL,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID),
    FOREIGN KEY (ManagerID) REFERENCES Employees(EmployeeID)
);

-- Insert data into Employees table
INSERT INTO Employees (FirstName, LastName, Email, Salary, DepartmentID, ManagerID, HiringDate) VALUES
('John', 'Doe', 'john.doe@company.com', 55000, 3, NULL, '2022-03-15'),
('Alice', 'Smith', 'alice.smith@company.com', 72000, 2, 1, '2021-07-20'),
('Bob', 'Johnson', 'bob.johnson@company.com', 48000, 3, 1, '2023-01-10'),
('Eve', 'Adams', 'eve.adams@company.com', 60000, 1, 2, '2020-06-12'),
('Charlie', 'Brown', 'charlie.brown@company.com', 45000, 4, NULL, '2019-05-10'),
('Anna', 'Taylor', 'anna.taylor@company.com', 53000, 3, 1, '2022-11-25'),
('David', 'Wilson', 'david.wilson@company.com', 25000, NULL, NULL, '2023-08-15'),
('Sophia', 'Moore', 'sophia.moore@company.com', 67000, 2, 2, '2018-10-05'),
('Chris', 'Evans', 'chris.evans@company.com', 30000, 4, NULL, '2021-01-30'),
('Jane', 'Doe', 'jane.doe@company.com', 54000, 3, 1, '2022-07-14'),
('Michael', 'Scott', 'michael.scott@company.com', 50000, 5, NULL, '2015-04-15'),
('Jim', 'Halpert', 'jim.halpert@company.com', 45000, 5, 11, '2016-07-01'),
('Pam', 'Beesly', 'pam.beesly@company.com', 40000, 5, 11, '2016-09-25'),
('Dwight', 'Schrute', 'dwight.schrute@company.com', 52000, 5, 11, '2015-10-01'),
('Stanley', 'Hudson', 'stanley.hudson@company.com', 46000, 5, 11, '2017-01-15'),
('Phyllis', 'Vance', 'phyllis.vance@company.com', 47000, 5, 11, '2017-03-10'),
('Oscar', 'Martinez', 'oscar.martinez@company.com', 62000, 2, 2, '2014-12-20'),
('Angela', 'Martin', 'angela.martin@company.com', 60000, 2, 2, '2015-05-22'),
('Kevin', 'Malone', 'kevin.malone@company.com', 42000, 2, 2, '2016-06-18'),
('Creed', 'Bratton', 'creed.bratton@company.com', 38000, 5, 11, '2010-03-11'),
('Kelly', 'Kapoor', 'kelly.kapoor@company.com', 43000, 4, NULL, '2012-07-19'),
('Ryan', 'Howard', 'ryan.howard@company.com', 39000, 4, NULL, '2013-09-05'),
('Toby', 'Flenderson', 'toby.flenderson@company.com', 59000, 1, NULL, '2009-04-10');

