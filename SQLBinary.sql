

-- SQL : STRUCTURED QUERY LANGUAGE. 
-- MySQL
-- PostgreSQL
-- Oracle SQL
-- IBM DB2

-- SQL sub Languages -> Conception Catrgories of the functionality of SQL standard
-- DDL - Data Definition language
-- DML - Data Manipulation Language
-- DQL - Data query language
-- DCL - Data control language
-- TCL - Transaction Control Language

-- Database is in the form of rows and columns 
-- Table is called "Entity"
-- Columns are called "Fields or attributes"
-- Rows are called "Records or Tuples"
-- DBMS - Database Management System.
-- Uses query to get the data, or insert the data, or update the date and delete the data.

-- Create, delete databases and tables


-- SQL sub languages - Conception Categories of the functionality of SQL standard.
-- DDL - Data definition Language.
-- It defines the overall data structure - tables and columns
-- Schemas are nothing but a database structure.
-- Two meanings - database structure a schema is like a folder or package in java
-- a conceptional term refers to the full structural design of the database.


-- Commands

-- Create - used to create a new database or tables.
-- alter - changes the existing database or table
-- drop - removes the database or table
-- truncate - delete all the data inside a table but not the structure of the data(table)

-- DML

-- Handling the data inside a table
-- Crud operations - create, read, update, delete
-- Commands
-- insert - it will insert the new data or records or rows in table.
-- update - change the record or records in a table
-- delete -> removes the record from a table
-- Select -> Acesses or read the data from a table
-- select statements are called Quries in SQL

-- DQL -> Data Query Language
-- Select -> Acesses or read the data from a table
-- select statements are called Quries in SQL


-- DCL -> Data Control Language 
-- This is used to grant the level of access to the various users to access the database.
-- Commands
-- Grant
-- Revoke


-- TCL -> Transaction Control Language.
-- This is releted to transactions. there are the grouping of releated SQL statemenst to ensure that
-- they succeed or fail collectively.
-- Commands
-- Begin
-- Commit
-- Rollback
-- set

-- MYSQL Datatypes
-- a dataype is a constraint upon a column in table indicating that only that type of data
-- can be held in that column.
-- VARCHAR(size). -> it a set of characters(like string), we can limit the number of chatactors with size.
-- BOOL / BOOLEAN -> stored as a byte value, 0 -> false, any other value is true;
-- INT / INTEGER(size) -> A medium signed interger value -2147483648 to 2147483647.
-- FLOAT(size, decimal) -> size -> defines the max number of digits
-- -> decimal -> defined the number of digits that are after the decimal point.
-- ex: 34.56 -> FLOAT(4, 2)
--  467.5617 -> FLOAT(7,4)
--  467.12
--  046.0
--  600.1
-- DOUBLE(size, decimal) -> it can take larger numbers then float.
-- TIMESTAMP -> specific moemnt in time -> format is yyyy_mm_dd hh:mm:ss
-- single quotes needed -> char, varchar, dates, datetime, timestamp, time, blob, text
-- Not needed for -> int / float / double

-- Null values represent missing or unknown data
-- Null !== 0, Null means empty values.
-- ------------------------------------------------------------------------

-- Creating a database

create database firstDb;

drop database firstdb;
-- creating
create database secondDb;
create database thirdDb;
create database fourthDb;
create database fifthDb;
create database sixthDb;
-- deleting 
drop database secondDb;
drop database thirdDb;
drop database fourthDb;
drop database fifthDb;
drop database sixthDb;


-- create table
use firstdb; -- selecting which database the table will go

create table person(
id int,
firstName varchar(30),
lastName varchar(30),
phoneNumber int(10),
email varchar(30),
address varchar(200),
city varchar(20)
);

show tables; -- showing tables.

drop table person; -- deleting the table

alter table person drop column city; -- to delete a column 

alter table person rename column phoneNumber to mobilenumber; - -- renaming

alter table person add zipcode int(5); -- adding a column

alter table person modify column address varchar(100); -- modifying size


select * from person; 

insert into person (id, firstName, lastName, mobilenumber, email, address, zipcode)
values(1, 'Akash', 'Khan', 573290, 'mdakash@semo.edu','Cape Girardeau, MO', 63701 );

insert into person (id, firstName, lastName) values (2, 'ashraf', 'hussain');

