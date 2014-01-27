INSERT INTO friend (id1, id2)
  SELECT DISTINCT
    t1,
    t2
  FROM (
         SELECT
           f1.id1 AS t1,
           f2.id2 AS t2
         FROM friend f1 JOIN friend f2
             ON f1.id2 = f2.id1
       ) AS t
  WHERE 1 = 1
        AND t.t1 != t.t2
        AND NOT exists(SELECT
                         1
                       FROM friend
                       WHERE id1 = t1 AND id2 = t2)
        AND NOT exists(SELECT
                         1
                       FROM friend
                       WHERE id2 = t1 AND id1 = t2)
