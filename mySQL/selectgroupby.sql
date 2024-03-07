use madangdb;
-- 3--15
select sum(saleprice) 총판매액 from Orders;
-- 3--16
select sum(saleprice)판매액
from Orders
where Oders. custid=2;

select custid 김연아, saleprice 판매액
from Oders
where Orders.custid=2;
-- 3--7
select sum(saleprice) Total, avg(saleprice) Average,
min(saleprice) Min, max(saleprice) Max
from Orders;

select * from Customer, Orders;

-- 3 --21

select * from Custmer, Orders;
select * from Custmer, Orders where Custmer. custid=Orders.custid
order by customer.custid;

select name, saleprice from Orders Custumer
where Custmer.custid=Order.custid
order by customer.custid;

-- 3-- 24
select name, SUM(saleprice)
from Orders, Customer
where Custmer.custid=Orders.custid
group by name
order by name;

-- 3-- 25
select Customer.name, Book.bookname
from customer, Orders, Book
where (Customer.custid=Orders.custid) and (Book. bookid= Orders.bookid);

-- 3 -- 26
select Customer.name, Book.bookname, Book.price
from customer, Orders, Book
where (Customer.custid=Orders.custid) and (Book. bookid= Orders.bookid)
and Book.price>=20000;

-- 3 -- 27
select Customer.name,saleprice
from Customer left outer join Orders on Customer.Custid=Orders.custid;

select Customer.name,saleprice
from Customer inner join Orders on Customer.Custid=Orders.custid;

select Customer.name, Orders.saleprice
from Customer, Orders where Customer.Custid=Orders.custid;

-- 3 --28

select bookname
from Book
where price=(
select max(price) 
from Book
where price < 15000);

-- 3 -- 29
select name from Customer
where custid in(select custid from Orders);

select * from Customer

-- 3--30
select name
from Customer
where custid in(select custid 
				from Orders
				where bookid in(select bookid
								from Book
								where publisher='대한미디어'));
		
-- 3 -31
select b1.bookname, b1.publisher, b1.price
from book b1
where price > (select avg(b2.price) from book b2
where b2.publisher = b1.publisher);

select publisher, avg(price) from Book group by publisher;

-- 3--32

select name, custid 이름 from Customer where address like '대한민국%'
union all
select name from Customer where custid in (select custid from Orders);

-- 3 -- 33
select name, address
from Customer cs
where exists (select *
from Orders od where cs.custid=od.custid);



