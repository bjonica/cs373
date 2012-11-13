use downing_test;

drop table if exists movies_actors;
drop table if exists actors;
drop table if exists movies_awards;
drop table if exists awards;
drop table if exists movies;
drop table if exists directors;

drop table if exists dept;

create table directors (
        director_id   int  not null auto_increment,
        director_name text not null,
        primary key   (director_id))
    engine = innodb;

create table movies (
        movie_id    int  not null auto_increment,
        movie_name  text not null,
        movie_year  int  not null,
        director_id int  not null,
        primary key (movie_id),
        foreign key (director_id) references directors (director_id))
    engine = innodb;

create table awards (
        award_id    int  not null auto_increment,
        award_name  text not null,
        primary key (award_id))
    engine = innodb;

create table movies_awards (
        movie_id    int not null,
        award_id    int not null,
        foreign key (movie_id) references movies (movie_id),
        foreign key (award_id) references awards (award_id))
    engine = innodb;

create table actors (
        actor_id    int  not null auto_increment,
        actor_name  text not null,
        primary key (actor_id))
    engine = innodb;

create table movies_actors (
        movie_id    int not null,
        actor_id    int not null,
        foreign key (movie_id) references movies (movie_id),
        foreign key (actor_id) references actors (actor_id))
    engine = innodb;

show tables;
show table status;

show columns from directors;
show columns from movies;
show columns from awards;
show columns from movies_awards;
show columns from actors;
show columns from movies_actors;

exit
