use jspdev;
create table book(bookId varchar(50),bookName varchar(50),publisher varchar(100),price float,constraint pk_book primary key(bookId));
insert into book values('001-22-23-1','jsp 应用开发详解','电子工业出版社',59.0);