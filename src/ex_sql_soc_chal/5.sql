SELECT
  count(f.ID2)
FROM
  (SELECT
     ID2 AS ID
   FROM
     Friend
   WHERE ID1 = 1709) AS t

  JOIN Friend f
    ON t.ID = f.ID1
WHERE f.ID2 != 1709;