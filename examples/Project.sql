use downing_test;

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
