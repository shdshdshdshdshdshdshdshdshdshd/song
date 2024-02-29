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
where (Customer.custid=Orders.custid) and (Book. bookid= Orders.bookid);
and Book.price>=20000;

-- 3 -- 27
select Customer.name, Orders.saleprice
from Customer left join Orders on Custid=Order.custid;
Customer.custid=orders.custid;

DROP TABLE orders;
DROP TABLE book;
DROP TABLE customer;
DROP TABLE Imported_Book;

CREATE TABLE Book (
  bookid		INTEGER PRIMARY KEY,
  bookname	VARCHAR(40),
  publisher	VARCHAR(40),
  price		INTEGER
);

CREATE TABLE  Customer (
  custid		INTEGER PRIMARY KEY,
  name		VARCHAR(40),
  address		VARCHAR(50),
  phone		VARCHAR(20)
);


CREATE TABLE Orders (
  orderid INTEGER PRIMARY KEY,
  custid  INTEGER,
  bookid  INTEGER,
  saleprice INTEGER,
  orderdate DATE,
  FOREIGN KEY (custid) REFERENCES Customer(custid),
  FOREIGN KEY (bookid) REFERENCES Book(bookid)
);

INSERT INTO Book VALUES(1, '축구의 역사', '굿스포츠', 7000);
INSERT INTO Book VALUES(2, '축구 아는 여자', '나무수', 13000);
INSERT INTO Book VALUES(3, '축구의 이해', '대한미디어', 22000);
INSERT INTO Book VALUES(4, '골프 바이블', '대한미디어', 35000);
INSERT INTO Book VALUES(5, '피겨 교본', '굿스포츠', 8000);
INSERT INTO Book VALUES(6, '배구 단계별기술', '굿스포츠', 6000);
INSERT INTO Book VALUES(7, '야구의 추억', '이상미디어', 20000);
INSERT INTO Book VALUES(8, '야구를 부탁해', '이상미디어', 13000);
INSERT INTO Book VALUES(9, '올림픽 이야기', '삼성당', 7500);
INSERT INTO Book VALUES(10, 'Olympic Champions', 'Pearson', 13000);

INSERT INTO Customer VALUES (1, '박지성', '영국 맨체스타', '000-5000-0001');
INSERT INTO Customer VALUES (2, '김연아', '대한민국 서울', '000-6000-0001'); 
INSERT INTO Customer VALUES (3, '김연경', '대한민국 경기도', '000-7000-0001');
INSERT INTO Customer VALUES (4, '추신수', '미국 클리블랜드', '000-8000-0001');
INSERT INTO Customer VALUES (5, '박세리', '대한민국 대전',  NULL);

INSERT INTO Orders VALUES (1, 1, 1, 6000, STR_TO_DATE('2024-07-01','%Y-%m-%d'));
INSERT INTO Orders VALUES (2, 1, 3, 21000, STR_TO_DATE('2024-07-03','%Y-%m-%d'));
INSERT INTO Orders VALUES (3, 2, 5, 8000, STR_TO_DATE('2024-07-03','%Y-%m-%d'));
INSERT INTO Orders VALUES (4, 3, 6, 6000, STR_TO_DATE('2024-07-04','%Y-%m-%d'));
INSERT INTO Orders VALUES (5, 4, 7, 20000, STR_TO_DATE('2024-07-05','%Y-%m-%d'));
INSERT INTO Orders VALUES (6, 1, 2, 12000, STR_TO_DATE('2024-07-07','%Y-%m-%d'));
INSERT INTO Orders VALUES (7, 4, 8, 13000, STR_TO_DATE( '2024-07-07','%Y-%m-%d'));
INSERT INTO Orders VALUES (8, 3, 10, 12000, STR_TO_DATE('2024-07-08','%Y-%m-%d'));
INSERT INTO Orders VALUES (9, 2, 10, 7000, STR_TO_DATE('2024-07-09','%Y-%m-%d'));
INSERT INTO Orders VALUES (10, 3, 8, 13000, STR_TO_DATE('2024-07-10','%Y-%m-%d'));
