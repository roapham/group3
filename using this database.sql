CREATE DATABASE DataSem4
GO
USE DataSem4
GO
/****** Object:  Table [dbo].[TypeOfTransition]    Script Date: 08/24/2014 10:04:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeOfTransition](
	[TypeId] [int] IDENTITY(1,1) NOT NULL,
	[TypeName] [nvarchar](63) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TypeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TreatmentList]    Script Date: 08/24/2014 10:04:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TreatmentList](
	[TreatmentId] [int] NOT NULL,
	[TreatmentName] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_TreatmentList] PRIMARY KEY CLUSTERED 
(
	[TreatmentId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 08/24/2014 10:04:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[RoleId] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](63) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 08/24/2014 10:04:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[EmployeeId] [int] IDENTITY(1,1) NOT NULL,
	[Image] [nvarchar](255) NULL,
	[FirstName] [nvarchar](31) NOT NULL,
	[LastName] [nvarchar](31) NOT NULL,
	[Gender] [bit] NOT NULL,
	[DateOfBirth] [date] NOT NULL,
	[Address] [nvarchar](127) NOT NULL,
	[PhoneNumber] [nvarchar](15) NULL,
	[Email] [nvarchar](63) NULL,
	[DateOfJoining] [date] NOT NULL,
	[Note] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[EmployeeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClaimStatus]    Script Date: 08/24/2014 10:04:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClaimStatus](
	[StatusId] [int] IDENTITY(1,1) NOT NULL,
	[StatusName] [nvarchar](15) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[StatusId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClaimContain]    Script Date: 08/24/2014 10:04:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClaimContain](
	[ClaimContainId] [int] NOT NULL,
	[TreatmentId] [int] NOT NULL,
	[Cost] [decimal](18, 0) NOT NULL,
	[ServiceProvider] [nvarchar](255) NOT NULL,
	[ProviderAddress] [nvarchar](255) NOT NULL,
	[ProviderPhone] [nvarchar](15) NULL,
	[ProviderEmail] [nvarchar](255) NULL,
 CONSTRAINT [PK_ClaimContain] PRIMARY KEY CLUSTERED 
(
	[ClaimContainId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TransactionRecord]    Script Date: 08/24/2014 10:04:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TransactionRecord](
	[RecordId] [int] IDENTITY(1,1) NOT NULL,
	[TypeId] [int] NULL,
	[DateOfTransaction] [date] NOT NULL,
	[Deposit] [decimal](18, 0) NULL,
	[ReceiveFrom] [nvarchar](255) NULL,
	[Withdrawal] [decimal](18, 0) NULL,
	[PayTo] [nvarchar](255) NULL,
	[Balance] [decimal](18, 0) NULL,
	[Memo] [nvarchar](1024) NULL,
PRIMARY KEY CLUSTERED 
(
	[RecordId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AccountInCompany]    Script Date: 08/24/2014 10:04:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccountInCompany](
	[AccountId] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](127) NOT NULL,
	[Password] [nvarchar](127) NOT NULL,
	[RoleId] [int] NOT NULL,
	[EmployeeId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[AccountId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AccountInBank]    Script Date: 08/24/2014 10:04:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccountInBank](
	[AccountId] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeId] [int] NULL,
	[RecordId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[AccountId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Claim]    Script Date: 08/24/2014 10:04:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Claim](
	[ClaimId] [int] IDENTITY(1,1) NOT NULL,
	[DateOfClaim] [datetime] NOT NULL,
	[Header] [nvarchar](225) NOT NULL,
	[DateOfExpense] [date] NOT NULL,
	[Note] [nvarchar](2048) NULL,
	[StatusId] [int] NULL,
	[EmployeeId] [int] NULL,
	[ClaimContainId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ClaimId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK__AccountIn__Emplo__2A4B4B5E]    Script Date: 08/24/2014 10:04:20 ******/
ALTER TABLE [dbo].[AccountInBank]  WITH CHECK ADD FOREIGN KEY([EmployeeId])
REFERENCES [dbo].[Employee] ([EmployeeId])
GO
/****** Object:  ForeignKey [FK__AccountIn__Recor__2B3F6F97]    Script Date: 08/24/2014 10:04:20 ******/
ALTER TABLE [dbo].[AccountInBank]  WITH CHECK ADD FOREIGN KEY([RecordId])
REFERENCES [dbo].[TransactionRecord] ([RecordId])
GO
/****** Object:  ForeignKey [FK__AccountIn__Emplo__1CF15040]    Script Date: 08/24/2014 10:04:20 ******/
ALTER TABLE [dbo].[AccountInCompany]  WITH CHECK ADD FOREIGN KEY([EmployeeId])
REFERENCES [dbo].[Employee] ([EmployeeId])
GO
/****** Object:  ForeignKey [FK__AccountIn__RoleI__1BFD2C07]    Script Date: 08/24/2014 10:04:20 ******/
ALTER TABLE [dbo].[AccountInCompany]  WITH CHECK ADD FOREIGN KEY([RoleId])
REFERENCES [dbo].[Role] ([RoleId])
GO
/****** Object:  ForeignKey [FK__Claim__EmployeeI__34C8D9D1]    Script Date: 08/24/2014 10:04:20 ******/
ALTER TABLE [dbo].[Claim]  WITH CHECK ADD  CONSTRAINT [FK__Claim__EmployeeI__34C8D9D1] FOREIGN KEY([EmployeeId])
REFERENCES [dbo].[Employee] ([EmployeeId])
GO
ALTER TABLE [dbo].[Claim] CHECK CONSTRAINT [FK__Claim__EmployeeI__34C8D9D1]
GO
/****** Object:  ForeignKey [FK__Claim__StatusId__33D4B598]    Script Date: 08/24/2014 10:04:20 ******/
ALTER TABLE [dbo].[Claim]  WITH CHECK ADD  CONSTRAINT [FK__Claim__StatusId__33D4B598] FOREIGN KEY([StatusId])
REFERENCES [dbo].[ClaimStatus] ([StatusId])
GO
ALTER TABLE [dbo].[Claim] CHECK CONSTRAINT [FK__Claim__StatusId__33D4B598]
GO
/****** Object:  ForeignKey [FK_Claim_ClaimContain]    Script Date: 08/24/2014 10:04:20 ******/
ALTER TABLE [dbo].[Claim]  WITH CHECK ADD  CONSTRAINT [FK_Claim_ClaimContain] FOREIGN KEY([ClaimContainId])
REFERENCES [dbo].[ClaimContain] ([ClaimContainId])
GO
ALTER TABLE [dbo].[Claim] CHECK CONSTRAINT [FK_Claim_ClaimContain]
GO
/****** Object:  ForeignKey [FK_ClaimContain_TreatmentList]    Script Date: 08/24/2014 10:04:20 ******/
ALTER TABLE [dbo].[ClaimContain]  WITH CHECK ADD  CONSTRAINT [FK_ClaimContain_TreatmentList] FOREIGN KEY([TreatmentId])
REFERENCES [dbo].[TreatmentList] ([TreatmentId])
GO
ALTER TABLE [dbo].[ClaimContain] CHECK CONSTRAINT [FK_ClaimContain_TreatmentList]
GO
/****** Object:  ForeignKey [FK__Transacti__TypeI__25869641]    Script Date: 08/24/2014 10:04:20 ******/
ALTER TABLE [dbo].[TransactionRecord]  WITH CHECK ADD FOREIGN KEY([TypeId])
REFERENCES [dbo].[TypeOfTransition] ([TypeId])
GO
