use downing_test;

# select

select * from movies where (movie_year  = 1990);
select * from movies where (director_id = 13);

# select with compound predicate

select * from movies where (movie_year  = 1990) or (director_id = 13);

# select with project

select distinct movie_year  from movies where (movie_year  = 1990);
select distinct director_id from movies where (director_id = 13);

# select with project and compound predicate

select distinct director_id from movies where (movie_year = 1990) or (director_id = 13);
select distinct movie_year  from movies where (movie_year = 1990) or (director_id = 13);

exit
