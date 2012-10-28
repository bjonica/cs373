use downing_test;

create table movies (
        name        text not null,
        award       text,
        actor       text not null,
        director    text not null,
        year        int  not null)
    engine = innodb;

exit
