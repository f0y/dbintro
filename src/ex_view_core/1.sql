CREATE TRIGGER BOO INSTEAD OF UPDATE OF title ON LateRating FOR EACH ROW
BEGIN
  UPDATE Movie
  SET title = new.title
  WHERE new.mID = mID;
END