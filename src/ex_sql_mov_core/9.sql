SELECT
  DISTINCT
  r.name
FROM Rating ra
  JOIN Movie m
  USING (mid)
  JOIN Reviewer r
  USING (rid)
GROUP BY r.rid
HAVING count(r.rid) >= 3