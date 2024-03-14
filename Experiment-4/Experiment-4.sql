use db1;
create table AUTHOR(
Author_ID varchar(5) primary key,
Lastname varchar(15) not null,
Firstname varchar(15) not null,
Email varchar(40),
City varchar(15),
Country varchar(15)
);
desc AUTHOR;

create table BOOK(
Book_ID varchar(5) primary key check(Book_ID like 'B%'),
Book_Title varchar(20),
Copies int check(Copies > 2)
);
desc BOOK;

create table AUTHOR_LIST(
Author_ID varchar(5),
Book_ID varchar(5),
Role varchar(15),
primary key (Author_ID, Book_ID),
foreign key (Author_ID) references AUTHOR(Author_ID)
);
desc AUTHOR_LIST;

insert into AUTHOR values("A001" , "Smith" , "John" , "john@email.com" , "New York" , "USA");
insert into AUTHOR values("A002" , "Johnson" , "Emily" , "emily@email.com" , "London" , "UK");
insert into AUTHOR values("A003" , "Lee" , "David" , "david@email.com" , "Sydney" , "Australia");
insert into AUTHOR values("A004" , "Kim" , "Jinyoung" , "kim@email.com" , "Seoul" , "South Korea");
select * from AUTHOR;	

insert into BOOK values("B001" , "The Great Gatesby" , 5);
insert into BOOK values("B002" , "Pride and Prejudice" , 10);
insert into BOOK values("B003" , "Harry Potter" , 30);
insert into BOOK values("B004" , "1984" , 6);
select * from BOOK;

insert into AUTHOR_LIST values("A001" , "B001" , "Author");
insert into AUTHOR_LIST values("A002" , "B002" , "Author");
insert into AUTHOR_LIST values("A003" , "B003" , "Author");
insert into AUTHOR_LIST values("A004" , "B004" , "Author");
select * from AUTHOR_LIST;

alter table AUTHOR_LIST add Publisher varchar(30);
select * from AUTHOR_LIST;