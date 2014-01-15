select
  title, director
from
  Movie
where director in
      (select
         director
       from
         Movie
       group by director
       having count(director) > 1)
order by director, title

