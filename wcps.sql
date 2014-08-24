USE master
GO
IF EXISTS(SELECT * FROM sys.databases WHERE name = 'WCPS') 
DROP DATABASE WCPS
GO
CREATE DATABASE WCPS
GO
USE WCPS
----------------------------------------CREATE TABLE----------------------------------------
--------------------Tables relating Employee--------------------
GO
CREATE TABLE State
(
        StateId int IDENTITY(1,1) PRIMARY KEY,
        StateName nvarchar(63) NOT NULL,
)
GO
CREATE TABLE City
(
        CityId int IDENTITY(1,1) PRIMARY KEY,
        CityName nvarchar(63) NOT NULL,
        StateId int FOREIGN KEY REFERENCES State(StateId) NOT NULL
)
GO
CREATE TABLE Salary
(
        SalaryId int IDENTITY(1,1) PRIMARY KEY,
        SettingDate date NOT NULL,
        MinSalaryAmount decimal NOT NULL
)
GO
CREATE TABLE Position
(
        PositionId int IDENTITY(1,1) PRIMARY KEY,
        PositionName nvarchar(63) NOT NULL,
        PRC float NOT NULL,                                     --PRC: Position Reimbursement Coefficient
        SRC     float NOT NULL,                                 --SRC: Seniority Reimbursement Coefficient
        BSC float NOT NULL,                                     --BSC: Basic Salary Coefficient         
        SalaryId int FOREIGN KEY REFERENCES Salary(SalaryId) NOT NULL,
        Note nvarchar(255)
)
GO
CREATE TABLE Employee
(
        EmployeeId int IDENTITY(1,1) PRIMARY KEY,
        Image nvarchar(255),
        FirstName nvarchar(31) NOT NULL,
        LastName nvarchar(31) NOT NULL,
        Gender bit NOT NULL,
        DateOfBirth date NOT NULL,
        Address nvarchar(127) NOT NULL,
        CityId int FOREIGN KEY REFERENCES City(CityId) NOT NULL,
        StateId int,                                                                                                    --FOREIGN KEY REFERENCES State(StateId) NOT NULL,
        PhoneNumber nvarchar(15),
        Email nvarchar(63),
        PositionId int FOREIGN KEY REFERENCES Position(PositionId) NOT NULL,
        DateOfJoining date NOT NULL, 
        Note nvarchar(255)
)

--------------------Tables relating to Account--------------------
GO
CREATE TABLE Role
(
        RoleId int IDENTITY(1,1) PRIMARY KEY,
        RoleName nvarchar(63) NOT NULL
)
GO 
CREATE TABLE AccountInCompany
(
        AccountId int IDENTITY(1,1) PRIMARY KEY,
        UserName nvarchar(127) NOT NULL,
        Password nvarchar(127) NOT NULL,
        RoleId int FOREIGN KEY REFERENCES Role(RoleId) NOT NULL,
        EmployeeId int FOREIGN KEY REFERENCES Employee(EmployeeId)
)
GO
CREATE TABLE TypeOfTransition
(
        TypeId int IDENTITY(1,1) PRIMARY KEY,
        TypeName nvarchar(63) NOT NULL
)
GO
CREATE TABLE TransactionRecord
(
        RecordId int IDENTITY(1, 1) PRIMARY KEY,
        TypeId int FOREIGN KEY REFERENCES TypeOfTransition(TypeId),
        DateOfTransaction date NOT NULL,
        Deposit decimal, 
        ReceiveFrom nvarchar(255),
        Withdrawal decimal,
        PayTo nvarchar(255),
        Balance decimal,
        Memo nvarchar(1024)
)
GO
CREATE TABLE AccountInBank
(
        AccountId int IDENTITY(1, 1) PRIMARY KEY,   
        EmployeeId int FOREIGN KEY REFERENCES Employee(EmployeeId),
        RecordId int FOREIGN KEY REFERENCES TransactionRecord(RecordId)
)

--------------------Tables relating to Claim--------------------
GO
CREATE TABLE ClaimStatus
(
        StatusId int IDENTITY(1,1) PRIMARY KEY,
        StatusName nvarchar(15) NOT NULL,
)
GO 
CREATE TABLE Claim
(
        ClaimId int IDENTITY(1,1) PRIMARY KEY,
        DateOfClaim datetime NOT NULL,
        Header nvarchar(225) NOT NULL, 
        
        DateOfExpense date NOT NULL,                            
        ServiceProvider nvarchar(255) NOT NULL,
        ProviderAddress nvarchar(255) NOT NULL,
        PhoneNumber nvarchar(15),
        Email nvarchar(255),
        
        Medicine nvarchar(1024),
        MedicineCost decimal,
        LaboratoryTest nvarchar(1024),
        LaboratoryTestCost decimal,
        Surgery nvarchar(1024),
        SurgeryCost decimal,
        OtherItems nvarchar(1024),
        OtherItemsCost decimal,
        Note nvarchar(2048),
        StatusId int FOREIGN KEY REFERENCES ClaimStatus(StatusId),      -- approved, processed, cancelled
        EmployeeId int FOREIGN KEY REFERENCES Employee(EmployeeId)
)

