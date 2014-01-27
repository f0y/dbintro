update Movie set year = year + 25
where mID in
      (select mID
       from Rating
       group by mID
       having avg(stars) >= 4)


