CREATE TRIGGER BOO INSTEAD OF DELETE ON HighlyRated FOR EACH ROW
BEGIN
  UPDATE Rating
  SET stars = 3
  WHERE mID = old.mid AND stars > 3;
END