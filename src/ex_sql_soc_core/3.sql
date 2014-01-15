select
  h.name, h.grade, h1.name, h1.grade
from Likes f
  join Likes f1
    on f.id1 = f1.id2 and f.id2 = f1.id1
  join Highschooler h
    on h.ID = f.id1
  join Highschooler h1
    on h1.id = f.id2
where h1.name > h.name