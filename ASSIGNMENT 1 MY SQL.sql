CREATE DATABASE ASSIGMENT1;
USE ASSIGMENT1;
CREATE TABLE SALESPEOPLE (SNUM INT PRIMARY KEY,
SNAME VARCHAR(50) UNIQUE ,CITY VARCHAR(50),COMM INT
							);
INSERT INTO SALESPEOPLE VALUES (1001,'PEEL','LONDON',12),
(1002,'SERRRES','SANJOSE',13),(1004,'MOTIKA','LONDON',11),(1007,'RIFKIN','BARCELONE',15),
(1003,'AXELROD','NEWYORK',10);
SELECT * FROM SALESPEOPLE;
CREATE TABLE CUSTOMERS (CNUM INT PRIMARY KEY,CNAME VARCHAR(50) NOT NULL,CITY VARCHAR(50),
SNUM INT,
FOREIGN KEY(SNUM) REFERENCES SALESPEOPLE (SNUM));
INSERT INTO CUSTOMERS VALUES (2001,'HOFFMAN','LONDON',1001),(2002,'GIOVANNI','ROME',1003),
(2003,'LIU','SANJOSE',1002),(2004,'GRASS','BERLIN',1002),(2006,'CLEMENS','LONDON',1001),
(2008,'CISNEROS','SANJOSE',1007),(2007,'PEREIRA','ROME',1004);
SELECT * FROM CUSTOMERS;
CREATE TABLE ORDERS (ONUM INT PRIMARY KEY,AMT FLOAT,ODATE DATE,CNUM INT,SNUM INT,
FOREIGN KEY (CNUM) REFERENCES CUSTOMERS(CNUM),FOREIGN KEY (SNUM) REFERENCES SALESPEOPLE(SNUM));
INSERT INTO ORDERS VALUES (3001, 18.69, '1990-10-3', 2008, 1007),

(3003, 767.19, '1990-10-3', 2001, 1001),

(3002, 1900.10, '1990-10-3', 2007, 1004),

(3005,  5160.45, '1990-10-3', 2003, 1002),

(3006,  1098.16, '1990-10-3', 2008, 1007),

(3009, 1713.23, '1990-10-4', 2002, 1003),

(3007,  75.75, '1990-10-4', 2004, 1002),

(3008,  4273.00, '1990-10-5', 2006, 1001),

(3010,  1309.95, '1990-10-6', 2004, 1002),

(3011,  9891.88, '1990-10-6', 2006, 1001);

SELECT  COUNT(SNAME)  FROM SALESPEOPLE
WHERE SNAME like 'a%'or SNAME like 'A%';
-------------------------------------------------------
SELECT * FROM C;
SELECT S.SNAME, C.AMT
FROM SALESPEOPLE AS S
LEFT OUTER JOIN
ORDERS AS C
ON S.SNUM = C.SNUM
WHERE C.AMT > 2000;
-------------------------------------------------------------------
SELECT COUNT(SNAME) FROM SALESPEOPLE WHERE CITY = 'NEWYORK';

--------------------------------------------------------------------

SELECT COUNT(SNAME) FROM SALESPEOPLE WHERE CITY ='LONDON' OR CITY = 'PARIS';


--------------------------------------------------------------------------
SELECT S.SNAME, O.ODATE,COUNT(O.ODATE) AS
NO_OF_ORDERS
FROM  SALESPEOPLE S 
LEFT JOIN ORDERS O 
ON S.SNUM = O.SNUM
GROUP BY S.SNAME, O.ODATE;

--------------------------------------------------------------------------------







