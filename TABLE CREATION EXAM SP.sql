CREATE TABLE [DBO].[Tbl_OrderDetails]
(
	OrderNo				VARCHAR(20),
	ItemID				INT,
	Qty					INT,
	Cust_ID				VARCHAR(10)
)

INSERT INTO [DBO].[Tbl_OrderDetails]
VALUES
('O101',	101,	10,	'C1'),
('O101',	102,	20,	'C1'),
('O101',	103,	20,	'C1'),
('O102',	102,	20,	'C2'),
('O102',	103,	10,	'C2'),
('O103',	103,	30,	'C3')

CREATE TABLE [DBO].[Item_Details]
(
	ItemID				INT,
	ItemName			VARCHAR(50),
	Price				INT
)

INSERT INTO [DBO].[Item_Details]
VALUES
(101,	'Cocunut Oil',	200),
(102,	'Sayabin'	,120),
(103,	'Basmati Rice',	300)

CREATE TABLE [DBO].[Customer_Details]

(
	Cust_ID				VARCHAR(10),
	Cust_Name			VARCHAR(50)
)

INSERT INTO [DBO].[Customer_Details]
VALUES
('C1', 'Rajeev Roy'),
('C2', 'Pratap Kumar'),
('C3', 'Mayank Saxena')