insert into person (id,firstName,lastName,mobilenumber,email,address,zipcode)
values (3, 'sharif', 'rhine', 123456, 'rhine@semo.edu','Lansing, Michigan', 12345),
(4, 'shahahdat', 'ullah', 122456, 'shahadat@semo.edu','Warner Robbins, Atlanta', 12555);

SELECT * from person;

-- ------------------------------------------------------------------------------------

Create database uclTeams;
Create table teams(
teamName varchar(40),
numberOfPlayers int(5),
countryofclub varchar(100),
positionintable int(100),
stadiumname varchar (40),
coachname varchar(40)
);
use uclTeams;

insert into teams (teamName,numberOfPlayers,countryofclub,positionintable,stadiumname,coachname)
values ('Real Madrid', 20, 'Spain', 1, 'Bernabau', 'Zidane'),
('Barcelona', 20, 'Spain', 2, 'Camp Nou', 'Xavi'),
('Liverpool', 22, 'England', 3, 'Anfield', 'Klopp'),
('Manchester City', 21, 'England', 4, 'Ethihad', 'Pep'),
('Atlanta United', 22, 'USA', 5, 'Mercedes Benz', 'Aameir'),
('PSG', 23, 'France', 6, 'Estadio', 'Erneste'),
('Manchester United', 23, 'England', 7, 'Old Trafford', 'Alex Ferguson'),
('Arsenal', 22, 'England', 8, 'Emirates', 'Javier'),
('Bayern Munich', 20, 'Germany', 9, 'Red light', 'Alonso'),
('Dortmund', 20, 'Germany', 10, 'Yellow bridge', 'Ozil');

Select * from teams;


-- --------------------------------------------- DAY 2 -----------------------------------------------------

-- SQL Constraints 
-- We use it to specify rules for the data in a table
-- NOT NULL -> ensures that a column can not have null values
-- UNIQUE -> ensures that a column can not have duplicate values
-- PRIMARY KEY - combination of NOT NULL and UNIQUE
-- FOREIGN KEY - prevents actions that would destroy links between tables
-- CHECK - Ensures that values in a column satisfies a specific condition
-- DEFAULT - it will set a default value for a column.
-- CREATE INDEX - use it to do indexing which will help us to retrive data from the database very quickly.

create database college;

create table student(
id int primary key,
firstName varchar(30),
lastName varchar(30),
phoneNum bigint (10) unique,
email varchar (30) not null unique,
address varchar (200)
);

use college; -- important to use

insert into student(id,firstName,lastName,phoneNum,email,address)
values(1, 'Joy', 'jj', 573289482, 'joy@gmail.com', 'Cape Girardeau, Missouri');
insert into student(id,firstName,lastName,phoneNum,email,address)
values (2, 'Tamim', 'Iqbal', 573289432, 'tamim@gmail.com', 'St Louis, Missouri'),
(3, 'Shakib', 'Hasan', 573289412, 'sk@gmail.com', 'Kansas, Missouri'),
(4, 'Liton', 'Das', 573289182, 'li@gmail.com', 'Jefferson, Missouri'),
(5, 'Maxwell', 'Glenn', 573289282, 'max@gmail.com', 'Jackson, Missouri'),
(6, 'Ashraf', 'Hakimi', 673284482, 'ash@gmail.com', 'Ferry island, Missouri'),
(7, 'Gayle', 'Henry', 573289489, 'gay@gmail.com', 'Laffayete, Missouri'),
(8, 'Mushfiq', 'Rahim', 773289482, 'mushi@gmail.com', 'Carbondale, Missouri'),
(9, 'Alex', 'Hales', 571189482, 'alex@gmail.com', 'Ashburn, Missouri');


select * from student;

create table student2(
id int primary key,
firstName varchar(30),
lastName varchar(30),
phoneNum bigint (10) unique,
email varchar (30) not null unique, -- changed to unique 
address varchar (200)
);

alter table student2 modify column email varchar(30) unique; -- change from one condition to another.

alter table student2 drop primary key; -- remove the primary key condition

alter table student2 modify column id int primary key; -- add a primary key


create table staff(
id int primary key,
name varchar (25) not null,
age int (2) check (age>18),
city varchar (25) default 'Sterling, Virgina'
);
insert into staff (id, name, age, city)
values (1, 'rocky', 20, 'Fairfax, Virginia');

insert into staff(id, name, age)
values(2, 'jonny', 20);

select * from staff;

