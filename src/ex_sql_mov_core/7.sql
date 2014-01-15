SELECT
  DISTINCT
  m.title,
  max(ra.stars)
FROM Rating ra
  JOIN Movie m
  USING (mid)
GROUP BY mid
HAVING count(ra.stars) > 1
ORDER BY m.title