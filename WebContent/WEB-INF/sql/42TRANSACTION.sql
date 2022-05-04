USE mydb2;

DELETE FROM Reply WHERE board_id = 19;
-- ROLLBACK;
DELETE FROM Board
WHERE id = 19;
COMMIT;

SELECT * FROM Reply WHERE board_id = 11;