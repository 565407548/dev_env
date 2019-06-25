--
-- execute when mysql start every time
--
DROP DATABASE  IF EXISTS test;
CREATE DATABASE test;
use test;
create table user
(
    id int auto_increment primary key,
    username varchar(64) unique not null,
    phone varchar(120) unique not null
);
insert into user values(1, "zhengcj","13300000000");
insert into user values(2, "dongyc","18800008888");

