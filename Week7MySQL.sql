Use Employees;
-- 1. Show all employees who were born before 1965-01-01

SELECT * from employees where birth_date < "1965-01-01"; 

-- 2. Show all employees who are female and were hired after 1990

SELECT * FROM employees WHERE gender = "F" AND hire_date > "1999-12-31";

-- 3. Show the first and last name of the first 50 employees whose last name starts with F

SELECT first_name, last_name FROM employees WHERE last_name LIKE 'F%' LIMIT 50;

-- 4. Insert 3 new employees into the employees table. There emp_no should be 100, 101, and 102. 
--    You can choose the rest of the data.
INSERT into employees VALUES (100, '1986-05-03', 'Tom', 'Thompson', 'M', '2006-10-21'), 
		(101, '1966-07-30', 'Barb', 'Baker', 'F', '1986-01-01'),
       (102, '1996-05-03', 'Lance', 'Knight', 'M', '2016-11-11');
SELECT * FROM employees LIMIT 20;

-- 5. Change the employee's first name to Bob for the employee with the emp_no of 10023.
-- SELECT * FROM employees WHERE emp_no = '10023';
UPDATE employees SET first_name = 'Bob' WHERE emp_no = '10023';
SELECT * FROM employees WHERE emp_no = '10023';

-- 6. Change all employees hire dates to 2002-01-01 whose first or last names start with P.
-- SELECT * FROM employees WHERE first_name LIKE 'P%' OR last_name LIKE 'P%';
UPDATE employees SET hire_date = '2002-01-01' WHERE first_name LIKE 'P%' OR last_name LIKE 'P%';
SELECT * FROM employees WHERE first_name LIKE 'P%' OR last_name LIKE 'P%';

-- 7. Delete all employees who have an emp_no less than 10000
-- SELECT * FROM employees WHERE emp_no <= 10001;
DELETE FROM employees WHERE emp_no < 10000;
SELECT * FROM employees WHERE emp_no <= 10001;

-- 8. Delete all employee who have an emp_no of 10048, 10099, 10234, and 20089.
-- SELECT * FROM employees WHERE emp_no IN (10048, 10099, 10234, 20089);
DELETE FROM employees WHERE emp_no IN (10048, 10099, 10234, 20089); 
SELECT * FROM employees WHERE emp_no IN (10048, 10099, 10234, 20089);
SELECT * FROM employees WHERE emp_no IN (10048, 10047, 10049);