use db1;
create table CLIENT_MASTER_1(
CLIENTNO varchar(6) primary key check(CLIENTNO like 'C%'),
NAME varchar(20) not null,
ADDRESS1 varchar(30),
ADDRESS2 varchar(30),
CITY varchar(15),
PINCODE int,
STATE varchar(15),
BALDUE decimal(10,2)
);
desc CLIENT_MASTER_1;

create table PRODUCT_MASTER_1(
PRODUCTNO varchar(6) primary key check (PRODUCTNO like 'P%'),
DESCRIPTION varchar(15) not null,
PROFITPERCENT decimal(4,2) not null,
UNITMEASURE varchar(10) not null,
QTYONHAND int not null,
REORDERL int not null,
SELLPRICE decimal(8,2) not null,
COSTPRICE decimal(8,2) not null
);
desc PRODUCT_MASTER_1;

create table SALESMAN_MASTER_1(
SALESMANNO varchar(6) primary key check (SALESMANNO like 'S%'),
SALESMANNAME varchar(20) not null,
ADDRESS1 varchar(30) not null,
ADDRESS2 varchar(30),
CITY varchar(20),
PINCODE int(8),
STATE varchar(50),
SALAMT real(8,2) not null check (SALAMT <> 0),
TGTTOGET decimal(6,2) not null check (TGTTOGET <> 0),
YTDSALES double(6,2) not null,
REMARKS varchar(60)
);
desc SALESMAN_MASTER_1;

insert into CLIENT_MASTER_1 values ('C001', 'Ivan Bayross', 'ABC', 'JKL', 'Mumbai', 400054, 'Maharashtra', 15000);
insert into CLIENT_MASTER_1 values ('C002', 'Mamta Muzumdar', 'BCD', 'KLM', 'Madras', 780001, 'Tamil Nadu', 0);
insert into CLIENT_MASTER_1 values ('C003', 'Chhaya Bankar', 'CDE', 'LMN', 'Mumbai', 400057, 'Maharashtra', 5000);
insert into CLIENT_MASTER_1 values ('C004', 'Ashwini Joshi', 'DEF', 'MNO', 'Bangalore', 560001, 'Karnataka', 0);
insert into CLIENT_MASTER_1 values ('C005', 'Hansel Colaco', 'EFG', 'NOP', 'Mumbai', 400060, 'Maharashtra', 2000);
insert into CLIENT_MASTER_1 values ('C006', 'Deepak Sharma', 'FGH', 'OPQ', 'Mangalore', 560050, 'Karnataka', 0);
insert into CLIENT_MASTER_1 values ('C007', 'Sohail Khan', 'GHI', 'PQR', 'Surat', 395005, 'Gujarat', 345);
select * from CLIENT_MASTER_1;

insert into PRODUCT_MASTER_1 values ('P00001', 'T-Shirt', 5, 'Piece', 200, 50, 350, 250);
insert into PRODUCT_MASTER_1 values ('P0345', 'Shirts', 6, 'Piece', 150, 50, 500, 350);
insert into PRODUCT_MASTER_1 values ('P06734', 'Cotton Jeans', 5, 'Piece', 100, 20, 600, 450);
insert into PRODUCT_MASTER_1 values ('P07865', 'Jeans', 5, 'Piece', 100, 20, 750, 500);
insert into PRODUCT_MASTER_1 values ('P07868', 'Trousers', 2, 'Piece', 150, 50, 850, 550);
insert into PRODUCT_MASTER_1 values ('P07885', 'Pull Overs', 2.5, 'Piece', 80, 30, 700, 450);
select * from PRODUCT_MASTER_1;

insert into SALESMAN_MASTER_1 values ('S0001', 'Aman', 'A/14', 'Worli', 'Mumbai', 400002, 'Maharashtra', 3000, 100, 50, 'Good');
insert into SALESMAN_MASTER_1 values ('S0002', 'Omkar', '65', 'Nariman', 'Mumbai', 400001, 'Maharashtra', 3000, 200, 100, 'Good');
insert into SALESMAN_MASTER_1 values ('S0003', 'Raj', 'P-7', 'Bandra', 'Mumbai', 400032, 'Maharashtra', 3000, 200, 100, 'Good');
insert into SALESMAN_MASTER_1 values ('S0004', 'Ashish', 'A/5', 'Juhu', 'Mumbai', 400044, 'Maharashtra', 3000, 200, 150, 'Good');
select * from SALESMAN_MASTER_1;



