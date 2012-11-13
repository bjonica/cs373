use downing_test;

drop table if exists movies_actors;
drop table if exists actors;
drop table if exists movies_awards;
drop table if exists awards;
drop table if exists movies;
drop table if exists directors;

drop table if exists dept;

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