----------------------------------------INSERT DATA----------------------------------------
--------------------Insert data into the tables of Employee--------------------
------ Table State
GO 
INSERT INTO State
VALUES ('Alabama')
GO
INSERT INTO State
VALUES ('Alaska')
GO
INSERT INTO State
VALUES ('Arizona')
GO
INSERT INTO State
VALUES ('Arkansas')
GO
INSERT INTO State
VALUES ('California')
GO
INSERT INTO State
VALUES ('Colorado')
GO
INSERT INTO State
VALUES ('Connecticut')
GO
INSERT INTO State
VALUES ('Delaware')
GO
INSERT INTO State
VALUES ('Florida')
GO
INSERT INTO State
VALUES ('Georgia')

---- Table City ----
GO
INSERT INTO City
VALUES ('Huntsville', 1)
GO
INSERT INTO City
VALUES ('Anchorage', 2)
GO
INSERT INTO City
VALUES ('Phoenix', 3)
GO
INSERT INTO City
VALUES ('Little Rock', 4)
GO
INSERT INTO City
VALUES ('Los Angeles', 5)
GO
INSERT INTO City
VALUES ('Denver', 6)
GO
INSERT INTO City
VALUES ('Bridgeport', 7)
GO
INSERT INTO City
VALUES ('Wilmington', 8)
GO
INSERT INTO City
VALUES ('Jacksonville', 9)
GO
INSERT INTO City
VALUES ('Folkston', 10)

---- Table Salary ----  
GO 
INSERT INTO Salary
VALUES ('2011-06-01', 4500)     
GO 
INSERT INTO Salary
VALUES ('2012-01-02', 5000)
GO 
INSERT INTO Salary
VALUES ('2012-07-04', 5200)     

---- Table Position
GO
INSERT INTO Position
VALUES ('Chairman', 0.9, 0.09, 3.1, 3, '')
GO
INSERT INTO Position
VALUES ('CEO', 0.8, 0.08, 2.9, 3, '')
GO
INSERT INTO Position
VALUES ('CIO', 0.7, 0.07, 2.8, 3, '')
GO
INSERT INTO Position
VALUES ('Director', 0.6, 0.06, 2.5, 3, '')
GO
INSERT INTO Position
VALUES ('Secretary', 0.5, 0.05, 1.5, 3, '')     
GO
INSERT INTO Position
VALUES ('Staff', 0.4, 0.09, 1.2, 3, '') 

---- Table Employee
GO
INSERT INTO Employee
VALUES ('<image>', 'Michael', 'Miller', 1, '1964-12-01', 'Room No. 1709, 5192 Sacandaga Rd', 1, 1, '(518) 882-7426', 'michael_miller@gmail.com', 1, '1988-03-05', ' ')
GO
INSERT INTO Employee
VALUES ('<image>', 'Mary', 'Johnson', 0, '1977-05-06', 'Room No. 309, 38 Hawthorne Dr', 9, 9, '(603) 644-2000', 'mary_johnson@gmail.com', 4, '2000-08-04', ' ')
GO
INSERT INTO Employee
VALUES ('<image>', 'James', 'Smith', 1, '1979-11-09', '1st Floor, 260 Cape Split Rd', 2, 2, '(207) 483-4397', 'james_smith@gmail.com', 5, '2005-09-23', ' ')
GO
INSERT INTO Employee
VALUES ('<image>', 'Elizabeth', 'Taylor', 0, '1984-04-28', '1016 7th St', 8, 8, '(715) 339-3428', 'elizabeth_taylor@gmail.com', 5, '2006-08-19', ' ')
GO
INSERT INTO Employee
VALUES ('<image>', 'Lisa', 'Lewis', 0, '1972-06-11', '517 Benfield Rd Ste 304', 3, 3, '(410) 618-6084', 'lisa_lewis@gmail.com', 2, '1993-09-25', ' ')
GO
INSERT INTO Employee
VALUES ('<image>', 'Harry', 'Rivera', 1, '1987-03-21', 'N9791 Deer Creek Rd', 7, 7, '(715) 339-3428', 'harry_rivera@gmail.com', 5, '2008-11-05', ' ')
GO
INSERT INTO Employee
VALUES ('<image>', 'Sharon', 'Carter', 0, '1968-02-09', '138 N Cache St', 4, 4, '(307) 733-4339', 'sharon_carter@gmail.com', 5, '1990-07-12', ' ')
GO
INSERT INTO Employee
VALUES ('<image>', 'Edward', 'Nelson', 1, '1985-12-16', '20 Four Mile Dr Ste 1', 6, 6, '(406) 752-8583', 'edward_nelson@gmail.com', 5, '2009-12-30', ' ')
GO
INSERT INTO Employee
VALUES ('<image>', 'Daniel', 'Lee', 1, '1982-11-21', '600 Amherst Ln', 5, 5, '(804) 834-3010', 'daniel_lee@gmail.com', 3, '2007-06-13', ' ')
GO
INSERT INTO Employee
VALUES ('<image>', 'Ruth', 'Gonzalez', 0, '1985-08-03', '220 N Myrtle St', 10, 10, '(208) 983-1491', 'ruth_gonzalez@gmail.com', 4, '2008-02-25', ' ')

