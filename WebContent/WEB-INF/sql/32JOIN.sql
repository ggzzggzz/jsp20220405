-- JOIN

USE mydb2;

SELECT * FROM Board;
SELECT * FROM Reply;

SELECT * FROM Board, Reply; -- 결합(Cartesian Product)
SELECT * FROM Reply, Board;
SELECT * FROM Board JOIN Reply; -- Cartesian Product
SELECT * FROM Board JOIN Reply ON Board.id = Reply.board_id; -- INNER JOIN (주로 사용)
SELECT * FROM Board, Reply WHERE Board.id = Reply.board_id; -- INNER JOIN
SELECT * FROM Board JOIN Reply WHERE Board.id = Reply.board_id; -- INNER JOIN
