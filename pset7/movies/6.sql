--select t2.title,t2.year,t1.rating from 
--ratings t1
--INNER JOIN
--(select * from movies
--where year = 2012) t2
--on  t1.movie_id=t2.id;

--select movies.title, movies.year, ratings.rating from 
select AVG(ratings.rating) FROM
movies, ratings
where 
movies.id=ratings.movie_id
and movies.year=2012;