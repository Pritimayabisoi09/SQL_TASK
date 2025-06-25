
CREATE TABLE employees (
    emp_id      NUMBER PRIMARY KEY,
    ename       VARCHAR2(50),
    job         VARCHAR2(30),
    sal         NUMBER,
    dept_id     NUMBER,
    hiredate    DATE
);

-- Inserting full data
INSERT INTO employees VALUES (101, 'Alice', 'Manager', 60000, 10, TO_DATE('2020-01-10', 'YYYY-MM-DD'));

-- Inserting with NULL job
INSERT INTO employees VALUES (102, 'Bob', NULL, 45000, 20, TO_DATE('2021-05-22', 'YYYY-MM-DD'));

-- Inserting with NULL salary and hiredate
INSERT INTO employees VALUES (103, 'Charlie', 'Analyst', NULL, 30, NULL);

-- Inserting with minimal data
INSERT INTO employees (emp_id, ename) VALUES (104, 'David');

-- Update NULL job to 'Clerk' for employee Bob
UPDATE employees
SET job = 'Clerk'
WHERE emp_id = 102;

-- Update Charlie’s salary if it’s NULL
UPDATE employees
SET sal = 38000
WHERE emp_id = 103 AND sal IS NULL;

-- Add hiredate for David
UPDATE employees
SET hiredate = SYSDATE
WHERE emp_id = 104;

-- Delete employee with NULL salary
DELETE FROM employees
WHERE sal IS NULL;

-- Delete employee hired before 2021
DELETE FROM employees
WHERE hiredate < TO_DATE('2021-01-01', 'YYYY-MM-DD');
