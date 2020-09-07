 select title from movies 
 inner JOIN       
        (select t1.movie_id,t1.name,t2.name from (select s2.movie_id, s2.person_id,p2.name from stars s2
            inner JOIN
            (select name,id from people where name='Helena Bonham Carter') p2
            ON s2.person_id=p2.id) t1
        inner JOIN
                (select s1.movie_id,s1.person_id,p1.name from stars s1
                    inner JOIN 
                    (select name,id from people where name='Johnny Depp') p1
                ON s1.person_id=p1.id) t2
        ON t1.movie_id=t2.movie_id) common_movies_id_table
ON movies.id=common_movies_id_table.movie_id;