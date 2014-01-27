select
  (select count(name) from Highschooler)
  -
  (select count(distinct name) from Highschooler)
