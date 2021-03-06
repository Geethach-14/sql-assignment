USE [store]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 22-04-2022 09:28:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[id] [int] NOT NULL,
	[Customer_FirstName] [nvarchar](40) NULL,
	[Customer_LastName] [nvarchar](40) NULL,
	[Customer_City] [nvarchar](40) NULL,
	[Customer_Country] [nvarchar](40) NULL,
	[Customer_Phone] [nvarchar](20) NULL,
	[Faxnumber] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderItem]    Script Date: 22-04-2022 09:28:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderItem](
	[id] [int] NOT NULL,
	[OrderId] [int] NULL,
	[ProductId] [int] NULL,
	[UnitPrice] [decimal](12, 2) NULL,
	[Quality] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 22-04-2022 09:28:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[id] [int] NOT NULL,
	[Orders_OrderDate] [int] NOT NULL,
	[Orders_datetime] [int] NULL,
	[Orders_OrderNumber] [nvarchar](10) NULL,
	[Orders_TotalAmount] [decimal](12, 2) NULL,
	[Orders_CustomerId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 22-04-2022 09:28:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[id] [int] NOT NULL,
	[ProductName] [nvarchar](50) NULL,
	[UnitPrice] [decimal](12, 2) NULL,
	[Package] [nvarchar](30) NULL,
	[IsDiscontinued] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Customer] ([id], [Customer_FirstName], [Customer_LastName], [Customer_City], [Customer_Country], [Customer_Phone], [Faxnumber]) VALUES (1, N'Gilbert', N'Salmon', N'NewYork', N'America', N'9999999999', NULL)
INSERT [dbo].[Customer] ([id], [Customer_FirstName], [Customer_LastName], [Customer_City], [Customer_Country], [Customer_Phone], [Faxnumber]) VALUES (2, N'Chinam', N'Rekha', N'Chennai', N'India', N'9999999889', NULL)
INSERT [dbo].[Customer] ([id], [Customer_FirstName], [Customer_LastName], [Customer_City], [Customer_Country], [Customer_Phone], [Faxnumber]) VALUES (3, N'Anna', N'Bhargavi', N'Hyderabad', N'India', N'8888888889', NULL)
INSERT [dbo].[Customer] ([id], [Customer_FirstName], [Customer_LastName], [Customer_City], [Customer_Country], [Customer_Phone], [Faxnumber]) VALUES (4, N'Isobel', N'Petrova', N'Berlin', N'Germany', N'8888888889', 4)
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([Orders_CustomerId])
REFERENCES [dbo].[Customer] ([id])
GO
