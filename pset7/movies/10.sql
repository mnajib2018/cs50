select name from people p1
inner join
(select person_id from directors d1
    INNER JOIN
    (select * from ratings where rating >= 9.0) r1
    ON d1.movie_id=r1.movie_id) p2
on p1.id=p2.person_id
group by p1.id;