create database Joins;
use Joins;
--EmployeeTable
create Table Employees(
EmpID INT identity(1,1) Primary Key,
EmpName varchar(20),
DepartmentName varchar(20)
);
select * from Employees;
Insert into Employees values('Ask','EEE');
Insert into Employees values('Ask1','EEE1');
Insert into Employees values('Ask2','Mech');
Insert into Employees values('Ask3','EEE3');
Insert into Employees values('Ask4','Civil');

--DepartmeentTable
create Table Department(
DepartmentID INT identity(100,1) Primary Key,
DepartmentName varchar(20)
);
select * from Department;
Insert into Department values('EEE');
Insert into Department values('Mech');
Insert into Department values('Civil');
Insert into Department values('Ece');


--InnerJoin

select Employees.EmpID,Employees.EmpName,Department.DepartmentName from Employees 
Inner Join
Department on Employees.DepartmentName=Department.DepartmentName;

--LeftJoin

select Employees.EmpID,Employees.EmpName,Employees.DepartmentName,Department.DepartmentID,Department.DepartmentName from Employees
Left Join
Department on Employees.DepartmentName=Department.DepartmentName

select Employees.EmpID,Employees.EmpName,Employees.DepartmentName,Department.DepartmentID,Department.DepartmentName from Employees
Left Join
Department on Employees.DepartmentName=Department.DepartmentName where Department.DepartmentID is Null;

--RightJoin

select Employees.EmpID,Employees.EmpName,Employees.DepartmentName,Department.DepartmentID,Department.DepartmentName from Employees
Right Join
Department on Employees.DepartmentName=Department.DepartmentName; 

--FullJoin

select Employees.EmpID,Employees.EmpName,Employees.DepartmentName,Department.DepartmentID,Department.DepartmentName from Employees
Full Join
Department on Employees.DepartmentName=Department.DepartmentName

--selfJoin
select Employees.EmpID,Employees.EmpName,Employees.DepartmentName,Department.DepartmentID,Department.DepartmentName from Employees
Inner Join
Department on Employees.DepartmentName=Department.DepartmentName order by Department.DepartmentName;
--
select Employees.EmpID,Employees.EmpName,Employees.DepartmentName,Department.DepartmentID,Department.DepartmentName from Employees
Inner Join
Department on Employees.EmpID<Department.DepartmentID and Department.DepartmentName=Department.DepartmentName order by Department.DepartmentName,Employees.EmpID,Department.DepartmentID;

--CrossJoin
select EmpID,Department.DepartmentName  from Employees
Cross Join
Department order by Department.DepartmentID,Department.DepartmentName;
