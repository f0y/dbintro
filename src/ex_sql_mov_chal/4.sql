-- FIXME: duplication again

select
  m.title, averages.average
from
    (select
       mid, avg(stars) as average
     from movie
       join rating using (mid)
     group by mid) as averages
    join
    Movie m
      on averages.mid = m.mid
where
  averages.average = (select
                        max(average) as maxRating
                      from (select
                              mid, avg(stars) as average
                            from movie
                              join rating using (mid)
                            group by mid))