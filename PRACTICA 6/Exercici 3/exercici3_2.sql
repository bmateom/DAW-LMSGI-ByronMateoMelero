-- 3.2.1

SELECT ExtractValue(document, '//employee[jobTitle = "VP Sales"]/email') AS emails
FROM employees;

-- 3.2.2

SELECT ExtractValue(document, 'count(//employee[office/Territory = "EMEA"])') AS total_employees_EMEA
FROM employees;

-- 3.2.3

SELECT ExtractValue(document, '//employee[reportsTo = "1056"]/lastName') AS last_names
FROM employees;

-- Retorna més d'un valor pero queda tot a una cel·la

-- 3.2.4

SELECT ExtractValue(document, '//employee[@employeeNumber = "1166"]/office/City') AS city
FROM employees;