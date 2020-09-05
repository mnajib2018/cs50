--select movies.title, ratings.rating, movies.year
--from movies, ratings
--where movies.id = ratings.movie_id and movies.year=2010
--GROUP BY ratings.rating, movies.title
--ORDER BY ratings.rating DESC, movies.title ASC;

select t1.title, t2.rating, t1.year from movies t1
INNER JOIN
(select * from ratings) t2
ON t1.id = t2.movie_id
where t1.year=2010
GROUP BY t2.rating, t1.title
ORDER BY t2.rating DESC, t1.title ASC;