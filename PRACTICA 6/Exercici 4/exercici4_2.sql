-- 4.2.1

SELECT 
	JSON_UNQUOTE(JSON_EXTRACT(data, "$.phone")) AS phone
FROM
	offices;

-- 4.2.2

SELECT
	employees.data->>"$.employeeNumber" AS employee
FROM 
	employees
WHERE 
	JSON_EXTRACT(data, "$.extension") like "%23%";
    
    -- o bé
SELECT
	*
FROM 
	employees
WHERE 
	JSON_EXTRACT(data, "$.extension") LIKE "%23%";
    

-- 4.2.3

SELECT 
	employees.data->>"$.employeeNumber" AS employeeNumber,
    employees.data->>"$.lastName" AS lastName
FROM employees;
    
    -- o bé es refereix a:
SELECT 
	employee_id,
    employees.data->>"$.lastName" AS lastName
FROM employees;

-- 4.2.4
SELECT
	emp.data->>"$.employeeNumber" AS employeeNumber,
    CONCAT(emp.data->>"$.firstName", ' ', emp.data->>"$.lastName") AS fullName,
    o.data->>"$.city" AS city
FROM
	employees emp
INNER JOIN
	offices o ON emp.office_id = o.office_id;


    