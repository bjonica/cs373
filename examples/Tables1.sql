use downing_test;

drop table if exists movies;

create table movies (
        name        text not null,
        award       text,
        actor       text not null,
        director    text not null,
        year        int  not null)
    engine = innodb;

show tables;
show table status;
show columns from movies;

exit
