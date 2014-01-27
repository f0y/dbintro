SELECT
  h1.name,
  h1.grade,
  h2.name,
  h2.grade,
  h3.name,
  h3.grade
FROM
  Highschooler h1,
  Highschooler h2,
  Highschooler h3,
  likes L
WHERE h1.ID = L.ID1
      AND h2.ID = L.ID2
      AND L.id1 NOT IN

          (SELECT
             id1
           FROM Friend
           WHERE Friend.id1 = h1.id AND
                 id2 = h2.id OR
                 (ID1 = h2.ID AND ID2 = h1.ID))
      AND h3.id IN

          (SELECT
             f1.id2
           FROM Friend f1,
             Friend f2
           WHERE (
                   (f1.id1 = h1.id AND f1.id2 = h3.id) OR
                   (f1.id1 = h3.id AND f1.id2 = h1.id))
                 AND (
             (f2.id1 = h2.id AND f2.id2 = h3.id) OR
             (f2.id1 = h3.id AND f2.id2 = h2.id)
           ))