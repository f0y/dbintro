select name, grade from
(select id from highschooler
except
select id1 as id from likes
except
select id2 as id from likes)
join highschooler using (id)
order by grade, name