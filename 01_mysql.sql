CREATE DATABASE IF NOT EXISTS myDB1;
USE myDB1;

CREATE TABLE IF NOT EXISTS users
(
    id       INT PRIMARY KEY,
    name     VARCHAR(20),
    email    VARCHAR(120),
    password VARCHAR(8),
    dob      DATE,
    contact  VARCHAR(20),
    address  TEXT,
    gender   ENUM ( 'M', 'F', 'O' ),
    status   ENUM ( 'active', 'inactive' )
);

INSERT INTO users (id, name, email, password, dob, contact, address, gender, status)
VALUES (3, 'sam', 'sam@gmail.com', '12345638', '1994-05-07', '1234567890', 'BBSR', 'M', 'active'),
       (4, 'ram', 'ram@gmai.com', '12345678', '1990-01-01', '1234567890', 'BBSR', 'M', 'active');

select id, name, email, dob, contact, address
from users;

select name as "student name"
from users;

drop table users;

create table if not exists student
(
    id     int unique   not null,
    name   varchar(20)  not null,
    email  varchar(120) not null,
    age    int check ( age > 18 ),
    status boolean default 1


);


insert into student (id, name, email, age, status)
values (1, 'sam', 'sam@gmail.com', 20, 1);
insert into student (id, name, email, age, status)
values (2, 'sam', 'sam@gmail.com', 19, 1);

select * from student where  age > 18 and status = 1;

select * from student where  age > 18 or status = 1;

select * from student where  age != 20;


