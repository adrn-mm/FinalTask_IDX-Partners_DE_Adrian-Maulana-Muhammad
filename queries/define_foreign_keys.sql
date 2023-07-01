USE DWH_Project;

ALTER TABLE FactSalesOrder
    ADD FOREIGN KEY (CustomerID) REFERENCES DimCustomer(CustomerID),
		FOREIGN KEY (ProductID) REFERENCES DimProduct(ProductID),
		FOREIGN KEY (StatusID) REFERENCES DimStatusOrder(StatusID);