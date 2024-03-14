-- use  db1
-- show tables;
-- Creating Table
create table student(
id int,
name varchar(30),
age int,
address varchar(40),
mail varchar(30)
);
-- Inserting Values
insert into student values (001, "Vinay", 19, "Surat", "vinay01@gmail.com");
insert into student values (002, 'Kush', 17, 'Baroda', 'kush07@gmail.com');
insert into student values (003, 'Arth', 19, 'Rajkot', 'arth09@gmail.com');
select * from student
insert into student values (004, 'Naman', 19, 'Surat', 'naman19@gmail.com');
insert into student values (005, 'Keyur', 20, 'Surat', 'keyur79@gmail.com');
insert into student values (006, 'Ayush', 21, 'Ahmedabad', 'ayush76@gmail.com');
insert into student values (007, 'Swati', 19, 'Mumbai', 'swati45@gmail.com');
insert into student values (008, 'Riya', 20, 'Pune', 'riya87@gmail.com');
insert into student values (009, 'Rutvi', 18, 'Mumbai', 'rutvi34@gmail.com');
insert into student values (010, 'Dev', 17, 'Surat', 'dev39@gmail.com');
select * from student;
-- Adding Column
alter table student add phone_no int;
-- Renaming Column Name
alter table student rename column mail to eMail;
alter table student rename column id to ID;
alter table student rename column name to Name;
alter table student rename column age to Age;
alter table student rename column address to Address;
-- Deleting or Dropping Column
alter table student drop Age;
-- Modifying the datatype of Column
alter table student modify phone_no numeric;
select * from student;
alter table student rename column phone_no to Phone;
select * from student;
set SQL_SAFE_UPDATES = 0;
-- Updating the values in a row
update student set Phone=99133 where ID=001;
select * from student;
-- Deleting a row
delete from student where ID=010;
select * from student;
delete from student where ID=005 and Name='Keyur';
select * from student;
