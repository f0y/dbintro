select distinct m.director, m.title, maxR from
Movie m
join
  (select
     director as dir, max(stars) as maxR
   from Movie
     join Rating using (mid)
   where director is not null
   group by director) directors
on directors.dir = m.director
join Rating using (mid)
where stars = maxR

