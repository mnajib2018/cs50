--Select name from 
    --(Select DISTINCT p1.id,p1.name  from people p1
   -- INNER JOIN
    --(select movie_id,person_id,t2.year from stars t1
    --INNER JOIN 
    --(select id,year from movies where year=2004) t2
    --ON t1.movie_id=t2.id) p2
    --ON p1.id=p2.person_id
   -- ORDER BY p1.birth) AS NewNames;

Select p1.name  from people p1
   INNER JOIN
    (select movie_id,person_id,t2.year from stars t1
    INNER JOIN 
    (select id,year from movies where year=2004) t2
    ON t1.movie_id=t2.id) p2
    ON p1.id=p2.person_id
    GROUP BY p1.id 
    ORDER BY p1.birth;
