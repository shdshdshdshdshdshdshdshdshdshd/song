use madangdb;
create table NewBook(
	bookid integer,
    bookname varchar(20),
    publisher varchar(20),
    price integer);

drop table Newbook;
create table NewBook(
	bookid integer,
    bookname varchar(20),
    publisher varchar(20),
    price integer,
    primary key(bookid));
    
drop table Newbook;
create table NewBook(
	bookid integer,
    bookname varchar(20) not null,
    publisher varchar(20) unique,
    price integer default 10000 check(price >= 10000),
    primary key(bookname, publisher));
    
    create table NewCustomer(
    custid integer primary key,
    name varchar(40),
    adress varchar(40),
    phone varchar(30)
    );
    
create table NewOrders(
orderid integer,
custid integer not null,
bookid integer not null,
saleprice integer,
orderdate date,
primary key(orderid),
foreign key(custid)references NewCustomer(custid) on delete cascade);

-- 3-37 example
alter table NewBook add isbn varchar(13);

-- 3-38
alter table NewBook modify isbn integer;
   -- 3-39 
alter table NewBook drop column isbn;

-- 3-40
alter table NewBook bookname Varchar(20) not null;

-- 3-41
alter table NewBook add primary key(bookid);

-- 3-42
alter table NewBook drop column isbn;

-- 3-44