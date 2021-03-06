if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Buyer_TABLE]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[Buyer_TABLE]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[goodsInfo]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[goodsInfo]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[user]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[user]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[vendition_TABLE]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[vendition_TABLE]
GO

CREATE TABLE [dbo].[Buyer_TABLE] (
	[BuyerID] [int] IDENTITY (1, 1) NOT NULL ,
	[BuyerGoodsName] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[BuyerGoodsNumber] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[BuyerManufacturer] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[BuyerDate] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[BuyerStatus] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[BuyerName] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[goodsInfo] (
	[GoodsID] [int] NOT NULL ,
	[GoodsName] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[GoodsNumber] [int] NULL ,
	[GoodsProduct] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[GoodsPrice] [float] NULL ,
	[GoodsSize] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[user] (
	[userID] [int] IDENTITY (1, 1) NOT NULL ,
	[userName] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[userPassword] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[userAddress] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[userAuthority] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[userGender] [varchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[userAge] [int] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[vendition_TABLE] (
	[VenditionID] [int] IDENTITY (1, 1) NOT NULL ,
	[GoodsName] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[GoodsCustomNumber] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[CustomerName] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[VenditionDate] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[GoodsSize] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[GoodsPrice] [float] NULL 
) ON [PRIMARY]
GO

