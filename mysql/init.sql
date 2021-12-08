CREATE USER 'test'@'%' IDENTIFIED BY 'test';
GRANT ALL privileges ON *.* TO 'test'@'%';

drop table if exists canal_trigger;

create table canal_trigger
(
  trigger_id          int primary key auto_increment,
  trigger_database    varchar(100) not null,
  trigger_table       varchar(20)  not null,
  trigger_column      varchar(100),
  trigger_type        varchar(20),
  trigger_routing     varchar(100) not null,
  trigger_deleted     bool      default false,
  trigger_update_time timestamp default current_timestamp on update current_timestamp
);