create table student3(
id int primary key,
firstName varchar(30),
lastName varchar(30),
phoneNum bigint (10) unique,
email varchar (30) not null unique, -- changed to unique 
address varchar (200),
staff_id int,
foreign key (staff_id) references staff(id)
);

insert into student3(id,firstName,lastName,phoneNum,email,address, staff_id)
values(1, 'Joy', 'jj', 573289482, 'joy@gmail.com', 'Cape Girardeau, Missouri', 2);

select * from staff;
select * from student3;


-- -- Operators
-- = Equal
-- <> or != not eqaul
-- > Greather than
-- < Less than
-- >= Greather than or equal
-- <= Less than or equal
-- BETWEEN => between an inclusive range
-- LIKE => search for a pattern
-- IN => To specify multiple possible values for a column
-- AND
-- OR
-- NOT


create table primary_school_students(
id int primary key,
f_name varchar(20),
l_name varchar(20),
phe_number bigint(10) unique,
age int(2) check(age <= 10),
city varchar(20) default 'VA',
grade varchar (1) not null
);

insert into primary_school_students(id,f_name,l_name,phe_number,age,city,grade)
values(1, 'joy', 'jj', 5732908642, 9, 'MA','A'),
(2, 'roy', 'rj', 5732908641, 8, 'VA','D'),
(3, 'soy', 'sj', 5732908693, 6, 'MO','B'),
(4, 'Poy', 'Pj', 5732908643, 8, 'DC','B'),
(5, 'SAM', 'lp', 5732908644, 6, 'NY','A'),
(6, 'Max', 'Ab', 5732908645, 7, 'VA','A'),
(7, 'Samuel', 'qq', 5732908646, 9, 'BU','A'),
(8, 'Royni', 'rr', 5732908672, 6, 'SE','B'),
(9, 'Gauri', 'khan', 5732908647, 7, 'FL','A'),
(10, 'SRK', 'KHAN', 5732908648, 9, 'FL','B');

select * from primary_school_students;

select * from primary_school_students where id = 2;
 
 
select * from primary_school_students where f_name = 'Max';


select * from primary_school_students where age = 5>age<10 ;

select * from primary_school_students where age between 5 and 10;


select * from primary_school_students where city in ('NY','VA');


select * from primary_school_students where id = 2;


select * from primary_school_students where f_name like 'j%'; -- like is used to find starts with, %j% - contains, %j ends with

-- not 


select * from primary_school_students where city not in ('NY');

-- find students name, age, grade who belongs to ('VA AND FL')

select F_name, age, grade from primary_school_students where city in ('VA','FL');

UPDATE primary_school_students set grade = 'A' where id =2;

UPDATE primary_school_students set age = 9 where id =2;

-- Sometimes update wont work so you have to set SQL_SAFE_UPDATES =1; -- safe update mode

-- ascending and descending order

select * from primary_school_students order by id desc;

-- age in ascending order

select * from primary_school_students order by age asc;


select * from primary_school_students order by age asc, id desc;
                                             -- sort by age first and then id

-- limit 

-- find the youngest two students

select * from primary_school_students order by age asc limit 2;

-- find the oldest student

select * from primary_school_students order by age desc limit 1;

-- find the two youngest student after skipping the last two youngest student
select * from primary_school_students order by age asc limit 2, 2; -- skipping the first two and finding the next 2 rows.

create table product (
id int  primary key,
name varchar(20),
price int,
rating float(3,2)
);

-- take rest from git



drop database uclteams;

-- --------------------------------------------------- HomeWork ------------------------------------------------

create database taco_bell;
create table tacobell_order(
order_number int primary key,
order_items int not null,
order_date TIMESTAMP,
order_price float(4,2) not null

);



create table customer(
first_name varchar (30) not null,
last_name varchar (30),
phone_number bigint unique,
form_of_payment varchar (10) not null,
receipt_number int,
foreign key (receipt_number) references tacobell_order(order_number)
);
use taco_bell;
insert into tacobell_order(order_number,order_items,order_date,order_price)
values(1, 5, '2024-05-10 08:23:44', 10.50),
(2, 4, '2024-05-10 08:27:48', 11.20),
(3, 8, '2024-05-10 08:55:33', 14.87),
(4, 9, '2024-05-10 09:23:14', 28.34),
(5, 2, '2024-05-10 09:43:24', 09.50),
(6, 5, '2024-05-10 10:33:06', 11.22),
(7, 3, '2024-05-10 10:34:14', 12.20),
(8, 6, '2024-05-10 11:05:44', 17.40),
(9, 3, '2024-05-10 11:22:34', 15.44),
(10, 5, '2024-05-10 11:36:24', 15.40),
(11, 3, '2024-05-10 12:01:09', 12.10);

