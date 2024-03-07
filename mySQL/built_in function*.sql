-- 4-1
select ads(-78), abs(+78);
select round(321.141592, 2);
select round(321.141592, -1);
select round(321.141592, 0);

-- 4-3
select custid, round(avg(saleprice),-2)
from Orders
Group by custid;

-- 4-4
select bookid, bookname, publisher, price from Book;
select bookid, replace(bookname, '야구', '농구'), publisher, price from Book;

-- 4-5
select bookname'제목', char_length(bookname)'문자수', length(bookname)'바이트수'
 from Book 
 where publisher like '굿스포츠';
 
 -- 4-6
 select substr (name, 1, 1), count(*)인원 from Customer group by substr(name, 1, 1);
 
 -- 4-7
 select * from Orders;
 select orderid 주문번호, oderdate 주문날짜, adddate(orderdate, interval 10 day) 확정일 from Orders;
 
 -- 4-8
 
select orderid, orderdate, custid, bookid from Orders
where orderdate= str_to_date('20240707','%Y%m%d');

use madangdb;
create table Mybook(
	bookid int primary key,
	price int);
    insert into Mybook(bookid, price) value (1, 10000);
    insert into Mybook(bookid, price) value (2, 10000);
    insert into Mybook(bookid, price) value (3, null);
    
    select price + 100 from Mybook where bookid = 3;
    select sum(price), avg(price), count(*), count(price), count(bookid)
    from Mybook;
    
    -- 4-10
    select name '이름', ifnull(phone, '연락처없음' )'전화번호'
    from Customer;
    
    -- 4-11
    set @seq:= 0;
    select (@seq:= @seq+1) '순번', custid, name, phone
    from Customer
    where @seq < 2;
    
    -- 4-12
    select orderid, saleprice
    from orders
    where saleprice <= (select avg(saleprice) 
                       from orders);
                       
     
	 -- 4-13
     select orderid, custid, saleprice
     from orders od1
     where saleprice> (select avg(saleprice)
					from orders od2
                    where od1. custid=od2.custid);
               
               
select sum(saleprice) 'total'
from orders
where custid in (select custid
				from customer
                where address like '%대한민국%');
                
-- 4-15
select orderid, saleprice
from orders
where saleprice > all (select saleprice
					from orders
                    where custid='3');
                    
                    select orderid, saleprice
from orders
where saleprice > max (select saleprice
					from orders
                    where custid='3');
-- 4-16 
select sum(saleprice)'total'
from orders od
where exists(select *
			from customer cs
            where address like'%대한민국%' and cs.custid=od.custid);
            
-- 4-17
select (select name
		from customer cs
        where cs.cstid=od.custid)'name',sum(saleprice)'total'
from orders od
group by od.custid;

-- 4-18
alter table orders add bname varchar(40);
select * from orders;

update orders
set bname = (select bookname
			from book
            where book.bookid=orders.bookid);
            
-- 4-19
select cs.name, sum(od.saleprice) 'total'
from(select custid, name
	from customer
	where custid <= 2) cs,
    orders od
where cs.custid=orders.custid
group by customer.name;

-- 4-20
