USE [WCPS]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 08/21/2014 16:38:09 ******/
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
SET IDENTITY_INSERT [dbo].[Role] ON
INSERT [dbo].[Role] ([RoleId], [RoleName]) VALUES (1, N'Admin')
INSERT [dbo].[Role] ([RoleId], [RoleName]) VALUES (2, N'Management')
INSERT [dbo].[Role] ([RoleId], [RoleName]) VALUES (3, N'Employee')
SET IDENTITY_INSERT [dbo].[Role] OFF
/****** Object:  Table [dbo].[Employee]    Script Date: 08/21/2014 16:38:09 ******/
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
SET IDENTITY_INSERT [dbo].[Employee] ON
INSERT [dbo].[Employee] ([EmployeeId], [Image], [FirstName], [LastName], [Gender], [DateOfBirth], [Address], [PhoneNumber], [Email], [DateOfJoining], [Note]) VALUES (1, N'<image>', N'Michael', N'Miller', 1, CAST(0xF9F10A00 AS Date), N'Room No. 1709, 5192 Sacandaga Rd', N'(518) 882-7426', N'michael_miller@gmail.com', CAST(0x28130B00 AS Date), N' ')
INSERT [dbo].[Employee] ([EmployeeId], [Image], [FirstName], [LastName], [Gender], [DateOfBirth], [Address], [PhoneNumber], [Email], [DateOfJoining], [Note]) VALUES (2, N'<image>', N'Mary', N'Johnson', 0, CAST(0xB4030B00 AS Date), N'Room No. 309, 38 Hawthorne Dr', N'(603) 644-2000', N'mary_johnson@gmail.com', CAST(0xDF240B00 AS Date), N' ')
INSERT [dbo].[Employee] ([EmployeeId], [Image], [FirstName], [LastName], [Gender], [DateOfBirth], [Address], [PhoneNumber], [Email], [DateOfJoining], [Note]) VALUES (3, N'<image>', N'James', N'Smith', 1, CAST(0x49070B00 AS Date), N'1st Floor, 260 Cape Split Rd', N'(207) 483-4397', N'james_smith@gmail.com', CAST(0x332C0B00 AS Date), N' ')
INSERT [dbo].[Employee] ([EmployeeId], [Image], [FirstName], [LastName], [Gender], [DateOfBirth], [Address], [PhoneNumber], [Email], [DateOfJoining], [Note]) VALUES (4, N'<image>', N'Elizabeth', N'Taylor', 0, CAST(0xA90D0B00 AS Date), N'1016 7th St', N'(715) 339-3428', N'elizabeth_taylor@gmail.com', CAST(0x7D2D0B00 AS Date), N' ')
INSERT [dbo].[Employee] ([EmployeeId], [Image], [FirstName], [LastName], [Gender], [DateOfBirth], [Address], [PhoneNumber], [Email], [DateOfJoining], [Note]) VALUES (5, N'<image>', N'Lisa', N'Lewis', 0, CAST(0xB6FC0A00 AS Date), N'517 Benfield Rd Ste 304', N'(410) 618-6084', N'lisa_lewis@gmail.com', CAST(0x161B0B00 AS Date), N' ')
INSERT [dbo].[Employee] ([EmployeeId], [Image], [FirstName], [LastName], [Gender], [DateOfBirth], [Address], [PhoneNumber], [Email], [DateOfJoining], [Note]) VALUES (6, N'<image>', N'Harry', N'Rivera', 1, CAST(0xCA110B00 AS Date), N'N9791 Deer Creek Rd', N'(715) 339-3428', N'harry_rivera@gmail.com', CAST(0xA6300B00 AS Date), N' ')
INSERT [dbo].[Employee] ([EmployeeId], [Image], [FirstName], [LastName], [Gender], [DateOfBirth], [Address], [PhoneNumber], [Email], [DateOfJoining], [Note]) VALUES (7, N'<image>', N'Sharon', N'Carter', 0, CAST(0x86F60A00 AS Date), N'138 N Cache St', N'(307) 733-4339', N'sharon_carter@gmail.com', CAST(0x83160B00 AS Date), N' ')
INSERT [dbo].[Employee] ([EmployeeId], [Image], [FirstName], [LastName], [Gender], [DateOfBirth], [Address], [PhoneNumber], [Email], [DateOfJoining], [Note]) VALUES (8, N'<image>', N'Edward', N'Nelson', 1, CAST(0xFE0F0B00 AS Date), N'20 Four Mile Dr Ste 1', N'(406) 752-8583', N'edward_nelson@gmail.com', CAST(0x4A320B00 AS Date), N' ')
INSERT [dbo].[Employee] ([EmployeeId], [Image], [FirstName], [LastName], [Gender], [DateOfBirth], [Address], [PhoneNumber], [Email], [DateOfJoining], [Note]) VALUES (9, N'<image>', N'Daniel', N'Lee', 1, CAST(0x9D0B0B00 AS Date), N'600 Amherst Ln', N'(804) 834-3010', N'daniel_lee@gmail.com', CAST(0xA72E0B00 AS Date), N' ')
INSERT [dbo].[Employee] ([EmployeeId], [Image], [FirstName], [LastName], [Gender], [DateOfBirth], [Address], [PhoneNumber], [Email], [DateOfJoining], [Note]) VALUES (10, N'<image>', N'Ruth', N'Gonzalez', 0, CAST(0x770F0B00 AS Date), N'220 N Myrtle St', N'(208) 983-1491', N'ruth_gonzalez@gmail.com', CAST(0xA82F0B00 AS Date), N' ')
SET IDENTITY_INSERT [dbo].[Employee] OFF
/****** Object:  Table [dbo].[ClaimStatus]    Script Date: 08/21/2014 16:38:09 ******/
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
SET IDENTITY_INSERT [dbo].[ClaimStatus] ON
INSERT [dbo].[ClaimStatus] ([StatusId], [StatusName]) VALUES (1, N'Processed')
INSERT [dbo].[ClaimStatus] ([StatusId], [StatusName]) VALUES (2, N'Approved')
INSERT [dbo].[ClaimStatus] ([StatusId], [StatusName]) VALUES (3, N'Cancelled')
SET IDENTITY_INSERT [dbo].[ClaimStatus] OFF
/****** Object:  Table [dbo].[TypeOfTransition]    Script Date: 08/21/2014 16:38:09 ******/
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
SET IDENTITY_INSERT [dbo].[TypeOfTransition] ON
INSERT [dbo].[TypeOfTransition] ([TypeId], [TypeName]) VALUES (1, N'Cash')
INSERT [dbo].[TypeOfTransition] ([TypeId], [TypeName]) VALUES (2, N'Checking')
INSERT [dbo].[TypeOfTransition] ([TypeId], [TypeName]) VALUES (3, N'Credit Card')
INSERT [dbo].[TypeOfTransition] ([TypeId], [TypeName]) VALUES (4, N'Escrow')
INSERT [dbo].[TypeOfTransition] ([TypeId], [TypeName]) VALUES (5, N'Investment')
INSERT [dbo].[TypeOfTransition] ([TypeId], [TypeName]) VALUES (6, N'Loan')
INSERT [dbo].[TypeOfTransition] ([TypeId], [TypeName]) VALUES (7, N'Savings')
SET IDENTITY_INSERT [dbo].[TypeOfTransition] OFF
/****** Object:  Table [dbo].[TransactionRecord]    Script Date: 08/21/2014 16:38:09 ******/
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
SET IDENTITY_INSERT [dbo].[TransactionRecord] ON
INSERT [dbo].[TransactionRecord] ([RecordId], [TypeId], [DateOfTransaction], [Deposit], [ReceiveFrom], [Withdrawal], [PayTo], [Balance], [Memo]) VALUES (1, 1, CAST(0x66350B00 AS Date), CAST(0 AS Decimal(18, 0)), N'', CAST(0 AS Decimal(18, 0)), N'', CAST(1000000 AS Decimal(18, 0)), N'')
INSERT [dbo].[TransactionRecord] ([RecordId], [TypeId], [DateOfTransaction], [Deposit], [ReceiveFrom], [Withdrawal], [PayTo], [Balance], [Memo]) VALUES (2, 2, CAST(0x81350B00 AS Date), CAST(0 AS Decimal(18, 0)), N'', CAST(0 AS Decimal(18, 0)), N'', CAST(55000 AS Decimal(18, 0)), N'')
INSERT [dbo].[TransactionRecord] ([RecordId], [TypeId], [DateOfTransaction], [Deposit], [ReceiveFrom], [Withdrawal], [PayTo], [Balance], [Memo]) VALUES (3, 3, CAST(0xE7350B00 AS Date), CAST(0 AS Decimal(18, 0)), N'', CAST(0 AS Decimal(18, 0)), N'', CAST(25000 AS Decimal(18, 0)), N'')
INSERT [dbo].[TransactionRecord] ([RecordId], [TypeId], [DateOfTransaction], [Deposit], [ReceiveFrom], [Withdrawal], [PayTo], [Balance], [Memo]) VALUES (4, 4, CAST(0x57350B00 AS Date), CAST(0 AS Decimal(18, 0)), N'', CAST(0 AS Decimal(18, 0)), N'', CAST(34400 AS Decimal(18, 0)), N'')
INSERT [dbo].[TransactionRecord] ([RecordId], [TypeId], [DateOfTransaction], [Deposit], [ReceiveFrom], [Withdrawal], [PayTo], [Balance], [Memo]) VALUES (5, 5, CAST(0xB5350B00 AS Date), CAST(0 AS Decimal(18, 0)), N'', CAST(0 AS Decimal(18, 0)), N'', CAST(21000 AS Decimal(18, 0)), N'')
INSERT [dbo].[TransactionRecord] ([RecordId], [TypeId], [DateOfTransaction], [Deposit], [ReceiveFrom], [Withdrawal], [PayTo], [Balance], [Memo]) VALUES (6, 6, CAST(0x9E350B00 AS Date), CAST(0 AS Decimal(18, 0)), N'', CAST(0 AS Decimal(18, 0)), N'', CAST(41000 AS Decimal(18, 0)), N'')
INSERT [dbo].[TransactionRecord] ([RecordId], [TypeId], [DateOfTransaction], [Deposit], [ReceiveFrom], [Withdrawal], [PayTo], [Balance], [Memo]) VALUES (7, 7, CAST(0x28360B00 AS Date), CAST(0 AS Decimal(18, 0)), N'', CAST(0 AS Decimal(18, 0)), N'', CAST(29000 AS Decimal(18, 0)), N'')
INSERT [dbo].[TransactionRecord] ([RecordId], [TypeId], [DateOfTransaction], [Deposit], [ReceiveFrom], [Withdrawal], [PayTo], [Balance], [Memo]) VALUES (8, 1, CAST(0x12360B00 AS Date), CAST(0 AS Decimal(18, 0)), N'', CAST(0 AS Decimal(18, 0)), N'', CAST(36500 AS Decimal(18, 0)), N'')
INSERT [dbo].[TransactionRecord] ([RecordId], [TypeId], [DateOfTransaction], [Deposit], [ReceiveFrom], [Withdrawal], [PayTo], [Balance], [Memo]) VALUES (9, 2, CAST(0x43360B00 AS Date), CAST(0 AS Decimal(18, 0)), N'', CAST(0 AS Decimal(18, 0)), N'', CAST(32500 AS Decimal(18, 0)), N'')
INSERT [dbo].[TransactionRecord] ([RecordId], [TypeId], [DateOfTransaction], [Deposit], [ReceiveFrom], [Withdrawal], [PayTo], [Balance], [Memo]) VALUES (10, 3, CAST(0xD0350B00 AS Date), CAST(0 AS Decimal(18, 0)), N'', CAST(0 AS Decimal(18, 0)), N'', CAST(45600 AS Decimal(18, 0)), N'')
SET IDENTITY_INSERT [dbo].[TransactionRecord] OFF
/****** Object:  Table [dbo].[Claim]    Script Date: 08/21/2014 16:38:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Claim](
	[ClaimId] [int] IDENTITY(1,1) NOT NULL,
	[DateOfClaim] [datetime] NOT NULL,
	[Header] [nvarchar](225) NOT NULL,
	[DateOfExpense] [date] NOT NULL,
	[ServiceProvider] [nvarchar](255) NOT NULL,
	[ProviderAddress] [nvarchar](255) NOT NULL,
	[PhoneNumber] [nvarchar](15) NULL,
	[Email] [nvarchar](255) NULL,
	[Medicine] [nvarchar](1024) NULL,
	[MedicineCost] [decimal](18, 0) NULL,
	[LaboratoryTest] [nvarchar](1024) NULL,
	[LaboratoryTestCost] [decimal](18, 0) NULL,
	[Surgery] [nvarchar](1024) NULL,
	[SurgeryCost] [decimal](18, 0) NULL,
	[OtherItems] [nvarchar](1024) NULL,
	[OtherItemsCost] [decimal](18, 0) NULL,
	[Note] [nvarchar](2048) NULL,
	[StatusId] [int] NULL,
	[EmployeeId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ClaimId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Claim] ON
INSERT [dbo].[Claim] ([ClaimId], [DateOfClaim], [Header], [DateOfExpense], [ServiceProvider], [ProviderAddress], [PhoneNumber], [Email], [Medicine], [MedicineCost], [LaboratoryTest], [LaboratoryTestCost], [Surgery], [SurgeryCost], [OtherItems], [OtherItemsCost], [Note], [StatusId], [EmployeeId]) VALUES (1, CAST(0x0000A0C200000000 AS DateTime), N'Claim for the pneumonia', CAST(0x8D350B00 AS Date), N'Crestwood Medical Center', N'220 N Myrtle St, Grangeville', N'(812) 268-3941', N'crestwood_mc@gmail.com', N'Bacampicillin - Cefotaxime', CAST(250 AS Decimal(18, 0)), N'None', CAST(0 AS Decimal(18, 0)), N'None', CAST(0 AS Decimal(18, 0)), N'None', CAST(0 AS Decimal(18, 0)), N'None', 2, 1)
INSERT [dbo].[Claim] ([ClaimId], [DateOfClaim], [Header], [DateOfExpense], [ServiceProvider], [ProviderAddress], [PhoneNumber], [Email], [Medicine], [MedicineCost], [LaboratoryTest], [LaboratoryTestCost], [Surgery], [SurgeryCost], [OtherItems], [OtherItemsCost], [Note], [StatusId], [EmployeeId]) VALUES (2, CAST(0x00009FB000000000 AS DateTime), N'Claim for having headache', CAST(0x01330B00 AS Date), N'Providence Alaska Medical Center', N'5192 Sacandaga Rd, Galway', N'(419) 929-7516', N'pa_mc@yahoo.com', N'Paracetamol - Zolmitriptan - Methysergide', CAST(150 AS Decimal(18, 0)), N'None', CAST(0 AS Decimal(18, 0)), N'None', CAST(0 AS Decimal(18, 0)), N'None', CAST(0 AS Decimal(18, 0)), N'None', 3, 2)
INSERT [dbo].[Claim] ([ClaimId], [DateOfClaim], [Header], [DateOfExpense], [ServiceProvider], [ProviderAddress], [PhoneNumber], [Email], [Medicine], [MedicineCost], [LaboratoryTest], [LaboratoryTestCost], [Surgery], [SurgeryCost], [OtherItems], [OtherItemsCost], [Note], [StatusId], [EmployeeId]) VALUES (3, CAST(0x0000A04500000000 AS DateTime), N'Claim for having toothache', CAST(0x67350B00 AS Date), N'Arizona Heart Hospital', N'260 Cape Split Rd, Addison', N'(701) 788-8845', N'arizona_heart_hospital@gmail.com', N'Acetaminophen Oral - Genapap Oral', CAST(36 AS Decimal(18, 0)), N'None', CAST(0 AS Decimal(18, 0)), N'Tooth extraction', CAST(50 AS Decimal(18, 0)), N'None', CAST(0 AS Decimal(18, 0)), N'None', 1, 3)
INSERT [dbo].[Claim] ([ClaimId], [DateOfClaim], [Header], [DateOfExpense], [ServiceProvider], [ProviderAddress], [PhoneNumber], [Email], [Medicine], [MedicineCost], [LaboratoryTest], [LaboratoryTestCost], [Surgery], [SurgeryCost], [OtherItems], [OtherItemsCost], [Note], [StatusId], [EmployeeId]) VALUES (4, CAST(0x00009D0700000000 AS DateTime), N'Claim for having broken leg', CAST(0xAC320B00 AS Date), N'Southwest Regional Medical Center', N'38 Hawthorne Dr', N'(651) 345-2470', N'sr_mc@hotmail.com', N'Ibuprofen - Acetaminophen', CAST(85 AS Decimal(18, 0)), N'None', CAST(0 AS Decimal(18, 0)), N'Sutures', CAST(120 AS Decimal(18, 0)), N'None', CAST(0 AS Decimal(18, 0)), N'None', 2, 4)
INSERT [dbo].[Claim] ([ClaimId], [DateOfClaim], [Header], [DateOfExpense], [ServiceProvider], [ProviderAddress], [PhoneNumber], [Email], [Medicine], [MedicineCost], [LaboratoryTest], [LaboratoryTestCost], [Surgery], [SurgeryCost], [OtherItems], [OtherItemsCost], [Note], [StatusId], [EmployeeId]) VALUES (5, CAST(0x00009F0500000000 AS DateTime), N'Claim for having mumps', CAST(0xC7340B00 AS Date), N'California Hospital Medical Center', N'273 Main St # 1', N'(828) 645-2974', N'california_hmc@yahoo.com', N'Vaccine', CAST(20 AS Decimal(18, 0)), N'None', CAST(0 AS Decimal(18, 0)), N'None', CAST(0 AS Decimal(18, 0)), N'None', CAST(0 AS Decimal(18, 0)), N'None', 2, 5)
INSERT [dbo].[Claim] ([ClaimId], [DateOfClaim], [Header], [DateOfExpense], [ServiceProvider], [ProviderAddress], [PhoneNumber], [Email], [Medicine], [MedicineCost], [LaboratoryTest], [LaboratoryTestCost], [Surgery], [SurgeryCost], [OtherItems], [OtherItemsCost], [Note], [StatusId], [EmployeeId]) VALUES (6, CAST(0x00009C6A00000000 AS DateTime), N'Claim for having heart disease', CAST(0x6F320B00 AS Date), N'Exempla Saint Joseph Hospital', N'100 Cummings Ctr Suite 434JJ', N'(706) 485-4886', N'esj_hospital@gmail.com', N'Antiarrhythmics - Digoxin - Thrombolytics', CAST(308 AS Decimal(18, 0)), N'Blood test - Urine', CAST(24 AS Decimal(18, 0)), N'Heart surgery', CAST(2500 AS Decimal(18, 0)), N'None', CAST(0 AS Decimal(18, 0)), N'None', 1, 6)
INSERT [dbo].[Claim] ([ClaimId], [DateOfClaim], [Header], [DateOfExpense], [ServiceProvider], [ProviderAddress], [PhoneNumber], [Email], [Medicine], [MedicineCost], [LaboratoryTest], [LaboratoryTestCost], [Surgery], [SurgeryCost], [OtherItems], [OtherItemsCost], [Note], [StatusId], [EmployeeId]) VALUES (7, CAST(0x00009E3C00000000 AS DateTime), N'Claim for having kidney stones', CAST(0xA2330B00 AS Date), N'Bridgeport Hospital', N'125 Providence St', N'(928) 535-5080', N'bridgeport_hospital@hotmail.com', N'Tamsulosin - Tiopronin - Potassium Citrate', CAST(285 AS Decimal(18, 0)), N'None', CAST(0 AS Decimal(18, 0)), N'Surgery removal of stones', CAST(1240 AS Decimal(18, 0)), N'None', CAST(0 AS Decimal(18, 0)), N'None', 3, 7)
INSERT [dbo].[Claim] ([ClaimId], [DateOfClaim], [Header], [DateOfExpense], [ServiceProvider], [ProviderAddress], [PhoneNumber], [Email], [Medicine], [MedicineCost], [LaboratoryTest], [LaboratoryTestCost], [Surgery], [SurgeryCost], [OtherItems], [OtherItemsCost], [Note], [StatusId], [EmployeeId]) VALUES (8, CAST(0x0000A08600000000 AS DateTime), N'Claim for having hepatitis', CAST(0x46360B00 AS Date), N'Wilmington General Hospital', N'350 US Highway 46 Ste 501', N'(530) 525-3314', N'wg_hospital@yahoo.com', N'Telaprevir - Boceprevir - Thymalfasin - Interferon Alfacon-1', CAST(810 AS Decimal(18, 0)), N'Blood test - Urine', CAST(46 AS Decimal(18, 0)), N'None', CAST(0 AS Decimal(18, 0)), N'None', CAST(0 AS Decimal(18, 0)), N'None', 1, 8)
INSERT [dbo].[Claim] ([ClaimId], [DateOfClaim], [Header], [DateOfExpense], [ServiceProvider], [ProviderAddress], [PhoneNumber], [Email], [Medicine], [MedicineCost], [LaboratoryTest], [LaboratoryTestCost], [Surgery], [SurgeryCost], [OtherItems], [OtherItemsCost], [Note], [StatusId], [EmployeeId]) VALUES (9, CAST(0x00009F8300000000 AS DateTime), N'Claim for having stomatchache', CAST(0xF0340B00 AS Date), N'St. Vincent''s Medical Center Riverside', N'N9791 Deer Creek Rd', N'(808) 329-7000', N'sv_mc_riverside@gmail.com', N'Doxycycline - Levofloxacin - Pantoprazole', CAST(146 AS Decimal(18, 0)), N'Blood test - Urine', CAST(57 AS Decimal(18, 0)), N'Gastric bypass surgery', CAST(1850 AS Decimal(18, 0)), N'None', CAST(0 AS Decimal(18, 0)), N'None', 2, 9)
INSERT [dbo].[Claim] ([ClaimId], [DateOfClaim], [Header], [DateOfExpense], [ServiceProvider], [ProviderAddress], [PhoneNumber], [Email], [Medicine], [MedicineCost], [LaboratoryTest], [LaboratoryTestCost], [Surgery], [SurgeryCost], [OtherItems], [OtherItemsCost], [Note], [StatusId], [EmployeeId]) VALUES (10, CAST(0x0000A0A900000000 AS DateTime), N'Claim for having inflammatory bowel', CAST(0x2A360B00 AS Date), N'Charlton Memorial Hospital', N'1401 W Frosty Dr', N'(210) 658-9215', N'charlton_memorial_hospital@gmail.com', N'Infliximab - Cannabinoids', CAST(730 AS Decimal(18, 0)), N'Blood test - Urine', CAST(23 AS Decimal(18, 0)), N'None', CAST(0 AS Decimal(18, 0)), N'None', CAST(0 AS Decimal(18, 0)), N'None', 1, 10)
SET IDENTITY_INSERT [dbo].[Claim] OFF
/****** Object:  Table [dbo].[AccountInCompany]    Script Date: 08/21/2014 16:38:09 ******/
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
SET IDENTITY_INSERT [dbo].[AccountInCompany] ON
INSERT [dbo].[AccountInCompany] ([AccountId], [UserName], [Password], [RoleId], [EmployeeId]) VALUES (1, N'MichaelMiller', N'123456', 2, 1)
INSERT [dbo].[AccountInCompany] ([AccountId], [UserName], [Password], [RoleId], [EmployeeId]) VALUES (2, N'MaryJohnson', N'123456', 3, 2)
INSERT [dbo].[AccountInCompany] ([AccountId], [UserName], [Password], [RoleId], [EmployeeId]) VALUES (3, N'admin', N'123456', 1, 3)
INSERT [dbo].[AccountInCompany] ([AccountId], [UserName], [Password], [RoleId], [EmployeeId]) VALUES (4, N'ElizabethTaylor', N'123456', 3, 4)
INSERT [dbo].[AccountInCompany] ([AccountId], [UserName], [Password], [RoleId], [EmployeeId]) VALUES (5, N'LisaLewis', N'123456', 2, 5)
INSERT [dbo].[AccountInCompany] ([AccountId], [UserName], [Password], [RoleId], [EmployeeId]) VALUES (6, N'HarryRivera', N'123456', 3, 6)
INSERT [dbo].[AccountInCompany] ([AccountId], [UserName], [Password], [RoleId], [EmployeeId]) VALUES (7, N'SharonCarter', N'123456', 3, 7)
INSERT [dbo].[AccountInCompany] ([AccountId], [UserName], [Password], [RoleId], [EmployeeId]) VALUES (8, N'EdwardNelson', N'123456', 3, 8)
INSERT [dbo].[AccountInCompany] ([AccountId], [UserName], [Password], [RoleId], [EmployeeId]) VALUES (9, N'DanielLee', N'123456', 2, 9)
INSERT [dbo].[AccountInCompany] ([AccountId], [UserName], [Password], [RoleId], [EmployeeId]) VALUES (10, N'RuthGonzalez', N'123456', 3, 10)
SET IDENTITY_INSERT [dbo].[AccountInCompany] OFF
/****** Object:  Table [dbo].[AccountInBank]    Script Date: 08/21/2014 16:38:09 ******/
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
SET IDENTITY_INSERT [dbo].[AccountInBank] ON
INSERT [dbo].[AccountInBank] ([AccountId], [EmployeeId], [RecordId]) VALUES (1, 1, 1)
INSERT [dbo].[AccountInBank] ([AccountId], [EmployeeId], [RecordId]) VALUES (2, 2, 2)
INSERT [dbo].[AccountInBank] ([AccountId], [EmployeeId], [RecordId]) VALUES (3, 3, 3)
INSERT [dbo].[AccountInBank] ([AccountId], [EmployeeId], [RecordId]) VALUES (4, 4, 4)
INSERT [dbo].[AccountInBank] ([AccountId], [EmployeeId], [RecordId]) VALUES (5, 5, 5)
INSERT [dbo].[AccountInBank] ([AccountId], [EmployeeId], [RecordId]) VALUES (6, 6, 6)
INSERT [dbo].[AccountInBank] ([AccountId], [EmployeeId], [RecordId]) VALUES (7, 7, 7)
INSERT [dbo].[AccountInBank] ([AccountId], [EmployeeId], [RecordId]) VALUES (8, 8, 8)
INSERT [dbo].[AccountInBank] ([AccountId], [EmployeeId], [RecordId]) VALUES (9, 9, 9)
INSERT [dbo].[AccountInBank] ([AccountId], [EmployeeId], [RecordId]) VALUES (10, 10, 10)
SET IDENTITY_INSERT [dbo].[AccountInBank] OFF
/****** Object:  ForeignKey [FK__AccountIn__Emplo__2A4B4B5E]    Script Date: 08/21/2014 16:38:09 ******/
ALTER TABLE [dbo].[AccountInBank]  WITH CHECK ADD FOREIGN KEY([EmployeeId])
REFERENCES [dbo].[Employee] ([EmployeeId])
GO
/****** Object:  ForeignKey [FK__AccountIn__Recor__2B3F6F97]    Script Date: 08/21/2014 16:38:09 ******/
ALTER TABLE [dbo].[AccountInBank]  WITH CHECK ADD FOREIGN KEY([RecordId])
REFERENCES [dbo].[TransactionRecord] ([RecordId])
GO
/****** Object:  ForeignKey [FK__AccountIn__Emplo__1CF15040]    Script Date: 08/21/2014 16:38:09 ******/
ALTER TABLE [dbo].[AccountInCompany]  WITH CHECK ADD FOREIGN KEY([EmployeeId])
REFERENCES [dbo].[Employee] ([EmployeeId])
GO
/****** Object:  ForeignKey [FK__AccountIn__RoleI__1BFD2C07]    Script Date: 08/21/2014 16:38:09 ******/
ALTER TABLE [dbo].[AccountInCompany]  WITH CHECK ADD FOREIGN KEY([RoleId])
REFERENCES [dbo].[Role] ([RoleId])
GO
/****** Object:  ForeignKey [FK__Claim__EmployeeI__34C8D9D1]    Script Date: 08/21/2014 16:38:09 ******/
ALTER TABLE [dbo].[Claim]  WITH CHECK ADD FOREIGN KEY([EmployeeId])
REFERENCES [dbo].[Employee] ([EmployeeId])
GO
/****** Object:  ForeignKey [FK__Claim__StatusId__33D4B598]    Script Date: 08/21/2014 16:38:09 ******/
ALTER TABLE [dbo].[Claim]  WITH CHECK ADD FOREIGN KEY([StatusId])
REFERENCES [dbo].[ClaimStatus] ([StatusId])
GO
/****** Object:  ForeignKey [FK__Transacti__TypeI__25869641]    Script Date: 08/21/2014 16:38:09 ******/
ALTER TABLE [dbo].[TransactionRecord]  WITH CHECK ADD FOREIGN KEY([TypeId])
REFERENCES [dbo].[TypeOfTransition] ([TypeId])
GO
