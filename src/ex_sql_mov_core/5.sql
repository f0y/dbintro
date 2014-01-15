SELECT
  name,
  title,
  stars,
  ratingDate
FROM reviewer
  JOIN Rating USING (rid)
  JOIN Movie USING (mid)
ORDER BY
  name, title, stars


