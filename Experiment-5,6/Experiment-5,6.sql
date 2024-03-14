use db1
create table Supplier(
scode varchar(10) primary key,
sname varchar(40) not null,
scity varchar(10) not null,
turnover int
);
desc Supplier;

insert into Supplier values("S001" , "Ram" , "Mumbai" , 30);
insert into Supplier values("S002" , "Shyam" , "Surat" , 50);
insert into Supplier values("S003" , "Hari" , "Baroda" , 300);
insert into Supplier values("S004" , "Raj" , "Pune" , 150);
select * from Supplier

create table Part(
pcode varchar(10) primary key,
weigh int,
color varchar(10),
cost int,
sellingprice int
);
desc Part;

insert into Part values("P001" , 20 , "Blue" , 400 , 500);
insert into Part values("P002" , 30 , "Green" , 500 , 550);
insert into Part values("P003" , 25 , "White" , 250 , 300);
insert into Part values("P004" , 50 , "Black" , 150 , 300);
select * from Part;

create table Supplier_Part(
scode varchar(10),
pcode varchar(10),
qty int,
primary key (scode,pcode)
);
desc Supplier_Part;

insert into Supplier_Part values("S001" , "P001" , 5);
insert into Supplier_Part values("S002" , "P002" , 3);
insert into Supplier_Part values("S003" , "P003" , 2);
insert into Supplier_Part values("S004" , "P004" , 6);
select * from Supplier_Part

select scode,pcode from Supplier_Part order by scode asc;

select * from Supplier where scity="Mumbai" and turnover=30;

select count(*) as total_suppliers from Supplier;

select pcode,weigh from Part where weigh between 25 and 35;

select * from Supplier where turnover is null;

select pcode,weigh from Part where weigh in(20,30,40);

select sum(qty) as total_quantity from Supplier_Part where pcode="P002"; 

select s.sname from Supplier s join Supplier_Part sp on s.scode = sp.scode
where sp.scode = "S002";

select pcode from Part where cost > (select avg(cost) from Part);

select scode,turnover from Supplier order by turnover desc;