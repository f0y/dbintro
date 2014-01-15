SELECT
  name,
  grade
FROM
    (SELECT
       id
     FROM highschooler
     EXCEPT
     SELECT
       DISTINCT
       h.id
     FROM highschooler h
       JOIN Friend f
         ON f.id1 = h.id
       JOIN Highschooler h1
         ON f.id2 = h1.id
     WHERE h.grade <> h1.grade)
    JOIN highschooler USING (id)
ORDER BY grade, name



