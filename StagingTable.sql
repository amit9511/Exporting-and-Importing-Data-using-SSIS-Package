USE [AdventureWorks2016CTP3]
GO

/****** Object:  Table [HumanResources].[Employee]    Script Date: 1/24/2019 2:47:33 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [HumanResources].[Employee_Info_Staging](
	[BusinessEntityID] [int] ,
	[NationalIDNumber] [nvarchar](15) NOT NULL,
	[LoginID] [nvarchar](256) NOT NULL,
	[OrganizationNode] [hierarchyid] NULL,
	[OrganizationLevel]  AS ([OrganizationNode].[GetLevel]()),
	[JobTitle] [nvarchar](50) ,
	[BirthDate] [date],
	[MaritalStatus] [nchar](1) ,
	[Gender] [nchar](1) ,
	[HireDate] [date] NOT NULL,
	[SalariedFlag] [dbo].[flag],
	[VacationHours] [smallint] ,
	[SickLeaveHours] [smallint] ,
	[CurrentFlag] [dbo].[flag] ,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[ModifiedDate] [datetime] ,
 CONSTRAINT [Employee_BusinessEntityID] PRIMARY KEY CLUSTERED 
(
	[BusinessEntityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO





