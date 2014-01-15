select h.name, h.grade
from likes l
  join Highschooler h
    on l.id2 = h.id
group by l.id2
having count(l.id2) > 1