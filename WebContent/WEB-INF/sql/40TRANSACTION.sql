-- TRANSACTION
-- 하나의 업무

USE mydb1;

-- 은행의 송금
-- 1. A고객의 계좌의 출금
-- 2. B고객의 계좌의 입금

-- COMMIT : DB에 반영
-- ROLLBACK : 이전으로 되돌림

SELECT * FROM Customers;
ALTER TABLE Customers MODIFY CustomerID INT PRIMARY KEY AUTO_INCREMENT;
UPDATE Customers
SET CustomerName = 'SON'
WHERE CustomerID = 1;

DESC Customers;
ROLLBACK;

-- disable auto commit;
SET autocommit = 1;
UPDATE Customers
SET CustomerName = 'CHA'
WHERE CustomerID = 1;

SELECT * FROM Customers WHERE CustomerID = 1;

ROLLBACK;

UPDATE Customers
SET CustomerName = 'PARK'
WHERE CustomerID = 1;

SELECT * FROM Customers WHERE CustomerID = 1;

COMMIT;
ROLLBACK;