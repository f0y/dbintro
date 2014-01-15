select
  h2.name
from Highschooler h
  join Friend f
  on f.id1 = h.id
  join highschooler h2
  on h2.ID = f.id2
where h.name = 'Gabriel'

