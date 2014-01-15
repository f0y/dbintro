-- FIXME: duplication

SELECT
  (select
     avg(avgRating.average)
   from
     (select
        m.mid, avg(stars) as average, m.year
      from Movie m
        join Rating ra using (mid)
      group by m.mid) as avgRating
   where
     avgRating.year < 1980)
  -
  (select
     avg(avgRating.average)
   from
     (select
        m.mid, avg(stars) as average, m.year
      from Movie m
        join Rating ra using (mid)
      group by m.mid) as avgRating
   where
     avgRating.year > 1980)

