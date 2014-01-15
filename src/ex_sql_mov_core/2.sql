SELECT
  DISTINCT
  year
FROM movie
  NATURAL JOIN Rating
WHERE stars = '4' OR stars = '5'
ORDER BY year
  ASC