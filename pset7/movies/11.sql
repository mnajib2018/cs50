select title from movies m1
inner join
    (select t1.movie_id, r1.rating, t1.person_id from ratings r1
    inner join
        (select s1.movie_id, s1.person_id from stars s1
            inner JOIN
            (select * from people where name='Chadwick Boseman') p1
        ON s1.person_id=p1.id) t1
    ON t1.movie_id=r1.movie_id
    ORDER BY r1.rating DESC
    LIMIT 5) t2
ON m1.id=t2.movie_id;
