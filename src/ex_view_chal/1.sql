CREATE TRIGGER BOO INSTEAD OF UPDATE ON LateRating FOR EACH ROW
  WHEN old.ratingDate = new.ratingDate
BEGIN
  UPDATE Movie
  SET
    title = new.title,
    mID   = new.mID
  WHERE mID = old.mID;

  UPDATE Rating
  SET mID = New.mID
  WHERE mID = Old.mID;

  UPDATE Rating
  SET
    stars = new.stars
  WHERE mID = new.mID AND
        ratingDate = Old.ratingDate AND
        ratingDate > '2011-01-20';

END
