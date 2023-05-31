create database JOINPROBLEM;
use JOINPROBLEM;
--table
create Table Customer(
ID INT identity(1,1) Primary Key,
Name varchar(20),
City varchar(20),
Country varchar(20),
);
select * from Customer;
Alter Table Customer Drop Column Country;
Insert into Customer values('Ask','KKd','IND');
Insert into Customer values('anand','Rjy','IND');
Insert into Customer values('Kumar','Yab','IND');
Insert into Customer values('Sai','PIt','IND');
--product table
create Table Product(
ProductId int identity(1,1) Primary Key,
ProductName varchar(20),
);
select * from Product;
Insert into Product Values('Phone');
Insert into Product Values('Laptop');
Insert into Product Values('EarBuds');

--SupplierTable
create Table Supplier(
SupplierID int identity(1,1) Primary Key,
SupllierName varchar(20),
);
select * from Supplier;
Insert into Supplier values('agency');
Insert into Supplier values('PrivateLMT');

--order table
create Table ord(
OrderID int identity(1,1) Primary Key,
OrderDate Date,
);
select * from ord;
Insert into ord values('2023-05-20');
Insert into ord values('2023-05-15');
Insert into ord values('2023-05-25');

--country table
create Table Country(
CountryID int identity(1,1) primary key,
CountryName varchar(20),
);
Insert into Country values('IND');
Insert into Country values('IND');
Insert into Country values('IND');
Insert into Country values('IND');
Insert into Country values('IND');

--Join select order along with name od customer who placed order
select Customer.ID,Customer.Name,ord.OrderID,ord.OrderDate from Customer
join
ord on Customer.ID=ord.OrderID;

--join Select all customers along with the name and city of their country
select Customer.ID,Customer.Name,Customer.City,Country.CountryName from Customer
join 
Country on Customer.ID=Country.CountryID;

--Select all products along with their supplier name
select Product.ProductId,Product.ProductName,Supplier.SupllierName from Product
join
Supplier on Product.ProductId=Supplier.SupplierID;

--Select all orders along with the name and city of the customer and the name of the product ordered:
select Customer.ID,Customer.Name,Customer.City,Product.ProductName,ord.OrderDate from ord
join Product on ord.OrderID=Product.ProductId
join Customer on ord.OrderID=Customer.ID;

--EMployeeTable
create Table EMPDETAILS(
ID INT identity(1,1) Primary Key,
Name varchar(20),

);
select * from EMPDETAILS;
Insert into EMPDETAILS Values('Jordan');
Insert into EMPDETAILS Values('Archer');
Insert into EMPDETAILS Values('Bretlee');
Insert into EMPDETAILS Values('Poo');
Insert into EMPDETAILS Values('Kram');

--DepartmentTable
create Table Department(
DepartmentID int identity(1,1) Primary Key,
DepartmentName varchar(20),
DepartmentCity varchar(20),
);
select * from Department;
Insert into Department Values('Coder','Hyd');
Insert into Department Values('Tester','AP');
Insert into Department Values('Coder','Hyd');
--Join//Emp
select EMPDETAILS.ID,EMPDETAILS.Name,Department.DepartmentName,Department.DepartmentCity from EMPDETAILS
Inner join
Department on EMPDETAILS.ID=Department.DepartmentID;