--------------------Insert data into the tables of Account--------------------
----------Table Role----------
GO 
INSERT INTO Role
VALUES ('Admin')
GO
INSERT INTO Role
VALUES ('Management')
GO
INSERT INTO Role
VALUES ('Employee')

----------Table AccountInCompany----------
GO
INSERT INTO AccountInCompany
VALUES ('MichaelMiller', '123456', 2, 1)
GO
INSERT INTO AccountInCompany
VALUES ('MaryJohnson', '123456', 3, 2)
GO
INSERT INTO AccountInCompany
VALUES ('admin', '123456', 1, 3)
GO
INSERT INTO AccountInCompany
VALUES ('ElizabethTaylor', '123456', 3, 4)
GO
INSERT INTO AccountInCompany
VALUES ('LisaLewis', '123456', 2, 5)
GO
INSERT INTO AccountInCompany
VALUES ('HarryRivera', '123456', 3, 6)
GO
INSERT INTO AccountInCompany
VALUES ('SharonCarter', '123456', 3, 7)
GO
INSERT INTO AccountInCompany
VALUES ('EdwardNelson', '123456', 3, 8)
GO
INSERT INTO AccountInCompany
VALUES ('DanielLee', '123456', 2, 9)
GO
INSERT INTO AccountInCompany
VALUES ('RuthGonzalez', '123456', 3, 10)

----------Table TypeOfTransition----------
GO
INSERT INTO TypeOfTransition
VALUES ('Cash')
GO
INSERT INTO TypeOfTransition
VALUES ('Checking')
GO
INSERT INTO TypeOfTransition
VALUES ('Credit Card')
GO
INSERT INTO TypeOfTransition
VALUES ('Escrow')
GO
INSERT INTO TypeOfTransition
VALUES ('Investment')
GO
INSERT INTO TypeOfTransition
VALUES ('Loan')
GO
INSERT INTO TypeOfTransition
VALUES ('Savings')

----------Table TransactionRecord----------
GO
INSERT INTO TransactionRecord
VALUES (1, '2012-03-05', 0, '', 0, '', 1000000, '')
GO
INSERT INTO TransactionRecord
VALUES (2, '2012-04-01', 0, '', 0, '', 55000, '')
GO
INSERT INTO TransactionRecord
VALUES (3, '2012-07-12', 0, '', 0, '', 25000, '')
GO
INSERT INTO TransactionRecord
VALUES (4, '2012-02-19', 0, '', 0, '', 34400, '')
GO
INSERT INTO TransactionRecord
VALUES (5, '2012-05-23', 0, '', 0, '', 21000, '')
GO
INSERT INTO TransactionRecord
VALUES (6, '2012-04-30', 0, '', 0, '', 41000, '')
GO
INSERT INTO TransactionRecord
VALUES (7, '2012-09-15', 0, '', 0, '', 29000, '')
GO
INSERT INTO TransactionRecord
VALUES (1, '2012-08-24', 0, '', 0, '', 36500, '')
GO
INSERT INTO TransactionRecord
VALUES (2, '2012-10-12', 0, '', 0, '', 32500, '')
GO
INSERT INTO TransactionRecord
VALUES (3, '2012-06-19', 0, '', 0, '', 45600, '')

----------Table AccountInBank----------
GO
INSERT INTO AccountInBank
VALUES (1, 1)   
GO
INSERT INTO AccountInBank
VALUES (2, 2)
GO
INSERT INTO AccountInBank
VALUES (3, 3)
GO
INSERT INTO AccountInBank
VALUES (4, 4)
GO
INSERT INTO AccountInBank
VALUES (5, 5)
GO
INSERT INTO AccountInBank
VALUES (6, 6)
GO
INSERT INTO AccountInBank
VALUES (7, 7)
GO
INSERT INTO AccountInBank
VALUES (8, 8)
GO
INSERT INTO AccountInBank
VALUES (9, 9)
GO
INSERT INTO AccountInBank
VALUES (10, 10) 
        
                                 
--------------------Insert data into the tables of Claim--------------------
----------Table ClaimStutus----------
GO
INSERT INTO ClaimStatus
VALUES ('Processed')
GO
INSERT INTO ClaimStatus
VALUES ('Approved')
GO
INSERT INTO ClaimStatus
VALUES ('Cancelled')

