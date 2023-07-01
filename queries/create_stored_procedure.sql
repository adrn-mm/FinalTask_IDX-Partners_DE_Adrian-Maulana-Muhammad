CREATE PROCEDURE summary_order_status
    @StatusID INT
AS
BEGIN
    -- Definisikan CTE untuk melakukan JOIN antara tabel
    WITH CTE AS (
        SELECT fso.OrderID, dc.CustomerName, dp.ProductName, fso.Quantity, dso.StatusOrder
        FROM FactSalesOrder AS fso
        JOIN DimCustomer AS dc ON fso.CustomerID = dc.CustomerID
        JOIN DimProduct AS dp ON fso.ProductID = dp.ProductID
        JOIN DimStatusOrder AS dso ON fso.StatusID = dso.StatusID
        WHERE dso.StatusID = @StatusID
    )
    -- Menggunakan SELECT untuk memilih kolom dari CTE
    SELECT OrderID, CustomerName, ProductName, Quantity, StatusOrder
    FROM CTE
END
