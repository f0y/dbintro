insert into Rating
  select distinct
    (select rID from Reviewer where name = 'James Cameron'),
    mID,
    5 as stars,
    NULL as ratingDate
  from Movie