----------Table Claim----------                          
GO
INSERT INTO Claim
VALUES ('2012-09-04', 'Claim for the pneumonia', '2012-04-13', 'Crestwood Medical Center', '220 N Myrtle St, Grangeville', '(812) 268-3941', 'crestwood_mc@gmail.com',
 'Bacampicillin - Cefotaxime', 250, 'None', 0, 'None', 0, 'None', 0, 'None', 2, 1)      --pneumonia: benh viem phoi
GO
INSERT INTO Claim
VALUES ('2011-12-05', 'Claim for having headache', '2010-07-01', 'Providence Alaska Medical Center', '5192 Sacandaga Rd, Galway', '(419) 929-7516', 'pa_mc@yahoo.com',
 'Paracetamol - Zolmitriptan - Methysergide', 150, 'None', 0, 'None', 0, 'None', 0, 'None', 3, 2)
GO
INSERT INTO Claim
VALUES ('2012-05-02', 'Claim for having toothache', '2012-03-06', 'Arizona Heart Hospital', '260 Cape Split Rd, Addison', '(701) 788-8845', 'arizona_heart_hospital@gmail.com', 
 'Acetaminophen Oral - Genapap Oral', 36, 'None', 0, 'Tooth extraction', 50, 'None', 0, 'None', 1, 3)                            
GO
INSERT INTO Claim
VALUES ('2010-01-23', 'Claim for having broken leg', '2010-04-07', 'Southwest Regional Medical Center', '38 Hawthorne Dr', '(651) 345-2470', 'sr_mc@hotmail.com', 
 'Ibuprofen - Acetaminophen', 85, 'None', 0, 'Sutures', 120, 'None', 0, 'None', 2, 4)
GO
INSERT INTO Claim
VALUES ('2011-06-17', 'Claim for having mumps', '2011-09-28', 'California Hospital Medical Center', '273 Main St # 1', '(828) 645-2974', 'california_hmc@yahoo.com', 
 'Vaccine', 20, 'None', 0, 'None', 0, 'None', 0, 'None', 2, 5)
GO
INSERT INTO Claim
VALUES ('2009-08-19', 'Claim for having heart disease', '2010-02-05', 'Exempla Saint Joseph Hospital', '100 Cummings Ctr Suite 434JJ', '(706) 485-4886', 'esj_hospital@gmail.com', 
 'Antiarrhythmics - Digoxin - Thrombolytics', 308, 'Blood test - Urine', 24, 'Heart surgery', 2500, 'None', 0, 'None', 1, 6)
GO
INSERT INTO Claim
VALUES ('2010-11-28', 'Claim for having kidney stones', '2010-12-09', 'Bridgeport Hospital', '125 Providence St', '(928) 535-5080', 'bridgeport_hospital@hotmail.com', 
 'Tamsulosin - Tiopronin - Potassium Citrate', 285, 'None', 0, 'Surgery removal of stones', 1240, 'None', 0, 'None', 3, 7)              --kidney stones: benh soi than
GO
INSERT INTO Claim
VALUES ('2012-07-06', 'Claim for having hepatitis', '2012-10-15', 'Wilmington General Hospital', '350 US Highway 46 Ste 501', '(530) 525-3314', 'wg_hospital@yahoo.com', 
 'Telaprevir - Boceprevir - Thymalfasin - Interferon Alfacon-1', 810, 'Blood test - Urine', 46, 'None', 0, 'None', 0, 'None', 1, 8)     --hepatitis: benh viem gan
GO
INSERT INTO Claim
VALUES ('2011-10-21', 'Claim for having stomatchache', '2011-11-08', 'St. Vincent''s Medical Center Riverside', 'N9791 Deer Creek Rd', '(808) 329-7000', 'sv_mc_riverside@gmail.com', 
 'Doxycycline - Levofloxacin - Pantoprazole', 146, 'Blood test - Urine', 57, 'Gastric bypass surgery', 1850, 'None', 0, 'None', 2, 9)
GO
INSERT INTO Claim
VALUES ('2012-08-10', 'Claim for having inflammatory bowel', '2012-09-17', 'Charlton Memorial Hospital', '1401 W Frosty Dr', '(210) 658-9215', 'charlton_memorial_hospital@gmail.com', 
 'Infliximab - Cannabinoids', 730, 'Blood test - Urine', 23, 'None', 0, 'None', 0, 'None', 1, 10)       -- inflammatory bowel: benh viem ruot
                                 
                                 
                                 