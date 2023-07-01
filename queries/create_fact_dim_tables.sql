USE DWH_Project;

CREATE TABLE DimCustomer (
	CustomerID INT NOT NULL PRIMARY KEY,
	FirstName VARCHAR(50) NOT NULL,
	LastName VARCHAR(50) NOT NULL,
	CustomerName VARCHAR(255) NOT NULL,
	Age INT NOT NULL,
	Gender VARCHAR(50) NOT NULL,
	City VARCHAR(50) NOT NULL,
	NoHp VARCHAR(50) NOT NULL
);

CREATE TABLE DimStatusOrder (
	StatusID INT NOT NULL PRIMARY KEY,	
	StatusOrder VARCHAR(50) NOT NULL,
	StatusOrderDesc VARCHAR(50) NOT NULL
);

CREATE TABLE DimProduct (
	ProductID INT NOT NULL PRIMARY KEY,
	ProductName VARCHAR(255) NOT NULL,
	ProductCategory VARCHAR(255) NOT NULL,
	ProductUnitPrice INT NULL
);

CREATE TABLE FactSalesOrder (
	OrderID INT NOT NULL PRIMARY KEY,
	CustomerID INT NOT NULL,
	ProductID INT NOT NULL,
	Quantity INT NOT NULL,
	Amount INT NOT NULL,
	StatusID INT NOT NULL,
	OrderDate DATE NOT NULL,
);