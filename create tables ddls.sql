USE BUDT703_DB_Student_214
ALTER TABLE [Terps.Employee]
DROP CONSTRAINT IF EXISTS fk_Employee_dptId
DROP TABLE IF EXISTS [Terps.Dependent]
DROP TABLE IF EXISTS [Terps.Work]
DROP TABLE IF EXISTS [Terps.Project]
DROP TABLE IF EXISTS [Terps.DepartmentLocation]
DROP TABLE IF EXISTS [Terps.Department]
DROP TABLE IF EXISTS [Terps.Employee]
CREATE TABLE [Terps.Employee](
empSSN CHAR(9) NOT NULL,
empFName VARCHAR(20),
empMInit VARCHAR(20),
empLName VARCHAR(20),
empDOB DATE,
empGender CHAR(6), 
empStreet VARCHAR(30),
empCity VARCHAR(20),
empState CHAR(2), 
empZip VARCHAR(9), 
empSalary DECIMAL(10,2), 
sprEmpSSN CHAR(9), 
dptId CHAR(5),
CONSTRAINT pk_Employee_empSSN PRIMARY KEY (empSSN)
)
INSERT INTO [Terps.Employee] VALUES 
('111111111','George','Johnson','Puthean','7/26/1994','Male','3422 GRADUATE 
HILLS','Hyattsville','MD','20783',9000,NULL,'D001')
INSERT INTO [Terps.Employee] VALUES
('222222222','Smith','Clarence','Henry','8/5/1993','Male','2109 U 
CITY','Adelphi','MD','20754',5000,'111111111','D001')
CREATE TABLE [Terps.Department] (
dptId CHAR(5) NOT NULL, 
dptName VARCHAR(20), 
mgrEmpSSN CHAR(9) NOT NULL, 
mgrStartDate DATE,
CONSTRAINT pk_Department_dptId PRIMARY KEY (dptId),
CONSTRAINT fk_Department_mgrEmpSSN FOREIGN KEY (mgrEmpSSN)
REFERENCES [Terps.Employee] (empSSN)
ON DELETE NO ACTION ON UPDATE NO ACTION
)
INSERT INTO [Terps.Department] VALUES 
('D001','Headquarters','111111111','2/26/2021')
ALTER TABLE [Terps.Employee]
ADD CONSTRAINT fk_Employee_dptId FOREIGN KEY (dptId)
REFERENCES [Terps.Department] (dptId)
ON DELETE NO ACTION ON UPDATE NO ACTION,
CONSTRAINT fk_Employee_sprEmpSSN FOREIGN KEY (sprEmpSSN)
REFERENCES [Terps.Employee] (empSSN)
ON DELETE NO ACTION ON UPDATE NO ACTION
CREATE TABLE [Terps.DepartmentLocation] (
dptId CHAR(5) NOT NULL, 
dptLoc VARCHAR(20) NOT NULL,
CONSTRAINT pk_DepartmentLocation_dptId_dptLoc PRIMARY KEY (dptId, dptLoc),
CONSTRAINT fk_DepartmentLocation_dptId FOREIGN KEY (dptId)
REFERENCES [Terps.Department] (dptId)
ON DELETE CASCADE ON UPDATE CASCADE
)
INSERT INTO [Terps.DepartmentLocation] VALUES ('D001','11111.23467')
CREATE TABLE [Terps.Project](
prjId CHAR(5) NOT NULL,
prjName VARCHAR(20),
prjLoc VARCHAR(20),
dptId CHAR(5) NOT NULL,
CONSTRAINT pk_Project_prjId PRIMARY KEY (prjId),
CONSTRAINT fk_Project_dptId FOREIGN KEY (dptId)
REFERENCES [Terps.Department] (dptId)
ON DELETE CASCADE ON UPDATE CASCADE
)
INSERT INTO [Terps.Project] VALUES('P001','PRJ_HomeWork','2222.67889','D001')
CREATE TABLE [Terps.Work](
empSSN CHAR(9) NOT NULL, 
prjId CHAR(5) NOT NULL,
hours DECIMAL(4,2),
CONSTRAINT pk_Work_empSSN_prjId PRIMARY KEY (empSSN, prjId),
CONSTRAINT fk_Work_empSSN FOREIGN KEY (empSSN)
REFERENCES [Terps.Employee] (empSSN)
ON DELETE NO ACTION ON UPDATE NO ACTION,
CONSTRAINT fk_Work_prjId FOREIGN KEY (prjId)
REFERENCES [Terps.Project] (prjId)
ON DELETE NO ACTION ON UPDATE NO ACTION
)
INSERT INTO [Terps.Work] VALUES('111111111','P001',24.5)
CREATE  TABLE [Terps.Dependent] (
empSSN CHAR(9) NOT NULL, 
dpdName VARCHAR(20), 
dpdDOB DATE, 
dpdGender CHAR(6), 
relationship VARCHAR(20),
CONSTRAINT pk_Dependent_empSSN_dpdName PRIMARY KEY (empSSN, dpdName),
CONSTRAINT fk_Dependent_empSSN FOREIGN KEY (empSSN)
REFERENCES [Terps.Employee] (empSSN)
ON DELETE CASCADE ON UPDATE CASCADE
)
INSERT INTO [Terps.Dependent] 
VALUES('111111111','Johnson','7/26/1975','Male','Father')