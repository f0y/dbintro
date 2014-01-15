select
  h.name, h.grade, h2.name, h2.grade
from Highschooler h
  join Likes f
    on f.id1 = h.id
  join highschooler h2
    on h2.ID = f.id2
where abs(h.grade - h2.grade) > 1