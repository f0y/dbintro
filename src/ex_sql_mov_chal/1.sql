select distinct
  m.title,
  (select max(stars) from Rating where mID = m.mid) -
  (select min(stars) from Rating where mid = m.mid) as spread
from Movie m
  join Rating using (mid)
order by spread desc, m.title


