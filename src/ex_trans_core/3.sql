-- Write a trigger that automatically deletes students
-- when they graduate, i.e., when their grade is updated to exceed 12.

CREATE TRIGGER make_friends AFTER UPDATE of grade ON Highschooler
  WHEN new.grade > 12
BEGIN
  DELETE FROM Highschooler WHERE id = new.ID;
END;