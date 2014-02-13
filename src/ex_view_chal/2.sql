CREATE TRIGGER BOO INSTEAD OF INSERT ON HighlyRated FOR EACH ROW
BEGIN

  SELECT
    raise(IGNORE)
  WHERE NOT EXISTS
  (SELECT
     1
   FROM Movie
   WHERE mid = new.mID AND title = new.title);

  INSERT INTO Rating (rID, mID, stars, ratingDate) VALUES
    (201, new.mID, 5, NULL);

END
