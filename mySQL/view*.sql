use madangdb;

create view vw_book
as select *	
	from book
    where bookname like "%축구%";
    
    select *from vw_Book;
    
-- 4-21

create view vw_Orders(orderid, custid, name, bookid, bookname,
			saleprice, orderdate)
as select od.orderid, od.custid, cs.name,
		 od.bookid, bk. bookname, od.saleprice, od.orderdate
from Orders od, Customer cs, Book bk
where od.custid=cs.custid and od.bookid=bk.bookid;

select orderid, bookname, saleprice
from vw_orders
where name like '김연아'

-- 4-22

create view vw_Customer
as select * from Customer
where address like "%대한민국%";


create or replace view vw_Customer(custid, namw, address)
as select custid, name, address
from Customer
where address like "%영국%";
select * from vw_Customer;
select * from Customer;

drop view vw_customer;
insert into vw_Customer value(6, "송해든", "영국 계룡");
insert into Customer value (7, "박정석", "영국 대전", "000-0000-0101");
    

    
