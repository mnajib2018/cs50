select name from people
inner join 
    (select DISTINCT person_id from stars s2
    inner join
        (select movie_id from stars s1
        inner join 
        (select id from people where name='Kevin Bacon' and birth=1958) p1
            ON s1.person_id=p1.id) t1
    ON s2.movie_id=t1.movie_id) t2
ON people.id=t2.person_id
where NOT (people.name='Kevin Bacon' and people.birth='1958');