select * from tacobell_order;

use customer;

insert into customer(first_name,last_name,phone_number,form_of_payment,receipt_number)
values('Jon', 'Snow', 5732908642, 'cash', 1),
('Walter', 'White', 6732908642, 'card', 2),
('Jaime', 'Lannister', 5432908642, 'cash', 3),
('Sansa', 'Stark', 5732908641, 'Apple Pay', 4),
('Michael', 'Scholfield', 5732908644, 'Apple Pay', 5),
('Daenreys', 'Targareyam', 5732908643, 'Apple Pay', 6),
('Genry', 'Baratheon', 5732908645, 'card', 7),
('Ned', 'Stark', 5732908646, 'card', 8),
('Night', 'King', 5732908647, 'card', 9),
('Tyrion', 'Lannister', 5732908688, 'cash', 10),
('Theon', 'Greyjoy', 5732908622, 'Apple Pay', 11);

select * from customer;

-- stats of order 

select count(order_number) as total_ordernumber,
 sum(order_price) as total_revenue,
 max(order_price) as max_price,
 min(order_price) as min_price,
 avg(order_price) as avg_price
from tacobell_order;


-- find the last order

select * from tacobell_order where order_number=11;
 
-- find the biggest order

select max(order_items) as smallest_orderquantity from tacobell_order;


-- find smallest order

select min(order_items) as smallest_orderquantity from tacobell_order;

 
-- sort the orders based on date

select * from tacobell_order order by order_date;

-- sort the orders based on price.

select * from tacobell_order order by order_price asc;

-- provide latest 5 orders.

select * from tacobell_order order by order_number desc limit 5;


-- ----------------------------------------------  DAY 3 -------------------------------------------------------------------


-- Multiplicity

-- 1:1 -> one to one
-- 1:n or n:1 -> one to many or many to one
-- n:n many to many 

-- JOIN

-- INNER JOIN
-- LEFT OUTER JOIN
-- RIGHT OUTER JOIN
-- FULL JOIN
-- SELF JOIN

create table client(
id int primary key,
fullname varchar(30) not null,
email varchar(35) not null unique
);

create table proposal(
id int primary key,
total double (4,2) not null,
invoiceNo varchar (20) unique,
orderDate date,
customer_id int,
foreign key (customer_id) references client(id)
);

insert into client(id,fullname,email)
values (1, 'abu', 'abu@gmail.com'),
(2,'syed','syed@gmail.com'),
(3,'max','max@gmail.com'),
(4,'amir','amir@gmail.com'),
(5,'joseph','jos@gmail.com'),
(6,'nana','nana@gmail.com'),
(7,'nazi','nazi@gmail.com'),
(8,'john','john@gmail.com'),
(9,'amitabh','ami@gmail.com'),
(10,'aishwarya','aish@gmail.com'),
(11,'shahrukh','srk@gmail.com'),
(12,'salman','sallu@gmail.com'),
(13,'shahid','shahid@gmail.com');

insert into client(id,fullname,email)
values (14, 'syed abu', 'abusyed@gmail.com'),
(15,'syed shahruk','syedshahruk@gmail.com'),
(16,'maxwell','maxwell@gmail.com');

select* from client;

insert into proposal(id,total,invoiceNo,orderDate,customer_id)
values(1,30.15,'ANB123','2024-07-15',2),
(2,40.15,'ANB124','2024-03-23',4),
(3,50.15,'ANB125','2024-03-25',5),
(4,60.15,'ANB126','2024-03-26',3),
(5,70.15,'ANB127','2024-03-27',6),
(6,80.15,'ANB128','2024-03-28',9),
(7,7.15,'ANB129','2024-03-29',12),
(8,92.15,'ANB143','2024-06-23',11),
(9,10.15,'ANB153','2024-07-23',1),
(10,20.55,'ANB623','2024-03-13',10),
(11,20.75,'ANB113','2024-03-12',10),
(12,20.22,'ANB273','2024-03-12',8),
(13,20.53,'ANB373','2024-03-12',7),
(14,10.45,'ANB573','2024-03-12',9),
(15,11.71,'ANC173','2024-03-12',3),
(16,13.72,'AQB173','2024-03-12',2);

