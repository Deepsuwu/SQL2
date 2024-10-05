DROP PROCEDURE IF EXISTS [DBO].[Output]
GO

CREATE PROCEDURE [DBO].[Output]
(
	@v_CustId		VARCHAR(10)
)
AS
BEGIN
	BEGIN TRY
		
		IF @v_CustId ='ALL'
		BEGIN
			SELECT cd.Cust_Name, SUM(od.Qty*id.Price) AS Amount_Purchased
			FROM [DBO].[Tbl_OrderDetails] AS od
				LEFT JOIN [DBO].[Item_Details] AS id
				ON od.ItemID = id.ItemID
				LEFT JOIN [DBO].[Customer_Details] AS cd
				ON od.Cust_ID = cd.Cust_ID	
				GROUP BY cd.Cust_Name	
		END

		ELSE
		BEGIN 
			SELECT cd.Cust_Name, SUM(od.Qty*id.Price) AS Amount_Purchased
			FROM [DBO].[Tbl_OrderDetails] AS od
				LEFT JOIN [DBO].[Item_Details] AS id
				ON od.ItemID = id.ItemID
				LEFT JOIN [DBO].[Customer_Details] AS cd
				ON od.Cust_ID = cd.Cust_ID
				WHERE cd.Cust_ID= @v_CustId
				GROUP BY cd.Cust_Name	
				
		END

	END TRY
	BEGIN CATCH
		SELECT ERROR_NUMBER() AS Error_Numbers,
				ERROR_MESSAGE() AS Error_Messages
	END CATCH
END

EXECUTE [DBO].[Output] @v_CustId ='C1'