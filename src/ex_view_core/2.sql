CREATE TRIGGER BOO INSTEAD OF UPDATE OF stars ON LateRating FOR EACH ROW
BEGIN
  UPDATE Rating
  SET stars = new.stars
  WHERE new.mID = mID AND new.ratingDate = ratingDate;
END