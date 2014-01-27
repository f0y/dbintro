delete from rating
where
  stars < 4 and
  mID in (select mID from
    movie where year < 1970 or year > 2000);