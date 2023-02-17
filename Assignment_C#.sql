create database Project_C#
go
use Project_C#
go

create table tblAdmin (
	adminID varchar(50),
	fullName nvarchar(50),
	password varchar(30),
	status bit 
)

create table tblMenuItems (
	menuItemID int IDENTITY (1,1) primary key not null,
	itemName nvarchar(50),
	itemPrice float check(itemPrice>0),
	description nvarchar(500) ,
	itemSize varchar(20),
	ImgName varchar(25),
	menuItemType varchar(30),
	status bit 
)
create table tblOrders (
	orderID int IDENTITY (1,1) primary key not null,
	CustomerName nvarchar(50),
	ContactPerson nvarchar(50),
	Address nvarchar(50),
	Tel varchar(15),
	PaymentType varchar(15),
	Description varchar(500),
	TotalPrice varchar(50),
	orderDate smalldatetime
)
create table tblOrderDetails (
	detailID int IDENTITY (1,1) primary key not null,
	orderID int foreign key references tblOrders(orderID),
	menuItemID int foreign key references tblMenuItems(menuItemID),
	amount int check(amount>0),
	price int
)


USE [Project_C#]
GO

/****** Object:  StoredProcedure [dbo].[SPOrders]    Script Date: 3/25/2021 13:36:13 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

Create proc [dbo].[SPOrders]
	@CustomerName nvarchar(50), 
	@ContactPerson nvarchar(50), 
	@Address nvarchar(100), 
	@Tel varchar(15), 
	@PaymentType varchar(15), 
	@Description nvarchar(500),
	@TotalValue varchar(50)
As	 
	Insert into tblOrders 
values 
	(@CustomerName, @ContactPerson, @Address, @Tel, @PaymentType, @Description, @TotalValue, getdate())
	return @@IDENTITY
GO


USE [Project_C#]
GO

/****** Object:  StoredProcedure [dbo].[SPOrderDetails]    Script Date: 3/25/2021 13:36:44 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


Create proc [dbo].[SPOrderDetails]
	@OrderID int, 
	@ItemID int, 
	@Quantity int, 
	@Price int
As	 
	Insert into tblOrderDetails
	values(@OrderID, @ItemID, @Quantity,@Price)
GO


Insert into tblAdmin 
values('admin', 'Do The Duong', '1', 1)

Insert into tblMenuItems 
values('Blanket Shirt', 200000, 'Standard fit, order a size up for you.', 'M', 'BlanketShirt.jpg', 'Shirt', 1)
Insert into tblMenuItems 
values('Blanket Shirt', 200000, 'Standard fit, order a size up for you.', 'XL', 'BlanketShirt.jpg', 'Shirt', 1)
Insert into tblMenuItems 
values('Blanket Shirt', 200000, 'Standard fit, order a size up for you.', 'S', 'BlanketShirt.jpg', 'Shirt', 1)
Insert into tblMenuItems 
values('Blanket Shirt', 200000, 'Standard fit, order a size up for you.', 'L', 'BlanketShirt.jpg', 'Shirt', 1)
Insert into tblMenuItems 
values('Button Down Shirt', 230000, 'Standard fit, order a size up for you.', 'L', 'ButtonDownShirt.jpg', 'Shirt', 1)
Insert into tblMenuItems 
values('Button Down Shirt', 230000, 'Standard fit, order a size up for you.', 'S', 'ButtonDownShirt.jpg', 'Shirt', 1)
Insert into tblMenuItems 
values('Button Down Shirt', 230000, 'Standard fit, order a size up for you.', 'XL', 'ButtonDownShirt.jpg', 'Shirt', 1)
Insert into tblMenuItems 
values('Button Down Shirt', 230000, 'Standard fit, order a size up for you.', 'M', 'ButtonDownShirt.jpg', 'Shirt', 1)

Insert into tblMenuItems 
values('Montana Pants', 150000, 'Standard fit, order a size up for you.', '28', 'MontanaPants.jpg', 'Pants', 1)
Insert into tblMenuItems 
values('Montana Pants', 150000, 'Standard fit, order a size up for you.', '29', 'MontanaPants.jpg', 'Pants', 1)
Insert into tblMenuItems 
values('Montana Pants', 150000, 'Standard fit, order a size up for you.', '30', 'MontanaPants.jpg', 'Pants', 1)
Insert into tblMenuItems 
values('Montana Pants', 150000, 'Standard fit, order a size up for you.', '31', 'MontanaPants.jpg', 'Pants', 1)
Insert into tblMenuItems 
values('Federate Pants', 170000, 'Standard fit, order a size up for you.', '31', 'FederatePants.jpg', 'Pants', 1)
Insert into tblMenuItems 
values('Federate Pants', 170000, 'Standard fit, order a size up for you.', '30', 'FederatePants.jpg', 'Pants', 1)
Insert into tblMenuItems 
values('Federate Pants', 170000, 'Standard fit, order a size up for you.', '29', 'FederatePants.jpg', 'Pants', 1)
Insert into tblMenuItems 
values('Federate Pants', 170000, 'Standard fit, order a size up for you.', '28', 'FederatePants.jpg', 'Pants', 1)

	
	


		