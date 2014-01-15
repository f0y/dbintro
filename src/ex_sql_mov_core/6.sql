SELECT
  DISTINCT
  r.name,
  m.title
FROM Rating ra1
  JOIN Rating ra2
  USING (rid, mid)
  JOIN Movie m
  USING (mid)
  JOIN Reviewer r
  USING (rid)
WHERE
  ra1.stars > ra2.stars
  AND ra1.ratingDate > ra2.ratingDate




