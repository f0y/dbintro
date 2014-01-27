delete from likes
where exists
      (select 1 from friend where friend.id1 = likes.id1 and friend.id2=likes.id2)
      and not exists
      (select 1 from likes as l where l.id1 = likes.id2 and l.id2=likes.id1)
