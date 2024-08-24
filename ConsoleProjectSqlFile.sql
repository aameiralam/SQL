create database dealership;

use dealership;

DROP TABLE car;
create table car(
CarId INT NOT NULL AUTO_INCREMENT,
CarMake VARCHAR(100),
CarModel VARCHAR(100),
Caryear INT,
CarPrice DECIMAL(7,2),
PRIMARY KEY (carId)
    );
    ALTER TABLE car
MODIFY COLUMN Carprice DECIMAL(7,2);
alter table car auto_increment = 2;

ALTER TABLE car
MODIFY COLUMN carMake VARCHAR(150),
MODIFY COLUMN carModel VARCHAR(150),
MODIFY COLUMN carPrice double(7,2),
MODIFY COLUMN caryear INT,
MODIFY COLUMN CarId INT ;

    select * from car;
    DELETE FROM car WHERE carid = 1;
    INSERT INTO car (carMake,carModel, carYear,carPrice) VALUES ('rust','bucket',1950,156.90);
    
    
    
    create table client(
clientId INT NOT NULL AUTO_INCREMENT,
clientfirstname VARCHAR(100),
clientlastname VARCHAR(100),
clientnumber bigINT,
clientsalary double (8,2),
PRIMARY KEY (clientId)
    );
    
alter table client auto_increment =1;

SELECT* from car;
SELECT* FROM client;

insert into client(clientfirstname,clientlastname,clientnumber,clientsalary)
values("Aameir","Alam", 5732908642, 95435.66);


    
