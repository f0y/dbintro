

select name, grade from
  (select count(t.ID2) as cnt, t.name, t.grade from
    (select * from Friend f join Highschooler h on h.ID = f.ID1) as t
  group by t.ID1)
where cnt =
    (select max(fr) from
      (select count(t.ID2) as fr from
        (select * from Friend) as t
       group by t.ID1 ))