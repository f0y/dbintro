-- Write a trigger that makes new students named 'Friendly'
-- automatically like everyone else in their grade.
-- That is, after the trigger runs, we should have ('Friendly', A)
-- in the Likes table for every other Highschooler A
-- in the same grade as 'Friendly'.

CREATE TRIGGER make_friends before INSERT ON Highschooler
WHEN new.name = 'Friendly'
BEGIN
  INSERT INTO Likes(ID1, ID2)
    SELECT new.ID, h.ID From Highschooler h WHERE new.grade = h.grade;
END;