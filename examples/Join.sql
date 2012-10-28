use downing_test;

# select

select
    movie_id, movie_name, movie_year, director_name
    from movies, directors
    where
    (movies.director_id = directors.director_id) and (movies.movie_year = 1990);

select
    movie_id, movie_name, movie_year, director_name
    from movies, directors
    where
    (movies.director_id = directors.director_id) and (directors.director_name = "Stanley Kubrick");

# the following three joins are all the same

select distinct
    movie_name, director_name
    from movies, directors
    where (movies.director_id = directors.director_id);

select distinct
    movie_name, director_name
    from movies inner join directors on (movies.director_id = directors.director_id);

select distinct
    movie_name, director_name
    from movies inner join directors using (director_id);

# the following three joins are all the same

select distinct
    movie_name, movie_year, award_name
    from movies_awards, movies, awards
    where
        (movies_awards.movie_id = movies.movie_id) and
        (movies_awards.award_id = awards.award_id);

select distinct
    movie_name, movie_year, award_name
    from movies_awards
    inner join movies on (movies_awards.movie_id = movies.movie_id)
    inner join awards on (movies_awards.award_id = awards.award_id);

select distinct
    movie_name, movie_year, award_name
    from movies
    inner join movies_awards using (movie_id)
    inner join awards        using (award_id);

exit
