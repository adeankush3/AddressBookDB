--------------------------------UC1-Ability to create a Address Book Service DB--------------------------
create database AddressBookDB

use AddressBookDB

---UC2-Ability to create a Address Book Table with first and last names, address, city, state, zip, phone number and email as its attributes

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

----------------------------UC3-Ability to insert new Contacts to Address Book--------------------------

Insert into PersonContact(FirstName,LastName,Address,State,ZipCode,PhoneNumber,EmailId) values ('Ankush','Ade','Walki','Nanded','MH','431712','9689902117','Ankushade3@mail.com')
Insert into PersonContact values ('Nityanand','Gore','Washim Road','Washim','MH','421013','9988558899','Nityanandgore@mail.com')
Insert into PersonContact values ('Manish','Kumar','ramnagar','Varanasi','UP','411042','8877995544','ManishKumar@mail.com')
Insert into PersonContact values ('Riya','D','Vivekanand Nagar','Chennai','Tamil Nadu','600005','7744112233','riyad@mail.com')
Insert into PersonContact values ('Neha','G','Havda','Kolkata','West Bangal','700073','7775553330','nehag@mail.com')

select * from PersonContact;

-------------------UC4-Ability to edit existing contact person using their name--------------------------------------------

UPDATE PersonContact set State='Maharashtra' where FirstName='Ankush' or FirstName='Nityanand'
select * from PersonContact;

-------------UC5-AAbility to delete a person using person's name-------------------

DELETE from PersonContact where FirstName = 'Manish'

SELECT * from PersonContact

----------------------------UC6-Ability to Retrieve Person belonging to a City or State from the Address Book-----------------

SELECT * from PersonContact where State = 'Maharashtra'

----------------------------UC7-Ability to understand the size of address book by City and State----------------

SELECT COUNT(*) from PersonContact

SELECT COUNT(*) from PersonContact where State = 'Maharashtra'

--------------UC8-Ability to retrieve entries sorted alphabetically by Person’s name for a given city-----------

SELECT * from PersonContact ORDER BY FirstName 

SELECT * from PersonContact GROUP BY City ORDER BY FirstName 

-------------UC9-Ability to identify each Address Book with name and type---------

ALTER TABLE PersonContact add addname varchar(50), type varchar(50)

update PersonContact set addname = 'a', type = 'Friend' where id =2

update PersonContact set addname = 'b', type = 'Profession' where id =5

update PersonContact set addname = 'c', type = 'Family' where id =4


SELECT * from PersonContact

-----------UC10-Ability to get number of contact persons i.e. count by type--------

SELECT COUNT(type) from PersonContact


--- ALTER, DROP query to remove data column --
ALTER table PersonContact DROP column Address;

--- Alter to add new column---
ALTER table PersonContact Add Gender varchar(2);
UPDATE PersonContact set Gender='M' where FirstName='Ankush' or FirstName='Nityanand' or FirstName='Manish'
UPDATE PersonContact set Gender='F' where FirstName='Riya' or FirstName='Neha'