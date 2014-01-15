SELECT
  DISTINCT
  m.title,
  avg(ra.stars) AS avgRate
FROM Rating ra
  JOIN Movie m
  USING (mid)
GROUP BY mid
ORDER BY avgRate
  DESC, m.title