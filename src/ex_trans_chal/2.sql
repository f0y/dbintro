/*
Write a trigger that automatically deletes students when they graduate, i.e., when their grade is updated to exceed 12. In addition, write a trigger so when a student is moved ahead one grade, then so are all of his or her friends. */

CREATE TRIGGER friends_ongraduate_delete
AFTER UPDATE OF grade ON Highschooler FOR EACH ROW
  WHEN new.grade > 12
BEGIN
  DELETE FROM Highschooler
  WHERE ID = old.ID;
END;
|
CREATE TRIGGER friends_onnewgrade_propagate
AFTER UPDATE OF grade ON Highschooler FOR EACH ROW
BEGIN
  UPDATE Highschooler
  SET
    grade = grade + 1
  WHERE id IN
        (SELECT
           ID2
         FROM
           Friend f
         WHERE new.id = f.ID1);
END;


