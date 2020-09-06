select name from people p1 
INNER JOIN
((select movie_id, person_id from stars) s1
INNER JOIN
(select id from movies where title='Toy Story') m1
ON s1.movie_id=m1.id)
ON s1.person_id=p1.id;

  