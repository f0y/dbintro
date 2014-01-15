SELECT
  name
FROM reviewer
  JOIN Rating USING (rid)
WHERE
  ratingDate IS null


