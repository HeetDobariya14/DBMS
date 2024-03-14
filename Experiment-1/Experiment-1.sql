-- use db1;
create table CLIENT_MASTER(
CLIENTNO varchar(6),
NAME varchar(20),
ADDRESS1 varchar(30),
ADDRESS2 varchar(30),
CITY varchar(15),
PINCODE int,
STATE varchar(15),
BALDUE decimal(10,2)
);
select * from CLIENT_MASTER;

create table PRODUCT_MASTER(
PRODUCTNO varchar(6),
DESCRIPTION varchar(15),
PROFITPERCENT decimal(4,2),
UNITMEASURE varchar(10),
QTYONHAND int,
REORDERL int,
SELLPRICE decimal(8,2),
COSTPRICE decimal(8,2)
);
select * from PRODUCT_MASTER;

create table SALESMAN_MASTER(
SALESMANNO varchar(6),
SALESMANNAME varchar(20),
ADDRESS1 varchar(30),
ADDRESS2 varchar(30),
CITY varchar(20),
PINCODE int,
STATE varchar(50),
SALAMT real,
TGTTOGET decimal(6,2),
YTDSALES double(6,2),
REMARKS varchar(60)
);
select * from SALESMAN_MASTER;

insert into CLIENT_MASTER values ('C001', 'Ivan Bayross', 'ABC', 'JKL', 'Mumbai', 400054, 'Maharashtra', 15000);
insert into CLIENT_MASTER values ('C002', 'Mamta Muzumdar', 'BCD', 'KLM', 'Madras', 780001, 'Tamil Nadu', 0);
insert into CLIENT_MASTER values ('C003', 'Chhaya Bankar', 'CDE', 'LMN', 'Mumbai', 400057, 'Maharashtra', 5000);
insert into CLIENT_MASTER values ('C004', 'Ashwini Joshi', 'DEF', 'MNO', 'Bangalore', 560001, 'Karnataka', 0);
insert into CLIENT_MASTER values ('C005', 'Hansel Colaco', 'EFG', 'NOP', 'Mumbai', 400060, 'Maharashtra', 2000);
insert into CLIENT_MASTER values ('C006', 'Deepak Sharma', 'FGH', 'OPQ', 'Mangalore', 560050, 'Karnataka', 0);
insert into CLIENT_MASTER values ('C007', 'Sohail Khan', 'GHI', 'PQR', 'Surat', 395005, 'Gujarat', 345);
select * from CLIENT_MASTER;

insert into PRODUCT_MASTER values ('P00001', 'T-Shirt', 5, 'Piece', 200, 50, 350, 250);
insert into PRODUCT_MASTER values ('P0345', 'Shirts', 6, 'Piece', 150, 50, 500, 350);
insert into PRODUCT_MASTER values ('P06734', 'Cotton Jeans', 5, 'Piece', 100, 20, 600, 450);
insert into PRODUCT_MASTER values ('P07865', 'Jeans', 5, 'Piece', 100, 20, 750, 500);
insert into PRODUCT_MASTER values ('P07868', 'Trousers', 2, 'Piece', 150, 50, 850, 550);
insert into PRODUCT_MASTER values ('P07885', 'Pull Overs', 2.5, 'Piece', 80, 30, 700, 450);
select * from PRODUCT_MASTER;

insert into SALESMAN_MASTER values ('S0001', 'Aman', 'A/14', 'Worli', 'Mumbai', 400002, 'Maharashtra', 3000, 100, 50, 'Good');
insert into SALESMAN_MASTER values ('S0002', 'Omkar', '65', 'Nariman', 'Mumbai', 400001, 'Maharashtra', 3000, 200, 100, 'Good');
insert into SALESMAN_MASTER values ('S0003', 'Raj', 'P-7', 'Bandra', 'Mumbai', 400032, 'Maharashtra', 3000, 200, 100, 'Good');
insert into SALESMAN_MASTER values ('S0004', 'Ashish', 'A/5', 'Juhu', 'Mumbai', 400044, 'Maharashtra', 3000, 200, 150, 'Good');
select * from SALESMAN_MASTER;

-- 1.
select NAME from CLIENT_MASTER; -- a
select * from CLIENT_MASTER; -- b
select NAME, CITY, STATE from CLIENT_MASTER; -- c
select DESCRIPTION from PRODUCT_MASTER; -- d
select * from CLIENT_MASTER where CITY='Mumbai'; -- e
select SALESMANNAME from SALESMAN_MASTER where SALAMT=3000; -- f

-- 2.
update CLIENT_MASTER set CITY='Bangalore' where CLIENTNO='C005';  -- a
select * from CLIENT_MASTER;
update CLIENT_MASTER set BALDUE=1000 where CLIENTNO='C001';  -- b
select * from CLIENT_MASTER;
update PRODUCT_MASTER set COSTPRICE=950 where DESCRIPTION='Trousers';  -- c
select * from PRODUCT_MASTER;
update SALESMAN_MASTER set CITY='Pune';  -- d
select * from SALESMAN_MASTER;
update SALESMAN_MASTER set SALAMT=3500 where SALESMANNO='S0004';  
select * from SALESMAN_MASTER;

-- 3.
delete from SALESMAN_MASTER where SALAMT=3500; -- a
select * from SALESMAN_MASTER;
delete from PRODUCT_MASTER where QTYONHAND=100; -- b
select * from PRODUCT_MASTER;
delete from CLIENT_MASTER where STATE='Tamil Nadu'; -- c
select * from CLIENT_MASTER;

-- 4.
alter table CLIENT_MASTER add Telephone int; -- a
select * from CLIENT_MASTER;
alter table PRODUCT_MASTER modify SELLPRICE decimal(10,2); -- b
desc PRODUCT_MASTER;

-- 5.
drop table CLIENT_MASTER;

-- 6. 
alter table SALESMAN_MASTER rename to sman_mast;
select * from sman_mast;
