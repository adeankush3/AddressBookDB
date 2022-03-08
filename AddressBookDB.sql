create database AddressBookDB

use AddressBookDB

create table PersonContact(
Id int identity(1,1) NOT NULL PRIMARY KEY,
FirstName varchar(16) ,
LastName varchar(16),
Address varchar(24),
City varchar(16),
State varchar(16),
ZipCode varchar(6),
PhoneNumber varchar(16),
EmailId varchar(24)
);

/* Insert query */
Insert into PersonContact(FirstName,LastName,Address,State,ZipCode,PhoneNumber,EmailId) values 
('Ankush','Ade','Walki','Nanded','MH','431712','9689902117','Ankushade3@mail.com'),
('Nityanand','Gore','Washim Road','Washim','MH','421013','9988558899','Nityanandgore@mail.com'),
('Manish','Kumar','ramnagar','Varanasi','UP','411042','8877995544','ManishKumar@mail.com'),
('Riya','D','Vivekanand Nagar','Chennai','Tamil Nadu','600005','7744112233','riyad@mail.com'),
('Neha','G','Havda','Kolkata','West Bangal','700073','7775553330','nehag@mail.com');

/* Select or retrive data query */
select * from PersonContact;

/* UPDATE query */
UPDATE PersonContact set State='Maharashtra' where FirstName='Ankush' or FirstName='Nityanand'

/* ALTER, DROP query to remove data column */
ALTER table PersonContact DROP column Address;

/* Alter to add new column */
ALTER table PersonContact Add Gender varchar(2);
UPDATE PersonContact set Gender='M' where FirstName='Ankush' or FirstName='Nityanand' or FirstName='Manish'
UPDATE PersonContact set Gender='F' where FirstName='Riya' or FirstName='Neha'

/* SELECT with WHERE condition */
SELECT FirstName,EmailId,City from PersonContact where State='Maharashtra';

/* using database function and group by */
Select COUNT(FirstName) as MalePersonCount From PersonContact Where Gender='M' Group by Gender;
Select COUNT(FirstName) as FemalePersonCount From PersonContact Where Gender='F' Group by Gender;