insert into proposal(id,total,invoiceNo,orderDate)
values(17,29.99,'AQB999','2024-03-12'),
(18,33.33,'AQB200','2024-01-12'),
(19,44.12,'AQB201','2024-02-12'),
(20,10.00,'AQB202','2024-03-12');


select*from proposal;

-- get the order detaills along with customer details

select proposal.*, client.* from proposal inner join client on proposal.customer_id = client.id;
-- select* from proposal inner join client on proposal.customer_id = client.id;
-- select proposal.*, client.* from proposal p inner join client c on p.customer_id = c.id; shortcut

-- order date, invoice no. , customer id, full name, email, total

select orderDate,invoiceNo,customer_id,fullname,email,total from proposal
inner join client on proposal.customer_id = client.id order by orderDate asc;

-- get all orders which are online and in person -- jara in person order de nai so customer id nai

select* from proposal left outer join client on proposal.customer_id = client.id; 

-- find all the person with proposals and without proposals


select* from proposal right outer join client on proposal.customer_id = client.id; -- jara order de nai


-- GROUP BY

-- Group by are rows that have same values and not summary rows like sum/avg/count
-- Group by is used to get the summary details

-- having - this will be applied after joining 
-- where - this will be applied before joining

-- Find the total number of orders placed by each person.

select client.*, count(proposal.id) as order_count, sum(total) as total_price from client left outer join proposal on proposal.customer_id = client.id
group by client.id order by order_count desc, total_price desc limit 3;

select client.*, count(proposal.id) as order_count, sum(total) as total_price from client left outer join proposal on proposal.customer_id = client.id
group by client.id having order_count >1;


-- find people before 2024-03-20 to 2024-03-30


select* from proposal right outer join client on proposal.customer_id = client.id where 
orderDate between '2024-03-20' and '2024-03-30';


-- AUTO INCREMENT 

create table population(
id int primary key auto_increment,
fullname varchar(30) not null,
email varchar(35) not null unique
);
alter table population auto_increment = 2000; -- will start from 2000 then

insert into population(fullname,email)
values ('abu', 'abu@gmail.com'),
('syed','syed@gmail.com'),
('max','max@gmail.com');

select*from population;



-- ACID
-- Transactions, the grouping of SQL statements so that they all succeed or fail together, requires
-- the adherence to 4 properties. These properties are remembered by the name ACID and are
-- common database terms.
-- • Atomicity – A transaction must fully succeed, and all changes are made or be fully rolled back
-- and no changes are made to the database.
-- • Consistency – Relationships in the database must be valid when a transaction finishes. You can
-- not have “orphaned reference” in FKs for instance. E.g. if I delete and address from the database
-- I have to delete all references to that address in the users table for the transaction to complete.
-- • Isolation – Transaction must run independently of each other. I.e. no transaction should be
-- dependent of another transaction’s completion in order to complete. How isolated transactions
-- are from each other is set by the database’s Transaction Level and will be determined based on
-- the sensitivity of data and the need for rapid, multithreaded transaction processing.
-- • Durability – Transactions when they commit should persist through catastrophic failure. E.g. a
-- system crash or power outage.

-- Data Normalization:
-- • Normalization is a tiered structure for designing databases to reduce redundancy of data
-- storage. This increases efficiency in the database.
-- • Each level of normalization is called a “normal form”. If no attempt at normalization is made, the
-- database is said to be in 0 Normal Form.
-- • There are 3 generally used normal forms in the real world. There are more beyond that that
-- have been defined; however, these are difficult to implement and rarely have much impact in a
-- real-world scenario and are therefore more academic.
-- • 1st Normal Form – Atomic Data (data values stored should be broken down in the smallest
-- amount of meaningful data possible) and Primary Keys.
-- • 2nd Normal Form – 1st NF plus no partial dependencies. You can achieve this by having single
-- column PKs. A partial dependency is a value that can be determined by only accessing one
-- column in the PKs information.
-- • 3rd Normal Form – 2nd NF plus no transitive dependencies. A transitive dependency is when one
-- value can be fully determined by another value in the same record that is not the primary. If
-- that is the case then the value should be moved to another table the determinating value should
-- be made a foreign key to that other table.
 


 





 
 
 
 
 
 

















































