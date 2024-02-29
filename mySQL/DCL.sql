use madangdb;
insert into	Book(bookid, bookname, publisher)
	value (14,"스포츠 의학", "한솔의학서적", 90000);
select * from Book;

-- 3-46
create table Imported_book(
bookid integer primary key,
bookname varchar(20),
publisher varchar(20),
price integer);

select * from Imported_book;
insert into Imported_book(bookid, bookname, price, publisher)
select bookid, bookname, price, publisher
from Book;

-- 3-47
set SQL_SAFE_UPDATES=0;
select * from Customer;
update Customer set sddress = '대한민국 부산' where custid = 5;

-- 3-48
select * from Book;
update Book
set 	publisher = (select publisher
					from Imported_book
					where bookid = 10)
where bookid = 14;

-- 3-49
delete from Book where bookid > 10;
select * from Book;

select * from Customer;
delete from Customer;

alter table Orders drop custid foreign key (custid)references Customer(custid);