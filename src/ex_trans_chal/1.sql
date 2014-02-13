CREATE TRIGGER friends_ondelete_integrity AFTER DELETE ON Friend
BEGIN
  DELETE FROM Friend WHERE old.id1 = ID2 AND old.id2 = ID1;
END;
|
CREATE TRIGGER friends_oninsert_integrity AFTER INSERT ON Friend
BEGIN
  INSERT INTO Friend (ID1, ID2) VALUES (new.id2, new.id1);
END;
