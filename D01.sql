create database batch59;
-- yorum yazmak için iki çizgi kullanılır 

/*
Bu şekilde de yorum yapabiliriz.
*/

use sys;
use batch59;

-- birden fazla database varsa use ile databaseleri dolaşabiliriz 
-- TABLO OLUŞTURMA 
create table student
(
id varchar (4),
name varchar(30),
age int


);

-- Veri girisi

insert into student values('1','ali','25');
insert into student values('2','veli','25');
insert into student values('3','veli','25');
insert into student values('4','veli','25');

-- studenta ekle (sirali)

select * from student;
-- her seyi getir

select name from student;
-- name i getir

select id, name from student;
-- id ve name i getir

drop table student;
-- hepsini sildi