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

insert into directors values (null, "Barry Levinson");
insert into directors values (null, "Francis Ford Coppola");
insert into directors values (null, "George Cukor");
insert into directors values (null, "George Lucas");
insert into directors values (null, "George Roy Hill");
insert into directors values (null, "George Stevens");
insert into directors values (null, "Howard Hawks");
insert into directors values (null, "James Cameron");
insert into directors values (null, "Kevin Kostner");
insert into directors values (null, "Martin Scorsese");
insert into directors values (null, "Mike Nichols");
insert into directors values (null, "Sam Raimi");
insert into directors values (null, "Stanley Kubrick");
insert into directors values (null, "William Wyler");

insert into movies values (null, "2001: A Space Odyssey", 1968, 13);
insert into movies values (null, "Ben Hur", 1959, 14);
insert into movies values (null, "Big Country, The", 1958, 14);
insert into movies values (null, "Butch Cassidy and the Sundance Kid", 1969, 5);
insert into movies values (null, "Dances with Wolves", 1990, 9);
insert into movies values (null, "For Love of the Game", 1999, 12);
insert into movies values (null, "Giant", 1956, 6);
insert into movies values (null, "Godfather, The", 1972, 2);
insert into movies values (null, "Goodfellas", 1990, 10);
insert into movies values (null, "Graduate, The", 1967, 11);
insert into movies values (null, "Natural, The", 1984, 1);
insert into movies values (null, "Philadelphia Story, The", 1940, 3);
insert into movies values (null, "Red River", 1948, 7);
insert into movies values (null, "Shane", 1953, 6);
insert into movies values (null, "Spartacus", 1960, 13);
insert into movies values (null, "Star Wars", 1977, 4);
insert into movies values (null, "Titanic", 1997, 8);

insert into awards values (null, "Golden Globes");
insert into awards values (null, "Oscar");

insert into movies_awards values (1, 1);
insert into movies_awards values (2, 1);
insert into movies_awards values (2, 2);
insert into movies_awards values (3, 1);
insert into movies_awards values (3, 2);
insert into movies_awards values (4, 1);
insert into movies_awards values (4, 2);
insert into movies_awards values (5, 1);
insert into movies_awards values (5, 2);
insert into movies_awards values (7, 1);
insert into movies_awards values (8, 1);
insert into movies_awards values (8, 2);
insert into movies_awards values (9, 1);
insert into movies_awards values (10, 1);
insert into movies_awards values (10, 2);
insert into movies_awards values (12, 1);
insert into movies_awards values (14, 1);
insert into movies_awards values (15, 1);
insert into movies_awards values (15, 2);
insert into movies_awards values (16, 1);
insert into movies_awards values (16, 2);
insert into movies_awards values (17, 1);
insert into movies_awards values (17, 2);

insert into actors values (null, "Al Pacino");
insert into actors values (null, "Alan Ladd");
insert into actors values (null, "Anne Bancroft");
insert into actors values (null, "Carrie Fisher");
insert into actors values (null, "Cary Grant");
insert into actors values (null, "Charlton Heston");
insert into actors values (null, "Dustin Hoffman");
insert into actors values (null, "Elizabeth Taylor");
insert into actors values (null, "Gary Lockwood");
insert into actors values (null, "Glenn Close");
insert into actors values (null, "Graham Greene");
insert into actors values (null, "Gregory Peck");
insert into actors values (null, "Harrison Ford");
insert into actors values (null, "James Caan");
insert into actors values (null, "James Dean");
insert into actors values (null, "James Stewart");
insert into actors values (null, "Jean Arthur");
insert into actors values (null, "Jean Simmons");
insert into actors values (null, "Joe Pesci");
insert into actors values (null, "John C. Reilly");
insert into actors values (null, "John Wayne");
insert into actors values (null, "Kate Winslet");
insert into actors values (null, "Katharine Ross");
insert into actors values (null, "Katherine Hepburn");
insert into actors values (null, "Keir Dullea");
insert into actors values (null, "Kelly Preston");
insert into actors values (null, "Kevin Kostner");
insert into actors values (null, "Kim Basinger");
insert into actors values (null, "Kirk Douglas");
insert into actors values (null, "Laurence Olivier");
insert into actors values (null, "Leonardo DiCaprio");
insert into actors values (null, "Mark Hamill");
insert into actors values (null, "Marlon Brando");
insert into actors values (null, "Mary McDonnell");
insert into actors values (null, "Montgomery Clift");
insert into actors values (null, "Paul Newman");
insert into actors values (null, "Ray Liotta");
insert into actors values (null, "Robert De Niro");
insert into actors values (null, "Robert Duvall");
insert into actors values (null, "Robert Redford");
insert into actors values (null, "Rock Hudson");
insert into actors values (null, "Stephen Boyd");
insert into actors values (null, "Van Heflin");

insert into movies_actors values (1, 9);
insert into movies_actors values (1, 25);
insert into movies_actors values (2, 6);
insert into movies_actors values (2, 42);
insert into movies_actors values (3, 6);
insert into movies_actors values (3, 12);
insert into movies_actors values (3, 18);
insert into movies_actors values (4, 23);
insert into movies_actors values (4, 36);
insert into movies_actors values (4, 40);
insert into movies_actors values (5, 11);
insert into movies_actors values (5, 27);
insert into movies_actors values (5, 34);
insert into movies_actors values (6, 20);
insert into movies_actors values (6, 26);
insert into movies_actors values (6, 27);
insert into movies_actors values (7, 8);
insert into movies_actors values (7, 15);
insert into movies_actors values (7, 41);
insert into movies_actors values (8, 1);
insert into movies_actors values (8, 14);
insert into movies_actors values (8, 33);
insert into movies_actors values (8, 39);
insert into movies_actors values (9, 19);
insert into movies_actors values (9, 37);
insert into movies_actors values (9, 38);
insert into movies_actors values (10, 3);
insert into movies_actors values (10, 7);
insert into movies_actors values (10, 23);
insert into movies_actors values (11, 10);
insert into movies_actors values (11, 28);
insert into movies_actors values (11, 40);
insert into movies_actors values (12, 5);
insert into movies_actors values (12, 16);
insert into movies_actors values (12, 24);
insert into movies_actors values (13, 21);
insert into movies_actors values (13, 35);
insert into movies_actors values (14, 2);
insert into movies_actors values (14, 17);
insert into movies_actors values (14, 43);
insert into movies_actors values (15, 18);
insert into movies_actors values (15, 29);
insert into movies_actors values (15, 30);
insert into movies_actors values (16, 4);
insert into movies_actors values (16, 13);
insert into movies_actors values (16, 32);
insert into movies_actors values (17, 22);
insert into movies_actors values (17, 31);

# project

select distinct movie_year  from movies;
select distinct director_id from movies;

# project with two attributes

select distinct movie_year, director_id from movies;

# project with select

select distinct movie_year  from movies where (movie_year  = 1990);
select distinct director_id from movies where (director_id = 13);

# project with select and two attributes

select distinct movie_year, director_id from movies where (movie_year  = 1990);
select distinct movie_year, director_id from movies where (director_id = 13);

exit
