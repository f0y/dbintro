SELECT
  title
FROM movie
WHERE mID NOT IN (SELECT
                    DISTINCT mid
                  FROM rating)