select avg(fr) from
  (select count(t.ID2) as fr from
    (select * from Friend) as t
  group by t.ID1 )