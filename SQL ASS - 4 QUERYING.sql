create database population;
use population;

create table country ( ID int primary key, 
country_name varchar(100), population int , 
area varchar(100));

create table persons (ID INT primary key,
F_name varchar(100), L_name varchar(100), 
population int,  rating decimal(2),
Country_ID int, country_name varchar(100));

insert into country (ID, country_name, population,
area) values (1, 'UK',1200000, 'Europe'),
(2,'Canada',800000,'North America'),
(3,'poland',1300000,'Europe'),
(4,'USA',1800000,'America'),
(5,'India',2500000,'asia'),
(6,'Australia',2000000,'Australia'),
(7,'china',4500000,'Asia'),
(8,'japan',700000,'Asia'),
(9,'france',900000,'Europe'),
(10,'germany',6500000,'Europe');

alter table persons modify 
country_name varchar(100) default NULL;

Insert into persons (ID, F_name, L_name, population,
rating, Country_ID, country_name) values
(1,'ram','kumar',1200000,4.7,1,'UK'),
(2,'raj','mohan',2500000,4.0,5,'India'),
(3,'meera','nandhan',2500000,4.0,5,'India'),
(4,'alexia','cox',2000000,4.2,6,'Australia'),
(5,'faye', 'bowen',800000,4.6,2,'canada'),
(6,'donna','brown',1800000,5.0,4,'USA'),
(7,'michelle','davies',1800000,5.0,4,'USA'),
(8,'sarah','thomas',6500000,4.8,10, default),
(9,'prasad','varkey',2500000,4.0,5,'India'),
(10,'jackey','rose',1200000,4.7,1,'UK');

select*from persons;

# 1.DISTINCT
select distinct country_name from persons;

# 2.ALIASES
select concat( F_name, ' ',L_name) as Full_Name
from persons;

#3. RATING>4
select * from persons where rating>4;

#4. COUNTRIES WITH HIGH POPULATION
select country_name from country where 
population>1000000;

#5. FIND WITH 2 CONDITIONS
select f_name, l_name from persons where 
country_name in ('USA') or rating>4.5;

#6. FINDING NULL
select f_name,l_name from persons where country_name is null;

#7. USA, CANADA AND UK
select f_name, l_name from persons where country_name in
('USA','canada','UK');

#8. FROM INDIA
select f_name, l_name from persons where country_name in
('India','Australia');

#9. POPULATION BETWEEN 5-20L
select country_name from country where population between 
500000 and 2000000;

#10. COUNTRY DO NOT START WITH C 
select*from country where country_name not like 'c%';